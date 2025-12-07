void sub_24F0358F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20, &unk_24F9578D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v0 + v11, v10, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v10, type metadata accessor for OverlayCall);
    return;
  }

  v12 = *v10;
  if (([v12 isVideo] & 1) != 0 || (objc_msgSend(v12, sel_isThirdPartyVideo) & 1) != 0 || objc_msgSend(v12, sel_status) != 1)
  {
    goto LABEL_8;
  }

  v13 = [v12 provider];
  v14 = [v13 isSystemProvider];

  if (v14)
  {
    [*(v0 + 16) requestVideoUpgradeForCall:v12 originatingUIType:63];
    [v12 setIsSendingVideo_];
LABEL_8:

    return;
  }

  v15 = [v12 provider];
  v16 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];

  [v16 setVideo_];
  v17 = [v12 handle];
  [v16 setHandle_];

  v18 = [v12 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  sub_24EAEAB48();
  sub_24F92BAA8();

  v19 = sub_24F92BA98();

  [v16 setHandles_];

  [v16 setShowUIPrompt_];
  [v16 setLaunchInBackground_];
  [v16 setOriginatingUIType_];
  v20 = [v12 contactIdentifier];
  [v16 setContactIdentifier_];

  v21 = [v12 localSenderIdentityUUID];
  if (v21)
  {
    v22 = v21;
    sub_24F91F698();

    v23 = sub_24F91F678();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v23 = 0;
  }

  [v16 setLocalSenderIdentityUUID_];

  v24 = [v12 callUUID];
  sub_24F92B0D8();

  sub_24F91F658();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_24F91F678();
    (*(v5 + 8))(v3, v4);
  }

  [v16 setUpgradedFromCallUUID_];

  v26 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_24F035EB8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_104;
  v27 = _Block_copy(aBlock);
  [v26 launchAppForDialRequest:v16 completion:v27];

  _Block_release(v27);
}

void sub_24F035EB8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E760);
    v4 = a1;
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Unable to launchApp for TUDialRequest: %@", v7, 0xCu);
      sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E760);
  oslog = sub_24F9220B8();
  v12 = sub_24F92BDA8();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24E5DD000, oslog, v12, "upgradeToVideo dial request was successful", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }
}

uint64_t sub_24F0360EC()
{
  sub_24F038FF4(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call, type metadata accessor for OverlayCall);

  v1 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8, &unk_24F9C0298);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider, v4);
  v6 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__status;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237708, &qword_24F9C02A8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isVideo, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isUplinkMuted, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isSendingVideo, v4);
  v8 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__remoteParticipantHandles;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237710, &qword_24F9C02B0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__remoteParticipantContacts;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237718, &unk_24F9C02B8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_24F03634C()
{
  sub_24F0360EC();

  return swift_deallocClassInstance();
}

void sub_24F0363CC(uint64_t a1)
{
  type metadata accessor for OverlayCall(319);
  if (v1 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F237668, &unk_27F237670, &qword_24F989C80);
    if (v2 <= 0x3F)
    {
      sub_24EEFCB00(319, &qword_27F21F448, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_24EEFCB00(319, &qword_27F237680, &type metadata for OverlayActiveCallStatus);
        if (v4 <= 0x3F)
        {
          sub_24EEFCB4C(319, &qword_27F237688, &qword_27F237690, &qword_24F98E9E8);
          if (v5 <= 0x3F)
          {
            sub_24EEFCB4C(319, &qword_27F237698, &unk_27F2376A0, &unk_24F9BFF00);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F036638(uint64_t a1)
{
  result = sub_24E69A5C4(319, &qword_27F2376C0, 0x277D6EDE0);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VirtualCall(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0366C0()
{
  result = qword_27F2376D0;
  if (!qword_27F2376D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2376D0);
  }

  return result;
}

uint64_t sub_24F036714@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OverlayActiveCall(0);
  result = sub_24F922FA8();
  *a2 = result;
  return result;
}

double sub_24F036754@<D0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

void sub_24F036770(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F0367F0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F0368EC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, SEL *a5, uint64_t a6, uint64_t a7)
{
  sub_24F033100(*a1, a5);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F0369A8(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a4 = v5;
}

uint64_t sub_24F036A38(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F036AA8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F036B28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_24F9230A8();
}

void sub_24F036BE0(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a4 = v5;
}

uint64_t sub_24F036C70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F036E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayCall(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F036EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F036FFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8, &unk_24F9C0298);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  v37 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
  sub_24F923058();
  (*(v11 + 32))(v3 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  LOBYTE(v37) = 0;
  sub_24F923058();
  v16 = *(v7 + 32);
  v16(v3 + v15, v9, v6);
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  LOBYTE(v37) = 0;
  sub_24F923058();
  v16(v3 + v17, v9, v6);
  *(v3 + 16) = a1;
  sub_24F038F8C(a2, v3 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call, type metadata accessor for VirtualCall);
  type metadata accessor for OverlayCall(0);
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  v19 = sub_24F91F668();
  v20 = (v3 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  *v20 = v19;
  v20[1] = v21;
  swift_beginAccess();
  LOBYTE(v36) = 3;
  sub_24F923058();
  swift_endAccess();
  v22 = type metadata accessor for VirtualCall(0);
  LOBYTE(v17) = *(a2 + v22[10]);
  swift_beginAccess();
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v36) = 1;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v36) = 0;
  sub_24F923058();
  swift_endAccess();
  LOBYTE(v17) = *(a2 + v22[11]);
  v23 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  swift_beginAccess();
  v24 = *(v7 + 8);
  v24(v3 + v23, v6);
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  LOBYTE(v17) = *(a2 + v22[12]);
  v25 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  swift_beginAccess();
  v24(v3 + v25, v6);
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  v26 = *(a2 + v22[7]);
  v27 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  swift_beginAccess();
  (*(v34 + 8))(v3 + v27, v33);
  v36 = v26;
  v28 = v26;
  sub_24F923058();
  swift_endAccess();
  v29 = *(a2 + v22[9]);
  swift_beginAccess();
  v36 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  sub_24F923058();
  swift_endAccess();
  v30 = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2376A0, &unk_24F9BFF00);
  sub_24F923058();
  swift_endAccess();
  sub_24F034F9C();
  sub_24F038FF4(a2, type metadata accessor for VirtualCall);
  return v3;
}

uint64_t sub_24F03755C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v107 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8, &unk_24F9C0298);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v107 - v11;
  v13 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
  sub_24F923058();
  v107[2] = v10;
  v107[3] = v9;
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  LOBYTE(aBlock) = 0;
  sub_24F923058();
  v108 = v6;
  v15 = *(v6 + 32);
  v15(v2 + v14, v8, v5);
  v16 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  LOBYTE(aBlock) = 0;
  sub_24F923058();
  v109 = v5;
  v15(v2 + v16, v8, v5);
  *(v2 + 16) = a1;
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call) = a2;
  type metadata accessor for OverlayCall(0);
  v107[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  v19 = a2;
  v20 = [v19 callUUID];
  v21 = sub_24F92B0D8();
  v23 = v22;

  v24 = (v2 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  *v24 = v21;
  v24[1] = v23;
  v25 = [v19 status];
  if (v25 >= 7)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x5050403020101uLL >> (8 * v25);
  }

  swift_beginAccess();
  LOBYTE(v116) = v26;
  sub_24F923058();
  swift_endAccess();
  if ([v19 isVideo])
  {
    v27 = 1;
  }

  else
  {
    v27 = [v19 isThirdPartyVideo];
  }

  swift_beginAccess();
  LOBYTE(v116) = v27;
  sub_24F923058();
  swift_endAccess();
  v28 = [v19 isUplinkMuted];
  swift_beginAccess();
  LOBYTE(v116) = v28;
  sub_24F923058();
  swift_endAccess();
  v29 = [v19 isSendingVideo];
  swift_beginAccess();
  LOBYTE(v116) = v29;
  sub_24F923058();
  swift_endAccess();
  v30 = [v19 provider];
  v31 = [v30 supportsAudioAndVideo];

  swift_beginAccess();
  v32 = v109;
  v33 = *(v108 + 8);
  v33(v2 + v14, v109);
  LOBYTE(v116) = v31;
  sub_24F923058();
  swift_endAccess();
  v34 = [v19 provider];
  v35 = [v34 isSystemProvider];

  swift_beginAccess();
  v33(v2 + v16, v32);
  LOBYTE(v116) = v35 ^ 1;
  sub_24F923058();
  swift_endAccess();
  v36 = [v19 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  sub_24EAEAB48();
  v37 = sub_24F92BAA8();

  sub_24F032CFC(v37);
  v39 = v38;

  swift_beginAccess();
  v116 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  sub_24F923058();
  swift_endAccess();
  v40 = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v116 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2376A0, &unk_24F9BFF00);
  sub_24F923058();
  swift_endAccess();
  sub_24F034F9C();
  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  v43 = *MEMORY[0x277D6F0A0];
  v44 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038898;
  v115 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_119;
  v45 = _Block_copy(&aBlock);

  v46 = [v42 addObserverForName:v43 object:0 queue:0 usingBlock:v45];
  _Block_release(v45);
  swift_unknownObjectRelease();

  v47 = [v41 defaultCenter];
  v48 = *MEMORY[0x277D6F080];
  v49 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0388D0;
  v115 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_123;
  v50 = _Block_copy(&aBlock);

  v51 = [v47 addObserverForName:v48 object:0 queue:0 usingBlock:v50];
  _Block_release(v50);
  swift_unknownObjectRelease();

  v52 = [v41 defaultCenter];
  v53 = *MEMORY[0x277D6F098];
  v54 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038908;
  v115 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_127;
  v55 = _Block_copy(&aBlock);

  v56 = [v52 addObserverForName:v53 object:0 queue:0 usingBlock:v55];
  _Block_release(v55);
  swift_unknownObjectRelease();

  v57 = [v41 defaultCenter];
  v58 = *MEMORY[0x277D6F048];
  v59 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038940;
  v115 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_131;
  v60 = _Block_copy(&aBlock);

  v61 = [v57 addObserverForName:v58 object:0 queue:0 usingBlock:v60];
  _Block_release(v60);
  swift_unknownObjectRelease();

  v62 = [v41 defaultCenter];
  v63 = *MEMORY[0x277D6F050];
  v64 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038948;
  v115 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_135;
  v65 = _Block_copy(&aBlock);

  v66 = [v62 addObserverForName:v63 object:0 queue:0 usingBlock:v65];
  _Block_release(v65);
  swift_unknownObjectRelease();

  v67 = [v41 defaultCenter];
  v68 = *MEMORY[0x277D6F060];
  v69 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038950;
  v115 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_139;
  v70 = _Block_copy(&aBlock);

  v71 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v70];
  _Block_release(v70);
  swift_unknownObjectRelease();

  v72 = [v41 defaultCenter];
  v73 = *MEMORY[0x277D6F0D8];
  v74 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038958;
  v115 = v74;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_143;
  v75 = _Block_copy(&aBlock);

  v76 = [v72 addObserverForName:v73 object:0 queue:0 usingBlock:v75];
  _Block_release(v75);
  swift_unknownObjectRelease();

  v77 = [v41 defaultCenter];
  v78 = *MEMORY[0x277D6F0A8];
  v79 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038960;
  v115 = v79;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_147;
  v80 = _Block_copy(&aBlock);

  v81 = [v77 addObserverForName:v78 object:0 queue:0 usingBlock:v80];
  _Block_release(v80);
  swift_unknownObjectRelease();

  v82 = [v41 defaultCenter];
  v83 = *MEMORY[0x277D6F078];
  v84 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038968;
  v115 = v84;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_151_0;
  v85 = _Block_copy(&aBlock);

  v86 = [v82 addObserverForName:v83 object:0 queue:0 usingBlock:v85];
  _Block_release(v85);
  swift_unknownObjectRelease();

  v87 = [v41 defaultCenter];
  v88 = *MEMORY[0x277D6F108];
  v89 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0390CC;
  v115 = v89;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_155_0;
  v90 = _Block_copy(&aBlock);

  v91 = [v87 addObserverForName:v88 object:0 queue:0 usingBlock:v90];
  _Block_release(v90);
  swift_unknownObjectRelease();

  v92 = [v41 defaultCenter];
  v93 = *MEMORY[0x277D6F0D0];
  v94 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038970;
  v115 = v94;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_159;
  v95 = _Block_copy(&aBlock);

  v96 = [v92 addObserverForName:v93 object:0 queue:0 usingBlock:v95];
  _Block_release(v95);
  swift_unknownObjectRelease();

  v97 = [v41 defaultCenter];
  v98 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0389A8;
  v115 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_163;
  v99 = _Block_copy(&aBlock);

  v100 = [v97 addObserverForName:v88 object:0 queue:0 usingBlock:v99];
  _Block_release(v99);
  swift_unknownObjectRelease();

  v101 = [v41 defaultCenter];
  v102 = *MEMORY[0x277D6F0B0];
  v103 = swift_allocObject();
  swift_weakInit();

  v114 = sub_24F0389C4;
  v115 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_167_0;
  v104 = _Block_copy(&aBlock);

  v105 = [v101 addObserverForName:v102 object:0 queue:0 usingBlock:v104];
  _Block_release(v104);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_24F038860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F0389CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_24F038A10(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F91EB58() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24F03459C(a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_24F038B54(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F91EB58() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24F033D84(a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_24F038C74(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F91EB58() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24F03397C(a1, v7, v8, v2 + v6, v9);
}

uint64_t objectdestroy_173Tm(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_24F038E6C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F91EB58() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E614970;

  return sub_24F0333E8(a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_24F038F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F038FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F0390D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_24F91F6A8();
  sub_24F91F6A8();
  v5 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  swift_allocObject();
  *(v0 + v5) = sub_24F922FC8();
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshStreamCancellables) = MEMORY[0x277D84F98];
  v6 = sub_24F92B858();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F9C0370, v8);

  v7(v4, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F9C0380, v9);

  return v1;
}

uint64_t sub_24F0392C4()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  v11 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  v22 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  v23 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *(v2 + 16);
  v13(v6, v0 + v10, v1);
  v13(v24, v0 + v11, v1);
  v14 = *(v2 + 80);
  v15 = (v14 + 32) & ~v14;
  v16 = (v3 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(v2 + 32);
  v18(v17 + v15, v6, v1);
  v18(v17 + v16, v24, v1);
  sub_24EA998B8(0, 0, v9, &unk_24F9C0358, v17);

  v19 = *(v2 + 8);
  v19(v0 + v23, v1);
  v19(v0 + v22, v1);

  return v0;
}

uint64_t sub_24F03956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24F03958C, 0, 0);
}

uint64_t sub_24F03958C()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 32) = qword_27F252DD0;

  return MEMORY[0x2822009F8](sub_24F039624, v1, 0);
}

uint64_t sub_24F039624()
{
  v1 = *(v0 + 32);
  sub_24F840910(*(v0 + 16), 0);

  return MEMORY[0x2822009F8](sub_24F039694, v1, 0);
}

uint64_t sub_24F039694()
{
  sub_24F840910(*(v0 + 24), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0396F8()
{
  sub_24F0392C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedRefreshNotifier(uint64_t a1)
{
  result = qword_27F237740;
  if (!qword_27F237740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0397A4(uint64_t a1)
{
  result = sub_24F91F6B8();
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

uint64_t sub_24F039850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = sub_24F927D88();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_24F927DC8();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F039A3C, 0, 0);
}

uint64_t sub_24F039A3C()
{
  *(v0 + 296) = sub_24E8039DC(&unk_2861C10C0);
  swift_arrayDestroy();
  *(v0 + 304) = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  *(v0 + 312) = sub_24E802CE0(&unk_2861C1120);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 320) = qword_27F252DD0;
  *(v0 + 336) = 1;

  return MEMORY[0x2822009F8](sub_24F039B20, v1, 0);
}

uint64_t sub_24F039B20()
{
  sub_24F83EC44(*(v0 + 312), *(v0 + 192) + *(v0 + 304), (v0 + 336));

  return MEMORY[0x2822009F8](sub_24F039BA8, 0, 0);
}

uint64_t sub_24F039BA8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_24F039C84;
  v5 = v0[34];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v5);
}

uint64_t sub_24F039C84()
{

  return MEMORY[0x2822009F8](sub_24F039D80, 0, 0);
}

uint64_t sub_24F039D80()
{
  v42 = v0;
  v2 = v0[17];
  v1 = v0[18];
  if (v1)
  {
    v3 = qword_27F2113B8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E778);

    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    swift_bridgeObjectRelease_n();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40[0] = v8;
      *v7 = 136315394;
      v41 = v2;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v11 = sub_24E7620D4(updated, v10, v40);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_24F92AE48();
      v14 = sub_24E7620D4(v12, v13, v40);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_24E5DD000, v5, v6, "FeedRefreshNotifier received challenge update with %s %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v0[19] = 0x7954657461647075;
    v0[20] = 0xEA00000000006570;
    sub_24F92C7F8();
    if (*(v1 + 16) && (v15 = sub_24E76D934((v0 + 8)), (v16 & 1) != 0))
    {
      sub_24E643A9C(*(v1 + 56) + 32 * v15, (v0 + 13));
      sub_24E6585F8((v0 + 8));

      if (swift_dynamicCast())
      {
        v17 = v0[37];
        v18 = v0[22];
        if (*(v17 + 16) && (v19 = v0[21], sub_24F92D068(), sub_24F92B218(), v20 = sub_24F92D0B8(), v21 = -1 << *(v17 + 32), v22 = v20 & ~v21, ((*(v17 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) != 0))
        {
          v23 = ~v21;
          v24 = v0[37];
          while (1)
          {
            v25 = (*(v24 + 48) + 16 * v22);
            v26 = *v25 == v19 && v25[1] == v18;
            if (v26 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v24 = v0[37];
            v22 = (v22 + 1) & v23;
            if (((*(v24 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          v30 = v0[30];
          v31 = v0[27];
          v38 = v0[29];
          v39 = v0[28];
          v32 = v0[25];
          v37 = v0[26];
          v33 = v0[24];

          sub_24E74EC40();
          v36 = sub_24F92BEF8();
          v0[6] = sub_24F03BA58;
          v0[7] = v33;
          v0[2] = MEMORY[0x277D85DD0];
          v0[3] = 1107296256;
          v0[4] = sub_24EAF8248;
          v0[5] = &block_descriptor_26_1;
          v34 = _Block_copy(v0 + 2);

          sub_24F927DA8();
          v0[23] = MEMORY[0x277D84F90];
          sub_24E858250();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
          sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
          sub_24F92C6A8();
          MEMORY[0x2530518B0](0, v30, v31, v34);
          _Block_release(v34);

          (*(v37 + 8))(v31, v32);
          (*(v38 + 8))(v30, v39);
        }

        else
        {
LABEL_18:
        }
      }
    }

    else
    {

      sub_24E6585F8((v0 + 8));
    }

    v27 = swift_task_alloc();
    v0[41] = v27;
    *v27 = v0;
    v27[1] = sub_24F039C84;
    v28 = v0[34];

    return MEMORY[0x2822003E8](v0 + 17, 0, 0, v28);
  }

  else
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_24F03A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_24F927D88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_24F927DC8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F03A558, 0, 0);
}

uint64_t sub_24F03A558()
{
  v1 = sub_24E802CE0(&unk_2861C1148);
  v2 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v3 = qword_27F252DD0;
  *(v0 + 208) = qword_27F252DD0;
  *(v0 + 224) = 1;

  return MEMORY[0x2822009F8](sub_24F03A610, v3, 0);
}

uint64_t sub_24F03A610()
{
  sub_24F83EC44(*(v0 + 192), *(v0 + 88) + *(v0 + 200), (v0 + 224));

  return MEMORY[0x2822009F8](sub_24F03A698, 0, 0);
}

uint64_t sub_24F03A698()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24F03A774;
  v5 = v0[21];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F03A774()
{

  return MEMORY[0x2822009F8](sub_24F03A870, 0, 0);
}

uint64_t sub_24F03A870()
{
  v26 = v0;
  v1 = v0[8];
  if (v0[9])
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E850);

    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      v25 = v1;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v9 = v8;

      v10 = sub_24E7620D4(updated, v9, &v24);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_24E5DD000, v3, v4, "FeedRefreshNotifier notifying refresh for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x2530542D0](v6, -1, -1);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    else
    {
    }

    v13 = v0[17];
    v14 = v0[14];
    v22 = v0[16];
    v23 = v0[15];
    v15 = v0[12];
    v21 = v0[13];
    v16 = v0[11];
    sub_24E74EC40();
    v20 = sub_24F92BEF8();
    v0[6] = sub_24F03B7CC;
    v0[7] = v16;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24EAF8248;
    v0[5] = &block_descriptor_105;
    v17 = _Block_copy(v0 + 2);

    sub_24F927DA8();
    v0[10] = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v13, v14, v17);
    _Block_release(v17);

    (*(v21 + 8))(v14, v15);
    (*(v22 + 8))(v13, v23);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_24F03A774;
    v19 = v0[21];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v19);
  }

  else
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24F03AC94()
{
  v1 = sub_24F927D88();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v7 = sub_24F92BEF8();
  aBlock[4] = sub_24F03BA58;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_30;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_24F03AF34()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  swift_unknownObjectRelease();
  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24F03B020(uint64_t a1)
{
  v4 = *(sub_24F91F6B8() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F03956C(a1, v8, v9, v1 + v6, v1 + v7);
}

uint64_t sub_24F03B13C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  sub_24E602068(&qword_27F230DD0, &qword_27F230DC0, &unk_24F9A4110, MEMORY[0x277CBCE18]);
  return sub_24F923048();
}

uint64_t sub_24F03B1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v30 = a3;
  v28 = a2;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v34[0] = *(a3 + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  sub_24E602068(&qword_27F230DC8, &qword_27F230DC0, &unk_24F9A4110, MEMORY[0x277CBCE20]);
  v29 = sub_24F9230C8();
  v34[0] = v29;
  v25 = *(v8 + 16);
  v25(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = v12 + v9;
  v13 = (v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = *(v8 + 32);
  v15(v14 + v12, v11, v7);
  v16 = v28;
  *(v14 + v13) = v28;
  v25(v11, v26, v7);
  v17 = swift_allocObject();
  v15(v17 + v12, v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237750, &qword_24FA0B0F0);
  sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  v18 = sub_24F9230F8();

  swift_beginAccess();
  *(v16 + 16) = v18;

  v19 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshStreamCancellables;
  v20 = v30;
  swift_beginAccess();

  v21 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v20 + v19);
  *(v20 + v19) = 0x8000000000000000;
  sub_24E821C68(v18, v32, v21, isUniquelyReferenced_nonNull_native);

  *(v20 + v19) = v33;
  return swift_endAccess();
}

double sub_24F03B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  sub_24F92B8D8();
  swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_24F922F78();
  }

  return result;
}

uint64_t sub_24F03B594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24F92B8B8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24F03B664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F039850(a1, v4, v5, v6);
}

uint64_t sub_24F03B718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F03A36C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F03B7EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_24F03B894(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F03B520(a1, v1 + v4, v5);
}

uint64_t sub_24F03B93C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F03B9D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);

  return sub_24F03B594();
}

id static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];
  v10 = &selRef_buttonShapesDidChange;
  v11 = [v8 absoluteDimension_];
  v12 = objc_opt_self();
  v13 = [v12 sizeWithWidthDimension:v9 heightDimension:v11];

  v14 = objc_opt_self();
  v15 = [v14 itemWithLayoutSize_];
  v16 = a3 + a4;
  if (a3 <= COERCE_DOUBLE(1) || a2 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F941C80;
    *(v27 + 32) = v15;
    v28 = v15;
  }

  else
  {
    v35 = a1;
    v17 = [v8 fractionalWidthDimension_];
    v18 = [v8 absoluteDimension_];
    v19 = [v12 &selRef:v17 linkWithBundleIdentifiers:v18 + 6];

    v10 = &selRef_buttonShapesDidChange;
    v20 = [v14 itemWithLayoutSize_];
    v21 = a2 * a4;
    v22 = a2 - 1;
    v16 = v21 + v22 * a3;
    v23 = v20;
    sub_24EE1E704(v23, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F941C80;
    *(inited + 32) = v15;
    v25 = v15;
    v26 = inited;
    a1 = v35;
    sub_24EA0C02C(v26);
  }

  v29 = [v8 v10[275]];
  v30 = [v12 &selRef:a1 linkWithBundleIdentifiers:v29 + 6];

  v31 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
  v32 = sub_24F92B588();

  v33 = [v31 verticalGroupWithLayoutSize:v30 subitems:v32];

  return v33;
}

void static ComponentLayoutBuilder.verticalLayoutHorizontalSubgroups(for:withItemHeights:useEstimatedHeights:in:itemSupplementaryProvider:asPartOf:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a4 + *(type metadata accessor for ShelfLayoutContext(0) + 28));
  v10 = v9[35];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v11 = v9[36];
  v12 = v9[3];
  v13 = v9[42];
  v14 = v9[44];
  v15 = v10;
  v16 = MEMORY[0x277D84F90];
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237760, &qword_24F9C03D8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = a2;

    v60 = 0;
    v74 = v16;
    v66 = 1;
    goto LABEL_8;
  }

  v17 = a2[2];

  sub_24F03CC24(0, v17, v15, v15, a2);
  v19 = v18;

  v74 = v16;
  v66 = *(v19 + 16);
  if (v66)
  {
    v60 = 0;
LABEL_8:
    v20 = v12 - (v13 + v14);
    v72 = objc_opt_self();
    v71 = objc_opt_self();
    v63 = objc_opt_self();
    v61 = a7;
    v62 = objc_opt_self();
    v21 = 0;
    v22 = 0;
    v23 = v9[39];
    v64 = v19;
    v65 = v19 + 32;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v67 = v22;
      v24 = *(v65 + 8 * v22);
      v73 = v16;
      v25 = *(v24 + 16);
      if (v25)
      {
        break;
      }

      v27 = 0.0;
      v40 = v16;
      if (!(v16 >> 62))
      {
        goto LABEL_25;
      }

LABEL_36:
      v41 = sub_24F92C738();
      if (!v41)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_26:
      sub_24F92C978();
      if (v41 < 0)
      {
        goto LABEL_47;
      }

      v42 = objc_opt_self();
      v43 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x253052270](v43, v40);
        }

        else
        {
          v45 = *(v40 + 8 * v43 + 32);
        }

        v46 = v45;
        v47 = [v45 layoutSize];
        v48 = [v47 widthDimension];

        v49 = [v72 absoluteDimension_];
        v50 = [v71 sizeWithWidthDimension:v48 heightDimension:v49];

        v51 = [v46 supplementaryItems];
        if (!v51)
        {
          sub_24E69A5C4(0, &qword_27F2250C8, 0x277CFB880);
          sub_24F92B5A8();
          v51 = sub_24F92B588();
        }

        ++v43;
        v44 = [v42 itemWithLayoutSize:v50 supplementaryItems:v51];

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      while (v41 != v43);

      a7 = v61;
      v16 = MEMORY[0x277D84F90];
