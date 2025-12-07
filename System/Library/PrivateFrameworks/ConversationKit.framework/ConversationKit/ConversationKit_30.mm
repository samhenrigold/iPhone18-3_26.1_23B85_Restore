uint64_t ConversationControlsType.wantsBannerAndJindo.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v25[0]);
  v16 = 1;
  if (v27 == 4)
  {
    goto LABEL_12;
  }

  if (v27 != 5)
  {
    if (v27 != 7 || ((v18 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v26), v17 != 31) ? (v20 = v17 == 26) : (v20 = 1), (v21 = vorrq_s8(v19, v18), v22 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), v20) ? (v23 = *&v22 == 0) : (v23 = 0), !v23))
    {
      v16 = 0;
LABEL_12:
      outlined destroy of ConversationControlsType(v25);
    }
  }

  return v16;
}

uint64_t ConversationControlsType.wantsLockScreenPresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v24[0]);
  if (v26 == 5)
  {
    return 1;
  }

  if (v26 == 7)
  {
    v17 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v24[0], v24[1], v24[2], v25);
    v19 = v16 == 31 || v16 == 26;
    v20 = vorrq_s8(v18, v17);
    v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    if (v19 && *&v21 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v24);
  return 0;
}

uint64_t ConversationControlsType.canShowWhileHomedOut.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 7)
  {
    v16 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
    OUTLINED_FUNCTION_11_49(v16, v17);
    OUTLINED_FUNCTION_63_7();
    v20 = v20 || v18 == 19;
    if (v20 && v19 == 0)
    {
      return 0;
    }
  }

  outlined destroy of ConversationControlsType(v23);
  return 1;
}

uint64_t ConversationControlsType.isSNaP.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 7)
  {
    v16 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
    OUTLINED_FUNCTION_11_49(v16, v17);
    OUTLINED_FUNCTION_63_7();
    v20 = v20 || v18 == 19;
    if (v20 && v19 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v23);
  return 0;
}

BOOL ConversationControlsType.isNotice.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11 == 1;
  outlined destroy of ConversationControlsType(v10);
  return v8;
}

uint64_t ConversationControlsType.accountUpdateNotice.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, v8);
  if (v9 == 1)
  {
    outlined init with take of TapInteractionHandler(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
    updated = type metadata accessor for AccountUpdateNotice(0);
    v4 = OUTLINED_FUNCTION_57_7(a1, v7);
    return __swift_storeEnumTagSinglePayload(a1, v4 ^ 1u, 1, updated);
  }

  else
  {
    v6 = type metadata accessor for AccountUpdateNotice(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
    return outlined destroy of ConversationControlsType(v8);
  }
}

uint64_t ConversationControlsType.isLaguna.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 3)
  {
    v21 = 1;
  }

  else
  {
    if (v25 == 7)
    {
      v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
      OUTLINED_FUNCTION_11_49(v16, v17);
      if (v19 == 4 && v18 == 0)
      {
        return 1;
      }
    }

    v21 = 0;
  }

  outlined destroy of ConversationControlsType(v23);
  return v21;
}

uint64_t ConversationControlsType.wantsSessionSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v21[0]);
  v16 = 1;
  if (v23)
  {
    if (v23 == 2)
    {
LABEL_7:
      outlined destroy of ConversationControlsType(v21);
      return v16;
    }

    if (v23 != 7 || v21[0] != 4 || (v17 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, 4, v21[1], v21[2], v22), OUTLINED_FUNCTION_61_7(v17, v18), v19))
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  return v16;
}

BOOL ConversationControlsType.requiresHandedOffCall.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11 == 2;
  outlined destroy of ConversationControlsType(v10);
  return v8;
}

uint64_t ConversationControlsType.supportsWaitingConversations.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v25[0]);
  if (v27 == 2)
  {
    v23 = 1;
  }

  else
  {
    if (v27 == 7)
    {
      v17 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v26);
      v19 = v16 == 31 || v16 == 3;
      v20 = vorrq_s8(v18, v17);
      v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      if (v19 && *&v21 == 0)
      {
        return 1;
      }
    }

    v23 = 0;
  }

  outlined destroy of ConversationControlsType(v25);
  return v23;
}

uint64_t ConversationControlsType.associatedNotice.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, v4);
  if (v5 == 1)
  {
    return outlined init with take of TapInteractionHandler(v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return outlined destroy of ConversationControlsType(v4);
}

uint64_t ConversationControlsType.wantsUpdateAnimationAfter.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v19[0]);
  result = 0;
  switch(v20)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v19);
      goto LABEL_3;
    case 5:
      goto LABEL_18;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (v13 && ((v14 = v12 | v10 | v11, (v9 - 1) <= 3) ? (v15 = v14 == 0) : (v15 = 0), !v15 && (v9 == 5 ? (v16 = v14 == 0) : (v16 = 0), v16 || (v9 != 6 || v14) && (v9 == 7 && !v14 || (v9 != 20 ? (v17 = (v9 & 0xFFFFFFFFFFFFFFFCLL) == 16) : (v17 = 1), !v17 ? (v18 = (v9 & 0xFFFFFFFFFFFFFFF8) == 8) : (v18 = 1), (!v18 || v14) && ((v9 - 21) <= 3 && !v14 || (v9 != 25 || v14) && (v9 == 26 && !v14 || (v9 - 27) > 2 || v14)))))))
      {
LABEL_18:
        result = 1;
      }

      else
      {
LABEL_3:
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

void ConversationControlsType.wantsUpdateAnimationBefore.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v9[0]);
  switch(v10)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v9);
      break;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (v8)
      {
        OUTLINED_FUNCTION_49_12();
      }

      break;
    default:
      return;
  }
}

uint64_t ConversationControlsType.shouldUndimScreen.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 4)
  {
    v21 = 1;
  }

  else
  {
    if (v25 == 7)
    {
      v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
      OUTLINED_FUNCTION_11_49(v16, v17);
      if (v19 == 26 && v18 == 0)
      {
        return 1;
      }
    }

    v21 = 0;
  }

  outlined destroy of ConversationControlsType(v23);
  return v21;
}

void ConversationControlsType.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  outlined init with copy of ConversationControlsType(v1, &v23);
  v9 = v23;
  switch(v24)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v23, v20);
      String.hash(into:)();
      v15 = v21;
      v16 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v16 + 8))(v15, v16);
      _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v4 + 8))(v8, v2);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return;
    case 2:
      OUTLINED_FUNCTION_10_45();
      String.hash(into:)();
      if (*(&v9 + 1))
      {
        Hasher._combine(_:)(1u);
        goto LABEL_6;
      }

      Hasher._combine(_:)(0);
      return;
    case 3:
      OUTLINED_FUNCTION_10_45();
      String.hash(into:)();
      NSObject.hash(into:)();

      return;
    case 4:
      OUTLINED_FUNCTION_54_9();
      String.hash(into:)();
LABEL_6:
      OUTLINED_FUNCTION_44_0();
      String.hash(into:)();
      goto LABEL_15;
    case 5:
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_19_24();
      v20[0] = v18;
      v20[1] = v17;
      MEMORY[0x1BFB20B10](v18 + 36, 0x80000001BC5021A0);
      String.hash(into:)();
LABEL_15:

      return;
    case 6:
      String.hash(into:)();
      ObjectType = swift_getObjectType();
      (*(*(&v9 + 1) + 56))(ObjectType, *(&v9 + 1));
      String.hash(into:)();

      swift_unknownObjectRelease();
      return;
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = v10 | *(&v9 + 1) | v11 | v12;
      if (v9 == 1 && !v14)
      {
        goto LABEL_11;
      }

      if (v9 == 2 && !v14 || v9 == 3 && !v14)
      {
        goto LABEL_21;
      }

      if (v9 == 4 && !v14)
      {
        goto LABEL_27;
      }

      if (v9 == 5 && !v14)
      {
        goto LABEL_21;
      }

      if (v9 == 6 && !v14)
      {
        goto LABEL_27;
      }

      if (v9 == 7 && !v14)
      {
LABEL_11:
        OUTLINED_FUNCTION_10_45();
        goto LABEL_21;
      }

      if (v9 == 8 && !v14 || v9 == 9 && !v14 || v9 == 10 && !v14 || v9 == 11 && !v14 || v9 == 12 && !v14)
      {
        goto LABEL_27;
      }

      if (v9 == 13 && !v14)
      {
        goto LABEL_21;
      }

      if (v9 == 14 && !v14 || v9 == 15 && !v14 || v9 == 16 && !v14 || v9 == 17 && !v14 || v9 == 18 && !v14 || v9 == 19 && !v14 || v9 == 20 && !v14 || v9 == 21 && !v14 || v9 == 22 && !v14 || v9 == 23 && !v14 || v9 == 24 && !v14)
      {
        goto LABEL_27;
      }

      if ((v9 != 25 || v14) && (v9 != 26 || v14))
      {
        if (v9 == 27 && !v14)
        {
LABEL_27:
          OUTLINED_FUNCTION_10_45();
        }
      }

      else
      {
        OUTLINED_FUNCTION_54_9();
      }

LABEL_21:
      String.hash(into:)();
      return;
    default:
      goto LABEL_27;
  }
}

void static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)()
{
  OUTLINED_FUNCTION_6_7();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v0 + 184))(ObjectType, v0);
  static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)(v4, v2);
}

double static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 supportsDynamicSystemUI] && (v4 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69D8BE8]), sel_init), v5 = objc_msgSend(v4, sel_groupConversations), v4, v5) && (TUDeviceHasChinaSKU() & 1) != 0)
  {
    v6 = 23;
  }

  else
  {
    v7 = [a1 isSystemProvider];
    v6 = 7;
    if (v7)
    {
      v6 = 5;
    }
  }

  *a2 = v6;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 7;
  return result;
}

void static ConversationControlsType.screenOrScreenedCall(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v64 = v2;
  v62 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v63 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = [objc_allocWithZone(type metadata accessor for Features()) init];
  v24 = Features.receptionistEnabled.getter();

  if (v24)
  {
    v66[3] = &type metadata for ScreeningStatusOverride;
    v66[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v66[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(v66, ObjectType, v1);
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v4 + 8))(v8, v62);
    v26 = MEMORY[0x1E6995EA0];
    v27 = MEMORY[0x1E6995E98];
  }

  else
  {
    v28 = swift_getObjectType();
    v29 = (*(v1 + 144))(v28, v1);
    v27 = MEMORY[0x1E6995E98];
    v26 = MEMORY[0x1E6995EA0];
    if (v29)
    {
      v30 = MEMORY[0x1E6995EA0];
    }

    else
    {
      v30 = MEMORY[0x1E6995E98];
    }

    (*(v11 + 104))(v19, *v30, v9);
    (*(v11 + 32))(v22, v19, v9);
  }

  v31 = *(v11 + 16);
  v31(v65, v22, v9);
  v32 = OUTLINED_FUNCTION_2_40();
  v34 = v33(v32);
  v35 = v63;
  if (v34 == *MEMORY[0x1E6995EA8])
  {
    v36 = *(v11 + 8);
    v36(v22, v9);
    v37 = OUTLINED_FUNCTION_2_40();
    (v36)(v37);
    v38 = 21;
LABEL_9:
    OUTLINED_FUNCTION_53_9(v38);
LABEL_12:
    *(v39 + 40) = 7;
    goto LABEL_13;
  }

  if (v34 == *v27)
  {
    v40 = OUTLINED_FUNCTION_48_11();
    v41(v40);
    v39 = v64;
    *(v64 + 32) = 0;
    *v39 = 0u;
    *(v39 + 16) = 0u;
    goto LABEL_12;
  }

  if (v34 == *v26)
  {
    v42 = OUTLINED_FUNCTION_48_11();
    v43(v42);
    v38 = 20;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x1E6995EB0])
  {
    v44 = OUTLINED_FUNCTION_48_11();
    v45(v44);
    v38 = 22;
    goto LABEL_9;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, &static Logger.conversationControls);
  v31(v35, v22, v9);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = v22;
    v50 = v49;
    v51 = swift_slowAlloc();
    v66[0] = v51;
    *v50 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus, MEMORY[0x1E6995EB8], MEMORY[0x1E6995EC8]);
    dispatch thunk of CustomStringConvertible.description.getter();
    v52 = OUTLINED_FUNCTION_51_9();
    (v31)(v52);
    v53 = OUTLINED_FUNCTION_46();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v55);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_1BBC58000, v47, v48, "ConversationControlsManager found unknown screening status: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    v57 = v62;
  }

  else
  {

    v58 = OUTLINED_FUNCTION_51_9();
    (v31)(v58);
    v57 = v22;
  }

  (v31)(v57, v9);
  OUTLINED_FUNCTION_53_9(22);
  *(v59 + 40) = 7;
  v60 = OUTLINED_FUNCTION_2_40();
  (v31)(v60);
LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

Swift::Int ConversationControlsType.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  ConversationControlsType.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsType(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConversationControlsType.hash(into:)(v2);
  return Hasher._finalize()();
}

ConversationKit::SharePlayAppType_optional __swiftcall SharePlayAppType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SharePlayAppType@<X0>(uint64_t *a1@<X8>)
{
  result = SharePlayAppType.rawValue.getter();
  *a1 = result;
  return result;
}

void ConversationControlsSecondaryPillButtonType.description.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_15_14();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_26_23();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v3, v9);
      break;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
      return;
    case 7u:
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      v4 = *v3;
      _StringGuts.grow(_:)(24);

      OUTLINED_FUNCTION_65_5();
      v5 = [v4 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      MEMORY[0x1BFB20B10](v6, v8);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);

      break;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsContext(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t ForegroundApp.__allocating_init(bundleIdentifier:type:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {

    return 0;
  }

  else
  {
    v5 = a3;
    return (*(v3 + 96))(a1, a2, &v5);
  }
}

id ForegroundApp.init(bundleIdentifier:type:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = &v3[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
  *v5 = a1;
  v5[1] = a2;
  v3[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type] = v4;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ForegroundApp();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ForegroundApp.appName.getter()
{
  v0 = ForegroundApp.applicationRecord.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_68(0xD000000000000010, 0x80000001BC501010, v3, v4);
  }

  return OUTLINED_FUNCTION_15_14();
}

id ForegroundApp.isGameCenterApplication.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v0 + 328))() & 1) == 0)
  {
    return 0;
  }

  v1 = ForegroundApp.applicationRecord.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 entitlements];
  v4 = LSPropertyList.containsAnyGameCenterEntitlements()();

  if (v4)
  {
    v5 = [v2 compatibilityObject];
    v6 = [v5 isGameCenterEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Swift::Bool __swiftcall LSPropertyList.containsAnyGameCenterEntitlements()()
{
  v1._object = 0x80000001BC4F7B60;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  if (LSPropertyList.contains(entitlement:)(v1))
  {
    return 1;
  }

  v3 = MEMORY[0x1BFB209B0](0xD00000000000001FLL, 0x80000001BC4F7B60);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v5 = [v0 objectForKey:v3 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v6 = *(v7 + 16);

      return v6 != 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v10, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t ForegroundApp.automaticShareState.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type) == 2)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 activityAuthorizedBundleIdentifiers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Dictionary.subscript.getter(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLValue];

  if (v6)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id ForegroundApp.applicationRecord.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v2 = OUTLINED_FUNCTION_29_6();
  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 1);
  if (!result)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315138;
      v10 = OUTLINED_FUNCTION_29_6();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      _os_log_impl(&dword_1BBC58000, v7, v8, "Unable to get app record for bundleIdentifier:%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall ForegroundApp.setAutomaticShareState(_:)(Swift::Bool a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 conversationManager];

  v5 = MEMORY[0x1BFB209B0](*(v1 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(v1 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8));
  [v4 setActivityAuthorization:a1 forBundleIdentifier:v5];
}

uint64_t ForegroundApp.debugDescription.getter()
{
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_65_5();
  v4 = v1;
  MEMORY[0x1BFB20B10](*(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8));
  MEMORY[0x1BFB20B10](0x3A65707974202CLL, 0xE700000000000000);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v2);

  return v4;
}

id ForegroundApp.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ForegroundApp.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ForegroundApp();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void static ForegroundCollaborationState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v64 = v0;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v60 = v2;
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v57 - v6;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v57 - v13;
  v14 = type metadata accessor for StagedCollaboration(0);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28ForegroundCollaborationStateO_ACtMd, &_s15ConversationKit28ForegroundCollaborationStateO_ACtMR);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v34 = &v57 + *(v33 + 56) - v31;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_107();
      OUTLINED_FUNCTION_29_6();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
      if (OUTLINED_FUNCTION_60_7() != 1)
      {
        (*(v60 + 8))(&v25[v39], v61);
        (*(v63 + 8))(v25, v62);
        goto LABEL_16;
      }

      v40 = v62;
      v41 = v57;
      (*(v63 + 32))(v57, v34, v62);
      v42 = v60;
      v43 = *(v60 + 32);
      v44 = v61;
      v43(v59, &v25[v39], v61);
      v45 = &v34[v39];
      v46 = v58;
      v43(v58, v45, v44);
      v47 = v41;
      v48 = v63;
      v49 = static URL.== infix(_:_:)();
      v50 = *(v48 + 8);
      v50(v25, v40);
      if (v49)
      {
        v51 = v59;
        static Date.== infix(_:_:)();
        v52 = *(v42 + 8);
        v52(v46, v44);
        v52(v51, v44);
      }

      else
      {
        v55 = *(v42 + 8);
        v55(v46, v44);
        v55(v59, v44);
      }

      v50(v47, v62);
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_0_107();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      if (OUTLINED_FUNCTION_60_7() == 2)
      {
        v36 = v62;
        v37 = v63;
        (*(v63 + 32))(v11, v34, v62);
        static URL.== infix(_:_:)();
        v38 = *(v37 + 8);
        v38(v11, v36);
        v38(v22, v36);
        goto LABEL_20;
      }

      (*(v63 + 8))(v22, v62);
      goto LABEL_16;
    case 3u:
      if (OUTLINED_FUNCTION_60_7() == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    case 4u:
      if (OUTLINED_FUNCTION_60_7() != 4)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_0_107();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR);
      if (OUTLINED_FUNCTION_60_7())
      {
        OUTLINED_FUNCTION_5_67();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v28, v35);
LABEL_16:
        outlined destroy of CallControlsService?(v32, &_s15ConversationKit28ForegroundCollaborationStateO_ACtMd, &_s15ConversationKit28ForegroundCollaborationStateO_ACtMR);
      }

      else
      {
        OUTLINED_FUNCTION_6_61();
        OUTLINED_FUNCTION_15_14();
        outlined init with take of SystemUpdateNotice();
        v53 = OUTLINED_FUNCTION_2_40();
        static StagedCollaboration.== infix(_:_:)(v53, v54);
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v18, type metadata accessor for StagedCollaboration);
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v28, type metadata accessor for StagedCollaboration);
LABEL_20:
        OUTLINED_FUNCTION_1_94();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v32, v56);
      }

      OUTLINED_FUNCTION_30_0();
      return;
  }
}

uint64_t ForegroundCollaborationState.isBannerSuppressed.getter()
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v6 + 8))(v0 + v5);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v7 + 8))(v0);
      v2 = 1;
      break;
    case 2u:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0);
      break;
    case 3u:
    case 4u:
      return v2;
    default:
      v2 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48));
      OUTLINED_FUNCTION_5_67();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, v3);
      break;
  }

  return v2;
}

uint64_t ForegroundCollaborationState.isBannerSuppressed.setter(char a1)
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_29_6();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v9 + 8))(v1 + v8);
      goto LABEL_4;
    case 2:
