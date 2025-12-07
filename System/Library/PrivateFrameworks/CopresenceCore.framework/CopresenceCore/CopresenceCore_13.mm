uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v24 - v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v18[v19], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v18, v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v18[v19], v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v20 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v14, v8);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      return v20 & 1;
    }

    v21 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v22 = v14;
    goto LABEL_9;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v18, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack;
    v22 = v12;
LABEL_9:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, v21);
    outlined destroy of NSObject?(v18, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMR);
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v18[v19], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  if (!specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v5, *(v5 + 1)) || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_12;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  v20 = 1;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  v18 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v38 - v25;
  v27 = *(v24 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v42, &v38 - v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v43, &v26[v27], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v29 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated;
        v30 = v17;
        goto LABEL_17;
      }

      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v31 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.== infix(_:_:)(v17, v6);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v32 = v17;
      v33 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated;
LABEL_21:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, v33);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      return v31 & 1;
    }

    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v29 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
      v30 = v14;
      goto LABEL_17;
    }

    v35 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v31 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.== infix(_:_:)(v14, v35);
    v36 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v35, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v32 = v14;
LABEL_20:
    v33 = v36;
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
      v30 = v22;
LABEL_17:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, v29);
      outlined destroy of NSObject?(v26, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMR);
LABEL_18:
      v31 = 0;
      return v31 & 1;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v31 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.== infix(_:_:)(v22, v10);
    v36 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v32 = v22;
    goto LABEL_20;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed;
    v30 = v20;
    goto LABEL_17;
  }

  v34 = v41;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v41, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  if (!specialized static Data.== infix(_:_:)(*v20, *(v20 + 1), *v34, *(v34 + 8)) || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_18;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  v31 = 1;
  return v31 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeRequest(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  v18 = specialized static AttachmentLedger_SubscribeRequest.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v37 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMR);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v37 - v20;
  v22 = *(v19 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v37 - v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v21[v22], type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v21, v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v21[v22], v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      v33 = specialized static AttachmentLedger_SubscribeRequest.Initialize.== infix(_:_:)(v17, v8);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      return v33 & 1;
    }

    v29 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize;
    v30 = v17;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v21, v12, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = &v21[v22];
      v32 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v40, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v12, *v32) & 1) != 0 && v12[1] == v32[1])
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
          v28 = v12;
          v27 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
          goto LABEL_14;
        }
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      v34 = v12;
      v35 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
      goto LABEL_22;
    }

    v29 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
    v30 = v12;
LABEL_17:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, v29);
    outlined destroy of NSObject?(v21, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMR);
LABEL_23:
    v33 = 0;
    return v33 & 1;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v21, v15, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for AttachmentLedger_EncryptionID;
    v30 = v15;
    goto LABEL_17;
  }

  v24 = &v21[v22];
  v25 = v39;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v24, v39, type metadata accessor for AttachmentLedger_EncryptionID);
  if (!specialized static Data.== infix(_:_:)(*v15, *(v15 + 1), *v25, *(v25 + 8)))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_EncryptionID);
    goto LABEL_21;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_EncryptionID);
  if ((v26 & 1) == 0)
  {
LABEL_21:
    v35 = type metadata accessor for AttachmentLedger_EncryptionID;
    v34 = v15;
LABEL_22:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, v35);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_23;
  }

  v27 = type metadata accessor for AttachmentLedger_EncryptionID;
  v28 = v15;
LABEL_14:
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v28, v27);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  v33 = 1;
  return v33 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.Initialize.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v15 = *(v14 + 40);
  v16 = a1;
  v17 = *(v11 + 48);
  v27 = v14;
  v28 = v16;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16 + v15, v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v18 = a2 + v15;
  v19 = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, &v13[v17], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v20(&v13[v17], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v17], v7, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v19 = a2;
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v26)
        {
          goto LABEL_6;
        }

LABEL_15:
        v22 = 0;
        return v22 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
      v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v24 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_14:
      outlined destroy of NSObject?(v13, v23, v24);
      goto LABEL_15;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_13:
    v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v24 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_14;
  }

  if (v20(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_6:
  v21 = v28;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5(v28[2], v19[2]) & 1) == 0 || v21[3] != v19[3] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D8MetadataV_Tt1g5(v21[4], v19[4]) & 1) == 0 || v21[5] != v19[5])
  {
    goto LABEL_15;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_MMCSMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v42 = (&v40 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v40 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v47 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v19 = *(v47 + 36);
  v43 = v14;
  v20 = *(v14 + 48);
  v45 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v19, v18, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v46 = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v19, &v18[v20], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      outlined destroy of NSObject?(v18, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
LABEL_18:
    v29 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v30 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
LABEL_24:
    v34 = v18;
    goto LABEL_25;
  }

  v31 = &v18[v20];
  v32 = v42;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v42, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  if (*v13 != *v32 || !specialized static Data.== infix(_:_:)(v13[1], v13[2], v32[1], v32[2]))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v29 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
    v30 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
    goto LABEL_24;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined destroy of NSObject?(v18, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v23 = *(v47 + 40);
  v24 = v44;
  v25 = *(v43 + 48);
  v26 = v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v45 + v23, v44, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v27 = v46;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v46 + v23, v24 + v25, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v21(v24, 1, v22) != 1)
  {
    v36 = v41;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v41, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v21((v24 + v25), 1, v22) == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      goto LABEL_30;
    }

    v37 = v24 + v25;
    v38 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, v40, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    if (*v36 == *v38 && specialized static Data.== infix(_:_:)(v36[1], v36[2], v38[1], v38[2]))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      if (v39)
      {
        goto LABEL_7;
      }

LABEL_26:
      v28 = 0;
      return v28 & 1;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v29 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
    v30 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
    v34 = v24;
LABEL_25:
    outlined destroy of NSObject?(v34, v29, v30);
    goto LABEL_26;
  }

  if (v21((v24 + v25), 1, v22) != 1)
  {
LABEL_30:
    v29 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v30 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
    v34 = v24;
    goto LABEL_25;
  }

  outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
LABEL_7:
  if ((*v26 != *v27 || v26[1] != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v26[2] != v27[2] || v26[3] != v27[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(v26[4], v26[5], v27[4], v27[5]) || !specialized static Data.== infix(_:_:)(v26[6], v26[7], v27[6], v27[7]))
  {
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t specialized static AttachmentLedger_ErrorResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 <= 3)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v14 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v14 != 3)
        {
          goto LABEL_15;
        }
      }

      else if (v15)
      {
        if (v14 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (v15 <= 5)
    {
      if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_15;
      }
    }

    else if (v15 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_15;
      }
    }

    else if (v15 == 7)
    {
      if (v14 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (v14 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_15;
  }

  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v17 = a1;
  v24[0] = updated;
  v24[1] = a1;
  v18 = *(updated + 24);
  v19 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17 + v18, v13, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v18, &v13[v19], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_22:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_14;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_14:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v19], v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v23 = specialized static AttachmentLedger_ErrorResponse.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_15:
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v5 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, updated) == 1)
  {
    if (v16(&v14[v15], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  v18 = specialized static AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v40 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v38 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v38 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v38 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v38 - v25;
  v27 = *(v24 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v42, &v38 - v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v43, &v26[v27], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v29 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate;
        v30 = v14;
        goto LABEL_20;
      }

      v35 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v31 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.== infix(_:_:)(v14, v35);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v35, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v33 = v14;
      v36 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate;
LABEL_25:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v33, v36);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      return v31 & 1;
    }

    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate;
      v30 = v17;
      goto LABEL_20;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    v31 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.== infix(_:_:)(v17, v6);
    v32 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    v33 = v17;
LABEL_24:
    v36 = v32;
    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v22, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd;
      v30 = v22;
LABEL_20:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, v29);
      outlined destroy of NSObject?(v26, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMR);