LABEL_38:
      v52 = [v72 absoluteDimension_];
      v53 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v53 = &selRef_absoluteDimension_;
      }

      v54 = [v72 *v53];
      v55 = [v71 sizeWithWidthDimension:v52 heightDimension:v54];

      sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
      v56 = sub_24F92B588();

      v57 = [v63 horizontalGroupWithLayoutSize:v55 subitems:v56];

      v58 = [v62 fixedSpacing_];
      [v57 setInterItemSpacing_];

      v59 = v57;
      MEMORY[0x253050F00]();
      v19 = v64;
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v22 = v67 + 1;
      sub_24F92B638();

      if (v67 + 1 == v66)
      {
        goto LABEL_43;
      }
    }

    v26 = *(a1 + 16);

    v27 = 0.0;
    v28 = 32;
    do
    {
      v29 = *(v24 + v28);
      v30 = [v72 absoluteDimension_];
      v31 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v31 = &selRef_absoluteDimension_;
      }

      v32 = [v72 *v31];
      v33 = [v71 sizeWithWidthDimension:v30 heightDimension:v32];

      if (v21 < 0 || v21 >= v26)
      {
        v38 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v35 = *(type metadata accessor for ItemLayoutContext(0) - 8);
        (*(a6 + 8))(a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v21, a7, ObjectType);
        sub_24E69A5C4(0, &qword_27F2250C8, 0x277CFB880);
        v36 = v33;
        v37 = sub_24F92B588();

        v38 = [objc_opt_self() itemWithLayoutSize:v36 supplementaryItems:v37];
      }

      v39 = v38;
      MEMORY[0x253050F00]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_46;
      }

      ++v21;
      if (v27 <= v29)
      {
        v27 = v29;
      }

      v28 += 8;
      --v25;
    }

    while (v25);
    v40 = v73;

    v16 = MEMORY[0x277D84F90];
    if (v73 >> 62)
    {
      goto LABEL_36;
    }

LABEL_25:
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_43:
}

