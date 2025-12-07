Swift::Void __swiftcall ModalityXDeviceInfo.clearSystemName()()
{
  type metadata accessor for ModalityXDeviceInfo(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t ModalityXDeviceInfo.systemVersion.getter()
{
  v0 = type metadata accessor for ModalityXDeviceInfo(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 32)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXDeviceInfo.systemVersion.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXDeviceInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXDeviceInfo.systemVersion.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXDeviceInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 32)))
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

Swift::Void __swiftcall ModalityXDeviceInfo.clearSystemVersion()()
{
  type metadata accessor for ModalityXDeviceInfo(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t ModalityXDeviceInfo.systemBuild.getter()
{
  v0 = type metadata accessor for ModalityXDeviceInfo(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 36)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXDeviceInfo.systemBuild.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXDeviceInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXDeviceInfo.systemBuild.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXDeviceInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 36)))
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

Swift::Void __swiftcall ModalityXDeviceInfo.clearSystemBuild()()
{
  type metadata accessor for ModalityXDeviceInfo(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

void ModalityXAudioMetadata.codec.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_23_0();
  *a1 = v2;
}

uint64_t ModalityXAudioMetadata.codec.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_49_0();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*ModalityXAudioMetadata.codec.modify(void *a1))()
{
  *(v1 + 8) = *(OUTLINED_FUNCTION_42_0(a1) + 20);
  OUTLINED_FUNCTION_23_0();
  *(v1 + 12) = v2;
  return ModalityXSessionMetadata.userInterfaceIdiom.modify;
}

void ModalityXAudioMetadata.audioSource.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_23_0();
  *a1 = v2;
}

uint64_t ModalityXAudioMetadata.audioSource.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_50_1();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*ModalityXAudioMetadata.audioSource.modify(void *a1))()
{
  *(v1 + 8) = *(OUTLINED_FUNCTION_42_0(a1) + 24);
  OUTLINED_FUNCTION_23_0();
  *(v1 + 12) = v2;
  return ModalityXCancelRequest.reason.modify;
}

uint64_t ModalityXAudioMetadata.isFarField.setter(char a1)
{
  result = OUTLINED_FUNCTION_48_1();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*ModalityXAudioMetadata.isFarField.modify(void *a1))()
{
  v1 = OUTLINED_FUNCTION_42_0(a1);
  OUTLINED_FUNCTION_117(*(v1 + 28));
  return ModalityXCancelRequest.reason.modify;
}

uint64_t ModalityXAudioMetadata.voiceTriggerInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ModalityXAudioMetadata(0);
  outlined init with copy of ModalityXVoiceTriggerInfo?(v1 + *(v7 + 32), v6);
  v8 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  OUTLINED_FUNCTION_139(v6, 1, v8);
  if (!v9)
  {
    return outlined init with take of ModalityXVoiceTriggerInfo(v6, a1);
  }

  ModalityXVoiceTriggerInfo.init()(a1);
  result = OUTLINED_FUNCTION_139(v6, 1, v8);
  if (!v9)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v6, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  }

  return result;
}

