uint64_t ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v44) = a4;
  LODWORD(v46) = a3;
  LODWORD(v45) = a2;
  v48 = a5;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v44 - v16;
  outlined init with copy of Participant.State();
  v17 = v6[5];
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 16))(v14, &v11[v17], v18);
  Participant.contactDetails.getter();
  v19 = v53;

  Participant.name(_:)();
  v21 = v20;
  v23 = v22;

  v24 = &v14[v12[5]];
  *v24 = v21;
  *(v24 + 1) = v23;
  if (v11[v6[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v26 = v25 ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v14[v12[6]] = v26 & 1;
  v14[v12[7]] = *&v11[v6[7]] == 0;
  v27 = Participant.isKickingAvailable.getter();
  v28 = 0;
  if (v27 && (v44 & 1) != 0)
  {
    v28 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v14[v12[8]] = v28 & 1;
  v14[v12[9]] = v45 & 1;
  v14[v12[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v53)
  {
    v29 = v54;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v53, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v29 = 0;
  }

  v14[v12[11]] = v29 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  if (*(a1 + v6[7]))
  {
    Participant.contactDetails.getter();
    v30 = v49;

    Participant.name(_:)();
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  if (v46)
  {

    v32 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  outlined init with copy of Participant.State();
  if (v34)
  {
    v36 = v32;
  }

  else
  {
    v36 = 0;
  }

  if (v34)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  Participant.contactDetails.getter();
  v46 = v49;
  v45 = v50;
  v44 = v51;
  v38 = v52;
  v39 = *&v8[v6[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
  v41 = v48 + *(v40 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v42 = v45;
  *v41 = v46;
  *(v41 + 16) = v42;
  *(v41 + 32) = v44;
  *(v41 + 48) = v38;
  *(v41 + 56) = v39;
  *(v41 + 64) = 1;
  *(v41 + 72) = v36;
  *(v41 + 80) = v34;
  *(v41 + 88) = 0;
  *(v41 + 96) = v37;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ParticipantViewModel.init(monogramVideoParticipant:videoProviderType:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:shouldRegisterVideoLayers:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  LODWORD(v58) = a4;
  LODWORD(v59) = a3;
  LODWORD(v60) = a2;
  v7 = a1;
  v62 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55[-v9];
  v11 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55[-v14];
  v16 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v55[-v20];
  Participant.videoProvider(for:)();
  if (*(&v67[1] + 1))
  {
    v56 = a5;
    outlined init with take of TapInteractionHandler(v67, v68);
    outlined init with copy of Participant.State();
    v21 = v11[5];
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(v18, &v15[v21], v22);
    Participant.contactDetails.getter();
    v23 = *&v67[0];

    Participant.name(_:)();
    v25 = v24;
    v27 = v26;

    v28 = &v18[v16[5]];
    *v28 = v25;
    v28[1] = v27;
    if (v15[v11[6]] == 1)
    {
      Participant.hasReducedQualityVideo.getter();
      v30 = v29 ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v18[v16[6]] = v30 & 1;
    v18[v16[7]] = *&v15[v11[7]] == 0;
    v44 = Participant.isKickingAvailable.getter();
    v45 = 0;
    if (v44 && (v59 & 1) != 0)
    {
      v45 = Participant.canShowKickButtonOnVideoTile.getter();
    }

    v18[v16[8]] = v45 & 1;
    v18[v16[9]] = v60 & 1;
    v18[v16[10]] = 0;
    Participant.videoInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_4();
    if (v69[0])
    {
      v46 = v70;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    }

    else
    {
      v46 = 0;
    }

    v18[v16[11]] = v46 & 1;
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    outlined init with copy of IDSLookupManager(v68, v67);
    Participant.videoTransform.getter();
    memcpy(&v67[2] + 8, __src, 0x80uLL);
    WORD4(v67[10]) = v58 & 1;
    WORD5(v67[10]) = v56 & 1;
    v47 = v61;
    outlined init with copy of Participant.State();
    Participant.contactDetails.getter();
    _s15ConversationKit11ParticipantVWOhTm_4();
    __swift_destroy_boxed_opaque_existential_1(v68);
    v59 = v64;
    v60 = v63;
    v58 = v65;
    v48 = v66;
    v49 = *&v47[v11[8]];

    _s15ConversationKit11ParticipantVWOhTm_4();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
    v51 = *(v50 + 48);
    v52 = v62;
    v53 = v62 + *(v50 + 64);
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy((v52 + v51), v67, 0xACuLL);
    v54 = v59;
    *v53 = v60;
    *(v53 + 16) = v54;
    *(v53 + 32) = v58;
    *(v53 + 48) = v48;
    *(v53 + 56) = v49;
    *(v53 + 64) = 0;
    *(v53 + 72) = 0u;
    *(v53 + 88) = 0u;
    *(v53 + 104) = 4;
    type metadata accessor for ParticipantViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    *&v58 = static OS_os_log.conversationKit;
    v31 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC4BAA20;
    LOBYTE(v67[0]) = v7;
    v33 = String.init<A>(reflecting:)();
    v35 = v34;
    v36 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v37 = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 64) = v37;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    outlined init with copy of Participant.State();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    specialized >> prefix<A>(_:)();
    v39 = v38;
    v41 = v40;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v32 + 96) = v36;
    *(v32 + 104) = v37;
    *(v32 + 72) = v39;
    *(v32 + 80) = v41;
    os_log(_:dso:log:type:_:)("No video provider of type %@ for participant %@. Falling back to displaying monogram", 84, 2, &dword_1BBC58000, v58, v31, v32);

    v42 = v61;
    outlined init with copy of Participant.State();
    ParticipantViewModel.init(audioOnlyParticipant:isMostActive:isPipped:isLocalMemberAuthorizedToChangeGroupMembership:)(v42, v60 & 1, 0, v59 & 1, v62);
    return _s15ConversationKit11ParticipantVWOhTm_4();
  }
}

uint64_t ParticipantViewModel.init(invitedWebParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v44) = a2;
  LODWORD(v45) = a1;
  v47 = a3;
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v43 - v13;
  outlined init with copy of Participant.State();
  v14 = v3[5];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, &v8[v14], v15);
  Participant.contactDetails.getter();
  v16 = v52;

  Participant.name(_:)();
  v18 = v17;
  v20 = v19;

  v21 = &v11[v9[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  if (v8[v3[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v11[v9[6]] = v23 & 1;
  v11[v9[7]] = *&v8[v3[7]] == 0;
  v24 = Participant.isKickingAvailable.getter();
  v25 = 0;
  if (v24 && (v44 & 1) != 0)
  {
    v25 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v11[v9[8]] = v25 & 1;
  v11[v9[9]] = v45 & 1;
  v11[v9[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v52)
  {
    v26 = v53;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v52, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v26 = 0;
  }

  v11[v9[11]] = v26 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  Participant.contactDetails.getter();
  v27 = v48;

  Participant.name(_:)();
  v29 = v28;
  v31 = v30;

  outlined init with copy of Participant.State();
  v32 = [objc_opt_self() conversationKit];
  v54._object = 0xE000000000000000;
  v33.value._countAndFlagsBits = 0x61737265766E6F43;
  v33.value._object = 0xEF74694B6E6F6974;
  v34._object = 0x80000001BC4F89E0;
  v34._countAndFlagsBits = 0xD00000000000002FLL;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, v54);

  Participant.contactDetails.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v45 = v48;
  v44 = v49;
  v43 = v50;
  v37 = v51;
  v38 = *&v5[v3[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
  v40 = v47 + *(v39 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v41 = v44;
  *v40 = v45;
  *(v40 + 16) = v41;
  *(v40 + 32) = v43;
  *(v40 + 48) = v37;
  *(v40 + 56) = v38;
  *(v40 + 64) = 0;
  *(v40 + 72) = v29;
  *(v40 + 80) = v31;
  *(v40 + 88) = v36;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ParticipantViewModel.init(ringingParticipant:isMostActive:isLocalMemberAuthorizedToChangeGroupMembership:)@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v43) = a2;
  LODWORD(v44) = a1;
  v46 = a3;
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v13;
  outlined init with copy of Participant.State();
  v14 = v3[5];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, &v8[v14], v15);
  Participant.contactDetails.getter();
  v16 = v54;

  Participant.name(_:)();
  v18 = v17;
  v20 = v19;

  v21 = &v11[v9[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  if (v8[v3[6]] == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v11[v9[6]] = v23 & 1;
  v11[v9[7]] = *&v8[v3[7]] == 0;
  v24 = Participant.isKickingAvailable.getter();
  v25 = 0;
  if (v24 && (v43 & 1) != 0)
  {
    v25 = Participant.canShowKickButtonOnVideoTile.getter();
  }

  v11[v9[8]] = v25 & 1;
  v11[v9[9]] = v44 & 1;
  v11[v9[10]] = 0;
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  if (v54)
  {
    v26 = v55;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v54, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v26 = 0;
  }

  v11[v9[11]] = v26 & 1;
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  outlined init with copy of Participant.State();
  Participant.contactDetails.getter();
  v27 = v51;
  v28 = v52;
  v44 = v53;

  v29 = [objc_opt_self() conversationKit];
  v56._object = 0xE000000000000000;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._object = 0x80000001BC4F8BD0;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v56);

  Participant.contactDetails.getter();
  _s15ConversationKit11ParticipantVWOhTm_4();
  v43 = v47;
  v42 = v48;
  v41 = v49;
  v34 = v50;
  v35 = *&v5[v3[8]];

  _s15ConversationKit11ParticipantVWOhTm_4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
  v37 = v46 + *(v36 + 48);
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  v38 = v42;
  *v37 = v43;
  *(v37 + 16) = v38;
  *(v37 + 32) = v41;
  *(v37 + 48) = v34;
  *(v37 + 56) = v35;
  *(v37 + 64) = 0;
  v39 = v44;
  *(v37 + 72) = v28;
  *(v37 + 80) = v39;
  *(v37 + 88) = v33;
  type metadata accessor for ParticipantViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

void Participant.videoTransform.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  Participant.videoInfo.getter();
  v52 = v37;
  v53 = v38;
  v50 = v40;
  v51[0] = *v41;
  *(v51 + 10) = *&v41[10];
  Participant.copresenceInfo.getter(v42);
  if (*(&v42[0] + 1))
  {
    v4 = v43;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    v5 = (v4 & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 + 28);
  if (*(v1 + v7))
  {
    if (v37)
    {
      v8 = *(&v38 + 1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      static Participant.rotationFor(_:cameraPosition:)(v8);
      CATransform3DMakeRotation(&__dst, v9, 0.0, 0.0, 1.0);
      goto LABEL_20;
    }

    v13 = MEMORY[0x1E69792E8];
LABEL_15:
    memcpy(&__dst, v13, sizeof(__dst));
    goto LABEL_20;
  }

  v10 = v6;
  if (v37)
  {
    v11 = *(&v38 + 1);
    v45 = v52;
    v46 = v53;
    v48 = v50;
    *v49 = v51[0];
    *&v49[10] = *(v51 + 10);
    v47 = v39;
    v12 = Participant.VideoInfo.cameraType.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v12 = 2;
    v11 = 1;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v16 = static Defaults.shared;

  _s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5(v11, v12, v15, v16, __src);

  if (v12 == 1)
  {
    v13 = __src;
    goto LABEL_15;
  }

  if (*(v1 + v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v1 + *(v10 + 40));
  }

  static Participant.compensatedVideoRotation(_:videoTransform:effectsEnabled:)(v11, __src, v17, &__dst);
LABEL_20:
  if (*(v1 + v7) && !v5)
  {
    v18 = Participant.deviceOrientation.getter();
    if ((v19 & 1) != 0 || (v18 | 2) != 3)
    {
      if (one-time initialization token for participant != -1)
      {
        OUTLINED_FUNCTION_42_11(&one-time initialization token for participant);
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.participant);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        OUTLINED_FUNCTION_75(&dword_1BBC58000, v32, v33, "Update with landscape mirrored video");
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      memcpy(&v34, &__dst, sizeof(v34));
      v26 = -1.0;
      v27 = 1.0;
    }

    else
    {
      if (one-time initialization token for participant != -1)
      {
        OUTLINED_FUNCTION_42_11(&one-time initialization token for participant);
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.participant);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        OUTLINED_FUNCTION_75(&dword_1BBC58000, v24, v25, "Update with portrait mirrored video");
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }

      memcpy(&v34, &__dst, sizeof(v34));
      v26 = 1.0;
      v27 = -1.0;
    }

    CATransform3DScale(&v35, &v34, v26, v27, 1.0);
  }

  else
  {
    memcpy(&v35, &__dst, sizeof(v35));
  }

  memcpy(v3, &v35, 0x80uLL);
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.participantDetails.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v8 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
      v9 = *v8;
      v10 = *(v8 + 72);
      v11 = *(v8 + 80);

      outlined consume of (title: String, subtitle: String?)?(v10, v11);
      OUTLINED_FUNCTION_3_56();
      OUTLINED_FUNCTION_38_2();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      goto LABEL_7;
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
    v6 = *(v5 + 48);
    v7 = *(v5 + 64);
    OUTLINED_FUNCTION_3_56();
    OUTLINED_FUNCTION_38_2();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + v7);
  }

  else
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
    OUTLINED_FUNCTION_3_56();
    OUTLINED_FUNCTION_38_2();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
  }

  outlined destroy of ParticipantVideoView.ViewModel(v3 + v6);
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.compatibleWithRoster.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
      v16 = v1;
      v12 = (v7 + *(v11 + 48));
      memcpy(v18, v12, sizeof(v18));
      v13 = v12[9];
      v14 = v12[10];
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      outlined consume of (title: String, subtitle: String?)?(v13, v14);
      v15 = *(v11 + 48);
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      memcpy(v19, v18, 0x48uLL);
      memset(&v19[72], 0, 32);
      memcpy((v16 + v15), v19, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      memcpy(v20, v18, sizeof(v20));
      v21 = 0u;
      v22 = 0u;
      outlined init with copy of ParticipantMonogramView.ViewModel(v19, &v17);
      outlined destroy of ParticipantMonogramView.ViewModel(v20);
      goto LABEL_7;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
    v10 = *(v9 + 48);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v7 + *(v9 + 64));
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
  }

  outlined destroy of ParticipantVideoView.ViewModel(v7 + v10);
  OUTLINED_FUNCTION_2_61();
  _s15ConversationKit11ParticipantVWOhTm_4();
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

void static ParticipantViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v65[0] = v2 - v3;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v65[1] = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO_ACtMd, &_s15ConversationKit20ParticipantViewModelO_ACtMR);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v65 + *(v20 + 56) - v19;
  v22 = v65 - v19;
  outlined init with copy of Participant.State();
  outlined init with copy of Participant.State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
    if (OUTLINED_FUNCTION_77_4())
    {
      outlined destroy of ParticipantVideoView.ViewModel(&v16[v31]);
      OUTLINED_FUNCTION_2_61();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v69, &v16[v31], 0xACuLL);
    memcpy(v67, &v21[v31], 0xACuLL);
    v36 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
    OUTLINED_FUNCTION_2_61();
    _s15ConversationKit11ParticipantVWOhTm_4();
    if ((v36 & 1) == 0)
    {
      outlined destroy of ParticipantVideoView.ViewModel(v67);
      outlined destroy of ParticipantVideoView.ViewModel(v69);
      OUTLINED_FUNCTION_2_61();
LABEL_23:
      _s15ConversationKit11ParticipantVWOhTm_4();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_76_1();
    outlined init with copy of Participant.ScreenInfo?();
    v37 = v73[3];
    if (v73[3])
    {
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      v38 = OUTLINED_FUNCTION_28_18();
      v39(v38);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v73);
      if ((v36 & 1) == 0)
      {
        OUTLINED_FUNCTION_71_2();
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v37);
        goto LABEL_39;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    OUTLINED_FUNCTION_71_2();
    Hasher._combine(_:)(0);
LABEL_39:
    OUTLINED_FUNCTION_15_18(v73, v69);
    OUTLINED_FUNCTION_69_2();
    CATransform3D.hash(into:)();
    ParticipantVideoView.ViewModel.contentsRect.getter();
    CGRect.hash(into:)(v52, v53, v54, v55);
    Hasher._finalize()();
    Hasher.init(_seed:)();
    outlined init with copy of Participant.ScreenInfo?();
    v56 = v71;
    if (v71)
    {
      v57 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v58 = (*(v57 + 8))(v56, v57);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(v70);
      if ((v60 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v58);
LABEL_44:
        OUTLINED_FUNCTION_15_18(v70, v67);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v61, v62, v63, v64);
        Hasher._finalize()();
        outlined destroy of ParticipantVideoView.ViewModel(v67);
        outlined destroy of ParticipantVideoView.ViewModel(v69);
        OUTLINED_FUNCTION_2_61();
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_24;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    if (OUTLINED_FUNCTION_77_4() == 1)
    {
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      memcpy(v69, &v13[v25], 0xACuLL);
      memcpy(v68, &v13[v26], 0x69uLL);
      memcpy(v67, &v21[v25], 0xACuLL);
      memcpy(v66, &v21[v26], 0x69uLL);
      v27 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (v27)
      {
        OUTLINED_FUNCTION_76_1();
        outlined init with copy of Participant.ScreenInfo?();
        v28 = v73[3];
        if (v73[3])
        {
          __swift_project_boxed_opaque_existential_1(v73, v73[3]);
          v29 = OUTLINED_FUNCTION_28_18();
          v30(v29);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v73);
          if ((v27 & 1) == 0)
          {
            OUTLINED_FUNCTION_71_2();
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v28);
            goto LABEL_29;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        }

        OUTLINED_FUNCTION_71_2();
        Hasher._combine(_:)(0);
LABEL_29:
        OUTLINED_FUNCTION_15_18(v73, v69);
        OUTLINED_FUNCTION_69_2();
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v40, v41, v42, v43);
        v44 = Hasher._finalize()();
        Hasher.init(_seed:)();
        outlined init with copy of Participant.ScreenInfo?();
        v45 = v71;
        if (v71)
        {
          __swift_project_boxed_opaque_existential_1(v70, v71);
          v46 = OUTLINED_FUNCTION_28_18();
          v47(v46);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v70);
          if ((v70 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v45);
LABEL_34:
            OUTLINED_FUNCTION_15_18(v70, v67);
            CATransform3D.hash(into:)();
            ParticipantVideoView.ViewModel.contentsRect.getter();
            CGRect.hash(into:)(v48, v49, v50, v51);
            if (v44 != Hasher._finalize()())
            {
              outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
              outlined destroy of ParticipantVideoView.ViewModel(v67);
              outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
              outlined destroy of ParticipantVideoView.ViewModel(v69);
              OUTLINED_FUNCTION_2_61();
              _s15ConversationKit11ParticipantVWOhTm_4();
              OUTLINED_FUNCTION_12_27();
              goto LABEL_25;
            }

            static ParticipantVideoOverlayView.ViewModel.== infix(_:_:)(v68, v66);
            outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
            outlined destroy of ParticipantVideoView.ViewModel(v67);
            outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
            outlined destroy of ParticipantVideoView.ViewModel(v69);
            OUTLINED_FUNCTION_2_61();
            _s15ConversationKit11ParticipantVWOhTm_4();
            goto LABEL_24;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        }

        Hasher._combine(_:)(0);
        goto LABEL_34;
      }

      outlined destroy of ParticipantVideoOverlayView.ViewModel(v66);
      outlined destroy of ParticipantVideoView.ViewModel(v67);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v68);
      outlined destroy of ParticipantVideoView.ViewModel(v69);
      OUTLINED_FUNCTION_2_61();
      goto LABEL_23;
    }

    outlined destroy of ParticipantVideoOverlayView.ViewModel(&v13[v26]);
    outlined destroy of ParticipantVideoView.ViewModel(&v13[v25]);
    OUTLINED_FUNCTION_2_61();
  }

  else
  {
    OUTLINED_FUNCTION_5_38();
    outlined init with copy of Participant.State();
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
    memcpy(v69, (v10 + v32), 0x68uLL);
    if (OUTLINED_FUNCTION_77_4() == 2)
    {
      memcpy(v67, &v21[v32], 0x68uLL);
      OUTLINED_FUNCTION_3_56();
      outlined init with take of ParticipantViewModel.ParticipantDetails();
      v33 = static ParticipantViewModel.ParticipantDetails.== infix(_:_:)();
      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      if (v33)
      {
        memcpy(v73, v69, 0x68uLL);
        OUTLINED_FUNCTION_76_1();
        v34 = OUTLINED_FUNCTION_69_2();
        ParticipantMonogramView.ViewModel.hash(into:)(v34);
        Hasher._finalize()();
        memcpy(v73, v67, 0x68uLL);
        OUTLINED_FUNCTION_76_1();
        v35 = OUTLINED_FUNCTION_69_2();
        ParticipantMonogramView.ViewModel.hash(into:)(v35);
        Hasher._finalize()();
        _s15ConversationKit11ParticipantVWOhTm_4();
        outlined destroy of ParticipantMonogramView.ViewModel(v67);
        outlined destroy of ParticipantMonogramView.ViewModel(v69);
        OUTLINED_FUNCTION_12_27();
LABEL_25:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_2_61();
      _s15ConversationKit11ParticipantVWOhTm_4();
      outlined destroy of ParticipantMonogramView.ViewModel(v67);
      outlined destroy of ParticipantMonogramView.ViewModel(v69);
LABEL_24:
      OUTLINED_FUNCTION_12_27();
      goto LABEL_25;
    }

    outlined destroy of ParticipantMonogramView.ViewModel(v69);
    OUTLINED_FUNCTION_2_61();
  }

LABEL_15:
  _s15ConversationKit11ParticipantVWOhTm_4();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit20ParticipantViewModelO_ACtMd, &_s15ConversationKit20ParticipantViewModelO_ACtMR);
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

uint64_t static ParticipantViewModel.ParticipantDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0), v3 = *(v2 + 20), v4 = *(v1 + v3), v5 = *(v1 + v3 + 8), v6 = (v0 + v3), v4 == *v6) ? (v7 = v5 == v6[1]) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7) && (OUTLINED_FUNCTION_27_2(), v7)))
  {
    v8 = *(v1 + *(v2 + 44)) ^ *(v0 + *(v2 + 44)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void ParticipantViewModel.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_38();
  outlined init with copy of Participant.State();
  v10 = OUTLINED_FUNCTION_77_4();
  if (!v10)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR) + 48);
    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v33, (v9 + v19), 0xACuLL);
    MEMORY[0x1BFB22640](0);
    ParticipantViewModel.ParticipantDetails.hash(into:)();
    outlined init with copy of Participant.ScreenInfo?();
    v20 = v34[3];
    if (v34[3])
    {
      v21 = v34[4];
      v22 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      (*(v21 + 8))(v20, v21);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v34);
      if ((v22 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v20);
LABEL_15:
        OUTLINED_FUNCTION_15_18(v34, v33);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v28, v29, v30, v31);
        outlined destroy of ParticipantVideoView.ViewModel(v33);
        OUTLINED_FUNCTION_2_61();
        goto LABEL_16;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
    goto LABEL_15;
  }

  if (v10 == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
    v12 = *(v11 + 48);
    v13 = *(v11 + 64);
    OUTLINED_FUNCTION_3_56();
    outlined init with take of ParticipantViewModel.ParticipantDetails();
    memcpy(v33, (v9 + v12), 0xACuLL);
    memcpy(v32, (v9 + v13), 0x69uLL);
    MEMORY[0x1BFB22640](1);
    ParticipantViewModel.ParticipantDetails.hash(into:)();
    outlined init with copy of Participant.ScreenInfo?();
    v14 = v34[3];
    if (v34[3])
    {
      v15 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v34);
      if ((v18 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v16);
LABEL_12:
        OUTLINED_FUNCTION_15_18(v34, v33);
        CATransform3D.hash(into:)();
        ParticipantVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v24, v25, v26, v27);
        ParticipantVideoOverlayView.ViewModel.hash(into:)(v1);
        outlined destroy of ParticipantVideoOverlayView.ViewModel(v32);
        outlined destroy of ParticipantVideoView.ViewModel(v33);
        OUTLINED_FUNCTION_2_61();
LABEL_16:
        _s15ConversationKit11ParticipantVWOhTm_4();
        goto LABEL_17;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    }

    Hasher._combine(_:)(0);
    goto LABEL_12;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR);
  memcpy(v33, (v9 + *(v23 + 48)), 0x68uLL);
  OUTLINED_FUNCTION_3_56();
  outlined init with take of ParticipantViewModel.ParticipantDetails();
  MEMORY[0x1BFB22640](2);
  ParticipantViewModel.ParticipantDetails.hash(into:)();
  memcpy(v34, v33, 0x68uLL);
  ParticipantMonogramView.ViewModel.hash(into:)(v1);
  OUTLINED_FUNCTION_2_61();
  _s15ConversationKit11ParticipantVWOhTm_4();
  outlined destroy of ParticipantMonogramView.ViewModel(v33);
LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantViewModel.ParticipantDetails.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[6]));
  Hasher._combine(_:)(*(v0 + v1[7]));
  Hasher._combine(_:)(*(v0 + v1[8]));
  Hasher._combine(_:)(*(v0 + v1[9]));
  Hasher._combine(_:)(*(v0 + v1[10]));
  Hasher._combine(_:)(*(v0 + v1[11]));
}

Swift::Int ParticipantViewModel.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantViewModel(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a2;
  ObjectType = swift_getObjectType();
  specialized static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)(a1, v8, a3, ObjectType, a5, v13);
  return memcpy(a6, v13, 0x80uLL);
}