LABEL_4:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      result = (*(v10 + 8))(v1);
      break;
    case 3:
    case 4:
      return result;
    default:
      OUTLINED_FUNCTION_1_94();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v2, v6);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48);
      OUTLINED_FUNCTION_6_61();
      OUTLINED_FUNCTION_46();
      outlined init with take of SystemUpdateNotice();
      *(v2 + v7) = a1 & 1;
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

void (*ForegroundCollaborationState.isBannerSuppressed.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  *v4 = v2;
  v4[1] = type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 64);
  v4[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v4[3] = v7;
  OUTLINED_FUNCTION_0_107();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  v8 = 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v12 + 8))(&v7[v11]);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v13 + 8))(v7);
      v8 = 1;
      break;
    case 2u:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v7);
      break;
    case 3u:
    case 4u:
      break;
    default:
      v8 = v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48)];
      OUTLINED_FUNCTION_5_67();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v7, v9);
      break;
  }

  *(v4 + 32) = v8;
  return ForegroundCollaborationState.isBannerSuppressed.modify;
}

void ForegroundCollaborationState.isBannerSuppressed.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    ForegroundCollaborationState.isBannerSuppressed.setter(*(*a1 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v9 = v2[2];
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v11 + 8))(v9 + v10);
        goto LABEL_7;
      case 2u:
        v9 = v2[2];
LABEL_7:
        type metadata accessor for URL();
        OUTLINED_FUNCTION_15_1();
        (*(v12 + 8))(v9);
        break;
      case 3u:
      case 4u:
        break;
      default:
        v6 = *v2;
        OUTLINED_FUNCTION_1_94();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v6, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48);
        OUTLINED_FUNCTION_6_61();
        outlined init with take of SystemUpdateNotice();
        *(v6 + v8) = v3;
        swift_storeEnumTagMultiPayload();
        break;
    }

    v5 = v2[2];
    v4 = v2[3];
  }

  free(v4);
  free(v5);

  free(v2);
}

void ConversationControlsViewController.updateBackgroundBlur()(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v5, a3, v6, 2u);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t CaptureGroup.name.getter()
{
  OUTLINED_FUNCTION_6_7();

  return OUTLINED_FUNCTION_38_2();
}

void CaptureGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void UIVisualEffectView.setCaptureGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  [v3 _setCaptureView_];
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v3 _setGroupName_];
}

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of SystemUpdateNotice()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsContext and conformance ConversationControlsContext()
{
  result = lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext;
  if (!lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass()
{
  result = lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass;
  if (!lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason()
{
  result = lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason;
  if (!lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HUDInfoButtonType and conformance HUDInfoButtonType()
{
  result = lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType;
  if (!lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsType and conformance ConversationControlsType()
{
  result = lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType;
  if (!lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType;
  if (!lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayAppType and conformance SharePlayAppType()
{
  result = lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType;
  if (!lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RejectedRemoteControlRequesetContext(_BYTE *result, int a2, int a3)
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

uint64_t destructiveInjectEnumTag for ConversationControlsType(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t type metadata completion function for ConversationControlsSecondaryPillButtonType(uint64_t a1)
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUNearbySuggestion, 0x1E69D8C88);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Participant(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationControlsContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ForegroundCollaborationState(uint64_t a1)
{
  type metadata accessor for (collaboration: StagedCollaboration, isBannerSuppressed: Bool)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (highlightURL: URL, started: Date)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (highlightURL: URL)();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (collaboration: StagedCollaboration, isBannerSuppressed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (collaboration: StagedCollaboration, isBannerSuppressed: Bool))
  {
    type metadata accessor for StagedCollaboration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (collaboration: StagedCollaboration, isBannerSuppressed: Bool));
    }
  }
}

void type metadata accessor for (highlightURL: URL, started: Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (highlightURL: URL, started: Date))
  {
    type metadata accessor for URL();
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (highlightURL: URL, started: Date));
    }
  }
}

void type metadata accessor for (highlightURL: URL)()
{
  if (!lazy cache variable for type metadata for (highlightURL: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (highlightURL: URL));
    }
  }
}

void *ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:accessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v10 = v9;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  v11 = v10;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(a6, a7, v11);

  return v10;
}

uint64_t static ConversationControlsAction.rejectCall(controlsManager:)@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  return static ConversationControlsAction.rejectCall(controlsManager:)(a1, a3);
}

{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  if ((*((*v5 & *a1) + 0x2C0))(v6))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  }

  v7 = OUTLINED_FUNCTION_40_2();
  *a3 = ConversationControlsAction.CallButtonStyle.init(_:conversation:)(v7, v8, v9);
  type metadata accessor for ConversationControlsAction(0);

  return swift_storeEnumTagMultiPayload();
}

void static ConversationControlsAction.primaryCallAction(controlsManager:location:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v57 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v56 = v55 - v7;
  v8 = type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - v18;
  *(v55 - v18) = ConversationControlsManager.isOneToOneConversation.getter() & 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_82_4();
  v21 = *MEMORY[0x1E69E7D40] & v20;
  v55[0] = *(v21 + 0x928);
  v55[1] = v21 + 2344;
  v22 = (v55[0])();
  v23 = v22;
  switch(v22 >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_58_7();
      v25 = (*(v24 + 704))();
      if (v25)
      {
        v26 = v25;
        v27 = [v25 localParticipantAssociation];
        if (v27)
        {

          v28 = [v26 state];
          if (v28 == 1)
          {
            if ((v23 & 1) == 0)
            {
              goto LABEL_2;
            }

            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_22;
    case 2:
      swift_storeEnumTagMultiPayload();
      v29 = v15;
      goto LABEL_19;
    case 3:
      if (v22 != 96)
      {
        goto LABEL_22;
      }

      if (v2)
      {
        OUTLINED_FUNCTION_0_108();
        v30 = OUTLINED_FUNCTION_40_2();
        _s15ConversationKit0A14ControlsActionOWOcTm_0(v30, v31);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
      }

      v29 = v12;
LABEL_19:
      outlined init with take of ConversationControlsAction(v29, v0);
      break;
    case 4:
      if (v22 != 128)
      {
        goto LABEL_22;
      }

      static ConversationControlsAction.acceptCall(controlsManager:)(v4, v0);
      break;
    case 6:
      if (v22 != 192)
      {
        goto LABEL_2;
      }

LABEL_22:
      OUTLINED_FUNCTION_211();
      swift_storeEnumTagMultiPayload();
      break;
    default:
LABEL_2:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v19, v0);
      break;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, &static Logger.conversationControls);
  v33 = v4;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59[0] = v37;
    *v36 = 136315650;
    v38 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x2C0))();
    if (v38)
    {
      v39 = v38;
      v40 = [v38 state];

      v58 = v40;
      type metadata accessor for TUConversationState(0);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v59);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    LOBYTE(v58) = (v55[0])(v45);
    v46 = String.init<A>(reflecting:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v59);

    *(v36 + 14) = v48;
    *(v36 + 22) = 2080;
    swift_beginAccess();
    v49 = v56;
    _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v56);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v8);
    specialized >> prefix<A>(_:)();
    v51 = v50;
    v53 = v52;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v59);

    *(v36 + 24) = v54;
    _os_log_impl(&dword_1BBC58000, v34, v35, "ConversationControlsAction: conversationState:%s, controlsMode:%s, primaryCallAction:%s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v37, -1, -1);
    MEMORY[0x1BFB23DF0](v36, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_1_95();
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  swift_beginAccess();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v57);
  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v691 = v3;
  v695 = v5;
  v696 = v4;
  v699 = v6;
  v697 = v7;
  v702 = v8;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v693 = v10;
  v694 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v692 = &v690 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v690 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v690 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v690 - v19;
  v21 = type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v690 - v24;
  v710 = ConversationControlsAction.displayStrings()();
  countAndFlagsBits = v710._0.value._countAndFlagsBits;
  object = v710._0.value._object;
  v700 = v710._1._countAndFlagsBits;
  v701 = v710._1._object;
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      v341 = *v25;
      type metadata accessor for ConversationControlsVideoMenuButtonProvider();
      *(swift_allocObject() + 184) = v341;
      v342 = v696;
      v343 = v702;
      OUTLINED_FUNCTION_48_12();
      ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v344 = *MEMORY[0x1E69DDCF8];
      v703 = 0;
      v345 = 5.30586074e199;
      v346 = -3.91910665e202;
      goto LABEL_69;
    case 2u:

      v230 = OUTLINED_FUNCTION_50_11();
      v231(v230);
      type metadata accessor for InCallControlButton();
      *(&v705 + 1) = &type metadata for SymbolImageDescribers.ConversationControls;
      v706 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v704) = 14;
      v232 = static Layout.ConversationControls.values.getter(v707);
      v240 = OUTLINED_FUNCTION_10_46(v232, v233, v234, v235, v236, v237, v238, v239, v690, SBYTE1(v690));
      OUTLINED_FUNCTION_27_23(v240);
      if (one-time initialization token for joinButton != -1)
      {
        OUTLINED_FUNCTION_43_11(&one-time initialization token for joinButton);
      }

      OUTLINED_FUNCTION_58_7();
      v242 = *(v241 + 464);

      v242(v243);
      v244 = OUTLINED_FUNCTION_67_6();
      v245(v244);
      v246 = swift_allocObject();
      v247 = OUTLINED_FUNCTION_60_8(v246);
      v248(v247);
      OUTLINED_FUNCTION_24();
      v249 = swift_allocObject();
      v250 = v15;
      *(v249 + 16) = partial apply for closure #4 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v249 + 24) = v242;
      v251 = v12;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v253 = *((*MEMORY[0x1E69E7D40] & v252) + 0x168);

      v254 = OUTLINED_FUNCTION_206();
      v253(v254);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_69_5();
      goto LABEL_55;
    case 3u:

      v283 = OUTLINED_FUNCTION_50_11();
      v284(v283);
      type metadata accessor for InCallControlButton();
      v285 = OUTLINED_FUNCTION_111_2(&type metadata for SymbolImageDescribers.ConversationControls);
      v293 = OUTLINED_FUNCTION_10_46(v285, v286, v287, v288, v289, v290, v291, v292, v690, SBYTE1(v690));
      OUTLINED_FUNCTION_27_23(v293);
      if (one-time initialization token for leaveButton != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v295 = *(v294 + 464);

      v295(v296);
      v297 = OUTLINED_FUNCTION_67_6();
      v298(v297);
      v299 = swift_allocObject();
      v300 = OUTLINED_FUNCTION_60_8(v299);
      v301(v300);
      OUTLINED_FUNCTION_24();
      v302 = swift_allocObject();
      v250 = v15;
      *(v302 + 16) = partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v302 + 24) = v295;
      v303 = v12;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v305 = *((*MEMORY[0x1E69E7D40] & v304) + 0x168);

      v306 = OUTLINED_FUNCTION_206();
      v305(v306);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_41_13();
LABEL_55:
      GameControllerManager.addControl(_:event:when:)();

      (*(v20 + 1))(v250, v25);
      goto LABEL_164;
    case 4u:

      v207 = *v25;
      v208 = [objc_opt_self() sharedInstance];
      v209 = [v208 neighborhoodActivityConduit];

      v210 = [v209 suggestion];
      type metadata accessor for ConversationControlsLagunaMenuButtonProvider();
      swift_allocObject();
      v211 = v696;
      v212 = v696;
      v213 = v702;
      ConversationControlsLagunaMenuButtonProvider.init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(v213, v699, v211, v697, v210, v207);
      goto LABEL_32;
    case 5u:
      v406 = v701;

      v407 = *(v25 + 2);
      if ((*&v407 - 1) < 2 || (v408 = *(v25 + 1), , , v407 == 0.0))
      {
        OUTLINED_FUNCTION_39_12();
      }

      else
      {
        v708 = &type metadata for SymbolImageDescribers.GameController;
        v709 = &protocol witness table for SymbolImageDescribers.GameController;
        v707[0] = v408;
        v707[1] = v407;
      }

      v649 = v702;
      v650 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39(v650);
      v1 = v649;
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v651, v652, v653, v654, v655, 0, 0, v656, v687, v688[0], v688[1], v688[2], 0, 0);
      v657 = objc_opt_self();
      v658 = [v657 blackColor];
      ControlsButtonProvider.foregroundColor.setter(v658, v659);
      v660 = [v657 whiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v661, v662, v663);
      OUTLINED_FUNCTION_28();
      v21 = ControlsButtonProvider.makeButton(frame:)();
      v51 = sel_controllerFocusCallButtonTapped;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v406, v21);
      goto LABEL_132;
    case 6u:
    case 7u:

      v28 = *v25;
      if (*v25)
      {
        v29 = v702;
        if (v28 == 1)
        {
          v30 = 29;
        }

        else
        {
          v30 = 30;
        }
      }

      else
      {
        LODWORD(countAndFlagsBits) = *v25;
        v29 = v702;
        v12 = *((*MEMORY[0x1E69E7D40] & *v702) + 0x2A0);
        object = v702;
        (v12)(v27);
        OUTLINED_FUNCTION_87();
        ObjectType = swift_getObjectType();
        v665 = v15[21](ObjectType, v15);
        v666 = swift_unknownObjectRelease();
        if (v665)
        {
          v30 = 28;
        }

        else
        {
          object = v29;
          (v12)(v666);
          OUTLINED_FUNCTION_87();
          v667 = swift_getObjectType();
          v668 = (*(v665 + 176))(v667, v665);
          swift_unknownObjectRelease();
          if (v668)
          {
            v30 = 28;
          }

          else
          {
            v30 = 27;
          }
        }

        v28 = countAndFlagsBits;
      }

      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v2, v1);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        OUTLINED_FUNCTION_1_95();
        _s15ConversationKit0A14ControlsActionOWOhTm_1();
        goto LABEL_156;
      }

      LODWORD(v695) = v30;
      LODWORD(countAndFlagsBits) = v28;
      object = [*(v29 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) currentCalls];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      OUTLINED_FUNCTION_170();
      v669 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v707[0] = MEMORY[0x1E69E7CC0];
      v670 = specialized Array.count.getter();
      for (i = 0; ; ++i)
      {
        if (v670 == i)
        {

          v29 = v702;
          v28 = countAndFlagsBits;
          LOBYTE(v30) = v695;
LABEL_156:
          specialized _arrayForceCast<A, B>(_:)();
          OUTLINED_FUNCTION_6_4();

          OUTLINED_FUNCTION_20();
          v674 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v708 = &type metadata for SymbolImageDescribers.ConversationControls;
          v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
          LOBYTE(v707[0]) = v30;
          v675 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
          OUTLINED_FUNCTION_17_39(v675);
          v12 = v696;
          v676 = v696;
          v29;
          v689 = v697;
          OUTLINED_FUNCTION_44_11();
          ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v677, v699, object, partial apply for closure #9 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:), v674, 0, 0, v707, v687, v688[0], v688[1], v688[2], v12, v689);
          OUTLINED_FUNCTION_59_6();
          v678 = objc_opt_self();
          v679 = &selRef_systemBlueColor;
          if (v28 != 2)
          {
            v679 = &selRef_systemGreenColor;
          }

          v680 = [v678 *v679];
          OUTLINED_FUNCTION_30_17();
          ControlsButtonProvider.backgroundStyle.setter(v681, v682, v683);
          OUTLINED_FUNCTION_28();
          v684 = ControlsButtonProvider.makeButton(frame:)();
          OUTLINED_FUNCTION_15_31(v684);
LABEL_159:
          v685 = OUTLINED_FUNCTION_96_5();
          [v685 v686];
          if (one-time initialization token for shared != -1)
          {
LABEL_171:
            OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
          }

LABEL_160:
          v2 = v12;
          goto LABEL_161;
        }

        if ((v669 & 0xC000000000000001) != 0)
        {
          v673 = OUTLINED_FUNCTION_206();
          v672 = MEMORY[0x1BFB22010](v673);
        }

        else
        {
          if (i >= *((v669 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_166;
          }

          v672 = *(v669 + 8 * i + 32);
        }

        v12 = v672;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v672 status] == 2 || objc_msgSend(v12, sel_status) == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          object = v707;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
LABEL_124:
      v551 = v12;
LABEL_125:
      v2 = v551;
LABEL_161:
      GameControllerManager.addControl(_:event:when:)();
LABEL_162:

LABEL_163:

LABEL_164:
      OUTLINED_FUNCTION_30_0();
      return;
    case 8u:

      if (*v25)
      {
        v451 = 9;
      }

      else
      {
        v451 = 31;
      }

      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = v451;
      v452 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39(v452);
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v453, v454, v455, v456, v457, 0, 0, v458, v690, v691, SBYTE1(v691), BYTE2(v691), v692, v693);
      OUTLINED_FUNCTION_59_6();
      v459 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v460, v461, v462);
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      v463 = sel_rejectCallButtonTapped;
      goto LABEL_113;
    case 9u:
      v224 = v701;

      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = 35;
      if (one-time initialization token for greenTea3PAcceptButtonBanner != -1)
      {
        swift_once();
      }

      objc_allocWithZone(type metadata accessor for PillButton());

      v225 = OUTLINED_FUNCTION_42_17();
      v229 = PillButton.init(title:symbol:stateConfiguration:context:)(v225, v226, v227, v228, 1u);
      [v229 addTarget:v702 action:sel_acceptCallButtonTappedWithIgnoresSmartHoldingSession_ forControlEvents:64];
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v224, v229);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_172;
    case 0xAu:
      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      v437 = OUTLINED_FUNCTION_110_2(8);
      OUTLINED_FUNCTION_17_39(v437);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v691) = v1;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v438, v439, v440, v441, v442, countAndFlagsBits, v15, v443, v690, v691, SBYTE1(v691), BYTE2(v691), v692, v693);
      OUTLINED_FUNCTION_59_6();
      v444 = [objc_opt_self() systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v445, v446, v447);
      OUTLINED_FUNCTION_28();
      v448 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v448);
      v449 = OUTLINED_FUNCTION_96_5();
      [v449 v450];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_171;
    case 0xBu:

      type metadata accessor for ConversationControlsCountdownJoinButtonProvider(0);
      swift_allocObject();
      v189 = OUTLINED_FUNCTION_51_10();
      ConversationControlsCountdownJoinButtonProvider.init(controlsManager:context:shape:)(v189, v699, 1);
LABEL_32:
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      goto LABEL_163;
    case 0xCu:
      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      v214 = OUTLINED_FUNCTION_110_2(9);
      OUTLINED_FUNCTION_17_39(v214);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v691) = v1;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v215, v216, v217, v218, v219, countAndFlagsBits, v15, v220, v690, v691, SBYTE1(v691), BYTE2(v691), v692, v693);
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_28();
      v221 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v221);
      v222 = OUTLINED_FUNCTION_96_5();
      [v222 v223];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_171;
    case 0xDu:

      v394 = type metadata accessor for ConversationControlsOpenMessagesButtonProvider();
      v395 = OUTLINED_FUNCTION_55_10(v394);
      v396 = v702;
      *(v395 + 160) = v702;
      ControlsButtonProvider.init(context:shape:)(v699, 1);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v397 = *MEMORY[0x1E69DDCF8];
      v703 = 0;
      strcpy(v707, "message.fill");
      BYTE5(v707[1]) = 0;
      HIWORD(v707[1]) = -5120;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v398;
      *(&v704 + 1) = v399;
      OUTLINED_FUNCTION_13_42();
      v400 = v396;

      v401 = v397;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v402 = OUTLINED_FUNCTION_46_13();
      v403(v402);

      OUTLINED_FUNCTION_57_8();
      v404 = OUTLINED_FUNCTION_28();
      v405(v404);
      goto LABEL_72;
    case 0xEu:
    case 0x3Cu:

      type metadata accessor for ConversationControlsAudioRouteMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v190 = v702;
      ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v191 = *MEMORY[0x1E69DDCF8];
      OUTLINED_FUNCTION_25_26();
      v707[0] = v193;
      v707[1] = v192;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v195;
      *(&v704 + 1) = v194;
      OUTLINED_FUNCTION_13_42();

      v196 = v191;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v197 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v197, v198);

      OUTLINED_FUNCTION_28();
      ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)();
      goto LABEL_72;
    case 0xFu:
    case 0x3Du:

      type metadata accessor for ConversationControlsMicMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v374 = v702;
      ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v344 = *MEMORY[0x1E69DDCF8];
      v703 = 0;
      v345 = 6.09123215e247;
      v346 = -7.42084413e221;
