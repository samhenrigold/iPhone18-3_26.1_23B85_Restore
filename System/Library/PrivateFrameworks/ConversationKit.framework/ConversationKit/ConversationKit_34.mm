uint64_t CNContactStore.contactHandles(for:)(void *a1)
{
  v12 = MEMORY[0x1E69E7CD0];
  v2 = [a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    specialized Set._Variant.insert(_:)(v11, v3, v5);
  }

  v7 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(a1);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      specialized Set._Variant.insert(_:)(v11, v7, v8);
    }
  }

  return _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
}

Class @objc CNContactStore.contactsByHandle(for:keyDescriptors:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  CNContactStore.contactsByHandle(for:keyDescriptors:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t ParticipantListViewConstraintManager.__allocating_init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

Swift::Int ParticipantListViewConstraintManager.ParticipantListLayoutType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantListViewConstraintManager.ParticipantListLayoutType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ParticipantListViewConstraintManager.ParticipantListLayoutType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

double ParticipantListViewConstraintManager.type.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
  return ParticipantListViewConstraintManager.updateConstraints()();
}

double (*ParticipantListViewConstraintManager.type.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ParticipantListViewConstraintManager.type.modify;
}

double ParticipantListViewConstraintManager.type.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ParticipantListViewConstraintManager.updateConstraints()();
  }

  return result;
}

void *ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(void *a1, id a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  *(v7 + 96) = MEMORY[0x1E69E7CC0];
  *(v7 + 104) = a4;
  v13 = [a2 leadingAnchor];
  v88 = a5;
  v14 = [a5 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v93);
  v15 = OUTLINED_FUNCTION_2_52();
  v17 = [v15 v16];

  v8[2] = v17;
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, v90);
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v21 = [a2 leadingAnchor];
    v22 = [a1 leadingAnchor];
    static Layout.Roster.iOS.getter(v99);
    v23 = v101;
    static Layout.Roster.iOS.getter(v94);
    v24 = v23 + v95;
  }

  else
  {
LABEL_7:
    Layout.MultiwayFaceTime.init()(v94);
    v25 = v96;
    static Layout.Roster.iOS.getter(v97);
    v26 = v25 + v98;
    static Layout.Roster.iOS.getter(v99);
    v27 = v26 + v100;
    v21 = [a2 leadingAnchor];
    v22 = [a1 leadingAnchor];
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    v28 = Features.isICUIRedesignEnabled.getter();
    v24 = 0.0;
    if (v28)
    {
      v24 = v27;
    }
  }

  v29 = [v21 constraintEqualToAnchor:v22 constant:v24];

  v8[3] = v29;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v30 = Features.isICUIRedesignEnabled.getter();
  v31 = [a2 trailingAnchor];
  if (v30)
  {
    v32 = [a1 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v102);
    v33 = [v31 constraintEqualToAnchor:v32 constant:-v103];

    v8[4] = v33;
    v34 = [a2 topAnchor];
    v35 = [a7 bottomAnchor];
    v36 = [v18 currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if (v37 || (OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, v91), static AmbientState.isPresented != 1) || (v38 = Features.isICUIRedesignEnabled.getter(), v39 = 10.0, (v38 & 1) == 0))
    {
      v39 = 16.0;
    }

    v40 = [v34 constraintEqualToAnchor:v35 constant:v39];

    v8[5] = v40;
    v41 = [a2 bottomAnchor];
    v42 = [a1 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v104);
    v43 = [v41 constraintEqualToAnchor:v42 constant:-v106];

    v8[6] = v43;
    v44 = [a2 heightAnchor];
    v45 = [a6 heightAnchor];
    v46 = [v18 currentDevice];
    v47 = [v46 userInterfaceIdiom];

    v48 = 0.0;
    if (v47)
    {
      v49 = &selRef_isRecordingAllowed;
      v50 = &off_1E7FE9000;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, v92);
      v50 = &off_1E7FE9000;
      if (static AmbientState.isPresented == 1)
      {
        v49 = &selRef_isRecordingAllowed;
        if (Features.isICUIRedesignEnabled.getter())
        {
          static Layout.Roster.iOS.getter(v107);
          v48 = v108;
        }
      }

      else
      {
        v49 = &selRef_isRecordingAllowed;
      }
    }

    v64 = [v44 v49[96]];
    v54 = a1;
  }

  else
  {
    v51 = [a6 leadingAnchor];
    v52 = [v31 constraintEqualToAnchor_];

    v8[4] = v52;
    v53 = [a2 topAnchor];
    v54 = a1;
    v55 = [a1 topAnchor];
    static Layout.Roster.iOS.getter(v107);
    v56 = OUTLINED_FUNCTION_2_52();
    v58 = [v56 v57];

    v8[5] = v58;
    v59 = [a2 bottomAnchor];
    v60 = [a1 bottomAnchor];
    static Layout.Roster.iOS.getter(v102);
    v61 = OUTLINED_FUNCTION_2_52();
    v63 = [v61 v62];

    v8[6] = v63;
    v44 = [a2 heightAnchor];
    v45 = [a6 heightAnchor];
    static Layout.Roster.iOS.getter(v104);
    v64 = [v44 constraintEqualToAnchor:v45 constant:v105];
    v50 = &off_1E7FE9000;
  }

  v65 = v64;

  v8[7] = v65;
  v66 = [a2 v50[476]];
  v67 = [v54 v50[476]];
  static Layout.Roster.iOS.getter(&v110);
  v68 = OUTLINED_FUNCTION_2_52();
  v70 = [v68 v69];

  v8[8] = v70;
  v71 = [a2 leadingAnchor];
  v72 = [a6 leadingAnchor];
  v73 = OUTLINED_FUNCTION_2_52();
  v75 = [v73 v74];

  v8[9] = v75;
  v76 = [a2 trailingAnchor];
  v77 = [a6 trailingAnchor];
  v78 = OUTLINED_FUNCTION_2_52();
  v80 = [v78 v79];

  v8[10] = v80;
  v81 = [a2 bottomAnchor];
  v82 = [v54 bottomAnchor];
  static Layout.Roster.iOS.getter(&v111);
  v83 = OUTLINED_FUNCTION_2_52();
  v85 = [v83 v84];

  v8[11] = v85;
  ParticipantListViewConstraintManager.updateConstraints()();

  return v8;
}

double ParticipantListViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)()
{
  OUTLINED_FUNCTION_4_0(v0 + 96, v2);

  return result;
}

double ParticipantListViewConstraintManager.updateConstraints()()
{
  v1 = v0;
  v2 = (*(*v0 + 200))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  v10 = v3;
  *(v3 + 16) = xmmword_1BC4BA7F0;
  if (!v2)
  {
    v18 = *(v1 + 16);
    v19 = *(v1 + 32);
    *(v3 + 32) = v18;
    *(v3 + 40) = v19;
    v20 = *(v1 + 48);
    v21 = *(v1 + 56);
    *(v3 + 48) = v20;
    *(v3 + 56) = v21;
    OUTLINED_FUNCTION_2_101(v3, v4, v5, v6, v7, v8, v9);
    *(v1 + 96) = v10;
    v22 = v18;
    v23 = v19;
    v24 = v20;
LABEL_9:
    v31 = v21;

    return result;
  }

  if (v2 != 1)
  {
    v25 = *(v1 + 80);
    v26 = *(v1 + 88);
    v21 = *(v1 + 64);
    v27 = *(v1 + 72);
    *(v3 + 32) = v27;
    *(v3 + 40) = v25;
    *(v3 + 48) = v26;
    *(v3 + 56) = v21;
    OUTLINED_FUNCTION_2_101(v3, v4, v5, v6, v7, v8, v9);
    *(v1 + 96) = v10;
    v28 = v27;
    v29 = v25;
    v30 = v26;
    goto LABEL_9;
  }

  v32 = *(v1 + 24);
  v33 = *(v1 + 48);
  *(v3 + 32) = v32;
  *(v3 + 48) = v33;
  OUTLINED_FUNCTION_2_101(v3, v4, v5, v6, v7, v8, v9);
  *(v1 + 96) = v10;
  v11 = v32;
  v12 = *(&v32 + 1);
  v13 = v33;
  v14 = *(&v33 + 1);

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v16 = *(v1 + 40);
    swift_beginAccess();
    v17 = v16;
    MEMORY[0x1BFB20CC0]();
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  return result;
}

uint64_t ParticipantListViewConstraintManager.__deallocating_deinit()
{
  ParticipantListViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType()
{
  result = lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType;
  if (!lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantListViewConstraintManager.ParticipantListLayoutType and conformance ParticipantListViewConstraintManager.ParticipantListLayoutType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantListViewConstraintManager.ParticipantListLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t ActivityType.iconSymbolName.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 6516580;
      break;
    case 3:
      result = OUTLINED_FUNCTION_5_80();
      break;
    case 4:
      result = 0x76742E79616C70;
      break;
    case 5:
      result = 0x722E657275676966;
      break;
    case 6:
    case 0xD:
      result = 0xD000000000000028;
      break;
    case 7:
      result = 0x74656B636F72;
      break;
    case 8:
      result = 6775138;
      break;
    case 9:
      result = 1802465122;
      break;
    case 0xA:
      result = 0x65626F6C67;
      break;
    case 0xB:
      result = 0x65762E736B6F6F62;
      break;
    case 0xC:
      result = 0x656C626269726373;
      break;
    default:
      return result;
  }

  return result;
}

id TUConversationActivitySession.originator.getter()
{
  v1 = [v0 activity];
  v2 = [v1 originator];

  return v2;
}

uint64_t TUConversationActivitySession.concatenatedDescription.getter()
{
  v1 = [v0 activity];
  v2 = [v1 concatenatedDescription];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t TUConversationActivitySession.uniqueIdentifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  (*(v2 + 8))(v5, v1);
  return v7;
}

id UIImage.activityTinted.getter()
{
  v1 = [objc_opt_self() lightGrayColor];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];

  return v2;
}

void one-time initialization function for watchTogether(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(v4);
  v5 = static UIImage.symbolImage(for:)(v7);
  outlined destroy of SymbolImageDescription(v7);
  if (v5)
  {
    v6 = UIImage.activityTinted.getter();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

id one-time initialization function for watchTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x76742E79616C70, 0xE700000000000000);
  static ActivityType.Icon.watchTogether = result;
  return result;
}

id one-time initialization function for listenTogether()
{
  v0 = OUTLINED_FUNCTION_5_80();
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(v0, v1);
  static ActivityType.Icon.listenTogether = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v4 = *MEMORY[0x1E69DDD80];
  v8[64] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = 1;
  v9[3] = v4;
  v10 = 0;
  v11 = 4;
  v12 = 0;
  v13 = 0;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = 1;
  v14[3] = v4;
  v15 = 0;
  v16 = 4;
  v17 = 0;
  v18 = 0;
  v5 = v4;
  outlined init with copy of SymbolImageDescription(v9, v8);
  outlined destroy of SymbolImageDescription(v14);
  v6 = static UIImage.symbolImage(for:)(v9);
  outlined destroy of SymbolImageDescription(v9);
  return v6;
}

id one-time initialization function for playTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x74656B636F72, 0xE600000000000000);
  static ActivityType.Icon.playTogether = result;
  return result;
}

id one-time initialization function for workoutTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x722E657275676966, 0xEA00000000006E75);
  static ActivityType.Icon.workoutTogether = result;
  return result;
}

id one-time initialization function for shopTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(6775138, 0xE300000000000000);
  static ActivityType.Icon.shopTogether = result;
  return result;
}

id one-time initialization function for readTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(1802465122, 0xE400000000000000);
  static ActivityType.Icon.readTogether = result;
  return result;
}

id one-time initialization function for exploreTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x65626F6C67, 0xE500000000000000);
  static ActivityType.Icon.exploreTogether = result;
  return result;
}

id one-time initialization function for learnTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x65762E736B6F6F62, 0xEE006C6163697472);
  static ActivityType.Icon.learnTogether = result;
  return result;
}

id one-time initialization function for createTogether()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x656C626269726373, 0xE800000000000000);
  static ActivityType.Icon.createTogether = result;
  return result;
}

id one-time initialization function for collaboration()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(6516580, 0xE300000000000000);
  static ActivityType.Icon.collaboration = result;
  return result;
}

id one-time initialization function for other()
{
  result = closure #1 in variable initialization expression of static ActivityType.Icon.watchTogether(0x616C706572616873, 0xE900000000000079);
  static ActivityType.Icon.other = result;
  return result;
}

uint64_t ActivityType.placeholderImage.getter()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Image.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t ActivityType.icon.getter()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        swift_once();
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

Swift::Int ActivityType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityType(uint64_t a1)
{
  Hasher.init(_seed:)();
  ActivityType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized Activity.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Collaboration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t Activity.collaboration.getter()
{
  type metadata accessor for Collaboration(0);
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t specialized Activity.stagedCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StagedCollaboration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t Activity.stagedCollaboration.getter()
{
  type metadata accessor for StagedCollaboration(0);
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id TUConversationActivitySession.preferredBroadcastingAttributes.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 preferredBroadcastingAttributes];

  return v3;
}

uint64_t TUConversationActivitySession.generateSplitSessionState.getter()
{
  if ([v0 state] != 4)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 neighborhoodActivityConduit];

  v3 = [v2 activeSplitSessionTV];
  if (!v3)
  {
    return 0;
  }

  return 1;
}

