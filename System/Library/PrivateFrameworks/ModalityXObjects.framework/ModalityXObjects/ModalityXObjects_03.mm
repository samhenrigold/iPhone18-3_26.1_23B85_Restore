uint64_t ModalityXLatnnMitigatorResult.version.getter()
{
  type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_93_0();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXLatnnMitigatorResult.version.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXLatnnMitigatorResult(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXLatnnMitigatorResult.version.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXLatnnMitigatorResult(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXLatnnMitigatorResult.clearVersion()()
{
  type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

double ModalityXLatnnMitigatorResult.threshold.getter()
{
  v0 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXLatnnMitigatorResult.threshold.setter(double a1)
{
  result = OUTLINED_FUNCTION_185_0();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t (*ModalityXLatnnMitigatorResult.threshold.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ModalityXLatnnMitigatorResult(0) + 28);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_50_0(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return ModalityXLatnnMitigatorResult.threshold.modify;
}

double ModalityXLatnnMitigatorResult.score.getter()
{
  v0 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 32));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXLatnnMitigatorResult.score.setter(double a1)
{
  result = OUTLINED_FUNCTION_184_0();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t (*ModalityXLatnnMitigatorResult.score.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ModalityXLatnnMitigatorResult(0) + 32);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_50_0(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return ModalityXLatnnMitigatorResult.score.modify;
}

uint64_t ModalityXLatnnMitigatorResult.score.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void ModalityXLatnnMitigatorResult.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_277(v3);
  OUTLINED_FUNCTION_141(*(v4 + 24));
  OUTLINED_FUNCTION_191_0(a2 + *(v5 + 28));
  v7 = a2 + *(v6 + 32);
  *v7 = 0;
  *(v7 + 8) = v8;
}

uint64_t ModalityXRecognitionCandidate.speechID.getter()
{
  return ModalityXRecognitionCandidate.speechID.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (!*(v0 + 24))
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

void key path setter for ModalityXRecognitionCandidate.speechID : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.speechID.setter(v1, v2);
}

uint64_t ModalityXRecognitionCandidate.speechID.modify()
{
  v1 = OUTLINED_FUNCTION_195();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_39_0(v2);
  v4 = type metadata accessor for ModalityXRecognitionCandidate(v3);
  OUTLINED_FUNCTION_76_0(v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v2[6] = v5;
  v2[7] = v6;

  return OUTLINED_FUNCTION_176_0();
}

BOOL ModalityXRecognitionCandidate.hasSpeechID.getter()
{
  return ModalityXRecognitionCandidate.hasSpeechID.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return OUTLINED_FUNCTION_139_0(*(v0 + 24));
}

uint64_t ModalityXRecognitionCandidate.sessionID.getter()
{
  return ModalityXRecognitionCandidate.sessionID.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (!*(v0 + 40))
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

void key path setter for ModalityXRecognitionCandidate.sessionID : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.sessionID.setter(v1, v2);
}

uint64_t ModalityXRecognitionCandidate.sessionID.modify()
{
  v1 = OUTLINED_FUNCTION_195();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_39_0(v2);
  v4 = type metadata accessor for ModalityXRecognitionCandidate(v3);
  OUTLINED_FUNCTION_76_0(v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v2[6] = v5;
  v2[7] = v6;

  return OUTLINED_FUNCTION_176_0();
}

BOOL ModalityXRecognitionCandidate.hasSessionID.getter()
{
  return ModalityXRecognitionCandidate.hasSessionID.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return OUTLINED_FUNCTION_139_0(*(v0 + 40));
}

uint64_t ModalityXRecognitionCandidate.returnCode.getter()
{
  return ModalityXRecognitionCandidate.returnCode.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (*(v0 + 52))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t ModalityXRecognitionCandidate.returnCode.modify()
{
  v1 = OUTLINED_FUNCTION_194();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_48(v2);
  *(v0 + 84) = *(type metadata accessor for ModalityXRecognitionCandidate(v3) + 20);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_204_0();
  return OUTLINED_FUNCTION_169();
}

BOOL ModalityXRecognitionCandidate.hasReturnCode.getter()
{
  return ModalityXRecognitionCandidate.hasReturnCode.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return OUTLINED_FUNCTION_104_0(*(v0 + 52));
}

uint64_t ModalityXRecognitionCandidate.returnStr.getter()
{
  return ModalityXRecognitionCandidate.returnStr.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (!*(v0 + 64))
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

void key path setter for ModalityXRecognitionCandidate.returnStr : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.returnStr.setter(v1, v2);
}

uint64_t ModalityXRecognitionCandidate.returnStr.modify()
{
  v1 = OUTLINED_FUNCTION_195();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_39_0(v2);
  v4 = type metadata accessor for ModalityXRecognitionCandidate(v3);
  OUTLINED_FUNCTION_76_0(v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v0 + 64))
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v2[6] = v5;
  v2[7] = v6;

  return OUTLINED_FUNCTION_176_0();
}

BOOL ModalityXRecognitionCandidate.hasReturnStr.getter()
{
  return ModalityXRecognitionCandidate.hasReturnStr.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return OUTLINED_FUNCTION_139_0(*(v0 + 64));
}

uint64_t ModalityXRecognitionCandidate.recognitionResult.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

void ModalityXRecognitionCandidate.recognitionResult.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  type metadata accessor for ModalityXRecognitionResult(v9);
  OUTLINED_FUNCTION_54();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_173_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v13)
  {
    OUTLINED_FUNCTION_251_0(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for ModalityXRecognitionSausage(0);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_83();
    if (!v13)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

{
  OUTLINED_FUNCTION_312();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_130();
    outlined init with copy of ModalityXRecognitionSausage();
    v2(v3);
    outlined destroy of ModalityXRecognitionSausage();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_311();

  free(v7);
}

uint64_t ModalityXRecognitionCandidate.hasRecognitionResult.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXRecognitionCandidate(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXRecognitionCandidate.clearRecognitionResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

void key path setter for ModalityXRecognitionCandidate.resultID : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.resultID.setter(v1, v2, v3, v4, v5);
}

uint64_t ModalityXRecognitionCandidate.resultID.modify()
{
  v0 = OUTLINED_FUNCTION_195();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_39_0(v1);
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  OUTLINED_FUNCTION_106_0(v3);
  v5 = v4 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_208();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v1[6] = v6;
  v1[7] = v7;

  return OUTLINED_FUNCTION_207();
}

uint64_t ModalityXRecognitionCandidate.snr.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_145(v2) + 80) = v0;
  OUTLINED_FUNCTION_46_0();
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_146_0();
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_169();
}

uint64_t key path getter for ModalityXRecognitionCandidate.fingerprintDetection : ModalityXRecognitionCandidate@<X0>(_BYTE *a1@<X8>)
{
  result = ModalityXRecognitionCandidate.fingerprintDetection.getter();
  *a1 = v3;
  return result;
}

uint64_t ModalityXRecognitionCandidate.fingerprintDetection.modify()
{
  v0 = OUTLINED_FUNCTION_194();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_48(v1);
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  OUTLINED_FUNCTION_91(v3);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_144_0();
  return OUTLINED_FUNCTION_169();
}

uint64_t ModalityXRecognitionCandidate.audioAnalytics.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

uint64_t ModalityXChoiceAlignment.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  a1(0);
  return UnknownStorage.init()();
}

void ModalityXRecognitionCandidate.audioAnalytics.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  type metadata accessor for ModalityXAudioAnalytics(v9);
  OUTLINED_FUNCTION_54();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_173_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v14)
  {
    v15 = MEMORY[0x277D84F90];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = v15;
    OUTLINED_FUNCTION_226_0();
    UnknownStorage.init()();
    OUTLINED_FUNCTION_83();
    if (!v14)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

uint64_t ModalityXRecognitionCandidate.hasAudioAnalytics.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXRecognitionCandidate(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXRecognitionCandidate.clearAudioAnalytics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

uint64_t ModalityXRecognitionCandidate.fingerprintDetection.getter@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_222();
  v6 = *a2;
  OUTLINED_FUNCTION_89();
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t key path getter for ModalityXRecognitionCandidate.watermarkDetection : ModalityXRecognitionCandidate@<X0>(_BYTE *a1@<X8>)
{
  result = ModalityXRecognitionCandidate.watermarkDetection.getter();
  *a1 = v3;
  return result;
}

void ModalityXRecognitionCandidate.fingerprintDetection.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_222_0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v5;
  v15 = *v14;
  v17 = v16(0);
  v18 = OUTLINED_FUNCTION_261_0(v17);
  v19 = *(v5 + v6);
  if ((v18 & 1) == 0)
  {
    v12(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_74();
    v19 = v10(v20);
    *(v13 + v6) = v19;
  }

  v21 = *v8;
  OUTLINED_FUNCTION_154(v19 + v21);
  *(v19 + v21) = v15;
  OUTLINED_FUNCTION_221_0();
}

uint64_t ModalityXRecognitionCandidate.watermarkDetection.modify()
{
  v0 = OUTLINED_FUNCTION_194();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_48(v1);
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  OUTLINED_FUNCTION_91(v3);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_144_0();
  return OUTLINED_FUNCTION_169();
}

void ModalityXRecognitionCandidate.fingerprintDetection.modify()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  OUTLINED_FUNCTION_210();
  v5 = *v4;
  v6 = *(*v4 + 84);
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    v1(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_74();
    v10 = v0(v13);
    *(v12 + v11) = v10;
  }

  v14 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_280(v14);
  *(v10 + v3) = v6;
  OUTLINED_FUNCTION_247();

  free(v15);
}

BOOL ModalityXRecognitionCandidate.hasFingerprintDetection.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_176();
  v5(v4);
  OUTLINED_FUNCTION_222();
  v6 = *a2;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return *(v2 + v6) != 4;
}

uint64_t ModalityXRecognitionCandidate.clearFingerprintDetection()(uint64_t *a1)
{
  v4 = type metadata accessor for ModalityXRecognitionCandidate(0);
  v5 = OUTLINED_FUNCTION_186_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_74();
    v8 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_157_0(v8);
  }

  v9 = *a1;
  result = OUTLINED_FUNCTION_154(v6 + v9);
  *(v6 + v9) = 4;
  return result;
}

double ModalityXRecognitionCandidate.snr.getter(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_176();
  v5 = v4(v3);
  OUTLINED_FUNCTION_47_0(v5);
  result = *a2;
  if (*(a2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t ModalityXRecognitionCandidate.snr.setter(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(uint64_t), void *a4, double a5)
{
  v11 = a1(0);
  v12 = OUTLINED_FUNCTION_197_0(v11);
  v13 = *(v5 + v6);
  if ((v12 & 1) == 0)
  {
    a2(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_74();
    v15 = a3(v14);
    OUTLINED_FUNCTION_241_0(v15);
  }

  v16 = v13 + *a4;
  result = OUTLINED_FUNCTION_280(v16);
  *v16 = a5;
  *(v16 + 8) = 0;
  return result;
}

uint64_t ModalityXRecognitionCandidate.watermarkPeakAverage.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_145(v2) + 80) = v0;
  OUTLINED_FUNCTION_46_0();
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_146_0();
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_169();
}

void ModalityXRecognitionCandidate.snr.modify()
{
  OUTLINED_FUNCTION_248();
  v3 = v2;
  OUTLINED_FUNCTION_210();
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 88);
    v12 = *(v5 + 80);
    v1(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_74();
    v10 = v0(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *v3;
  OUTLINED_FUNCTION_280(v14);
  *v14 = v6;
  *(v14 + 8) = 0;
  OUTLINED_FUNCTION_247();

  free(v15);
}

BOOL ModalityXRecognitionCandidate.hasSnr.getter(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_176();
  v5 = v4(v3);
  OUTLINED_FUNCTION_47_0(v5);
  return OUTLINED_FUNCTION_104_0(*(a2 + 8));
}

void ModalityXRecognitionCandidate.clearSnr()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_256_0();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_29_0();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_197_0(v12);
  v14 = *(v4 + v7);
  if ((v13 & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_74();
    v16 = v5(v15);
    OUTLINED_FUNCTION_241_0(v16);
  }

  v17 = v14 + *v9;
  OUTLINED_FUNCTION_280(v17);
  *v17 = 0;
  *(v17 + 8) = 1;
  OUTLINED_FUNCTION_255_0();
}

uint64_t ModalityXRecognitionCandidate.resultID.getter(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_176();
  v5 = v4(v3);
  OUTLINED_FUNCTION_47_0(v5);
  if (!*(a2 + 8))
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

void key path setter for ModalityXRecognitionCandidate.language : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.language.setter(v1, v2, v3, v4, v5);
}

void ModalityXRecognitionCandidate.resultID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_222_0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v7;
  v16 = OUTLINED_FUNCTION_86();
  v18 = *(v17(v16) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v7 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_74();
    v20 = v12(v21);
    *(v15 + v18) = v20;
  }

  v22 = (v20 + *v10);
  OUTLINED_FUNCTION_280(v22);
  *v22 = v8;
  v22[1] = v6;

  OUTLINED_FUNCTION_221_0();
}

uint64_t ModalityXRecognitionCandidate.language.modify()
{
  v0 = OUTLINED_FUNCTION_195();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_39_0(v1);
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  OUTLINED_FUNCTION_106_0(v3);
  v5 = v4 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_208();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v1[6] = v6;
  v1[7] = v7;

  return OUTLINED_FUNCTION_207();
}

BOOL ModalityXRecognitionCandidate.hasResultID.getter(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_176();
  v5 = v4(v3);
  OUTLINED_FUNCTION_47_0(v5);
  return OUTLINED_FUNCTION_139_0(*(a2 + 8));
}

void ModalityXRecognitionCandidate.clearResultID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_256_0();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_29_0();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_197_0(v12);
  v14 = *(v4 + v7);
  if ((v13 & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_74();
    v16 = v5(v15);
    OUTLINED_FUNCTION_241_0(v16);
  }

  v17 = (v14 + *v9);
  OUTLINED_FUNCTION_280(v17);
  *v17 = 0;
  v17[1] = 0;

  OUTLINED_FUNCTION_255_0();
}

uint64_t ModalityXRecognitionCandidate.latnnMitigatorResult.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

void ModalityXRecognitionCandidate.latnnMitigatorResult.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  v10 = type metadata accessor for ModalityXLatnnMitigatorResult(v9);
  OUTLINED_FUNCTION_54();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_173_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v15)
  {
    UnknownStorage.init()();
    v14[v10[5]] = 2;
    OUTLINED_FUNCTION_226_0();
    *v16 = 0;
    v16[1] = 0;
    OUTLINED_FUNCTION_153_0(v10[7]);
    OUTLINED_FUNCTION_153_0(v10[8]);
    OUTLINED_FUNCTION_83();
    if (!v15)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

{
  ModalityXRecognitionCandidate.recognitionResult.modify();
}

uint64_t ModalityXRecognitionCandidate.hasLatnnMitigatorResult.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXRecognitionCandidate(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXRecognitionCandidate.clearLatnnMitigatorResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    type metadata accessor for ModalityXRecognitionCandidate._StorageClass(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXRecognitionCandidate._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

void key path setter for ModalityXRecognitionCandidate.requestLocale : ModalityXRecognitionCandidate(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXRecognitionCandidate.requestLocale.setter(v1, v2, v3, v4, v5);
}

uint64_t ModalityXRecognitionCandidate.requestLocale.modify()
{
  v0 = OUTLINED_FUNCTION_195();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_39_0(v1);
  v3 = type metadata accessor for ModalityXRecognitionCandidate(v2);
  OUTLINED_FUNCTION_106_0(v3);
  v5 = v4 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_208();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v1[6] = v6;
  v1[7] = v7;

  return OUTLINED_FUNCTION_207();
}

uint64_t ModalityXItnAlignment.firstPreItnTokenIndex.getter()
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_10_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void ModalityXItnAlignment.firstPreItnTokenIndex.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXItnAlignment(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 20));
}

uint64_t (*ModalityXItnAlignment.firstPreItnTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXItnAlignment(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 20));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

void ModalityXItnAlignment.lastPreItnTokenIndex.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXItnAlignment(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 24));
}

uint64_t (*ModalityXItnAlignment.lastPreItnTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXItnAlignment(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 24));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

void ModalityXItnAlignment.firstPostItnCharPos.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXItnAlignment(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 28));
}

uint64_t (*ModalityXItnAlignment.firstPostItnCharPos.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXItnAlignment(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 28));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

void ModalityXItnAlignment.lastPostItnCharPos.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXItnAlignment(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 32));
}

