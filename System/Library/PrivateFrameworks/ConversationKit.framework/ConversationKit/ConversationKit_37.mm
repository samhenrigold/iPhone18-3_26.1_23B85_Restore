uint64_t SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:forceMakeLayoutConstraints:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *a1;
  v81[0] = *(a1 + 1);
  *(v81 + 3) = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a1 + 18);
  v63 = *(a1 + 19);
  v10 = *(a1 + 20);
  v11 = *(a1 + 21);
  v12 = *(a1 + 22);
  HIDWORD(v55) = *(a1 + 23);
  v13 = *(a1 + 24);
  v54 = v4;
  swift_beginAccess();
  v57 = v3;
  v67 = v8;
  v61 = v10;
  v62 = v9;
  v14 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x100000000;
  if ((v10 & 1) == 0)
  {
    v15 = 0;
  }

  v64 = v12;
  v16 = 0x10000000000;
  if ((v11 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x1000000000000;
  if ((v12 & 1) == 0)
  {
    v17 = 0;
  }

  v58 = v7 | (v8 << 8);
  v65 = v13;
  v66 = v6;
  specialized Dictionary.subscript.getter(v5 & 1, v6, (v14 | v15 | v16 | v17 | v58) & 0xFFFFFFFF00FFFFFFLL | (v63 << 24), v13, v3[17]);
  if (!v18)
  {
    swift_endAccess();
    goto LABEL_13;
  }

  v19 = v18;
  swift_endAccess();
  if (a3)
  {

LABEL_13:
    v20 = v8;
    v21 = v5;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationKit);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80 = v53;
      *v25 = 136446466;
      v26 = _typeName(_:qualified:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v80);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v68 = v5;
      *v69 = v81[0];
      *&v69[3] = *(v81 + 3);
      v70 = v66;
      v71 = v7;
      v72 = v67;
      v29 = v62;
      v73 = v62;
      v74 = v63;
      v75 = v10;
      v76 = v11;
      v77 = v64;
      v78 = BYTE4(v55);
      v79 = v65;
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v80);
      v20 = v67;

      *(v25 + 14) = v32;
      v21 = v5;
      _os_log_impl(&dword_1BBC58000, v23, v24, "[%{public}s] making layout constraints for state: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v53, -1, -1);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

    else
    {

      v29 = v62;
    }

    v68 = v21;
    *v69 = v81[0];
    *&v69[3] = *(v81 + 3);
    v70 = v66;
    v71 = v7;
    v72 = v20;
    v73 = v29;
    v74 = v63;
    v75 = v10;
    v76 = v11;
    v77 = v64;
    v19 = SmallMultiwayControllerLayoutFactory.makeConstraints(for:using:)(&v68, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57[17];
    v36 = 0x10000;
    if ((v29 & 1) == 0)
    {
      v36 = 0;
    }

    v37 = 0x100000000;
    if ((v10 & 1) == 0)
    {
      v37 = 0;
    }

    v38 = 0x10000000000;
    if ((v11 & 1) == 0)
    {
      v38 = 0;
    }

    v39 = 0x1000000000000;
    if ((v64 & 1) == 0)
    {
      v39 = 0;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v21 & 1, v66, v36 | v37 | v38 | v39 | v58 | (v63 << 24), v65, isUniquelyReferenced_nonNull_native, v34, v35, v52, v53, v54, v55);
    v57[17] = v80;
    swift_endAccess();
    return v19;
  }

  v60 = v5;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.conversationKit);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v80 = v44;
    *v43 = 136446466;
    v45 = _typeName(_:qualified:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v80);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v68 = v60;
    *v69 = v81[0];
    *&v69[3] = *(v81 + 3);
    v70 = v6;
    v71 = v7;
    v72 = v67;
    v73 = v62;
    v74 = v63;
    v75 = v61;
    v76 = v11;
    v77 = v64;
    v78 = BYTE4(v55);
    v79 = v13;
    v48 = String.init<A>(reflecting:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v80);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_1BBC58000, v41, v42, "[%{public}s] using cached layout constraints for state: %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v44, -1, -1);
    MEMORY[0x1BFB23DF0](v43, -1, -1);
  }

  return v19;
}

void *SmallMultiwayControllerLayoutFactory.safeReactionPickerTipView(for:)(uint64_t a1)
{
  if (*(a1 + 21) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    if (!v4)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.conversationKit);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1BBC58000, v6, v7, "ReactionPickerTip: UI State is out of sync. Can't create constraints.", v8, 2u);
        MEMORY[0x1BFB23DF0](v8, -1, -1);
      }

      v2 = 0;
      v4 = v3;
    }
  }

  return v2;
}

BOOL SmallMultiwayControllerLayout.shouldConstrainListViewToRecationsView(for:)(__int128 *a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = *(a1 + 21);
    v5 = *a1;
    v6 = *(a1 + 4);
    v7 = v1;
    v8 = v2;
    return SmallMultiwayControllerLayout.localParticipantViewIsAtBottom(for:)(&v5);
  }

  else
  {
    return 0;
  }
}

id *SmallMultiwayControllerLayoutFactory.deinit()
{

  return v0;
}

uint64_t SmallMultiwayControllerLayoutFactory.__deallocating_deinit()
{
  SmallMultiwayControllerLayoutFactory.deinit();

  return swift_deallocClassInstance();
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.overallLayoutState.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 15) = *(v1 + 15);
  return result;
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.overallLayoutState.setter(uint64_t a1)
{
  result = *a1;
  *v1 = *a1;
  *(v1 + 15) = *(a1 + 15);
  return result;
}

uint64_t static SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *v6 = *a1;
  *&v6[15] = *(a1 + 15);
  v2 = *(a1 + 24);
  *v5 = *a2;
  *&v5[15] = *(a2 + 15);
  v3 = *(a2 + 24);
  return static MultiwayViewConstraintsController.OverallLayoutState.== infix(_:_:)(v6, v5) & (v2 == v3);
}

uint64_t SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hash(into:)()
{
  OUTLINED_FUNCTION_17_45();
  v1 = *(v0 + 24);
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  return MEMORY[0x1BFB22640](v1);
}

Swift::Int SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hashValue.getter()
{
  OUTLINED_FUNCTION_17_45();
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

__n128 SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.init(overallLayoutState:videoOrientation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  *(a3 + 15) = *(a1 + 15);
  *(a3 + 24) = a2;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation(uint64_t a1)
{
  Hasher.init(_seed:)();
  SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation.hash(into:)();
  return Hasher._finalize()();
}

void SmallMultiwayControllerLayout.displayScale.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong displayScale];
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    static UIView.screenScale.getter();
  }
}

uint64_t SmallMultiwayControllerLayout.__allocating_init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(uint64_t a1, int a2, char a3, int a4, char a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, char *a13, void *a14, char a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, char *a28, void *a29, char *a30, void *a31, unsigned __int8 *a32, unsigned __int8 a33)
{
  v37 = swift_allocObject();
  SmallMultiwayControllerLayout.init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  return v37;
}

