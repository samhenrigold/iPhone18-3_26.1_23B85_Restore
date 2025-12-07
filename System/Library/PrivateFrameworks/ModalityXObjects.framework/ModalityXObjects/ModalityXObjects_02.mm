uint64_t closure #6 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXBeginDictation(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation, &protocol conformance descriptor for ModalityXBeginDictation);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A15XBeginDictationVSgMd, &_s16ModalityXObjects0A15XBeginDictationVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #7 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest, &protocol conformance descriptor for ModalityXSpeechProfileBuildRequest);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMd, &_s16ModalityXObjects0A26XSpeechProfileBuildRequestVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #8 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileBegin(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin, &protocol conformance descriptor for ModalityXStreamingSpeechProfileBegin);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMd, &_s16ModalityXObjects0A28XStreamingSpeechProfileBeginVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #9 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData, &protocol conformance descriptor for ModalityXStreamingSpeechProfileAddData);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMd, &_s16ModalityXObjects0A30XStreamingSpeechProfileAddDataVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #10 in ModalityXServerBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXStreamingSpeechProfileCommit(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit, &protocol conformance descriptor for ModalityXStreamingSpeechProfileCommit);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMd, &_s16ModalityXObjects0A29XStreamingSpeechProfileCommitVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t ModalityXServerBoundFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_196();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v3, v4, v5, v6);
  v7 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  OUTLINED_FUNCTION_290(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_153();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v33 = OUTLINED_FUNCTION_28();
        closure #2 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v33, v34, v35, v36);
        goto LABEL_12;
      case 2u:
        v21 = OUTLINED_FUNCTION_28();
        closure #3 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v21, v22, v23, v24);
        goto LABEL_12;
      case 3u:
        v25 = OUTLINED_FUNCTION_28();
        closure #4 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v25, v26, v27, v28);
        goto LABEL_12;
      case 4u:
        v13 = OUTLINED_FUNCTION_28();
        closure #5 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v13, v14, v15, v16);
        goto LABEL_12;
      case 5u:
        v37 = OUTLINED_FUNCTION_28();
        closure #6 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v37, v38, v39, v40);
        goto LABEL_12;
      case 6u:
        v41 = OUTLINED_FUNCTION_28();
        closure #7 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v41, v42, v43, v44);
        goto LABEL_12;
      case 7u:
        v29 = OUTLINED_FUNCTION_28();
        closure #8 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v29, v30, v31, v32);
        goto LABEL_12;
      case 8u:
        v46 = OUTLINED_FUNCTION_28();
        closure #9 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v46, v47, v48, v49);
        goto LABEL_16;
      case 9u:
        v17 = OUTLINED_FUNCTION_28();
        closure #10 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v17, v18, v19, v20);
LABEL_16:
        if (v0)
        {
          OUTLINED_FUNCTION_4_0();
          return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        }

        OUTLINED_FUNCTION_4_0();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        break;
      default:
        v9 = OUTLINED_FUNCTION_28();
        closure #1 in ModalityXServerBoundFrame.traverse<A>(visitor:)(v9, v10, v11, v12);
LABEL_12:
        OUTLINED_FUNCTION_4_0();
        result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ModalityXServerBoundFrame(0);
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_125();
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXSessionMetadata(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata, &protocol conformance descriptor for ModalityXSessionMetadata);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXBeginRequest(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest, &protocol conformance descriptor for ModalityXBeginRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXAudioFrame(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame, &protocol conformance descriptor for ModalityXAudioFrame);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXSpeechProfile(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile, &protocol conformance descriptor for ModalityXSpeechProfile);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXCancelRequest(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest, &protocol conformance descriptor for ModalityXCancelRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #6 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXBeginDictation(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation, &protocol conformance descriptor for ModalityXBeginDictation);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #7 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest, &protocol conformance descriptor for ModalityXSpeechProfileBuildRequest);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #8 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXStreamingSpeechProfileBegin(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin, &protocol conformance descriptor for ModalityXStreamingSpeechProfileBegin);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #9 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData, &protocol conformance descriptor for ModalityXStreamingSpeechProfileAddData);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #10 in ModalityXServerBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXStreamingSpeechProfileCommit(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit, &protocol conformance descriptor for ModalityXStreamingSpeechProfileCommit);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

void static ModalityXServerBoundFrame.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(v5);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_316();
  v8 = OUTLINED_FUNCTION_153();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_122(v10);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_110();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMR);
  OUTLINED_FUNCTION_122(v12);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_205();
  v15 = *(v14 + 56);
  OUTLINED_FUNCTION_151(v3);
  OUTLINED_FUNCTION_283(v2, v4 + v15);
  OUTLINED_FUNCTION_139(v4, 1, v6);
  if (v20)
  {
    OUTLINED_FUNCTION_139(v4 + v15, 1, v6);
    if (v20)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
LABEL_12:
      type metadata accessor for ModalityXServerBoundFrame(0);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      v28 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v26, v27, MEMORY[0x277D216D0]);
      v21 = OUTLINED_FUNCTION_178(v28);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v16 = OUTLINED_FUNCTION_140();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v16, v17, v18, v19);
  OUTLINED_FUNCTION_139(v4 + v15, 1, v6);
  if (v20)
  {
    OUTLINED_FUNCTION_4_0();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_9:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSg_AFtMR);
    goto LABEL_10;
  }

  outlined init with take of ModalityXSessionMetadata(v4 + v15);
  v22 = OUTLINED_FUNCTION_287();
  static ModalityXServerBoundFrame.OneOf_Payload.== infix(_:_:)(v22, v23);
  v25 = v24;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  OUTLINED_FUNCTION_315();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XServerBoundFrameV13OneOf_PayloadOSgMR);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_284(v21);
  OUTLINED_FUNCTION_247();
}

Swift::Int ModalityXServerBoundFrame.hashValue.getter()
{
  return ModalityXServerBoundFrame.hashValue.getter();
}

{
  OUTLINED_FUNCTION_307();
  v2 = v1;
  Hasher.init(_seed:)();
  v2(0);
  v3 = OUTLINED_FUNCTION_136();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v3, v4, v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXServerBoundFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame, &protocol conformance descriptor for ModalityXServerBoundFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXServerBoundFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame, &protocol conformance descriptor for ModalityXServerBoundFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXServerBoundFrame(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXServerBoundFrame and conformance ModalityXServerBoundFrame, type metadata accessor for ModalityXServerBoundFrame, &protocol conformance descriptor for ModalityXServerBoundFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXClientBoundFrame.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_41();
        closure #1 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_41();
        closure #2 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_41();
        closure #3 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_41();
        closure #4 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_41();
        closure #5 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_41();
        closure #6 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXRequestComplete(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete, &protocol conformance descriptor for ModalityXRequestComplete);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XRequestCompleteVSgMd, &_s16ModalityXObjects0A16XRequestCompleteVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #2 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXProcessingError(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #3 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXASRResult(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult, &protocol conformance descriptor for ModalityXASRResult);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A10XASRResultVSgMd, &_s16ModalityXObjects0A10XASRResultVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #4 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded, &protocol conformance descriptor for ModalityXSpeechProfileRebuildNeeded);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMd, &_s16ModalityXObjects0A27XSpeechProfileRebuildNeededVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #5 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXRequestMitigated(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated, &protocol conformance descriptor for ModalityXRequestMitigated);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A17XRequestMitigatedVSgMd, &_s16ModalityXObjects0A17XRequestMitigatedVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #6 in ModalityXClientBoundFrame.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse, &protocol conformance descriptor for ModalityXSpeechProfileBuildResponse);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMd, &_s16ModalityXObjects0A27XSpeechProfileBuildResponseVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t ModalityXClientBoundFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_196();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v3, v4, v5, v6);
  v7 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  OUTLINED_FUNCTION_290(v7);
  if (v8)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_153();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = OUTLINED_FUNCTION_28();
      closure #2 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = OUTLINED_FUNCTION_28();
      closure #3 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = OUTLINED_FUNCTION_28();
      closure #4 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = OUTLINED_FUNCTION_28();
      closure #5 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = OUTLINED_FUNCTION_28();
      closure #6 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v29, v30, v31, v32);
      break;
    default:
      v9 = OUTLINED_FUNCTION_28();
      closure #1 in ModalityXClientBoundFrame.traverse<A>(visitor:)(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_34();
  result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  if (!v0)
  {
LABEL_10:
    type metadata accessor for ModalityXClientBoundFrame(0);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_125();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRequestComplete(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete, &protocol conformance descriptor for ModalityXRequestComplete);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXProcessingError(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXASRResult(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult, &protocol conformance descriptor for ModalityXASRResult);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded, &protocol conformance descriptor for ModalityXSpeechProfileRebuildNeeded);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRequestMitigated(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated, &protocol conformance descriptor for ModalityXRequestMitigated);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #6 in ModalityXClientBoundFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse, &protocol conformance descriptor for ModalityXSpeechProfileBuildResponse);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

void static ModalityXClientBoundFrame.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for ModalityXClientBoundFrame.OneOf_Payload(v5);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_316();
  v8 = OUTLINED_FUNCTION_153();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_122(v10);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_110();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMR);
  OUTLINED_FUNCTION_122(v12);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_205();
  v15 = *(v14 + 56);
  OUTLINED_FUNCTION_151(v3);
  OUTLINED_FUNCTION_283(v2, v4 + v15);
  OUTLINED_FUNCTION_139(v4, 1, v6);
  if (v20)
  {
    OUTLINED_FUNCTION_139(v4 + v15, 1, v6);
    if (v20)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
LABEL_12:
      type metadata accessor for ModalityXClientBoundFrame(0);
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      v28 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v26, v27, MEMORY[0x277D216D0]);
      v21 = OUTLINED_FUNCTION_178(v28);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v16 = OUTLINED_FUNCTION_140();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v16, v17, v18, v19);
  OUTLINED_FUNCTION_139(v4 + v15, 1, v6);
  if (v20)
  {
    OUTLINED_FUNCTION_34();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_9:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSg_AFtMR);
    goto LABEL_10;
  }

  outlined init with take of ModalityXSessionMetadata(v4 + v15);
  v22 = OUTLINED_FUNCTION_287();
  static ModalityXClientBoundFrame.OneOf_Payload.== infix(_:_:)(v22, v23);
  v25 = v24;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  OUTLINED_FUNCTION_315();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v4, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A17XClientBoundFrameV13OneOf_PayloadOSgMR);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_284(v21);
  OUTLINED_FUNCTION_247();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXClientBoundFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame, &protocol conformance descriptor for ModalityXClientBoundFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXClientBoundFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame, &protocol conformance descriptor for ModalityXClientBoundFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXClientBoundFrame(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXClientBoundFrame and conformance ModalityXClientBoundFrame, type metadata accessor for ModalityXClientBoundFrame, &protocol conformance descriptor for ModalityXClientBoundFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 12:
        v11 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v11);
        break;
      case 10:
        v7 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 11:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXSessionMetadata(0);
  type metadata accessor for ModalityXDeviceInfo(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo, &protocol conformance descriptor for ModalityXDeviceInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t ModalityXSessionMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXSessionMetadata.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSessionMetadata.traverse<A>(visitor:)(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXSessionMetadata.traverse<A>(visitor:)(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)(v14, v15, v16, v17, v18, 12);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXDeviceInfo(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ModalityXSessionMetadata(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v9 + 20), v7, &_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata(v7);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXDeviceInfo and conformance ModalityXDeviceInfo, type metadata accessor for ModalityXDeviceInfo, &protocol conformance descriptor for ModalityXDeviceInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #2 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXSessionMetadata(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXSessionMetadata(0);
  if (*(a1 + *(result + 28)) != 8)
  {
    lazy protocol witness table accessor for type ModalityXUserInterfaceIdiom and conformance ModalityXUserInterfaceIdiom();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSessionMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata, &protocol conformance descriptor for ModalityXSessionMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSessionMetadata(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata, &protocol conformance descriptor for ModalityXSessionMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSessionMetadata(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSessionMetadata and conformance ModalityXSessionMetadata, type metadata accessor for ModalityXSessionMetadata, &protocol conformance descriptor for ModalityXSessionMetadata);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfile.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_31();
      closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v7);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_31();
      closure #1 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t ModalityXSpeechProfile.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXSpeechProfile.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSpeechProfile.traverse<A>(visitor:)(v6, v7, v8, v9);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXSpeechProfile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXSpeechProfile(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXSpeechProfile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXSpeechProfile(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfile(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile, &protocol conformance descriptor for ModalityXSpeechProfile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfile(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile, &protocol conformance descriptor for ModalityXSpeechProfile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfile(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfile and conformance ModalityXSpeechProfile, type metadata accessor for ModalityXSpeechProfile, &protocol conformance descriptor for ModalityXSpeechProfile);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1)
{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXBeginRequest._StorageClass, ModalityXBeginRequest._StorageClass.init(), &static ModalityXBeginRequest._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXBeginDictation._StorageClass, ModalityXBeginDictation._StorageClass.init(), &static ModalityXBeginDictation._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXRecognitionCandidate._StorageClass, ModalityXRecognitionCandidate._StorageClass.init(), &static ModalityXRecognitionCandidate._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for ModalityXFinalSpeechRecognitionResponse._StorageClass, ModalityXFinalSpeechRecognitionResponse._StorageClass.init(), &static ModalityXFinalSpeechRecognitionResponse._StorageClass.defaultInstance);
}

uint64_t outlined init with take of ModalityXSessionMetadata(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_87();
  v3(v2);
  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_131();
  v5(v4);
  return v1;
}

uint64_t outlined init with copy of ModalityXSessionMetadata(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_87();
  v3(v2);
  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_131();
  v5(v4);
  return v1;
}

uint64_t ModalityXBeginRequest._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 19;
  v1 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v2 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation) = 2;
  v3 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t ModalityXBeginRequest._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 19;
  v6 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v7 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v28 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  v29 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation) = 2;
  v30 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation) = 2;
  v8 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  *v8 = 0;
  v8[1] = 0;
  v31 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  v32 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v9;
  v11 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v11, v5, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_beginAccess();

  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v5, v1 + v6, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + v12);
  v13 = v28;
  swift_beginAccess();
  *(v1 + v13) = v12;
  v14 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + v14);
  v15 = v29;
  swift_beginAccess();
  *(v1 + v15) = v14;
  v16 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + v16);
  v17 = v30;
  swift_beginAccess();
  *(v1 + v17) = v16;
  v18 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  *v8 = v20;
  v8[1] = v19;

  v21 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  v22 = v31;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v24 = *(a1 + v23);

  v25 = v32;
  swift_beginAccess();
  *(v1 + v25) = v24;

  return v1;
}