LABEL_21:
      v31 = 0;
      return v31 & 1;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    v31 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.== infix(_:_:)(v22, v10);
    v32 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    v33 = v22;
    goto LABEL_24;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove;
    v30 = v20;
    goto LABEL_20;
  }

  v34 = v41;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v41, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  if ((*v20 != *v34 || v20[1] != v34[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(v20[2], v20[3], v34[2], v34[3]) || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_21;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  v31 = 1;
  return v31 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.== infix(_:_:)(void *a1, void *a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, updated) == 1)
  {
    if (v16(&v13[v15], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if (v16(&v13[v15], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
LABEL_8:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v21, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  v19 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.== infix(_:_:)(v10, v18);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.== infix(_:_:)(_BOOL8 *a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(a1[4], a1[5], *(a2 + 32), *(a2 + 40)))
  {
    type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.== infix(_:_:)(void *a1, void *a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, updated) == 1)
  {
    if (v16(&v13[v15], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if (v16(&v13[v15], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
LABEL_8:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v21, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  v19 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.== infix(_:_:)(v10, v18);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v14 = *(updated + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_7:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
    goto LABEL_8;
  }

  v19 = v21;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v21, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v20 = specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(v10, v19);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v19, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v14 = *(updated + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_8:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v21, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v19 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v10, v18);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_GetAttachmentMetadataResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = (&v41 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v41 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = *a1;
  v22 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v22 <= 3)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v21 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v21)
      {
        goto LABEL_38;
      }
    }

    else if (v22 <= 5)
    {
      if (v22 == 4)
      {
        if (v21 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v21 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v22 == 6)
    {
      if (v21 != 6)
      {
        goto LABEL_38;
      }
    }

    else if (v22 == 7)
    {
      if (v21 != 7)
      {
        goto LABEL_38;
      }
    }

    else if (v21 != 8)
    {
      goto LABEL_38;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_38;
  }

  v43 = v10;
  v41 = v6;
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  v23 = *(AttachmentMetadataResponse + 24);
  v24 = *(v18 + 48);
  v44 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v23, v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v23, &v20[v24], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v17, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if (v25(&v20[v24], 1, v11) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v20[v24], v14, type metadata accessor for AttachmentLedger_ErrorResponse);
      if (*v17 == *v14 && v17[1] == v14[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v17[2] == v14[2] && v17[3] == v14[3])
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        if ((v33 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_12;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
      v31 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
      v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
LABEL_36:
      v34 = v20;
LABEL_37:
      outlined destroy of NSObject?(v34, v31, v32);
      goto LABEL_38;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_17:
    v31 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
    goto LABEL_36;
  }

  if (v25(&v20[v24], 1, v11) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_12:
  v26 = v43;
  v27 = *(AttachmentMetadataResponse + 28);
  v28 = *(v46 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v44 + v27, v43, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v27, v26 + v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v29 = v48;
  v30 = *(v47 + 48);
  if (v30(v26, 1, v48) == 1)
  {
    if (v30(v26 + v28, 1, v29) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
LABEL_54:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_42;
  }

  v37 = v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v45, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v30(v26 + v28, 1, v29) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v37, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_42:
    v31 = &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd;
    v32 = &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR;
    v34 = v26;
    goto LABEL_37;
  }

  v38 = v26 + v28;
  v39 = v41;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, v41, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v40 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v37, v39);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v39, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v37, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v40)
  {
    goto LABEL_54;
  }

LABEL_38:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(_BOOL8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)) || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_14CopresenceCore017AttachmentLedger_E10EncryptionVTt1g5(a1[2], *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v25 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v14 = *(v25 + 36);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v16 = a2 + v14;
  v17 = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, &v13[v15], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v17], v7, type metadata accessor for AttachmentLedger_MMCSMetadata);
      v21 = specialized static AttachmentLedger_MMCSMetadata.== infix(_:_:)(v10, v7);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_MMCSMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_MMCSMetadata);
      outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_MMCSMetadata);
LABEL_8:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
    goto LABEL_9;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
LABEL_12:
  v22 = a1[3];
  v23 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        if (v22 != 2)
        {
          goto LABEL_9;
        }
      }

      else if (v22 != 3)
      {
        goto LABEL_9;
      }
    }

    else if (v23)
    {
      if (v22 != 1)
      {
        goto LABEL_9;
      }
    }

    else if (v22)
    {
      goto LABEL_9;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_9;
  }

  if (specialized static Data.== infix(_:_:)(a1[5], a1[6], *(a2 + 40), *(a2 + 48)))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v19 & 1;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentAuthGetToken.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v9, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v22 = v26;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v26, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v9, *(v9 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v23)
        {
          goto LABEL_4;
        }

LABEL_11:
        v18 = 0;
        return v18 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_EncryptionID);
      v19 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v20 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_10:
      outlined destroy of NSObject?(v13, v19, v20);
      goto LABEL_11;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_9:
    v19 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v20 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_4:
  v17 = v27;
  if (!specialized static Data.== infix(_:_:)(*v27, *(v27 + 8), *a2, a2[1]) || *(v17 + 16) != a2[2])
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

unint64_t lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AttachmentLedger_ResponseStatus] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for AttachmentLedger_MMCSMetadata(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_MMCSMetadata.BlobData?, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AttachmentLedger_AttachmentMetadata(uint64_t a1)
{
  type metadata accessor for [UInt64 : AttachmentLedger_AttachmentEncryption](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_MMCSMetadata?, type metadata accessor for AttachmentLedger_MMCSMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AttachmentLedger_AuthPutMaterials(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1)
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_EncryptionID], type metadata accessor for AttachmentLedger_EncryptionID, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_AttachmentMetadata], type metadata accessor for AttachmentLedger_AttachmentMetadata, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_EncryptionID?, type metadata accessor for AttachmentLedger_EncryptionID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1)
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [Data], MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeRequest.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1)
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x1E69E76D8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID], type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot], type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_AuthPutMaterials?, type metadata accessor for AttachmentLedger_AuthPutMaterials, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [Data](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(uint64_t a1)
{
  result = type metadata accessor for AttachmentLedger_AttachmentMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1)
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event?, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_167Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_EncryptionID(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_175Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_176Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_220Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_221Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_467Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_468Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_431Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_432Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_281Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_282Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AttachmentLedger_GetAuthTokenRequest(uint64_t a1)
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [Data], MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_GetAuthTokenRequest.TestOption?, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_308Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void type metadata completion function for AttachmentLedger_GetAuthTokenResponse(uint64_t a1)
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_AttachmentAuthGetToken], type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_AuthPutMaterials?, type metadata accessor for AttachmentLedger_AuthPutMaterials, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_193Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_194Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_202Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_5:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t __swift_store_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[5];
LABEL_5:
    v17 = *(v14 + 56);

    return v17(a1 + v15, a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

void type metadata completion function for AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a4, a5, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Testable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = static Testable.isMutable.getter();
  if (result)
  {
    v6 = *(*(v4 - 8) + 40);

    return v6(v2, a1, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static Testable.isMutable.getter()
{
  v0 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v1 = NSClassFromString(v0);

  if (v1)
  {
    return 1;
  }

  v3 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
  v4 = NSClassFromString(v3);

  return v4 != 0;
}

uint64_t key path getter for Testable.wrappedValue : <A>Testable<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = *(a2 + a3 - 8);
  v8 = type metadata accessor for Testable(0, v7, a3, a5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(*(v7 - 8) + 32))(a4, v10, v7);
}

uint64_t key path setter for Testable.wrappedValue : <A>Testable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for Testable(0, v4, v8, v9);
  return Testable.wrappedValue.setter(v6, v10);
}

void (*Testable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v13 = *(v10 + 16);
  v7[6] = v13;
  v7[7] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13();
  return Testable.wrappedValue.modify;
}

void Testable.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    (*(v2 + 48))(*(v2 + 32), *(v2 + 40), v5);
    Testable.wrappedValue.setter(v4, v7);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    Testable.wrappedValue.setter(*(v2 + 40), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t type metadata completion function for Testable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Testable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for Testable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t MachServiceName.rawValue.getter()
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000032;
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

CopresenceCore::MachServiceName_optional __swiftcall MachServiceName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MachServiceName.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MachServiceName()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MachServiceName(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MachServiceName(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MachServiceName(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002CLL;
  v3 = "stablishing";
  v4 = "rsationmanagerhost";
  v5 = 0xD000000000000027;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002CLL;
    v4 = "lay.GroupSessionService";
  }

  if (*v1)
  {
    v2 = 0xD000000000000032;
    v3 = "ence.conversationmanagerhost";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

NSXPCListener __swiftcall NSXPCListener.init(machServiceName:)(CopresenceCore::MachServiceName machServiceName)
{
  v1 = 0xD00000000000002CLL;
  v2 = "stablishing";
  v3 = "rsationmanagerhost";
  v4 = 0xD000000000000027;
  if (*machServiceName != 2)
  {
    v4 = 0xD00000000000002CLL;
    v3 = "lay.GroupSessionService";
  }

  if (*machServiceName)
  {
    v1 = 0xD000000000000032;
    v2 = "ence.conversationmanagerhost";
  }

  if (*machServiceName <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (*machServiceName <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = MEMORY[0x1B270FF70](v5, v6 | 0x8000000000000000);

  v9 = [v7 initWithMachServiceName_];

  return v9;
}

NSXPCConnection __swiftcall NSXPCConnection.init(machServiceName:)(CopresenceCore::MachServiceName machServiceName)
{
  v1 = 0xD00000000000002CLL;
  v2 = "stablishing";
  v3 = "rsationmanagerhost";
  v4 = 0xD000000000000027;
  if (*machServiceName != 2)
  {
    v4 = 0xD00000000000002CLL;
    v3 = "lay.GroupSessionService";
  }

  if (*machServiceName)
  {
    v1 = 0xD000000000000032;
    v2 = "ence.conversationmanagerhost";
  }

  if (*machServiceName <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (*machServiceName <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = MEMORY[0x1B270FF70](v5, v6 | 0x8000000000000000);

  v9 = [v7 initWithMachServiceName:v8 options:0];

  return v9;
}

unint64_t lazy protocol witness table accessor for type MachServiceName and conformance MachServiceName()
{
  result = lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName;
  if (!lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName);
  }

  return result;
}

id AddressableMember.__allocating_init(handle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AddressableMember.init(handle:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddressableMember();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AddressableMember.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for AddressableMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v1 = *&v4[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle];
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

id AddressableMember.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id AddressableMember.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for AddressableMember();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for AddressableMember();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

Swift::Void __swiftcall AddressableMember.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
  v4 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t AddressableMember.description.getter()
{
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  v2 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2710020](v3, v5);

  MEMORY[0x1B2710020](0x3D656C646E616820, 0xE800000000000000);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 60;
}

id AccountMember.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountMember.init()(uint64_t a1)
{
  v1[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = 1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountMember();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AccountMember.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  type metadata accessor for AccountMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount);
  v3 = v6[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount];

  v4 = v2 ^ v3 ^ 1;
  return v4 & 1;
}

uint64_t @objc AddressableMember.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

id AccountMember.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  v5 = [a1 decodeBoolForKey_];

  v3[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id AccountMember.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AccountMember();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

Swift::Void __swiftcall AccountMember.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount);
  v4 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];
}

id AddressableMember.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t instantiation function for generic protocol witness table for AddressableMember(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), unint64_t *a6)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AddressableMember and conformance NSObject(a4, a5, MEMORY[0x1E6969F88]);
  result = lazy protocol witness table accessor for type AddressableMember and conformance NSObject(a6, a5, MEMORY[0x1E69E81B8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance NSObject(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo14NSUserDefaultsC14CopresenceCoreE3get_6forKeyxSgxm_SStSeRzSERzlFSb_Tt0g5()
{
  v1 = MEMORY[0x1B270FF70]();
  v2 = [v0 valueForKey_];

  if (!v2)
  {
    return 2;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v26, v24);
  v3 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v4 = v25;
    if (v25 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v25 = 2;
  }

  outlined init with copy of Any(v26, v24);
  if (swift_dynamicCast())
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v22[0], v22[1]);

    v4 = LOBYTE(v24[0]);
    v25 = v24[0];
    if (LOBYTE(v24[0]) != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v4 = v25;
  if (v25 == 2)
  {
LABEL_9:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    outlined init with copy of Any(v26, v24);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315394;
      outlined init with copy of Any(v24, v22);
      outlined init with copy of Any?(v22, &v20);
      if (v21)
      {
        outlined init with take of Any(&v20, v19);
        outlined init with copy of Any(v19, v18);
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      outlined destroy of Any?(v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v23);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v22[0] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbmMd, &_sSbmMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1AEB26000, v6, v7, "Failed to cast value: %s to type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return 2;
  }

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v4;
}

void one-time initialization function for userDefaults()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x1B270FF70](0xD000000000000019, 0x80000001AEE33C70);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  static Signposts.userDefaults = v2;
}

uint64_t *Signposts.userDefaults.unsafeMutableAddressor()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  return &static Signposts.userDefaults;
}

id static Signposts.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v1 = static Signposts.userDefaults;

  return v1;
}

BOOL Signposts.UserDefaultsKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signposts.UserDefaultsKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Signposts.UserDefaultsKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Signposts.UserDefaultsKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Signposts.UserDefaultsKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Signposts.UserDefaultsKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for messenger()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposts.messenger);
  __swift_project_value_buffer(v0, static Signposts.messenger);
  return closure #1 in variable initialization expression of static Signposts.messenger();
}

uint64_t closure #1 in variable initialization expression of static Signposts.messenger()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v0 = _sSo14NSUserDefaultsC14CopresenceCoreE3get_6forKeyxSgxm_SStSeRzSERzlFSb_Tt0g5();
  if (v0 == 2 || (v0 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AEB26000, v6, v7, "[Signposts] Messenger disabled", v8, 2u);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    return MEMORY[0x1EEE6E8C0]();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "[Signposts] Messenger enabled", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    return MEMORY[0x1EEE6E8F0](0xD000000000000028, 0x80000001AEE33CF0, 0x65676E657373654DLL, 0xE900000000000072);
  }
}

uint64_t static Signposts.messenger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposts.messenger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Signposts.messengerSignpostIdentifier(forPayload:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v6, static Signposts.messenger);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(a1, a2);

    return _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(a1, a2, a3);
  }

  else
  {

    return OSSignpostID.init(_:)();
  }
}

uint64_t _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Insecure.MD5();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Insecure.MD5Digest();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v19 = v12;
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5Digest and conformance Insecure.MD5Digest, MEMORY[0x1E69666B0], MEMORY[0x1E69666A8]);
  v14 = dispatch thunk of static Digest.byteCount.getter();
  if ((v14 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v14 < 8)
  {
    goto LABEL_5;
  }

  v17 = v11;
  v18 = a3;
  lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v9);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(a1, a2);
  (*(v7 + 8))(v9, v6);
  (*(v17 + 8))(v13, v10);
  return OSSignpostID.init(_:)();
}

uint64_t OSSignpostID.init<A, B>(hash:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a6@<X8>)
{
  v15[0] = a6;
  v15[3] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v15 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Digest.byteCount.getter();
  if ((v12 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v12 < 8)
  {
    goto LABEL_5;
  }

  static HashFunction.hash<A>(data:)();
  _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in OSSignpostID.init<A, B>(hash:using:), 0, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E76D8], MEMORY[0x1E69E7410], v13);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  OSSignpostID.init(_:)();
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t *closure #1 in OSSignpostID.init<A, B>(hash:using:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = -1;
  if (result && (a2 - result + 7) >= 0xF)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys()
{
  result = lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys;
  if (!lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double one-time initialization function for shared()
{
  type metadata accessor for GroupActivityAssociationCoordinatorTable();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  static GroupActivityAssociationCoordinatorTable.shared = v0;
  return result;
}

uint64_t static GroupActivityAssociationCoordinatorTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t GroupActivityAssociationCoordinatorTable.registerCoordinator(_:)(uint64_t a1)
{
  outlined init with copy of UserNotificationCenter(a1, v6);
  swift_beginAccess();
  outlined assign with take of GroupActivityAssociationCoordinating?(v6, v1 + 16);
  result = swift_endAccess();
  v4 = *(v1 + 56);
  if (v4)
  {
    v5 = *(v1 + 64);

    v4(a1);
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);
  }

  return result;
}

uint64_t outlined assign with take of GroupActivityAssociationCoordinating?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityAssociationCoordinatorTable.configureWithCoordinator(sessionID:_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.sceneAssociation);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = a3;
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v31);
    a3 = v28;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Configuring group session %s as the singleton client of spatial template anchors.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    v22 = v16;
    a2 = v27;
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = *(v4 + 56);
  v24 = *(v4 + 64);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v23, v24);
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationCoordinating?(v4 + 16, &v29);
  if (v30)
  {
    outlined init with take of ContiguousBytes(&v29, v31);

    a2(v31);
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {

    return outlined destroy of GroupActivityAssociationCoordinating?(&v29);
  }
}

uint64_t GroupActivityAssociationCoordinatorTable.deinit()
{
  outlined destroy of GroupActivityAssociationCoordinating?(v0 + 16);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t GroupActivityAssociationCoordinatorTable.__deallocating_deinit()
{
  outlined destroy of GroupActivityAssociationCoordinating?(v0 + 16);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of GroupActivityAssociationCoordinating?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GroupActivityAssociationCoordinating?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_14CopresenceCore17AddressableMemberCs5NeverOTg504_s14e124Core24BackgroundSessionManagerC5begin7request16bundleIdentifier07processI010completionyAA0cD15CreationRequestC_SSs5Int32Vys5c11_pSgctFAA17gh4CSo8D6CXEfU_Tf1cn_n(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v28 = result;
  v29 = v5;
  v30 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v28;
    v9 = v29;
    v11 = v30;
    specialized Set.subscript.getter(v28, v29, v30, a1);
    v13 = v12;
    v14 = type metadata accessor for AddressableMember();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v13;
    v27.receiver = v15;
    v27.super_class = v14;
    objc_msgSendSuper2(&v27, sel_init);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v25)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v26, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v28 = v16;
      v29 = v9;
      v30 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

Swift::Int BackgroundSessionManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t BackgroundSessionManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BackgroundSessionManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t BackgroundSessionManager.sessions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return BackgroundSessionManager.sessions.didset(&unk_1F24A2438, partial apply for closure #1 in BackgroundSessionManager.sessions.didset, &block_descriptor_155);
}

uint64_t (*BackgroundSessionManager.sessions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundSessionManager.sessions.modify;
}

uint64_t BackgroundSessionManager.sessions.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return BackgroundSessionManager.sessions.didset(&unk_1F24A2438, partial apply for closure #1 in BackgroundSessionManager.sessions.didset, &block_descriptor_155);
  }

  return result;
}

uint64_t BackgroundSessionManager.presenceSessions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t BackgroundSessionManager.mockIDSGroupSessionProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t BackgroundSessionManager.mockIDSGroupSessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSessionManager.serviceProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);

  return v1;
}

uint64_t BackgroundSessionManager.personalPresenceControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider);

  return v1;
}