void sub_24F03C708(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v44 = MEMORY[0x277D84F90];
  sub_24F458C40(0, v9, 0);
  v43 = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_70;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_71;
      }

      if (v8 < 0)
      {
        goto LABEL_72;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237770, &unk_24F9C0430);
            v22 = *(type metadata accessor for ItemLayoutContext(0) - 8);
            v38 = (*(v22 + 80) + 32) & ~*(v22 + 80);
            v40 = *(v22 + 72);
            v19 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v19);
            if (!v40)
            {
              goto LABEL_76;
            }

            if (v23 - v38 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_78;
            }

            v19[2] = v18;
            v19[3] = 2 * ((v23 - v38) / v40);
          }

          type metadata accessor for ItemLayoutContext(0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24F458C40((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v44 + 16) = v21 + 1;
      *(v44 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v43;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v16 = v8;
    v14 = a4;
LABEL_39:
    v25 = v16 <= v7;
    if (a3 > 0)
    {
      v25 = v16 >= v7;
    }

    if (v25)
    {
      return;
    }

    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v28 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v29 = a5[2];
      if (v29 < v28)
      {
        v28 = a5[2];
      }

      v30 = v28 - v16;
      if (v28 < v16)
      {
        goto LABEL_74;
      }

      if (v16 < 0)
      {
        goto LABEL_75;
      }

      if (v29 == v30)
      {

        v31 = a5;
      }

      else
      {
        v31 = v26;
        if (v28 != v16)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237770, &unk_24F9C0430);
            v35 = *(type metadata accessor for ItemLayoutContext(0) - 8);
            v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v41 = *(v35 + 72);
            v31 = swift_allocObject();
            v36 = _swift_stdlib_malloc_size(v31);
            if (!v41)
            {
              goto LABEL_77;
            }

            if (v36 - v39 == 0x8000000000000000 && v41 == -1)
            {
              goto LABEL_79;
            }

            v31[2] = v30;
            v31[3] = 2 * ((v36 - v39) / v41);
          }

          type metadata accessor for ItemLayoutContext(0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v33 = *(v44 + 16);
      v32 = *(v44 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_24F458C40((v32 > 1), v33 + 1, 1);
        v14 = a4;
      }

      *(v44 + 16) = v33 + 1;
      *(v44 + 8 * v33 + 32) = v31;
      v34 = v27 <= v43;
      if (a3 > 0)
      {
        v34 = v27 >= v43;
      }

      v16 = v27;
      if (v34)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_24F03CC24(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x277D84F90];
  sub_24F458C80(0, v9, 0);
  __n = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_63;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 < 1)
          {
            v23 = 8 * v18;
            v19 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0, &unk_24F9FAA40);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v23 = 8 * v18;
            v24 = v22 - 32;
            if (v22 < 32)
            {
              v24 = v22 - 25;
            }

            v19[2] = v18;
            v19[3] = 2 * (v24 >> 3);
          }

          memcpy(v19 + 4, &a5[v8 + 4], v23);
          v14 = a4;
        }
      }

      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24F458C80((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v38 + 16) = v21 + 1;
      *(v38 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = __n;
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = v8;
  v14 = a4;
LABEL_37:
  v25 = v16 <= v7;
  if (a3 > 0)
  {
    v25 = v16 >= v7;
  }

  if (!v25)
  {
    while (1)
    {
      v26 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v27 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v28 = a5[2];
      if (v28 < v27)
      {
        v27 = a5[2];
      }

      v29 = v27 - v16;
      if (v27 < v16)
      {
        goto LABEL_67;
      }

      if (v16 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a5;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
        if (v27 != v16)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0, &unk_24F9FAA40);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 25;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 3);
          }

          memcpy(v30 + 4, &a5[v16 + 4], 8 * v29);
          v14 = a4;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24F458C80((v31 > 1), v32 + 1, 1);
        v14 = a4;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= __n;
      if (a3 > 0)
      {
        v33 = v26 >= __n;
      }

      v16 = v26;
      if (v33)
      {
        return;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }
}

id sub_24F03CFA4(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v84 = a6;
  v85 = a5;
  v88 = a4;
  v13 = type metadata accessor for ItemLayoutContext(0);
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v17 = v90;
  if (v90 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v90;
  }

  v19 = a3 + *(type metadata accessor for ShelfLayoutContext(0) + 28);
  v20 = *(v19 + 288);
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension_];
  v23 = &selRef_estimatedDimension_;
  v81 = a2;
  if ((a2 & 1) == 0)
  {
    v23 = &selRef_absoluteDimension_;
  }

  v24 = *v23;
  v80 = v21;
  v25 = [v21 v24];
  v79 = objc_opt_self();
  v86 = [v79 sizeWithWidthDimension:v22 heightDimension:v25];

  if (__OFSUB__(v18, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_24F92B5E8();
LABEL_14:
    sub_24F92B638();

    goto LABEL_30;
  }

  v26 = v18 * a7;
  a7 = *(v19 + 320);
  v8 = v26 + a7 * (v18 - 1);
  v90 = MEMORY[0x277D84F90];
  v7 = &selRef_buttonShapesDidChange;
  a2 = &selRef_buttonShapesDidChange;
  if (!v16)
  {
    v29 = [objc_opt_self() itemWithLayoutSize_];
    sub_24EE1E704(v29, v18);

    v30 = v80;
    v31 = [v80 absoluteDimension_];
    v32 = &selRef_estimatedDimension_;
    if ((v81 & 1) == 0)
    {
      v32 = &selRef_absoluteDimension_;
    }

    v33 = [v30 *v32];
    v15 = [v79 sizeWithWidthDimension:v31 heightDimension:v33];

    v34 = objc_opt_self();
    sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
    v35 = sub_24F92B588();

    v36 = [v34 verticalGroupWithLayoutSize:v15 subitems:v35];

    v37 = [objc_opt_self() fixedSpacing_];
    [v36 setInterItemSpacing_];

    v16 = v36;
    MEMORY[0x253050F00]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (!v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237768, &qword_24F9C0428);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;
    *(v28 + 32) = a1;

    v72 = 0;
    v78 = 1;
LABEL_16:
    v77 = objc_opt_self();
    v38 = objc_opt_self();
    v16 = 0;
    v75 = v28 + 32;
    v76 = v38;
    v87 = (v85 + 8);
    v39 = MEMORY[0x277D84F90];
    v73 = v28;
    while (v16 < *(v28 + 16))
    {
      v83 = v16;
      v40 = *(v75 + 8 * v16);
      v89 = v39;
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = objc_opt_self();
        ObjectType = swift_getObjectType();
        v44 = *v87;
        v45 = v74;
        v46 = v40 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v82 = v40;

        v47 = *(v45 + 72);
        do
        {
          sub_24E8E7F4C(v46, v15);
          v44(v15, v84, ObjectType, v85);
          sub_24E8E7FB0(v15);
          sub_24E69A5C4(0, &qword_27F2250C8, 0x277CFB880);
          v48 = v86;
          v49 = sub_24F92B588();

          v50 = [v42 itemWithLayoutSize:v48 supplementaryItems:v49];

          v51 = v50;
          MEMORY[0x253050F00]();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v46 += v47;
          --v41;
        }

        while (v41);

        a2 = &selRef_buttonShapesDidChange;
        v7 = &selRef_buttonShapesDidChange;
        v39 = MEMORY[0x277D84F90];
        v28 = v73;
      }

      v52 = v80;
      v53 = [v80 absoluteDimension_];
      v54 = &selRef_estimatedDimension_;
      if ((v81 & 1) == 0)
      {
        v54 = &selRef_absoluteDimension_;
      }

      v55 = [v52 *v54];
      v56 = [v79 sizeWithWidthDimension:v53 heightDimension:v55];

      sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
      v57 = sub_24F92B588();

      v58 = [v77 verticalGroupWithLayoutSize:v56 subitems:v57];

      v59 = [v76 v7[284]];
      [v58 a2[285]];

      v60 = v58;
      MEMORY[0x253050F00]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v16 = v83 + 1;
      sub_24F92B638();

      if (v16 == v78)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  sub_24F03C708(0, v16, v18, v18, a1);
  v28 = v27;
  v72 = 0;

  v78 = *(v28 + 16);
  if (v78)
  {
    goto LABEL_16;
  }

LABEL_29:

LABEL_30:
  v61 = v80;
  v62 = [v80 absoluteDimension_];
  v63 = &selRef_estimatedDimension_;
  if ((v81 & 1) == 0)
  {
    v63 = &selRef_absoluteDimension_;
  }

  v64 = [v61 *v63];
  v65 = [v79 sizeWithWidthDimension:v62 heightDimension:v64];

  v66 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
  v67 = sub_24F92B588();

  v68 = [v66 horizontalGroupWithLayoutSize:v65 subitems:v67];

  v69 = [objc_opt_self() v7[284]];
  [v68 a2[285]];

  return v68;
}

id sub_24F03D8CC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (a4 + *(type metadata accessor for ShelfLayoutContext(0) + 28));
  v12 = v11[35];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v7 = v11[36];
  v13 = v11[3];
  v14 = v11[42];
  v15 = v12;
  v16 = v11[44];
  v17 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v81 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237760, &qword_24F9C03D8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 32) = a2;

    v80 = 0;
    v96 = v17;
    v86 = 1;
    goto LABEL_8;
  }

  v18 = a2[2];

  sub_24F03CC24(0, v18, v15, v15, a2);
  v20 = v19;
  v80 = 0;

  v96 = v17;
  v86 = *(v20 + 16);
  if (v86)
  {
    v81 = v11;
LABEL_8:
    v21 = v13 - (v14 + v16);
    v94 = objc_opt_self();
    v93 = objc_opt_self();
    v83 = objc_opt_self();
    v82 = objc_opt_self();
    v22 = 0;
    v23 = 0;
    v24 = v81[39];
    v85 = v20 + 32;
    v8 = 0.0;
    v25 = &selRef_buttonShapesDidChange;
    v26 = MEMORY[0x277D84F90];
    v84 = v20;
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v87 = v23;
      v27 = *(v85 + 8 * v23);
      v95 = v26;
      v28 = *(v27 + 16);
      if (v28)
      {
        break;
      }

      v30 = 0.0;
      v42 = v26;
      if (!(v26 >> 62))
      {
        goto LABEL_25;
      }

LABEL_38:
      v58 = v42;
      v43 = sub_24F92C738();
      v42 = v58;
      if (!v43)
      {
LABEL_39:

        goto LABEL_40;
      }

LABEL_26:
      v44 = v42;
      sub_24F92C978();
      if (v43 < 0)
      {
        goto LABEL_59;
      }

      v45 = objc_opt_self();
      v46 = 0;
      v47 = v44;
      v91 = v44 & 0xC000000000000001;
      v92 = v45;
      v48 = v44;
      do
      {
        if (v91)
        {
          v50 = MEMORY[0x253052270](v46, v47);
        }

        else
        {
          v50 = *(v47 + 8 * v46 + 32);
        }

        v51 = v50;
        v52 = [v50 v25[279]];
        v53 = [v52 widthDimension];

        v54 = &selRef_absoluteDimension_;
        if (a3)
        {
          v54 = &selRef_estimatedDimension_;
        }

        v55 = [v94 *v54];
        v56 = [v93 sizeWithWidthDimension:v53 heightDimension:v55];

        v57 = [v51 supplementaryItems];
        if (!v57)
        {
          sub_24E69A5C4(0, &qword_27F2250C8, 0x277CFB880);
          sub_24F92B5A8();
          v57 = sub_24F92B588();
          v25 = &selRef_buttonShapesDidChange;
        }

        ++v46;
        v49 = [v92 itemWithLayoutSize:v56 supplementaryItems:v57];

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v47 = v48;
      }

      while (v43 != v46);

      v26 = MEMORY[0x277D84F90];
LABEL_40:
      v59 = [v94 absoluteDimension_];
      v60 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v60 = &selRef_absoluteDimension_;
      }

      v11 = [v94 *v60];
      v61 = [v93 sizeWithWidthDimension:v59 heightDimension:v11];

      sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
      v62 = sub_24F92B588();

      v63 = [v83 horizontalGroupWithLayoutSize:v61 subitems:v62];

      v64 = [v82 fixedSpacing_];
      [v63 setInterItemSpacing_];

      v65 = v63;
      MEMORY[0x253050F00]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v23 = v87 + 1;
      sub_24F92B638();

      v8 = v8 + v30;
      v20 = v84;
      v25 = &selRef_buttonShapesDidChange;
      if (v87 + 1 == v86)
      {
        v66 = v96;

        v11 = v81;
        goto LABEL_47;
      }
    }

    v29 = *(a1 + 16);

    v30 = 0.0;
    v31 = 32;
    do
    {
      v32 = *(v27 + v31);
      v33 = [v94 absoluteDimension_];
      v34 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v34 = &selRef_absoluteDimension_;
      }

      v35 = [v94 *v34];
      v36 = [v93 sizeWithWidthDimension:v33 heightDimension:v35];

      if (v22 < 0 || v22 >= v29)
      {
        v40 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v38 = *(type metadata accessor for ItemLayoutContext(0) - 8);
        (*(a6 + 8))(a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, a7, ObjectType);
        sub_24E69A5C4(0, &qword_27F2250C8, 0x277CFB880);
        v11 = v36;
        v39 = sub_24F92B588();

        v40 = [objc_opt_self() itemWithLayoutSize:v11 supplementaryItems:v39];
      }

      v41 = v40;
      MEMORY[0x253050F00]();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24F92B5E8();
      }

      sub_24F92B638();

      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_58;
      }

      ++v22;
      if (v30 <= v32)
      {
        v30 = v32;
      }

      v31 += 8;
      --v28;
    }

    while (v28);

    v42 = v95;
    v26 = MEMORY[0x277D84F90];
    v25 = &selRef_buttonShapesDidChange;
    if (v95 >> 62)
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v66 = MEMORY[0x277D84F90];
  v8 = 0.0;
LABEL_47:
  v7 = v11[40];
  v11 = (v66 >> 62);
  if (!(v66 >> 62))
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_63:
  v67 = sub_24F92C738();
LABEL_49:
  v68 = v67 + -1.0;
  if (v68 < 0.0)
  {
    v68 = 0.0;
  }

  v69 = v8 + v7 * v68;
  v70 = objc_opt_self();
  v71 = [v70 fractionalWidthDimension_];
  v72 = &selRef_absoluteDimension_;
  if (a3)
  {
    v72 = &selRef_estimatedDimension_;
  }

  v73 = [v70 *v72];
  v74 = [objc_opt_self() sizeWithWidthDimension:v71 heightDimension:v73];

  if (v11)
  {
    sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);

    sub_24F92CA98();
  }

  else
  {

    sub_24F92CEE8();
    sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
  }

  v75 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108, 0x277CFB860);
  v76 = sub_24F92B588();

  v77 = [v75 verticalGroupWithLayoutSize:v74 subitems:v76];

  v78 = [objc_opt_self() fixedSpacing_];
  [v77 setInterItemSpacing_];

  return v77;
}

uint64_t GenericAccountPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GenericAccountPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GenericAccountPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v29 = sub_24F928818();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F9285B8();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v40 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v10 + 8);
  v37 = v9;
  v18 = v9;
  v19 = v39;
  v34 = v10 + 8;
  v35 = v17;
  v17(v13, v18);
  v19[2] = v14;
  v19[3] = v16;
  sub_24F928398();
  v38 = v4;
  v20 = *(v4 + 16);
  v21 = v32;
  v22 = v30;
  v20(v8, v32, v30);
  type metadata accessor for AccountSection();
  sub_24F03E948(&qword_27F237778, type metadata accessor for AccountSection, &protocol conformance descriptor for AccountSection);
  v28 = v8;
  v19[4] = sub_24F92B698();
  sub_24F928398();
  v20(v31, v21, v22);
  v23 = v33;
  v24 = v36;
  sub_24F928788();
  if (v24)
  {
    (*(v38 + 8))(v21, v22);
    v35(v40, v37);

    type metadata accessor for GenericAccountPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v27 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics, v23, v29);
    type metadata accessor for PageRenderMetricsEvent();
    v25 = v40;
    sub_24F928398();
    v20(v28, v21, v22);
    sub_24F03E948(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    (*(v38 + 8))(v21, v22);
    v35(v25, v37);
    v19 = v39;
    *(v39 + OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageRenderEvent) = v41;
  }

  return v19;
}