uint64_t ModalityXBeginRequest._StorageClass.deinit()
{

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);

  return v0;
}

void closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 20:
        closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata);
        continue;
      case 21:
        v11 = a2;
        goto LABEL_14;
      case 22:
        v11 = a2;
        goto LABEL_14;
      case 23:
        v11 = a2;
        goto LABEL_14;
      case 24:
        closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID, MEMORY[0x277D217D0]);
        continue;
      case 25:
        v11 = a2;
LABEL_14:
        closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(v11);
        break;
      case 26:
        closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2);
        break;
      default:
        if (v9 == 2)
        {
          closure #2 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }

        else if (v9 == 1)
        {
          closure #1 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }

        break;
    }
  }
}

uint64_t closure #1 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 32) != 19)
  {
    lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static ModalityXBeginRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalityXAudioMetadata(0);
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  swift_beginAccess();
  v14 = a1;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = a2;
  v18 = *(a2 + 24);
  if (v15)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = v16 == *(a2 + 16) && v15 == v18;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v20 = *(v14 + 32);
  swift_beginAccess();
  v21 = *(a2 + 32);
  if (v20 == 19)
  {
    if (v21 == 19)
    {
      goto LABEL_12;
    }
  }

  else if (v21 != 19 && v20 == v21)
  {
LABEL_12:
    v22 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
    v23 = v14;
    swift_beginAccess();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v14 + v22, v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    v24 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
    swift_beginAccess();
    v25 = *(v6 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v13, v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a2 + v24, &v8[v25], &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
    {

      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v4) == 1)
      {
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
LABEL_27:
        v32 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
        swift_beginAccess();
        v33 = *(v23 + v32);
        v34 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
        swift_beginAccess();
        v35 = *(v17 + v34);
        if (v33 == 2)
        {
          if (v35 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v35 == 2 || ((v33 ^ v35) & 1) != 0)
        {
          goto LABEL_23;
        }

        v36 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
        swift_beginAccess();
        v37 = *(v23 + v36);
        v38 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedDictation;
        swift_beginAccess();
        v39 = *(v17 + v38);
        if (v37 == 2)
        {
          if (v39 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v39 == 2 || ((v37 ^ v39) & 1) != 0)
        {
          goto LABEL_23;
        }

        v40 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
        swift_beginAccess();
        v41 = *(v23 + v40);
        v42 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isPromptedConfirmation;
        swift_beginAccess();
        v43 = *(v17 + v42);
        if (v41 == 2)
        {
          if (v43 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (v43 == 2 || ((v41 ^ v43) & 1) != 0)
        {
          goto LABEL_23;
        }

        v44 = (v23 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
        swift_beginAccess();
        v45 = *v44;
        v46 = v44[1];
        v47 = (v17 + OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__foregroundAppID);
        swift_beginAccess();
        v48 = v47[1];
        if (v46)
        {
          if (!v48)
          {
            goto LABEL_23;
          }

          v49 = v45 == *v47 && v46 == v48;
          if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (v48)
        {
          goto LABEL_23;
        }

        v50 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
        swift_beginAccess();
        v51 = *(v23 + v50);
        v52 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
        swift_beginAccess();
        v53 = *(v17 + v52);
        if (v51 == 2)
        {
          if (v53 == 2)
          {
LABEL_56:
            v54 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
            swift_beginAccess();
            v55 = *(v23 + v54);
            v56 = OBJC_IVAR____TtCV16ModalityXObjects21ModalityXBeginRequestP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
            swift_beginAccess();
            v27 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v55, *(v17 + v56));
            goto LABEL_24;
          }
        }

        else if (v53 != 2 && ((v51 ^ v53) & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_23:
        v27 = 0;
LABEL_24:

        return v27 & 1;
      }
    }

    else
    {
      v28 = v59;
      outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v8, v59, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v4) != 1)
      {
        v30 = v58;
        outlined init with take of ModalityXSessionMetadata(&v8[v25]);

        v23 = v14;

        v31 = static ModalityXAudioMetadata.== infix(_:_:)(v28, v30);
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
        if ((v31 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
    goto LABEL_23;
  }

LABEL_19:
  v27 = 0;
  return v27 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXBeginRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest, &protocol conformance descriptor for ModalityXBeginRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXBeginRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest, &protocol conformance descriptor for ModalityXBeginRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXBeginRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginRequest and conformance ModalityXBeginRequest, type metadata accessor for ModalityXBeginRequest, &protocol conformance descriptor for ModalityXBeginRequest);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_146();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t ModalityXBeginDictation._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v2 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType) = 16;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey) = 12;
  v8 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  *v10 = 0;
  v10[1] = 0;
  v11 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages) = v11;
  v12 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken) = xmmword_25A1D8720;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio) = 2;
  v13 = (v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin) = 19;
  *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  return v0;
}

uint64_t ModalityXBeginDictation._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v89 - v4;
  v6 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  v7 = type metadata accessor for ModalityXAudioMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  v89 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  v90 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  *v12 = 0;
  v12[1] = 0;
  v91 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType) = 16;
  v13 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey) = 12;
  v14 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  v92 = v13;
  v93 = v14;
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  v94 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  v95 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  *v16 = 0;
  v16[1] = 0;
  v96 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  v17 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages) = v17;
  v19 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  v97 = v18;
  v98 = v19;
  *v19 = 0;
  v19[1] = 0;
  v99 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken) = xmmword_25A1D8720;
  v100 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech) = 2;
  v101 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition) = 2;
  v102 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio) = 2;
  v20 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  v103 = (v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  *v20 = 0;
  v20[1] = 0;
  v104 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults) = 2;
  v21 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin) = 19;
  v105 = v21;
  v106 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  *(v1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled) = 2;
  v22 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v22, v5, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_beginAccess();
  outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(v5, v1 + v6, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  swift_beginAccess();
  *v8 = v25;
  v8[1] = v24;

  v26 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  *v9 = v28;
  v9[1] = v27;

  v29 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  *v10 = v31;
  v10[1] = v30;

  v32 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  v35 = v89;
  swift_beginAccess();
  *v35 = v34;
  v35[1] = v33;

  v36 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  v39 = v90;
  swift_beginAccess();
  *v39 = v38;
  v39[1] = v37;

  v40 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v91;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v92;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v93;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v94;
  swift_beginAccess();
  *v51 = v50;
  v51[1] = v49;

  v52 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v95;
  swift_beginAccess();
  *v55 = v54;
  v55[1] = v53;

  v56 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v96;
  swift_beginAccess();
  *(v1 + v58) = v57;

  v59 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = v97;
  swift_beginAccess();
  *(v1 + v61) = v60;

  v62 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = v98;
  swift_beginAccess();
  *v65 = v64;
  v65[1] = v63;

  v66 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = v99;
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  *v69 = v68;
  v69[1] = v67;
  outlined copy of Data?(v68, v67);
  outlined consume of Data?(v70, v71);
  v72 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v100;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v101;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  LOBYTE(v76) = *(a1 + v76);
  v77 = v102;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v103;
  swift_beginAccess();
  *v81 = v80;
  v81[1] = v79;

  v82 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  LOBYTE(v82) = *(a1 + v82);
  v83 = v104;
  swift_beginAccess();
  *(v1 + v83) = v82;
  v84 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v105;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);

  v87 = v106;
  swift_beginAccess();
  *(v1 + v87) = v86;
  return v1;
}

uint64_t ModalityXBeginDictation._StorageClass.deinit()
{
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);

  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken), *(v0 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken + 8));

  return v0;
}

uint64_t ModalityXBeginRequest._StorageClass.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return MEMORY[0x2821FE8D8]();
}

uint64_t ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v10 = OUTLINED_FUNCTION_306();
  v12 = *(v11(v10) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_146();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_74();
    *(v7 + v12) = a6(v13);
  }

  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_292();
  return a7();
}

void closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata);
        continue;
      case 2:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID;
        goto LABEL_24;
      case 3:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID;
        goto LABEL_24;
      case 4:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel;
        goto LABEL_24;
      case 5:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName;
        goto LABEL_24;
      case 6:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion;
        goto LABEL_24;
      case 7:
      case 8:
      case 21:
        closure #7 in closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)();
        continue;
      case 9:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText;
        goto LABEL_24;
      case 10:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText;
        goto LABEL_24;
      case 11:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText;
        goto LABEL_24;
      case 12:
        v18 = a2;
        goto LABEL_10;
      case 13:
        v18 = a2;
LABEL_10:
        closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(v18);
        continue;
      case 14:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region;
        goto LABEL_24;
      case 15:
        v12 = MEMORY[0x277D21760];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken;
        goto LABEL_24;
      case 16:
        v11 = a2;
        goto LABEL_26;
      case 17:
        v11 = a2;
        goto LABEL_26;
      case 18:
        v11 = a2;
        goto LABEL_26;
      case 19:
        v12 = MEMORY[0x277D217D0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
        v17 = &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier;
LABEL_24:
        closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(v13, v14, v15, v16, v17, v12);
        continue;
      case 20:
        v11 = a2;
        goto LABEL_26;
      case 22:
        v11 = a2;
LABEL_26:
        closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(v11);
        break;
      default:
        continue;
    }
  }
}

void closure #3 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_281(v6 + *v5);
  type metadata accessor for ModalityXAudioMetadata(0);
  OUTLINED_FUNCTION_206();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v7, v8, &protocol conformance descriptor for ModalityXAudioMetadata);
  OUTLINED_FUNCTION_106();
  v9 = dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  OUTLINED_FUNCTION_326(v9);
  OUTLINED_FUNCTION_357();
}

uint64_t closure #9 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_281(v2 + *v1);
  OUTLINED_FUNCTION_114();
  v3 = dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
  return OUTLINED_FUNCTION_326(v3);
}

void closure #7 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_281(v8 + *v7);
  OUTLINED_FUNCTION_161();
  v9 = v6();
  OUTLINED_FUNCTION_326(v9);
  OUTLINED_FUNCTION_357();
}

uint64_t closure #7 in closure #1 in ModalityXBeginDictation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v3 = OUTLINED_FUNCTION_281(v2 + *v1);
  v4 = v0(v3);
  v5 = OUTLINED_FUNCTION_177(v4);
  return OUTLINED_FUNCTION_326(v5);
}

uint64_t closure #4 in closure #1 in ModalityXBeginRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_281(v2 + *v1);
  OUTLINED_FUNCTION_114();
  v3 = dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return OUTLINED_FUNCTION_326(v3);
}

uint64_t ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_93();
  v7(0);
  OUTLINED_FUNCTION_135();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

void closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  closure #3 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata, 1);
  if (!v4)
  {
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID, 2, v9, v10, v31, v41, v50, v60, v70, v80, v90, v100, v110, v120, v130, v140, v150, v160);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID, 3, v11, v12, v32, v42, v51, v61, v71, v81, v91, v101, v111, v121, v131, v141, v151, v161);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel, 4, v13, v14, v33, v43, v52, v62, v72, v82, v92, v102, v112, v122, v132, v142, v152, v162);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName, 5, v15, v16, v34, v44, v53, v63, v73, v83, v93, v103, v113, v123, v133, v143, v153, v163);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion, 6, v17, v18, v35, v45, v54, v64, v74, v84, v94, v104, v114, v124, v134, v144, v154, v164);
    closure #7 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #8 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText, 9, v19, v20, v36, v46, v55, v65, v75, v85, v95, v105, v115, v125, v135, v145, v155, v165);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText, 10, v21, v22, v37, v47, v56, v66, v76, v86, v96, v106, v116, v126, v136, v146, v156, v166);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText, 11, v23, v24, v38, v48, v57, v67, v77, v87, v97, v107, v117, v127, v137, v147, v157, v167);
    v25 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
    swift_beginAccess();
    if (*(*(a1 + v25) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    v26 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
    swift_beginAccess();
    if (*(*(a1 + v26) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region, 14, v27, v28, v39, 0, v58, v68, v78, v88, v98, v108, v118, v128, v138, v148, v158, v168);
    closure #13 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech, 16);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition, 17);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio, 18);
    closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier, 19, v29, v30, v40, v49, v59, v69, v79, v89, v99, v109, v119, v129, v139, v149, v159, v169);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults, 20);
    closure #19 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled, 22);
  }
}