uint64_t BackgroundSessionManager.presenceControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider);

  return v1;
}

uint64_t BackgroundSessionManager.sessionSuspensionControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider);

  return v1;
}

id BackgroundSessionManager.__allocating_init(queue:featureFlags:serviceProvider:personalPresenceControllerProvider:presenceControllerProvider:sessionSuspensionControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x1E69E7CD0];
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions] = MEMORY[0x1E69E7CD0];
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions] = v18;
  v19 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
  *(v20 + 2) = 0;
  *v20 = 0;
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue] = a1;
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags] = a2;
  v21 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider];
  *v24 = a9;
  *(v24 + 1) = a10;
  v28.receiver = v17;
  v28.super_class = v10;
  return objc_msgSendSuper2(&v28, sel_init);
}

id BackgroundSessionManager.init(queue:featureFlags:serviceProvider:personalPresenceControllerProvider:presenceControllerProvider:sessionSuspensionControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions] = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions] = v18;
  v19 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
  *(v20 + 2) = 0;
  *v20 = 0;
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue] = a1;
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags] = a2;
  v21 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider];
  *v24 = a9;
  *(v24 + 1) = a10;
  v27.receiver = v10;
  v27.super_class = type metadata accessor for BackgroundSessionManager();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t BackgroundSessionManager.__allocating_init(clientIdentifier:queue:)(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AsyncSerialQueue(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;

  v32 = a3;
  _StringGuts.grow(_:)(16);

  v34 = a1;
  v35 = a2;

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  v16 = v34;
  v17 = v35;
  LOBYTE(v34) = 1;
  v35 = v16;
  v36 = v17;
  v37 = a1;
  v38 = a2;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR));
  v19 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(&v34, a3);
  type metadata accessor for PersonalPresenceController(0);
  v20 = swift_allocObject();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  v22 = v19;
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v12, v9, v15);
  outlined init with take of AsyncSerialQueue(v15, v20 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v23 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<ActivityListPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR, &protocol conformance descriptor for SKPresenceDataSource<A>);
  v24 = (v20 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  *v24 = v22;
  v24[1] = v23;
  *(v20 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs) = MEMORY[0x1E69E7CD0];
  v25 = [objc_allocWithZone(CPFeatureFlags) init];
  v26 = swift_allocObject();
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = *(v33 + 264);

  v29 = v28(v32, v25, partial apply for closure #1 in BackgroundSessionManager.init(clientIdentifier:queue:), v26, partial apply for closure #2 in BackgroundSessionManager.init(clientIdentifier:queue:), v20, partial apply for closure #3 in BackgroundSessionManager.init(clientIdentifier:queue:), v27, closure #4 in BackgroundSessionManager.init(clientIdentifier:queue:), 0);

  return v29;
}

void closure #1 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3 + 16, &v12, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
  if (v13)
  {
    goto LABEL_4;
  }

  outlined destroy of NSObject?(&v12, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
  v8 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v9 = MEMORY[0x1B270FF70](a1, a2);
  v10 = [v8 initWithService_];

  if (v10)
  {
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSService, 0x1E69A48A8);
    v14 = &protocol witness table for IDSService;
    *&v12 = v10;
    outlined init with copy of UserNotificationCenter(&v12, v11);
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v11, a3 + 16, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
LABEL_4:
    outlined init with take of ContiguousBytes(&v12, a4);
    return;
  }

  __break(1u);
}

uint64_t closure #2 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PresenceController();
  (*(v6 + 16))(v8, a1, v5);

  v9 = specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(v8, a3);

  return v9;
}

void *closure #3 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v15 = UUID.uuidString.getter();
  v16 = v7;
  v17 = a3;
  v18 = a4;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR));

  v9 = a2;
  v10 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(v14, a2);
  type metadata accessor for PresenceController();
  v11 = swift_allocObject();
  v12 = specialized PresenceController.init<A>(dataSource:)(v10, v11);

  return v12;
}

uint64_t closure #4 in BackgroundSessionManager.init(clientIdentifier:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  v9 = type metadata accessor for SessionSuspensionController();
  v10 = swift_allocObject();
  swift_unknownObjectRetain();
  result = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v8, v10);
  a4[3] = v9;
  a4[4] = &protocol witness table for SessionSuspensionController;
  *a4 = result;
  return result;
}