void *static Participant.compensatedVideoRotation(_:videoTransform:effectsEnabled:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (*(*static Defaults.shared + 656))();
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v8 & 1) == 0)
  {
    if (v10 == 2 && a1 == 1)
    {
      CGAffineTransformMakeRotation(&__dst, 1.57079633);
      *&v15.m11 = *&__dst.m11;
      *&v15.m13 = *&__dst.m13;
      *&v15.m21 = *&__dst.m21;
      CATransform3DMakeAffineTransform(&__dst, &v15);
      return memcpy(a4, &__dst, 0x80uLL);
    }

LABEL_13:
    memcpy(&__dst, a2, sizeof(__dst));
    return memcpy(a4, &__dst, 0x80uLL);
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  if ((a1 | 2) == 2)
  {
    v11 = -1.0;
    if (a3)
    {
      v12 = -1.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = 4.71238898;
  }

  else
  {
    v11 = 1.0;
    if (a3)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = -1.0;
    }

    v13 = 1.57079633;
  }

  memcpy(&__dst, a2, sizeof(__dst));
  CATransform3DRotate(&v15, &__dst, v13, 0.0, 0.0, 1.0);
  CATransform3DScale(&__dst, &v15, v11, v12, 1.0);
  return memcpy(a4, &__dst, 0x80uLL);
}

uint64_t static Participant.rotationFor(_:cameraPosition:)(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return result;
    default:
      _StringGuts.grow(_:)(47);

      v1 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v1);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

void static Participant.affineTransformForRemote(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = xmmword_1BC4BD490;
  v7 = xmmword_1BC4C1E40;
  tx = 0.0;
  if (v5)
  {
    ty = 0.0;
  }

  else
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      ty = 0.0;
      v7 = xmmword_1BC4C1E40;
      v6 = xmmword_1BC4BD490;
      switch(a1)
      {
        case 0:
          v10 = 1.57079633;
          goto LABEL_9;
        case 1:
          goto LABEL_10;
        case 2:
          v10 = -1.57079633;
          goto LABEL_9;
        case 3:
          v10 = 3.14159265;
LABEL_9:
          CGAffineTransformMakeRotation(&v12, v10);
          v7 = *&v12.a;
          v6 = *&v12.c;
          tx = v12.tx;
          ty = v12.ty;
          goto LABEL_10;
        default:
          _StringGuts.grow(_:)(64);
          MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC4F8B10);
          v11 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1BFB20B10](v11);

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
      }
    }

    ty = 0.0;
    v7 = xmmword_1BC4C1E40;
    v6 = xmmword_1BC4BD490;
  }

LABEL_10:
  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 32) = tx;
  *(a2 + 40) = ty;
}

void *static Participant.transformForRemote(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  static Participant.affineTransformForRemote(_:)(a1, &v5);
  v4 = v5;
  CATransform3DMakeAffineTransform(&__src, &v4);
  return memcpy(a2, &__src, 0x80uLL);
}

unint64_t static Participant.screenRotationFor(_:)(unint64_t result)
{
  if (result >= 4)
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x1BFB20B10](0xD000000000000035, 0x80000001BC4F8BF0);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *_s15ConversationKit11ParticipantV017transformForLocalC017deviceOrientation10cameraType12currentIdiom8defaultsSo13CATransform3DVSo09CNKDeviceH0V_AC9VideoInfoV06CameraJ0OSo015UIUserInterfaceL0VAA16DefaultsProvider_ptFZTf4nnnen_nAA0U0C_Tt3g5@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      m.a = 1.0;
      m.b = 0.0;
      m.c = 0.0;
      m.d = 1.0;
      m.tx = 0.0;
      m.ty = 0.0;
LABEL_17:
      CATransform3DMakeAffineTransform(&__src, &m);
      return memcpy(a5, &__src, 0x80uLL);
    }
  }

  if (((*(*a4 + 920))() & 1) != 0 && a3 == 1 && a2 == 1)
  {
    if ((*(*a4 + 656))())
    {
LABEL_13:
      v14 = 3.14159265;
    }

    else
    {
LABEL_14:
      v14 = -1.57079633;
    }

LABEL_15:
    CGAffineTransformMakeRotation(&__src, v14);
    v12 = *&__src.m11;
    v11 = *&__src.m13;
    v13 = *&__src.m21;
LABEL_16:
    *&m.a = v12;
    *&m.c = v11;
    *&m.tx = v13;
    goto LABEL_17;
  }

  v11 = xmmword_1BC4BD490;
  v12 = xmmword_1BC4C1E40;
  v13 = 0uLL;
  switch(a1)
  {
    case 0:
      goto LABEL_14;
    case 1:
      goto LABEL_16;
    case 2:
      v14 = 1.57079633;
      goto LABEL_15;
    case 3:
      goto LABEL_13;
    default:
      _StringGuts.grow(_:)(70);
      MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC4F8B50);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v16);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t outlined init with take of ParticipantViewModel.ParticipantDetails()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_20_3();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

double outlined consume of (title: String, subtitle: String?)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined init with copy of Participant.ScreenInfo?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

void *specialized static Participant.transformForLocalParticipant(deviceOrientation:cameraType:currentIdiom:defaults:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  if (a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    swift_beginAccess();
    if ((static AmbientState.isPresented & 1) == 0)
    {
      m.a = 1.0;
      m.b = 0.0;
      m.c = 0.0;
      m.d = 1.0;
      m.tx = 0.0;
      m.ty = 0.0;
LABEL_17:
      CATransform3DMakeAffineTransform(&__src, &m);
      return memcpy(a6, &__src, 0x80uLL);
    }
  }

  if (((*(a5 + 624))(a4, a5) & 1) != 0 && a3 == 1 && a2 == 1)
  {
    if ((*(a5 + 648))(a4, a5))
    {
LABEL_13:
      v16 = 3.14159265;
    }

    else
    {
LABEL_14:
      v16 = -1.57079633;
    }

LABEL_15:
    CGAffineTransformMakeRotation(&__src, v16);
    v14 = *&__src.m11;
    v13 = *&__src.m13;
    v15 = *&__src.m21;
LABEL_16:
    *&m.a = v14;
    *&m.c = v13;
    *&m.tx = v15;
    goto LABEL_17;
  }

  v13 = xmmword_1BC4BD490;
  v14 = xmmword_1BC4C1E40;
  v15 = 0uLL;
  switch(a1)
  {
    case 0:
      goto LABEL_14;
    case 1:
      goto LABEL_16;
    case 2:
      v16 = 1.57079633;
      goto LABEL_15;
    case 3:
      goto LABEL_13;
    default:
      _StringGuts.grow(_:)(70);
      MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC4F8B50);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v18);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for ParticipantViewModel(uint64_t a1)
{
  type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(319, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel));
  if (v1 <= 0x3F)
  {
    type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(319, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantMonogramView.ViewModel));
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel))
  {
    type metadata accessor for ParticipantViewModel.ParticipantDetails(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel));
    }
  }
}

void type metadata accessor for (ParticipantViewModel.ParticipantDetails, ParticipantVideoView.ViewModel)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for ParticipantViewModel.ParticipantDetails(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata completion function for ParticipantViewModel.ParticipantDetails(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id key path getter for AudioPowerSpectrumView.viewModel : AudioPowerSpectrumView@<X0>(void *a1@<X8>)
{
  result = AudioPowerSpectrumView.viewModel.getter();
  *a1 = result;
  return result;
}

void AudioPowerSpectrumView.$viewModel.getter()
{
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();

  JUMPOUT(0x1BFB1E3A0);
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel)
  {
    type metadata accessor for AudioPowerSpectrumViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel);
  }

  return result;
}

uint64_t default argument 3 of AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BB980;
  *(v0 + 32) = static Color.orange.getter();
  *(v0 + 40) = static Color.yellow.getter();
  *(v0 + 48) = static Color.green.getter();
  return v0;
}

void AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)(void *a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 9);
  MEMORY[0x1BFB201F0](a5);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v13 = a1;
  v14 = ObservedObject.init(wrappedValue:)();
  v16 = v15;
  if (a3)
  {
    v17 = 3.0;
  }

  else
  {
    v17 = a2;
  }

  if (v12)
  {
    v18 = 0x3FF0000000000000;
  }

  else
  {
    v18 = v10;
  }

  v19 = AnyShapeStyle.init<A>(_:)();

  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v19;
  *(a6 + 24) = v17;
  *(a6 + 32) = v18;
  *(a6 + 40) = v11 & ~v12 & 1;
}

uint64_t AudioPowerSpectrumView.init<A>(viewModel:barWidth:spacingStyle:strokeShapeStyle:)@<X0>(void *a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30 = a4;
  v31 = a6;
  v29 = a3;
  v28 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 9);
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v17 = a1;
  v27 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  if (v29)
  {
    v20 = 3.0;
  }

  else
  {
    v20 = v28;
  }

  if (v16)
  {
    v21 = 0x3FF0000000000000;
  }

  else
  {
    v21 = v14;
  }

  v22 = v15 & ~v16;
  v23 = v30;
  (*(v10 + 16))(v12, v30, a5);
  v24 = AnyShapeStyle.init<A>(_:)();

  result = (*(v10 + 8))(v23, a5);
  *a7 = v27;
  *(a7 + 8) = v19;
  *(a7 + 16) = v24;
  *(a7 + 24) = v20;
  *(a7 + 32) = v21;
  *(a7 + 40) = v22 & 1;
  return result;
}

uint64_t AudioPowerSpectrumView.body.getter@<X0>(id (**a1)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  *(v4 + 41) = *(v1 + 25);
  *a1 = partial apply for closure #1 in AudioPowerSpectrumView.body.getter;
  a1[1] = v4;
  return outlined init with copy of AudioPowerSpectrumView(&v8, &v7);
}

id closure #1 in AudioPowerSpectrumView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  GeometryProxy.size.getter();
  v5 = GeometryProxy.size.getter();
  if (*(a2 + 40))
  {
    (*((*MEMORY[0x1E69E7D40] & **(a2 + 8)) + 0x100))(v5);
  }

  MEMORY[0x1EEE9AC00](v5);
  Path.init(_:)();
  v6 = *(a2 + 16);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = static Animation.easeOut.getter();
  v12 = *(a2 + 8);
  memcpy(a3, __src, 0x50uLL);
  *(a3 + 80) = v6;
  *(a3 + 88) = 256;
  *(a3 + 96) = v7;
  *(a3 + 104) = v9;
  *(a3 + 112) = v10;
  *(a3 + 120) = v12;

  return v12;
}