void TUConversationActivitySession.generateType.getter(char *a1@<X8>)
{
  v5 = [v1 activity];
  v6 = [v5 metadata];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 context];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 typedIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  v11 = v11 && v2 == v10;
  if (v11)
  {

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_119(v9);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v14)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_119(v13);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_19:
    v12 = 1;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v17)
  {

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_119(v16);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_27:
    v12 = 3;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v20)
  {

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_0_119(v19);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_35:
    v12 = 7;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v23)
  {

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_0_119(v22);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_43:
    v12 = 4;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v26)
  {

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_0_119(v25);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_51:
    v12 = 5;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v29)
  {

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_0_119(v28);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_59:
    v12 = 8;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v32)
  {

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_119(v31);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_67:
    v12 = 9;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v35)
  {

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_0_119(v34);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_75:
    v12 = 10;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v38)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0_119(v37);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_83:
    v12 = 11;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v41)
  {

    goto LABEL_91;
  }

  OUTLINED_FUNCTION_0_119(v40);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_91:
    v12 = 12;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v44)
  {

    goto LABEL_99;
  }

  OUTLINED_FUNCTION_0_119(v43);
  OUTLINED_FUNCTION_32_1();

  if (v3)
  {

LABEL_99:
    v12 = 6;
    goto LABEL_11;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_104();
  OUTLINED_FUNCTION_2_102();
  if (v11 && v2 == v47)
  {

    v12 = 13;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_0_119(v46);

    if (v49)
    {
      v12 = 13;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_11:
  *a1 = v12;
}

void TUConversationActivitySession.updatedAt.getter()
{
  v1 = [v0 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t TUConversationActivitySession.activeRemoteParticipantCount.getter()
{
  v1 = [v0 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Set.count.getter();

  return v2;
}

id TUConversationActivitySession.isScreenSharing.getter(SEL *a1)
{
  v3 = [v1 activity];
  v4 = [v3 *a1];

  return v4;
}

uint64_t TUConversationActivitySession.title.getter(SEL *a1)
{
  v3 = [v1 activity];
  v4 = [v3 metadata];

  if (v4)
  {
    return outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v4, a1);
  }

  else
  {
    return 0;
  }
}

id TUConversationActivitySession.image.getter()
{
  result = TUConversationActivitySession.generateImage.getter();
  if (!result)
  {
    TUConversationActivitySession.generateType.getter(&v1);
    return ActivityType.placeholderImage.getter();
  }

  return result;
}

id TUConversationActivitySession.generateImage.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.imageData.getter(v2);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  return UIImage.__allocating_init(data:)(v6, v7);
}

id TUConversationActivitySession.ongoingDescription.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  if (v2)
  {
    v3 = [v2 context];

    v4 = [v3 ongoingDescription];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t TUConversationActivitySession.metadataHash.getter()
{
  v1 = [v0 activity];
  v2 = [v1 metadata];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30TUConversationActivityMetadataCSgMd, &_sSo30TUConversationActivityMetadataCSgMR);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivityMetadata and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
  v3 = Optional<A>.hashValue.getter();

  return v3;
}

id Activity.linkMetadata.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v5 = a2[6](a1, a2);
  if (v6)
  {
    v7 = MEMORY[0x1BFB209B0](v5);
  }

  else
  {
    v7 = 0;
  }

  [v4 setTitle_];

  v8 = a2[7](a1, a2);
  if (v9)
  {
    v10 = MEMORY[0x1BFB209B0](v8);
  }

  else
  {
    v10 = 0;
  }

  [v4 setSummary_];

  v11 = a2[8](a1, a2);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
    [v4 setImage_];
  }

  return v4;
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType()
{
  result = lazy protocol witness table cache variable for type ActivityType and conformance ActivityType;
  if (!lazy protocol witness table cache variable for type ActivityType and conformance ActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityType and conformance ActivityType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivityMetadata.imageData.getter(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t AspectRatioLayout.spaceOffered(to:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  static ProposedViewSize.unspecified.getter();
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.sizeThatFits(_:)();
    v11 = v10;
    v13 = v12;
    v14 = static ContentMode.== infix(_:_:)();
    v15 = a3 & 1;
    if (v14)
    {
      v16 = CGSize.scaledToFit(_:)(a2, v15, a4, a5 & 1, v11, v13);
    }

    else
    {
      v16 = CGSize.scaledToFill(_:)(a2, v15, a4, a5 & 1, v11, v13);
    }

    return *&v16;
  }

  return a2;
}

double CGSize.scaledToFit(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double, double), double a6, double a7)
{
  static ProposedViewSize.unspecified.getter();
  v14 = a2 & 1;
  v15 = a4 & 1;
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    a5(a1, v14, a3, v15, a6, a7);
    if (a6 == 0.0)
    {
      return 0.0;
    }

    else
    {
      return v16 * a6;
    }
  }

  return a6;
}

uint64_t AspectRatioLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  specialized Collection.first.getter(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = outlined destroy of TapInteractionHandler?(v7, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_4_86();
    v19(v18);
    type metadata accessor for LayoutSubviews();
    lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
    OUTLINED_FUNCTION_5_81();
    dispatch thunk of Collection.startIndex.getter();
    OUTLINED_FUNCTION_5_81();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() == 1)
    {
      AspectRatioLayout.spaceOffered(to:in:)(v17, a1, a2 & 1, a3, a4 & 1, a7 & 1);
      LayoutSubview.sizeThatFits(_:)();
      v20 = OUTLINED_FUNCTION_2_103();
      return v21(v20);
    }

    v23 = OUTLINED_FUNCTION_2_103();
    result = v24(v23);
  }

  __break(1u);
  return result;
}

uint64_t AspectRatioLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  specialized Collection.first.getter(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    return outlined destroy of TapInteractionHandler?(v7, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  v20 = OUTLINED_FUNCTION_4_86();
  v21(v20);
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  OUTLINED_FUNCTION_5_81();
  dispatch thunk of Collection.startIndex.getter();
  OUTLINED_FUNCTION_5_81();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 1)
  {
    v24.origin.x = OUTLINED_FUNCTION_18_1();
    CGRectGetMidX(v24);
    v25.origin.x = OUTLINED_FUNCTION_18_1();
    CGRectGetMidY(v25);
    static UnitPoint.center.getter();
    AspectRatioLayout.spaceOffered(to:in:)(v18, a1, a2 & 1, a3, a4 & 1, a7 & 1);
    LayoutSubview.place(at:anchor:proposal:)();
  }

  v22 = OUTLINED_FUNCTION_2_103();
  return v23(v22);
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(uint64_t a1, uint64_t a2, char a3)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(a1, a2, a3);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AspectRatioLayout(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_1_105(a1, a2, a3);
  return v3();
}

void (*protocol witness for Animatable.animatableData.modify in conformance AspectRatioLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

double ContentFillLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t ContentFillLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v26 = a2;
  v27 = a4;
  v28 = a1;
  v29 = a3;
  v8 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = type metadata accessor for LayoutSubviews();
  (*(*(v19 - 8) + 16))(v18, a5, v19);
  v20 = *(v16 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  v21 = (v10 + 16);
  v22 = (v10 + 8);
  v23 = v26 & 1;
  v27 &= 1u;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v18[v20] == v31[0])
    {
      break;
    }

    v24 = dispatch thunk of Collection.subscript.read();
    (*v21)(v14);
    v24(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    static UnitPoint.topLeading.getter();
    LOBYTE(v31[0]) = v23;
    v30 = v27;
    LayoutSubview.place(at:anchor:proposal:)();
    (*v22)(v14, v8);
  }

  return outlined destroy of TapInteractionHandler?(v18, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
}

void (*protocol witness for Animatable.animatableData.modify in conformance ContentFillLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

double CGSize.scaled(by:)(double a1, double a2)
{
  v2 = a1 * a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return v2;
}

CGSize __swiftcall CGSize.scaled(by:)(CGSize by)
{
  v3 = by.width * v1;
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = by.height * v2;
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

double CGSize.scaleThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if ((a2 & 1) != 0 || a5 == 0.0 && *&a1 == 0.0)
  {
    result = INFINITY;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *&a1 / a5;
    if (a4)
    {
LABEL_9:
      v7 = INFINITY;
      goto LABEL_11;
    }
  }

  if (a6 == 0.0 && *&a3 == 0.0)
  {
    goto LABEL_9;
  }

  v7 = *&a3 / a6;
LABEL_11:
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

double CGSize.scaleThatFills(_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if ((a2 & 1) != 0 || a5 == 0.0 && *&a1 == 0.0)
  {
    result = -INFINITY;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *&a1 / a5;
    if (a4)
    {
LABEL_9:
      v7 = -INFINITY;
      goto LABEL_11;
    }
  }

  if (a6 == 0.0 && *&a3 == 0.0)
  {
    goto LABEL_9;
  }

  v7 = *&a3 / a6;
LABEL_11:
  if (result <= v7)
  {
    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspectRatioLayout and conformance AspectRatioLayout()
{
  result = lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout;
  if (!lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspectRatioLayout and conformance AspectRatioLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentFillLayout and conformance ContentFillLayout()
{
  result = lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout;
  if (!lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentFillLayout and conformance ContentFillLayout);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AspectRatioLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *CallScreeningRTTHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_9_6(&one-time initialization token for shared);
  }

  return &static CallScreeningRTTHelper.shared;
}

uint64_t static CallScreeningRTTHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_9_6(&one-time initialization token for shared);
  }
}

uint64_t CallScreeningRTTHelper.().init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd, &_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMR);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  if (one-time initialization token for answeringMachine != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.answeringMachine);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

Swift::Void __swiftcall CallScreeningRTTHelper.setupObservers()()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_callStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_callRTTStatusChanged_ name:*MEMORY[0x1E69D8F08] object:0];
}

Swift::Void __swiftcall CallScreeningRTTHelper.saveCaptions(_:for:)(Swift::OpaquePointer _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = [objc_opt_self() sharedInstance];
  v15 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  v23 = [v14 callWithCallUUID_];

  if (!v23)
  {
LABEL_6:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if ([v23 isActive])
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_._rawValue, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v24;
    swift_endAccess();
    (*(v9 + 16))(v13, v3 + OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger, v7);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_23();
      v25[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
      _os_log_impl(&dword_1BBC58000, v17, v18, "CallScreeningRTTHelper: saved captions for callUUID %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    (*(v9 + 8))(v13, v7);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall CallScreeningRTTHelper.syncCaptionsToRTT(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v8 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v15 = static CallScreeningViewModelComposer.viewModel;

  if (TranscriptionViewModel.callUUID.getter() == countAndFlagsBits && v16 == object)
  {

    goto LABEL_11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_11:
    v22 = v10;
    v21 = TranscriptionViewModel.captions.getter();
    goto LABEL_12;
  }

  swift_beginAccess();

  v20 = specialized Dictionary.subscript.getter(v19);

  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = v10;
LABEL_12:
  v23 = *(v21 + 16);
  if (v23)
  {
    v28[1] = v15;
    v29 = *(*v1 + 176);
    v24 = *(v22 + 80);
    v25 = v8;
    v28[0] = v21;
    v26 = v21 + ((v24 + 32) & ~v24);
    v27 = *(v22 + 72);
    do
    {
      outlined init with copy of TranscriptionViewModel.Caption(v26, v14);
      outlined init with copy of TranscriptionViewModel.Caption(v14, v7);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v25);
      v29(v7, countAndFlagsBits, object);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
      outlined destroy of TranscriptionViewModel.Caption(v14);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

LABEL_16:

  OUTLINED_FUNCTION_30_0();
}

void CallScreeningRTTHelper.syncCaptionToRTT(_:callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v43 = v9;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_4();
  v15 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v39 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v39 - v23);
  outlined init with copy of TranscriptionViewModel.Caption?(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  }

  else
  {
    v41 = a2;
    v42 = a3;
    outlined init with take of TranscriptionViewModel.Caption(v4, v24);
    (*(v43 + 16))(v12, v3 + OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger, v44);
    outlined init with copy of TranscriptionViewModel.Caption(v24, v21);
    outlined init with copy of TranscriptionViewModel.Caption(v24, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_23();
      v45 = v40;
      *v27 = 134349314;
      v28 = *v21;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](v28);
      v29 = Hasher._finalize()();
      outlined destroy of TranscriptionViewModel.Caption(v21);
      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = &v18[*(v15 + 28)];
      v31 = *v30;
      v32 = v30[1];

      outlined destroy of TranscriptionViewModel.Caption(v18);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v45);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_1BBC58000, v25, v26, "CallScreeningRTTHelper: sending notification for caption %{public}ld: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      outlined destroy of TranscriptionViewModel.Caption(v21);

      outlined destroy of TranscriptionViewModel.Caption(v18);
    }

    (*(v43 + 8))(v12, v44);
    v34 = [objc_opt_self() sharedInstance];
    v35 = MEMORY[0x1BFB209B0](*(v24 + *(v15 + 28)), *(v24 + *(v15 + 28) + 8));
    v36 = *v24;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v36);
    Hasher._finalize()();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v38 = MEMORY[0x1BFB209B0](v41, v42);
    [v34 processCallScreeningTranscription:v35 transcriptionID:isa callUUID:v38];

    outlined destroy of TranscriptionViewModel.Caption(v24);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t CallScreeningRTTHelper.shouldShowScreeningRTT(for:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (TUCallScreeningRTTEnabled())
  {
    if ([v1 isRTT])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v1 isTTY];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Swift::Bool __swiftcall CallScreeningRTTHelper.shouldShowScreeningRTT(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = [objc_opt_self() sharedInstance];
  v5 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  v6 = [v4 callWithCallUUID_];

  LOBYTE(v5) = (*(*v1 + 184))(v6);
  return v5 & 1;
}

void CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  Notification.object.getter();
  if (v17)
  {
    type metadata accessor for TUCall();
    if (OUTLINED_FUNCTION_15_35())
    {
      v4 = *(*v0 + 184);
      v5 = v15;
      v6 = v4();

      if (v6)
      {
        v7 = [v5 callUUID];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        static TaskPriority.userInitiated.getter();
        v11 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_19_28(v11);

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E85E0];
        v13[2] = v12;
        v13[3] = v14;
        v13[4] = v1;
        v13[5] = v8;
        v13[6] = v10;
        OUTLINED_FUNCTION_11_57();
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 88) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);
  }

  else
  {
    v7 = closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{

  v1 = OUTLINED_FUNCTION_13_48();
  v2(v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_23();
    *(v9 + 4) = OUTLINED_FUNCTION_17_42(4.8751e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
    OUTLINED_FUNCTION_16_41(&dword_1BBC58000, v18, v19, "CallScreeningRTTHelper: syncing captions to RTT on call upgrade for callUUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  (*(v7 + 8))(v6, v8);
  (*(**(v0 + 16) + 168))(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_13();

  return v20();
}

{

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t CallScreeningRTTHelper.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CallScreeningRTTHelper.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit22CallScreeningRTTHelper_mainActorLogger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of TranscriptionViewModel.Caption(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TranscriptionViewModel.Caption?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)()
{
  OUTLINED_FUNCTION_12_50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_87(v1);

  return closure #1 in CallScreeningRTTHelper.callRTTStatusChanged(_:)(v2, v3, v4, v5, v6, v7);
}

uint64_t type metadata accessor for CallScreeningRTTHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for CallScreeningRTTHelper;
  if (!type metadata singleton initialization cache for CallScreeningRTTHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallScreeningRTTHelper(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CallScreeningRTTHelper.shouldShowScreeningRTT(for:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 16))(v1, a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t static ButtonStyle<>.notice.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v3 = *(type metadata accessor for NoticeButtonStyle(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for NoticeButtonStyle(uint64_t a1)
{
  result = type metadata singleton initialization cache for NoticeButtonStyle;
  if (!type metadata singleton initialization cache for NoticeButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeButtonStyle.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  outlined init with copy of Environment<ColorScheme>.Content(v3, &v16 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    OUTLINED_FUNCTION_20_3();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v14, &dword_1BBC58000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v2, v5);
  }
}

uint64_t NoticeButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  ButtonStyleConfiguration.label.getter();
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  LOBYTE(v10) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v13 = &v5[*(v2 + 44)];
  *v13 = v10;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  static Color.gray.getter();
  ButtonStyleConfiguration.isPressed.getter();
  v18 = Color.opacity(_:)();

  v19 = &v9[*(v6 + 44)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v21 = v19 + *(v20 + 52);
  v22 = *(type metadata accessor for RoundedRectangle() + 20);
  v23 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_20_3();
  (*(v24 + 104))(&v21[v22], v23);
  __asm { FMOV            V0.2D, #5.0 }

  *v21 = _Q0;
  *v19 = v18;
  *(v19 + *(v20 + 56)) = 256;
  outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v5, v9, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMR) + 36);
  v31 = *MEMORY[0x1E6981DB8];
  type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_20_3();
  (*(v32 + 104))(a1 + v30, v31);
  return outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v9, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMR);
}

uint64_t default argument 0 of NoticeButtonStyle.init(colorScheme:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NoticeButtonStyle.init(colorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(a1, a2, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v3 = *(type metadata accessor for NoticeButtonStyle(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA8MaterialVSg_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for EnvironmentValues.backgroundMaterial : EnvironmentValues(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8MaterialVSgMd, &_s7SwiftUI8MaterialVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  outlined init with copy of Environment<ColorScheme>.Content(a1, &v5 - v3, &_s7SwiftUI8MaterialVSgMd, &_s7SwiftUI8MaterialVSgMR);
  return EnvironmentValues.backgroundMaterial.setter();
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void type metadata completion function for NoticeButtonStyle(uint64_t a1)
{
  type metadata accessor for Environment<ColorScheme>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Material?>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

void type metadata accessor for Environment<Material?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<Material?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI8MaterialVSgMd, &_s7SwiftUI8MaterialVSgMR);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<Material?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGAA16_BlendModeEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeL0VyAkA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(v1);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(double a1)
{
  result = lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label);
  }

  return result;
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t ParticipantPresentationContext.init(idsIdentifier:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  return result;
}

uint64_t ParticipantPresentationContext.init(participant:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v20 = a1 + *(type metadata accessor for Participant(0) + 28);
  if (!*v20)
  {
    result = outlined destroy of Participant(a1);
    goto LABEL_5;
  }

  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  result = outlined destroy of Participant(a1);
  if (v22)
  {
LABEL_5:
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    v24 = 2;
    goto LABEL_6;
  }

  v24 = a5 & 1;
  *a6 = v21;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
LABEL_6:
  *(a6 + 64) = v24;
  return result;
}

uint64_t static ParticipantPresentationContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 64);
  v6 = *(a2 + 64);
  if (CGRectEqualToRect(*(a1 + 32), *(a2 + 32)))
  {
    return v5 ^ v6 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for ParticipantPresentationContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for ParticipantPresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t key path getter for ParticipantInfoView.isExpanded : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

id ParticipantInfoView.isExpanded.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded;
  swift_beginAccess();
  if (v1[v2])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(v3);
  ParticipantViewButton.image.setter(v4);
  return [v1 setNeedsLayout];
}

uint64_t ParticipantInfoView.isExpanded.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ParticipantInfoView.isExpanded.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL ParticipantInfoView.shouldUseConcentricRadius.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0 || *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant) != 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 0;
}

id ParticipantInfoView.customCornerRadius.didset(uint64_t a1)
{
  result = ParticipantInfoView.shouldUseConcentricRadius.getter(a1);
  if ((result & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView);
    v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
    swift_beginAccess();
    return [v3 _setContinuousCornerRadius_];
  }

  return result;
}

double ParticipantInfoView.customCornerRadius.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

id ParticipantInfoView.customCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius;
  v4 = OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius, v6);
  *(v1 + v3) = a1;
  return ParticipantInfoView.customCornerRadius.didset(v4);
}

uint64_t ParticipantInfoView.customCornerRadius.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path setter for ParticipantInfoView.concentricCornerStyle : ParticipantInfoView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v7);
}

uint64_t ParticipantInfoView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  result = ParticipantInfoView.shouldUseConcentricRadius.getter(v4);
  if (result)
  {
    v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
    swift_beginAccess();
    v7 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v7 - 8) + 16))(v3, v0 + v6, v7);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
    return UIView.cornerMaskingConfiguration.setter();
  }

  return result;
}

uint64_t ParticipantInfoView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ParticipantInfoView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantInfoView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t ParticipantInfoView.concentricCornerStyle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantInfoView.isMomentsAvailable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t key path getter for ParticipantInfoView.isMomentsAvailable : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

id ParticipantInfoView.isMomentsAvailable.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (one-time initialization token for shutterButtonEnabled != -1)
    {
      swift_once();
    }

    v2 = &static Colors.ParticipantViews.shutterButtonEnabled;
  }

  else
  {
    if (one-time initialization token for shutterButtonDisabled != -1)
    {
      swift_once();
    }

    v2 = &static Colors.ParticipantViews.shutterButtonDisabled;
  }

  return [*(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton) setTintColor_];
}

uint64_t ParticipantInfoView.isMomentsAvailable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ParticipantInfoView.recordingLocalVideo : ParticipantInfoView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void ParticipantInfoView.recordingLocalVideo.didset()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 592))())
  {
    v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton);
    if (v3 == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      SymbolImageDescribers.BottomBar.symbolImageDescription.getter();
      v5 = static UIImage.symbolImage(for:)(v6);
      outlined destroy of SymbolImageDescription(v6);
    }

    else
    {
      v5 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
    }

    [v4 setImage:v5 forState:0];
  }
}