uint64_t closure #3 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  OUTLINED_FUNCTION_122(v8);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = type metadata accessor for ModalityXAudioMetadata(0);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_64();
  v14 = *a5;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v14, v11, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v11, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata(v11);
  OUTLINED_FUNCTION_206();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v16, v17, &protocol conformance descriptor for ModalityXAudioMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  OUTLINED_FUNCTION_204();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #7 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  result = swift_beginAccess();
  if (*(a1 + v5) != 16)
  {
    lazy protocol witness table accessor for type ModalityXFieldKeyboardType and conformance ModalityXFieldKeyboardType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  result = swift_beginAccess();
  if (*(a1 + v5) != 12)
  {
    lazy protocol witness table accessor for type ModalityXFieldKeyboardReturnKey and conformance ModalityXFieldKeyboardReturnKey();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  result = swift_beginAccess();
  v6 = v4[1];
  if (v6 >> 60 != 15)
  {
    v7 = *v4;
    outlined copy of Data._Representation(v7, v6);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v7, v6);
  }

  return result;
}

void closure #7 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_81();
  v24 = v23 + *v22;
  OUTLINED_FUNCTION_134();
  swift_beginAccess();
  if (*(v24 + 8))
  {

    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  OUTLINED_FUNCTION_357();
}

uint64_t closure #19 in closure #1 in ModalityXBeginDictation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  result = swift_beginAccess();
  if (*(a1 + v5) != 19)
  {
    lazy protocol witness table accessor for type ModalityXInputOrigin and conformance ModalityXInputOrigin();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in closure #1 in ModalityXBeginRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_81();
  v7 = v6;
  v9 = *v8;
  OUTLINED_FUNCTION_89();
  swift_beginAccess();
  if (*(v7 + v9) != 2)
  {
    OUTLINED_FUNCTION_124();
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  OUTLINED_FUNCTION_357();
}

uint64_t closure #1 in static ModalityXBeginDictation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v131 = type metadata accessor for ModalityXAudioMetadata(0);
  MEMORY[0x28223BE20](v131);
  v129 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v129 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v130 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v129 - v12;
  v14 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + v14, v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v15 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__audioMetadata;
  swift_beginAccess();
  v16 = *(v6 + 56);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v13, v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  v17 = v131;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a2 + v15, &v8[v16], &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
  {

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    v18 = a2;
    if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v17) == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMd, &_s16ModalityXObjects0A14XAudioMetadataVSg_ADtMR);
    goto LABEL_54;
  }

  v18 = a2;
  v19 = v130;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v8, v130, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v17) == 1)
  {

    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    goto LABEL_6;
  }

  v20 = v129;
  outlined init with take of ModalityXSessionMetadata(&v8[v16]);

  v21 = static ModalityXAudioMetadata.== infix(_:_:)(v19, v20);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v8, &_s16ModalityXObjects0A14XAudioMetadataVSgMd, &_s16ModalityXObjects0A14XAudioMetadataVSgMR);
  if ((v21 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_9:
  v22 = a1;
  v23 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v26 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__requestID);
  swift_beginAccess();
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_54;
    }

    v28 = v24 == *v26 && v25 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v27)
  {
    goto LABEL_54;
  }

  v29 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  v32 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldID);
  swift_beginAccess();
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_54;
    }

    v34 = v30 == *v32 && v31 == v33;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v33)
  {
    goto LABEL_54;
  }

  v35 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  v38 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__fieldLabel);
  swift_beginAccess();
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_54;
    }

    v40 = v36 == *v38 && v37 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v39)
  {
    goto LABEL_54;
  }

  v41 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationName);
  swift_beginAccess();
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_54;
    }

    v46 = v42 == *v44 && v43 == v45;
    if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v45)
  {
    goto LABEL_54;
  }

  v47 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__applicationVersion);
  swift_beginAccess();
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_54;
    }

    v52 = v48 == *v50 && v49 == v51;
    if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v51)
  {
    goto LABEL_54;
  }

  v54 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardType;
  swift_beginAccess();
  v57 = *(v18 + v56);
  if (v55 == 16)
  {
    if (v57 != 16)
    {
      goto LABEL_54;
    }
  }

  else if (v57 == 16 || v55 != v57)
  {
    goto LABEL_54;
  }

  v58 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  v59 = *(a1 + v58);
  v60 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardReturnKey;
  swift_beginAccess();
  v61 = *(v18 + v60);
  if (v59 == 12)
  {
    if (v61 != 12)
    {
      goto LABEL_54;
    }
  }

  else if (v61 == 12 || v59 != v61)
  {
    goto LABEL_54;
  }

  v62 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__selectedText);
  swift_beginAccess();
  v66 = v65[1];
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_54;
    }

    v67 = v63 == *v65 && v64 == v66;
    if (!v67 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v66)
  {
    goto LABEL_54;
  }

  v68 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v69 = *v68;
  v70 = v68[1];
  v71 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__prefixText);
  swift_beginAccess();
  v72 = v71[1];
  if (v70)
  {
    if (!v72)
    {
      goto LABEL_54;
    }

    v73 = v69 == *v71 && v70 == v72;
    if (!v73 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v72)
  {
    goto LABEL_54;
  }

  v74 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  v77 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__postfixText);
  swift_beginAccess();
  v78 = v77[1];
  if (!v76)
  {
    if (!v78)
    {
      goto LABEL_93;
    }

LABEL_54:

    return 0;
  }

  if (!v78)
  {
    goto LABEL_54;
  }

  v79 = v75 == *v77 && v76 == v78;
  if (!v79 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_93:
  v80 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inlineLmeItems;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v81, *(v18 + v82)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v83 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__languages;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, *(v18 + v85)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v86 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__region);
  swift_beginAccess();
  v90 = v89[1];
  if (v88)
  {
    if (!v90)
    {
      goto LABEL_54;
    }

    v91 = v87 == *v89 && v88 == v90;
    if (!v91 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v90)
  {
    goto LABEL_54;
  }

  v92 = (a1 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__activationToken);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  outlined copy of Data?(v94, v93);
  outlined copy of Data?(v96, v97);
  if (v93 >> 60 == 15)
  {
    if (v97 >> 60 == 15)
    {
      outlined consume of Data?(v94, v93);
      goto LABEL_114;
    }

LABEL_112:
    outlined consume of Data?(v94, v93);
    outlined consume of Data?(v96, v97);
    return 0;
  }

  outlined copy of Data?(v94, v93);
  outlined copy of Data?(v96, v97);
  if (v97 >> 60 == 15)
  {

    outlined consume of Data?(v96, v97);
    outlined consume of Data?(v94, v93);
    goto LABEL_112;
  }

  v98 = MEMORY[0x25F84E030](v94, v93, v96, v97);
  outlined consume of Data?(v96, v97);
  outlined consume of Data?(v94, v93);
  outlined consume of Data?(v96, v97);
  outlined consume of Data?(v94, v93);
  if ((v98 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_114:
  v99 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  v100 = *(v22 + v99);
  v101 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__censorSpeech;
  swift_beginAccess();
  v102 = *(v18 + v101);
  if (v100 == 2)
  {
    if (v102 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v102 == 2 || ((v100 ^ v102) & 1) != 0)
  {
    goto LABEL_54;
  }

  v103 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  v104 = *(v22 + v103);
  v105 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__speakerIndependentRecognition;
  swift_beginAccess();
  v106 = *(v18 + v105);
  if (v104 == 2)
  {
    if (v106 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v106 == 2 || ((v104 ^ v106) & 1) != 0)
  {
    goto LABEL_54;
  }

  v107 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  v108 = *(v22 + v107);
  v109 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__saveRequestAudio;
  swift_beginAccess();
  v110 = *(v18 + v109);
  if (v108 == 2)
  {
    if (v110 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v110 == 2 || ((v108 ^ v110) & 1) != 0)
  {
    goto LABEL_54;
  }

  v111 = (v22 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  v114 = (v18 + OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__keyboardIdentifier);
  swift_beginAccess();
  v115 = v114[1];
  if (v113)
  {
    if (!v115)
    {
      goto LABEL_54;
    }

    v116 = v112 == *v114 && v113 == v115;
    if (!v116 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v115)
  {
    goto LABEL_54;
  }

  v117 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  v118 = *(v22 + v117);
  v119 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__enablePartialResults;
  swift_beginAccess();
  v120 = *(v18 + v119);
  if (v118 == 2)
  {
    if (v120 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v120 == 2 || ((v118 ^ v120) & 1) != 0)
  {
    goto LABEL_54;
  }

  v121 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  v122 = *(v22 + v121);
  v123 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__inputOrigin;
  swift_beginAccess();
  v124 = *(v18 + v123);
  if (v122 == 19)
  {
    if (v124 != 19)
    {
      goto LABEL_54;
    }
  }

  else if (v124 == 19 || v122 != v124)
  {
    goto LABEL_54;
  }

  v125 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  v126 = *(v22 + v125);

  v127 = OBJC_IVAR____TtCV16ModalityXObjects23ModalityXBeginDictationP33_CBCEF76E48FCDEC1269AFEAD4BBE13E913_StorageClass__isAutoPunctuationEnabled;
  swift_beginAccess();
  v128 = *(v18 + v127);

  if (v126 == 2)
  {
    if (v128 != 2)
    {
      return 0;
    }
  }

  else if (v128 == 2 || ((v126 ^ v128) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXBeginDictation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation, &protocol conformance descriptor for ModalityXBeginDictation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXBeginDictation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation, &protocol conformance descriptor for ModalityXBeginDictation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXBeginDictation(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXBeginDictation and conformance ModalityXBeginDictation, type metadata accessor for ModalityXBeginDictation, &protocol conformance descriptor for ModalityXBeginDictation);

  return Message.hash(into:)();
}

uint64_t closure #2 in ModalityXCancelRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXCancelRequest(0);
  if (*(a1 + *(result + 24)) != 3)
  {
    lazy protocol witness table accessor for type ModalityXCancellationReason and conformance ModalityXCancellationReason();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXCancelRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest, &protocol conformance descriptor for ModalityXCancelRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXCancelRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest, &protocol conformance descriptor for ModalityXCancelRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXCancelRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXCancelRequest and conformance ModalityXCancelRequest, type metadata accessor for ModalityXCancelRequest, &protocol conformance descriptor for ModalityXCancelRequest);

  return Message.hash(into:)();
}

uint64_t ModalityXAudioFrame.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_200();
        v4 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)(v4);
        break;
      case 2:
        OUTLINED_FUNCTION_135();
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v3);
        break;
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_99();
  v2(0);
  OUTLINED_FUNCTION_161();
  return v1();
}

uint64_t ModalityXAudioFrame.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_124();
  result = closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)(v2, v3, v4, v5, v6, 1);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      OUTLINED_FUNCTION_124();
      dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
    }

    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_124();
    closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)(v8);
    type metadata accessor for ModalityXAudioFrame(0);
    OUTLINED_FUNCTION_135();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXAudioFrame(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame, &protocol conformance descriptor for ModalityXAudioFrame);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXAudioFrame(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame, &protocol conformance descriptor for ModalityXAudioFrame);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXAudioFrame(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXAudioFrame and conformance ModalityXAudioFrame, type metadata accessor for ModalityXAudioFrame, &protocol conformance descriptor for ModalityXAudioFrame);

  return Message.hash(into:)();
}

uint64_t ModalityXASRResult.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        v8 = OUTLINED_FUNCTION_41();
        closure #3 in ModalityXASRResult.decodeMessage<A>(decoder:)(v8, v9, v10, v11);
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_41();
        closure #2 in ModalityXASRResult.decodeMessage<A>(decoder:)(v4, v5, v6, v7);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v3);
        break;
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXASRResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXRecognitionCandidate(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate, &protocol conformance descriptor for ModalityXRecognitionCandidate);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMd, &_s16ModalityXObjects0A21XRecognitionCandidateVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t closure #3 in ModalityXASRResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    outlined init with take of ModalityXSessionMetadata(v12);
    outlined init with take of ModalityXSessionMetadata(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
      outlined init with take of ModalityXSessionMetadata(v16);
      outlined init with take of ModalityXSessionMetadata(v9);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }
  }

  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse, &protocol conformance descriptor for ModalityXFinalSpeechRecognitionResponse);
  v25 = v36;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v25)
  {
    v26 = v24;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v24, v22, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
    v26 = v22;
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v26, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  }

  v28 = v35;
  outlined init with take of ModalityXSessionMetadata(v22);
  if (EnumTagSinglePayload != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v29 = v34;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v24, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMd, &_s16ModalityXObjects0A31XFinalSpeechRecognitionResponseVSgMR);
  v30 = v32;
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v32, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  outlined init with take of ModalityXSessionMetadata(v28);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t ModalityXASRResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_122(v1);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_188();
  v3 = OUTLINED_FUNCTION_7_0();
  result = closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)(v3, v4, v5, v6, v7, 1);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_289();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v9, v10, v11, v12);
    v13 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
    OUTLINED_FUNCTION_290(v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_153();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = OUTLINED_FUNCTION_30();
        closure #3 in ModalityXASRResult.traverse<A>(visitor:)(v15, v16, v17, v18);
      }

      else
      {
        v19 = OUTLINED_FUNCTION_30();
        closure #2 in ModalityXASRResult.traverse<A>(visitor:)(v19, v20, v21, v22);
      }

      OUTLINED_FUNCTION_59();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    type metadata accessor for ModalityXASRResult(0);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_81();
  v7 = OUTLINED_FUNCTION_306();
  result = v8(v7);
  if (*(v6 + *(result + 24) + 8))
  {
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXASRResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXRecognitionCandidate(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRecognitionCandidate and conformance ModalityXRecognitionCandidate, type metadata accessor for ModalityXRecognitionCandidate, &protocol conformance descriptor for ModalityXRecognitionCandidate);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ModalityXASRResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(0);
  MEMORY[0x28223BE20](v8);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v7, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  v9 = type metadata accessor for ModalityXASRResult.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of ModalityXSessionMetadata(v7);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXFinalSpeechRecognitionResponse and conformance ModalityXFinalSpeechRecognitionResponse, type metadata accessor for ModalityXFinalSpeechRecognitionResponse, &protocol conformance descriptor for ModalityXFinalSpeechRecognitionResponse);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    }

    result = outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXASRResult(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult, &protocol conformance descriptor for ModalityXASRResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXASRResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult, &protocol conformance descriptor for ModalityXASRResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXASRResult(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXASRResult and conformance ModalityXASRResult, type metadata accessor for ModalityXASRResult, &protocol conformance descriptor for ModalityXASRResult);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXSpeechProfileRebuildNeeded._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXRequestComplete._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXStreamingSpeechProfileCommit._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXEntityWords._protobuf_nameMap, "words", 5, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXEntities._protobuf_nameMap, "entities", 8, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static ModalityXSpeechProfileSourceData._protobuf_nameMap, "entities_by_category", 20, MEMORY[0x277D21888]);
}