uint64_t outlined init with copy of ModalityXVoiceTriggerInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ModalityXAudioMetadata.voiceTriggerInfo : ModalityXAudioMetadata(uint64_t a1)
{
  v2 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of ModalityXVoiceTriggerInfo(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return ModalityXAudioMetadata.voiceTriggerInfo.setter();
}

uint64_t ModalityXAudioMetadata.voiceTriggerInfo.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  v3 = *(type metadata accessor for ModalityXAudioMetadata(v2) + 32);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v1 + v3, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  outlined init with take of ModalityXVoiceTriggerInfo(v0, v1 + v3);
  v4 = type metadata accessor for ModalityXVoiceTriggerInfo(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void ModalityXVoiceTriggerInfo.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = OUTLINED_FUNCTION_41_1();
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  OUTLINED_FUNCTION_14_2(*(v3 + 24));
  OUTLINED_FUNCTION_14_2(*(v6 + 28));
  OUTLINED_FUNCTION_14_2(*(v7 + 32));
  OUTLINED_FUNCTION_14_2(*(v8 + 36));
  OUTLINED_FUNCTION_14_2(*(v9 + 40));
  OUTLINED_FUNCTION_141(*(v10 + 44));
  OUTLINED_FUNCTION_14_2(*(v11 + 48));
  OUTLINED_FUNCTION_14_2(*(v12 + 52));
  OUTLINED_FUNCTION_14_2(*(v13 + 56));
}

uint64_t outlined init with take of ModalityXVoiceTriggerInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*ModalityXAudioMetadata.voiceTriggerInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  OUTLINED_FUNCTION_122(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_54();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for ModalityXAudioMetadata(0) + 32);
  *(v3 + 10) = v11;
  outlined init with copy of ModalityXVoiceTriggerInfo?(v1 + v11, v6);
  OUTLINED_FUNCTION_139(v6, 1, v7);
  if (v12)
  {
    UnknownStorage.init()();
    OUTLINED_FUNCTION_153_0(v7[5]);
    OUTLINED_FUNCTION_153_0(v7[6]);
    OUTLINED_FUNCTION_153_0(v7[7]);
    OUTLINED_FUNCTION_153_0(v7[8]);
    OUTLINED_FUNCTION_153_0(v7[9]);
    OUTLINED_FUNCTION_153_0(v7[10]);
    v13 = &v10[v7[11]];
    *v13 = 0;
    *(v13 + 1) = 0;
    OUTLINED_FUNCTION_153_0(v7[12]);
    OUTLINED_FUNCTION_153_0(v7[13]);
    OUTLINED_FUNCTION_153_0(v7[14]);
    OUTLINED_FUNCTION_139(v6, 1, v7);
    if (!v12)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v6, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
    }
  }

  else
  {
    outlined init with take of ModalityXVoiceTriggerInfo(v6, v10);
  }

  return ModalityXAudioMetadata.voiceTriggerInfo.modify;
}

void ModalityXAudioMetadata.voiceTriggerInfo.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    outlined init with copy of ModalityXVoiceTriggerInfo((*a1)[4], v4);
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7 + v3, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
    outlined init with take of ModalityXVoiceTriggerInfo(v4, v7 + v3);
    OUTLINED_FUNCTION_29_1();
    outlined destroy of ModalityXVoiceTriggerInfo(v5);
  }

  else
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7 + v3, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
    outlined init with take of ModalityXVoiceTriggerInfo(v5, v7 + v3);
    OUTLINED_FUNCTION_29_1();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t outlined init with copy of ModalityXVoiceTriggerInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModalityXVoiceTriggerInfo(uint64_t a1)
{
  v2 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModalityXAudioMetadata.hasVoiceTriggerInfo.getter()
{
  v1 = OUTLINED_FUNCTION_163();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ModalityXAudioMetadata(0);
  outlined init with copy of ModalityXVoiceTriggerInfo?(v0 + *(v7 + 32), v6);
  v8 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  OUTLINED_FUNCTION_139(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v6, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  return v10;
}

Swift::Void __swiftcall ModalityXAudioMetadata.clearVoiceTriggerInfo()()
{
  v1 = *(type metadata accessor for ModalityXAudioMetadata(0) + 32);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + v1, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  v2 = type metadata accessor for ModalityXVoiceTriggerInfo(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t ModalityXAudioMetadata.enableServerEndpoint.setter(char a1)
{
  result = OUTLINED_FUNCTION_47_1();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*ModalityXAudioMetadata.enableServerEndpoint.modify(void *a1))()
{
  v1 = OUTLINED_FUNCTION_42_0(a1);
  OUTLINED_FUNCTION_117(*(v1 + 36));
  return ModalityXSessionMetadata.userInterfaceIdiom.modify;
}

uint64_t ModalityXAudioMetadata.clientModelVersion.getter()
{
  v0 = type metadata accessor for ModalityXAudioMetadata(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXAudioMetadata.clientModelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXAudioMetadata(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXAudioMetadata.clientModelVersion.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXAudioMetadata(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 40)))
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

Swift::Void __swiftcall ModalityXAudioMetadata.clearClientModelVersion()()
{
  type metadata accessor for ModalityXAudioMetadata(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

double ModalityXVoiceTriggerInfo.triggerScore.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_41_1();
  result = OUTLINED_FUNCTION_50_0(v1);
  if (!v4)
  {
    return v3;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.triggerScore.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 20);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.triggerThreshold.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 24));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.triggerThreshold.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 24);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.satScore.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.satScore.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 28);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.satThreshold.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 32));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.satThreshold.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 32);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.recognizerScore.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.recognizerScore.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 36);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.recognizerThresholdOffset.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 40));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.recognizerThresholdOffset.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 40);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