uint64_t type metadata accessor for GenericAccountPage(uint64_t a1)
{
  result = qword_27F237780;
  if (!qword_27F237780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F03E948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GenericAccountPage.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenericAccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenericAccountPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GenericAccountPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F03EB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GenericAccountPage(0);
  v7 = swift_allocObject();
  result = GenericAccountPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F03EC0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F03EC90(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t SearchFocusDiffablePagePresenter.__allocating_init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  swift_allocObject();
  return SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)(a1, a2, v5, a4);
}

uint64_t SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v119 = a2;
  v121 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377B8, &qword_24F9C0520);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = v99 - v9;
  v113 = sub_24F92BEE8();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24F92BE88();
  MEMORY[0x28223BE20](v108);
  v110 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  MEMORY[0x28223BE20](v12 - 8);
  v109 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v99 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v107 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v99 - v18;
  v20 = sub_24F9288E8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v5 + qword_27F39D6D0);
  *v24 = 0;
  v24[1] = 0;
  v25 = v5 + qword_27F39D6D8;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v5 + qword_27F39D6E0) = 0;
  v26 = qword_27F2377C0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377C8, &qword_24F9C0528);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v116 = v27;
  v115 = v29;
  v114 = v28 + 56;
  (v29)(v5 + v26, 1, 1);
  *(v5 + qword_27F2377D0) = 0;
  v120 = a4;
  v118 = v16;
  if (a3)
  {
    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();
    sub_24F92A758();
    v30 = v125[0];
    v103 = "";
    v31 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v32 = *(v21 + 104);
    LODWORD(v105) = *MEMORY[0x277D21C38];
    v104 = v32;
    v32(v23);
    v101 = v31;
    sub_24F92A368();
    v33 = *(v21 + 8);
    v99[1] = v21 + 8;
    v102 = v33;
    v33(v23, v20);
    sub_24F92A408();
    v100 = v107[1];
    v100(v19, v17);
    v34 = v125[0];
    type metadata accessor for FastImpressionsTracker();
    v35 = swift_allocObject();
    v35[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v106 = v30;
    swift_allocObject();
    v35[5] = sub_24F929E98();
    swift_allocObject();
    v35[6] = sub_24F929E98();
    v107 = v35;
    v35[4] = v34;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v104(v23, v105, v20);
    sub_24F92A368();
    v102(v23, v20);
    sub_24F92A408();
    v100(v19, v17);
    v36 = v125[0];
    type metadata accessor for FastImpressionFlushGate();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v36;
    *(v5 + qword_27F2377D8) = v37;
    v38 = sub_24F91F4A8();
    (*(*(v38 - 8) + 56))(v118, 1, 1, v38);
    sub_24E615E00(v120, v125);
    v105 = sub_24ECB2128(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
    *(v5 + qword_27F39CC00) = 0;
    v39 = MEMORY[0x277D84F90];
    *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v5 + qword_27F2326C8) = 0;
    v40 = *(*v5 + 640);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0, &unk_24F9C0530);
    v42 = *(*(v41 - 8) + 56);
    v42(v5 + v40, 1, 1, v41);
    v43 = *(*v5 + 648);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
    (*(*(v44 - 8) + 56))(v5 + v43, 1, 1, v44);
    v45 = *(*v5 + 656);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8, &unk_24F989DA0);
    (*(*(v46 - 8) + 56))(v5 + v45, 1, 1, v46);
    v42(v5 + *(*v5 + 664), 1, 1, v41);
    v47 = *(*v5 + 672);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
    (*(*(v48 - 8) + 56))(v5 + v47, 1, 1, v48);
    v49 = *(*v5 + 680);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
    (*(*(v50 - 8) + 56))(v5 + v49, 1, 1, v50);
    v51 = *(*v5 + 688);
    sub_24E74EC40();
    v52 = v121;

    sub_24F927DA8();
    v123 = v39;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    (*(v111 + 104))(v112, *MEMORY[0x277D85260], v113);
    *(v5 + v51) = sub_24F92BF38();
    sub_24EBD3128(v5 + *(*v5 + 696));
    v53 = (v5 + *(*v5 + 704));
    *v53 = 0u;
    v53[1] = 0u;
    *(v53 + 25) = 0u;
    v54 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
    swift_allocObject();
    *(v5 + v54) = sub_24F92ADA8();
    v55 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
    swift_allocObject();
    *(v5 + v55) = sub_24F92ADA8();
    v56 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    swift_allocObject();
    *(v5 + v56) = sub_24F92ADA8();
    *(v5 + *(*v5 + 736)) = 0;
    v57 = (v5 + *(*v5 + 752));
    *v57 = 0;
    v57[1] = 0;
    v58 = v118;
    sub_24E60169C(v118, v5 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
    sub_24E60169C(v125, v5 + *(*v5 + 744), &qword_27F229490, &unk_24F984C40);
    v59 = type metadata accessor for InlineUnifiedMessagePresenter();
    v122.receiver = objc_allocWithZone(v59);
    v122.super_class = v59;
    *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v122, sel_init);

    v60 = v107;

    v61 = sub_24EBBA180(v52, v60, v105, 0);
    v62 = *(*v61 + 1112);

    *(v61 + qword_27F39CC00) = v62(v119);

    sub_24EBC5778(0);

    sub_24E601704(v125, &qword_27F229490, &unk_24F984C40);
    v63 = v58;
  }

  else
  {
    *(v5 + qword_27F2377D8) = 0;
    v64 = sub_24F91F4A8();
    (*(*(v64 - 8) + 56))(v16, 1, 1, v64);
    sub_24E615E00(a4, v125);
    *(v5 + qword_27F39CC00) = 0;
    v65 = MEMORY[0x277D84F90];
    *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v5 + qword_27F2326C8) = 0;
    v66 = *(*v5 + 640);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0, &unk_24F9C0530);
    v68 = *(*(v67 - 8) + 56);
    v68(v5 + v66, 1, 1, v67);
    v69 = *(*v5 + 648);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
    (*(*(v70 - 8) + 56))(v5 + v69, 1, 1, v70);
    v71 = *(*v5 + 656);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8, &unk_24F989DA0);
    (*(*(v72 - 8) + 56))(v5 + v71, 1, 1, v72);
    v68(v5 + *(*v5 + 664), 1, 1, v67);
    v73 = *(*v5 + 672);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
    (*(*(v74 - 8) + 56))(v5 + v73, 1, 1, v74);
    v75 = *(*v5 + 680);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
    (*(*(v76 - 8) + 56))(v5 + v75, 1, 1, v76);
    v77 = *(*v5 + 688);
    sub_24E74EC40();

    v78 = v119;

    sub_24F927DA8();
    v123 = v65;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    (*(v111 + 104))(v112, *MEMORY[0x277D85260], v113);
    *(v5 + v77) = sub_24F92BF38();
    sub_24EBD3128(v5 + *(*v5 + 696));
    v79 = (v5 + *(*v5 + 704));
    *v79 = 0u;
    v79[1] = 0u;
    *(v79 + 25) = 0u;
    v80 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
    swift_allocObject();
    *(v5 + v80) = sub_24F92ADA8();
    v81 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
    swift_allocObject();
    *(v5 + v81) = sub_24F92ADA8();
    v82 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    swift_allocObject();
    *(v5 + v82) = sub_24F92ADA8();
    *(v5 + *(*v5 + 736)) = 0;
    v83 = (v5 + *(*v5 + 752));
    *v83 = 0;
    v83[1] = 0;
    v84 = v118;
    sub_24E60169C(v118, v5 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
    sub_24E60169C(v125, v5 + *(*v5 + 744), &qword_27F229490, &unk_24F984C40);
    v85 = type metadata accessor for InlineUnifiedMessagePresenter();
    v124.receiver = objc_allocWithZone(v85);
    v124.super_class = v85;
    *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v124, sel_init);

    v61 = sub_24EBBA180(v121, 0, 0, 0);
    v86 = *(*v61 + 1112);

    *(v61 + qword_27F39CC00) = v86(v78);

    sub_24EBC5778(0);

    sub_24E601704(v125, &qword_27F229490, &unk_24F984C40);
    v63 = v84;
  }

  sub_24E601704(v63, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for FastImpressionsTracker();
  v87 = swift_dynamicCastClass();
  if (v87)
  {
    v88 = v87;
    swift_beginAccess();
    *(v88 + 24) = &protocol witness table for SearchFocusDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v89 = *(v61 + qword_27F2377D8);
    if (v89)
    {
      v90 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v91 = *(v89 + 32);
      v92 = *(v89 + 40);
      *(v89 + 32) = sub_24F040704;
      *(v89 + 40) = v90;

      sub_24E824448(v91, v92);
    }
  }

  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928F28();
  v93 = v125[0];
  v94 = sub_24E74EC40();
  v95 = sub_24F92BEF8();
  v125[3] = v94;
  v125[4] = MEMORY[0x277D225C0];
  v125[0] = v95;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBD0, &qword_24F9C0540);
  sub_24E602068(&qword_27F2377E0, &unk_27F22EBD0, &qword_24F9C0540, MEMORY[0x277D22570]);
  v96 = v117;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v120);

  __swift_destroy_boxed_opaque_existential_1(v125);
  v115(v96, 0, 1, v116);
  v97 = qword_27F2377C0;
  swift_beginAccess();
  sub_24F040694(v96, v61 + v97);
  swift_endAccess();
  return v61;
}

uint64_t sub_24F040560()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_24F040598(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9287F8();
    v3 = __swift_project_value_buffer(v2, qword_27F2230A0);
    sub_24ED480E4(v3);
  }

  return result;
}

double sub_24F040634(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F04070C();
  }

  return result;
}

uint64_t sub_24F040694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377B8, &qword_24F9C0520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24F04070C()
{
  if (qword_27F2105B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  v8[3] = MEMORY[0x277D837D0];
  v8[0] = 0xD000000000000018;
  v8[1] = 0x800000024FA690E0;
  sub_24F928438();
  sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  if (*(v0 + qword_27F39CC00))
  {
    type metadata accessor for SearchFocusDiffablePageContentPresenter(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_24F93DE60;
      v6 = qword_27F210E88;

      if (v6 != -1)
      {
        swift_once();
      }

      sub_24E65864C(qword_27F237790, v5 + 32);
      sub_24F249578(v5, sub_24ED93AC0, 0, v4, v7);
    }
  }

  return result;
}

uint64_t SearchFocusDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39D6D0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchFocusDiffablePagePresenter.maxShelfRowCount.getter()
{
  v1 = v0 + qword_27F39D6D8;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchFocusDiffablePagePresenter.prefersSmallShelfTitles.getter()
{
  v1 = qword_27F39D6E0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F040A5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = qword_27F2377D0;
  v13 = *(v1 + qword_27F2377D0);
  v14 = a1;
  if (!a1)
  {

    v14 = v13;
  }

  *(v1 + v12) = v14;

  v60 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, v11, &qword_27F228530, &unk_24F93C6E0);
  v15 = a1;
  v16 = v11;
  if (!a1)
  {
  }

  v63 = v15;
  swift_beginAccess();
  v17 = v1[3];
  swift_beginAccess();
  v18 = v1[4];
  type metadata accessor for SearchFocusDiffablePageContentPresenter(0);
  v19 = swift_allocObject();
  sub_24E60169C(v16, v8, &qword_27F228530, &unk_24F93C6E0);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v16;
  v56 = v16;
  v23 = swift_allocObject();
  sub_24E911D90(v8, v23 + v20);
  v24 = v60;
  *(v23 + v21) = v60;
  *(v23 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v18;
  sub_24E60169C(v22, v66, &qword_27F228530, &unk_24F93C6E0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24F041928;
  *(v26 + 24) = v24;
  v61 = v26;
  *(v19 + qword_27F22F198) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v19 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v28 = qword_27F39C780;
  v65 = v17;

  swift_retain_n();
  v64 = v18;
  swift_retain_n();

  *(v19 + v28) = sub_24E60986C(v27);
  v29 = (v19 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v19 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v59 = v30;
  v31 = (v19 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v19 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v19 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v57 = v33;
  v34 = (v19 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v19 + qword_27F39C790) = 0;
  *(v19 + qword_27F22F1D0) = 0;
  *(v19 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v19 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8, &qword_24F989DB0);
  swift_allocObject();
  *(v19 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v19 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0, &qword_24F989DC0);
  swift_allocObject();
  *(v19 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v19 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v19 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v41 = sub_24F92ADA8();

  v62 = v25;

  sub_24E601704(v56, &qword_27F228530, &unk_24F93C6E0);
  *(v19 + v40) = v41;
  v42 = qword_27F22F1E0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v44 = *(*(v43 - 8) + 56);
  v44(v19 + v42, 1, 1, v43);
  v44(v19 + qword_27F22F1E8, 1, 1, v43);
  *(v19 + 16) = v24;
  sub_24E911D90(v66, v19 + qword_27F39C7D0);
  *v29 = sub_24F04182C;
  v29[1] = v23;
  v45 = v63;
  *v31 = 0;
  v31[1] = 0;
  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v47 = sub_24E965688;
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v49 = v58;
  v48 = v59;
  *v59 = v47;
  v48[1] = v46;
  v50 = v61;
  v51 = v62;
  *v49 = sub_24F041920;
  v49[1] = v51;
  v52 = v57;
  *v57 = sub_24ECB25B4;
  v52[1] = v50;
  v53 = v64;
  *(v19 + qword_27F22F1F0) = v65;
  *(v19 + qword_27F39C7D8) = v53;
  return v19;
}

void sub_24F0410F4(uint64_t a1, char a2)
{
  v3 = a1;
  sub_24F2F665C(a1, a2);
  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount + 8);
  v6 = v2 + qword_27F39D6D8;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  LOBYTE(v3) = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_prefersSmallShelfTitles);
  v7 = qword_27F39D6E0;
  swift_beginAccess();
  *(v2 + v7) = v3;
}

Swift::Void __swiftcall SearchFocusDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_27F2377D8);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_24ECB2170;
      v9[5] = v4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_24ECAEFC8;
      v9[3] = &block_descriptor_106;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24F04139C()
{

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8, &qword_24F9C0520);

  return result;
}

uint64_t SearchFocusDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF640();

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8, &qword_24F9C0520);

  return v0;
}

uint64_t SearchFocusDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_24EBBF640();

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8, &qword_24F9C0520);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchFocusDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F2377E8;
  if (!qword_27F2377E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0415A8(uint64_t a1)
{
  sub_24F04168C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24F04168C(uint64_t a1)
{
  if (!qword_27F2377F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2377C8, &qword_24F9C0528);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2377F8);
    }
  }
}

uint64_t sub_24F0416F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F04182C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F1CD62C(a1, v1 + v4, v6, v7);
}

uint64_t sub_24F0418E0()
{

  return swift_deallocObject();
}

uint64_t sub_24F041930()
{

  return swift_deallocObject();
}

uint64_t sub_24F041968()
{

  return swift_deallocObject();
}

id sub_24F0419B4(uint64_t a1)
{
  sub_24F925898();
  sub_24F925958();
  v1 = sub_24F9259A8();

  v2 = sub_24F9259E8();
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = sub_24F926BF8();
  v6 = [v3 secondaryLabelColor];
  v7 = sub_24F926BF8();
  xmmword_27F237800 = xmmword_24F9C0600;
  *algn_27F237810 = xmmword_24F9C0610;
  xmmword_27F237820 = xmmword_24F9C0620;
  unk_27F237830 = vdupq_n_s64(0x4063C00000000000uLL);
  xmmword_27F237840 = vdupq_n_s64(0x4044000000000000uLL);
  qword_27F237850 = 0x4030000000000000;
  unk_27F237858 = v1;
  qword_27F237860 = v2;
  unk_27F237868 = v5;
  qword_27F237870 = v7;
  sub_24F925998();
  sub_24F925918();
  v8 = sub_24F9259A8();

  qword_27F237878 = v8;
  qword_27F237880 = sub_24F925898();
  unk_27F237888 = xmmword_24F9C0630;
  unk_27F237898 = xmmword_24F9C0640;
  unk_27F2378A8 = xmmword_24F9A8940;
  qword_27F2378B8 = 0x4034000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  sub_24F926D08();

  *(v9 + 32) = sub_24F9273C8();
  *(v9 + 40) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v9 + 48) = sub_24F9273C8();
  *(v9 + 56) = v11;
  sub_24F926C88();
  sub_24F926D08();

  *(v9 + 64) = sub_24F9273C8();
  *(v9 + 72) = v12;
  qword_27F2378C0 = sub_24F9273D8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93FC20;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 32) = sub_24F9273C8();
  *(v13 + 40) = v14;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 48) = sub_24F9273C8();
  *(v13 + 56) = v15;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 64) = sub_24F9273C8();
  *(v13 + 72) = v16;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 80) = sub_24F9273C8();
  *(v13 + 88) = v17;
  qword_27F2378C8 = sub_24F9273D8();
  if (qword_27F210438 != -1)
  {
    swift_once();
  }

  v18 = qword_27F22BEB8;
  qword_27F2378D0 = sub_24F926BF8();
  if (qword_27F210440 != -1)
  {
    swift_once();
  }

  v19 = qword_27F22BEC0;
  qword_27F2378D8 = sub_24F926BF8();
  unk_27F2378E0 = 0x4024000000000000;
  dword_27F2378E8 = sub_24F9251C8();
  *&algn_27F2378EC[4] = xmmword_24F9C0650;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F93A400;
  v21 = [v3 whiteColor];
  v22 = [v21 colorWithAlphaComponent_];

  *(v20 + 32) = sub_24F926BF8();
  v23 = [v3 whiteColor];
  v24 = [v23 colorWithAlphaComponent_];

  *(v20 + 40) = sub_24F926BF8();
  qword_27F237900 = v20;
  xmmword_27F237908 = xmmword_24F9C0660;
  qword_27F237918 = 0x4044000000000000;
  dword_27F237920 = sub_24F9251C8();
  qword_27F237928 = sub_24F925898();
  qword_27F237930 = sub_24F925898();
  xmmword_27F237938 = xmmword_24F9C0670;
  unk_27F237948 = xmmword_24F9C0680;
  v25 = [v3 secondarySystemBackgroundColor];
  qword_27F237958 = sub_24F926BF8();
  v26 = [v3 tertiarySystemBackgroundColor];
  qword_27F237960 = sub_24F926BF8();
  unk_27F237968 = 0x4045000000000000;
  result = [v3 systemGray2Color];
  qword_27F237970 = result;
  return result;
}

uint64_t static AchievementDetailsViewMetrics.defaultMetrics.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27F237800, sizeof(__dst));
  memcpy(a1, &xmmword_27F237800, 0x178uLL);
  return sub_24E76A93C(__dst, &v3);
}

uint64_t sub_24F041F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F041FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24F042070(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  v10 = sub_24F92B0D8();
  v12 = v11;

  *a2 = v10;
  a2[1] = v12;
  v13 = [a1 localizedName];
  v14 = sub_24F92B0D8();
  v16 = v15;

  a2[2] = v14;
  a2[3] = v16;
  v17 = [a1 bundleIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_24F92B0D8();
    v21 = v20;

    v32 = v19;
    v33 = v21;
    sub_24F91EA28();
    sub_24E600AEC();
    v22 = sub_24F92C578();
    v24 = v23;
    (*(v5 + 8))(v8, v4);
    if (!v24)
    {

      v22 = v19;
      v24 = v21;
    }

    v25 = *(type metadata accessor for CallProvider(0) + 24);
    v32 = 0x3A6E6F6369707061;
    v33 = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v22, v24);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    v26 = sub_24F9289E8();
    (*(*(v26 - 8) + 56))(a2 + v25, 0, 1, v26);
  }

  else
  {
    v27 = *(type metadata accessor for CallProvider(0) + 24);
    v28 = sub_24F9289E8();
    (*(*(v28 - 8) + 56))(a2 + v27, 1, 1, v28);
  }

  if ([a1 supportsAudioOnly])
  {
    v29 = sub_24F4B6350();
  }

  else
  {
    v29 = 0;
  }

  v30 = type metadata accessor for CallProvider(0);
  *(a2 + *(v30 + 28)) = v29 & 1;
  if ([a1 supportsAudioAndVideo] && objc_msgSend(a1, sel_supportsAudioAndVideo))
  {
    v31 = [a1 isSystemProvider];
  }

  else
  {
    v31 = 0;
  }

  *(a2 + *(v30 + 32)) = v31;
}

uint64_t CallProvider.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallProvider.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallProvider.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallProvider(0) + 24);

  return sub_24E6F66C4(v3, a1);
}