void closure #1 in closure #1 in AudioPowerSpectrumView.body.getter(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x100);
  v10 = *(v9() + 16);

  v36 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x130);
    v14 = *(a5 + 24);
    while (1)
    {
      v15 = v12 + 1;
      v16 = *((v9)(v11) + 16);

      v18 = v16 - (v12 + 1);
      v19 = v13(v17);
      if ((v18 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v18 >= *(v19 + 16))
      {
        goto LABEL_23;
      }

      v20 = *(v19 + 4 * v18 + 32);

      v21 = v20 * a1;
      if (v21 <= v14)
      {
        v21 = v14;
      }

      if (v21 <= a1)
      {
        v22 = v21;
      }

      else
      {
        v22 = a1;
      }

      Path.move(to:)(__PAIR128__((a1 - v22) * 0.5, a2 - v12 * a3));
      Path.addLine(to:)(__PAIR128__(v22 + (a1 - v22) * 0.5, a2 - v12++ * a3));
      if (v15 == v36)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_11:
    v37 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x130);
    v23 = *(v37(v11) + 16);

    if (!v23)
    {
      return;
    }

    v25 = 0;
    v26 = *(a5 + 24);
    while (1)
    {
      v27 = v25 + 1;
      v28 = *((v9)(v24) + 16);

      v30 = v28 - (v25 + 1);
      v31 = v37(v29);
      if ((v30 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v30 >= *(v31 + 16))
      {
        goto LABEL_25;
      }

      v32 = *(v31 + 4 * v30 + 32);

      v33 = v32 * a1;
      if (v33 <= v26)
      {
        v33 = v26;
      }

      if (v33 <= a1)
      {
        v34 = v33;
      }

      else
      {
        v34 = a1;
      }

      Path.move(to:)(__PAIR128__((a1 - v34) * 0.5, v25 * a3 + a2));
      Path.addLine(to:)(__PAIR128__(v34 + (a1 - v34) * 0.5, v25++ * a3 + a2));
      if (v27 == v23)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

char *one-time initialization function for viewModel()
{
  v0 = objc_allocWithZone(type metadata accessor for MockAudioPowerSpectrumViewModel(0));
  result = MockAudioPowerSpectrumViewModel.init()();
  static AudioPowerSpectrumView_Preview.viewModel = result;
  return result;
}

__n128 static AudioPowerSpectrumView_Preview.previews.getter@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v2 = static AudioPowerSpectrumView_Preview.viewModel;
  v3 = default argument 3 of AudioPowerSpectrumView.init(viewModel:barWidth:spacingStyle:barGradientColors:)();
  MEMORY[0x1BFB201F0](v3);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  lazy protocol witness table accessor for type AudioPowerSpectrumViewModel and conformance AudioPowerSpectrumViewModel();
  v4 = v2;
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v8 = AnyShapeStyle.init<A>(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v9 = static Color.black.getter();
  v10 = static Edge.Set.all.getter();
  *(a1 + 41) = *v12;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0x4008000000000000;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 57) = *&v12[16];
  result = *&v12[32];
  *(a1 + 73) = *&v12[32];
  *(a1 + 88) = *(&v15 + 1);
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  return result;
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance AudioPowerSpectrumView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance AudioPowerSpectrumView_Preview(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

char *MockAudioPowerSpectrumViewModel.init()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer) = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_opt_self() defaultCenter];
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
  v4 = v3;
  type metadata accessor for NSTimer();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v4;
  v7 = @nonobjc NSTimer.__allocating_init(timeInterval:repeats:block:)(1, partial apply for closure #1 in MockAudioPowerSpectrumViewModel.init(), v5, 0.25);
  v8 = OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer;
  v9 = *&v6[OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer];
  *&v6[OBJC_IVAR____TtC15ConversationKit31MockAudioPowerSpectrumViewModel_timer] = v7;

  result = [objc_opt_self() mainRunLoop];
  v11 = *&v6[v8];
  if (v11)
  {
    v12 = result;
    [result addTimer:v11 forMode:*MEMORY[0x1E695DA28]];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSTimer()
{
  result = lazy cache variable for type metadata for NSTimer;
  if (!lazy cache variable for type metadata for NSTimer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimer);
  }

  return result;
}

void closure #1 in MockAudioPowerSpectrumViewModel.init()(uint64_t a1, uint64_t a2)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0);
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))(v27);
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = *(*v9 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v10);
    v11 = *v9;
    *(v11 + 16) = v10 + 1;
    *(v11 + 4 * v10 + 32) = v3;
    v7(v27, 0);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = (*((*v5 & *v12) + 0x110))(v27);
    specialized RangeReplaceableCollection.removeFirst()();
    v14(v27, 0);
  }

  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0);
  v16 = v15;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v5 & *v17) + 0x140))(v27);
    v21 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v22 = *(*v21 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v22);
    v23 = *v21;
    *(v23 + 16) = v22 + 1;
    *(v23 + 4 * v22 + 32) = v16;
    v19(v27, 0);
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = (*((*v5 & *v24) + 0x140))(v27);
    specialized RangeReplaceableCollection.removeFirst()();
    v26(v27, 0);
  }
}

id @nonobjc NSTimer.__allocating_init(timeInterval:repeats:block:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_13;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

id MockAudioPowerSpectrumViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockAudioPowerSpectrumViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MockAudioPowerSpectrumViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MockAudioPowerSpectrumViewModel;
  if (!type metadata singleton initialization cache for MockAudioPowerSpectrumViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView_Preview and conformance AudioPowerSpectrumView_Preview);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioPowerSpectrumView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for AudioPowerSpectrumView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AudioPowerSpectrumView, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit22AudioPowerSpectrumViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AudioPowerSpectrumView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView()
{
  result = lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView;
  if (!lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerSpectrumView and conformance AudioPowerSpectrumView);
  }

  return result;
}

void specialized static BinaryFloatingPoint<>.random<A>(in:using:)(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1BFB23E10](&v5, 8);
  if (((v4 * vcvts_n_f32_u64(v5 & 0xFFFFFF, 0x18uLL)) + a1) == a2)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, a2);
  }
}

unint64_t type metadata accessor for CAShapeLayer()
{
  result = lazy cache variable for type metadata for CAShapeLayer;
  if (!lazy cache variable for type metadata for CAShapeLayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAShapeLayer);
  }

  return result;
}

uint64_t ShapeView.shapeLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for ShapeView.fillColor : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShapeView.fillColor : ShapeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

void (*ShapeView.fillColor.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 fillColor];

  *a1 = v4;
  return ShapeView.fillColor.modify;
}

uint64_t key path getter for ShapeView.fillRule : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

id ShapeView.fillRule.getter()
{
  v0 = ShapeView.shapeLayer.getter();
  v1 = [v0 fillRule];

  return v1;
}

void ShapeView.fillRule.setter(void *a1)
{
  v2 = ShapeView.shapeLayer.getter();
  [v2 setFillRule_];
}

void (*ShapeView.fillRule.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 fillRule];

  *a1 = v4;
  return ShapeView.fillRule.modify;
}

void ShapeView.fillRule.modify(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    v3 = ShapeView.shapeLayer.getter();
    [v3 setFillRule_];
  }

  else
  {
    v2 = ShapeView.shapeLayer.getter();
    [v2 setFillRule_];
  }
}

uint64_t key path getter for ShapeView.path : ShapeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ShapeView.path : ShapeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

id ShapeView.fillColor.getter(SEL *a1)
{
  v2 = ShapeView.shapeLayer.getter();
  v3 = [v2 *a1];

  return v3;
}

void ShapeView.fillColor.setter(void *a1, SEL *a2)
{
  v4 = ShapeView.shapeLayer.getter();
  [v4 *a2];
}

void (*ShapeView.path.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = ShapeView.shapeLayer.getter();
  v4 = [v3 path];

  *a1 = v4;
  return ShapeView.path.modify;
}

void ShapeView.fillColor.modify(id *a1, char a2, SEL *a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = ShapeView.shapeLayer.getter();
    [v5 *a3];

    v6 = v4;
  }

  else
  {
    v6 = *a1;
    v4 = ShapeView.shapeLayer.getter();
    [v4 *a3];
  }
}

id ShapeView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ShapeView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = type metadata accessor for ShapeView();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ShapeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShapeView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShapeView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void Logger.traceFunctionStart(file:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = OUTLINED_FUNCTION_23();
    v17 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a7;
    _os_log_impl(&dword_1BBC58000, oslog, v8, "%s%s:%lu Called", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

uint64_t specialized Logger.traceFunction<A>(returning:file:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_14_20();
    v20 = OUTLINED_FUNCTION_13_31();
    *v11 = 136315906;
    v12 = OUTLINED_FUNCTION_0_62();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);
    *(v11 + 12) = 2080;
    v14 = OUTLINED_FUNCTION_10_25("traceFunction(returning:file:function:line:)");
    OUTLINED_FUNCTION_8_45(v14);
    *(v11 + 32) = 2080;
    memcpy(__dst, a9, sizeof(__dst));

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v11 + 34) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "%s%s:#%ld returning %s", v11, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }
}

void specialized Logger.traceFunction<A>(returning:file:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = OUTLINED_FUNCTION_14_20();
    v17 = OUTLINED_FUNCTION_13_31();
    *v10 = 136315906;
    v11 = OUTLINED_FUNCTION_0_62();
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001BC4F8DC0, &v17);
    *(v10 + 22) = 2048;
    *(v10 + 24) = 16;
    *(v10 + 32) = 2080;

    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v10 + 34) = v15;
    _os_log_impl(&dword_1BBC58000, oslog, v9, "%s%s:#%ld returning %s", v10, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }
}

void specialized Logger.traceFunction<A>(returning:file:function:line:)(uint64_t a1)
{
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_14_20();
    v13 = OUTLINED_FUNCTION_13_31();
    *v2 = 136315906;
    v3 = OUTLINED_FUNCTION_0_62();
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v13);
    *(v2 + 12) = 2080;
    OUTLINED_FUNCTION_1_18();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, v5, v6);
    OUTLINED_FUNCTION_8_45(v7);
    *(v2 + 32) = 2080;

    v8 = specialized CKStateMachine.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v2 + 34) = v11;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "%s%s:#%ld returning %s", v2, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }
}

void Logger.traceFunction<A>(returning:file:function:line:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v24 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v15))
  {
    v16 = OUTLINED_FUNCTION_14_20();
    v25 = OUTLINED_FUNCTION_13_31();
    *v16 = 136315906;
    v17 = OUTLINED_FUNCTION_0_62();
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);
    *(v16 + 12) = 2080;
    *(v16 + 14) = OUTLINED_FUNCTION_10_25("traceFunction(returning:file:function:line:)");
    *(v16 + 22) = 2048;
    *(v16 + 24) = 16;
    *(v16 + 32) = 2080;
    a1();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    (*(v12 + 8))(v14, a10);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

    *(v16 + 34) = v22;
    _os_log_impl(&dword_1BBC58000, v24, v15, "%s%s:#%ld returning %s", v16, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v23 = v24;
  }
}

void Logger.traceFunctionReturn(file:function:line:)(uint64_t a1)
{
  v20 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v2, v3, v4, v5, v6, v7, v8, v9, v20))
  {
    OUTLINED_FUNCTION_23();
    v22 = OUTLINED_FUNCTION_12_28();
    *v1 = 136315650;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v22);
    OUTLINED_FUNCTION_7_18(v10);
    OUTLINED_FUNCTION_1_18();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, v11, v12);
    OUTLINED_FUNCTION_6_39(v13);
    *(v1 + 24) = 20;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v14, v15, "%s%s:#%ld returning", v16, v17, v18, v19, v21);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

void Logger.traceFunctionSuspensionStart(file:function:line:)(uint64_t a1)
{
  v20 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v2, v3, v4, v5, v6, v7, v8, v9, v20))
  {
    OUTLINED_FUNCTION_23();
    v22 = OUTLINED_FUNCTION_12_28();
    *v1 = 136315650;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v22);
    OUTLINED_FUNCTION_7_18(v10);
    OUTLINED_FUNCTION_1_18();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, v11, v12);
    OUTLINED_FUNCTION_6_39(v13);
    *(v1 + 24) = 24;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v14, v15, "%s%s:#%ld suspension pt start", v16, v17, v18, v19, v21);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

void Logger.traceFunctionSuspensionEnd(file:function:line:)(uint64_t a1)
{
  v20 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_29(v2, v3, v4, v5, v6, v7, v8, v9, v20))
  {
    OUTLINED_FUNCTION_23();
    v22 = OUTLINED_FUNCTION_12_28();
    *v1 = 136315650;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000052, 0x80000001BC4F8D60, &v22);
    OUTLINED_FUNCTION_7_18(v10);
    OUTLINED_FUNCTION_1_18();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, v11, v12);
    OUTLINED_FUNCTION_6_39(v13);
    *(v1 + 24) = 28;
    OUTLINED_FUNCTION_5_39(&dword_1BBC58000, v14, v15, "%s%s:#%ld suspension pt start", v16, v17, v18, v19, v21);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_27();
  }
}

Swift::Void __swiftcall MultiwayViewController.accessoryFlipButtonReleased()()
{
  ConversationController.swapLocalParticipantCamera()();

  MultiwayViewController.updateShouldShowReactionPickerTipView()();
}

void MultiwayViewController.accessoryZoomInByDisplayZoomValue(_:direction:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x220);
  v6 = v4;
  v5(a1, 0.1);
}

void MultiwayViewController.accessoryTrackingSummaryUpdated(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  if (Features.tapToTrackEnabled.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.accessoryTrackingSummaryUpdated(_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_14;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v15, v8, v19);
    _Block_release(v19);

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationKit);
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v25, v21, "DockKit Tap to track feature is not enabled. Not showing tracked persons on UI", v22, 2u);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
    }

    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in MultiwayViewController.accessoryTrackingSummaryUpdated(_:)(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MultiwayViewController.updateIndicators(for:)(a2);
  }
}

void MultiwayViewController.updateIndicators(for:)(char *a1)
{
  v2 = v1;
  v144 = type metadata accessor for CameraOrientationInternal();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v143 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = (&v139 - v13);
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v156 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v139 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v139 - v26;
  v28 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  v29 = specialized Array.count.getter();
  v153 = v11;
  v147 = v2;
  v141 = a1;
  v140 = v5;
  if (v29)
  {
    v30 = v29;
    v157 = v28;
    v160[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v30 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v31 = 0;
    v32 = v160[0];
    v155 = (v157 & 0xC000000000000001);
    do
    {
      if (v155)
      {
        MEMORY[0x1BFB22010](v31);
      }

      else
      {
      }

      dispatch thunk of TrackedSubjectInternal.identifier.getter();

      v160[0] = v32;
      v33 = *(v32 + 16);
      if (v33 >= *(v32 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v160[0];
      }

      ++v31;
      *(v32 + 16) = v33 + 1;
      (*(v156 + 32))(v32 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v33, v27, v14);
    }

    while (v30 != v31);

    v2 = v147;
    v11 = v153;
  }

  else
  {
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v35 = v34;
  v36 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v146 = v36;
  v37 = *(v2 + v36);
  v38 = (v37 + 64);
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v155 = (v156 + 16);
  v152 = (v156 + 32);
  v157 = v156 + 8;
  v148 = v37;

  v43 = 0;
  v150 = v38;
  v149 = v42;
  if (!v41)
  {
LABEL_17:
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v42)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v67);
        v41 = 0;
        goto LABEL_22;
      }

      v41 = *(v38 + v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  while (1)
  {
    v44 = v43;
LABEL_21:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = v45 | (v44 << 6);
    v47 = v148;
    v48 = v156;
    (*(v156 + 16))(v24, *(v148 + 48) + *(v156 + 72) * v46, v14);
    v49 = *(*(v47 + 56) + 8 * v46);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
    v51 = *(v50 + 48);
    v52 = *(v48 + 32);
    v11 = v153;
    v52(v153, v24, v14);
    *&v11[v51] = v49;
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v50);
    v53 = v49;
LABEL_22:
    v54 = v151;
    outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(v11, v151);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
    {
      break;
    }

    (*v152)(v158, v54, v14);
    v56 = *(v35 + 16);
    v154 = v157 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v56)
    {
      OUTLINED_FUNCTION_0_63();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v57, MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_16_7();
      v60 = ~v59;
      while (1)
      {
        v61 = v58 & v60;
        if (((*(v35 + 56 + (((v58 & v60) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v60)) & 1) == 0)
        {
          break;
        }

        v62 = v156;
        (*(v156 + 16))(v24, *(v35 + 48) + *(v156 + 72) * v61, v14);
        OUTLINED_FUNCTION_0_63();
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v63, MEMORY[0x1E69695C8]);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = *(v62 + 8);
        v65(v24, v14);
        v58 = v61 + 1;
        if (v64)
        {
          v66 = v158;
          goto LABEL_29;
        }
      }
    }

    v66 = v158;
    MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(v158, 0.15);
    v65 = *v157;
LABEL_29:
    v65(v66, v14);
    v11 = v153;
    v38 = v150;
    v42 = v149;
    if (!v41)
    {
      goto LABEL_17;
    }
  }

  v68 = v141;
  v154 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  specialized Array.count.getter();
  v69 = v147;
  OUTLINED_FUNCTION_5_40();
  v70 = v146;
  v153 = v71;
  if (!v71)
  {
    goto LABEL_76;
  }

  if (v153 >= 1)
  {
    v72 = 0;
    v152 = (v154 & 0xC000000000000001);
    v151 = (v140 + 8);
    do
    {
      if (v152)
      {
        v73 = MEMORY[0x1BFB22010](v72, v154);
      }

      else
      {
        v73 = *(v154 + 8 * v72 + 32);
      }

      dispatch thunk of TrackingSummaryInternal.orientation.getter();
      dispatch thunk of TrackingSummaryInternal.referenceDimension.getter();
      MultiwayViewController.frameForTrackedObject(_:orientation:referenceDimensions:)(v74, v75, v73, v11);
      v77 = v76;
      v79 = v78;
      (*v151)(v11, v41);
      v158 = v73;
      dispatch thunk of TrackedSubjectInternal.identifier.getter();
      OUTLINED_FUNCTION_11_32();
      v80 = *(v69 + v70);
      if (*(v80 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(), (v82 & 1) != 0))
      {
        v83 = *(*(v80 + 56) + 8 * v81);
        swift_endAccess();
        v84 = v83;
        [v84 frame];
        v86 = v85;
        v88 = v87;
        v89 = v85 * v87;
        if (v85 * v87 <= 0.0)
        {
          v91 = 1;
        }

        else
        {
          v90 = v77 * v79;
          v91 = 1;
          if (v77 * v79 > 0.0 && v90 / v89 <= 1.2)
          {
            v91 = v89 / v90 > 1.2;
          }
        }

        OUTLINED_FUNCTION_18_1();
        UIRectGetCenter();
        if (v91)
        {
          v123 = v77;
        }

        else
        {
          v123 = v86;
        }

        if (v91)
        {
          v124 = v79;
        }

        else
        {
          v124 = v88;
        }

        MultiwayViewController.animateIndicatorView(view:center:bounds:)(v84, v121, v122, 0.0, 0.0, v123, v124);
        v70 = v146;
      }

      else
      {
        swift_endAccess();
        v92 = objc_allocWithZone(MEMORY[0x1E6993838]);
        v93 = OUTLINED_FUNCTION_18_1();
        v84 = [v94 v95];
        v103 = MultiwayViewController.localParticipantView.getter(v84, v96, v97, v98, v99, v100, v101, v102);
        if (v103)
        {
          v104 = v103;
          type metadata accessor for LocalParticipantView(0);
          v105 = swift_dynamicCastClass();
          if (v105)
          {
            v149 = v105;
            v150 = v104;
            v11 = v68;
            v106 = v72;
            v148 = *v155;
            (v148)(v145, v24, v14);
            swift_beginAccess();
            v84 = v84;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108 = v70;
            v109 = isUniquelyReferenced_nonNull_native;
            v159 = *(v69 + v108);
            v110 = v159;
            *(v69 + v108) = 0x8000000000000000;
            v111 = specialized __RawDictionaryStorage.find<A>(_:)();
            v113 = v110[2];
            v114 = (v112 & 1) == 0;
            v115 = v113 + v114;
            if (__OFADD__(v113, v114))
            {
              goto LABEL_78;
            }

            v41 = v111;
            v24 = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v109, v115))
            {
              v116 = specialized __RawDictionaryStorage.find<A>(_:)();
              if ((v24 & 1) != (v117 & 1))
              {
                goto LABEL_82;
              }

              v41 = v116;
            }

            v72 = v106;
            v68 = v11;
            v118 = v159;
            if (v24)
            {
              v119 = v159[7];
              v120 = *(v119 + 8 * v41);
              *(v119 + 8 * v41) = v84;
            }

            else
            {
              v159[(v41 >> 6) + 8] |= 1 << v41;
              (v148)(v118[6] + *(v156 + 72) * v41, v145, v14);
              *(v118[7] + 8 * v41) = v84;
              v125 = v118[2];
              v126 = __OFADD__(v125, 1);
              v127 = v125 + 1;
              if (v126)
              {
                goto LABEL_79;
              }

              v118[2] = v127;
            }

            (*v157)(v145, v14);
            v128 = v146;
            *(v69 + v146) = v118;
            v70 = v128;

            swift_endAccess();
            LocalParticipantView.addIndicatorView(_:)(v84);
            [v84 setAlpha_];
            MultiwayViewController.fadeInView(view:duration:)(v84, 0.25);

            OUTLINED_FUNCTION_5_40();
          }

          else
          {

            v84 = v104;
          }
        }
      }

      OUTLINED_FUNCTION_11_32();
      v129 = *(v69 + v70);
      if (*(v129 + 16) && (v130 = specialized __RawDictionaryStorage.find<A>(_:)(), (v131 & 1) != 0))
      {
        v132 = v72;
        v133 = *(*(v129 + 56) + 8 * v130);
        swift_endAccess();
        v134 = v133;
        if (dispatch thunk of TrackedSubjectInternal.trackingLock.getter())
        {
          [v134 setShape:1 animated:1];
        }

        else
        {
          v135 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
          if ((v136 & 1) != 0 || v135 < 1)
          {
            v137 = v134;
            v138 = 0;
          }

          else
          {
            v137 = v134;
            v138 = 2;
          }

          [v137 setShape:v138 animated:1];
        }

        v70 = v146;
        v72 = v132;
      }

      else
      {
        swift_endAccess();
      }

      ++v72;

      (*v157)(v24, v14);
    }

    while (v153 != v72);
LABEL_76:

    MultiwayViewController.hideOrShowIndicators()();
    return;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_0_63();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v10, v11, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v12 = a2 + 56;
    v19 = a2;
    OUTLINED_FUNCTION_16_7();
    v15 = ~v14;
    do
    {
      v16 = v13 & v15;
      if (((1 << (v13 & v15)) & *(v12 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v9, *(v19 + 48) + *(v5 + 72) * v16, v3);
      OUTLINED_FUNCTION_0_63();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, v17, MEMORY[0x1E69695C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v9, v3);
      v13 = v16 + 1;
    }

    while ((v18 & 1) == 0);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized Set.contains(_:)(Swift::UInt32 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
    }

    while (v6 && *(a2[6] + 4 * v5) != a1);
  }

  return v2;
}

void specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
}