uint64_t ParticipantInfoView.recordingLocalVideo.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ParticipantInfoView.isExpanded.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_3_5(v3 + *a2, v9);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t ParticipantInfoView.recordingLocalVideo.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantInfoView.isExpanded.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantInfoView.delegate : ParticipantInfoView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ParticipantInfoView.delegate : ParticipantInfoView(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ParticipantInfoView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate;
  OUTLINED_FUNCTION_3_5(v4, v6);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantInfoView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t ParticipantInfoView.localRecordingLayout.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 592))())
  {
    return *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant);
  }

  else
  {
    return 0;
  }
}

char *ParticipantInfoView.__allocating_init(localParticipant:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return ParticipantInfoView.init(localParticipant:)(v2);
}

char *ParticipantInfoView.init(localParticipant:)(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  type metadata accessor for ParticipantViewLabelContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
  [v7 setImage:v8 forState:0];

  *&v2[v6] = v7;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  type metadata accessor for ParticipantViewButton();
  v57 = &type metadata for ImageNames.ParticipantView;
  v58 = &protocol witness table for ImageNames.ParticipantView;
  LOBYTE(v56[0]) = 1;
  *&v2[v9] = ParticipantViewButton.__allocating_init(imageName:)(v56);
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius] = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_localParticipant] = a1;
  v10 = type metadata accessor for ParticipantInfoView(0);
  v55.receiver = v2;
  v55.super_class = v10;
  v11 = objc_msgSendSuper2(&v55, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  v13 = *&v11[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView];
  v14 = one-time initialization token for bottomGradient;
  v15 = v11;
  v16 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = static Colors.ParticipantViews.bottomGradient;
  v18 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  OUTLINED_FUNCTION_3_5(&v16[OBJC_IVAR____TtC15ConversationKit12GradientView_colors], v54);
  *&v16[v18] = v17;

  GradientView.updateGradient()();

  v19 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v20 = *&v15[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton];
  v57 = v10;
  v56[0] = v15;
  v21 = v15;
  v22 = v20;
  UIButton.add(target:action:)(v56, sel_didTapShutterButton, v23);

  outlined destroy of Any?(v56);
  v24 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  v25 = one-time initialization token for buttonIcon;
  v26 = *&v21[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton];
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setTintColor_];

  v27 = *&v21[v24];
  [v27 addTarget:v21 action:sel_didTapExpandButton forControlEvents:1];

  v28 = one-time initialization token for bottomBarText;
  v29 = *&v15[v19];
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = static Colors.ParticipantViews.bottomBarText;
  [v29 setTintColor_];

  v31 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  [*(*&v21[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label) setTextColor_];
  v32 = *&v21[v31];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v33 = *&v21[v31];
  v34 = [v33 layer];
  closure #1 in ParticipantInfoView.init(localParticipant:)(v34);

  v35 = *&v11[v12];
  v36 = [v35 layer];
  [v36 setMaskedCorners_];
  [v36 setMasksToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v38 = *&v11[v12];
  *(inited + 32) = v38;
  v39 = *&v15[v19];
  *(inited + 40) = v39;
  v40 = *&v21[v24];
  *(inited + 48) = v40;
  v53 = v31;
  v41 = *&v21[v31];
  *(inited + 56) = v41;
  v42 = (inited & 0xC000000000000001) == 0;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v42, inited);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(3, v42, inited);
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  for (i = 0; i != 4; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      v48 = *(inited + 8 * i + 32);
    }

    v49 = v48;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_11_2();
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      [v49 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    [v21 addSubview_];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v50 = one-time initialization token for bottomBarRegular;
  v51 = *(*&v21[v53] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
  if (v50 != -1)
  {
    swift_once();
  }

  [v51 setFont_];

  if (Features.isICUIRedesignEnabled.getter())
  {
    ParticipantInfoView.setUpConstraints()();
  }

  return v21;
}

id closure #1 in ParticipantInfoView.init(localParticipant:)(void *a1)
{
  if (one-time initialization token for bottomShadow != -1)
  {
    swift_once();
  }

  v2 = [static Colors.ParticipantViews.bottomShadow CGColor];
  [a1 setShadowColor_];

  LODWORD(v3) = 0.5;
  [a1 setShadowOpacity_];
  [a1 setShadowOffset_];

  return [a1 setShadowRadius_];
}

id ParticipantInfoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantInfoView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel;
  type metadata accessor for ParticipantViewLabelContainerView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV15ParticipantViewO_Tt0g5(0);
  [v5 setImage:v6 forState:0];

  *(v1 + v4) = v5;
  v7 = OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton;
  type metadata accessor for ParticipantViewButton();
  v9 = &type metadata for ImageNames.ParticipantView;
  v10 = &protocol witness table for ImageNames.ParticipantView;
  v8[0] = 1;
  *(v1 + v7) = ParticipantViewButton.__allocating_init(imageName:)(v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_isMomentsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_recordingLocalVideo) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantInfoView.configure(with:isMomentsAvailable:shouldHideShutterButton:)(Swift::String with, Swift::Bool isMomentsAvailable, Swift::Bool shouldHideShutterButton)
{
  v4 = v3;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v9);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v9);
  if (v15)
  {
    v16 = *(*(v4 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel) + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
    outlined bridged method (mbgnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v16);

    v17 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x158))(shouldHideShutterButton);
    (*((*v17 & *v4) + 0x100))(isMomentsAvailable);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantInfoView.configure(shouldHideShutterButton:)(Swift::Bool shouldHideShutterButton)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v4);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v4);
  if (v10)
  {
    [*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantInfoView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantInfoView(0);
  v1 = objc_msgSendSuper2(&v2, sel_layoutSubviews);
  ParticipantInfoView._layout()(v1);
}

void ParticipantInfoView._layout()(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_14();
    if (CGRectIsInfinite(v34) || (OUTLINED_FUNCTION_8_14(), CGRectIsEmpty(v35)))
    {
      OUTLINED_FUNCTION_11_58();
      return;
    }

    OUTLINED_FUNCTION_8_14();
    v7 = v6;
    v9 = v8;
    v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel);
    v11 = [*&v10[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] font];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    [v11 lineHeight];
    v14 = v13;

    v36.origin.x = OUTLINED_FUNCTION_3_97();
    v36.size.height = v9;
    v15 = CGRectGetMaxX(v36) + -10.0 + -32.0;
    v37.origin.x = OUTLINED_FUNCTION_3_97();
    v37.size.height = v9;
    v38.origin.y = CGRectGetMinY(v37) + 10.0;
    v38.origin.x = v15;
    rect = v38.origin.y;
    v38.size.width = 32.0;
    v38.size.height = 32.0;
    CGRectGetMinX(v38);
    ParticipantInfoView.localRecordingLayout.getter();
    v16 = OUTLINED_FUNCTION_3_97();
    v19 = v9;
    if (v20)
    {
      CGRectGetMidY(*&v16);
    }

    else
    {
      CGRectGetMaxY(*&v16);
    }

    v21 = ceil(v14);
    v32 = v15;
    v39.origin.x = v15;
    v39.origin.y = rect;
    v39.size.width = 32.0;
    v39.size.height = 32.0;
    MinX = CGRectGetMinX(v39);
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))())
    {
      v40.origin.x = OUTLINED_FUNCTION_4_88();
      MinX = CGRectGetMinX(v40);
    }

    v41.origin.x = OUTLINED_FUNCTION_4_88();
    v23 = CGRectGetMidY(v41) + v21 * -0.5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v24 = round(v23 * static UIView.screenScale.getter());
    v25 = v24 / static UIView.screenScale.getter();
    OUTLINED_FUNCTION_8_14();
    v26 = OUTLINED_FUNCTION_3_97();
    [v27 v28];
    [v10 setFrame_];
    v29 = OUTLINED_FUNCTION_4_88();
    [v30 v31];
    [*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton) setFrame_];
    [v10 setHidden_];
    ParticipantInfoView.localRecordingLayout.getter();
  }

  OUTLINED_FUNCTION_11_58();

  [v3 v4];
}

id ParticipantInfoView.setUpConstraints()()
{
  [*&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_gradientView] setHidden_];
  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA7F0;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_expandButton];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:10.0];

  *(v1 + 32) = v5;
  v6 = [v2 trailingAnchor];
  v7 = [v0 trailingAnchor];
  v8 = [v6 &selRef_uniqueProxyIdentifier + 6];

  *(v1 + 40) = v8;
  v9 = [v2 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v1 + 48) = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 &selRef_fillColor + 1];

  *(v1 + 56) = v12;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA7F0;
  v15 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_shutterButton];
  v16 = [v15 topAnchor];
  v17 = [v0 topAnchor];
  v18 = OUTLINED_FUNCTION_9_58(v17, sel_constraintEqualToAnchor_constant_);

  *(v14 + 32) = v18;
  v19 = [v15 trailingAnchor];
  v20 = [v2 leadingAnchor];
  v21 = OUTLINED_FUNCTION_9_58(v20, sel_constraintEqualToAnchor_constant_);

  *(v14 + 40) = v21;
  v22 = [v15 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v14 + 48) = v23;
  v24 = [v15 heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v14 + 56) = v25;
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BC370;
  v28 = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantInfoView_nameLabel];
  v29 = [v28 bottomAnchor];
  v30 = [v0 bottomAnchor];
  v31 = OUTLINED_FUNCTION_9_58(v30, sel_constraintEqualToAnchor_constant_);

  *(v27 + 32) = v31;
  v32 = [v28 leadingAnchor];
  v33 = [v0 leadingAnchor];
  v34 = OUTLINED_FUNCTION_9_58(v33, sel_constraintEqualToAnchor_constant_);

  *(v27 + 40) = v34;
  v35 = [v28 trailingAnchor];
  v36 = [v15 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-10.0];

  *(v27 + 48) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  [v28 setHidden_];
  v39 = ParticipantInfoView.localRecordingLayout.getter() & 1;

  return [v2 setHidden_];
}

uint64_t ParticipantInfoView.didTapExpandButton()()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ParticipantInfoView.didTapShutterButton()()
{
  v1 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*((*v1 & *v0) + 0xF8))();
    (*(v4 + 16))(v6 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id ParticipantInfoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantInfoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantInfoView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParticipantInfoView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantInfoView;
  if (!type metadata singleton initialization cache for ParticipantInfoView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantInfoView(uint64_t a1)
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
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

id specialized PictureInPictureWrapperViewController.init(wrappedViewController:)(uint64_t a1)
{
  v2 = &v1[direct field offset for PictureInPictureWrapperViewController.touchInsets];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  *(v2 + 1) = v3;
  *&v1[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] = a1;
  v5.receiver = v1;
  v5.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMd, &_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMR);
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t ScreenSharingSpectatorTip.title.getter()
{
  v1 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_106();
  OUTLINED_FUNCTION_20_30(27, v2, v3, v4);

  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t ScreenSharingSpectatorTip.message.getter()
{
  v1 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_106();
  OUTLINED_FUNCTION_20_30(39, v2, v3, v4);

  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t one-time initialization function for $isScreenSharingInteractive()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_allocate_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  v1 = OUTLINED_FUNCTION_46();
  __swift_project_value_buffer(v1, v2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);

  return __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
}

uint64_t static ScreenSharingSpectatorTip.$isScreenSharingInteractive.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ScreenSharingSpectatorTip.$isScreenSharingInteractive.setter(uint64_t a1)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_30_2(v3, v7);
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_46();
  return v5(v4);
}

uint64_t (*static ScreenSharingSpectatorTip.$isScreenSharingInteractive.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_30_2(v3, a1);
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static ScreenSharingSpectatorTip.$isScreenSharingInteractive : ScreenSharingSpectatorTip.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static ScreenSharingSpectatorTip.$isScreenSharingInteractive : ScreenSharingSpectatorTip.Type(uint64_t a1)
{
  v2 = ScreenSharingSpectatorTip.$isScreenSharingInteractive.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static ScreenSharingSpectatorTip.isScreenSharingInteractive.getter()
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t static ScreenSharingSpectatorTip.isScreenSharingInteractive.setter(char a1)
{
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  v5[31] = a1 & 1;
  OUTLINED_FUNCTION_30_2(v3, v5);
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify(void *a1))(uint64_t *a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v2[3] = v3;
  v2[4] = __swift_project_value_buffer(v3, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v4 = *(v2 + 41);
  swift_endAccess();
  *(v2 + 40) = v4;
  return static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify;
}

void static ScreenSharingSpectatorTip.isScreenSharingInteractive.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  *(*a1 + 41) = *(*a1 + 40);
  OUTLINED_FUNCTION_30_2(v2, v1);
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t ScreenSharingSpectatorTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Tips.Rule();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for $isScreenSharingInteractive != -1)
  {
    OUTLINED_FUNCTION_0_120(&one-time initialization token for $isScreenSharingInteractive);
  }

  v12 = __swift_project_value_buffer(v0, static ScreenSharingSpectatorTip.$isScreenSharingInteractive);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v11, v6);

  return v13;
}

uint64_t closure #2 in ScreenSharingSpectatorTip.rules.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR, MEMORY[0x1E6968DA8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  v12[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMR);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x1E6968D20]);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ScreenSharingSpectatorTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip();
  result = MEMORY[0x1BFB1DA00](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t ScreenSharingSpectatorView.isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for ScreenSharingSpectatorView.isCapturingTouch : <A>ScreenSharingSpectatorView<A>@<X0>(_BYTE *a1@<X8>)
{
  result = ScreenSharingSpectatorView.isCapturingTouch.getter();
  *a1 = result & 1;
  return result;
}

void (*ScreenSharingSpectatorView.isCapturingTouch.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *(v1 + 24);
  *v3 = v4;
  v3[6] = v3[1];
  v5 = (v3 + 6);
  *(v3 + 1) = v4;
  outlined init with copy of LinkShareCoordinatorProtocol?((v3 + 6), (v3 + 4), &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
  *(v5 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return ScreenSharingSpectatorView.isCapturingTouch.modify;
}

void ScreenSharingSpectatorView.isCapturingTouch.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  State.wrappedValue.setter();
  outlined destroy of TapInteractionHandler?(v1, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);

  free(v1);
}

uint64_t ScreenSharingSpectatorView.$isCapturingTouch.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t _s15ConversationKit26ScreenSharingSpectatorViewV5model7contentACyxGAA0cdeF5ModelC_xyctcfCAA09PictureInJ7WrapperVyAA013SharedContentF10ControllerCG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  State.init(wrappedValue:)();
  result = static Tips.configure(_:)();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ScreenSharingSpectatorView.init(model:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = property wrapper backing initializer of ScreenSharingSpectatorView.isCapturingTouch(0);
  v10 = v9;
  result = static Tips.configure(_:)();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v8 & 1;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR);
  OUTLINED_FUNCTION_7_2();
  v3 = type metadata accessor for ModifiedContent();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR);
  v34 = type metadata accessor for ScreenSharingSpectatorToolbar(255);
  v36 = *(a1 + 24);
  v59 = v36;
  v60 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E6980A18];
  v57 = WitnessTable;
  v58 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR, MEMORY[0x1E6980A18]);
  v55 = swift_getWitnessTable();
  v56 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR, v5);
  v53 = swift_getWitnessTable();
  v54 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v6 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v51 = v6;
  v52 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v7, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR, v8);
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_59();
  v49 = v9;
  v50 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v10, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, v11);
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_65();
  v15 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR, v14);
  OUTLINED_FUNCTION_7_67();
  v43 = v3;
  v44 = v35;
  v45 = v34;
  v46 = v12;
  v47 = v15;
  v48 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(v16, v17, &protocol conformance descriptor for ScreenSharingSpectatorToolbar);
  v18 = type metadata accessor for ScreenSharingContentView(255, &v43);
  type metadata accessor for ScreenSharingSpectatorViewModel(255);
  v19 = OUTLINED_FUNCTION_11_59();
  OUTLINED_FUNCTION_6_68();
  v22 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(v20, v21, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  v43 = v18;
  v44 = v15;
  v45 = v19;
  v46 = v22;
  OUTLINED_FUNCTION_5_82();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_7_2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v34 - v30;
  static Alignment.top.getter();
  v40 = v37;
  v41 = v36;
  v42 = v38;
  ZStack.init(alignment:content:)();
  OUTLINED_FUNCTION_2_104();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v25 + 8);
  v32(v28, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v32)(v31, v23);
}