uint64_t (*ModalityXItnAlignment.lastPostItnCharPos.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXItnAlignment(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 32));
  return ModalityXProcessingError.code.modify;
}

void ModalityXItnAlignment.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_268(a2 + v3);
  OUTLINED_FUNCTION_71_0(*(v4 + 24));
  OUTLINED_FUNCTION_71_0(*(v5 + 28));
  OUTLINED_FUNCTION_71_0(*(v6 + 32));
}

float ModalityXAcousticFeature.frameDuration.getter()
{
  return ModalityXAcousticFeature.frameDuration.getter();
}

{
  v0 = OUTLINED_FUNCTION_176();
  v1(v0);
  OUTLINED_FUNCTION_93_0();
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

void ModalityXAcousticFeature.frameDuration.setter(float a1)
{
  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_93_0();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*ModalityXAcousticFeature.frameDuration.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_109(a1);
  v3 = *(type metadata accessor for ModalityXAcousticFeature(v2) + 24);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_105_0(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXAcousticFeature.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXAcousticFeature(v0);
  return OUTLINED_FUNCTION_355();
}

void ModalityXRecognitionChoice.init()(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a1(0);
  UnknownStorage.init()();
  OUTLINED_FUNCTION_268(a2 + *(v3 + 24));
}

uint64_t key path setter for ModalityXSpeechRecognitionFeature.key : ModalityXSpeechRecognitionFeature(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ModalityXSpeechRecognitionFeature.key.setter(v1, v2);
}

uint64_t ModalityXRecognitionToken.tokenText.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  v4(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXSpeechRecognitionFeature.key.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXSpeechRecognitionFeature(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}

uint64_t ModalityXRecognitionToken.clearTokenText()()
{
  v1 = OUTLINED_FUNCTION_176();
  v2(v1);
  result = OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

void ModalityXSpeechRecognitionFeature.value.setter(float a1)
{
  type metadata accessor for ModalityXSpeechRecognitionFeature(0);
  OUTLINED_FUNCTION_93_0();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*ModalityXSpeechRecognitionFeature.value.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_109(a1);
  v3 = *(type metadata accessor for ModalityXSpeechRecognitionFeature(v2) + 24);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_105_0(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

void ModalityXSpeechRecognitionFeature.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for ModalityXSpeechRecognitionFeature(0);
  OUTLINED_FUNCTION_141(*(v3 + 20));
  OUTLINED_FUNCTION_268(a2 + *(v4 + 24));
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.key.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_199_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_122(v5);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_102();
  v8 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v7);
  v9 = OUTLINED_FUNCTION_299(*(v8 + 24));
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v9, v10, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  v11 = type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_38(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_217_0(MEMORY[0x277D84F90]);
    v13 = a1 + *(v11 + 24);
    *v13 = 0;
    *(v13 + 4) = 1;
    result = OUTLINED_FUNCTION_38(v1);
    if (!v12)
    {
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_155();
    return outlined init with take of ModalityXRecognitionSausage();
  }

  return result;
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.value.setter()
{
  v1 = OUTLINED_FUNCTION_187();
  v2 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v1);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v2 + 24), &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_102_0();
  outlined init with take of ModalityXRecognitionSausage();
  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_126();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ModalityXAudioAnalyticsAcousticFeature.value.modify()
{
  OUTLINED_FUNCTION_312();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_71(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  OUTLINED_FUNCTION_122(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_73(v5);
  v7 = type metadata accessor for ModalityXAcousticFeature(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_54();
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_267(v10);
  v12 = *(type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v11) + 24);
  *(v1 + 40) = v12;
  v13 = OUTLINED_FUNCTION_299(v12);
  OUTLINED_FUNCTION_283(v13, v14);
  OUTLINED_FUNCTION_29();
  if (v15)
  {
    OUTLINED_FUNCTION_219_0(MEMORY[0x277D84F90]);
    v16 = v9 + *(v7 + 24);
    *v16 = 0;
    *(v16 + 4) = 1;
    OUTLINED_FUNCTION_29();
    if (!v15)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_136();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_311();
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.hasValue.getter()
{
  v1 = OUTLINED_FUNCTION_163();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v5);
  OUTLINED_FUNCTION_111_0(v0 + *(v6 + 24));
  v7 = type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_8_0(v7);
  return v0;
}

Swift::Void __swiftcall ModalityXAudioAnalyticsAcousticFeature.clearValue()()
{
  v1 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(0);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v1 + 24), &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_167();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.init()(uint64_t a1)
{
  UnknownStorage.init()();
  v1 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(0);
  OUTLINED_FUNCTION_141(*(v1 + 20));
  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_167();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ModalityXAudioAnalytics.speechRecognitionFeatures.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ModalityXAudioAnalytics.acousticFeatures.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ModalityXChoiceAlignment.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_230_0();

  return v3(v2);
}

uint64_t ModalityXAudioAnalytics.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXAudioAnalytics(v0);
  return OUTLINED_FUNCTION_355();
}

void key path setter for ModalityXFinalSpeechRecognitionResponse.speechID : ModalityXFinalSpeechRecognitionResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXFinalSpeechRecognitionResponse.speechID.setter(v1, v2);
}

void ModalityXRecognitionCandidate.speechID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_202_0();
  v11 = v6;
  v12 = OUTLINED_FUNCTION_86();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_261_0(v14);
  v16 = *(v6 + v10);
  if ((v15 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_74();
    v16 = v8(v17);
    *(v11 + v10) = v16;
  }

  OUTLINED_FUNCTION_154(v16 + 16);
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;

  OUTLINED_FUNCTION_221_0();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.speechID.modify()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_145(v3) + 64) = v0;
  OUTLINED_FUNCTION_37_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v7;

  return OUTLINED_FUNCTION_176_0();
}

void ModalityXRecognitionCandidate.speechID.modify()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_261();
  if (v6)
  {
    OUTLINED_FUNCTION_216_0();
    v7 = OUTLINED_FUNCTION_136();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_150_0();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_188_0();
      v4(v10);
      OUTLINED_FUNCTION_146();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_74();
      v12 = v3(v11);
      OUTLINED_FUNCTION_240_0(v12);
    }

    OUTLINED_FUNCTION_280(v9 + 16);
    *(v9 + 16) = v2;
    *(v9 + 24) = v1;
  }

  OUTLINED_FUNCTION_311();

  free(v13);
}

void ModalityXRecognitionCandidate.clearSpeechID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_256_0();
  v9 = OUTLINED_FUNCTION_29_0();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_197_0(v11);
  v13 = *(v5 + v8);
  if ((v12 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_190();
    v15 = v6(v14);
    OUTLINED_FUNCTION_238_0(v15);
  }

  OUTLINED_FUNCTION_154(v13 + 16);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;

  OUTLINED_FUNCTION_255_0();
}

void key path setter for ModalityXFinalSpeechRecognitionResponse.sessionID : ModalityXFinalSpeechRecognitionResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXFinalSpeechRecognitionResponse.sessionID.setter(v1, v2);
}

void ModalityXRecognitionCandidate.sessionID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_202_0();
  v11 = v6;
  v12 = OUTLINED_FUNCTION_86();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_261_0(v14);
  v16 = *(v6 + v10);
  if ((v15 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_74();
    v16 = v8(v17);
    *(v11 + v10) = v16;
  }

  OUTLINED_FUNCTION_154(v16 + 32);
  *(v16 + 32) = v7;
  *(v16 + 40) = v5;

  OUTLINED_FUNCTION_221_0();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.sessionID.modify()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_145(v3) + 64) = v0;
  OUTLINED_FUNCTION_37_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v7;

  return OUTLINED_FUNCTION_176_0();
}

void ModalityXRecognitionCandidate.sessionID.modify()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_261();
  if (v6)
  {
    OUTLINED_FUNCTION_216_0();
    v7 = OUTLINED_FUNCTION_136();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_150_0();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_188_0();
      v4(v10);
      OUTLINED_FUNCTION_146();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_74();
      v12 = v3(v11);
      OUTLINED_FUNCTION_240_0(v12);
    }

    OUTLINED_FUNCTION_280(v9 + 32);
    *(v9 + 32) = v2;
    *(v9 + 40) = v1;
  }

  OUTLINED_FUNCTION_311();

  free(v13);
}

void ModalityXRecognitionCandidate.clearSessionID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_256_0();
  v9 = OUTLINED_FUNCTION_29_0();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_197_0(v11);
  v13 = *(v5 + v8);
  if ((v12 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_190();
    v15 = v6(v14);
    OUTLINED_FUNCTION_238_0(v15);
  }

  OUTLINED_FUNCTION_154(v13 + 32);
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;

  OUTLINED_FUNCTION_255_0();
}

void ModalityXRecognitionCandidate.returnCode.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_256_0();
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_187();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_197_0(v13);
  v15 = *(v5 + v6);
  if ((v14 & 1) == 0)
  {
    v10(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_74();
    v17 = v8(v16);
    OUTLINED_FUNCTION_241_0(v17);
  }

  OUTLINED_FUNCTION_154(v15 + 48);
  *(v15 + 48) = v4;
  *(v15 + 52) = 0;
  OUTLINED_FUNCTION_255_0();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.returnCode.modify()
{
  v1 = OUTLINED_FUNCTION_194();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_48(v2);
  *(v0 + 84) = *(type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v3) + 20);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_204_0();
  return OUTLINED_FUNCTION_169();
}

void ModalityXRecognitionCandidate.returnCode.modify()
{
  OUTLINED_FUNCTION_312();
  v1 = v0;
  v3 = v2;
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 84);
  v7 = *(*v4 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_74();
    v11 = v1(v10);
    OUTLINED_FUNCTION_240_0(v11);
  }

  OUTLINED_FUNCTION_280(v9 + 48);
  *(v9 + 48) = v5;
  *(v9 + 52) = 0;
  OUTLINED_FUNCTION_311();

  free(v12);
}

void ModalityXRecognitionCandidate.clearReturnCode()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_256_0();
  v9 = OUTLINED_FUNCTION_29_0();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_197_0(v11);
  v13 = *(v5 + v8);
  if ((v12 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_190();
    v15 = v6(v14);
    OUTLINED_FUNCTION_238_0(v15);
  }

  OUTLINED_FUNCTION_154(v13 + 48);
  *(v13 + 48) = 0;
  *(v13 + 52) = 1;
  OUTLINED_FUNCTION_255_0();
}

void key path setter for ModalityXFinalSpeechRecognitionResponse.returnStr : ModalityXFinalSpeechRecognitionResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXFinalSpeechRecognitionResponse.returnStr.setter(v1, v2);
}

void ModalityXRecognitionCandidate.returnStr.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_202_0();
  v11 = v6;
  v12 = OUTLINED_FUNCTION_86();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_261_0(v14);
  v16 = *(v6 + v10);
  if ((v15 & 1) == 0)
  {
    v9(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_74();
    v16 = v8(v17);
    *(v11 + v10) = v16;
  }

  OUTLINED_FUNCTION_154(v16 + 56);
  *(v16 + 56) = v7;
  *(v16 + 64) = v5;

  OUTLINED_FUNCTION_221_0();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.returnStr.modify()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_145(v3) + 64) = v0;
  OUTLINED_FUNCTION_37_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 64))
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v7;

  return OUTLINED_FUNCTION_176_0();
}

void ModalityXRecognitionCandidate.returnStr.modify()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_261();
  if (v6)
  {
    OUTLINED_FUNCTION_216_0();
    v7 = OUTLINED_FUNCTION_136();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_150_0();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_188_0();
      v4(v10);
      OUTLINED_FUNCTION_146();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_74();
      v12 = v3(v11);
      OUTLINED_FUNCTION_240_0(v12);
    }

    OUTLINED_FUNCTION_280(v9 + 56);
    *(v9 + 56) = v2;
    *(v9 + 64) = v1;
  }

  OUTLINED_FUNCTION_311();

  free(v13);
}

void ModalityXRecognitionCandidate.clearReturnStr()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_256_0();
  v9 = OUTLINED_FUNCTION_29_0();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_197_0(v11);
  v13 = *(v5 + v8);
  if ((v12 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_190();
    v15 = v6(v14);
    OUTLINED_FUNCTION_238_0(v15);
  }

  OUTLINED_FUNCTION_154(v13 + 56);
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;

  OUTLINED_FUNCTION_255_0();
}