uint64_t BackgroundSessionManager.createPresenceController(for:isCrossAccount:queue:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = &OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider;
  if ((a2 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider;
  }

  return (*(v3 + *v4))(a1, a3);
}

void BackgroundSessionManager.createService(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x80000001AEE33DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7(v8);

    return;
  }

  if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEF7365746F4E2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001AEE2E800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v10 = "e.alloy.carmelsync";
    v11 = 0xD00000000000001DLL;
LABEL_14:
    v9(v11, v10 | 0x8000000000000000);
    return;
  }

  if (a1 == 0xD000000000000010 && 0x80000001AEE33DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x80000001AEE33E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    (*(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider))(0xD000000000000022, 0x80000001AEE34100);
    return;
  }

  if (a1 == 0xD000000000000010 && 0x80000001AEE33E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x80000001AEE33E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000021 && 0x80000001AEE33E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x80000001AEE33EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001AEE33EC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000022 && 0x80000001AEE33EE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001CLL && 0x80000001AEE33F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002DLL && 0x80000001AEE33F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x80000001AEE33F60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x80000001AEE33F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001AEE33FB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v10 = "oteControl.session";
    v11 = 0xD00000000000002ELL;
    goto LABEL_14;
  }

  v12 = v3;
  if (a1 == 0xD000000000000016 && 0x80000001AEE33FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v10 = "e.alloy.facetime.nearby";
    v11 = 0xD000000000000032;
    goto LABEL_14;
  }

  if (a1 == 0xD000000000000013 && 0x80000001AEE33FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v10 = "e.alloy.arcade.fastsync";
    v11 = 0xD000000000000027;
    goto LABEL_14;
  }

  if (![*(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags) gameCenterFastSyncTransport])
  {
    goto LABEL_67;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v26 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v26)
  {
    goto LABEL_67;
  }

  v23 = [v26 entitlements];
  v24 = LSPropertyList.containsAnyGameCenterEntitlements()();

  if (!v24)
  {

LABEL_67:
    if (_TUIsInternalInstall())
    {
      v14 = [objc_opt_self() mainBundle];
      v15 = [v14 bundleIdentifier];

      if (v15)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        static NSUserDefaults.classProtectedStorage(suiteName:)(v16, v18, v29);

        v19 = v30;
        v20 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v20 + 32))(&v27, MEMORY[0x1E69E6158], 0xD000000000000013, 0x80000001AEE34010, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v19, v20);
        v21 = v28;
        if (v28)
        {
          v22 = v27;
        }

        else
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v25;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        (*(v12 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider))(v22, v21);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  (*(v12 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider))(0xD000000000000027, 0x80000001AEE34030);
}

uint64_t BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a2;
  v38 = a5;
  v39 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.service);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v13;
    v23 = v7;
    v24 = v11;
    v25 = a6;
    v26 = a3;
    v27 = v22;
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v28 = v18;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Request to create presenceSession with request: %@", v21, 0xCu);
    outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = v27;
    a3 = v26;
    a6 = v25;
    v11 = v24;
    v7 = v23;
    v13 = v36;
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v7;
  *(v30 + 24) = v18;
  v31 = v37;
  *(v30 + 32) = v38;
  *(v30 + 40) = a6;
  *(v30 + 48) = v31;
  *(v30 + 56) = a3;
  *(v30 + 64) = v39;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v32 = _Block_copy(aBlock);
  v33 = v18;
  v34 = v7;

  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v13, v32);
  _Block_release(v32);
  (*(v42 + 8))(v13, v11);
  (*(v40 + 8))(v16, v41);
}

void closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, char *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, char *a6, unsigned int a7)
{
  v121 = a7;
  v123 = a6;
  v122 = a5;
  v127 = a4;
  v128 = a3;
  v131 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v115 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v115 - v15;
  v116 = type metadata accessor for UUID();
  v115 = *(v116 - 8);
  v17 = MEMORY[0x1EEE9AC00](v116);
  v117 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xD8);
  v130 = a1;
  v20 = v19(v17);
  v21 = v20;
  v124 = v11;
  v126 = v12;
  v125 = v16;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for PresenceHostSession(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type PresenceHostSession and conformance NSObject, type metadata accessor for PresenceHostSession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v22 = v139;
    v23 = v140;
    v24 = v141;
    v25 = v142;
    v26 = v143;
  }

  else
  {
    v27 = -1 << *(v20 + 32);
    v23 = v20 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(v20 + 56);

    v25 = 0;
    v22 = v21;
  }

  v129 = v24;
  v30 = (v24 + 64) >> 6;
  if (v22 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v31 = v25;
  v32 = v26;
  v33 = v25;
  if (!v26)
  {
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        goto LABEL_19;
      }

      v32 = *(v23 + 8 * v33);
      ++v31;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_12:
  v34 = (v32 - 1) & v32;
  v7 = *(*(v22 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
  if (!v7)
  {
LABEL_19:
    outlined consume of Set<String>.Iterator._Variant(v22);

    v36 = v124;
    v37 = v130;
    v38 = MEMORY[0x1E69E7D40];
    goto LABEL_20;
  }

  while ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    v25 = v33;
    v26 = v34;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v35 = __CocoaSet.Iterator.next()();
    if (v35)
    {
      *&v134 = v35;
      type metadata accessor for PresenceHostSession(0);
      swift_dynamicCast();
      v7 = v136[0];
      v33 = v25;
      v34 = v26;
      if (v136[0])
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  outlined consume of Set<String>.Iterator._Variant(v22);

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Log.service);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_1AEB26000, v88, v89, "Found existing presence session.", v90, 2u);
    MEMORY[0x1B27120C0](v90, -1, -1);
  }

  v38 = MEMORY[0x1E69E7D40];
  v91 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xB8);
  if (v91() >= 3u)
  {
    v37 = v130;
    v114 = (*((*v38 & *v130) + 0xE8))(v136);

    v114(v136, 0);
    v36 = v124;
LABEL_20:
    v26 = v122;
    v7 = v123;
    (*((*v38 & *v37) + 0x120))(&v134, v122, v123);
    if (!v135)
    {
      outlined destroy of NSObject?(&v134, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
      if (one-time initialization token for service == -1)
      {
LABEL_30:
        v76 = type metadata accessor for Logger();
        __swift_project_value_buffer(v76, static Log.service);

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *&v134 = v80;
          *v79 = 136315138;
          v136[0] = v26;
          v136[1] = v7;

          v81 = String.init<A>(reflecting:)();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v134);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_1AEB26000, v77, v78, "Unknown service for bundle identifier: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x1B27120C0](v80, -1, -1);
          MEMORY[0x1B27120C0](v79, -1, -1);
        }

        v84 = v128;
        lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
        v85 = swift_allocError();
        *v86 = 2;
        v84(0, v85);

        return;
      }

LABEL_49:
      swift_once();
      goto LABEL_30;
    }

    outlined init with take of ContiguousBytes(&v134, v136);
    v39 = v131[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount];
    if (v39)
    {
      goto LABEL_26;
    }

    v40 = v137;
    v41 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    v42 = (*(v41 + 16))(v40, v41);
    if (!v42)
    {
      __break(1u);
      return;
    }

    v43 = v42 >> 62 ? __CocoaSet.count.getter() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = MEMORY[0x1E69E7D40];

    if (v43 >= 1)
    {
LABEL_26:
      v44 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
      v45 = *((*v38 & *v37) + 0x118);
      v46 = v38;
      v47 = v131;
      v48 = v45(&v131[OBJC_IVAR___CPPresenceSessionCreationRequest_id], v39, *(v37 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue));
      v49 = v117;
      (*(v115 + 16))(v117, &v47[v44], v116);
      v50 = objc_allocWithZone(type metadata accessor for PresenceHostSession(0));

      v129 = v48;
      v51 = PresenceHostSession.init(id:presenceController:)(v49, v48);
      v52 = *((*v46 & *v37) + 0xE8);
      v53 = v51;
      v54 = v52(&v134);
      specialized Set._Variant.insert(_:)(v133, v53);

      v55 = v54(&v134, 0);
      v56 = *((*v46 & *v53) + 0xD0);
      v131 = v53;
      *&v134 = v56(v55);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR);
      v58 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceHostSession.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR, MEMORY[0x1E695BFB0]);
      v59 = v125;
      MEMORY[0x1B270F520](v57, v58);

      v60 = type metadata accessor for TaskPriority();
      v7 = v120;
      (*(*(v60 - 8) + 56))(v120, 1, 1, v60);
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = v126;
      v26 = v119;
      (*(v126 + 16))(v119, v59, v36);
      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v65 = (v118 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      (*(v63 + 32))(v66 + v64, v26, v36);
      *(v66 + v65) = v61;
      *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), v66);

      outlined destroy of NSObject?(v7, &_sScPSgMd, &_sScPSgMR);
      v67 = *(v130 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider);
      v68 = v131;
      v67(&v134, v121, v68, &protocol witness table for PresenceHostSession);

      v69 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController;
      swift_beginAccess();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v68[v69], v133, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      v70 = v133[3];
      outlined destroy of NSObject?(v133, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      if (v70)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      outlined init with take of ContiguousBytes(&v134, v133);
      swift_beginAccess();
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v133, &v68[v69], &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      swift_endAccess();
      v71 = *&v68[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint];
      v72 = type metadata accessor for PresenceSessionConnectionInfo();
      v73 = objc_allocWithZone(v72);
      *&v73[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v71;
      v132.receiver = v73;
      v132.super_class = v72;
      v74 = v71;
      v75 = objc_msgSendSuper2(&v132, sel_init);
      v128(v75, 0);

      (*(v126 + 8))(v125, v36);
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      __swift_project_value_buffer(v103, static Log.service);

      v104 = v131;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v134 = v109;
        *v107 = 136315394;
        *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v7, &v134);
        *(v107 + 12) = 2112;
        *(v107 + 14) = v104;
        *v108 = v104;
        v110 = v104;
        _os_log_impl(&dword_1AEB26000, v105, v106, "Ignoring uninhabited session for bundle identifier: %s due to the request not having any collaborators: %@", v107, 0x16u);
        outlined destroy of NSObject?(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v108, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        MEMORY[0x1B27120C0](v109, -1, -1);
        MEMORY[0x1B27120C0](v107, -1, -1);
      }

      v111 = v128;
      lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
      v112 = swift_allocError();
      *v113 = 7;
      v111(0, v112);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v136);
    return;
  }

  v92 = v7;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v136[0] = v96;
    *v95 = 136315138;
    LOBYTE(v134) = v91();
    v97 = String.init<A>(reflecting:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v136);

    *(v95 + 4) = v99;
    _os_log_impl(&dword_1AEB26000, v93, v94, "Found existing presence session. Failing for duplicate session creation request. existingSessionState: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x1B27120C0](v96, -1, -1);
    MEMORY[0x1B27120C0](v95, -1, -1);
  }

  v100 = v128;
  lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
  v101 = swift_allocError();
  *v102 = 4;
  v100(0, v101);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR);
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v1 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceHostSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  v3 = *(v0 + 200);

  return MEMORY[0x1EEE6D8C8](v0 + 240, v3, v1);
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  }

  else
  {
    v2 = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 241) = *(v0 + 240);
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