uint64_t closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  OpaqueTypeConformance2 = a2;
  v82 = a4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v62 - v8;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR);
  v9 = type metadata accessor for ModifiedContent();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR);
  v68 = v10;
  v83 = type metadata accessor for ScreenSharingSpectatorToolbar(255);
  v11 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  v103 = a3;
  v104 = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E6980A18];
  v14 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR, MEMORY[0x1E6980A18]);
  v101 = WitnessTable;
  v102 = v14;
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR, v13);
  v99 = v15;
  v100 = v16;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v97 = v17;
  v98 = v18;
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR, MEMORY[0x1E697EC18]);
  v95 = v19;
  v96 = v20;
  v21 = swift_getWitnessTable();
  v22 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
  v93 = v21;
  v94 = v22;
  v74 = v9;
  v23 = swift_getWitnessTable();
  v66 = v23;
  v24 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TransitioningText<FadeOutFadeInTransition> and conformance TransitioningText<A>, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR, &protocol conformance descriptor for TransitioningText<A>);
  v65 = v24;
  v64 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar, type metadata accessor for ScreenSharingSpectatorToolbar, &protocol conformance descriptor for ScreenSharingSpectatorToolbar);
  v87 = v9;
  v88 = v10;
  v89 = v83;
  v90 = v23;
  v91 = v24;
  v92 = v64;
  v25 = type metadata accessor for ScreenSharingContentView(0, &v87);
  v75 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - v26;
  v28 = type metadata accessor for ScreenSharingSpectatorViewModel(255);
  v67 = v28;
  v29 = swift_getWitnessTable();
  v70 = v29;
  v69 = lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  v87 = v25;
  v88 = v28;
  v89 = v29;
  v90 = v69;
  v71 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
  v63 = &v62 - v36;
  LOBYTE(v28) = (*(**a1 + 264))(v35);
  v105 = *(a1 + 3);
  v37 = swift_allocObject();
  v38 = OpaqueTypeConformance2;
  v39 = v77;
  *(v37 + 16) = OpaqueTypeConformance2;
  *(v37 + 24) = v39;
  v40 = *(a1 + 1);
  *(v37 + 32) = *a1;
  *(v37 + 48) = v40;
  *(v37 + 64) = a1[4];
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  v42 = *(a1 + 1);
  *(v41 + 32) = *a1;
  *(v41 + 48) = v42;
  *(v41 + 64) = a1[4];
  *(&v61 + 1) = v65;
  *&v61 = v66;
  *(&v60 + 1) = v83;
  *&v60 = v68;
  ScreenSharingContentView.init(contentMode:content:title:toolbar:)(v28 & 1, partial apply for closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter, v37, partial apply for closure #2 in closure #1 in ScreenSharingSpectatorView.body.getter, v41, closure #3 in closure #1 in ScreenSharingSpectatorView.body.getter, 0, v74, v27, v60, v61, v64);

  outlined init with copy of LinkShareCoordinatorProtocol?(&v105, &v87, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);

  outlined init with copy of LinkShareCoordinatorProtocol?(&v105, &v87, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v43 = swift_checkMetadataState();
  v44 = v70;
  v45 = v69;
  View.environment<A>(_:)();
  (*(v75 + 8))(v27, v25);
  v87 = v25;
  v88 = v43;
  v89 = v44;
  v90 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v63;
  v47 = OpaqueTypeMetadata2;
  static ViewBuilder.buildExpression<A>(_:)();
  v48 = v72;
  v83 = *(v72 + 8);
  v83(v33, v47);
  v90 = &type metadata for ScreenSharingSpectatorTip;
  v91 = lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip();
  v49 = v79;
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v50 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v52 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  v53 = static Edge.Set.all.getter();
  v54 = v80;
  v55 = v49 + *(v80 + 36);
  *v55 = v53;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 1;
  v56 = v76;
  (*(v48 + 16))(v76, v46, v47);
  v87 = v56;
  v57 = v81;
  outlined init with copy of LinkShareCoordinatorProtocol?(v49, v81, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  v88 = v57;
  v86[0] = v47;
  v86[1] = v54;
  v84 = OpaqueTypeConformance2;
  v85 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(&v87, 2, v86);
  outlined destroy of TapInteractionHandler?(v49, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  v58 = v83;
  v83(v46, v47);
  outlined destroy of TapInteractionHandler?(v57, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  return v58(v56, v47);
}

uint64_t closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t (**a1)(double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v88 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR);
  v12 = type metadata accessor for ModifiedContent();
  v75 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v72 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR);
  v14 = type metadata accessor for ModifiedContent();
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v72 - v15;
  v78 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v80 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR);
  v79 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v83 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v72 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR);
  v85 = v19;
  v89 = type metadata accessor for ModifiedContent();
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v72 - v24;
  v25 = a1[1](v23);
  v26 = *a1;
  v27 = (*(**a1 + 840))(v25);
  v28 = (*(*v26 + 816))();
  v30 = v29;
  v31 = (*(*v26 + 832))();
  *&v105 = v28;
  *(&v105 + 1) = v30;
  v106 = v28;
  v107 = v30;
  v108 = 0;
  v109 = v31;
  View.bezelEffect(_:metrics:)(v27, &v105, a2);
  v32 = v73;

  v33 = *(v88 + 8);
  v87 = a2;
  v34 = v33(v8, a2);
  LOBYTE(v19) = (*(*v26 + 848))(v34);
  v35 = lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier();
  v88 = a3;
  v103 = a3;
  v104 = v35;
  WitnessTable = swift_getWitnessTable();
  View.bezelShieldMaterial(_:)(v19 & 1, v9);
  v37 = v11;
  v38 = a1;
  (*(v74 + 8))(v37, v9);
  if (ScreenSharingSpectatorView.isCapturingTouch.getter())
  {
    v39 = static Color.red.getter();
  }

  else
  {
    v39 = static Color.blue.getter();
  }

  v40 = v39;
  v41 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BezelShieldMaterial> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGMR, MEMORY[0x1E6980A18]);
  v101 = WitnessTable;
  v102 = v41;
  v42 = swift_getWitnessTable();
  View.bezelOutlineColor(_:)(v40, v12);

  v43 = (*(v75 + 8))(v32, v12);
  if ((*(*v26 + 264))(v43))
  {
    v44 = 0;
  }

  else
  {
    (*(*v26 + 784))(&v100);
    v44 = v100 == 1;
  }

  v45 = ScreenSharingSpectatorView.$isCapturingTouch.getter();
  v47 = v46;
  v49 = v48;
  v50 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVGMR, MEMORY[0x1E6980A18]);
  v98 = v42;
  v99 = v50;
  v51 = v78;
  v52 = swift_getWitnessTable();
  v53 = v49 & 1;
  v54 = v76;
  v55 = v91;
  View.screenSharingTouchShield(isActive:isCapturingTouch:)(v44, v45, v47, v53, v51, v52);

  v56 = (*(v77 + 8))(v55, v51);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v88;
  *(&v72 - 4) = v87;
  *(&v72 - 3) = v57;
  *(&v72 - 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMR);
  v58 = lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield();
  v96 = v52;
  v97 = v58;
  v59 = v79;
  v60 = swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?();
  default argument 0 of View.overlay<A>(alignment:content:)(v59);
  v61 = v81;
  View.overlay<A>(alignment:content:)();
  (*(v80 + 8))(v54, v59);
  v62 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v100 = (*(*v26 + 856))(v62) & 1;
  v63 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy15ConversationKit027ScreenSharingSpectatorModalC0VAA013_TraitWritingD0VyAA010TransitionM3KeyVGGSgGMR, MEMORY[0x1E697EC18]);
  v94 = v60;
  v95 = v63;
  v64 = v85;
  v65 = swift_getWitnessTable();
  v66 = v82;
  View.animation<A>(_:value:)();

  (*(v83 + 8))(v61, v64);
  v67 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
  v92 = v65;
  v93 = v67;
  v68 = v89;
  swift_getWitnessTable();
  v69 = v84;
  static ViewBuilder.buildExpression<A>(_:)();
  v70 = *(v86 + 8);
  v70(v66, v68);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v70)(v69, v68);
}

uint64_t closure #1 in closure #1 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - v6);
  if ((*(**a1 + 856))(v5))
  {
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
    swift_storeEnumTagMultiPayload();
    v8 = v7 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
    type metadata accessor for ScreenSharingSpectatorViewModel(0);
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
    *v8 = Environment.init<A>(_:)();
    v8[8] = v9 & 1;
    lazy protocol witness table accessor for type ModalOverlayTransition and conformance ModalOverlayTransition();
    *(v7 + *(v4 + 36)) = AnyTransition.init<A>(_:)();
    outlined init with take of ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>(v7, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t closure #2 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(**a1 + 792))();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR) + 40);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t closure #3 in closure #1 in ScreenSharingSpectatorView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorToolbar(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel(0);
  lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
  result = Environment.init<A>(_:)();
  *v3 = result;
  v3[8] = v5 & 1;
  return result;
}

uint64_t key path getter for ScreenSharingSpectatorViewController.isPipped : ScreenSharingSpectatorViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ScreenSharingSpectatorViewController.isPipped.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model);
  OUTLINED_FUNCTION_0_1();
  *(a1 + 8) = (*(v3 + 312))() & 1;
  return ScreenSharingSpectatorViewController.isPipped.modify;
}

uint64_t ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{
  type metadata accessor for UIInterfaceOrientationMask(0);
  withObservationTracking<A>(_:onChange:)();
  return v1;
}

unint64_t closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**(a1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model) + 648))(&v6);
  v3 = v6;
  result = outlined consume of RemoteControlState(v6);
  v5 = v3 >> 61;
  if (v3 >> 61 != 2)
  {
    result = static Platform.current.getter();
    v5 = 26;
    if (result == 1)
    {
      v5 = 30;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t (*implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter;
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter, v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  OUTLINED_FUNCTION_22_3(v1 == 0);

  return v2();
}

id ScreenSharingSpectatorViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ScreenSharingSpectatorViewController.init()()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_19_11();
      swift_once();
    }

    v5 = one-time initialization token for sharedMonitor;
    v6 = static ScreenSharingInteractionController.shared;
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_14_38();
      swift_once();
    }

    v7 = static ScreenSharingStateMonitor.sharedMonitor;
    v8 = type metadata accessor for ScreenSharingSpectatorViewModel(0);
    v9 = OUTLINED_FUNCTION_84(v8);
    v10 = v7;
    *(v1 + v4) = specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v3, v6, v10, v9);
    v11 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_screenInfoDidChangeSubject;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMR);
    OUTLINED_FUNCTION_84(v12);
    *(v1 + v11) = CurrentValueSubject.init(_:)();
    v13 = [objc_allocWithZone(type metadata accessor for SharedContentViewController(0)) init];
    v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMd, &_s15ConversationKit09PictureInC21WrapperViewControllerCyAA013SharedContentfG0CGMR));
    *(v1 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController) = specialized PictureInPictureWrapperViewController.init(wrappedViewController:)(v13);
    type metadata accessor for ScreenSharingSpectatorViewController();
    OUTLINED_FUNCTION_3_0();
    v17 = objc_msgSendSuper2(v15, v16);
    v18 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController;
    v19 = *(*&v17[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController] + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
    v20 = MEMORY[0x1E69E7D40];
    v21 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xB8);
    v22 = v17;
    v23 = v19;
    v21(v17, &protocol witness table for ScreenSharingSpectatorViewController);

    v24 = *&v17[v18];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v25 = static Layout.ParticipantViews.screenSharingInteractionTouchInsets;
    v26 = *&qword_1EBCB5F50;
    v27 = unk_1EBCB5F58;
    v28 = *((*v20 & *v24) + 0x70);
    v29 = v24;
    v28(*&v25, *(&v25 + 1), v26, v27);

    v30 = *((*v20 & *v10) + 0x140);
    v31 = *(*&v17[v18] + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
    v30();

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScreenSharingSpectatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ScreenSharingSpectatorViewController.init(coder:)()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  v11 = v2;
  v3 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_19_11();
    swift_once();
  }

  v4 = one-time initialization token for sharedMonitor;
  v5 = static ScreenSharingInteractionController.shared;
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_14_38();
    swift_once();
  }

  v6 = static ScreenSharingStateMonitor.sharedMonitor;
  v7 = type metadata accessor for ScreenSharingSpectatorViewModel(0);
  v8 = OUTLINED_FUNCTION_84(v7);
  *(v1 + v3) = specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v11, v5, v6, v8);
  v9 = OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_screenInfoDidChangeSubject;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyytSgs5NeverOGMR);
  OUTLINED_FUNCTION_84(v10);
  *(v1 + v9) = CurrentValueSubject.init(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ScreenSharingSpectatorViewController.loadView()()
{
  v1 = v0;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  objc_msgSendSuper2(&v53, sel_loadView);
  [v0 setOverrideUserInterfaceStyle_];
  v2 = OUTLINED_FUNCTION_4_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model];
  v7 = *&v1[OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = v7;
  _s15ConversationKit26ScreenSharingSpectatorViewV5model7contentACyxGAA0cdeF5ModelC_xyctcfCAA09PictureInJ7WrapperVyAA013SharedContentF10ControllerCG_Tt1g5(v6, partial apply for closure #1 in ScreenSharingSpectatorViewController.loadView(), v8, &v54);
  v50 = v54;
  v51 = *v55;
  v52 = *&v55[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMd, &_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingSpectatorView<PictureInPictureWrapper<SharedContentViewController>> and conformance ScreenSharingSpectatorView<A>, &_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMd, &_s15ConversationKit26ScreenSharingSpectatorViewVyAA09PictureInG7WrapperVyAA013SharedContentF10ControllerCGGMR, &protocol conformance descriptor for ScreenSharingSpectatorView<A>);
  v10 = View.inLockScreenHostingController()();
  v11 = [v10 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = OUTLINED_FUNCTION_4_1();
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v4 blackColor];
  [v14 setBackgroundColor_];

  v16 = OUTLINED_FUNCTION_5_63();
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_4_1();
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  [v17 addSubview_];

  [v1 addChildViewController_];
  [v10 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BA7F0;
  v21 = OUTLINED_FUNCTION_4_1();
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = OUTLINED_FUNCTION_5_63();
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = OUTLINED_FUNCTION_2_85();
  *(v20 + 32) = v27;
  v28 = OUTLINED_FUNCTION_4_1();
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = OUTLINED_FUNCTION_5_63();
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = OUTLINED_FUNCTION_2_85();
  *(v20 + 40) = v34;
  v35 = OUTLINED_FUNCTION_4_1();
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = OUTLINED_FUNCTION_5_63();
  if (!v38)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = OUTLINED_FUNCTION_2_85();
  *(v20 + 48) = v41;
  v42 = OUTLINED_FUNCTION_4_1();

  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = [v42 bottomAnchor];

  v44 = OUTLINED_FUNCTION_5_63();
  if (v44)
  {
    v45 = v44;
    v46 = objc_opt_self();
    v47 = [v45 bottomAnchor];

    v48 = OUTLINED_FUNCTION_2_85();
    *(v20 + 56) = v48;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints_];

    v50 = *&v55[8];
    outlined destroy of TapInteractionHandler?(&v50, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    return;
  }

LABEL_27:
  __break(1u);
}

Swift::Void __swiftcall ScreenSharingSpectatorViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  ScreenSharingSpectatorViewController.updateSharedContentViewController()();
}

void ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_contentViewController) + direct field offset for PictureInPictureWrapperViewController.wrappedViewController);
  withObservationTracking<A>(_:onChange:)();
}

uint64_t closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15ConversationKit36ScreenSharingSpectatorViewController_model);
  v4 = (*(*v3 + 312))();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v4 & 1);
  v7 = (*(*v3 + 856))(v6);
  v8 = (*((*v5 & *a1) + 0xE8))(v7 & 1);
  v9 = (*(*v3 + 264))(v8);
  v10 = (*((*v5 & *a1) + 0x100))(v9 & 1);
  v11 = (*(*v3 + 800))(v10);
  return (*((*v5 & *a1) + 0x118))(v11 & 1);
}

uint64_t (*implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController();
}

uint64_t closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    ScreenSharingSpectatorViewController.updateSharedContentViewController()();
  }

  OUTLINED_FUNCTION_22_3(Strong == 0);

  return v1();
}

id ScreenSharingSpectatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t ScreenSharingSpectatorViewController.__ivar_destroyer()
{
}

id ScreenSharingSpectatorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingSpectatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield()
{
  result = lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield;
  if (!lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingTouchShield and conformance ScreenSharingTouchShield);
  }

  return result;
}