void ModalityXRecognitionCandidate.recognitionResult.getter()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_246_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_11_0();
  v1(v8);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_230_0();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v9, v10, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_38(v0);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    *v3 = MEMORY[0x277D84F90];
    v3[1] = v12;
    v3[2] = v12;
    v3[3] = v12;
    UnknownStorage.init()();
    v13 = type metadata accessor for ModalityXRecognitionSausage(0);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_38(v0);
    if (!v11)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    }
  }

  else
  {
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_311();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.recognitionResult.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

void ModalityXFinalSpeechRecognitionResponse.recognitionResult.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  type metadata accessor for ModalityXRecognitionResult(v9);
  OUTLINED_FUNCTION_54();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_173_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v13)
  {
    OUTLINED_FUNCTION_251_0(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for ModalityXRecognitionSausage(0);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_167();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_83();
    if (!v13)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

{
  ModalityXRecognitionCandidate.recognitionResult.modify();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasRecognitionResult.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearRecognitionResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXRecognitionResult(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.langProfileRecreateCodes.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_37_0();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_89();
  result = swift_beginAccess();
  v7 = *(v4 + v5);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t key path getter for ModalityXFinalSpeechRecognitionResponse.langProfileRecreateCodes : ModalityXFinalSpeechRecognitionResponse@<X0>(_BYTE *a1@<X8>)
{
  result = ModalityXFinalSpeechRecognitionResponse.langProfileRecreateCodes.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t ModalityXFinalSpeechRecognitionResponse.langProfileRecreateCodes.modify()
{
  v2 = OUTLINED_FUNCTION_194();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_48(v3);
  v5 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v4);
  OUTLINED_FUNCTION_91(v5);
  v6 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *(v1 + 84) = v7;
  return OUTLINED_FUNCTION_169();
}

BOOL ModalityXFinalSpeechRecognitionResponse.hasLangProfileRecreateCodes.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return *(v2 + v3) != 5;
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearLangProfileRecreateCodes()()
{
  v2 = OUTLINED_FUNCTION_108_0();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_190();
    v3 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v3;
  }

  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_154(v3 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes);
  *(v3 + v5) = 5;
}

void ModalityXRecognitionCandidate.audioAnalytics.getter()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_246_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_110();
  v0(0);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_100_0();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v8, v9, v10, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_38(v1);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    *v3 = MEMORY[0x277D84F90];
    v3[1] = v12;
    UnknownStorage.init()();
    OUTLINED_FUNCTION_38(v1);
    if (!v11)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    }
  }

  else
  {
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_311();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.audioAnalytics.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

void ModalityXFinalSpeechRecognitionResponse.audioAnalytics.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  type metadata accessor for ModalityXAudioAnalytics(v9);
  OUTLINED_FUNCTION_54();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_173_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v14)
  {
    v15 = MEMORY[0x277D84F90];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = v15;
    OUTLINED_FUNCTION_226_0();
    UnknownStorage.init()();
    OUTLINED_FUNCTION_83();
    if (!v14)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

{
  ModalityXRecognitionCandidate.recognitionResult.modify();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasAudioAnalytics.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearAudioAnalytics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXAudioAnalytics(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

uint64_t key path getter for ModalityXFinalSpeechRecognitionResponse.watermarkDetection : ModalityXFinalSpeechRecognitionResponse@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ModalityXFinalSpeechRecognitionResponse.watermarkDetection.getter(a1);
  *a2 = v4;
  return result;
}

uint64_t ModalityXFinalSpeechRecognitionResponse.watermarkDetection.modify()
{
  v0 = OUTLINED_FUNCTION_194();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_48(v1);
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  OUTLINED_FUNCTION_91(v3);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_144_0();
  return OUTLINED_FUNCTION_169();
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearWatermarkDetection()()
{
  v2 = OUTLINED_FUNCTION_108_0();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_190();
    v3 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v3;
  }

  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  OUTLINED_FUNCTION_154(v3 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection);
  *(v3 + v5) = 4;
}

uint64_t ModalityXFinalSpeechRecognitionResponse.watermarkPeakAverage.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_145(v2) + 80) = v0;
  OUTLINED_FUNCTION_37_0();
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_146_0();
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_169();
}

void key path setter for ModalityXFinalSpeechRecognitionResponse.language : ModalityXFinalSpeechRecognitionResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXFinalSpeechRecognitionResponse.language.setter(v1, v2, v3, v4, v5);
}

uint64_t ModalityXFinalSpeechRecognitionResponse.language.modify()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_37_0();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_208();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v3[6] = v6;
  v3[7] = v7;

  return OUTLINED_FUNCTION_207();
}

void ModalityXRecognitionCandidate.latnnMitigatorResult.getter()
{
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_246_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_110();
  v0(0);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_100_0();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v8, v9, v10, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  v11 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_38(v1);
  if (v12)
  {
    UnknownStorage.init()();
    OUTLINED_FUNCTION_277(v11[5]);
    OUTLINED_FUNCTION_141(v11[6]);
    v13 = v3 + v11[7];
    *v13 = 0;
    *(v13 + 8) = 1;
    v14 = v3 + v11[8];
    *v14 = 0;
    *(v14 + 8) = 1;
    OUTLINED_FUNCTION_38(v1);
    if (!v12)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    }
  }

  else
  {
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_311();
}

uint64_t key path setter for ModalityXRecognitionResult.preItn : ModalityXRecognitionResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_246_0();
  v10 = v9(0);
  OUTLINED_FUNCTION_122(v10);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_110();
  outlined init with copy of ModalityXRecognitionSausage();
  return a7(v7);
}

uint64_t ModalityXFinalSpeechRecognitionResponse.latnnMitigatorResult.setter()
{
  OUTLINED_FUNCTION_175_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_218_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_182_0(v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_215_0();
  v6 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_86_0(v6);
  OUTLINED_FUNCTION_84_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  return swift_endAccess();
}

void ModalityXFinalSpeechRecognitionResponse.latnnMitigatorResult.modify()
{
  OUTLINED_FUNCTION_248();
  v2 = OUTLINED_FUNCTION_179_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_72_0(v3);
  v4 = OUTLINED_FUNCTION_340();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_122(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_77_0(v8);
  v10 = type metadata accessor for ModalityXLatnnMitigatorResult(v9);
  OUTLINED_FUNCTION_54();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_173_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_83();
  if (v15)
  {
    UnknownStorage.init()();
    v14[v10[5]] = 2;
    OUTLINED_FUNCTION_226_0();
    *v16 = 0;
    v16[1] = 0;
    OUTLINED_FUNCTION_153_0(v10[7]);
    OUTLINED_FUNCTION_153_0(v10[8]);
    OUTLINED_FUNCTION_83();
    if (!v15)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_287();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_247();
}

{
  ModalityXRecognitionCandidate.recognitionResult.modify();
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasLatnnMitigatorResult.getter()
{
  v0 = OUTLINED_FUNCTION_163();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_122(v2);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v4);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_0();
  v5 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_8_0(v5);
  return OUTLINED_FUNCTION_183_0();
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearLatnnMitigatorResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_122(v0);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v2);
  if ((OUTLINED_FUNCTION_186_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_74();
    v5 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    OUTLINED_FUNCTION_157_0(v5);
  }

  v6 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_87_0(v6);
  OUTLINED_FUNCTION_83_0();
  v7 = OUTLINED_FUNCTION_102_0();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, v9, v10);
  swift_endAccess();
}

void key path setter for ModalityXFinalSpeechRecognitionResponse.requestLocale : ModalityXFinalSpeechRecognitionResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ModalityXFinalSpeechRecognitionResponse.requestLocale.setter(v1, v2, v3, v4, v5);
}

uint64_t ModalityXFinalSpeechRecognitionResponse.requestLocale.modify()
{
  v2 = OUTLINED_FUNCTION_195();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_37_0();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_208();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  v3[6] = v6;
  v3[7] = v7;

  return OUTLINED_FUNCTION_207();
}

void ModalityXRecognitionCandidate.resultID.modify()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_261();
  if (v6)
  {
    v7 = v5;

    v8 = OUTLINED_FUNCTION_136();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_202_0();
    v10 = v9;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v10(0);
      OUTLINED_FUNCTION_146();
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_74();
      v14 = v4(v17);
      *(v16 + v15) = v14;
    }

    v18 = (v14 + *v3);
    OUTLINED_FUNCTION_280(v18);
    *v18 = v2;
    v18[1] = v1;
  }

  OUTLINED_FUNCTION_247();

  free(v19);
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasResult_p.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return *(v2 + v3) & 1;
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasResult_p.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_108_0();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v6 = OUTLINED_FUNCTION_74();
    v7 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v6);
    OUTLINED_FUNCTION_157_0(v7);
  }

  v8 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  result = OUTLINED_FUNCTION_154(v5 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p);
  *(v5 + v8) = a1 & 1;
  return result;
}

uint64_t ModalityXFinalSpeechRecognitionResponse.hasResult_p.modify()
{
  v2 = OUTLINED_FUNCTION_194();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_48(v3);
  v5 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(v4);
  OUTLINED_FUNCTION_91(v5);
  v6 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  *(v1 + 84) = *(v0 + v6) & 1;
  return OUTLINED_FUNCTION_169();
}

void ModalityXFinalSpeechRecognitionResponse.hasResult_p.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_59_0();
    v9 = OUTLINED_FUNCTION_74();
    v6 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v9);
    *(v8 + v7) = v6;
  }

  v10 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  OUTLINED_FUNCTION_280(v6 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p);
  *(v6 + v10) = v4;

  free(v1);
}

BOOL ModalityXFinalSpeechRecognitionResponse.hasHasResult_p.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  return *(v2 + v3) != 2;
}

Swift::Void __swiftcall ModalityXFinalSpeechRecognitionResponse.clearHasResult_p()()
{
  v2 = OUTLINED_FUNCTION_108_0();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = OUTLINED_FUNCTION_190();
    v3 = ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v3;
  }

  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  OUTLINED_FUNCTION_154(v3 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p);
  *(v3 + v5) = 2;
}

uint64_t ModalityXRecognitionToken.unknownFields.setter()
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t ModalityXRecognitionToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_31();
        closure #1 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15, v16);
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
        break;
      case 4:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 6:
        v17 = OUTLINED_FUNCTION_31();
        closure #6 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v17, v18, v19, v20);
        break;
      case 7:
        v21 = OUTLINED_FUNCTION_31();
        closure #7 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v21, v22, v23, v24);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_31();
        closure #8 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

void ModalityXRecognitionToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_30();
  closure #1 in ModalityXRecognitionToken.traverse<A>(visitor:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_30();
    closure #2 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_30();
    closure #3 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_30();
    closure #4 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    v1 = OUTLINED_FUNCTION_30();
    closure #5 in ModalityXRecognitionToken.traverse<A>(visitor:)(v1, v2, v3, v4);
    v5 = OUTLINED_FUNCTION_30();
    closure #6 in ModalityXRecognitionToken.traverse<A>(visitor:)(v5, v6, v7, v8);
    v9 = OUTLINED_FUNCTION_30();
    closure #7 in ModalityXRecognitionToken.traverse<A>(visitor:)(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_30();
    closure #8 in ModalityXRecognitionToken.traverse<A>(visitor:)(v13, v14, v15, v16);
    OUTLINED_FUNCTION_130();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #5 in ModalityXRecognitionToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRecognitionToken(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ModalityXRecognitionToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRecognitionToken(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in ModalityXRecognitionToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRecognitionToken(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in ModalityXRecognitionToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRecognitionToken(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXRecognitionToken.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_87();
  type metadata accessor for ModalityXRecognitionToken(v0);
  OUTLINED_FUNCTION_51();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_0();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_18_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_18_0();
  if (v14)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v15)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_18_0();
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v18)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_251();
  if (v6)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v20 ^ v19) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v23)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v22);
    v26 = v6 && v24 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v28);
    v32 = v6 && v30 == v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_48:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_1();
    v35 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v33, v34, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_96(v35) & 1;
  }

  if (!v27)
  {
    goto LABEL_48;
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionToken(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionToken and conformance ModalityXRecognitionToken, type metadata accessor for ModalityXRecognitionToken, &protocol conformance descriptor for ModalityXRecognitionToken);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionToken(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionToken and conformance ModalityXRecognitionToken, type metadata accessor for ModalityXRecognitionToken, &protocol conformance descriptor for ModalityXRecognitionToken);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionToken(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionToken and conformance ModalityXRecognitionToken, type metadata accessor for ModalityXRecognitionToken, &protocol conformance descriptor for ModalityXRecognitionToken);

  return Message.hash(into:)();
}

void one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  one-time initialization function for _protobuf_nameMap();
}

{
  one-time initialization function for _protobuf_nameMap();
}

{
  one-time initialization function for _protobuf_nameMap();
}

{
  one-time initialization function for _protobuf_nameMap();
}

void ModalityXRecognitionPhraseTokens.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v4 || (type metadata accessor for ModalityXRecognitionToken(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionToken and conformance ModalityXRecognitionToken, type metadata accessor for ModalityXRecognitionToken, &protocol conformance descriptor for ModalityXRecognitionToken), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
  {
    type metadata accessor for ModalityXRecognitionPhraseTokens(0);
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionPhraseTokens(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokens and conformance ModalityXRecognitionPhraseTokens, type metadata accessor for ModalityXRecognitionPhraseTokens, &protocol conformance descriptor for ModalityXRecognitionPhraseTokens);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionPhraseTokens(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokens and conformance ModalityXRecognitionPhraseTokens, type metadata accessor for ModalityXRecognitionPhraseTokens, &protocol conformance descriptor for ModalityXRecognitionPhraseTokens);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionPhraseTokens(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokens and conformance ModalityXRecognitionPhraseTokens, type metadata accessor for ModalityXRecognitionPhraseTokens, &protocol conformance descriptor for ModalityXRecognitionPhraseTokens);

  return Message.hash(into:)();
}

void ModalityXRecognitionPhraseTokensAlternatives.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v10 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXRecognitionPhraseTokensAlternatives.decodeMessage<A>(decoder:)(v10, v11, v12, v13);
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #1 in ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(v3, v4, v5, v6, v7, &lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokens and conformance ModalityXRecognitionPhraseTokens, v8, v9);
    }
  }
}

void ModalityXRecognitionPhraseTokensAlternatives.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v5 || (type metadata accessor for ModalityXRecognitionPhraseTokens(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokens and conformance ModalityXRecognitionPhraseTokens, type metadata accessor for ModalityXRecognitionPhraseTokens, &protocol conformance descriptor for ModalityXRecognitionPhraseTokens), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), (v3 = v4) == 0))
  {
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_124();
    closure #1 in ModalityXRecognitionPhraseTokensAlternatives.traverse<A>(visitor:)(v6, v7, v8, v9);
    if (!v3)
    {
      type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(0);
      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t closure #1 in ModalityXRecognitionPhraseTokensAlternatives.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXRecognitionPhraseTokensAlternatives.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_53_0(a1);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B24XRecognitionPhraseTokensV_Tt1g5(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_251();
  if (v12)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_0_1();
  v16 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v14, v15, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v16) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionPhraseTokensAlternatives(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokensAlternatives and conformance ModalityXRecognitionPhraseTokensAlternatives, type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives, &protocol conformance descriptor for ModalityXRecognitionPhraseTokensAlternatives);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionPhraseTokensAlternatives(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokensAlternatives and conformance ModalityXRecognitionPhraseTokensAlternatives, type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives, &protocol conformance descriptor for ModalityXRecognitionPhraseTokensAlternatives);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionPhraseTokensAlternatives(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionPhraseTokensAlternatives and conformance ModalityXRecognitionPhraseTokensAlternatives, type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives, &protocol conformance descriptor for ModalityXRecognitionPhraseTokensAlternatives);

  return Message.hash(into:)();
}

void ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_202_0();
  v13 = v7;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  while (1)
  {
    v20 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v8 || (v21 & 1) != 0)
    {
      break;
    }

    if (v20 == 1)
    {
      closure #1 in ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(v19, v13, v17, v15, v10, v9, a6, a7);
    }
  }
}

void ModalityXRecognitionSausage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v4 || (type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(0), OUTLINED_FUNCTION_123_0(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v5, v6, &protocol conformance descriptor for ModalityXRecognitionPhraseTokensAlternatives), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
  {
    type metadata accessor for ModalityXRecognitionSausage(0);
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionSausage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionSausage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionSausage(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);

  return Message.hash(into:)();
}

void ModalityXSetAlternateRecognitionSausage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v4 || (type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(0), OUTLINED_FUNCTION_123_0(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v5, v6, &protocol conformance descriptor for ModalityXRecognitionPhraseTokensAlternatives), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
  {
    type metadata accessor for ModalityXSetAlternateRecognitionSausage(0);
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSetAlternateRecognitionSausage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSetAlternateRecognitionSausage and conformance ModalityXSetAlternateRecognitionSausage, type metadata accessor for ModalityXSetAlternateRecognitionSausage, &protocol conformance descriptor for ModalityXSetAlternateRecognitionSausage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSetAlternateRecognitionSausage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSetAlternateRecognitionSausage and conformance ModalityXSetAlternateRecognitionSausage, type metadata accessor for ModalityXSetAlternateRecognitionSausage, &protocol conformance descriptor for ModalityXSetAlternateRecognitionSausage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSetAlternateRecognitionSausage(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSetAlternateRecognitionSausage and conformance ModalityXSetAlternateRecognitionSausage, type metadata accessor for ModalityXSetAlternateRecognitionSausage, &protocol conformance descriptor for ModalityXSetAlternateRecognitionSausage);

  return Message.hash(into:)();
}

uint64_t closure #2 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_210();
  v10 = v9;
  v12 = v11(0);
  return a6(v10 + *(v12 + 24), v7, v6);
}

void closure #2 in ModalityXRecognitionToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_247_0();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_124();
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }
}