id SmallMultiwayControllerLayout.init(containingView:participantListView:participantListState:gridView:participantGridState:controlsViewController:inCallControlsState:inCallBannerHostViewController:callControlsViewController:inCallBannerControlsAreaLayoutGuide:inCallBannerDodgingLayoutGuide:inCallConversationBannerState:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsBrowserContainerView:effectsView:effectsBrowserViewController:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:usesPaddingInsteadOfSafeArea:)(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, char *a13, void *a14, char a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, id a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, char *a28, void *a29, char *a30, void *a31, unsigned __int8 *a32, unsigned __int8 a33)
{
  MEMORY[0x1EEE9AC00](a1);
  v35 = v34;
  v360 = v36;
  v38 = v37;
  v346 = v39;
  v341 = v40;
  v347 = v41;
  v364 = v42;
  v44 = v43;
  v366 = *v33;
  v45 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v349 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  v323 = v49 - v48;
  v356 = *a13;
  v359 = *a28;
  v358 = *a30;
  v357 = *a32;
  v50 = MEMORY[0x1E69E7CC0];
  *(v33 + 200) = MEMORY[0x1E69E7CC0];
  *(v33 + 96) = 0u;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 0u;
  *(v33 + 144) = 0u;
  *(v33 + 208) = 0;
  *(v33 + 216) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v33 + 248) = v50;
  *(v33 + 296) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v33 + 304) = 1;
  *(v33 + 312) = 0;
  v371 = v44;
  [v44 displayScale];
  v52 = v51;
  v325 = v38;
  result = [v38 view];
  v354 = result;
  if (!result)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v320 = v45;
  v322 = (v33 + 200);
  v301 = v33 + 208;
  v326 = v35;
  result = [v35 view];
  v352 = result;
  if (!result)
  {
    goto LABEL_61;
  }

  v54 = a17;
  v319 = a21;
  v344 = [a21 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v367 = a14;
  [v44 frame];
  *(v33 + 256) = v55;
  *(v33 + 264) = v56;
  *(v33 + 280) = a9;
  *(v33 + 288) = a10;
  v370 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BC4D2600;
  *(v57 + 32) = v364;
  *(v57 + 40) = v341;
  *(v57 + 48) = v354;
  *(v57 + 56) = v352;
  *(v57 + 64) = a14;
  *(v57 + 72) = a17;
  *(v57 + 80) = a18;
  *(v57 + 88) = a27;
  *(v57 + 96) = a29;
  *(v57 + 104) = a31;
  v328 = a31;
  v58 = v367;
  v59 = a9;
  if (v364)
  {
    v60 = v364;
    v61 = v341;
    v62 = v354;
    v63 = v352;
    v64 = a17;
    v65 = a18;
    v66 = a27;
    v67 = a29;
    v68 = a29;
    v69 = v60;
    v54 = a17;
    [v69 setTranslatesAutoresizingMaskIntoConstraints_];
    v70 = v352;
  }

  else
  {
    v71 = v341;
    v72 = v354;
    v70 = v352;
    v73 = v352;
    v74 = a17;
    v75 = a18;
    v76 = a27;
    v67 = a29;
    v77 = a29;
  }

  [v341 setTranslatesAutoresizingMaskIntoConstraints_];
  [v354 setTranslatesAutoresizingMaskIntoConstraints_];
  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  [v367 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v54)
  {
    [v54 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  [a18 setTranslatesAutoresizingMaskIntoConstraints_];
  [a27 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v67)
  {
    [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v79 = a19;
  if (a31)
  {
    [v328 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (a19)
  {
    [a19 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  type metadata accessor for MultiwayViewConstraintsController();
  [v44 bounds];
  CGRectGetWidth(v403);
  static MultiwayViewConstraintsController.listItemWidth(for:displayScale:configurableRosterCellWidth:)(0, 1);
  v81 = v80;
  v82 = static SmallMultiwayControllerLayout.localParticipantWidth(for:aspectRatio:displayScale:)(v80, v52);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    if (Features.isICUIRedesignEnabled.getter())
    {
      Layout.MultiwayFaceTime.init()(v390);
      v83 = *&v390[47];
      static Layout.Roster.iOS.getter(v389);
      v84 = v83 + v82 + v389[1];
    }

    else
    {
      Layout.MultiwayFaceTime.init()(v390);
      v84 = *&v390[3];
    }

    v335 = a16;
    v338 = v79;
    if (Features.isICUIRedesignEnabled.getter())
    {
      Layout.MultiwayFaceTime.init()(v391);
      v85 = v391[47];
    }

    else
    {
      Layout.MultiwayFaceTime.init()(v391);
      v85 = v81 + v391[3];
    }

    v86 = -v85;
    v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v87 = OUTLINED_FUNCTION_20_33(v362);
    *(v87 + 16) = xmmword_1BC4BA7F0;
    v88 = [v364 leadingAnchor];
    v89 = [v371 leadingAnchor];
    v90 = OUTLINED_FUNCTION_14_42();
    v92 = [v90 v91];

    *(v87 + 32) = v92;
    v93 = [v364 trailingAnchor];
    v94 = [v371 trailingAnchor];
    v95 = OUTLINED_FUNCTION_14_42();
    v97 = [v95 v96];

    *(v87 + 40) = v97;
    v98 = [v354 leadingAnchor];
    v99 = [v371 leadingAnchor];
    v100 = OUTLINED_FUNCTION_14_42();
    v102 = [v100 v101];

    *(v87 + 48) = v102;
    v103 = [v354 trailingAnchor];
    v104 = [v371 trailingAnchor];
    v105 = OUTLINED_FUNCTION_14_42();
    v107 = [v105 v106];

    *(v87 + 56) = v107;
    v388 = v87;
    swift_unknownObjectWeakAssign();
    if (a23)
    {
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1BC4BA930;
      v109 = a23;
      v110 = [v109 bottomAnchor];
      v111 = OUTLINED_FUNCTION_18_40([v371 bottomAnchor]);

      *(v108 + 32) = v111;
      v112 = [v109 centerXAnchor];
      v113 = OUTLINED_FUNCTION_18_40([v371 centerXAnchor]);

      *(v108 + 40) = v113;
      v114 = OUTLINED_FUNCTION_11_66();
      specialized Array.append<A>(contentsOf:)(v114);
    }

    v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
    if (!a24)
    {
      break;
    }

    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1BC4BA930;
    v79 = a24;
    v117 = [v79 widthAnchor];
    Layout.MultiwayFaceTime.init()(v392);
    v118 = [v117 constraintEqualToConstant_];

    *(v116 + 32) = v118;
    v119 = [v79 heightAnchor];
    v120 = [v79 widthAnchor];
    v121 = [v119 constraintEqualToAnchor_];

    *(v116 + 40) = v121;
    v122 = OUTLINED_FUNCTION_11_66();
    specialized Array.append<A>(contentsOf:)(v122);
    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v135 = [v79 leadingAnchor];
      v136 = [v371 leadingAnchor];
      Layout.MultiwayFaceTime.init()(v393);
      v137 = [v135 constraintEqualToAnchor:v136 constant:v394];

      v138 = [v79 bottomAnchor];
      v139 = [v371 safeAreaLayoutGuide];
      v140 = [v139 bottomAnchor];

      v141 = [v138 constraintEqualToAnchor_];
      v142 = [v79 bottomAnchor];
      v143 = [a27 topAnchor];
      Layout.MultiwayFaceTime.init()(v395);
      v144 = [v142 constraintEqualToAnchor:v143 constant:-v396];

      LODWORD(v145) = 1.0;
      [v144 setPriority_];
      v146 = *(v370 + 144);
      *(v370 + 144) = v137;
      v147 = v137;

      v148 = *(v370 + 96);
      *(v370 + 96) = v141;
      v149 = v141;

      v150 = *(v370 + 104);
      *(v370 + 104) = v144;
      v151 = v144;

      v152 = swift_allocObject();
      v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
      *(v152 + 16) = xmmword_1BC4BC370;
      *(v152 + 32) = v147;
      *(v152 + 40) = v149;
      *(v152 + 48) = v151;
      v153 = v147;
      v154 = v149;
      v155 = v151;
      specialized Array.append<A>(contentsOf:)(v152);

      break;
    }

    v123 = [v79 topAnchor];
    v124 = [v371 safeAreaLayoutGuide];
    v125 = [v124 topAnchor];

    v126 = [v123 constraintEqualToAnchor_];
    v127 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
    OUTLINED_FUNCTION_4_0(&v326[OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController], &v373);
    v128 = *&v326[v127];
    if (v128)
    {
      v129 = v128;
      v130 = [v79 topAnchor];
      result = [v129 view];
      if (!result)
      {
        goto LABEL_62;
      }

      v131 = result;
      v132 = [result bottomAnchor];

      v133 = [v130 constraintEqualToAnchor:v132 constant:10.0];
      if (v133)
      {
        LODWORD(v134) = 1.0;
        [v133 setPriority_];
      }
    }

    else
    {
      v133 = 0;
    }

    v156 = [v79 trailingAnchor];
    v157 = [v371 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v393);
    v158 = [v156 constraintEqualToAnchor:v157 constant:-v394];

    v159 = [v79 leadingAnchor];
    v160 = [v371 leadingAnchor];
    Layout.MultiwayFaceTime.init()(v395);
    v161 = [v159 constraintEqualToAnchor:v160 constant:v396];

    LODWORD(v162) = 1.0;
    [v161 setPriority_];
    v163 = *(v370 + 128);
    v164 = *(v370 + 136);
    *(v370 + 128) = v126;
    *(v370 + 136) = v133;
    v345 = v126;
    v343 = v133;

    v165 = *(v370 + 112);
    v166 = *(v370 + 120);
    *(v370 + 112) = v158;
    *(v370 + 120) = v161;
    v332 = v158;
    v167 = v161;

    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
    v169 = OUTLINED_FUNCTION_20_33(v168);
    *(v169 + 16) = xmmword_1BC4BB990;
    v170 = *(v370 + 128);
    v171 = *(v370 + 136);
    *(v169 + 32) = v170;
    *(v169 + 40) = v171;
    v173 = *(v370 + 112);
    v172 = *(v370 + 120);
    *(v169 + 48) = v173;
    *(v169 + 56) = v172;
    a16 = MEMORY[0x1E69E7CC0];
    v402[0] = MEMORY[0x1E69E7CC0];
    v174 = v172;
    v175 = v170;
    v176 = v171;
    v177 = v173;
    for (i = 0; ; ++i)
    {
      if (i == 4)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        specialized Array.append<A>(contentsOf:)(a16);

        v115 = &_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMR;
        goto LABEL_39;
      }

      if (i > 3)
      {
        break;
      }

      v179 = *(v169 + 8 * i + 32);
      if (v179)
      {
        v180 = v179;
        MEMORY[0x1BFB20CC0]();
        if (*((v402[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v402[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a16 = v402[0];
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_39:
  v181 = swift_allocObject();
  *(v181 + 16) = v115[55];
  v182 = [a25 leadingAnchor];
  v183 = [v371 leadingAnchor];
  Layout.MultiwayFaceTime.init()(v397);
  v184 = [v182 constraintEqualToAnchor:v183 constant:v397[30]];

  *(v181 + 32) = v184;
  v185 = [a25 bottomAnchor];
  v186 = [v371 safeAreaLayoutGuide];
  v187 = [v186 bottomAnchor];

  Layout.MultiwayFaceTime.init()(v398);
  v188 = [v185 constraintEqualToAnchor:v187 constant:-v398[31]];

  *(v181 + 40) = v188;
  HIDWORD(v318) = HIDWORD(a25);
  v189 = [a25 heightAnchor];
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v399);
  v190 = [v189 constraintEqualToConstant_];

  *(v181 + 48) = v190;
  v191 = OUTLINED_FUNCTION_11_66();
  specialized Array.append<A>(contentsOf:)(v191);
  if (a26)
  {
    v192 = OUTLINED_FUNCTION_20_33(v362);
    *(v192 + 16) = xmmword_1BC4BA7F0;
    v193 = a26;
    v194 = [v193 heightAnchor];
    v195 = [v364 heightAnchor];
    v196 = [v194 constraintEqualToAnchor_];

    *(v192 + 32) = v196;
    v197 = [v193 widthAnchor];
    v198 = OUTLINED_FUNCTION_7_71([v364 widthAnchor]);

    *(v192 + 40) = v198;
    v199 = [v193 bottomAnchor];
    v200 = OUTLINED_FUNCTION_7_71([v364 bottomAnchor]);

    *(v192 + 48) = v200;
    v201 = [v193 leadingAnchor];
    v202 = OUTLINED_FUNCTION_7_71([v364 leadingAnchor]);

    *(v192 + 56) = v202;
    v203 = OUTLINED_FUNCTION_11_66();
    specialized Array.append<A>(contentsOf:)(v203);
  }

  v348 = v347 & 1;
  v204 = [v364 heightAnchor];
  v205 = [v204 constraintEqualToConstant_];

  v206 = v205;
  MEMORY[0x1BFB20CC0]();
  if (*((v388 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v388 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_11_66();
  v314 = v206;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v207 = [v367 widthAnchor];
  v312 = [v207 &selRef_fillColor + 1];

  v208 = *(v335 + 16);
  *(v370 + 160) = *v335;
  *(v370 + 176) = v208;
  v209 = *(v335 + 32);
  *(v370 + 192) = v209;
  v210 = *v335;
  v211 = *(v335 + 8);
  if (v209)
  {
    v210 = 1.0;
    v211 = 1.0;
  }

  if (v210 > v211)
  {
    v212 = v210;
  }

  else
  {
    v212 = v211;
  }

  if (v211 < v210)
  {
    v210 = v211;
  }

  v213 = v212 / v210;
  v214 = [v367 heightAnchor];
  v215 = *(v349 + 104);
  v215(v323, *MEMORY[0x1E69E7040], v320);
  v216 = v215;
  v217 = CGFloat.rounded(_:toScale:)(v323, v52, v82 * v213 * 0.5);
  v218 = *(v349 + 8);
  v219 = OUTLINED_FUNCTION_59_0();
  v218(v219);
  v316 = [v214 &selRef_fillColor + 1];

  Layout.MultiwayFaceTime.init()(v400);
  v220 = *MEMORY[0x1E69E7030];
  v216(v323, v220, v320);
  v221 = v216;
  v222 = OUTLINED_FUNCTION_3_90();
  v225 = CGFloat.rounded(_:toScale:)(v223, v222, v224);
  v226 = OUTLINED_FUNCTION_59_0();
  v218(v226);
  v227 = v218;
  v228 = [v367 widthAnchor];
  v309 = [v228 constraintEqualToConstant_];

  v229 = [v367 heightAnchor];
  v221(v323, v220, v320);
  v230 = OUTLINED_FUNCTION_3_90();
  v233 = CGFloat.rounded(_:toScale:)(v231, v230, v232);
  v234 = OUTLINED_FUNCTION_59_0();
  v227(v234);
  v330 = [v229 constraintEqualToConstant_];

  v235 = static SmallMultiwayControllerLayout.expandedLocalParticipantHeight(for:containingView:displayScale:)(v335, v371, *&v52, 0);
  v236 = [v367 heightAnchor];
  v336 = [v236 constraintEqualToConstant_];

  v237 = [v367 widthAnchor];
  v221(v323, *MEMORY[0x1E69E7048], v320);
  v238 = CGFloat.rounded(_:toScale:)(v323, v52, v235 / v213 * 0.5);
  v239 = OUTLINED_FUNCTION_59_0();
  v227(v239);
  v305 = [v237 constraintEqualToConstant_];

  v240 = [*&v367[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView] bottomAnchor];
  v241 = [v367 &off_1E7FE9D20 + 5];

  v307 = [v240 constraintEqualToAnchor_];
  v242 = [a27 centerYAnchor];
  v243 = [v371 safeAreaLayoutGuide];
  v244 = [v243 topAnchor];

  v245 = [v242 constraintEqualToAnchor_];
  LODWORD(v246) = 1132068864;
  [v245 setPriority_];
  *(v370 + 24) = v314;
  *(v370 + 32) = v312;
  *(v370 + 40) = v316;
  *(v370 + 48) = v309;
  *(v370 + 56) = v330;
  *(v370 + 64) = v305;
  *(v370 + 72) = v336;
  *(v370 + 80) = v307;
  *(v370 + 88) = v245;
  *(v370 + 272) = 1;
  type metadata accessor for SmallMultiwayControllerLayoutFactory();
  v303 = swift_allocObject();
  v324 = v338;
  v368 = v367;
  v350 = v364;
  v342 = v341;
  v365 = v354;
  v247 = a27;
  v355 = a29;
  v329 = v328;
  v321 = a26;
  v315 = v314;
  v317 = v316;
  v311 = v312;
  v313 = v309;
  v331 = v330;
  v337 = v336;
  v310 = v305;
  v308 = v307;
  v306 = v245;
  v248 = v371;
  *&v299 = a29;
  *(&v299 + 1) = a31;
  v361 = v247;
  *&v298 = a26;
  *(&v298 + 1) = v247;
  v333 = a11;
  v351 = a25;
  *(v370 + 16) = SmallMultiwayControllerLayoutFactory.init(containingView:participantListView:conversationBannerControlsAreaLayoutGuide:controlsView:gridView:localParticipantView:effectsBrowserContainerView:changeLayoutButton:changeLayoutButtonBackgroundView:captionsView:reactionsView:reactionPickerTipView:localParticipantLayoutGuide:usesPaddingInsteadOfSafeArea:)(v248, v350, v333, v365, v342, v368, v338, v351, v298, v299, 0, a33 & 1);
  v249 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v248 addLayoutGuide_];
  v372 = objc_opt_self();
  v250 = OUTLINED_FUNCTION_20_33(v362);
  *(v250 + 16) = xmmword_1BC4BA7F0;
  v251 = [v249 leadingAnchor];
  v252 = [v248 leadingAnchor];
  Layout.MultiwayFaceTime.init()(v401);
  v253 = [v251 constraintEqualToAnchor:v252 constant:v401[3]];

  *(v250 + 32) = v253;
  v254 = [v249 trailingAnchor];
  v255 = [v248 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v402);
  v256 = [v254 constraintEqualToAnchor:v255 constant:-*&v402[3]];

  *(v250 + 40) = v256;
  v257 = [v249 topAnchor];
  v258 = [v248 safeAreaLayoutGuide];
  v259 = [v258 topAnchor];

  v260 = [v257 constraintEqualToAnchor_];
  *(v250 + 48) = v260;
  v339 = v249;
  v261 = [v249 bottomAnchor];
  v262 = [v248 safeAreaLayoutGuide];
  v263 = [v262 bottomAnchor];

  v264 = [v261 constraintEqualToAnchor_];
  *(v250 + 56) = v264;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v372 activateConstraints_];

  v266 = v348;
  v378 = v348;
  *v379 = *v387;
  *&v379[3] = *&v387[3];
  v380 = v360;
  v381 = v356;
  v267 = a15;
  v382 = a15;
  v383 = v346 & 1;
  v384 = v359;
  v385 = v358;
  v386 = v357;
  v268 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:)(&v378, v370);
  swift_beginAccess();
  *(v370 + 248) = v268;

  if (a9)
  {
    ObjectType = swift_getObjectType();
    v270 = *(a10 + 160);
    v271 = a9;
    v272 = v270(v248, 0, v368, a33 & 1, ObjectType, a10);
    swift_beginAccess();
    v273 = v271;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v274 = *(*(v370 + 200) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v274);
    v374[0] = v273;
    v266 = v348;
    v275 = v274;
    v267 = a15;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v275, v374, v322, ObjectType, *(a10 + 8));
    swift_endAccess();

    SmallMultiwayControllerLayoutFactory.updateLocalParticipantLayoutGuilde(_:)(v272);
  }

  v377[0] = 1;
  type metadata accessor for InCallBannerViewConstraintManager();
  swift_allocObject();
  v276 = v352;
  v277 = v248;
  v278 = v333;
  v327 = v339;
  v363 = v277;
  v340 = v278;
  v353 = v276;
  v334 = a12;
  v279 = InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(v377, v327, v277, v278, v276, v334);
  swift_beginAccess();
  *(v370 + 312) = v279;

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v280 = *(*v322 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v280);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v280, v279, v322);
  swift_endAccess();
  LOBYTE(v374[0]) = v266;
  OUTLINED_FUNCTION_0_128();
  v375 = v267;
  v376 = v346 & 1;
  OUTLINED_FUNCTION_1_113();

  static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v281, v374, 1, 0.0, 0.0);
  v283 = v282;

  OUTLINED_FUNCTION_2_111();
  specialized Array.append<A>(contentsOf:)(v283);
  swift_endAccess();
  v284 = v368;
  v285 = v368;
  v286 = v344;
  if (a20)
  {
    v285 = v368;
    if (v344)
    {
      LOBYTE(v374[0]) = 1;
      v285 = a20;
      v287 = v344;
      LODWORD(v318) = a33 & 1;
      static ViewControllerLayout.effectsConstraintManagers(with:layoutIdiom:controlsView:localParticipantView:effectsView:effectsBrowserView:)(v363, v374, v365, a14, v285, v287, v366, &protocol witness table for SmallMultiwayControllerLayout, v300, a14, v301, a10, v303, v304, a33, 0, 0, v306, v308, v310, v311, v313, v315, v317, a11, v318, a12, a21, v321);
      v289 = v288;

      *v302 = v289;

      LOBYTE(v374[0]) = v348;
      OUTLINED_FUNCTION_0_128();
      v375 = v267;
      v376 = v346 & 1;
      OUTLINED_FUNCTION_1_113();
      static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v289, v374, 1, 0.0, 0.0);
      v291 = v290;

      OUTLINED_FUNCTION_2_111();
      specialized Array.append<A>(contentsOf:)(v291);
      swift_endAccess();

      v286 = v344;
    }
  }

  v292 = a18;
  if (a17)
  {
    LOBYTE(v374[0]) = 0;
    v369 = a17;
    v293 = static ViewControllerLayout.buttonShelfConstraintManagers(with:localParticipantView:localParticipantButtonShelfView:localParticipantControlsView:layoutIdiom:)(v363, v284, v369, a18, v374);
    *(v370 + 216) = v293;

    LOBYTE(v374[0]) = v348;
    OUTLINED_FUNCTION_0_128();
    v375 = a15;
    v376 = v346 & 1;
    OUTLINED_FUNCTION_1_113();
    static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v293, v374, 1, *(v370 + 256), *(v370 + 264));
    v295 = v294;
    v292 = a18;

    OUTLINED_FUNCTION_2_111();
    specialized Array.append<A>(contentsOf:)(v295);
    swift_endAccess();

    v286 = v344;
  }

  specialized Array.append<A>(contentsOf:)(v296);
  v297 = Array._bridgeToObjectiveC()().super.isa;

  [v372 activateConstraints_];

  return v370;
}

double static SmallMultiwayControllerLayout.localParticipantWidth(for:aspectRatio:displayScale:)(double a1, double a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Layout.Roster.iOS.getter(v11);
  v8 = a1 - v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7040], v4);
  v9 = CGFloat.rounded(_:toScale:)(v7, a2, v8 * 0.5);
  (*(v5 + 8))(v7, v4);
  return v9 + v9;
}

double static SmallMultiwayControllerLayout.expandedLocalParticipantHeight(for:containingView:displayScale:)(uint64_t a1, void *a2, unint64_t a3, char a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a1 == 1.0;
  if (*(a1 + 8) != 1.0)
  {
    v13 = 0;
  }

  if ((*(a1 + 32) & 1) == 0 && !v13)
  {
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v14 = v12 == 1.0;
  if (*(a1 + 24) != 1.0)
  {
    v14 = 0;
  }

  if ((*(a1 + 32) & 1) != 0 || v14)
  {
    [a2 frame];
    Width = CGRectGetWidth(v27);
    Layout.MultiwayFaceTime.init()(v23);
    v17 = v24 + v24;
  }

  else
  {
LABEL_9:
    [a2 safeAreaInsetFrame];
    Height = CGRectGetHeight(v26);
    Layout.MultiwayFaceTime.init()(v22);
    Width = Height - v22[20];
    Layout.MultiwayFaceTime.init()(v23);
    v17 = v25;
  }

  v18 = Width - v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7048], v8);
  if (a4)
  {
    [a2 displayScale];
  }

  else
  {
    v19 = *&a3;
  }

  v20 = CGFloat.rounded(_:toScale:)(v11, v19, v18 * 0.5);
  (*(v9 + 8))(v11, v8);
  return v20 + v20;
}

void SmallMultiwayControllerLayout.update(for:with:deviceOrientation:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  type metadata accessor for MultiwayViewConstraintsController();
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetWidth(v34);
  SmallMultiwayControllerLayout.displayScale.getter();
  static MultiwayViewConstraintsController.listItemWidth(for:displayScale:configurableRosterCellWidth:)(0, 1);
  v18 = v17;
  [*(v4 + 24) setConstant_];
  v31 = *(v4 + 160);
  v32 = *(v4 + 176);
  LOBYTE(v33) = *(v4 + 192);
  v19 = *(v4 + 32);
  SmallMultiwayControllerLayout.displayScale.getter();
  [v19 setConstant_];

  v21 = *(v4 + 160);
  v22 = *(v4 + 168);
  if (*(v4 + 192))
  {
    v21 = 1.0;
    v22 = 1.0;
  }

  if (v21 > v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v22 < v21)
  {
    v21 = v22;
  }

  v24 = v23 / v21;
  v25 = *(v4 + 32);
  v26 = *(v5 + 40);
  [v25 constant];
  v28 = v24 * v27;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E7040], v10);
  SmallMultiwayControllerLayout.displayScale.getter();
  v30 = CGFloat.rounded(_:toScale:)(v16, v29, v28 * 0.5);
  (*(v12 + 8))(v16, v10);
  [v26 setConstant_];

  SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
}

void SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()()
{
  v1 = *(v0 + 176);
  v6[0] = *(v0 + 160);
  v6[1] = v1;
  v7 = *(v0 + 192);
  SmallMultiwayControllerLayout.updateEnlargedAndExpandedLocalParticipantConstraints(with:)(v6);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if (*(v0 + 192))
  {
    v2 = 1.0;
    v3 = 1.0;
  }

  if (v2 > v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < v2)
  {
    v2 = v3;
  }

  v5 = v4 / v2;

  SmallMultiwayControllerLayout.updateRegularConstraintsForCurrentDeviceOrientation(with:)(v5);
}

void SmallMultiwayControllerLayout.update(localParticipantAspectRatio:layoutState:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v2;
  *(v1 + 192) = *(a1 + 32);
  SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
}

void SmallMultiwayControllerLayout.updateLocalParticipantVideoOrientation(videoOrientation:)(uint64_t result)
{
  v2 = v1;
  v4 = *(v1 + 272);
  if (v4 == 1)
  {
    if ((result & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (result != 1)
  {
    if ((result != 3) != (v4 == 3))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != 3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for CNKDeviceOrientation(0);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    v9 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v10 = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 64) = v10;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v11 = String.init<A>(reflecting:)();
    *(v5 + 96) = v9;
    *(v5 + 104) = v10;
    *(v5 + 72) = v11;
    *(v5 + 80) = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v13 = static OS_os_log.default.getter();
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("orientation changed from %@ to %@", 33, 2, &dword_1BBC58000, v13, v14, v5);

    *(v2 + 272) = result;
    SmallMultiwayControllerLayout.updateLocalParticipantHeightContraints()();
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.update(isDisplayedInBanner:containingView:)(Swift::Bool isDisplayedInBanner, UIView *containingView)
{
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v4);
  if (v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

void SmallMultiwayControllerLayout.updateLayoutWith(_:)(uint64_t a1)
{
  v2 = v1;
  v54[0] = *a1;
  *(v54 + 15) = *(a1 + 15);
  v3 = [*(v1 + 296) afbEnabled];
  v4 = objc_opt_self();
  swift_beginAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints_];

  if (v3)
  {
    v6 = *(v2 + 272);
    *v52 = v54[0];
    *&v52[15] = *(v54 + 15);
    v53 = v6;
    v7 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:forceMakeLayoutConstraints:)(v52, v2, 1);
  }

  else
  {
    *v52 = v54[0];
    *&v52[15] = *(v54 + 15);
    v7 = SmallMultiwayControllerLayoutFactory.layoutConstraints(for:using:)(v52, v2);
  }

  *(v2 + 248) = v7;

  OUTLINED_FUNCTION_4_0(v2 + 200, v52);
  v8 = OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_9_64(v8, v16, v17, v9, v10, v11, v12, v13, v14, v15, *v52);
  v19 = v18;

  OUTLINED_FUNCTION_8_69(v20, v21, v22, v23);
  specialized Array.append<A>(contentsOf:)(v19);
  swift_endAccess();
  v24 = OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_9_64(v24, v32, v33, v25, v26, v27, v28, v29, v30, v31, *v52);
  v35 = v34;

  OUTLINED_FUNCTION_8_69(v36, v37, v38, v39);
  specialized Array.append<A>(contentsOf:)(v35);
  swift_endAccess();
  v40 = *(v2 + 272);

  v41 = OUTLINED_FUNCTION_3_90();
  static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(v42, v43, v40, v41, v44);
  v46 = v45;

  OUTLINED_FUNCTION_8_69(v47, v48, v49, v50);
  specialized Array.append<A>(contentsOf:)(v46);
  swift_endAccess();

  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints_];
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateShutterButtonHorizontalConstraint(with:)(ConversationKit::MultiwayViewConstraintsController::ShutterButtonState with)
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    v7 = v1[18];
    if (with)
    {
      if (!v7)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v28 = v7;
      if (Strong)
      {
        [Strong frame];
        OUTLINED_FUNCTION_40_1();

        v33.origin.x = OUTLINED_FUNCTION_3_90();
        v33.size.width = v2;
        v33.size.height = v3;
        Width = CGRectGetWidth(v33);
      }

      else
      {
        Width = 0.0;
      }

      Layout.MultiwayFaceTime.init()(v29);
      v27 = Width - v30;
      Layout.MultiwayFaceTime.init()(v31);
      v26 = v27 - *&v31[35];
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v28 = v7;
      Layout.MultiwayFaceTime.init()(v31);
      v26 = *&v31[29];
    }

    [v28 setConstant_];
  }

  else
  {
    v10 = v1[14];
    if (v10)
    {
      v11 = v1[15];
      if (v11)
      {
        v12 = one-time initialization token for conversationKit;
        v13 = v10;
        v14 = v11;
        if (v12 != -1)
        {
          OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.conversationKit);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v31[0] = v19;
          *v18 = 136315138;
          v29[0] = with & 1;
          v20 = String.init<A>(reflecting:)();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_1BBC58000, v16, v17, "updateShutterButtonHorizontalConstraint with state=%s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1BFB23DF0](v19, -1, -1);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
        }

        if (with)
        {
          LODWORD(v23) = 1148846080;
          [v13 setPriority_];
          v25 = 1132068864;
        }

        else
        {
          LODWORD(v23) = 1132068864;
          [v13 setPriority_];
          v25 = 1148846080;
        }

        LODWORD(v24) = v25;
        [v14 setPriority_];
      }
    }
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateShutterButtonVerticalConstraint(_:)(Swift::Bool a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = *(v1 + 128);
    if (v5)
    {
      v6 = *(v1 + 136);
      if (v6)
      {
        v7 = one-time initialization token for conversationKit;
        v16 = v5;
        v8 = v6;
        if (v7 != -1)
        {
          OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.conversationKit);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 67109120;
          *(v12 + 4) = a1;
          _os_log_impl(&dword_1BBC58000, v10, v11, "updateShutterButtonVerticalConstraint with shouldDodge=%{BOOL}d", v12, 8u);
          MEMORY[0x1BFB23DF0](v12, -1, -1);
        }

        if (a1)
        {
          *&v13 = 250.0;
        }

        else
        {
          *&v13 = 1000.0;
        }

        if (a1)
        {
          v14 = 1000.0;
        }

        else
        {
          v14 = 250.0;
        }

        [v16 setPriority_];
        *&v15 = v14;
        [v8 setPriority_];
      }
    }
  }
}

Swift::Void __swiftcall SmallMultiwayControllerLayout.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(CGPoint forPosition, Swift::Bool withSnapping)
{
  y = forPosition.y;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (!withSnapping)
  {
LABEL_7:
    v15 = *(v2 + 88);
    v16 = OUTLINED_FUNCTION_21_31();
    [v16 layoutFrame];
    OUTLINED_FUNCTION_6_3();

    v28.origin.x = OUTLINED_FUNCTION_5_72();
    [v15 setConstant_];

    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_21_31();
  [v9 layoutFrame];
  OUTLINED_FUNCTION_6_3();

  v25.origin.x = OUTLINED_FUNCTION_5_72();
  MinY = CGRectGetMinY(v25);
  OUTLINED_FUNCTION_4_0(&static Layout.Captions.bubbleSnapDistance, v24);
  if (MinY + *&static Layout.Captions.bubbleSnapDistance <= y)
  {
    v11 = OUTLINED_FUNCTION_21_31();
    [v11 layoutFrame];
    OUTLINED_FUNCTION_6_3();

    v26.origin.x = OUTLINED_FUNCTION_5_72();
    if (CGRectGetMaxY(v26) - *&static Layout.Captions.bubbleSnapDistance < y)
    {
      v12 = *(v2 + 88);
      v13 = OUTLINED_FUNCTION_21_31();
      [v13 layoutFrame];
      OUTLINED_FUNCTION_40_1();

      v27.origin.x = OUTLINED_FUNCTION_3_90();
      v27.size.width = v3;
      v27.size.height = v4;
      [v12 setConstant_];

      v14 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [*(v2 + 88) setConstant_];
LABEL_8:
  v14 = 0;
LABEL_9:
  v17 = *(v2 + 96);
  if (v17)
  {
    v18 = *(v2 + 104);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      if (v14)
      {
        *&v21 = 1.0;
      }

      else
      {
        *&v21 = 1000.0;
      }

      if (v14)
      {
        v22 = 1000.0;
      }

      else
      {
        v22 = 1.0;
      }

      [v19 setPriority_];
      *&v23 = v22;
      [v20 setPriority_];
    }
  }
}

uint64_t SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && *(v1 + 280) && (v5 = *(v1 + 288), ObjectType = swift_getObjectType(), v16.origin.x = (*(v5 + 64))(ObjectType, v5), Height = CGRectGetHeight(v16), (*(a1 + 32) & 1) == 0))
  {
    v9 = Height;
    v10 = 1.0;
    v11 = 1.0;
    if ((*(v1 + 192) & 1) != 0 || (v11 = *(v1 + 160), v10 = *(v1 + 168), v12 = v11, v11 <= v10))
    {
      v12 = v11;
      v11 = v10;
    }

    if (v10 >= v12)
    {
      v10 = v12;
    }

    if (v11 / v10 < 2.0)
    {
      static IconButtonStyle.Defaults.phone.iconWidth.getter();
      v9 = v9 - v13 + -14.0;
    }

    if (v4 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = v4;
    }

    if (v3 > v4)
    {
      v15 = v3;
    }

    else
    {
      v15 = v4;
    }

    *&result = v14 / v15 * v9;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void SmallMultiwayControllerLayout.updateEnlargedAndExpandedLocalParticipantConstraints(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    SmallMultiwayControllerLayout.displayScale.getter();
    v12 = v11;
    v13 = 1.0;
    v14 = 1.0;
    if ((*(a1 + 32) & 1) == 0)
    {
      if (v4 > v5)
      {
        v14 = v4;
      }

      else
      {
        v14 = v5;
      }

      if (v5 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v5;
      }
    }

    v15 = v14 / v13;
    v16 = *(v1 + 72);
    [v16 setConstant_];

    v17 = *(v1 + 72);
    v18 = *(v2 + 64);
    [v17 constant];
    v19 = *(v7 + 104);
    v21 = v20 / v15;
    v22 = v93;
    v87 = *MEMORY[0x1E69E7048];
    v89 = v19;
    v90 = v7 + 104;
    (v19)(v93);
    v23 = CGFloat.rounded(_:toScale:)(v22, v12, v21 * 0.5);
    v24 = *(v7 + 8);
    v88 = v6;
    v91 = v24;
    v92 = v7 + 8;
    v24(v22, v6);
    [v18 setConstant_];

    v25 = *(v2 + 216);
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v86 = v10;
        v27 = v25 + 32;

        do
        {
          outlined init with copy of IDSLookupManager(v27, v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd, &_s15ConversationKit21ViewConstraintManager_pMR);
          type metadata accessor for LocalParticipantControlsViewConstraintManager();
          if (swift_dynamicCast())
          {
            v28 = v96;
            v29 = *(v2 + 192);
            v30 = *(v2 + 160);
            v94 = *(v2 + 176);
            v95 = v30;
            swift_beginAccess();
            v31 = v94;
            *(v28 + 16) = v95;
            *(v28 + 32) = v31;
            *(v28 + 48) = v29;
          }

          v27 += 40;
          --v26;
        }

        while (v26);

        v10 = v86;
        v22 = v93;
      }
    }

    Layout.MultiwayFaceTime.init()(v97);
    v32 = *&v97[7];
    v33 = *MEMORY[0x1E69E7030];
    v34 = v88;
    v89(v22, v33, v88);
    v35 = CGFloat.rounded(_:toScale:)(v22, v12, v32);
    v91(v22, v34);
    if ((*(v2 + 272) | 2) == 3)
    {
      *&v36 = COERCE_DOUBLE(SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(a1));
      if ((v38 & 1) == 0)
      {
        v69 = *&v36;
        v70 = v37;
        v71 = swift_unknownObjectWeakLoadStrong();
        if (v71)
        {
          v72 = v71;
          v73 = [v71 widthAnchor];

          v74 = [v73 constraintEqualToConstant_];
          v75 = *(v2 + 48);
          *(v2 + 48) = v74;

          v76 = swift_unknownObjectWeakLoadStrong();
          if (v76)
          {
            v77 = v76;
            v78 = v70;
            v46 = [v76 heightAnchor];

            v50 = [v46 constraintEqualToConstant_];
            goto LABEL_27;
          }

LABEL_38:
          __break(1u);
          return;
        }

        goto LABEL_35;
      }

      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        v41 = [v39 widthAnchor];

        v42 = [v41 constraintEqualToConstant_];
        v43 = *(v2 + 48);
        *(v2 + 48) = v42;

        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          v46 = [v44 heightAnchor];

          v47 = v93;
          v48 = v88;
          v89(v93, v33, v88);
          v49 = CGFloat.rounded(_:toScale:)(v47, v12, v15 * v35);
          v91(v47, v48);
          v50 = [v46 constraintEqualToConstant_];
LABEL_27:
          v79 = v50;

          v80 = *(v2 + 56);
          *(v2 + 56) = v79;

          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          __swift_project_value_buffer(v81, static Logger.conversationKit);

          v65 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 134218240;
            [*(v2 + 48) constant];
            *(v83 + 4) = v84;
            *(v83 + 12) = 2048;
            [*(v2 + 56) constant];
            *(v83 + 14) = v85;
            _os_log_impl(&dword_1BBC58000, v65, v82, "Updated enlarged constraints to width=%f, height=%f", v83, 0x16u);
            MEMORY[0x1BFB23DF0](v83, -1, -1);
          }

          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v51 = swift_unknownObjectWeakLoadStrong();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 widthAnchor];

        v54 = v93;
        v55 = v89;
        v89(v93, v33, v34);
        v56 = CGFloat.rounded(_:toScale:)(v54, v12, v15 * v35);
        v91(v54, v34);
        v57 = [v53 constraintEqualToConstant_];

        v58 = *(v2 + 48);
        *(v2 + 48) = v57;

        v59 = swift_unknownObjectWeakLoadStrong();
        if (v59)
        {
          v60 = v59;
          v61 = [v59 heightAnchor];

          v62 = [v61 constraintEqualToConstant_];
          v63 = *(v2 + 56);
          *(v2 + 56) = v62;

          v64 = *(v2 + 64);
          v65 = *(v2 + 72);
          [v64 constant];
          v67 = v66 / v15;
          v55(v54, v87, v34);
          v68 = CGFloat.rounded(_:toScale:)(v54, v12, v67 * 0.5);
          v91(v54, v34);
          [v65 setConstant:v68 + v68];
LABEL_31:

          return;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

void SmallMultiwayControllerLayout.updateRegularConstraintsForCurrentDeviceOrientation(with:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 40) constant];
  v10 = v9;
  [*(v1 + 32) constant];
  if (v11 < v10)
  {
    v10 = v11;
  }

  if ((*(v1 + 272) | 2) != 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = [Strong widthAnchor];

      (*(v5 + 104))(v8, *MEMORY[0x1E69E7040], v4);
      SmallMultiwayControllerLayout.displayScale.getter();
      v31 = CGFloat.rounded(_:toScale:)(v8, v30, v10 * a1 * 0.5);
      (*(v5 + 8))(v8, v4);
      v32 = [v29 constraintEqualToConstant_];

      v33 = *(v2 + 32);
      *(v2 + 32) = v32;

      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        v36 = [v34 heightAnchor];

        v37 = [v36 constraintEqualToConstant_];
        v38 = *(v2 + 40);
        *(v2 + 40) = v37;
LABEL_25:

        return;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v1 + 176);
  v56[0] = *(v1 + 160);
  v56[1] = v12;
  v57 = *(v1 + 192);
  SmallMultiwayControllerLayout.calculateLocalParticipantEnlargedSize(aspectRatio:)(v56);
  v14 = v13;
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      v17 = [v15 widthAnchor];

      v18 = [v17 constraintEqualToConstant_];
      v19 = *(v2 + 32);
      *(v2 + 32) = v18;

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 heightAnchor];

        (*(v5 + 104))(v8, *MEMORY[0x1E69E7040], v4);
        SmallMultiwayControllerLayout.displayScale.getter();
        v24 = CGFloat.rounded(_:toScale:)(v8, v23, v10 * a1 * 0.5);
        (*(v5 + 8))(v8, v4);
        v25 = [v22 constraintEqualToConstant_];

        v26 = *(v2 + 40);
        *(v2 + 40) = v25;
LABEL_21:

        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.conversationKit);

        v38 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 134218240;
          [*(v2 + 32) constant];
          *(v53 + 4) = v54;
          *(v53 + 12) = 2048;
          [*(v2 + 40) constant];
          *(v53 + 14) = v55;
          _os_log_impl(&dword_1BBC58000, v38, v52, "Updated regular constraints to width=%f, height=%f", v53, 0x16u);
          MEMORY[0x1BFB23DF0](v53, -1, -1);
        }

        goto LABEL_25;
      }

      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v39 = [v15 heightAnchor];

  [*(v2 + 56) constant];
  v41 = [v39 constraintEqualToConstant_];

  v42 = *(v2 + 40);
  *(v2 + 40) = v41;

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 widthAnchor];

    [*(v2 + 40) constant];
    v47 = *(v2 + 160);
    v48 = *(v2 + 168);
    if (*(v2 + 192))
    {
      v47 = 1.0;
      v48 = 1.0;
    }

    if (v48 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    if (v47 <= v48)
    {
      v47 = v48;
    }

    v50 = [v45 constraintEqualToConstant_];

    v26 = *(v2 + 32);
    *(v2 + 32) = v50;
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
}

