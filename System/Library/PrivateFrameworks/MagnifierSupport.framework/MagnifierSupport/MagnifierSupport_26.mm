unint64_t sub_257E2ECCC()
{
  result = qword_27F8F9F58;
  if (!qword_27F8F9F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F18, &unk_257EEC090);
    sub_257E2EBC0();
    sub_257E2ED88(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F58);
  }

  return result;
}

uint64_t sub_257E2ED88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257E2EDD0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_257E2EE2C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_257E2EE90()
{
  result = qword_27F8F9F60;
  if (!qword_27F8F9F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F08, &qword_257EEC080);
    sub_257E2EF48();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F60);
  }

  return result;
}

unint64_t sub_257E2EF48()
{
  result = qword_27F8F9F68;
  if (!qword_27F8F9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9EF8, &qword_257EEC010);
    sub_257BD2D4C(&qword_27F8F9F70, &qword_27F8F9F00, &qword_257EEC048, MEMORY[0x277CE04B0]);
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0, &unk_257EEC100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F68);
  }

  return result;
}

double sub_257E2F054(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_257BD1B90(a1, a2, a3 & 1);
  }

  return result;
}

double sub_257E2F098(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_257C0300C(a1, a2, a3 & 1);
  }

  return result;
}

id static CompositionRoot.clarityUIRootView.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F8F46C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F8F9FA8;
  *a1 = qword_27F8F9FA8;

  return v2;
}

id sub_257E2F1B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  if (qword_27F8F46C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8F9FA0;
  v2 = qword_281544FE0;
  sub_257ECC3F0();
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_281548330;
  v5 = qword_281548340;
  v6 = qword_281548348;
  v7 = qword_281548350;
  v8 = qword_281548358;
  objc_allocWithZone(type metadata accessor for MAGCaptureService(0));
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  result = MAGCaptureService.init(captureSession:eventHandler:environment:)(v0, v1, &v4);
  qword_27F8F9FA8 = result;
  return result;
}

uint64_t sub_257E2F320()
{
  if (qword_27F8F46C8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F9FA8;
  v1 = type metadata accessor for MagnifierStillImageStore(0);
  swift_allocObject();
  result = MagnifierStillImageStore.init(captureService:)(v0);
  qword_27F8F9FC8 = v1;
  unk_27F8F9FD0 = &protocol witness table for MagnifierStillImageStore;
  qword_27F8F9FB0 = result;
  return result;
}

uint64_t static CompositionRoot.stillImageStore.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_257C024BC(&qword_27F8F9FB0, v2);
}

void sub_257E2F450(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
  }

  sub_257C024BC(&qword_27F8F9FB0, v9);
  type metadata accessor for ImageCache();
  v7 = swift_allocObject();
  sub_257C024BC(v9, v7 + 24);
  *(v7 + 16) = a2;
  v8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v7 + 64) = v8;
  [v8 setTotalCostLimit_];
  __swift_destroy_boxed_opaque_existential_0(v9);
  *a4 = v7;
}

uint64_t sub_257E2F528()
{
  type metadata accessor for MAGFeatures();
  v0 = swift_allocObject();
  if (qword_27F8F4870 != -1)
  {
    swift_once();
  }

  v1 = qword_27F913518;
  sub_257E32D54();
  v2 = v1;
  result = sub_257ECDEF0();
  *(v0 + 16) = result;
  off_27F8F9FD8 = v0;
  return result;
}

uint64_t static CompositionRoot.settings.getter()
{
  type metadata accessor for MAGSettings();

  return swift_initStaticObject();
}

id sub_257E2F644()
{
  result = [objc_allocWithZone(type metadata accessor for MAGPulseFeedbackProcessor()) init];
  qword_27F8F9FE0 = result;
  return result;
}

uint64_t static CompositionRoot.activityStore.getter()
{
  type metadata accessor for MAGActivityStore();

  return swift_initStaticObject();
}

id sub_257E2F6D0()
{
  if (qword_27F8F4750 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA040;
  v1 = qword_27F8F4730;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA020;
  v3 = qword_27F8F46C8;
  sub_257ECC3F0();
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_27F8F9FA8;
  type metadata accessor for MAGDocumentFramingService();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = v6;
  qword_27F8F9FE8 = v4;

  return v6;
}

double sub_257E2F814()
{
  if (qword_27F8F4768 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA058;
  type metadata accessor for MAGSpeechRecognitionService(0);
  swift_allocObject();
  qword_27F8F9FF0 = MAGSpeechRecognitionService.init(audioService:)(v0);

  sub_257ECC3F0();
  return result;
}

id sub_257E2F920()
{
  if (qword_27F8F4708 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F9FF8;
  v1 = qword_27F8F46C8;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27F8F9FA8 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v3 = objc_allocWithZone(type metadata accessor for MAGARService(0));
  result = MAGARService.init(eventHandler:captureSessionQueue:)(v0, v2);
  qword_27F8FA000 = result;
  return result;
}

uint64_t sub_257E2FA70()
{
  v0 = sub_257ECFD20();
  v40 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v34, v7, v8, v9, v10);
  v11 = sub_257ECF190();
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  if (qword_27F8F4718 != -1)
  {
    swift_once();
  }

  v16 = qword_27F8F4710;
  v39 = qword_27F8FA008;
  sub_257ECC3F0();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27F8F4758;
  v38 = qword_27F8FA000;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_27F8F4778;
  v37 = qword_27F8FA048;
  sub_257ECC3F0();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27F8F46F0;
  v36 = qword_27F8FA068;
  sub_257ECC3F0();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27F8F9FE0;
  type metadata accessor for MAGPointAndSpeakService(0);
  v21 = swift_allocObject();
  v35 = v20;
  sub_257ECCC70();
  sub_257ECCC70();
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v23 = v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v24 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v21 + v24) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v26 = swift_allocObject();
  *(v26 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v21 + v25) = v26;
  *(v26 + 24) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v33 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v41 = sub_257BD52CC();
  sub_257ECF180();
  v42 = v22;
  v32[1] = sub_257E32C64();
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  v27 = *(v40 + 104);
  v27(v6, *MEMORY[0x277D85260], v0);
  *&v33[v21] = sub_257ECFD80();
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v40 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v33 = "coration.type.text";
  sub_257ECF160();
  v42 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v27(v6, *MEMORY[0x277D85268], v0);
  result = sub_257ECFD80();
  v29 = v39;
  *(v21 + v40) = result;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v29;
  v30 = v37;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v38;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v30;
  v31 = v35;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v36;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v31;
  qword_27F8FA010 = v21;
  return result;
}

uint64_t sub_257E30134()
{
  if (qword_27F8F4758 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA048;
  v1 = qword_27F8F4710;
  sub_257ECC3F0();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA000;
  type metadata accessor for MAGDoorDetectionService(0);
  swift_allocObject();
  result = MAGDoorDetectionService.init(textDetectionService:arService:)(v0, v2);
  qword_27F8FA018 = result;
  return result;
}

void sub_257E30224()
{
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8FA000;
  type metadata accessor for MAGFrameProviderService();
  v1 = swift_allocObject();
  *(v1 + 64) = sub_257E8235C;
  *(v1 + 72) = 0;
  *(v1 + 80) = v0;
  v2 = qword_281544FE0;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_281548330;
  v5 = qword_281548340;
  v6 = qword_281548348;
  v7 = qword_281548350;
  v8 = qword_281548358;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();

  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  qword_27F8FA020 = v1;
}

uint64_t sub_257E3037C()
{
  type metadata accessor for MAGVideoCaptioningService(0);
  swift_allocObject();
  result = MAGVideoCaptioningService.init()();
  qword_27F8FA028 = result;
  return result;
}

void sub_257E30438()
{
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F4740;
  v1 = qword_27F8FA000;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8FA030;
  v3 = qword_27F8F46F0;
  sub_257ECC3F0();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8F9FE0;
  v5 = objc_allocWithZone(type metadata accessor for MAGObjectUnderstandingService());
  v6 = v4;
  v7 = sub_257C562A8(v1, v2, v6);

  qword_27F8FA038 = v7;
}

id sub_257E3057C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t static CompositionRoot.followUpContext.getter()
{
  type metadata accessor for MAGFollowUpContext();

  return swift_initStaticObject();
}

uint64_t sub_257E30668()
{
  type metadata accessor for MAGTextDetectionService();
  swift_allocObject();
  result = MAGTextDetectionService.init()();
  qword_27F8FA048 = result;
  return result;
}

id sub_257E306CC()
{
  type metadata accessor for MAGImageCaptionService();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  qword_27F8FA050 = v0;
  return result;
}

void sub_257E30748()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for MAGAudioService();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CB8030];
  v3 = *MEMORY[0x277CB80A8];
  v7[0] = 0;
  if ([v0 setCategory:v2 mode:v3 options:1 error:v7])
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    v6 = sub_257ECC9F0();

    swift_willThrow();
  }

  *(v1 + 16) = v0;
  qword_27F8FA058 = v1;
}

uint64_t sub_257E308B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  v6 = swift_allocObject();
  result = a3(MEMORY[0x277D84F90]);
  *(v6 + 16) = result;
  *a4 = v6;
  return result;
}

char *sub_257E3093C()
{
  if (qword_27F8F4768 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGOutputEngine(0);
  swift_allocObject();
  v0 = sub_257ECC3F0();
  result = MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(v0, 1);
  qword_27F8FA068 = result;
  return result;
}

double sub_257E309E4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  sub_257ECC3F0();
  return result;
}

id static CompositionRoot.magnifierExtensionViewController.getter()
{
  v0 = sub_257E30B80();
  v1 = [objc_allocWithZone(type metadata accessor for MagnifierExtensionViewController()) initWithRootViewController_];

  return v1;
}

double static CompositionRoot.magnifierLockedCameraCaptureSession.getter()
{
  swift_beginAccess();
  sub_257ECC3F0();
  return result;
}

double static CompositionRoot.magnifierLockedCameraCaptureSession.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F8FA070 = a1;

  return result;
}

char *sub_257E30B80()
{
  v158 = sub_257ECDE70();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v0, v1, v2, v3);
  v159 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v5, v6, v7, v8);
  v140 = &v139 - v9;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE0, &unk_257EEC1B0);
  v144 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v10, v11, v12, v13);
  v141 = &v139 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE8, &unk_257EEBE50);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v15, v16, v17, v18);
  v142 = &v139 - v19;
  v20 = sub_257ECFD20();
  v182 = *(v20 - 8);
  v183 = v20;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v179 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v175, v26, v27, v28, v29);
  v177 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_257ECF190();
  MEMORY[0x28223BE20](v31 - 8, v32, v33, v34, v35);
  v181 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39, v40, v41, v42);
  v44 = &v139 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0, &unk_257EEB5A0);
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47, v48, v49, v50);
  v52 = &v139 - v51;
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  v165 = qword_27F8FA060;
  if (qword_27F8F46D0 != -1)
  {
    swift_once();
  }

  sub_257C024BC(&qword_27F8F9FB0, &v191);
  if (qword_27F8F4778 != -1)
  {
    swift_once();
  }

  v164 = qword_27F8FA068;
  if (qword_27F8F46C8 != -1)
  {
    swift_once();
  }

  v163 = qword_27F8F9FA8;
  if (qword_27F8F46C0 != -1)
  {
    swift_once();
  }

  v162 = qword_27F8F9FA0;
  if (qword_27F8F4710 != -1)
  {
    swift_once();
  }

  v161 = qword_27F8FA000;
  if (qword_27F8F4708 != -1)
  {
    swift_once();
  }

  v160 = qword_27F8F9FF8;
  if (qword_27F8F4700 != -1)
  {
    swift_once();
  }

  v156 = qword_27F8F9FF0;
  if (qword_27F8F4758 != -1)
  {
    swift_once();
  }

  v155 = qword_27F8FA048;
  if (qword_27F8F4760 != -1)
  {
    swift_once();
  }

  v154 = qword_27F8FA050;
  if (qword_27F8F4750 != -1)
  {
    swift_once();
  }

  v178 = qword_27F8FA040;
  if (qword_27F8F4728 != -1)
  {
    swift_once();
  }

  v176 = qword_27F8FA018;
  if (qword_27F8F4748 != -1)
  {
    swift_once();
  }

  v174 = qword_27F8FA038;
  if (qword_27F8F4740 != -1)
  {
    swift_once();
  }

  v173 = qword_27F8FA030;
  if (qword_27F8F4720 != -1)
  {
    swift_once();
  }

  v172 = qword_27F8FA010;
  if (qword_27F8F4718 != -1)
  {
    swift_once();
  }

  v171 = qword_27F8FA008;
  if (qword_27F8F4730 != -1)
  {
    swift_once();
  }

  v170 = qword_27F8FA020;
  type metadata accessor for MAGFollowUpContext();
  inited = swift_initStaticObject();
  if (qword_27F8F46F0 != -1)
  {
    swift_once();
  }

  v169 = qword_27F8F9FE0;
  if (qword_27F8F4738 != -1)
  {
    swift_once();
  }

  v168 = qword_27F8FA028;
  v152 = type metadata accessor for AppViewController(0);
  v53 = objc_allocWithZone(v152);
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons] = MEMORY[0x277D84FA0];
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning] = 0;
  v54 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  *&v186 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BA0, &unk_257EEC1C0);
  sub_257ECDD20();
  (*(v46 + 32))(&v53[v54], v52, v45);
  v55 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  *&v186 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0, &qword_257EE59E0);
  sub_257ECDD20();
  (*(v38 + 32))(&v53[v55], v44, v37);
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor] = 0xBFF0000000000000;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic] = 0;
  v56 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator;
  *&v53[v56] = sub_257DFFEAC();
  v57 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
  *v57 = 0;
  v57[8] = 1;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor] = 0x3FF0000000000000;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_setupResult] = 0;
  v151 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue;
  v180 = sub_257BD52CC();
  sub_257ECF150();
  *&v186 = MEMORY[0x277D84F90];
  v167 = sub_257E32C64();
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  v58 = sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  v59 = *MEMORY[0x277D85260];
  v61 = v182 + 104;
  v60 = *(v182 + 104);
  v62 = v179;
  v60(v179, v59, v183);
  *&v53[v151] = sub_257ECFD80();
  v139 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_audioQueue;
  sub_257ECF150();
  *&v186 = MEMORY[0x277D84F90];
  v151 = v58;
  sub_257ED0180();
  v150 = v59;
  v182 = v61;
  v149 = v60;
  v60(v62, v59, v183);
  *&v53[v139] = sub_257ECFD80();
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel] = 1;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel] = 1;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kDetectionInformationLabelPadding] = 0x4034000000000000;
  v63 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement];
  *v63 = 0;
  v63[1] = 0xE000000000000000;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator] = 0;
  v64 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v65 = v140;
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  v66 = v141;
  v67 = v145;
  sub_257ECDDC0();

  (*(v143 + 8))(v65, v67);
  sub_257BD2D4C(&qword_281544428, &qword_27F8F9EE0, &unk_257EEC1B0, MEMORY[0x277CBCB20]);
  v68 = v142;
  v69 = v147;
  sub_257ECDE10();
  (*(v144 + 8))(v66, v69);
  sub_257BD2D4C(&qword_281544360, &qword_27F8F9EE8, &unk_257EEBE50, MEMORY[0x277CBCC18]);
  v70 = v148;
  v71 = sub_257ECDD90();
  (*(v146 + 8))(v68, v70);
  *&v53[v64] = v71;
  v72 = MEMORY[0x277D84F90];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers] = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84FA0];
  v74 = v72 >> 62;
  v75 = MEMORY[0x277D84FA0];
  if (v72 >> 62)
  {
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v75 = MEMORY[0x277D84FA0];
    }
  }

  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables] = v75;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription] = 0;
  v76 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptionProvider;
  type metadata accessor for ControlSubscriptionProvider(0);
  swift_allocObject();
  *&v53[v76] = sub_257E3E3A4();
  v77 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptionProvider;
  swift_allocObject();
  *&v53[v77] = sub_257E3E3A4();
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions] = 0;
  v78 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  *&v53[v78] = sub_257E2D04C();
  v79 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptions;
  *&v53[v79] = sub_257E2D04C();
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription] = 0;
  if (v74)
  {
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v80 = MEMORY[0x277D84FA0];
    }

    *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions] = v80;
    *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription] = 0;
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
      v73 = v81;
    }
  }

  else
  {
    *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions] = v73;
    *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription] = 0;
  }

  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionSubscriptions] = v73;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton] = 0;
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer;
  *&v53[v82] = [objc_allocWithZone(MEMORY[0x277CE7E40]) init];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_keyboardVQASubscription] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_microphoneToggleSubscription] = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v84 = objc_opt_self();
  v85 = [v84 bundleForClass_];
  v86 = sub_257ECF4C0();
  v87 = sub_257ECF4C0();
  v88 = [v85 localizedStringForKey:v86 value:0 table:v87];

  if (!v88)
  {
    sub_257ECF500();
    v88 = sub_257ECF4C0();
  }

  v89 = [v84 bundleForClass_];
  v90 = sub_257ECF4C0();
  v91 = sub_257ECF4C0();
  v92 = [v89 localizedStringForKey:v90 value:0 table:v91];

  if (!v92)
  {
    sub_257ECF500();
    v92 = sub_257ECF4C0();
  }

  v93 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController;
  type metadata accessor for ActivityNameOnBoardingController();
  v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v88 detailText:v92 icon:0];

  *&v53[v93] = v94;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton] = 0;
  v95 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName];
  *v95 = 0;
  v95[1] = 0;
  v96 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
  v97 = objc_allocWithZone(MEMORY[0x277CE7D68]);
  v98 = sub_257ECF4C0();
  v99 = [v97 initWithHIDTapIdentifier:v98 HIDEventTapPriority:100 systemEventTapIdentifier:0 systemEventTapPriority:0];

  *&v53[v96] = v99;
  v100 = MEMORY[0x277D84F90];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v101 = [objc_opt_self() shared];
  }

  else
  {
    v101 = 0;
  }

  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_modelsManager] = v101;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechMaxFrameCount] = 5;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = v100;
  v102 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate;
  v103 = sub_257ECCC80();
  (*(*(v103 - 8) + 56))(&v53[v102], 1, 1, v103);
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect] = 0;
  sub_257ECCC70();
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_personsLabelPool] = v100;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView] = 0;
  v104 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  type metadata accessor for DetectionLabel();
  *&v53[v104] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView] = 0;
  v105 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleSessionDispatchQueue;
  sub_257ECD2C0();
  *&v53[v105] = sub_257ECD2B0();
  v106 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction];
  *v106 = 0;
  v106[1] = 0xE000000000000000;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers] = v100;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache] = v100;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache] = MEMORY[0x277D84F98];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView] = 0;
  v107 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine;
  *&v53[v107] = [objc_allocWithZone(MEMORY[0x277CE6AF8]) &off_279854B78];
  v108 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator;
  *&v53[v108] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) &off_279854B78];
  sub_257ECCC70();
  v109 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionString];
  *v109 = 0;
  v109[1] = 0xE000000000000000;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups] = v100;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback] = 0;
  v110 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement];
  *v110 = 0;
  v110[1] = 0xE000000000000000;
  sub_257ECCC70();
  sub_257ECCC70();
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncementWasUpsideDownNotification] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] = 0;
  v111 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement];
  *v111 = 0;
  v111[1] = 0xE000000000000000;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_handPoseModelNotAvailable] = 0;
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_providedTextTooCloseFeedback] = 0;
  v112 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierLaunchedNotification];
  *v112 = 0xD00000000000002ALL;
  v112[1] = 0x8000000257F07DF0;
  v113 = &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierClosedNotification];
  *v113 = 0xD000000000000028;
  v113[1] = 0x8000000257F07E20;
  v114 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiMonitor;
  (*(v157 + 104))(v159, *MEMORY[0x277CD8CA8], v158);
  sub_257ECDEB0();
  swift_allocObject();
  *&v53[v114] = sub_257ECDE90();
  v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController] = 0;
  v115 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerTextQueue;
  sub_257ECF170();
  *&v186 = v100;
  sub_257ED0180();
  v149(v179, v150, v183);
  *&v53[v115] = sub_257ECFD80();
  v116 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer;
  v186 = xmmword_281548330;
  v187 = qword_281548340;
  v188 = qword_281548348;
  v189 = qword_281548350;
  v190 = qword_281548358;
  objc_allocWithZone(type metadata accessor for LiveCameraLayer(0));
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  *&v53[v116] = sub_257DBE70C(&v186);
  v117 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
  *&v53[v117] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v118 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_settingsButton;
  type metadata accessor for SettingsButton();
  *&v53[v118] = [swift_getObjCClassFromMetadata() buttonWithType_];
  v119 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  type metadata accessor for ImageWell();
  *&v53[v119] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton] = 0;
  v120 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  *&v53[v120] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v121 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  *&v53[v121] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimer] = 0;
  sub_257ECCC70();
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints] = v100;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray] = 0;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionHandler] = v165;
  sub_257C024BC(&v191, &v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore]);
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine] = v164;
  v122 = v163;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] = v163;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureEventHandler] = v162;
  v123 = v161;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] = v161;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arEventHandler] = v160;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechRecognitionService] = v156;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService] = v155;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionService] = v154;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_advancedEventHandler] = v178;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService] = v176;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService] = v174;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_ouEventHandler] = v173;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] = v172;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakEventHandler] = v171;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_frameProviderService] = v170;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_followUpContext] = inited;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor] = v169;
  *&v53[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_videoCaptioningService] = v168;
  v185.receiver = v53;
  v185.super_class = v152;
  sub_257ECC3F0();
  sub_257ECC3F0();
  v124 = v122;
  sub_257ECC3F0();
  v125 = v123;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  v126 = v174;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  v127 = v169;
  sub_257ECC3F0();
  v128 = objc_msgSendSuper2(&v185, sel_initWithNibName_bundle_, 0, 0);
  v129 = *&v128[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionHandler];
  v130 = v128;
  v131 = [v130 description];
  v132 = sub_257ECF500();
  v134 = v133;

  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  *(v136 + 16) = &unk_257EEC1F8;
  *(v136 + 24) = v135;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v184 = *(v129 + 16);
  *(v129 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v136, v132, v134, isUniquelyReferenced_nonNull_native);

  *(v129 + 16) = v184;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(&v191);
  return v130;
}