LABEL_69:
      v707[0] = v345;
      v707[1] = v346;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v375;
      *(&v704 + 1) = v376;
      goto LABEL_70;
    case 0x10u:

      type metadata accessor for ConversationControlsMoreMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v125 = v702;
      OUTLINED_FUNCTION_48_12();
      v131 = ConversationControlsMoreMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(v126, v127, v128, v129, v130);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v132 = *MEMORY[0x1E69DDCF8];
      v703 = 0;
      strcpy(v707, "ellipsis");
      BYTE1(v707[1]) = 0;
      WORD1(v707[1]) = 0;
      HIDWORD(v707[1]) = -402653184;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v133;
      *(&v704 + 1) = v134;
      OUTLINED_FUNCTION_13_42();

      v135 = v132;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v136 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v136, v137);

      swift_beginAccess();
      outlined assign with copy of ConversationControlsMoreMenuButtonDelegate?(v691, v131 + 192);
      swift_endAccess();
      goto LABEL_71;
    case 0x11u:

      type metadata accessor for ConversationControlsShareMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v364 = v702;
      OUTLINED_FUNCTION_48_12();
      ConversationControlsShareMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(v365, v366, v367, v368, v369);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v344 = *MEMORY[0x1E69DDCF8];
      OUTLINED_FUNCTION_25_26();
      *&v707[0] = v371 + 21;
      v707[1] = v370;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v373;
      *(&v704 + 1) = v372;
LABEL_70:
      OUTLINED_FUNCTION_13_42();

      v377 = v344;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v378 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v378, v379);

LABEL_71:
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
LABEL_72:
      OUTLINED_FUNCTION_84_3();
      goto LABEL_163;
    case 0x12u:
    case 0x13u:
      v31 = type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0(v31);
      v32 = OUTLINED_FUNCTION_24_24();
      v33 = ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v32, v699, 0);
      OUTLINED_FUNCTION_14_32(v33);
      *(object + 15) = countAndFlagsBits;
      *(object + 16) = v15;

      ControlsButtonProvider.title.didset(v35, v34);

      OUTLINED_FUNCTION_28();
      v36 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_31_20(v36);
      goto LABEL_162;
    case 0x14u:
      v347 = type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0(v347);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v350 = ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v348, v349, 0);
      OUTLINED_FUNCTION_9_52(v350);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v352, v351);
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v701, v2);
      (*((*MEMORY[0x1E69E7D40] & *v21) + 0x5D8))();
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher();
      Publisher<>.sink(receiveValue:)();
      OUTLINED_FUNCTION_6_4();

      (*(v690 + 8))(v20, v16);
      OUTLINED_FUNCTION_3_5((v1 + 6), &v704);
      v1[6] = v20;

      goto LABEL_163;
    case 0x15u:

      v353 = type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0(v353);
      v354 = OUTLINED_FUNCTION_51_10();
      ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v354, v699, 0);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v355 = *MEMORY[0x1E69DDDC8];
      OUTLINED_FUNCTION_25_26();
      *&v707[0] = v357 | 4;
      v707[1] = v356;
      OUTLINED_FUNCTION_5_68();
      *&v704 = v359;
      *(&v704 + 1) = v358;
      OUTLINED_FUNCTION_13_42();

      v360 = v355;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v361 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v361, v362);

      OUTLINED_FUNCTION_28();
      v363 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_31_20(v363);
      goto LABEL_162;
    case 0x16u:
      type metadata accessor for InCallControlButton();
      v706 = 0;
      v704 = 0u;
      v705 = 0u;
      static Layout.ConversationControls.values.getter(v707);
      OUTLINED_FUNCTION_75_6();
      OUTLINED_FUNCTION_16_39();
      v479 = InCallControlButton.__allocating_init(style:imageName:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:)(v471, v472, v473, v474, v475, v476, v477, v478, v690);
      OUTLINED_FUNCTION_27_23(v479);
      v480 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v480)
      {
        v481 = objc_opt_self();
        v482 = *MEMORY[0x1E69DDD80];
        v483 = v480;
        v484 = [v481 preferredFontForTextStyle_];
        isa = UIFont.withTraits(_:)(0x8002u).super.isa;

        v486 = UIFont.caseSensitive()().super.isa;
        [v483 setFont_];
      }

      v487 = v702;
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v488 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_58_7();
      v490 = *(v489 + 464);

      v490(v491);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && v699 == 2)
      {
        v492 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v493.super.isa = v492;
        v496 = OUTLINED_FUNCTION_17_0(2003134806, 0xE400000000000000, v494, v495, v493);
        v498 = v497;

        OUTLINED_FUNCTION_82_4();
        (*((*v488 & v499) + 0x1B8))(v496, v498);
        if (one-time initialization token for viewLMIRequestsButton != -1)
        {
          swift_once();
        }

        v490(v500);
      }

      OUTLINED_FUNCTION_20();
      v501 = swift_allocObject();
      *(v501 + 16) = v487;
      OUTLINED_FUNCTION_24();
      v502 = swift_allocObject();
      *(v502 + 16) = partial apply for closure #2 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v502 + 24) = v501;
      v503 = v487;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v505 = *((*v488 & v504) + 0x168);

      v506 = OUTLINED_FUNCTION_206();
      v505(v506);

      goto LABEL_164;
    case 0x17u:
      v566 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v566);
      v567 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v570 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v568, v569);
      objc_opt_self();
      OUTLINED_FUNCTION_6_4();

      v571 = [object systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v572, v573, v574);
      static Platform.current.getter();
      v554 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v575 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v575, v576);
      OUTLINED_FUNCTION_3_5((v570 + 15), &v704);
      OUTLINED_FUNCTION_101_1();
      v570[15] = v577;
      v570[16] = v567;

      ControlsButtonProvider.title.didset(v579, v578);

      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_87();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v701, v554);
      v565 = sel_lagunaPullButtonTapped;
      goto LABEL_119;
    case 0x18u:

      v204 = v702;
      (*((*MEMORY[0x1E69E7D40] & *v702) + 0x7C8))(v203);
      OUTLINED_FUNCTION_24_1();
      v205 = objc_allocWithZone(type metadata accessor for PushToTalkLeavePillButton());
      v206 = OUTLINED_FUNCTION_170();
      v83 = PushToTalkLeavePillButton.init(viewModel:)(v206);
      [v83 addTarget:v204 action:sel_pttLeaveButtonTappedWithButton_ forControlEvents:64];
      v84 = v700;
      v85 = v701;
      goto LABEL_29;
    case 0x19u:

      (*((*MEMORY[0x1E69E7D40] & *v702) + 0x7C8))(v199);
      OUTLINED_FUNCTION_24_1();
      v200 = objc_allocWithZone(type metadata accessor for PushToTalkTalkPillButton());
      v201 = OUTLINED_FUNCTION_170();
      v202 = PushToTalkTalkPillButton.init(viewModel:)(v201);
      OUTLINED_FUNCTION_31_20(v202);
      goto LABEL_164;
    case 0x1Au:
      v605 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v605);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v608 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v606, v607);
      OUTLINED_FUNCTION_14_32(v608);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v610, v609);

      OUTLINED_FUNCTION_28();
      v611 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v611);
      v51 = sel_avLessContinueButtonTappedWithButton_;
      goto LABEL_132;
    case 0x1Bu:
    case 0x26u:
    case 0x29u:
    case 0x31u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      v612 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v612);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v615 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v613, v614);
      OUTLINED_FUNCTION_9_52(v615);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v617, v616);

      OUTLINED_FUNCTION_28();
      v618 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v618);
      goto LABEL_123;
    case 0x1Cu:
      v580 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v580);
      v581 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v584 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v582, v583);
      objc_opt_self();
      OUTLINED_FUNCTION_6_4();

      v585 = [object systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v586, v587, v588);
      static Platform.current.getter();
      v554 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      v589 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v589, v590);
      OUTLINED_FUNCTION_3_5((v584 + 15), &v704);
      OUTLINED_FUNCTION_101_1();
      v584[15] = v591;
      v584[16] = v581;

      ControlsButtonProvider.title.didset(v593, v592);

      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_87();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v701, v554);
      v565 = sel_continueHandoffButtonTapped;
      goto LABEL_119;
    case 0x1Du:
      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = 31;
      v594 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39(v594);
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v691) = 0;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v595, v596, v597, v598, v599, countAndFlagsBits, object, v600, v690, v691, SBYTE1(v691), BYTE2(v691), v692, v693);
      OUTLINED_FUNCTION_59_6();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      static UIColor.close.getter();
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v601, v602, v603);
      OUTLINED_FUNCTION_28();
      v604 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v604);
      goto LABEL_123;
    case 0x1Eu:
      v409 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v409);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v412 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v410, v411);
      v21 = objc_opt_self();

      v413 = [v21 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v414, v415, v416);
      v417 = [v21 systemBlackColor];
      ControlsButtonProvider.foregroundColor.setter(v417, v418);
      OUTLINED_FUNCTION_23_30((v412 + 15));
      v412[15] = countAndFlagsBits;
      v412[16] = v15;

      ControlsButtonProvider.title.didset(v420, v419);

      OUTLINED_FUNCTION_28();
      v421 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v421);
      v51 = sel_shareNameAndPhotoTappedWithButton_;
      goto LABEL_132;
    case 0x1Fu:
      v270 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v270);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v273 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v271, v272);
      v21 = objc_opt_self();

      v274 = [v21 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v275, v276, v277);
      v278 = [v21 systemBlackColor];
      ControlsButtonProvider.foregroundColor.setter(v278, v279);
      OUTLINED_FUNCTION_23_30((v273 + 15));
      v273[15] = countAndFlagsBits;
      v273[16] = v15;

      ControlsButtonProvider.title.didset(v281, v280);

      OUTLINED_FUNCTION_28();
      v282 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v282);
      v51 = sel_shareNameTappedWithButton_;
      goto LABEL_132;
    case 0x20u:
      v422 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v422);
      v12 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v425 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v423, v424);
      v426 = objc_opt_self();

      v427 = [v426 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v428, v429, v430);
      v431 = [v426 systemBlackColor];
      ControlsButtonProvider.foregroundColor.setter(v431, v432);
      OUTLINED_FUNCTION_23_30((v425 + 15));
      OUTLINED_FUNCTION_101_1();
      v425[15] = v433;
      v425[16] = object;

      ControlsButtonProvider.title.didset(v435, v434);

      OUTLINED_FUNCTION_28();
      v436 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v436);
      goto LABEL_159;
    case 0x21u:
      v145 = [objc_opt_self() systemIndigoColor];
      OUTLINED_FUNCTION_24_1();
      v146 = type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      v21 = OUTLINED_FUNCTION_113_0(v146);
      v147 = v702;
      OUTLINED_FUNCTION_37_20();
      v150 = ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v148, v149, object);
      OUTLINED_FUNCTION_14_32(v150);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v152, v151);

      OUTLINED_FUNCTION_28();
      v153 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v153);
      v51 = sel_stopLocalScreenSharingTappedWithButton_;
      goto LABEL_132;
    case 0x22u:
      v110 = type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10(v110);
      v12 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v113 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v111, v112);
      v114 = objc_opt_self();

      v115 = [v114 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v116, v117, v118);
      v119 = [v114 systemBlackColor];
      ControlsButtonProvider.foregroundColor.setter(v119, v120);
      OUTLINED_FUNCTION_23_30((v113 + 15));
      OUTLINED_FUNCTION_101_1();
      v113[15] = v121;
      v113[16] = object;

      ControlsButtonProvider.title.didset(v123, v122);

      OUTLINED_FUNCTION_28();
      v124 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v124);
      goto LABEL_123;
    case 0x23u:
      v86 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v86);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v89 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v87, v88);
      OUTLINED_FUNCTION_9_52(v89);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v91, v90);
      v92 = objc_opt_self();
      v93 = [v92 whiteColor];
      ControlsButtonProvider.foregroundColor.setter(v93, v94);
      v95 = [v92 systemIndigoColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v96, v97, v98);

      OUTLINED_FUNCTION_28();
      v99 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v99);
      goto LABEL_159;
    case 0x24u:
      v100 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v100);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v103 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v101, v102);
      OUTLINED_FUNCTION_9_52(v103);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v105, v104);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      static UIColor.denyScreenShareBackground.getter();
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v106, v107, v108);

      OUTLINED_FUNCTION_28();
      v109 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v109);
      goto LABEL_123;
    case 0x25u:
      v52 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v52);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v55 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v53, v54);
      OUTLINED_FUNCTION_9_52(v55);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v57, v56);
      v58 = [objc_opt_self() systemRedColor];
      ControlsButtonProvider.foregroundColor.setter(v58, v59);

      OUTLINED_FUNCTION_28();
      v60 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v60);
      goto LABEL_159;
    case 0x27u:
      v507 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v507);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v510 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v508, v509);
      OUTLINED_FUNCTION_3_5(v510 + 120, &v704);
      v511 = countAndFlagsBits;
      *(v510 + 120) = countAndFlagsBits;
      *(v510 + 128) = v15;

      ControlsButtonProvider.title.didset(v513, v512);

      if (v15)
      {
        v514 = v511;
      }

      else
      {
        v514 = 0;
      }

      v702 = v514;
      if (!v15)
      {
        v15 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_39_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd, &_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMR);
      v515 = swift_allocObject();
      *(v515 + 16) = xmmword_1BC4BA940;
      *(v515 + 32) = 0;
      v516 = objc_opt_self();
      v517 = [v516 systemDarkGrayColor];
      v518 = [v516 whiteColor];
      v519 = [v516 systemDarkGrayColor];
      v520 = [v516 whiteColor];
      *(v515 + 40) = v517;
      *(v515 + 48) = 0;
      *(v515 + 56) = 64;
      *(v515 + 64) = v518;
      *(v515 + 72) = v519;
      *(v515 + 80) = 0;
      *(v515 + 88) = 64;
      *(v515 + 96) = v520;
      type metadata accessor for UIControlState(0);
      v522 = v521;
      OUTLINED_FUNCTION_36_17();
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(v523, v524);
      v525 = Dictionary.init(dictionaryLiteral:)();
      v526 = objc_allocWithZone(type metadata accessor for PillButton());
      v527 = PillButton.init(title:symbol:stateConfiguration:context:)(v702, v15, v707, v525, 0);
      OUTLINED_FUNCTION_31_20(v527);
      [v522 addTarget:v21 action:sel_cancelRemoteControlRequestTappedWithButton_ forControlEvents:64];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_41_13();
      GameControllerManager.addControl(_:event:when:)();

      goto LABEL_164;
    case 0x28u:
    case 0x32u:
      v37 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v37);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v40 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v38, v39);
      OUTLINED_FUNCTION_9_52(v40);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v42, v41);

      OUTLINED_FUNCTION_28();
      v43 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v43);
      goto LABEL_159;
    case 0x2Au:
      v528 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v528);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v531 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v529, v530);
      OUTLINED_FUNCTION_9_52(v531);
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v533, v532);
      v534 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v535, v536, v537);

      OUTLINED_FUNCTION_28();
      v538 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v538);
LABEL_123:
      v619 = OUTLINED_FUNCTION_96_5();
      [v619 v620];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_124;
      }

      goto LABEL_167;
    case 0x2Bu:
      v44 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v44);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v47 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v45, v46);
      OUTLINED_FUNCTION_14_32(v47);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v49, v48);

      OUTLINED_FUNCTION_28();
      v50 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v50);
      v51 = sel_learnMoreNotTrustedContactTappedWithButton_;
      goto LABEL_132;
    case 0x2Cu:
      v138 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v138);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v141 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v139, v140);
      OUTLINED_FUNCTION_14_32(v141);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v143, v142);

      OUTLINED_FUNCTION_28();
      v144 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v144);
      v51 = sel_previewEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Du:
      v464 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v464);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v467 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v465, v466);
      OUTLINED_FUNCTION_14_32(v467);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v469, v468);

      OUTLINED_FUNCTION_28();
      v470 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v470);
      v51 = sel_choosePhotoEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Eu:
      v635 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v635);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v638 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v636, v637);
      OUTLINED_FUNCTION_14_32(v638);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v640, v639);

      OUTLINED_FUNCTION_28();
      v641 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v641);
      v51 = sel_dismissEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Fu:
      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = 8;
      v61 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39(v61);
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v691) = 0;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v62, v63, v64, v65, v66, countAndFlagsBits, object, v67, v690, v691, SBYTE1(v691), BYTE2(v691), v692, v693);
      OUTLINED_FUNCTION_59_6();
      v68 = [objc_opt_self() systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v69, v70, v71);
      OUTLINED_FUNCTION_28();
      v72 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v72);
      goto LABEL_159;
    case 0x30u:
      v154 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v154);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v157 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v155, v156);
      OUTLINED_FUNCTION_14_32(v157);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v159, v158);

      OUTLINED_FUNCTION_28();
      v160 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v160);
      v51 = sel_collaborateButtonTapped;
      goto LABEL_132;
    case 0x33u:
      v642 = type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10(v642);
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v645 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v643, v644);
      OUTLINED_FUNCTION_14_32(v645);
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v647, v646);

      OUTLINED_FUNCTION_28();
      v648 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v648);
      v51 = sel_acceptScreenShare;
LABEL_132:
      v2 = v21;
      [v2 addTarget:v1 action:v51 forControlEvents:64];
      goto LABEL_162;
    case 0x37u:
      OUTLINED_FUNCTION_39_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd, &_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMR);
      v621 = swift_allocObject();
      *(v621 + 16) = xmmword_1BC4BA940;
      *(v621 + 32) = 0;
      v622 = objc_opt_self();
      v623 = [v622 systemDarkGrayColor];
      v624 = [v622 whiteColor];
      v625 = [v622 systemDarkGrayColor];
      v626 = [v622 whiteColor];
      *(v621 + 40) = v623;
      *(v621 + 48) = 0;
      *(v621 + 56) = 64;
      *(v621 + 64) = v624;
      *(v621 + 72) = v625;
      *(v621 + 80) = 0;
      *(v621 + 88) = 64;
      *(v621 + 96) = v626;
      type metadata accessor for UIControlState(0);
      OUTLINED_FUNCTION_36_17();
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(v627, v628);
      OUTLINED_FUNCTION_40_2();
      Dictionary.init(dictionaryLiteral:)();
      v629 = objc_allocWithZone(type metadata accessor for PillButton());
      v630 = OUTLINED_FUNCTION_42_17();
      v634 = PillButton.init(title:symbol:stateConfiguration:context:)(v630, v631, v632, v633, 0);
      OUTLINED_FUNCTION_31_20(v634);
      [v624 addTarget:v702 action:sel_swapButtonTappedWithButton_ forControlEvents:0x2000];
      goto LABEL_164;
    case 0x38u:
      v73 = v701;

      v74 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v75.super.isa = v74;
      OUTLINED_FUNCTION_17_0(v76, 0xE700000000000000, v77, v78, v75);

      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = 36;
      if (one-time initialization token for greenTea3PDeclineButtonBanner != -1)
      {
        swift_once();
      }

      objc_allocWithZone(type metadata accessor for PillButton());

      v79 = OUTLINED_FUNCTION_42_17();
      v83 = PillButton.init(title:symbol:stateConfiguration:context:)(v79, v80, v81, v82, 1u);
      [v83 addTarget:v702 action:sel_rejectCallButtonTapped forControlEvents:64];
      v84 = v700;
      v85 = v73;