{
  specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
}

void specialized Set.contains(_:)(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16))
  {
    type metadata accessor for NSObject(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(a2 + 40));
    OUTLINED_FUNCTION_16_7();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(a2 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v10 = *(*(a2 + 48) + 8 * v9);
      v11 = static NSObject.== infix(_:_:)();

      v6 = v9 + 1;
    }

    while ((v11 & 1) == 0);
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a1;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v4);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
    }

    while (v6 && *(a2[6] + v5) != v4);
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    MEMORY[0x1BFB22620](*(a2 + 40), a1);
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_6_40();
    }

    while (v5 != a1);
  }

  return v2;
}

{
  v3 = *(a2 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_9_30(a1, a2);
    MEMORY[0x1BFB22640](v2);
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_63();
    do
    {
      OUTLINED_FUNCTION_1_63();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_6_40();
    }

    while (v5 != v2);
  }

  return v3;
}

void MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v10 = *&v3[v9];
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = v13;
    [v14 alpha];
    if (v15 == 0.0)
    {
    }

    else
    {
      (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v3;
      (*(v7 + 32))(v17 + v16, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v18 = v14;
      v19 = v3;
      MultiwayViewController.fadeOutView(view:duration:completion:)(v18, partial apply for closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:), v17, a2);
    }
  }

  else
  {
    swift_endAccess();
  }
}

double MultiwayViewController.frameForTrackedObject(_:orientation:referenceDimensions:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CameraOrientationInternal();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MultiwayViewController.localParticipantView.getter(v11, v12, v13, v14, v15, v16, v17, v18);
  if (!v19)
  {
    return *MEMORY[0x1E695F058];
  }

  v20 = v19;
  type metadata accessor for LocalParticipantView(0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    return *MEMORY[0x1E695F058];
  }

  v22 = v21;
  type metadata accessor for DockKitCoreUtils();
  dispatch thunk of TrackedSubjectInternal.rect.getter();
  v62 = a1;
  v63 = a2;
  (*(v8 + 104))(v10, *MEMORY[0x1E699A2E8], v7);
  static DockKitCoreUtils.convert(rect:from:to:)();
  v24 = v23;
  v26 = v25;
  v60 = v28;
  v61 = v27;
  (*(v8 + 8))(v10, v7);
  [*(v22 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView) bounds];
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  v64 = v65.size.height;
  v33 = CGRectGetHeight(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v34 = v33 / CGRectGetWidth(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v35 = CGRectGetWidth(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v36 = CGRectGetHeight(v68);
  if (v62 / v63 <= v34)
  {
    v37 = 1.0 / (v62 / v63) * v36;
  }

  else
  {
    v36 = v62 / v63 * v35;
    v37 = v35;
  }

  v56 = v37;
  v57 = v36;
  v38 = v24;
  v58 = v24;
  v59 = v26;
  v69.origin.x = v24;
  v39 = v26;
  v69.origin.y = v26;
  v41 = v60;
  v40 = v61;
  v69.size.width = v61;
  v69.size.height = v60;
  v63 = v37 * CGRectGetWidth(v69);
  v70.origin.x = v38;
  v70.origin.y = v39;
  v70.size.width = v40;
  v70.size.height = v41;
  v62 = v57 * CGRectGetHeight(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v42 = v64;
  v71.size.height = v64;
  v43 = CGRectGetWidth(v71);
  v44 = v56;
  v45 = (v56 - v43) * 0.5;
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = v42;
  CGRectGetHeight(v72);
  v46 = MultiwayViewController.aspectFaceRect(from:orientation:)(a4, v58 * v44 - v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = v64;
  v74 = CGRectInset(v73, 3.0, 3.0);
  v75.origin.x = v46;
  v75.origin.y = v48;
  v75.size.width = v50;
  v75.size.height = v52;
  *&v53 = CGRectIntersection(v74, v75);

  return v53;
}

void MultiwayViewController.animateIndicatorView(view:center:bounds:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v25 = partial apply for closure #1 in MultiwayViewController.animateIndicatorView(view:center:bounds:);
  v26 = v15;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_24_0;
  v16 = _Block_copy(&v21);
  v17 = a1;

  [v14 animateWithDuration:2 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  v25 = partial apply for closure #2 in MultiwayViewController.animateIndicatorView(view:center:bounds:);
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_30;
  v19 = _Block_copy(&v21);
  v20 = v17;

  [v14 animateWithDuration:2 delay:v19 options:0 animations:0.4 completion:0.0];
  _Block_release(v19);
}

void MultiwayViewController.hideOrShowIndicators()()
{
  v44 = type metadata accessor for UUID();
  v1 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v43 = MultiwayViewController.shouldHideIndicators()();
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v35 = v1 + 32;
  v36 = v1 + 16;
  v40 = v1;
  v41 = v10;
  v42 = (v1 + 8);

  v16 = 0;
  v37 = v8;
  v38 = v5;
  v33 = v15;
  v34 = v11;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v21 = v40;
      v20 = v41;
      v22 = v39;
      v23 = v44;
      (*(v40 + 16))(v39, *(v41 + 48) + *(v40 + 72) * v19, v44);
      v24 = *(*(v20 + 56) + 8 * v19);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
      v26 = *(v25 + 48);
      v27 = *(v21 + 32);
      v5 = v38;
      v27(v38, v22, v23);
      *&v5[v26] = v24;
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v25);
      v28 = v24;
      v8 = v37;
      v15 = v33;
      v11 = v34;
LABEL_10:
      outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(v5, v8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
      if (__swift_getEnumTagSinglePayload(v8, 1, v29) == 1)
      {
        break;
      }

      v30 = *&v8[*(v29 + 48)];
      [v30 setHidden_];

      (*v42)(v8, v44);
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetMR);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v31);
        v14 = 0;
        goto LABEL_10;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

BOOL MultiwayViewController.shouldHideIndicators()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 1;
  }

  else
  {
    v3 = __dst[6];
    v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    return !specialized Sequence<>.contains(_:)(*(v3 + v4), &outlined read-only object #0 of MultiwayViewController.shouldHideIndicators());
  }
}

void MultiwayViewController.fadeInView(view:duration:)(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_36;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 animateWithDuration:6 delay:v6 options:0 animations:a2 completion:0.0];
  _Block_release(v6);
}

double MultiwayViewController.aspectFaceRect(from:orientation:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CameraOrientationInternal();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x1E699A2D8])
  {
    v10 = v9 == *MEMORY[0x1E699A2E8] || v9 == *MEMORY[0x1E699A2C8];
    if (v10 || (v9 != *MEMORY[0x1E699A2B8] ? (v11 = v9 == *MEMORY[0x1E699A2C0]) : (v11 = 1), v11))
    {
      swift_beginAccess();
      TPNumberPadCharacter.rawValue.getter();
      return v12;
    }

    else if (v9 != *MEMORY[0x1E699A2D0] && v9 != *MEMORY[0x1E699A2E0] && v9 != *MEMORY[0x1E699A2F0])
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return a2;
}

id closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(int a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 alpha];
  if (v7 == 0.0)
  {
    swift_beginAccess();
    v8 = specialized Dictionary._Variant.removeValue(forKey:)(a4);
    swift_endAccess();

    return [a2 removeFromSuperview];
  }

  return result;
}

void MultiwayViewController.fadeOutView(view:duration:completion:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v18 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v19 = v9;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> ();
  v17 = &block_descriptor_12;
  v10 = _Block_copy(&v14);
  v11 = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v18 = partial apply for closure #2 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v17 = &block_descriptor_18;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:6 delay:v10 options:v13 animations:a4 completion:0.0];
  _Block_release(v13);
  _Block_release(v10);
}

id closure #2 in MultiwayViewController.animateIndicatorView(view:center:bounds:)(void *a1)
{
  [a1 setBounds_];

  return [a1 layoutIfNeeded];
}

uint64_t outlined init with take of (key: UUID, value: CEKCinematicSubjectIndicatorView)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMd, &_s10Foundation4UUIDV3key_So32CEKCinematicSubjectIndicatorViewC5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id partial apply for closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in MultiwayViewController.fadeOutAndRemoveIndicatorView(identifier:duration:)(a1, v4, v5, v6);
}

ConversationKit::ContactHandleMap __swiftcall ContactHandleMap.init()()
{
  v1 = v0;
  result.store._rawValue = Dictionary.init(dictionaryLiteral:)();
  v1->store._rawValue = result.store._rawValue;
  return result;
}

ConversationKit::ContactHandleMap __swiftcall ContactHandleMap.init(contactsByHandle:)(Swift::OpaquePointer contactsByHandle)
{
  ContactHandleMap.init(contactsByHandle:)(contactsByHandle._rawValue, ContactHandleMap.onContactsUpdated(_:), v1);
  return result;
}

{
  ContactHandleMap.init(contactsByHandle:)(contactsByHandle._rawValue, ContactHandleMap.onContactsUpdated(_:), v1);
  return result;
}

Swift::Void __swiftcall ContactHandleMap.onContactsUpdated(_:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue + 64;
  OUTLINED_FUNCTION_1_64();
  v4 = v3 >> 6;
  v32 = v5;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v30 = v4;
  v31 = v2;
  if (v1)
  {
    while (1)
    {
      v8 = v6;
LABEL_6:
      v9 = (v8 << 9) | (8 * __clz(__rbit64(v1)));
      v10 = *(*(v32 + 48) + v9);
      v33 = *(*(v32 + 56) + v9);
      v11 = v33;
      v34 = v10;
      v12 = [v34 value];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
      OUTLINED_FUNCTION_3_57();
      if (v20)
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9CNContactCSgGMd, &_ss17_NativeDictionaryVySSSo9CNContactCSgGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7))
      {
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v21 = v23;
      }

      v1 &= v1 - 1;
      if (v22)
      {

        v25 = v7[7];
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v33;
      }

      else
      {
        v7[(v21 >> 6) + 8] |= 1 << v21;
        v27 = (v7[6] + 16 * v21);
        *v27 = v13;
        v27[1] = v15;
        *(v7[7] + 8 * v21) = v33;

        v28 = v7[2];
        v20 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v20)
        {
          goto LABEL_21;
        }

        v7[2] = v29;
      }

      v6 = v8;
      v4 = v30;
      v2 = v31;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v8 >= v4)
      {
        break;
      }

      v1 = *&v2[8 * v8];
      ++v6;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    ContactHandleMap.onContactsUpdated(_:)(v7);
  }
}

{
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = a1._rawValue + 64;
  OUTLINED_FUNCTION_1_64();
  v6 = v5 >> 6;
  rawValue = a1._rawValue;

  v7 = 0;
  v41 = v6;
  v42 = a1._rawValue + 64;
  if (v1)
  {
LABEL_6:
    while (1)
    {
      v9 = __clz(__rbit64(v1)) | (v7 << 6);
      v10 = (rawValue[6] + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(rawValue[7] + 8 * v9);
      if (v13)
      {

        v45 = v13;
      }

      else
      {
        v14 = *v40;
        v15 = *(*v40 + 16);

        if (v15 && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12), (v17 & 1) != 0) && (v18 = *(v14 + 56) + 16 * v16, *(v18 + 8) == 1))
        {
          v45 = *v18;
          v19 = *v18;
        }

        else
        {
          type metadata accessor for CNContact();

          v19 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v20, 0, 0, v11, v12);
          v45 = v19;
        }

        v21 = v19;
      }

      v22 = v12;
      v23 = v13;
      v44 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v11;
      specialized __RawDictionaryStorage.find<A>(_:)(v11, v22);
      OUTLINED_FUNCTION_3_57();
      if (v28)
      {
        break;
      }

      v29 = v26;
      v30 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit16ContactHandleMapV06RemoteE033_F6BD99B7C429375F74659E621438887DLLOGMd, &_ss17_NativeDictionaryVySS15ConversationKit16ContactHandleMapV06RemoteE033_F6BD99B7C429375F74659E621438887DLLOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v3))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v22);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_28;
        }

        v29 = v31;
      }

      if (v30)
      {

        v33 = v3[7] + 16 * v29;
        v34 = *v33;
        v35 = v45;
        *v33 = v45;
        *(v33 + 8) = v23 == 0;
      }

      else
      {
        v3[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v3[6] + 16 * v29);
        *v36 = v25;
        v36[1] = v22;
        v37 = v3[7] + 16 * v29;
        v35 = v45;
        *v37 = v45;
        *(v37 + 8) = v23 == 0;

        v38 = v3[2];
        v28 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v28)
        {
          goto LABEL_27;
        }

        v3[2] = v39;
      }

      v1 &= v1 - 1;

      v6 = v41;
      v4 = v42;
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        *v40 = v3;
        return;
      }

      v1 = *&v4[8 * v8];
      ++v7;
      if (v1)
      {
        v7 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double ContactHandleMap.init(contactsByHandle:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  *a3 = Dictionary.init(dictionaryLiteral:)();
  a2(a1);

  return result;
}

CNContact_optional __swiftcall ContactHandleMap.contactLiteral(for:)(Swift::String a1)
{
  v2 = *v1;
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object), !v4))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationKit);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;

      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[ContactHandleMap] Contact info requested for unrecognized handle %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    goto LABEL_10;
  }

  v5 = *(v2 + 56) + 16 * v3;
  if (*(v5 + 8))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = *v5;
  v7 = *v5;
LABEL_11:
  v16 = v6;
  result.value.super.isa = v16;
  result.is_nil = v4;
  return result;
}

CNContact __swiftcall ContactHandleMap.contact(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);

    return v7;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;

      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v10, v11, "[ContactHandleMap] Contact info requested for unrecognized handle %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    type metadata accessor for CNContact();

    return @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v17, 0, 0, countAndFlagsBits, object);
  }
}