uint64_t static ModalityXRecognitionChoice.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_53_0(a1);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(v1, v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ModalityXRecognitionChoice(0);
  OUTLINED_FUNCTION_18_0();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_0_1();
  v9 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v9) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionChoice(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionChoice and conformance ModalityXRecognitionChoice, type metadata accessor for ModalityXRecognitionChoice, &protocol conformance descriptor for ModalityXRecognitionChoice);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionChoice(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionChoice and conformance ModalityXRecognitionChoice, type metadata accessor for ModalityXRecognitionChoice, &protocol conformance descriptor for ModalityXRecognitionChoice);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionChoice(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionChoice and conformance ModalityXRecognitionChoice, type metadata accessor for ModalityXRecognitionChoice, &protocol conformance descriptor for ModalityXRecognitionChoice);

  return Message.hash(into:)();
}

void one-time initialization function for _protobuf_nameMap()
{
  OUTLINED_FUNCTION_312();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25A1D8780;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  type metadata accessor for _NameMap.NameDescription();
  OUTLINED_FUNCTION_54();
  (*(v14 + 104))(v12, v13);
  _NameMap.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_311();
}

void ModalityXRepeatedItnAlignment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v4 || (type metadata accessor for ModalityXItnAlignment(0), OUTLINED_FUNCTION_133_0(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v5, v6, &protocol conformance descriptor for ModalityXItnAlignment), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
  {
    type metadata accessor for ModalityXRepeatedItnAlignment(0);
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t static ModalityXRecognitionPhraseTokens.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_53_0(a1);
  if ((v6(v5) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_0_1();
  v9 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v9) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRepeatedItnAlignment(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRepeatedItnAlignment and conformance ModalityXRepeatedItnAlignment, type metadata accessor for ModalityXRepeatedItnAlignment, &protocol conformance descriptor for ModalityXRepeatedItnAlignment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRepeatedItnAlignment(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRepeatedItnAlignment and conformance ModalityXRepeatedItnAlignment, type metadata accessor for ModalityXRepeatedItnAlignment, &protocol conformance descriptor for ModalityXRepeatedItnAlignment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRepeatedItnAlignment(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRepeatedItnAlignment and conformance ModalityXRepeatedItnAlignment, type metadata accessor for ModalityXRepeatedItnAlignment, &protocol conformance descriptor for ModalityXRepeatedItnAlignment);

  return Message.hash(into:)();
}

void ModalityXChoiceAlignment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXChoiceAlignment.decodeMessage<A>(decoder:)(v3, v4, v5, v6, v7, &lazy protocol witness table cache variable for type ModalityXRepeatedItnAlignment and conformance ModalityXRepeatedItnAlignment, v8, v9);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_135();
      dispatch thunk of Decoder.decodeRepeatedInt32Field(value:)();
    }
  }
}

void ModalityXChoiceAlignment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_14_0();
  if (!*(*v4 + 16) || (v5 = v3, OUTLINED_FUNCTION_124(), dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)(), !v3))
  {
    if (!*(*(v6 + 8) + 16) || (type metadata accessor for ModalityXRepeatedItnAlignment(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRepeatedItnAlignment and conformance ModalityXRepeatedItnAlignment, type metadata accessor for ModalityXRepeatedItnAlignment, &protocol conformance descriptor for ModalityXRepeatedItnAlignment), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      type metadata accessor for ModalityXChoiceAlignment(0);
      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXChoiceAlignment(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXChoiceAlignment and conformance ModalityXChoiceAlignment, type metadata accessor for ModalityXChoiceAlignment, &protocol conformance descriptor for ModalityXChoiceAlignment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXChoiceAlignment(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXChoiceAlignment and conformance ModalityXChoiceAlignment, type metadata accessor for ModalityXChoiceAlignment, &protocol conformance descriptor for ModalityXChoiceAlignment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXChoiceAlignment(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXChoiceAlignment and conformance ModalityXChoiceAlignment, type metadata accessor for ModalityXChoiceAlignment, &protocol conformance descriptor for ModalityXChoiceAlignment);

  return Message.hash(into:)();
}

void ModalityXRecognitionResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v25 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(v25, v26, v27, v28);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15, &lazy protocol witness table cache variable for type ModalityXRecognitionChoice and conformance ModalityXRecognitionChoice, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXChoiceAlignment.decodeMessage<A>(decoder:)(v18, v19, v20, v21, v22, &lazy protocol witness table cache variable for type ModalityXRecognitionChoice and conformance ModalityXRecognitionChoice, v23, v24);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v29 = OUTLINED_FUNCTION_31();
        closure #6 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(v29, v30, v31, v32);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXRecognitionResult(0);
  type metadata accessor for ModalityXRecognitionSausage(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXRecognitionResult(0);
  type metadata accessor for ModalityXRecognitionSausage(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXItnAlignment(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXItnAlignment and conformance ModalityXItnAlignment, type metadata accessor for ModalityXItnAlignment, &protocol conformance descriptor for ModalityXItnAlignment);
  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

uint64_t closure #6 in ModalityXRecognitionResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXChoiceAlignment(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXChoiceAlignment and conformance ModalityXChoiceAlignment, type metadata accessor for ModalityXChoiceAlignment, &protocol conformance descriptor for ModalityXChoiceAlignment);
  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

void ModalityXRecognitionResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_124();
  closure #1 in ModalityXRecognitionResult.traverse<A>(visitor:)(v5, v6, v7, v8);
  if (!v4)
  {
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_124();
    closure #2 in ModalityXRecognitionResult.traverse<A>(visitor:)(v9, v10, v11, v12);
    if (*(*v3 + 16))
    {
      type metadata accessor for ModalityXRecognitionChoice(0);
      OUTLINED_FUNCTION_131_0();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v13, v14, &protocol conformance descriptor for ModalityXRecognitionChoice);
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_13_0();
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for ModalityXRecognitionChoice(0);
      OUTLINED_FUNCTION_131_0();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v15, v16, &protocol conformance descriptor for ModalityXRecognitionChoice);
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_13_0();
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for ModalityXItnAlignment(0);
      OUTLINED_FUNCTION_133_0();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v17, v18, &protocol conformance descriptor for ModalityXItnAlignment);
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_13_0();
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ModalityXChoiceAlignment(0);
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXChoiceAlignment and conformance ModalityXChoiceAlignment, type metadata accessor for ModalityXChoiceAlignment, &protocol conformance descriptor for ModalityXChoiceAlignment);
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_13_0();
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for ModalityXRecognitionResult(0);
    OUTLINED_FUNCTION_36_0();
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t closure #1 in ModalityXRecognitionResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRecognitionSausage(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ModalityXRecognitionResult(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v9 + 36), v7, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #2 in ModalityXRecognitionResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRecognitionSausage(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ModalityXRecognitionResult(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v9 + 40), v7, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionSausage and conformance ModalityXRecognitionSausage, type metadata accessor for ModalityXRecognitionSausage, &protocol conformance descriptor for ModalityXRecognitionSausage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionResult(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionResult(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionResult(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);

  return Message.hash(into:)();
}

uint64_t ModalityXLatnnMitigatorResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXLatnnMitigatorResult.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXLatnnMitigatorResult.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXLatnnMitigatorResult.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXLatnnMitigatorResult.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t ModalityXLatnnMitigatorResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_30();
    closure #4 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(v14, v15, v16, v17);
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXLatnnMitigatorResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXLatnnMitigatorResult.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_87();
  type metadata accessor for ModalityXLatnnMitigatorResult(v0);
  OUTLINED_FUNCTION_251();
  if (v8)
  {
    if (v1 != 2)
    {
      return 0;
    }
  }

  else if (v1 == 2 || ((v2 ^ v1) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_236_0();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

LABEL_20:
  OUTLINED_FUNCTION_236_0();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v18 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v16, v17, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_96(v18) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXLatnnMitigatorResult(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXLatnnMitigatorResult(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXLatnnMitigatorResult(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);

  return Message.hash(into:)();
}

uint64_t ModalityXRecognitionCandidate._StorageClass.init()()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v1 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v2 = type metadata accessor for ModalityXRecognitionResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection) = 4;
  v5 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v6 = type metadata accessor for ModalityXAudioAnalytics(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection) = 4;
  v7 = v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v10 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  *v11 = 0;
  v11[1] = 0;
  return v0;
}

uint64_t ModalityXRecognitionCandidate._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v58 - v8;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 52) = 1;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0;
  v9 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v58 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v10 = type metadata accessor for ModalityXRecognitionResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr;
  v60 = v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr;
  *v12 = 0;
  *(v12 + 8) = 1;
  v61 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection) = 4;
  v13 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v62 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v14 = type metadata accessor for ModalityXAudioAnalytics(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v63 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection) = 4;
  v15 = v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  v64 = v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  v65 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v67 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v18 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  v68 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  *v19 = 0;
  v19[1] = 0;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  swift_beginAccess();
  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v23;
  *(v1 + 40) = v22;
  swift_beginAccess();
  v24 = *(a1 + 48);
  LOBYTE(v23) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v24;
  *(v1 + 52) = v23;
  swift_beginAccess();
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v26;
  *(v1 + 64) = v25;

  v27 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  swift_beginAccess();
  v28 = v59;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v27, v59, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v29 = v58;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v28, v1 + v29, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v11 = v32;
  v11[1] = v31;

  v33 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v60;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v61;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  swift_beginAccess();
  v39 = v66;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v38, v66, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  v40 = v62;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v39, v1 + v40, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v63;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v64;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v65;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  swift_beginAccess();
  v51 = v69;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v50, v69, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  v52 = v67;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v51, v1 + v52, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  swift_endAccess();
  v53 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];

  v56 = v68;
  swift_beginAccess();
  *v56 = v55;
  v56[1] = v54;

  return v1;
}

void *ModalityXRecognitionCandidate._StorageClass.deinit()
{

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);

  return v0;
}

void closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        closure #1 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 2:
        closure #2 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 3:
        closure #3 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 4:
        closure #4 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 5:
        closure #5 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 6:
        v14 = a2;
        v15 = a1;
        v16 = a3;
        v17 = a4;
        v18 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID;
        goto LABEL_16;
      case 7:
        v26 = a2;
        v27 = a1;
        v28 = a3;
        v29 = a4;
        v30 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr;
        goto LABEL_19;
      case 8:
        v19 = lazy protocol witness table accessor for type ModalityXFingerprintDetectionResult and conformance ModalityXFingerprintDetectionResult;
        v20 = a2;
        v21 = a1;
        v22 = a3;
        v23 = a4;
        v24 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection;
        v25 = &type metadata for ModalityXFingerprintDetectionResult;
        goto LABEL_12;
      case 9:
        closure #9 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 10:
        v19 = lazy protocol witness table accessor for type ModalityXWatermarkDetectionResult and conformance ModalityXWatermarkDetectionResult;
        v20 = a2;
        v21 = a1;
        v22 = a3;
        v23 = a4;
        v24 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
        v25 = &type metadata for ModalityXWatermarkDetectionResult;
LABEL_12:
        closure #8 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(v20, v21, v22, v23, v24, v19, v25);
        continue;
      case 11:
        v26 = a2;
        v27 = a1;
        v28 = a3;
        v29 = a4;
        v30 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
LABEL_19:
        closure #7 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(v26, v27, v28, v29, v30, v11, v12, v13, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
        continue;
      case 12:
        v14 = a2;
        v15 = a1;
        v16 = a3;
        v17 = a4;
        v18 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
        goto LABEL_16;
      case 13:
        closure #13 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 14:
        v14 = a2;
        v15 = a1;
        v16 = a3;
        v17 = a4;
        v18 = &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
LABEL_16:
        closure #6 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(v14, v15, v16, v17, v18, v11, v12, v13, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #5 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXRecognitionResult(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXAudioAnalytics(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXLatnnMitigatorResult(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

void closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  closure #1 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    closure #2 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, v11, v12);
    closure #3 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, v13, v14);
    closure #5 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID, 6);
    closure #7 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr, 7);
    closure #8 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection, lazy protocol witness table accessor for type ModalityXFingerprintDetectionResult and conformance ModalityXFingerprintDetectionResult, 8, &type metadata for ModalityXFingerprintDetectionResult);
    closure #9 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #8 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection, lazy protocol witness table accessor for type ModalityXWatermarkDetectionResult and conformance ModalityXWatermarkDetectionResult, 10, &type metadata for ModalityXWatermarkDetectionResult);
    closure #7 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage, 11);
    closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language, 12);
    closure #13 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale, 14);
  }
}