LABEL_29:
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v84, v85, v83);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_169;
    case 0x39u:

      v539 = type metadata accessor for ConversationControlsButtonProvider();
      v540 = OUTLINED_FUNCTION_55_10(v539);
      OUTLINED_FUNCTION_74_4(v540);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v541 = *MEMORY[0x1E69DDD40];
      v703 = 0;
      *&v707[0] = 0x6B72616D78;
      v707[1] = -3.24180904e178;
      OUTLINED_FUNCTION_64_7();
      *&v704 = v542;
      *(&v704 + 1) = v543;
      v21 = OUTLINED_FUNCTION_90_4();

      v544 = v541;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v545 = OUTLINED_FUNCTION_46_13();
      v546(v545);
      v547 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_30_17();
      v548();

      OUTLINED_FUNCTION_57_8();
      v549 = OUTLINED_FUNCTION_28();
      v550(v549);
      OUTLINED_FUNCTION_84_3();
      v463 = sel_endGreenTea3PCallButtonTappedWithButton_;
LABEL_113:
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v701, v2);
      [v2 addTarget:v21 action:v463 forControlEvents:64];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

      v551 = v2;
      goto LABEL_125;
    case 0x3Au:

      type metadata accessor for InCallControlButton();
      v706 = 0;
      v704 = 0u;
      v705 = 0u;
      v161 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v162.super.isa = v161;
      OUTLINED_FUNCTION_17_0(v163, 0x80000001BC502910, v164, v165, v162);

      static Layout.ConversationControls.values.getter(v707);
      OUTLINED_FUNCTION_75_6();
      OUTLINED_FUNCTION_16_39();
      v174 = InCallControlButton.__allocating_init(style:imageName:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:)(v166, v167, v168, v169, v170, v171, v172, v173, v692);
      OUTLINED_FUNCTION_27_23(v174);
      v175 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v175)
      {
        v176 = objc_opt_self();
        v177 = *MEMORY[0x1E69DDD80];
        v178 = v175;
        v179 = [v176 preferredFontForTextStyle_];
        v180 = UIFont.withTraits(_:)(0x8002u).super.isa;

        v181 = UIFont.caseSensitive()().super.isa;
        [v178 setFont_];
      }

      v182 = v702;
      if (one-time initialization token for greenTea3PResumeButton != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v184 = *(v183 + 464);

      v184(v185);
      OUTLINED_FUNCTION_20();
      v186 = swift_allocObject();
      *(v186 + 16) = v182;
      v187 = v182;
      v188 = partial apply for closure #10 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      goto LABEL_76;
    case 0x3Bu:

      v552 = type metadata accessor for ConversationControlsButtonProvider();
      v553 = OUTLINED_FUNCTION_55_10(v552);
      OUTLINED_FUNCTION_74_4(v553);
      v554 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v555 = *MEMORY[0x1E69DDD40];
      OUTLINED_FUNCTION_25_26();
      v707[0] = v557;
      v707[1] = v556;
      OUTLINED_FUNCTION_64_7();
      *&v704 = v559;
      *(&v704 + 1) = v558;
      v21 = OUTLINED_FUNCTION_90_4();

      v560 = v555;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v704);
      static UIImage.symbolImage(for:)(v707);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v561 = OUTLINED_FUNCTION_46_13();
      v562(v561);

      OUTLINED_FUNCTION_57_8();
      v563 = OUTLINED_FUNCTION_28();
      v564(v563);
      OUTLINED_FUNCTION_87();
      v565 = sel_swapButtonTappedWithButton_;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v700, v701, v554);
LABEL_119:
      v2 = v554;
      [v2 addTarget:v21 action:v565 forControlEvents:64];
      goto LABEL_162;
    case 0x3Eu:

      type metadata accessor for InCallControlButton();
      *(&v705 + 1) = &type metadata for SymbolImageDescribers.ConversationControls;
      v706 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v704) = 29;
      v380 = static Layout.ConversationControls.values.getter(v707);
      v388 = OUTLINED_FUNCTION_10_46(v380, v381, v382, v383, v384, v385, v386, v387, v690, SBYTE1(v690));
      OUTLINED_FUNCTION_27_23(v388);
      if (one-time initialization token for joinButton != -1)
      {
        OUTLINED_FUNCTION_43_11(&one-time initialization token for joinButton);
      }

      OUTLINED_FUNCTION_58_7();
      v390 = *(v389 + 464);

      v390(v391);
      OUTLINED_FUNCTION_20();
      v186 = swift_allocObject();
      v392 = v702;
      *(v186 + 16) = v702;
      v393 = v392;
      v188 = partial apply for closure #11 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
LABEL_76:
      UIControl.addAction(for:handler:)(64, v188, v186);

      if (one-time initialization token for shared != -1)
      {
LABEL_172:
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

LABEL_38:
      OUTLINED_FUNCTION_69_5();
      goto LABEL_39;
    case 0x3Fu:

      type metadata accessor for InCallControlButton();
      v255 = OUTLINED_FUNCTION_111_2(&type metadata for SymbolImageDescribers.ConversationControls);
      v263 = OUTLINED_FUNCTION_10_46(v255, v256, v257, v258, v259, v260, v261, v262, v690, SBYTE1(v690));
      OUTLINED_FUNCTION_27_23(v263);
      if (one-time initialization token for button != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v265 = *(v264 + 464);

      v265(v266);
      OUTLINED_FUNCTION_20();
      v267 = swift_allocObject();
      v268 = v702;
      *(v267 + 16) = v702;
      v269 = v268;
      UIControl.addAction(for:handler:)(64, partial apply for closure #12 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:), v267);

      if (one-time initialization token for shared != -1)
      {
LABEL_169:
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

LABEL_30:
      OUTLINED_FUNCTION_41_13();
LABEL_39:
      GameControllerManager.addControl(_:event:when:)();
      goto LABEL_164;
    default:
      v307 = v702;
      (*((*MEMORY[0x1E69E7D40] & *v702) + 0x2A0))();
      v309 = v308;
      v310 = swift_getObjectType();
      LOBYTE(v309) = (*(v309 + 136))(v310, v309);
      swift_unknownObjectRelease();
      if (v309)
      {
        v311 = 10;
      }

      else
      {
        v311 = 9;
      }

      v708 = &type metadata for SymbolImageDescribers.ConversationControls;
      v709 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v707[0]) = v311;
      v312 = v695;
      v313 = (v695 >> 1) & 1;
      v314 = type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39(v314);
      v315 = v307;
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v316, v317, v318, v319, v320, countAndFlagsBits, object, v321, &v704, v312 & 1, 0, v313, 0, 0);
      OUTLINED_FUNCTION_59_6();
      v322 = [objc_opt_self() systemRedColor];

      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v323, v324, v325);

      OUTLINED_FUNCTION_28();
      v326 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v326);
      [v312 addTarget:v315 action:sel_leaveButtonTappedWithButton_ forControlEvents:0x2000];
      type metadata accessor for ConversationControlsButton();
      v327 = swift_dynamicCastClass();
      if (v327)
      {
        v328 = v327;
        v329 = objc_opt_self();
        v330 = v312;
        v331 = [v329 conversationKit];
        OUTLINED_FUNCTION_5_5();
        v333.super.isa = v331;
        v336 = OUTLINED_FUNCTION_17_0(v332 + 7, 0x80000001BC502930, v334, v335, v333);
        v338 = v337;

        v339 = (v328 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
        OUTLINED_FUNCTION_3_5(v328 + OBJC_IVAR___CNKConversationControlsButton_localizedName, v707);
        *v339 = v336;
        v339[1] = v338;

        ConversationControlsButton.localizedName.didset();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4(&one-time initialization token for shared);
      }

      v340 = v312;
      GameControllerManager.addControl(_:event:when:)();

      goto LABEL_164;
  }
}

float ConversationControlsAction.ccrPriority.getter()
{
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_108();
  v1 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v4 = EnumCaseMultiPayload == 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 850.0;
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  return 750.0;
}

void *specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  v4 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, v6);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v3 = v15;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_112_5();
      }

      v10 = v9;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v8;
      v13 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
      *(v15 + 16) = v12 + 1;
      v14 = v15 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v13;
    }

    while (v1 != v8);
    return v3;
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_78_3();
  if (v4)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v24;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_112_5();
      }

      v22 = v11;
      v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
      OUTLINED_FUNCTION_91_4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
      OUTLINED_FUNCTION_97_4();
      if (v21)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v2, 1);
        v5 = v24;
      }

      ++v10;
      *(v5 + 16) = v2;
      outlined init with take of Any(&v23, (v5 + 32 * v3 + 32));
    }

    while (v1 != v10);
    return v5;
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_78_3();
  if (v4)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v24;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v11 = swift_unknownObjectRetain();
      }

      v22 = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
      OUTLINED_FUNCTION_91_4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
      OUTLINED_FUNCTION_97_4();
      if (v21)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v2, 1);
        v5 = v24;
      }

      ++v10;
      *(v5 + 16) = v2;
      outlined init with take of Any(&v23, (v5 + 32 * v3 + 32));
    }

    while (v1 != v10);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, &_sSo8TUHandleCSgMd, &_sSo8TUHandleCSgMR);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CNContact, 0x1E695CD58, &_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8, &_sSo18NSLayoutConstraintCSgMd, &_sSo18NSLayoutConstraintCSgMR);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](v10, a1);
        }

        else
        {
          v11 = *(a1 + 8 * v10 + 32);
        }

        ++v10;
        type metadata accessor for NSObject(0, a2, a3);
        v12 = OUTLINED_FUNCTION_6_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v12, a5);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v8 != v10);
      return v14;
    }
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

ConversationKit::ControlsActionState __swiftcall ControlsActionState.init(buttonEnabled:stateEnabled:)(Swift::Bool buttonEnabled, Swift::Bool stateEnabled)
{
  if (stateEnabled)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | buttonEnabled);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ControlsActionState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return static ControlsActionState.== infix(_:_:)(v2 | *a1, v3 | *a2);
}

uint64_t ShareMenuActionState.screenSharingCountdownTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ShareMenuActionState.description.getter(__int16 a1, uint64_t a2, __int16 a3)
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x1BFB20B10](0x3A64656C62616E65, 0xE800000000000000);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v5, v6);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC502950);
  if ((a1 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v7, v8);

  MEMORY[0x1BFB20B10](0x506572616873202CLL, 0xEF3A676E6979616CLL);
  if ((a3 & 0x100) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v9, v10);

  MEMORY[0x1BFB20B10](0xD00000000000001DLL, 0x80000001BC502970);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v11);

  return 0;
}

uint64_t static ShareMenuActionState.== infix(_:_:)(__int16 a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if ((v8 & 0x100) == 0 && (v8 & 1) == 0)
  {
    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }

      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }

    result = 0;
    if ((a6 & 1) == 0 && a2 == a5)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

ConversationKit::ShareMenuActionState __swiftcall ShareMenuActionState.init()()
{
  v0 = 0;
  v1 = 0;
  v2 = 1;
  result.screenSharingCountdownTime.value = v1;
  result.buttonEnabled = v0;
  result.screenSharingEnabled = BYTE1(v0);
  *result.gap2 = *(&v0 + 2);
  *&result.gap2[4] = HIWORD(v0);
  *&result.screenSharingCountdownTime.is_nil = v2;
  return result;
}

ConversationKit::ShareMenuActionState __swiftcall ShareMenuActionState.init(buttonEnabled:screenSharingEnabled:screenSharingCountdownTime:joinedSharePlayActivity:)(Swift::Bool buttonEnabled, Swift::Bool screenSharingEnabled, Swift::Int_optional screenSharingCountdownTime, Swift::Bool joinedSharePlayActivity)
{
  value = screenSharingCountdownTime.value;
  if (screenSharingEnabled)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFE | buttonEnabled;
  if (joinedSharePlayActivity)
  {
    LOWORD(screenSharingCountdownTime.value) = 256;
  }

  else
  {
    LOWORD(screenSharingCountdownTime.value) = 0;
  }

  v7 = screenSharingCountdownTime.value & 0xFFFE | screenSharingCountdownTime.is_nil;
  v8 = v6;
  v9 = value;
  result.screenSharingCountdownTime.value = v9;
  result.buttonEnabled = v8;
  result.screenSharingEnabled = BYTE1(v8);
  *result.gap2 = *(&v8 + 2);
  *&result.gap2[4] = HIWORD(v8);
  *&result.screenSharingCountdownTime.is_nil = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShareMenuActionState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static ShareMenuActionState.== infix(_:_:)(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShareMenuActionState()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (v0[17])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ShareMenuActionState.description.getter(v1 | *v0, *(v0 + 1), v2 | v0[16]);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance ConversationControlsAction.ButtonOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance ConversationControlsAction.ButtonOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.symmetricDifference(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t ConversationControlsAction.CallButtonStyle.init(_:conversation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = *(a2 + 184);
  v6 = v5();
  v7 = [v6 isFaceTimeProvider];

  if (v7)
  {
    outlined init with copy of Conversation?(a3, &v21);
    if (v22)
    {
      outlined init with take of TapInteractionHandler(&v21, v23);
      v8 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v9 = OUTLINED_FUNCTION_40_2();
      v10(v9);
      OUTLINED_FUNCTION_6_4();
      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v11 = v8 == 2;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return v11;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  v12 = OUTLINED_FUNCTION_72_6();
  v13 = (v5)(v12);
  v14 = [v13 isFaceTimeProvider];

  if (v14 && (v15 = OUTLINED_FUNCTION_72_6(), (v16(v15) & 1) != 0))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_72_6();
    v18 = (v5)(v17);
    v19 = [v18 isSystemProvider];
    swift_unknownObjectRelease();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (v19)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int ConversationControlsAction.CallButtonStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction.CallButtonStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationControlsAction.CallButtonStyle.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int ConversationControlsAction.Location.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction.Location(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationControlsAction.Location.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for avLessLeaveConfirmationActions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsAction(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  static ConversationControlsAction.avLessLeaveConfirmationActions = v1;
  return result;
}

uint64_t *ConversationControlsAction.avLessLeaveConfirmationActions.unsafeMutableAddressor()
{
  if (one-time initialization token for avLessLeaveConfirmationActions != -1)
  {
    OUTLINED_FUNCTION_47_12(&one-time initialization token for avLessLeaveConfirmationActions);
  }

  return &static ConversationControlsAction.avLessLeaveConfirmationActions;
}

double static ConversationControlsAction.avLessLeaveConfirmationActions.getter()
{
  if (one-time initialization token for avLessLeaveConfirmationActions != -1)
  {
    OUTLINED_FUNCTION_47_12(&one-time initialization token for avLessLeaveConfirmationActions);
  }

  return result;
}

Swift::tuple_String_optional_String __swiftcall ConversationControlsAction.displayStrings()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x3Cu:
    case 0x3Du:
      break;
    case 2u:
    case 3u:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      break;
    case 4u:
    case 0x12u:
    case 0x13u:
      OUTLINED_FUNCTION_40_15();
      goto LABEL_20;
    case 5u:
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      goto LABEL_13;
    case 6u:
    case 7u:
    case 8u:
    case 0x15u:
    case 0x18u:
    case 0x19u:
    case 0x38u:
    case 0x39u:
    case 0x3Bu:
      OUTLINED_FUNCTION_34_19();
      break;
    case 9u:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      break;
    case 0x14u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x27u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Du:
    case 0x30u:
      OUTLINED_FUNCTION_7_60();
      goto LABEL_20;
    case 0x1Au:
      OUTLINED_FUNCTION_32_14();
      goto LABEL_20;
    case 0x1Du:
    case 0x1Fu:
    case 0x21u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_28_25();
      goto LABEL_20;
    case 0x1Eu:
    case 0x20u:
    case 0x22u:
    case 0x23u:
    case 0x32u:
    case 0x33u:
    case 0x35u:
      OUTLINED_FUNCTION_12_44();
      goto LABEL_20;
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x29u:
    case 0x34u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_32_14();
      goto LABEL_20;
    case 0x2Cu:
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_80_2();
      goto LABEL_20;
    case 0x2Eu:
      OUTLINED_FUNCTION_100_1();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_80_2();
      goto LABEL_20;
    case 0x31u:
      OUTLINED_FUNCTION_100_1();
      goto LABEL_20;
    case 0x3Au:
      OUTLINED_FUNCTION_34_19();
      break;
    case 0x3Eu:
      OUTLINED_FUNCTION_34_19();
LABEL_13:
      OUTLINED_FUNCTION_28_25();
      break;
    case 0x3Fu:
      OUTLINED_FUNCTION_34_19();
      OUTLINED_FUNCTION_28_25();
      break;
    default:
LABEL_20:
      v5 = one-time initialization token for conversationKit;

      if (v5 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_40_0();
      v6 = OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_17_0(v6, v7, v8, v9, v14);
      swift_bridgeObjectRelease_n();
      break;
  }

  OUTLINED_FUNCTION_30_0();
  result._1._object = v13;
  result._1._countAndFlagsBits = v12;
  result._0.value._object = v11;
  result._0.value._countAndFlagsBits = v10;
  return result;
}

void closure #1 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setEnabled_];
    }
  }
}

void *closure #9 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    (*((*MEMORY[0x1E69E7D40] & *result) + 0x2A0))();

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(a2 + 208);
      if (v9(ObjectType, a2) != 2)
      {
        if (v9(ObjectType, a2) != 1)
        {
          return swift_unknownObjectRelease();
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return swift_unknownObjectRelease();
        }

        v11 = Strong;
        v12 = &selRef_endActiveAndAnswerCall_;
        goto LABEL_9;
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = &selRef_endHeldAndAnswerCall_;
LABEL_9:
        v14 = *&v11[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter];

        [v14 *v12];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsAction.isInCallControls()()
{
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_108();
  v1 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 0x12 && ((0x3DC03u >> EnumCaseMultiPayload) & 1) != 0)
  {
    return 1;
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  return 0;
}

void static ConversationControlsAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v138 = v1;
  v139 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v136 = v4;
  v137 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v131 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v129 - v8;
  v9 = type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v133 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v129 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v129 - v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v129 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v129 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v129 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v129 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionO_ACtMd, &_s15ConversationKit0A14ControlsActionO_ACtMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v129 - v36;
  v39 = (&v129 + *(v38 + 56) - v36);
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v138, &v129 - v36);
  v40 = v139;
  v139 = v39;
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v40, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v31);
      if (OUTLINED_FUNCTION_35_11() != 1)
      {
        goto LABEL_141;
      }

      goto LABEL_70;
    case 2u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v28);
      if (OUTLINED_FUNCTION_35_11() == 2)
      {
        v49 = v136;
        v48 = v137;
        v50 = v130;
        (*(v136 + 32))(v130, v9, v137);
        static UUID.== infix(_:_:)();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v28, v48);
        goto LABEL_70;
      }

      (*(v136 + 8))(v28, v137);
      goto LABEL_141;
    case 3u:
      OUTLINED_FUNCTION_0_108();
      v52 = v132;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v132);
      if (OUTLINED_FUNCTION_35_11() != 3)
      {
        (*(v136 + 8))(v52, v137);
        goto LABEL_141;
      }

      v54 = v136;
      v53 = v137;
      (*(v136 + 32))(v131, v9, v137);
      static UUID.== infix(_:_:)();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_206();
      v55(v56);
      (v55)(v52, v53);