unint64_t CallProvider.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  strcpy((inited + 88), "localizedName");
  *(inited + 102) = -4864;
  v8 = v1[2];
  v9 = v1[3];
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 1852793705;
  *(inited + 152) = 0xE400000000000000;
  v10 = type metadata accessor for CallProvider(0);
  v11 = v10[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  *(inited + 192) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E6F66C4(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000024FA69120;
  v13 = MEMORY[0x277D839B0];
  v14 = MEMORY[0x277D22598];
  *(inited + 216) = *(v1 + v10[7]);
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = 0x800000024FA69140;
  v15 = *(v1 + v10[8]);
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v15;

  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_24F0426B0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1852793705;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F042758@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F043680(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F042780(uint64_t a1)
{
  v2 = sub_24F043234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0427BC(uint64_t a1)
{
  v2 = sub_24F043234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237978, &qword_24F9C0760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F043234();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for CallProvider(0);
    v8[13] = 2;
    sub_24F9289E8();
    sub_24E94B634(&qword_27F214060, MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v8[12] = 3;
    sub_24F92CD18();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CallProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237988, &qword_24F9C0768);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for CallProvider(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F043234();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v22;
  v15 = v23;
  v28 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v16;
  v20[2] = v16;
  v27 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v17;
  sub_24F9289E8();
  v26 = 2;
  sub_24E94B634(&qword_27F214018, MEMORY[0x277D21C60]);
  v20[1] = 0;
  sub_24F92CC18();
  sub_24E94B678(v6, v12 + v10[6]);
  v25 = 3;
  *(v12 + v10[7]) = sub_24F92CC38() & 1;
  v24 = 4;
  v18 = sub_24F92CC38();
  (*(v14 + 8))(v9, v15);
  *(v12 + v10[8]) = v18 & 1;
  sub_24F043288(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F0432EC(v12);
}

uint64_t _s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8, &qword_24F975890);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_24F92CE08() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = type metadata accessor for CallProvider(0);
  v14 = v22[6];
  v15 = *(v11 + 48);
  sub_24E6F66C4(a1 + v14, v13);
  sub_24E6F66C4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E6F66C4(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24E94B634(&qword_27F21E3F8, MEMORY[0x277D21C58]);
      v17 = sub_24F92AFF8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_24E601704(v13, &qword_27F21E3E8, &qword_24F975890);
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_13:
  if (*(a1 + v22[7]) == *(a2 + v22[7]))
  {
    v19 = *(a1 + v22[8]) ^ *(a2 + v22[8]) ^ 1;
    return v19 & 1;
  }

LABEL_14:
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for CallProvider(uint64_t a1)
{
  result = qword_27F237990;
  if (!qword_27F237990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F043234()
{
  result = qword_27F237980;
  if (!qword_27F237980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237980);
  }

  return result;
}

uint64_t sub_24F043288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0432EC(uint64_t a1)
{
  v2 = type metadata accessor for CallProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F04335C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F04342C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0434DC(uint64_t a1)
{
  sub_24E6A7820(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24F04357C()
{
  result = qword_27F2379A0;
  if (!qword_27F2379A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379A0);
  }

  return result;
}

unint64_t sub_24F0435D4()
{
  result = qword_27F2379A8;
  if (!qword_27F2379A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379A8);
  }

  return result;
}

unint64_t sub_24F04362C()
{
  result = qword_27F2379B0;
  if (!qword_27F2379B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379B0);
  }

  return result;
}

uint64_t sub_24F043680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA69120 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA69140 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t StyledText.__allocating_init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v6 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v8 = sub_24F91F008();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

GameStoreKit::StyledText::MediaType_optional __swiftcall StyledText.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StyledText.MediaType.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x72616D2F74786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C702F74786574;
  }
}

uint64_t sub_24F0439DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x800000024FA3FAD0;
  if (v2 == 1)
  {
    v5 = 0x800000024FA3FAD0;
  }

  else
  {
    v3 = 0x72616D2F74786574;
    v5 = 0xED00006E776F646BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F043AF0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F043BA8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F043C4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F043D0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x800000024FA3FAD0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x72616D2F74786574;
    v4 = 0xED00006E776F646BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StyledText.rawText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F043DBC(__n128 a1)
{
  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText + 8))
  {
    v3 = *v2;
  }

  else
  {
    v3 = sub_24F043E38(v1, a1);
    *v2 = v3;
    v2[1] = v4;
  }

  return v3;
}

uint64_t sub_24F043E38(uint64_t a1, __n128 a2)
{
  v3 = sub_24F91EE98();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91EEA8();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_24F91F008();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = *(a1 + 32);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  if (v24)
  {
    if (v24 == 1)
    {
      v27 = objc_opt_self();

      v28 = [v27 systemFontOfSize_];
      v29 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
      v30 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v31 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v49 = 10;
      *(&v49 + 1) = 0xE100000000000000;
      v50 = v28;
      v51 = v29;
      v52 = 161644770;
      v53 = 0xA400000000000000;
      v54 = v30;
      v55 = 606245;
      v56 = 0xE300000000000000;
      v57 = v31;
      v32 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
      v33 = sub_24E9076BC(v25, v26, &v49);
      [*&v33[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] parse];
      v34 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
      v35 = [*&v33[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator] mutableString];
      if (qword_27F210F48 != -1)
      {
        swift_once();
      }

      sub_24F0A8300(qword_27F39DBA8);

      v36 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
      v37 = [v36 string];
      v25 = sub_24F92B0D8();
    }

    else
    {
      v44 = v21;
      v45 = v20;
      v38 = sub_24F91F4A8();
      (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
      (*(v46 + 104))(v8, *MEMORY[0x277CC8BB0], v6);
      (*(v47 + 104))(v5, *MEMORY[0x277CC8B98], v48);

      sub_24F91EEB8();
      sub_24F91EFC8();
      v41 = v44;
      v40 = v45;
      (*(v44 + 56))(v15, 0, 1, v45);
      (*(v41 + 32))(v23, v15, v40);
      sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
      (*(v41 + 16))(v18, v23, v40);
      v42 = sub_24F92BFD8();
      v43 = [v42 string];
      v25 = sub_24F92B0D8();

      (*(v41 + 8))(v23, v40);
    }
  }

  else
  {
  }

  return v25;
}

uint64_t sub_24F044468(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_24F044484(uint64_t *a1, __n128 a2))()
{
  a1[2] = v2;
  *a1 = sub_24F043DBC(a2);
  a1[1] = v4;
  return sub_24F0444CC;
}

uint64_t sub_24F0444CC(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t StyledText.init(rawText:rawTextType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  *(v3 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v8 = sub_24F91F008();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  return v3;
}

uint64_t StyledText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  sub_24F928398();
  v12 = sub_24F928348();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v16 = v12;
    sub_24F928398();
    sub_24EA87AA4();
    sub_24F928208();
    v15(v8, v5);
    v17 = v30;
    type metadata accessor for StyledText(0);
    v18 = swift_allocObject();
    v19 = sub_24E609504(MEMORY[0x277D84F90]);
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v29, v20);
    v15(a1, v5);
    *(v18 + 40) = v19;
    v21 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v22 = sub_24F91F008();
    (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
    result = v18;
    v24 = (v18 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v24 = 0;
    v24[1] = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v14;
    *(v18 + 32) = v17;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24F045514(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 0x74786554776172;
    v26[1] = 0xE700000000000000;
    v26[2] = v3;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v27 = sub_24F9285B8();
    (*(*(v27 - 8) + 8))(v29, v27);
    return (v15)(a1, v5);
  }

  return result;
}

id sub_24F044934(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91EE98();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91EEA8();
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  swift_beginAccess();
  v17 = *(v2 + 40);

  v18 = a1;
  v19 = sub_24E76C4B0(a1, v17);

  if (!v19)
  {
    v63 = v16;
    v64 = v13;
    v65 = v8;
    v66 = v10;
    v67 = v7;
    v20 = v18;
    v21 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v22 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v23 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();
    *&v74 = 10;
    *(&v74 + 1) = 0xE100000000000000;
    v68 = v20;
    *&v75 = v20;
    *(&v75 + 1) = v21;
    *&v76 = 161644770;
    *(&v76 + 1) = 0xA400000000000000;
    *&v77 = v22;
    *(&v77 + 1) = 606245;
    *&v78 = 0xE300000000000000;
    *(&v78 + 1) = v23;
    v24 = v3;
    if (!*(v3 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
      inited = swift_initStackObject();
      v32 = MEMORY[0x277D74118];
      *(inited + 16) = xmmword_24F93A400;
      v33 = *v32;
      *(inited + 32) = *v32;
      v34 = *(&v75 + 1);
      v35 = sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
      *(inited + 40) = v34;
      v36 = *MEMORY[0x277D740A8];
      *(inited + 64) = v35;
      *(inited + 72) = v36;
      v37 = v75;
      *(inited + 104) = sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
      *(inited + 80) = v37;
      v38 = v33;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v28 = sub_24E608940(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221890, &qword_24F93AD40);
      swift_arrayDestroy();
      v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v42 = sub_24F92B098();
      type metadata accessor for Key(0);
      sub_24F045514(&qword_27F212318, type metadata accessor for Key, &unk_24F937754);
      v43 = sub_24F92AE28();

      v19 = [v29 initWithString:v42 attributes:v43];

      goto LABEL_8;
    }

    if (*(v3 + 32) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
      v44 = swift_initStackObject();
      v45 = MEMORY[0x277D74118];
      *(v44 + 16) = xmmword_24F93A400;
      v46 = *v45;
      *(v44 + 32) = *v45;
      v47 = *(&v75 + 1);
      v48 = sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
      *(v44 + 40) = v47;
      v49 = *MEMORY[0x277D740A8];
      *(v44 + 64) = v48;
      *(v44 + 72) = v49;
      v50 = v75;
      *(v44 + 104) = sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
      *(v44 + 80) = v50;
      v51 = v46;
      v52 = v47;
      v53 = v49;
      v54 = v50;
      sub_24E608940(v44);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221890, &qword_24F93AD40);
      swift_arrayDestroy();
      sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
      v29 = *(v24 + 16);
      v55 = sub_24F91F4A8();
      (*(*(v55 - 8) + 56))(v63, 1, 1, v55);
      (*(v69 + 104))(v66, *MEMORY[0x277CC8BB0], v65);
      (*(v70 + 104))(v67, *MEMORY[0x277CC8B98], v71);

      v28 = v64;
      sub_24F91EEB8();
      sub_24F92BFC8();
      v19 = sub_24F92BFE8();
      goto LABEL_8;
    }

    v25 = *(v3 + 16);
    v26 = *(v3 + 24);
    v73[2] = v76;
    v73[3] = v77;
    v73[4] = v78;
    v73[0] = v74;
    v73[1] = v75;
    v27 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());

    sub_24E8EB83C(&v74, v72);
    v28 = sub_24E9076BC(v25, v26, v73);
    [*(v28 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser) parse];
    v29 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
    v30 = [*(v28 + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator) mutableString];
    if (qword_27F210F48 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_24F0A8300(qword_27F39DBA8);

      v19 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
LABEL_8:
      swift_beginAccess();
      v56 = *(v24 + 40);
      if ((v56 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (v56 < 0)
      {
        v30 = *(v24 + 40);
      }

      else
      {
        v30 = (v56 & 0xFFFFFFFFFFFFFF8);
      }

      v57 = v19;
      v58 = sub_24F92C738();
      if (!__OFADD__(v58, 1))
      {
        *(v24 + 40) = sub_24F04527C(v30, v58 + 1);
        goto LABEL_15;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v59 = v19;
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = *(v24 + 40);
    sub_24E821CA8(v19, v68, isUniquelyReferenced_nonNull_native);
    *(v24 + 40) = v72[0];
    swift_endAccess();
    sub_24E951D6C(&v74);
  }

  return v19;
}

uint64_t StyledText.deinit()
{

  sub_24E747F58(v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString);

  return v0;
}

uint64_t StyledText.__deallocating_deinit()
{

  sub_24E747F58(v0 + OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString);

  return swift_deallocClassInstance();
}

uint64_t sub_24F045250@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = StyledText.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F04527C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2134C0, &qword_24F93AC98);
    v2 = sub_24F92CB48();
    v19 = v2;
    sub_24F92CA48();
    v3 = sub_24F92CA78();
    if (v3)
    {
      v4 = v3;
      sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24E8A6AE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_24F92C3F8();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24F92CA78();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t type metadata accessor for StyledText(uint64_t a1)
{
  result = qword_27F2379D0;
  if (!qword_27F2379D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F045514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F045560()
{
  result = qword_27F2379C8;
  if (!qword_27F2379C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379C8);
  }

  return result;
}

uint64_t sub_24F0455B4@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_24F043DBC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F0455E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v4 = v3;
  v4[1] = v2;
}

void sub_24F045638(uint64_t a1)
{
  sub_24E658094(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_OWORD *SearchResultsPageMoreIntent.init(pageToken:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD00000000000001BLL;
  *(a2 + 8) = 0x800000024F9C0AC0;
  return sub_24E612B0C(a1, (a2 + 16));
}

uint64_t SearchResultsPageMoreIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall SearchResultsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F04592C()
{
  result = qword_27F2379E0;
  if (!qword_27F2379E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379E0);
  }

  return result;
}

void sub_24F045988(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 valueWithNewObjectInContext_];
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ComponentHeightCache.invalidate(items:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24E615E00(a1, &v4);
    if (*(&v5 + 1))
    {
LABEL_3:
      sub_24E612C80(&v4, v7);
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_24F92B4A8();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *a1;
    v5 = v3;
    v6 = *(a1 + 32);
    if (*(&v3 + 1))
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_24F045B60()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x253052A30](*&v2);
  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24F045BCC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x253052A30](*&v2);
  return sub_24F92C418();
}

uint64_t sub_24F045C20()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x253052A30](*&v2);
  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24F045C88(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_24EC4BDA8();
  return sub_24F92C408() & 1;
}

uint64_t ComponentHeightCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_24E60FB54(MEMORY[0x277D84F90]);
  return v0;
}

double ComponentHeightCache.height(for:or:)(uint64_t a1, double (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (*(v7 + 16) && (v9 = sub_24E76D934(v24), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 16 * v9);
    v12 = *v11;
    v13 = *(v11 + 1);
    swift_endAccess();
    v14 = v13;
    sub_24E6585F8(v24);
    sub_24EC4BDA8();
    v15 = a1 + *(v6 + 32);
    v16 = *(v15 + *(type metadata accessor for ShelfLayoutContext(0) + 40));
    v17 = v14;
    v18 = [v16 traitCollection];
    v8 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    LOBYTE(v14) = sub_24F92C408();

    if (v14)
    {
      return v12;
    }
  }

  else
  {
    swift_endAccess();
    v19 = sub_24E6585F8(v24);
  }

  v12 = a2(v19);
  swift_getKeyPath();
  sub_24F928A48();

  v20 = [*(a1 + *(v6 + 32) + *(type metadata accessor for ShelfLayoutContext(0) + 40)) v8[353]];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_24E821DDC(v20, v24, isUniquelyReferenced_nonNull_native, v12);
  sub_24E6585F8(v24);
  *(v3 + 16) = v23;
  swift_endAccess();
  return v12;
}

uint64_t ComponentHeightCache.cachedHeights(for:)()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v2 = *(v17 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24F45824C(0, v2, 0);
    v3 = v16;
    v4 = v17 + 32;
    do
    {
      sub_24E615E00(v4, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_24F928D68();
      swift_beginAccess();
      v5 = *(v1 + 16);
      if (*(v5 + 16) && (v6 = sub_24E76D934(v14), (v7 & 1) != 0))
      {
        v8 = *(v5 + 56) + 16 * v6;
        v9 = *v8;
        v10 = *(v8 + 8);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v9 = 0;
      }

      sub_24E6585F8(v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24F45824C((v11 > 1), v12 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + 8 * v12 + 32) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24F04617C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_24E76D934(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B57A4();
    }

    sub_24E6585F8(*(v8 + 48) + 40 * v6);
    v9 = *(*(v8 + 56) + 16 * v6 + 8);
    sub_24EB54E88(v6, v8);
    *(a2 + 16) = v8;
  }

  return swift_endAccess();
}

uint64_t ComponentHeightCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24F046320()
{
  result = qword_27F2379E8;
  if (!qword_27F2379E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2379E8);
  }

  return result;
}

double sub_24F046388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0, &unk_24F99D420);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22F7A0, &qword_24F9C0EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_24F99D1D0;
  qword_27F39D6E8 = v1;
  return result;
}

uint64_t AppTrailerLockupLayout.init(metrics:taglineText:videoView:lockupView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AppTrailerLockupLayout(0);
  sub_24F0464FC(a1, a5 + *(v10 + 28));
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F9224C8();
  sub_24F046580(a1);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a5 + 80);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_24F0464FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F046580(uint64_t a1)
{
  v2 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppTrailerLockupLayout.Metrics.init(taglineSpace:taglineBottomSpace:videoAspectRatio:videoSpacing:lockupSpace:textAndLockupLayoutMargins:isVideoAtTop:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_24E612C80(a1, a7);
  sub_24E612C80(a2, a7 + 40);
  v21 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v22 = v21[6];
  v23 = sub_24F922348();
  (*(*(v23 - 8) + 32))(a7 + v22, a3, v23);
  sub_24E612C80(a4, a7 + v21[7]);
  result = sub_24E612C80(a5, a7 + v21[8]);
  v25 = (a7 + v21[9]);
  *v25 = a8;
  v25[1] = a9;
  v25[2] = a10;
  v25[3] = a11;
  *(a7 + v21[10]) = a6;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t AppTrailerLockupLayout.Metrics.taglineBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoSpacing.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.lockupSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.textAndLockupLayoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.isVideoAtTop.setter(char a1)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AppTrailerLockupLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);

  return sub_24F0464FC(v3, a1);
}

double AppTrailerLockupLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v37 = a1;
  v34 = sub_24F922348();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F9225E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F922618();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277D22788], v12, v17);
  sub_24F9225F8();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v20 = sub_24F922238();
  v21 = MEMORY[0x277D228E0];
  if ((v20 & 1) == 0)
  {
    v22 = v37;
    if (qword_27F210E98 != -1)
    {
      swift_once();
    }

    v39[0] = qword_27F39D6E8;

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(v22, v11);
    (*(v9 + 8))(v11, v8);

    v23 = v4 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    sub_24E615E00(v23, v38);
    v24 = sub_24F9229A8();
    v40 = v24;
    v41 = v21;
    __swift_allocate_boxed_opaque_existential_1(v39);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E615E00(v23 + 40, v38);
    v40 = v24;
    v41 = v21;
    __swift_allocate_boxed_opaque_existential_1(v39);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v25 = v4 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v26 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v5 + 16))(v7, &v25[*(v26 + 24)], v34);
  v40 = sub_24F922768();
  v41 = MEMORY[0x277D22818];
  __swift_allocate_boxed_opaque_existential_1(v39);
  sub_24F922778();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_24E615E00(&v25[*(v26 + 28)], v38);
  v40 = sub_24F9229A8();
  v41 = v21;
  __swift_allocate_boxed_opaque_existential_1(v39);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v39);
  v28 = v4[13];
  v27 = v4[14];
  v29 = __swift_project_boxed_opaque_existential_1(v4 + 10, v28);
  v40 = v28;
  v41 = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v29, v28);
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_24F9225D8();
  v32 = v31;
  (*(v35 + 8))(v19, v36);
  return v32;
}

void *AppTrailerLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t a6@<X8>)
{
  v13 = v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  if (*(v13 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_24F04729C(a1, a6, a2, a3, a4, a5);
  }

  else
  {

    return sub_24F04831C(a1, a6, a2, a3, a4, a5);
  }
}

uint64_t sub_24F04729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v111 = a1;
  v107 = a2;
  v106 = sub_24F9221D8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F922758();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92CDB8();
  v99 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24F922708();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117 - 8);
  v116 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F922718();
  v110 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v114 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F9226C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F922748();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v100 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  sub_24E94275C((v7 + 5), &v125);
  v29 = MEMORY[0x277D227C8];
  v121 = v19;
  v120 = v17;
  v109 = v22;
  v108 = v20;
  if (*(&v126 + 1))
  {
    v112 = v14;
    sub_24E612C80(&v125, v128);
    v30 = *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    v97 = v7;
    v31 = v7 + v30;
    v32 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    CGRectGetWidth(v129);
    sub_24F922308();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1(v128, v128[3]);
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    CGRectGetWidth(v130);
    sub_24F922268();
    v124[3] = MEMORY[0x277D85048];
    v124[4] = MEMORY[0x277D225F8];
    v124[0] = v34;
    v35 = &v31[*(v32 + 28)];
    v36 = v117;
    sub_24E615E00(v35, v123);
    (*(v20 + 104))(v22, *MEMORY[0x277D227C8], v19);
    v37 = *MEMORY[0x277D227F0];
    v96 = v28;
    v38 = v116;
    v39 = v114;
    v40 = v110;
    (*(v110 + 104))(v114, v37, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
    v41 = v115;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24F93DE60;
    sub_24F9226F8();
    v122 = v42;
    sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
    sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0, &qword_24F9C0E50);
    sub_24F92C6A8();
    v43 = v96;
    sub_24F922738();
    (*(v41 + 8))(v38, v36);
    v44 = v40;
    (*(v40 + 8))(v39, v120);
    v45 = v108;
    (*(v108 + 8))(v22, v121);
    sub_24E601704(v123, &qword_27F22F780, &qword_24F968620);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v46 = sub_24E6179B0(0, 1, 1, MEMORY[0x277D84F90]);
    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_24E6179B0((v47 > 1), v48 + 1, 1, v46);
    }

    __swift_destroy_boxed_opaque_existential_1(&v125);
    v46[2] = v48 + 1;
    (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v48, v43, v119);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v49 = v44;
    v14 = v112;
    v29 = MEMORY[0x277D227C8];
    v7 = v97;
  }

  else
  {
    v45 = v20;
    sub_24E601704(&v125, &qword_27F229780, &unk_24F965BB0);
    v46 = MEMORY[0x277D84F90];
    v49 = v110;
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v50 = sub_24F922238();
  v51 = MEMORY[0x277D227F0];
  v112 = v46;
  if (v50)
  {
    v52 = *v29;
    v53 = *MEMORY[0x277D227F0];
    goto LABEL_17;
  }

  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v128[0] = qword_27F39D6E8;

  v54 = v98;
  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v111, v54);
  v56 = v55;
  v57 = v55;
  (*(v99 + 8))(v54, v14);

  v58 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v59 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_24F922258();
  sub_24E615E00((v59 + 40), &v125);
  v60 = *(v45 + 104);
  v61 = v109;
  LODWORD(v99) = *MEMORY[0x277D227C8];
  v62 = v121;
  v60(v109);
  v63 = *(v49 + 104);
  v64 = v114;
  LODWORD(v98) = *v51;
  v63(v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
  v65 = v115;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v124[0] = v66;
  sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
  v67 = v117;
  sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0, &qword_24F9C0E50);
  v68 = v116;
  sub_24F92C6A8();
  sub_24F922738();
  v45 = v108;
  (*(v65 + 8))(v68, v67);
  v58 = v110;
  (*(v110 + 8))(v64, v120);
  v69 = v62;
  v46 = v112;
  (*(v45 + 8))(v61, v69);
  sub_24E601704(&v125, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(v128);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_25:
    v46 = sub_24E6179B0(0, v46[2] + 1, 1, v46);
  }

  v71 = v46[2];
  v70 = v46[3];
  v49 = v58;
  v52 = v99;
  v53 = v98;
  if (v71 >= v70 >> 1)
  {
    v46 = sub_24E6179B0((v70 > 1), v71 + 1, 1, v46);
  }

  v112 = v46;
  v46[2] = v71 + 1;
  (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v71, v100, v119);