BOOL SmallMultiwayControllerLayout.localParticipantViewIsAtBottom(for:)(uint64_t a1)
{
  v1 = *(a1 + 17);
  if (!(v1 >> 6))
  {
    return (v1 & 0xFE) == 2;
  }

  if (v1 >> 6 == 1)
  {
    LOBYTE(v1) = v1 & 0x3F;
    return (v1 & 0xFE) == 2;
  }

  return 0;
}

uint64_t SmallMultiwayControllerLayout.deinit()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 136);

  MEMORY[0x1BFB23F10](v0 + 224);
  MEMORY[0x1BFB23F10](v0 + 232);
  MEMORY[0x1BFB23F10](v0 + 240);

  return v0;
}

uint64_t SmallMultiwayControllerLayout.__deallocating_deinit()
{
  SmallMultiwayControllerLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for InCallBannerViewConstraintManager();
  v10 = &protocol witness table for InCallBannerViewConstraintManager;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v8, v6 + 40 * a1 + 32);
}

{
  v8 = type metadata accessor for ReactionNotice(0);
  v9 = &protocol witness table for ReactionNotice;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  outlined init with take of Collaboration();
  v5 = *a3;
  *(v5 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v7, v5 + 40 * a1 + 32);
}

unint64_t lazy protocol witness table accessor for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation()
{
  result = lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation;
  if (!lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation;
  if (!lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation and conformance SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[32])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SmallMultiwayControllerLayout.OverallLayoutStateWithOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState()
{
  result = lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState;
  if (!lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState;
  if (!lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewConstraintsController.OverallLayoutState and conformance MultiwayViewConstraintsController.OverallLayoutState);
  }

  return result;
}

uint64_t ConversationControlsMoreMenuButtonProvider.moreMenuButtonDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of ConversationControlsMoreMenuButtonDelegate?(a1, v1 + 192);
  return swift_endAccess();
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    type metadata accessor for ConversationControlsButton();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v31 = v10;
      v18 = objc_opt_self();
      v30 = v4;
      v19 = v18;
      v29 = v15;
      v20 = [v19 conversationKit];
      v32._object = 0xE000000000000000;
      v21.value._countAndFlagsBits = 0x61737265766E6F43;
      v21.value._object = 0xEF74694B6E6F6974;
      v22._object = 0x80000001BC507B10;
      v22._countAndFlagsBits = 0xD00000000000001BLL;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v32);

      v25 = (v17 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v25 = v24;
      v4 = v30;
      v10 = v31;

      ConversationControlsButton.localizedName.didset();
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x756E654D65726F6DLL, 0xEE006E6F74747542, v15);
    [v15 addTarget:v1 action:sel_moreMenuButtonPressed forControlEvents:64];
    v26 = ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()();
    (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x878))(v26);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ForegroundApp?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMR, MEMORY[0x1E695C068]);
    lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?();
    Publisher<>.removeDuplicates()();
    (*(v4 + 8))(v7, v2);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ForegroundApp?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMR, MEMORY[0x1E695BD38]);
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v13, v8);
    *(v1 + 184) = v27;
  }
}

uint64_t ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR);
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  v9[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x740))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
  Publisher<>.removeDuplicates()();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v7 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  *(v1 + 232) = v7;
}

uint64_t closure #1 in ConversationControlsMoreMenuButtonProvider.buttonChanged()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40) <= 1u)
    {
      v3._object = 0x80000001BC5012A0;
      v3._countAndFlagsBits = 0xD000000000000016;
      ConversationControlsMenuButtonProvider.dismissMenu(context:)(v3);
    }
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsMoreMenuButtonProvider.shouldEnableMenu()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isMoreMenuEnabled.getter() & 1) == 0;
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x2A0))();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && (v2 = v1, type metadata accessor for CallCenterFacade(), static CallCenterFacade.shared.getter(), v3 = [v2 uniqueProxyIdentifier], static String._unconditionallyBridgeFromObjectiveC(_:)(), v3, v4 = CallCenterFacade.call(with:)(), , , v4))
  {

    static CallCenterFacade.shared.getter();
    v5 = type metadata accessor for FTMenuItemStateProvider();
    swift_allocObject();
    v6 = FTMenuItemStateProvider.init(call:callCenter:)();
    v7 = *(v0 + 40);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v5;
    v12 = MEMORY[0x1E6995F68];
    v9 = swift_allocObject();
    swift_weakInit();

    ConversationControlsManager.presentMoreMenu(isBannerView:source:arrowDirection:provider:alongsideTransition:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(v7 != 2, Strong, 15, v10, 0, 0, TPNumberPadCharacter.rawValue.getter, 0, partial apply for closure #2 in ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed(), v9, TPNumberPadCharacter.rawValue.getter, 0, TPNumberPadCharacter.rawValue.getter, 0, v6, v10[1], v10[2], v11, v12, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6]);

    swift_unknownObjectRelease();
    outlined destroy of TapInteractionHandler?(v10, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMd, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMR);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void closure #2 in ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 160);

    v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(v3);

    if (v4)
    {
      swift_beginAccess();
      v5 = swift_weakLoadStrong();
      if (v5)
      {
        v6 = v5;
        swift_beginAccess();
        outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(v6 + 192, &v13);

        if (*(&v14 + 1))
        {
          outlined init with take of TapInteractionHandler(&v13, v16);
          type metadata accessor for ConversationHUDDetailsViewController();
          v7 = v17;
          v8 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          (*(v8 + 8))(v7, v8);
          swift_getObjectType();
          specialized static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
          v10 = v9;
          swift_unknownObjectRelease();
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          (*(v12 + 16))(v10, v11, v12);

          __swift_destroy_boxed_opaque_existential_1(v16);
          return;
        }
      }

      else
      {

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }

      outlined destroy of TapInteractionHandler?(&v13, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
    }
  }
}

Swift::Void __swiftcall ConversationControlsMoreMenuButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v2 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
  v3 = [v2 layer];

  [(UIButton *)button bounds];
  [v3 setCornerRadius_];
}

void *ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 240);
  }

  else
  {
    v3 = closure #1 in ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter(v0);
    v4 = *(v0 + 240);
    *(v0 + 240) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *closure #1 in ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CountdownLabelView()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setHidden_];

  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))(0, 0, 0);
  [v2 addTarget:a1 action:sel_screenSharingButtonPressed forControlEvents:64];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong addSubview_];
    v6 = *MEMORY[0x1E69DC5C0];
    v7 = *(MEMORY[0x1E69DC5C0] + 8);
    v8 = *(MEMORY[0x1E69DC5C0] + 16);
    v9 = *(MEMORY[0x1E69DC5C0] + 24);
    v10 = v5;
    v14.top = v6;
    v14.leading = v7;
    v14.bottom = v8;
    v14.trailing = v9;
    UIView.addConstraintsToFill(_:insets:)(v10, v14);
  }

  v11 = *(a1 + 160);
  v12 = ConversationControlsMoreMenuButtonProvider.countdownEphemeralAlert.getter();
  (*((*v3 & *v11) + 0x8E0))(v12);
  return v2;
}

Class ConversationControlsMoreMenuButtonProvider.countdownEphemeralAlert.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v16._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x535F4E4545524353;
  v2._object = 0xEE00474E49524148;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v16);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
  v6.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = (*(*static Defaults.shared + 192))();
  if (v7)
  {
    v8 = 0xD00000000000002ELL;
  }

  else
  {
    v8 = 0xD00000000000002FLL;
  }

  if (v7)
  {
    v9 = "RTED_SUBTITLE_NOTIFICATIONS_OFF";
  }

  else
  {
    v9 = "SCREEN_SHARING_STOP";
  }

  v10 = [v0 conversationKit];
  v17._object = 0xE000000000000000;
  v11._object = (v9 | 0x8000000000000000);
  v11._countAndFlagsBits = v8;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

  NSAttributedString.__allocating_init(string:)(v14);
  return v6.super.isa;
}

uint64_t closure #1 in ConversationControlsMoreMenuButtonProvider.setUpCountdownButton()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = Optional<A>.localizedString(style:)(0, v2, v3);
      v10 = v9;
      v11 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
      [v11 setHidden_];

      v12 = *(v5 + 240);
      v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x90);
      v14 = v12;
      v13(v3 ^ 1, v8, v10);

      v15 = [v7 imageView];
      if (v15)
      {
        v16 = v15;
        [v15 setHidden_];
      }
    }
  }

  return result;
}

uint64_t Optional<A>.localizedString(style:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v8 = [v6 localizedStringFromNumber:v7 numberStyle:a1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void ConversationControlsMoreMenuButtonProvider.screenSharingButtonPressed()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Stopped screen sharing countdown", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *(v1 + 160);
  ConversationControlsManager.stopScreenShare()();
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x8E0))(0, 0, 0);
  v8 = ConversationControlsMoreMenuButtonProvider.shareScreenCountdownView.getter();
  [v8 setHidden_];

  v9 = *(v1 + 240);
  v10 = *((*v7 & *v9) + 0x90);
  v11 = v9;
  v10(0, 0, 0);
}

uint64_t @objc ConversationControlsMoreMenuButtonProvider.moreMenuButtonPressed()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t ConversationControlsMoreMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 184) = 0u;
  return ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t outlined assign with take of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void ConversationControlsMoreMenuButtonProvider.__ivar_destroyer()
{

  outlined destroy of TapInteractionHandler?(v0 + 192, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);

  v1 = *(v0 + 240);
}

uint64_t ConversationControlsMoreMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  outlined destroy of TapInteractionHandler?(v0 + 192, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);

  return v0;
}

uint64_t ConversationControlsMoreMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMoreMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AccessibilityVoiceOverModifier.voiceOverEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_1BBC58000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a3, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(a3) = v13[15];
  }

  return a3 & 1;
}

uint64_t AccessibilityVoiceOverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  v13 = a5 & 1;
  *(v12 + 40) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMR);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMR) + 36));
  *v15 = partial apply for closure #1 in AccessibilityVoiceOverModifier.body(content:);
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = 0;

  return outlined copy of Environment<Edge>.Content(a4, v13);
}

void closure #1 in AccessibilityVoiceOverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_1BBC58000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a3, 0);
    (*(v9 + 8))(v12, v8);
    if (v17[15] != 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    v15 = *MEMORY[0x1E69DD888];
    v16 = MEMORY[0x1BFB209B0](a1, a2, v10);
    UIAccessibilityPostNotification(v15, v16);
  }
}

uint64_t View.voiceOver(toSpeak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x1BFB1FAD0](v7, a3, &type metadata for AccessibilityVoiceOverModifier, a4);
}

uint64_t getEnumTagSinglePayload for AccessibilityVoiceOverModifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityVoiceOverModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit022AccessibilityVoiceOverF0VGAA017_AppearanceActionF0VGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityVoiceOverModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit022AccessibilityVoiceOverD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityVoiceOverModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier);
  }

  return result;
}

uint64_t PreCallButtonsViewModel.currentPreCallContext.getter(uint64_t a1, uint64_t x1_0)
{
  PreCallButtonsViewModel.contextSubject.getter(a1, x1_0);
  CurrentValueSubject.value.getter();
}

uint64_t PreCallButtonsViewModel.preCallDelegate.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v2 = lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  OUTLINED_FUNCTION_1_12(v2, v3);

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t key path getter for PreCallButtonsViewModel.preCallDelegate : PreCallButtonsViewModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PreCallButtonsViewModel.preCallDelegate.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t key path setter for PreCallButtonsViewModel.preCallDelegate : PreCallButtonsViewModel(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = swift_unknownObjectRetain();
  return PreCallButtonsViewModel.preCallDelegate.setter(v3, v1, v2);
}

uint64_t PreCallButtonsViewModel.preCallDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v10 = v3;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  specialized PreCallButtonsViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in PreCallButtonsViewModel.preCallDelegate.setter, &v9);

  return swift_unknownObjectRelease();
}

uint64_t PreCallButtonsViewModel.preCallDelegate.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t closure #1 in PreCallButtonsViewModel.preCallDelegate.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*PreCallButtonsViewModel.preCallDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit23PreCallButtonsViewModel___observationRegistrar;
  *v3 = v1;
  v3[5] = lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return PreCallButtonsViewModel.preCallDelegate.modify;
}

void PreCallButtonsViewModel.preCallDelegate.modify(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t PreCallButtonsViewModel.__allocating_init(preCallDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PreCallButtonsViewModel.init(preCallDelegate:)(a1, a2, a3);
  return v6;
}

void *PreCallButtonsViewModel.init(preCallDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMR);
  swift_allocObject();
  v3[5] = CurrentValueSubject.init(_:)();
  ObservationRegistrar.init()();
  PreCallButtonsViewModel.preCallDelegate.setter(a1, a2, a3);
  return v3;
}

uint64_t PreCallButtonsViewModel.contextSubject.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v2;
    v7[3] = a1;
    specialized PreCallButtonsViewModel.withMutation<A, B>(keyPath:_:)(v5, partial apply for closure #1 in PreCallButtonsViewModel.contextSubject.setter, v7);
  }
}

uint64_t PreCallButtonsViewModel.contextSubject.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v2 = lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel();
  OUTLINED_FUNCTION_1_12(v2, v3);
}

unint64_t lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel()
{
  result = lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel;
  if (!lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel)
  {
    type metadata accessor for PreCallButtonsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel);
  }

  return result;
}