uint64_t specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isZoomEnabled) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isPipped) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__disableRequestButton) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__activeParticipantObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__sessionObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask) = 0;
  v12 = static Duration.seconds(_:)();
  v13 = (a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
  *v13 = v12;
  v13[1] = v14;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState) = 0xA000000000000010;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__requirmentsLock) = v15;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = 0;
  ObservationRegistrar.init()();
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel_interactionController) = a2;
  v16 = a2;
  v32 = a3;
  [a3 addObserver_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x1B0);
  v21 = v16;

  v20(partial apply for closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:), v18);

  v23 = *v19;
  v24 = v30;
  (*((v23 & *v21) + 0x110))(v22);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR, MEMORY[0x1E695C068]);

  v25 = v31;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v25);
  ScreenSharingSpectatorViewModel.sessionObserver.setter(v26);
  if (FTServerBag.remoteControlEnabled.getter())
  {
    v27 = v32;
    swift_getKeyPath();
    (*(*a4 + 912))();

    v33 = a4;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v28 = *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v28 & 8) == 0)
    {
      *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v28 | 8;
    }

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
    v33 = a4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  else
  {
  }

  return a4;
}

{
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR);
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isZoomEnabled) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isPipped) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__disableRequestButton) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__activeParticipantObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__sessionObserver) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask) = 0;
  v12 = static Duration.seconds(_:)();
  v13 = (a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
  *v13 = v12;
  v13[1] = v14;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState) = 0xA000000000000010;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__requirmentsLock) = v15;
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = 0;
  ObservationRegistrar.init()();
  *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel_interactionController) = a2;
  v16 = a2;
  v31 = a3;
  [a3 addObserver_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x1B0);
  v21 = v16;

  v20(partial apply for closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:), v18);

  v23 = *v19;
  v24 = v29;
  (*((v23 & *v21) + 0x110))(v22);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR);

  v25 = v30;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v25);
  ScreenSharingSpectatorViewModel.sessionObserver.setter(v26);
  if (FTServerBag.remoteControlEnabled.getter())
  {
    swift_getKeyPath();
    (*(*a4 + 912))();

    v32 = a4;
    swift_getKeyPath();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel, &protocol conformance descriptor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v27 = *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v27 & 8) == 0)
    {
      *(a4 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v27 | 8;
    }

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
    v32 = a4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return a4;
}

id partial apply for closure #1 in ScreenSharingSpectatorViewController.loadView()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip()
{
  result = lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip;
  if (!lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip;
  if (!lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingSpectatorTip and conformance ScreenSharingSpectatorTip);
  }

  return result;
}

uint64_t type metadata instantiation function for ScreenSharingSpectatorView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.updateSharedContentViewController()(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in implicit closure #1 in ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter(v2, v3, v4, v5);
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TipView<AnyTip> and conformance TipView<A>, &_s6TipKit0A4ViewVyAA03AnyA0VGMd, &_s6TipKit0A4ViewVyAA03AnyA0VGMR, MEMORY[0x1E6982A10]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
    lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(&lazy protocol witness table cache variable for type ScreenSharingSpectatorModalOverlay and conformance ScreenSharingSpectatorModalOverlay, type metadata accessor for ScreenSharingSpectatorModalOverlay, &protocol conformance descriptor for ScreenSharingSpectatorModalOverlay);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorToolbar and conformance ScreenSharingSpectatorToolbar(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModalOverlayTransition and conformance ModalOverlayTransition()
{
  result = lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition;
  if (!lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModalOverlayTransition and conformance ModalOverlayTransition);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ScreenSharingSpectatorModalOverlay, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit34ScreenSharingSpectatorModalOverlayVAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR, MEMORY[0x1E6968DA0]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t one-time initialization function for joinLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:a2];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:a3];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:a3];
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo34TUConversationInvitationPreferenceC_SayAEGTt0g5(inited);
  *a4 = result;
  return result;
}

double static InvitationPreferences.joinLink.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InvitationPreferences(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t RecentsListSuggestionFetcher.suggestedContact.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t RecentsListSuggestionFetcher.suggestedContact.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for RecentsListSuggestionFetcher.delegate : RecentsListSuggestionFetcher@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RecentsListSuggestionFetcher.delegate : RecentsListSuggestionFetcher(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*RecentsListSuggestionFetcher.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

id RecentsListSuggestionFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in RecentsListSuggestionFetcher.startSearch()(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo9CNContactCSg_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo9CNContactCSg_GGMR);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMd, &_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMR);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMR);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListSuggestionFetcher.startSearch(), 0, 0);
}

uint64_t closure #1 in RecentsListSuggestionFetcher.startSearch()()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9CNContactCSgGMd, _s7Combine9PublishedVySo9CNContactCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v7 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<CNContact?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMd, &_s7Combine9PublishedV9PublisherVySo9CNContactCSg_GMR, MEMORY[0x1E695C068]);
  MEMORY[0x1BFB1DE80](v4, v7);
  (*(v2 + 8))(v1, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v3, v5);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<CNContact?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMR);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_1_107(v8);

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in RecentsListSuggestionFetcher.startSearch();
  }

  else
  {
    v2 = closure #1 in RecentsListSuggestionFetcher.startSearch();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 40);
  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListSuggestionFetcher.startSearch(), 0, 0);
}

{
  v1 = *(v0 + 152);
  if (v1 == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      v1 = *(v0 + 152);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined consume of IMAccount??(v1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 152);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v5;
      *v10 = v8;
      v11 = v5;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Successfully observed suggested contact %@, notifying delegate", v9, 0xCu);
      outlined destroy of NSObject?(v10);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v12 = *(v0 + 56);

    v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x110))();
    v15 = *(v0 + 152);
    if (v13)
    {
      v16 = v14;
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(ObjectType, v16);
      outlined consume of IMAccount??(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      outlined consume of IMAccount??(*(v0 + 152));
    }

    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<CNContact?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo9CNContactCSg_G_GMR);
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_1_107(v18);

    return MEMORY[0x1EEE6D8C8](v19);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 48) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

id RecentsListSuggestionFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsListSuggestionFetcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RecentsListSuggestionFetcher.autocompleteFetch(_:didReceive:)(uint64_t a1, unint64_t a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_timeoutTask))
  {

    MEMORY[0x1BFB21000](v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  if (a2 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB22010](0, a2);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v8 = [v6 value];
  if (v8)
  {
    v8 = outlined bridged method (ob) of @objc CNAutocompleteResultValue.address.getter(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v2 + OBJC_IVAR____TtC15ConversationKit28RecentsListSuggestionFetcher_address);
  *v10 = v8;
  v10[1] = v9;

  v11 = specialized _arrayForceCast<A, B>(_:)();
  v51[0] = 0;
  v12 = outlined bridged method (mbnnn) of @objc CNAutocompleteResult.contactWithKeys(toFetch:)(v11, v51, v6);
  v13 = v51[0];
  if (!v12)
  {
    v23 = v13;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.conversationKit);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BBC58000, v26, v27, "hitting error when fetching autocomplete suggestions，trying to fetch using address", v28, 2u);
      OUTLINED_FUNCTION_27();
    }

    v29 = v10[1];
    if (!v29)
    {

      return;
    }

    v50 = v24;
    v30 = *v10;
    v31 = objc_allocWithZone(MEMORY[0x1E695CE28]);

    v32 = [v31 init];
    v33 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA940;
    *(v34 + 32) = v30;
    *(v34 + 40) = v29;

    isa = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    v37 = [v33 contactsByContactHandleForContactHandles:isa keyDescriptors:v36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = specialized Dictionary.subscript.getter(v38);

    if (v39)
    {
      if (specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v39 & 0xC000000000000001) == 0, v39);
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1BFB22010](0, v39);
        }

        else
        {
          v40 = *(v39 + 32);
        }

        v41 = v40;

        v42 = v41;
        RecentsListSuggestionFetcher.suggestedContact.setter(v41, v43);
        v44 = v42;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          *(v47 + 4) = v44;
          *v48 = v41;
          v49 = v44;
          _os_log_impl(&dword_1BBC58000, v45, v46, "successfully fetched suggested contact from address: %@", v47, 0xCu);
          outlined destroy of NSObject?(v48);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }

    return;
  }

  v14 = v12;
  RecentsListSuggestionFetcher.suggestedContact.setter(v12, v15);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationKit);
  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v12;
    v22 = v17;
    _os_log_impl(&dword_1BBC58000, v18, v19, "successfully fetched suggested contact %@", v20, 0xCu);
    outlined destroy of NSObject?(v21);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }
}

void RecentsListSuggestionFetcher.autocompleteFetch(_:didFailWithError:)()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationKit);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "hitting error when running autocompleteFetch", v2, 2u);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t key path setter for RecentsListSuggestionFetcher.suggestedContact : RecentsListSuggestionFetcher(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return RecentsListSuggestionFetcher.suggestedContact.setter(v1, v3);
}

id outlined bridged method (mbnnn) of @objc CNAutocompleteResult.contactWithKeys(toFetch:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 contactWithKeysToFetch:isa error:a2];

  return v6;
}

uint64_t outlined bridged method (ob) of @objc CNAutocompleteResultValue.address.getter(void *a1)
{
  v2 = [a1 address];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void type metadata completion function for RecentsListSuggestionFetcher(uint64_t a1)
{
  type metadata accessor for Published<CNContact?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CNContact?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CNContact?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CNContact?>);
    }
  }
}

unint64_t type metadata accessor for CNAutocompleteResult()
{
  result = lazy cache variable for type metadata for CNAutocompleteResult;
  if (!lazy cache variable for type metadata for CNAutocompleteResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNAutocompleteResult);
  }

  return result;
}

uint64_t partial apply for closure #1 in RecentsListSuggestionFetcher.startSearch()()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #1 in RecentsListSuggestionFetcher.startSearch()(v3, v4);
}

void *ParticipantVideoView.ViewModel.init(videoProvider:videoTransform:prefersSnapshotFadeAnimation:prefersAnimatedVideoTransform:shouldRegisterVideoLayers:freezeFrameUntilUpdate:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = *(a1 + 32);
  result = memcpy((a7 + 40), a2, 0x80uLL);
  *(a7 + 168) = a3;
  *(a7 + 169) = a4;
  *(a7 + 170) = a5;
  *(a7 + 171) = a6;
  return result;
}

BOOL static ParticipantVideoView.ViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  v0 = Hasher._finalize()();
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  return v0 == Hasher._finalize()();
}

uint64_t ParticipantVideoView.ViewModel.contentsRect.getter()
{
  outlined init with copy of ParticipantVideoProvider?(v0, v4);
  v1 = v5;
  if (!v5)
  {
    return outlined destroy of TapInteractionHandler?(v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  }

  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(&v7, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

Swift::Int ParticipantVideoView.Errors.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoView.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  ParticipantVideoView.Errors.hash(into:)();
  return Hasher._finalize()();
}

id ParticipantVideoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ParticipantVideoView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v3 = type metadata accessor for ParticipantVideoCameraView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v24.receiver = v4;
  v24.super_class = v3;
  *&v0[v2] = OUTLINED_FUNCTION_0_3(&v24, sel_initWithFrame_);
  v5 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v6 = objc_allocWithZone(v3);
  v6[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v23.receiver = v6;
  v23.super_class = v3;
  *&v0[v5] = OUTLINED_FUNCTION_0_3(&v23, sel_initWithFrame_);
  v7 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  *v7 = 0;
  v7[8] = 1;
  *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode] = 0;
  v8 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] = 0;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v10 = OUTLINED_FUNCTION_0_3(&v22, sel_initWithFrame_);
  [v10 setClipsToBounds_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 280))())
  {
    v11 = objc_opt_self();
    v12 = [v11 systemRedColor];
    [v10 setBackgroundColor_];

    v13 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
    v14 = *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView];
    v15 = [v11 systemBlueColor];
    [v14 setBackgroundColor_];

    v16 = [*&v10[v13] layer];
    GenericCMYK = CGColorCreateGenericCMYK(0.0, 0.0, 1.0, 0.0, 1.0);
    [v16 setBorderColor_];

    v18 = [*&v10[v13] layer];
    [v18 setBorderWidth_];
  }

  v19 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000020, 0x80000001BC505590, *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView]);
  v20 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000001FLL, 0x80000001BC5055C0, *&v10[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView]);
  [v10 addSubview_];
  [v10 addSubview_];
  return v10;
}

id ParticipantVideoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantVideoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  *(v0 + v4) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) = 0;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id ParticipantVideoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantVideoView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  *(v0 + v4) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_hasPerformedFirstVideoTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) = 0;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

Swift::Void __swiftcall ParticipantVideoView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantVideoView._layout()();
}

void ParticipantVideoView._layout()()
{
  v1 = v0;
  [v0 bounds];
  if (!CGRectIsInfinite(v70))
  {
    [v0 bounds];
    if (!CGRectIsEmpty(v71))
    {
      if (v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode] == 1)
      {
        v2 = *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView];
        v3 = [v2 layer];
        [v3 bounds];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;

        v12 = *MEMORY[0x1E695F058];
        v13 = *(MEMORY[0x1E695F058] + 8);
        v14 = *(MEMORY[0x1E695F058] + 16);
        v15 = *(MEMORY[0x1E695F058] + 24);
        v72.origin.x = v5;
        v72.origin.y = v7;
        v72.size.width = v9;
        v72.size.height = v11;
        v74.origin.x = *MEMORY[0x1E695F058];
        v74.origin.y = v13;
        v74.size.width = v14;
        v74.size.height = v15;
        if (!CGRectEqualToRect(v72, v74))
        {
          v16 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider];
          swift_beginAccess();
          outlined init with copy of ParticipantVideoProvider?(v16, &v67);
          v17 = *(&v68 + 1);
          outlined destroy of TapInteractionHandler?(&v67, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
          if (v17)
          {
            if (*(v16 + 24))
            {
              outlined init with copy of IDSLookupManager(v16, &v67);
              v18 = v69;
              __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
              v19 = [v2 layer];
              (*(v18 + 120))();

              __swift_destroy_boxed_opaque_existential_1(&v67);
            }

            v69 = 0;
            v67 = 0u;
            v68 = 0u;
            swift_beginAccess();
            outlined assign with take of ParticipantVideoProvider?(&v67, v16);
            swift_endAccess();
          }
        }

        v20 = *&v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView];
        v21 = [v20 layer];
        [v21 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v73.origin.x = v23;
        v73.origin.y = v25;
        v73.size.width = v27;
        v73.size.height = v29;
        v75.origin.x = v12;
        v75.origin.y = v13;
        v75.size.width = v14;
        v75.size.height = v15;
        if (!CGRectEqualToRect(v73, v75))
        {
          v30 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider];
          swift_beginAccess();
          outlined init with copy of ParticipantVideoProvider?(v30, &v67);
          v31 = *(&v68 + 1);
          outlined destroy of TapInteractionHandler?(&v67, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
          if (v31)
          {
            if (*(v30 + 24))
            {
              outlined init with copy of IDSLookupManager(v30, &v67);
              v32 = v69;
              __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
              v33 = [v20 layer];
              (*(v32 + 120))();

              __swift_destroy_boxed_opaque_existential_1(&v67);
            }

            v69 = 0;
            v67 = 0u;
            v68 = 0u;
            swift_beginAccess();
            outlined assign with take of ParticipantVideoProvider?(&v67, v30);
            swift_endAccess();
          }
        }

        v34 = objc_opt_self();
        [v34 begin];
        v35 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([v2 layer]);
        v36 = MEMORY[0x1E69E7CC0];
        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = MEMORY[0x1E69E7CC0];
        }

        v38 = specialized Array.count.getter();
        if (v38)
        {
          v39 = v38;
          if (v38 < 1)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v40 = 0;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1BFB22010](v40, v37);
            }

            else
            {
              v41 = *(v37 + 8 * v40 + 32);
            }

            v42 = v41;
            ++v40;
            [v1 bounds];
            [v42 setFrame_];
          }

          while (v39 != v40);
        }

        v43 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([v20 layer]);
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v36;
        }

        v45 = specialized Array.count.getter();
        if (v45)
        {
          v46 = v45;
          if (v45 < 1)
          {
LABEL_50:
            __break(1u);
            return;
          }

          v47 = 0;
          do
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x1BFB22010](v47, v44);
            }

            else
            {
              v48 = *(v44 + 8 * v47 + 32);
            }

            v49 = v48;
            ++v47;
            [v1 bounds];
            [v49 setFrame_];
          }

          while (v46 != v47);
        }

        [v34 commit];
      }

      v50 = [v1 subviews];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = specialized Array.count.getter();
      if (!v52)
      {
LABEL_46:

        return;
      }

      v53 = v52;
      if (v52 >= 1)
      {
        v54 = 0;
        v55 = v51 & 0xC000000000000001;
        v56 = &selRef_isRecordingAllowed;
        do
        {
          if (v55)
          {
            v57 = MEMORY[0x1BFB22010](v54, v51);
          }

          else
          {
            v57 = *(v51 + 8 * v54 + 32);
          }

          v58 = v57;
          [v57 v56[61]];
          if (v60 == 0.0 && v59 == 0.0)
          {
            [v1 bounds];
            [v58 setFrame_];
          }

          else
          {
            v61 = [v1 layer];
            v62 = objc_opt_self();
            v63 = v51;
            v64 = v55;
            v65 = v58;
            v66 = v1;
            [v62 begin];
            [v62 setDisableActions_];
            [v66 bounds];
            [v65 setFrame_];
            [v62 commit];

            v56 = &selRef_isRecordingAllowed;
            v55 = v64;
            v51 = v63;
          }

          ++v54;
        }

        while (v53 != v54);
        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_49;
    }
  }
}