uint64_t closure #5 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRecognitionResult(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #9 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXAudioAnalytics(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #13 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #1 in static ModalityXRecognitionCandidate.== infix(_:_:)(void *a1, void *a2)
{
  v166 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64();
  v162 = v7 - v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_227_0();
  v167 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  v11 = OUTLINED_FUNCTION_122(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_0();
  v164 = v12;
  OUTLINED_FUNCTION_294();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_205_0();
  v165 = v14;
  v15 = OUTLINED_FUNCTION_180();
  v171 = type metadata accessor for ModalityXAudioAnalytics(v15);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64();
  v168 = (v18 - v17);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_227_0();
  v172 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  v22 = OUTLINED_FUNCTION_122(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_0();
  v169 = v23;
  OUTLINED_FUNCTION_294();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_205_0();
  v173 = v25;
  v26 = OUTLINED_FUNCTION_180();
  v27 = type metadata accessor for ModalityXRecognitionResult(v26);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_64();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMd, &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v30);
  v32 = &v161 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v34 = OUTLINED_FUNCTION_122(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_171_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v161 - v36;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v174 = a1;
  v39 = a1[2];
  v38 = a1[3];
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v175 = a2;
  v40 = a2[3];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = v39 == v175[2] && v38 == v40;
    if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = v174;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v43 = v42[4];
  v44 = v42[5];
  v45 = v175;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v46 = v45[5];
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }

    v47 = v43 == v175[4] && v44 == v46;
    if (!v47 && (OUTLINED_FUNCTION_172_0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v48 = v174;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v49 = *(v48 + 12);
  v50 = *(v48 + 52);
  v51 = v175;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v52 = *(v51 + 52);
  if (v50)
  {
    if (!*(v51 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(v51 + 12))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = v174;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v54 = v53[7];
  v55 = v53[8];
  v56 = v175;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v57 = v56[8];
  if (!v55)
  {
    if (!v57)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v57)
  {
    return 0;
  }

  v58 = v54 == v175[7] && v55 == v57;
  if (!v58 && (OUTLINED_FUNCTION_172_0() & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v59 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v60 = v174;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v60 + v59, v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v61 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v62 = v175;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v63 = *(v29 + 48);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v37, v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v62 + v61, &v32[v63], &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_139(v32, 1, v27);
  if (v41)
  {
    v64 = v174;

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    OUTLINED_FUNCTION_139(&v32[v63], 1, v27);
    v65 = v62;
    v62 = v64;
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
      goto LABEL_47;
    }

LABEL_42:
    v67 = &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMd;
    v68 = &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMR;
    v69 = v32;
LABEL_43:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v69, v67, v68);
    goto LABEL_44;
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v32, v2, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_139(&v32[v63], 1, v27);
  if (v66)
  {
    OUTLINED_FUNCTION_257_0();

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    OUTLINED_FUNCTION_142_0();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_129_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_257_0();
  v71 = v175;

  v72 = OUTLINED_FUNCTION_109_0();
  v73 = static ModalityXRecognitionResult.== infix(_:_:)(v72);
  OUTLINED_FUNCTION_287();
  outlined destroy of ModalityXRecognitionSausage();
  v74 = OUTLINED_FUNCTION_75_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v74, v75, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  outlined destroy of ModalityXRecognitionSausage();
  v65 = v71;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  if ((v73 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v76 = v62 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v77 = *(v76 + 1);
  v78 = v65 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__resultID;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v79 = *(v78 + 8);
  if (v77)
  {
    v80 = v173;
    if (!v79)
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_244_0();
    if (!v41 || v77 != v81)
    {
      OUTLINED_FUNCTION_75_0();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v80 = v173;
    if (v79)
    {
      goto LABEL_44;
    }
  }

  v83 = (v62 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v65 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__snr;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (v85)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_44;
  }

  v87 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v88 = *(v62 + v87);
  v89 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__fingerprintDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v90 = *(v65 + v89);
  if (v88 == 4)
  {
    if (v90 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v90 == 4 || v88 != v90)
  {
    goto LABEL_44;
  }

  v91 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_181_0(v62 + v91, v80);
  v92 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v93 = *(v170 + 48);
  v94 = v172;
  OUTLINED_FUNCTION_174_0(v80);
  v95 = v65 + v92;
  v96 = v94;
  OUTLINED_FUNCTION_181_0(v95, v94 + v93);
  v97 = v171;
  OUTLINED_FUNCTION_139(v94, 1, v171);
  if (v41)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v80, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    OUTLINED_FUNCTION_139(v94 + v93, 1, v97);
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v94, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
      goto LABEL_71;
    }

    goto LABEL_77;
  }

  v102 = v94;
  v103 = v169;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v102, v169, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_139(v96 + v93, 1, v97);
  if (v104)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v80, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    OUTLINED_FUNCTION_141_0();
LABEL_77:
    v67 = &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMd;
    v68 = &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMR;
    v69 = v96;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_1();
  v105 = v168;
  outlined init with take of ModalityXRecognitionSausage();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B25XSpeechRecognitionFeatureV_Tt1g5(*v103, *v105);
  if ((v106 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B30XAudioAnalyticsAcousticFeatureV_Tt1g5(v103[1], v105[1], v107, v108, v109, v110, v111, v112, v161, v162, v163, v164), (v113 & 1) == 0))
  {
    OUTLINED_FUNCTION_118_0();
    outlined destroy of ModalityXRecognitionSausage();
    OUTLINED_FUNCTION_242_0();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v124, v125, v126);
    OUTLINED_FUNCTION_263_0();
    OUTLINED_FUNCTION_242_0();
    goto LABEL_43;
  }

  v114 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v117 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v115, v116, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_253_0(v117);
  OUTLINED_FUNCTION_115_0();
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v118, v119, v120);
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v121, v122, v123);
  if ((v114 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_71:
  v98 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v99 = *(v62 + v98);
  v100 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v101 = *(v65 + v100);
  if (v99 == 4)
  {
    if (v101 == 4)
    {
      goto LABEL_85;
    }

LABEL_44:

    return 0;
  }

  if (v101 == 4 || v99 != v101)
  {
    goto LABEL_44;
  }

LABEL_85:
  v127 = (v62 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v128 = *v127;
  v129 = *(v127 + 8);
  v130 = v65 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (v129)
  {
    if ((*(v130 + 8) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((*(v130 + 8) & 1) != 0 || v128 != *v130)
  {
    goto LABEL_44;
  }

  v131 = v174 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v132 = *(v131 + 1);
  v133 = v175 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v134 = *(v133 + 1);
  if (v132)
  {
    if (!v134)
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_244_0();
    if (!v41 || v132 != v135)
    {
      OUTLINED_FUNCTION_75_0();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  else if (v134)
  {
    goto LABEL_44;
  }

  v137 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v138 = v174;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v139 = v165;
  OUTLINED_FUNCTION_174_0(v138 + v137);
  v140 = OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v141 = v175;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v142 = *(v163 + 48);
  v143 = v139;
  v144 = v167;
  OUTLINED_FUNCTION_174_0(v143);
  OUTLINED_FUNCTION_181_0(v141 + v140, v144 + v142);
  OUTLINED_FUNCTION_139(v144, 1, v166);
  if (v41)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v165, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    OUTLINED_FUNCTION_139(v167 + v142, 1, v166);
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v167, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
      goto LABEL_110;
    }

LABEL_107:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v167, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMR);
    goto LABEL_44;
  }

  v145 = v167;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v167, v164, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_139(v145 + v142, 1, v166);
  if (v146)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v165, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    OUTLINED_FUNCTION_143_0();
    goto LABEL_107;
  }

  OUTLINED_FUNCTION_130_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_109_0();
  v147 = static ModalityXLatnnMitigatorResult.== infix(_:_:)();
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v148, v149, v150);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v151, v152, v153);
  if ((v147 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_110:
  v154 = (v174 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v155 = *v154;
  v156 = v154[1];
  v157 = (v175 + OBJC_IVAR____TtCV16ModalityXObjects29ModalityXRecognitionCandidateP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v158 = v157[1];
  if (v156)
  {
    if (!v158)
    {
      goto LABEL_44;
    }

    if (v155 == *v157 && v156 == v158)
    {
    }

    else
    {
      v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v160 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {

    if (v158)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRecognitionCandidate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate, &protocol conformance descriptor for ModalityXRecognitionCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRecognitionCandidate(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate, &protocol conformance descriptor for ModalityXRecognitionCandidate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRecognitionCandidate(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate, &protocol conformance descriptor for ModalityXRecognitionCandidate);

  return Message.hash(into:)();
}

uint64_t ModalityXItnAlignment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXItnAlignment.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v7, v8, v9, v10, v11, v12);
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
        break;
      case 4:
        OUTLINED_FUNCTION_31();
        closure #4 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #3 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
}

uint64_t closure #4 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
}

void ModalityXItnAlignment.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  closure #1 in ModalityXItnAlignment.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_30();
    closure #2 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_30();
    closure #3 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_30();
    closure #4 in ModalityXRecognitionToken.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_130();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #1 in ModalityXItnAlignment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXItnAlignment(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

void closure #3 in ModalityXRecognitionToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_247_0();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_124();
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }
}

void closure #4 in ModalityXRecognitionToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_247_0();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_124();
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }
}

uint64_t static ModalityXItnAlignment.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_87();
  type metadata accessor for ModalityXItnAlignment(v0);
  OUTLINED_FUNCTION_18_0();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_18_0();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_18_0();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_53();
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_18_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53();
    if (v13)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v16 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v14, v15, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_96(v16) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXItnAlignment(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXItnAlignment and conformance ModalityXItnAlignment, type metadata accessor for ModalityXItnAlignment, &protocol conformance descriptor for ModalityXItnAlignment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXItnAlignment(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXItnAlignment and conformance ModalityXItnAlignment, type metadata accessor for ModalityXItnAlignment, &protocol conformance descriptor for ModalityXItnAlignment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXItnAlignment(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXItnAlignment and conformance ModalityXItnAlignment, type metadata accessor for ModalityXItnAlignment, &protocol conformance descriptor for ModalityXItnAlignment);

  return Message.hash(into:)();
}

void ModalityXRecognitionChoice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_248_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v4;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  while (1)
  {
    v19 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v20 & 1) != 0)
    {
      break;
    }

    if (v19 == 2)
    {
      closure #2 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v18, v12, v16, v14, v9, v7);
    }

    else if (v19 == 1)
    {
      v11(v12, v16, v14);
    }
  }

  OUTLINED_FUNCTION_249_0();
}

void ModalityXRecognitionChoice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_252_0();
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_14_0();
  if (!*(*v8 + 16) || (OUTLINED_FUNCTION_124(), v13(), !v7))
  {
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_124();
    v12();
    if (!v7)
    {
      v10(0);
      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_250_0();
}

uint64_t static ModalityXAcousticFeature.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_53_0(a1);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(v1, v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_18_0();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_344();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_0_1();
  v9 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v9) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAcousticFeature(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAcousticFeature and conformance ModalityXAcousticFeature, type metadata accessor for ModalityXAcousticFeature, &protocol conformance descriptor for ModalityXAcousticFeature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAcousticFeature(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAcousticFeature and conformance ModalityXAcousticFeature, type metadata accessor for ModalityXAcousticFeature, &protocol conformance descriptor for ModalityXAcousticFeature);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAcousticFeature(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAcousticFeature and conformance ModalityXAcousticFeature, type metadata accessor for ModalityXAcousticFeature, &protocol conformance descriptor for ModalityXAcousticFeature);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechRecognitionFeature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)(v3, v4, v5, v6, v7, v8);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_31();
      closure #1 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

void ModalityXSpeechRecognitionFeature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_30();
  closure #1 in ModalityXRecognitionToken.traverse<A>(visitor:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_30();
    closure #1 in ModalityXAcousticFeature.traverse<A>(visitor:)();
    OUTLINED_FUNCTION_130();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #1 in ModalityXRecognitionToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  result = v1(0);
  v3 = (v0 + *(result + 20));
  v4 = v3[1];
  if (v4)
  {
    return OUTLINED_FUNCTION_160_0(*v3, v4, 1);
  }

  return result;
}

void closure #1 in ModalityXAcousticFeature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  v0(0);
  OUTLINED_FUNCTION_247_0();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_135();
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }
}

uint64_t static ModalityXSpeechRecognitionFeature.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_87();
  type metadata accessor for ModalityXSpeechRecognitionFeature(v0);
  OUTLINED_FUNCTION_51();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_0();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_344();
    if (v10)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v13 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_96(v13) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechRecognitionFeature(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSpeechRecognitionFeature and conformance ModalityXSpeechRecognitionFeature, type metadata accessor for ModalityXSpeechRecognitionFeature, &protocol conformance descriptor for ModalityXSpeechRecognitionFeature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechRecognitionFeature(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSpeechRecognitionFeature and conformance ModalityXSpeechRecognitionFeature, type metadata accessor for ModalityXSpeechRecognitionFeature, &protocol conformance descriptor for ModalityXSpeechRecognitionFeature);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechRecognitionFeature(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSpeechRecognitionFeature and conformance ModalityXSpeechRecognitionFeature, type metadata accessor for ModalityXSpeechRecognitionFeature, &protocol conformance descriptor for ModalityXSpeechRecognitionFeature);

  return Message.hash(into:)();
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXAudioAnalyticsAcousticFeature.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_31();
      closure #1 in ModalityXRecognitionToken.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXAudioAnalyticsAcousticFeature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(0);
  type metadata accessor for ModalityXAcousticFeature(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAcousticFeature and conformance ModalityXAcousticFeature, type metadata accessor for ModalityXAcousticFeature, &protocol conformance descriptor for ModalityXAcousticFeature);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ModalityXAudioAnalyticsAcousticFeature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXRecognitionToken.traverse<A>(visitor:)();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXAudioAnalyticsAcousticFeature.traverse<A>(visitor:)(v2, v3, v4, v5);
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXAudioAnalyticsAcousticFeature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXAcousticFeature(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v9 + 24), v7, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAcousticFeature and conformance ModalityXAcousticFeature, type metadata accessor for ModalityXAcousticFeature, &protocol conformance descriptor for ModalityXAcousticFeature);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

void static ModalityXAudioAnalyticsAcousticFeature.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_248();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_87();
  v26 = type metadata accessor for ModalityXAcousticFeature(v25);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_64();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  OUTLINED_FUNCTION_122(v28);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_102();
  v35 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v34);
  OUTLINED_FUNCTION_51();
  if (!v38)
  {
    if (v36)
    {
      goto LABEL_19;
    }

LABEL_10:
    v42 = *(v35 + 24);
    v43 = *(v32 + 48);
    OUTLINED_FUNCTION_283(v21 + v42, v22);
    OUTLINED_FUNCTION_283(v20 + v42, v22 + v43);
    OUTLINED_FUNCTION_29();
    if (v41)
    {
      OUTLINED_FUNCTION_139(v22 + v43, 1, v26);
      if (v41)
      {
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
        goto LABEL_21;
      }
    }

    else
    {
      outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v22, v31, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
      OUTLINED_FUNCTION_139(v22 + v43, 1, v26);
      if (!v44)
      {
        outlined init with take of ModalityXRecognitionSausage();
        v45 = static ModalityXAcousticFeature.== infix(_:_:)(v31);
        OUTLINED_FUNCTION_199_0();
        outlined destroy of ModalityXRecognitionSausage();
        outlined destroy of ModalityXRecognitionSausage();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
        if ((v45 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_21:
        type metadata accessor for UnknownStorage();
        OUTLINED_FUNCTION_0_1();
        v48 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v46, v47, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_96(v48);
        goto LABEL_19;
      }

      outlined destroy of ModalityXRecognitionSausage();
    }

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v22, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
    goto LABEL_19;
  }

  if (v36)
  {
    OUTLINED_FUNCTION_69(v37);
    v41 = v41 && v39 == v40;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_247();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAudioAnalyticsAcousticFeature(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalyticsAcousticFeature and conformance ModalityXAudioAnalyticsAcousticFeature, type metadata accessor for ModalityXAudioAnalyticsAcousticFeature, &protocol conformance descriptor for ModalityXAudioAnalyticsAcousticFeature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAudioAnalyticsAcousticFeature(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalyticsAcousticFeature and conformance ModalityXAudioAnalyticsAcousticFeature, type metadata accessor for ModalityXAudioAnalyticsAcousticFeature, &protocol conformance descriptor for ModalityXAudioAnalyticsAcousticFeature);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAudioAnalyticsAcousticFeature(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalyticsAcousticFeature and conformance ModalityXAudioAnalyticsAcousticFeature, type metadata accessor for ModalityXAudioAnalyticsAcousticFeature, &protocol conformance descriptor for ModalityXAudioAnalyticsAcousticFeature);

  return Message.hash(into:)();
}

void ModalityXAudioAnalytics.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    OUTLINED_FUNCTION_130();
    v1 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v10 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXChoiceAlignment.decodeMessage<A>(decoder:)(v10, v11, v12, v13, v14, &lazy protocol witness table cache variable for type ModalityXAudioAnalyticsAcousticFeature and conformance ModalityXAudioAnalyticsAcousticFeature, v15, v16);
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #1 in ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(v3, v4, v5, v6, v7, &lazy protocol witness table cache variable for type ModalityXSpeechRecognitionFeature and conformance ModalityXSpeechRecognitionFeature, v8, v9);
    }
  }
}

void closure #1 in ModalityXRecognitionPhraseTokens.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_252_0();
  v10 = OUTLINED_FUNCTION_147_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_142();
  v14 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v12, v13, v8);
  OUTLINED_FUNCTION_220_0(v9, v15, v14);
  OUTLINED_FUNCTION_250_0();
}

void closure #2 in ModalityXChoiceAlignment.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_252_0();
  v10 = OUTLINED_FUNCTION_147_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_142();
  v14 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v12, v13, v8);
  OUTLINED_FUNCTION_220_0(v9 + 8, v15, v14);
  OUTLINED_FUNCTION_250_0();
}