unint64_t sub_257E32C64()
{
  result = qword_281543F30;
  if (!qword_281543F30)
  {
    sub_257ECFCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543F30);
  }

  return result;
}

uint64_t sub_257E32CBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257BE3DE0;

  return sub_257D9A698(a1, v1);
}

unint64_t sub_257E32D54()
{
  result = qword_27F8FA078;
  if (!qword_27F8FA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA078);
  }

  return result;
}

uint64_t MAGActivity.id.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  return v3;
}

unint64_t MAGActivity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257ED02D0();

  MEMORY[0x259C72150](v1, v2);
  MEMORY[0x259C72150](23847, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t static MAGActivity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640();
  }
}

uint64_t MAGActivity.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

double sub_257E32EF0@<D0>(void *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_257E32EFC()
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

uint64_t sub_257E32F50(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();
  return sub_257ED0800();
}

unint64_t sub_257E32F9C()
{
  result = qword_27F8FA080;
  if (!qword_27F8FA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA080);
  }

  return result;
}

unint64_t sub_257E32FF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257ED02D0();

  MEMORY[0x259C72150](v1, v2);
  MEMORY[0x259C72150](23847, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t sub_257E3307C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640();
  }
}

uint64_t sub_257E330D0()
{
  v1 = 0xEB00000000646569;
  v2 = 0x6669636570736E75;
  v3 = [v0 horizontalSizeClass];
  if (v3)
  {
    v4 = 0x6E776F6E6B6E75;
    if (v3 == 1)
    {
      v4 = 0x746361706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0x72616C75676572;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  MEMORY[0x259C72150](v5, v6);

  MEMORY[0x259C72150](544612396, 0xE400000000000000);
  v7 = [v0 verticalSizeClass];
  if (v7)
  {
    v8 = 0x6E776F6E6B6E75;
    if (v7 == 1)
    {
      v8 = 0x746361706D6F63;
    }

    if (v7 == 2)
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      v2 = v8;
    }

    v1 = 0xE700000000000000;
  }

  MEMORY[0x259C72150](v2, v1);

  MEMORY[0x259C72150](125, 0xE100000000000000);
  return 2123899;
}

uint64_t sub_257E33264(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E332AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E33318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA090, &qword_257EEC3F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v17[-v14];
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0A0, &qword_257EEC400);
  sub_257BD2D4C(&qword_27F8FA0A8, &qword_27F8FA0A0, &qword_257EEC400, MEMORY[0x277CE14C0]);
  sub_257ECEA80();
  sub_257ECE550();
  sub_257BD2D4C(&qword_27F8FA098, &qword_27F8FA090, &qword_257EEC3F8, MEMORY[0x277CDE5A0]);
  sub_257ECEBC0();

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_257E33514@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v61 = a2;
  v60 = a1;
  v66 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0B0, &qword_257EEC408);
  v73 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v9, v10, v11, v12);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v70 = &v59 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0B8, &qword_257EEC410);
  v72 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v20, v21, v22, v23);
  v69 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v74 = &v59 - v30;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0C0, &qword_257EEC418);
  v71 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v31, v32, v33, v34);
  v67 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v68 = &v59 - v41;
  sub_257ECE550();
  v83 = a1;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0C8, &unk_257EEC420);
  sub_257E34E48(&qword_27F8FA0D0, &qword_27F8FA0C8, &unk_257EEC420);
  sub_257ECEFB0();
  sub_257ECE550();
  v43 = v60;
  v44 = v61;
  v79 = v60;
  v80 = v61;
  v81 = v42;
  v82 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0D8, &qword_257EEC430);
  sub_257E34DAC();
  sub_257ECEFB0();
  sub_257ECE550();
  v75 = v43;
  v76 = v44;
  v77 = v42;
  v78 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0F8, &qword_257EEC440);
  sub_257BD2D4C(&qword_27F8FA100, &qword_27F8FA0F8, &qword_257EEC440, MEMORY[0x277CE14C0]);
  v45 = v70;
  sub_257ECEFB0();
  v59 = *(v71 + 16);
  v46 = v67;
  v47 = v62;
  v59(v67, v68, v62);
  v61 = *(v72 + 16);
  v48 = v69;
  v49 = v63;
  v61(v69, v74, v63);
  v60 = *(v73 + 16);
  v50 = v64;
  v51 = v45;
  v52 = v65;
  v60(v64, v51, v65);
  v53 = v66;
  v59(v66, v46, v47);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA108, &qword_257EEC448);
  v61(&v53[*(v54 + 48)], v48, v49);
  v60(&v53[*(v54 + 64)], v50, v52);
  v55 = *(v73 + 8);
  v55(v70, v52);
  v56 = *(v72 + 8);
  v56(v74, v49);
  v57 = *(v71 + 8);
  v57(v68, v47);
  v55(v50, v52);
  v56(v69, v49);
  return (v57)(v67, v47);
}

uint64_t sub_257E33B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = &unk_2869061B8;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA130, &unk_257EEC4A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98, &qword_257EE7E00);
  v11 = sub_257BD2D4C(&qword_27F8FA138, &qword_27F8FA130, &unk_257EEC4A0, MEMORY[0x277D83980]);
  v12 = sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98, &qword_257EE7E00, MEMORY[0x277CDF028]);
  v13 = sub_257E350D0();
  return sub_257ECEF90(&v15, sub_257E351AC, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v13);
}

uint64_t sub_257E33CF4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MAGSoundEffect.rawValue.getter();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  sub_257BDAB08();
  sub_257ECC3F0();

  sub_257ECC3F0();
  return sub_257ECEED0();
}

uint64_t sub_257E33DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = &unk_2869061B8;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA130, &unk_257EEC4A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA0F0, &qword_257EEC438);
  v11 = sub_257BD2D4C(&qword_27F8FA138, &qword_27F8FA130, &unk_257EEC4A0, MEMORY[0x277D83980]);
  v12 = sub_257E34E48(&qword_27F8FA0E8, &qword_27F8FA0F0, &qword_257EEC438);
  v13 = sub_257E350D0();
  return sub_257ECEF90(&v15, sub_257E350C4, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v13);
}

uint64_t sub_257E33F1C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v17 = &unk_286905560;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F00, &qword_257EE32E0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98, &qword_257EE7E00);
  v13 = sub_257BD2D4C(&qword_27F8FA148, &qword_27F8F7F00, &qword_257EE32E0, MEMORY[0x277D83980]);
  v14 = sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98, &qword_257EE7E00, MEMORY[0x277CDF028]);
  v15 = sub_257E35134();
  return sub_257ECEF90(&v17, sub_257E35124, v10, v11, MEMORY[0x277D837D0], v12, v13, v14, v15);
}

uint64_t sub_257E34094(unsigned __int8 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v11 = sub_257ECE540();
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  sub_257ECE530();
  sub_257ECE520();
  MAGSoundEffect.rawValue.getter();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  sub_257ECC3F0();
  sub_257ECC3F0();

  return sub_257ECEEC0();
}

uint64_t sub_257E343F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v11, &v18[v12[5]]);
  v18[v12[6]] = 0;
  v18[v12[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v19 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v11, type metadata accessor for MAGOutputEvent.EventType);
  *&v18[v12[8]] = v19;
  sub_257CBBC80(v18);
  return sub_257C15F24(v18, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257E34580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a1;
  v76 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98, &qword_257EE7E00);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v65 = &v63 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110, &qword_257EEC450) - 8;
  MEMORY[0x28223BE20](v72, v14, v15, v16, v17);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v69 = &v63 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v71 = &v63 - v30;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA118, &qword_257EEC458);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v31, v32, v33, v34);
  v67 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v64 = &v63 - v41;
  sub_257ECE550();
  v80 = a2;
  v81 = a3;
  v82 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE80();
  sub_257ECF0C0();
  sub_257ECE550();
  v42 = swift_allocObject();
  v42[2] = v66;
  v42[3] = a2;
  v42[4] = a3;
  v42[5] = a4;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v43 = v65;
  sub_257ECEEC0();
  v77 = a2;
  v78 = a3;
  v79 = a4;
  sub_257ECEE60();
  v45 = v80;
  v44 = v81;

  v46 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v45 & 0xFFFFFFFFFFFFLL;
  }

  v47 = v46 == 0;
  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v50 = v69;
  (*(v74 + 32))(v69, v43, v75);
  v51 = v71;
  v52 = (v50 + *(v72 + 44));
  *v52 = KeyPath;
  v52[1] = sub_257E34F64;
  v52[2] = v49;
  sub_257E34F7C(v50, v51);
  v54 = v67;
  v53 = v68;
  v55 = *(v68 + 16);
  v56 = v64;
  v57 = v70;
  v55(v67, v64, v70);
  v58 = v73;
  sub_257E34FEC(v51, v73);
  v59 = v76;
  v55(v76, v54, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA128, &qword_257EEC498);
  sub_257E34FEC(v58, &v59[*(v60 + 48)]);
  sub_257E3505C(v51);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_257E3505C(v58);
  return (v61)(v54, v57);
}

double sub_257E34A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE60();
  v21 = v26;
  *v13 = v25;
  v13[1] = v21;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v13, &v20[v14[5]]);
  v20[v14[6]] = 0;
  v20[v14[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v22 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v13, type metadata accessor for MAGOutputEvent.EventType);
  *&v20[v14[8]] = v22;
  sub_257CBBC80(v20);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_257ECEE70();
  sub_257C15F24(v20, type metadata accessor for MAGOutputEvent);

  return result;
}

uint64_t sub_257E34C88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA088, &qword_257EEC3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA090, &qword_257EEC3F8);
  sub_257BD2D4C(&qword_27F8FA098, &qword_27F8FA090, &qword_257EEC3F8, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  return sub_257ECE250();
}

unint64_t sub_257E34DAC()
{
  result = qword_27F8FA0E0;
  if (!qword_27F8FA0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA0D8, &qword_257EEC430);
    sub_257E34E48(&qword_27F8FA0E8, &qword_27F8FA0F0, &qword_257EEC438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA0E0);
  }

  return result;
}

uint64_t sub_257E34E48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98, &qword_257EE7E00, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E34EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE460();
  *a1 = result & 1;
  return result;
}

uint64_t sub_257E34F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110, &qword_257EEC450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E34FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110, &qword_257EEC450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E3505C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA110, &qword_257EEC450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E350D0()
{
  result = qword_27F8FA140;
  if (!qword_27F8FA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA140);
  }

  return result;
}

unint64_t sub_257E35134()
{
  result = qword_27F8FA150;
  if (!qword_27F8FA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA150);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

uint64_t sub_257E35224()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

id sub_257E35298@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoZoomFactor];
  *a2 = v4;
  return result;
}

void sub_257E352E0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257E35360(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

uint64_t sub_257E353D8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v16 = *a1;
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
      v5 = v17;
    }

    else
    {
      v5 = MEMORY[0x277D84FA0];
    }

    v3 = v16;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v18 = v5;
  switch(v3)
  {
    case 0:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v18;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_257E35950(a2, result);
      }

      __break(1u);
      goto LABEL_56;
    case 1:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v18;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_58;
      }

      v11 = sub_257E3EB90(a2, result);
      goto LABEL_39;
    case 2:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v18;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_57;
      }

      v11 = sub_257E40450(a2, result);
LABEL_39:
      v18 = v11;
      sub_257E3FBC4(a2);
      sub_257ECDCB0();

      return v18;
    case 3:
      type metadata accessor for ScrubberButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      if (!v4 || !sub_257ED0210())
      {
        return MEMORY[0x277D84FA0];
      }

      sub_257BF2CF8(MEMORY[0x277D84F90]);
      return v7;
    case 4:
      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !a2)
      {
        return v18;
      }

      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {

        return sub_257E378D4(a2, result);
      }

      else
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      return result;
    case 5:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v8 = swift_dynamicCastClassUnconditional();
      v9 = sub_257E43920;
      return sub_257E41484(v8, v9);
    case 6:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v12 = swift_dynamicCastClassUnconditional();
      return sub_257E37218(v12);
    case 7:
      type metadata accessor for MenuButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v13 = swift_dynamicCastClassUnconditional();

      return sub_257E3E750(v13);
    case 8:
      type metadata accessor for SegmentedButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v15 = swift_dynamicCastClassUnconditional();
      return sub_257E42018(v15);
    case 9:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v14 = swift_dynamicCastClassUnconditional();
      return sub_257E415D0(v14);
    case 10:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v8 = swift_dynamicCastClassUnconditional();
      v9 = sub_257E43C94;
      return sub_257E41484(v8, v9);
    case 12:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v10 = swift_dynamicCastClassUnconditional();
      return sub_257E41AF4(v10);
    case 13:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v8 = swift_dynamicCastClassUnconditional();
      v9 = sub_257E43D30;
      return sub_257E41484(v8, v9);
    case 14:
      type metadata accessor for ToggleButton();
      if (!swift_dynamicCastClass())
      {
        return v18;
      }

      v8 = swift_dynamicCastClassUnconditional();
      v9 = sub_257E43D38;
      return sub_257E41484(v8, v9);
    default:
      return v18;
  }
}