{
  if (*(v0 + 241) != 5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (*(v0 + 241) != 4)
      {

        goto LABEL_11;
      }

      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Log.service);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1AEB26000, v4, v5, "PresenceSession invalidated. Removing from list.", v6, 2u);
        MEMORY[0x1B27120C0](v6, -1, -1);
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = *(v0 + 192);
        v10 = *(v0 + 168);
        v26 = *(v0 + 184);
        v27 = *(v0 + 176);
        v12 = *(v0 + 152);
        v11 = *(v0 + 160);
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        *(v13 + 24) = v2;
        *(v0 + 48) = partial apply for closure #1 in closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
        *(v0 + 56) = v13;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(v0 + 40) = &block_descriptor_146;
        v14 = _Block_copy((v0 + 16));
        v24 = v8;
        v25 = v2;
        static DispatchQoS.unspecified.getter();
        *(v0 + 120) = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B27106E0](0, v9, v10, v14);
        _Block_release(v14);

        (*(v11 + 8))(v10, v12);
        (*(v26 + 8))(v9, v27);

LABEL_11:
        v15 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceHostSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
        v16 = swift_task_alloc();
        *(v0 + 224) = v16;
        *v16 = v0;
        v16[1] = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
        v17 = *(v0 + 200);

        return MEMORY[0x1EEE6D8C8](v0 + 240, v17, v15);
      }

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1AEB26000, v18, v19, "Lost reference to presenceSession in state observer.", v20, 2u);
        MEMORY[0x1B27120C0](v20, -1, -1);
        v21 = v18;
      }

      else
      {
        v21 = v2;
        v2 = v18;
      }
    }
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v22 = *(v0 + 8);

  return v22();
}

{
  *(v0 + 112) = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void closure #1 in closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, void *a2)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315138;
    type metadata accessor for PresenceHostSession(0);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Removing presenceSession %s from presenceSessions.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xE8))(v31);
  v16 = specialized Set._Variant.remove(_:)(v5);
  v15(v31, 0);
  if (v16)
  {
  }

  else
  {
    v17 = v5;
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315394;
      type metadata accessor for PresenceHostSession(0);
      v23 = v17;
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v31);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      (*((*v14 & *v18) + 0xD8))(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore19PresenceHostSessionCGMd, &_sShy14CopresenceCore19PresenceHostSessionCGMR);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v31);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Failed to remove presenceSession %s, session was, somehow, already removed. sessions: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }
  }
}

void BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v87 = a5;
  v79 = a4;
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.service);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v86 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v78 = a2;
    v21 = v20;
    *&aBlock = v20;
    *v19 = 136315138;
    v95[0] = v15;
    type metadata accessor for BackgroundSessionCreationRequest(0);
    v22 = v15;
    v23 = String.init<A>(reflecting:)();
    v25 = v7;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &aBlock);

    *(v19 + 4) = v26;
    v7 = v25;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Request to begin: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    a2 = v78;
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x120))(&aBlock, a2, a3);
  if (!v91)
  {
    outlined destroy of NSObject?(&aBlock, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v95[0] = v48;
      *v47 = 136315138;
      *&aBlock = a2;
      *(&aBlock + 1) = a3;

      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v95);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Unknown service for bundle identifier: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v52 = swift_allocError();
    *v53 = 2;
    v87();

    return;
  }

  outlined init with take of ContiguousBytes(&aBlock, v95);
  v28 = v86;
  v29 = *&v86[OBJC_IVAR___CPBackgroundSessionCreationRequest_members];
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_14CopresenceCore17AddressableMemberCs5NeverOTg504_s14e124Core24BackgroundSessionManagerC5begin7request16bundleIdentifier07processI010completionyAA0cD15CreationRequestC_SSs5Int32Vys5c11_pSgctFAA17gh4CSo8D6CXEfU_Tf1cn_n(v29);
  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v30);

  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = __CocoaSet.count.getter();
    if ((v29 & 0xC000000000000001) != 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (v32 == *(v29 + 16))
    {
      goto LABEL_9;
    }

LABEL_20:
    v54 = v28;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      *v57 = 136315394;
      *&v94[0] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR);
      v59 = String.init<A>(reflecting:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &aBlock);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      *&v94[0] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
      v62 = String.init<A>(reflecting:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &aBlock);

      *(v57 + 14) = v64;
      _os_log_impl(&dword_1AEB26000, v55, v56, "Error converting members: %s to %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v58, -1, -1);
      MEMORY[0x1B27120C0](v57, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v66 = swift_allocError();
    v67 = 6;
    goto LABEL_24;
  }

  v32 = *(v31 + 16);
  if ((v29 & 0xC000000000000001) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v32 != __CocoaSet.count.getter())
  {
    goto LABEL_20;
  }

LABEL_9:
  if (*(v28 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount))
  {
LABEL_14:
    outlined init with copy of UserNotificationCenter(v95, v94);
    v38 = swift_allocObject();
    *(v38 + 16) = v7;
    *(v38 + 24) = v28;
    *(v38 + 32) = a2;
    *(v38 + 40) = a3;
    *(v38 + 48) = v31;
    outlined init with take of ContiguousBytes(v94, v38 + 56);
    *(v38 + 96) = v87;
    *(v38 + 104) = a6;
    *(v38 + 112) = v79;
    v92 = partial apply for closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
    v93 = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v90 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v91 = &block_descriptor_12_0;
    v39 = _Block_copy(&aBlock);
    v40 = v28;
    v41 = v7;

    v42 = v80;
    static DispatchQoS.unspecified.getter();
    v88 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v43 = v82;
    v44 = v85;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v42, v43, v39);
    _Block_release(v39);
    (*(v84 + 8))(v43, v44);
    (*(v81 + 8))(v42, v83);

LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    return;
  }

  v33 = a2;
  v34 = v96;
  v35 = v97;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v36 = (*(v35 + 16))(v34, v35);
  if (v36)
  {
    if (v36 >> 62)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v33;

    if (v37 >= 1)
    {
      goto LABEL_14;
    }

    v68 = v28;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = a2;
      v75 = v73;
      *&aBlock = v73;
      *v71 = 136315394;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, a3, &aBlock);
      *(v71 + 12) = 2112;
      *(v71 + 14) = v68;
      *v72 = v68;
      v76 = v68;
      _os_log_impl(&dword_1AEB26000, v69, v70, "Ignoring uninhabited session for bundle identifier: %s due to the request not having any collaborators: %@", v71, 0x16u);
      outlined destroy of NSObject?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1B27120C0](v75, -1, -1);
      MEMORY[0x1B27120C0](v71, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v66 = swift_allocError();
    v67 = 7;
LABEL_24:
    *v65 = v67;
    v87();

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, int a9)
{
  v117 = a8;
  v116 = a7;
  v134 = a6;
  v127 = a5;
  v137 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v128 = &v116 - v13;
  v126 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v121 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v133 = v18;
  v135 = *(v18 - 8);
  v19 = v135;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v120 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v116 - v22;
  v132 = &v116 - v22;
  v131 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(a2, *(a1 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue));
  v24 = *&a2[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest];
  v25 = a2[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles];
  v26 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  v27 = MEMORY[0x1B270FF70](a3, v137);
  v28 = [v26 initWithCreationRequest:v24 bundleIdentifier:v27 systemActivity:0 requiresParticipantTranslation:v25];

  v29 = *(v19 + 16);
  v136 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v29(v23, &a2[OBJC_IVAR___CPBackgroundSessionCreationRequest_id], v18);
  v137 = a2;
  v30 = *&a2[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember + 8];
  v118 = *&a2[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  v130 = v30;
  outlined init with copy of UserNotificationCenter(v134, v143);
  v31 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xF0);
  v32 = v28;

  v31(v142, v33);
  v34 = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v119 = [objc_allocWithZone(CPFeatureFlags) init];
  v134 = type metadata accessor for BackgroundSession(0);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = (v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v36[3] = &type metadata for FastSyncAnalyticsReporter;
  v36[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v36 = 0;
  v37 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v38 = swift_allocObject();
  v38[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v38[3] = 0x636E795374736146;
  v38[4] = 0xE800000000000000;
  v38[5] = 0x6E6F6973736553;
  *(v35 + v37) = v38;
  v38[6] = 0xE700000000000000;
  v39 = v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v40 = v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0;
  v41 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v141 = 0xC000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  swift_allocObject();
  *(v35 + v41) = CurrentValueSubject.init(_:)();
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v42 = MEMORY[0x1E69E7CD0];
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v42;
  v43 = v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  v44 = v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0;
  v45 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v35 + v45) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  v46 = v133;
  v29((v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id), v132, v133);
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v32;
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = v127;
  v47 = (v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  v48 = v130;
  *v47 = v118;
  v47[1] = v48;
  outlined init with copy of UserNotificationCenter(v143, v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = v34;
  swift_beginAccess();
  *(v39 + 8) = &protocol witness table for BackgroundSessionManager;
  v129 = a1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v118 = v34;
  v49 = v32;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v142, v43);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v139 = 0;
  v140 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v139 = 0xD000000000000012;
  v140 = 0x80000001AEE342B0;
  v130 = v49;
  v50 = [v49 UUID];
  v51 = v120;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v52);

  v53 = *(v135 + 8);
  v135 += 8;
  v120 = v53;
  (v53)(v51, v46);
  static DispatchQoS.unspecified.getter();
  v139 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v125 + 104))(v124, *MEMORY[0x1E69E8090], v126);
  v54 = v131;
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v55 = v119;
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v119;
  *(v35 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v54;

  v56 = v55;
  if ([v56 fastSyncPresenceSeparationEnabled])
  {
  }

  else
  {
    v57 = *(*v54 + 112);

    v57(v58);
    v59 = type metadata accessor for TaskPriority();
    v60 = v128;
    (*(*(v59 - 8) + 56))(v128, 1, 1, v59);
    v61 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v54;
    v62[5] = v61;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v60, &async function pointer to partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), v62);
    type metadata accessor for AnyCancellable();
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  outlined destroy of NSObject?(v142, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  v63 = (v120)(v132, v133);
  v64 = (*((*MEMORY[0x1E69E7D40] & *v129) + 0xC0))(v63);
  v65 = v64;
  if ((v64 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
    Set.Iterator.init(_cocoa:)();
    v67 = v143[0];
    v66 = v143[1];
    v68 = v143[2];
    v69 = v143[3];
    v70 = v143[4];
  }

  else
  {
    v71 = -1 << *(v64 + 32);
    v66 = v64 + 56;
    v68 = ~v71;
    v72 = -v71;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v70 = v73 & *(v64 + 56);

    v69 = 0;
    v67 = v65;
  }

  LODWORD(v133) = a9;
  v135 = v68;
  v74 = (v68 + 64) >> 6;
  if (v67 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v75 = v69;
  v76 = v70;
  v77 = v69;
  if (!v70)
  {
    while (1)
    {
      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v77 >= v74)
      {
        goto LABEL_22;
      }

      v76 = *(v66 + 8 * v77);
      ++v75;
      if (v76)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_25;
  }

LABEL_15:
  v78 = (v76 - 1) & v76;
  v68 = *(*(v67 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v76)))));

  if (!v68)
  {
LABEL_22:
    outlined consume of Set<String>.Iterator._Variant(v67);

LABEL_23:
    v80 = v129;
    v81 = *((*MEMORY[0x1E69E7D40] & *v129) + 0xD0);

    v82 = v81(v142);
    specialized Set._Variant.insert(_:)(&v138, v35);

    v82(v142, 0);
    v83 = type metadata accessor for TaskPriority();
    v84 = v128;
    (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    *(v85 + 32) = v35;
    *(v85 + 40) = v80;
    *(v85 + 48) = v133;
    v86 = v116;
    *(v85 + 56) = v130;
    *(v85 + 64) = v86;
    *(v85 + 72) = v117;

    v87 = v80;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v84, &async function pointer to partial apply for closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v85);
  }

  while ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    v69 = v77;
    v70 = v78;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v79 = __CocoaSet.Iterator.next()();
    if (v79)
    {
      v139 = v79;
      swift_dynamicCast();
      v68 = v142[0];
      v77 = v69;
      v78 = v70;
      if (v142[0])
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  outlined consume of Set<String>.Iterator._Variant(v67);

  if (one-time initialization token for service != -1)
  {
    goto LABEL_36;
  }

LABEL_25:
  v89 = type metadata accessor for Logger();
  __swift_project_value_buffer(v89, static Log.service);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v142[0] = v93;
    *v92 = 136315138;
    v139 = v68;

    v94 = String.init<A>(reflecting:)();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v142);

    *(v92 + 4) = v96;
    _os_log_impl(&dword_1AEB26000, v90, v91, "Found existing session: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x1B27120C0](v93, -1, -1);
    MEMORY[0x1B27120C0](v92, -1, -1);
  }

  v97 = v128;
  v98 = dispatch_semaphore_create(0);
  v99 = swift_allocObject();
  *(v99 + 16) = 0xF000000000000007;
  v100 = type metadata accessor for TaskPriority();
  (*(*(v100 - 8) + 56))(v97, 1, 1, v100);
  v101 = swift_allocObject();
  v101[2] = 0;
  v101[3] = 0;
  v101[4] = v98;
  v101[5] = partial apply for closure #2 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  v101[6] = v99;
  v101[7] = v68;

  swift_retain_n();
  v102 = v98;
  v103 = v97;
  v104 = v102;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v103, &async function pointer to partial apply for closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v101);

  OS_dispatch_semaphore.wait()();
  result = swift_beginAccess();
  v105 = *(v99 + 16);
  if ((~v105 & 0xF000000000000007) != 0)
  {
    if ((v105 >> 62) >= 2 && (v105 >> 62 == 2 || __ROR8__(v105 + 0x4000000000000000, 3) >= 5uLL))
    {
      outlined copy of BackgroundSession.State?(v105);
      outlined copy of BackgroundSession.State(v105);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      outlined consume of BackgroundSession.State?(v105);
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v138 = v105;
        v142[0] = v137;
        *v110 = 136315138;
        outlined copy of BackgroundSession.State(v105);
        v111 = String.init<A>(reflecting:)();
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, v142);

        *(v110 + 4) = v113;
        _os_log_impl(&dword_1AEB26000, v108, v109, "Found session is in the %s state. Forcefully removing.", v110, 0xCu);
        v114 = v137;
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
        MEMORY[0x1B27120C0](v114, -1, -1);
        MEMORY[0x1B27120C0](v110, -1, -1);
      }

      v115 = (*((*MEMORY[0x1E69E7D40] & *v129) + 0xD0))(v142);
      specialized Set._Variant.remove(_:)(v68);

      v115(v142, 0);

      outlined consume of BackgroundSession.State?(v105);

      goto LABEL_23;
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v106 = swift_allocError();
    *v107 = 4;
    outlined copy of BackgroundSession.State(v105);
    v116(v106);

    outlined consume of BackgroundSession.State?(v105);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t closure #2 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  outlined consume of BackgroundSession.State?(v4);
  return outlined copy of BackgroundSession.State(a1);
}