void ModalityXAudioAnalytics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_9_0();
  if (!v5 || (type metadata accessor for ModalityXSpeechRecognitionFeature(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXSpeechRecognitionFeature and conformance ModalityXSpeechRecognitionFeature, type metadata accessor for ModalityXSpeechRecognitionFeature, &protocol conformance descriptor for ModalityXSpeechRecognitionFeature), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalyticsAcousticFeature and conformance ModalityXAudioAnalyticsAcousticFeature, type metadata accessor for ModalityXAudioAnalyticsAcousticFeature, &protocol conformance descriptor for ModalityXAudioAnalyticsAcousticFeature), OUTLINED_FUNCTION_172(), OUTLINED_FUNCTION_13_0(), dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v3))
    {
      type metadata accessor for ModalityXAudioAnalytics(0);
      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_249_0();
}

uint64_t static ModalityXChoiceAlignment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), void (*a5)(void))
{
  v9 = OUTLINED_FUNCTION_53_0(a1);
  if ((v10(v9) & 1) == 0 || (a4(*(v6 + 8), *(v5 + 8)) & 1) == 0)
  {
    return 0;
  }

  a5(0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v13 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v13) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAudioAnalytics(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAudioAnalytics(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAudioAnalytics(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_146();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t ModalityXFinalSpeechRecognitionResponse._StorageClass.init()()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v1 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v2 = type metadata accessor for ModalityXRecognitionResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes) = 5;
  v3 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v4 = type metadata accessor for ModalityXAudioAnalytics(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection) = 4;
  v5 = v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v8 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p) = 2;
  return v0;
}

uint64_t ModalityXFinalSpeechRecognitionResponse._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v53 - v8;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 52) = 1;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0;
  v9 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v54 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v10 = type metadata accessor for ModalityXRecognitionResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes) = 5;
  v12 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v56 = v11;
  v57 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  v13 = type metadata accessor for ModalityXAudioAnalytics(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection) = 4;
  v15 = v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage;
  v58 = v14;
  v59 = v15;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v61 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  v18 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  v62 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  *v19 = 0;
  v19[1] = 0;
  v63 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p) = 2;
  swift_beginAccess();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  swift_beginAccess();
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v22;
  *(v1 + 40) = v23;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + 48);
  v24 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v22;
  *(v1 + 52) = v24;
  swift_beginAccess();
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v25;
  *(v1 + 64) = v26;

  v27 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  swift_beginAccess();
  v28 = v55;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v27, v55, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v29 = v54;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v28, v1 + v29, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v56;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  swift_beginAccess();
  v33 = v60;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v32, v60, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  v34 = v57;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v33, v1 + v34, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v58;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v59;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  swift_beginAccess();
  *v16 = v42;
  v16[1] = v41;

  v43 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  swift_beginAccess();
  v44 = v64;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v43, v64, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  v45 = v61;
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v44, v1 + v45, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  swift_endAccess();
  v46 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v62;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);

  v51 = v63;
  swift_beginAccess();
  *(v1 + v51) = v50;
  return v1;
}

void *ModalityXFinalSpeechRecognitionResponse._StorageClass.deinit()
{

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);

  return v0;
}

uint64_t ModalityXRecognitionCandidate._StorageClass.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return MEMORY[0x2821FE8D8]();
}

void ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_252_0();
  v9 = v8;
  v25 = v10;
  v12 = v11;
  v13 = v7;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = *(v20(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v7 + v21);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v24 = OUTLINED_FUNCTION_74();
    v23 = v25(v24);
    *(v13 + v21) = v23;
  }

  v9(v23, v19, v17, v15);
  OUTLINED_FUNCTION_250_0();
}

void closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        closure #1 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 2:
        closure #2 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 3:
        closure #3 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 4:
        closure #4 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)();
        continue;
      case 5:
        closure #5 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 6:
        v19 = lazy protocol witness table accessor for type ModalityXLanguageProfileRecreateCodes and conformance ModalityXLanguageProfileRecreateCodes;
        v20 = a2;
        v21 = a1;
        v22 = a3;
        v23 = a4;
        v24 = &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
        v25 = &type metadata for ModalityXLanguageProfileRecreateCodes;
        goto LABEL_15;
      case 7:
        closure #7 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 8:
        v19 = lazy protocol witness table accessor for type ModalityXWatermarkDetectionResult and conformance ModalityXWatermarkDetectionResult;
        v20 = a2;
        v21 = a1;
        v22 = a3;
        v23 = a4;
        v24 = &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
        v25 = &type metadata for ModalityXWatermarkDetectionResult;
LABEL_15:
        closure #8 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(v20, v21, v22, v23, v24, v19, v25);
        continue;
      case 9:
        closure #7 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage, v11, v12, v13, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
        continue;
      case 10:
        v14 = a2;
        v15 = a1;
        v16 = a3;
        v17 = a4;
        v18 = &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
        goto LABEL_9;
      case 11:
        closure #11 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 12:
        v14 = a2;
        v15 = a1;
        v16 = a3;
        v17 = a4;
        v18 = &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
LABEL_9:
        closure #6 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(v14, v15, v16, v17, v18, v11, v12, v13, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
        break;
      case 13:
        closure #13 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v0 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_326(v0);
}

uint64_t closure #2 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v0 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_326(v0);
}

uint64_t closure #3 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v0 = dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return OUTLINED_FUNCTION_326(v0);
}

uint64_t closure #4 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v0 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_326(v0);
}

uint64_t closure #5 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXRecognitionResult(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXAudioAnalytics(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_92_0();
  v8 = swift_beginAccess();
  a6(v8);
  v9 = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return OUTLINED_FUNCTION_326(v9);
}

void closure #7 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v20 = dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  OUTLINED_FUNCTION_326(v20);
  OUTLINED_FUNCTION_264_0();
}

uint64_t closure #11 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ModalityXLatnnMitigatorResult(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

void closure #6 in closure #1 in ModalityXRecognitionCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_92_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_114();
  v20 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  OUTLINED_FUNCTION_326(v20);
  OUTLINED_FUNCTION_264_0();
}

uint64_t closure #13 in closure #1 in ModalityXFinalSpeechRecognitionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_93();
  v7(0);
  OUTLINED_FUNCTION_135();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

void closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  closure #1 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    closure #2 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, v11, v12);
    closure #3 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)();
    closure #4 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, v13, v14);
    closure #5 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #7 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #8 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection, lazy protocol witness table accessor for type ModalityXWatermarkDetectionResult and conformance ModalityXWatermarkDetectionResult, 8, &type metadata for ModalityXWatermarkDetectionResult);
    closure #7 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage, 9);
    closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language, 10);
    closure #11 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale, 12);
    closure #13 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(a1, a2, a3, a4);
  }
}

void closure #1 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = *(v7 + 16);

    OUTLINED_FUNCTION_160_0(v9, v8, 1);
  }

  OUTLINED_FUNCTION_264_0();
}

void closure #2 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = *(v7 + 32);

    OUTLINED_FUNCTION_160_0(v9, v8, 2);
  }

  OUTLINED_FUNCTION_264_0();
}

uint64_t closure #3 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_89();
  result = swift_beginAccess();
  if ((*(v0 + 52) & 1) == 0)
  {
    OUTLINED_FUNCTION_124();
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  v8 = *(v7 + 64);
  if (v8)
  {
    v9 = *(v7 + 56);

    OUTLINED_FUNCTION_160_0(v9, v8, 4);
  }

  OUTLINED_FUNCTION_264_0();
}