uint64_t sub_257E35950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v217 = a2;
  v5 = *v3;
  v195 = v3;
  v225 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v212 = *(v6 - 8);
  v213 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v211 = v164 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v215 = *(v12 - 8);
  v216 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v214 = v164 - v17;
  v204 = sub_257ECF130();
  v200 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v18, v19, v20, v21);
  v197 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_257ECFD10();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v23, v24, v25, v26);
  v203 = v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v199 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v28, v29, v30, v31);
  v196 = v164 - v32;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8, &qword_257EEC8D0);
  v202 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v33, v34, v35, v36);
  v198 = v164 - v37;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8, &qword_257EEC8D8);
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v38, v39, v40, v41);
  v208 = v164 - v42;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1E0, &qword_257EEC8E0);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v43, v44, v45, v46);
  v177 = v164 - v47;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1E8, &qword_257EEC8E8);
  v182 = *(v184 - 8);
  MEMORY[0x28223BE20](v184, v48, v49, v50, v51);
  v180 = v164 - v52;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1F0, &qword_257EEC8F0);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v53, v54, v55, v56);
  v181 = v164 - v57;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1F8, &qword_257EEC8F8);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v58, v59, v60, v61);
  v186 = v164 - v62;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA200, &qword_257EEC900);
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v63, v64, v65, v66);
  v189 = v164 - v67;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA208, &unk_257EEC908);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v68, v69, v70, v71);
  v192 = v164 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v73 - 8, v74, v75, v76, v77);
  v176 = v164 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v79 - 8, v80, v81, v82, v83);
  v85 = v164 - v84;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA210, &qword_257EEC918);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v86, v87, v88, v89);
  v91 = v164 - v90;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA218, &qword_257EEC920);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v92, v93, v94, v95);
  v170 = v164 - v96;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA220, &qword_257EEC928);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v97, v98, v99, v100);
  v173 = v164 - v101;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v102 = MEMORY[0x277D84FA0];
  }

  v230 = v102;
  v103 = sub_257D49140();
  v226 = a1;
  v227 = v103;
  v104 = v103;
  v228 = 4096;
  sub_257D4BC14();
  v105 = sub_257ECDD90();

  v227 = v105;
  v223 = objc_opt_self();
  v106 = [v223 mainRunLoop];
  v229 = v106;
  v222 = sub_257ED0080();
  v107 = *(v222 - 8);
  v108 = *(v107 + 56);
  v220 = v107 + 56;
  v221 = v108;
  v108(v85, 1, 1, v222);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  v219 = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  v169 = MEMORY[0x277CBCD90];
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  v218 = sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v224 = v85;
  sub_257ECDDF0();
  sub_257BE4084(v85, &unk_27F8F4DB0, &unk_257ED8210);

  v109 = MEMORY[0x277CBCD60];
  sub_257BD2D4C(&unk_281544258, &qword_27F8FA210, &qword_257EEC918, MEMORY[0x277CBCD60]);
  v110 = v170;
  v111 = v168;
  sub_257ECDDD0();
  (*(v167 + 8))(v91, v111);
  v227 = v195[2];
  v112 = v227;
  v167 = sub_257ECFCF0();
  v113 = *(v167 - 8);
  v166 = *(v113 + 56);
  v168 = v113 + 56;
  v114 = v176;
  v166(v176, 1, 1, v167);
  v164[1] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257BD2D4C(&qword_281544398, &qword_27F8FA218, &qword_257EEC920, MEMORY[0x277CBCC08]);
  v115 = sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v165 = v112;
  v116 = v173;
  v117 = v172;
  v118 = v115;
  sub_257ECDDF0();
  sub_257BE4084(v114, &unk_27F8F8740, &qword_257EEBBB0);
  (*(v171 + 8))(v110, v117);
  v119 = swift_allocObject();
  swift_weakInit();
  v120 = swift_allocObject();
  v121 = v225;
  *(v120 + 16) = v119;
  *(v120 + 24) = v121;
  sub_257BD2D4C(&qword_2815441F8, &qword_27F8FA220, &qword_257EEC928, v109);
  v122 = v175;
  sub_257ECDE50();

  (*(v174 + 8))(v116, v122);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108, &qword_257EE9210);
  v123 = v177;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543F70, 0x277CE5AC8);
  sub_257BD2D4C(&qword_281544130, &qword_27F8FA1E0, &qword_257EEC8E0, MEMORY[0x277CBCEC8]);
  v124 = v180;
  v125 = v179;
  sub_257ECDDA0();
  (*(v178 + 8))(v123, v125);
  sub_257ECDCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360, &qword_257EEC930);
  sub_257BD2D4C(&qword_281544478, &qword_27F8FA1E8, &qword_257EEC8E8, MEMORY[0x277CBCB10]);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360, &qword_257EEC930, v169);
  v126 = v181;
  v127 = v184;
  sub_257ECDE60();
  (*(v182 + 8))(v124, v127);
  sub_257BD2D4C(&qword_2815442F8, &qword_27F8FA1F0, &qword_257EEC8F0, MEMORY[0x277CBCCE0]);
  v128 = v186;
  v129 = v185;
  sub_257ECDDE0();
  (*(v183 + 8))(v126, v129);
  v130 = v165;
  v227 = v165;
  v166(v114, 1, 1, v167);
  sub_257BD2D4C(&qword_281544320, &qword_27F8FA1F8, &qword_257EEC8F8, MEMORY[0x277CBCC90]);
  v131 = v189;
  v132 = v188;
  v195 = v118;
  sub_257ECDE20();
  sub_257BE4084(v114, &unk_27F8F8740, &qword_257EEBBB0);

  (*(v187 + 8))(v128, v132);
  v133 = [v223 mainRunLoop];
  v227 = v133;
  v134 = v224;
  v221(v224, 1, 1, v222);
  sub_257BD2D4C(&qword_2815443F8, &qword_27F8FA200, &qword_257EEC900, MEMORY[0x277CBCB50]);
  v135 = v192;
  v136 = v134;
  v137 = v191;
  sub_257ECDDF0();
  sub_257BE4084(v136, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v190 + 8))(v131, v137);
  v138 = swift_allocObject();
  v139 = v217;
  *(v138 + 24) = v217;
  swift_unknownObjectWeakInit();
  v140 = swift_allocObject();
  v141 = v225;
  *(v140 + 16) = v138;
  *(v140 + 24) = v141;
  sub_257BD2D4C(&unk_281544220, &qword_27F8FA208, &unk_257EEC908, v109);
  v142 = v194;
  sub_257ECDE50();

  (*(v193 + 8))(v135, v142);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v143 = v196;
  sub_257ECDD30();
  swift_endAccess();

  v144 = v203;
  sub_257ECFD00();
  v145 = v200;
  v146 = v197;
  v147 = v204;
  (*(v200 + 104))(v197, *MEMORY[0x277D851C0], v204);
  v148 = sub_257ECFD90();
  (*(v145 + 8))(v146, v147);
  v227 = v148;
  v149 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  v150 = v198;
  v151 = v201;
  sub_257ECDE00();

  (*(v206 + 8))(v144, v207);
  (*(v199 + 8))(v143, v151);
  sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8, &qword_257EEC8D0, MEMORY[0x277CBCD20]);
  v152 = v208;
  v153 = v205;
  sub_257ECDDE0();
  (*(v202 + 8))(v150, v153);
  v154 = swift_allocObject();
  *(v154 + 24) = v139;
  swift_unknownObjectWeakInit();
  v155 = swift_allocObject();
  *(v155 + 16) = v154;
  *(v155 + 24) = v141;
  sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8, &qword_257EEC8D8, MEMORY[0x277CBCC90]);
  v156 = v210;
  sub_257ECDE50();

  (*(v209 + 8))(v152, v156);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v157 = v211;
  sub_257ECDD30();
  swift_endAccess();
  v158 = [v223 mainRunLoop];
  v227 = v158;
  v159 = v224;
  v221(v224, 1, 1, v222);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v149);
  v160 = v213;
  v161 = v214;
  sub_257ECDDF0();
  sub_257BE4084(v159, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v212 + 8))(v157, v160);
  *(swift_allocObject() + 24) = v139;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v162 = v216;
  sub_257ECDE50();

  (*(v215 + 8))(v161, v162);
  sub_257ECDCB0();

  return v230;
}

uint64_t sub_257E37218(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA240, &qword_257EECAD0);
  v18 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v19, v20, v21, v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA248, &qword_257EECAD8);
  v48 = *(v25 - 8);
  v49 = v25;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v46 - v30;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  v54 = v32;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257ECDC50();
  v33 = [objc_opt_self() mainRunLoop];
  v52 = v33;
  v34 = sub_257ED0080();
  (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&qword_27F8FA250, &qword_27F8FA240, &qword_257EECAD0, MEMORY[0x277CBCAF0]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v35 = v47;
  sub_257ECDDF0();
  sub_257BE4084(v7, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v18 + 8))(v24, v35);
  v36 = swift_allocObject();
  v37 = v51;
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v50;
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  *(v40 + 24) = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_257E43B88;
  *(v41 + 24) = v40;
  sub_257BD2D4C(&qword_27F8FA258, &qword_27F8FA248, &qword_257EECAD8, MEMORY[0x277CBCD60]);
  v42 = v49;
  sub_257ECDE50();

  (*(v48 + 8))(v31, v42);
  sub_257ECDCB0();

  v52 = v39;
  v53 = 4096;
  sub_257D4BC14();
  v52 = sub_257ECDD90();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v37;
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v54;
}

uint64_t sub_257E378D4(uint64_t a1, uint64_t a2)
{
  v170 = a2;
  v157 = sub_257ECF130();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v3, v4, v5, v6);
  v153 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_257ECFD10();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v8, v9, v10, v11);
  v160 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD0, &qword_257EEB890);
  v158 = *(v13 - 8);
  v159 = v13;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v154 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD8, &qword_257EEB898);
  v161 = *(v19 - 8);
  v162 = v19;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v156 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CE0, &unk_257EEB8A0);
  v166 = *(v25 - 8);
  v167 = v25;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v164 = &v132 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v31 - 8, v32, v33, v34, v35);
  v152 = &v132 - v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98, &unk_257EEBAF0);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v37, v38, v39, v40);
  v42 = &v132 - v41;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0, &unk_257EECA60);
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v43, v44, v45, v46);
  v48 = &v132 - v47;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8, &qword_257EEBB00);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v49, v50, v51, v52);
  v138 = &v132 - v53;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  MEMORY[0x28223BE20](v145, v54, v55, v56, v57);
  v144 = &v132 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60, v61, v62, v63);
  v169 = &v132 - v64;
  MEMORY[0x28223BE20](v65, v66, v67, v68, v69);
  v168 = &v132 - v70;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA260, &qword_257EECB78);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v71, v72, v73, v74);
  v147 = &v132 - v75;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA268, &unk_257EECB80);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v76, v77, v78, v79);
  v81 = &v132 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168, &qword_257EEC578);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v84, v85, v86, v87);
  v89 = &v132 - v88;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
    v90 = v131;
  }

  else
  {
    v90 = MEMORY[0x277D84FA0];
  }

  v174 = v90;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v91 = sub_257ECF4C0();
  v92 = MGGetBoolAnswer();

  if (v92)
  {
    v93 = sub_257D49140();
    v172 = v93;
    v173 = 4096;
    sub_257D4BC14();
    v94 = sub_257ECDD90();

    v172 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
    v136 = v81;
    v146 = a1;
    v134 = MEMORY[0x277CBCD90];
    sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
    sub_257ECDDA0();

    v95 = swift_allocObject();
    swift_weakInit();
    v96 = swift_allocObject();
    *(v96 + 24) = v170;
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v95;
    v98 = MEMORY[0x277CBCB10];
    sub_257BD2D4C(&unk_281544480, &qword_27F8FA168, &qword_257EEC578, MEMORY[0x277CBCB10]);
    sub_257ECDE50();

    (*(v83 + 8))(v89, v82);
    sub_257ECDCB0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v135 = xmmword_281548330;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
    sub_257ECDD30();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0, &unk_257EE6B60);
    v99 = MEMORY[0x277CBCEC8];
    v133 = MEMORY[0x277CBCEC8];
    sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98, &unk_257EEBAF0, MEMORY[0x277CBCEC8]);
    v100 = v139;
    sub_257ECDDA0();
    (*(v137 + 8))(v42, v100);
    v101 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0, &unk_257EECA60, v98);
    v102 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0, &unk_257EE6B60, MEMORY[0x277CC9E08]);
    v103 = v138;
    v104 = v142;
    MEMORY[0x259C70960](v142, v101, v102);
    (*(v140 + 8))(v48, v104);
    sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8, &qword_257EEBB00, MEMORY[0x277CBCBB0]);
    v105 = v143;
    v106 = sub_257ECDD90();
    (*(v141 + 8))(v103, v105);
    v171 = v106;
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8, &unk_257EEBB10);
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v99);
    sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8, &unk_257EEBB10, v134);
    v107 = v147;
    sub_257ECDC60();
    v108 = [objc_opt_self() mainRunLoop];
    v172 = v108;
    v109 = sub_257ED0080();
    v110 = v152;
    (*(*(v109 - 8) + 56))(v152, 1, 1, v109);
    sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
    sub_257BD2D4C(&qword_27F8FA270, &qword_27F8FA260, &qword_257EECB78, MEMORY[0x277CBCB00]);
    sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v111 = v136;
    v112 = v149;
    sub_257ECDDF0();
    sub_257BE4084(v110, &unk_27F8F4DB0, &unk_257ED8210);

    (*(v148 + 8))(v107, v112);
    v113 = swift_allocObject();
    swift_weakInit();
    v114 = swift_allocObject();
    v115 = v170;
    *(v114 + 24) = v170;
    swift_unknownObjectWeakInit();
    v116 = swift_allocObject();
    *(v116 + 16) = v113;
    *(v116 + 24) = v114;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_257E43BE0;
    *(v117 + 24) = v116;
    sub_257BD2D4C(&qword_27F8FA278, &qword_27F8FA268, &unk_257EECB80, MEMORY[0x277CBCD60]);
    v118 = v151;
    sub_257ECDE50();

    (*(v150 + 8))(v111, v118);
    sub_257ECDCB0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00, &qword_257EE6E38);
    v119 = v154;
    sub_257ECDD30();
    swift_endAccess();
    v120 = v160;
    sub_257ECFD00();
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v121 = v155;
    v122 = v153;
    v123 = v157;
    (*(v155 + 104))(v153, *MEMORY[0x277D851C0], v157);
    v124 = sub_257ECFD90();
    (*(v121 + 8))(v122, v123);
    v172 = v124;
    sub_257BD2D4C(&qword_27F8F9D70, &qword_27F8F9CD0, &qword_257EEB890, v133);
    sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
    v125 = v156;
    v126 = v159;
    sub_257ECDE00();

    (*(v163 + 8))(v120, v165);
    (*(v158 + 8))(v119, v126);
    sub_257BD2D4C(&qword_27F8F9D78, &qword_27F8F9CD8, &qword_257EEB898, MEMORY[0x277CBCD20]);
    v127 = v164;
    v128 = v162;
    sub_257ECDDD0();
    (*(v161 + 8))(v125, v128);
    *(swift_allocObject() + 24) = v115;
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_27F8F9D80, &unk_27F8F9CE0, &unk_257EEB8A0, MEMORY[0x277CBCC08]);
    v129 = v167;
    sub_257ECDE50();

    (*(v166 + 8))(v127, v129);
    sub_257ECDCB0();

    return v174;
  }

  return v90;
}

void sub_257E38B58(char a1, char a2, uint64_t a3)
{
  v3 = 1;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v3 = v7;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v6 = sub_257D49140();
      [v6 setUserInteractionEnabled_];

      v5 = v6;
    }
  }
}

double sub_257E38C7C@<D0>(double *a2@<X8>)
{
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() value];
  result = v3;
  *a2 = result;
  return result;
}

void sub_257E38CD8(double *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v12 = v11 * v11;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v22) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
LABEL_10:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v13 = v22;
    if (v22 == 0.0)
    {
      goto LABEL_10;
    }

    sub_257D337D8(0, v12);
    v14 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
    swift_beginAccess();
    v21 = v12;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v15 = sub_257ECF110();
    MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
    *(&v20 - 2) = &v21;
    *(&v20 - 1) = v14;
    sub_257ECFD40();
    (*(v4 + 8))(v10, v3);
    swift_endAccess();
  }
}

id sub_257E38FF4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_257E39000@<X0>(uint64_t *a2@<X8>)
{
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0, &unk_257EEBD20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330, &unk_257EE9590);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0, qword_257EEBD30);
  v19 = *(v18 - 8);
  v33 = v18;
  v34 = v19;
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v32 = &v31 - v24;
  swift_getKeyPath();
  sub_257ECCA50();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0, &unk_257EEBD20, MEMORY[0x277CC9E08]);
  sub_257ECDDD0();

  (*(v3 + 8))(v9, v2);
  v25 = MEMORY[0x277CBCC08];
  sub_257BD2D4C(&qword_281544390, &unk_27F8F9330, &unk_257EE9590, MEMORY[0x277CBCC08]);
  v26 = sub_257ECDD90();
  (*(v11 + 8))(v17, v10);
  v36 = v26;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360, &qword_257EEC930);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360, &qword_257EEC930, MEMORY[0x277CBCD90]);
  v27 = v32;
  sub_257ECDDD0();

  sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0, qword_257EEBD30, v25);
  v28 = v33;
  v29 = sub_257ECDD90();
  result = (*(v34 + 8))(v27, v28);
  *v35 = v29;
  return result;
}