LABEL_17:
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v100 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v72 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_24F922258();
  v99 = *(v72 + 32);
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v73 = v109;
  (*(v45 + 104))(v109, v52, v121);
  v74 = *(v49 + 104);
  v75 = v49;
  v76 = v114;
  v77 = v53;
  v78 = v120;
  v74(v114, v77, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
  v79 = v115;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v124[0] = v80;
  sub_24F049B10(&qword_27F237A50, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
  sub_24E9723D4(&qword_27F237A60, &qword_27F2330F0, &qword_24F9C0E50);
  v81 = v78;
  v82 = v116;
  v83 = v117;
  sub_24F92C6A8();
  sub_24F922738();
  (*(v79 + 8))(v82, v83);
  (*(v75 + 8))(v76, v81);
  (*(v45 + 8))(v73, v121);
  sub_24E601704(&v125, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(v128);
  v84 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_24E6179B0(0, v84[2] + 1, 1, v84);
  }

  v85 = v106;
  v86 = v105;
  v87 = v104;
  v88 = v103;
  v89 = v102;
  v90 = v101;
  v92 = v84[2];
  v91 = v84[3];
  v93 = v84;
  if (v92 >= v91 >> 1)
  {
    v93 = sub_24E6179B0((v91 > 1), v92 + 1, 1, v84);
  }

  v93[2] = v92 + 1;
  (*(v118 + 32))(v93 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v92, v113, v119);
  sub_24F922728();
  sub_24F9226E8();
  (*(v86 + 8))(v89, v85);
  sub_24F922128();
  return (*(v88 + 8))(v90, v87);
}

void *sub_24F04831C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v86 = a3;
  v13 = sub_24F9221D8();
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v74 = &MinX - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24F922868();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24F922888();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &MinX - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24F9227F8();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &MinX - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24F922838();
  v18 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &MinX - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24F922848();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &MinX - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v66 = &MinX - v22;
  v23 = sub_24F92CDB8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &MinX - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v27 = sub_24F922238();
  v77 = a2;
  v76 = v13;
  if (v27)
  {
    goto LABEL_8;
  }

  v65 = v18;
  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v91[0] = qword_27F39D6E8;

  sub_24F9220E8();
  v28 = a1;
  Conditional<>.value(in:rounded:)(a1, v26);
  v30 = v29;
  v31 = v29;
  v32 = *(v24 + 8);
  v32(v26, v23);

  result = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922288();
  v92.origin.x = v86;
  v92.origin.y = a4;
  v92.size.width = a5;
  v92.size.height = a6;
  MinX = CGRectGetMinX(v92);
  v93.origin.x = v86;
  v93.origin.y = a4;
  v93.size.width = a5;
  v93.size.height = a6;
  CGRectGetMinY(v93);
  v34 = (v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28));
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_24F9223C8();
  v94.origin.x = v86;
  v94.origin.y = a4;
  v94.size.width = a5;
  v94.size.height = a6;
  CGRectGetWidth(v94);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922218();
  CGRectGetMaxY(v95);
  v35 = v34[8];
  __swift_project_boxed_opaque_existential_1(v34 + 5, v35);
  sub_24E8ED7D8(v35);
  a1 = v28;
  sub_24F9223A8();
  v32(v26, v23);
  v18 = v65;
LABEL_8:
  v67 = a1;
  sub_24E94275C((v7 + 5), &v89);
  v36 = MEMORY[0x277D84F90];
  if (v90)
  {
    sub_24E612C80(&v89, v91);
    type metadata accessor for AppTrailerLockupLayout(0);
    type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v37 = v86;
    v96.origin.x = v86;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    CGRectGetWidth(v96);
    sub_24F922308();
    v39 = v38;
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v97.origin.x = v37;
    v97.origin.y = a4;
    v97.size.width = a5;
    v97.size.height = a6;
    CGRectGetWidth(v97);
    sub_24F922268();
    v88[3] = MEMORY[0x277D85048];
    v88[4] = MEMORY[0x277D225F8];
    v88[0] = v39;
    v40 = *MEMORY[0x277D22848];
    v41 = v78;
    v42 = v80;
    (*(v18 + 104))(v78, v40, v80);
    v87 = MEMORY[0x277D84F90];
    sub_24F049B10(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
    sub_24E9723D4(&qword_27F22B220, &unk_27F235750, &qword_24F98AA50);
    v43 = v79;
    v44 = v82;
    sub_24F92C6A8();
    v45 = v66;
    sub_24F922818();
    (*(v81 + 8))(v43, v44);
    v46 = v41;
    v36 = MEMORY[0x277D84F90];
    (*(v18 + 8))(v46, v42);
    __swift_destroy_boxed_opaque_existential_1(v88);
    v47 = sub_24E6179D8(0, 1, 1, v36);
    v49 = v47[2];
    v48 = v47[3];
    if (v49 >= v48 >> 1)
    {
      v47 = sub_24E6179D8((v48 > 1), v49 + 1, 1, v47);
    }

    __swift_destroy_boxed_opaque_existential_1(&v89);
    v47[2] = v49 + 1;
    (*(v83 + 32))(v47 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v49, v45, v84);
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  else
  {
    sub_24E601704(&v89, &qword_27F229780, &unk_24F965BB0);
    v40 = *MEMORY[0x277D22848];
    v47 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v50 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v51 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v66 = v50;
  sub_24F922258();
  v52 = v78;
  v53 = v80;
  (*(v18 + 104))(v78, v40, v80);
  *&v89 = v36;
  sub_24F049B10(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  sub_24E9723D4(&qword_27F22B220, &unk_27F235750, &qword_24F98AA50);
  v54 = v18;
  v55 = v79;
  v56 = v82;
  sub_24F92C6A8();
  sub_24F922808();
  (*(v81 + 8))(v55, v56);
  (*(v54 + 8))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1(v91);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_24E6179D8(0, v47[2] + 1, 1, v47);
  }

  v57 = v75;
  v58 = v74;
  v59 = v73;
  v60 = v76;
  v62 = v47[2];
  v61 = v47[3];
  if (v62 >= v61 >> 1)
  {
    v47 = sub_24E6179D8((v61 > 1), v62 + 1, 1, v47);
  }

  v47[2] = v62 + 1;
  (*(v83 + 32))(v47 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v62, v85, v84);
  (*(v68 + 104))(v69, *MEMORY[0x277D22870], v70);
  sub_24E615E00(&v66[*(v51 + 28)], v91);
  v63 = v71;
  sub_24F922878();
  sub_24F9227D8();
  (*(v57 + 8))(v58, v60);
  sub_24F922128();
  return (*(v72 + 8))(v63, v59);
}

void *sub_24F04906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v14 = v7 + *(a2 + 28);
  if (*(v14 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_24F04729C(a1, a3, a4, a5, a6, a7);
  }

  else
  {

    return sub_24F04831C(a1, a3, a4, a5, a6, a7);
  }
}

double _s12GameStoreKit22AppTrailerLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v31 = a2;
  v27 = sub_24F922348();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9225E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922618();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210E98 != -1)
  {
    swift_once();
  }

  v32[0] = qword_27F39D6E8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v31, v17);
  (*(v15 + 8))(v17, v14);

  (*(v9 + 104))(v28, *MEMORY[0x277D22788], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F942000;
  sub_24E615E00(a1, v32);
  v19 = sub_24F9229A8();
  v20 = MEMORY[0x277D228E0];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v32);
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_1((v18 + 72));
  sub_24F9229B8();
  v21 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v5 + 16))(v7, a1 + v21[6], v27);
  v22 = sub_24F922768();
  v23 = MEMORY[0x277D22818];
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  __swift_allocate_boxed_opaque_existential_1((v18 + 112));
  sub_24F922778();
  sub_24E615E00(a1 + v21[7], v32);
  *(v18 + 176) = v19;
  *(v18 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_1((v18 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + v21[8], v32);
  *(v18 + 216) = v19;
  *(v18 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_1((v18 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v25 = v24;
  (*(v29 + 8))(v13, v30);
  return v25;
}

uint64_t sub_24F04963C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0496FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0497A0(uint64_t a1)
{
  sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
  if (v1 <= 0x3F)
  {
    sub_24F049874(319);
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AppTrailerLockupLayout.Metrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F049874(uint64_t a1)
{
  if (!qword_27F2297B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F235730, &unk_24F947310);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2297B0);
    }
  }
}

uint64_t sub_24F0498EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F922348();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0499AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922348();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F049A50(uint64_t a1)
{
  sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
  if (v1 <= 0x3F)
  {
    sub_24F922348();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F049B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_24F049B68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

char *TopChartCategory.__allocating_init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  v20 = &v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName];
  *v21 = a8;
  *(v21 + 1) = a9;
  v22 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 32))(&v19[v22], a5, v23);
  *&v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork] = a10;
  *&v19[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children] = a11;
  return v19;
}

char *TopChartCategory.init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  v13 = &v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = &v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName];
  *v14 = a8;
  *(v14 + 1) = a9;
  v15 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v16 = sub_24F91F4A8();
  (*(*(v16 - 8) + 32))(&v11[v15], a5, v16);
  *&v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork] = a10;
  *&v11[OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children] = a11;
  return v11;
}