uint64_t ContactHandleMap.contactLiteral(for:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = [a1 value];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = a2(v4, v6);

  return v7;
}

Class ContactHandleMap.oneToOneModeContact.getter()
{
  v1 = *v0;

  v3 = specialized Collection.first.getter(v2);
  if (v4)
  {
    v6 = v3;
    v7 = v4;

    if (*(v1 + 16) >= 2uLL)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationKit);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19 = v12;
        *v11 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15ConversationKit16ContactHandleMapV06RemoteC033_F6BD99B7C429375F74659E621438887DLLOGMd, &_sSDySS15ConversationKit16ContactHandleMapV06RemoteC033_F6BD99B7C429375F74659E621438887DLLOGMR);
        v13 = String.init<A>(reflecting:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1BBC58000, v9, v10, "[ContactHandleMap] 1:1 contact requested but returning the first of multiple: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
        OUTLINED_FUNCTION_2_2();

LABEL_10:
        v19 = v1;
        v17._countAndFlagsBits = v6;
        v17._object = v7;
        isa = ContactHandleMap.contact(for:)(v17).super.isa;

        return isa;
      }
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t ContactHandleMap.allContacts.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Dictionary.Keys.startIndex.getter(v1);
    v5 = result;
    v7 = v6;
    v8 = 0;
    v24 = v1 + 64;
    v22 = v6;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (*(v1 + 36) != v7)
      {
        goto LABEL_22;
      }

      v23 = v4;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      ContactHandleMap.contact(for:)(v13);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v14 = 1 << *(v1 + 32);
      if (v5 >= v14)
      {
        goto LABEL_23;
      }

      v15 = *(v24 + 8 * v9);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v7)
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v1 + 72 + 8 * v9);
        while (v18 < (v14 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v23 & 1);
            v14 = __clz(__rbit64(v20)) + v17;
            goto LABEL_17;
          }
        }

        result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v23 & 1);
      }

LABEL_17:
      v4 = 0;
      ++v8;
      v5 = v14;
      v7 = v22;
      if (v8 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v7 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1BFB209B0](a2, a1);

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = MEMORY[0x1BFB209B0](a4, a5);

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v7 emailOrPhoneNumber:v8];

  return v9;
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t ClarityUIDialerKeypadView.init(enteredNumbers:isPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *a8 = static ClarityUIPreferences.shared;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
}

uint64_t ClarityUIDialerKeypadView.enteredNumbers.getter()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 8);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](&v4, v2);
  return v4;
}

uint64_t key path setter for ClarityUIDialerKeypadView.enteredNumbers : ClarityUIDialerKeypadView(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ClarityUIDialerKeypadView.enteredNumbers.setter(v1, v2);
}

void (*ClarityUIDialerKeypadView.enteredNumbers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v3;
  v3[15] = v1;
  v4 = *(v1 + 8);
  v3[16] = v4;
  v5 = *(v1 + 16);
  v3[17] = v5;
  v3[14] = v4;
  *(v3 + 4) = *(v1 + 24);
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 1) = *(v1 + 24);
  outlined init with copy of Transaction((v3 + 14), (v3 + 4));

  outlined init with copy of String((v3 + 8), (v3 + 4));
  v3[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerKeypadView.enteredNumbers.modify;
}

void ClarityUIDialerKeypadView.enteredNumbers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  *(v2 + 32) = *(*a1 + 128);
  v4 = *(v2 + 80);
  *(v2 + 40) = *(v2 + 136);
  v5 = *(v3 + 24);
  *(v2 + 96) = v4;
  v6 = *(v2 + 88);
  *(v2 + 48) = v5;
  *(v2 + 104) = v6;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of String(v2 + 64);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of String(v2 + 64);
  }

  free(v2);
}

uint64_t ClarityUIDialerKeypadView.$enteredNumbers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIDialerKeypadView.isPresented.getter()
{
  OUTLINED_FUNCTION_2_19();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t ClarityUIDialerKeypadView.isPresented.setter()
{
  OUTLINED_FUNCTION_2_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

void (*ClarityUIDialerKeypadView.isPresented.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v3[7] = v4;
  v3[8] = v5;
  v6 = *(v1 + 56);
  *(v3 + 19) = v6;
  v3[6] = v4;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x1BFB20050]();
  return ClarityUIDialerView.isPresented.modify;
}

uint64_t ClarityUIDialerKeypadView.$isPresented.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIDialerKeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MoveTransition();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonM0Rd__lFQOyAA0N0VyAA0F0VyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BacknM033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AoAEAPyQrqd__AaQRd__lFQOyA0__A3_013PrimaryActionnM0A5_LLVQo_tGGAA08_PaddingG0VG_AA6SpacerVA1_0s8UIKeypadD0VtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonM0Rd__lFQOyAA0N0VyAA0F0VyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BacknM033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AoAEAPyQrqd__AaQRd__lFQOyA0__A3_013PrimaryActionnM0A5_LLVQo_tGGAA08_PaddingG0VG_AA6SpacerVA1_0s8UIKeypadD0VtGGMR);
  closure #1 in ClarityUIDialerKeypadView.body.getter(v2, a1 + *(v13 + 44));
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMR) + 36);
  *v22 = v2;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = static Color.clarityUIContentBackground.getter();
  v24 = static Edge.Set.all.getter();
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMR) + 36);
  *v25 = v23;
  *(v25 + 8) = v24;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMR) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMR) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMR) + 28);
  v29 = *MEMORY[0x1E697E6C0];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_7_0();
  (*(v30 + 104))(v27 + v28, v29);
  *v27 = KeyPath;
  MoveTransition.init(edge:)();
  (*(v6 + 16))(v9, v12, v4);
  lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
  v31 = AnyTransition.init<A>(_:)();
  (*(v6 + 8))(v12, v4);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMR) + 36)) = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMR);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMR);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &__src[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-1] - v9;
  static ClarityUIMetrics.standardSpacing.getter();
  v12 = v11;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = v12;
  v10[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA6VStackVyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAX_A_013PrimaryActionkJ0A1_LLVQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA6VStackVyAIyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadD0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAX_A_013PrimaryActionkJ0A1_LLVQo_tGGMR);
  closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(a1, &v10[*(v13 + 44)]);
  v14 = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v15 = &v10[*(v5 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  static ClarityUIMetrics.standardSpacing.getter();
  v21 = v20;
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = a1[2];
  *(v22 + 57) = *(a1 + 41);
  __src[1] = 0;
  __src[0] = 0;
  LOBYTE(__src[2]) = 1;
  outlined init with copy of ClarityUIDialerKeypadView(a1, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGSizeVSgMd, &_sSo6CGSizeVSgMR);
  State.init(wrappedValue:)();
  v24 = v39;
  v25 = v40;
  v26 = v42;
  LOBYTE(v39) = v41;
  static ClarityUIMetrics.standardSpacing.getter();
  v28 = v27;
  closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings();
  v30 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E69D89A8]) init];
  v32 = v39;
  v37 = v7;
  sub_1BBCE1258(v10, v7);
  sub_1BBCE1258(v7, a2);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtMR);
  v34 = a2 + *(v33 + 48);
  *v34 = v21;
  *(v34 + 8) = 0;
  v35 = *(v33 + 64);
  __src[0] = v24;
  __src[1] = v25;
  LOBYTE(__src[2]) = v32;
  __src[3] = v26;
  __src[4] = 0x4020000000000000;
  __src[5] = v28;
  __src[6] = v30;
  __src[7] = v31;
  __src[8] = partial apply for closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter;
  __src[9] = v22;
  memcpy((a2 + v35), __src, 0x50uLL);
  outlined init with copy of ClarityUIKeypadView(__src, &v39);
  sub_1BBCE12C0(v10);
  v39 = v24;
  v40 = v25;
  v41 = v32;
  v42 = v26;
  v43 = 0x4020000000000000;
  v44 = v28;
  v45 = v30;
  v46 = v31;
  v47 = partial apply for closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter;
  v48 = v22;
  outlined destroy of ClarityUIKeypadView(&v39);
  return sub_1BBCE12C0(v37);
}

unint64_t lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  result = lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition;
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    type metadata accessor for MoveTransition();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V013PrimaryActionfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V013PrimaryActionfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_MR);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo_MR);
  v40 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = swift_allocObject();
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = a1[2];
  *(v14 + 57) = *(a1 + 41);
  outlined init with copy of ClarityUIDialerKeypadView(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Image, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGMR, MEMORY[0x1E6981870]);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(Image, Text)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA5ImageV_AA4TextVtGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle();
  v34 = v13;
  View.buttonStyle<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17 = swift_allocObject();
  v18 = a1[1];
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = a1[2];
  *(v17 + 57) = *(a1 + 41);
  outlined init with copy of ClarityUIDialerKeypadView(a1, v43);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle();
  v19 = v42;
  View.buttonStyle<A>(_:)();
  v16(v9, v6);
  v20 = v41;
  v21 = *(v40 + 16);
  v22 = v13;
  v23 = v35;
  v21(v41, v22, v35);
  v25 = v36;
  v24 = v37;
  v26 = *(v36 + 16);
  v27 = v38;
  v26(v37, v19, v38);
  v28 = v39;
  v21(v39, v20, v23);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AcAEADyQrqd__AaERd__lFQOyAR_AU013PrimaryActionfE0AWLLVQo_tMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA6VStackVyAA05TupleC0VyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadC0V04BackfE033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AcAEADyQrqd__AaERd__lFQOyAR_AU013PrimaryActionfE0AWLLVQo_tMR);
  v26(&v28[*(v29 + 48)], v24, v27);
  v30 = *(v25 + 8);
  v30(v42, v27);
  v31 = *(v40 + 8);
  v31(v34, v23);
  v30(v24, v27);
  return (v31)(v41, v23);
}

uint64_t closure #1 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  return Binding.wrappedValue.setter();
}

void closure #2 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v4 = Image.init(systemName:)();
  v5 = [objc_opt_self() conversationKit];
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC4F8EB0;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11);

  outlined copy of Text.Storage(v9._countAndFlagsBits, v9._object, 0);
  v10 = MEMORY[0x1E69E7CC0];

  outlined consume of Text.Storage(v9._countAndFlagsBits, v9._object, 0);

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
}

void ClarityUIDialerKeypadView.makeCall()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v3 = [v2 telephonyProvider];
  type metadata accessor for TUHandle();
  v4 = *(v0 + 24);
  v12 = *(v0 + 8);
  v13 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](&aBlock, v5);
  v6 = TUHandle.__allocating_init(type:value:)(2, aBlock, v15);
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v7 setHandle_];
  [v7 setOriginatingUIType_];
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 24) = *v1;
  *(v8 + 16) = v7;
  *(v8 + 40) = v9;
  *(v8 + 56) = v1[2];
  *(v8 + 65) = *(v1 + 41);
  v18 = partial apply for closure #1 in ClarityUIDialerKeypadView.makeCall();
  v19 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v17 = &block_descriptor_15;
  v10 = _Block_copy(&aBlock);
  v11 = v7;
  outlined init with copy of ClarityUIDialerKeypadView(v1, &v12);

  [v2 launchAppForDialRequest:v11 completion:v10];
  _Block_release(v10);
}

void closure #4 in closure #1 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v4 = Image.init(systemName:)();
  v5 = [objc_opt_self() conversationKit];
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC4F8E90;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11);

  outlined copy of Text.Storage(v9._countAndFlagsBits, v9._object, 0);
  v10 = MEMORY[0x1E69E7CC0];

  outlined consume of Text.Storage(v9._countAndFlagsBits, v9._object, 0);

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
}

uint64_t closure #2 in closure #1 in ClarityUIDialerKeypadView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v16 = v7;
  v15 = *(a3 + 24);
  v11 = v7;
  v12 = v6;
  v13 = *(a3 + 24);
  outlined init with copy of Transaction(&v16, v9);

  outlined init with copy of String(&v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
  MEMORY[0x1BFB20050](&v14);
  MEMORY[0x1BFB20B10](a1, a2);
  v9[0] = v7;
  v9[1] = v6;
  v10 = *(a3 + 24);
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v16);

  return outlined destroy of String(&v15);
}

void closure #1 in ClarityUIDialerKeypadView.makeCall()(void *a1, void *a2, uint64_t a3)
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
    outlined init with copy of ClarityUIDialerKeypadView(a3, v24);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    outlined destroy of ClarityUIDialerKeypadView(a3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v12 = 138412802;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = *(a3 + 24);
      v24[0] = *(a3 + 8);
      v24[1] = v15;
      v16 = v9;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd, &_s7SwiftUI7BindingVySSGMR);
      MEMORY[0x1BFB20050](v22, v17);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22[0], v22[1], &v23);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1BBC58000, v10, v11, "Unable to launch app for dial request: %@, phone number: %s, error: %s", v12, 0x20u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ClarityUIDialerKeypadView.BackButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v6 = type metadata accessor for PlatterButtonType();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v18[1] = a2(v16);
  a3();
  (*(v8 + 104))(v11, *MEMORY[0x1E697C450], v6);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

double ClarityUIDialerKeypadView.BarShape.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, 40.0, 40.0}];
  v7 = [v6 CGPath];

  Path.init(_:)();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t static ClarityUIDialerKeypadView.BarShape.role.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F18];
  v3 = type metadata accessor for ShapeRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double protocol witness for Shape.path(in:) in conformance ClarityUIDialerKeypadView.BarShape@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  ClarityUIDialerKeypadView.BarShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ClarityUIDialerKeypadView.BarShape(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ClarityUIDialerKeypadView.BarShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape();

  return MEMORY[0x1EEDE4410](a1, v2);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIDialerKeypadView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ClarityUIDialerKeypadView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAA26_PreferenceWritingModifierVyAA36MultimodalChromeVisiblePreferenceKeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVyAA023MultimodalChromeVisibleC3KeyVGMd, &_s7SwiftUI26_PreferenceWritingModifierVyAA023MultimodalChromeVisibleC3KeyVGMR, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>>, _PreferenceWritingModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGAA30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DynamicTypeSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAY8BarShapeA_LLVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<ClarityUIDialerKeypadView.BarShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy15ConversationKit25ClarityUIDialerKeypadViewV8BarShape33_800E451BA992F5BB88AE265BE36FA5DELLVGMd, &_s7SwiftUI11_ClipEffectVy15ConversationKit25ClarityUIDialerKeypadViewV8BarShape33_800E451BA992F5BB88AE265BE36FA5DELLVGMR, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<ClarityUIDialerKeypadView.BarShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GAA011_BackgroundJ8ModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAEyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadG0VtGGA8_GMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAA0E0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyACyAEyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadE0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadE0VtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAA0E0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyACyAEyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadE0V04BackkJ033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AkAEALyQrqd__AaMRd__lFQOyAV_AY013PrimaryActionkJ0A_LLVQo_tGGAA14_PaddingLayoutVG_AA6SpacerVAW0p8UIKeypadE0VtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _PaddingLayout>, Spacer, ClarityUIKeypadView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BarShape and conformance ClarityUIDialerKeypadView.BarShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.BackButtonStyle and conformance ClarityUIDialerKeypadView.BackButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle;
  if (!lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIDialerKeypadView.PrimaryActionButtonStyle and conformance ClarityUIDialerKeypadView.PrimaryActionButtonStyle);
  }

  return result;
}

double outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = specialized Array.count.getter();
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a2;
  v25 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v4;
  while (1)
  {
LABEL_2:
    if (v5 == v4)
    {

      return;
    }

    if (v6)
    {
      v8 = MEMORY[0x1BFB22010](v5, v20);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v25 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      break;
    }

    v11 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {

      v12 = v9;
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v11 + 16))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
        v14 = *(v11 + 40);

        v15 = NSObject._rawHashValue(seed:)(v14);
        v16 = ~(-1 << *(v11 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(v11 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v18 = *(*(v11 + 48) + 8 * v17);
          v19 = static NSObject.== infix(_:_:)();

          v15 = v17 + 1;
          if (v19)
          {

            v4 = v23;
            a2 = v24;
            v7 = v21;
            v6 = v22;
            goto LABEL_2;
          }
        }

        v4 = v23;
        a2 = v24;
        v7 = v21;
        v6 = v22;
      }

LABEL_16:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    *a1 = v5;
  }

  v8 = *(v5 + 16);
  v28 = v5 + 32;
  v34[0] = v5 + 32;
  v34[1] = v8;
  v9 = v6;
  v10 = _minimumMergeRunLength(_:)(v8);
  if (v10 >= v8)
  {
    if (v8 >= 2)
    {
      v27 = v9;
      v16 = v9;
      v17 = -1;
      v18 = 1;
      v19 = (v5 + 32);
      do
      {
        v30 = v18;
        v31 = v17;
        v20 = *(v28 + 8 * v18);
        v29 = v19;
        do
        {
          v21 = *v19;
          v22 = swift_allocObject();
          *(v22 + 16) = v16;
          *(swift_allocObject() + 16) = v16;
          v23 = v16;

          v24 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v20, v21, a2 & 1, partial apply for implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:), v22, partial apply for implicit closure #4 in implicit closure #3 in closure #2 in PeoplePickerViewController.preferredRecipient(for:));

          if ((v24 & 1) == 0)
          {
            break;
          }

          v25 = *v19;
          v20 = v19[1];
          *v19 = v20;
          v19[1] = v25;
          --v19;
        }

        while (!__CFADD__(v17++, 1));
        v18 = v30 + 1;
        v19 = v29 + 1;
        v17 = v31 - 1;
      }

      while (v30 + 1 != v8);

      v9 = v27;
    }
  }

  else
  {
    v11 = v10;
    v12 = (v8 >> 1);
    UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5(v8 >> 1);
    v33[0] = v14;
    v33[1] = v12;
    v15 = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v33, v35, v34, v11, a2 & 1, v15);
    if (v3)
    {
      *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      specialized ContiguousArray._endMutation()();

      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  specialized ContiguousArray._endMutation()();
}

ConversationKit::PeoplePickerStyle_optional __swiftcall PeoplePickerStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PeoplePickerStyle@<X0>(uint64_t *a1@<X8>)
{
  result = PeoplePickerStyle.rawValue.getter();
  *a1 = result;
  return result;
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action];
  *v6 = a1;
  *(v6 + 1) = a2;
  v11 = v5;
  v7 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v8, v9, v7, v11, v2);
}