uint64_t sub_257E39414()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2)
  {
    v0 = 0;
  }

  else
  {
    v0 = *(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_257E394EC(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_257D49140();
    v6 = [v5 isTracking];

    if (v6)
    {
      return swift_unknownObjectRelease();
    }

    v7 = fabs(sqrt(v2));
    if (v2 == -INFINITY)
    {
      v7 = INFINITY;
    }

    v8 = v7;
    v9 = sub_257D49140();
    *&v10 = v8;
    [v9 setValue:1 animated:v10];

    [*(v4 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v12 = v11;
    sub_257D15920();
    v14 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(v4 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v12 != v13;
    sub_257D47D78(v14);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = qword_2815447E0;

    if (v15 != -1)
    {
      v16 = swift_once();
    }

    MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    if (!v31)
    {
      return swift_unknownObjectRelease();
    }

    v21 = swift_beginAccess();
    MEMORY[0x28223BE20](v21, v22, v23, v24, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v32 + 16))
    {
      v26 = sub_257C03F6C(v30, v31);
      v28 = v27;

      if (v28)
      {
        v29 = *(*(v32 + 56) + 296 * v26 + 8);

        if (v29 != v2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_257E398B8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  return (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0;
}

uint64_t sub_257E3991C(double *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v30 = v5;
    v31 = v12;
    v23 = *(a2 + 24);
    v24 = fabs(sqrt(v20));
    if (v20 == -INFINITY)
    {
      v25 = INFINITY;
    }

    else
    {
      v25 = v24;
    }

    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v29 = sub_257ECFD30();
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v23;
    *(v26 + 32) = v25;
    aBlock[4] = sub_257E43990;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_104_1;
    v27 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v28 = v29;
    MEMORY[0x259C72880](0, v19, v11, v27);
    _Block_release(v27);
    swift_unknownObjectRelease();

    (*(v30 + 8))(v11, v4);
    return (*(v13 + 8))(v19, v31);
  }

  return result;
}

void sub_257E39C7C(uint64_t a1, double a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    v7 = sub_257D49140();
    v6 = a2;
    *&v8 = v6;
    [v7 setValue:1 animated:v8];

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v10 = v9;
    sub_257D15920();
    v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v10 != v11;
    sub_257D47D78(v12);
  }
}

void sub_257E39D88(float *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

uint64_t sub_257E39EA8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

BOOL sub_257E39F54()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return (v1 & 1) == 0;
}

uint64_t sub_257E3A008(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECF190();
  v33 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v32 = v17;
    v27 = *(a2 + 24);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v31 = sub_257ECFD30();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    *(v28 + 32) = v24;
    aBlock[4] = a4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = a5;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v30 = v31;
    MEMORY[0x259C72880](0, v23, v16, v29);
    _Block_release(v29);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v16, v9);
    return (*(v33 + 8))(v23, v32);
  }

  return result;
}

void sub_257E3A334(uint64_t a1, float a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    v6 = sub_257D49140();
    *&v7 = a2;
    [v6 setValue:1 animated:v7];

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v9 = v8;
    sub_257D15920();
    v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v9 != v10;
    sub_257D47D78(v11);
  }
}

uint64_t sub_257E3A414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      if ((*(v8 + 8))(ObjectType, v8))
      {
        v9 = 0.2;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = objc_opt_self();
      aBlock[4] = a3;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = a4;
      v11 = _Block_copy(aBlock);
      [v10 animateWithDuration:v11 animations:0 completion:v9];
      _Block_release(v11);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257E3A554(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v13 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v24 == 1)
  {
    v14 = [objc_opt_self() defaultDeviceWithMediaType_];
    if (!v14)
    {
      return;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v24)
    {
      return;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    swift_unknownObjectRelease();
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v14 = v23;
    if (!v23)
    {
      return;
    }
  }

  sub_257D32D68(v12);

  v15 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  v22 = v12;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v16 = sub_257ECF110();
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  *&v21[-16] = &v22;
  *&v21[-8] = v15;
  sub_257ECFD40();
  (*(v5 + 8))(v11, v4);
  swift_endAccess();
}

uint64_t sub_257E3A8C4(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 & a3 ^ 1 | a2 | a4;
  if (v6)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (aBlock)
      {
        sub_257D32D68(0.0);
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_257D49140();
      [v9 setValue:0 animated:0.0];

      [*(v8 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v11 = v10;
      LOBYTE(aBlock) = *(v8 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control);
      sub_257D15920();
      v13 = *(v8 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(v8 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v11 != v12;
      sub_257D47D78(v13);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v14 = &qword_281544000;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v15 = aBlock;
      if (aBlock)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v16 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
        swift_beginAccess();
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        aBlock = *v16;
        v55 = v17;
        LODWORD(v56) = v18;
        v19 = qword_2815447E0;

        if (v19 != -1)
        {
          v20 = swift_once();
        }

        MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
        sub_257ECFD50();

        sub_257D32D68(v60);

        v14 = &qword_281544000;
      }
    }

    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v27 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);
      aBlock = *v27;
      v55 = v28;
      LODWORD(v56) = v29;
      v30 = v14[252];

      if (v30 != -1)
      {
        v31 = swift_once();
      }

      MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
      sub_257ECFD50();

      v36 = sub_257D49140();
      *&v37 = v60;
      [v36 setValue:0 animated:v37];

      [*(v26 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v39 = v38;
      LOBYTE(aBlock) = *(v26 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control);
      sub_257D15920();
      v41 = *(v26 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(v26 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v39 != v40;
      sub_257D47D78(v41);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = sub_257D49140();
      swift_unknownObjectRelease();
      [v42 sendActionsForControlEvents_];
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (v6)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v43 = aBlock;
    }

    else
    {
      v43 = 1;
    }

    v44 = sub_257D49140();
    [v44 setUserInteractionEnabled_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = result;
    ObjectType = swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48)
    {
      v49 = v48;
      if ((*(v48 + 8))(ObjectType, v48))
      {
        v50 = 0.2;
      }

      else
      {
        v50 = 0.0;
      }

      v51 = objc_opt_self();
      v52 = swift_allocObject();
      *(v52 + 16) = v46;
      *(v52 + 24) = v49;
      *(v52 + 32) = (v6 ^ 1) & 1;
      v58 = sub_257E43C38;
      v59 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = sub_257D231C0;
      v57 = &block_descriptor_237;
      v53 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v51 animateWithDuration:v53 animations:0 completion:v50];
      _Block_release(v53);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_257E3B018(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(0, ObjectType, a2);
    v6 = 1;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v7 = swift_getObjectType();
    (*(a2 + 40))((v10 & 1) == 0, v7, a2);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v9;
  }

  return [a1 setUserInteractionEnabled_];
}

uint64_t sub_257E3B1C4(int *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(a2 + 24);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v54 = sub_257ECFD30();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *(v24 + 32) = v20;
    v64 = sub_257E43C2C;
    v65 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_257D231C0;
    v63 = &block_descriptor_223;
    v25 = _Block_copy(&aBlock);
    v53 = v12;
    v26 = v25;
    v55 = v22;
    swift_unknownObjectRetain();

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v27 = v54;
    MEMORY[0x259C72880](0, v19, v11, v26);
    _Block_release(v26);

    (*(v5 + 8))(v11, v4);
    (*(v13 + 8))(v19, v53);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v28 = qword_281548348;
    swift_beginAccess();
    v29 = v28[16];
    v30 = v28[17];
    v31 = v28[18];
    aBlock = v28[15];
    v61 = v29;
    v62 = v30;
    v63 = v31;
    v32 = qword_2815447E0;

    if (v32 != -1)
    {
      v33 = swift_once();
    }

    MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
    *(&v52 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    v38 = v57;
    if (v57)
    {
      v39 = v56;
      v40 = swift_beginAccess();
      v41 = v28[12];
      v42 = v28[13];
      v56 = v28[11];
      v57 = v41;
      v58 = v42;
      MEMORY[0x28223BE20](v40, v43, v44, v45, v46);
      *(&v52 - 2) = &v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
      sub_257ECFD50();

      v47 = v59;
      if (*(v59 + 16))
      {
        v48 = sub_257C03F6C(v39, v38);
        v50 = v49;

        if (v50)
        {
          v51 = *(*(v47 + 56) + 296 * v48 + 48);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v51 != *&v56)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v56) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257E3B7EC(uint64_t a1, float a2)
{
  v4 = sub_257D49140();
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v13 & 1) == 0)
    {
      v6 = sub_257D49140();
      *&v7 = a2;
      [v6 setValue:1 animated:v7];

      [*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v9 = v8;
      sub_257D15920();
      v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
      *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v9 != v10;
      sub_257D47D78(v11);
      v12 = sub_257D49140();
      [v12 sendActionsForControlEvents_];
    }
  }
}

double sub_257E3B96C(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD480();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting peopleDetection to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D71A04(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

double sub_257E3BCB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD450();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting doorDetection to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D71A24(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

double sub_257E3BFFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD440();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting detectionModeOn to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D719E4(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

void sub_257E3C344(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v2 ^ 1;
    v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    v6 = Strong;
    swift_beginAccess();
    if (v6[v5])
    {
      v7 = 0.2;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v4;
    v12[4] = sub_257E43CAC;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_257D231C0;
    v12[3] = &block_descriptor_247;
    v10 = _Block_copy(v12);
    v11 = v6;

    [v8 animateWithDuration:v10 animations:0 completion:v7];
    _Block_release(v10);
  }
}

double sub_257E3C4AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD440();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting imageCaption to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D71A84(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

double sub_257E3C7F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD3E0();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting pointSpeakEnabled to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D71A44(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

double sub_257E3CB3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v18 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (HIBYTE(v17) == 1)
    {
      sub_257ECD3E0();
      v14 = sub_257ECDA20();
      v15 = sub_257ECFBD0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        _os_log_impl(&dword_257BAC000, v14, v15, "Setting textDetectionEnabled to %{BOOL}d", v16, 8u);
        MEMORY[0x259C74820](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  else
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v12 = v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    if (HIBYTE(v17) != v12)
    {
      sub_257D71A64(v11[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn]);
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v17) = v12;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }

  return result;
}

void sub_257E3CE84(char *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    *(Strong + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) = v19;
    sub_257DBA418();
    if (v19)
    {
    }

    else
    {
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v27 = sub_257ECFD30();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      aBlock[4] = sub_257E43D74;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_275;
      v25 = _Block_copy(aBlock);
      v26 = v21;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      sub_257ED0180();
      v23 = v25;
      v24 = v27;
      MEMORY[0x259C72880](0, v18, v10, v25);
      _Block_release(v23);

      (*(v4 + 8))(v10, v3);
      (*(v12 + 8))(v18, v11);
    }
  }
}

uint64_t sub_257E3D1D4(uint64_t a1, void *a2)
{
  v3 = sub_257ECF120();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECF190();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11, v12, v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  aBlock[4] = sub_257E43D50;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_263;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v19);
  _Block_release(v19);

  (*(v23 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v22);
}

void sub_257E3D4C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_257DB9C8C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = sub_257DB86A4(v7, a2);
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v4;
  }

  [v3 setSelectedSegmentIndex_];
}

void sub_257E3D5B0(char *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *a3) = v6;
    v8 = Strong;
    a4();
  }
}

void sub_257E3D628(char a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9)
    {
      if ((a1 & 1) != 0 || (a2 & 1) != 0 && ([v9 isSmoothAutoFocusSupported] & 1) == 0)
      {
        sub_257D34520();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECC3F0();
        sub_257ECDD70();
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        *(Strong + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) = v6;
        sub_257CA1814();
      }
    }
  }
}

void sub_257E3D7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];

    if (v4)
    {
      goto LABEL_6;
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v12 == 1)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v12)
    {
      sub_257D34228();
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v12) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v12)
    {
      sub_257D34520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v12) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    type metadata accessor for MAGUtilities();
    v10 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];
  }

  v11 = v9;

  if (!v11)
  {
    sub_257ECF500();
    v11 = sub_257ECF4C0();
  }

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

uint64_t sub_257E3DBA8(uint64_t a1, char a2)
{
  if (a2 != 6)
  {
    return 1;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 isRunning];

  return v2;
}

id sub_257E3DCE8@<X0>(uint64_t a2@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v4 = result;
  if (result)
  {
    result = [result value];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = v4 == 0;
  return result;
}

uint64_t sub_257E3DD54(uint64_t a1, unsigned __int8 a2)
{
  result = 1;
  if (a2 > 0xBu)
  {
    switch(a2)
    {
      case 0xCu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v11;
      case 0xDu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v7;
      case 0xEu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v8;
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v6)
        {
          return 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v5)
        {
          return 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (!v4)
        {
          return 0;
        }

        else
        {
          v3 = [v4 isRunning];

          return v3;
        }

      case 9u:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v10;
      case 0xAu:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        return v9;
    }
  }

  return result;
}

uint64_t sub_257E3E19C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport27ControlSubscriptionProvider__captureDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108, &qword_257EE9210);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlSubscriptionProvider(uint64_t a1)
{
  result = qword_281544578;
  if (!qword_281544578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E3E2A0(uint64_t a1)
{
  sub_257E3E340(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257E3E340(uint64_t a1)
{
  if (!qword_2815440B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9178, &qword_257EE9220);
    v1 = sub_257ECDD80();
    if (!v2)
    {
      atomic_store(v1, &qword_2815440B0);
    }
  }
}

uint64_t sub_257E3E3A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108, &qword_257EE9210);
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v29 = &v28 - v5;
  v28 = sub_257ECFD20();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v7, v8, v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v18 = sub_257ECF190();
  MEMORY[0x28223BE20](v18 - 8, v19, v20, v21, v22);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v33 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  sub_257ED0180();
  (*(v6 + 104))(v12, *MEMORY[0x277D85260], v28);
  v23 = sub_257ECFD80();
  v24 = v30;
  *(v30 + 16) = v23;
  v25 = OBJC_IVAR____TtC16MagnifierSupport27ControlSubscriptionProvider__captureDevice;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9178, &qword_257EE9220);
  v26 = v29;
  sub_257ECDD20();
  (*(v31 + 32))(v24 + v25, v26, v32);
  return v24;
}

void sub_257E3E6F8(uint64_t a1@<X0>, float *a2@<X8>)
{
  v4 = sub_257D139CC(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_257E3E750(uint64_t a1)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v28 - v21;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v23 = MEMORY[0x277D84FA0];
  }

  v33 = v23;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v24 = [objc_opt_self() mainRunLoop];
  v32 = v24;
  v25 = sub_257ED0080();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  sub_257ECDDF0();
  sub_257BE4084(v7, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v9 + 8))(v15, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v26 = v30;
  sub_257ECDE50();

  (*(v29 + 8))(v22, v26);
  sub_257ECDCB0();

  return v33;
}

uint64_t sub_257E3EB90(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v138 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v120 = &v98 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v8, v9, v10, v11);
  v118 = &v98 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v13, v14, v15, v16);
  v122 = &v98 - v17;
  v131 = sub_257ECF130();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v18, v19, v20, v21);
  v130 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_257ECFD10();
  v136 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v23, v24, v25, v26);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v135 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v29, v30, v31, v32);
  v34 = &v98 - v33;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8, &qword_257EEC8D0);
  v134 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v35, v36, v37, v38);
  v126 = &v98 - v39;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8, &qword_257EEC8D8);
  v132 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v40, v41, v42, v43);
  v114 = &v98 - v44;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA228, &qword_257EECA08);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v45, v46, v47, v48);
  v115 = &v98 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168, &qword_257EEC578);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52, v53, v54, v55);
  v57 = &v98 - v56;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v58 = MEMORY[0x277D84FA0];
  }

  v141 = v58;
  v59 = sub_257D49140();
  v139 = v59;
  v140 = 4096;
  sub_257D4BC14();
  v60 = sub_257ECDD90();

  v139 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDDA0();

  sub_257BD2D4C(&unk_281544480, &qword_27F8FA168, &qword_257EEC578, MEMORY[0x277CBCB10]);
  sub_257ECDE50();
  (*(v51 + 8))(v57, v50);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v61 = v34;
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  v62 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v111 = *MEMORY[0x277D851C0];
  v63 = v133;
  v64 = *(v133 + 104);
  v109 = v133 + 104;
  v110 = v64;
  v65 = v130;
  v66 = v131;
  v64(v130);
  v102 = v62;
  v67 = sub_257ECFD90();
  v68 = *(v63 + 8);
  v133 = v63 + 8;
  v108 = v68;
  v68(v65, v66);
  v139 = v67;
  v113 = MEMORY[0x277CBCEC8];
  v106 = sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  v107 = sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v69 = v126;
  v70 = v129;
  sub_257ECDE00();

  v71 = *(v136 + 8);
  v136 += 8;
  v105 = v71;
  v72 = v28;
  v71(v28, v125);
  v73 = *(v135 + 8);
  v135 += 8;
  v104 = v73;
  v73(v61, v70);
  v103 = sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8, &qword_257EEC8D0, MEMORY[0x277CBCD20]);
  v74 = v114;
  v75 = v128;
  sub_257ECDDE0();
  v76 = *(v134 + 8);
  v134 += 8;
  v101 = v76;
  v76(v69, v75);
  v100 = sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8, &qword_257EEC8D8, MEMORY[0x277CBCC90]);
  v77 = v115;
  v78 = v127;
  sub_257ECDDA0();
  v79 = *(v132 + 8);
  v132 += 8;
  v99 = v79;
  v79(v74, v78);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  v98 = sub_257BD2D4C(&qword_281544450, &qword_27F8FA228, &qword_257EECA08, MEMORY[0x277CBCB10]);
  v80 = v117;
  sub_257ECDE50();

  v116 = *(v116 + 8);
  (v116)(v77, v80);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  v81 = v61;
  sub_257ECDD30();
  swift_endAccess();

  v82 = v72;
  sub_257ECFD00();
  v84 = v130;
  v83 = v131;
  v110(v130, v111, v131);
  v85 = sub_257ECFD90();
  v108(v84, v83);
  v139 = v85;
  v86 = v126;
  v87 = v129;
  sub_257ECDE00();

  v105(v82, v125);
  v104(v81, v87);
  v88 = v128;
  sub_257ECDDE0();
  v101(v86, v88);
  v89 = v127;
  sub_257ECDDA0();
  v99(v74, v89);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  sub_257ECDE50();

  (v116)(v77, v80);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v90 = v118;
  sub_257ECDD30();
  swift_endAccess();
  v91 = [objc_opt_self() mainRunLoop];
  v139 = v91;
  v92 = sub_257ED0080();
  v93 = v120;
  (*(*(v92 - 8) + 56))(v120, 1, 1, v92);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v113);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v94 = v122;
  v95 = v121;
  sub_257ECDDF0();
  sub_257BE4084(v93, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v119 + 8))(v90, v95);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v96 = v124;
  sub_257ECDE50();

  (*(v123 + 8))(v94, v96);
  sub_257ECDCB0();

  return v141;
}

uint64_t sub_257E3FBC4(uint64_t a1)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v74 = &v62 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  MEMORY[0x28223BE20](v70, v7, v8, v9, v10);
  v67 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98, &unk_257EEBAF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v62 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0, &unk_257EECA60);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v20, v21, v22, v23);
  v25 = &v62 - v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8, &qword_257EEBB00);
  v26 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v27, v28, v29, v30);
  v32 = &v62 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA230, &qword_257EECA70);
  v68 = *(v33 - 8);
  v69 = v33;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v66 = &v62 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA238, &unk_257EECA78);
  v72 = *(v39 - 8);
  v73 = v39;
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v71 = &v62 - v44;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0, &unk_257EE6B60);
  v45 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98, &unk_257EEBAF0, MEMORY[0x277CBCEC8]);
  sub_257ECDDA0();
  (*(v13 + 8))(v19, v12);
  v46 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0, &unk_257EECA60, MEMORY[0x277CBCB10]);
  v47 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0, &unk_257EE6B60, MEMORY[0x277CC9E08]);
  v48 = v65;
  MEMORY[0x259C70960](v65, v46, v47);
  (*(v63 + 8))(v25, v48);
  sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8, &qword_257EEBB00, MEMORY[0x277CBCBB0]);
  v49 = v64;
  v50 = sub_257ECDD90();
  (*(v26 + 8))(v32, v49);
  v76 = v50;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8, &unk_257EEBB10);
  sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8, &unk_257EEBB10, MEMORY[0x277CBCD90]);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v45);
  v51 = v66;
  sub_257ECDC50();
  v52 = [objc_opt_self() mainRunLoop];
  v77 = v52;
  v53 = sub_257ED0080();
  v54 = v74;
  (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&qword_2815444A8, &qword_27F8FA230, &qword_257EECA70, MEMORY[0x277CBCAF0]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v55 = v71;
  v56 = v69;
  sub_257ECDDF0();
  sub_257BE4084(v54, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v68 + 8))(v51, v56);
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_257E43A74;
  *(v58 + 24) = v57;
  sub_257BD2D4C(&qword_281544218, &qword_27F8FA238, &unk_257EECA78, MEMORY[0x277CBCD60]);
  v59 = v73;
  v60 = sub_257ECDE50();

  (*(v72 + 8))(v55, v59);
  return v60;
}

uint64_t sub_257E40450(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v138 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v120 = &v98 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v8, v9, v10, v11);
  v118 = &v98 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v13, v14, v15, v16);
  v122 = &v98 - v17;
  v131 = sub_257ECF130();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v18, v19, v20, v21);
  v130 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_257ECFD10();
  v136 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v23, v24, v25, v26);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v135 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v29, v30, v31, v32);
  v34 = &v98 - v33;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8, &qword_257EEC8D0);
  v134 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v35, v36, v37, v38);
  v126 = &v98 - v39;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1D8, &qword_257EEC8D8);
  v132 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v40, v41, v42, v43);
  v114 = &v98 - v44;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA228, &qword_257EECA08);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v45, v46, v47, v48);
  v115 = &v98 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168, &qword_257EEC578);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52, v53, v54, v55);
  v57 = &v98 - v56;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v58 = MEMORY[0x277D84FA0];
  }

  v141 = v58;
  v59 = sub_257D49140();
  v139 = v59;
  v140 = 4096;
  sub_257D4BC14();
  v60 = sub_257ECDD90();

  v139 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDDA0();

  sub_257BD2D4C(&unk_281544480, &qword_27F8FA168, &qword_257EEC578, MEMORY[0x277CBCB10]);
  sub_257ECDE50();
  (*(v51 + 8))(v57, v50);
  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v61 = v34;
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  v62 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v111 = *MEMORY[0x277D851C0];
  v63 = v133;
  v64 = *(v133 + 104);
  v109 = v133 + 104;
  v110 = v64;
  v65 = v130;
  v66 = v131;
  v64(v130);
  v102 = v62;
  v67 = sub_257ECFD90();
  v68 = *(v63 + 8);
  v133 = v63 + 8;
  v108 = v68;
  v68(v65, v66);
  v139 = v67;
  v113 = MEMORY[0x277CBCEC8];
  v106 = sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  v107 = sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v69 = v126;
  v70 = v129;
  sub_257ECDE00();

  v71 = *(v136 + 8);
  v136 += 8;
  v105 = v71;
  v72 = v28;
  v71(v28, v125);
  v73 = *(v135 + 8);
  v135 += 8;
  v104 = v73;
  v73(v61, v70);
  v103 = sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8, &qword_257EEC8D0, MEMORY[0x277CBCD20]);
  v74 = v114;
  v75 = v128;
  sub_257ECDDE0();
  v76 = *(v134 + 8);
  v134 += 8;
  v101 = v76;
  v76(v69, v75);
  v100 = sub_257BD2D4C(&unk_281544308, &qword_27F8FA1D8, &qword_257EEC8D8, MEMORY[0x277CBCC90]);
  v77 = v115;
  v78 = v127;
  sub_257ECDDA0();
  v79 = *(v132 + 8);
  v132 += 8;
  v99 = v79;
  v79(v74, v78);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  v98 = sub_257BD2D4C(&qword_281544450, &qword_27F8FA228, &qword_257EECA08, MEMORY[0x277CBCB10]);
  v80 = v117;
  sub_257ECDE50();

  v116 = *(v116 + 8);
  (v116)(v77, v80);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  v81 = v61;
  sub_257ECDD30();
  swift_endAccess();

  v82 = v72;
  sub_257ECFD00();
  v84 = v130;
  v83 = v131;
  v110(v130, v111, v131);
  v85 = sub_257ECFD90();
  v108(v84, v83);
  v139 = v85;
  v86 = v126;
  v87 = v129;
  sub_257ECDE00();

  v105(v82, v125);
  v104(v81, v87);
  v88 = v128;
  sub_257ECDDE0();
  v101(v86, v88);
  v89 = v127;
  sub_257ECDDA0();
  v99(v74, v89);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  sub_257ECDE50();

  (v116)(v77, v80);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v90 = v118;
  sub_257ECDD30();
  swift_endAccess();
  v91 = [objc_opt_self() mainRunLoop];
  v139 = v91;
  v92 = sub_257ED0080();
  v93 = v120;
  (*(*(v92 - 8) + 56))(v120, 1, 1, v92);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v113);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v94 = v122;
  v95 = v121;
  sub_257ECDDF0();
  sub_257BE4084(v93, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v119 + 8))(v90, v95);
  *(swift_allocObject() + 24) = v137;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v96 = v124;
  sub_257ECDE50();

  (*(v123 + 8))(v94, v96);
  sub_257ECDCB0();

  return v141;
}