uint64_t type metadata accessor for PreCallButtonsViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PreCallButtonsViewModel;
  if (!type metadata singleton initialization cache for PreCallButtonsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreCallButtonsViewModel.preCallContexts.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - v2;
  v8[1] = PreCallButtonsViewModel.contextSubject.getter(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type PreCallControlsContext? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<PreCallControlsContext?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit22PreCallControlsContextOSgs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v6;
}

void PreCallButtonsViewModel.setPreCallContext(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  PreCallButtonsViewModel.contextSubject.getter(a1, a2);
  outlined copy of PreCallControlsContext(v2);
  CurrentValueSubject.send(_:)();

  outlined consume of PreCallControlsContext?(v2, v3);
}

Swift::Void __swiftcall PreCallButtonsViewModel.clearPreCallContext()()
{
  PreCallButtonsViewModel.contextSubject.getter(v0, v1);
  CurrentValueSubject.send(_:)();
}

uint64_t closure #1 in PreCallButtonsViewModel.contextSubject.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t PreCallButtonsViewModel.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15ConversationKit23PreCallButtonsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PreCallButtonsViewModel.__deallocating_deinit()
{
  PreCallButtonsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for PreCallButtonsViewModel(uint64_t a1)
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

id IntelligenceRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  v8 = type metadata accessor for Defaults();
  OUTLINED_FUNCTION_50_1(v8);
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v9 = type metadata accessor for Features();
  v10 = [objc_allocWithZone(v9) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E6995EE0];
  v13 = (v11 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v13[3] = v0;
  v13[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v15 = (v11 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v15[3] = v9;
  v15[4] = &protocol witness table for Features;
  *v15 = v10;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  (*(v2 + 8))(v6, v0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7;
}

uint64_t IntelligenceRecipeGenerator.liveVoicemailOngoingRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v103 = a2;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_10(v101 - v5);
  v102 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v101[2] = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10(v101 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_10(v101 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = v101 - v13;
  v109 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10(v101 - v18);
  v19 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  v26 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = *MEMORY[0x1E69E7D40] & *a1;
  v107 = *(v33 + 0x2A0);
  v108 = v33 + 672;
  v107();
  v35 = v34;
  ObjectType = swift_getObjectType();
  (*(v35 + 48))(v112, ObjectType, v35);
  swift_unknownObjectRelease();
  __dst[3] = &type metadata for ScreeningStatusOverride;
  __dst[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  v37 = type metadata accessor for Defaults();
  OUTLINED_FUNCTION_50_1(v37);
  __dst[0] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  CallScreeningService.screeningStatusForCall(_:)();
  (*(v21 + 8))(v25, v19);
  LODWORD(v35) = (*(v28 + 88))(v32, v26);
  v38 = *MEMORY[0x1E6995EA0];
  (*(v28 + 8))(v32, v26);
  if (v35 != v38)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v66 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v66, &static Logger.conversationControls);
    v67 = a1;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v109;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      __dst[0] = v73;
      *v72 = 136315138;
      v74 = (v107)();
      swift_getObjectType();
      __dst[10] = v74;
      v75 = String.init<A>(describing:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, __dst);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1BBC58000, v68, v69, "liveVoicemailOngoingRecipe: No call with Live Voicemail screening status, call: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    __swift_destroy_boxed_opaque_existential_1(v112);
    OUTLINED_FUNCTION_10_0();
    v65 = v71;
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  if (!SBUIIsSystemApertureEnabled())
  {
    __swift_destroy_boxed_opaque_existential_1(v112);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v39 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v40.super.isa = v39;
  v43 = OUTLINED_FUNCTION_17_0(0xD000000000000019, 0x80000001BC507C50, v41, v42, v40);
  v45 = v44;

  v46._countAndFlagsBits = v43;
  v46._object = v45;
  v47.super.isa = NSAttributedString.__allocating_init(string:)(v46).super.isa;
  v48 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  v52 = v109;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v48);
  v56 = &v16[v52[10]];
  v57 = &v16[v52[15]];
  v16[v52[16]] = 0;
  v58 = &v16[v52[17]];
  v59 = &v16[v52[18]];
  *v59 = 1;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  *(v59 + 40) = 0u;
  *(v59 + 56) = 0u;
  v59[72] = 0;
  *v16 = 20;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 7;
  v60 = MEMORY[0x1E69E7CC0];
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 10) = v47;
  *(v16 + 11) = v60;
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v56 + 2) = 0;
  outlined assign with take of AttributedString?();
  v16[v52[11]] = 2;
  v16[v52[12]] = 0;
  *&v16[v52[13]] = 1;
  *&v16[v52[14]] = 1;
  *v58 = 0;
  *(v58 + 1) = 0;
  v58[16] = -1;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 4) = 0;
  v57[40] = -2;
  OUTLINED_FUNCTION_1_28();
  v61 = v106;
  _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
  OUTLINED_FUNCTION_26_29();
  outlined destroy of ConversationControlsRecipe(v16, v47.super.isa);
  if (__swift_getEnumTagSinglePayload(v61, 1, v52) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v112);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_10_0();
    v65 = v52;
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  v79 = v105;
  _s15ConversationKit0A14ControlsRecipeVWObTm_0();
  v80 = v104;
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  if (__swift_getEnumTagSinglePayload(v80, 1, v102) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v112);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  }

  else
  {
    v81 = v101[1];
    _s15ConversationKit0A14ControlsRecipeVWObTm_0();
    v82 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v83 = (v107)();
    v85 = v84;
    v86 = [objc_opt_self() clearColor];
    v87 = swift_getObjectType();
    v88 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v83, 0, 0, v86, v82, v87, v85);
    v89 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
    v90 = SystemApertureIncomingCallLeadingView.init(avatar:)(v88);
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v91 = type metadata accessor for SystemApertureIconView(0);
    v92 = objc_allocWithZone(v91);
    SystemApertureIconView.init(icon:isDetached:)();
    v94 = v93;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v95 = objc_allocWithZone(v91);
    SystemApertureIconView.init(icon:isDetached:)();
    v97 = v96;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
    v98 = objc_allocWithZone(v91);
    SystemApertureIconView.init(icon:isDetached:)();
    v100 = v99;
    outlined destroy of ConversationControlsRecipe(v81, type metadata accessor for SystemApertureIcon);
    __swift_destroy_boxed_opaque_existential_1(v112);
    v47.super.isa = (v79 + v52[18]);
    memcpy(__dst, v47.super.isa, 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
    *v47.super.isa = v90;
    *(v47.super.isa + 1) = &protocol witness table for SystemApertureIncomingCallLeadingView;
    *(v47.super.isa + 2) = v94;
    *(v47.super.isa + 3) = &protocol witness table for SystemApertureIconView;
    *(v47.super.isa + 4) = v97;
    *(v47.super.isa + 5) = &protocol witness table for SystemApertureIconView;
    *(v47.super.isa + 6) = v100;
    *(v47.super.isa + 7) = &protocol witness table for SystemApertureIconView;
    *(v47.super.isa + 8) = 3;
    *(v47.super.isa + 72) = 0x80;
  }

  OUTLINED_FUNCTION_1_28();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
  OUTLINED_FUNCTION_26_29();
  return outlined destroy of ConversationControlsRecipe(v79, v47.super.isa);
}

uint64_t IntelligenceRecipeGenerator.callScreeningIncomingCallRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E6995EB0], v2);
  OUTLINED_FUNCTION_5_91();
  v13 = IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)(v9, v10, v11, v12);
  (*(v4 + 8))(v8, v2, v13);
  v14 = v53;
  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s20CommunicationsUICore9BasicCall_pSgMd, &_s20CommunicationsUICore9BasicCall_pSgMR);
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v37, &static Logger.conversationControls);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_163(v39))
    {
      goto LABEL_13;
    }

    v40 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25_31(v40);
    v43 = "Fail to generate call screening recipe for incoming call because no screening call found with state .screening";
    goto LABEL_12;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v15);
  v16 = objc_opt_self();
  v17 = OUTLINED_FUNCTION_20_34(v16);
  if (v17)
  {
    v18 = [v17 displayName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v23.super.isa = v22;
    v51 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC507C70, v24, v25, v23);
    v27 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_109();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BA940;
    *(v28 + 32) = v19;
    *(v28 + 40) = v21;
    v53 = 22;
    v54 = 0u;
    v55 = 0u;
    v56 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    type metadata accessor for ConversationControlsAction(0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA940;
    swift_storeEnumTagMultiPayload();
    v52[0] = v51;
    v52[1] = v27;
    v52[2] = v28;
    v57 = v29;
    v58 = 254;
    v59 = 0;
    OUTLINED_FUNCTION_5_91();
    IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v30, v31, v32, v33, v34, v35);
    swift_unknownObjectRelease();
    return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v52);
  }

  swift_unknownObjectRelease();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v44 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v44, &static Logger.conversationControls);
  v38 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_163(v45))
  {
    v46 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25_31(v46);
    v43 = "Fail to generate call screening recipe for call because there was no call found";
LABEL_12:
    OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v41, v42, v43);
    OUTLINED_FUNCTION_27();
  }

LABEL_13:

  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_10_0();
  return __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
}

uint64_t IntelligenceRecipeGenerator.callScreeningRingingCallRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  static CallScreeningStatus.screened.getter();
  OUTLINED_FUNCTION_5_91();
  v13 = IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)(v9, v10, v11, v12);
  (*(v4 + 8))(v8, v2, v13);
  v14 = v87;
  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s20CommunicationsUICore9BasicCall_pSgMd, &_s20CommunicationsUICore9BasicCall_pSgMR);
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v35, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = OUTLINED_FUNCTION_33();
    *v38 = 0;
    v39 = "Fail to generate call screening recipe for ringing call because no screening call found with state .screened";
    goto LABEL_14;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v15);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v40, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = OUTLINED_FUNCTION_33();
    *v38 = 0;
    v39 = "Fail to generate call screening recipe for call because there was no call found";
LABEL_14:
    _os_log_impl(&dword_1BBC58000, v36, v37, v39, v38, 2u);
    OUTLINED_FUNCTION_27();
LABEL_15:

    type metadata accessor for ConversationControlsRecipe(0);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  v17 = v16;
  v18 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v16);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v23.super.isa = v22;
    OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC4FDAC0, v24, v25, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BA940;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 32) = v20;
    *(v26 + 40) = v21;
    v27 = String.init(format:_:)();
    OUTLINED_FUNCTION_21_32(v27, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA940;
    v30 = [v17 handle];
    if (v30)
    {
      v31 = v30;
      v32 = TUHandle.formattedValue.getter();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *(inited + 32) = v32;
    *(inited + 40) = v34;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = *(inited + 40);
    if (v55)
    {
      v56 = *(inited + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_32();
        v54 = v59;
      }

      v57 = v54[2];
      if (v57 >= v54[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v54 = v60;
      }

      v54[2] = v57 + 1;
      v58 = &v54[2 * v57];
      v58[4] = v56;
      v58[5] = v55;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v46 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v17);
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v50 = [v17 handle];
      if (v50)
      {
        v51 = v50;
        v52 = TUHandle.formattedValue.getter();
        OUTLINED_FUNCTION_21_32(v52, v53);
      }

      else
      {
        OUTLINED_FUNCTION_15_40();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      OUTLINED_FUNCTION_109();
      v54 = swift_allocObject();
      *(v54 + 1) = xmmword_1BC4BA940;
      v54[4] = v48;
      v54[5] = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_1BC4BA940;
      v62 = [v17 handle];
      if (v62)
      {
        v63 = v62;
        v64 = TUHandle.formattedValue.getter();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      *(v61 + 32) = v64;
      *(v61 + 40) = v66;
      v54 = MEMORY[0x1E69E7CC0];
      v67 = *(v61 + 40);
      if (v67)
      {
        v68 = *(v61 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_32();
          v54 = v71;
        }

        v69 = v54[2];
        if (v69 >= v54[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v72;
        }

        v54[2] = v69 + 1;
        v70 = &v54[2 * v69];
        v70[4] = v68;
        v70[5] = v67;
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      OUTLINED_FUNCTION_15_40();
    }
  }

  v87 = 21;
  v88 = 0u;
  v89 = 0u;
  v90 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  v73 = *(type metadata accessor for ConversationControlsAction(0) - 8);
  v74 = *(v73 + 72);
  v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1BC4BAA20;
  v77 = (v76 + v75);
  static ConversationControlsAction.rejectCall(controlsManager:)(v1, v77);
  static ConversationControlsAction.acceptCall(controlsManager:)(v1, &v77[v74]);
  v86[0] = v85;
  v86[1] = v84;
  v86[2] = v54;
  v91 = v76;
  v92 = 0;
  v93 = 0;
  OUTLINED_FUNCTION_5_91();
  IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v78, v79, v80, v81, v82, v83);
  swift_unknownObjectRelease();
  return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v86);
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v10 = objc_opt_self();
  v11 = OUTLINED_FUNCTION_20_34(v10);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v14.super.isa = v13;
    v19 = OUTLINED_FUNCTION_17_0(v15, v16, v17, v18, v14);
    v37 = v20;
    v38 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_109();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    v22 = [v12 waitOnHoldSubtitle];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v40 = 0u;
    v41 = 0u;
    v42 = 7;
    v39[0] = v38;
    v39[1] = v37;
    v39[2] = v21;
    v39[3] = 28;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = 128;
    v45 = 1;
    IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(a1, v39, a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, &static Logger.conversationControls);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v29))
    {
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v30);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v31, v32, "Fail to generate WOH recipe for call because there was no call found");
      OUTLINED_FUNCTION_27();
    }

    type metadata accessor for ConversationControlsRecipe(0);
    OUTLINED_FUNCTION_10_0();

    return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldRequiresUserAttentionRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_14_43();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0);
  v2();
  v3 = objc_opt_self();
  v4 = OUTLINED_FUNCTION_20_34(v3);
  v5 = swift_unknownObjectRelease();
  if (v4)
  {
    (v2)(v5);
    v6 = objc_opt_self();
    v7 = OUTLINED_FUNCTION_20_34(v6);
    if (v7)
    {
      v8 = [v7 waitOnHoldSubtitle];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v30 = 7;
      v28 = 0u;
      v29 = 0u;
      v27[0] = v9;
      v27[1] = v11;
      v27[2] = MEMORY[0x1E69E7CC0];
      v27[3] = 29;
      v31 = MEMORY[0x1E69E7CC0];
      v32 = 1;
      v33 = 1;
      OUTLINED_FUNCTION_5_91();
      IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v12, v13, v14, v15, v16, v17);
      swift_unknownObjectRelease();
      return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v27);
    }

    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v19, &static Logger.conversationControls);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v21))
    {
      v22 = OUTLINED_FUNCTION_33();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v20, v0, "Fail to generate WOH recipe for call because there was no call found", v22, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_10_0();

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t IntelligenceRecipeGenerator.waitOnHoldHoldDetectedRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v10();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v12 = swift_unknownObjectRelease();
  if (v11)
  {
    (v10)(v12);
    v13 = objc_opt_self();
    if (OUTLINED_FUNCTION_20_34(v13))
    {
      v40 = a5;
      v39 = a3;
      v14 = objc_opt_self();
      v15 = [v14 conversationKit];
      v38 = a2;
      v16.super.isa = v15;
      v17 = OUTLINED_FUNCTION_17_0(0xD000000000000012, 0x80000001BC507C90, 0x61737265766E6F43, 0xEF74694B6E6F6974, v16);
      v18 = a4;
      v20 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      OUTLINED_FUNCTION_109();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BC4BA940;
      v22 = [v14 conversationKit];
      v23.super.isa = v22;
      v24 = OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC500610, 0x61737265766E6F43, 0xEF74694B6E6F6974, v23);
      v26 = v25;

      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      v42 = 0u;
      v43 = 0u;
      v44 = 7;
      v41[0] = v17;
      v41[1] = v20;
      v41[2] = v21;
      v41[3] = 30;
      v45 = MEMORY[0x1E69E7CC0];
      v46 = 257;
      v47 = 1;
      IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(a1, v41, v38, v39, v18, v40);
      swift_unknownObjectRelease();
      return outlined destroy of IntelligenceRecipeGenerator.IntelligenceConfiguration(v41);
    }

    swift_unknownObjectRelease();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v28, &static Logger.conversationControls);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v30))
    {
      v31 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v31);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v32, v33, "Fail to generate WOH recipe for call because there was no call found");
      OUTLINED_FUNCTION_27();
    }
  }

  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_10_0();

  return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

uint64_t IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v170 = a5;
  v179 = a4;
  v169 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v154 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v174 = &v154 - v12;
  v13 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v154 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v154 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v154 - v26;
  v168 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v168);
  v158 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v164 = &v154 - v30;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v34 = &v154 - v33;
  v35 = *MEMORY[0x1E69E7D40] & *a1;
  v36 = *(v35 + 0x2A0);
  v180 = a1;
  v157 = v35 + 672;
  v156 = v36;
  v37 = v36(v32);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v163 = a6;
    v39 = *(a2 + 82) == 1;
    v159 = a2;
    v177 = v37;
    v181 = v38;
    v165 = v19;
    if (!v39)
    {
      v46 = v18;
      v47 = 0;
      goto LABEL_14;
    }

    v40 = v38;
    v41 = [v38 provider];
    v42 = [v41 isSystemProvider];

    if (v42)
    {
      v43 = [v40 provider];
      v44 = [v43 isTelephonyProvider];

      if (v44)
      {
        v46 = v18;
LABEL_12:
        a2 = v159;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = static UIImageView.appIcon(for:)(v50, v51);

        v47 = [v52 image];

        goto LABEL_14;
      }

      v48 = [v40 provider];
      v49 = [v48 isFaceTimeProvider];

      if (v49)
      {
        v46 = v18;
        goto LABEL_12;
      }
    }

    v46 = v18;
    v47 = 0;
    a2 = v159;
LABEL_14:
    v53 = objc_opt_self();
    swift_unknownObjectRetain();
    v154 = v53;
    v54 = [v53 clearColor];
    v167 = v47;
    v175 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v181, 0, v47, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgSgMd, &_s15ConversationKit18SystemApertureIconVSgSgMR);
    v178 = swift_allocBox();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v23);
    v56 = 0;
    v57 = 0;
    v58 = v46;
    v59 = v165;
    if ((*(a2 + 81) & 1) == 0)
    {
      getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v180, v27);
      if (__swift_getEnumTagSinglePayload(v27, 1, v168) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
        v56 = 0;
        v57 = 0;
      }

      else
      {
        _s15ConversationKit0A14ControlsRecipeVWObTm_0();
        _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
        v60 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        SystemApertureIconView.init(icon:isDetached:)();
        v62 = v61;
        Hasher.init(_seed:)();
        v63 = v62;
        ConversationControlsType.hash(into:)(__dst);
        v56 = Hasher._finalize()();
        v57 = v62;
        outlined destroy of ConversationControlsRecipe(v34, type metadata accessor for SystemApertureIcon);
      }
    }

    v176 = v56;
    v64 = [v181 imageURL];
    if (!v64 || (v65 = v64, v66 = v171, static URL._unconditionallyBridgeFromObjectiveC(_:)(), v65, v67 = v172, (v59)[4](v172, v66, v58), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8), v68._countAndFlagsBits = URL.relativePath.getter(), v69 = UIImage.__allocating_init(contentsOfFile:)(v68), (v59[1])(v67, v58), !v69))
    {
      ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v180, v175);
      v72 = v73;
      v75 = v74;
      v77 = v76;
      outlined copy of PreCallControlsContext(v73);