id PeoplePickerViewController.FakeFooterView.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action);
  *v3 = a1;
  v3[1] = a2;
  v8 = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  v4 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v5, v6, v4, v2, v8);
}

id PeoplePickerViewController.FakeFooterView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

uint64_t PeoplePickerViewController.FakeFooterView.isHidden.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PeoplePickerViewController.FakeFooterView();
  v3 = objc_msgSendSuper2(&v5, sel_setHidden_, a1 & 1);
  return (*&v1[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action])(v3);
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PeoplePickerViewController.FakeFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TPPillView.__allocating_init(title:frame:theme:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = MEMORY[0x1BFB209B0](a1, a2);

  v16 = [v14 initWithTitle:v15 frame:a3 theme:{a4, a5, a6, a7}];

  return v16;
}

id PeoplePickerViewController.navigationSubtitle.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 2)
  {
    return 0;
  }

  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3A0))();
  if (!v2 || (v3 = outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(v2, &selRef_concatenatedMetadataDescription), !v4))
  {
    v5 = (*((*v1 & *v0) + 0x388))();
    v6 = v7;

    if (v6)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v5 = v3;
  v6 = v4;
LABEL_6:
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setNumberOfLines_];
  [v8 setClipsToBounds_];
  [v8 setLineBreakMode_];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() labelColor];
  [v8 setTextColor_];

  v11 = [objc_opt_self() conversationKit];
  v20._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F9500;
  v13._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA940;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v5;
  *(v15 + 40) = v6;
  v16 = static String.localizedStringWithFormat(_:_:)();
  v18 = v17;

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v16, v18, v8);
  return v8;
}

uint64_t key path getter for PeoplePickerViewController.callerIDs : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.callerIDs : PeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2C8);

  return v2(v3);
}

void PeoplePickerViewController.callerIDs.didset(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs;
  swift_beginAccess();
  v5 = *&v1[v4];

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8TUHandleC_Tt1g5(a1, v5);
  LOBYTE(a1) = v6;

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.peoplePicker);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Updating callerIDs to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }
}

double PeoplePickerViewController.callerIDs.getter()
{
  return PeoplePickerViewController.callerIDs.getter();
}

{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return result;
}

uint64_t PeoplePickerViewController.callerIDs.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_44_0();
}

uint64_t key path getter for PeoplePickerViewController.selectedCallerID : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.selectedCallerID : PeoplePickerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);
  v4 = *a1;
  return v3(v2);
}

void PeoplePickerViewController.selectedCallerID.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  if (one-time initialization token for peoplePicker != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.peoplePicker);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *&v2[v4];
    if (v15)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v16 = v15;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Updating selectedCallerID to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v21 = *&v2[v4];
  v22 = v21;
  PeoplePickerViewController.updatePillView(callerID:)(v21);
}

void *PeoplePickerViewController.selectedCallerID.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t PeoplePickerViewController.selectedCallerID.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_44_0();
}

void *PeoplePickerViewController.currentConversationIsAVLess.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  if (((*(*static Defaults.shared + 904))() & 1) == 0)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (result)
  {
    return ([result avMode] == 0);
  }

  return result;
}

void *PeoplePickerViewController.smsAccount.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount);
  v3 = v2;
  if (v2 == 1)
  {
    closure #1 in PeoplePickerViewController.smsAccount.getter();
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    outlined consume of IMAccount??(v5);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

void closure #1 in PeoplePickerViewController.smsAccount.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() smsService];
    v3 = [v1 accountsForService_];

    if (v3)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount, 0x1E69A5A78);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](0, v4);
        }

        else
        {
          v5 = *(v4 + 32);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t PeoplePickerViewController.maxParticipantLimit.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit);
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in PeoplePickerViewController.maxParticipantLimit.getter();
  *v1 = result;
  v1[8] = 0;
  return result;
}

unint64_t closure #1 in PeoplePickerViewController.maxParticipantLimit.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD000000000000013, 0x80000001BC4F94E0, v0);

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  outlined init with copy of LinkShareCoordinatorProtocol?(&v8, &v6, &_sypSgMd, &_sypSgMR);
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    outlined destroy of TapInteractionHandler?(&v8, &_sypSgMd, &_sypSgMR);
    return 32;
  }

  v3 = [v5 unsignedIntegerValue];

  outlined destroy of TapInteractionHandler?(&v8, &_sypSgMd, &_sypSgMR);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    outlined destroy of TapInteractionHandler?(&v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  return v3;
}

uint64_t key path getter for PeoplePickerViewController.delegate : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.delegate : PeoplePickerViewController(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x378);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t PeoplePickerViewController.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeoplePickerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate;
  OUTLINED_FUNCTION_3_5(v4, v6);
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path getter for PeoplePickerViewController.appName : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x388))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.appName : PeoplePickerViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x390);

  return v4(v2, v3);
}

void PeoplePickerViewController.appName.didset(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  swift_beginAccess();
  v6 = v5[1];
  if (!v6)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_10:
    PeoplePickerViewController.updateNavigationTitle()();
  }
}

void PeoplePickerViewController.updateNavigationTitle()()
{
  v1 = v0;
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    v26 = [v0 navigationItem];
    v2 = [objc_opt_self() conversationKit];
    v25 = 0xE000000000000000;
    v3 = 0x454341465F57454ELL;
    v6 = 0xEC000000454D4954;
    v4 = 0x61737265766E6F43;
    v5 = 0xEF74694B6E6F6974;
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1)
  {
    v26 = [v0 navigationItem];
    v2 = [objc_opt_self() conversationKit];
    v25 = 0xE000000000000000;
    v3 = 0x504F45505F444441;
    v4 = 0x61737265766E6F43;
    v5 = 0xEF74694B6E6F6974;
    v6 = 0xEA0000000000454CLL;
LABEL_5:
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v2, v7, *(&v25 - 1));

    outlined bridged method (mbnn) of @objc UINavigationItem.title.setter(v9._countAndFlagsBits, v9._object, v26);
    goto LABEL_9;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = [objc_opt_self() conversationKit];
  v28._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F98F0;
  v13._countAndFlagsBits = 0xD000000000000017;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v28);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v15._countAndFlagsBits, v15._object, v10);
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(2u).super.isa;

  [v10 setFont_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAC30;
  *(v18 + 32) = v10;
  v19 = v10;
  UIStackView.__allocating_init(arrangedSubviews:)(v20, v18);
  v22 = v21;
  v23 = PeoplePickerViewController.navigationSubtitle.getter();
  if (v23)
  {
    v24 = v23;
    [v22 setSpacing_];
    [v22 addArrangedSubview_];
  }

  [v22 setAxis_];
  [v22 setAlignment_];
  [v22 setDistribution_];
  v26 = [v1 navigationItem];
  [v26 setTitleView_];

LABEL_9:
}

uint64_t PeoplePickerViewController.appName.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_38_2();
}

double PeoplePickerViewController.appName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  OUTLINED_FUNCTION_3_5(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName, v9);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  PeoplePickerViewController.appName.didset(v6, v7);

  return result;
}

uint64_t PeoplePickerViewController.appName.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = v4[1];
  v3[3] = *v4;
  v3[4] = v5;

  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.appName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    PeoplePickerViewController.appName.setter(v3, v4);
  }

  else
  {
    PeoplePickerViewController.appName.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t key path getter for PeoplePickerViewController.stagedActivity : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.stagedActivity : PeoplePickerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3A8);
  v4 = *a1;
  return v3(v2);
}

void PeoplePickerViewController.stagedActivity.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    PeoplePickerViewController.updateNavigationTitle()();
  }
}

void *PeoplePickerViewController.stagedActivity.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerViewController.selectedCallerID.setter(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_17(a1, a2, a3);
  v7 = *(v4 + v6);
  *(v4 + v6) = v5;
  v8 = v5;
  v3(v7);
}

uint64_t PeoplePickerViewController.stagedActivity.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.selectedCallerID.modify(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t key path getter for PeoplePickerViewController.initialRecipientDestinations : PeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerViewController.initialRecipientDestinations : PeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);

  return v2(v3);
}

void PeoplePickerViewController.initialRecipientDestinations.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v5 = *(v2 + 16);

    v6 = 0;
LABEL_3:
    v7 = v2 + 40 + 16 * v6;
    while (v5 != v6)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      ++v6;
      v8 = v7 + 16;

      v9 = PeoplePickerViewController.composeRecipient(for:)();

      v7 = v8;
      if (v9)
      {
        MEMORY[0x1BFB20CC0](v10);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v17;
        goto LABEL_3;
      }
    }

    v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v11 setRecipients_];

    v13 = specialized Array.count.getter();
    for (i = 0; v13 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB22010](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v4 + 8 * i + 32);
      }

      v16 = v15;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      PeoplePickerViewController.addRecipient(_:)(v15);
    }
  }
}

id PeoplePickerViewController.composeRecipient(for:)()
{
  v0 = MEMORY[0x1BFB209B0]();
  v1 = outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(v0, &selRef_stringByRemovingWhitespace);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 contactStore];

  v8 = MEMORY[0x1BFB209B0](v3, v4);
  v9 = [v7 contactForDestinationId_];

  v10 = MEMORY[0x1BFB209B0](v3, v4);
  LOBYTE(v8) = [v10 destinationIdIsEmailAddress];

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v13 = MEMORY[0x1BFB209B0](v3, v4);
    v14 = [v13 destinationIdIsPhoneNumber];

    if (v14)
    {
      v11 = 1;
    }

    else
    {
      v11 = 5;
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x1E6996408]);
  return @nonobjc CNComposeRecipient.init(contact:address:kind:)(v9, v3, v4, v11, v16);
}

void PeoplePickerViewController.addRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v5;
    v21[0] = v9;
    *v8 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[PeoplePickerViewController] Adding recipient: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  v14 = [objc_opt_self() sharedManager];
  CNComposeRecipient.idsDestinations()();
  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x3D0))(v16))
  {
    v17 = 63;
  }

  else
  {
    v17 = 47;
  }

  [v14 beginQueryWithDestinations:v15.super.isa services:{v17, v20, v21[0]}];

  PeoplePickerViewController.currentRecipientsAddresses()();
  v18 = PeoplePickerViewController.callFilterPolicy(for:)();

  v19 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy;
  swift_beginAccess();
  *(v2 + v19) = v18;

  PeoplePickerViewController.updateState()();
}

double PeoplePickerViewController.callerIDs.setter(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_17(a1, a2, a3);
  v7 = *(v4 + v6);
  *(v4 + v6) = v5;
  v3(v7);

  return result;
}

uint64_t PeoplePickerViewController.initialRecipientDestinations.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_32(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_44_0();
}

void PeoplePickerViewController.callerIDs.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

uint64_t PeoplePickerViewController.includeMessagesInIDSQueries.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 2)
  {
    return 1;
  }

  else
  {
    return PeoplePickerViewController.currentConversationIsAVLess.getter();
  }
}

unint64_t PeoplePickerViewController.defaultActionBarButtonStyle.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    return 2;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1)
  {
    return PeoplePickerViewController.currentConversationIsAVLess.getter() & 1;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  if ((*(*static Defaults.shared + 904))())
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a6;
  v149 = a5;
  v150 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = &v134 - v12;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v152 = v13;
  v153 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v138 = v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd, _s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v143 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v134 - v18;
  LODWORD(v148) = *a1;
  v19 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v20 = objc_opt_self();
  *(v7 + v19) = [v20 systemTealColor];
  v21 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v7 + v21) = [v20 systemGrayColor];
  v22 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v7 + v22) = [v20 systemGreenColor];
  v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v7 + v23) = [v20 systemRedColor];
  v24 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v24 = xmmword_1BC4C33E0;
  *(v24 + 16) = 0x4034000000000000;
  v25 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v7 + v25) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v26 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView, 0x1E69D89E8);
  *(v7 + v26) = OUTLINED_FUNCTION_3_58(v27, v28, v29, v30);
  v31 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v7 + v31) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter())
  {
    v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v32;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = specialized Array.count.getter();
  v35 = MEMORY[0x1E69E7CD0];
  if (v34)
  {
    v36 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v36;
  v37 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v35;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v35;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v35;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v35;
  v38 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v7 + v38) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v33;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  v39 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v40 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v40 = 0;
  *(v40 + 8) = 1;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v41 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v33;
  v43 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v43 = 0;
  v43[1] = 0;
  v44 = v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0;
  v45 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *(v7 + v45) = PassthroughSubject.init()();
  v47 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  swift_allocObject();
  *(v7 + v47) = PassthroughSubject.init()();
  v48 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  v151 = v46;
  swift_allocObject();
  *(v7 + v48) = PassthroughSubject.init()();
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) = v148;
  v49 = *(v7 + v39);
  *(v7 + v39) = a3;
  v50 = a3;

  OUTLINED_FUNCTION_3_5(v7 + v42, v158);
  v51 = *(v7 + v42);
  *(v7 + v42) = a4;
  v136 = a4;

  if (v150)
  {
    *(v7 + v37) = v150;
  }

  v52 = (v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_setPreventsApplicationTerminationWhenModal);
  v53 = v142;
  *v52 = v149;
  v52[1] = v53;
  v54 = objc_allocWithZone(MEMORY[0x1E69963C0]);

  v55 = [v54 initWithSearchType_];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) = v55;
  type metadata accessor for PeoplePickerViewModel();
  OUTLINED_FUNCTION_37_0();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel) = PeoplePickerViewModel.init(activeConversation:)(a3);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v135 = v50;
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy) = Dictionary.init(dictionaryLiteral:)();
  v56 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView) = v56;
  v57 = [objc_opt_self() buttonWithType_];
  v58 = OUTLINED_FUNCTION_47_8(v57, OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_audioButton);
  v59 = OUTLINED_FUNCTION_47_8(v58, OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_videoButton);
  *(v7 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addPeopleButton) = v59;
  v60 = type metadata accessor for PeoplePickerViewController();
  v156 = v7;
  v157 = v60;
  OUTLINED_FUNCTION_3_0();
  v63 = objc_msgSendSuper2(v61, v62);
  v64 = [objc_allocWithZone(type metadata accessor for iOSPeoplePickerAddButtonHandler()) init];
  v65 = &v63[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler];
  *v65 = v64;
  *(v65 + 1) = &protocol witness table for iOSPeoplePickerAddButtonHandler;
  swift_unknownObjectRelease();
  if (*v65)
  {
    v66 = *(v65 + 1);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_20();
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = *(v66 + 64);
    swift_unknownObjectRetain();

    v69(partial apply for closure #1 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:), v68, ObjectType, v66);
    swift_unknownObjectRelease();

    if (*v65)
    {
      v70 = *(v65 + 1);
      v71 = swift_getObjectType();
      v72 = *(v70 + 16);
      swift_unknownObjectRetain();
      v73 = v63;
      v72(v63, v71, v70);
      swift_unknownObjectRelease();
      if (*v65)
      {
        v74 = *(v65 + 1);
        v75 = swift_getObjectType();
        v76 = *&v73[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
        v77 = *(v74 + 40);
        swift_unknownObjectRetain();
        v78 = v76;
        v77(v76, v75, v74);
        swift_unknownObjectRelease();
      }
    }
  }

  v154[0] = *&v63[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject];

  v79 = v138;
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v137 = objc_opt_self();
  v80 = [v137 mainRunLoop];
  v155 = v80;
  v149 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v81 = v139;
  v82 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v148 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  v147 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF88]);
  v146 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v86 = v140;
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v81, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v87 = *(v153 + 8);
  v153 += 8;
  v145 = v87;
  v87(v79, v152);

  OUTLINED_FUNCTION_20();
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_36_13(v88);
  OUTLINED_FUNCTION_24();
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for closure #2 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v89 + 24) = v154;
  v144 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<PassthroughSubject<(), Never>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd, _s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE50]);
  v90 = v63;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_42_12();

  v143 = *(v143 + 8);
  v91 = OUTLINED_FUNCTION_40_2();
  v92(v91);
  *&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer] = v86;

  v154[0] = *&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject];

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v93 = v137;
  v94 = [v137 mainRunLoop];
  v155 = v94;
  v95 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v149);
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v81, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v145(v79, v152);

  OUTLINED_FUNCTION_20();
  v98 = swift_allocObject();
  OUTLINED_FUNCTION_36_13(v98);
  OUTLINED_FUNCTION_24();
  v99 = swift_allocObject();
  *(v99 + 16) = partial apply for closure #3 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v99 + 24) = v154;
  v100 = Publisher<>.sink(receiveValue:)();

  v101 = OUTLINED_FUNCTION_40_2();
  (v143)(v101);
  *&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer] = v100;

  v154[0] = *&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject];

  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v102 = [v93 mainRunLoop];
  v155 = v102;
  v103 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v149);
  OUTLINED_FUNCTION_12_29();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v81, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  v145(v79, v152);

  OUTLINED_FUNCTION_20();
  v106 = swift_allocObject();
  OUTLINED_FUNCTION_36_13(v106);

  OUTLINED_FUNCTION_24();
  v107 = swift_allocObject();
  *(v107 + 16) = partial apply for closure #4 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:);
  *(v107 + 24) = v154;
  v108 = Publisher<>.sink(receiveValue:)();

  v109 = OUTLINED_FUNCTION_40_2();
  (v143)(v109);
  *&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer] = v108;

  v110 = v150;
  if (!v150)
  {
    goto LABEL_31;
  }

  if (!*(v150 + 16))
  {

LABEL_31:

    return;
  }

  v111 = v150 + 56;
  v112 = 1 << *(v150 + 32);
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v150 + 56);
  v115 = (v112 + 63) >> 6;

  v116 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v118 = v116;
    if (!v114)
    {
      break;
    }