uint64_t sub_257E41484(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v4 = v2;
  sub_257D4BC14();
  sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v4;
}

uint64_t sub_257E415D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v30 = *(v17 - 8);
  v31 = v17;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = v29 - v22;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  v34 = v24;
  v32 = a1;
  v33 = 4096;
  sub_257D4BC14();
  v32 = sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  v29[1] = a1;
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDE50();

  sub_257ECDCB0();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v25 = [objc_opt_self() mainRunLoop];
  v32 = v25;
  v26 = sub_257ED0080();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  sub_257ECDDF0();
  sub_257BE4084(v8, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v10 + 8))(v16, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v27 = v31;
  sub_257ECDE50();

  (*(v30 + 8))(v23, v27);
  sub_257ECDCB0();

  return v34;
}

uint64_t sub_257E41AF4(uint64_t a1)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v29 - v21;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v23 = MEMORY[0x277D84FA0];
  }

  v35 = v23;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v24 = [objc_opt_self() mainRunLoop];
  v33 = v24;
  v25 = sub_257ED0080();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  sub_257ECDDF0();
  sub_257BE4084(v7, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v9 + 8))(v15, v8);
  swift_allocObject();
  v26 = v32;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v27 = v31;
  sub_257ECDE50();

  (*(v30 + 8))(v22, v27);
  sub_257ECDCB0();

  v33 = v26;
  v34 = 4096;
  sub_257D4BC14();
  v33 = sub_257ECDD90();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
  sub_257ECDE50();

  sub_257ECDCB0();

  return v35;
}

uint64_t sub_257E42018(void *a1)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v61 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0, &qword_257EE8680);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v64 = v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v19 = v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v21 = *(v20 - 8);
  v57 = v20;
  v58 = v21;
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v27 = v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v29 = *(v28 - 8);
  v59 = v28;
  v60 = v29;
  MEMORY[0x28223BE20](v28, v30, v31, v32, v33);
  v35 = v52 - v34;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  v69 = v36;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v56 = objc_opt_self();
  v37 = [v56 mainRunLoop];
  v68 = v37;
  v38 = sub_257ED0080();
  v39 = *(v38 - 8);
  v54 = *(v39 + 56);
  v55 = v39 + 56;
  v54(v19, 1, 1, v38);
  v52[1] = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  v53 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  v52[0] = sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v40 = v35;
  v41 = v57;
  sub_257ECDDF0();
  sub_257BE4084(v19, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v58 + 8))(v27, v41);
  swift_allocObject();
  v42 = v67;
  swift_unknownObjectWeakInit();
  v43 = MEMORY[0x277CBCD60];
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v44 = v59;
  sub_257ECDE50();

  (*(v60 + 8))(v40, v44);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v45 = v61;
  sub_257ECDD30();
  swift_endAccess();
  v46 = [v56 mainRunLoop];
  v68 = v46;
  v54(v19, 1, 1, v38);
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, v53);
  v48 = v63;
  v47 = v64;
  sub_257ECDDF0();
  sub_257BE4084(v19, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v62 + 8))(v45, v48);
  *(swift_allocObject() + 16) = v42;
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0, &qword_257EE8680, v43);
  v49 = v42;
  v50 = v66;
  sub_257ECDE50();

  (*(v65 + 8))(v47, v50);
  sub_257ECDCB0();

  return v69;
}

uint64_t sub_257E42730(unsigned __int8 *a1, uint64_t a2)
{
  v149 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA168, &qword_257EEC578);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v3, v4, v5, v6);
  v118 = &v118 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA170, &qword_257EEC580);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v8, v9, v10, v11);
  v121 = &v118 - v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA178, &qword_257EEC588);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v13, v14, v15, v16);
  v124 = &v118 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA180, &qword_257EEC590);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v18, v19, v20, v21);
  v125 = &v118 - v22;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA188, &qword_257EEC598);
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v23, v24, v25, v26);
  v130 = &v118 - v27;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA190, &unk_257EEC5A0);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v28, v29, v30, v31);
  v131 = &v118 - v32;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48, &qword_257EE2658);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v33, v34, v35, v36);
  v138 = &v118 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA198, &qword_257EEC5B0);
  v136 = *(v38 - 8);
  v137 = v38;
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v44 = &v118 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1A0, &qword_257EEC5B8);
  v147 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46, v47, v48, v49);
  v51 = &v118 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1A8, &unk_257EEC5C0);
  v148 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v58 = &v118 - v57;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  v140 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v59, v60, v61, v62);
  v64 = &v118 - v63;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1B0, &qword_257EEC5D0);
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v65, v66, v67, v68);
  v70 = &v118 - v69;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1B8, &qword_257EEC5D8);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v71, v72, v73, v74);
  v76 = &v118 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA1C0, &qword_257EEC5E0);
  MEMORY[0x28223BE20](v77, v78, v79, v80, v81);
  v85 = &v118 - v84;
  v86 = *a1;
  if (v86 != 7)
  {
    if (v86 == 6)
    {
      type metadata accessor for ToggleButton();
      v93 = swift_dynamicCastClass();
      if (!v93)
      {
        return 0;
      }

      v150 = v93;
      v151 = 4096;
      sub_257D4BC14();
      v150 = sub_257ECDD90();
      *(swift_allocObject() + 16) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
      sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
      v94 = v130;
      sub_257ECDDE0();

      *(swift_allocObject() + 16) = 6;
      sub_257BD2D4C(&qword_27F8FA1C8, &qword_27F8FA188, &qword_257EEC598, MEMORY[0x277CBCC90]);
      v95 = v131;
      v96 = v134;
      sub_257ECDDD0();

      (*(v132 + 8))(v94, v96);
      sub_257BD2D4C(&qword_27F8FA1D0, &qword_27F8FA190, &unk_257EEC5A0, MEMORY[0x277CBCC08]);
      v97 = v135;
      v92 = sub_257ECDD90();
      v98 = v133;
    }

    else
    {
      if (v86 == 3)
      {
        v87 = v83;
        v88 = v82;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
        sub_257ECDD30();
        swift_endAccess();
        swift_getKeyPath();
        sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, MEMORY[0x277CBCEC8]);
        v89 = v143;
        sub_257ECDDC0();

        (*(v140 + 8))(v64, v89);
        sub_257BD2D4C(&qword_281544430, &qword_27F8FA1B0, &qword_257EEC5D0, MEMORY[0x277CBCB20]);
        v90 = v145;
        sub_257ECDE10();
        (*(v142 + 8))(v70, v90);
        sub_257BD2D4C(&qword_281544368, &qword_27F8FA1B8, &qword_257EEC5D8, MEMORY[0x277CBCC18]);
        v91 = v146;
        sub_257ECDE30();
        (*(v144 + 8))(v76, v91);
        sub_257BD2D4C(&qword_2815443B8, &qword_27F8FA1C0, &qword_257EEC5E0, MEMORY[0x277CBCBE0]);
        v92 = sub_257ECDD90();
        (*(v87 + 8))(v85, v88);
        return v92;
      }

      v108 = v149;
      swift_getObjectType();
      v92 = 0;
      if (!swift_conformsToProtocol2() || !v108)
      {
        return v92;
      }

      v109 = sub_257D49140();
      v150 = v109;
      v151 = 4096;
      sub_257D4BC14();
      v110 = sub_257ECDD90();

      v150 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770, qword_257EE58C0);
      sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770, qword_257EE58C0, MEMORY[0x277CBCD90]);
      v111 = v118;
      sub_257ECDDA0();

      sub_257BD2D4C(&unk_281544480, &qword_27F8FA168, &qword_257EEC578, MEMORY[0x277CBCB10]);
      v112 = v121;
      v113 = v120;
      sub_257ECDE30();
      (*(v119 + 8))(v111, v113);
      *(swift_allocObject() + 16) = v86;
      sub_257BD2D4C(&unk_2815443C8, &qword_27F8FA170, &qword_257EEC580, MEMORY[0x277CBCBE0]);
      v114 = v124;
      v115 = v123;
      sub_257ECDDE0();

      (*(v122 + 8))(v112, v115);
      *(swift_allocObject() + 16) = v86;
      sub_257BD2D4C(&qword_281544328, &qword_27F8FA178, &qword_257EEC588, MEMORY[0x277CBCC90]);
      v95 = v125;
      v116 = v128;
      sub_257ECDDD0();

      (*(v126 + 8))(v114, v116);
      sub_257BD2D4C(&qword_2815443A8, &qword_27F8FA180, &qword_257EEC590, MEMORY[0x277CBCC08]);
      v97 = v129;
      v92 = sub_257ECDD90();
      v98 = v127;
    }

    (*(v98 + 8))(v95, v97);
    return v92;
  }

  v99 = v138;
  v100 = v139;
  v101 = v44;
  v146 = v58;
  v102 = v136;
  v103 = v137;
  v104 = v141;
  v149 = v52;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48, &qword_257EE2658, MEMORY[0x277CBCEC8]);
  sub_257ECDDC0();

  (*(v100 + 8))(v99, v104);
  sub_257BD2D4C(&unk_281544438, &qword_27F8FA198, &qword_257EEC5B0, MEMORY[0x277CBCB20]);
  v105 = v51;
  sub_257ECDE10();
  (*(v102 + 8))(v101, v103);
  sub_257BD2D4C(&unk_281544370, &qword_27F8FA1A0, &qword_257EEC5B8, MEMORY[0x277CBCC18]);
  v106 = v146;
  sub_257ECDE30();
  (*(v147 + 8))(v105, v45);
  sub_257BD2D4C(&qword_2815443C0, &qword_27F8FA1A8, &unk_257EEC5C0, MEMORY[0x277CBCBE0]);
  v107 = v149;
  v92 = sub_257ECDD90();
  (*(v148 + 8))(v106, v107);
  return v92;
}

uint64_t sub_257E438AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D14A40(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t objectdestroy_182Tm()
{

  return swift_deallocObject();
}

void sub_257E43C5C(float *a1@<X8>)
{
  v4 = sub_257D139CC(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t MAGDetectedTextView.textBlocks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  sub_257ECEE60();
  return v1;
}

void *sub_257E43E7C@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  result = sub_257ECEE60();
  *a2 = v4;
  return result;
}

uint64_t sub_257E43ED4(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  return sub_257ECEE70();
}

void (*MAGDetectedTextView.textBlocks.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;
  sub_257ECC3F0();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  sub_257ECEE60();
  return sub_257E4402C;
}

void sub_257E4402C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_257ECEE70();
  }

  else
  {
    sub_257ECEE70();
  }

  free(v2);
}

uint64_t MAGDetectedTextView.$textBlocks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  sub_257ECEE80();
  return v1;
}

void *MAGDetectedTextView.init(textBlocks:showingTextView:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v9 = type metadata accessor for MAGDetectedTextView(0);
  sub_257ECE7D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970, &unk_257EDB140);
  result = sub_257ECEE50();
  *a5 = v12;
  a5[1] = v13;
  v11 = a5 + *(v9 + 24);
  *v11 = a2;
  *(v11 + 1) = a3;
  v11[16] = a4;
  return result;
}

uint64_t MAGDetectedTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_257ECF020();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA288, &qword_257EECC40);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = (&v36 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA290, &qword_257EECC48);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v36 - v24;
  *v18 = sub_257ECF060();
  v18[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA298, &qword_257EECC50);
  sub_257E444C8(v2, v18 + *(v27 + 44));
  v28 = *(v12 + 44);
  v29 = *MEMORY[0x277CDF3C0];
  v30 = sub_257ECDF90();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v18 + v28, v29, v30);
  (*(v31 + 56))(v18 + v28, 0, 1, v30);
  if (sub_257ECF030())
  {
    sub_257ECF000();
  }

  else
  {
    sub_257ECF010();
  }

  v32 = sub_257ECE930();
  v33 = &v25[*(v19 + 36)];
  (*(v4 + 32))(v33, v10, v3);
  v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A0, &qword_257EECC58) + 36)] = v32;
  sub_257C0DD14(v18, v25, &qword_27F8FA288, &qword_257EECC40);
  v34 = v37;
  sub_257C0DD14(v25, v37, &qword_27F8FA290, &qword_257EECC48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A8, &qword_257EECC60);
  *(v34 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_257E444C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3E0, &qword_257EECF38);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v73 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4980, &qword_257EECF40);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3E8, &qword_257EECF48);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v67 - v22;
  sub_257ECE910();
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3F0, &qword_257EECF50);
  sub_257BD2D4C(&qword_27F8FA3F8, &qword_27F8FA3F0, &qword_257EECF50, MEMORY[0x277CE14C0]);
  sub_257ECDF60();
  v24 = type metadata accessor for MAGDetectedTextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0, &unk_257EECCC0);
  sub_257ECE7C0();
  sub_257BD2D4C(&qword_27F8FA400, &qword_27F8FA3E8, &qword_257EECF48, MEMORY[0x277CDD6E0]);
  v70 = v15;
  sub_257ECEC60();

  v25 = (*(v17 + 8))(v23, v16);
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28, v29, v30, v31);
  sub_257E47D04(a1, &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MAGDetectedTextView);
  sub_257ECF900();
  v32 = sub_257ECF8F0();
  v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 16) = v32;
  *(v34 + 24) = v35;
  sub_257E47D6C(&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for MAGDetectedTextView);
  v36 = sub_257ECF930();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39, v40, v41, v42);
  v43 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_257ECF910();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v68 = sub_257ECE1A0();
    v69 = &v67;
    v67 = *(v68 - 8);
    MEMORY[0x28223BE20](v68, v44, v45, v46, v47);
    v49 = &v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_257ED02D0();

    v79 = 0xD000000000000037;
    v80 = 0x8000000257F080B0;
    v78 = 112;
    v50 = sub_257ED0600();
    MEMORY[0x259C72150](v50);

    v56 = MEMORY[0x28223BE20](v51, v52, v53, v54, v55);
    (*(v37 + 16))(&v67 - v43, &v67 - v43, v36, v56);
    sub_257ECE190();
    (*(v37 + 8))(&v67 - v43, v36);
    v57 = v73;
    (*(v71 + 32))(v73, v70, v72);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4988, &qword_257ED6D60);
    (*(v67 + 32))(&v57[*(v58 + 36)], v49, v68);
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4990, &qword_257ED6D68);
    v57 = v73;
    v60 = &v73[*(v59 + 36)];
    v61 = sub_257ECE100();
    (*(v37 + 32))(&v60[*(v61 + 20)], &v67 - v43, v36);
    *v60 = &unk_257EECF60;
    *(v60 + 1) = v34;
    (*(v71 + 32))(v57, v70, v72);
  }

  v62 = sub_257ECED80();
  v63 = sub_257ECE930();
  v64 = v76;
  (*(v74 + 32))(v76, v57, v75);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA408, &qword_257EECF70);
  v66 = v64 + *(result + 36);
  *v66 = v62;
  *(v66 + 8) = v63;
  return result;
}

uint64_t sub_257E44C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA410, &qword_257EECF78);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA418, &qword_257EECF80);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = v43 - v30;
  *v31 = sub_257ECE500();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA420, &qword_257EECF88);
  sub_257E44F9C(a1, &v31[*(v32 + 44)]);
  v33 = sub_257ECE930();
  sub_257ECDF40();
  v34 = &v31[*(v18 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  *v16 = sub_257ECE5B0();
  *(v16 + 1) = 0x4034000000000000;
  v16[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA428, &unk_257EECF90);
  v39 = a1[1];
  v43[2] = *a1;
  v43[3] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA280, &unk_257EECC30);
  sub_257ECEE60();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970, &unk_257EDB140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA430, &qword_257EECFB8);
  sub_257BD2D4C(&qword_27F8FA438, &unk_27F8F6970, &unk_257EDB140, MEMORY[0x277D83980]);
  sub_257E47F70(&qword_27F8FA440, type metadata accessor for DetectedTextBlock, &protocol conformance descriptor for DetectedTextBlock);
  sub_257E47FB8();
  sub_257ECEF80();
  sub_257BE401C(v31, v24, &qword_27F8FA418, &qword_257EECF80);
  sub_257BE401C(v16, v9, &qword_27F8FA410, &qword_257EECF78);
  v40 = v43[0];
  sub_257BE401C(v24, v43[0], &qword_27F8FA418, &qword_257EECF80);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA460, &qword_257EECFC8);
  sub_257BE401C(v9, v40 + *(v41 + 48), &qword_27F8FA410, &qword_257EECF78);
  sub_257BE4084(v16, &qword_27F8FA410, &qword_257EECF78);
  sub_257BE4084(v31, &qword_27F8FA418, &qword_257EECF80);
  sub_257BE4084(v9, &qword_27F8FA410, &qword_257EECF78);
  return sub_257BE4084(v24, &qword_27F8FA418, &qword_257EECF80);
}

uint64_t sub_257E44F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v74 = a2;
  v72 = type metadata accessor for TextCollapseButton(0) - 8;
  MEMORY[0x28223BE20](v72, v2, v3, v4, v5);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v70 = (&v64 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA470, &qword_257EECFD8);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v68 = &v64 - v24;
  v25 = sub_257ECF060();
  v27 = v26;
  sub_257E45578(&v99);
  v94 = v105;
  v95 = v106;
  v90 = v101;
  v91 = v102;
  v92 = v103;
  v93 = v104;
  v88 = v99;
  v89 = v100;
  v97[6] = v105;
  v97[7] = v106;
  v97[2] = v101;
  v97[3] = v102;
  v97[4] = v103;
  v97[5] = v104;
  v96 = v107;
  v98 = v107;
  v97[0] = v99;
  v97[1] = v100;
  sub_257BE401C(&v88, &v78, &qword_27F8FA478, &qword_257EECFE0);
  sub_257BE4084(v97, &qword_27F8FA478, &qword_257EECFE0);
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v81 = v90;
  v82 = v91;
  v84 = v93;
  v83 = v92;
  v80 = v89;
  v79 = v88;
  *&v78 = v25;
  *(&v78 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA480, &qword_257EECFE8);
  sub_257BD2D4C(&qword_27F8FA488, &qword_27F8FA480, &qword_257EECFE8, MEMORY[0x277CE11A8]);
  sub_257ECEC20();
  v105 = v84;
  v106 = v85;
  v107 = v86;
  v108 = v87;
  v101 = v80;
  v102 = v81;
  v103 = v82;
  v104 = v83;
  v99 = v78;
  v100 = v79;
  sub_257BE4084(&v99, &qword_27F8FA480, &qword_257EECFE8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  v33 = sub_257ECF500();
  v35 = v34;

  *&v78 = v33;
  *(&v78 + 1) = v35;
  sub_257BDAB08();
  v36 = sub_257ECEAF0();
  v38 = v37;
  v40 = v39;
  sub_257ECED90();
  v65 = sub_257ECEAA0();
  v42 = v41;
  v66 = v43;
  v67 = v44;

  sub_257C0300C(v36, v38, v40 & 1);

  v45 = v69 + *(type metadata accessor for MAGDetectedTextView(0) + 24);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v45) = *(v45 + 16);
  *&v78 = v46;
  *(&v78 + 1) = v47;
  LOBYTE(v79) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  sub_257ECEF50();
  v48 = v75;
  v49 = v76;
  v50 = v77;
  KeyPath = swift_getKeyPath();
  v52 = v70;
  *v70 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378, &qword_257EECEB8);
  swift_storeEnumTagMultiPayload();
  v53 = v71;
  v54 = v52 + *(v72 + 28);
  *v54 = v48;
  *(v54 + 8) = v49;
  *(v54 + 16) = v50;
  v55 = v68;
  sub_257BE401C(v68, v53, &qword_27F8FA470, &qword_257EECFD8);
  v56 = v73;
  sub_257E47D04(v52, v73, type metadata accessor for TextCollapseButton);
  v57 = v74;
  sub_257BE401C(v53, v74, &qword_27F8FA470, &qword_257EECFD8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA490, &unk_257EED020);
  v59 = v57;
  v60 = v57 + v58[12];
  v61 = v65;
  *v60 = v65;
  *(v60 + 8) = v42;
  LOBYTE(v57) = v66 & 1;
  *(v60 + 16) = v66 & 1;
  *(v60 + 24) = v67;
  v62 = v59 + v58[16];
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_257E47D04(v56, v59 + v58[20], type metadata accessor for TextCollapseButton);
  sub_257BD1B90(v61, v42, v57);

  sub_257E480C8(v52);
  sub_257BE4084(v55, &qword_27F8FA470, &qword_257EECFD8);
  sub_257E480C8(v56);
  sub_257C0300C(v61, v42, v57);

  return sub_257BE4084(v53, &qword_27F8FA470, &qword_257EECFD8);
}