uint64_t closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v1(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

uint64_t closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  result = v2(0);
  if (*(v1 + *(result + 20) + 8))
  {
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileRebuildNeeded(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded, &protocol conformance descriptor for ModalityXSpeechProfileRebuildNeeded);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileRebuildNeeded(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded, &protocol conformance descriptor for ModalityXSpeechProfileRebuildNeeded);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileRebuildNeeded(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileRebuildNeeded and conformance ModalityXSpeechProfileRebuildNeeded, type metadata accessor for ModalityXSpeechProfileRebuildNeeded, &protocol conformance descriptor for ModalityXSpeechProfileRebuildNeeded);

  return Message.hash(into:)();
}

uint64_t ModalityXProcessingError.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXProcessingError.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v8);
        break;
      case 3:
        OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v7);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #3 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_329();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_177(v3);
}

uint64_t closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_99();
  v2(0);
  OUTLINED_FUNCTION_161();
  return v1();
}

uint64_t ModalityXProcessingError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXProcessingError.traverse<A>(visitor:)(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_7_0();
    closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)(v6, v7, v8, v9, v10, 2);
    v11 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXProcessingError.traverse<A>(visitor:)(v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)(v15, v16, v17, v18, v19, 4);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in ModalityXProcessingError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXProcessingError(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXProcessingError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXProcessingError(0);
  if (*(a1 + *(result + 28)) != 3)
  {
    lazy protocol witness table accessor for type ModalityXErrorSource and conformance ModalityXErrorSource();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_81();
  v7 = OUTLINED_FUNCTION_306();
  result = v8(v7);
  if (*(v6 + *(result + 32) + 8))
  {
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXProcessingError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXProcessingError(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);

  return Message.hash(into:)();
}

uint64_t ModalityXCancelRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_289();
      closure #2 in ModalityXCancelRequest.decodeMessage<A>(decoder:)();
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_289();
      closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v5);
    }
  }

  return result;
}

uint64_t closure #2 in ModalityXCancelRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_329();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_177(v3);
}

uint64_t ModalityXCancelRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_93();
  v7 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v7);
  if (!v5)
  {
    v9 = OUTLINED_FUNCTION_30();
    a5(v9);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in ModalityXRequestMitigated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXRequestMitigated(0);
  if (*(a1 + *(result + 24)) != 8)
  {
    lazy protocol witness table accessor for type ModalityXMitigationType and conformance ModalityXMitigationType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRequestMitigated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated, &protocol conformance descriptor for ModalityXRequestMitigated);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRequestMitigated(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated, &protocol conformance descriptor for ModalityXRequestMitigated);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRequestMitigated(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestMitigated and conformance ModalityXRequestMitigated, type metadata accessor for ModalityXRequestMitigated, &protocol conformance descriptor for ModalityXRequestMitigated);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXRequestComplete(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete, &protocol conformance descriptor for ModalityXRequestComplete);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXRequestComplete(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete, &protocol conformance descriptor for ModalityXRequestComplete);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXRequestComplete(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXRequestComplete and conformance ModalityXRequestComplete, type metadata accessor for ModalityXRequestComplete, &protocol conformance descriptor for ModalityXRequestComplete);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v3);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v7);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v5);
        break;
      case 4:
        v6 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v6);
        break;
      case 5:
        v4 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v4);
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_31();
        closure #6 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v8, v9, v10, v11);
        break;
      default:
        continue;
    }
  }
}

void ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v6);
  if (!v5)
  {
    v7 = OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_0();
    closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v12);
    v13 = OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXSessionMetadata.traverse<A>(visitor:)(v13, v14, v15, v16, v17, 4);
    v18 = OUTLINED_FUNCTION_7_0();
    closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v18, v19, v20, v21, v22, 5);
    v23 = OUTLINED_FUNCTION_30();
    closure #6 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v23, v24, v25, v26);
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #6 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXSpeechProfileBuildRequest(0);
  v6 = a1 + *(result + 40);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileBuildRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest, &protocol conformance descriptor for ModalityXSpeechProfileBuildRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileBuildRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest, &protocol conformance descriptor for ModalityXSpeechProfileBuildRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileBuildRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildRequest and conformance ModalityXSpeechProfileBuildRequest, type metadata accessor for ModalityXSpeechProfileBuildRequest, &protocol conformance descriptor for ModalityXSpeechProfileBuildRequest);

  return Message.hash(into:)();
}

uint64_t ModalityXStreamingSpeechProfileBegin.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        v5 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v5);
        break;
      case 2:
        v4 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfile.decodeMessage<A>(decoder:)(v4);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_31();
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v3);
        break;
    }
  }

  return result;
}

uint64_t closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_99();
  v2(0);
  OUTLINED_FUNCTION_161();
  return v1();
}

uint64_t ModalityXStreamingSpeechProfileBegin.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_7_0();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v6);
  if (!v5)
  {
    v8 = OUTLINED_FUNCTION_7_0();
    closure #1 in ModalityXAudioFrame.traverse<A>(visitor:)(v8, v9, v10, v11, v12, 2);
    v13 = OUTLINED_FUNCTION_7_0();
    closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v13);
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  result = v2(0);
  if (*(v1 + *(result + 28) + 8))
  {
    OUTLINED_FUNCTION_106();
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileBegin(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin, &protocol conformance descriptor for ModalityXStreamingSpeechProfileBegin);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileBegin(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin, &protocol conformance descriptor for ModalityXStreamingSpeechProfileBegin);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileBegin(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileBegin and conformance ModalityXStreamingSpeechProfileBegin, type metadata accessor for ModalityXStreamingSpeechProfileBegin, &protocol conformance descriptor for ModalityXStreamingSpeechProfileBegin);

  return Message.hash(into:)();
}

uint64_t ModalityXStreamingSpeechProfileAddData.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v3);
        break;
      case 2:
        v6 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v6);
        break;
      case 3:
        v4 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v4);
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v5);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v1(0);
  type metadata accessor for ModalityXSpeechProfileSourceData(0);
  OUTLINED_FUNCTION_225();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v2, v3, &protocol conformance descriptor for ModalityXSpeechProfileSourceData);
  OUTLINED_FUNCTION_106();
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

void ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v6);
  if (!v5)
  {
    v7 = OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_30();
    closure #3 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(v16, v17, v18, v19, v20, 4);
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[1] = a3;
  v7 = OUTLINED_FUNCTION_140();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_122(v9);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = type metadata accessor for ModalityXSpeechProfileSourceData(0);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_64();
  v15 = a5(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v15 + 24), v12, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMd, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMR);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMd, &_s16ModalityXObjects0A24XSpeechProfileSourceDataVSgMR);
  }

  v17 = OUTLINED_FUNCTION_273();
  outlined init with take of ModalityXSessionMetadata(v17);
  OUTLINED_FUNCTION_225();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v18, v19, &protocol conformance descriptor for ModalityXSpeechProfileSourceData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  OUTLINED_FUNCTION_61();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #3 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModalityXStreamingSpeechProfileAddData(0);
  v6 = a1 + *(result + 28);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData, &protocol conformance descriptor for ModalityXStreamingSpeechProfileAddData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileAddData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData, &protocol conformance descriptor for ModalityXStreamingSpeechProfileAddData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileAddData(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileAddData and conformance ModalityXStreamingSpeechProfileAddData, type metadata accessor for ModalityXStreamingSpeechProfileAddData, &protocol conformance descriptor for ModalityXStreamingSpeechProfileAddData);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_123();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25A1D8780;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = "request_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  type metadata accessor for _NameMap.NameDescription();
  OUTLINED_FUNCTION_54();
  (*(v11 + 104))(v9, v10);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ModalityXSpeechProfileRebuildNeeded.decodeMessage<A>(decoder:)(uint64_t result)
{
  while (1)
  {
    OUTLINED_FUNCTION_125();
    v2 = dispatch thunk of Decoder.nextFieldNumber()();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 1)
    {
      OUTLINED_FUNCTION_292();
      closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v4);
    }
  }

  return v2;
}

uint64_t ModalityXSpeechProfileRebuildNeeded.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_93();
  v5 = OUTLINED_FUNCTION_30();
  result = closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v5);
  if (!v4)
  {
    OUTLINED_FUNCTION_98();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXStreamingSpeechProfileCommit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit, &protocol conformance descriptor for ModalityXStreamingSpeechProfileCommit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXStreamingSpeechProfileCommit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit, &protocol conformance descriptor for ModalityXStreamingSpeechProfileCommit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXStreamingSpeechProfileCommit(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXStreamingSpeechProfileCommit and conformance ModalityXStreamingSpeechProfileCommit, type metadata accessor for ModalityXStreamingSpeechProfileCommit, &protocol conformance descriptor for ModalityXStreamingSpeechProfileCommit);

  return Message.hash(into:)();
}

uint64_t ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)()
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
        closure #1 in ModalityXCancelRequest.decodeMessage<A>(decoder:)(v3);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_31();
        closure #2 in ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)(v7, v8, v9, v10);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_31();
        closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)(v5);
        break;
      case 10:
        v6 = OUTLINED_FUNCTION_31();
        closure #4 in ModalityXSessionMetadata.decodeMessage<A>(decoder:)(v6);
        break;
      case 11:
        v4 = OUTLINED_FUNCTION_31();
        closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  type metadata accessor for ModalityXProcessingError(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in ModalityXAudioFrame.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v1(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t closure #5 in ModalityXSpeechProfileBuildRequest.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v1(0);
  OUTLINED_FUNCTION_114();
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

void ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_7_0();
  closure #1 in ModalityXCancelRequest.traverse<A>(visitor:)(v6);
  if (!v5)
  {
    v7 = OUTLINED_FUNCTION_30();
    closure #2 in ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)(v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_7_0();
    closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)(v11);
    v12 = OUTLINED_FUNCTION_7_0();
    closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(v12, v13, v14, v15, v16, 10);
    v17 = OUTLINED_FUNCTION_7_0();
    closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(v17, v18, v19, v20, v21, 11);
    OUTLINED_FUNCTION_98();
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in ModalityXSpeechProfileBuildResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ModalityXProcessingError(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ModalityXSpeechProfileBuildResponse(0);
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1 + *(v9 + 24), v7, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v7, &_s16ModalityXObjects0A16XProcessingErrorVSgMd, &_s16ModalityXObjects0A16XProcessingErrorVSgMR);
  }

  outlined init with take of ModalityXSessionMetadata(v7);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXProcessingError and conformance ModalityXProcessingError, type metadata accessor for ModalityXProcessingError, &protocol conformance descriptor for ModalityXProcessingError);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t closure #2 in ModalityXAudioFrame.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  result = v2(0);
  if (*(v1 + *(result + 28)) != 2)
  {
    OUTLINED_FUNCTION_124();
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in ModalityXStreamingSpeechProfileAddData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_81();
  v6(0);
  OUTLINED_FUNCTION_354();
  if (!(!v8 & v7))
  {
    v9 = OUTLINED_FUNCTION_273();
    outlined copy of Data._Representation(v9, v10);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    v11 = OUTLINED_FUNCTION_273();
    outlined consume of Data?(v11, v12);
  }
}

void closure #5 in ModalityXSpeechProfileBuildRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_81();
  v6(0);
  OUTLINED_FUNCTION_354();
  if (!(!v8 & v7))
  {
    v9 = OUTLINED_FUNCTION_273();
    outlined copy of Data._Representation(v9, v10);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_106();
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    v11 = OUTLINED_FUNCTION_273();
    outlined consume of Data?(v11, v12);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ModalityXSpeechProfileBuildResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse, &protocol conformance descriptor for ModalityXSpeechProfileBuildResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModalityXSpeechProfileBuildResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse, &protocol conformance descriptor for ModalityXSpeechProfileBuildResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModalityXSpeechProfileBuildResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type ModalityXSpeechProfileBuildResponse and conformance ModalityXSpeechProfileBuildResponse, type metadata accessor for ModalityXSpeechProfileBuildResponse, &protocol conformance descriptor for ModalityXSpeechProfileBuildResponse);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModalityXServerBoundFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B24XRecognitionPhraseTokensV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_248();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_329();
  v15 = type metadata accessor for ModalityXRecognitionToken(v14);
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_159();
  MEMORY[0x28223BE20](v16);
  type metadata accessor for ModalityXRecognitionPhraseTokens(0);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_97();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_309();
  v22 = *(v11 + 16);
  if (v22 == *(v13 + 16) && v22 && v11 != v13)
  {
    v23 = 0;
    OUTLINED_FUNCTION_94();
    v40 = v20;
    v41 = v13 + v24;
    v42 = *(v25 + 72);
    v39 = v10;
    v38 = v22;
    while (1)
    {
      OUTLINED_FUNCTION_216();
      outlined init with copy of ModalityXSessionMetadata(v26 + v42 * v23);
      if (v23 == v22)
      {
        break;
      }

      v43 = v23;
      OUTLINED_FUNCTION_216();
      outlined init with copy of ModalityXSessionMetadata(v41 + v42 * v23);
      v27 = *v10;
      v28 = *v20;
      v29 = *(*v10 + 16);
      if (v29 != *(v28 + 16))
      {
LABEL_18:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_19;
      }

      if (v29 && v27 != v28)
      {
        v30 = 0;
        OUTLINED_FUNCTION_256();
        v32 = v27 + v31;
        v33 = v28 + v31;
        while (v30 < *(v27 + 16))
        {
          v34 = *(v44 + 72) * v30;
          OUTLINED_FUNCTION_214();
          outlined init with copy of ModalityXSessionMetadata(v32 + v34);
          if (v30 >= *(v28 + 16))
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_214();
          outlined init with copy of ModalityXSessionMetadata(v33 + v34);
          OUTLINED_FUNCTION_136();
          v35 = static ModalityXRecognitionToken.== infix(_:_:)();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v35 & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v29 == ++v30)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        break;
      }

LABEL_14:
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v36, MEMORY[0x277D216D0]);
      v10 = v39;
      v20 = v40;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v37)
      {
        v23 = v43 + 1;
        v22 = v38;
        if (v43 + 1 != v38)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B17XRecognitionTokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_312();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ModalityXRecognitionToken(0) - 8;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97();
  MEMORY[0x28223BE20](v7);
  v8 = *(v5 + 16);
  if (v8 == *(v3 + 16) && v8 && v5 != v3)
  {
    OUTLINED_FUNCTION_94();
    v10 = v5 + v9;
    v11 = v3 + v9;
    v13 = *(v12 + 72);
    do
    {
      outlined init with copy of ModalityXSessionMetadata(v10);
      v14 = OUTLINED_FUNCTION_155();
      outlined init with copy of ModalityXSessionMetadata(v14);
      OUTLINED_FUNCTION_123();
      v15 = static ModalityXRecognitionToken.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v15 & 1) == 0)
      {
        break;
      }

      v11 += v13;
      v10 += v13;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_311();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B17XCategoryEntitiesV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_329();
  v71 = type metadata accessor for ModalityXEntities(v16);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_64();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_122(v21);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v22);
  v73 = (&v68 - v23);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A9XEntitiesVSg_ADtMd, &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_101();
  v74 = type metadata accessor for ModalityXCategoryEntities(v25);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_97();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v75 = &v68 - v31;
  v32 = *(v13 + 16);
  if (v32 != *(v15 + 16) || !v32 || v13 == v15)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_94();
  v34 = v13 + v33;
  v35 = v15 + v33;
  v37 = *(v36 + 72);
  v69 = v20;
  v70 = v37;
  v38 = v71;
  v68 = v29;
  while (1)
  {
    v39 = v75;
    outlined init with copy of ModalityXSessionMetadata(v34);
    v40 = OUTLINED_FUNCTION_273();
    outlined init with copy of ModalityXSessionMetadata(v40);
    v41 = *(v74 + 20);
    v42 = *(v29 + v41 + 8);
    if (*&v39[v41 + 8])
    {
      if (!v42)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_69(&v39[v41]);
      v45 = v45 && v43 == v44;
      if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v42)
    {
      goto LABEL_30;
    }

    v46 = *(v74 + 24);
    v47 = *(v72 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(&v75[v46], v12, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v29 + v46, v12 + v47, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    OUTLINED_FUNCTION_139(v12, 1, v38);
    if (!v45)
    {
      break;
    }

    OUTLINED_FUNCTION_139(v12 + v47, 1, v38);
    if (!v45)
    {
      goto LABEL_27;
    }

    v48 = OUTLINED_FUNCTION_287();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v48, v49, &_s16ModalityXObjects0A9XEntitiesVSgMR);
LABEL_22:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v64, MEMORY[0x277D216D0]);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    if (v65)
    {
      v35 += v70;
      v34 += v70;
      if (--v32)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v12, v73, &_s16ModalityXObjects0A9XEntitiesVSgMd, &_s16ModalityXObjects0A9XEntitiesVSgMR);
  OUTLINED_FUNCTION_139(v12 + v47, 1, v38);
  if (v50)
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_27:
    v66 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMd;
    v67 = &_s16ModalityXObjects0A9XEntitiesVSg_ADtMR;
    goto LABEL_29;
  }

  v51 = v69;
  outlined init with take of ModalityXSessionMetadata(v12 + v47);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B12XEntityWordsV_Tt1g5(*v73, *v51, v52, v53, v54, v55, v56, v57, v68, v69);
  if (v58)
  {
    v59 = v71;
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v60, MEMORY[0x277D216D0]);
    v61 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = v59;
    v29 = v68;
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    v62 = OUTLINED_FUNCTION_315();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v62, v63, &_s16ModalityXObjects0A9XEntitiesVSgMR);
    if ((v61 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  v66 = &_s16ModalityXObjects0A9XEntitiesVSgMd;
  v67 = &_s16ModalityXObjects0A9XEntitiesVSgMR;
LABEL_29:
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v12, v66, v67);
LABEL_30:
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_31:
  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1 == a2;
    if (a1 != a2)
    {
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      do
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v8 = *v4 >> 62;
        v10 = *(v5 - 1);
        v9 = *v5;
        v11 = *v5 >> 62;
        if (v3)
        {
          if (v7)
          {
            v12 = 0;
          }

          else
          {
            v12 = v6 == 0xC000000000000000;
          }

          v14 = 0;
          v13 = v12 && *v5 >> 62 == 3;
          if (v13 && !v10 && v9 == 0xC000000000000000)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v14 = 0;
          switch(v8)
          {
            case 0uLL:
              v14 = BYTE6(v6);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v7), v7))
              {
                goto LABEL_90;
              }

              v14 = HIDWORD(v7) - v7;
              break;
            case 2uLL:
              v16 = *(v7 + 16);
              v15 = *(v7 + 24);
              v17 = __OFSUB__(v15, v16);
              v14 = v15 - v16;
              if (!v17)
              {
                break;
              }

              goto LABEL_91;
            case 3uLL:
              break;
            default:
              JUMPOUT(0);
          }
        }

        switch(v11)
        {
          case 1uLL:
            LODWORD(v18) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
            }

            v18 = v18;
LABEL_32:
            if (v14 != v18)
            {
              return 0;
            }

            if (v14 < 1)
            {
              goto LABEL_85;
            }

            break;
          case 2uLL:
            v20 = *(v10 + 16);
            v19 = *(v10 + 24);
            v17 = __OFSUB__(v19, v20);
            v18 = v19 - v20;
            if (!v17)
            {
              goto LABEL_32;
            }

            goto LABEL_89;
          case 3uLL:
            if (v14)
            {
              return 0;
            }

            goto LABEL_85;
          default:
            v18 = BYTE6(v9);
            goto LABEL_32;
        }

        v21 = v10 >> 32;
        switch(v8)
        {
          case 1:
            if (v7 >> 32 < v7)
            {
              goto LABEL_92;
            }

            v47 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v47, v48);
            v49 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v49, v50);
            v51 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v51, v52);
            v53 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v53, v54);
            v55 = OUTLINED_FUNCTION_125();
            outlined copy of Data._Representation(v55, v56);
            v39 = __DataStorage._bytes.getter();
            if (!v39)
            {
              goto LABEL_59;
            }

            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v57))
            {
              goto LABEL_95;
            }

            v39 += v7 - v57;
LABEL_59:
            MEMORY[0x25F84E010]();
            closure #1 in static Data.== infix(_:_:)(__s1, v39, v10, v9);
            v58 = OUTLINED_FUNCTION_155();
            outlined consume of Data._Representation(v58, v59);
            v60 = OUTLINED_FUNCTION_155();
            outlined consume of Data._Representation(v60, v61);
            v62 = OUTLINED_FUNCTION_125();
            outlined consume of Data._Representation(v62, v63);
            v64 = __s1[0];
            v65 = OUTLINED_FUNCTION_155();
            outlined consume of Data._Representation(v65, v66);
            v67 = OUTLINED_FUNCTION_155();
            outlined consume of Data._Representation(v67, v68);
            if ((v64 & 1) == 0)
            {
              return 0;
            }

            break;
          case 2:
            v28 = *(v7 + 16);
            v97 = *(v7 + 24);
            v29 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v29, v30);
            v31 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v31, v32);
            v33 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v33, v34);
            v35 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v35, v36);
            v37 = OUTLINED_FUNCTION_125();
            outlined copy of Data._Representation(v37, v38);
            v39 = __DataStorage._bytes.getter();
            if (!v39)
            {
              goto LABEL_44;
            }

            v40 = __DataStorage._offset.getter();
            if (__OFSUB__(v28, v40))
            {
              goto LABEL_94;
            }

            v39 += v28 - v40;
LABEL_44:
            if (!__OFSUB__(v97, v28))
            {
              goto LABEL_59;
            }

            goto LABEL_93;
          case 3:
            memset(__s1, 0, 14);
            if (v11 == 2)
            {
              v69 = *(v10 + 16);
              v100 = *(v10 + 24);
              v70 = OUTLINED_FUNCTION_155();
              outlined copy of Data._Representation(v70, v71);
              v72 = OUTLINED_FUNCTION_125();
              outlined copy of Data._Representation(v72, v73);
              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v75 = __DataStorage._offset.getter();
                if (__OFSUB__(v69, v75))
                {
                  goto LABEL_100;
                }

                v74 += v69 - v75;
              }

              v17 = __OFSUB__(v100, v69);
              v76 = &v100[-v69];
              if (v17)
              {
                goto LABEL_99;
              }

              v77 = MEMORY[0x25F84E010]();
              if (!v74)
              {
                goto LABEL_107;
              }

LABEL_72:
              if (v77 >= v76)
              {
                v84 = v76;
              }

              else
              {
                v84 = v77;
              }

              v85 = v74;
LABEL_84:
              v87 = memcmp(__s1, v85, v84);
              v88 = OUTLINED_FUNCTION_125();
              outlined consume of Data._Representation(v88, v89);
              v90 = OUTLINED_FUNCTION_155();
              outlined consume of Data._Representation(v90, v91);
              if (v87)
              {
                return 0;
              }

              break;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_96;
              }

              v41 = OUTLINED_FUNCTION_155();
              outlined copy of Data._Representation(v41, v42);
              v43 = OUTLINED_FUNCTION_125();
              outlined copy of Data._Representation(v43, v44);
              v45 = __DataStorage._bytes.getter();
              if (v45)
              {
                v98 = v45;
                v46 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v46))
                {
                  goto LABEL_103;
                }

                v99 = &v98[v10 - v46];
              }

              else
              {
                v99 = 0;
              }

              v86 = MEMORY[0x25F84E010]();
              v85 = v99;
              if (!v99)
              {
                goto LABEL_105;
              }

LABEL_81:
              if (v86 >= v21 - v10)
              {
                v84 = v21 - v10;
              }

              else
              {
                v84 = v86;
              }

              goto LABEL_84;
            }

LABEL_57:
            __s2 = v10;
            v103 = v9;
            v104 = BYTE2(v9);
            v105 = BYTE3(v9);
            v106 = BYTE4(v9);
            v107 = BYTE5(v9);
            if (memcmp(__s1, &__s2, BYTE6(v9)))
            {
              return 0;
            }

            break;
          default:
            LOWORD(__s1[0]) = *(v4 - 1);
            BYTE2(__s1[0]) = BYTE2(v7);
            BYTE3(__s1[0]) = BYTE3(v7);
            BYTE4(__s1[0]) = BYTE4(v7);
            BYTE5(__s1[0]) = BYTE5(v7);
            BYTE6(__s1[0]) = BYTE6(v7);
            HIBYTE(__s1[0]) = HIBYTE(v7);
            LOWORD(__s1[1]) = v6;
            BYTE2(__s1[1]) = BYTE2(v6);
            BYTE3(__s1[1]) = BYTE3(v6);
            BYTE4(__s1[1]) = BYTE4(v6);
            BYTE5(__s1[1]) = BYTE5(v6);
            if (!v11)
            {
              goto LABEL_57;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_97;
              }

              v22 = OUTLINED_FUNCTION_155();
              outlined copy of Data._Representation(v22, v23);
              v24 = OUTLINED_FUNCTION_125();
              outlined copy of Data._Representation(v24, v25);
              v26 = __DataStorage._bytes.getter();
              if (v26)
              {
                v95 = v26;
                v27 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v27))
                {
                  goto LABEL_102;
                }

                v96 = &v95[v10 - v27];
              }

              else
              {
                v96 = 0;
              }

              v86 = MEMORY[0x25F84E010]();
              v85 = v96;
              if (!v96)
              {
                goto LABEL_106;
              }

              goto LABEL_81;
            }

            v78 = *(v10 + 16);
            v101 = *(v10 + 24);
            v79 = OUTLINED_FUNCTION_155();
            outlined copy of Data._Representation(v79, v80);
            v81 = OUTLINED_FUNCTION_125();
            outlined copy of Data._Representation(v81, v82);
            v74 = __DataStorage._bytes.getter();
            if (v74)
            {
              v83 = __DataStorage._offset.getter();
              if (__OFSUB__(v78, v83))
              {
                goto LABEL_101;
              }

              v74 += v78 - v83;
            }

            v17 = __OFSUB__(v101, v78);
            v76 = &v101[-v78];
            if (v17)
            {
              goto LABEL_98;
            }

            v77 = MEMORY[0x25F84E010]();
            if (!v74)
            {
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              v93 = OUTLINED_FUNCTION_155();
              outlined consume of Data._Representation(v93, v94);

              __break(1u);
              JUMPOUT(0x25A1A5824);
            }

            goto LABEL_72;
        }