LABEL_70:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      goto LABEL_145;
    case 4u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v23);
      if (OUTLINED_FUNCTION_35_11() == 4)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 5u:
      OUTLINED_FUNCTION_0_108();
      v138 = v37;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v20);
      v58 = *v20;
      v57 = v20[1];
      v60 = v20[2];
      v59 = v20[3];
      v62 = v20[4];
      v61 = v20[5];
      v63 = v20[6];
      v64 = v139;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v79 = OUTLINED_FUNCTION_4_74();
        outlined consume of GameControllerContext?(v79, v80, v81, v82, v83, v84, v85);
        v37 = v138;
LABEL_141:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit0A14ControlsActionO_ACtMd, &_s15ConversationKit0A14ControlsActionO_ACtMR);
        goto LABEL_145;
      }

      v65 = *v64;
      v66 = v64[1];
      v68 = v64[2];
      v67 = v64[3];
      v69 = v64[4];
      v70 = v64[5];
      v71 = v64[6];
      if (v60 == 2)
      {
        if (v68 == 2)
        {
LABEL_84:
          v72 = OUTLINED_FUNCTION_4_74();
          outlined consume of GameControllerContext?(v72, v73, v74, v75, v76, v77, v78);
          OUTLINED_FUNCTION_1_95();
          goto LABEL_144;
        }

        goto LABEL_147;
      }

      if (v68 == 2)
      {
LABEL_147:
        v86 = v71;
        v87 = v65;
        v88 = v58;
        v89 = v66;
        v90 = v60;
        v91 = v67;
        v92 = v59;
        v93 = v69;
        v94 = v62;
        v95 = v70;
        outlined consume of GameControllerContext?(v88, v57, v90, v92, v94, v61, v63);
        v96 = v87;
        v97 = v89;
        v98 = v68;
        v99 = v91;
        v100 = v93;
        v101 = v95;
        v102 = v86;
        goto LABEL_156;
      }

      if (v58 != v65)
      {
        outlined consume of GameControllerContext?(v65, v66, v68, v67, v69, v70, v71);
        goto LABEL_155;
      }

      if (v60 == 1)
      {
        if (v68 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_154;
      }

      if (v68 == 1)
      {
LABEL_154:
        v139 = v66;
        v136 = v69;
        v137 = v67;
        outlined copy of GameControllerSymbolDescribers?(v57, v60);
        outlined consume of GameControllerSymbolDescribers?(v57, v60);
        outlined consume of GameControllerSymbolDescribers?(v139, v68);
        goto LABEL_155;
      }

      v141[0] = v66;
      v141[1] = v68;
      v141[2] = v67;
      v141[3] = v69;
      v141[4] = v70;
      v141[5] = v71;
      v140[0] = v57;
      v140[1] = v60;
      v140[2] = v59;
      v140[3] = v62;
      v140[4] = v61;
      v140[5] = v63;
      v134 = v70;
      v135 = v65;
      v139 = v66;
      v136 = v69;
      v137 = v67;
      LODWORD(v133) = static GameControllerSymbolDescribers.== infix(_:_:)(v140, v141);
      v103 = OUTLINED_FUNCTION_4_74();
      outlined copy of GameControllerContext?(v103, v104, v105);
      outlined copy of GameControllerContext?(v135, v139, v68);
      outlined copy of GameControllerContext?(v135, v139, v68);
      v106 = OUTLINED_FUNCTION_4_74();
      outlined copy of GameControllerContext?(v106, v107, v108);

      v109 = OUTLINED_FUNCTION_4_74();
      outlined consume of GameControllerContext?(v109, v110, v111, v112, v113, v114, v115);
      OUTLINED_FUNCTION_92_2(v135, v116, v117, v118, v136);
      OUTLINED_FUNCTION_92_2(v135, v119, v120, v121, v136);
      v122 = OUTLINED_FUNCTION_4_74();
      outlined consume of GameControllerContext?(v122, v123, v124, v125, v126, v127, v128);
      if (v133)
      {
        goto LABEL_84;
      }

LABEL_155:
      v96 = OUTLINED_FUNCTION_4_74();
LABEL_156:
      outlined consume of GameControllerContext?(v96, v97, v98, v99, v100, v101, v102);
      OUTLINED_FUNCTION_1_95();
LABEL_144:
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
LABEL_145:
      OUTLINED_FUNCTION_30_0();
      return;
    case 6u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v0);
      if (OUTLINED_FUNCTION_35_11() == 6)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 7u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v134);
      if (OUTLINED_FUNCTION_35_11() == 7)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 8u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v135);
      if (OUTLINED_FUNCTION_35_11() == 8)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 9u:
      OUTLINED_FUNCTION_0_108();
      v41 = v133;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v133);
      v43 = *v41;
      v42 = v41[1];
      v44 = v139;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_141;
      }

      v45 = *v44;
      v46 = v44[1];
      if (v43 != v45 || v42 != v46)
      {
        OUTLINED_FUNCTION_38_2();
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_143:
      OUTLINED_FUNCTION_1_95();
      goto LABEL_144;
    case 0xAu:
      if (OUTLINED_FUNCTION_49_13() == 10)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xBu:
      if (OUTLINED_FUNCTION_49_13() == 11)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xCu:
      if (OUTLINED_FUNCTION_49_13() == 12)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xDu:
      if (OUTLINED_FUNCTION_49_13() == 13)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xEu:
      if (OUTLINED_FUNCTION_49_13() == 14)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xFu:
      if (OUTLINED_FUNCTION_49_13() == 15)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x10u:
      if (OUTLINED_FUNCTION_49_13() == 16)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x11u:
      if (OUTLINED_FUNCTION_49_13() == 17)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x12u:
      if (OUTLINED_FUNCTION_49_13() == 18)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x13u:
      if (OUTLINED_FUNCTION_49_13() == 19)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x14u:
      if (OUTLINED_FUNCTION_49_13() == 20)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x15u:
      if (OUTLINED_FUNCTION_49_13() == 21)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x16u:
      if (OUTLINED_FUNCTION_49_13() == 22)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x17u:
      if (OUTLINED_FUNCTION_49_13() == 23)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x18u:
      if (OUTLINED_FUNCTION_49_13() == 24)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x19u:
      if (OUTLINED_FUNCTION_49_13() == 25)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Au:
      if (OUTLINED_FUNCTION_49_13() == 26)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Bu:
      if (OUTLINED_FUNCTION_49_13() == 27)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Cu:
      if (OUTLINED_FUNCTION_49_13() == 28)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Du:
      if (OUTLINED_FUNCTION_49_13() == 29)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Eu:
      if (OUTLINED_FUNCTION_49_13() == 30)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Fu:
      if (OUTLINED_FUNCTION_49_13() == 31)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x20u:
      if (OUTLINED_FUNCTION_49_13() == 32)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x21u:
      if (OUTLINED_FUNCTION_49_13() == 33)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x22u:
      if (OUTLINED_FUNCTION_49_13() == 34)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x23u:
      if (OUTLINED_FUNCTION_49_13() == 35)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x24u:
      if (OUTLINED_FUNCTION_49_13() == 36)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x25u:
      if (OUTLINED_FUNCTION_49_13() == 37)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x26u:
      if (OUTLINED_FUNCTION_49_13() == 38)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x27u:
      if (OUTLINED_FUNCTION_49_13() == 39)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x28u:
      if (OUTLINED_FUNCTION_49_13() == 40)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x29u:
      if (OUTLINED_FUNCTION_49_13() == 41)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Au:
      if (OUTLINED_FUNCTION_49_13() == 42)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Bu:
      if (OUTLINED_FUNCTION_49_13() == 43)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Cu:
      if (OUTLINED_FUNCTION_49_13() == 44)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Du:
      if (OUTLINED_FUNCTION_49_13() == 45)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Eu:
      if (OUTLINED_FUNCTION_49_13() == 46)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Fu:
      if (OUTLINED_FUNCTION_49_13() == 47)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x30u:
      if (OUTLINED_FUNCTION_49_13() == 48)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x31u:
      if (OUTLINED_FUNCTION_49_13() == 49)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x32u:
      if (OUTLINED_FUNCTION_49_13() == 50)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x33u:
      if (OUTLINED_FUNCTION_49_13() == 51)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x34u:
      if (OUTLINED_FUNCTION_49_13() == 52)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x35u:
      if (OUTLINED_FUNCTION_49_13() == 53)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x36u:
      if (OUTLINED_FUNCTION_49_13() == 54)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x37u:
      if (OUTLINED_FUNCTION_49_13() == 55)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x38u:
      if (OUTLINED_FUNCTION_49_13() == 56)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x39u:
      if (OUTLINED_FUNCTION_49_13() == 57)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Au:
      if (OUTLINED_FUNCTION_49_13() == 58)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Bu:
      if (OUTLINED_FUNCTION_49_13() == 59)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Cu:
      if (OUTLINED_FUNCTION_49_13() == 60)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Du:
      if (OUTLINED_FUNCTION_49_13() == 61)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Eu:
      if (OUTLINED_FUNCTION_49_13() == 62)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Fu:
      if (OUTLINED_FUNCTION_49_13() == 63)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    default:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v34);
      if (!OUTLINED_FUNCTION_35_11())
      {
        goto LABEL_70;
      }

      goto LABEL_141;
  }
}

void ConversationControlsAction.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *v13;
      v15 = 7;
      goto LABEL_35;
    case 2u:
      v17 = OUTLINED_FUNCTION_88();
      v18(v17);
      v19 = 15;
      goto LABEL_32;
    case 3u:
      v20 = OUTLINED_FUNCTION_88();
      v21(v20);
      v19 = 16;
LABEL_32:
      MEMORY[0x1BFB22640](v19);
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v5 + 8))(v9, v3);
      goto LABEL_72;
    case 4u:
      v14 = *v13;
      v15 = 17;
      goto LABEL_35;
    case 5u:
      v26 = *v13;
      v25 = *(v13 + 1);
      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      v30 = *(v13 + 4);
      v29 = *(v13 + 5);
      v31 = *(v13 + 6);
      MEMORY[0x1BFB22640](42);
      if (v28 == 2)
      {
        v24 = 0;
LABEL_36:
        Hasher._combine(_:)(v24);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v26);
        if (v28 == 1)
        {
          Hasher._combine(_:)(0);
          v32 = v26;
          v33 = v25;
          v34 = 1;
        }

        else
        {
          Hasher._combine(_:)(1u);
          GameControllerSymbolDescribers.hash(into:)(v0);
          v32 = v26;
          v33 = v25;
          v34 = v28;
        }

        outlined consume of GameControllerContext?(v32, v33, v34, v27, v30, v29, v31);
      }

LABEL_72:
      OUTLINED_FUNCTION_30_0();
      return;
    case 6u:
      v22 = *v13;
      v23 = 43;
      goto LABEL_51;
    case 7u:
      v22 = *v13;
      v23 = 44;
      goto LABEL_51;
    case 8u:
      v22 = *v13;
      v23 = 45;
LABEL_51:
      MEMORY[0x1BFB22640](v23);
      v16 = v22;
      goto LABEL_71;
    case 9u:
      MEMORY[0x1BFB22640](55);
      String.hash(into:)();

      goto LABEL_72;
    case 0xAu:
      v16 = 0;
      goto LABEL_71;
    case 0xBu:
      v16 = 1;
      goto LABEL_71;
    case 0xCu:
      v16 = 2;
      goto LABEL_71;
    case 0xDu:
      v16 = 4;
      goto LABEL_71;
    case 0xEu:
      v16 = 5;
      goto LABEL_71;
    case 0xFu:
      v16 = 6;
      goto LABEL_71;
    case 0x10u:
      v16 = 8;
      goto LABEL_71;
    case 0x11u:
      v16 = 9;
      goto LABEL_71;
    case 0x12u:
      v16 = 10;
      goto LABEL_71;
    case 0x13u:
      v16 = 11;
      goto LABEL_71;
    case 0x14u:
      v16 = 12;
      goto LABEL_71;
    case 0x15u:
      v16 = 13;
      goto LABEL_71;
    case 0x16u:
      v16 = 14;
      goto LABEL_71;
    case 0x17u:
      v16 = 18;
      goto LABEL_71;
    case 0x18u:
      v16 = 19;
      goto LABEL_71;
    case 0x19u:
      v16 = 20;
      goto LABEL_71;
    case 0x1Au:
      v16 = 21;
      goto LABEL_71;
    case 0x1Bu:
      v16 = 22;
      goto LABEL_71;
    case 0x1Cu:
      v16 = 23;
      goto LABEL_71;
    case 0x1Du:
      v16 = 24;
      goto LABEL_71;
    case 0x1Eu:
      v16 = 25;
      goto LABEL_71;
    case 0x1Fu:
      v16 = 26;
      goto LABEL_71;
    case 0x20u:
      v16 = 27;
      goto LABEL_71;
    case 0x21u:
      v16 = 28;
      goto LABEL_71;
    case 0x22u:
      v16 = 29;
      goto LABEL_71;
    case 0x23u:
      v16 = 30;
      goto LABEL_71;
    case 0x24u:
      v16 = 31;
      goto LABEL_71;
    case 0x25u:
      v16 = 32;
      goto LABEL_71;
    case 0x26u:
      v16 = 33;
      goto LABEL_71;
    case 0x27u:
      v16 = 34;
      goto LABEL_71;
    case 0x28u:
      v16 = 35;
      goto LABEL_71;
    case 0x29u:
      v16 = 36;
      goto LABEL_71;
    case 0x2Au:
      v16 = 37;
      goto LABEL_71;
    case 0x2Bu:
      v16 = 38;
      goto LABEL_71;
    case 0x2Cu:
      v16 = 39;
      goto LABEL_71;
    case 0x2Du:
      v16 = 40;
      goto LABEL_71;
    case 0x2Eu:
      v16 = 41;
      goto LABEL_71;
    case 0x2Fu:
      v16 = 46;
      goto LABEL_71;
    case 0x30u:
      v16 = 47;
      goto LABEL_71;
    case 0x31u:
      v16 = 48;
      goto LABEL_71;
    case 0x32u:
      v16 = 49;
      goto LABEL_71;
    case 0x33u:
      v16 = 50;
      goto LABEL_71;
    case 0x34u:
      v16 = 51;
      goto LABEL_71;
    case 0x35u:
      v16 = 52;
      goto LABEL_71;
    case 0x36u:
      v16 = 53;
      goto LABEL_71;
    case 0x37u:
      v16 = 54;
      goto LABEL_71;
    case 0x38u:
      v16 = 56;
      goto LABEL_71;
    case 0x39u:
      v16 = 57;
      goto LABEL_71;
    case 0x3Au:
      v16 = 58;
      goto LABEL_71;
    case 0x3Bu:
      v16 = 59;
      goto LABEL_71;
    case 0x3Cu:
      v16 = 60;
      goto LABEL_71;
    case 0x3Du:
      v16 = 61;
      goto LABEL_71;
    case 0x3Eu:
      v16 = 62;
      goto LABEL_71;
    case 0x3Fu:
      v16 = 63;
LABEL_71:
      MEMORY[0x1BFB22640](v16);
      goto LABEL_72;
    default:
      v14 = *v13;
      v15 = 3;
LABEL_35:
      MEMORY[0x1BFB22640](v15);
      v24 = v14;
      goto LABEL_36;
  }
}

Swift::Int ConversationControlsAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConversationControlsAction.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConversationControlsAction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for ConversationControlsAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationControlsAction;
  if (!type metadata singleton initialization cache for ConversationControlsAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of ConversationControlsAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)()
{
  return partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
}

{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for UUID() - 8);
  return v0(v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined assign with copy of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Conversation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of GameControllerContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 2)
  {
    outlined consume of GameControllerSymbolDescribers?(a2, a3);
  }
}

double outlined consume of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double outlined copy of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double outlined copy of GameControllerContext?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return outlined copy of GameControllerSymbolDescribers?(a2, a3);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIControlState and conformance UIControlState(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ControlsActionState(uint64_t result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for ShareMenuActionState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for ShareMenuActionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for ConversationControlsAction(uint64_t a1)
{
  type metadata accessor for (oneToOne: Bool)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (avLess: Bool)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (isInSecondaryBanner: Bool)();
        if (v4 <= 0x3F)
        {
          type metadata accessor for GameControllerContext?();
          if (v5 <= 0x3F)
          {
            type metadata accessor for (title: String)();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for (oneToOne: Bool)()
{
  result = lazy cache variable for type metadata for (oneToOne: Bool);
  if (!lazy cache variable for type metadata for (oneToOne: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (oneToOne: Bool));
  }

  return result;
}

uint64_t type metadata accessor for (avLess: Bool)()
{
  result = lazy cache variable for type metadata for (avLess: Bool);
  if (!lazy cache variable for type metadata for (avLess: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (avLess: Bool));
  }

  return result;
}

uint64_t type metadata accessor for (isInSecondaryBanner: Bool)()
{
  result = lazy cache variable for type metadata for (isInSecondaryBanner: Bool);
  if (!lazy cache variable for type metadata for (isInSecondaryBanner: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (isInSecondaryBanner: Bool));
  }

  return result;
}

void type metadata accessor for GameControllerContext?()
{
  if (!lazy cache variable for type metadata for GameControllerContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GameControllerContext?);
    }
  }
}

uint64_t type metadata accessor for (title: String)()
{
  result = lazy cache variable for type metadata for (title: String);
  if (!lazy cache variable for type metadata for (title: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (title: String));
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationControlsAction.CallButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConversationControlsAction.Location(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of Handle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd, &_s20LiveCommunicationKit6HandleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MomentsIndicatorViewModel.__allocating_init(type:remoteParticipantName:)(char a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 32) = a3;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

id one-time initialization function for numberFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static MomentsIndicatorViewModel.numberFormatter = result;
  return result;
}

uint64_t *MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109(&one-time initialization token for numberFormatter);
  }

  return &static MomentsIndicatorViewModel.numberFormatter;
}

id static MomentsIndicatorViewModel.numberFormatter.getter()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109(&one-time initialization token for numberFormatter);
  }

  swift_beginAccess();
  v0 = static MomentsIndicatorViewModel.numberFormatter;

  return v0;
}

void static MomentsIndicatorViewModel.numberFormatter.setter(uint64_t a1)
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109(&one-time initialization token for numberFormatter);
  }

  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  static MomentsIndicatorViewModel.numberFormatter = a1;
}