uint64_t sub_257E45578@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemBlueColor];
  v11 = sub_257ECED30();
  v33 = v11;
  sub_257ECF060();
  sub_257ECE080();
  *&v46[3] = *&v46[27];
  *&v46[11] = *&v46[35];
  *&v46[19] = *&v46[43];
  sub_257ECEE30();
  (*(v3 + 104))(v9, *MEMORY[0x277CE0FE0], v2);
  v30 = sub_257ECEE40();

  (*(v3 + 8))(v9, v2);
  sub_257ECF060();
  sub_257ECE080();
  v12 = v47;
  LOBYTE(v9) = v48;
  v13 = v49;
  v14 = v50;
  v31 = v52;
  v32 = v51;
  v15 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  *&v53[0] = v11;
  WORD4(v53[0]) = 256;
  *(v53 + 10) = *v46;
  *(&v53[1] + 10) = *&v46[8];
  *(&v53[2] + 10) = *&v46[16];
  *(&v53[3] + 1) = *&v46[23];
  *&v38[31] = v53[2];
  *&v38[39] = v53[3];
  *&v38[15] = v53[0];
  *&v38[23] = v53[1];
  v18 = v30;
  v17 = v31;
  *&v54 = v30;
  *(&v54 + 1) = v12;
  LOBYTE(v55) = v9;
  DWORD1(v55) = *&v45[3];
  *(&v55 + 1) = *v45;
  *(&v55 + 1) = v13;
  LOBYTE(v56) = v14;
  DWORD1(v56) = *&v44[3];
  v19 = *v44;
  *(&v56 + 1) = *v44;
  v20 = v32;
  *(&v56 + 1) = v32;
  *&v57 = v31;
  *(&v57 + 1) = KeyPath;
  v58 = v15;
  v43 = v15;
  v41 = v56;
  v42 = v57;
  v39 = v54;
  v40 = v55;
  v21 = v53[0];
  v22 = v53[1];
  v23 = v53[3];
  *(a1 + 32) = v53[2];
  *(a1 + 48) = v23;
  *a1 = v21;
  *(a1 + 16) = v22;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  *(a1 + 128) = v43;
  *(a1 + 96) = v26;
  *(a1 + 112) = v27;
  *(a1 + 64) = v24;
  *(a1 + 80) = v25;
  v59[0] = v18;
  v59[1] = v12;
  v60 = v9;
  *v61 = *v45;
  *&v61[3] = *&v45[3];
  v62 = v13;
  v63 = v14;
  *v64 = v19;
  *&v64[3] = *&v44[3];
  v65 = v20;
  v66 = v17;
  v67 = KeyPath;
  v68 = v15;
  sub_257BE401C(v53, &v34, &qword_27F8F6830, &qword_257EDD220);
  sub_257BE401C(&v54, &v34, &qword_27F8FA3C8, &qword_257EECF18);
  sub_257BE4084(v59, &qword_27F8FA3C8, &qword_257EECF18);
  v34 = v33;
  v35 = 256;
  v36 = *v46;
  v37 = *&v46[8];
  *v38 = *&v46[16];
  *&v38[7] = *&v46[23];
  return sub_257BE4084(&v34, &qword_27F8F6830, &qword_257EDD220);
}

void sub_257E4590C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  v8 = *(a1 + *(v4 + 20));
  if (v8)
  {
    MEMORY[0x28223BE20](v4, v5, v8, v6, v7);
    v25[2] = a1;
    sub_257C82C5C(sub_257C31C98, v25, v9);
    v11 = sub_257E5B998(v10);

    v12 = [v11 string];

    v13 = sub_257ECF500();
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA468, &qword_257EECFD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BD0;
    v17 = sub_257ECE960();
    *(inited + 32) = v17;
    v18 = sub_257ECE980();
    *(inited + 33) = v18;
    v19 = sub_257ECE970();
    sub_257ECE970();
    if (sub_257ECE970() != v17)
    {
      v19 = sub_257ECE970();
    }

    sub_257ECE970();
    if (sub_257ECE970() != v18)
    {
      v19 = sub_257ECE970();
    }

    sub_257ECDF40();
    *(&v21 + 1) = v20;
    *(&v23 + 1) = v22;
    v26 = 0;
    v24 = v19;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v24 = 0;
    v21 = 0uLL;
    v23 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v24;
  *(a2 + 24) = v21;
  *(a2 + 40) = v23;
  *(a2 + 56) = 0;
}

uint64_t sub_257E45ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a3;
  v4 = sub_257ECF120();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_257ECF190();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = *(type metadata accessor for MAGDetectedTextView(0) - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  v7 = sub_257ECF1B0();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_257ECF900();
  v3[23] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E45CF4, v9, v8);
}

uint64_t sub_257E45CF4()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v13 = v0[22];
  v5 = v0[16];
  v12 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v18 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v6 = v0[9];

  sub_257BD52CC();
  v14 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v17 = *(v1 + 8);
  v17(v2, v3);
  sub_257E47D04(v6, v4, type metadata accessor for MAGDetectedTextView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_257E47D6C(v4, v8 + v7, type metadata accessor for MAGDetectedTextView);
  v0[6] = sub_257E47EB0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D231C0;
  v0[5] = &block_descriptor_58;
  v9 = _Block_copy(v0 + 2);

  sub_257ECF150();
  v0[8] = MEMORY[0x277D84F90];
  sub_257E47F70(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C727E0](v13, v12, v15, v9);
  _Block_release(v9);

  (*(v18 + 8))(v15, v16);
  (*(v19 + 8))(v12, v20);
  v17(v13, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_257E4601C()
{
  type metadata accessor for MAGDetectedTextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2B0, &unk_257EECCC0);
  return sub_257ECE7B0();
}

void sub_257E460A8(uint64_t a1)
{
  sub_257E46144(319);
  if (v1 <= 0x3F)
  {
    sub_257E461A8();
    if (v2 <= 0x3F)
    {
      sub_257E46200();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257E46144(uint64_t a1)
{
  if (!qword_27F8FA2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6970, &unk_257EDB140);
    v1 = sub_257ECEE90();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FA2C8);
    }
  }
}

void sub_257E461A8()
{
  if (!qword_27F8FA2D0)
  {
    v0 = sub_257ECE7E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FA2D0);
    }
  }
}

void sub_257E46200()
{
  if (!qword_27F8F7AE8)
  {
    v0 = sub_257ECEF60();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7AE8);
    }
  }
}

unint64_t sub_257E46250()
{
  result = qword_27F8FA2D8;
  if (!qword_27F8FA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA2A8, &qword_257EECC60);
    sub_257E462DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2D8);
  }

  return result;
}

unint64_t sub_257E462DC()
{
  result = qword_27F8FA2E0;
  if (!qword_27F8FA2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA290, &qword_257EECC48);
    sub_257E46394();
    sub_257BD2D4C(&qword_27F8FA310, &qword_27F8FA2A0, &qword_257EECC58, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2E0);
  }

  return result;
}

unint64_t sub_257E46394()
{
  result = qword_27F8FA2E8;
  if (!qword_27F8FA2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA288, &qword_257EECC40);
    sub_257BD2D4C(&qword_27F8FA2F0, &qword_27F8FA2F8, &qword_257EECCE8, MEMORY[0x277CE11A8]);
    sub_257BD2D4C(&qword_27F8FA300, &qword_27F8FA308, &qword_257EECCF0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA2E8);
  }

  return result;
}

void sub_257E464D0(uint64_t a1)
{
  sub_257E46554(319);
  if (v1 <= 0x3F)
  {
    sub_257E46200();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257E46554(uint64_t a1)
{
  if (!qword_27F8FA330)
  {
    sub_257ECE0C0();
    v1 = sub_257ECDFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FA330);
    }
  }
}

uint64_t sub_257E465C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextCollapseButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13, v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA360, &qword_257EECEA0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v60 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA368, &qword_257EECEA8);
  MEMORY[0x28223BE20](v60, v24, v25, v26, v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v36 = &v60 - v35;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA370, &qword_257EECEB0);
  MEMORY[0x28223BE20](v61, v37, v38, v39, v40);
  v42 = &v60 - v41;
  sub_257E47D04(a1, &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextCollapseButton);
  v43 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v44 = swift_allocObject();
  sub_257E47D6C(&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for TextCollapseButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA380, &qword_257EECEC0);
  sub_257BD2D4C(&qword_27F8FA388, &qword_27F8FA380, &qword_257EECEC0, MEMORY[0x277CE11A8]);
  sub_257ECEEA0();
  v45 = sub_257ECED80();
  v46 = sub_257ECE930();
  v47 = &v23[*(v17 + 36)];
  *v47 = v45;
  v47[8] = v46;
  sub_257E47960();
  sub_257ECEC90();
  sub_257BE4084(v23, &qword_27F8FA360, &qword_257EECEA0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [objc_opt_self() bundleForClass_];
  v50 = sub_257ECF4C0();
  v51 = sub_257ECF4C0();
  v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

  v53 = sub_257ECF500();
  v55 = v54;

  v66 = v53;
  v67 = v55;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v29, &qword_27F8FA368, &qword_257EECEA8);
  v56 = v62;
  sub_257ECE740();
  sub_257E47A44();
  sub_257E47F70(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v57 = v63;
  sub_257ECEB60();
  (*(v64 + 8))(v56, v57);
  sub_257BE4084(v36, &qword_27F8FA368, &qword_257EECEA8);
  v58 = &v42[*(v61 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  sub_257ECE310();
  *v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28, &qword_257EECED0);
  sub_257E47B00();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28, &qword_257EECED0, MEMORY[0x277CE1198]);
  sub_257ECECA0();
  return sub_257BE4084(v42, &qword_27F8FA370, &qword_257EECEB0);
}

uint64_t sub_257E46BD8(uint64_t a1)
{
  v2 = sub_257ECE0C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (a1 + *(type metadata accessor for TextCollapseButton(0) + 20));
  v11 = *v10;
  v12 = v10[1];
  LOBYTE(v10) = *(v10 + 16);
  v15 = v11;
  v16 = v12;
  v17 = v10;
  v14[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  sub_257ECEF40();
  sub_257E6DA80(v9);
  sub_257ECE0B0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_257E46CFC@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_257ECF060();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3B8, &qword_257EECED8);
  return sub_257E46D44(a2 + *(v4 + 44));
}

uint64_t sub_257E46D44@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v1 = sub_257ECEE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C0, &qword_257EECEE0);
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v10, v11, v12, v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v44 = &v43 - v20;
  v21 = [objc_opt_self() grayColor];
  v45 = sub_257ECED30();
  sub_257ECF060();
  sub_257ECE080();
  *&v52[3] = *&v52[27];
  *&v52[11] = *&v52[35];
  *&v52[19] = *&v52[43];
  sub_257ECEE30();
  (*(v2 + 104))(v8, *MEMORY[0x277CE0FE0], v1);
  v22 = sub_257ECEE40();

  (*(v2 + 8))(v8, v1);
  sub_257ECF060();
  sub_257ECE080();
  v23 = v53;
  LOBYTE(v8) = v54;
  v24 = v55;
  v25 = v56;
  v26 = v57;
  v27 = v58;
  v28 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  v61[0] = v8;
  v51 = v25;
  *&v49[0] = v22;
  *(&v49[0] + 1) = v23;
  LOBYTE(v49[1]) = v8;
  *(&v49[1] + 1) = v24;
  LOBYTE(v49[2]) = v25;
  *(&v49[2] + 1) = v26;
  *&v49[3] = v27;
  *(&v49[3] + 1) = KeyPath;
  v50 = v28;
  sub_257ECE9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C8, &qword_257EECF18);
  sub_257E47C44();
  v30 = v44;
  sub_257ECEB40();
  v59[2] = v49[2];
  v59[3] = v49[3];
  v60 = v50;
  v59[0] = v49[0];
  v59[1] = v49[1];
  sub_257BE4084(v59, &qword_27F8FA3C8, &qword_257EECF18);
  v31 = *(v9 + 16);
  v33 = v46;
  v32 = v47;
  v34 = v30;
  v31(v46, v30, v47);
  v35 = v45;
  *v61 = v45;
  *&v61[8] = 256;
  *&v61[10] = *v52;
  *&v61[26] = *&v52[8];
  *&v61[42] = *&v52[16];
  *&v61[56] = *&v52[23];
  v36 = *&v61[16];
  v37 = v48;
  *v48 = *v61;
  *(v37 + 1) = v36;
  v38 = *&v61[48];
  *(v37 + 2) = *&v61[32];
  *(v37 + 3) = v38;
  v39 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3D8, &unk_257EECF20);
  v31(&v39[*(v40 + 48)], v33, v32);
  sub_257BE401C(v61, v49, &qword_27F8F6830, &qword_257EDD220);
  v41 = *(v9 + 8);
  v41(v34, v32);
  v41(v33, v32);
  *&v49[0] = v35;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = *v52;
  *(&v49[1] + 10) = *&v52[8];
  *(&v49[2] + 10) = *&v52[16];
  *(&v49[3] + 1) = *&v52[23];
  return sub_257BE4084(v49, &qword_27F8F6830, &qword_257EDD220);
}

__n128 sub_257E471B4@<Q0>(__n128 *a9@<X8>)
{
  v10 = sub_257ECE5B0();
  sub_257E47220(&v15);
  v11 = v15;
  v12 = v17;
  v13 = v18;
  result = v16;
  a9->n128_u64[0] = v10;
  a9->n128_u64[1] = 0;
  a9[1].n128_u8[0] = 1;
  a9[1].n128_u64[1] = v11;
  a9[2] = result;
  a9[3].n128_u8[0] = v12;
  a9[3].n128_u64[1] = v13;
  return result;
}

double sub_257E47220@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);

  return result;
}

double sub_257E473BC@<D0>(uint64_t *a9@<X8>)
{
  v10 = a9;
  *a9 = sub_257ECE5B0();
  v10[1] = 0;
  *(v10 + 16) = 1;
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA348, &qword_257EECE88) + 44);
  *v11 = sub_257ECE500();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA350, &qword_257EECE90);
  sub_257E465C8(v9, &v11[*(v12 + 44)]);
  LOBYTE(v10) = sub_257ECE930();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA358, &qword_257EECE98) + 36)];
  *v13 = v10;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  return result;
}

id sub_257E47478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v3 setEditable_];
  v4 = v3;
  [v4 setUserInteractionEnabled_];
  v5 = sub_257ECF4C0();
  [v4 setText_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  v7 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v8 = [v4 textContainer];
  [v8 setLineBreakMode_];

  [v4 setScrollEnabled_];
  LODWORD(v9) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v9];
  [v4 setDataDetectorTypes_];
  v10 = [v4 textContainer];
  [v10 setLineFragmentPadding_];

  [v4 setTextContainerInset_];
  return v4;
}

void sub_257E47674(void *a1)
{
  v2 = sub_257ECF4C0();
  [a1 setText_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [a1 setFont_];
}

uint64_t sub_257E47728(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *&a1;
  }

  v6 = 1.79769313e308;
  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return *&v5;
}

uint64_t sub_257E47798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E478E0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_257E477FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E478E0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_257E47860(uint64_t a1)
{
  sub_257E478E0();
  sub_257ECE6C0();
  __break(1u);
}

unint64_t sub_257E4788C()
{
  result = qword_27F8FA338;
  if (!qword_27F8FA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA338);
  }

  return result;
}

unint64_t sub_257E478E0()
{
  result = qword_27F8FA340;
  if (!qword_27F8FA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA340);
  }

  return result;
}

unint64_t sub_257E47960()
{
  result = qword_27F8FA390;
  if (!qword_27F8FA390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA360, &qword_257EECEA0);
    sub_257BD2D4C(&qword_27F8FA398, &qword_27F8FA3A0, &qword_257EECEC8, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA390);
  }

  return result;
}

unint64_t sub_257E47A44()
{
  result = qword_27F8FA3A8;
  if (!qword_27F8FA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA368, &qword_257EECEA8);
    sub_257E47960();
    sub_257E47F70(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3A8);
  }

  return result;
}

unint64_t sub_257E47B00()
{
  result = qword_27F8FA3B0;
  if (!qword_27F8FA3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA370, &qword_257EECEB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA368, &qword_257EECEA8);
    sub_257ECE750();
    sub_257E47A44();
    sub_257E47F70(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218, &qword_257EDC800, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3B0);
  }

  return result;
}

unint64_t sub_257E47C44()
{
  result = qword_27F8FA3D0;
  if (!qword_27F8FA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA3C8, &qword_257EECF18);
    sub_257C0DC34();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA3D0);
  }

  return result;
}

uint64_t sub_257E47D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257E47D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257E47DD4()
{
  v2 = *(type metadata accessor for MAGDetectedTextView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_257BE3DE0;

  return sub_257E45ADC(v4, v5, v0 + v3);
}

uint64_t sub_257E47EDC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

double block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t sub_257E47F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257E47FB8()
{
  result = qword_27F8FA448;
  if (!qword_27F8FA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA430, &qword_257EECFB8);
    sub_257E4803C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA448);
  }

  return result;
}

unint64_t sub_257E4803C()
{
  result = qword_27F8FA450;
  if (!qword_27F8FA450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA458, &qword_257EECFC0);
    sub_257E4788C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA450);
  }

  return result;
}