LABEL_22:
    v119 = __clz(__rbit64(v114));
    v114 &= v114 - 1;
    v120 = (*(v110 + 48) + ((v116 << 10) | (16 * v119)));
    v121 = *v120;
    v122 = v120[1];

    v123 = MEMORY[0x1BFB209B0](v121, v122);
    v124 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v124)
    {
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v117 = v130;
      }

      v128 = *(v117 + 16);
      if (v128 >= *(v117 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v117 = v131;
      }

      *(v117 + 16) = v128 + 1;
      v129 = v117 + 16 * v128;
      *(v129 + 32) = v125;
      *(v129 + 40) = v127;
      v110 = v150;
    }

    else
    {
    }
  }

  while (1)
  {
    v116 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      break;
    }

    if (v116 >= v115)
    {

      v132 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v117);
      v133 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
      OUTLINED_FUNCTION_3_5(&v90[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations], v154);
      *&v90[v133] = v132;

      PeoplePickerViewController.scheduleIDSQuery()();
      goto LABEL_31;
    }

    v114 = *(v111 + 8 * v116);
    ++v118;
    if (v114)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void closure #1 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) addRecipient_];
  }
}

void PeoplePickerViewController.scheduleIDSQuery()()
{
  v0 = [objc_opt_self() sharedManager];
  swift_beginAccess();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 beginBatchQueryWithDestinations_];
}

void PeoplePickerViewController.scheduleIDSQueryForGroups()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);

  specialized Set.union<A>(_:)(v3, v2);
  *(v0 + v1) = v4;

  v5 = [objc_opt_self() sharedManager];

  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))(v7))
  {
    v8 = 63;
  }

  else
  {
    v8 = 47;
  }

  [v5 beginBatchQueryWithDestinations:v6.super.isa services:v8];
}

void PeoplePickerViewController.scheduleIDSCachedQuery()()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  v3 = *(v0 + v2);

  specialized Set.union<A>(_:)(v4, v3);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))(v6))
  {
    v7 = 63;
  }

  else
  {
    v7 = 47;
  }

  [v1 beginCachedQueryWithDestinations:v5.super.isa services:v7];
}

void PeoplePickerViewController.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 systemTealColor];
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v1 + v4) = [v3 systemGrayColor];
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v1 + v5) = [v3 systemGreenColor];
  v6 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v1 + v6) = [v3 systemRedColor];
  v7 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v7 = xmmword_1BC4C33E0;
  *(v7 + 16) = 0x4034000000000000;
  v8 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v9 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView, 0x1E69D89E8);
  *(v1 + v9) = OUTLINED_FUNCTION_3_58(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v1 + v14) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = specialized Array.count.getter();
  v18 = MEMORY[0x1E69E7CD0];
  if (v17)
  {
    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v19;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v18;
  v20 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v1 + v20) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v16;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v21 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v22 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v16;
  v23 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v23 = 0;
  v23[1] = 0;
  v24 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *(v1 + v25) = PassthroughSubject.init()();
  v26 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v26) = PassthroughSubject.init()();
  v27 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v27) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  OUTLINED_FUNCTION_20_17();
  __break(1u);
}

id PeoplePickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void PeoplePickerViewController.init(nibName:bundle:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 systemTealColor];
  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
  *(v1 + v4) = [v3 systemGrayColor];
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
  *(v1 + v5) = [v3 systemGreenColor];
  v6 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictedRecipientTintColor;
  *(v1 + v6) = [v3 systemRedColor];
  v7 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_constants;
  *v7 = xmmword_1BC4C33E0;
  *(v7 + 16) = 0x4034000000000000;
  v8 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v9 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPPillView, 0x1E69D89E8);
  *(v1 + v9) = OUTLINED_FUNCTION_3_58(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter;
  *(v1 + v14) = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  if (specialized Array.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = specialized Array.count.getter();
  v18 = MEMORY[0x1E69E7CD0];
  if (v17)
  {
    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients) = v19;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v18;
  v20 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher;
  *(v1 + v20) = [objc_allocWithZone(FaceTimeAccountFetcher) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDs) = v16;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_selectedCallerID) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount) = 1;
  v21 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___maxParticipantLimit;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v22 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_appName);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stagedActivity) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_initialRecipientDestinations) = v16;
  v23 = (v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler);
  *v23 = 0;
  v23[1] = 0;
  v24 = v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *(v1 + v25) = PassthroughSubject.init()();
  v26 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v26) = PassthroughSubject.init()();
  v27 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_18_26();
  *(v1 + v27) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSQueryGroupDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_scheduleIDSCachedQueryDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static PeoplePickerViewController.preferredModalPresentationStyle(trailCollection:)(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  v2 = 1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  if (v1 == 5)
  {
    return -2;
  }

  else
  {
    return v2;
  }
}

Swift::Void __swiftcall PeoplePickerViewController.viewDidLoad()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) addDelegate:v0 queue:0];
  PeoplePickerViewController.initializeMeHandles()();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setPreservesSuperviewLayoutMargins_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() systemBackgroundColor];
      [v5 setBackgroundColor_];

      PeoplePickerViewController.setUpStackView()();
      v7 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView;
      v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView);
      PeoplePickerViewController.setUpPillView(containerView:)(v8);

      v9 = *(v0 + v7);
      PeoplePickerViewController.setUpSearchControllerView(containerView:)(v9);

      PeoplePickerViewController.refreshCallerIDPicker()();
      v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D8))();
      PeoplePickerViewController.updatePillView(callerID:)(v10);

      v11 = [objc_opt_self() defaultCenter];
      [v11 addObserver:v0 selector:sel_handleIDSStatusChangedWithNotification_ name:*MEMORY[0x1E69D8FA0] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void PeoplePickerViewController.initializeMeHandles()()
{
  v1 = [objc_opt_self() sharedController];
  [v1 blockUntilConnected];

  v2 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v3 = [objc_opt_self() sharedInstance];
  if (!v3 || (v4 = v3, v5 = [objc_opt_self() facetimeService], v6 = objc_msgSend(v4, sel_accountsForService_, v5), v4, v5, !v6))
  {
LABEL_17:
    *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles) = v2;

    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount, 0x1E69A5A78);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Array.count.getter();
  if (!v8)
  {

    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB22010](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if ([v11 registrationStatus] == 5)
    {
      outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = String.lowercased()();

      specialized Set._Variant.insert(_:)(v16, v15._countAndFlagsBits, v15._object);
    }

    else
    {
    }

    ++v10;
    if (v13 == v9)
    {

      v2 = v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void PeoplePickerViewController.setUpStackView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_stackView] setAxis_];
  [*&v0[v1] setAlignment_];
  [*&v0[v1] setDistribution_];
  [*&v0[v1] setPreservesSuperviewLayoutMargins_];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 safeAreaLayoutGuide];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 keyboardLayoutGuide];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA7F0;
  v11 = [*&v0[v1] topAnchor];
  v12 = [v6 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [*&v0[v1] leadingAnchor];
  v15 = [v6 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v6 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [*&v0[v1] bottomAnchor];
  v21 = [v9 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  v23 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints_];
}

id PeoplePickerViewController.setUpPillView(containerView:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);
  [v4 setDelegate_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addArrangedSubview_];

  return [a1 setCustomSpacing:v4 afterView:8.0];
}

void PeoplePickerViewController.setUpSearchControllerView(containerView:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v4 setDelegate_];

    v7 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
    outlined bridged method (mbnn) of @objc CNAutocompleteSearchController.otherRecipientAddresses.setter(v7, v4);
    [v4 setExpandRecipientsInNamedGroups_];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = type metadata accessor for PeoplePickerViewController.FakeFooterView();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCC15ConversationKit26PeoplePickerViewController14FakeFooterView_action];
    *v11 = partial apply for closure #1 in PeoplePickerViewController.setUpSearchControllerView(containerView:);
    v11[1] = v8;
    v48.receiver = v10;
    v48.super_class = v9;
    v12 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v4 setFooterView_];

    [v6 setPreservesSuperviewLayoutMargins_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addChildViewController_];
    [a1 addArrangedSubview_];
    v13 = [v4 didMoveToParentViewController_];
    v14 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x3D8))(v13);
    v16 = objc_allocWithZone(type metadata accessor for PeoplePickerActionBar(0));
    v17 = PeoplePickerActionBar.init(frame:buttonsStyle:)(v15);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = *((*v14 & *v17) + 0x118);
    v19 = swift_unknownObjectRetain();
    v18(v19, &protocol witness table for PeoplePickerViewController);
    [a1 addArrangedSubview_];
    v47 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BC4BC370;
    v21 = [v17 leadingAnchor];
    v22 = [a1 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v20 + 32) = v23;
    v24 = [v17 trailingAnchor];
    v25 = [a1 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v20 + 40) = v26;
    v27 = [v17 bottomAnchor];
    v28 = [a1 &off_1E7FE9D20 + 5];
    v29 = [v27 constraintEqualToAnchor_];

    *(v20 + 48) = v29;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints_];

    v31 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
    *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar) = v17;
    v32 = v17;

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BC370;
    v34 = [v6 leadingAnchor];
    v35 = [a1 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v33 + 32) = v36;
    v37 = [v6 bottomAnchor];
    v38 = [v32 topAnchor];

    v39 = [v37 constraintEqualToAnchor_];
    *(v33 + 40) = v39;
    v40 = [v6 trailingAnchor];
    v41 = [a1 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    *(v33 + 48) = v42;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints_];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.conversationKit;
    v45 = static os_log_type_t.error.getter();
    v46 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("Search controller view doesn't exits", 36, 2, &dword_1BBC58000, v44, v45, v46);
  }
}

Swift::Void __swiftcall PeoplePickerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  PeoplePickerViewController.setUpNavigationBar()();
  PeoplePickerViewController.updateState()();
  [*&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] becomeFirstResponder];
}

void PeoplePickerViewController.setUpNavigationBar()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];
    [v3 setPrefersLargeTitles_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
    inited = swift_initStackObject();
    v5 = MEMORY[0x1E69DB650];
    *(inited + 16) = xmmword_1BC4BA940;
    v6 = *v5;
    *(inited + 32) = *v5;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 labelColor];
    *(inited + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    *(inited + 40) = v9;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
    v10 = Dictionary.init(dictionaryLiteral:)();
    outlined bridged method (mbnn) of @objc UINavigationBar.largeTitleTextAttributes.setter(v10, v3);
    type metadata accessor for PeoplePickerViewController();
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v11 = v0;
    @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
    v13 = v12;
    v14 = [v11 navigationItem];
    [v14 setRightBarButtonItem_];

    PeoplePickerViewController.updateNavigationTitle()();
    v15 = [v11 navigationItem];
    [v15 _setLargeTitleTwoLineMode_];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v17, "Navigation controller doesn't exist", v18, 2u);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }
  }
}

void PeoplePickerViewController.updateState()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v3 = v68;
    v4 = v69;
    v5 = v70;
    v6 = v71;
    v7 = v72;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = ((v5 + 64) >> 6);
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_20;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v18 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
      PeoplePickerViewController.tintColor(for:isChild:)(v16, 0);
      v20 = v19;
      [v18 setTintColor:v19 forRecipient:v16];

      v21 = PeoplePickerViewController.preferredRecipient(for:)(v16);
      if (v21)
      {
        v22 = v21;
        [v18 setPreferredRecipient:v21 forRecipient:v16];
      }

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v66 = v17;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
        swift_dynamicCast();
        v16 = v67;
        v14 = v6;
        v15 = v7;
        if (v67)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_20:
  outlined consume of Set<TUHandle>.Iterator._Variant(v3);
  v23 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel];
  PeoplePickerViewController.activeParticipantsAddresses()();
  v25 = v24;
  v26 = PeoplePickerViewController.currentRecipientsAddresses()();
  specialized Set.union<A>(_:)(v26, v25);
  v27 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style;
  LOBYTE(v67) = v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style];
  PeoplePickerViewModel.update(for:style:)(v28, &v67);

  PeoplePickerViewController.updateActionBarState()();
  PeoplePickerViewController.updateHelpText()();
  if (specialized Array.count.getter())
  {
    v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
  }

  v67 = v29;
  v30 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
  v31 = [v30 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = specialized Array.count.getter();
  v34 = v33;
  v65 = v32;
  v64 = v23;
  if (!v33)
  {
    v37 = 0x8000;
    goto LABEL_36;
  }

  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_67;
  }

  v35 = 0;
  v36 = v32 & 0xC000000000000001;
  v37 = 0x8000;
  do
  {
    if (v36)
    {
      v38 = MEMORY[0x1BFB22010](v35, v32);
    }

    else
    {
      v38 = *(v32 + 8 * v35 + 32);
    }

    v39 = v38;
    PeoplePickerViewController.presentationOptions(for:)(v38);
    v41 = v40;
    if ((v40 & 0x10001) != 0)
    {
      [v30 setPresentationOptions:v40 forRecipient:v39];
      specialized Set._Variant.insert(_:)(&v66, v39);
    }

    else
    {

      if ((v41 & 2) != 0)
      {
        v37 = 2;
      }
    }

    ++v35;
    v32 = v65;
  }

  while (v34 != v35);
LABEL_36:

  specialized _ArrayProtocol.filter(_:)(v42, &v67);
  PeoplePickerViewController.updatePresentationOptions(_:for:)(v37, v43);

  if (specialized Set.count.getter() >= 1)
  {
    PeoplePickerViewController.setActionUnavailable()();
  }

  v44 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation];
  if (v44)
  {
    v6 = v44;
    v45 = [v6 link];
    if (!v45)
    {
      goto LABEL_50;
    }

    v46 = [v6 otherInvitedHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, MEMORY[0x1E69E81B8]);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = specialized Set.count.getter();

    if (v47)
    {
      goto LABEL_50;
    }

    v32 = v65;
    if (v1[v27] != 1 || specialized Array.count.getter() != 1 || !v34)
    {
      goto LABEL_50;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v65 & 0xC000000000000001) == 0, v65);
    if ((v65 & 0xC000000000000001) == 0)
    {
      v48 = *(v65 + 32);
LABEL_46:
      v11 = v48;
      if (([v48 isGroup] & 1) != 0 || *(*&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses] + 16) > 1uLL || PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()())
      {

        goto LABEL_51;
      }

LABEL_56:
      v52 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v11, &selRef_address);
      if (v53)
      {
        v54 = MEMORY[0x1BFB209B0](v52);
      }

      else
      {
        v54 = 0;
      }

      v55 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v55)
      {

        goto LABEL_54;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      if (PeoplePickerViewModel.isWebCapableAvailable(for:)(v59))
      {
        v60._countAndFlagsBits = v56;
        v60._object = v58;
        v61 = PeoplePickerViewModel.isModernAvailable(for:)(v60);

        if (!v61)
        {
          PeoplePickerViewController.setActionUnavailable()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BC4BAC30;
          *(inited + 32) = v11;
          v63 = v11;
          PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 3, inited);

          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          goto LABEL_51;
        }
      }

      else
      {
      }

LABEL_50:
      goto LABEL_51;
    }

LABEL_67:
    v48 = MEMORY[0x1BFB22010](0, v32);
    goto LABEL_46;
  }

LABEL_51:
  v49 = [v1 view];
  if (v49)
  {
    v50 = v49;
    [v49 setNeedsLayout];

    v51 = [v1 view];
    if (v51)
    {
      v11 = v51;

      [v11 layoutIfNeeded];

LABEL_54:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t PeoplePickerViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  outlined init with copy of LinkShareCoordinatorProtocol?(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator, v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMR);
  if (!v12)
  {
    return outlined destroy of TapInteractionHandler?(v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMR);
  }

  outlined init with copy of IDSLookupManager(v11, v10);
  outlined destroy of TapInteractionHandler?(v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMR);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v7 = OUTLINED_FUNCTION_44_0();
  v8(v7);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

Swift::Void __swiftcall PeoplePickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x370))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PeoplePickerViewController.willDismissViewAnimated(_:)(Swift::Bool a1)
{
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:a1 completion:0];
  }
}

void PeoplePickerViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
    OUTLINED_FUNCTION_1_65();
    lazy protocol witness table accessor for type TUCall and conformance TUCall(v2, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0, v3);
    Set.Iterator.init(_cocoa:)();
    v5 = v38;
    v4 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    OUTLINED_FUNCTION_7_1();
    v17 = v16 & v15;
    v19 = *(*(v5 + 48) + ((v14 << 9) | (8 * v18)));
    if (!v19)
    {
LABEL_29:
      v32 = OUTLINED_FUNCTION_4_42();
      outlined consume of Set<TUHandle>.Iterator._Variant(v32);
      return;
    }

    while (1)
    {
      v20 = [v19 key];
      if (v20)
      {
        break;
      }

      v21 = v19;
LABEL_27:

      v7 = v14;
      v8 = v17;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
        swift_dynamicCast();
        v19 = v36;
        v14 = v7;
        v17 = v8;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    v21 = v20;
    v22 = [v20 charactersIgnoringModifiers];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
        OUTLINED_FUNCTION_1_65();
        lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0, v29);
        isa = Set._bridgeToObjectiveC()().super.isa;
        v31 = type metadata accessor for PeoplePickerViewController();
        v37.receiver = v35;
        v37.super_class = v31;
        objc_msgSendSuper2(&v37, sel_pressesBegan_withEvent_, isa, a2);

LABEL_26:
        goto LABEL_27;
      }
    }

    PeoplePickerViewController.handleCancel()();
    goto LABEL_26;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_29;
    }

    ++v13;
    if (*(v4 + 8 * v14))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t PeoplePickerViewController.handleCancel()()
{
  v1 = PeoplePickerViewController.reset()();
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x370))(v1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id PeoplePickerViewController.FakeFooterView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*protocol witness for PeoplePickerViewControllerProtocol.delegate.modify in conformance PeoplePickerViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x380))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for PeoplePickerViewControllerProtocol.appName.modify in conformance PeoplePickerViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x398))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for PeoplePickerViewControllerProtocol.stagedActivity.modify in conformance PeoplePickerViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3B0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for PeoplePickerViewControllerProtocol.initialRecipientDestinations.modify in conformance PeoplePickerViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t PeoplePickerViewController.handleIDSStatusChanged(notification:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.conversationKit;
  v9 = static os_log_type_t.info.getter();
  v10 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)("IDS status changed", 18, 2, &dword_1BBC58000, v8, v9, MEMORY[0x1E69E7CC0]);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in PeoplePickerViewController.handleIDSStatusChanged(notification:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = v10;
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v7, v4, v13);
  _Block_release(v13);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t PeoplePickerViewController.cancelButtonTapped()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.conversationKit;
  v1 = static os_log_type_t.info.getter();
  os_log(_:dso:log:type:_:)("Cancel button tapped", 20, 2, &dword_1BBC58000, v0, v1, MEMORY[0x1E69E7CC0]);

  return PeoplePickerViewController.handleCancel()();
}