uint64_t (*static MomentsIndicatorViewModel.numberFormatter.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109(&one-time initialization token for numberFormatter);
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

id key path getter for static MomentsIndicatorViewModel.numberFormatter : MomentsIndicatorViewModel.Type@<X0>(void *a1@<X8>)
{
  MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  *a1 = static MomentsIndicatorViewModel.numberFormatter;

  return v2;
}

void key path setter for static MomentsIndicatorViewModel.numberFormatter : MomentsIndicatorViewModel.Type(id *a1)
{
  v1 = *a1;
  MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  static MomentsIndicatorViewModel.numberFormatter = v1;
}

uint64_t MomentsIndicatorViewModel.text.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v27 = *(v0 + 40);
      v28 = type metadata accessor for Locale();
      if (!v27)
      {
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BC4BA940;
        v42 = *(v0 + 24);
        v41 = *(v0 + 32);
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v40 + 32) = v42;
        *(v40 + 40) = v41;
        v43 = one-time initialization token for conversationKit;

        if (v43 != -1)
        {
          OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
        }

        OUTLINED_FUNCTION_2_90();
        OUTLINED_FUNCTION_17_0(0x5F4B4F4F545F4025, 0xED00004F544F4850, v44, v45, v52);
        OUTLINED_FUNCTION_3_86();
        if (*(v40 + 16))
        {
          OUTLINED_FUNCTION_209();
          String.init(format:locale:arguments:)();
        }

        v46 = v4;
        goto LABEL_34;
      }

      __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_1BC4BAA20;
      v30 = *(v0 + 24);
      v29 = *(v0 + 32);
      v1 = MEMORY[0x1E69E6158];
      *(v4 + 7) = MEMORY[0x1E69E6158];
      v10 = lazy protocol witness table accessor for type String and conformance String();
      *(v4 + 8) = v10;
      *(v4 + 4) = v30;
      *(v4 + 5) = v29;
      v31 = one-time initialization token for numberFormatter;

      if (v31 == -1)
      {
LABEL_13:
        swift_beginAccess();
        v32 = *(v0 + 40);
        v16 = v32 + 1;
        if (v32 == -1)
        {
          __break(1u);
          goto LABEL_39;
        }

        v33 = static MomentsIndicatorViewModel.numberFormatter;
        isa = UInt._bridgeToObjectiveC()().super.super.isa;
        v35 = [v33 stringFromNumber_];

        if (v35)
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v39 = (v4 + 72);
          *(v4 + 12) = v1;
          *(v4 + 13) = v10;
          if (v38)
          {
            *v39 = v36;
LABEL_28:
            *(v4 + 10) = v38;
            if (one-time initialization token for conversationKit != -1)
            {
              OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
            }

            OUTLINED_FUNCTION_2_90();
            OUTLINED_FUNCTION_17_0(0xD000000000000018, 0x80000001BC502DD0, v47, v48, v53);
            OUTLINED_FUNCTION_3_86();
            if (*(v4 + 2))
            {
              OUTLINED_FUNCTION_209();
              String.init(format:locale:arguments:)();
            }

            v46 = v7;
            goto LABEL_34;
          }
        }

        else
        {
          v39 = (v4 + 72);
          *(v4 + 12) = v1;
          *(v4 + 13) = v10;
        }

        *v39 = 0;
        v38 = 0xE000000000000000;
        goto LABEL_28;
      }

LABEL_37:
      OUTLINED_FUNCTION_0_109(&one-time initialization token for numberFormatter);
      goto LABEL_13;
    }

    if (*(v0 + 40))
    {
      v11 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA940;
      v13 = *(v0 + 40);
      v14 = __CFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        v7 = v12;
        v16 = "%@_TOOK_PHOTO_COUNT_(%@)";
        v17 = MEMORY[0x1E69E6870];
        *(v12 + 56) = MEMORY[0x1E69E6810];
        *(v12 + 64) = v17;
        *(v12 + 32) = v15;
        if (one-time initialization token for conversationKit == -1)
        {
LABEL_6:
          OUTLINED_FUNCTION_4_75();
          OUTLINED_FUNCTION_17_0(v18 | 2, v16 | 0x8000000000000000, v19, v20, v51);
          OUTLINED_FUNCTION_3_86();
          if (*(v7 + 2))
          {
            OUTLINED_FUNCTION_209();
            String.init(format:locale:arguments:)();
          }

          v46 = v10;
LABEL_34:
          outlined destroy of Locale?(v46);
          return OUTLINED_FUNCTION_209();
        }

LABEL_39:
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_37;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
    }

    OUTLINED_FUNCTION_2_90();
    v25 = 0x4B4F4F545F554F59;
    v26 = 0xEE004F544F48505FLL;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
    }

    OUTLINED_FUNCTION_4_75();
    v25 = v24 | 1;
    v26 = 0x80000001BC502E10;
  }

  OUTLINED_FUNCTION_17_0(v25, v26, v21, v22, v23);
  OUTLINED_FUNCTION_3_86();
  return OUTLINED_FUNCTION_209();
}

uint64_t MomentsIndicatorViewModel.captureCount.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MomentsIndicatorViewModel.init(type:remoteParticipantName:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

Swift::Void __swiftcall MomentsIndicatorViewModel.refresh()()
{
  v1 = *(v0 + 40);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v3;
  }
}

uint64_t MomentsIndicatorViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::String __swiftcall PersonNameComponents.formattedName(style:)(NSPersonNameComponentsFormatterStyle style)
{
  v2 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v4 = [v2 localizedStringFromPersonNameComponents:isa style:style options:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t PersonNameComponents.init(formattedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v10 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init], v11 = MEMORY[0x1BFB209B0](a1, a2), , v12 = objc_msgSend(v10, sel_personNameComponentsFromString_, v11), v10, v11, v12))
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(a3, v9, v6);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

id one-time initialization function for initials()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  result = [v0 setStyle_];
  static NSPersonNameComponentsFormatter.initials = v0;
  return result;
}

id static NSPersonNameComponentsFormatter.initials.getter()
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16(&one-time initialization token for initials);
  }

  swift_beginAccess();
  v0 = static NSPersonNameComponentsFormatter.initials;

  return v0;
}

void static NSPersonNameComponentsFormatter.initials.setter(uint64_t a1)
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16(&one-time initialization token for initials);
  }

  swift_beginAccess();
  v2 = static NSPersonNameComponentsFormatter.initials;
  static NSPersonNameComponentsFormatter.initials = a1;
}

uint64_t (*static NSPersonNameComponentsFormatter.initials.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16(&one-time initialization token for initials);
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

void FlashView.flash(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 bounds];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v10 setUserInteractionEnabled_];
  [v10 setAutoresizingMask_];
  v11 = [objc_opt_self() whiteColor];
  [v10 setBackgroundColor_];

  [v3 addSubview_];
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v23 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v24 = v13;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_38;
  v14 = _Block_copy(&v19);
  v15 = v10;

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v23 = partial apply for closure #2 in FlashView.flash(completion:);
  v24 = v16;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22 = &block_descriptor_6_0;
  v17 = _Block_copy(&v19);
  v18 = v15;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);

  [v12 animateWithDuration:327680 delay:v14 options:v17 animations:0.25 completion:0.075];
  _Block_release(v17);
  _Block_release(v14);
}

id FlashView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id FlashView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = type metadata accessor for FlashView();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id FlashView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FlashView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FlashView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FlashView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlashView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id partial apply for closure #2 in FlashView.flash(completion:)()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) removeFromSuperview];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t InCallScreenShareCallControlsService.__allocating_init(controlsManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InCallScreenShareCallControlsService.shareMenuActionStates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x740))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t InCallScreenShareCallControlsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UIView.addConstraintsToFill(_:insets:)(UIView *_, NSDirectionalEdgeInsets insets)
{
  v3 = v2;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = [v3 leadingAnchor];
  v11 = [(UIView *)_ leadingAnchor];
  v12 = OUTLINED_FUNCTION_0_42();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [v3 topAnchor];
  v16 = [(UIView *)_ topAnchor];
  v17 = OUTLINED_FUNCTION_0_42();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [(UIView *)_ trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_42();
  v24 = [v22 v23];

  *(v9 + 48) = v24;
  v25 = [v3 bottomAnchor];
  v26 = [(UIView *)_ bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-bottom];

  *(v9 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];
}

void UIView.withLayer(_:)(void (*a1)(void))
{
  v3 = [v1 layer];
  a1();
}

double @objc UIView.safeAreaInsetFrame.getter(void *a1)
{
  v1 = a1;
  v2 = UIView.safeAreaInsetFrame.getter();

  return v2;
}

double UIView.safeAreaInsetFrame.getter()
{
  v1 = [v0 window];
  if (v1 && (v1, v2 = [v0 safeAreaLayoutGuide], v3 = objc_msgSend(v2, sel_hasAmbiguousLayout), v2, (v3 & 1) == 0) && (v4 = objc_msgSend(v0, sel_safeAreaLayoutGuide), objc_msgSend(v4, sel_layoutFrame), v4, CGRect.isValid.getter()))
  {
    v5 = [v0 safeAreaLayoutGuide];
    [v5 layoutFrame];
    v7 = v6;
  }

  else
  {
    [v0 bounds];
    return 0.0;
  }

  return v7;
}

double @objc UIView.displayScale.getter(void *a1)
{
  v1 = a1;
  v2 = UIView.displayScale.getter();

  return v2;
}

double UIView.displayScale.getter()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

double static UIView.screenScale.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t *ClarityUIOutgoingCallActionProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_96(&one-time initialization token for shared);
  }

  return &static ClarityUIOutgoingCallActionProvider.shared;
}

uint64_t static ClarityUIOutgoingCallActionProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_96(&one-time initialization token for shared);
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.().init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager;
  *(v0 + v1) = [objc_opt_self() sharedManager];
  v2 = *MEMORY[0x1E69D8FA0];

  return ObservableNotificationHandler.init(name:)(v2);
}

uint64_t ClarityUIOutgoingCallActionProvider.areEmailAddressesRelevant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    return 1;
  }

  else
  {
    return [v0 isDirectFaceTimeAudioCallingCurrentlyAvailable];
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.arePhoneNumbersRelevant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isDirectFaceTimeVideoCallingCurrentlyAvailable] & 1) != 0 || (objc_msgSend(v0, sel_isDirectFaceTimeAudioCallingCurrentlyAvailable))
  {
    return 1;
  }

  else
  {
    return [v0 isDirectTelephonyCallingCurrentlyAvailable];
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.outgoingCallActions(for:)(void **a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(v4, v5, v6, v7, v2);
  v10 = v9;
  if (*(v9 + 16))
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, &static Log.clarityUI);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *(v10 + 16);

      _os_log_impl(&dword_1BBC58000, v12, v13, "Looking up %ld IDS destinations.", v14, 0xCu);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    else
    {
    }

    v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v15 beginQueryWithDestinations:isa services:7];
  }

  else
  {
  }

  return v8;
}

uint64_t specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v4 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  v5 = objc_opt_self();
  v59 = v1;
  v61 = a1;
  if (![v5 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    v10 = 0;
    v9 = 0;
    v63 = 0;
    v14 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;

  v8 = [v3 faceTimeProvider];

  _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(a1, 0, v3, v8, 1, closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)specialized partial apply, v7, v67);
  v10 = v67[0];
  v9 = v67[1];
  v11 = v67[3];
  v63 = v67[2];
  v12 = v67[4];

  if (!v9)
  {

    v13 = v12;
    goto LABEL_7;
  }

  if (v11)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v12);
    v13 = v12;

    v64[0] = v10;
    v64[1] = v9;
    outlined destroy of String(v64);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);

LABEL_7:
    v14 = v11;
    goto LABEL_9;
  }

  swift_beginAccess();
  outlined init with copy of ClarityUIOutgoingCallAction?(v67, &v68);

  specialized Set.formUnion<A>(_:)(v15);

  v72[0] = v10;
  v72[1] = v9;
  outlined destroy of String(v72);

  v14 = 0;
  v13 = v12;
LABEL_9:
  if ([v5 isDirectTelephonyCallingCurrentlyAvailable])
  {
    if (v9)
    {

      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v14, v13);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v13);
      if (v14)
      {
        goto LABEL_19;
      }
    }

    v16 = [v3 telephonyProvider];
    v17 = v61[3];
    v18 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v17);
    v19 = (*(v18 + 24))(v17, v18);
    result = specialized Array.count.getter();
    if (result)
    {
      v56 = v10;
      v53 = v5;
      v54 = v14;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = v16;
        v22 = MEMORY[0x1BFB22010](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = v16;
        v22 = *(v19 + 32);
      }

      v23 = v22;

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = 0;
      *(v24 + 40) = v3;
      v68 = 0x2D746361746E6F43;
      *&v69 = 0xE800000000000000;
      v26 = v61[3];
      v25 = v61[4];
      __swift_project_boxed_opaque_existential_1(v61, v26);
      v27 = *(v25 + 8);
      v52 = v23;
      v28 = v21;
      v29 = v3;

      v30 = v27(v26, v25);
      MEMORY[0x1BFB20B10](v30);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v65[0] = 0;
      v31 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v31);

      outlined consume of ClarityUIOutgoingCallAction?(v56, v9, v63, v54, v13);
      v10 = v68;
      v9 = v69;

      v63 = 0;
      v32 = 0;
      v14 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
      v13 = v24;
      v5 = v53;
      goto LABEL_20;
    }
  }

  if (v9)
  {
LABEL_19:

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v14, v13);
    v32 = v63;
LABEL_20:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v34 = v33;
    v36 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v33);
      v34 = v49;
    }

    *(v34 + 16) = v36 + 1;
    v37 = v34 + 40 * v36;
    *(v37 + 32) = v10;
    *(v37 + 40) = v9;
    *(v37 + 48) = v32 & 1;
    *(v37 + 56) = v14;
    *(v37 + 64) = v13;
    goto LABEL_24;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if ([v5 isDirectFaceTimeVideoCallingCurrentlyAvailable])
  {
    v58 = v13;
    v38 = swift_allocObject();
    *(v38 + 16) = MEMORY[0x1E69E7CD0];
    v39 = swift_allocObject();
    *(v39 + 16) = v59;
    *(v39 + 24) = v38;

    v40 = [v3 faceTimeProvider];

    _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(v61, 1, v3, v40, 1, closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)specialized partial apply, v39, &v68);

    if (v69)
    {
      v62 = v69;
      v55 = v14;
      v60 = v3;
      v41 = v68;
      v43 = v70;
      v42 = v71;
      v73[0] = v68;
      v73[1] = v69;
      outlined init with copy of String(v73, v65);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v43, v42);
      v57 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
        v34 = v50;
      }

      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      v46 = v62;
      if (v45 >= v44 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v34);
        v46 = v62;
        v34 = v51;
      }

      *(v34 + 16) = v45 + 1;
      v47 = v34 + 40 * v45;
      *(v47 + 32) = v41;
      *(v47 + 40) = v46;
      *(v47 + 56) = v43;
      *(v47 + 64) = v42;
      if (v43)
      {
        outlined consume of ClarityUIOutgoingCallAction?(v57, v9, v63, v55, v58);

        outlined destroy of String(v73);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v43, v42);
      }

      else
      {
        swift_beginAccess();

        specialized Set.formUnion<A>(_:)(v48);
        outlined consume of ClarityUIOutgoingCallAction?(v57, v9, v63, v55, v58);

        outlined destroy of String(v73);
      }
    }

    else
    {
      outlined consume of ClarityUIOutgoingCallAction?(v10, v9, v63, v14, v58);
    }
  }

  else
  {
    outlined consume of ClarityUIOutgoingCallAction?(v10, v9, v63, v14, v13);
  }

  return v34;
}

uint64_t ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v11 = MEMORY[0x1E69E7CD0];
  v95 = MEMORY[0x1E69E7CD0];
  v12 = *(a3 + 16);
  *&v92 = v3;
  v13 = v12(a2, a3);
  v89 = v10;
  v88 = v9;
  v85 = a1;
  v86 = v7;
  v84 = v8;
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v83 = v14 + 16;
    v15 = OUTLINED_FUNCTION_2_91();
    v16(v15);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v19 = v7;
    v20 = v18;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v19 + 32))(v18 + v17, v9, a2);
    *(v20 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v21 = [v10 faceTimeProvider];

    ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(a1, 0, v10, v21, 1, partial apply for closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v20, v96);
    v22 = v96[1];
    v91 = v96[0];
    v23 = v96[3];
    v90 = v96[2];
    v87 = v96[4];

    if (v22)
    {
      if (v23)
      {

        v24 = v87;
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v87);

        v93[0] = v91;
        v93[1] = v22;
        outlined destroy of String(v93);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v23, v24);
LABEL_9:
        v9 = v88;

        goto LABEL_10;
      }

      swift_beginAccess();
      outlined init with copy of ClarityUIOutgoingCallAction?(v96, &v98);

      specialized Set.formUnion<A>(_:)(v25);

      v102[0] = v91;
      v102[1] = v22;
      outlined destroy of String(v102);
    }

    else
    {
    }

    v24 = v87;
    goto LABEL_9;
  }

  v91 = 0;
  v22 = 0;
  v90 = 0;
  v23 = 0;
  v24 = 0;
LABEL_10:
  v26 = OUTLINED_FUNCTION_4_76();
  if ((v27(v26) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v22)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v24);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v23, v24);
    if (v23)
    {
LABEL_16:

      v38 = v24;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v24);
      v31 = v22;
      goto LABEL_17;
    }
  }

  v28 = v89;
  v29 = v24;
  v30 = [v89 telephonyProvider];
  ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(v85, 0, v28, v30, 0, 0, 0, v97);
  v32 = v97[0];
  v31 = v97[1];
  v33 = v97[3];
  v87 = v97[2];
  v34 = v97[4];

  v24 = v29;
  v9 = v88;
  if (!v31)
  {
LABEL_15:
    if (!v22)
    {
      v40 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v35 = OUTLINED_FUNCTION_0_110();
  outlined consume of ClarityUIOutgoingCallAction?(v35, v36, v37, v23, v24);

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v33, v34);
  v91 = v32;
  v90 = v87;
  v23 = v33;
  v38 = v34;
LABEL_17:
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v40 = v39;
  v42 = *(v39 + 16);
  v41 = *(v39 + 24);
  if (v42 >= v41 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v39);
    v40 = v79;
  }

  *(v40 + 16) = v42 + 1;
  v43 = v40 + 40 * v42;
  *(v43 + 32) = v91;
  *(v43 + 40) = v31;
  *(v43 + 48) = v90 & 1;
  *(v43 + 56) = v23;
  *(v43 + 64) = v38;
  v24 = v38;
  v9 = v88;
LABEL_21:
  v44 = OUTLINED_FUNCTION_4_76();
  v46 = v45(v44);
  v47 = v86;
  if ((v46 & 1) == 0)
  {
    v68 = OUTLINED_FUNCTION_0_110();
    outlined consume of ClarityUIOutgoingCallAction?(v68, v69, v70, v23, v24);
LABEL_33:

    return v40;
  }

  v88 = v23;
  v87 = v24;
  v48 = swift_allocObject();
  *(v48 + 16) = MEMORY[0x1E69E7CD0];
  v83 = v48 + 16;
  v49 = OUTLINED_FUNCTION_2_91();
  v50(v49);
  v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v52 = (v84 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v9;
  v55 = v53;
  *(v53 + 16) = a2;
  *(v53 + 24) = a3;
  (*(v47 + 32))(v53 + v51, v54, a2);
  *(v55 + v52) = v48;
  v56 = v89;
  v57 = [v89 faceTimeProvider];

  ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(v85, 1, v56, v57, 1, partial apply for closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v55, &v98);

  if (v99)
  {
    v92 = v99;
    v58 = v98;
    v59 = v100;
    v60 = v101;
    v103[0] = v98;
    v103[1] = v99;
    outlined init with copy of String(v103, v94);
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v59, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
      v40 = v80;
    }

    v62 = *(v40 + 16);
    v61 = *(v40 + 24);
    v63 = v92;
    if (v62 >= v61 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v40);
      v63 = v92;
      v40 = v81;
    }

    *(v40 + 16) = v62 + 1;
    v64 = v40 + 40 * v62;
    *(v64 + 32) = v58;
    *(v64 + 40) = v63;
    *(v64 + 56) = v59;
    *(v64 + 64) = v60;
    if (v59)
    {
      v65 = OUTLINED_FUNCTION_0_110();
      OUTLINED_FUNCTION_3_87(v65, v66, v67);

      outlined destroy of String(v103);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v59, v60);
    }

    else
    {
      swift_beginAccess();

      specialized Set.formUnion<A>(_:)(v74);
      v75 = OUTLINED_FUNCTION_0_110();
      OUTLINED_FUNCTION_3_87(v75, v76, v77);

      outlined destroy of String(v103);
    }

    goto LABEL_33;
  }

  v71 = OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_3_87(v71, v72, v73);

  return v40;
}