uint64_t sub_257E480C8(uint64_t a1)
{
  v2 = type metadata accessor for TextCollapseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E48124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E4816C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E481E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    sub_257ECDD60();

    if (v22)
    {
      sub_257ED0640();
    }

    v6 = sub_257ECEE10();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22)
    {
      sub_257ED0640();
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_257ECF4C0();
    v10 = sub_257ECF4C0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_257ECF500();
    v14 = v13;

    v22 = v2[1];
    v15 = sub_257D42694();
    v21 = *v2;
    v16 = swift_allocObject();
    v17 = v2[1];
    v16[1] = *v2;
    v16[2] = v17;
    v16[3] = v2[2];
    *a1 = v6;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14;
    *(a1 + 24) = v15;
    *(a1 + 32) = 1;
    *(a1 + 40) = sub_257E489C8;
    *(a1 + 48) = v16;
    v18 = v5;
    sub_257BE401C(&v21, v20, &qword_27F8F5E20, &qword_257EDBCE0);
    return sub_257BE401C(&v22, v20, &qword_27F8F5E28, &qword_257EDBCE8);
  }

  else
  {
    type metadata accessor for MFReaderBlockManager(0);
    sub_257CB92C0();
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

void sub_257E485C0(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  v16 = &v35[-v15];
  v17 = *(a1 + 32);
  if (v17)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_257ECDD60();

    v19 = v36[32];

    v20 = sub_257ECF930();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_257ECF900();
    v21 = v18;
    v22 = sub_257ECF8F0();
    if (!v19)
    {
      v23 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v23[2] = v22;
      v23[3] = v26;
      v23[4] = v21;
      v25 = &unk_257EED118;
      goto LABEL_6;
    }

    if (v19 == 1)
    {
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v21;
      v25 = &unk_257EED120;
LABEL_6:
      sub_257C3FBD4(0, 0, v16, v25, v23);

      return;
    }

    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v22;
    v27[3] = v28;
    v27[4] = v21;
    sub_257C3FBD4(0, 0, v16, &unk_257EE2E48, v27);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v29 = qword_281548350 + 208;
    swift_beginAccess();
    v36[0] = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v30 = sub_257ECF110();
    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *&v35[-16] = v36;
    *&v35[-8] = v29;
    sub_257ECFD40();
    (*(v3 + 8))(v9, v2);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for MFReaderBlockManager(0);
    sub_257CB92C0();
    sub_257ECE320();
    __break(1u);
  }
}

uint64_t sub_257E489D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD4284(a1, v4, v5, v6);
}

uint64_t sub_257E48A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD3FE4(a1, v4, v5, v6);
}

id MFNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

double sub_257E48B7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257E48BF8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v18 - v15;
  sub_257C1C614(a1, &v18 - v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257C1C614(v16, v9);
  sub_257ECC3F0();
  sub_257ECDD70();
  return sub_257BE4084(v16, &qword_27F8F5F30, &qword_257EDA9E0);
}

id MFNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id MFNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v3 = a2;
  if (!ObjCClassFromMetadata)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MFNavigationController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, v4, v3);
}

id MFNavigationController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MFNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id MFNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MFNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MFNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id MFNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MFNavigationController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MFNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_257E491A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), SEL *a6)
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  return objc_msgSendSuper2(&v9, *a6, a3);
}

id sub_257E4928C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

void sub_257E493A4(void *a1)
{
  v2 = v1;
  if (!AXIsInternalInstall())
  {
LABEL_21:
    v16 = sub_257E30B80();
    v17 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

    v18 = v17;
    [v18 setNavigationBarHidden:1 animated:0];
    v19 = [v18 navigationBar];
    v20 = [objc_opt_self() systemYellowColor];
    [v19 setTintColor_];

    v21 = [v18 navigationBar];
    v22 = [objc_opt_self() visualEffectViewAllowingBlur_];
    [v21 _setBackgroundView_];

    v23 = v18;
    [v23 setModalPresentationStyle_];
    v24 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
    if (v24)
    {
      v25 = v24;
      [v25 setRootViewController_];
    }

    v26 = v23;
    goto LABEL_29;
  }

  if (a1)
  {
    v4 = a1;
    v5 = [v4 userInfo];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA540, &qword_257EED2C0);
      v7 = sub_257ECF3D0();

      v29 = &type metadata for MAGAppMode;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA548, &qword_257EED2C8);
      v8 = sub_257ECF570();
      if (*(v7 + 16))
      {
        v10 = sub_257C03F6C(v8, v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v7 + 56) + 8 * v10);
          swift_unknownObjectRetain();

          LOBYTE(v29) = v13;
          if ((swift_dynamicCast() & 1) != 0 && v30 < 3)
          {
            if (qword_27F8F46E8 != -1)
            {
              swift_once();
            }

            LOBYTE(v29) = v30;
            sub_257ECC3F0();
            sub_257ECDF10();
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

LABEL_13:
  }

  if (qword_27F8F46E8 != -1)
  {
    swift_once();
  }

  sub_257ECC3F0();
  sub_257ECDF00();

  if (!v29)
  {
    goto LABEL_21;
  }

  if (v29 == 1)
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA530, &qword_257EE7E68);
    sub_257ECEE50();
    v14 = &unk_27F8FA538;
    v15 = &unk_257EED2B0;
  }

  else
  {
    if (qword_27F8F4778 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    sub_257ECEE50();
    v14 = &unk_27F8FA528;
    v15 = &unk_257EED2A0;
  }

  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(v14, v15));
  v26 = sub_257ECE620();
  v28 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v28)
  {
    v23 = v28;
    [v23 setRootViewController_];
LABEL_29:
  }
}

void sub_257E49A10(void *a1, uint64_t a2)
{
  v178 = a2;
  v162 = a1;
  v170 = sub_257ECF120();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v2, v3, v4, v5);
  v167 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_257ECF190();
  v166 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v7, v8, v9, v10);
  v165 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_257ECF1B0();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v12, v13, v14, v15);
  v159 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v160 = &v154 - v22;
  v172 = sub_257ECDA30();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v23, v24, v25, v26);
  v155 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v158 = &v154 - v33;
  v182 = sub_257ECCB70();
  v34 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v35, v36, v37, v38);
  v176 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v179 = &v154 - v45;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v177 = &v154 - v51;
  v52 = sub_257ECD990();
  j = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54, v55, v56, v57);
  v59 = &v154 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 == -1)
  {
    goto LABEL_2;
  }

LABEL_106:
  swift_once();
LABEL_2:
  v60 = sub_257ECD9C0();
  __swift_project_value_buffer(v60, qword_27F8F5D90);
  sub_257ECD980();
  v61 = sub_257ECD9A0();
  v62 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v61, v62, v64, "SceneHandleURL", "", v63, 2u);
    MEMORY[0x259C74820](v63, -1, -1);
  }

  (*(j + 8))(v59, v52);
  v65 = v178;
  v174 = v178 & 0xC000000000000001;
  if ((v178 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
    sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
    sub_257ECFAA0();
    v65 = v191;
    v52 = v192;
    v66 = v193;
    v67 = v194;
    j = v195;
  }

  else
  {
    v68 = -1 << *(v178 + 32);
    v52 = v178 + 56;
    v66 = ~v68;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    j = v70 & *(v178 + 56);

    v67 = 0;
  }

  v173 = v66;
  v59 = (v66 + 64) >> 6;
  v181 = (v34 + 8);
  while (1)
  {
    while (1)
    {
      v71 = v67;
      if (v65 < 0)
      {
        v75 = sub_257ED0230();
        if (!v75 || (v201 = v75, sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8), swift_dynamicCast(), v74 = aBlock, v34 = j, !aBlock))
        {
LABEL_26:
          sub_257C02520(v65);
          v157 = 0;
          v180 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        v72 = v67;
        v73 = j;
        if (!j)
        {
          while (1)
          {
            v67 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              break;
            }

            if (v67 >= v59)
            {
              goto LABEL_26;
            }

            v73 = *(v52 + 8 * v67);
            ++v72;
            if (v73)
            {
              goto LABEL_17;
            }
          }

LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_17:
        v34 = (v73 - 1) & v73;
        v74 = *(*(v65 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v73)))));
        if (!v74)
        {
          goto LABEL_26;
        }
      }

      v175 = v71;
      v76 = v65;
      v77 = v74;
      v78 = [v74 URL];
      v79 = v177;
      sub_257ECCB20();

      v80 = sub_257ECCB30();
      v82 = v81;
      (*v181)(v79, v182);
      if (v82)
      {
        break;
      }

      v65 = v76;
      j = v34;
    }

    v180 = v77;
    if (v80 == 0x6F69746365746564 && v82 == 0xED000065646F4D6ELL)
    {
      break;
    }

    v83 = sub_257ED0640();

    v65 = v76;
    j = v34;
    if (v83)
    {
      goto LABEL_74;
    }
  }

  v65 = v76;
LABEL_74:
  sub_257C02520(v65);
  v157 = 1;
LABEL_27:
  v59 = v178;
  if (v174)
  {
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
    sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
    sub_257ECFAA0();
    v59 = v196;
    v52 = v197;
    v84 = v198;
    v85 = v199;
    j = v200;
  }

  else
  {
    v86 = -1 << *(v178 + 32);
    v52 = v178 + 56;
    v84 = ~v86;
    v87 = -v86;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    j = v88 & *(v178 + 56);

    v85 = 0;
  }

  v177 = v84;
  v89 = (v84 + 64) >> 6;
  while (1)
  {
    v34 = v85;
    if (v59 < 0)
    {
      break;
    }

    v90 = v85;
    v91 = j;
    if (!j)
    {
      while (1)
      {
        v85 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        if (v85 >= v89)
        {
          goto LABEL_45;
        }

        v91 = *(v52 + 8 * v85);
        ++v90;
        if (v91)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_103;
    }

LABEL_39:
    j = (v91 - 1) & v91;
    v92 = *(*(v59 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v91)))));
    if (!v92)
    {
      goto LABEL_45;
    }

LABEL_43:
    v94 = [v92 URL];
    v95 = v179;
    sub_257ECCB20();

    LOBYTE(v94) = sub_257ECCA70();
    (*v181)(v95, v182);
    if (v94)
    {
      sub_257C02520(v59);
      v96 = 0;
      goto LABEL_46;
    }
  }

  v93 = sub_257ED0230();
  if (v93)
  {
    v201 = v93;
    sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
    swift_dynamicCast();
    v92 = aBlock;
    if (aBlock)
    {
      goto LABEL_43;
    }
  }

LABEL_45:
  sub_257C02520(v59);
  v92 = 0;
  v96 = 1;
LABEL_46:
  if (v174)
  {
    v156 = v96;
    swift_unknownObjectRetain();
    sub_257ED01D0();
    v59 = 0x277D757D8uLL;
    sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
    sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
    sub_257ECFAA0();
    v97 = v201;
    v52 = v202;
    v98 = v203;
    v34 = v204;
    j = v205;
  }

  else
  {
    v156 = v96;
    v97 = v178;
    v99 = -1 << *(v178 + 32);
    v52 = v178 + 56;
    v98 = ~v99;
    v100 = -v99;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    j = v101 & *(v178 + 56);

    v34 = 0;
  }

  v173 = v98;
  v102 = (v98 + 64) >> 6;
  while (1)
  {
    v103 = v34;
    if (v97 < 0)
    {
      break;
    }

    v104 = v34;
    for (i = j; !i; ++v104)
    {
      v34 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_104;
      }

      if (v34 >= v102)
      {
        goto LABEL_68;
      }

      i = *(v52 + 8 * v34);
    }

    v59 = (i - 1) & i;
    v106 = *(*(v97 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(i)))));
    if (!v106)
    {
      goto LABEL_68;
    }

LABEL_63:
    v175 = j;
    v177 = v103;
    v108 = v97;
    v109 = v92;
    v110 = [v106 URL];
    v111 = v176;
    sub_257ECCB20();

    v112 = sub_257ECCB30();
    v114 = v113;
    (*v181)(v111, v182);
    if (v114)
    {
      if (v112 == 0x6F74616363617473 && v114 == 0xE800000000000000)
      {

        v97 = v108;
LABEL_76:
        sub_257C02520(v97);
        v116 = 1;
LABEL_77:
        v121 = v158;
        sub_257ECD4E0();
        v122 = sub_257ECDA20();
        v123 = sub_257ECFBC0();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_257BAC000, v122, v123, "Launched detectionMode by URL.", v124, 2u);
          MEMORY[0x259C74820](v124, -1, -1);
        }

        (*(v171 + 8))(v121, v172);
        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        v125 = sub_257ECFD30();
        v126 = v159;
        sub_257ECF1A0();
        v127 = v160;
        sub_257ECF220();
        v180 = *(v163 + 8);
        v34 = v164;
        (v180)(v126, v164);
        v128 = swift_allocObject();
        *(v128 + 16) = v157;
        v129 = v161;
        v130 = v162;
        *(v128 + 24) = v161;
        *(v128 + 32) = v130;
        *(v128 + 40) = v116;
        v189 = sub_257E4D7C0;
        v190 = v128;
        aBlock = MEMORY[0x277D85DD0];
        v186 = 1107296256;
        v187 = sub_257D231C0;
        v188 = &block_descriptor_51_1;
        v131 = _Block_copy(&aBlock);
        v177 = v129;
        v132 = v130;

        v133 = v165;
        sub_257ECF150();
        aBlock = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        v134 = v167;
        v135 = v170;
        sub_257ED0180();
        MEMORY[0x259C727E0](v127, v133, v134, v131);
        _Block_release(v131);

        (*(v169 + 8))(v134, v135);
        (*(v166 + 8))(v133, v168);
        (v180)(v127, v34);
        if (v156)
        {
          return;
        }

        if (v174)
        {
          swift_unknownObjectRetain();
          sub_257ED01D0();
          sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
          sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
          sub_257ECFAA0();
          v59 = aBlock;
          v52 = v186;
          v136 = v187;
          v137 = v188;
          v138 = v189;
        }

        else
        {
          v59 = v178;
          v139 = -1 << *(v178 + 32);
          v52 = v178 + 56;
          v136 = ~v139;
          v140 = -v139;
          if (v140 < 64)
          {
            v141 = ~(-1 << v140);
          }

          else
          {
            v141 = -1;
          }

          v138 = v141 & *(v178 + 56);

          v137 = 0;
        }

        v180 = v136;
        v142 = (v136 + 64) >> 6;
        v178 = v59;
        if (v59 < 0)
        {
          while (1)
          {
            v148 = sub_257ED0230();
            if (!v148)
            {
              break;
            }

            v183 = v148;
            sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
            swift_dynamicCast();
            v147 = v184;
            j = v137;
            v146 = v138;
            if (!v184)
            {
              goto LABEL_100;
            }

LABEL_95:
            v149 = [v147 URL];
            v150 = v179;
            sub_257ECCB20();

            v151 = sub_257ECCA70();
            v34 = *v181;
            (*v181)(v150, v182);
            if (v151)
            {
              v152 = [v147 URL];
              v153 = v179;
              sub_257ECCB20();

              sub_257E4AEA8(v153);
              (v34)(v153, v182);
              return;
            }

            v137 = j;
            v138 = v146;
            v59 = v178;
            if ((v178 & 0x8000000000000000) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
LABEL_87:
          v143 = v137;
          v144 = v138;
          for (j = v137; !v144; ++v143)
          {
            j = v143 + 1;
            if (__OFADD__(v143, 1))
            {
              goto LABEL_105;
            }

            if (j >= v142)
            {
              goto LABEL_98;
            }

            v144 = *(v52 + 8 * j);
          }

          v145 = v59;
          v146 = (v144 - 1) & v144;
          v147 = *(*(v145 + 48) + ((j << 9) | (8 * __clz(__rbit64(v144)))));
          if (v147)
          {
            goto LABEL_95;
          }

LABEL_100:
          v59 = v178;
        }

LABEL_98:
        sub_257C02520(v59);
        return;
      }

      v115 = sub_257ED0640();

      v92 = v109;
      v97 = v108;
      j = v59;
      if (v115)
      {
        goto LABEL_76;
      }
    }

    else
    {

      v92 = v109;
      v97 = v108;
      j = v59;
    }
  }

  v107 = sub_257ED0230();
  if (v107)
  {
    v184 = v107;
    sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
    swift_dynamicCast();
    v106 = aBlock;
    v59 = j;
    if (aBlock)
    {
      goto LABEL_63;
    }
  }

LABEL_68:
  sub_257C02520(v97);
  if (v92 | v180)
  {
    v116 = 0;
    goto LABEL_77;
  }

  v117 = v155;
  sub_257ECD4E0();
  v118 = sub_257ECDA20();
  v119 = sub_257ECFBC0();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_257BAC000, v118, v119, "No URL provided, launching without detectionMode.", v120, 2u);
    MEMORY[0x259C74820](v120, -1, -1);
  }

  (*(v171 + 8))(v117, v172);
}

void sub_257E4AEA8(uint64_t a1)
{
  v2 = sub_257ECDA30();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v49 - v19;
  v21 = sub_257ECCB70();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23, v24, v25, v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() defaultManager];
  sub_257ECCB50();
  v30 = sub_257ECF4C0();

  v31 = [v29 fileExistsAtPath_];

  if (v31)
  {
    (*(v22 + 16))(v28, a1, v21);
    v32 = objc_allocWithZone(MEMORY[0x277CCAA20]);
    v33 = sub_257E4D614(v28, 1);
    sub_257E5A374(v33);
    if (v34 >> 62)
    {
      v44 = v34;
      v45 = sub_257ED0210();
      v34 = v44;
      if (v45 >= 1)
      {
        goto LABEL_9;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_9:
      if (*(v49 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) && (v38 = v34, (v39 = [*(v49 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) rootViewController]) != 0))
      {
        v40 = v39;
        type metadata accessor for MFNavigationController();
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          v42 = v41;
          v43 = swift_allocObject();
          *(v43 + 16) = v38;
          sub_257E4CBF8(v42, sub_257E4D768, v43);
        }

        else
        {
        }
      }

      else
      {
      }

      return;
    }

    sub_257ECD4E0();
    v46 = sub_257ECDA20();
    v47 = sub_257ECFBC0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_257BAC000, v46, v47, "No images within the magnifier file", v48, 2u);
      MEMORY[0x259C74820](v48, -1, -1);
    }

    (*(v50 + 8))(v20, v51);
  }

  else
  {
    sub_257ECD4E0();
    v35 = sub_257ECDA20();
    v36 = sub_257ECFBC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_257BAC000, v35, v36, "File path provided does not exist.", v37, 2u);
      MEMORY[0x259C74820](v37, -1, -1);
    }

    (*(v50 + 8))(v13, v51);
  }
}

void sub_257E4B400(uint64_t a1, unint64_t a2)
{
  v79 = a2;
  v72 = a1;
  v74 = sub_257ECDA30();
  v2 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v3, v4, v5, v6);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF120();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v67 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_257ECF190();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v14, v15, v16, v17);
  v65 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_257ECF1B0();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v19, v20, v21, v22);
  v61 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v62 = &v61 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v30 - 8, v31, v32, v33, v34);
  v76 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v42 = &v61 - v41;
  sub_257C77614();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v43 = qword_281548340;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;
  sub_257ECC3F0();
  v75 = v43;
  sub_257ECDD70();
  if (v79 >> 62)
  {
    v45 = sub_257ED0210();
    v46 = v72;
    if (v45)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v53 = sub_257ECFD30();
    v54 = v61;
    sub_257ECF1A0();
    v55 = v62;
    sub_257ECF220();
    v79 = *(v63 + 8);
    v56 = v64;
    (v79)(v54, v64);
    aBlock[4] = sub_257E4BC00;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_39_2;
    v57 = _Block_copy(aBlock);
    v58 = v65;
    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v59 = v67;
    v60 = v70;
    sub_257ED0180();
    MEMORY[0x259C727E0](v55, v58, v59, v57);
    _Block_release(v57);

    (*(v69 + 8))(v59, v60);
    (*(v66 + 8))(v58, v68);
    (v79)(v55, v56);
    return;
  }

  v45 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = v72;
  if (!v45)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v45 >= 1)
  {
    v47 = 0;
    v78 = v79 & 0xC000000000000001;
    v73 = v2 + 8;
    *&v44 = 138412290;
    v71 = v44;
    while (1)
    {
      if (v78)
      {
        v50 = MEMORY[0x259C72E20](v47, v79);
        if (v46)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v50 = *(v79 + 8 * v47 + 32);
        if (v46)
        {
LABEL_13:
          v51 = *(v46 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 24);
          v52 = *(v46 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 32);
          __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore), v51);
          (*(v52 + 24))(v50, v51, v52);
          v48 = 0;
          goto LABEL_8;
        }
      }

      v48 = 1;