uint64_t ModalityXVoiceTriggerInfo.configVersion.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if (OUTLINED_FUNCTION_165(*(v0 + 44)))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXVoiceTriggerInfo.configVersion.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXVoiceTriggerInfo(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXVoiceTriggerInfo.configVersion.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXVoiceTriggerInfo(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 44)))
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

Swift::Void __swiftcall ModalityXVoiceTriggerInfo.clearConfigVersion()()
{
  type metadata accessor for ModalityXVoiceTriggerInfo(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

double ModalityXVoiceTriggerInfo.hardwareSampleRate.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 48));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.hardwareSampleRate.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 48);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.extraSamplesAtStart.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 52));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.extraSamplesAtStart.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 52);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

double ModalityXVoiceTriggerInfo.triggerEnd.getter()
{
  v0 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  result = OUTLINED_FUNCTION_50_0(*(v0 + 56));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t ModalityXVoiceTriggerInfo.triggerEnd.modify(uint64_t a1)
{
  v2 = *(OUTLINED_FUNCTION_22_0(a1) + 56);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_50_0(v2);
  if (!v5)
  {
    v3 = v4;
  }

  *v1 = v3;
  return OUTLINED_FUNCTION_288();
}

uint64_t ModalityXDeviceInfo.unknownFields.getter()
{
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v0 = OUTLINED_FUNCTION_131();

  return v1(v0);
}

uint64_t ModalityXDeviceInfo.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXDeviceInfo.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXDeviceInfo.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXDeviceInfo.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXDeviceInfo.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXDeviceInfo.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t ModalityXDeviceInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_56_0();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXDeviceInfo.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXDeviceInfo.traverse<A>(visitor:)(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXDeviceInfo.traverse<A>(visitor:)(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_30();
    closure #4 in ModalityXDeviceInfo.traverse<A>(visitor:)(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_30();
    closure #5 in ModalityXDeviceInfo.traverse<A>(visitor:)(v18, v19, v20, v21);
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXDeviceInfo(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXDeviceInfo(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXDeviceInfo(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXDeviceInfo(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ModalityXDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXDeviceInfo(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXDeviceInfo.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_33_1();
  type metadata accessor for ModalityXDeviceInfo(v0);
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

  OUTLINED_FUNCTION_51();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v8);
    v12 = v6 && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v14);
    v18 = v6 && v16 == v17;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v20);
    v24 = v6 && v22 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51();
  if (v27)
  {
    if (v25)
    {
      OUTLINED_FUNCTION_69(v26);
      v30 = v6 && v28 == v29;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_44;
      }
    }
  }

  else if (!v25)
  {
LABEL_44:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_10_1();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(v31, v32, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_123();
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo, &protocol conformance descriptor for ModalityXDeviceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXDeviceInfo(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo, &protocol conformance descriptor for ModalityXDeviceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXDeviceInfo(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo, &protocol conformance descriptor for ModalityXDeviceInfo);

  return Message.hash(into:)();
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ModalityXAudioMetadata.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_31();
        closure #6 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXAudioMetadata(0);
  lazy protocol witness table accessor for type ModalityXCodec and conformance ModalityXCodec();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #2 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXAudioMetadata(0);
  lazy protocol witness table accessor for type ModalityXAudioSource and conformance ModalityXAudioSource();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #4 in ModalityXAudioMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXAudioMetadata(0);
  type metadata accessor for ModalityXVoiceTriggerInfo(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXVoiceTriggerInfo and conformance ModalityXVoiceTriggerInfo, type metadata accessor for ModalityXVoiceTriggerInfo, &protocol conformance descriptor for ModalityXVoiceTriggerInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ModalityXAudioMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_56_0();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXAudioMetadata.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXAudioMetadata.traverse<A>(visitor:)(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXAudioMetadata.traverse<A>(visitor:)(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_30();
    closure #4 in ModalityXAudioMetadata.traverse<A>(visitor:)(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_30();
    closure #5 in ModalityXAudioMetadata.traverse<A>(visitor:)(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_30();
    closure #6 in ModalityXAudioMetadata.traverse<A>(visitor:)(v22, v23, v24, v25);
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXAudioMetadata(0);
  if (*(a1 + *(result + 20)) != 8)
  {
    lazy protocol witness table accessor for type ModalityXCodec and conformance ModalityXCodec();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXAudioMetadata(0);
  if (*(a1 + *(result + 24)) != 8)
  {
    lazy protocol witness table accessor for type ModalityXAudioSource and conformance ModalityXAudioSource();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXAudioMetadata(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModalityXAudioMetadata(0);
  outlined init with copy of ModalityXVoiceTriggerInfo?(a1 + *(v11 + 32), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  }

  outlined init with take of ModalityXVoiceTriggerInfo(v7, v10);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXVoiceTriggerInfo and conformance ModalityXVoiceTriggerInfo, type metadata accessor for ModalityXVoiceTriggerInfo, &protocol conformance descriptor for ModalityXVoiceTriggerInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXVoiceTriggerInfo(v10);
}

uint64_t closure #5 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXAudioMetadata(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ModalityXAudioMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXAudioMetadata(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXAudioMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_33_1();
  v5 = type metadata accessor for ModalityXVoiceTriggerInfo(v4);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
  OUTLINED_FUNCTION_122(v9);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSg_ADtMd, "t-");
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for ModalityXAudioMetadata(0);
  OUTLINED_FUNCTION_271();
  if (v19 == 8)
  {
    if (v18 != 8)
    {
      goto LABEL_23;
    }
  }

  else if (v19 != v18)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_271();
  if (v21 == 8)
  {
    if (v20 != 8)
    {
      goto LABEL_23;
    }
  }

  else if (v21 != v20)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_271();
  if (v23 == 2)
  {
    if (v22 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v22 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    goto LABEL_23;
  }

  v24 = *(v17 + 32);
  v25 = *(v13 + 48);
  outlined init with copy of ModalityXVoiceTriggerInfo?(v2 + v24, v16);
  outlined init with copy of ModalityXVoiceTriggerInfo?(a2 + v24, &v16[v25]);
  OUTLINED_FUNCTION_139(v16, 1, v5);
  if (!v26)
  {
    outlined init with copy of ModalityXVoiceTriggerInfo?(v16, v12);
    OUTLINED_FUNCTION_139(&v16[v25], 1, v5);
    if (!v26)
    {
      outlined init with take of ModalityXVoiceTriggerInfo(&v16[v25], v8);
      v29 = static ModalityXVoiceTriggerInfo.== infix(_:_:)();
      outlined destroy of ModalityXVoiceTriggerInfo(v8);
      outlined destroy of ModalityXVoiceTriggerInfo(v12);
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    outlined destroy of ModalityXVoiceTriggerInfo(v12);
LABEL_22:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSg_ADtMd, "t-");
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_139(&v16[v25], 1, v5);
  if (!v26)
  {
    goto LABEL_22;
  }

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v16, &_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
LABEL_26:
  OUTLINED_FUNCTION_271();
  if (v31 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v30 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_51();
  if (v34)
  {
    if (!v32)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_69(v33);
    v37 = v26 && v35 == v36;
    if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_40:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_10_1();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(v38, v39, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_123();
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v27 & 1;
  }

  if (!v32)
  {
    goto LABEL_40;
  }

LABEL_23:
  v27 = 0;
  return v27 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAudioMetadata(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXAudioMetadata and conformance ModalityXAudioMetadata, type metadata accessor for ModalityXAudioMetadata, &protocol conformance descriptor for ModalityXAudioMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAudioMetadata(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXAudioMetadata and conformance ModalityXAudioMetadata, type metadata accessor for ModalityXAudioMetadata, &protocol conformance descriptor for ModalityXAudioMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAudioMetadata(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXAudioMetadata and conformance ModalityXAudioMetadata, type metadata accessor for ModalityXAudioMetadata, &protocol conformance descriptor for ModalityXAudioMetadata);

  return Message.hash(into:)();
}

uint64_t ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v27 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v27, v28, v29, v30);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v31 = OUTLINED_FUNCTION_31();
        closure #6 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v31, v32, v33, v34);
        break;
      case 7:
        v35 = OUTLINED_FUNCTION_31();
        closure #7 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v35, v36, v37, v38);
        break;
      case 8:
        v23 = OUTLINED_FUNCTION_31();
        closure #8 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v23, v24, v25, v26);
        break;
      case 9:
        v39 = OUTLINED_FUNCTION_31();
        closure #9 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v39, v40, v41, v42);
        break;
      case 10:
        v11 = OUTLINED_FUNCTION_31();
        closure #10 in ModalityXVoiceTriggerInfo.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t ModalityXVoiceTriggerInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_56_0();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_30();
    closure #4 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_30();
    closure #5 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_30();
    closure #6 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_30();
    closure #7 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_30();
    closure #8 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_30();
    closure #9 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v34, v35, v36, v37);
    v38 = OUTLINED_FUNCTION_30();
    closure #10 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(v38, v39, v40, v41);
    OUTLINED_FUNCTION_130();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in ModalityXVoiceTriggerInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXVoiceTriggerInfo(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t static ModalityXVoiceTriggerInfo.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_33_1();
  type metadata accessor for ModalityXVoiceTriggerInfo(v0);
  OUTLINED_FUNCTION_236_0();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_236_0();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_236_0();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_236_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_236_0();
  if (v14)
  {
    if (!v13)
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

  OUTLINED_FUNCTION_236_0();
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v18)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_51();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_69(v20);
    v24 = v24 && v22 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_236_0();
  if (v26)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v27)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_236_0();
  if ((v29 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    if ((v30 & 1) == 0)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (!v28)
  {
    return 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_236_0();
  if (v32)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_232_0();
    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_10_1();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(v35, v36, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_123();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int ModalityXDeviceInfo.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  OUTLINED_FUNCTION_56_0();
  Hasher.init(_seed:)();
  v5(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(v4, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXVoiceTriggerInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXVoiceTriggerInfo and conformance ModalityXVoiceTriggerInfo, type metadata accessor for ModalityXVoiceTriggerInfo, &protocol conformance descriptor for ModalityXVoiceTriggerInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXVoiceTriggerInfo(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXVoiceTriggerInfo and conformance ModalityXVoiceTriggerInfo, type metadata accessor for ModalityXVoiceTriggerInfo, &protocol conformance descriptor for ModalityXVoiceTriggerInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXVoiceTriggerInfo(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type ModalityXVoiceTriggerInfo and conformance ModalityXVoiceTriggerInfo, type metadata accessor for ModalityXVoiceTriggerInfo, &protocol conformance descriptor for ModalityXVoiceTriggerInfo);

  return Message.hash(into:)();
}

uint64_t sub_25A1D22D8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXDeviceInfo.deviceName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25A1D2304()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXDeviceInfo.deviceVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D2330()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXDeviceInfo.systemName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D235C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXDeviceInfo.systemVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D2388()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXDeviceInfo.systemBuild.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D23C4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioMetadata.isFarField.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25A1D2440()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioMetadata.enableServerEndpoint.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25A1D2494()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioMetadata.clientModelVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D2688()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXVoiceTriggerInfo.configVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1D27AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_25A1D2858()
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

void type metadata completion function for ModalityXDeviceInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25A1D298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_33_1();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
    OUTLINED_FUNCTION_168();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_50(v3 + *(a3 + 40));
    }

    v8 = v10;
    v9 = v3 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_25A1D2A88()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_168();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XVoiceTriggerInfoVSgMd, "t-");
    OUTLINED_FUNCTION_168();
    if (*(v9 + 84) != v3)
    {
      OUTLINED_FUNCTION_185(*(v2 + 40));
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t type metadata completion function for ModalityXAudioMetadata(uint64_t a1)
{
  v1 = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for ModalityXCodec?, &type metadata for ModalityXCodec);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for ModalityXAudioSource?, &type metadata for ModalityXAudioSource);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          type metadata accessor for ModalityXVoiceTriggerInfo?(319);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for ModalityXVoiceTriggerInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModalityXVoiceTriggerInfo?)
  {
    type metadata accessor for ModalityXVoiceTriggerInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModalityXVoiceTriggerInfo?);
    }
  }
}

uint64_t sub_25A1D2D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 44));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_25A1D2DC4()
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
    OUTLINED_FUNCTION_185(*(v0 + 44));
  }
}

uint64_t type metadata completion function for ModalityXVoiceTriggerInfo(uint64_t a1)
{
  v1 = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v6 > 0x3F)
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

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_4_2(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_11_2(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

void OUTLINED_FUNCTION_14_2(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1)
{
  *(a1 + 8) = v1;

  return type metadata accessor for ModalityXVoiceTriggerInfo(0);
}

uint64_t OUTLINED_FUNCTION_42_0(void *a1)
{
  *a1 = v1;

  return type metadata accessor for ModalityXAudioMetadata(0);
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return type metadata accessor for ModalityXVoiceTriggerInfo(0);
}