LABEL_28:
      v171 = v75;
      v172 = v72;
      v165 = v57;
      outlined init with copy of ConversationControlsType(a2 + 24, v184);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v80 = *a2;
      v81 = *(a2 + 8);

      v82._countAndFlagsBits = v80;
      v82._object = v81;
      isa = NSAttributedString.__allocating_init(string:)(v82).super.isa;
      v83 = *(a2 + 16);
      v84 = *(v83 + 16);
      v85 = MEMORY[0x1E69E7CC0];
      if (v84)
      {
        __dst[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v86 = (v83 + 40);
        do
        {
          v87 = *(v86 - 1);
          v88 = *v86;

          v89._countAndFlagsBits = v87;
          v89._object = v88;
          NSAttributedString.__allocating_init(string:)(v89);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v86 += 2;
          --v84;
        }

        while (v84);
        v85 = __dst[0];
      }

      v161 = v85;
      v90 = type metadata accessor for AttributedString();
      v91 = v173;
      __swift_storeEnumTagSinglePayload(v173, 1, 1, v90);
      v155 = v77;
      v92 = v77 & 1;
      v93 = v13[9];
      __swift_storeEnumTagSinglePayload(v15 + v93, 1, 1, v90);
      v94 = (v15 + v13[10]);
      v95 = v13[15];
      *(v15 + v13[16]) = 0;
      v96 = v15 + v95;
      v97 = v15 + v13[17];
      v98 = v15 + v13[18];
      *v98 = 1;
      *(v98 + 8) = 0u;
      *(v98 + 24) = 0u;
      *(v98 + 40) = 0u;
      *(v98 + 56) = 0u;
      v98[72] = 0;
      outlined init with copy of ConversationControlsType(v184, v15);
      v99 = v165;
      v15[6] = 0;
      v15[7] = v99;
      v100 = v176;
      v15[8] = 0;
      v15[9] = v100;
      v101 = v161;
      v15[10] = isa;
      v15[11] = v101;
      v94[1] = 0;
      v94[2] = 0;
      *v94 = 0;
      v102 = v99;
      outlined copy of ConversationControlsRecipe.View?(v99, 0);
      outlined assign with copy of AttributedString?(v91, v15 + v93);
      *(v15 + v13[11]) = 2;
      *(v15 + v13[12]) = 1;
      *(v15 + v13[13]) = 1;
      *(v15 + v13[14]) = 1;
      v103 = v172;
      v104 = v171;
      *v97 = v172;
      *(v97 + 1) = v104;
      v97[16] = v92;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(v184);
      *v96 = MEMORY[0x1E69E7CC0];
      *(v96 + 8) = 0u;
      *(v96 + 24) = 0u;
      v96[40] = 0;
      v105 = v174;
      _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v13);
      outlined destroy of ConversationControlsRecipe(v15, type metadata accessor for ConversationControlsRecipe);
      if (__swift_getEnumTagSinglePayload(v105, 1, v13) == 1)
      {

        outlined consume of ConversationControlsRecipe.View?(v102, 0);
        outlined consume of PreCallControlsContext(v103);

        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        __swift_storeEnumTagSinglePayload(v163, 1, 1, v13);
      }

      else
      {
        v106 = v166;
        _s15ConversationKit0A14ControlsRecipeVWObTm_0();
        *(v106 + v13[16]) = 1;
        if (SBUIIsSystemApertureEnabled())
        {
          v107 = v160;
          getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)(v180, v160);
          if (__swift_getEnumTagSinglePayload(v107, 1, v168) == 1)
          {

            outlined consume of ConversationControlsRecipe.View?(v102, 0);
            outlined consume of PreCallControlsContext(v172);

            swift_unknownObjectRelease();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
          }

          else
          {
            v108 = v158;
            _s15ConversationKit0A14ControlsRecipeVWObTm_0();
            outlined init with copy of ConversationControlsType(v159 + 24, __dst);
            if (LOBYTE(__dst[5]) == 7 && __dst[0] == 30 && (v109 = vorrq_s8(*&__dst[1], *&__dst[3]), !*&vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL))))
            {
              v110 = type metadata accessor for SystemApertureInCallLeadingView(0);
              v111 = v164;
              v112 = _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
              v113 = (v156)(v112);
              v115 = v114;
              ObjectType = swift_getObjectType();
              v182 = v113;
              v117 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v111, &v182, v110, ObjectType, *(v115 + 8));
              type metadata accessor for SystemApertureInCallWaveformTrailingView();
              swift_unknownObjectRetain();
              v118 = v117;
              v119 = static WaveformConfigurations.inCallNumberOfBands.getter();
              v120 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v181, v119);
              v181 = &protocol witness table for SystemApertureInCallLeadingView;
              v121 = &protocol witness table for SystemApertureInCallWaveformTrailingView;
            }

            else
            {
              if (v102)
              {
                v181 = &protocol witness table for SystemApertureIconView;
                v122 = v102;
              }

              else
              {
                v123 = v180;
                v124 = *((*MEMORY[0x1E69E7D40] & *v180) + 0x2C0);
                v125 = swift_unknownObjectRetain();
                v126 = v124(v125);
                v127 = [v154 clearColor];
                v128 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v181, v126, 0, v127);
                ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v123, v128);
                v130 = v129;
                v132 = v131;
                v134 = v133;

                v135 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
                v102 = SystemApertureIncomingCallLeadingView.init(leadingViewType:)(v130, v132, v134 & 1);
                v122 = 0;
                v181 = &protocol witness table for SystemApertureIncomingCallLeadingView;
              }

              type metadata accessor for SystemApertureEmptyTrailingView();
              v136 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v137 = v122;
              v118 = v102;
              v120 = [v136 init];
              outlined destroy of ConversationControlsType(__dst);
              v121 = &protocol witness table for SystemApertureEmptyTrailingView;
            }

            if (one-time initialization token for conversationControls != -1)
            {
              swift_once();
            }

            v138 = type metadata accessor for Logger();
            __swift_project_value_buffer(v138, &static Logger.conversationControls);
            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              *v141 = 0;
              _os_log_impl(&dword_1BBC58000, v139, v140, "IntelligenceRecipeGenerator: [SystemAperture] showing content", v141, 2u);
              MEMORY[0x1BFB23DF0](v141, -1, -1);
            }

            _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
            v142 = type metadata accessor for SystemApertureIconView(0);
            v143 = objc_allocWithZone(v142);
            SystemApertureIconView.init(icon:isDetached:)();
            v145 = v144;
            _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
            v146 = objc_allocWithZone(v142);
            SystemApertureIconView.init(icon:isDetached:)();
            v148 = v147;
            outlined consume of PreCallControlsContext(v172);

            v149 = v165;
            outlined consume of ConversationControlsRecipe.View?(v149, 0);
            swift_unknownObjectRelease();

            outlined destroy of ConversationControlsRecipe(v108, type metadata accessor for SystemApertureIcon);
            v150 = *(v159 + 80);
            v106 = v166;
            v151 = &v166[v13[18]];
            memcpy(__dst, v151, 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
            v152 = v181;
            *v151 = v118;
            *(v151 + 1) = v152;
            *(v151 + 2) = v120;
            *(v151 + 3) = v121;
            *(v151 + 4) = v145;
            *(v151 + 5) = &protocol witness table for SystemApertureIconView;
            *(v151 + 6) = v148;
            *(v151 + 7) = &protocol witness table for SystemApertureIconView;
            *(v151 + 8) = 4;
            v151[72] = v150;
          }
        }

        else
        {

          outlined consume of ConversationControlsRecipe.View?(v102, 0);
          outlined consume of PreCallControlsContext(v172);

          swift_unknownObjectRelease();
        }

        v153 = v163;
        _s15ConversationKit0A14ControlsRecipeVWOcTm_0();
        __swift_storeEnumTagSinglePayload(v153, 0, 1, v13);
        outlined destroy of ConversationControlsRecipe(v106, type metadata accessor for ConversationControlsRecipe);
      }
    }

    if (v47)
    {
      v70 = v167;
      v71 = v69;
      v72 = UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(v70, 50.0, 50.0, 12.0);

      if (!v72)
      {
        v72 = v71;
LABEL_27:
        v79 = v72;
        v75 = 0;
        v77 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v72 = v69;
      v78 = UIImage.roundedBrandedImage(size:cornerRadius:)(50.0, 50.0, 12.0);

      if (!v78)
      {
        goto LABEL_27;
      }

      v72 = v78;
    }

    goto LABEL_27;
  }

  swift_unknownObjectRelease();

  return __swift_storeEnumTagSinglePayload(a6, 1, 1, v13);
}

double IntelligenceRecipeGenerator.getScreeningCall(with:controlsManager:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CallScreeningStatus();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for CallScreeningService();
  v40 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 receptionistEnabled])
  {
    v39 = v15;
    v43 = &type metadata for ScreeningStatusOverride;
    v44 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    *&v42 = Defaults.init()();
    v19 = CallScreeningService.init(overrides:)();
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2A0))(v19);
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 48))(&v42, ObjectType, v21);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    v23 = CallScreeningStatus.isBaseCase(_:)();
    v24 = *(v9 + 8);
    v24(v14, v8);
    if (v23)
    {
      (*(v40 + 8))(v18, v39);
      outlined init with take of TapInteractionHandler(&v42, a4);
      return result;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, &static Logger.conversationControls);
    (*(v9 + 16))(v11, a1, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = v29;
      v38 = swift_slowAlloc();
      v41 = v38;
      *v29 = 136315138;
      lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v24(v11, v8);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v41);

      v34 = v37;
      *(v37 + 1) = v33;
      v35 = v34;
      _os_log_impl(&dword_1BBC58000, v27, v28, "CallScreeningRecipeGenerator: Call does not have status: %s", v34, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFB23DF0](v36, -1, -1);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
    }

    else
    {

      v24(v11, v8);
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    (*(v40 + 8))(v18, v39);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t getter of statusIcon #1 in IntelligenceRecipeGenerator.generateIntelligenceRecipe(controlsManager:config:)@<X0>(void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgSgMd, &_s15ConversationKit18SystemApertureIconVSgSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  swift_projectBox();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    return outlined init with take of SystemApertureIcon?(v10, a3);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit18SystemApertureIconVSgSgMd, &_s15ConversationKit18SystemApertureIconVSgSgMR);
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a2);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  swift_beginAccess();
  return outlined assign with take of AttributedString?();
}

id UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(void *a1, double a2, double a3, double a4)
{
  v7 = a2 + -2.0;
  v8 = a3 + -2.0;
  v9 = UIImage.roundedBrandedImage(size:cornerRadius:)(a2 + -2.0, a3 + -2.0, a4);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  *(v11 + 64) = 0x4032000000000000;
  v12 = OUTLINED_FUNCTION_50_1(&unk_1F3ADED60);
  *(v12 + 16) = partial apply for closure #1 in UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:);
  *(v12 + 24) = v11;
  v19[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v19[5] = v12;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_6_76();
  v19[2] = v13;
  v19[3] = &block_descriptor_51;
  v14 = _Block_copy(v19);
  v15 = v9;
  v16 = a1;

  v17 = [v10 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t UIImage.roundedBrandedImage(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  OUTLINED_FUNCTION_109();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v3;
  v9 = OUTLINED_FUNCTION_50_1(&unk_1F3ADEDD8);
  *(v9 + 16) = partial apply for closure #1 in UIImage.roundedBrandedImage(size:cornerRadius:);
  *(v9 + 24) = v8;
  v15[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v15[5] = v9;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_6_76();
  v15[2] = v10;
  v15[3] = &block_descriptor_13;
  v11 = _Block_copy(v15);
  v12 = v3;

  v13 = [v7 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

id closure #1 in UIImage.badgeBrandedImage(badgeImage:combinedSize:cornerRadius:)(int a1, id a2, id a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    [a2 drawInRect_];
  }

  return [a3 drawInRect_];
}

void closure #1 in UIImage.roundedBrandedImage(size:cornerRadius:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1, a2, a3}];
  [v8 addClip];
  [a5 drawInRect_];
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 83))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of AttributedString?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t outlined init with take of SystemApertureIcon?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle()
{
  result = lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle;
  if (!lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle and conformance IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle);
  }

  return result;
}

Swift::Void __swiftcall UIActivityViewController.setHeader(_:)(UIViewController *a1)
{
  [v1 setCustomViewController_];

  [v1 setHideHeaderView_];
}

id UIHostingAutoResizableController.__allocating_init(rootView:canShowWhileLocked:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(a1, v3);
}

uint64_t UIHostingAutoResizableController.lastViewSize.setter(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v4 = result;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  return result;
}

id UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(uint64_t a1, char a2)
{
  v21 = a1;
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v20[1] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v5 + class metadata base offset for UIHostingAutoResizableController);
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v14 = v2 + *(v13 + 16);
  v14[16] = 1;
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + *(v15 + 4088) + 24)) = a2;
  (*(v8 + 16))(v12, a1, v7, v10);
  v16 = UIHostingController.init(rootView:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BAA20;
  v18 = v16;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v22 = v17;
  lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
  lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  (*(v8 + 8))(v21, v7);
  return v18;
}

unint64_t lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions()
{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

void UIHostingAutoResizableController.init(coder:)()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall UIHostingAutoResizableController.viewDidLayoutSubviews()()
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for UIHostingAutoResizableController(0, *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIHostingAutoResizableController), *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIHostingAutoResizableController + 8), v0);
  v24.receiver = v1;
  v24.super_class = v3;
  objc_msgSendSuper2(&v24, sel_viewDidLayoutSubviews);
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;

  v10 = COERCE_DOUBLE(UIHostingAutoResizableController.lastViewSize.getter());
  if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v9 == v11) : (v13 = 0), !v13))
  {
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 frame];
      v17 = v16;
      v19 = v18;

      v20 = v1 + *((*v2 & *v1) + class metadata base offset for UIHostingAutoResizableController + 16);
      *v20 = v17;
      *(v20 + 1) = v19;
      v20[16] = 0;
      v21 = [v1 parentViewController];
      if (!v21)
      {
        return;
      }

      v22 = v21;
      v23 = [v21 view];

      if (v23)
      {
        [v23 setNeedsLayout];

        return;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

void @objc UIHostingAutoResizableController.viewDidLayoutSubviews()(void *a1)
{
  v1 = a1;
  UIHostingAutoResizableController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall SelfSizingHostingView.layoutSubviews()()
{
  v2 = type metadata accessor for SelfSizingHostingView(0, *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for SelfSizingHostingView), *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for SelfSizingHostingView + 8), v0);
  v3.receiver = v1;
  v3.super_class = v2;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v1 invalidateIntrinsicContentSize];
}

void @objc SelfSizingHostingView.layoutSubviews()(void *a1)
{
  v1 = a1;
  SelfSizingHostingView.layoutSubviews()();
}

uint64_t SelfSizingHostingView.init(rootView:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for SelfSizingHostingView);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  v7 = _UIHostingView.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v7;
}

id SelfSizingHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelfSizingHostingView.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SelfSizingHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for SelfSizingHostingView), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for SelfSizingHostingView + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id UIHostingAutoResizableController.__deallocating_deinit(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Collection.prefix(_:)(a1, a2, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
}

{
  return specialized Collection.prefix(_:)(a1, a2, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, __n128 a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    _CocoaArrayWrapper.subscript.getter();

    return OUTLINED_FUNCTION_40_2();
  }

  OUTLINED_FUNCTION_6_7();
  specialized Array.count.getter();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_30_20();
  v4 = specialized Array.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 < 0)
  {
    goto LABEL_15;
  }

  specialized Array._checkIndex(_:)();
  specialized Array._checkIndex(_:)();
  if ((v2 & 0xC000000000000001) != 0 && v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact, 0x1E695CF18);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      OUTLINED_FUNCTION_92_0();
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v7 = v8;
    }

    while (v6 != v8);
  }

  else
  {
  }

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  return OUTLINED_FUNCTION_40_2();
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);

      return OUTLINED_FUNCTION_15_14();
    }
  }

  __break(1u);
  return result;
}

double ParticipantGridViewController.participants.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return result;
}

void ParticipantGridViewController.hasOtherInvitedParticipants.getter()
{
  v1 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v13)
    {

      return;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    _s15ConversationKit11ParticipantVWOcTm_7();
    _s15ConversationKit11ParticipantVWOcTm_7();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        goto LABEL_5;
      case 4u:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v19 = *(v18 + 48);
        v20 = &v3[*(v18 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v20, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7]);
        outlined destroy of Participant.MediaInfo(&v3[v19]);
LABEL_5:
        v17 = type metadata accessor for Date();
        (*(*(v17 - 8) + 8))(v3, v17);
        goto LABEL_6;
      case 6u:
LABEL_6:
        _s15ConversationKit11ParticipantVWOhTm_9();
        ++v13;
        break;
      default:
        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 8))(v3, v21);
        outlined init with take of Participant(v9, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v29;
        }

        v23 = *(v14 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v14 + 24) >> 1)
        {
          v26 = *(v14 + 16);
          v27 = v23 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v26;
          v24 = v27;
          v14 = v29;
        }

        ++v13;
        *(v14 + 16) = v24;
        outlined init with take of Participant(v28, v14 + v15 + v23 * v16);
        break;
    }
  }

  __break(1u);
}

id ParticipantGridViewController.gridView.getter()
{
  if (![v1 isViewLoaded])
  {
    return 0;
  }

  result = [v1 view];
  if (result)
  {
    v3 = OUTLINED_FUNCTION_17_1();
    type metadata accessor for ParticipantGridView(v3);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void ParticipantGridViewController.participantViews.getter()
{
  v0 = ParticipantGridViewController.gridView.getter();
  v1 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    v3 = [v0 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = specialized Array.count.getter();
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_206();
        v7 = MEMORY[0x1BFB22010](v9);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for ParticipantView(0);
      if (swift_dynamicCastClass())
      {
        MEMORY[0x1BFB20CC0]();
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_32_2();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v6;
      }

      else
      {

        ++v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t ParticipantGridViewController.focusedParticipant.getter()
{
  return ParticipantGridViewController.focusedParticipant.getter();
}

{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t ParticipantGridViewController.focusedParticipant.didset(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v62[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v62[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v62[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v70 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62[-v27];
  v72 = a1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v29 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v30 = 1;
  }

  else
  {
    (*(v3 + 16))(v28, &v20[*(v29 + 20)], v2);
    _s15ConversationKit11ParticipantVWOhTm_9();
    v30 = 0;
  }

  v31 = 1;
  __swift_storeEnumTagSinglePayload(v28, v30, 1, v2);
  v32 = v74 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v32, 1, v29))
  {
    (*(v3 + 16))(v25, v32 + *(v29 + 20), v2);
    v31 = 0;
  }

  v73 = v3;
  __swift_storeEnumTagSinglePayload(v25, v31, 1, v2);
  v33 = *(v13 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v2) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v35 = v70;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v15[v33], 1, v2) != 1)
    {
      v57 = v73;
      v58 = *(v73 + 32);
      v64 = v32;
      v59 = v67;
      v58(v67, &v15[v33], v2);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = *(v57 + 8);
      v61 = v59;
      v32 = v64;
      v60(v61, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v60(v35, v2);
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v63)
      {
        return result;
      }

      goto LABEL_12;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v73 + 8))(v35, v2);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_12:
  v36 = v71;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v36, 1, v29) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    v37 = v73;
    v38 = v68;
    (*(v73 + 16))(v68, v36 + *(v29 + 20), v2);
    _s15ConversationKit11ParticipantVWOhTm_9();
    v39 = v69;
    (*(v37 + 32))(v69, v38, v2);
    v40 = ParticipantGridViewController.gridView.getter();
    if (v40)
    {
      v41 = v40;
      v42 = type metadata accessor for ParticipantView(0);
      v43 = ParticipantGridView.tile(for:ofAClass:)(v39, v42);
      v45 = v44;

      if (v43)
      {
        ObjectType = swift_getObjectType();
        (*(v45 + 64))(0, ObjectType, v45);
      }
    }

    (*(v37 + 8))(v39, v2);
  }

  result = __swift_getEnumTagSinglePayload(v32, 1, v29);
  if (!result)
  {
    v47 = v73;
    v48 = v65;
    (*(v73 + 16))(v65, v32 + *(v29 + 20), v2);
    v49 = v66;
    (*(v47 + 32))(v66, v48, v2);
    v50 = ParticipantGridViewController.gridView.getter();
    if (v50)
    {
      v51 = v50;
      v52 = type metadata accessor for ParticipantView(0);
      v53 = ParticipantGridView.tile(for:ofAClass:)(v49, v52);
      v55 = v54;

      if (v53)
      {
        v56 = swift_getObjectType();
        (*(v55 + 64))(1, v56, v55);
      }
    }

    return (*(v47 + 8))(v49, v2);
  }

  return result;
}

uint64_t key path getter for ParticipantGridViewController.focusedParticipant : ParticipantGridViewController()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

void key path setter for ParticipantGridViewController.focusedParticipant : ParticipantGridViewController()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_63_9();
  OUTLINED_FUNCTION_45_15();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_49();
}

void ParticipantGridViewController.focusedParticipant.setter()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_44_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_63_9();
  v12 = *v5;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_30_2(v0 + v12, &v19);
  outlined assign with copy of Participant?(v7, v0 + v12);
  swift_endAccess();
  v3(v1);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, v14, v15);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, v17, v18);
  OUTLINED_FUNCTION_49();
}

uint64_t ParticipantGridViewController.fullScreenFocusedParticipant.didset(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd, &_s15ConversationKit11ParticipantVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  swift_beginAccess();
  v15 = *(v12 + 56);
  v48 = a1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v3) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    goto LABEL_6;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v3) == 1)
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
LABEL_6:
    v16 = &_s15ConversationKit11ParticipantVSg_ADtMd;
    v17 = &_s15ConversationKit11ParticipantVSg_ADtMR;
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v16, v17);
LABEL_12:
    v19 = v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v23 = v47;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    (*(v21 + 48))(v1, v48, v23, ObjectType, v21);
    swift_unknownObjectRelease();
    v14 = v23;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  outlined init with take of Participant(&v14[v15], v5);
  static Participant.State.== infix(_:_:)();
  if ((v18 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*&v5[*(v3 + 28)] == 0) != (*&v10[*(v3 + 28)] == 0))
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v16 = &_s15ConversationKit11ParticipantVSgMd;
    v17 = &_s15ConversationKit11ParticipantVSgMR;
    goto LABEL_11;
  }

  v24 = *(v3 + 24);
  v25 = v10[v24];
  v26 = v10[v24 + 1];
  v27 = v10[v24 + 2];
  v28 = v10[v24 + 3];
  v29 = v10[v24 + 4];
  v30 = &v5[v24];
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  v35 = v30[4];
  if (v29)
  {
    v36 = 0x100000000;
  }

  else
  {
    v36 = 0;
  }

  if (v28)
  {
    v37 = 0x1000000;
  }

  else
  {
    v37 = 0;
  }

  v38 = v27 == 0;
  v39 = 0x10000;
  if (v38)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x10000;
  }

  v38 = v26 == 0;
  v41 = 256;
  if (v38)
  {
    v42 = 0;
  }

  else
  {
    v42 = 256;
  }

  v43 = v42 | v25 | v40 | v37;
  if (v35)
  {
    v44 = 0x100000000;
  }

  else
  {
    v44 = 0;
  }

  if (v34)
  {
    v45 = 0x1000000;
  }

  else
  {
    v45 = 0;
  }

  if (!v33)
  {
    v39 = 0;
  }

  if (!v32)
  {
    v41 = 0;
  }

  v46 = static Participant.Capabilities.== infix(_:_:)(v43 | v36, v41 | v31 | v39 | v45 | v44);
  _s15ConversationKit11ParticipantVWOhTm_9();
  _s15ConversationKit11ParticipantVWOhTm_9();
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!v46)
  {
    goto LABEL_12;
  }

  return result;
}

void (*ParticipantGridViewController.participantsViewControllerDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t key path getter for ParticipantGridViewController.participantsViewControllerDelegate : ParticipantGridViewController@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t key path setter for ParticipantGridViewController.participantsViewControllerDelegate : ParticipantGridViewController(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_73(a1, v8);
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantGridViewController.participantsViewControllerDelegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  OUTLINED_FUNCTION_73(a1, v7);
  *(v5 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantGridViewController.participantGridViewControllerDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

void ParticipantGridViewController.__allocating_init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_33_0();
  ParticipantGridViewController.init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)();
}

void ParticipantGridViewController.init(participants:layoutStyle:isLocalMemberAuthorizedToChangeGroupMembership:captionsLayoutState:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getObjectType();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v40 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_67_1();
  LOBYTE(v8) = *v8;
  v17 = *v4;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = 0;
  v18 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton;
  *(v2 + v18) = [objc_opt_self() buttonWithType_];
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_nonFullScreenConstraints) = MEMORY[0x1E69E7CC0];
  v41 = v19;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenConstraints) = v19;
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant);
  OUTLINED_FUNCTION_11_34(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate);
  v20 = 0;
  v39 = v8;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle) = v8;
  v38 = v2;
  *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_isLocalMemberAuthorizedToChangeGroupMembership) = v6;
  v21 = *(v10 + 16);
  while (v21 != v20)
  {
    if (v20 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = *(v13 + 72);
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    if (*(v1 + *(v11 + 28)))
    {
      outlined init with take of Participant(v1, v40);
      v6 = v41;
      v43 = v41;
      v37 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v43;
      }

      v24 = *(v6 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v6 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v24 + 1;
        v6 = v43;
      }

      ++v20;
      *(v6 + 16) = v25;
      v41 = v6;
      outlined init with take of Participant(v40, v6 + v22 + v24 * v23);
      v17 = v37;
    }

    else
    {
      OUTLINED_FUNCTION_0_129();
      _s15ConversationKit11ParticipantVWOhTm_9();
      ++v20;
    }
  }

  LOBYTE(v43) = v39;
  v42 = v17;
  v26 = MultiwayViewController.LayoutStyle.maximumParticipantCount(portraitAspect:mediaPipIsVisible:captionsLayoutState:)(0, 0, &v42);
  v6 = specialized Collection.prefix(_:)(v26, v41, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
  v10 = v27;
  v11 = v28;
  v13 = v29;
  if ((v29 & 1) == 0)
  {
LABEL_12:
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v10, v11, v13);
    v31 = v30;
    v32 = v38;
    goto LABEL_19;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 != (v13 >> 1) - v11)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v32 = v38;
  if (v31)
  {
    goto LABEL_20;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  *(v32 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants) = v31;
  OUTLINED_FUNCTION_3_0();
  objc_msgSendSuper2(v35, v36);
  OUTLINED_FUNCTION_30_0();
}

id ParticipantGridViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantGridViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_nonFullScreenConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenConstraints) = v2;
  v3 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_8_11(v0 + v3);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_sashedParticipant);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant);
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantGridViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for ParticipantGridView(0)) init];
  [v0 setView_];
}

Swift::Void __swiftcall ParticipantGridViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v42.receiver = v0;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v9 = ParticipantGridViewController.gridView.getter();
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = &v9[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  OUTLINED_FUNCTION_73(v9, v41);
  *(v11 + 1) = &protocol witness table for ParticipantGridViewController;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  LOBYTE(v11) = v2[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_isLocalMemberAuthorizedToChangeGroupMembership];
  v12 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  swift_beginAccess();
  v10[v12] = v11;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  ParticipantGridView.setParticipants(_:)(v13);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_12_5(v7);
  if (v14)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_40_2();
    outlined init with take of Participant(v15, v16);
    ParticipantGridViewController.fullScreenFocus(on:)(v1, v17, v18, v19, v20, v21, v22, v23, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v41[0], v41[1], v41[2]);
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 128))() & 1) == 0)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_49();
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v24);
  v25 = *&v2[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_forceAudioPriorityButton];
  outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(0x7561206563726F46, 0xEB000000006F6964, 0, v25);
  v26 = [objc_opt_self() whiteColor];
  [v25 setTintColor_];

  [v25 addTarget:v2 action:sel_forceBumpPriority forControlEvents:64];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v2 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  [v27 addSubview_];

  v29 = [v25 topAnchor];
  v30 = [v2 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 topAnchor];
  v34 = [v29 constraintEqualToAnchor:v33 constant:16.0];

  [v34 setActive_];
  v35 = [v25 trailingAnchor];
  v36 = [v2 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 trailingAnchor];

    v39 = [v35 constraintEqualToAnchor:v38 constant:-16.0];
    [v39 setActive_];

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void ParticipantGridViewController.fullScreenFocus(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v109 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v108 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_63_9();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_2();
  v41 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v43 + 104))(v21, *MEMORY[0x1E69E8020], v41);
  v45 = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v21, v41);
  if (v45)
  {
    v107 = v22;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_3:
  v46 = static OS_os_log.conversationKit;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v48 = OUTLINED_FUNCTION_13_12(v47);
  OUTLINED_FUNCTION_4_96(v48, xmmword_1BC4BA940);
  _s15ConversationKit11ParticipantVWOcTm_7();
  v49 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  specialized >> prefix<A>(_:)();
  v54 = v53;
  v56 = v55;
  v57 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, v58, v59);
  v48[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v48[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
  v48[2].n128_u64[0] = v54;
  v48[2].n128_u64[1] = v56;
  v60 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Full screen focusing on participant %@", 38, 2, &dword_1BBC58000, v46, v60, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
  OUTLINED_FUNCTION_42_18();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v62 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  swift_beginAccess();
  *(v25 + v62) = v61;

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v49);
  ParticipantGridViewController.select(_:forFocusing:)();
  v66 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, v67, &_s15ConversationKit11ParticipantVSgMR);
  v68 = ParticipantGridViewController.gridView.getter();
  if (v68)
  {
    v106 = v68;
    v69 = 1;
    v70 = OUTLINED_FUNCTION_18_41(&a12);
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v109);
    v73 = v25 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v74 = OUTLINED_FUNCTION_29_5();
    if (!__swift_getEnumTagSinglePayload(v74, v75, v49))
    {
      (*(v108 + 16))(v112, v73 + *(v49 + 20), v109);
      v69 = 0;
    }

    OUTLINED_FUNCTION_55_11(v112, v69);
    v76 = v25 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v77 = OUTLINED_FUNCTION_44_13();
    if (__swift_getEnumTagSinglePayload(v77, v78, v49))
    {
      v79 = OUTLINED_FUNCTION_18_41(&a13);
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v109);
      (*(v108 + 16))(v110, v27 + *(v49 + 20), v109);
    }

    else
    {
      v82 = *(v108 + 16);
      v82(v111, v76 + *(v49 + 20), v109);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v109);
      v82(v110, v27 + *(v49 + 20), v109);
    }

    ParticipantGridViewController.aspectRatio(for:in:)(v27, 0, &v113);
    v86 = ParticipantGridViewController.orientation(for:in:)(v27, 0);
    Participant.videoInfo.getter();
    if (v114)
    {
      v87 = v115;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v114, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    }

    else
    {
      v87 = 0;
    }

    (*(v108 + 32))(v107, v110, v109);
    v88 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    OUTLINED_FUNCTION_24_30(v107 + *(v88 + 20));
    *(v107 + *(v89 + 24)) = v86;
    *(v107 + *(v89 + 28)) = v87;
    v90 = OUTLINED_FUNCTION_17_46();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    OUTLINED_FUNCTION_66_4();
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, v95, v96);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, v98, v99);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, v101, v102);
  }

  OUTLINED_FUNCTION_2_112();
  _s15ConversationKit11ParticipantVWOcTm_7();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v49);
  OUTLINED_FUNCTION_10_56();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.forceBumpPriority()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000019, 0x80000001BC508070);
  if (v1)
  {
    v9 = v1;
    v2 = MEMORY[0x1BFB209B0](0xD000000000000019, 0x80000001BC5080E0);
    [v9 setBool:1 forKey:v2];

    v3 = MEMORY[0x1BFB209B0](0xD000000000000017, 0x80000001BC508100);
    [v9 setInteger:255 forKey:v3];

    [v9 synchronize];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.conversationKit;
    v5 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forced audio priority", 21, 2, &dword_1BBC58000, v4, v5, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.conversationKit;
    v7 = static os_log_type_t.error.getter();
    v8 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("Unable to create UserDefaults object for suite name com.apple.VideoConference", 77, 2, &dword_1BBC58000, v6, v7, v8);
  }
}

void ParticipantGridViewController.select(_:forFocusing:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v78 = v3;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v81 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v80 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v77 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd, &_s15ConversationKit11ParticipantVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_159();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v84 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v83 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v82 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v79 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = (v30 - v29);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v27 + 104))(v31, *MEMORY[0x1E69E8020], v25);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v31, v25);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v33 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v34 = *(v11 + 48);
  v85 = v24;
  OUTLINED_FUNCTION_206();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v35 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v35, v36, v4);
  v37 = v4;
  if (v42)
  {
    OUTLINED_FUNCTION_115(v1 + v34, 1, v4);
    if (v42)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      goto LABEL_7;
    }

LABEL_12:
    v43 = &_s15ConversationKit11ParticipantVSg_ADtMd;
    v44 = &_s15ConversationKit11ParticipantVSg_ADtMR;
LABEL_17:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, v43, v44);
    goto LABEL_18;
  }

  v41 = v79;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v1 + v34, 1, v37);
  if (v42)
  {
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    goto LABEL_12;
  }

  v45 = v77;
  outlined init with take of Participant(v1 + v34, v77);
  static Participant.State.== infix(_:_:)();
  if ((v46 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*(v45 + *(v37 + 28)) == 0) != (*(v41 + *(v37 + 28)) == 0))
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v43 = &_s15ConversationKit11ParticipantVSgMd;
    v44 = &_s15ConversationKit11ParticipantVSgMR;
    goto LABEL_17;
  }

  v54 = *(v37 + 24);
  v55 = *(v41 + v54);
  v56 = *(v41 + v54 + 1);
  v57 = *(v41 + v54 + 2);
  v58 = *(v41 + v54 + 3);
  v59 = *(v41 + v54 + 4);
  v60 = (v45 + v54);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = v60[4];
  if (v59)
  {
    v66 = 0x100000000;
  }

  else
  {
    v66 = 0;
  }

  if (v58)
  {
    v67 = 0x1000000;
  }

  else
  {
    v67 = 0;
  }

  v42 = v57 == 0;
  v68 = 0x10000;
  if (v42)
  {
    v69 = 0;
  }

  else
  {
    v69 = 0x10000;
  }

  v42 = v56 == 0;
  v70 = 256;
  if (v42)
  {
    v71 = 0;
  }

  else
  {
    v71 = 256;
  }

  v72 = v71 | v55 | v69 | v67;
  if (v65)
  {
    v73 = 0x100000000;
  }

  else
  {
    v73 = 0;
  }

  if (v64)
  {
    v74 = 0x1000000;
  }

  else
  {
    v74 = 0;
  }

  if (!v63)
  {
    v68 = 0;
  }

  if (!v62)
  {
    v70 = 0;
  }

  v75 = static Participant.Capabilities.== infix(_:_:)(v72 | v66, v70 | v61 | v68 | v74 | v73);
  _s15ConversationKit11ParticipantVWOhTm_9();
  _s15ConversationKit11ParticipantVWOhTm_9();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!v75)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v78)
  {
LABEL_18:
    v38 = v82;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    goto LABEL_19;
  }

  v38 = v82;
  v39 = OUTLINED_FUNCTION_44_13();
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v37);
LABEL_19:
  v47 = v84;
  OUTLINED_FUNCTION_50_13(v2 + v33);
  outlined assign with take of Participant?(v38, v2 + v33);
  swift_endAccess();
  v48 = v85;
  v49 = v83;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v50 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v50, v51, v37);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    outlined init with take of Participant(v49, v80);
    ParticipantGridViewController.update(participant:broadcastingState:)();
    OUTLINED_FUNCTION_0_129();
    v48 = v85;
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v52 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v52, v53, v37);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    outlined init with take of Participant(v47, v81);
    ParticipantGridViewController.update(participant:broadcastingState:)();

    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v47 = v48;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.update(participant:broadcastingState:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v125 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v10 - v9);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_67_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v123 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = (v28 - v27);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v29 = static OS_dispatch_queue.main.getter();
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v23);
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v25 + 8);
  v31 = v25 + 8;
  v32(v29, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v59 = v108;
    *&v3[v31] = v108;
    goto LABEL_20;
  }

  v31 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  v33 = swift_beginAccess();
  v34 = *&v3[v31];
  MEMORY[0x1EEE9AC00](v33);
  *&v109[-16] = v5;

  v120 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), &v109[-32], v34);
  v36 = v35;

  if (v36)
  {
LABEL_40:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v37 = type metadata accessor for Participant(0);
  v38 = *(v37 + 20);
  v40 = v125 + 16;
  v39 = *(v125 + 16);
  v113 = v5;
  v114 = v38;
  v41 = v5 + v38;
  v42 = v37;
  v116 = v39;
  v39(v22, v41, v6);
  v43 = 1;
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v6);
  v47 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v47, 1, v42))
  {
    v116(v0, v47 + *(v42 + 20), v6);
    v43 = 0;
  }

  v112 = v40;
  OUTLINED_FUNCTION_55_11(v0, v43);
  v48 = *(v124 + 48);
  OUTLINED_FUNCTION_71_7(v22, v2);
  OUTLINED_FUNCTION_71_7(v0, v2 + v48);
  OUTLINED_FUNCTION_12_5(v2);
  v111 = v42;
  if (v51)
  {
    v49 = OUTLINED_FUNCTION_46();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, v50, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_12_5(v2 + v48);
    v5 = v123;
    if (v51)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v110 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v2 + v48);
    if (!v51)
    {
      v56 = v125;
      v57 = v117;
      (*(v125 + 32))(v117, v2 + v48, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v110 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v56 + 8);
      v58(v57, v6);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v58(v119, v6);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v5 = v123;
      goto LABEL_14;
    }

    v52 = OUTLINED_FUNCTION_46();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, v53, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v54 = OUTLINED_FUNCTION_32_2();
    v55(v54);
    v5 = v123;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v110 = 0;
LABEL_14:
  v29 = v122;
  v2 = v113;
  if (Participant.screenState.getter() == 2)
  {
    v30 = 0;
  }

  else if (Participant.isReceivingScreenFrames.getter())
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_30_2(&v3[v31], v126);
  v59 = *&v3[v31];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v3[v31] = v59;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if ((v120 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v120 < *(v59 + 16))
  {
    LODWORD(v123) = v30;
    v61 = v111;
    OUTLINED_FUNCTION_42_18();
    outlined assign with copy of Participant(v2, v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v63 + 72) * v64);
    *&v3[v31] = v59;
    swift_endAccess();
    v65 = v116;
    v116(v5, v2 + v114, v6);
    v66 = 1;
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v6);
    v70 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v71 = OUTLINED_FUNCTION_44_13();
    if (!__swift_getEnumTagSinglePayload(v71, v72, v61))
    {
      v65(v29, &v70[*(v61 + 20)], v6);
      v66 = 0;
    }

    OUTLINED_FUNCTION_55_11(v29, v66);
    v73 = *(v124 + 48);
    v74 = v121;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v74);
    if (v51)
    {
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, v76, v77);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, v79, v80);
      OUTLINED_FUNCTION_12_5(v74 + v73);
      if (v51)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_34:
        ParticipantGridViewController.updateFullScreenInfo(with:)();
        goto LABEL_35;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_3();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_12_5(v74 + v73);
      if (!v81)
      {
        v88 = v125;
        v89 = v74 + v73;
        v90 = v117;
        (*(v125 + 32))(v117, v89, v6);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        OUTLINED_FUNCTION_44_0();
        LODWORD(v124) = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = *(v88 + 8);
        v91(v90, v6);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, v93, v94);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, v96, v97);
        v91(v118, v6);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, v99, v100);
        if ((v124 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, v83, v84);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, v86, v87);
      (*(v125 + 8))(&_s10Foundation4UUIDVSgMd, v6);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_35:
    v101 = ParticipantGridViewController.gridView.getter();
    if (v101)
    {
      v102 = v101;
      ParticipantGridViewController.hasOtherInvitedParticipants.getter();
      ParticipantGridView.updateParticipantView(for:with:hasOtherInvitedParticipants:)();
    }

    if (Participant.isReceivingVideoFrames.getter())
    {
      v103 = &v3[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsViewControllerDelegate];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v105 = OUTLINED_FUNCTION_74_7(Strong);
        v126[3] = ObjectType;
        v126[4] = &protocol witness table for ParticipantGridViewController;
        v126[0] = v3;
        v106 = *(v103 + 8);
        v107 = v3;
        v106(v126, v2 + v114, v105, v103);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v126);
      }
    }

    goto LABEL_40;
  }

  __break(1u);
}

void ParticipantGridViewController.isSelected(_:)()
{
  OUTLINED_FUNCTION_29();
  v31[0] = v2;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - v17;
  v19 = v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v20 = type metadata accessor for Participant(0);
  v21 = 1;
  v22 = OUTLINED_FUNCTION_44_13();
  if (!__swift_getEnumTagSinglePayload(v22, v23, v20))
  {
    (*(v5 + 16))(v18, v19 + *(v20 + 20), v3);
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v21, 1, v3);
  v24 = *(v7 + 48);
  OUTLINED_FUNCTION_31_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_71_7(v31[0], &v10[v24]);
  OUTLINED_FUNCTION_115(v10, 1, v3);
  if (!v25)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(&v10[v24], 1, v3);
    if (!v25)
    {
      (*(v5 + 32))(v1, &v10[v24], v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v1, v3);
      v27 = OUTLINED_FUNCTION_206();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, v28, &_s10Foundation4UUIDVSgMR);
      v26(v15, v3);
      v29 = OUTLINED_FUNCTION_44_0();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, v30, &_s10Foundation4UUIDVSgMR);
      goto LABEL_12;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v15, v3);
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_115(&v10[v24], 1, v3);
  if (!v25)
  {
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.aspectRatio(for:in:)(uint64_t a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = a2;
  if (a2 || (v6 = ParticipantGridViewController.gridView.getter()) != 0)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 1;
    v7 = a2;
    ParticipantGridView.aspectRatio(for:default:)(a1, v15, v13);
    v11 = v13[1];
    v12 = v13[0];
    v8 = v14;

    v10 = v11;
    v9 = v12;
  }

  else
  {
    v9 = 0uLL;
    v8 = 1;
    v10 = 0uLL;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2].i8[0] = v8;
}

uint64_t ParticipantGridViewController.orientation(for:in:)(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = ParticipantGridViewController.gridView.getter();
    if (!v4)
    {
      return 1;
    }
  }

  v5 = a2;
  v6 = ParticipantGridView.orientation(for:default:)(a1, 1);

  return v6;
}

void ParticipantGridViewController.updateFullScreenInfo(with:)()
{
  OUTLINED_FUNCTION_29();
  v125 = v1;
  v126 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v6);
  v119 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v12);
  v13 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  *&v127 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v114[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v114[-v29];
  v31 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v37 = (v36 - v35);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v37 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v37, *MEMORY[0x1E69E8020], v31);
  v38 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v37, v31);
  if (v38)
  {
    v37 = v125;
    v39 = v125 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v40 = type metadata accessor for Participant(0);
    v41 = OUTLINED_FUNCTION_44_13();
    if (__swift_getEnumTagSinglePayload(v41, v42, v40))
    {
      OUTLINED_FUNCTION_43_12(v30);
      v43 = *(v127 + 16);
      v44 = (v127 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v45 = (v127 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v46 = &v39[*(v40 + 20)];
      v43 = *(v127 + 16);
      v43(v30, v46, v13);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v13);
      v44 = v45;
    }

    v124 = v40;
    v50 = *(v40 + 20);
    v123 = v43;
    v122 = v44;
    v43(v27, (v126 + v50), v13);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v13);
    v54 = *(v18 + 48);
    OUTLINED_FUNCTION_71_7(v30, v2);
    OUTLINED_FUNCTION_71_7(v27, v2 + v54);
    OUTLINED_FUNCTION_12_5(v2);
    if (v61)
    {
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, v56, v57);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, v59, v60);
      OUTLINED_FUNCTION_12_5(v2 + v54);
      if (v61)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_15;
      }
    }

    else
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_12_5(v2 + v54);
      if (!v61)
      {
        v62 = v127;
        v63 = v2 + v54;
        v64 = v116;
        (*(v127 + 32))(v116, v63, v13);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v115 = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = *(v62 + 8);
        v65(v64, v13);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v65(v0, v13);
        v37 = v125;
        v66 = OUTLINED_FUNCTION_33_0();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, v67, &_s10Foundation4UUIDVSgMR);
        if ((v115 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_15:
        OUTLINED_FUNCTION_2_112();
        v68 = v126;
        OUTLINED_FUNCTION_26_3();
        _s15ConversationKit11ParticipantVWOcTm_7();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v124);
        OUTLINED_FUNCTION_10_56();
        ParticipantGridViewController.focusedParticipant.setter();
        OUTLINED_FUNCTION_32_16();
        v72();
        ParticipantGridViewController.aspectRatio(for:in:)(v68, 0, &v129);
        v73 = ParticipantGridViewController.orientation(for:in:)(v68, 0);
        Participant.videoInfo.getter();
        if (v130)
        {
          v74 = v131;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v130, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        }

        else
        {
          v74 = 0;
        }

        v75 = v121;
        v18 = v120;
        v31 = v119;
        v76 = OUTLINED_FUNCTION_33_0();
        v77(v76);
        OUTLINED_FUNCTION_24_30(v75 + v31[5]);
        *(v75 + v31[6]) = v73;
        *(v75 + v31[7]) = v74;
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v127 + 8))(v0, v13);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_26;
  }

  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_19:
  v78 = static OS_os_log.conversationKit;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v80 = OUTLINED_FUNCTION_13_12(v79);
  v127 = xmmword_1BC4BA940;
  *(v80 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v81 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v31);
  specialized >> prefix<A>(_:)();
  v85 = v84;
  v87 = v86;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  *(v80 + 56) = MEMORY[0x1E69E6158];
  *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v80 + 32) = v85;
  *(v80 + 40) = v87;
  v88 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating full screen focused participant with %@", 48, 2, &dword_1BBC58000, v78, v88, v80);

  v89 = ParticipantGridViewController.gridView.getter();
  if (v89)
  {
    v125 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v90 = v124;
    OUTLINED_FUNCTION_42_18();
    *(OUTLINED_FUNCTION_41_16() + 16) = v127;
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    v91 = 1;
    v92 = OUTLINED_FUNCTION_18_41(&v132);
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v13);
    v95 = v37 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (!__swift_getEnumTagSinglePayload(v95, 1, v90))
    {
      OUTLINED_FUNCTION_32_16();
      v96();
      v91 = 0;
    }

    v97 = 1;
    OUTLINED_FUNCTION_55_11(v117, v91);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v98 = OUTLINED_FUNCTION_44_13();
    if (!__swift_getEnumTagSinglePayload(v98, v99, v90))
    {
      OUTLINED_FUNCTION_32_16();
      v100();
      v97 = 0;
    }

    OUTLINED_FUNCTION_55_11(v118, v97);
    _s15ConversationKit11ParticipantVWOcTm_7();
    v101 = OUTLINED_FUNCTION_17_46();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v31);
    v128 = *(v37 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_66_4();
    v104 = v125;
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, v106, v107);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, v109, v110);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, v112, v113);
    OUTLINED_FUNCTION_33_0();
  }

  _s15ConversationKit11ParticipantVWOhTm_9();
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ParticipantGridViewController.fullScreenDefocus(to:animationStyle:)(Swift::OpaquePointer to, ConversationKit::ParticipantGridView::AnimationStyle animationStyle)
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_2();
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = (v13 - v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v8);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v17 = OUTLINED_FUNCTION_13_12(v16);
  *(v17 + 16) = xmmword_1BC4BA940;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR);
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v21);

  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_10_56();
  ParticipantGridViewController.focusedParticipant.setter();
  ParticipantGridViewController.update(with:animationStyle:forced:)(v5, v3, 0);
  OUTLINED_FUNCTION_49();
}