LABEL_8:
      v49 = sub_257ECCB70();
      (*(*(v49 - 8) + 56))(v42, v48, 1, v49);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257C1C614(v42, v76);
      sub_257ECC3F0();
      sub_257ECDD70();

      sub_257BE4084(v42, &qword_27F8F5F30, &qword_257EDA9E0);
      if (v45 == ++v47)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
}

double sub_257E4BC00()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

uint64_t sub_257E4BCE8(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a3;
  v4 = sub_257ECF120();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF1B0();
  v40 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v39 - v31;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v33 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v39 = *(v19 + 8);
  v39(v25, v18);
  v34 = swift_allocObject();
  v35 = v41;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  aBlock[4] = sub_257E4F34C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_66_0;
  v36 = _Block_copy(aBlock);
  v37 = a2;
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C727E0](v32, v17, v10, v36);
  _Block_release(v36);

  (*(v44 + 8))(v10, v4);
  (*(v42 + 8))(v17, v43);
  return (v39)(v32, v40);
}

uint64_t sub_257E4C070(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v87 = a1;
  v2 = sub_257ECD9D0();
  v90 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECD990();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v92 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECDA30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v84 - v28;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v30 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v96[0] & 1) == 0)
  {
    v86 = v2;
    v88 = v9;
    sub_257ECD440();
    v31 = sub_257ECDA20();
    v32 = sub_257ECFBD0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = 1;
      _os_log_impl(&dword_257BAC000, v31, v32, "Setting detectionModeOn to %{BOOL}d", v33, 8u);
      MEMORY[0x259C74820](v33, -1, -1);
    }

    v34 = *(v16 + 8);
    v34(v29, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v96[0]) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257ECD440();
    v35 = sub_257ECDA20();
    v36 = sub_257ECFBD0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_257BAC000, v35, v36, "Launched Detection Mode by URL.", v37, 2u);
      MEMORY[0x259C74820](v37, -1, -1);
    }

    v34(v22, v15);
    v38 = (v30 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
    swift_beginAccess();
    v39 = v38[1];
    v40 = v38[2];
    v95[0] = *v38;
    v95[1] = v39;
    v95[2] = v40;
    v41 = qword_2815447E0;

    if (v41 != -1)
    {
      v42 = swift_once();
    }

    MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
    *(&v84 - 2) = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
    sub_257ECFD50();

    v47 = v94[0];
    v48 = sub_257C592D0(2u, v94[0]);
    v9 = v88;
    if (v48)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_257BFD908(0, *(v47 + 2) + 1, 1, v47);
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      v85 = v8;
      if (v50 >= v49 >> 1)
      {
        v47 = sub_257BFD908((v49 > 1), v50 + 1, 1, v47);
      }

      *(v47 + 2) = v50 + 1;
      v47[v50 + 32] = 2;
      v51 = (v30 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
      v52 = swift_beginAccess();
      v53 = *v51;
      v54 = v51[1];
      v55 = v51[2];
      v94[0] = v53;
      v94[1] = v54;
      v94[2] = v55;
      MEMORY[0x28223BE20](v52, v56, v57, v58, v59);
      *(&v84 - 2) = v94;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
      sub_257ECFD50();

      v60 = v93[0];
      v61 = (v30 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
      v62 = swift_beginAccess();
      v63 = *v61;
      v64 = v61[1];
      v65 = v61[2];
      v93[0] = v63;
      v93[1] = v64;
      v93[2] = v65;
      MEMORY[0x28223BE20](v62, v66, v67, v68, v69);
      *(&v84 - 2) = v93;

      sub_257ECFD50();

      v70 = v93[3];
      v71 = sub_257D53928();
      sub_257D53B38(v47, v60, v70, v71);

      v72 = [objc_opt_self() defaultCenter];
      if (qword_27F8F4680 != -1)
      {
        swift_once();
      }

      [v72 postNotificationName:qword_27F913048 object:v87 userInfo:0];

      v8 = v85;
      v9 = v88;
    }

    v2 = v86;
  }

  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v73 = sub_257ECD9C0();
  __swift_project_value_buffer(v73, qword_27F8F5D90);
  v74 = sub_257ECD9A0();
  v75 = v92;
  sub_257ECD9E0();
  v76 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    v77 = v89;
    sub_257ECDA10();
    v78 = v77;

    v79 = v90;
    if ((*(v90 + 88))(v78, v2) == *MEMORY[0x277D85B00])
    {
      v80 = "[Error] Interval already ended";
    }

    else
    {
      (*(v79 + 8))(v78, v2);
      v80 = "";
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v74, v76, v82, "SceneLaunchDetectMode", v80, v81, 2u);
    MEMORY[0x259C74820](v81, -1, -1);
  }

  return (*(v9 + 8))(v75, v8);
}

uint64_t sub_257E4C96C(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECD9D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECD990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v18 = sub_257ECD9C0();
  __swift_project_value_buffer(v18, qword_27F8F5D90);
  v19 = sub_257ECD9A0();
  sub_257ECD9E0();
  v20 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    sub_257ECDA10();

    if ((*(v3 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v9, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v19, v20, v23, "SceneLaunchFromActionBtn", v21, v22, 2u);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  return (*(v11 + 8))(v17, v10);
}

void sub_257E4CBF8(void *a1, void (*a2)(void *), uint64_t a3)
{
  v7 = [a1 visibleViewController];
  if (v7)
  {
    v33 = v7;
    type metadata accessor for AppViewController(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v33;
      if (!a2)
      {
LABEL_6:

        return;
      }

      v33 = v33;
      a2(v9);
LABEL_5:

      v10 = v33;
      goto LABEL_6;
    }

    type metadata accessor for EditControlsViewController();
    if (swift_dynamicCastClass())
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = a2;
      v12[5] = a3;
      sub_257ECC3F0();
      v13 = a1;
      sub_257BBD7E4(a2, a3);
      sub_257D0CC10(sub_257E4F374, v12);

      return;
    }

    v14 = [v33 navigationController];
    if (!v14)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = a3;
      aBlock[4] = sub_257E4D58C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_59;
      v20 = _Block_copy(aBlock);
      v21 = a1;
      sub_257BBD7E4(a2, a3);

      [v33 dismissViewControllerAnimated:0 completion:v20];

      _Block_release(v20);
      return;
    }

    v9 = v14;
    v15 = [v14 viewControllers];
    sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
    v16 = sub_257ECF810();

    if (v16 >> 62)
    {
      if (sub_257ED0210())
      {
        goto LABEL_19;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x259C72E20](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_47;
        }

        v17 = *(v16 + 32);
      }

      v32 = v17;

      type metadata accessor for DetectionModeSettingsViewController();
      if (swift_dynamicCastClass())
      {
        goto LABEL_23;
      }

LABEL_28:
      v22 = [v9 viewControllers];
      v16 = sub_257ECF810();

      if (!(v16 >> 62))
      {
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_30:
          if ((v16 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x259C72E20](0, v16);
          }

          else
          {
            if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_52;
            }

            v23 = *(v16 + 32);
          }

          v24 = v23;

          type metadata accessor for ActivityNameOnBoardingController();
          v25 = swift_dynamicCastClass();

          if (v25)
          {
            v26 = [v9 viewControllers];
            v3 = sub_257ECF810();

            if (!(v3 >> 62))
            {
              if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

LABEL_53:

              return;
            }

LABEL_52:
            if (sub_257ED0210())
            {
LABEL_36:
              if ((v3 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x259C72E20](0, v3);
              }

              else
              {
                if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v27 = *(v3 + 32);
              }

              v32 = v27;

              v28 = swift_dynamicCastClass();
              if (v28)
              {
                v29 = v28 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v30 = *(v29 + 8);
                  ObjectType = swift_getObjectType();
                  (*(v30 + 8))(ObjectType, v30);
                  swift_unknownObjectRelease();
                }

                if (a2)
                {
                  a2(0);
                }

                goto LABEL_5;
              }

LABEL_23:

              v10 = v32;
              goto LABEL_6;
            }

            goto LABEL_53;
          }

LABEL_49:

          sub_257E4CBF8(a1, a2, a3);
          goto LABEL_5;
        }

LABEL_48:

        goto LABEL_49;
      }

LABEL_47:
      if (sub_257ED0210())
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    a2(0);
  }
}

void sub_257E4D1EC(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_257E4CBF8(a2, a3, a4);
  }
}

void sub_257E4D264()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v7 = v2;
      type metadata accessor for MFNavigationController();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = [v3 navigationBar];

        v5 = [v4 _backgroundView];
        if (!v5)
        {
          return;
        }

        if (UIAccessibilityIsReduceTransparencyEnabled())
        {
          v6 = 1.0;
        }

        else
        {
          v6 = 0.6;
        }

        v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v6];
        [v5 setBackgroundColor_];
      }
    }
  }
}

id sub_257E4D520(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

uint64_t objectdestroy_20Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

id sub_257E4D614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECCAE0();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_257ECCB70();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_257ECC9F0();

    swift_willThrow();
    v13 = sub_257ECCB70();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_257E4D770(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_257BD2C2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_257E4D7C0(uint64_t result)
{
  v2 = *(v1 + 40);
  if (*(v1 + 16) == 1)
  {
    sub_257E4EBE4();
  }

  if (v2)
  {
    sub_257E4F040();
  }
}

void sub_257E4D800(void *a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v65 = a1;
  v4 = sub_257ECDA30();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v17 = &v64 - v16;
  v18 = sub_257ECD990();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v26 = sub_257ECD9C0();
  __swift_project_value_buffer(v26, qword_27F8F5D90);
  sub_257ECD980();
  v27 = sub_257ECD9A0();
  v28 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v27, v28, v30, "SceneConnect", "", v29, 2u);
    MEMORY[0x259C74820](v29, -1, -1);
  }

  (*(v19 + 8))(v25, v18);
  objc_opt_self();
  v31 = v65;
  v32 = swift_dynamicCastObjCClassUnconditional();
  v33 = [objc_allocWithZone(type metadata accessor for MFSecureWindow()) initWithWindowScene_];
  v34 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = v33;
  v35 = v33;

  v36 = v68;
  v37 = [v68 shortcutItem];
  sub_257E493A4(v37);

  v38 = sub_257ECC810();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  sub_257E4D264();
  sub_257BE4084(v17, &qword_27F8F9E30, &qword_257EEBBA0);
  v39 = [objc_opt_self() defaultCenter];
  [v39 addObserver:v3 selector:sel_updateAppearanceForReduceTransparency_ name:*MEMORY[0x277D764C8] object:0];

  [v35 makeKeyAndVisible];
  v40 = [v36 URLContexts];
  sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
  sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
  v41 = sub_257ECFA70();

  sub_257E49A10(v31, v41);

  sub_257ECD4C0();
  v42 = sub_257ECDA20();
  v43 = sub_257ECFBD0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109632;
    if (qword_281543D70 != -1)
    {
      v61 = v44;
      swift_once();
      v44 = v61;
    }

    *(v44 + 4) = byte_281548078;
    *(v44 + 8) = 1024;
    if (qword_27F8F4668 != -1)
    {
      v62 = v44;
      swift_once();
      v44 = v62;
    }

    *(v44 + 10) = byte_27F8F8D88;
    *(v44 + 14) = 1024;
    if (qword_27F8F4670 != -1)
    {
      v63 = v44;
      swift_once();
      v44 = v63;
    }

    *(v44 + 16) = byte_27F8F8D89;
    v45 = v44;
    _os_log_impl(&dword_257BAC000, v42, v43, "Device has home button: %{BOOL}d, is iPad: %{BOOL}d, is iPhone: %{BOOL}d", v44, 0x14u);
    MEMORY[0x259C74820](v45, -1, -1);
  }

  (*(v66 + 8))(v10, v67);
  v46 = [v36 userActivities];
  sub_257BD2C2C(0, &qword_27F8F9A58, 0x277CCAE58);
  sub_257E4D770(&unk_27F8FA550, &qword_27F8F9A58, 0x277CCAE58);
  v47 = sub_257ECFA70();

  v48 = sub_257DF8CD4(v47);

  if (v48)
  {
    v49 = [v48 userInfo];

    if (v49)
    {
      v50 = sub_257ECF3D0();

      v69 = 0xD000000000000017;
      v70 = 0x8000000257EF8B40;
      sub_257ED0280();
      if (*(v50 + 16) && (v51 = sub_257C03F28(v71), (v52 & 1) != 0))
      {
        sub_257BE41F4(*(v50 + 56) + 32 * v51, v72);
        sub_257C09D10(v71);
        if (swift_dynamicCast())
        {
          if (v69 == 0xD000000000000011 && 0x8000000257EF8B60 == v70)
          {

LABEL_27:
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v55 = qword_281548348;
            *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 1;
            v69 = 0xD000000000000014;
            v70 = 0x8000000257EF8B80;
            sub_257ED0280();
            if (*(v50 + 16) && (v56 = sub_257C03F28(v71), (v57 & 1) != 0))
            {
              sub_257BE41F4(*(v50 + 56) + 32 * v56, v72);
              sub_257C09D10(v71);

              if (swift_dynamicCast())
              {
                v58 = v69;
                v59 = v70;

                v60 = (v55 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName);
                *v60 = v58;
                v60[1] = v59;
              }

              else
              {
              }
            }

            else
            {

              sub_257C09D10(v71);
            }

            return;
          }

          v54 = sub_257ED0640();

          if (v54)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_257C09D10(v71);
      }
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v53 = qword_281548348;

  *(v53 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 0;
}

void sub_257E4E0E4(void *a1)
{
  v1 = [a1 userInfo];
  if (v1)
  {
    v2 = v1;
    v3 = sub_257ECF3D0();

    sub_257ED0280();
    if (*(v3 + 16) && (v4 = sub_257C03F28(v11), (v5 & 1) != 0))
    {
      sub_257BE41F4(*(v3 + 56) + 32 * v4, v12);
      sub_257C09D10(v11);
      if (swift_dynamicCast())
      {
        v6 = sub_257ED0640();

        if (v6)
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = qword_281548348;
          *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 1;
          sub_257ED0280();
          if (*(v3 + 16) && (v8 = sub_257C03F28(v11), (v9 & 1) != 0))
          {
            sub_257BE41F4(*(v3 + 56) + 32 * v8, v12);
            sub_257C09D10(v11);

            if (swift_dynamicCast())
            {
              v10 = (v7 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName);
              *v10 = 0xD000000000000014;
              v10[1] = 0x8000000257EF8B80;
            }
          }

          else
          {

            sub_257C09D10(v11);
          }

          return;
        }
      }
    }

    else
    {
      sub_257C09D10(v11);
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 0;
}

void sub_257E4EBE4()
{
  v1 = sub_257ECD990();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v31 - v14;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v34 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v33 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v32 && v32 == 1)
      {
      }

      else
      {
        v16 = sub_257ED0640();

        if ((v16 & 1) == 0)
        {
          v17 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window];
          if (v17)
          {
            v18 = [v17 rootViewController];
            if (v18)
            {
              v19 = v18;
              type metadata accessor for MFNavigationController();
              v20 = swift_dynamicCastClass();
              if (v20)
              {
                v21 = v20;
                v31 = v0;
                if (qword_27F8F45A8 != -1)
                {
                  swift_once();
                }

                v22 = sub_257ECD9C0();
                __swift_project_value_buffer(v22, qword_27F8F5D90);
                sub_257ECD980();
                v23 = sub_257ECD9A0();
                v24 = sub_257ECFDC0();
                if (sub_257ED0090())
                {
                  v25 = swift_slowAlloc();
                  *v25 = 0;
                  v26 = sub_257ECD970();
                  _os_signpost_emit_with_name_impl(&dword_257BAC000, v23, v24, v26, "SceneLaunchDetectMode", "", v25, 2u);
                  MEMORY[0x259C74820](v25, -1, -1);
                }

                (*(v2 + 16))(v8, v15, v1);
                sub_257ECDA00();
                swift_allocObject();
                v27 = sub_257ECD9F0();
                (*(v2 + 8))(v15, v1);
                v28 = swift_allocObject();
                v29 = v31;
                *(v28 + 16) = v31;
                *(v28 + 24) = v27;
                v30 = v29;
                sub_257ECC3F0();
                sub_257E4CBF8(v21, sub_257E4F304, v28);
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }
}

void sub_257E4F040()
{
  v1 = sub_257ECD990();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v9, v10, v11, v12, v13).n128_u64[0];
  v16 = &v28 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v17)
  {
    v18 = [v17 rootViewController];
    if (v18)
    {
      v29 = v18;
      type metadata accessor for MFNavigationController();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        if (qword_27F8F45A8 != -1)
        {
          swift_once();
        }

        v21 = sub_257ECD9C0();
        __swift_project_value_buffer(v21, qword_27F8F5D90);
        sub_257ECD980();
        v22 = sub_257ECD9A0();
        v23 = sub_257ECFDC0();
        if (sub_257ED0090())
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = sub_257ECD970();
          _os_signpost_emit_with_name_impl(&dword_257BAC000, v22, v23, v25, "SceneLaunchFromActionBtn", "", v24, 2u);
          MEMORY[0x259C74820](v24, -1, -1);
        }

        (*(v2 + 16))(v8, v16, v1);
        sub_257ECDA00();
        swift_allocObject();
        v26 = sub_257ECD9F0();
        (*(v2 + 8))(v16, v1);
        sub_257ECC3F0();
        sub_257E4CBF8(v20, sub_257E4F354, v26);
      }

      else
      {
        v27 = v29;
      }
    }
  }
}

uint64_t objectdestroy_59Tm()
{

  return swift_deallocObject();
}

void sub_257E4F378(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

id SCNBox.init(dimensions:chamferRadius:)(float a1, float a2, float a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() boxWithWidth:a1 height:a2 length:a3 chamferRadius:a4];

  return v4;
}

double DetectedObject.transform.getter()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  [*v0 transform];
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, v1.f32[0]), v4, *v1.f32, 1), v5, v1, 2), v6, v1, 3).u64[0];
  return result;
}

double simd_mul(simd_float4x4 a1, simd_float4x4 a2)
{
  v2 = 0;
  v4[2] = a2.columns[2];
  v4[3] = a2.columns[3];
  memset(v5, 0, sizeof(v5));
  do
  {
    v5[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v4[v2])), a1.columns[1], *&v4[v2], 1), a1.columns[2], v4[v2], 2), a1.columns[3], v4[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v5;
}

float32x4_t DetectedObject.init(_:frame:)@<Q0>(id a1@<X1>, uint64_t a2@<X0>, float32x4_t *a3@<X8>)
{
  [a1 referenceOriginTransform];
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  ARVisionToRenderingCoordinateTransform();
  v15 = v10;
  v16 = v11;
  v21 = v12;
  v22 = v13;

  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v15.f32[0]), v18, *v15.f32, 1), v19, v15, 2), v20, v15, 3);
  a3->i64[0] = a2;
  a3[1] = result;
  a3[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v16.f32[0]), v18, *v16.f32, 1), v19, v16, 2), v20, v16, 3);
  a3[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v18, *v21.f32, 1), v19, v21, 2), v20, v21, 3);
  a3[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v22.f32[0]), v18, *v22.f32, 1), v19, v22, 2), v20, v22, 3);
  return result;
}

id DetectedObject.type.getter()
{
  result = [*v0 type];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void DetectedObject.id.getter()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_257ECCCD0();
  }

  else
  {
    __break(1u);
  }
}