id TUHandle.idsDestination.getter()
{
  result = TUCopyIDSCanonicalAddressForHandle();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ClarityUIOutgoingCallActionProvider.faceTimeVideoAvailability(handle:)(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager);
  v5 = TUHandle.idsDestination.getter();
  v6 = MEMORY[0x1BFB209B0](v5);

  v7 = [v4 *a2];

  return v7;
}

uint64_t ClarityUIOutgoingCallActionProvider.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ClarityUIOutgoingCallActionProvider.__deallocating_deinit()
{
  ClarityUIOutgoingCallActionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48))(a1, a4, a5);
  if (!v5)
  {
    v6 = TUHandle.idsDestination.getter();
    v8 = v7;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v6, v8);
    swift_endAccess();
  }

  return v5;
}

void _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D852LL7contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t (*a6)(void *)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v62 = v13;
  if (a5)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 16))(v14, v15);
    specialized Array.append<A>(contentsOf:)(v16);
    v13 = v62;
  }

  v17 = specialized Array.count.getter();
  v53 = 0;
  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v20 = v13 & 0xFFFFFFFFFFFFFF8;
  v57 = v13 & 0xFFFFFFFFFFFFFF8;
  v58 = v13;
  while (1)
  {
    if (v17 == v18)
    {

      if ((v53 & 1) == 0)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v38 = 0;
        v39 = 0;
LABEL_29:
        *a8 = v42;
        a8[1] = v43;
        a8[2] = v44;
        a8[3] = v38;
        a8[4] = v39;
        return;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = a2 & 1;
LABEL_28:
      v60 = 0x2D746361746E6F43;
      v61 = 0xE800000000000000;
      v47 = a1[3];
      v48 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v47);
      v49 = (*(v48 + 8))(v47, v48);
      MEMORY[0x1BFB20B10](v49);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v50 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v50);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v38, v39);
      v42 = v60;
      v43 = v61;
      v44 = v41;
      goto LABEL_29;
    }

    if (v19)
    {
      v21 = MEMORY[0x1BFB22010](v18, v13);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v21 = *(v13 + 8 * v18 + 32);
    }

    v22 = v21;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_27;
    }

    v23 = a6(v22);
    if (v23 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

      goto LABEL_20;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
LABEL_27:

        v39 = swift_allocObject();
        *(v39 + 16) = a4;
        *(v39 + 24) = v22;
        v41 = a2 & 1;
        *(v39 + 32) = v41;
        *(v39 + 40) = a3;
        v40 = v22;
        v45 = a4;
        v46 = a3;

        v38 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
        goto LABEL_28;
      }

      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.clarityUI);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v60 = v28;
        *v27 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v29 = String.init<A>(describing:)();
        log = v25;
        v31 = v19;
        v32 = a6;
        v33 = a7;
        v34 = v17;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v60);

        *(v27 + 4) = v35;
        v17 = v34;
        a7 = v33;
        a6 = v32;
        v19 = v31;
        _os_log_impl(&dword_1BBC58000, log, v26, "Unhandled FaceTime availability status: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v36 = v28;
        v20 = v57;
        MEMORY[0x1BFB23DF0](v36, -1, -1);
        v37 = v27;
        v13 = v58;
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
      }

LABEL_20:
      ++v18;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

      v53 = 1;
      ++v18;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t (*a6)(void *)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v63 = v13;
  if (a5)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 16))(v14, v15);
    specialized Array.append<A>(contentsOf:)(v16);
    v13 = v63;
  }

  v17 = specialized Array.count.getter();
  v54 = 0;
  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v20 = v13 & 0xFFFFFFFFFFFFFF8;
  v58 = v13 & 0xFFFFFFFFFFFFFF8;
  v59 = v13;
  while (1)
  {
    if (v17 == v18)
    {

      if (v54)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = a2 & 1;
        goto LABEL_28;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      v38 = 0;
      v39 = 0;
      v45 = a8;
LABEL_29:
      *v45 = v42;
      v45[1] = v43;
      v45[2] = v44;
      v45[3] = v38;
      v45[4] = v39;
      return;
    }

    if (v19)
    {
      v21 = MEMORY[0x1BFB22010](v18, v13);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v21 = *(v13 + 8 * v18 + 32);
    }

    v22 = v21;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_27;
    }

    v23 = a6(v22);
    if (v23 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

      goto LABEL_20;
    }

    if (v23 == 1)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
LABEL_27:

      v39 = swift_allocObject();
      *(v39 + 16) = a4;
      *(v39 + 24) = v22;
      v41 = a2 & 1;
      *(v39 + 32) = v41;
      *(v39 + 40) = a3;
      v40 = v22;
      v46 = a4;
      v47 = a3;

      v38 = partial apply for closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:);
LABEL_28:
      v45 = a8;
      v61 = 0x2D746361746E6F43;
      v62 = 0xE800000000000000;
      v48 = a1[3];
      v49 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v48);
      v50 = (*(v49 + 8))(v48, v49);
      MEMORY[0x1BFB20B10](v50);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v51 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v51);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v38, v39);
      v42 = v61;
      v43 = v62;
      v44 = v41;
      goto LABEL_29;
    }

    if (v23)
    {
      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.clarityUI);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v61 = v28;
        *v27 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v29 = String.init<A>(describing:)();
        log = v25;
        v31 = v19;
        v32 = a6;
        v33 = a7;
        v34 = v17;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v61);

        *(v27 + 4) = v35;
        v17 = v34;
        a7 = v33;
        a6 = v32;
        v19 = v31;
        _os_log_impl(&dword_1BBC58000, log, v26, "Unhandled FaceTime availability status: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v36 = v28;
        v20 = v58;
        MEMORY[0x1BFB23DF0](v36, -1, -1);
        v37 = v27;
        v13 = v59;
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);
      }

LABEL_20:
      ++v18;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, a7);

      v54 = 1;
      ++v18;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  while (v3 != v2)
  {
    if (v2 >= *(a1 + 16))
    {
      __break(1u);
      return;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    specialized Set._Variant.insert(_:)(&v7, v6, v5);

    v4 += 2;
  }
}

{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t specialized closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  if (!v4)
  {
    v5 = TUHandle.idsDestination.getter();
    v7 = v6;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v9, v5, v7);
    swift_endAccess();
  }

  return v4;
}

uint64_t closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 40))(a1, a4, a5);
  if (!v5)
  {
    v6 = TUHandle.idsDestination.getter();
    v8 = v7;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v6, v8);
    swift_endAccess();
  }

  return v5;
}

void closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v7 setHandle_];
  [v7 setVideo_];
  [v7 setOriginatingUIType_];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v12[4] = partial apply for closure #1 in closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:);
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_39;
  v9 = _Block_copy(v12);
  v10 = v7;
  v11 = a2;

  [a4 launchAppForDialRequest:v10 completion:v9];
  _Block_release(v9);
}

void closure #1 in closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138412802;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v15 = v9;
      v16 = v10;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Unable to launch app for dial request: %@, handle: %@, error: %s", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ClarityUIContact.emailAddressHandles.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  type metadata accessor for TUHandle();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler()
{
  result = lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler;
  if (!lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler)
  {
    type metadata accessor for ObservableNotificationHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler);
  }

  return result;
}

uint64_t specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v11 = MEMORY[0x1E69E7CD0];
  v78 = MEMORY[0x1E69E7CD0];
  v12 = objc_opt_self();
  v71 = a2;
  v72 = a4;
  v69 = a3;
  v70 = a1;
  v64 = a5;
  v74 = v12;
  if ([v12 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = v13;

    v15 = [v10 faceTimeProvider];

    _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(a1, a2, a3, a4, 0, v10, v15, 1, v79, partial apply for specialized closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v14);
    v17 = v79[0];
    v16 = v79[1];
    v18 = v79[2];
    v19 = v79[3];
    v20 = v79[4];

    if (v16)
    {
      if (v19)
      {
        v21 = v19;

        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19, v20);

        v76[0] = v17;
        v76[1] = v16;
        outlined destroy of String(v76);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v19, v20);
      }

      else
      {
        swift_beginAccess();
        outlined init with copy of ClarityUIOutgoingCallAction?(v79, &v80);

        specialized Set.formUnion<A>(_:)(v24);

        v84[0] = v17;
        v84[1] = v16;
        outlined destroy of String(v84);

        v21 = 0;
      }

      v22 = v18;
    }

    else
    {

      v22 = v18;
      v21 = v19;
    }

    v23 = &selRef_fillRule;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v23 = &selRef_fillRule;
    v17 = 0;
  }

  if (![v12 isDirectTelephonyCallingCurrentlyAvailable])
  {
LABEL_19:
    if (!v16)
    {
      v42 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v16)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v21, v20);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21, v20);
    if (v21)
    {
LABEL_20:

      v39 = v21;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v21, v20);
      v40 = v22;
      goto LABEL_21;
    }
  }

  v65 = v21;
  v67 = v22;
  v62 = v10;
  v25 = [v10 telephonyProvider];
  v26 = v70;
  v27 = v71;

  v28 = [v26 tuHandlesForPhoneNumbers];
  type metadata accessor for TUHandle();
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter();
  if (!result)
  {

    v21 = v65;
    v22 = v67;
    v12 = v74;
    v10 = v62;
    goto LABEL_19;
  }

  v60 = v20;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1BFB22010](0, v29);
    v31 = v27;
    v32 = v26;
    goto LABEL_17;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = v27;
    v32 = v26;
    v33 = *(v29 + 32);
LABEL_17:
    v10 = v62;

    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    *(v34 + 24) = v33;
    *(v34 + 32) = 0;
    *(v34 + 40) = v62;
    v80 = 0x2D746361746E6F43;
    *&v81 = 0xE800000000000000;
    v35 = v33;
    v36 = v25;
    v37 = v62;

    MEMORY[0x1BFB20B10](v69, v72);

    MEMORY[0x1BFB20B10](45, 0xE100000000000000);
    v77[0] = 0;
    v38 = String.init<A>(describing:)();
    MEMORY[0x1BFB20B10](v38);

    outlined consume of ClarityUIOutgoingCallAction?(v17, v16, v67, v65, v60);
    v17 = v80;
    v16 = v81;

    v39 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply, v34);
    v22 = 0;
    v40 = 0;
    v20 = v34;
LABEL_21:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v42 = v41;
    v44 = *(v41 + 16);
    v43 = *(v41 + 24);
    if (v44 >= v43 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v41);
      v42 = v57;
    }

    *(v42 + 16) = v44 + 1;
    v45 = v42 + 40 * v44;
    *(v45 + 32) = v17;
    *(v45 + 40) = v16;
    *(v45 + 48) = v40 & 1;
    v21 = v39;
    *(v45 + 56) = v39;
    *(v45 + 64) = v20;
    v23 = &selRef_fillRule;
    v12 = v74;
LABEL_25:
    if ([v12 isDirectFaceTimeVideoCallingCurrentlyAvailable])
    {
      v75 = v17;
      v66 = v21;
      v68 = v22;
      v46 = swift_allocObject();
      *(v46 + 16) = MEMORY[0x1E69E7CD0];
      v47 = swift_allocObject();
      *(v47 + 16) = v64;
      *(v47 + 24) = v46;

      v48 = [v10 v23[182]];

      _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(v70, v71, v69, v72, 1, v10, v48, 1, &v80, partial apply for specialized closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v47);

      if (v81)
      {
        v73 = v81;
        v61 = v20;
        v63 = v10;
        v49 = v80;
        v51 = v82;
        v50 = v83;
        v85[0] = v80;
        v85[1] = v81;
        outlined init with copy of String(v85, v77);
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v51, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42);
          v42 = v58;
        }

        v53 = *(v42 + 16);
        v52 = *(v42 + 24);
        v54 = v73;
        if (v53 >= v52 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v42);
          v54 = v73;
          v42 = v59;
        }

        *(v42 + 16) = v53 + 1;
        v55 = v42 + 40 * v53;
        *(v55 + 32) = v49;
        *(v55 + 40) = v54;
        *(v55 + 56) = v51;
        *(v55 + 64) = v50;
        if (v51)
        {
          outlined consume of ClarityUIOutgoingCallAction?(v75, v16, v68, v66, v61);

          outlined destroy of String(v85);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v51, v50);

          return v42;
        }

        swift_beginAccess();

        specialized Set.formUnion<A>(_:)(v56);

        outlined destroy of String(v85);

        outlined consume of ClarityUIOutgoingCallAction?(v75, v16, v68, v66, v61);
      }

      else
      {
        outlined consume of ClarityUIOutgoingCallAction?(v75, v16, v68, v66, v20);
      }

      return v42;
    }

    outlined consume of ClarityUIOutgoingCallAction?(v17, v16, v22, v21, v20);

    return v42;
  }

  __break(1u);
  return result;
}

void outlined consume of ClarityUIOutgoingCallAction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4, a5);
  }
}

uint64_t partial apply for closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return a2(a1, v2 + v4, *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of ClarityUIOutgoingCallAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ClarityUIOutgoingCallActionVSgMd, &_s15ConversationKit27ClarityUIOutgoingCallActionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ClarityUIOutgoingCallActionProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClarityUIOutgoingCallActionProvider;
  if (!type metadata singleton initialization cache for ClarityUIOutgoingCallActionProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D852LL7contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, void *a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t (*a10)(void *), uint64_t a11)
{
  v16 = a1;
  v57 = a2;
  v59 = a4;

  v17 = [v16 tuHandlesForPhoneNumbers];
  type metadata accessor for TUHandle();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v18;
  if (a8)
  {
    v19 = [v16 tuHandlesForEmailAddresses];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v20);
    v18 = v66;
  }

  v58 = v16;
  v21 = specialized Array.count.getter();
  v54 = 0;
  v22 = 0;
  v23 = v18 & 0xC000000000000001;
  v24 = v18 & 0xFFFFFFFFFFFFFF8;
  v61 = v18;
  v63 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v21 == v22)
    {

      if ((v54 & 1) == 0)
      {

        v45 = 0;
        v46 = 0;
        v47 = 0;
        v41 = 0;
        v42 = 0;
LABEL_29:
        *a9 = v45;
        a9[1] = v46;
        a9[2] = v47;
        a9[3] = v41;
        a9[4] = v42;
        return;
      }

      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = a5 & 1;
LABEL_28:
      v64 = 0x2D746361746E6F43;
      v65 = 0xE800000000000000;

      MEMORY[0x1BFB20B10](a3, v59);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v51 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v51);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v41, v42);
      v45 = v64;
      v46 = v65;
      v47 = v44;
      goto LABEL_29;
    }

    if (v23)
    {
      v25 = MEMORY[0x1BFB22010](v22, v18);
    }

    else
    {
      if (v22 >= *(v24 + 16))
      {
        goto LABEL_31;
      }

      v25 = *(v18 + 8 * v22 + 32);
    }

    v26 = v25;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (!a10)
    {
      goto LABEL_27;
    }

    v27 = a10(v26);
    if (v27 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a10, a11);

      goto LABEL_20;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10, a11);
LABEL_27:

        v42 = swift_allocObject();
        *(v42 + 16) = a7;
        *(v42 + 24) = v26;
        v48 = v26;
        v44 = a5 & 1;
        *(v42 + 32) = v44;
        *(v42 + 40) = a6;
        v43 = v48;
        v49 = a7;
        v50 = a6;

        v41 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
        goto LABEL_28;
      }

      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, &static Log.clarityUI);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        log = v29;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v64 = v32;
        *v31 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v33 = String.init<A>(describing:)();
        v35 = v23;
        v36 = a10;
        v37 = a11;
        v38 = v21;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v64);

        *(v31 + 4) = v39;
        v21 = v38;
        a11 = v37;
        a10 = v36;
        v23 = v35;
        _os_log_impl(&dword_1BBC58000, log, v30, "Unhandled FaceTime availability status: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v40 = v32;
        v18 = v61;
        MEMORY[0x1BFB23DF0](v40, -1, -1);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10, a11);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10, a11);
      }

      v24 = v63;
LABEL_20:
      ++v22;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a10, a11);

      v54 = 1;
      ++v22;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

uint64_t one-time initialization function for htmlFragmentAdditions()
{
  v0 = [objc_opt_self() conversationKit];
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC4F97A0;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6);

  MEMORY[0x1BFB20B10](v4._countAndFlagsBits, v4._object);

  result = MEMORY[0x1BFB20B10](1047539516, 0xE400000000000000);
  static LinkShareItemHTMLTextGenerator.htmlFragmentAdditions = 4091964;
  unk_1EBCAE390 = 0xE300000000000000;
  return result;
}

uint64_t static LinkShareItemHTMLTextGenerator.htmlFragment(forLinkShareItem:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v13 = [a1 tuConversationLink];
  v14 = [v13 URL];

  if (!v14)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v12, v8, v2);
  type metadata accessor for LPLinkHTMLTextGenerator();
  (*(v3 + 16))(v5, v12, v2);
  v15 = LPLinkHTMLTextGenerator.__allocating_init(url:)(v5);
  v16 = TULinkShareItem.linkMetadata.getter();
  [v15 setMetadata_];

  if (one-time initialization token for htmlFragmentAdditions != -1)
  {
    swift_once();
  }

  v18 = static LinkShareItemHTMLTextGenerator.htmlFragmentAdditions;
  v17 = unk_1EBCAE390;
  v19 = [v15 HTMLFragmentString];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v25[0] = v18;
  v25[1] = v17;

  MEMORY[0x1BFB20B10](v20, v22);

  v23 = v25[0];
  (*(v3 + 8))(v12, v2);
  return v23;
}

unint64_t type metadata accessor for LPLinkHTMLTextGenerator()
{
  result = lazy cache variable for type metadata for LPLinkHTMLTextGenerator;
  if (!lazy cache variable for type metadata for LPLinkHTMLTextGenerator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LPLinkHTMLTextGenerator);
  }

  return result;
}

id LPLinkHTMLTextGenerator.__allocating_init(url:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t *OngoingTelephonyControlsView.Constants.statusTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  return &static OngoingTelephonyControlsView.Constants.statusTextColor;
}

uint64_t *OngoingTelephonyControlsView.Constants.durationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for durationTextColor != -1)
  {
    OUTLINED_FUNCTION_5_69(&one-time initialization token for durationTextColor);
  }

  return &static OngoingTelephonyControlsView.Constants.durationTextColor;
}