uint64_t closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), a7, 0);
}

uint64_t closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)()
{

  CurrentValueSubject.value.getter();

  *(v0 + 56) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 56);
  (*(v0 + 32))(v1);
  outlined consume of BackgroundSession.State(v1);
  OS_dispatch_semaphore.signal()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = a8;
  *(v8 + 280) = v10;
  *(v8 + 256) = a5;
  *(v8 + 264) = a7;
  *(v8 + 304) = a6;
  *(v8 + 248) = a4;
  return MEMORY[0x1EEE6DFA0](closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

uint64_t closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)()
{
  v1 = *(v0 + 248);
  (*(*(v0 + 256) + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider))(*(v0 + 304), v1, &protocol witness table for BackgroundSession);

  return MEMORY[0x1EEE6DFA0](closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v1, 0);
}

{
  v1 = *(v0 + 248);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 104, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  v3 = *(v0 + 128);
  result = outlined destroy of NSObject?(v0 + 104, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    outlined init with take of ContiguousBytes((v0 + 64), v0 + 144);
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v0 + 144, v1 + v2, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
    swift_endAccess();
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    v5[1] = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);

    return BackgroundSession.join()();
  }

  return result;
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  }

  else
  {
    v2 = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v16 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v0 + 240) = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Activity successfully begun: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  (*(v0 + 272))(0);
  v13 = *(v0 + 8);

  return v13();
}

{
  v26 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v0[29] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v25);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Activity failed to begin: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = v0[31];
  v14 = v0[32];
  v15 = *&v14[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  *(v17 + 24) = v16;
  v0[6] = _sIg_Ieg_TRTA_0;
  v0[7] = v17;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_128;
  v18 = _Block_copy(v0 + 2);
  v19 = v14;

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v21 = v0[37];
    v22 = v0[34];
    v23 = v21;
    v22(v21);

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t closure #1 in closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v5);
  specialized Set._Variant.remove(_:)(a2);

  return v3(v5, 0);
}

uint64_t BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.service);
  v22 = *(v14 + 16);
  v52 = a1;
  v22(v20, a1, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v50 = v24;
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    v49 = v25;
    *v25 = 136315138;
    v22(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v12, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      v28 = *(v14 + 32);
      v47 = v22;
      v29 = v62;
      v28(v62, v10, v13);
      v47(v51, v29, v13);
      v27 = String.init<A>(reflecting:)();
      v26 = v30;
      v31 = v29;
      v22 = v47;
      (*(v14 + 8))(v31, v13);
    }

    outlined destroy of NSObject?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v14 + 8))(v20, v13);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, aBlock);

    v33 = v49;
    *(v49 + 1) = v32;
    _os_log_impl(&dword_1AEB26000, v23, v50, "Request to leave identifier: %s", v33, 0xCu);
    v34 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v20, v13);
  }

  v35 = v54;
  v36 = v62;
  v22(v62, v52, v13);
  v37 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  (*(v14 + 32))(v38 + v37, v36, v13);
  v39 = (v38 + ((v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
  v40 = v55;
  *v39 = v53;
  v39[1] = v40;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v41 = _Block_copy(aBlock);
  v42 = v35;

  v43 = v56;
  static DispatchQoS.unspecified.getter();
  v63 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v44 = v58;
  v45 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v43, v44, v41);
  _Block_release(v41);
  (*(v60 + 8))(v44, v45);
  (*(v57 + 8))(v43, v59);
}

void closure #1 in BackgroundSessionManager.leave(identifier:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v13);
  v34 = a2;
  v17 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), v33, v16);

  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = a3;
    v19[6] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), v19);

    v20 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v35);
    specialized Set._Variant.remove(_:)(v17);

    v20(v35, 0);
  }

  else
  {
    v32[1] = a4;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.service);
    (*(v12 + 16))(v15, a2, v11);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v12 + 8))(v15, v11);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEB26000, v22, v23, "Couldn't find session with identifier: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v30 = swift_allocError();
    *v31 = 5;
    a3();
  }
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)()
{
  v13 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static Log.service);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[4] = v4;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Ending session %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);

  return BackgroundSession.leave(endState:)(0xC000000000000028);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  }

  else
  {
    v2 = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v0 + 24) = v3;
    type metadata accessor for BackgroundSession(0);

    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Ended session %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  (*(v0 + 48))(0);
  v9 = *(v0 + 8);

  return v9();
}

{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for BackgroundSession(0);

    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Error ending session: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[6];
  v11 = v9;
  v10(v9);

  v12 = v0[1];

  return v12();
}

uint64_t BackgroundSessionManager.updateMembers(identifier:members:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v74 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.service);
  v23 = *(v15 + 16);
  v63 = a1;
  v24 = a1;
  v25 = v23;
  v23(v21, v24, v14);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v65 = a2;

  v62 = v27;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v28 = 136315394;
    v25(v13, v21, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v29 = v61;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v30 = (*(v15 + 48))(v29, 1, v14);
    v59 = v25;
    if (v30 == 1)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v34 = *(v15 + 32);
      v57 = v26;
      v35 = v74;
      v34(v74, v29, v14);
      v25(v60, v35, v14);
      v32 = String.init<A>(reflecting:)();
      v31 = v36;
      v37 = v35;
      v26 = v57;
      (*(v15 + 8))(v37, v14);
    }

    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v15 + 8))(v21, v14);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, aBlock);

    *(v28 + 4) = v38;
    *(v28 + 12) = 2080;
    v33 = v65;
    v75 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

    *(v28 + 14) = v41;
    _os_log_impl(&dword_1AEB26000, v26, v62, "Request to update members on identifier: %s with members: %s", v28, 0x16u);
    v42 = v58;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);

    v25 = v59;
  }

  else
  {

    (*(v15 + 8))(v21, v14);
    v33 = v65;
  }

  v43 = v66;
  v65 = *&v66[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v44 = v74;
  v25(v74, v63, v14);
  v45 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v46 = (v16 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  (*(v15 + 32))(v48 + v45, v44, v14);
  v49 = (v48 + v46);
  v50 = v67;
  *v49 = v64;
  v49[1] = v50;
  *(v48 + v47) = v33;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:);
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24_0;
  v51 = _Block_copy(aBlock);

  v52 = v43;

  v53 = v68;
  static DispatchQoS.unspecified.getter();
  v75 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v54 = v70;
  v55 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v53, v54, v51);
  _Block_release(v51);
  (*(v72 + 8))(v54, v55);
  (*(v69 + 8))(v53, v71);
}

void closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v14);
  v37 = a2;
  v18 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), v36, v17);

  if (v18)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a5;
    v20[6] = v35;
    v20[7] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), v20);
  }

  else
  {
    v21 = v13;
    v34 = a4;
    v22 = v35;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.service);
    (*(v21 + 16))(v16, a2, v12);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v21 + 8))(v16, v12);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v38);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Couldn't find session with identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v16, v12);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v32 = swift_allocError();
    *v33 = 5;
    v22(v32);
  }
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), a4, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)()
{
  BackgroundSession.updateMembers(_:)(*(v0 + 24));

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), 0, 0);
}

{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

CopresenceCore::BackgroundSessionManager::SessionUpdateState __swiftcall BackgroundSessionManager.SessionUpdateState.init(isRunning:hasUpdateRequest:)(Swift::Bool isRunning, Swift::Bool hasUpdateRequest)
{
  if (hasUpdateRequest)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isRunning);
}

Swift::Void __swiftcall BackgroundSessionManager.sessionsDidUpdate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v14 = &v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
    os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState]);
    v15 = v14[4];
    *(v14 + 2) = 257;
    os_unfair_lock_unlock(v14);
    if ((v15 & 1) == 0)
    {
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v6, 1, 1, v16);
      v18 = swift_allocObject();
      *(v18 + 16) = v0;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v6, v4, &_sScPSgMd, &_sScPSgMR);
      v19 = (*(v17 + 48))(v4, 1, v16);
      v20 = v12;
      v21 = v0;
      if (v19 == 1)
      {
        outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v4, v16);
      }

      v22 = _sSo17OS_dispatch_queueCABSch8DispatchWl();
      v23 = swift_allocObject();
      *(v23 + 16) = &async function pointer to partial apply for closure #2 in BackgroundSessionManager.sessionsDidUpdate();
      *(v23 + 24) = v18;
      v25[0] = 6;
      v25[1] = 0;
      v25[2] = v20;
      v25[3] = v22;
      v24 = v20;

      swift_task_create();
      outlined destroy of NSObject?(v6, &_sScPSgMd, &_sScPSgMR);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in BackgroundSessionManager.sessionsDidUpdate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return BackgroundSessionManager.processSessionUpdateRequest(isolation:)(0, 0);
}

uint64_t BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[6] = v4;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](BackgroundSessionManager.processSessionUpdateRequest(isolation:), v4, v6);
}

uint64_t BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState;
  v0[8] = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 5);
  *(v3 + 5) = 0;
  v5 = v0[5];
  if (v4 == 1)
  {
    os_unfair_lock_unlock((v5 + v0[8]));
    v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *(v8 + 16) = v5;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v10 = v0[3];
    v11 = v0[4];

    return MEMORY[0x1EEE6DBF8](v0 + 2, v6, v7, v10, v11, &async function pointer to partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), v8, v6);
  }

  else
  {
    v12 = v5 + v0[8];
    *(v12 + 4) = 0;
    os_unfair_lock_unlock(v12);
    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](BackgroundSessionManager.processSessionUpdateRequest(isolation:), v3, v2);
}

{
  v1 = v0[2];
  if ((*((*MEMORY[0x1E69E7D40] & *v0[5]) + 0xA8))())
  {
    v3 = v2;
    v4 = v0[5];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v4, v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[5] + v0[8];
  os_unfair_lock_lock(v6);
  v7 = *(v6 + 5);
  *(v6 + 5) = 0;
  v8 = v0[5];
  v9 = v8 + v0[8];
  if (v7)
  {
    os_unfair_lock_unlock(v9);
    v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
    v12 = swift_task_alloc();
    v0[9] = v12;
    *(v12 + 16) = v8;
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v14 = v0[3];
    v15 = v0[4];

    return MEMORY[0x1EEE6DBF8](v0 + 2, v10, v11, v14, v15, &async function pointer to partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), v12, v10);
  }

  else
  {
    *(v9 + 4) = 0;
    os_unfair_lock_unlock(v9);
    v16 = v0[1];

    return v16();
  }
}

uint64_t closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0xC0))();
  v4 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundSession(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
    v1 = Set.Iterator.init(_cocoa:)();
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
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

    v8 = v11 & *(v1 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v38 = v5;
  v39 = v4;
  v37 = v12;
  while (v4 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (*(v0 + 136) = v20, type metadata accessor for BackgroundSession(0), swift_dynamicCast(), v19 = *(v0 + 128), v17 = v7, v18 = v8, !v19))
    {
LABEL_27:
      outlined consume of Set<String>.Iterator._Variant(v4);
      v33 = MEMORY[0x1E69E7CC0];
      *(v0 + 112) = MEMORY[0x1E69E7CC0];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      TaskGroup.makeAsyncIterator()();
      *(v0 + 208) = v33;
      v34 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<TUConversationActivitySessionContainer>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR, MEMORY[0x1E69E8598]);
      v35 = swift_task_alloc();
      *(v0 + 216) = v35;
      *v35 = v0;
      v35[1] = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
      v2 = *(v0 + 184);
      v1 = v0 + 120;
      v3 = v34;

      return MEMORY[0x1EEE6D8C8](v1, v2, v3);
    }

LABEL_19:
    v41 = v18;
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v19;
    v40 = v25;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21, v22, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v22) = (*(v24 + 48))(v22, 1, v23);

    v27 = *(v0 + 168);
    if (v22 == 1)
    {
      outlined destroy of NSObject?(*(v0 + 168), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v27, v23);
    }

    if (*v26)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = **(v0 + 152);
    v32 = swift_allocObject();
    *(v32 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    *(v32 + 24) = v40;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);

    if (v30 | v28)
    {
      v13 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v28;
      *(v0 + 80) = v30;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v0 + 176);
    *(v0 + 88) = 1;
    *(v0 + 96) = v13;
    *(v0 + 104) = v31;
    swift_task_create();

    v1 = outlined destroy of NSObject?(v14, &_sScPSgMd, &_sScPSgMR);
    v7 = v17;
    v8 = v41;
    v5 = v38;
    v4 = v39;
    v12 = v37;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_27;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v1, v2, v3);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 200);
    v6 = v2 + 184;
    v4 = *(v2 + 184);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for ActivitySession.Errors;
  }

  else
  {
    v7 = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[15];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1B2710150]();
    if (*((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0[26] = v0[14];
    v3 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<TUConversationActivitySessionContainer>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR, MEMORY[0x1E69E8598]);
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v5 = v0[23];

    return MEMORY[0x1EEE6D8C8](v0 + 15, v5, v3);
  }

  else
  {
    v6 = v0[26];
    v7 = v0[18];
    (*(v0[24] + 8))(v0[25], v0[23]);
    *v7 = v6;

    v8 = v0[1];

    return v8();
  }
}

uint64_t closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), a4, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  *(v0 + 32) = BackgroundSession.container.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t BackgroundSessionManager.updateShare(_:activityID:)(uint64_t a1)
{
  lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
  swift_allocError();
  *v2 = 0;
  swift_willThrow();
  v3 = *(v1 + 8);

  return v3();
}

id BackgroundSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundSessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for BackgroundSessionManagerDataSource.delegate.modify in conformance BackgroundSessionManager(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xB8))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for BackgroundSessionManagerDataSource.updateShare(_:activityID:) in conformance BackgroundSessionManager(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & **v2) + 0x158);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2);
}

uint64_t BackgroundSessionManager.backgroundSession(_:stateChanged:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.service);
  outlined copy of BackgroundSession.State(a2);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of BackgroundSession.State(a2);

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = a2;
    aBlock[0] = v17;
    *v16 = 136315394;
    outlined copy of BackgroundSession.State(a2);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);
    v32 = v11;
    v21 = v8;
    v22 = v3;
    v23 = v20;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v37 = a1;
    type metadata accessor for BackgroundSession(0);

    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);
    v3 = v22;
    v8 = v21;
    v11 = v32;

    *(v16 + 14) = v26;
    _os_log_impl(&dword_1AEB26000, v13, v14, "BackgroundSessionManager learned that state changed to %s on session: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    v27 = v16;
    v6 = v33;
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  v28 = swift_allocObject();
  v28[2] = v3;
  v28[3] = a2;
  v28[4] = a1;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:stateChanged:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_39;
  v29 = _Block_copy(aBlock);
  outlined copy of BackgroundSession.State(a2);

  v30 = v3;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v8, v29);
  _Block_release(v29);
  (*(v36 + 8))(v8, v6);
  (*(v34 + 8))(v11, v35);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:stateChanged:)(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))();
  if (a2 >> 62 == 3 && __ROR8__(a2 + 0x4000000000000000, 3) >= 5uLL)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      type metadata accessor for BackgroundSession(0);

      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Found that session: %s is invalid, removing session.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v16 = (*((*v6 & *a1) + 0xD0))(v17);
    specialized Set._Variant.remove(_:)(a3);

    return v16(v17, 0);
  }

  return result;
}

uint64_t BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.service);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v20 = v14;
    _os_log_impl(&dword_1AEB26000, v15, v16, "BackgroundSessionManager didRejectKeyRecoveryRequest from: %@", v18, 0xCu);
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v19, -1, -1);
    v21 = v18;
    v7 = v26;
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v9, v23);
  _Block_release(v23);
  (*(v7 + 8))(v9, v6);
  (*(v27 + 8))(v12, v28);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:)(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.service);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = a1;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    type metadata accessor for AddressableMember();
    v26 = v11;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    v18 = Set.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);
    v11 = v26;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v13, v14, "BackgroundSessionManager didReceiveUpdatedUnknownParticipantList: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v21 = v17;
    a1 = v27;
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v23 = _Block_copy(aBlock);

  v24 = v3;

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v8, v23);
  _Block_release(v23);
  (*(v30 + 8))(v8, v6);
  (*(v28 + 8))(v11, v29);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized closure #1 in PresenceController.init<A>(dataSource:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of UserNotificationCenter(v4, v17);
      v5 = v18;
      v6 = v19;
      v7 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v20[3] = v5;
      v20[4] = v6;
      v16 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      v9 = *(*(v5 - 8) + 16);
      v9(boxed_opaque_existential_1, v7, v5);
      v10 = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v21 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        v10 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      MEMORY[0x1EEE9AC00](v10);
      v14 = &v17[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9(v14, boxed_opaque_existential_1, v5);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v12, v14, &v21, v5, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v2 = v21;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError()
{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError);
  }

  return result;
}

uint64_t specialized closure #1 in PresenceController.init<A>(dataSource:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in PresenceController.init<A>(dataSource:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ContiguousBytes(&v12, v10 + 40 * a1 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void partial apply for closure #1 in BackgroundSessionManager.leave(identifier:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  closure #1 in BackgroundSessionManager.leave(identifier:completion:)(v3, v0 + v2, v5, v6);
}