uint64_t TopChartCategory.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopChartCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TopChartCategory.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v59 = a2;
  v60 = v5;
  v58 = sub_24F9285B8();
  v64 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_24F91F4A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_24F928398();
  sub_24F928268();
  v61 = *(v11 + 8);
  v62 = v11 + 8;
  v21 = v16;
  v22 = v10;
  v61(v21, v10);
  v23 = v17;
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_24E70E058(v9);
    v24 = sub_24F92AC38();
    sub_24F04A4E8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v25 = 7107189;
    v26 = v60;
    v25[1] = 0xE300000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v64 + 8))(v59, v58);
    v61(v63, v10);
    v27 = v57;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v18;
    v53 = v18;
    v54 = v23;
    v29 = *(v18 + 32);
    v55 = v20;
    v29(v20, v9, v23);
    sub_24F928398();
    v30 = sub_24F928348();
    v32 = v31;
    v33 = v61;
    v61(v13, v22);
    v27 = v57;
    v57[2] = v30;
    v27[3] = v32;
    sub_24F928398();
    v34 = sub_24F928348();
    v36 = v35;
    v33(v13, v22);
    v27[4] = v34;
    v27[5] = v36;
    (*(v28 + 16))(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url, v55, v54);
    sub_24F928398();
    v37 = sub_24F928348();
    v39 = v38;
    v52 = v22;
    v33(v13, v22);
    v40 = (v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
    *v40 = v37;
    v40[1] = v39;
    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v42;
    v33(v13, v22);
    v44 = (v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
    *v44 = v41;
    v44[1] = v43;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v45 = *(v64 + 16);
    v46 = v56;
    v47 = v58;
    v48 = v59;
    v45(v56, v59, v58);
    sub_24F04A4E8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork) = v65;
    v49 = v63;
    sub_24F928398();
    v45(v46, v48, v47);
    sub_24F04A4E8(&qword_27F237A68, type metadata accessor for TopChartCategory, &protocol conformance descriptor for TopChartCategory);
    v50 = sub_24F92B698();
    (*(v64 + 8))(v48, v47);
    v61(v49, v52);
    (*(v53 + 8))(v55, v54);
    *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children) = v50;
  }

  return v27;
}

uint64_t sub_24F04A4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TopChartCategory(uint64_t a1)
{
  result = qword_27F237A70;
  if (!qword_27F237A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopChartCategory.genreId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopChartCategory.ageBandId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopChartCategory.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TopChartCategory.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);

  return v1;
}

uint64_t TopChartCategory.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);

  return v1;
}

uint64_t TopChartCategory.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartCategory.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F04A898@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TopChartCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F04A91C(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t IdentifiableSearchResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v4 = sub_24F91F6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F04AAB8(uint64_t a1)
{
  sub_24F91F668();
  sub_24F92B218();
}

uint64_t IdentifiableSearchResult.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v2 = sub_24F91F6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IdentifiableSearchResult.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v2 = sub_24F91F6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F04AC34()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24IdentifiableSearchResult_id;
  v5 = sub_24F91F6B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F04AD18()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AD84(uint64_t a1)
{
  sub_24F91F668();
  sub_24F92B218();
}

uint64_t sub_24F04AE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for IdentifiableSearchResult(uint64_t a1)
{
  result = qword_27F237A88;
  if (!qword_27F237A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F04AF08()
{
  sub_24F92D068();
  sub_24F91F668();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F04AF94(uint64_t a1)
{
  result = sub_24F91F6B8();
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

uint64_t sub_24F04B0A8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F04B234(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GameDetailsChallengesShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F237A98;
  if (!qword_27F237A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04B3F8(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24E7D231C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F04B4AC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x61746144627568;
  *(inited + 96) = 0xE700000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  *(inited + 128) = &type metadata for ChallengesHubData;
  *(inited + 136) = sub_24EE56F34();
  v11 = swift_allocObject();
  *(inited + 104) = v11;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = v8;
  v11[6] = v10;
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v12 = type metadata accessor for GameDetailsChallengesShelfConstructionIntent(0);
  v13 = v12[6];
  *(inited + 184) = type metadata accessor for Game(0);
  *(inited + 192) = sub_24F04B838(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7E38E0(v1 + v13, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v15 = v12[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24F04B838(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E7E38E0(v1 + v15, v16, type metadata accessor for Player);
  *(inited + 256) = 0x756F72676B636162;
  *(inited + 264) = 0xEA0000000000646ELL;
  v17 = v12[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 304) = sub_24E7D17FC();
  v18 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E7D14D8(v1 + v17, v18);

  v19 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v20 = sub_24E80FFAC(v19);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v20;
  return result;
}

uint64_t sub_24F04B7F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F04B838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F04B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit032DiffableSnapshotPresenterContentE6UpdateOyxG(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_24F04B8DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 9))
  {
    return (*a1 + 120);
  }

  v3 = ((*(a1 + 8) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 8) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F04B930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *(result + 8) = 0;
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24F04B994(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 8) = *(result + 8) & 1 | (16 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0x80;
  }

  return result;
}

GameStoreKit::TopShelfPromotionItem::TintStyle_optional __swiftcall TopShelfPromotionItem.TintStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t TopShelfPromotionItem.TintStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24F04BA6C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void *TopShelfPromotionItem.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = v2;
  v53 = sub_24F9285B8();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_24F928388();
  v51 = *(v9 - 8);
  v10 = v51;
  MEMORY[0x28223BE20](v9);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = (v3 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionText);
  *v19 = v15;
  v19[1] = v17;
  v20 = a1;
  sub_24F928398();
  sub_24F04C0A0();
  sub_24F928208();
  v18(v14, v9);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionHeadingTintStyle) = v57;
  v21 = v3;
  v22 = v20;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v18(v14, v9);
  v26 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextTitle);
  *v26 = v23;
  v26[1] = v25;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v18(v14, v9);
  v30 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionImageName);
  *v30 = v27;
  v30[1] = v29;
  sub_24F928398();
  v31 = sub_24F928348();
  v33 = v32;
  v18(v14, v9);
  v34 = (v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextImageName);
  *v34 = v31;
  v34[1] = v33;
  sub_24F928398();
  sub_24F928268();
  v18(v14, v9);
  v49 = v21;
  sub_24E911D90(v8, v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24F928398();
  sub_24F928268();
  v18(v14, v9);
  v35 = v21 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl;
  v36 = v53;
  sub_24E911D90(v8, v35);
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v52 = v18;
  v18(v14, v9);
  v40 = v50;
  v41 = (v49 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_termsAndConditionsText);
  *v41 = v37;
  v41[1] = v39;
  v42 = v56;
  v43 = *(v51 + 16);
  v51 = v9;
  v43(v40, v22, v9);
  v44 = v54;
  v45 = v55;
  (*(v55 + 16))(v54, v42, v36);
  v46 = TopShelfItem.init(deserializing:using:)(v40, v44);
  (*(v45 + 8))(v42, v36);
  v52(v22, v51);
  return v46;
}

unint64_t sub_24F04C0A0()
{
  result = qword_27F237B28;
  if (!qword_27F237B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237B28);
  }

  return result;
}

uint64_t TopShelfPromotionItem.promotionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionText);

  return v1;
}

uint64_t TopShelfPromotionItem.contextTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextTitle);

  return v1;
}

uint64_t TopShelfPromotionItem.promotionImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_promotionImageName);

  return v1;
}

uint64_t TopShelfPromotionItem.contextImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_contextImageName);

  return v1;
}

uint64_t TopShelfPromotionItem.termsAndConditionsText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_termsAndConditionsText);

  return v1;
}

uint64_t sub_24F04C25C()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);
}

void *TopShelfPromotionItem.deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);

  return v0;
}

uint64_t TopShelfPromotionItem.__deallocating_deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_previewVideoUrl);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit21TopShelfPromotionItem_cinemagraphUrl);

  return swift_deallocClassInstance();
}

unint64_t sub_24F04C4AC()
{
  result = qword_27F237B30;
  if (!qword_27F237B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237B30);
  }

  return result;
}

uint64_t type metadata accessor for TopShelfPromotionItem(uint64_t a1)
{
  result = qword_27F237B38;
  if (!qword_27F237B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04C554(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double OfferLabelPresenter.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t OfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

double sub_24F04C670(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a1;
  v2[6] = a2;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v2[8];
    ObjectType = swift_getObjectType();
    v8 = v2[5];
    v9 = v2[6];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall OfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[5];
    v5 = v1[6];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

double OfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[8] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[5];
    v7 = v2[6];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*OfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F04C9C8;
}

void sub_24F04C9C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[8];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[5];
      v8 = v4[6];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t OfferLabelPresenter.__allocating_init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 64) = 0;
  *(v9 + 48) = 0;
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = a1;
  *(v9 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v10;
  *(&v25[0] + 1) = v11;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v9 + 72) = v14;
  *(v9 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v9, sub_24F04CFEC, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_24F04CFF4(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_24E88D2AC(v25);
  swift_beginAccess();
  *(v9 + 40) = v20;
  *(v9 + 48) = v22;

  return v9;
}

uint64_t OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *a2;
  v10 = a2[1];
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = v11;
  *(v6 + 24) = v10;
  *(v6 + 32) = a1;
  *(v6 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v11;
  *(&v25[0] + 1) = v10;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v6 + 72) = v14;
  *(v6 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v6, sub_24F04D478, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_24F04CFF4(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_24E88D2AC(v25);
  swift_beginAccess();
  *(v6 + 40) = v20;
  *(v6 + 48) = v22;

  return v6;
}

uint64_t sub_24F04CEF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_24F04CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    v6 = sub_24F04CFF4(v9);
    v8 = v7;
    v10[0] = v9[0];
    v10[1] = v9[1];
    v10[2] = v9[2];
    v10[3] = v9[3];
    sub_24E88D2AC(v10);
    sub_24F04C670(v6, v8);
  }

  return result;
}

uint64_t sub_24F04CFF4(uint64_t *a1)
{
  v3 = *(v1 + 32);
  result = *(v3 + 126);
  if (!*(v3 + 126))
  {
    return result;
  }

  if (result != 1)
  {
    v7 = *(v3 + 88);
    if (*(v7 + 16))
    {

      v8 = sub_24E76DB58(17);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 16 * v8);

        return v10;
      }
    }

    v17 = "Offer.Label.ComingSoon";
    goto LABEL_21;
  }

  if (*(v1 + 88) == 1)
  {
    v5 = 0x800000024FA69410;
    v6 = 0xD000000000000016;
    if (*(v3 + 208) == 1)
    {
      return localizedStringForAdsLanguage(_:)(*&v6)._countAndFlagsBits;
    }

    goto LABEL_22;
  }

  v11 = a1[6];
  v12 = v11 >> 60;
  if (!(v11 >> 60))
  {
    goto LABEL_17;
  }

  v13 = *a1;
  if (v12 == 1)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v17 = "Offer.Label.Preordered";
LABEL_21:
    v5 = (v17 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000016;
    goto LABEL_22;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a1[2] | a1[1];
  v16 = a1[4] | a1[5] | a1[7];
  if (v11 == 0x8000000000000000 && !(v15 | v13 | v14 | v16) || (result = 0, v11 == 0x8000000000000000) && v13 == 4 && !(v15 | v14 | v16))
  {
LABEL_17:
    v6 = 0xD000000000000014;
    v5 = 0x800000024FA693F0;
LABEL_22:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v6, v18)._countAndFlagsBits;
  }

  return result;
}

uint64_t OfferLabelPresenter.deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OfferLabelPresenter.__deallocating_deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_24F04D2FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;

  return result;
}

double sub_24F04D348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F04C670(v1, v2);
}

uint64_t sub_24F04D388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_24F04D3D8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return OfferLabelPresenter.view.setter(v2, v1);
}

void sub_24F04D47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_24F92C6B8();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_24E6586A8(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_24E6586A8(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

uint64_t ImpressionsAppendixMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F237B48, &unk_24F9C1440);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028();
  return v0;
}

uint64_t ImpressionsAppendixMetricsTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F237B48, &unk_24F9C1440);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028();
  return v0;
}

void ImpressionsAppendixMetricsTracker.updateAppendix(for:including:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_24F927D88();
  v23 = *(v4 - 8);
  v24 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84FA0];
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = *(v21 + 16);
    MEMORY[0x28223BE20](v5);
    *(&v21 - 2) = &v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v16 = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v25 = v17;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v18 = v22;
    v19 = v24;
    v20 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v20);
    *(&v21 - 4) = sub_24F04E1C8;
    *(&v21 - 3) = (&v21 - 4);
    *(&v21 - 2) = v15;
    sub_24F92BF08();
    (*(v16 + 8))(v18, v19);

    return;
  }

  v5 = sub_24F92C738();
  v8 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x253052270](i, a1, v6);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      if ((a2(v10) & 1) != 0 && (type metadata accessor for AppSearchResult(0), (v11 = swift_dynamicCastClass()) != 0))
      {
        v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);

        sub_24ED7E42C(&v25, v14, v13);
      }

      else
      {
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

double ImpressionsAppendixMetricsTracker.insert(_:)(uint64_t a1)
{
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v8 = *(*(v6 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) + 24);
    v9 = *(v1 + 16);
    MEMORY[0x28223BE20](v6);
    v13[-2] = v10;
    v13[-1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v13[1] = v11;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v12 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v12);
    v13[-4] = sub_24F04E214;
    v13[-3] = &v13[-4];
    v13[-2] = v9;
    sub_24F92BF08();

    (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_24F04DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_24ED7E42C(&v6, a2, a3);
}

uint64_t ImpressionsAppendixMetricsTracker.getCondensedLockupAdamIds()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24F92BF18();

  return v1;
}

Swift::Void __swiftcall ImpressionsAppendixMetricsTracker.clearAppendix()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v11 = v6;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = sub_24F04E010;
  v9 = 0;
  v10 = v5;
  sub_24F92BF08();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F04E010(void *a1)
{

  *a1 = MEMORY[0x277D84FA0];
  return result;
}

uint64_t ImpressionsAppendixMetricsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F04E0A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24F92BF18();

  return v1;
}

uint64_t sub_24F04E15C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_24F04E21C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t AnyArtworkFetchingView<>.fetchArtwork(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-v11 - 8];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-v15 - 8];
  sub_24E615E00(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    (*(a4 + 32))(v16, a2, a3, a4);
    return (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

_OWORD *ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = a4[1];
  *a6 = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v6;
  *(a6 + 64) = v7;
  return sub_24E612B0C(a5, (a6 + 8));
}

uint64_t ArcadeSubscriptionDecorator.decorate()()
{
  v19 = sub_24F929C38();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v18 = v21[0];
  sub_24E643A9C((v0 + 1), v22);
  v4 = v0[6];
  v17 = v0[5];
  v5 = v0[7];
  v6 = v0[8];
  v7 = qword_27F210278;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_24EB6C148();
  MetricsSystemInfo.init()(&v23);
  v20 = v23;
  v9 = MetricsSystemInfo.dictionaryRepresentation.getter();
  sub_24EBAA4C4(&v23);
  sub_24E954060(v9);
  v11 = v10;

  v21[0] = 0xD000000000000022;
  v21[1] = 0x800000024FA69490;
  v22[4] = v17;
  v22[5] = v4;
  v22[6] = v5;
  v22[7] = v6;
  v22[8] = v8;
  v22[9] = v11;
  sub_24F929C28();

  sub_24F928FE8();
  v12 = v19;
  (*(v1 + 104))(v3, *MEMORY[0x277D220E8], v19);
  v13 = sub_24F929BD8();

  (*(v1 + 8))(v3, v12);
  v14 = sub_24EB48A68(v21, v13, "GameStoreKit/ArcadeSubscriptionDecorator.swift", 46, 2);

  sub_24F04E85C(v21);
  return v14;
}

uint64_t Conditional.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  sub_24F92C888();

  strcpy(v8, "Conditional<");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](8236, 0xE200000000000000);
  v4 = sub_24F92D1E8();
  MEMORY[0x253050C20](v4);

  v5 = MEMORY[0x253050C20](10302, 0xE200000000000000);
  v6 = (*(*v2 + 96))(v5);
  MEMORY[0x253050C20](v6);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v8[0];
}

uint64_t Conditional.description.getter()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_24F04EBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t EngagementToggleAction.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_identifier);

  return v1;
}