LABEL_85:
        v4 += 2;
        v5 += 2;
        v3 = --v2 == 0;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B13XItnAlignmentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  type metadata accessor for ModalityXItnAlignment(v5);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  if (v8 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_255();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata(v9);
      v10 = OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata(v10);
      OUTLINED_FUNCTION_85();
      if (v12)
      {
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v13)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85();
      if (v15)
      {
        if (!v14)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v16)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85();
      if (v18)
      {
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v19)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_85();
      if (v21)
      {
        if (!v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v22)
        {
LABEL_27:
          OUTLINED_FUNCTION_201();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      v23 = type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v24, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_136();
      dispatch thunk of static Equatable.== infix(_:_:)();
      OUTLINED_FUNCTION_244();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v23)
      {
        OUTLINED_FUNCTION_116();
        if (!v8)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B18XRecognitionChoiceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  type metadata accessor for ModalityXRecognitionChoice(v5);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_300();
  if (v17 && v4 && v3 != v2)
  {
    v8 = 0;
    OUTLINED_FUNCTION_94();
    v10 = v3 + v9;
    v11 = v2 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      outlined init with copy of ModalityXSessionMetadata(v10 + v13 * v8);
      if (v8 == v4)
      {
        break;
      }

      outlined init with copy of ModalityXSessionMetadata(v11 + v13 * v8);
      OUTLINED_FUNCTION_305();
      if (!v17)
      {
        goto LABEL_26;
      }

      if (v14)
      {
        v17 = v15 == v16;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (v16 + 32);
        while (v14)
        {
          if (*v18 != *v19)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_310();
          if (v17)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

LABEL_18:
      OUTLINED_FUNCTION_85();
      if (v21)
      {
        if (!v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v22)
        {
LABEL_26:
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          goto LABEL_27;
        }
      }

      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      v24 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v23, MEMORY[0x277D216D0]);
      v25 = OUTLINED_FUNCTION_360(v24);
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      OUTLINED_FUNCTION_166();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if ((v25 & 1) != 0 && ++v8 != v4)
      {
        continue;
      }

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B21XRepeatedItnAlignmentV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_248();
  v12 = v11;
  v14 = v13;
  type metadata accessor for ModalityXItnAlignment(0);
  OUTLINED_FUNCTION_317();
  v62 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_253();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_332();
  v19 = type metadata accessor for ModalityXRepeatedItnAlignment(v18);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v21);
  v23 = (&v53 - v22);
  v24 = *(v14 + 16);
  if (v24 == *(v12 + 16) && v24 && v14 != v12)
  {
    v25 = 0;
    OUTLINED_FUNCTION_94();
    v27 = v14 + v26;
    v57 = v10;
    v58 = v12 + v26;
    v29 = *(v28 + 72);
    v55 = v19;
    v56 = v23;
    v59 = v30;
    v53 = v29;
    v54 = v27;
    while (1)
    {
      v31 = v29 * v25;
      outlined init with copy of ModalityXSessionMetadata(v27 + v29 * v25);
      if (v25 == v59)
      {
        break;
      }

      outlined init with copy of ModalityXSessionMetadata(v58 + v31);
      v32 = *v23;
      OUTLINED_FUNCTION_330();
      if (!v33)
      {
LABEL_36:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_37;
      }

      if (v23 && v32 != v10)
      {
        v34 = 0;
        OUTLINED_FUNCTION_256();
        v60 = v10 + v35;
        v61 = v32 + v35;
        while (v34 < *(v32 + 16))
        {
          v36 = *(v62 + 72) * v34;
          OUTLINED_FUNCTION_235();
          outlined init with copy of ModalityXSessionMetadata(v61 + v36);
          if (v34 >= *(v10 + 16))
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_235();
          outlined init with copy of ModalityXSessionMetadata(v60 + v36);
          OUTLINED_FUNCTION_118();
          if (v38)
          {
            if (!v37)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v39)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118();
          if (v41)
          {
            if (!v40)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v42)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118();
          if (v44)
          {
            if (!v43)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v45)
            {
              goto LABEL_35;
            }
          }

          OUTLINED_FUNCTION_118();
          if (v47)
          {
            if (!v46)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v48)
            {
LABEL_35:
              OUTLINED_FUNCTION_201();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              goto LABEL_36;
            }
          }

          v49 = type metadata accessor for UnknownStorage();
          OUTLINED_FUNCTION_0_0();
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v50, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_130();
          dispatch thunk of static Equatable.== infix(_:_:)();
          OUTLINED_FUNCTION_244();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (v23 == ++v34)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_31:
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v51, MEMORY[0x277D216D0]);
      v23 = v56;
      v10 = v57;
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v52)
      {
        ++v25;
        v29 = v53;
        v27 = v54;
        if (v25 != v59)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B12XEntityWordsV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_248();
  v15 = v14;
  v17 = v16;
  type metadata accessor for ModalityXWordWithPronunciations(0);
  OUTLINED_FUNCTION_317();
  v63 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_253();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_332();
  v22 = type metadata accessor for ModalityXEntityWords(v21);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_309();
  v25 = *(v17 + 16);
  if (v25 == *(v15 + 16) && v25 && v17 != v15)
  {
    OUTLINED_FUNCTION_94();
    v26 = 0;
    v58 = v10;
    v59 = v15 + v27;
    v29 = *(v28 + 72);
    v56 = v25;
    v57 = v22;
    v55 = v29;
    while (1)
    {
      v30 = v29 * v26;
      OUTLINED_FUNCTION_232();
      outlined init with copy of ModalityXSessionMetadata(v31 + v30);
      if (v26 == v25)
      {
        break;
      }

      v60 = v26;
      OUTLINED_FUNCTION_232();
      outlined init with copy of ModalityXSessionMetadata(v59 + v30);
      v32 = *v13;
      OUTLINED_FUNCTION_330();
      if (!v41)
      {
LABEL_43:
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        OUTLINED_FUNCTION_343();
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
        goto LABEL_44;
      }

      if (v22 && v32 != v10)
      {
        v33 = 0;
        OUTLINED_FUNCTION_256();
        v61 = v10 + v34;
        v62 = v32 + v34;
        while (v33 < *(v32 + 16))
        {
          v35 = *(v63 + 72) * v33;
          OUTLINED_FUNCTION_231();
          outlined init with copy of ModalityXSessionMetadata(v62 + v35);
          if (v33 >= *(v10 + 16))
          {
            goto LABEL_46;
          }

          OUTLINED_FUNCTION_231();
          outlined init with copy of ModalityXSessionMetadata(v61 + v35);
          OUTLINED_FUNCTION_347();
          if (v38)
          {
            if (!v36 || ((OUTLINED_FUNCTION_69(v37), v41) ? (v41 = v39 == v40) : (v41 = 0), !v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
            {
LABEL_42:
              OUTLINED_FUNCTION_228();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
              goto LABEL_43;
            }
          }

          else if (v36)
          {
            goto LABEL_42;
          }

          if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v12, *v11) & 1) == 0)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_118();
          if (v43)
          {
            if (!v42)
            {
              goto LABEL_42;
            }
          }

          else
          {
            OUTLINED_FUNCTION_53();
            if (v44)
            {
              goto LABEL_42;
            }
          }

          OUTLINED_FUNCTION_347();
          if (v47)
          {
            if (!v45)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_69(v46);
            v50 = v41 && v48 == v49;
            if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else if (v45)
          {
            goto LABEL_42;
          }

          v51 = type metadata accessor for UnknownStorage();
          OUTLINED_FUNCTION_0_0();
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v52, MEMORY[0x277D216D0]);
          dispatch thunk of static Equatable.== infix(_:_:)();
          OUTLINED_FUNCTION_243();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          if ((v51 & 1) == 0)
          {
            goto LABEL_43;
          }

          if (v22 == ++v33)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        break;
      }

LABEL_38:
      v22 = v57;
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v53, MEMORY[0x277D216D0]);
      v10 = v58;
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v54)
      {
        v26 = v60 + 1;
        v25 = v56;
        v29 = v55;
        if (v60 + 1 != v56)
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B23XWordWithPronunciationsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v7 = OUTLINED_FUNCTION_156();
  type metadata accessor for ModalityXWordWithPronunciations(v7);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_100();
  if (v17 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_255();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata(v10);
      v11 = OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata(v11);
      OUTLINED_FUNCTION_115();
      if (v14)
      {
        if (!v12 || ((OUTLINED_FUNCTION_69(v13), v17) ? (v17 = v15 == v16) : (v17 = 0), !v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
LABEL_34:
          OUTLINED_FUNCTION_228();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          OUTLINED_FUNCTION_155();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      else if (v12)
      {
        goto LABEL_34;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v4, *v3) & 1) == 0)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_85();
      if (v19)
      {
        if (!v18)
        {
          goto LABEL_34;
        }
      }

      else
      {
        OUTLINED_FUNCTION_53();
        if (v20)
        {
          goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_115();
      if (v23)
      {
        if (!v21)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_69(v22);
        v26 = v17 && v24 == v25;
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        goto LABEL_34;
      }

      v27 = type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      v29 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v28, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_359(v29);
      OUTLINED_FUNCTION_243();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v27)
      {
        OUTLINED_FUNCTION_116();
        if (!v17)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B25XSpeechRecognitionFeatureV_Tt1g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_248();
  v5 = OUTLINED_FUNCTION_156();
  type metadata accessor for ModalityXSpeechRecognitionFeature(v5);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  if (v15 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_255();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_130();
      outlined init with copy of ModalityXSessionMetadata(v8);
      v9 = OUTLINED_FUNCTION_298();
      outlined init with copy of ModalityXSessionMetadata(v9);
      OUTLINED_FUNCTION_115();
      if (v12)
      {
        if (!v10 || ((OUTLINED_FUNCTION_69(v11), v15) ? (v15 = v13 == v14) : (v15 = 0), !v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
LABEL_24:
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
          break;
        }
      }

      else if (v10)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_85();
      if (v17)
      {
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_344();
        if (v18)
        {
          goto LABEL_24;
        }
      }

      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_0_0();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v19, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_136();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      if (v20)
      {
        OUTLINED_FUNCTION_116();
        if (!v15)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_247();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ16ModalityXObjects0B30XAudioAnalyticsAcousticFeatureV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v17 = v16;
  v19 = v18;
  type metadata accessor for ModalityXAcousticFeature(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_43();
  v67 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
  OUTLINED_FUNCTION_122(v22);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_158();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_102();
  v26 = type metadata accessor for ModalityXAudioAnalyticsAcousticFeature(v25);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_97();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_309();
  v32 = *(v19 + 16);
  if (v32 != *(v17 + 16) || !v32 || v19 == v17)
  {
LABEL_42:
    OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_247();
    return;
  }

  v33 = 0;
  OUTLINED_FUNCTION_94();
  v61 = v13;
  v62 = v17 + v34;
  v63 = *(v35 + 72);
  v64 = v19 + v34;
  v65 = v36;
  while (1)
  {
    outlined init with copy of ModalityXSessionMetadata(v64 + v63 * v33);
    if (v33 == v65)
    {
      goto LABEL_46;
    }

    outlined init with copy of ModalityXSessionMetadata(v62 + v63 * v33);
    OUTLINED_FUNCTION_80();
    if (v39)
    {
      if (!v37)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_69(v38);
      v42 = v42 && v40 == v41;
      if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v37)
    {
      goto LABEL_40;
    }

    v43 = *(v26 + 24);
    v44 = *(v66 + 48);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v15 + v43, v13, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v30 + v43, v13 + v44, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    OUTLINED_FUNCTION_38(v13);
    if (v42)
    {
      OUTLINED_FUNCTION_38(v13 + v44);
      if (v42)
      {
        outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_58();
      goto LABEL_44;
    }

    v45 = OUTLINED_FUNCTION_166();
    outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v45, v46, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    OUTLINED_FUNCTION_38(v13 + v44);
    if (v47)
    {
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_44:
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMd, &_s16ModalityXObjects0A16XAcousticFeatureVSg_ADtMR);
      goto LABEL_41;
    }

    outlined init with take of ModalityXSessionMetadata(v13 + v44);
    OUTLINED_FUNCTION_305();
    if (!v42)
    {
      goto LABEL_39;
    }

    if (v48 && v49 != v50)
    {
      break;
    }

LABEL_30:
    v53 = *(v12 + 24);
    v54 = *(v14 + v53 + 4);
    v55 = *(v67 + v53 + 4);
    if ((v54 & 1) == 0)
    {
      OUTLINED_FUNCTION_344();
      if ((v56 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_39:
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v13, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
LABEL_40:
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
LABEL_41:
      OUTLINED_FUNCTION_58();
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
      goto LABEL_42;
    }

    if (!v55)
    {
      goto LABEL_39;
    }

LABEL_34:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v57, MEMORY[0x277D216D0]);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = v61;
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v61, &_s16ModalityXObjects0A16XAcousticFeatureVSgMd, &_s16ModalityXObjects0A16XAcousticFeatureVSgMR);
    if ((v58 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_35:
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, v59, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_343();
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
    if ((v60 & 1) != 0 && ++v33 != v65)
    {
      continue;
    }

    goto LABEL_42;
  }

  v51 = (v49 + 32);
  v52 = (v50 + 32);
  while (v48)
  {
    if (*v51 != *v52)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_310();
    if (v42)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_356(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  v5 = OUTLINED_FUNCTION_131();
  v6(v5);
  return v4;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25A1A9074()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXSessionMetadata.dataSharingOptInStatus.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A90C8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSessionMetadata.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A90F4()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXSpeechProfile.moreDataFollows.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A9140()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfile.languageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A916C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9208()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginRequest.enablePartialResults.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A9254()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginRequest.isPromptedDictation.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A92A0()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginRequest.isPromptedConfirmation.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A92EC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.foregroundAppID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25A1A9318()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginRequest.isAutoPunctuationEnabled.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A9364()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginRequest.inlineLmeItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A93F8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.requestID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25A1A9424()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.fieldID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9450()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.fieldLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A947C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.applicationName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A94A8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.applicationVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A94E4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.selectedText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9510()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.prefixText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A953C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.postfixText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9568()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.inlineLmeItems.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_25A1A9594()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.languages.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_25A1A95C0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.region.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A95EC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.activationToken.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9618()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginDictation.censorSpeech.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A9664()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginDictation.speakerIndependentRecognition.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A96B0()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginDictation.saveRequestAudio.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A96FC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXBeginDictation.keyboardIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9728()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginDictation.enablePartialResults.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A977C()
{
  OUTLINED_FUNCTION_132();
  v1 = ModalityXBeginDictation.isAutoPunctuationEnabled.getter(v0);
  return OUTLINED_FUNCTION_193(v1);
}

uint64_t sub_25A1A97C8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXCancelRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A97FC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXAudioFrame.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9828()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXAudioFrame.lastFrame.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9874()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXASRResult.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9990()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileRebuildNeeded.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A99BC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.code.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25A1A9A0C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.errorDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9A40()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXProcessingError.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9A6C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRequestMitigated.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9AA0()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXRequestComplete.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9ACC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9B60()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9B8C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.phoneSetVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9BB8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.existingLanguageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9BE4()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildRequest.existingPronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C10()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C3C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C68()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileBegin.phoneSetVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9C94()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D28()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.existingLanguageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D54()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileAddData.existingPronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9D80()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXStreamingSpeechProfileCommit.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9DAC()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9E40()
{
  OUTLINED_FUNCTION_132();
  v0 = ModalityXSpeechProfileBuildResponse.incompleteProfile.getter();
  return OUTLINED_FUNCTION_193(v0);
}

uint64_t sub_25A1A9E8C()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.languageProfile.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25A1A9EB8()
{
  OUTLINED_FUNCTION_132();
  result = ModalityXSpeechProfileBuildResponse.pronunciationCache.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t type metadata completion function for ModalityXServerBoundFrame.OneOf_Payload(uint64_t a1)
{
  result = type metadata accessor for ModalityXSessionMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModalityXBeginRequest(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ModalityXAudioFrame(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ModalityXSpeechProfile(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ModalityXCancelRequest(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ModalityXBeginDictation(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ModalityXSpeechProfileBuildRequest(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ModalityXStreamingSpeechProfileBegin(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ModalityXStreamingSpeechProfileAddData(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ModalityXStreamingSpeechProfileCommit(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_168();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_318();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    v4 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_168();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void type metadata completion function for ModalityXServerBoundFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_345();
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(v5, v6, v7);
  if (v9 <= 0x3F)
  {
    v21 = v8;
    v10 = type metadata accessor for UnknownStorage();
    if (v11 <= 0x3F)
    {
      OUTLINED_FUNCTION_157(v10, v11, v12, v13, v14, v15, v16, v17, v18, *v19, *&v19[4], 0, v20, v21, v22);
      OUTLINED_FUNCTION_352();
    }
  }
}

void type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata completion function for ModalityXClientBoundFrame.OneOf_Payload(uint64_t a1)
{
  result = type metadata accessor for ModalityXRequestComplete(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModalityXProcessingError(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ModalityXASRResult(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ModalityXSpeechProfileRebuildNeeded(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ModalityXRequestMitigated(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ModalityXSpeechProfileBuildResponse(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25A1AA384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_318();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
    OUTLINED_FUNCTION_168();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_50(v4 + *(a3 + 32));
    }

    v7 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_25A1AA474()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A11XDeviceInfoVSgMd, &_s16ModalityXObjects0A11XDeviceInfoVSgMR);
    OUTLINED_FUNCTION_168();
    if (*(v3 + 84) != v1)
    {
      OUTLINED_FUNCTION_185(*(v0 + 32));
      return;
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void type metadata completion function for ModalityXSessionMetadata(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXDeviceInfo?, type metadata accessor for ModalityXDeviceInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ModalityXUserInterfaceIdiom?, &type metadata for ModalityXUserInterfaceIdiom, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25A1AA6B0(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_265();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 2)
    {
      v12 = ((v11 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v12 = -2;
    }

    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

void sub_25A1AA77C()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }
}

uint64_t __swift_get_extra_inhabitant_index_249Tm(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_331(*(v3 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_250Tm()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for UnknownStorage();
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

uint64_t type metadata completion function for ModalityXBeginRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_345();
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    v17 = result;
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_157(result, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      return OUTLINED_FUNCTION_352();
    }
  }

  return result;
}

void type metadata completion function for ModalityXSpeechProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  OUTLINED_FUNCTION_345();
  type metadata accessor for UnknownStorage();
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_135();
    type metadata accessor for Bool?(v10, v11, v12, v13);
    if (v14 <= 0x3F)
    {
      v15 = OUTLINED_FUNCTION_92();
      type metadata accessor for Bool?(v15, a6, a7, v16);
      if (v17 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_352();
      }
    }
  }
}

uint64_t sub_25A1AAB5C(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_331(*a1);
  }

  type metadata accessor for UnknownStorage();
  v4 = OUTLINED_FUNCTION_264();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_25A1AABE4()
{
  OUTLINED_FUNCTION_191();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_254();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void type metadata completion function for ModalityXAudioFrame(uint64_t a1)
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25A1AAD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_318();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_168();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_50(v4 + *(a3 + 24));
    }

    v7 = OUTLINED_FUNCTION_264();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_25A1AAE78()
{
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMd, &_s16ModalityXObjects0A10XASRResultV13OneOf_PayloadOSgMR);
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    type metadata accessor for UnknownStorage();
    OUTLINED_FUNCTION_168();
    if (*(v3 + 84) != v1)
    {
      OUTLINED_FUNCTION_185(*(v0 + 24));
      return;
    }

    OUTLINED_FUNCTION_266();
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void type metadata completion function for ModalityXASRResult(uint64_t a1)
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXASRResult.OneOf_Payload?, type metadata accessor for ModalityXASRResult.OneOf_Payload);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for ModalityXASRResult.OneOf_Payload(uint64_t a1)
{
  result = type metadata accessor for ModalityXRecognitionCandidate(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModalityXFinalSpeechRecognitionResponse(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ModalityXStreamingSpeechProfileCommit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_345();
  v3 = type metadata accessor for UnknownStorage();
  if (v4 <= 0x3F)
  {
    v20 = v3;
    v5 = OUTLINED_FUNCTION_92();
    type metadata accessor for Bool?(v5, v6, v7, v8);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_157(v9, v10, v11, v12, v13, v14, v15, v16, v17, *v18, *&v18[4], 0, v19, v20, v21);
      OUTLINED_FUNCTION_352();
    }
  }
}

uint64_t sub_25A1AB144(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 24));
  }

  v7 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25A1AB1E8()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for UnknownStorage();
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

uint64_t type metadata completion function for ModalityXProcessingError(uint64_t a1)
{
  v1 = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for ModalityXErrorSource?, &type metadata for ModalityXErrorSource, MEMORY[0x277D83D88]);
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

  return v1;
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ModalityXSpeechProfileBuildRequest(uint64_t a1)
{
  v1 = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXSpeechProfileSourceData?, type metadata accessor for ModalityXSpeechProfileSourceData);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void type metadata completion function for ModalityXStreamingSpeechProfileBegin(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for ModalityXStreamingSpeechProfileAddData(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXSpeechProfileSourceData?, type metadata accessor for ModalityXSpeechProfileSourceData);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_50(v3 + *(a3 + 20));
  }

  v7 = OUTLINED_FUNCTION_265();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_268Tm()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v2 + 84) == v1)
  {
    v3 = OUTLINED_FUNCTION_162();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_183();
    *(v7 + 8) = v0;
  }
}

uint64_t __swift_get_extra_inhabitant_index_339Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_191();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_318();
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_183();
      return OUTLINED_FUNCTION_50(v9);
    }

    v11 = OUTLINED_FUNCTION_130();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v7 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void __swift_store_extra_inhabitant_index_340Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_191();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_168();
  if (*(v6 + 84) == a3)
  {
    OUTLINED_FUNCTION_172();
  }

  else
  {
    if (a3 == 2147483646)
    {
      OUTLINED_FUNCTION_183();
      *(v7 + 8) = v4;
      return;
    }

    v8 = OUTLINED_FUNCTION_130();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  }

  OUTLINED_FUNCTION_254();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void type metadata completion function for ModalityXSpeechProfileBuildResponse(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXProcessingError?, type metadata accessor for ModalityXProcessingError);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ModalityXBeginRequest._StorageClass(uint64_t a1)
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXAudioMetadata?, type metadata accessor for ModalityXAudioMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for ModalityXBeginDictation._StorageClass(uint64_t a1)
{
  type metadata accessor for ModalityXServerBoundFrame.OneOf_Payload?(319, &lazy cache variable for type metadata for ModalityXAudioMetadata?, type metadata accessor for ModalityXAudioMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_356(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  v5 = OUTLINED_FUNCTION_131();
  v6(v5);
  return v4;
}

unint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x25A1AC04CLL);
      }

      result = 1;
      break;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      break;
  }

  *a1 = result & 1;
  return result;
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x25F84E010]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_54();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for ModalityXBeginDictation(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_32@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for ModalityXBeginDictation(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{
  *(v3 + 24) = a1;

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(v4, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  *v2 = 0;
  v2[1] = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_63()
{
  outlined copy of Data?(v1, v0);
  outlined copy of Data?(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v2 + 32) = v3;
  return *(v1 + v3 + 8);
}

void *OUTLINED_FUNCTION_71(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(v4, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_90(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_108()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_119()
{
  type metadata accessor for ModalityXBeginDictation(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_120()
{
  type metadata accessor for ModalityXBeginDictation._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_141(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_143()
{
  type metadata accessor for ModalityXBeginRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_160()
{
  type metadata accessor for ModalityXBeginRequest(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_171(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_173@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[3] = result;
  *v3 = a2;
  v3[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1)
{

  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_246()
{

  return outlined init with take of ModalityXSessionMetadata(v0);
}

uint64_t OUTLINED_FUNCTION_249@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  result = outlined consume of Data?(*v4, *(v4 + 8));
  *v4 = v3;
  *(v4 + 8) = v1;
  return result;
}

void OUTLINED_FUNCTION_250(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_258(char a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *(v2 + 12) = a1;
}

uint64_t OUTLINED_FUNCTION_259(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_262(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_263(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_269()
{
  *(v0 + v1[5]) = 8;
  *(v0 + v1[6]) = 8;
  *(v0 + v1[7]) = 2;

  return type metadata accessor for ModalityXVoiceTriggerInfo(0);
}

void OUTLINED_FUNCTION_275(char a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *v2 = a1;
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_281(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_286()
{

  return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return outlined init with take of ModalityXSessionMetadata(v0);
}

uint64_t OUTLINED_FUNCTION_304()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t a1)
{
  v3 = *(a1 + 24);
  *(v2 + 40) = v3;
  return v1 + v3;
}

uint64_t OUTLINED_FUNCTION_323()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_325(uint64_t a1)
{

  return outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_326(uint64_t a1, ...)
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_327@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  v4 = *(v1 + a1 + 8);

  return outlined consume of Data?(v3, v4);
}

uint64_t OUTLINED_FUNCTION_331@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void OUTLINED_FUNCTION_339(char a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *(v2 + 84) = a1;
}

uint64_t OUTLINED_FUNCTION_356(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_359(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_360(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_361()
{
}

uint64_t ModalityXRecognitionCandidate.init()()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  UnknownStorage.init()();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    OUTLINED_FUNCTION_136();
    swift_once();
  }

  *(v4 + v5) = *v0;
}

uint64_t static ModalityXRecognitionCandidate.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_87();
  v9 = *(v8(v7) + 20);
  v10 = *(v5 + v9);
  v11 = *(v4 + v9);
  if (v10 != v11)
  {

    v12 = a4(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_0_1();
  v15 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(v13, v14, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_96(v15) & 1;
}

uint64_t ModalityXRecognitionToken.tokenText.getter()
{
  return ModalityXRecognitionToken.tokenText.getter();
}

{
  v1 = OUTLINED_FUNCTION_176();
  if (*(v0 + *(v2(v1) + 20) + 8))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t key path setter for ModalityXRecognitionToken.tokenText : ModalityXRecognitionToken(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ModalityXRecognitionToken.tokenText.setter(v1, v2);
}

uint64_t ModalityXRecognitionToken.tokenText.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXRecognitionToken(v2);
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

uint64_t ModalityXRecognitionToken.startMilliSeconds.getter()
{
  return ModalityXRecognitionToken.startMilliSeconds.getter();
}

{
  v0 = OUTLINED_FUNCTION_176();
  v1(v0);
  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void ModalityXRecognitionToken.startMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXRecognitionToken(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 24));
}

uint64_t (*ModalityXRecognitionToken.startMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionToken(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 24));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXRecognitionToken.endMilliSeconds.getter()
{
  return ModalityXRecognitionToken.endMilliSeconds.getter();
}

{
  v0 = OUTLINED_FUNCTION_176();
  v1(v0);
  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void ModalityXRecognitionToken.endMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXRecognitionToken(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 28));
}

uint64_t (*ModalityXRecognitionToken.endMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionToken(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 28));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXRecognitionToken.silenceStartMilliSeconds.getter()
{
  return ModalityXRecognitionToken.silenceStartMilliSeconds.getter();
}

{
  v0 = OUTLINED_FUNCTION_176();
  v1(v0);
  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void ModalityXRecognitionToken.silenceStartMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXRecognitionToken(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 32));
}

uint64_t (*ModalityXRecognitionToken.silenceStartMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionToken(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 32));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXRecognitionToken.confidence.getter()
{
  type metadata accessor for ModalityXRecognitionToken(0);
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

void ModalityXRecognitionToken.confidence.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXRecognitionToken(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 36));
}

uint64_t (*ModalityXRecognitionToken.confidence.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionToken(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 36));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXRecognitionToken.addSpaceAfter.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  result = type metadata accessor for ModalityXRecognitionToken(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t (*ModalityXRecognitionToken.addSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionToken(v1);
  OUTLINED_FUNCTION_117(*(v2 + 40));
  return OUTLINED_FUNCTION_282;
}

uint64_t ModalityXRecognitionToken.phoneSeq.getter()
{
  if (*(v0 + *(type metadata accessor for ModalityXRecognitionToken(0) + 44) + 8))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXRecognitionToken.phoneSeq.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXRecognitionToken(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXRecognitionToken.phoneSeq.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXRecognitionToken(v2);
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

Swift::Void __swiftcall ModalityXRecognitionToken.clearPhoneSeq()()
{
  type metadata accessor for ModalityXRecognitionToken(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t ModalityXRecognitionToken.ipaPhoneSeq.getter()
{
  if (*(v0 + *(type metadata accessor for ModalityXRecognitionToken(0) + 48) + 8))
  {
    OUTLINED_FUNCTION_348();
  }

  else
  {
    OUTLINED_FUNCTION_295();
  }

  return OUTLINED_FUNCTION_131();
}

uint64_t ModalityXRecognitionToken.ipaPhoneSeq.setter()
{
  v3 = OUTLINED_FUNCTION_86();
  type metadata accessor for ModalityXRecognitionToken(v3);
  result = OUTLINED_FUNCTION_260_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModalityXRecognitionToken.ipaPhoneSeq.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_42(v1);
  v3 = type metadata accessor for ModalityXRecognitionToken(v2);
  if (OUTLINED_FUNCTION_75(*(v3 + 48)))
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

Swift::Void __swiftcall ModalityXRecognitionToken.clearIpaPhoneSeq()()
{
  type metadata accessor for ModalityXRecognitionToken(0);
  OUTLINED_FUNCTION_361();
  *v0 = 0;
  v0[1] = 0;
}

void ModalityXRecognitionToken.init()(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for ModalityXRecognitionToken(0);
  OUTLINED_FUNCTION_141(*(v3 + 20));
  OUTLINED_FUNCTION_268(a2 + *(v4 + 24));
  OUTLINED_FUNCTION_71_0(*(v5 + 28));
  OUTLINED_FUNCTION_71_0(*(v6 + 32));
  OUTLINED_FUNCTION_71_0(*(v7 + 36));
  OUTLINED_FUNCTION_277(*(v8 + 40));
  OUTLINED_FUNCTION_141(*(v9 + 44));
  OUTLINED_FUNCTION_141(*(v10 + 48));
}

uint64_t ModalityXRecognitionPhraseTokens.unknownFields.getter()
{
  return ModalityXRecognitionPhraseTokens.unknownFields.getter();
}

{
  v0 = OUTLINED_FUNCTION_242();
  v1(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_163_0();

  return v3(v2);
}

uint64_t ModalityXRecognitionPhraseTokens.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionPhraseTokens(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXRecognitionPhraseTokensAlternatives.hasUnsuggestedAlternatives_p.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  result = type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*ModalityXRecognitionPhraseTokensAlternatives.hasUnsuggestedAlternatives_p.modify(void *a1))()
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(v1);
  OUTLINED_FUNCTION_117(*(v2 + 24));
  return ModalityXCancelRequest.reason.modify;
}

uint64_t ModalityXRecognitionPhraseTokens.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_230_0();

  return v3(v2);
}

uint64_t ModalityXRecognitionPhraseTokensAlternatives.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(v0);
  return OUTLINED_FUNCTION_355();
}

void ModalityXRecognitionPhraseTokensAlternatives.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for ModalityXRecognitionPhraseTokensAlternatives(0);
  UnknownStorage.init()();
  OUTLINED_FUNCTION_277(*(v1 + 24));
}

uint64_t ModalityXRecognitionSausage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionSausage(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXRecognitionPhraseTokens.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t ModalityXSetAlternateRecognitionSausage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXSetAlternateRecognitionSausage(v0);
  return OUTLINED_FUNCTION_355();
}

void ModalityXRecognitionChoice.confidence.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  v1 = type metadata accessor for ModalityXRecognitionChoice(v0);
  OUTLINED_FUNCTION_48_0(*(v1 + 24));
}

uint64_t (*ModalityXRecognitionChoice.confidence.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXRecognitionChoice(v1);
  OUTLINED_FUNCTION_2_1(*(v2 + 24));
  return ModalityXRecognitionToken.startMilliSeconds.modify;
}

uint64_t ModalityXRecognitionChoice.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionChoice(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXRepeatedItnAlignment.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRepeatedItnAlignment(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXChoiceAlignment.unknownFields.getter()
{
  return ModalityXChoiceAlignment.unknownFields.getter();
}

{
  v0 = OUTLINED_FUNCTION_242();
  v1(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_163_0();

  return v3(v2);
}

uint64_t ModalityXChoiceAlignment.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXChoiceAlignment(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXRecognitionResult.preItn.getter()
{
  v1 = OUTLINED_FUNCTION_199_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for ModalityXRecognitionResult(v5);
  v7 = OUTLINED_FUNCTION_299(*(v6 + 36));
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  type metadata accessor for ModalityXRecognitionSausage(0);
  OUTLINED_FUNCTION_38(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_217_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38(v0);
    if (!v9)
    {
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_155();
    return outlined init with take of ModalityXRecognitionSausage();
  }

  return result;
}

uint64_t ModalityXRecognitionResult.preItn.setter()
{
  v1 = OUTLINED_FUNCTION_187();
  v2 = type metadata accessor for ModalityXRecognitionResult(v1);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v2 + 36), &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_102_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_126();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ModalityXRecognitionResult.preItn.modify()
{
  OUTLINED_FUNCTION_312();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_71(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_122(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_73(v5);
  *(v1 + 16) = type metadata accessor for ModalityXRecognitionSausage(v6);
  OUTLINED_FUNCTION_54();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_267(v9);
  v11 = *(type metadata accessor for ModalityXRecognitionResult(v10) + 36);
  *(v1 + 40) = v11;
  v12 = OUTLINED_FUNCTION_299(v11);
  OUTLINED_FUNCTION_283(v12, v13);
  OUTLINED_FUNCTION_29();
  if (v14)
  {
    OUTLINED_FUNCTION_219_0(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_29();
    if (!v14)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_136();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_311();
}

{
  OUTLINED_FUNCTION_248();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_142();
    outlined init with copy of ModalityXRecognitionSausage();
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10 + v5, v3, v2);
    outlined init with take of ModalityXRecognitionSausage();
    OUTLINED_FUNCTION_126();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    outlined destroy of ModalityXRecognitionSausage();
  }

  else
  {
    outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v10 + v5, v0, v1);
    outlined init with take of ModalityXRecognitionSausage();
    OUTLINED_FUNCTION_126();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_247();

  free(v18);
}

uint64_t ModalityXRecognitionResult.hasPreItn.getter()
{
  v1 = OUTLINED_FUNCTION_163();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for ModalityXRecognitionResult(v5);
  OUTLINED_FUNCTION_111_0(v0 + *(v6 + 36));
  v7 = type metadata accessor for ModalityXRecognitionSausage(0);
  OUTLINED_FUNCTION_8_0(v7);
  return v0;
}

Swift::Void __swiftcall ModalityXRecognitionResult.clearPreItn()()
{
  v1 = type metadata accessor for ModalityXRecognitionResult(0);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v1 + 36), &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_167();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ModalityXRecognitionResult.postItn.getter()
{
  v1 = OUTLINED_FUNCTION_199_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for ModalityXRecognitionResult(v5);
  v7 = OUTLINED_FUNCTION_299(*(v6 + 40));
  outlined init with copy of ModalityXServerBoundFrame.OneOf_Payload?(v7, v8, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  type metadata accessor for ModalityXRecognitionSausage(0);
  OUTLINED_FUNCTION_38(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_217_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38(v0);
    if (!v9)
    {
      return outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_155();
    return outlined init with take of ModalityXRecognitionSausage();
  }

  return result;
}

uint64_t ModalityXRecognitionResult.postItn.setter()
{
  v1 = OUTLINED_FUNCTION_187();
  v2 = type metadata accessor for ModalityXRecognitionResult(v1);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v2 + 40), &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_102_0();
  outlined init with take of ModalityXRecognitionSausage();
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_126();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ModalityXRecognitionResult.postItn.modify()
{
  OUTLINED_FUNCTION_312();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_71(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_122(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_73(v5);
  *(v1 + 16) = type metadata accessor for ModalityXRecognitionSausage(v6);
  OUTLINED_FUNCTION_54();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_267(v9);
  v11 = *(type metadata accessor for ModalityXRecognitionResult(v10) + 40);
  *(v1 + 40) = v11;
  v12 = OUTLINED_FUNCTION_299(v11);
  OUTLINED_FUNCTION_283(v12, v13);
  OUTLINED_FUNCTION_29();
  if (v14)
  {
    OUTLINED_FUNCTION_219_0(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_29();
    if (!v14)
    {
      outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0, &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_136();
    outlined init with take of ModalityXRecognitionSausage();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_311();
}

uint64_t ModalityXRecognitionResult.hasPostItn.getter()
{
  v1 = OUTLINED_FUNCTION_163();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_122(v3);
  OUTLINED_FUNCTION_133();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for ModalityXRecognitionResult(v5);
  OUTLINED_FUNCTION_111_0(v0 + *(v6 + 40));
  v7 = type metadata accessor for ModalityXRecognitionSausage(0);
  OUTLINED_FUNCTION_8_0(v7);
  return v0;
}

Swift::Void __swiftcall ModalityXRecognitionResult.clearPostItn()()
{
  v1 = type metadata accessor for ModalityXRecognitionResult(0);
  outlined destroy of ModalityXServerBoundFrame.OneOf_Payload?(v0 + *(v1 + 40), &_s16ModalityXObjects0A19XRecognitionSausageVSgMd, &_s16ModalityXObjects0A19XRecognitionSausageVSgMR);
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_167();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ModalityXRecognitionResult.preItnTokenToPostItnCharAlignment.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ModalityXRecognitionResult.choiceAlignments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ModalityXRecognitionResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_242();
  type metadata accessor for ModalityXRecognitionResult(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v1 = OUTLINED_FUNCTION_163_0();

  return v2(v1);
}

uint64_t ModalityXRecognitionResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionResult(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_54();
  v1 = OUTLINED_FUNCTION_230_0();

  return v2(v1);
}

uint64_t ModalityXRecognitionResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_187();
  type metadata accessor for ModalityXRecognitionResult(v0);
  return OUTLINED_FUNCTION_355();
}

uint64_t ModalityXRecognitionResult.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  type metadata accessor for ModalityXRecognitionResult(0);
  UnknownStorage.init()();
  v3 = type metadata accessor for ModalityXRecognitionSausage(0);
  OUTLINED_FUNCTION_167();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_167();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
}

uint64_t ModalityXLatnnMitigatorResult.processed.setter()
{
  v2 = OUTLINED_FUNCTION_187();
  result = type metadata accessor for ModalityXLatnnMitigatorResult(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*ModalityXLatnnMitigatorResult.processed.modify(void *a1))()
{
  v1 = OUTLINED_FUNCTION_109(a1);
  v2 = type metadata accessor for ModalityXLatnnMitigatorResult(v1);
  OUTLINED_FUNCTION_117(*(v2 + 20));
  return ModalityXCancelRequest.reason.modify;
}