void partial apply for closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(v5, v0 + v2, v8, v9, v7);
}

uint64_t partial apply for closure #2 in BackgroundSessionManager.sessionsDidUpdate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSessionManager.sessionsDidUpdate()();
}

unint64_t _sSo17OS_dispatch_queueCABSch8DispatchWl()
{
  result = _sSo17OS_dispatch_queueCABSch8DispatchWL;
  if (!_sSo17OS_dispatch_queueCABSch8DispatchWL)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo17OS_dispatch_queueCABSch8DispatchWL);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed @async () -> (@out A)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void *specialized PresenceController.init<A>(dataSource:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<EmptyPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR, &protocol conformance descriptor for SKPresenceDataSource<A>);
  v13 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  swift_allocObject();
  a2[4] = CurrentValueSubject.init(_:)();
  a2[5] = MEMORY[0x1E69E7CD0];
  a2[2] = a1;
  a2[3] = v8;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  v10 = a1;
  v13 = v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never>, [PresentDevice]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMR, MEMORY[0x1E695BD60]);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a2;
}

uint64_t BackgroundSessionManager.sessions.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

unint64_t outlined copy of BackgroundSession.State(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t outlined consume of BackgroundSession.State(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t dispatch thunk of BackgroundSessionManager.updateShare(_:activityID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x158);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for BackgroundSessionManager.SessionUpdateState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for BackgroundSessionManager.SessionUpdateState(_WORD *result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5(a1, v4);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined assign with copy of IDSGroupSessionProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t outlined consume of BackgroundSession.State?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of BackgroundSession.State(result);
  }

  return result;
}

unint64_t outlined copy of BackgroundSession.State?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined copy of BackgroundSession.State(result);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t _s14CopresenceCore12XPCInterfacePAAE20isConnectionEntitledySbSo15NSXPCConnectionCFZAA21PeoplePickerInterfaceO_Tt0g5Tm()
{
  v0 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v0 == 2)
  {
    v0 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  v1 = v0;
  v2 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v1 & 1) != 0 || v2 != 2 && (v2)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v3)
  {
LABEL_9:
    v4 = 1;
  }

  else
  {
    v4 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
    if (v4 == 2)
    {
      v4 = v3[1];
    }
  }

  return v4 & 1;
}

uint64_t _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SSSgTt0B5(char a1)
{
  v2 = Entitlement.rawValue.getter();
  v3 = MEMORY[0x1B270FF70](v2);

  v4 = [v1 valueForEntitlement_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for XPCIdentity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for XPCIdentity(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for XPCIdentity(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  specialized Sequence.contains(where:)(a1, a2, a3, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60, &lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject);
  return v3 & 1;
}

{
  specialized Sequence.contains(where:)(a1, a2, a3, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
  return v3 & 1;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, a4, a5);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(a6, a4, a5);
    Set.Iterator.init(_cocoa:)();
    v8 = v30;
    v12 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v29 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v23)
    {
      while (1)
      {
        v35 = v23;
        v24 = a1(&v35);

        if (v7)
        {
          v25 = v29;
          goto LABEL_24;
        }

        v8 = v29;
        if (v24)
        {
          break;
        }

        v14 = v21;
        v15 = v22;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for NSObject(0, a4, a5);
        swift_dynamicCast();
        v23 = v35;
        v21 = v14;
        v22 = v15;
        if (!v35)
        {
          goto LABEL_21;
        }
      }

      v25 = v29;
LABEL_24:
      outlined consume of Set<String>.Iterator._Variant(v25);
    }

    else
    {
LABEL_21:
      v8 = v29;
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant(v8);
    }
  }

  else
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B2710B10](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t XPCHostConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for XPCHostConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCHostConnection.bundleIdentifier.getter()
{
  v1 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);

  return v1;
}

id @objc XPCHostConnection.description.getter(void *a1)
{
  v1 = a1;
  v2 = XPCHostConnection.description.getter();
  v4 = v3;

  v5 = MEMORY[0x1B270FF70](v2, v4);

  return v5;
}

uint64_t XPCHostConnection.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(84);
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE342D0);
  MEMORY[0x1B2710020](*(v0 + direct field offset for XPCHostConnection.bundleIdentifier), *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8));
  MEMORY[0x1B2710020](0xD00000000000001ALL, 0x80000001AEE342F0);
  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE34310);
  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v4, v5);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

void closure #1 in XPCHostConnection.init(connection:queue:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.host);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v2;
      v9 = v4;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Connection interrupted for host connection: %@", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    [*&v4[direct field offset for XPCHostConnection.connection] invalidate];
  }
}

void closure #2 in XPCHostConnection.init(connection:queue:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.host);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v2;
      *(v7 + 12) = 2112;
      v9 = *(v4 + direct field offset for XPCHostConnection.queue);
      *(v7 + 14) = v9;
      v8[1] = v9;
      v10 = v4;
      v11 = v9;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Connection invalidated for host connection: %@ on queue = %@", v7, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x140))();
  }
}

Swift::Void __swiftcall XPCHostConnection.destroyConnection()()
{
  v1 = *(v0 + direct field offset for XPCHostConnection.connection);
  [v1 setExportedObject_];
  [v1 setInvalidationHandler_];
  [v1 setInterruptionHandler_];

  [v1 invalidate];
}

void XPCHostConnection.withMessageCoalescing(byIdentifier:block:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  swift_beginAccess();
  v11 = *&v5[v10];

  v12 = specialized Set.contains(_:)(a1, a2, v11);

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *&v5[v14];
    *&v5[v14] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @callee_guaranteed () -> (), v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *&v5[v14] = v22;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v22, a1, a2);
    swift_endAccess();

    a3(v16);
    v17 = *&v5[direct field offset for XPCHostConnection.connection];
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a1;
    v18[4] = a2;
    aBlock[4] = partial apply for closure #1 in XPCHostConnection.withMessageCoalescing(byIdentifier:block:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_16_1;
    v19 = _Block_copy(aBlock);

    v20 = v5;

    [v17 scheduleSendBarrierBlock_];
    _Block_release(v19);
  }
}

uint64_t closure #1 in XPCHostConnection.withMessageCoalescing(byIdentifier:block:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a2, a3);
  swift_endAccess();

  v6 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v12 = *(*(v8 + 56) + 16 * v9);

      v11 = swift_allocObject();
      *(v11 + 16) = v12;
      swift_beginAccess();

      specialized Dictionary.subscript.setter(0, 0, a2, a3);
      swift_endAccess();
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))(a2, a3, partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v11);
    }

    else
    {
    }
  }

  return result;
}

void XPCHostConnection.scheduleInvalidation(_:)(uint64_t a1, uint64_t a2)
{
  if ((v2[direct field offset for XPCHostConnection.hasScheduledInvalidation] & 1) == 0)
  {
    v2[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 1;
    v5 = *&v2[direct field offset for XPCHostConnection.connection];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;
    v9[4] = partial apply for closure #1 in XPCHostConnection.scheduleInvalidation(_:);
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_25;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v5 scheduleSendBarrierBlock_];
    _Block_release(v7);
  }
}

void closure #1 in XPCHostConnection.scheduleInvalidation(_:)(_BYTE *a1, uint64_t (*a2)(void))
{
  a1[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  if (a2())
  {
    v3 = *&a1[direct field offset for XPCHostConnection.connection];

    [v3 invalidate];
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_1AEB26000, oslog, v6, "No longer invalidating scheduled invalidation for client %@", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }
  }
}

id XPCHostConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCHostConnection.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for XPCHostConnection(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t @objc XPCHostConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for XPCHostConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t XPCHostConnection.isInCallUI.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = TUPreferredFaceTimeBundleIdentifier();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v7 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v11[0] = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);
  v11[1] = v7;
  v10[2] = v11;
  v8 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v8 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t objectdestroy_12Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int ActivityAuthorizationError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

id ActivityAuthorizationManager.neighborhoodActivityConduit.getter()
{
  v1 = OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit;
  v2 = *(v0 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 neighborhoodActivityConduit];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  ObjectType = swift_getObjectType();
  v16 = swift_getObjectType();
  v17 = specialized ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v14, a3, a4, a5, a6, v19, ObjectType, v13, v16, v12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v17;
}

id ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  ObjectType = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v16, a3, a4, a5, a6, v22[1], ObjectType, v13, v19, v12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v20;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:queue:appPolicyManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  objc_allocWithZone(v3);
  swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = one-time initialization token for shared;
  v8 = static IMUserNotificationCenter.shared;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static CPAudioRoutePolicyManager.shared;
  v10 = objc_allocWithZone(CPFeatureFlags);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_allocWithZone(v4);
  v23[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v23[4] = &protocol witness table for IMUserNotificationCenter;
  v23[0] = v8;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v14 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *&v13[v14] = v15;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v13[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v23, &v13[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a3;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v11;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v12;
  v22.receiver = v13;
  v22.super_class = v4;
  v17 = a2;
  v18 = a3;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [a1 addObserver:v19 queue:v17];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  swift_deallocPartialClassInstance();
  return v19;
}

id ActivityAuthorizationManager.init(dataSource:queue:appPolicyManager:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = one-time initialization token for shared;
  v7 = static IMUserNotificationCenter.shared;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static CPAudioRoutePolicyManager.shared;
  v9 = objc_allocWithZone(CPFeatureFlags);
  v10 = v8;
  v11 = [v9 init];
  v12 = objc_allocWithZone(ObjectType);
  v22[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v22[4] = &protocol witness table for IMUserNotificationCenter;
  v22[0] = v7;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v13 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v12[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v22, &v12[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a3;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v10;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v11;
  v21.receiver = v12;
  v21.super_class = ObjectType;
  v16 = a2;
  v17 = a3;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 addObserver:v18 queue:v16];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  swift_deallocPartialClassInstance();
  return v18;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:queue:)(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(v2);
  swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = one-time initialization token for shared;
  v6 = static IMUserNotificationCenter.shared;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = one-time initialization token for shared;
  v8 = static CPApplicationPolicyManager.shared;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static CPAudioRoutePolicyManager.shared;
  v10 = objc_allocWithZone(CPFeatureFlags);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_allocWithZone(v2);
  v23[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v23[4] = &protocol witness table for IMUserNotificationCenter;
  v23[0] = v6;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v14 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *&v13[v14] = v15;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v13[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v23, &v13[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = v8;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v11;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v12;
  v22.receiver = v13;
  v22.super_class = v3;
  v17 = v8;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [a1 addObserver:v19 queue:v18];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  swift_deallocPartialClassInstance();
  return v19;
}