id PeoplePickerViewController.reset()()
{
  v1 = v0;
  PeoplePickerViewController.cancelQueries()();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySSSo8NSNumberC_GMd, &_sSD8_VariantVySSSo8NSNumberC_GMR);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7CD0];
  *(v1 + v2) = MEMORY[0x1E69E7CD0];

  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients;
  swift_beginAccess();
  *(v1 + v4) = v3;

  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  *(v1 + v5) = v3;

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v3;

  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;

  return [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) prepareForReuse];
}

double PeoplePickerViewController.startCall(videoEnabled:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13MessagesGroupVSgMd, &_s15ConversationKit13MessagesGroupVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v6 + 16), 0);
  v7 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  PeoplePickerViewController.pickablePersonItems(for:)(v8);
  v10 = v9;

  v12 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x370))(v11))
  {
    v14 = v13;
    v15 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_videoButton;
    v23 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v15 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_audioButton;
    }

    v16 = *(v1 + *v15);
    ObjectType = swift_getObjectType();
    v17 = *((*v12 & *v1) + 0x2D8);
    v18 = v16;
    v19 = v17();
    CNAutocompleteSearchController.messagesGroup.getter(v5);
    (*(v14 + 24))(v10, v23, v18, v19, v5, ObjectType, v14);

    swift_unknownObjectRelease();

    outlined destroy of TapInteractionHandler?(v5, &_s15ConversationKit13MessagesGroupVSgMd, &_s15ConversationKit13MessagesGroupVSgMR);
  }

  else
  {
  }

  return result;
}

id PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(char a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter);
  v8 = *off_1E7FE3DA0[a1];

  return [v7 v8];
}

void PeoplePickerViewController.pickablePersonItems(for:)(uint64_t a1)
{
  v2 = specialized Array.count.getter();
  v3 = 0;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v42 = a1 & 0xC000000000000001;
  v38 = a1;
  v40 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v39 = v2;
  while (v3 != v2)
  {
    v47 = v4;
    if (v42)
    {
      v5 = MEMORY[0x1BFB22010](v3, v38);
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_59;
      }

      v5 = *(v40 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3++, 1);
    if (v7)
    {
      goto LABEL_58;
    }

    if ([v5 isGroup])
    {
      v44 = v3;
      v8 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v6);
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x1E69E7CC0];
        v48[0] = MEMORY[0x1E69E7CC0];
        v11 = specialized Array.count.getter();
        v12 = 0;
        while (1)
        {
          if (v11 == v12)
          {

            v3 = v44;
            goto LABEL_24;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1BFB22010](v12, v9);
          }

          else
          {
            if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = PeoplePickerViewController.pickablePerson(for:)(v13);

          ++v12;
          if (v16)
          {
            MEMORY[0x1BFB20CC0]();
            if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v10 = v48[0];
            v12 = v15;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v17 = PeoplePickerViewController.pickablePerson(for:)(v6);
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BC4BAC30;
      *(v10 + 32) = v18;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v4 = v47;
    if (v10 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v47 >> 62;
    if (v47 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v21 + v19;
    if (__OFADD__(v21, v19))
    {
      goto LABEL_60;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v20)
      {
LABEL_34:
        __CocoaSet.count.getter();
      }

LABEL_35:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_36;
    }

    if (v20)
    {
      goto LABEL_34;
    }

    v23 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_35;
    }

LABEL_36:
    v46 = v19;
    v24 = *(v23 + 16);
    v25 = (*(v23 + 24) >> 1) - v24;
    v26 = v23 + 8 * v24;
    v43 = v23;
    if (v10 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (!v28)
      {
        goto LABEL_50;
      }

      v29 = v28;
      v30 = __CocoaSet.count.getter();
      if (v25 < v30)
      {
        goto LABEL_63;
      }

      if (v29 < 1)
      {
        goto LABEL_65;
      }

      v27 = v30;
      v45 = v3;
      v31 = v26 + 32;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [PickablePerson] and conformance [A], &_sSay15ConversationKit14PickablePersonCGMd, &_sSay15ConversationKit14PickablePersonCGMR, MEMORY[0x1E69E6340]);
      for (i = 0; i != v29; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd, &_sSay15ConversationKit14PickablePersonCGMR);
        v33 = specialized protocol witness for Collection.subscript.read in conformance [A](v48, i, v10);
        v35 = *v34;
        v33(v48, 0);
        *(v31 + 8 * i) = v35;
      }

      v3 = v45;
LABEL_46:

      v2 = v39;
      if (v27 < v46)
      {
        goto LABEL_61;
      }

      if (v27 > 0)
      {
        v36 = *(v43 + 16);
        v7 = __OFADD__(v36, v27);
        v37 = v36 + v27;
        if (v7)
        {
          goto LABEL_62;
        }

        *(v43 + 16) = v37;
      }
    }

    else
    {
      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        if (v25 < v27)
        {
          goto LABEL_64;
        }

        type metadata accessor for PickablePerson();
        swift_arrayInitWithCopy();
        goto LABEL_46;
      }

LABEL_50:

      v2 = v39;
      if (v46 > 0)
      {
        goto LABEL_61;
      }
    }
  }
}

void PeoplePickerViewController.addPeople()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v97 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v96 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v93 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v93 - v12;
  v13 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v15 = OUTLINED_FUNCTION_51_5(v14);

  PeoplePickerViewController.pickablePersonItems(for:)(v15);
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = (v18 + 16);
  if (one-time initialization token for peoplePicker != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.peoplePicker);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_33();
    *v24 = 0;
    _os_log_impl(&dword_1BBC58000, v22, v23, "Add people.", v24, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_20();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_37_0();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v17;
  v26[4] = v18;
  v27 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (!v27)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v37))
    {
      v38 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v38);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v39, v40, "currentConversation is nil.");
      OUTLINED_FUNCTION_26();
    }

    closure #1 in PeoplePickerViewController.addPeople()(v25, v17, v18);

    return;
  }

  v28 = v27;
  v29 = [v28 link];
  v101 = v21;
  v102 = v28;
  if (!v29)
  {

    goto LABEL_25;
  }

  v94 = v26;
  v95 = v18;

  v30 = [v28 otherInvitedHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v31, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, v32);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = specialized Set.count.getter();

  if (v33 < 1)
  {

    v26 = v94;
    v18 = v95;
    goto LABEL_25;
  }

  if (specialized Array.count.getter() != 1)
  {

    v18 = v95;
LABEL_24:
    v26 = v94;
    goto LABEL_25;
  }

  v18 = v95;
  if (*(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16) > 1uLL || !specialized Array.count.getter())
  {

    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v15 & 0xC000000000000001) == 0, v15);
  v26 = v94;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1BFB22010](0, v15);
  }

  else
  {
    v34 = *(v15 + 32);
  }

  v35 = v34;

  if ([v35 isGroup])
  {
  }

  else
  {
    v93 = v35;
    v80 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v35, &selRef_address);
    if (v81)
    {
      v82 = MEMORY[0x1BFB209B0](v80);
    }

    else
    {
      v82 = 0;
    }

    v83 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v83)
    {
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87._countAndFlagsBits = v84;
      v87._object = v86;
      v88 = PeoplePickerViewModel.isWebCapableAvailable(for:)(v87);

      if (v88)
      {
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        v91 = os_log_type_enabled(v89, v90);
        v18 = v95;
        if (v91)
        {
          v92 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v92);
          _os_log_impl(&dword_1BBC58000, v89, v90, "shouldAddOtherInvitedToRemoteMembers = true", v86, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_3_5(v19, v103);
        *v19 = 1;
        v44 = v100;
        goto LABEL_28;
      }

      v18 = v95;
    }

    else
    {
    }
  }

LABEL_25:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = OUTLINED_FUNCTION_25(v42);
  v44 = v100;
  if (v43)
  {
    v45 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v45);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v46, v47, "shouldAddOtherInvitedToRemoteMembers = false");
    OUTLINED_FUNCTION_26();
  }

LABEL_28:
  v48 = v102;
  v49 = [v102 messagesGroupUUID];
  if (v49)
  {
    v50 = v49;
    v51 = v99;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_storeEnumTagSinglePayload(v51, 0, 1, v2);
    outlined destroy of TapInteractionHandler?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v52 = PeoplePickerViewController.currentConversationIsAVLess.getter();
    v48 = v102;
    if ((v52 & 1) == 0)
    {

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v54))
      {
        v55 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v55);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v56, v57, "calling PlatformAlert.confirmAddToMessagesGroup");
        OUTLINED_FUNCTION_26();
      }

      v58 = type metadata accessor for PlatformAlert();

      specialized static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(v1, v58, partial apply for closure #1 in PeoplePickerViewController.addPeople(), v26, v59, v60, v61, v62, v93, v94, v95, v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v97, v98, v99, v100, v101, v102, v103[0], v103[1], v103[2], v104, v105, v106);

      return;
    }
  }

  else
  {
    v63 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v2);
    outlined destroy of TapInteractionHandler?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v102 = v17;
  v64 = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    LODWORD(v101) = v66;
    v67 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v106 = v100;
    *v67 = 136315138;
    v68 = [v64 messagesGroupUUID];
    if (v68)
    {
      v69 = v68;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    __swift_storeEnumTagSinglePayload(v44, v70, 1, v2);
    v71 = v98;
    outlined init with take of UUID?(v44, v98);
    if (__swift_getEnumTagSinglePayload(v71, 1, v2))
    {
      outlined destroy of TapInteractionHandler?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v75 = v96;
      v74 = v97;
      (*(v97 + 16))(v96, v71, v2);
      outlined destroy of TapInteractionHandler?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v76 = UUID.uuidString.getter();
      v99 = v77;
      (*(v74 + 8))(v75, v2);
      v104 = v76;
      v105 = v99;
      v73 = String.init<A>(reflecting:)();
      v72 = v78;
    }

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, &v106);

    *(v67 + 4) = v79;
    _os_log_impl(&dword_1BBC58000, v65, v101, "non-avless conversation messagesGroupUUID: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  closure #1 in PeoplePickerViewController.addPeople()(v25, v102, v18);
}

void closure #1 in PeoplePickerViewController.addPeople()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.peoplePicker);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Did add people.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    v11 = *(v6 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
    swift_beginAccess();
    v12 = PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v11 + 16), 1);
    if ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x370))(v12))
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      (*(v14 + 32))(a2, *(a3 + 16), ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t closure #2 in PeoplePickerViewController.addPeople()(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

void PeoplePickerViewController.dialTelephonyCall(handle:rttType:)(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v5 + 16), 0);
  v6 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  PeoplePickerViewController.pickablePersonItems(for:)(v7);
  v9 = v8;

  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB22010](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    v13 = qword_1BC4C3638[a2];
    v14 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x370))(v12))
    {
      v30 = v15;
      v31 = v13;
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 providerManager];

      v18 = [v17 telephonyProvider];
      v19 = *&v11[OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact];
      if (a1)
      {
        v20 = a1;
      }

      else
      {
        v20 = *&v11[OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle];
      }

      ObjectType = swift_getObjectType();
      v28 = (*((*v14 & *v2) + 0x2D8))(a1);
      v29 = PeoplePickerViewController.matchingSenderIdentity(for:)(v28);

      (*(v30 + 40))(v18, 0, v19, v20, v29, v31, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.conversationKit;
    v22 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd, &_sSay15ConversationKit14PickablePersonCGMR);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:type:_:)("Failed to dial audio call with people %@", 40, 2, &dword_1BBC58000, v21, v22, v23);
  }
}

void PeoplePickerViewController.tintColor(for:isChild:)(void *a1, char a2)
{
  v3 = v2;
  if ([a1 isGroup])
  {
    v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor);
    v7 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (v7)
    {
      v8 = v7;
      v41 = specialized Array.count.getter();
      if (!v41)
      {
LABEL_15:

        return;
      }

      v42 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v9 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](v9, v8);
        }

        else
        {
          if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v10 = *(v8 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        PeoplePickerViewController.tintColor(for:isChild:)(v10, 1);
        v14 = v13;
        if (static NSObject.== infix(_:_:)())
        {

          v15 = v42;
          v42 = v14;
        }

        else
        {
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {

            return;
          }

          v15 = v14;
        }

        ++v9;
        if (v12 == v41)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v17 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
  if (v18)
  {
    v19 = MEMORY[0x1BFB209B0](v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (!PeoplePickerViewController.isIDSLookupPending(for:)(v21, v23))
  {
    v27 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (!v28)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v29 = MEMORY[0x1BFB209B0](v27);

    v30 = [v29 destinationIdIsPhoneNumber];

    v31 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
    if (!v30)
    {
      v31 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
    }

    v32 = *(v3 + *v31);
    if (a2)
    {
      v33 = v32;
    }

    else
    {
      v34 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
      v35 = v32;
      v36 = [v34 recipients];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = specialized Array.count.getter();

      if (v37 <= 0 && *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1)
      {
        v40 = PeoplePickerViewController.isFaceTimeAvailable(for:)(v21, v23);

        if (!v40)
        {
          return;
        }

        goto LABEL_37;
      }
    }

    v38._countAndFlagsBits = v21;
    v38._object = v23;
    v39 = PeoplePickerViewModel.isMultiwayAvailable(for:)(v38);

    if (!v39)
    {
      return;
    }

LABEL_37:
    v24 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
    goto LABEL_23;
  }

LABEL_22:
  v24 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
LABEL_23:
  v25 = *(v3 + v24);

  v26 = v25;
}

id PeoplePickerViewController.preferredRecipient(for:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ([a1 isGroup])
  {
    return v3;
  }

  v4 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = specialized Array.count.getter();
  if (v6 < 2)
  {

    return v3;
  }

  v7 = v6;
  if (one-time initialization token for peoplePickerAutocomplete != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.peoplePickerAutocomplete);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v83 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v87[0] = v13;
    *v12 = 136315138;
    v88 = v9;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v87);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Find preferred recepient for %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v87[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v19 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB22010](v19, v5);
    }

    else
    {
      v20 = *(v5 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    type metadata accessor for RecipientResultWrapper();
    v22 = swift_allocObject();
    *(v22 + 24) = xmmword_1BC4BB7D0;
    *(v22 + 16) = v21;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v7 != v19);
  v23 = v87[0];
  v24 = [*&v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = specialized Array.count.getter();

  if (v25 > 0 || v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style] == 1)
  {
    v26 = implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply;
    v27 = 1;
  }

  else
  {
    v27 = 0;
    v26 = partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:);
  }

  *(swift_allocObject() + 16) = v2;
  v28 = v2;
  v29 = _s15ConversationKit18PeoplePickerRankerC14findDuetHandle4from02isH8EligiblexSgSayxG_SbSSXEtAA0cdH0RzlFZAA22RecipientResultWrapperC_Tt2g5(v23, v26);

  if (v29)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88 = v33;
      *v32 = 136315138;
      v34 = RecipientResultWrapper.idsHandle.getter();
      if (v35)
      {
        v87[0] = v34;
        v87[1] = v35;
        v36 = String.init<A>(reflecting:)();
        v38 = v37;
      }

      else
      {
        v38 = 0xE300000000000000;
        v36 = 7104878;
      }

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v88);

      *(v32 + 4) = v57;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Return duet handle %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
      MEMORY[0x1BFB23DF0](v32, -1, -1);
    }

    v39 = *(v29 + 16);
LABEL_57:

    return v39;
  }

  v41 = v28;

  v87[0] = specialized Array._copyToContiguousArray()(v42);
  specialized MutableCollection<>.sort(by:)(v87, v27, v41);

  v43 = v87[0];

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v87[0] = v79;
    buf = v46;
    *v46 = 136315138;
    v47 = specialized Array.count.getter();
    log = v44;
    v81 = v45;
    if (v47)
    {
      v48 = v47;
      v88 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
      if (v48 < 0)
      {
        __break(1u);
        goto LABEL_61;
      }

      v49 = 0;
      v50 = v88;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](v49, v23);
        }

        else
        {
        }

        v51 = RecipientResultWrapper.idsHandle.getter();
        v53 = v52;

        v88 = v50;
        v55 = *(v50 + 16);
        v54 = *(v50 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
          v50 = v88;
        }

        ++v49;
        *(v50 + 16) = v55 + 1;
        v56 = v50 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
      }

      while (v48 != v49);
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    v88 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    v58 = String.init<A>(reflecting:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v87);

    *(buf + 4) = v60;
    _os_log_impl(&dword_1BBC58000, log, v81, "Unsorted handles: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1BFB23DF0](v79, -1, -1);
    MEMORY[0x1BFB23DF0](buf, -1, -1);
  }

  else
  {
  }

  v45 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v45, v61))
  {

LABEL_54:
    v3 = v83;
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v43 & 0xC000000000000001) == 0, v43);
      if ((v43 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x1BFB22010](0, v43);

        v39 = *(v78 + 16);
        swift_unknownObjectRelease();
        return v39;
      }

      v77 = *(v43 + 32);

      v39 = *(v77 + 16);
      goto LABEL_57;
    }

    return v3;
  }

  v62 = swift_slowAlloc();
  v84 = swift_slowAlloc();
  v87[0] = v84;
  *v62 = 136315138;
  v63 = v43;
  v64 = specialized Array.count.getter();
  v65 = MEMORY[0x1E69E7CC0];
  loga = v62;
  if (!v64)
  {
LABEL_53:
    v88 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    v74 = String.init<A>(reflecting:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v87);

    *(loga + 1) = v76;
    _os_log_impl(&dword_1BBC58000, v45, v61, "Sorted handles: %s", loga, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x1BFB23DF0](v84, -1, -1);
    MEMORY[0x1BFB23DF0](loga, -1, -1);

    v43 = v63;
    goto LABEL_54;
  }

  v66 = v64;
  v82 = v45;
  v88 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64 & ~(v64 >> 63), 0);
  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v65 = v88;
    do
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](v67, v63);
      }

      else
      {
      }

      v68 = RecipientResultWrapper.idsHandle.getter();
      v70 = v69;

      v88 = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1);
        v65 = v88;
      }

      ++v67;
      *(v65 + 16) = v72 + 1;
      v73 = v65 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
    }

    while (v66 != v67);
    v45 = v82;
    goto LABEL_53;
  }

LABEL_61:
  __break(1u);

  __break(1u);
  return result;
}