void ParticipantGridViewController.update(with:animationStyle:forced:)(uint64_t a1, int a2, int a3)
{
  v226 = a3;
  v227 = a2;
  v229 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v225 = v208 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v224 = v208 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v223 = v208 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v219 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v228 = v208 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd, &_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v216 = v208 - v14;
  v247 = type metadata accessor for UUID();
  v245 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v221 = v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v240 = v208 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v233 = v208 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v220 = v208 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v232 = v208 - v23;
  v250 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v250);
  v242 = v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v246 = v208 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v230 = v208 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v208 - v30;
  v32 = type metadata accessor for Participant(0);
  v241 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v231 = v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v218 = v208 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v217 = v208 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v244 = v208 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v239 = (v208 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v249 = v208 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v234 = (v208 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v208 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v248 = v208 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v222 = v208 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v236 = v208 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v238 = v208 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v235 = v208 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v208 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v208 - v63;
  v65 = type metadata accessor for DispatchPredicate();
  v66 = *(v65 - 1);
  MEMORY[0x1EEE9AC00](v65);
  v68 = (v208 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v68 = static OS_dispatch_queue.main.getter();
  (*(v66 + 104))(v68, *MEMORY[0x1E69E8020], v65);
  v69 = _dispatchPreconditionTest(_:)();
  (*(v66 + 8))(v68, v65);
  if ((v69 & 1) == 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v70 = v243 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  swift_beginAccess();
  v65 = &_s15ConversationKit11ParticipantVSgMR;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v32);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (EnumTagSinglePayload != 1)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_22:
      v96 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1BC4BA940;
      v98 = v248;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      specialized >> prefix<A>(_:)();
      v100 = v99;
      v102 = v101;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit11ParticipantVSgMd, v65);
      *(v97 + 56) = MEMORY[0x1E69E6158];
      *(v97 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v97 + 32) = v100;
      *(v97 + 40) = v102;
      v103 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Skipping active participant update. Currently focused on %@", 59, 2, &dword_1BBC58000, v96, v103, v97);
      goto LABEL_23;
    }

LABEL_101:
    swift_once();
    goto LABEL_22;
  }

  v72 = v32;
  v73 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
  swift_beginAccess();
  v214 = v73;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  LODWORD(v73) = __swift_getEnumTagSinglePayload(v61, 1, v32);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (v73 != 1)
  {
    return;
  }

  v74 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  v75 = v243;
  swift_beginAccess();
  v215 = *(v75 + v74);

  v76 = ParticipantGridViewController.filterAndTruncate(_:)(v229);
  v237 = v74;
  *(v75 + v74) = v76;

  v213 = ParticipantGridViewController.gridView.getter();
  if (v213)
  {
    v211 = v70;
    v248 = v72;
    v77 = *(v243 + v237);
    v78 = *(v77 + 16);
    if (v78)
    {
      v79 = v77 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
      v80 = *(v241 + 72);
      v208[1] = v245 + 32;
      v209 = (v245 + 16);
      v210 = v77;

      v81 = 0;
      v212 = MEMORY[0x1E69E7CC0];
      v82 = v247;
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 4u:
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
            v85 = *(v84 + 48);
            v86 = &v31[*(v84 + 64)];
            outlined consume of Participant.CopresenceInfo?(*v86, v86[1], v86[2], v86[3], v86[4], v86[5], v86[6], v86[7]);
            outlined destroy of Participant.MediaInfo(&v31[v85]);
            v87 = type metadata accessor for Date();
            v88 = (*(*(v87 - 8) + 8))(v31, v87);
            MEMORY[0x1EEE9AC00](v88);
            v208[-2] = v48;
            v89 = v235;
            specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), v215, v235);
            if (__swift_getEnumTagSinglePayload(v89, 1, v248) == 1)
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            }

            else
            {
              outlined init with take of Participant(v89, v234);
              if ((Participant.isActive.getter() & 1) != 0 || (Participant.isActive.getter() & 1) == 0)
              {
                _s15ConversationKit11ParticipantVWOhTm_9();
              }

              else
              {
                (*v209)(v232, &v48[*(v248 + 20)], v82);
                v90 = v81;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v212 = v94;
                }

                v91 = *(v212 + 16);
                if (v91 >= *(v212 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v212 = v95;
                }

                _s15ConversationKit11ParticipantVWOhTm_9();
                v92 = v212;
                *(v212 + 16) = v91 + 1;
                v93 = v247;
                (*(v245 + 32))(v92 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v91, v232, v247);
                v81 = v90;
                v82 = v93;
              }
            }

            break;
          case 6u:
            break;
          default:
            v83 = type metadata accessor for Date();
            (*(*(v83 - 8) + 8))(v31, v83);
            break;
        }

        _s15ConversationKit11ParticipantVWOhTm_9();
        v79 += v80;
        --v78;
      }

      while (v78);
    }

    else
    {
      v81 = 0;
      v212 = MEMORY[0x1E69E7CC0];
      v82 = v247;
    }

    ParticipantGridView.participantIdentifiers.getter();
    v105 = v104;
    v106 = *(v243 + v237);
    v107 = *(v106 + 16);
    v108 = MEMORY[0x1E69E7CC0];
    if (v107)
    {
      v234 = v104;
      v232 = v81;
      v253[0] = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v108 = v253[0];
      v109 = *(v241 + 80);
      v210 = v106;
      v110 = v106 + ((v109 + 32) & ~v109);
      v235 = *(v241 + 72);
      v111 = (v245 + 16);
      v112 = v82;
      v113 = v220;
      do
      {
        v114 = v249;
        _s15ConversationKit11ParticipantVWOcTm_7();
        (*v111)(v113, &v114[*(v248 + 20)], v112);
        _s15ConversationKit11ParticipantVWOhTm_9();
        v253[0] = v108;
        v115 = *(v108 + 16);
        if (v115 >= *(v108 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v108 = v253[0];
        }

        *(v108 + 16) = v115 + 1;
        (*(v245 + 32))(v108 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v115, v113, v112);
        v110 += v235;
        --v107;
      }

      while (v107);

      v81 = v232;
      v82 = v112;
      v105 = v234;
    }

    specialized Array<A>.arrayCloselyMatching(_:)(v108, v105);
    v117 = v116;

    v255 = v117;
    v118 = *(v243 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus);
    v119 = v246;
    v120 = v233;
    if (v118)
    {
      v121 = *(v118 + 2);
      v122 = MEMORY[0x1E69E7CC0];
      if (v121)
      {
        v232 = v81;
        v253[0] = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v122 = v253[0];
        v123 = (*(v241 + 80) + 32) & ~*(v241 + 80);
        v220 = v118;
        v124 = &v118[v123];
        v125 = *(v241 + 72);
        v126 = (v245 + 16);
        v234 = (v245 + 32);
        v235 = v125;
        do
        {
          v127 = v249;
          _s15ConversationKit11ParticipantVWOcTm_7();
          (*v126)(v120, &v127[*(v248 + 20)], v82);
          _s15ConversationKit11ParticipantVWOhTm_9();
          v253[0] = v122;
          v128 = v82;
          v129 = *(v122 + 16);
          if (v129 >= *(v122 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v122 = v253[0];
          }

          *(v122 + 16) = v129 + 1;
          (*(v245 + 32))(v122 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v129, v120, v128);
          v124 += v235;
          --v121;
          v82 = v128;
        }

        while (v121);

        v119 = v246;
        v81 = v232;
      }

      specialized Array<A>.sortToMatch(_:)(v122);

      v117 = v255;
    }

    v130 = *(v117 + 2);
    v220 = v117;
    if (v130)
    {
      v131 = *(v245 + 16);
      v132 = &v117[(*(v245 + 80) + 32) & ~*(v245 + 80)];
      v233 = *(v245 + 72);
      v234 = v131;
      v235 = v245 + 16;
      v232 = (v245 + 8);
      v133 = MEMORY[0x1E69E7CC0];
      v134 = v240;
      do
      {
        v249 = v133;
        v135 = v247;
        v136 = (v234)(v134, v132, v247);
        v137 = *(v243 + v237);
        MEMORY[0x1EEE9AC00](v136);
        v208[-2] = v134;

        v138 = v238;
        specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), v137, v238);

        (*v232)(v134, v135);
        if (__swift_getEnumTagSinglePayload(v138, 1, v248) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v119 = v246;
          v133 = v249;
        }

        else
        {
          outlined init with take of Participant(v138, v239);
          v133 = v249;
          v139 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v133 = v141;
          }

          v119 = v246;
          v140 = *(v133 + 2);
          if (v140 >= *(v133 + 3) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v133 = v142;
          }

          *(v133 + 2) = v140 + 1;
          outlined init with take of Participant(v239, &v133[((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v140]);
          v81 = v139;
        }

        v132 += v233;
        --v130;
      }

      while (v130);
    }

    else
    {
      v133 = MEMORY[0x1E69E7CC0];
    }

    v143 = *(v133 + 2);
    if (v143)
    {
      v144 = *(v241 + 80);
      v232 = v81;
      v233 = (v144 + 32) & ~v144;
      v240 = &v133[v233];

      v145 = 0;
      v65 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      v146 = v230;
      v249 = v133;
      v234 = v143;
      while (1)
      {
        if (v145 >= *(v133 + 2))
        {
          __break(1u);
          goto LABEL_100;
        }

        v147 = v65;
        v148 = *(v241 + 72);
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        v235 = v148 * v145;
        v238 = v148;
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v150 = *(v149 + 48);
        v151 = &v146[*(v149 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v151, v151[1], v151[2], v151[3], v151[4], v151[5], v151[6], v151[7]);
        memcpy(v253, &v146[v150], sizeof(v253));
        v152 = type metadata accessor for Date();
        v239 = *(*(v152 - 8) + 8);
        v239(v146, v152);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v253);
        if (v254[1].i64[1] == 1)
        {
          goto LABEL_61;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v254, v147, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOhTm_9();
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          _s15ConversationKit11ParticipantVWOhTm_9();
          memset(v251, 0, 24);
          *&v251[24] = 1;
          bzero(&v251[32], 0xB1uLL);
          v156 = v247;
          v133 = v249;
          v143 = v234;
          v65 = v147;
LABEL_65:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v251, v65, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
          goto LABEL_62;
        }

        v153 = *(v149 + 48);
        v154 = &v119[*(v149 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v154, v154[1], v154[2], v154[3], v154[4], v154[5], v154[6], v154[7]);
        v155 = &v119[v153];
        v146 = v230;
        memcpy(v253, v155, sizeof(v253));
        v239(v119, v152);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v253);
        v156 = v247;
        v133 = v249;
        v143 = v234;
        v65 = v147;
        if (*&v251[24] == 1)
        {
          goto LABEL_65;
        }

        memcpy(v254, v251, 0xD1uLL);
        v157 = v254[2].i8[8];
        outlined destroy of Participant.ScreenInfo(v254);
        if (v157)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v133 = v206;
          }

          v204 = *(v133 + 2);
          if (v204 <= v145)
          {
            __break(1u);
          }

          else
          {
            v205 = &v133[v233 + v235];
            outlined init with take of Participant(v205, v217);
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v205 + v238, ~v145 + v204, v205, type metadata accessor for Participant);
            *(v133 + 2) = v204 - 1;
            _s15ConversationKit11ParticipantVWOcTm_7();
            *v251 = v133;
            if (v204 <= *(v133 + 3) >> 1)
            {
LABEL_98:
              v159 = v243;
              specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
              _s15ConversationKit11ParticipantVWOhTm_9();
              v158 = v236;
              goto LABEL_67;
            }
          }

          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v133 = v207;
          *v251 = v207;
          goto LABEL_98;
        }

LABEL_62:
        ++v145;
        v158 = v236;
        v119 = v246;
        if (v143 == v145)
        {

          v159 = v243;
          goto LABEL_67;
        }
      }

      _s15ConversationKit11ParticipantVWOhTm_9();
      memset(v254, 0, 24);
      v254[1].i64[1] = 1;
      bzero(&v254[2], 0xB1uLL);
LABEL_61:
      _s15ConversationKit11ParticipantVWOhTm_9();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v254, v147, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v156 = v247;
      v133 = v249;
      v65 = v147;
      goto LABEL_62;
    }

    v159 = v243;
    v156 = v247;
    v158 = v236;
LABEL_67:
    *(v159 + v237) = v133;

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v160 = v248;
    if (__swift_getEnumTagSinglePayload(v158, 1, v248) == 1)
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v161 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      __swift_storeEnumTagSinglePayload(v228, 1, 1, v161);
    }

    else
    {
      v162 = v218;
      outlined init with take of Participant(v158, v218);
      (*(v245 + 16))(v221, v162 + *(v160 + 20), v156);

      v163 = v213;
      v164 = v213;
      ParticipantGridViewController.aspectRatio(for:in:)(v162, v163, v254);
      v165 = ParticipantGridViewController.orientation(for:in:)(v162, v163);

      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_9();
      if (v253[0])
      {
        v166 = v253[4];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v253, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      }

      else
      {
        v166 = 0;
      }

      v167 = v219;
      (*(v245 + 32))(v219, v221, v156);
      v168 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      v169 = (v167 + v168[5]);
      v170 = v254[1];
      *v169 = v254[0];
      v169[1] = v170;
      v169[2].i8[0] = v254[2].i8[0];
      *(v167 + v168[6]) = v165;
      *(v167 + v168[7]) = v166;
      __swift_storeEnumTagSinglePayload(v167, 0, 1, v168);
      outlined init with take of CaptionSectioner.SpeakerSection?();
    }

    v249 = v133;
    v171 = *(v229 + 16);
    if (v171)
    {
      v172 = v229 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
      v173 = *(v241 + 72);
      while (2)
      {
        _s15ConversationKit11ParticipantVWOcTm_7();
        _s15ConversationKit11ParticipantVWOcTm_7();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 4u:
            v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
            v176 = *(v175 + 48);
            v177 = v242;
            v178 = &v242[*(v175 + 64)];
            outlined consume of Participant.CopresenceInfo?(*v178, v178[1], v178[2], v178[3], v178[4], v178[5], v178[6], v178[7]);
            outlined destroy of Participant.MediaInfo(&v177[v176]);
            v179 = type metadata accessor for Date();
            v180 = v177;
            v181 = v231;
            (*(*(v179 - 8) + 8))(v180, v179);
            if (!*(v181 + *(v248 + 28)))
            {
              goto LABEL_77;
            }

            v182 = v222;
            outlined init with take of Participant(v181, v222);
            v183 = v182;
            v184 = 0;
            goto LABEL_82;
          case 6u:
            goto LABEL_77;
          default:
            v174 = type metadata accessor for Date();
            (*(*(v174 - 8) + 8))(v242, v174);
LABEL_77:
            _s15ConversationKit11ParticipantVWOhTm_9();
            v172 += v173;
            if (!--v171)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    v182 = v222;
    v183 = v222;
    v184 = 1;
LABEL_82:
    v185 = v248;
    __swift_storeEnumTagSinglePayload(v183, v184, 1, v248);

    v186 = __swift_getEnumTagSinglePayload(v182, 1, v185);
    v188 = v224;
    v187 = v225;
    v189 = v223;
    if (v186 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v182, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v190 = 1;
    }

    else
    {
      (*(v245 + 16))(v223, v182 + *(v185 + 20), v156);
      _s15ConversationKit11ParticipantVWOhTm_9();
      v190 = 0;
    }

    v191 = 1;
    __swift_storeEnumTagSinglePayload(v189, v190, 1, v156);
    v192 = v211;
    if (!__swift_getEnumTagSinglePayload(v211, 1, v185))
    {
      (*(v245 + 16))(v188, v192 + *(v185 + 20), v156);
      v191 = 0;
    }

    v193 = 1;
    __swift_storeEnumTagSinglePayload(v188, v191, 1, v156);
    v194 = v159 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    swift_beginAccess();
    if (!__swift_getEnumTagSinglePayload(v194, 1, v185))
    {
      (*(v245 + 16))(v187, v194 + *(v185 + 20), v156);
      v193 = 0;
    }

    __swift_storeEnumTagSinglePayload(v187, v193, 1, v156);
    v252 = *(v159 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    v195 = v228;
    v196 = v213;
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v187, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v188, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v189, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v195, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  }

  v197 = v243;
  v198 = v243 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_23:

    return;
  }

  v199 = *(v198 + 8);
  ObjectType = swift_getObjectType();
  v201 = *(v197 + v237);
  v202 = *(v199 + 32);

  v202(v197, v215, v201, ObjectType, v199);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall ParticipantGridViewController.updateLayout(_:)(ConversationKit::MultiwayViewController::LayoutStyle a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle;
  if (v2 != v1[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle])
  {
    v4 = v1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationKit);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1BBC58000, v7, v8, "[ParticipantGridViewController] updating layout from %s to %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    v4[v3] = v2;
  }
}

void ParticipantGridViewController.focus(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v137 - v31;
  v145 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v147 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v36 - v35);
  v148 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v138 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v40 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v137 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v137 - v51;
  v53 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_8();
  v59 = (v58 - v57);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v59 = static OS_dispatch_queue.main.getter();
  (*(v55 + 104))(v59, *MEMORY[0x1E69E8020], v53);
  v60 = _dispatchPreconditionTest(_:)();
  (*(v55 + 8))(v59, v53);
  if (v60)
  {
    v146 = v32;
    v143 = v21;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_3:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v62 = OUTLINED_FUNCTION_13_12(v61);
  v137 = xmmword_1BC4BA940;
  *(v62 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_2_112();
  v142 = v26;
  _s15ConversationKit11ParticipantVWOcTm_7();
  v63 = OUTLINED_FUNCTION_17_46();
  v64 = v148;
  __swift_storeEnumTagSinglePayload(v63, v65, v66, v148);
  specialized >> prefix<A>(_:)();
  v68 = v67;
  v70 = v69;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 32) = v68;
  *(v62 + 40) = v70;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v71);

  v72 = v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v73 = OUTLINED_FUNCTION_311();
  LODWORD(v68) = __swift_getEnumTagSinglePayload(v73, v74, v64);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (v68 == 1)
  {
    v75 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus) = *(v24 + v75);
  }

  _s15ConversationKit11ParticipantVWOcTm_7();
  v76 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v64);
  OUTLINED_FUNCTION_16_45();
  ParticipantGridViewController.focusedParticipant.setter();
  _s15ConversationKit11ParticipantVWOcTm_7();
  v79 = OUTLINED_FUNCTION_17_46();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v64);
  ParticipantGridViewController.select(_:forFocusing:)();
  OUTLINED_FUNCTION_31_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, v83, v84);
  v85 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_fullScreenFocusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v86 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v86, v87, v64);
  v88 = v145;
  if (v89)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    v90 = v144;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);

    v95 = v143;
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    outlined init with take of Participant(v96, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v98 = OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_4_96(v98, v137);
    _s15ConversationKit11ParticipantVWOcTm_7();
    OUTLINED_FUNCTION_84_4();
    v100 = v140;
    v101(v140, v85 + v99, v88);
    ParticipantGridViewController.aspectRatio(for:in:)(v85, 0, &v150);
    v102 = ParticipantGridViewController.orientation(for:in:)(v85, 0);
    Participant.videoInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v95 = v143;
    if (v151)
    {
      v103 = v152;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v151, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    }

    else
    {
      v103 = 0;
    }

    v90 = v144;
    v104 = v139;
    (*(v147 + 32))(v139, v100, v88);
    v105 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    OUTLINED_FUNCTION_24_30(v104 + *(v105 + 20));
    *(v104 + *(v106 + 24)) = v102;
    *(v104 + *(v106 + 28)) = v103;
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  v111 = ParticipantGridViewController.gridView.getter();
  if (v111)
  {
    v112 = v111;
    v113 = 1;
    v114 = OUTLINED_FUNCTION_18_41(&a9);
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v88);
    v117 = OUTLINED_FUNCTION_29_5();
    v118 = v148;
    if (!__swift_getEnumTagSinglePayload(v117, v119, v148))
    {
      OUTLINED_FUNCTION_84_4();
      v121(v95, v72 + v120, v88);
      v113 = 0;
    }

    v122 = 1;
    __swift_storeEnumTagSinglePayload(v95, v113, 1, v88);
    v123 = v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v124 = OUTLINED_FUNCTION_29_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v124, v125, v118);
    v127 = v141;
    if (!EnumTagSinglePayload)
    {
      (*(v147 + 16))(v141, v123 + *(v118 + 20), v88);
      v122 = 0;
    }

    __swift_storeEnumTagSinglePayload(v127, v122, 1, v88);
    v149 = *(v24 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle);
    ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();

    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, v129, v130);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v131, v132, v133);
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, v135, v136);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ParticipantGridViewController.defocus(to:)(Swift::OpaquePointer to)
{
  OUTLINED_FUNCTION_29();
  v6 = v2;
  v142 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd, &_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMR);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_159();
  v144 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v131 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v21);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v31);
  v141 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v126 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v37);
  v38 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v40 + 104))(v3, *MEMORY[0x1E69E8020], v38);
  v42 = _dispatchPreconditionTest(_:)();
  v43 = OUTLINED_FUNCTION_33_0();
  v44(v43);
  if (v42)
  {
    v136 = v1;
    v132 = v6;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_3:
  v45 = static OS_os_log.conversationKit;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v47 = OUTLINED_FUNCTION_13_12(v46);
  *(v47 + 16) = xmmword_1BC4BA940;
  v150[0] = v142;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR);
  v48 = String.init<A>(reflecting:)();
  v50 = v49;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v47 + 32) = v48;
  *(v47 + 40) = v50;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v51);

  v139 = *(v142 + 16);
  if (!v139)
  {

    goto LABEL_26;
  }

  v52 = &v132[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_focusedParticipant];
  v45 = v126;
  v53 = (*(v126 + 80) + 32) & ~*(v126 + 80);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v54 = 0;
  v137 = *(v126 + 72);
  v135 = (v131 + 8);
  v138 = (v131 + 16);
  v50 = &_s10Foundation4UUIDVSgMd;
  OUTLINED_FUNCTION_85_0();
  while (1)
  {
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    v5 = v52;
    if (__swift_getEnumTagSinglePayload(v52, 1, v45))
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v144);
      v58 = *v138;
    }

    else
    {
      v58 = *v138;
      OUTLINED_FUNCTION_65_8();
      v58(v59);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v52);
    }

    OUTLINED_FUNCTION_65_8();
    v58(v63);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v52);
    v45 = *(v140 + 48);
    OUTLINED_FUNCTION_96_2();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v67 = OUTLINED_FUNCTION_311();
    if (__swift_getEnumTagSinglePayload(v67, v68, v52) == 1)
    {
      break;
    }

    v5 = v144;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v4 + v45, 1, v144);
    if (v71)
    {
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_0_129();
      _s15ConversationKit11ParticipantVWOhTm_9();
      (*v135)(v136, v144);
      v70 = v4;
LABEL_15:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      goto LABEL_17;
    }

    (*(v131 + 32))(v133, v4 + v45, v144);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    OUTLINED_FUNCTION_44_0();
    v134 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = v131 + 8;
    v72 = *v135;
    (*v135)(v133, v144);
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v72(v136, v144);
    v69 = v142;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v134)
    {
      goto LABEL_20;
    }