void ParticipantVideoView.configure(with:)(_BYTE *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash];
  v6 = v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousViewModelHash + 8];
  Hasher.init(_seed:)();
  ParticipantVideoView.ViewModel.hash(into:)();
  if (v5 == Hasher._finalize()())
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  v101 = *v4;
  v100 = v4[8];
  v102 = v7;
  if (v7 == 1)
  {
    Hasher.init(_seed:)();
    ParticipantVideoView.ViewModel.hash(into:)();
    *v4 = Hasher._finalize()();
    v4[8] = 0;
    v8 = MEMORY[0x1E69E6158];
    if (v6)
    {
      goto LABEL_6;
    }

    if (a1[171] != 1)
    {
      if (a1[168] == 1)
      {
        ParticipantVideoView.freezeCurrentFrame()();
        v27 = 1;
LABEL_16:
        ParticipantVideoView.hideSnapshot(animated:)(v27);
        goto LABEL_17;
      }

LABEL_6:
      if (v1[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] != 1)
      {
        goto LABEL_17;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v9 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BC4BAA20;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_11_60();
      OUTLINED_FUNCTION_5_83();
      v16 = OUTLINED_FUNCTION_10_52(v11, v12, v13, v14, v15);
      v18 = v17;
      *(v10 + 56) = v8;
      v19 = lazy protocol witness table accessor for type String and conformance String();
      *(v10 + 64) = v19;
      *(v10 + 32) = v16;
      *(v10 + 40) = v18;
      ParticipantVideoView.ViewModel.contentsRect.getter();
      v105 = v20;
      v106 = v21;
      v107 = v22;
      v108 = v23;
      type metadata accessor for CGRect(0);
      v24 = String.init<A>(reflecting:)();
      *(v10 + 96) = v8;
      *(v10 + 104) = v19;
      *(v10 + 72) = v24;
      *(v10 + 80) = v25;
      v26 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("%@: unfreezing last frame, contentsRect: %@", 43, 2, &dword_1BBC58000, v9, v26, v10);

      v27 = 0;
      goto LABEL_16;
    }

    ParticipantVideoView.freezeCurrentFrame()();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v28 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA940;
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_11_60();
    OUTLINED_FUNCTION_5_83();
    v35 = OUTLINED_FUNCTION_10_52(v30, v31, v32, v33, v34);
    v37 = v36;
    *(v29 + 56) = v8;
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 32) = v35;
    *(v29 + 40) = v37;
    v38 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@: Freezing last frame.", 24, 2, &dword_1BBC58000, v28, v38, v29);
  }

LABEL_17:
  outlined init with copy of ParticipantVideoProvider?(a1, &v105);
  if (!v108)
  {
    outlined destroy of TapInteractionHandler?(&v105, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  v39 = type metadata accessor for RemoteParticipantVideoProvider();
  if ((OUTLINED_FUNCTION_6_69(v39, v40, v41, v42, v43, v44) & 1) == 0)
  {
    goto LABEL_30;
  }

  v45 = v110;
  OUTLINED_FUNCTION_8_66();
  v47 = (*(v46 + 160))();
  if ((v47 & 0x100000000) != 0)
  {

    goto LABEL_30;
  }

  v48 = VideoAttributeOrientation.deviceOrientation.getter(v47);
  OUTLINED_FUNCTION_8_66();
  v50 = COERCE_DOUBLE((*(v49 + 240))());
  v52 = v51;
  v54 = v53;

  if (v54)
  {
LABEL_30:
    ParticipantVideoView.ViewModel.contentsRect.getter();
    v56 = 0;
    goto LABEL_31;
  }

  if (!v48)
  {
    if (v50 < v52)
    {
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  if (v48 != 2 || v50 >= v52)
  {
    goto LABEL_30;
  }

LABEL_56:
  v56 = 1;
LABEL_31:
  outlined init with copy of ParticipantVideoProvider?(a1, &v105);
  v57 = v108;
  if (v108)
  {
    v58 = v109;
    __swift_project_boxed_opaque_existential_1(&v105, v108);
    v59 = COERCE_DOUBLE((*(v58 + 80))(v57, v58));
    v61 = v60;
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1(&v105);
    v64 = (v63 & 1) != 0 || v59 == v61;
    v65 = (v63 & 1) != 0;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v105, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    v59 = 0.0;
    v61 = 0.0;
    v64 = 1;
    v65 = 1;
  }

  outlined init with copy of ParticipantVideoProvider?(a1, &v105);
  if (v108)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    v66 = type metadata accessor for RemoteParticipantVideoProvider();
    if (OUTLINED_FUNCTION_6_69(v66, v67, v68, v69, v70, v71))
    {
      v79 = v110;
      if (v64 && (v56 & 1) == 0 && ((*((*MEMORY[0x1E69E7D40] & *v110) + 0x148))() & 1) != 0)
      {
        v80 = v79;
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        __swift_project_value_buffer(v81, static Logger.conversationKit);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v104 = v83;
          v84 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v110 = v103;
          *v84 = 136315650;
          v85 = _typeName(_:qualified:)();
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v110);

          *(v84 + 4) = v87;
          *(v84 + 12) = 2080;
          *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001BC505610, &v110);
          *(v84 + 22) = 2080;
          if (v65)
          {
            v88 = 0xE300000000000000;
            v89 = 7104878;
          }

          else
          {
            v105 = v59;
            v106 = v61;
            type metadata accessor for CGSize(0);
            v89 = String.init<A>(reflecting:)();
            v88 = v98;
          }

          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, &v110);

          *(v84 + 24) = v99;
          _os_log_impl(&dword_1BBC58000, v82, v104, "%s.%s: Skipping Attributes Update for Square Video %s", v84, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v103, -1, -1);
          MEMORY[0x1BFB23DF0](v84, -1, -1);
        }

        *v4 = v101;
        v4[8] = v100;
        lazy protocol witness table accessor for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors();
        swift_allocError();
        swift_willThrow();

        return;
      }
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v105, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  }

  if ((v102 & 1) != 0 || (ParticipantVideoView.ViewModel.contentsRect.getter(), v111.origin.x = OUTLINED_FUNCTION_7_68(), !CGRectEqualToRect(v111, v112)))
  {
    if (a1[170] == 1)
    {
      ParticipantVideoView.registerVideoLayers(with:)(a1, v72, v73, v74, v75, v76, v77, v78);
    }

    v90 = v2;
    v91 = [v90 layer];
    v92 = objc_opt_self();
    [v92 begin];
    [v92 setDisableActions_];
    v93 = OUTLINED_FUNCTION_7_68();
    closure #1 in ParticipantVideoView.configure(with:)(v94, a1, v93, v95, v96, v97);
    [v92 commit];
  }
}

Swift::Int ParticipantVideoView.ViewModel.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  ParticipantVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

void ParticipantVideoView.freezeCurrentFrame()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen;
  if ((v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen] & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot;
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot];
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    v4 = [v0 snapshotViewAfterScreenUpdates_];
    v5 = *&v0[v2];
    *&v0[v2] = v4;
    v6 = v4;

    if (v6)
    {
      [v0 addSubview_];

      v0[v1] = 1;
    }
  }
}

void ParticipantVideoView.hideSnapshot(animated:)(char a1)
{
  if (a1)
  {
    v2 = 0.5;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v14 = partial apply for closure #1 in ParticipantVideoView.hideSnapshot(animated:);
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed () -> ();
  v13 = &block_descriptor_22_0;
  v5 = _Block_copy(&v10);
  v6 = v1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v14 = partial apply for closure #2 in ParticipantVideoView.hideSnapshot(animated:);
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v13 = &block_descriptor_28_1;
  v8 = _Block_copy(&v10);
  v9 = v6;

  [v3 animateWithDuration:v5 animations:v8 completion:v2];
  _Block_release(v8);
  _Block_release(v5);
}

uint64_t ParticipantVideoView.registerVideoLayers(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (*(v8 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) == 1)
  {
    [OUTLINED_FUNCTION_14_39() bounds];
    OUTLINED_FUNCTION_9_60();
    v11 = OUTLINED_FUNCTION_3_98();
    if (v11)
    {
      v19 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
      OUTLINED_FUNCTION_12_51(v11, v12, v13, v14);
      outlined assign with copy of ParticipantVideoProvider?(a1, v9 + v19);
    }

    else
    {
      OUTLINED_FUNCTION_16_42(v11, v12, v13, v14, v15, v16, v17, v18);
      if (*(&v51 + 1))
      {
        v30 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v31 = OUTLINED_FUNCTION_14_39();
        (*(v30 + 120))();

        v32 = __swift_destroy_boxed_opaque_existential_1(&v50);
      }

      else
      {
        v32 = outlined destroy of TapInteractionHandler?(&v50, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      }

      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v36 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForFrontVideoProvider;
      OUTLINED_FUNCTION_13_49(v32);
      outlined assign with take of ParticipantVideoProvider?(&v50, v9 + v36);
    }

    swift_endAccess();
    [OUTLINED_FUNCTION_14_39() bounds];
    OUTLINED_FUNCTION_9_60();
    v37 = OUTLINED_FUNCTION_3_98();
    if (v37)
    {
      v45 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
      OUTLINED_FUNCTION_12_51(v37, v38, v39, v40);
      outlined assign with copy of ParticipantVideoProvider?(a1, v9 + v45);
    }

    else
    {
      OUTLINED_FUNCTION_16_42(v37, v38, v39, v40, v41, v42, v43, v44);
      if (*(&v51 + 1))
      {
        v46 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v47 = OUTLINED_FUNCTION_14_39();
        (*(v46 + 120))();

        v48 = __swift_destroy_boxed_opaque_existential_1(&v50);
      }

      else
      {
        v48 = outlined destroy of TapInteractionHandler?(&v50, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      }

      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v49 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_pendingRegisterVideoLayerForBackVideoProvider;
      OUTLINED_FUNCTION_13_49(v48);
      outlined assign with take of ParticipantVideoProvider?(&v50, v9 + v49);
    }

    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_16_42(a1, a2, a3, a4, a5, a6, a7, a8);
    if (*(&v51 + 1))
    {
      v20 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v21 = [*(v8 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView) layer];
      (*(v20 + 120))();

      v22 = __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      v22 = outlined destroy of TapInteractionHandler?(&v50, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    OUTLINED_FUNCTION_16_42(v22, v23, v24, v25, v26, v27, v28, v29);
    if (*(&v51 + 1))
    {
      v33 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v34 = [*(v8 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView) layer];
      (*(v33 + 120))();

      return __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      return outlined destroy of TapInteractionHandler?(&v50, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }
  }
}

void closure #1 in ParticipantVideoView.configure(with:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ((*(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_shouldSkipTransformsForLayerHostMode) & 1) == 0)
  {
    v12 = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView);
    v13 = [v12 layer];
    [v13 setContentsRect_];

    v14 = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView);
    v15 = [v14 layer];
    [v15 setContentsRect_];

    v16 = [v12 layer];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    [v16 setTransform_];

    v17 = [v14 layer];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    [v17 setTransform_];

    v18 = [v12 layer];
    v19 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC5057F0);
    v20 = [v18 valueForKeyPath_];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    __dst[0] = v28;
    __dst[1] = v29;
    if (*(&v29 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        if (one-time initialization token for participant != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.participant);
        v22 = v27;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          [v22 doubleValue];
          *(v25 + 4) = v26;
          _os_log_impl(&dword_1BBC58000, v23, v24, "Apply video rotation: %f", v25, 0xCu);
          MEMORY[0x1BFB23DF0](v25, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(__dst, &_sypSgMd, &_sypSgMR);
    }
  }
}

void ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = a3 & 1;
  *(v9 + 17) = v7;
  *(v9 + 24) = v4;
  if (a4)
  {
    v11 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
    if (v7 != 1)
    {
      v11 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
    }

    v12 = *&v4[*v11];
    v13 = v4;
    v14 = v12;
    [v13 bringSubviewToFront_];
    v15 = objc_opt_self();
    v24 = partial apply for closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    v25 = v8;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed () -> ();
    v23 = &block_descriptor_47;
    v16 = _Block_copy(&v20);

    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    *(v17 + 24) = v9;
    *(v17 + 32) = v10;
    v24 = partial apply for closure #3 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:);
    v25 = v17;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v23 = &block_descriptor_12_0;
    v18 = _Block_copy(&v20);

    [v15 transitionWithView:v13 duration:1048704 options:v16 animations:v18 completion:0.5];

    _Block_release(v18);
    _Block_release(v16);
  }

  else
  {
    v19 = v4;
    closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v7, v19);
    closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v10, v7, v19);
  }
}

id closure #1 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, char *a2)
{
  if (a1 == 1)
  {
    v3 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView;
  }

  v4 = *&a2[*v3];
  [v4 setHidden_];

  return [a2 bringSubviewToFront_];
}

void closure #2 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 != 1;
    v5 = a2 == 1;
    v6 = *(a3 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_frontFacingCameraView);
    [v6 setHidden_];
    v7 = [v6 layer];
    [v7 setHidden_];

    v8 = *(a3 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_backFacingCameraView);
    [v8 setHidden_];
    v9 = [v8 layer];
    [v9 setHidden_];
  }
}

void closure #3 in ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(char a1, void (*a2)(void), uint64_t a3, char a4)
{
  if (a1)
  {
    a2();
    if (a4)
    {
      v5 = [objc_opt_self() defaultCenter];
      v6 = v5;
      if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
      {
        swift_once();
        v5 = v6;
      }

      [v5 postNotificationName:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];
    }
  }
}

id closure #1 in ParticipantVideoView.hideSnapshot(animated:)(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in ParticipantVideoView.hideSnapshot(animated:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot;
  v4 = *(a2 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_previousVideoSnapshot);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  *(a2 + OBJC_IVAR____TtC15ConversationKit20ParticipantVideoView_isViewFrozen) = 0;
}

id ParticipantVideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ParticipantVideoView.ViewModel.hash(into:)()
{
  v1 = v0;
  outlined init with copy of ParticipantVideoProvider?(v0, v12);
  v2 = v12[3];
  if (!v12[3])
  {
    outlined destroy of TapInteractionHandler?(v12, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_5;
  }

  v3 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v4);
LABEL_6:
  memcpy(v12, (v1 + 40), sizeof(v12));
  CATransform3D.hash(into:)();
  ParticipantVideoView.ViewModel.contentsRect.getter();
  return CGRect.hash(into:)(v7, v8, v9, v10);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoView.ViewModel(uint64_t a1)
{
  Hasher.init(_seed:)();
  ParticipantVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined assign with take of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.Errors and conformance ParticipantVideoView.Errors);
  }

  return result;
}

uint64_t outlined assign with copy of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoView.ViewModel and conformance ParticipantVideoView.ViewModel);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoView.Errors(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit24ParticipantVideoProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantVideoView.ViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 172))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for ParticipantVideoView.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParticipantTile.updateLayerTransform(to:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 88);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6, a2);
}

id DefaultHUDControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v6 = static Features.shared;
  v20[4] = &type metadata for ScreeningStatusOverride;
  v20[5] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  v7 = v6;
  v20[1] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v8 = type metadata accessor for Features();
  v9 = [objc_allocWithZone(v8) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E6995EE0];
  v12 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v12[3] = v0;
  v12[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v0);
  v14 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v14[3] = v8;
  v14[4] = &protocol witness table for Features;
  *v14 = v9;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v2 + 8))(v5, v0);
  return v7;
}

void DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(void *a1@<X0>, _UNKNOWN **a3@<X2>, uint64_t a4@<X8>)
{
  v159 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  v157 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  v153 = v12;
  v13 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v142[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v142[-v19];
  v21 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
  v160 = a1;
  v158 = v21(v18);
  if (!v158)
  {
    if (Features.sharePlayInCallsEnabled.getter())
    {
      v22 = *((*MEMORY[0x1E69E7D40] & *v160) + 0x2A0);
      v22();
      OUTLINED_FUNCTION_87();
      ObjectType = swift_getObjectType();
      (*(v4 + 152))(ObjectType, v4);
      v24 = OUTLINED_FUNCTION_28_28();
      if (v4)
      {
        (v22)(v24);
        OUTLINED_FUNCTION_87();
        v25 = swift_getObjectType();
        (*(v4 + 560))(v25, v4);
        OUTLINED_FUNCTION_28_28();
      }
    }

    v26 = [objc_opt_self() currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27 != 1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v125 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v125, &static Logger.conversationControls);
      v126 = v160;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = OUTLINED_FUNCTION_42();
        v130 = OUTLINED_FUNCTION_23();
        v163[0] = v130;
        *v129 = 136315138;
        v131 = (*((*MEMORY[0x1E69E7D40] & *v126) + 0x2A0))();
        swift_getObjectType();
        v162[0] = v131;
        v132 = String.init<A>(describing:)();
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, v163);

        *(v129 + 4) = v134;
        _os_log_impl(&dword_1BBC58000, v127, v128, "defaultHUDRecipe: No active conversation, call: %s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v130);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_58;
    }
  }

  v152 = v20;
  v161 = v13;
  v28 = v160;
  v29 = DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(v160);
  if (v30)
  {
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v149 = v32;
    v151 = a4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v36 = v35;

    v37._countAndFlagsBits = v33;
    v150 = v34;
    v37._object = v34;
    v38.super.isa = NSAttributedString.__allocating_init(string:)(v37).super.isa;
    v39 = v158;
    isa = v38.super.isa;
    if (v158)
    {
      v40 = v38.super.isa;
      v41 = [v39 remoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = specialized Set.count.getter();

      v43 = v161;
      if (!v42)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        v44 = *MEMORY[0x1E69DDDC8];
        LOBYTE(v167[0]) = 0;
        v170[0] = 0x69662E6F65646976;
        v170[1] = 0xEA00000000006C6CLL;
        v170[2] = 2;
        v170[3] = v44;
        v171 = 0;
        v172 = 4;
        v173 = 0;
        v174 = 0;
        v163[0] = 0x69662E6F65646976;
        v163[1] = 0xEA00000000006C6CLL;
        v163[2] = 2;
        v163[3] = v44;
        LOWORD(v163[4]) = 0;
        v163[5] = 4;
        LOBYTE(v163[6]) = 0;
        v163[7] = 0;
        v45 = v44;
        outlined init with copy of SymbolImageDescription(v170, v162);
        outlined destroy of SymbolImageDescription(v163);
        v46 = static UIImage.symbolImage(for:)(v170);
        outlined destroy of SymbolImageDescription(v170);
        v47 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

        v48 = v47;
        [v48 setContentMode_];
        v49 = [objc_opt_self() labelColor];
        [v48 setTintColor_];

        v154 = [v48 hash];
        v155 = v48;

        goto LABEL_19;
      }
    }

    else
    {
      v59 = v38.super.isa;
      v43 = v161;
    }

    DefaultHUDControlsRecipeGenerator.defaultLeadingAccessoryView(controlsManager:)(v28);
    v154 = v61;
    v155 = v60;
LABEL_19:
    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x2A0))();
    v63 = v62;
    v64 = swift_getObjectType();
    LOBYTE(v63) = (*(v63 + 352))(v64, v63);
    swift_unknownObjectRelease();
    if (v63)
    {
      v65 = 1;
    }

    else
    {
      swift_beginAccess();
      if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
      {
        v65 = 2;
      }

      else
      {
        v65 = 0;
      }
    }

    v146 = v65;
    v165 = 0;
    memset(v164, 0, sizeof(v164));
    v166 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1BC4BAC30;
    *(v66 + 32) = v36;
    v67 = type metadata accessor for AttributedString();
    v68 = v36;
    v69 = v157;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
    swift_beginAccess();
    if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v148 = v68;
    ConversationControlsHelper.buttonShelfActions(controlsManager:)(v160, v167);
    v145 = v167[1];
    v147 = v167[0];
    v144 = v168;
    v143 = v169;
    v74 = v43[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v67);
    v78 = (v16 + v43[10]);
    v79 = v16 + v161[15];
    *(v79 + 4) = 0;
    *v79 = 0u;
    *(v79 + 1) = 0u;
    v79[40] = -2;
    *(v16 + v161[16]) = 0;
    v80 = v16 + v161[17];
    v81 = (v16 + v161[18]);
    *v81 = 1;
    OUTLINED_FUNCTION_13_7(v81, 0);
    outlined init with copy of ConversationControlsType(v164, v16);
    v83 = v154;
    v82 = v155;
    v16[6] = 0;
    v16[7] = v82;
    v16[8] = 0;
    v16[9] = v83;
    v16[10] = isa;
    v16[11] = v66;
    v78[1] = 0;
    v78[2] = 0;
    *v78 = 0;
    v13 = v161;
    outlined copy of ConversationControlsRecipe.View?(v82, 0);
    outlined assign with copy of AttributedString?(v69, v16 + v74);
    *(v16 + v13[11]) = v146;
    *(v16 + v13[12]) = 0;
    *(v16 + v13[13]) = v73;
    *(v16 + v13[14]) = 1;
    *v80 = 0;
    *(v80 + 1) = 0;
    v80[16] = -1;
    v84 = *(*&v167[0] + 16);
    v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
    if (v169 < 0)
    {
      v86 = v151;
      if (v84 > 5)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v102 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v102, &static Logger.conversationControls);

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v167);
        if (os_log_type_enabled(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_42();
          v106 = OUTLINED_FUNCTION_23();
          v163[0] = v106;
          *v105 = 136315138;
          v162[0] = v84;
          v107 = String.init<A>(reflecting:)();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v163);

          *(v105 + 4) = v109;
          v86 = v151;
          _os_log_impl(&dword_1BBC58000, v103, v104, "Too many buttonShelf actions (%s)", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v106);
          OUTLINED_FUNCTION_27();
          v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsRecipe.Actions(v167);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v164);
        v99 = v158;
        v101 = v152;
        v100 = v153;
        goto LABEL_40;
      }
    }

    else
    {
      v86 = v151;
      if (v84 > 2)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v87 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v87, &static Logger.conversationControls);

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v167);
        if (os_log_type_enabled(v88, v89))
        {
          v90 = OUTLINED_FUNCTION_42();
          v91 = OUTLINED_FUNCTION_23();
          v163[0] = v91;
          *v90 = 136315138;
          v162[0] = v84;
          v92 = String.init<A>(reflecting:)();
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v163);
          v86 = v151;

          *(v90 + 4) = v94;
          v13 = v161;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v95, v96, v97, v98, v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsRecipe.Actions(v167);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(v164);
        v99 = v158;
        v101 = v152;
        v100 = v153;
        v85 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
LABEL_40:
        outlined destroy of ConversationControlsRecipe(v16);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v13);
LABEL_42:
        if (__swift_getEnumTagSinglePayload(v100, 1, v13) != 1)
        {
          outlined init with take of ConversationControlsRecipe(v100, v101);
          if (SBUIIsSystemApertureEnabled())
          {
            if (v85[25] != -1)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v118 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v118, &static Logger.conversationControls);
            v119 = Logger.logObject.getter();
            v120 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v120))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v121, v120, "defaultHUD: [SystemAperture] showing content");
              OUTLINED_FUNCTION_4_4();
            }

            if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
            {
              v122 = 1;
            }

            else
            {
              v122 = -128;
            }

            ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v160, v122, v159, v162);
            v123 = v148;

            outlined consume of ConversationControlsRecipe.View?(v155, 0);

            v124 = v13[18];
            memcpy(v163, (v101 + v124), 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v163, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
            memcpy((v101 + v124), v162, 0x49uLL);
          }

          else
          {
            v138 = v148;

            outlined consume of ConversationControlsRecipe.View?(v155, 0);
          }

          outlined init with copy of ConversationControlsRecipe(v101, v86);
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v139, v140, v141, v13);
          outlined destroy of ConversationControlsRecipe(v101);
          goto LABEL_61;
        }

        v117 = v148;

        outlined consume of ConversationControlsRecipe.View?(v155, 0);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_58:
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v135, v136, v137, v13);
LABEL_61:
        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(v164);
    v113 = v145;
    *v79 = v147;
    *(v79 + 1) = v113;
    *(v79 + 4) = v144;
    v79[40] = v143;
    v100 = v153;
    outlined init with copy of ConversationControlsRecipe(v16, v153);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v13);
    outlined destroy of ConversationControlsRecipe(v16);
    v99 = v158;
    v101 = v152;
    goto LABEL_42;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v50 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v50, &static Logger.conversationControls);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_18_0(v52))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v53, v52, "defaultHUDRecipe: Unable to create recipe attributes.");
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

void DefaultHUDControlsRecipeGenerator.unauthorizedParticipantHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v106 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  v104 = v9;
  v10 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v94[-v16];
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*MEMORY[0x1E69E7D40] & *a1) + 2344;
  v20 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x928);
  v21 = v20(v15);
  v22 = (*((*v18 & *a1) + 0x2C0))();
  v23.super.isa = ConversationControlsHelper.unauthorizedParticipantAssets(controlsMode:conversation:)(v21, v22).super.isa;
  v107 = v24;

  if (v23.super.isa)
  {
    *&v100 = v19;
    v103 = a2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
    v25 = static UIImage.symbolImage(for:)(v111);
    outlined destroy of SymbolImageDescription(v111);
    v26 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v27 = v26;
    [v27 setContentMode_];
    v28 = [objc_opt_self() labelColor];
    v105 = v27;
    [v27 setTintColor_];

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v29, &static Logger.conversationControls);
    v30 = a1;
    v98 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v102 = v17;
    v101 = v10;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_42();
      v35 = OUTLINED_FUNCTION_23();
      __dst[0] = v35;
      *v34 = 136315138;
      LOBYTE(v112[0]) = (v20)();
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, __dst);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1BBC58000, v31, v32, "unauthorizedParticipantHud, controlsMode: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_27();
    }

    __dst[0] = 1;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 7;
    v39 = v105;
    v99 = [v105 hash];
    v40 = type metadata accessor for AttributedString();
    v41 = v106;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v40);
    v45 = v23.super.isa;
    v46 = v107;

    ConversationControlsHelper.buttonShelfActions(controlsManager:)(v30, v112);
    v97 = v112[1];
    v100 = v112[0];
    v96 = v113;
    v95 = v114;
    v47 = v101;
    v48 = v101[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
    v52 = (v13 + v47[10]);
    v53 = v13 + v47[15];
    *(v53 + 4) = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
    v53[40] = -2;
    *(v13 + v47[16]) = 0;
    v54 = v13 + v47[17];
    v55 = (v13 + v47[18]);
    *v55 = 1;
    OUTLINED_FUNCTION_13_7(v55, 0);
    outlined init with copy of ConversationControlsType(__dst, v13);
    v13[6] = 0;
    v13[7] = v39;
    v56 = v45;
    v57 = v99;
    v13[8] = 0;
    v13[9] = v57;
    v13[10] = v45;
    v13[11] = v46;
    v52[1] = 0;
    v52[2] = 0;
    *v52 = 0;
    outlined assign with copy of AttributedString?(v41, v13 + v48);
    *(v13 + v47[11]) = 2;
    *(v13 + v47[12]) = 0;
    *(v13 + v47[13]) = 1;
    *(v13 + v47[14]) = 1;
    *v54 = 0;
    *(v54 + 1) = 0;
    v54[16] = -1;
    v58 = *(*&v112[0] + 16);
    if (v114 < 0)
    {
      v59 = v104;
      if (v58 > 5)
      {

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v112);
        if (os_log_type_enabled(v60, v61))
        {
          v46 = OUTLINED_FUNCTION_42();
          v62 = OUTLINED_FUNCTION_23();
          v109 = v62;
          *v46 = 136315138;
          v108 = v58;
          v73 = String.init<A>(reflecting:)();
          v58 = v74;
          v75 = v56;
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v109);

          *(v46 + 4) = v76;
          v56 = v75;
          v67 = "Too many buttonShelf actions (%s)";
          goto LABEL_16;
        }

LABEL_17:

        outlined destroy of ConversationControlsRecipe.Actions(v112);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        outlined destroy of ConversationControlsType(__dst);
        OUTLINED_FUNCTION_18_38();
        outlined destroy of ConversationControlsRecipe(v13);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v47);
LABEL_19:
        if (__swift_getEnumTagSinglePayload(v59, 1, v47) == 1)
        {

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v47);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v59, v58);
          if (SBUIIsSystemApertureEnabled())
          {
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_18_0(v88))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_15_36(&dword_1BBC58000, v89, v88, "unauthorizedParticipantHUD: [SystemAperture] showing content");
              OUTLINED_FUNCTION_4_4();
            }

            v90 = (v58 + v47[18]);
            memcpy(__dst, v90, 0x49uLL);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
            *v90 = 0u;
            v90[1] = 0u;
            v90[2] = 0u;
            v90[3] = 0u;
            *(v90 + 8) = 4;
            *(v90 + 72) = -2;
          }

          else
          {
          }

          outlined init with copy of ConversationControlsRecipe(v58, v46);
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v91, v92, v93, v47);
          outlined destroy of ConversationControlsRecipe(v58);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    else
    {
      v59 = v104;
      if (v58 > 2)
      {

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.fault.getter();
        outlined destroy of ConversationControlsRecipe.Actions(v112);
        if (os_log_type_enabled(v60, v61))
        {
          v46 = OUTLINED_FUNCTION_42();
          v62 = OUTLINED_FUNCTION_23();
          v109 = v62;
          *v46 = 136315138;
          v108 = v58;
          v63 = String.init<A>(reflecting:)();
          v58 = v64;
          v65 = v56;
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v109);

          *(v46 + 4) = v66;
          v56 = v65;
          v67 = "Too many trailing actions (%s)";
LABEL_16:
          _os_log_impl(&dword_1BBC58000, v60, v61, v67, v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_27();
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(__dst);
    v80 = v97;
    *v53 = v100;
    *(v53 + 1) = v80;
    *(v53 + 4) = v96;
    v53[40] = v95;
    outlined init with copy of ConversationControlsRecipe(v13, v59);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v47);
    outlined destroy of ConversationControlsRecipe(v13);
    OUTLINED_FUNCTION_18_38();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
}

uint64_t DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))();
  if (v4 || (Features.sharePlayInCallsEnabled.getter() & 1) != 0 && (OUTLINED_FUNCTION_5_84(), (*(v27 + 672))(), v29 = v28, v30 = swift_getObjectType(), LOBYTE(v29) = (*(v29 + 152))(v30, v29), swift_unknownObjectRelease(), (v29 & 1) != 0) || (v31 = [objc_opt_self() currentDevice], v32 = objc_msgSend(v31, sel_userInterfaceIdiom), v31, v32 == 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v6.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
    if (!v4)
    {
      OUTLINED_FUNCTION_5_84();
      v46 += 84;
      v47 = *v46;
      (*v46)();
      OUTLINED_FUNCTION_87();
      ObjectType = swift_getObjectType();
      v97 = (*(v1 + 72))(ObjectType, v1);
      v49 = swift_unknownObjectRelease();
      (v47)(v49);
      OUTLINED_FUNCTION_87();
      v50 = swift_getObjectType();
      (*(v1 + 48))(v98, v50, v1);
      swift_unknownObjectRelease();
      v51 = ConversationControlsHelper.badge(forCall:)(v98);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v52 = ConversationControlsHelper.assetsForCallHUD(controlsManager:)(a1);
      if (v52)
      {
        v53 = v52;

        v54 = one-time initialization token for conversationKit;
        v55 = v53;
        if (v54 != -1)
        {
          OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
        }

        v56 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v56, static Logger.conversationKit);
        v57 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v21))
        {
          v58 = OUTLINED_FUNCTION_33();
          *v58 = 0;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v59, v60, v61, v62, v58, 2u);
          OUTLINED_FUNCTION_27();
        }
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
        }

        v63 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v63, static Logger.conversationKit);
        v64 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v21))
        {
          v65 = OUTLINED_FUNCTION_33();
          *v65 = 0;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v66, v67, v68, v69, v65, 2u);
          OUTLINED_FUNCTION_27();
        }
      }