char *OngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v80 = a3;
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView] = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v83.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v14, v13, v83);
  v79 = v11;
  *&v4[v11] = v15;
  v16 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel;
  v17 = [v12 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  v18 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v19 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v84.value.super.isa = v18;
  UILabel.init(font:textColor:)(v20, v17, v84);
  *&v4[v16] = v21;
  v75 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context;
  v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context] = 1;
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(a1, &v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe]);
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_controlsManager] = a2;
  swift_storeEnumTagMultiPayload();
  v22 = one-time initialization token for conversationKit;
  v23 = a2;
  v76 = a1;
  v77 = v16;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = xmmword_1EDDCCEE8;
  v74.super.isa = static LocalizationSource.conversationKit;
  v25 = *(&xmmword_1EDDCCEE8 + 1);
  v85._object = 0xE000000000000000;
  v26._object = 0x80000001BC4F3040;
  v26._countAndFlagsBits = 0xD000000000000015;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v27, v85);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v30 = v29;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  v31 = v30;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v28._countAndFlagsBits, v28._object, v31);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton] = v31;
  static ConversationControlsAction.rejectCall(controlsManager:)(v23, v10);
  v86._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x5F474E41485F5841;
  v32._object = 0xEA00000000005055;
  v33.value._countAndFlagsBits = v24;
  v33.value._object = v25;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v74, v34, v86);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v37 = v36;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  v38 = v37;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v35._countAndFlagsBits, v35._object, v38);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton] = v38;
  v39 = v76;
  [*&v5[v79] setAttributedText_];
  type metadata accessor for BrandedIconView();
  v40 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x2A0);
  v41 = v40();
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView] = BrandedIconView.__allocating_init(telephonyCall:)(v41, v42);
  v43 = type metadata accessor for DurationLabelController();
  v44 = v40();
  v46 = v45;
  ObjectType = swift_getObjectType();
  v48 = *&v5[v77];
  v49 = one-time initialization token for durationTextColor;
  swift_unknownObjectRetain();
  v50 = v48;
  if (v49 != -1)
  {
    OUTLINED_FUNCTION_5_69(&one-time initialization token for durationTextColor);
  }

  v51 = static OngoingTelephonyControlsView.Constants.durationTextColor;
  v82[0] = v44;
  v52 = *(v46 + 8);
  v53 = static OngoingTelephonyControlsView.Constants.durationTextColor;
  v54 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v82, v50, v51, 0, 0, 0, v43, ObjectType, v52);
  swift_unknownObjectRelease();
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_durationController] = v54;
  v55 = *(*v54 + 248);

  v55(v56);

  v57 = type metadata accessor for OngoingTelephonyControlsView(0);
  v81.receiver = v5;
  v81.super_class = v57;
  v58 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  OngoingTelephonyControlsView.updateAvatarView()();
  v59 = OUTLINED_FUNCTION_26_4();
  [v59 v60];
  v61 = OUTLINED_FUNCTION_26_4();
  [v61 v62];
  v63 = OUTLINED_FUNCTION_26_4();
  [v63 v64];
  v65 = OUTLINED_FUNCTION_26_4();
  [v65 v66];
  v67 = *&v58[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView];
  if (v67)
  {
    v68 = v67;
    v69 = OUTLINED_FUNCTION_26_4();
    [v69 v70];
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v39, v71);
  return v58;
}

id OngoingTelephonyControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void OngoingTelephonyControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v12.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v4, v3, v12);
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel;
  v7 = [v2 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  v8 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v9 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v13.value.super.isa = v8;
  UILabel.init(font:textColor:)(v10, v7, v13);
  *(v0 + v6) = v11;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id OngoingTelephonyControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton];
  [v0 alpha];
  [v5 setAlpha_];
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton];
  [v0 alpha];

  return [v6 setAlpha_];
}

double OngoingTelephonyControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id OngoingTelephonyControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return OngoingTelephonyControlsView.cnkContentAlpha.didset();
}

uint64_t (*OngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OngoingTelephonyControlsView.cnkContentAlpha.modify;
}

uint64_t key path setter for OngoingTelephonyControlsView.recipe : OngoingTelephonyControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v6);
}

id OngoingTelephonyControlsView.recipe.didset()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44[0] = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "[%{public}s.recipe.didSet] Updating recipe on existing instance may not result in the expected experience.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v10 = &v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe];
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v10, v44);
  v40 = 6;
  v41 = 0u;
  v42 = 0u;
  v43 = 7;
  v11 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
  outlined destroy of ConversationControlsType(&v40);
  outlined destroy of ConversationControlsType(v44);
  if ((v11 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v10, v44);
    v40 = 8;
    v41 = 0u;
    v42 = 0u;
    v43 = 7;
    v12 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
    outlined destroy of ConversationControlsType(&v40);
    outlined destroy of ConversationControlsType(v44);
    if ((v12 & 1) == 0)
    {
      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v40 = v17;
        *v16 = 136446466;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v10, v44);
        v21 = specialized >> prefix<A>(_:)(v44);
        v23 = v22;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_1BBC58000, v14, v15, "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v16, -1, -1);
      }
    }
  }

  if (specialized Array.count.getter())
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v27 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v44);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v25, v26, "[%{public}s.recipe.didSet] Ignoring recipe subtitles which is currently unsupported per design.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB23DF0](v39, -1, -1);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }
  }

  if (*(v10 + *(type metadata accessor for ConversationControlsRecipe(0) + 40)))
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136446210;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v31, v32, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported per design", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel] setAttributedText_];
  OngoingTelephonyControlsView.updateAvatarView()();
  return [v1 setNeedsLayout];
}

uint64_t OngoingTelephonyControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t OngoingTelephonyControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  OngoingTelephonyControlsView.recipe.didset();
  OUTLINED_FUNCTION_1_11();
  return outlined destroy of ConversationControlsAction(a1, v4);
}

uint64_t (*OngoingTelephonyControlsView.recipe.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OngoingTelephonyControlsView.recipe.modify;
}

uint64_t OngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

Swift::Void __swiftcall OngoingTelephonyControlsView.layoutSubviews()()
{
  v4 = v0;
  ObjectType = swift_getObjectType();
  v220.receiver = v0;
  v220.super_class = type metadata accessor for OngoingTelephonyControlsView(0);
  objc_msgSendSuper2(&v220, sel_layoutSubviews);
  [v0 bounds];
  v5 = (CGRectGetHeight(v221) + -50.0) * 0.5;
  v186 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView;
  v6 = 50.0;
  [*&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView] setFrame_];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    OUTLINED_FUNCTION_30_1();
    v10 = OUTLINED_FUNCTION_16_8();
    v219 = v10;
    *v1 = 136446466;
    v18 = OUTLINED_FUNCTION_18_35(v10, v11, v12, v13, v14, v15, v16, v17, v176, v181, v186, *&v191, *&v196, v201, *&rect, ObjectType);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v219);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v216 = 0x4030000000000000;
    v217 = *&v5;
    v218 = vdupq_n_s64(0x4049000000000000uLL);
    type metadata accessor for CGRect(0);
    v20 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v219);
    OUTLINED_FUNCTION_17_2();
    *(v1 + 14) = &selRef_isRecordingAllowed;
    _os_log_impl(&dword_1BBC58000, v8, v9, "[%{public}s][layout] leadingFrame is %s", v1, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetWidth(v222);
  OUTLINED_FUNCTION_10_47();
  CGRectGetHeight(v223);
  v181 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton];
  v22 = OUTLINED_FUNCTION_21_29();
  [v23 v24];
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v26))
  {
    v27 = OUTLINED_FUNCTION_30_1();
    v28 = swift_slowAlloc();
    v219 = v28;
    *v27 = 136446466;
    v36 = OUTLINED_FUNCTION_18_35(v28, v29, v30, v31, v32, v33, v34, v35, v176, v181, v186, *&v191, *&v196, v201, *&rect, ObjectType);
    v44 = OUTLINED_FUNCTION_27_24(v36, v37, v38, v39, v40, v41, v42, v43, v177, v182, v187, v192, v197, v202, recta, v212, v216, v217, v218.i64[0], v218.i64[1]);

    *(v27 + 4) = v44;
    *(v27 + 12) = 2080;
    OUTLINED_FUNCTION_24_25();
    v45 = String.init<A>(reflecting:)();
    v53 = OUTLINED_FUNCTION_27_24(v45, v46, v47, v48, v49, v50, v51, v52, v178, v183, v188, v193, v198, v203, rectb, v213, v216, v217, v218.i64[0], v218.i64[1]);

    *(v27 + 14) = v53;
    _os_log_impl(&dword_1BBC58000, v25, v26, "[%{public}s][layout] hangUpFrame is %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v224.origin.x = OUTLINED_FUNCTION_21_29();
  CGRectGetMinX(v224);
  OUTLINED_FUNCTION_10_47();
  v54 = (CGRectGetHeight(v225) + MaxY) * 0.5;
  v176 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton];
  [v176 setFrame_];
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v56))
  {
    v57 = OUTLINED_FUNCTION_30_1();
    v58 = swift_slowAlloc();
    v219 = v58;
    *v57 = 136446466;
    v66 = OUTLINED_FUNCTION_18_35(v58, v59, v60, v61, v62, v63, v64, v65, v176, v181, v186, *&v191, *&v196, v201, *&rect, ObjectType);
    v74 = OUTLINED_FUNCTION_27_24(v66, v67, v68, v69, v70, v71, v72, v73, v179, v184, v189, v194, v199, v204, rectc, v214, v216, v217, v218.i64[0], v218.i64[1]);

    *(v57 + 4) = v74;
    *(v57 + 12) = 2080;
    OUTLINED_FUNCTION_24_25();
    v75 = String.init<A>(reflecting:)();
    v83 = OUTLINED_FUNCTION_27_24(v75, v76, v77, v78, v79, v80, v81, v82, v180, v185, v190, v195, v200, v205, rectd, v215, v216, v217, v218.i64[0], v218.i64[1]);

    *(v57 + 14) = v83;
    _os_log_impl(&dword_1BBC58000, v55, v56, "[%{public}s][layout] changeRouteFrame is %s", v57, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v226.origin.x = 16.0;
  v226.origin.y = v5;
  v226.size.width = v6;
  v196 = v6;
  v226.size.height = v6;
  MaxX = CGRectGetMaxX(v226);
  OUTLINED_FUNCTION_24_8();
  Width = CGRectGetWidth(v227);
  v201 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel];
  v86 = [v201 font];
  if (v86)
  {
    v87 = v86;
    v88 = MaxX + 9.0;
    v89 = Width + -136.0 - (MaxX + 9.0);
    [v86 lineHeight];
    v91 = v90;

    v92 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView];
    v93 = 14.0;
    if (!v92)
    {
      v93 = 0.0;
    }

    if (v93 <= 0.0)
    {
      v94 = 0.0;
    }

    else
    {
      v94 = v93 + 4.0;
    }

    OUTLINED_FUNCTION_24_8();
    Height = CGRectGetHeight(v228);
    v96 = (*(**&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_durationController] + 224))(v89 - v94, Height - v91);
    v98 = v97;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    v191 = v5;
    if (OUTLINED_FUNCTION_18_0(v100))
    {
      v101 = OUTLINED_FUNCTION_30_1();
      v102 = OUTLINED_FUNCTION_23();
      v216 = v102;
      *v101 = 136446466;
      v110 = OUTLINED_FUNCTION_18_35(v102, v103, v104, v105, v106, v107, v108, v109, v176, v181, v186, *&v5, *&v196, v201, *&rect, ObjectType);
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &v216);

      *(v101 + 4) = v112;
      *(v101 + 12) = 2048;
      *(v101 + 14) = v94 + v96;
      _os_log_impl(&dword_1BBC58000, v99, v100, "[%{public}s][layout] textWidth: %f", v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v102);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v113 = v88 + v94;
    OUTLINED_FUNCTION_24_8();
    v114 = (CGRectGetHeight(v229) - v98 - v91) * 0.5;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v116))
    {
      v117 = OUTLINED_FUNCTION_30_1();
      v118 = swift_slowAlloc();
      v216 = v118;
      *v117 = 136446466;
      v126 = OUTLINED_FUNCTION_18_35(v118, v119, v120, v121, v122, v123, v124, v125, v176, v181, v186, *&v191, *&v196, v201, *&rect, ObjectType);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v216);

      *(v117 + 4) = v128;
      *(v117 + 12) = 2080;
      OUTLINED_FUNCTION_4_77();
      v129 = CGRect.description.getter();
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v216);

      *(v117 + 14) = v131;
      _os_log_impl(&dword_1BBC58000, v115, v116, "[%{public}s][layout] secondaryFrame: %s", v117, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_27();
    }

    v132 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel];
    v133 = OUTLINED_FUNCTION_4_77();
    [v134 v135];
    rect = v114;
    if (v92)
    {
      v136 = v92;
      [v136 setBounds_];
      v230.origin.x = OUTLINED_FUNCTION_4_77();
      v137 = CGRectGetMinX(v230) + -4.0 + -7.0;
      [v132 center];
      v138 = v137;
      v114 = rect;
      [v136 setCenter_];
    }

    v231.size.width = v96;
    v139 = v113;
    v231.origin.x = v113;
    v231.origin.y = v114;
    v231.size.height = v98;
    v5 = v98;
    CGRectGetMaxY(v231);
    v6 = v88;
    if (v92)
    {
      [v92 frame];
      CGRectGetMaxY(v232);
    }

    v140 = OUTLINED_FUNCTION_22_30();
    [v141 v142];
    v233.origin.x = 16.0;
    v233.origin.y = v191;
    v233.size.width = v196;
    v233.size.height = v196;
    MaxY = CGRectGetMaxY(v233);
    v234.origin.x = OUTLINED_FUNCTION_22_30();
    v143 = CGRectGetMaxY(v234);
    v235.origin.x = v139;
    v235.origin.y = rect;
    v235.size.width = v96;
    v235.size.height = v98;
    MinY = CGRectGetMinY(v235);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v145))
    {
      MinY = v143 + MinY;
      MaxY = MaxY + 14.0;
      v146 = swift_slowAlloc();
      v147 = OUTLINED_FUNCTION_23();
      v216 = v147;
      *v146 = 136446978;
      v155 = OUTLINED_FUNCTION_18_35(v147, v148, v149, v150, v151, v152, v153, v154, v176, v181, v186, *&v191, *&v196, v201, *&rect, ObjectType);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, &v216);

      *(v146 + 4) = v157;
      *(v146 + 12) = 2048;
      *(v146 + 14) = MaxY;
      *(v146 + 22) = 2048;
      *(v146 + 24) = MinY;
      *(v146 + 32) = 2048;
      *(v146 + 34) = 0x4055000000000000;
      _os_log_impl(&dword_1BBC58000, v144, v145, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v146, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v147);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }

    if ([v4 effectiveUserInterfaceLayoutDirection] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB450;
      v159 = *&v4[v186];
      *(inited + 32) = v159;
      *(inited + 40) = v132;
      v1 = v176;
      *(inited + 48) = v201;
      *(inited + 56) = v176;
      *(inited + 64) = v181;
      *(inited + 72) = v92;
      v160 = MEMORY[0x1E69E7CC0];
      v216 = MEMORY[0x1E69E7CC0];
      v161 = v159;
      v162 = v132;
      v163 = v201;
      v164 = v176;
      v165 = v181;
      v166 = v92;
      for (i = 0; i != 6; ++i)
      {
        if (i > 5)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v168 = *(inited + 8 * i + 32);
        if (v168)
        {
          v169 = v168;
          MEMORY[0x1BFB20CC0]();
          v1 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v1 >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v160 = v216;
        }
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v170 = specialized Array.count.getter();
      for (j = 0; v170 != j; ++j)
      {
        if ((v160 & 0xC000000000000001) != 0)
        {
          v172 = MEMORY[0x1BFB22010](j, v160);
        }

        else
        {
          if (j >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v172 = *(v160 + 8 * j + 32);
        }

        v1 = v172;
        if (__OFADD__(j, 1))
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_24_8();
        v173 = CGRectGetWidth(v236);
        OUTLINED_FUNCTION_5_53();
        v175 = v173 - v174;
        OUTLINED_FUNCTION_5_53();
        MinY = v175 - CGRectGetMinX(v237);
        OUTLINED_FUNCTION_5_53();
        MaxY = CGRectGetMinY(v238);
        OUTLINED_FUNCTION_5_53();
        [v1 setFrame_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall OngoingTelephonyControlsView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  if (height <= 2.22507386e-308)
  {
    height = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_30_1();
    v77 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v8 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v8, v9, v10, v11, v12, v13, v14, v15, v69, ObjectType, v75, v76);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    type metadata accessor for CGSize(0);
    v16 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v16, v17, v18, v19, v20, v21, v22, v23, v70, v73, *&width, *&height);
    OUTLINED_FUNCTION_17_2();
    *(v2 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v24, v25, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_30_1();
    v77 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v28 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v28, v29, v30, v31, v32, v33, v34, v35, v69, ObjectType, v75, v76);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    type metadata accessor for CGSize(0);
    v36 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v36, v37, v38, v39, v40, v41, v42, v43, v71, v74, 0x405B800000000000, 0x4049000000000000);
    OUTLINED_FUNCTION_17_2();
    *(v2 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v44, v45, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  v46 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView))
  {
    v47 = 14.0;
  }

  else
  {
    v47 = 0.0;
  }

  if (v47 > 0.0)
  {
    v46 = v47 + 4.0;
  }

  v48 = width + -136.0 + -75.0 - v46;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel) sizeThatFits_];
  v50 = v49;
  v52 = v51;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel) sizeThatFits_];
  if (v50 > v53)
  {
    v53 = v50;
  }

  if (v54 <= v47)
  {
    v54 = v47;
  }

  v55 = v52 + v54 + 17.0 + 17.0;
  if (v53 <= 156.0)
  {
    v53 = 156.0;
  }

  v56 = v53 + 75.0 + 136.0;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v55, 84.0);
  v58 = v57;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v60))
  {
    v61 = OUTLINED_FUNCTION_23();
    v62 = OUTLINED_FUNCTION_23();
    v75 = v62;
    *v61 = 136446722;
    v63 = _typeName(_:qualified:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v75);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2048;
    *(v61 + 14) = v56;
    *(v61 + 22) = 2048;
    *(v61 + 24) = v58;
    _os_log_impl(&dword_1BBC58000, v59, v60, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v61, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  if (v56 >= width)
  {
    v66 = width;
  }

  else
  {
    v66 = v56;
  }

  if (v58 >= height)
  {
    v67 = height;
  }

  else
  {
    v67 = v58;
  }

  result.height = v67;
  result.width = v66;
  return result;
}

void OngoingTelephonyControlsView.updateAvatarView()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_23();
    v22 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[%{public}s] updateAvatarView", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView) removeFromSuperview];
  v14 = *(v1 + v13);
  *(v1 + v13) = 0;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v15 = *(v4 + 7);
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v17);
    v18 = *(v1 + v13);
    *(v1 + v13) = v15;
    v19 = v16;

    [v1 addSubview_];
    [v1 setNeedsLayout];
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v20);
  }
}

id OngoingTelephonyControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OngoingTelephonyControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingTelephonyControlsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance OngoingTelephonyControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ControlsView.recipe.modify in conformance OngoingTelephonyControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t type metadata accessor for OngoingTelephonyControlsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for OngoingTelephonyControlsView;
  if (!type metadata singleton initialization cache for OngoingTelephonyControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for OngoingTelephonyControlsView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
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

void ZoomButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  OUTLINED_FUNCTION_8_61();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v1 & 1;
  v13[2] = v3;
  v14 = v1 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Image, _OpacityEffect>, ModifiedContent<Image, _OpacityEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMR, MEMORY[0x1E6981880]);
  Button.init(action:label:)();
  v15 = 1;
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v11, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMR, v12);
  lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ZoomButton.body.getter(uint64_t a1, char a2)
{
  static Animation.default.getter();
  withBridgedAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in ZoomButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_1BBC58000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v13[0];
  }

  v10 = (*(*a1 + 280))(v13);
  *v11 = !*v11;
  v10(v13, 0);
}

double closure #2 in ZoomButton.body.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #2 in ZoomButton.body.getter(a1, a2 & 1, v13);
  v9 = v13[0];
  result = *&v13[1];
  v11 = v13[2];
  v12 = v13[3];
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = result;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  return result;
}

uint64_t closure #1 in closure #2 in ZoomButton.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Image.init(systemName:)();

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_1BBC58000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v11 = (*(v7 + 8))(v9, v6);
    v12 = v25;
  }

  v15 = (*(*v12 + 264))(v11);

  v16 = Image.init(systemName:)();

  if ((a2 & 1) == 0)
  {
    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v18, &dword_1BBC58000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17 = (*(v7 + 8))(v9, v6);
    a1 = v25;
  }

  if (v15)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = (*(*a1 + 264))(v17);

  *a3 = v10;
  if (v21)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  *(a3 + 8) = v20;
  *(a3 + 16) = v16;
  *(a3 + 24) = v23;
  return result;
}