LABEL_17:
    ++v54;
    v53 += v137;
    v45 = v141;
    if (v139 == v54)
    {
      OUTLINED_FUNCTION_82_5();
      goto LABEL_27;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_51_13();
  OUTLINED_FUNCTION_0_129();
  _s15ConversationKit11ParticipantVWOhTm_9();
  OUTLINED_FUNCTION_115(v4 + v45, 1, v144);
  v69 = v142;
  v70 = v4;
  if (!v71)
  {
    goto LABEL_15;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_20:
  if (!v54)
  {
LABEL_26:
    OUTLINED_FUNCTION_82_5();
    OUTLINED_FUNCTION_85_0();
LABEL_27:
    v75 = v127;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_112();
  _s15ConversationKit11ParticipantVWOcTm_7();
  v50 = v132;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v69 = v122;
  }

  v73 = v69;
  v74 = *(v69 + 16);
  if (v74 <= v54)
  {
    __break(1u);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_9();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v73 + v53 + v137, ~v54 + v74, v73 + v53, type metadata accessor for Participant);
    *(v73 + 16) = v74 - 1;
    _s15ConversationKit11ParticipantVWOcTm_7();
    v148 = v73;
    v142 = v73;
    if (v74 <= *(v73 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v142 = v123;
  v148 = v123;
LABEL_25:
  v4 = v129;
  v75 = v127;
  v45 = &v148;
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
  OUTLINED_FUNCTION_0_129();
  _s15ConversationKit11ParticipantVWOhTm_9();
  OUTLINED_FUNCTION_85_0();
LABEL_28:
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v76 = &v50[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant];
  OUTLINED_FUNCTION_30_2(&v50[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant], v150);
  outlined assign with take of Participant?(v75, v76);
  swift_endAccess();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v45);
  OUTLINED_FUNCTION_16_45();
  ParticipantGridViewController.focusedParticipant.setter();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_20();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v80 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v80, v81, v45);
  if (v71)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    ParticipantGridViewController.update(with:animationStyle:forced:)(v142, 1, 0);
  }

  else
  {
    outlined init with take of Participant(v128, v130);
    v82 = ParticipantGridViewController.gridView.getter();
    if (v82)
    {
      v83 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
      *(OUTLINED_FUNCTION_41_16() + 16) = xmmword_1BC4BA940;
      OUTLINED_FUNCTION_2_112();
      _s15ConversationKit11ParticipantVWOcTm_7();
      v84 = OUTLINED_FUNCTION_18_41(&v146);
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v144);
      v87 = OUTLINED_FUNCTION_18_41(&v147);
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v144);
      OUTLINED_FUNCTION_85_0();
      if (__swift_getEnumTagSinglePayload(v90, v91, v144))
      {
        v92 = OUTLINED_FUNCTION_18_41(&v145);
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v144);
        v95 = v144;
        v96 = *(v131 + 16);
      }

      else
      {
        v95 = v144;
        v96 = *(v131 + 16);
        OUTLINED_FUNCTION_65_8();
        v96(v97);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v98, v99, v100, v5);
      }

      (v96)(v125, v130 + *(v95 + 20), v144);
      ParticipantGridViewController.aspectRatio(for:in:)(v130, 0, &v149);
      v101 = ParticipantGridViewController.orientation(for:in:)(v130, 0);
      Participant.videoInfo.getter();
      if (v150[0])
      {
        v102 = v151;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v150, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      }

      else
      {
        v102 = 0;
      }

      (*(v131 + 32))(v124, v125, v144);
      v103 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
      OUTLINED_FUNCTION_24_30(v124 + *(v103 + 20));
      *(v124 + *(v104 + 24)) = v101;
      *(v124 + *(v104 + 28)) = v102;
      v105 = OUTLINED_FUNCTION_17_46();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
      OUTLINED_FUNCTION_66_4();
      ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)();
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, v110, v111);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v112, v113, v114);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, v116, v117);
      OUTLINED_FUNCTION_0_129();
    }

    else
    {
      OUTLINED_FUNCTION_0_129();
    }

    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  *&v50[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantsBeforeFocus] = 0;

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v118 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v118, v119, v141);
  if (v71)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    outlined init with take of Participant(v120, v121);
    ParticipantGridViewController.update(participant:broadcastingState:)();
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
  }

  OUTLINED_FUNCTION_30_0();
}

id ParticipantGridViewController.filterAndTruncate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Participant(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    outlined init with take of Participant(v8, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC4BA940;
    outlined init with take of Participant(v12, v32 + v35);
    return v32;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v13 = Date.init()();
  MEMORY[0x1EEE9AC00](v13);
  *(&v38 - 2) = v5;

  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridViewController.filterAndTruncate(_:), (&v38 - 4), a1);
  v15 = v14;
  v41[1] = v1[OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle];
  result = [v1 view];
  if (result)
  {
    v17 = result;
    [result frame];
    v19 = v18;
    v21 = v20;

    v22 = ParticipantGridViewController.mediaPipIsVisible.getter();
    ParticipantGridViewController.captionsLayoutState.getter(v41);
    v23 = MultiwayViewController.LayoutStyle.maximumParticipantCount(portraitAspect:mediaPipIsVisible:captionsLayoutState:)(v19 < v21, v22 & 1, v41);
    v24 = specialized Collection.prefix(_:)(v23, v15, specialized Array.index(_:offsetBy:limitedBy:), specialized Array.subscript.getter);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    if (v29)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x1E69E7CC0];
      }

      v37 = *(v36 + 16);

      if (__OFSUB__(v30 >> 1, v28))
      {
        __break(1u);
      }

      else if (v37 == (v30 >> 1) - v28)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v34 = v39;
        v33 = v40;
        if (v32)
        {
LABEL_13:
          (*(v34 + 8))(v5, v33);
          return v32;
        }

        v32 = MEMORY[0x1E69E7CC0];
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v24, v26, v28, v30);
    v32 = v31;
    v34 = v39;
    v33 = v40;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ParticipantGridViewController.filterAndTruncate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Participant(0);
  v13 = *(a1 + *(v12 + 28));
  if (v13)
  {
    v14 = v12;
    _s15ConversationKit11ParticipantVWOcTm_7();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    LOBYTE(v13) = 1;
    switch(EnumCaseMultiPayload)
    {
      case 2:
        (*(v6 + 8))(v4, v5);
        goto LABEL_6;
      case 3:
        goto LABEL_8;
      case 4:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v19 = *(v18 + 48);
        v20 = &v4[*(v18 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v20, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7]);
        outlined destroy of Participant.MediaInfo(&v4[v19]);
LABEL_8:
        (*(v6 + 8))(v4, v5);
        LOBYTE(v13) = 1;
        break;
      case 5:
        (*(v6 + 32))(v8, v4, v5);
        Date.timeIntervalSince(_:)();
        v22 = v21;
        (*(v6 + 8))(v8, v5);
        LOBYTE(v13) = v22 < 7.0;
        break;
      case 6:
        return v13 & 1;
      default:
        (*(v6 + 32))(v11, v4, v5);
        Date.timeIntervalSince(_:)();
        v17 = v16;
        (*(v6 + 8))(v11, v5);
        if (v17 >= 45.0)
        {
LABEL_6:
          LOBYTE(v13) = 0;
        }

        else
        {
          LOBYTE(v13) = *(a1 + *(v14 + 52)) ^ 1;
        }

        break;
    }
  }

  return v13 & 1;
}

id ParticipantGridViewController.mediaPipIsVisible.getter()
{
  result = ParticipantGridViewController.gridView.getter();
  if (result)
  {
    v1 = result;
    v2 = ParticipantGridView.mediaPipIsVisible.getter();

    return (v2 & 1);
  }

  return result;
}

uint64_t ParticipantGridViewController.captionsLayoutState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participantGridViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 80))(ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 3;
  }

  return result;
}

void ParticipantGridViewController.effectiveLayoutStyle.getter(char *a1@<X8>)
{
  v3 = ParticipantGridViewController.gridView.getter();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    ParticipantGridView.effectiveLayoutStyle(for:)(*(*(v1 + v5) + 16));

    v6 = v7;
  }

  else
  {
    v6 = 2;
  }

  *a1 = v6;
}

uint64_t ParticipantGridViewController.participantCount.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t ParticipantGridViewController.mediaPipInfo.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v3 = OUTLINED_FUNCTION_74_7(Strong);
  v4 = (*(v1 + 8))(v3, v1);
  swift_unknownObjectRelease();
  return v4;
}

void ParticipantGridViewController.overlappingInsets.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_74_7(Strong);
    (*(v1 + 16))(v3, v1);
    OUTLINED_FUNCTION_40_1();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_35();
}

Swift::Void __swiftcall ParticipantGridViewController.dodgeMediaPip(with:)(Swift::OpaquePointer_optional with)
{
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_64_10();
  v5(v4);
  v6 = _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_33_0();
  v8(v7);
  if (v6)
  {
    if (v1)
    {
      v9 = OUTLINED_FUNCTION_29_5();
      ParticipantGridViewController.update(with:animationStyle:forced:)(v9, v10, 1);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v11 = OUTLINED_FUNCTION_44_0();
        v12(v11);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v13 = ParticipantGridViewController.gridView.getter();
      if (v13)
      {
        v14 = v13;
        ParticipantGridView.updateMediaPipDodgingFrame(withAnimationStyle:)(ConversationKit_ParticipantGridView_AnimationStyle_fast);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id ParticipantGridViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ParticipantGridViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ParticipantGridViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v16 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v10 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v17 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v13 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_7();
      (*(v8 + 16))(v2, v1 + *(v16 + 20), v6);
      _s15ConversationKit11ParticipantVWOhTm_9();
      v14 = *(v17 + 16);
      if (v14 >= *(v17 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v17 + 16) = v14 + 1;
      (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v2, v6);
      v13 += v15;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_30_0();
}

void ParticipantGridViewController.update(participant:localParticipantOrientation:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_23_34();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_26_30();
  v9(v8);
  if (v5)
  {
    v10 = ParticipantGridViewController.gridView.getter();
    if (v10)
    {
      v11 = v10;
      ParticipantGridView.updateViews(for:localParticipantOrientation:)(v0, v3);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantGridViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  OUTLINED_FUNCTION_50_2();
  v5 = v3;
  v7 = v6;
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  v10 = OUTLINED_FUNCTION_23_34();
  v11(v10);
  _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_26_30();
  v13(v12);
  if (v9)
  {
    v14 = v7 & 1;
    *(v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_isLocalMemberAuthorizedToChangeGroupMembership) = v14;
    v15 = ParticipantGridViewController.gridView.getter();
    if (v15)
    {
      v16 = v15;
      ParticipantGridView.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(v2, v14);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridViewController.update(participant:isKickingAvailable:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_23_34();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_26_30();
  v9(v8);
  if (v5)
  {
    v10 = ParticipantGridViewController.gridView.getter();
    if (v10)
    {
      v11 = v10;
      ParticipantGridView.updateKickingAvailable(for:isKickingAvailable:)(v0, v3 & 1);
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridViewController.update(with:updateReason:)(Swift::OpaquePointer with, char *a2)
{
  if (a2[1])
  {
    v4 = *a2;
    if (a2[1] == 1)
    {
      *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_layoutStyle) = v4 & 1;
      v5 = 1;
    }

    else
    {
      v5 = 0x20301u >> (8 * v4);
    }
  }

  else
  {
    v5 = 3;
  }

  ParticipantGridViewController.updateSelectedParticipant(with:)(with);

  ParticipantGridViewController.update(with:animationStyle:forced:)(with._rawValue, v5, 0);
}

Swift::Void __swiftcall ParticipantGridViewController.updateSelectedParticipant(with:)(Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v76 = v7;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v79 = v13 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v86 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v82 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v89 = v21;
  v88 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v30);
  v31 = *(v4 + 16);
  if (!v31)
  {
    goto LABEL_19;
  }

  v32 = v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_selectedParticipant;
  v33 = v4 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v77 = v27;
  v78 = (v10 + 32);
  v81 = (v10 + 8);
  v83 = *(v23 + 72);
  v84 = (v10 + 16);
  v85 = v32;
  while (1)
  {
    OUTLINED_FUNCTION_2_112();
    _s15ConversationKit11ParticipantVWOcTm_7();
    v34 = OUTLINED_FUNCTION_44_13();
    if (__swift_getEnumTagSinglePayload(v34, v35, v88))
    {
      OUTLINED_FUNCTION_8_11(v89);
      v36 = *v84;
    }

    else
    {
      v36 = *v84;
      (*v84)(v89, v32 + *(v88 + 20), v8);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v8);
    }

    v36(v2, v27 + *(v88 + 20), v8);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v8);
    v43 = *(v87 + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v86, 1, v8);
    if (v50)
    {
      break;
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v86 + v43, 1, v8);
    if (v50)
    {
      OUTLINED_FUNCTION_45_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, v52, v53);
      OUTLINED_FUNCTION_45_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, v55, v56);
      (*v81)(v82, v8);
LABEL_14:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      v32 = v85;
      goto LABEL_16;
    }

    (*v78)(v79, v86 + v43, v8);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v80 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *v81;
    (*v81)(v79, v8);
    OUTLINED_FUNCTION_45_15();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, v59, v60);
    OUTLINED_FUNCTION_45_15();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, v62, v63);
    v57(v82, v8);
    v27 = v77;
    OUTLINED_FUNCTION_45_15();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, v65, v66);
    v32 = v85;
    if (v80)
    {
      goto LABEL_18;
    }

LABEL_16:
    OUTLINED_FUNCTION_0_129();
    _s15ConversationKit11ParticipantVWOhTm_9();
    v33 += v83;
    if (!--v31)
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_45_15();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, v45, v46);
  OUTLINED_FUNCTION_45_15();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, v48, v49);
  OUTLINED_FUNCTION_115(v86 + v43, 1, v8);
  if (!v50)
  {
    goto LABEL_14;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = v85;
LABEL_18:
  OUTLINED_FUNCTION_26_3();
  outlined init with take of Participant(v67, v68);
  OUTLINED_FUNCTION_26_3();
  outlined init with take of Participant(v69, v70);
  outlined init with take of Participant(v8, v76);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v88);
  OUTLINED_FUNCTION_30_2(v32, &v90);
  v74 = OUTLINED_FUNCTION_46();
  outlined assign with take of Participant?(v74, v75);
  swift_endAccess();
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void specialized Array<A>.arrayCloselyMatching(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v81 - v7;
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = 0;
  v91 = a1;
  v29 = *(a1 + 16);
  v93 = v30;
  v94 = v29;
  v89 = (v30 + 8);
  v95 = (v30 + 32);
  v96 = v30 + 16;
  v31 = MEMORY[0x1E69E7CC0];
  v92 = a2;
  v86 = v23;
  while (1)
  {
    v32 = v28;
LABEL_3:
    if (v32 == v94)
    {
      break;
    }

    v33 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v34 = *(v93 + 72);
    v90 = v32 + 1;
    (*(v93 + 16))(v27, v91 + v33 + v34 * v32, v8, v25);
    v35 = *(a2 + 16);
    v36 = a2 + v33;
    v37 = v35 + 1;
    while (--v37)
    {
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v36 += v34;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v89)(v27, v8);
        v32 = v90;
        a2 = v92;
        goto LABEL_3;
      }
    }

    v38 = *v95;
    (*v95)(v23, v27, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = v101;
    }

    v40 = *(v31 + 16);
    if (v40 >= *(v31 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = v101;
    }

    *(v31 + 16) = v40 + 1;
    v23 = v86;
    v38(v31 + v33 + v40 * v34, v86, v8);
    a2 = v92;
    v28 = v90;
  }

  v41 = 0;
  v101 = v31;
  v42 = MEMORY[0x1E69E7CC0];
  while (v41 != v94)
  {
    v43 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v44 = *(v93 + 72);
    v45 = v41 + 1;
    (*(v93 + 16))(v20, v91 + v43 + v44 * v41, v8, v25);
    v46 = a2 + v43;
    v47 = *(a2 + 16) + 1;
    do
    {
      if (!--v47)
      {
        (*v89)(v20, v8);
        goto LABEL_24;
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      v46 += v44;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v48 = *v95;
    (*v95)(v88, v20, v8);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v42;
    if ((v49 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v100;
    }

    v50 = *(v42 + 16);
    if (v50 >= *(v42 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v100;
    }

    *(v42 + 16) = v50 + 1;
    v48(v42 + v43 + v50 * v44, v88, v8);
LABEL_24:
    v41 = v45;
    a2 = v92;
  }

  v100 = v42;
  v99 = MEMORY[0x1E69E7CC0];
  v92 = *(a2 + 16);
  if (!v92)
  {
    goto LABEL_59;
  }

  v51 = 0;
  v52 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v91 = a2 + v52;
  v53 = *(v93 + 72);
  v93 = *(v93 + 16);
  v94 = MEMORY[0x1E69E7CC0];
  v88 = v52;
  while (2)
  {
    v54 = v91 + v53 * v51++;
    (v93)(v97, v54, v8, v25);
    v55 = 0;
    v56 = v100;
    v57 = *(v100 + 16);
    v58 = v52;
    while (v57 != v55)
    {
      lazy protocol witness table accessor for type UUID and conformance UUID();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (v93)(v87, v97, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v94 = v74;
        }

        v66 = *(v94 + 16);
        if (v66 >= *(v94 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v94 = v75;
        }

        v68 = v94;
        v67 = v95;
        *(v94 + 16) = v66 + 1;
        (*v67)(v68 + v52 + v66 * v53, v87, v8);
        v99 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()();
          v56 = v76;
        }

        v69 = *(v56 + 16);
        if (v69 > v55)
        {
          v70 = v56 + v58;
          v90 = v51;
          v71 = *v89;
          (*v89)(v70, v8);
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v70 + v53, ~v55 + v69, v70, MEMORY[0x1E69695A8]);
          *(v56 + 16) = v69 - 1;
          v52 = v88;
          v100 = v56;
          v71(v97, v8);
          v51 = v90;
          goto LABEL_57;
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return;
      }

      ++v55;
      v58 += v53;
    }

    v59 = v101;
    if (*(v101 + 16))
    {
      v60 = v84;
      specialized Collection.first.getter(v101, v84);
      if (__swift_getEnumTagSinglePayload(v60, 1, v8) == 1)
      {
        goto LABEL_63;
      }

      v61 = *v95;
      (*v95)(v85, v60, v8);
      if (!*(v59 + 16))
      {
        goto LABEL_61;
      }

      specialized Array.replaceSubrange<A>(_:with:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v77;
      }

      v62 = *(v94 + 16);
      if (v62 >= *(v94 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v78;
      }

      v63 = v94;
      *(v94 + 16) = v62 + 1;
      v64 = v63 + v52 + v62 * v53;
      v65 = v85;
    }

    else
    {
      v72 = v82;
      if (!*(v56 + 16))
      {
        goto LABEL_56;
      }

      specialized Collection.first.getter(v56, v82);
      if (__swift_getEnumTagSinglePayload(v72, 1, v8) == 1)
      {
        goto LABEL_64;
      }

      v61 = *v95;
      (*v95)(v83, v72, v8);
      if (!*(v56 + 16))
      {
        goto LABEL_62;
      }

      specialized Array.replaceSubrange<A>(_:with:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v79;
      }

      v73 = *(v94 + 16);
      if (v73 >= *(v94 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v80;
      }

      v63 = v94;
      *(v94 + 16) = v73 + 1;
      v64 = v63 + v52 + v73 * v53;
      v65 = v83;
    }

    v61(v64, v65, v8);
    v99 = v63;
LABEL_56:
    (*v89)(v97, v8);
LABEL_57:
    if (v51 != v92)
    {
      continue;
    }

    break;
  }

  v42 = v100;
LABEL_59:
  v98 = v42;
  specialized Array.append<A>(contentsOf:)(v101);
  specialized Array.append<A>(contentsOf:)(v98);
}