LABEL_36:
      swift_beginAccess();
      if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation == 1)
      {

        v70 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v73 = 0x80000001BC505810;
        v74 = 0xD00000000000001CLL;
      }

      else
      {
        OUTLINED_FUNCTION_5_84();
        v75 += 84;
        v76 = *v75;
        (*v75)(v77);
        OUTLINED_FUNCTION_87();
        swift_getObjectType();
        Call.isFromMessagesScreenShare.getter();
        v78 = OUTLINED_FUNCTION_28_28();
        if ((v21 & 1) == 0 || (v76(v78), OUTLINED_FUNCTION_87(), v79 = swift_getObjectType(), (*(v21 + 208))(v79, v21), v80 = OUTLINED_FUNCTION_28_28(), v21 == 1))
        {
          if (!v4)
          {
            return v97;
          }

          v81 = [v4 screenSharingRequests];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
          lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
          v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v81) = specialized Set.isEmpty.getter();

          if (v81)
          {
            goto LABEL_45;
          }
        }

        v76(v80);
        OUTLINED_FUNCTION_87();
        v82 = swift_getObjectType();
        v83 = (*(v21 + 320))(v82, v21);
        swift_unknownObjectRelease();
        if (!v83)
        {
LABEL_45:
          v45 = v97;
LABEL_52:

          return v45;
        }

        v76(v84);
        v86 = v85;
        v87 = swift_getObjectType();
        v88 = (*(v86 + 320))(v87, v86);
        swift_unknownObjectRelease();
        v70 = [objc_opt_self() conversationKit];
        if (v88 == 1)
        {
          v74 = 0x794D206572616853;
          v73 = 0xEF6E656572635320;
        }

        else
        {
          v74 = 0x535F4E4545524353;
          v73 = 0xEE00474E49524148;
        }

        v71 = 0x61737265766E6F43;
        v72 = 0xEF74694B6E6F6974;
      }

      v45 = OUTLINED_FUNCTION_48_1(v74, v73, v71, v72);

      goto LABEL_52;
    }

    v7 = v4;
    ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(a1, v7);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
    {
      if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x388))())
      {
        v14 = [v7 link];
        if (v14 && (v97 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v14), v15))
        {
        }

        else
        {
          v92 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v97 = OUTLINED_FUNCTION_48_1(v93, v94, v95, v96);
        }

        if (!v11)
        {
          goto LABEL_12;
        }

        goto LABEL_56;
      }

      v89 = [v7 inCallDisplayName];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11)
      {
LABEL_56:

        v97 = v9;
        goto LABEL_12;
      }

      v97 = v90;
    }

    else
    {
      v16 = [v7 displayName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_12:
    v17 = one-time initialization token for conversationKit;
    v18 = v13;
    if (v17 != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v19, static Logger.conversationKit);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v21))
    {
      v22 = OUTLINED_FUNCTION_33();
      *v22 = 0;
      OUTLINED_FUNCTION_24_6();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_36;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_42();
    v38 = OUTLINED_FUNCTION_23();
    v98[0] = v38;
    *v37 = 136315138;
    v39 = (*((*v3 & *v34) + 0x2A0))();
    swift_getObjectType();
    v98[5] = v39;
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v98);

    *(v37 + 4) = v42;
    OUTLINED_FUNCTION_26_26(&dword_1BBC58000, v43, v44, "defaultHUDRecipe: No active conversation, call: %s");
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  return 0;
}

void DefaultHUDControlsRecipeGenerator.defaultLeadingAccessoryView(controlsManager:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  v83 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v6);
  if (v83 || (Features.sharePlayInCallsEnabled.getter() & 1) != 0 && (OUTLINED_FUNCTION_25_29(), (*(v27 + 672))(), v29 = v28, v30 = swift_getObjectType(), LOBYTE(v29) = (*(v29 + 152))(v30, v29), swift_unknownObjectRelease(), (v29 & 1) != 0) || (v31 = [objc_opt_self() currentDevice], v32 = objc_msgSend(v31, sel_userInterfaceIdiom), v31, v32 == 1))
  {
    v82 = DefaultHUDControlsRecipeGenerator.defaultRecipeAttributes(controlsManager:)(a1);
    if (v10)
    {
      v13 = v10;
      v14 = v12;
      v77 = v11;
      v79 = v4;
      v80 = v2;
      OUTLINED_FUNCTION_25_29();
      v15 += 84;
      v16 = *v15;
      (*v15)();
      v18 = v17;
      ObjectType = swift_getObjectType();
      (*(v18 + 48))(v84, ObjectType, v18);
      swift_unknownObjectRelease();
      v20 = ConversationControlsHelper.badgeBackgroundColor(forCall:)(v84);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v78 = v8;
      v81 = v20;
      if (v83)
      {
        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v21 = v83;
        v22 = v14;
        v23 = [v14 image];

        v24 = v20;
        v25 = v82;
        v26 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v21, v23, v82, v13, v24);
      }

      else
      {
        v49 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v16();
        OUTLINED_FUNCTION_87();
        v22 = v14;
        v50 = [v14 image];
        v51 = v9;
        v52 = swift_getObjectType();
        v53 = v81;
        v54 = v52;
        v9 = v51;
        v26 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(a1, 0, v50, v53, v49, v54, v16);
        v25 = v82;
      }

      v55 = one-time initialization token for conversationControls;
      v56 = v26;
      if (v55 != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v57 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v57, &static Logger.conversationControls);
      v58 = v22;
      v59 = v56;
      swift_bridgeObjectRetain_n();
      v60 = v77;
      v82 = v58;
      v61 = v60;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v22;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77 = OUTLINED_FUNCTION_23();
        v84[0] = v77;
        *v65 = 136315650;

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v13, v84);

        *(v65 + 4) = v67;
        *(v65 + 12) = 2112;
        *(v65 + 14) = v59;
        *v66 = v59;
        LODWORD(v67) = v64 != 0;
        *(v65 + 22) = 1024;
        v68 = v59;
        v69 = v61;
        v70 = v82;

        *(v65 + 24) = v67;

        v61 = v69;

        _os_log_impl(&dword_1BBC58000, v62, v63, "defaultHUD:\n\ttitle:%s\n\tavatar:%@,\n\tbadge?:%{BOOL}d", v65, 0x1Cu);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v9 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_27();
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v71 = v82;
        swift_bridgeObjectRelease_n();
      }

      v73 = v79;
      v72 = v80;
      v74 = [v59 view];
      v75 = v78;
      (*((*v9 & *a1) + 0x2A8))(v74);
      (*((*v9 & *v59) + 0x58))(v75);

      (*(v73 + 8))(v75, v72);
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v45 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v45, &static Logger.conversationControls);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_33();
        *v48 = 0;
        _os_log_impl(&dword_1BBC58000, v46, v47, "defaultHUDRecipe: Unable to create recipe attributes.", v48, 2u);
        OUTLINED_FUNCTION_27();
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
    v34 = a1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_42();
      v38 = OUTLINED_FUNCTION_23();
      v84[0] = v38;
      *v37 = 136315138;
      v39 = (*((*v9 & *v34) + 0x2A0))();
      swift_getObjectType();
      v84[5] = v39;
      v40 = String.init<A>(describing:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v84);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_26_26(&dword_1BBC58000, v43, v44, "defaultHUDRecipe: No active conversation, call: %s");
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void *PickablePerson.contact.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact);
  v2 = v1;
  return v1;
}

uint64_t PickablePerson.address.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PickablePerson_address);

  return v1;
}

id PickablePerson.init(contact:handle:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact] = a1;
  *&v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle] = a2;
  v4 = a1;
  v5 = a2;
  v6 = [v5 value];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address];
  *v10 = v7;
  v10[1] = v9;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PickablePerson();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id PickablePerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PickablePerson.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickablePerson();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int CaptionsPauseTransition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t static CaptionsPausedState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v3 != 4)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        return 1;
      }
    }

    else if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Void __swiftcall CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(ConversationKit::CaptionsPauseTransition pauseTransitionIfAllowed)
{
  v3 = v2;
  v4 = v1;
  v5 = *pauseTransitionIfAllowed;
  if ((*(v2 + 8))() & 1) == 0 || (v6 = OUTLINED_FUNCTION_45_1(), (v7(v6)) || (v8 = *(v3 + 16), v9 = OUTLINED_FUNCTION_45_1(), v8(v9) == 2) || ((v10 = OUTLINED_FUNCTION_45_1(), v8(v10) != 1) ? (v11 = v5 == 0) : (v11 = 1), v11))
  {
    v12 = OUTLINED_FUNCTION_45_1();
    v13(v12);
    if (v51[1] == 4)
    {
      v14 = *(v3 + 24);
      v15 = OUTLINED_FUNCTION_45_1();
      v14(v15);
      if (v50 == 3 || !v50)
      {
        v17 = 1;
      }

      else
      {
        v16 = OUTLINED_FUNCTION_45_1();
        v14(v16);
        v17 = v48;
      }

      v49 = v17;
      (*(v3 + 40))(&v49, v4, v3);
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    v29 = OUTLINED_FUNCTION_45_1();
    v30(v29);
    if (v47 == 4)
    {
      v31 = *(v3 + 56);
      v32 = OUTLINED_FUNCTION_45_1();
      if (v31(v32))
      {
        v33 = *(v3 + 24);
        v34 = OUTLINED_FUNCTION_45_1();
        v33(v34);
        if (v46 == 3 || !v46)
        {
          v18 = 1;
        }

        else
        {
          v35 = OUTLINED_FUNCTION_45_1();
          v33(v35);
          if (v45 == 3)
          {
            v18 = 1;
          }

          else
          {
            v18 = v45;
          }
        }
      }

      else
      {
        v18 = 0;
      }

      v38 = OUTLINED_FUNCTION_45_1();
      v19 = v31(v38);
LABEL_41:
      if (v18 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }

LABEL_15:
    LOBYTE(v18) = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v20 = OUTLINED_FUNCTION_45_1();
  v21(v20);
  v22 = v44;
  if (v44 == 4)
  {
    v23 = *(v3 + 56);
    v24 = OUTLINED_FUNCTION_45_1();
    v19 = v23(v24);
    v25 = OUTLINED_FUNCTION_45_1();
    if ((v23(v25) & 1) == 0)
    {
      LOBYTE(v18) = 0;
      goto LABEL_16;
    }

    v26 = *(v3 + 24);
    v27 = OUTLINED_FUNCTION_45_1();
    v26(v27);
    if (v42 == 3)
    {
      goto LABEL_42;
    }

    if (!v42)
    {
      goto LABEL_42;
    }

    v28 = OUTLINED_FUNCTION_45_1();
    v26(v28);
    v18 = v41;
    if (v41 == 3)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v43 = 4;
  (*(v3 + 40))(&v43, v4, v3);
  v36 = OUTLINED_FUNCTION_45_1();
  if ((v37(v36) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v22 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v22;
  }

  v19 = 1;
  if (v22 != 3)
  {
    goto LABEL_41;
  }

LABEL_42:
  v39 = OUTLINED_FUNCTION_45_1();
  if (v40(v39))
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    LOBYTE(v18) = 2;
  }

LABEL_16:
  v51[0] = v18;
  (*(v3 + 80))(v51, v19 & 1, v4, v3);
}

unint64_t lazy protocol witness table accessor for type CaptionsPauseTransition and conformance CaptionsPauseTransition()
{
  result = lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition;
  if (!lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionsPauseTransition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for CaptionsPausedState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 4;
    if (v6 < 3)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    if (v9 + 1 >= 2)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionsPausedState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for CaptionsPausedState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CaptionsPausedState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t key path getter for ConversationControlsShareCardViewController.delegate : ConversationControlsShareCardViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationControlsShareCardViewController.delegate : ConversationControlsShareCardViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationControlsShareCardViewController.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void ConversationControlsShareCardViewController.delegate.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13(a1);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*ConversationControlsShareCardViewController.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ConversationControlsShareCardViewController.delegate.modify;
}

void ConversationControlsShareCardViewController.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path getter for ConversationControlsShareCardViewController.updateSheetDetent : ConversationControlsShareCardViewController@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationControlsShareCardViewController.updateSheetDetent : ConversationControlsShareCardViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t ConversationControlsShareCardViewController.updateSheetDetent.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t ConversationControlsShareCardViewController.updateSheetDetent.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13(a1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

id ConversationControlsShareCardViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = closure #1 in ConversationControlsShareCardViewController.backgroundMaterialView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in ConversationControlsShareCardViewController.backgroundMaterialView.getter()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

void closure #1 in ConversationControlsShareCardViewController.headerView.getter(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v1)
  {
    v14.receiver = a1;
    v14.super_class = swift_getObjectType();
    v3 = v1;
    v4 = objc_msgSendSuper2(&v14, sel_modalPresentationStyle) == 7;
    State.init(wrappedValue:)();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32UIHostingAutoResizableControllerCyAA19ShareCardHeaderViewVGMd, &_s15ConversationKit32UIHostingAutoResizableControllerCyAA19ShareCardHeaderViewVGMR));
    v6 = specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(v3, v4, v12, v13, 1);
    [a1 addChildViewController_];
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 setBackgroundColor_];

      v9 = [v6 view];
      if (v9)
      {
        [v9 setTranslatesAutoresizingMaskIntoConstraints_];

        [v6 didMoveToParentViewController_];
        v10 = [v6 view];

        if (v10)
        {

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  [v11 init];
}

id ConversationControlsShareCardViewController.modalPresentationStyle.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_modalPresentationStyle);
}

id closure #1 in ConversationControlsShareCardViewController.closeButton.getter(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v2 _setImageColor_forState_];

  v5 = [v2 backgroundImageForState_];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 secondarySystemFillColor];
    v8 = [v6 imageWithTintColor_];
  }

  else
  {
    v8 = 0;
  }

  [v2 setBackgroundImage:v8 forState:0];
  [v2 addTarget:a1 action:sel_didTapCloseButton forControlEvents:64];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v9) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v9];

  return v2;
}

id ConversationControlsShareCardViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    [v4 setShowsVerticalScrollIndicator_];
    [v4 setShowsHorizontalScrollIndicator_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ConversationControlsShareCardViewController.scrollViewContent.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ConversationControlsShareCardViewController.headerView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void closure #1 in ConversationControlsShareCardViewController.controlsView.getter(char *a1)
{
  v2 = type metadata accessor for ShareCardControlsView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&a1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v5)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ShareCardViewModel(0);
    swift_allocObject();
    v6 = v5;
    ShareCardViewModel.init(didTapScreenShareButton:didTapAskToScreenShareButton:didTapCollaborateButton:didTapEndSharePlay:)();
    v8 = v7;
    v20[3] = type metadata accessor for ConversationControlsManager(0);
    v20[4] = &protocol witness table for ConversationControlsManager;
    v20[0] = v6;
    v9 = *(*v8 + 688);
    v10 = v6;
    v9(v20);
    __swift_destroy_boxed_opaque_existential_1(v20);
    *v4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
    swift_storeEnumTagMultiPayload();
    v11 = v4 + *(v2 + 20);
    *v11 = partial apply for implicit closure #1 in closure #1 in ConversationControlsShareCardViewController.controlsView.getter;
    *(v11 + 1) = v8;
    v11[16] = 0;
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32UIHostingAutoResizableControllerCyAA21ShareCardControlsViewVGMd, &_s15ConversationKit32UIHostingAutoResizableControllerCyAA21ShareCardControlsViewVGMR));

    v13 = specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(v4, 1);
    [a1 addChildViewController_];
    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v14 setBackgroundColor_];

      v16 = [v13 view];
      if (v16)
      {
        [v16 setTranslatesAutoresizingMaskIntoConstraints_];

        [v13 didMoveToParentViewController_];
        v17 = [v13 view];

        if (v17)
        {

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  [v18 init];
}

void closure #2 in closure #1 in ConversationControlsShareCardViewController.controlsView.getter(NSObject *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(a1);
  }
}

void ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(NSObject *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationControls == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "Did tap share card ask to share screen button", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    [v2 dismissViewControllerAnimated:1 completion:0];
    if (!a1)
    {
      a1 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(a1, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1BBC58000, a1, v20, "Cannot request to screen share without a handle", v21, 2u);
        MEMORY[0x1BFB23DF0](v21, -1, -1);
      }

      goto LABEL_16;
    }

    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager);
    if (!v7)
    {
      break;
    }

    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x2C0);
    v46 = a1;
    v9 = v8();
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v9;
    v11 = [v9 mergedActiveRemoteParticipants];
    v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    v2 = lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized Set.count.getter();

    if (!v13)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BBC58000, v27, v28, "Cannot request to screen share with no participants", v29, 2u);
        MEMORY[0x1BFB23DF0](v29, -1, -1);
      }

      v26 = v46;
      goto LABEL_17;
    }

    v45 = v10;
    v14 = [v10 mergedActiveRemoteParticipants];
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    a1 = v12;
    if ((v15 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v15 = v49;
      v16 = v50;
      v17 = v51;
      v18 = v52;
      v19 = v53;
    }

    else
    {
      v30 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v2 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v19 = v32 & *(v15 + 56);

      v17 = v2;
      v18 = 0;
    }

    v33 = (v17 + 64) >> 6;
    if (v15 < 0)
    {
      while (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v2 = v48;
        v36 = v18;
        v37 = v19;
        if (!v48)
        {
          break;
        }

LABEL_36:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v38 = [v2 handle];
        v39 = static NSObject.== infix(_:_:)();

        if (v39)
        {
          outlined consume of Set<TUHandle>.Iterator._Variant(v15);

          v43 = [objc_opt_self() sharedInstance];
          v44 = [v43 conversationManager];

          [v44 requestParticipantToShareScreen:v2 forConversation:v45];
          return;
        }

        v18 = v36;
        v19 = v37;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_39;
    }

LABEL_28:
    v34 = v18;
    v35 = v19;
    v36 = v18;
    if (v19)
    {
LABEL_32:
      v37 = (v35 - 1) & v35;
      v2 = *(*(v15 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (v2)
      {
        goto LABEL_36;
      }

LABEL_39:
      outlined consume of Set<TUHandle>.Iterator._Variant(v15);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1BBC58000, v40, v41, "Couldn't find participant for request to screen share", v42, 2u);
        MEMORY[0x1BFB23DF0](v42, -1, -1);
      }

      return;
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        goto LABEL_39;
      }

      v35 = *(v16 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  v22 = a1;
LABEL_13:
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Cannot request to screen share without a conversation", v25, 2u);
    MEMORY[0x1BFB23DF0](v25, -1, -1);
  }

LABEL_16:
  v26 = a1;
LABEL_17:
}