uint64_t closure #5 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRecognitionResult(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXRecognitionResult and conformance ModalityXRecognitionResult, type metadata accessor for ModalityXRecognitionResult, &protocol conformance descriptor for ModalityXRecognitionResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #6 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  result = swift_beginAccess();
  if (*(a1 + v5) != 5)
  {
    lazy protocol witness table accessor for type ModalityXLanguageProfileRecreateCodes and conformance ModalityXLanguageProfileRecreateCodes();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXAudioAnalytics(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXAudioAnalytics and conformance ModalityXAudioAnalytics, type metadata accessor for ModalityXAudioAnalytics, &protocol conformance descriptor for ModalityXAudioAnalytics);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #8 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_81();
  v10 = v9;
  v12 = *v11;
  OUTLINED_FUNCTION_89();
  result = swift_beginAccess();
  if (*(v10 + v12) != 4)
  {
    a6(result);
    OUTLINED_FUNCTION_13_0();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

void closure #7 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_81();
  v8 = v7 + *v6;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if ((*(v8 + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_114();
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  OUTLINED_FUNCTION_264_0();
}

uint64_t closure #11 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v9, v7, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  }

  outlined init with take of ModalityXRecognitionSausage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXLatnnMitigatorResult and conformance ModalityXLatnnMitigatorResult, type metadata accessor for ModalityXLatnnMitigatorResult, &protocol conformance descriptor for ModalityXLatnnMitigatorResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t closure #6 in closure #1 in ModalityXRecognitionCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_81();
  v9 = (v8 + *v7);
  OUTLINED_FUNCTION_134();
  result = swift_beginAccess();
  v11 = v9[1];
  if (v11)
  {
    v12 = *v9;

    OUTLINED_FUNCTION_160_0(v12, v11, a6);
  }

  return result;
}

uint64_t closure #13 in closure #1 in ModalityXFinalSpeechRecognitionResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static ModalityXFinalSpeechRecognitionResponse.== infix(_:_:)(void *a1, void *a2)
{
  v158 = type metadata accessor for ModalityXLatnnMitigatorResult(0);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_64();
  v155 = v7 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_227_0();
  v159 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  v11 = OUTLINED_FUNCTION_122(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_0();
  v157 = v12;
  OUTLINED_FUNCTION_294();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_205_0();
  v160 = v14;
  v15 = OUTLINED_FUNCTION_180();
  v164 = type metadata accessor for ModalityXAudioAnalytics(v15);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64();
  v161 = (v18 - v17);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_227_0();
  v165 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  v22 = OUTLINED_FUNCTION_122(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_0();
  v162 = v23;
  OUTLINED_FUNCTION_294();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_205_0();
  v166 = v25;
  v26 = OUTLINED_FUNCTION_180();
  v27 = type metadata accessor for ModalityXRecognitionResult(v26);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_64();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMd, &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v30);
  v32 = &v154 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v34 = OUTLINED_FUNCTION_122(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_171_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v154 - v36;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v167 = a1;
  v39 = a1[2];
  v38 = a1[3];
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v168 = a2;
  v40 = a2[3];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = v39 == v168[2] && v38 == v40;
    if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = v167;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v43 = v42[4];
  v44 = v42[5];
  v45 = v168;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v46 = v45[5];
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }

    v47 = v43 == v168[4] && v44 == v46;
    if (!v47 && (OUTLINED_FUNCTION_172_0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v48 = v167;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v49 = *(v48 + 12);
  v50 = *(v48 + 52);
  v51 = v168;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v52 = *(v51 + 52);
  if (v50)
  {
    if (!*(v51 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(v51 + 12))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = v167;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v54 = v53[7];
  v55 = v53[8];
  v56 = v168;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v57 = v56[8];
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }

    v58 = v54 == v168[7] && v55 == v57;
    if (!v58 && (OUTLINED_FUNCTION_172_0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v59 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v60 = v167;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v60 + v59, v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  v61 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__recognitionResult;
  v62 = v168;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v63 = *(v29 + 48);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v37, v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v62 + v61, &v32[v63], &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_139(v32, 1, v27);
  if (v41)
  {
    v64 = v167;

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    OUTLINED_FUNCTION_139(&v32[v63], 1, v27);
    v65 = v62;
    v62 = v64;
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
      goto LABEL_47;
    }

LABEL_42:
    v67 = &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMd;
    v68 = &_s16ModalityXObjects0A18XRecognitionResultVSg_ADtMR;
    v69 = v32;
LABEL_43:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v69, v67, v68);
    goto LABEL_44;
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v32, v2, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  OUTLINED_FUNCTION_139(&v32[v63], 1, v27);
  if (v66)
  {
    OUTLINED_FUNCTION_257_0();

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v37, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
    OUTLINED_FUNCTION_142_0();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_129_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_257_0();
  v65 = v168;

  v71 = OUTLINED_FUNCTION_109_0();
  v72 = static ModalityXRecognitionResult.== infix(_:_:)(v71);
  OUTLINED_FUNCTION_287();
  outlined destroy of ModalityXRecognitionSausage();
  v73 = OUTLINED_FUNCTION_75_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v73, v74, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  outlined destroy of ModalityXRecognitionSausage();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A18XRecognitionResultVSgMd, &_s16ModalityXObjects0A18XRecognitionResultVSgMR);
  if ((v72 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v75 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v76 = *(v62 + v75);
  v77 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__langProfileRecreateCodes;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v78 = *(v65 + v77);
  if (v76 == 5)
  {
    v79 = v166;
    if (v78 != 5)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v79 = v166;
    if (v78 == 5 || v76 != v78)
    {
      goto LABEL_44;
    }
  }

  v80 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  OUTLINED_FUNCTION_181_0(v62 + v80, v79);
  v81 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__audioAnalytics;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v82 = *(v163 + 48);
  v83 = v165;
  OUTLINED_FUNCTION_174_0(v79);
  v84 = v65 + v81;
  v85 = v83;
  OUTLINED_FUNCTION_181_0(v84, v83 + v82);
  v86 = v164;
  OUTLINED_FUNCTION_139(v83, 1, v164);
  if (v41)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v79, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    OUTLINED_FUNCTION_139(v83 + v82, 1, v86);
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v83, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
      goto LABEL_57;
    }

    goto LABEL_63;
  }

  v91 = v83;
  v92 = v162;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v91, v162, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
  OUTLINED_FUNCTION_139(v85 + v82, 1, v86);
  if (v93)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v79, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMd, &_s16ModalityXObjects0A15XAudioAnalyticsVSgMR);
    OUTLINED_FUNCTION_141_0();
LABEL_63:
    v67 = &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMd;
    v68 = &_s16ModalityXObjects0A15XAudioAnalyticsVSg_ADtMR;
    v69 = v85;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_1();
  v94 = v161;
  outlined init with take of ModalityXRecognitionSausage();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B25XSpeechRecognitionFeatureV_Tt1g5(*v92, *v94);
  if ((v95 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B30XAudioAnalyticsAcousticFeatureV_Tt1g5(v92[1], v94[1], v96, v97, v98, v99, v100, v101, v154, v155, v156, v157), (v102 & 1) == 0))
  {
    OUTLINED_FUNCTION_118_0();
    outlined destroy of ModalityXRecognitionSausage();
    OUTLINED_FUNCTION_242_0();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v113, v114, v115);
    OUTLINED_FUNCTION_263_0();
    OUTLINED_FUNCTION_242_0();
    goto LABEL_43;
  }

  v103 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v106 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v104, v105, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_253_0(v106);
  OUTLINED_FUNCTION_115_0();
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v107, v108, v109);
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v110, v111, v112);
  if ((v103 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_57:
  v87 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v88 = *(v62 + v87);
  v89 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkDetection;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v90 = *(v65 + v89);
  if (v88 == 4)
  {
    if (v90 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v90 == 4 || v88 != v90)
  {
    goto LABEL_44;
  }

  v116 = (v62 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v117 = *v116;
  v118 = *(v116 + 8);
  v119 = (v65 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__watermarkPeakAverage);
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (v118)
  {
    if ((v119[1] & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((v119[1] & 1) != 0 || v117 != *v119)
  {
    goto LABEL_44;
  }

  v120 = v62 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v121 = *(v120 + 1);
  v122 = v65 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__language;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v123 = *(v122 + 1);
  if (v121)
  {
    if (!v123)
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_244_0();
    if (!v41 || v121 != v124)
    {
      OUTLINED_FUNCTION_75_0();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  else if (v123)
  {
    goto LABEL_44;
  }

  v126 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v127 = v62 + v126;
  v128 = v160;
  OUTLINED_FUNCTION_181_0(v127, v160);
  v129 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__latnnMitigatorResult;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v130 = *(v156 + 48);
  v131 = v128;
  v132 = v159;
  OUTLINED_FUNCTION_181_0(v131, v159);
  OUTLINED_FUNCTION_181_0(v65 + v129, v132 + v130);
  v133 = v158;
  OUTLINED_FUNCTION_139(v132, 1, v158);
  if (v41)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v160, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    OUTLINED_FUNCTION_139(v132 + v130, 1, v133);
    if (v41)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v132, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
      goto LABEL_96;
    }

LABEL_93:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v132, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSg_ADtMR);
    goto LABEL_44;
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v132, v157, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
  OUTLINED_FUNCTION_139(v132 + v130, 1, v133);
  if (v134)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v160, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMd, &_s16ModalityXObjects0A21XLatnnMitigatorResultVSgMR);
    OUTLINED_FUNCTION_143_0();
    v132 = v159;
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_130_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_109_0();
  v135 = static ModalityXLatnnMitigatorResult.== infix(_:_:)();
  outlined destroy of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v136, v137, v138);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_100_0();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v139, v140, v141);
  if ((v135 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_96:
  v142 = v167 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v143 = *(v142 + 1);
  v144 = v168 + OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__requestLocale;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v145 = *(v144 + 1);
  if (!v143)
  {
    if (!v145)
    {
      goto LABEL_105;
    }

LABEL_44:

    return 0;
  }

  if (!v145)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_244_0();
  if (!v41 || v143 != v146)
  {
    OUTLINED_FUNCTION_75_0();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_105:
  v148 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  v149 = v167;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v150 = *(v149 + v148);

  v151 = OBJC_IVAR____TtCV16ModalityXObjects39ModalityXFinalSpeechRecognitionResponseP33_75A932E5D6A2D682264742982DE931B513_StorageClass__hasResult_p;
  v152 = v168;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  v153 = *(v152 + v151);

  if (v150 == 2)
  {
    return v153 == 2;
  }

  return v153 != 2 && ((v150 ^ v153) & 1) == 0;
}

uint64_t outlined init with take of ModalityXRecognitionSausage()
{
  v1 = OUTLINED_FUNCTION_87();
  v2(v1);
  OUTLINED_FUNCTION_54();
  v3 = OUTLINED_FUNCTION_131();
  v4(v3);
  return v0;
}

uint64_t outlined init with copy of ModalityXRecognitionSausage()
{
  v1 = OUTLINED_FUNCTION_87();
  v2(v1);
  OUTLINED_FUNCTION_54();
  v3 = OUTLINED_FUNCTION_131();
  v4(v3);
  return v0;
}

uint64_t outlined destroy of ModalityXRecognitionSausage()
{
  v1 = OUTLINED_FUNCTION_187();
  v2(v1);
  OUTLINED_FUNCTION_54();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int ModalityXRecognitionToken.hashValue.getter(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  v6 = OUTLINED_FUNCTION_136();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v6, v7, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXFinalSpeechRecognitionResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse, &protocol conformance descriptor for ModalityXFinalSpeechRecognitionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXFinalSpeechRecognitionResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse, &protocol conformance descriptor for ModalityXFinalSpeechRecognitionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXFinalSpeechRecognitionResponse(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse, &protocol conformance descriptor for ModalityXFinalSpeechRecognitionResponse);

  return Message.hash(into:)();
}

uint64_t sub_25A1C5228()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.tokenText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5254()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.startMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C52A0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.endMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C52EC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.silenceStartMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5338()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.confidence.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5384()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXRecognitionToken.addSpaceAfter.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1C53D0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.phoneSeq.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C53FC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionToken.ipaPhoneSeq.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5428()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXRecognitionPhraseTokensAlternatives.hasUnsuggestedAlternatives_p.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1C5474()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionChoice.confidence.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5590()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXLatnnMitigatorResult.processed.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1C55DC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXLatnnMitigatorResult.version.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C56A0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.speechID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C56CC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.sessionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C56F8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.returnCode.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5744()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.returnStr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C57D8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.resultID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25A1C5914()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C59A8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRecognitionCandidate.requestLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C59D4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXItnAlignment.firstPreItnTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5A20()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXItnAlignment.lastPreItnTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5A6C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXItnAlignment.firstPostItnCharPos.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5AB8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXItnAlignment.lastPostItnCharPos.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5B54()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechRecognitionFeature.key.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5BD0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioAnalyticsAcousticFeature.key.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5C74()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.speechID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5CA0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.sessionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5CCC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.returnCode.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1C5D18()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.returnStr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5E70()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.language.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25A1C5F04()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXFinalSpeechRecognitionResponse.requestLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1C5F30()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXFinalSpeechRecognitionResponse.hasResult_p.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t type metadata completion function for ModalityXRecognitionToken(uint64_t a1)
{
  v1 = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata completion function for ModalityXRecognitionPhraseTokensAlternatives(uint64_t a1)
{
  type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXRecognitionPhraseTokens], type metadata accessor for ModalityXRecognitionPhraseTokens, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [ModalityXRecognitionToken](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for ModalityXAcousticFeature(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  type metadata accessor for String?(319, a4, a5, MEMORY[0x277D83940]);
  if (v8 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      v10 = OUTLINED_FUNCTION_116_0();
      type metadata accessor for String?(v10, a6, a5, v11);
      if (v12 <= 0x3F)
      {
        OUTLINED_FUNCTION_149_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_352();
      }
    }
  }
}

void type metadata completion function for ModalityXRecognitionPhraseTokens(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for [ModalityXRecognitionToken](319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_149_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_352();
    }
  }
}

void type metadata completion function for ModalityXChoiceAlignment(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Int32], MEMORY[0x277D849A8], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXRepeatedItnAlignment], type metadata accessor for ModalityXRepeatedItnAlignment, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25A1C6644()
{
  OUTLINED_FUNCTION_194_0();
  if (v3)
  {
    OUTLINED_FUNCTION_57_0();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_214_0();
    OUTLINED_FUNCTION_168();
    if (*(v7 + 84) == v0)
    {
      v8 = v6;
      v9 = *(v2 + 32);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
      v9 = *(v2 + 36);
    }

    return __swift_getEnumTagSinglePayload(v1 + v9, v0, v8);
  }
}

void sub_25A1C6710()
{
  OUTLINED_FUNCTION_148_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_168();
    if (*(v5 + 84) != v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
    }

    OUTLINED_FUNCTION_254();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void type metadata completion function for ModalityXRecognitionResult(uint64_t a1)
{
  type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXRecognitionChoice], type metadata accessor for ModalityXRecognitionChoice, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXItnAlignment], type metadata accessor for ModalityXItnAlignment, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXChoiceAlignment], type metadata accessor for ModalityXChoiceAlignment, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXRecognitionSausage?, type metadata accessor for ModalityXRecognitionSausage, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25A1C6970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 24));
  }

  v7 = OUTLINED_FUNCTION_163_0();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_25A1C6A18()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    v3 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_185(*(v0 + 24));
  }
}

void type metadata completion function for ModalityXLatnnMitigatorResult(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25A1C6C14()
{
  v2 = OUTLINED_FUNCTION_137_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_25A1C6C64()
{
  OUTLINED_FUNCTION_137_0();
  v0 = OUTLINED_FUNCTION_162();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void type metadata completion function for ModalityXItnAlignment(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_131Tm()
{
  OUTLINED_FUNCTION_194_0();
  if (v3)
  {
    OUTLINED_FUNCTION_57_0();
    return (v4 + 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_214_0();
    v7 = v1 + *(v2 + 20);

    return __swift_getEnumTagSinglePayload(v7, v0, v6);
  }
}

void __swift_store_extra_inhabitant_index_132Tm()
{
  OUTLINED_FUNCTION_148_0();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_254();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 20));
  }

  v7 = OUTLINED_FUNCTION_163_0();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    v3 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_185(*(v0 + 20));
  }
}

uint64_t sub_25A1C7040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_168();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 2147483646)
    {
      return OUTLINED_FUNCTION_50(v4 + *(a3 + 20));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    v9 = OUTLINED_FUNCTION_233_0();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_25A1C7110()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_185(*(v0 + 20));
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    OUTLINED_FUNCTION_233_0();
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void type metadata completion function for ModalityXSpeechRecognitionFeature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_256_0();
  v6 = v5;
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    v8 = OUTLINED_FUNCTION_116_0();
    type metadata accessor for String?(v8, v9, v10, v11);
    if (v12 <= 0x3F)
    {
      OUTLINED_FUNCTION_135();
      v6();
      if (v13 <= 0x3F)
      {
        OUTLINED_FUNCTION_149_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_352();
      }
    }
  }

  OUTLINED_FUNCTION_255_0();
}

uint64_t __swift_get_extra_inhabitant_index_185Tm()
{
  OUTLINED_FUNCTION_194_0();
  if (v1)
  {
    OUTLINED_FUNCTION_57_0();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_214_0();
    v4 = OUTLINED_FUNCTION_233_0();

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }
}

void __swift_store_extra_inhabitant_index_186Tm()
{
  OUTLINED_FUNCTION_148_0();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_233_0();
    OUTLINED_FUNCTION_254();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void type metadata completion function for ModalityXAudioAnalytics(uint64_t a1)
{
  type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXSpeechRecognitionFeature], type metadata accessor for ModalityXSpeechRecognitionFeature, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for [ModalityXAudioAnalyticsAcousticFeature], type metadata accessor for ModalityXAudioAnalyticsAcousticFeature, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_212Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_163_0();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_57_0();
    return (v7 + 1);
  }
}

void __swift_store_extra_inhabitant_index_213Tm()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_168();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t type metadata completion function for ModalityXRecognitionCandidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_149_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_352();
    }
  }

  return result;
}