uint64_t EngagementToggleAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v67 = sub_24F91F6B8();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v62[-v5];
  v6 = sub_24F9285B8();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v62[-v9];
  v10 = sub_24F928AD8();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v73 = &v62[-v13];
  MEMORY[0x28223BE20](v14);
  v72 = &v62[-v15];
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v62[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v62[-v22];
  v24 = 0xEA00000000007265;
  sub_24F928398();
  v68 = sub_24F928348();
  v26 = v25;
  v27 = v23;
  v28 = v16;
  v29 = *(v17 + 8);
  v88 = v17 + 8;
  (v29)(v27, v28);
  if (!v26)
  {
    v34 = 0x696669746E656469;
    v33 = a1;
    goto LABEL_5;
  }

  v30 = v26;
  sub_24F928398();
  v31 = sub_24F928278();
  (v29)(v20, v28);
  v32 = a1;
  if (v31 == 2)
  {
    v33 = a1;
    v34 = 0x65756C6176;

    v24 = 0xE500000000000000;
LABEL_5:
    v36 = v78;
    v35 = v79;
    v37 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v38 = v34;
    v38[1] = v24;
    v38[2] = v77;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v36 + 8))(v80, v35);
    (v29)(v33, v28);
    return v29;
  }

  v63 = v31;
  v64 = v29;
  v77 = v28;
  sub_24F928398();
  v39 = v78;
  (*(v78 + 16))(v69, v80, v79);
  v40 = v70;
  v41 = v76;
  sub_24F929548();
  v42 = v75;
  v43 = *(v75 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    v44 = v72;
    sub_24F928A98();
    v45 = v44;
    if (v43(v40, 1, v41) != 1)
    {
      sub_24E601704(v40, &qword_27F223CE8, &unk_24F983FE0);
    }
  }

  else
  {
    v45 = v72;
    (*(v42 + 32))(v72, v40, v41);
  }

  v46 = *(v42 + 16);
  v47 = v73;
  v46(v73, v45, v41);
  type metadata accessor for EngagementToggleAction(0);
  v29 = swift_allocObject();
  v48 = (v29 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_identifier);
  *v48 = v68;
  v48[1] = v30;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit22EngagementToggleAction_value) = v63 & 1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v46(v74, v47, v41);
  v49 = sub_24F929608();
  v50 = v71;
  (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
  v51 = (v29 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v51 = 0u;
  v51[1] = 0u;
  v52 = v29 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v86, &v83);
  if (*(&v84 + 1))
  {
    v53 = v84;
    *v52 = v83;
    *(v52 + 16) = v53;
    *(v52 + 32) = v85;
  }

  else
  {
    v54 = v65;
    sub_24F91F6A8();
    v55 = sub_24F91F668();
    v57 = v56;
    (*(v66 + 8))(v54, v67);
    v81 = v55;
    v82 = v57;
    v50 = v71;
    sub_24F92C7F8();
    sub_24E601704(&v83, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v39 + 8))(v80, v79);
  v64(v32, v77);
  sub_24E601704(v86, &qword_27F235830, &qword_24F93B8C0);
  v59 = v75;
  v58 = v76;
  v60 = *(v75 + 8);
  v60(v73, v76);
  v60(v72, v58);
  sub_24E65E0D4(v50, v29 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  (*(v59 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v74, v58);
  return v29;
}

uint64_t type metadata accessor for EngagementToggleAction(uint64_t a1)
{
  result = qword_27F237C50;
  if (!qword_27F237C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t EngagementToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t sub_24F04F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDefinitionDetail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F04F9C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDefinitionDetail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateActivityInstanceAction(uint64_t a1)
{
  result = qword_27F237C60;
  if (!qword_27F237C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F04FB38(uint64_t a1)
{
  type metadata accessor for ActivityDefinitionDetail(319);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC68(319);
    if (v2 <= 0x3F)
    {
      sub_24F928AD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F04FBDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_24F928AD8();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDefinitionDetail(0);
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237C70, &unk_24F9C1790);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  MEMORY[0x28223BE20](updated);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F05020C();
  v30 = v9;
  v13 = v32;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v12;
  v15 = v27;
  v16 = v28;
  LOBYTE(v33) = 0;
  sub_24EF1EB98(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail, &protocol conformance descriptor for ActivityDefinitionDetail);
  sub_24F92CC68();
  sub_24EF1EB34(v29, v14);
  LOBYTE(v33) = 1;
  v17 = sub_24F92CC28();
  v18 = (v14 + updated[5]);
  *v18 = v17;
  v18[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  v36 = 2;
  sub_24EE076B8();
  sub_24F92CC68();
  v20 = v14 + updated[6];
  v21 = v34;
  *v20 = v33;
  *(v20 + 16) = v21;
  *(v20 + 32) = v35;
  LOBYTE(v33) = 3;
  sub_24EF1EB98(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v32 = v5;
  v22 = v26;
  sub_24F92CC68();
  (*(v15 + 8))(v30, v31);
  (*(v25 + 32))(v14 + updated[7], v32, v22);
  sub_24F050260(v14, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F0502C4(v14, type metadata accessor for UpdateActivityInstanceAction);
}

uint64_t sub_24F0500B8()
{
  v1 = 0x6974696E69666564;
  v2 = 0x65756E69746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x6E694C7974726170;
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

uint64_t sub_24F050154@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F05043C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F05017C(uint64_t a1)
{
  v2 = sub_24F05020C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0501B8(uint64_t a1)
{
  v2 = sub_24F05020C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F05020C()
{
  result = qword_27F237C78;
  if (!qword_27F237C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C78);
  }

  return result;
}

uint64_t sub_24F050260(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityInstanceAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F0502C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F050338()
{
  result = qword_27F237C80;
  if (!qword_27F237C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C80);
  }

  return result;
}

unint64_t sub_24F050390()
{
  result = qword_27F237C88;
  if (!qword_27F237C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C88);
  }

  return result;
}

unint64_t sub_24F0503E8()
{
  result = qword_27F237C90;
  if (!qword_27F237C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237C90);
  }

  return result;
}

uint64_t sub_24F05043C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E694C7974726170 && a2 == 0xE90000000000006BLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t TodayWidgetCardCollectionTemplate.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayWidgetCardCollectionTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

char *TodayWidgetCardCollectionTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v57 = v3;
  v56 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v47 - v6;
  v7 = sub_24F91F648();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = sub_24F92AC28();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v23 = v18;
  v24 = *(v13 + 8);
  v24(v23, v12);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0, &qword_24F965EC0);
    v25 = sub_24F92AC38();
    sub_24F0516EC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 0x7364726163;
    v27 = v56;
    v26[1] = 0xE500000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v24(v58, v12);
    v28 = v57;
    v29 = v59;
    goto LABEL_6;
  }

  v49 = v24;
  v50 = v12;
  v30 = (*(v20 + 32))(v22, v11, v19);
  MEMORY[0x28223BE20](v30);
  *(&v47 - 2) = v59;
  type metadata accessor for WidgetTodayCardTemplate(0);
  v31 = v52;
  v32 = sub_24F92ABB8();
  v48 = v22;
  v52 = v19;
  if (!v31)
  {
    v28 = v57;
    *(v57 + 2) = v32;
    sub_24F928398();
    v33 = v55;
    sub_24F928288();
    v34 = v33;
    v35 = v50;
    v36 = v49;
    (v49)(v15);
    v37 = v53;
    v38 = v54;
    if ((*(v53 + 48))(v34, 1, v54) != 1)
    {
      v36(v58, v35);
      (*(v20 + 8))(v48, v52);
      v43 = *(v37 + 32);
      v44 = v51;
      v43(v51, v34, v38);
      v43(&v28[OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate], v44, v38);
      v45 = sub_24F9285B8();
      (*(*(v45 - 8) + 8))(v59, v45);
      return v28;
    }

    sub_24E601704(v34, &unk_27F22EC30, &qword_24F939880);
    v39 = sub_24F92AC38();
    sub_24F0516EC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v40 = 0x4479616C70736964;
    v41 = v56;
    v40[1] = 0xEB00000000657461;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    v36(v58, v35);
    (*(v20 + 8))(v48, v52);

    v29 = v59;
LABEL_6:
    swift_deallocPartialClassInstance();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v29, v42);
    return v28;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F050E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetTodayCardTemplate(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F0516EC(&qword_27F237CB0, type metadata accessor for WidgetTodayCardTemplate, &protocol conformance descriptor for WidgetTodayCardTemplate);
  return sub_24F929548();
}

uint64_t TodayWidgetCardCollectionTemplate.hash(into:)(uint64_t a1)
{
  sub_24EA1D3B4(a1, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_24F92AEF8();
}

uint64_t static TodayWidgetCardCollectionTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24EA14C48(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_24F91F5F8();
}

uint64_t TodayWidgetCardCollectionTemplate.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TodayWidgetCardCollectionTemplate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TodayWidgetCardCollectionTemplate.hashValue.getter()
{
  sub_24F92D068();
  sub_24EA1D3B4(v2, *(v0 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

char *sub_24F0512C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F051328()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24EA1D3B4(v3, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24F0513D4(uint64_t a1)
{
  sub_24EA1D3B4(a1, *(*v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_24F92AEF8();
}

uint64_t sub_24F051464()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24EA1D3B4(v3, *(v1 + 16));
  sub_24F91F648();
  sub_24F0516EC(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24F05150C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24EA14C48(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_24F91F5F8();
}

uint64_t type metadata accessor for TodayWidgetCardCollectionTemplate(uint64_t a1)
{
  result = qword_27F237CA0;
  if (!qword_27F237CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F05160C(uint64_t a1)
{
  result = sub_24F91F648();
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

uint64_t sub_24F0516EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppStoreMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E643A9C(a1, v6);

  return sub_24E98859C(v6, a2, a3);
}

uint64_t sub_24F0517A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E643A9C(a1, v6);

  return sub_24E98859C(v6, a2, a3);
}

uint64_t LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a2)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a2)
  {
    v11 = a2;
  }

  *a9 = v10;
  *(a9 + 8) = v11;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 65) = a10;
  return result;
}

id LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)@<X0>(id result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 65) = a8 & 1;
  return result;
}

uint64_t LabelPlaceholderCompatibility.layoutTextView.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F922678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = *(v1 + 65);
  if (v15)
  {
    v16 = *(v1 + 64);
    v22[1] = *v1;
    v22[2] = v8;
    v23 = v9;
    *v24 = *(v1 + 17);
    *&v24[3] = *(v1 + 20);
    v25 = v10;
    v26 = v11;
    v27 = v13;
    v28 = v12;
    v29 = v14;
    v30 = v16;
    v31 = v15;
    sub_24F051B10(v6);
    sub_24F922648();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (*(v1 + 16))
    {
      sub_24F922A78();
      swift_allocObject();
      sub_24F051B00(v7, v8, 1);
      v18 = v10;
      v19 = sub_24F922A68();
      v20 = MEMORY[0x277D22908];
    }

    else
    {
      sub_24F9229D8();
      swift_allocObject();
      sub_24F051B00(v7, v8, 0);
      v21 = v10;
      v19 = sub_24F9229C8();
      v20 = MEMORY[0x277D228F0];
    }

    result = swift_getObjectType();
    a1[3] = result;
    a1[4] = v20;
    *a1 = v19;
  }

  return result;
}

double sub_24F051B00(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_24F051B10@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_24F922538();
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v29 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = *v1;
  v20 = *(v1 + 16);
  v29[1] = *(v1 + 32);
  v29[2] = *(v1 + 40);
  v29[3] = *(v1 + 48);
  v29[4] = *(v1 + 56);
  v22 = (v21 + 8);
  v30 = *(v1 + 64);
  v31 = v19;
  if (v20)
  {
    v23 = v19;
    sub_24F922528();
    sub_24F922518();
    v24 = *v22;
    (*v22)(v5, v2);
    sub_24F9224D8();
    v24(v8, v2);
    sub_24F9224F8();
    v24(v11, v2);
    sub_24F9224E8();
    v24(v14, v2);
    sub_24F922508();
    v24(v17, v2);
    if ((v30 & 1) == 0 || (v25 = sub_24F922658(), sub_24F922668(), sub_24F922668(), sub_24F922668() != v25))
    {
      sub_24F922668();
    }

    return sub_24F922698();
  }

  else
  {
    v29[0] = *(v1 + 8);

    sub_24F922528();
    sub_24F922518();
    v26 = *v22;
    (*v22)(v5, v2);
    sub_24F9224D8();
    v26(v8, v2);
    sub_24F9224F8();
    v26(v11, v2);
    sub_24F9224E8();
    v26(v14, v2);
    sub_24F922508();
    v26(v17, v2);
    if ((v30 & 1) == 0 || (v27 = sub_24F922658(), sub_24F922668(), sub_24F922668(), sub_24F922668() != v27))
    {
      sub_24F922668();
    }

    return sub_24F922688();
  }
}

id LabelPlaceholderCompatibility.referableLayoutTextView.getter()
{
  v1 = sub_24F922678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 65);
  if (v13)
  {
    v14 = *(v0 + 64);
    v23[0] = *v0;
    v23[1] = v6;
    v24 = v7;
    *v25 = *(v0 + 17);
    *&v25[3] = *(v0 + 20);
    v26 = v9;
    v27 = v8;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v14;
    v32 = v13;
    sub_24F051B10(v4);
    sub_24F922648();
    (*(v2 + 8))(v4, v1);
    v15 = type metadata accessor for _LabelPlaceholderReferableLayoutTextView();
    v16 = objc_allocWithZone(v15);
    sub_24E615E00(v23, v16 + OBJC_IVAR____TtC12GameStoreKitP33_B38222CA53AFCF1CF9A37B16D7A7E63B40_LabelPlaceholderReferableLayoutTextView_base);
    v22.receiver = v16;
    v22.super_class = v15;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_24F0548D4(&qword_27F237CC0, &unk_24F9C1C3C);
    return v17;
  }

  else if (*(v0 + 16))
  {
    sub_24F922A78();
    swift_allocObject();
    sub_24F051B00(v5, v6, 1);
    v19 = v9;
    return sub_24F922A68();
  }

  else
  {
    sub_24F9229D8();
    swift_allocObject();
    sub_24F051B00(v5, v6, 0);
    v20 = v9;
    return sub_24F9229C8();
  }
}

double LabelPlaceholderCompatibility.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  *&v6 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a3, *&a2), v5);

  return v6;
}

JUMeasurements __swiftcall LabelPlaceholderCompatibility.measurements(fitting:with:)(CGSize fitting, UITraitCollection with)
{
  isa = with.super.isa;
  v3 = sub_24F922588();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v52 - v7;
  v8 = sub_24F922678();
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  v18 = *(v2 + 40);
  v17 = *(v2 + 48);
  v19 = *(v2 + 56);
  v20 = *(v2 + 64);
  v21 = *(v2 + 65);
  if (v21)
  {
    v57 = *v2;
    v58 = v13;
    v59 = v14;
    *v60 = *(v2 + 17);
    *&v60[3] = *(v2 + 20);
    v61 = v16;
    v62 = v15;
    v63 = v18;
    v64 = v17;
    v65 = v19;
    v66 = v20;
    v67 = v21;
    v22 = v9;
    sub_24F051B10(v11);
    sub_24F922A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F941C80;
    v24 = isa;
    *(v23 + 32) = isa;
    v25 = v24;
    v26 = sub_24F922A28();
    sub_24F922288();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    (*(v22 + 8))(v11, v8);
  }

  else
  {
    v35 = isa;
    if (v14)
    {
      sub_24F051B00(v12, v13, 1);
      v36 = v16;
      sub_24F922558();
    }

    else
    {
      sub_24F051B00(v12, v13, 0);
      v37 = v16;
      sub_24F922578();
    }

    v39 = v53;
    v38 = v54;
    v40 = v55;
    (*(v54 + 32))(v53, v5, v55);
    sub_24F922A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24F941C80;
    *(v41 + 32) = v35;
    v42 = v35;
    v43 = sub_24F922A28();
    sub_24F922288();
    v28 = v44;
    v30 = v45;
    v32 = v46;
    v34 = v47;

    (*(v38 + 8))(v39, v40);
  }

  v48 = v28;
  v49 = v30;
  v50 = v32;
  v51 = v34;
  result.var3 = v51;
  result.var2 = v50;
  result.var1 = v49;
  result.var0 = v48;
  return result;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, id a11, char a12)
{
  v22 = [a11 traitCollection];
  v23 = v22;
  if (a2)
  {
    sub_24E6C065C();
    v26[0] = a1;
    v26[1] = a2;
    v27 = 0;
    v28 = MEMORY[0x253051BF0](a3, v23);
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8 & 1;
    v34 = a12 & 1;

    *&v24 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), v23);

    sub_24F052864(v26);
  }

  else
  {

    return 0.0;
  }

  return v24;
}

double static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, UITraitCollection a11, char a12)
{
  if (!a2)
  {
    return 0.0;
  }

  sub_24E6C065C();
  v24[0] = a1;
  v24[1] = a2;
  v25 = 0;
  v26 = MEMORY[0x253051BF0](a3, a11.super.isa);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8 & 1;
  v32 = a12 & 1;

  *&v22 = LabelPlaceholderCompatibility.measurements(fitting:with:)(__PAIR128__(*&a10, *&a9), a11);
  sub_24F052864(v24);
  return v22;
}