void type metadata completion function for ModalityXRecognitionCandidate._StorageClass(uint64_t a1)
{
  type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXRecognitionResult?, type metadata accessor for ModalityXRecognitionResult, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXAudioAnalytics?, type metadata accessor for ModalityXAudioAnalytics, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXLatnnMitigatorResult?, type metadata accessor for ModalityXLatnnMitigatorResult, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for ModalityXFinalSpeechRecognitionResponse._StorageClass(uint64_t a1)
{
  type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXRecognitionResult?, type metadata accessor for ModalityXRecognitionResult, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXAudioAnalytics?, type metadata accessor for ModalityXAudioAnalytics, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [ModalityXRecognitionToken](319, &lazy cache variable for type metadata for ModalityXLatnnMitigatorResult?, type metadata accessor for ModalityXLatnnMitigatorResult, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void OUTLINED_FUNCTION_2_1(uint64_t a1@<X8>)
{
  *(v1 + 12) = a1;
  v3 = (v2 + a1);
  if (*(v3 + 4))
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *(v1 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v3, v1, v2);
}

void OUTLINED_FUNCTION_20_0(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_48_0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = 0;
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  type metadata accessor for ModalityXFinalSpeechRecognitionResponse._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_71_0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 4) = v1;
}

uint64_t OUTLINED_FUNCTION_72_0(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v1 + v4, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_86_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  type metadata accessor for ModalityXFinalSpeechRecognitionResponse(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_137_0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return outlined destroy of ModalityXRecognitionSausage();
}

void OUTLINED_FUNCTION_144_0()
{
  v3 = *(v0 + v2);
  if (v3 == 4)
  {
    LOBYTE(v3) = 0;
  }

  *(v1 + 84) = v3;
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_153_0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_160_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_174_0(uint64_t a1)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_181_0(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_204_0()
{
  v2 = *(v0 + 48);
  if (*(v0 + 52))
  {
    v2 = 0;
  }

  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t OUTLINED_FUNCTION_215_0()
{

  return outlined init with take of ModalityXRecognitionSausage();
}

uint64_t OUTLINED_FUNCTION_216_0()
{
}

uint64_t OUTLINED_FUNCTION_217_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_218_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_219_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_220_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

uint64_t OUTLINED_FUNCTION_251_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = a2;
  v2[2] = a2;
  v2[3] = a2;

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_253_0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_257_0()
{
}

uint64_t OUTLINED_FUNCTION_258_0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t OUTLINED_FUNCTION_260_0()
{
}

uint64_t OUTLINED_FUNCTION_261_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_263_0()
{

  return outlined destroy of ModalityXRecognitionSausage();
}

uint64_t ModalityXWordWithPronunciations.orthography.getter()
{
  v0 = type metadata accessor for ModalityXWordWithPronunciations(0);
  OUTLINED_FUNCTION_165(*(v0 + 24));

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXWordWithPronunciations.orthography.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  v4 = (v1 + *(type metadata accessor for ModalityXWordWithPronunciations(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t ModalityXWordWithPronunciations.orthography.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = *(type metadata accessor for ModalityXWordWithPronunciations(v2) + 24);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_165(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXWordWithPronunciations.clearOrthography()()
{
  v1 = (v0 + *(type metadata accessor for ModalityXWordWithPronunciations(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ModalityXWordWithPronunciations.frequency.getter()
{
  OUTLINED_FUNCTION_14_1();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t ModalityXWordWithPronunciations.frequency.setter(int a1)
{
  result = OUTLINED_FUNCTION_14_1();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*ModalityXWordWithPronunciations.frequency.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ModalityXWordWithPronunciations(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return ModalityXProcessingError.code.modify;
}

Swift::Void __swiftcall ModalityXWordWithPronunciations.clearFrequency()()
{
  OUTLINED_FUNCTION_14_1();
  *v0 = 0;
  *(v0 + 4) = 1;
}

uint64_t ModalityXWordWithPronunciations.tag.getter()
{
  v0 = type metadata accessor for ModalityXWordWithPronunciations(0);
  OUTLINED_FUNCTION_165(*(v0 + 32));

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXWordWithPronunciations.tag.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  v4 = (v1 + *(type metadata accessor for ModalityXWordWithPronunciations(v3) + 32));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t ModalityXWordWithPronunciations.tag.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = *(type metadata accessor for ModalityXWordWithPronunciations(v2) + 32);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_165(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXWordWithPronunciations.clearTag()()
{
  v1 = (v0 + *(type metadata accessor for ModalityXWordWithPronunciations(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ModalityXWordWithPronunciations.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXWordWithPronunciations(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXWordWithPronunciations.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ModalityXWordWithPronunciations(0);
  result = UnknownStorage.init()();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t ModalityXEntityWords.words.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ModalityXWordWithPronunciations.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t ModalityXWordWithPronunciations.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  v4 = *(v3(v2) + 20);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t ModalityXEntityWords.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXEntityWords(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXSpeechProfileSourceData.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t ModalityXEntities.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXEntities(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXSpeechProfileSourceData.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXSpeechProfileSourceData(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXCategoryEntities.key.getter()
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_165(v0);

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXCategoryEntities.key.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  v4 = (v1 + *(type metadata accessor for ModalityXCategoryEntities(v3) + 20));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t ModalityXCategoryEntities.key.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = *(type metadata accessor for ModalityXCategoryEntities(v2) + 20);
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_165(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v0 + 24) = v4;
  *v0 = v6;
  *(v0 + 8) = v7;

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXCategoryEntities.clearKey()()
{
  OUTLINED_FUNCTION_11_1();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t ModalityXCategoryEntities.value.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_122(v4);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_12_0();
  outlined init with copy of ModalityXEntities?(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for ModalityXEntities(0);
  v8 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_139(v8, v9, v7);
  if (!v10)
  {
    return outlined init with take of ModalityXEntities(v2, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v11 = OUTLINED_FUNCTION_19_1();
  result = OUTLINED_FUNCTION_139(v11, v12, v7);
  if (!v10)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of ModalityXEntities?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModalityXEntities(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXEntities(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ModalityXCategoryEntities.value : ModalityXCategoryEntities(uint64_t a1)
{
  v2 = type metadata accessor for ModalityXEntities(0);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of ModalityXEntities(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return ModalityXCategoryEntities.value.setter();
}

uint64_t ModalityXCategoryEntities.value.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  v3 = *(type metadata accessor for ModalityXCategoryEntities(v2) + 24);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1 + v3, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  outlined init with take of ModalityXEntities(v0, v1 + v3);
  v4 = type metadata accessor for ModalityXEntities(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*ModalityXCategoryEntities.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_122(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for ModalityXEntities(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_54();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for ModalityXCategoryEntities(0) + 24);
  *(v3 + 10) = v11;
  outlined init with copy of ModalityXEntities?(v1 + v11, v6);
  OUTLINED_FUNCTION_139(v6, 1, v7);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    OUTLINED_FUNCTION_139(v6, 1, v7);
    if (!v12)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v6, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    }
  }

  else
  {
    outlined init with take of ModalityXEntities(v6, v10);
  }

  return ModalityXCategoryEntities.value.modify;
}

void ModalityXCategoryEntities.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    outlined init with copy of ModalityXEntities((*a1)[4], v4);
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7 + v3, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    outlined init with take of ModalityXEntities(v4, v7 + v3);
    OUTLINED_FUNCTION_29_1();
    outlined destroy of ModalityXEntities(v5);
  }

  else
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7 + v3, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    outlined init with take of ModalityXEntities(v5, v7 + v3);
    OUTLINED_FUNCTION_29_1();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t outlined init with copy of ModalityXEntities(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXEntities(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModalityXEntities(uint64_t a1)
{
  v2 = type metadata accessor for ModalityXEntities(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModalityXCategoryEntities.hasValue.getter()
{
  v2 = OUTLINED_FUNCTION_163();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_122(v4);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_12_0();
  outlined init with copy of ModalityXEntities?(v0 + *(v6 + 24), v1);
  type metadata accessor for ModalityXEntities(0);
  v7 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_139(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  return v11;
}

Swift::Void __swiftcall ModalityXCategoryEntities.clearValue()()
{
  v1 = *(type metadata accessor for ModalityXCategoryEntities(0) + 24);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + v1, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  v2 = type metadata accessor for ModalityXEntities(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t ModalityXCategoryEntities.unknownFields.getter()
{
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v0 = OUTLINED_FUNCTION_131();

  return v1(v0);
}

uint64_t ModalityXCategoryEntities.unknownFields.setter()
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t ModalityXCategoryEntities.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = OUTLINED_FUNCTION_11_1();
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = *(v3 + 24);
  v7 = type metadata accessor for ModalityXEntities(0);

  return __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
}

uint64_t ModalityXWordWithPronunciations.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXWordWithPronunciations.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXWordWithPronunciations.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXWordWithPronunciations.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t ModalityXWordWithPronunciations.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_124();
  result = closure #1 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(v2, v3, v4, v5);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      OUTLINED_FUNCTION_124();
      dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
    }

    OUTLINED_FUNCTION_124();
    closure #2 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(v7, v8, v9, v10);
    OUTLINED_FUNCTION_124();
    closure #3 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(v11, v12, v13, v14);
    type metadata accessor for ModalityXWordWithPronunciations(0);
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t closure #1 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXWordWithPronunciations(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXWordWithPronunciations(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXWordWithPronunciations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXWordWithPronunciations(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXWordWithPronunciations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ModalityXWordWithPronunciations(0);
  OUTLINED_FUNCTION_80();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2))
  {
    v11 = *(v4 + 28);
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 4);
    v14 = (a2 + v11);
    v15 = *(a2 + v11 + 4);
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (*v12 != *v14)
      {
        LOBYTE(v15) = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_80();
    if (v18)
    {
      if (!v16)
      {
        return 0;
      }

      OUTLINED_FUNCTION_69(v17);
      v21 = v10 && v19 == v20;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_2();
      v24 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(v22, v23, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_178(v24) & 1;
    }

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXWordWithPronunciations(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXWordWithPronunciations and conformance ModalityXWordWithPronunciations, type metadata accessor for ModalityXWordWithPronunciations, &protocol conformance descriptor for ModalityXWordWithPronunciations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXWordWithPronunciations(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXWordWithPronunciations and conformance ModalityXWordWithPronunciations, type metadata accessor for ModalityXWordWithPronunciations, &protocol conformance descriptor for ModalityXWordWithPronunciations);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXWordWithPronunciations(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXWordWithPronunciations and conformance ModalityXWordWithPronunciations, type metadata accessor for ModalityXWordWithPronunciations, &protocol conformance descriptor for ModalityXWordWithPronunciations);

  return Message.hash(into:)();
}

uint64_t ModalityXEntityWords.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_0();
  if (!v1 || (type metadata accessor for ModalityXWordWithPronunciations(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXWordWithPronunciations and conformance ModalityXWordWithPronunciations, type metadata accessor for ModalityXWordWithPronunciations, &protocol conformance descriptor for ModalityXWordWithPronunciations), result = OUTLINED_FUNCTION_5_1(), !v0))
  {
    type metadata accessor for ModalityXEntityWords(0);
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXEntityWords(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntityWords and conformance ModalityXEntityWords, type metadata accessor for ModalityXEntityWords, &protocol conformance descriptor for ModalityXEntityWords);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXEntityWords(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntityWords and conformance ModalityXEntityWords, type metadata accessor for ModalityXEntityWords, &protocol conformance descriptor for ModalityXEntityWords);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXEntityWords(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntityWords and conformance ModalityXEntityWords, type metadata accessor for ModalityXEntityWords, &protocol conformance descriptor for ModalityXEntityWords);

  return Message.hash(into:)();
}

uint64_t ModalityXEntityWords.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v13 = v7;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v8 || (v18 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in ModalityXEntityWords.decodeMessage<A>(decoder:)(a1, v13, a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t ModalityXEntities.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_0();
  if (!v1 || (type metadata accessor for ModalityXEntityWords(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntityWords and conformance ModalityXEntityWords, type metadata accessor for ModalityXEntityWords, &protocol conformance descriptor for ModalityXEntityWords), result = OUTLINED_FUNCTION_5_1(), !v0))
  {
    type metadata accessor for ModalityXEntities(0);
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXEntities(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntities and conformance ModalityXEntities, type metadata accessor for ModalityXEntities, &protocol conformance descriptor for ModalityXEntities);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXEntities(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntities and conformance ModalityXEntities, type metadata accessor for ModalityXEntities, &protocol conformance descriptor for ModalityXEntities);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXEntities(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntities and conformance ModalityXEntities, type metadata accessor for ModalityXEntities, &protocol conformance descriptor for ModalityXEntities);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25A1D8780;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  type metadata accessor for _NameMap.NameDescription();
  OUTLINED_FUNCTION_54();
  (*(v15 + 104))(v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t closure #1 in ModalityXEntityWords.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(a6, a7, a8);
  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

uint64_t ModalityXSpeechProfileSourceData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_0();
  if (!v1 || (type metadata accessor for ModalityXCategoryEntities(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXCategoryEntities and conformance ModalityXCategoryEntities, type metadata accessor for ModalityXCategoryEntities, &protocol conformance descriptor for ModalityXCategoryEntities), result = OUTLINED_FUNCTION_5_1(), !v0))
  {
    type metadata accessor for ModalityXSpeechProfileSourceData(0);
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t static ModalityXEntityWords.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), void (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_2();
  v7 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_178(v7) & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileSourceData(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXSpeechProfileSourceData and conformance ModalityXSpeechProfileSourceData, type metadata accessor for ModalityXSpeechProfileSourceData, &protocol conformance descriptor for ModalityXSpeechProfileSourceData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileSourceData(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXSpeechProfileSourceData and conformance ModalityXSpeechProfileSourceData, type metadata accessor for ModalityXSpeechProfileSourceData, &protocol conformance descriptor for ModalityXSpeechProfileSourceData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileSourceData(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXSpeechProfileSourceData and conformance ModalityXSpeechProfileSourceData, type metadata accessor for ModalityXSpeechProfileSourceData, &protocol conformance descriptor for ModalityXSpeechProfileSourceData);

  return Message.hash(into:)();
}

uint64_t ModalityXCategoryEntities.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_56();
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXCategoryEntities.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #1 in ModalityXCategoryEntities.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXCategoryEntities.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXCategoryEntities(0);
  type metadata accessor for ModalityXEntities(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntities and conformance ModalityXEntities, type metadata accessor for ModalityXEntities, &protocol conformance descriptor for ModalityXEntities);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ModalityXCategoryEntities.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXCategoryEntities.traverse<A>(visitor:)(v2, v3, v4, v5);
  if (!v1)
  {
    v7 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXCategoryEntities.traverse<A>(visitor:)(v7, v8, v9, v10);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXCategoryEntities.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXCategoryEntities(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXCategoryEntities.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ModalityXEntities(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModalityXCategoryEntities(0);
  outlined init with copy of ModalityXEntities?(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  }

  outlined init with take of ModalityXEntities(v7, v10);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXEntities and conformance ModalityXEntities, type metadata accessor for ModalityXEntities, &protocol conformance descriptor for ModalityXEntities);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXEntities(v10);
}

uint64_t static ModalityXCategoryEntities.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_86();
  v4 = type metadata accessor for ModalityXEntities(v3);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v5);
  v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_122(v8);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v9);
  v11 = (v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSg_ADtMd, &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_80();
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_69(v16);
    v20 = v20 && v18 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  v21 = *(v14 + 24);
  v22 = *(v12 + 48);
  outlined init with copy of ModalityXEntities?(v1 + v21, v2);
  outlined init with copy of ModalityXEntities?(v0 + v21, v2 + v22);
  v23 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_139(v23, v24, v4);
  if (v20)
  {
    OUTLINED_FUNCTION_139(v2 + v22, 1, v4);
    if (v20)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  outlined init with copy of ModalityXEntities?(v2, v11);
  OUTLINED_FUNCTION_139(v2 + v22, 1, v4);
  if (v28)
  {
    outlined destroy of ModalityXEntities(v11);
LABEL_19:
    v29 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMd;
    v30 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR;
LABEL_20:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, v29, v30);
    goto LABEL_21;
  }

  outlined init with take of ModalityXEntities(v2 + v22, v7);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B12XEntityWordsV_Tt1g5(*v11, *v7, v32, v33, v34, v35, v36, v37, v42[0], v42[1]);
  if ((v38 & 1) == 0)
  {
    outlined destroy of ModalityXEntities(v7);
    outlined destroy of ModalityXEntities(v11);
    v29 = &_s16ModalityXObjects0A9XEntitiesVSgMd;
    v30 = &_s16ModalityXObjects0A9XEntitiesVSgMR;
    goto LABEL_20;
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_2();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(v39, v40, MEMORY[0x277D216D0]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ModalityXEntities(v7);
  outlined destroy of ModalityXEntities(v11);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_2();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(v25, v26, MEMORY[0x277D216D0]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

Swift::Int ModalityXWordWithPronunciations.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXCategoryEntities(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXCategoryEntities and conformance ModalityXCategoryEntities, type metadata accessor for ModalityXCategoryEntities, &protocol conformance descriptor for ModalityXCategoryEntities);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXCategoryEntities(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXCategoryEntities and conformance ModalityXCategoryEntities, type metadata accessor for ModalityXCategoryEntities, &protocol conformance descriptor for ModalityXCategoryEntities);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXCategoryEntities(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type ModalityXCategoryEntities and conformance ModalityXCategoryEntities, type metadata accessor for ModalityXCategoryEntities, &protocol conformance descriptor for ModalityXCategoryEntities);

  return Message.hash(into:)();
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25A1CC62C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXWordWithPronunciations.orthography.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1CC658()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXWordWithPronunciations.frequency.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1CC6A8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXWordWithPronunciations.tag.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1CC6D4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXCategoryEntities.key.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t type metadata completion function for ModalityXWordWithPronunciations(uint64_t a1)
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = type metadata accessor for UnknownStorage();
    if (v4 <= 0x3F)
    {
      type metadata accessor for [Data](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        type metadata accessor for [Data](319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for [Data](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [ModalityXWordWithPronunciations](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ModalityXEntityWords(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for [ModalityXWordWithPronunciations](319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25A1CCBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_25A1CCCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void type metadata completion function for ModalityXCategoryEntities(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Data](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [ModalityXWordWithPronunciations](319, &lazy cache variable for type metadata for ModalityXEntities?, type metadata accessor for ModalityXEntities, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return type metadata accessor for ModalityXCategoryEntities(0);
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void ModalityXDeviceInfo.init()(uint64_t a1)
{
  UnknownStorage.init()();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_141(v1);
  OUTLINED_FUNCTION_141(*(v2 + 24));
  OUTLINED_FUNCTION_141(*(v3 + 28));
  OUTLINED_FUNCTION_141(*(v4 + 32));
  OUTLINED_FUNCTION_141(*(v5 + 36));
}

void ModalityXAudioMetadata.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for ModalityXAudioMetadata(0);
  *(a2 + v3[5]) = 8;
  *(a2 + v3[6]) = 8;
  *(a2 + v3[7]) = 2;
  v4 = v3[8];
  v5 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  *(a2 + v3[9]) = 2;
  OUTLINED_FUNCTION_141(v3[10]);
}

uint64_t ModalityXDeviceInfo.deviceName.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_40_1();
  if (OUTLINED_FUNCTION_165(v1))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXDeviceInfo.deviceName.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXDeviceInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXDeviceInfo.deviceName.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXDeviceInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXDeviceInfo.clearDeviceName()()
{
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t ModalityXDeviceInfo.deviceVersion.getter()
{
  v0 = type metadata accessor for ModalityXDeviceInfo(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXDeviceInfo.deviceVersion.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXDeviceInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXDeviceInfo.deviceVersion.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXDeviceInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}

Swift::Void __swiftcall ModalityXDeviceInfo.clearDeviceVersion()()
{
  type metadata accessor for ModalityXDeviceInfo(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t ModalityXDeviceInfo.systemName.getter()
{
  v0 = type metadata accessor for ModalityXDeviceInfo(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXDeviceInfo.systemName.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXDeviceInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXDeviceInfo.systemName.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXDeviceInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_174();
  }

  else
  {
    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_173(v4, v5);

  return OUTLINED_FUNCTION_163();
}