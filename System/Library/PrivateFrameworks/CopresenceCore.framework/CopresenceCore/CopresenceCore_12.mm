uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_CapabilityFlag._protobuf_nameMap, 0, "UNSET", 5);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_EncryptionID._protobuf_nameMap, 1, "uuid", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack._protobuf_nameMap, 1, "attachmentUUID", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed._protobuf_nameMap, 1, "attachmentUUID", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_EncryptionID._protobuf_nameMap, "uuid", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_TopicSubscribersRequest.TopicTerminatedAck._protobuf_nameMap, "topicName", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_TopicSubscribers.TerminateTopic._protobuf_nameMap, "topicName", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_SubscribeRequest.RecordAck._protobuf_nameMap, "seqNumsAck", 10);
}

uint64_t AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_14;
      }

      if (result == 5 || result == 6)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
          closure #2 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 3:
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }
    }
  }
}

uint64_t closure #1 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v13 = v3[4];
    v14 = v3[5];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_21;
      }

      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
    }

    else
    {
      if (!v15)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
LABEL_21:
          v18 = v3[6];
          v19 = v3[7];
          v20 = v19 >> 62;
          if ((v19 >> 62) > 1)
          {
            if (v20 != 2)
            {
              goto LABEL_30;
            }

            v21 = *(v18 + 16);
            v22 = *(v18 + 24);
          }

          else
          {
            if (!v20)
            {
              if ((v19 & 0xFF000000000000) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_29;
            }

            v21 = v18;
            v22 = v18 >> 32;
          }

          if (v21 != v22)
          {
LABEL_29:
            dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
          }

LABEL_30:
          type metadata accessor for AttachmentLedger_MMCSMetadata(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }

LABEL_20:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        goto LABEL_21;
      }

      v16 = v13;
      v17 = v13 >> 32;
    }

    if (v16 == v17)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 36), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t closure #2 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 40), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_1AEE0C200;
  *(a2 + 48) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 40);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_MMCSMetadata(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x1B2710020](0x746144626F6C422ELL, 0xE900000000000061);
  static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName = 0xD00000000000001DLL;
  *algn_1EB617968 = 0x80000001AEE331C0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE339F0);
  static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName = 0xD000000000000024;
  unk_1EB617A50 = 0x80000001AEE33310;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB617AF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE337D0);

  static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName = v1;
  unk_1EB617B20 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB617AF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE337A0);

  static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName = v1;
  *algn_1EB617B48 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE33740);
  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName = 0xD000000000000022;
  unk_1EB617BB0 = 0x80000001AEE33370;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x64656464412ELL, 0xE600000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName = v1;
  *algn_1EB617BD8 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName;
  v2 = *algn_1EB617BD8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName = v1;
  unk_1EB617C00 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6465766F6D65522ELL, 0xE800000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName = v1;
  *algn_1EB617C28 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE336E0);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName = v1;
  unk_1EB617C50 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
  v2 = qword_1EB617C50;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName = v1;
  *algn_1EB617C78 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
  v2 = qword_1EB617C50;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6C6C75462ELL, 0xE500000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName = v1;
  unk_1EB617CA0 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x437375746174532ELL, 0xEE006465676E6168);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName = v1;
  *algn_1EB617CC8 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
  v2 = *algn_1EB617CC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName = v1;
  unk_1EB617CF0 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
  v2 = *algn_1EB617CC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6C6C75462ELL, 0xE500000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName = v1;
  *algn_1EB617D18 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x6D6863617474412ELL, 0xEE00646441746E65);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName = 0xD000000000000028;
  *algn_1EB617D58 = 0x80000001AEE333A0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE33630);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName = 0xD000000000000028;
  unk_1EB617D80 = 0x80000001AEE333A0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE33610);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName = 0xD000000000000028;
  *algn_1EB617DA8 = 0x80000001AEE333A0;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName;
  v2 = *algn_1EB617DA8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6E6961746E6F432ELL, 0xEA00000000007265);

  static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName = v1;
  unk_1EB617DD0 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000017, 0x80000001AEE335E0);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName = 0xD000000000000028;
  *algn_1EB617DF8 = 0x80000001AEE333A0;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName;
  v2 = *algn_1EB617DF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6E6961746E6F432ELL, 0xEA00000000007265);

  static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName = v1;
  unk_1EB617E20 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x74704F747365542ELL, 0xEB000000006E6F69);
  static AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName = 0xD000000000000024;
  *algn_1EB617EA8 = 0x80000001AEE33400;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE35920);
  static CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName = 0xD00000000000001ALL;
  qword_1EB618080 = 0x80000001AEE35440;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35900);
  static CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName = 0xD00000000000001ALL;
  *algn_1EB6180A8 = 0x80000001AEE35440;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE358A0);
  static CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName = 0xD000000000000013;
  qword_1EB618100 = 0x80000001AEE35460;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x616E696D7265542ELL, 0xEF6369706F546574);
  static CP_TopicSubscribers.TerminateTopic.protoMessageName = 0xD000000000000013;
  *algn_1EB618128 = 0x80000001AEE35460;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static CP_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB6181E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE35760);

  static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName = v1;
  qword_1EB618210 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static CP_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB6181E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE337D0);

  static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName = v1;
  *algn_1EB618238 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE356C0);
  static CP_PublishRequest.UpdatedEncryptionID.protoMessageName = 0xD000000000000011;
  *algn_1EB6182B8 = 0x80000001AEE354C0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE339F0);
  static CP_CreateTopicResponse.ClientTopicConfig.protoMessageName = 0xD000000000000016;
  qword_1EB618370 = 0x80000001AEE35560;
  return result;
}

uint64_t *AttachmentLedger_MMCSMetadata.BlobData.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    v6 = v3[1];
    v7 = v3[2];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_12:
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AttachmentLedger_MMCSMetadata.BlobData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_MMCSMetadata.BlobData@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_MMCSMetadata.BlobData(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2)
      {
        closure #2 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      closure #3 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      goto LABEL_5;
    }

    if (result == 4)
    {
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_5;
    }

    if (result != 5)
    {
      goto LABEL_5;
    }

LABEL_16:
    dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufFixed64();
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #3 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (type metadata accessor for ProtobufFixed64(), type metadata accessor for AttachmentLedger_AttachmentEncryption(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[3])
      {
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
        dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }

      v14 = v3[5];
      v15 = v3[6];
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_24;
        }

        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
      }

      else
      {
        if (!v16)
        {
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v17 = v14;
        v18 = v14 >> 32;
      }

      if (v17 != v18)
      {
LABEL_23:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      }

LABEL_24:
      type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 36), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_MMCSMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_MMCSMetadata);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentMetadata@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentMetadata(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AuthPutMaterials.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!v3[6] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AuthPutMaterials@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AuthPutMaterials(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AuthPutMaterials(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AuthPutMaterials(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AuthPutMaterials.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result == 1)
    {
      a4(v4, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v3[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v13 = v3[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!v3[6] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentAuthGetToken@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentAuthGetToken(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, &protocol conformance descriptor for AttachmentLedger_AttachmentAuthGetToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentAuthGetToken(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, &protocol conformance descriptor for AttachmentLedger_AttachmentAuthGetToken);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentAuthGetToken(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, &protocol conformance descriptor for AttachmentLedger_AttachmentAuthGetToken);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_EncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AttachmentLedger_EncryptionID.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_EncryptionID(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 1:
        closure #1 in AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
LABEL_10:
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  }

LABEL_11:
  if (v3[2])
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 28), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentEncryption(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_ErrorResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_ErrorResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for AttachmentLedger_ErrorResponse(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_ErrorResponse@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_ErrorResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_CreateTopicRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicRequest@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest, &protocol conformance descriptor for AttachmentLedger_CreateTopicRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest, &protocol conformance descriptor for AttachmentLedger_CreateTopicRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest, &protocol conformance descriptor for AttachmentLedger_CreateTopicRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #2 in AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 24), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v9 = *(Topic - 8);
  MEMORY[0x1EEE9AC00](Topic);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v7, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, Topic) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!v3[4] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
      v31 = v39;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v39, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v40, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_EncryptionID);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_EncryptionID);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v14 - v9, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for AttachmentLedger_SubscribeRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_EncryptionID);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEB00000000657A69, &static AttachmentLedger_SubscribeRequest.Initialize.protoMessageName, &qword_1EB617A90);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6D6863617474412ELL, 0xEE006B6341746E65, &static AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName, &qword_1EB617AB8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEE006B6341657A69, &static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName, algn_1EB617AF8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x70556369706F542ELL, 0xEC00000065746164, &static AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName, &qword_1EB617B70);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEB00000000657A69, &static CP_SubscribeRequest.Initialize.protoMessageName, &qword_1EB618180);
}

{
  return one-time initialization function for protoMessageName(a1, 0x4164726F6365522ELL, 0xEA00000000006B63, &static CP_SubscribeRequest.RecordAck.protoMessageName, &qword_1EB6181A8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEE006B6341657A69, &static CP_SubscribeResponse.InitializeAck.protoMessageName, algn_1EB6181E8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x70556369706F542ELL, 0xEC00000065746164, &static CP_SubscribeResponse.TopicUpdate.protoMessageName, &qword_1EB618260);
}

void *AttachmentLedger_SubscribeRequest.Initialize.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeRequest.Initialize.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        break;
      }

      switch(result)
      {
        case 4:
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          break;
        case 5:
          v11 = v4;
          type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
LABEL_19:
          v4 = v11;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_5;
    }

    if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      goto LABEL_5;
    }

    if (result != 3)
    {
      goto LABEL_5;
    }

    v11 = v4;
    type metadata accessor for AttachmentLedger_EncryptionID(0);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
    goto LABEL_19;
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for AttachmentLedger_EncryptionID(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (v3[3])
      {
        dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
      }

      if (*(v3[4] + 16))
      {
        type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (v3[5])
      {
        dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      }

      type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 40), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = 0;
  *(a2 + 4) = v4;
  *(a2 + 5) = 0;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000021;
  *a5 = 0x80000001AEE33340;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000022;
  *a5 = 0x80000001AEE33370;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000013;
  *a5 = 0x80000001AEE35480;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x80000001AEE354A0;
  return result;
}

void *AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest.AttachmentAck@<X0>(void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a6(v11, a1, a2, a3);
        break;
      case 2:
        a5(v11, a1, a2, a3);
        break;
      case 1:
        a4(v11, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
      v31 = v39;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v14 - v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for AttachmentLedger_SubscribeResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v11 = v4;
            type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
LABEL_19:
            v4 = v11;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            v11 = v4;
            type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
            goto LABEL_19;
          case 6:
            closure #6 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 3:
            dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #6 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
      }

      if (*(v3[3] + 16))
      {
        type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (*(v3[4] + 16))
      {
        type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 36), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 40), v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 40);
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 24), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v17 = xmmword_1AEE07B50;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v9 = v17;
  if (v4 || *(&v17 + 1) >> 60 == 15)
  {
    return outlined consume of Data?(v17, *(&v17 + 1));
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v16 = *(v10 - 8);
  v11 = *(v16 + 48);
  v18 = v10;
  v12 = v11(v8, 1);
  outlined copy of Data._Representation(v9, *(&v9 + 1));
  outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v12 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  outlined consume of Data?(v9, *(&v9 + 1));
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *a2 = v9;
  v14 = v18;
  swift_storeEnumTagMultiPayload();
  return (*(v16 + 56))(a2, 0, 1, v14);
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(v3, a1, a2, a3);
      result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v9 - v3);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v3, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v4, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = *v4;
    v6 = v4[1];
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data._Representation(v7, v6);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v4, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.TopicUpdate(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 4:
          closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 10:
          type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
      v31 = v39;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v6, &v16 - v11, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
LABEL_11:
    if (!*(v6 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20)))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (!v5)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  *(a2 + *(a1 + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName;
}

uint64_t AttachmentLedger_EncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AEE07B20;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 28), v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentEncryption@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1AEE0C200;
  *(a3 + 16) = 0;
  UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  if (v3[2])
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    if (!v3[4])
    {
      goto LABEL_16;
    }

LABEL_15:
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v3[4])
  {
    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3[2] || (lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 28), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v6 = *(updated - 8);
  v7 = MEMORY[0x1EEE9AC00](updated);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = updated;
  v26 = updated;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
      v31 = v39;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v39, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v14 = *(updated - 8);
  v15 = MEMORY[0x1EEE9AC00](updated);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, updated);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = updated;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v30 = updated;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v6 = *(updated - 8);
  v7 = MEMORY[0x1EEE9AC00](updated);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = updated;
  v26 = updated;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #4 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v6 = *(updated - 8);
  v7 = MEMORY[0x1EEE9AC00](updated);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = updated;
  v26 = updated;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, v19, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
      v31 = v40;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, v24, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v39, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v36, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v14 - v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v10, 1, updated) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #4 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 24), v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if ((*(v9 + 48))(v7, 1, updated) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = v5[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      a5(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 24), v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if ((*(v9 + 48))(v7, 1, updated) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
LABEL_10:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v4;
  if (v3[2])
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v11 = 0;
  }

  v12 = v3[4];
  v13 = v3[5];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = *(v12 + 16);
    v17 = *(v12 + 24);
  }

  else
  {
    if (!v14)
    {
      v15 = v11;
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v15)
      {
        return result;
      }

      goto LABEL_22;
    }

    v16 = v12;
    v17 = v12 >> 32;
  }

  v15 = v11;
  if (v16 != v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_1AEE0C200;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[4] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v9 = *(AuthToken - 8);
  MEMORY[0x1EEE9AC00](AuthToken);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenRequest + 32), v7, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  if ((*(v9 + 48))(v7, 1, AuthToken) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_GetAuthTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v6 = *(*(AuthToken - 8) + 56);

  return v6(a2 + v4, 1, 1, AuthToken);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_ErrorResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName;
}

uint64_t static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v13 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      a6(v6 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  if (!*v7 || (a4(a1, a2), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v8))
  {
    v14 = v7[2];
    if (!v14 || (result = a6(v14, 2, a2, a3, a5), !v8))
    {
      (a7)(0, a2, a3, a4, a5);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.TopicUpdate@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenRequest.TestOption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenRequest.TestOption(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.TestOption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          closure #3 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, &protocol conformance descriptor for AttachmentLedger_AttachmentAuthGetToken);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, &protocol conformance descriptor for AttachmentLedger_AttachmentAuthGetToken);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 28), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 32), v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_GetAuthTokenResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_CreateTopicRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v10 = v4[2];
    v11 = v4[3];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_14;
      }

      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
    }

    else
    {
      if (!v12)
      {
        if ((v11 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v5)
        {
          return result;
        }

        goto LABEL_14;
      }

      v13 = v10;
      v14 = v10 >> 32;
    }

    if (v13 != v14)
    {
      goto LABEL_13;
    }

LABEL_14:
    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_MMCSMetadata.BlobData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAttachmentMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAttachmentMetadataRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAttachmentMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_ResponseStatus._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static AttachmentLedger_ResponseStatus._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v6)
  {
    while ((v14 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a5(a1, v9, a2, a3);
          break;
        case 2:
          a4(a1, v9, a2, a3);
          break;
        case 1:
          lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_GetAttachmentMetadataResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_GetAttachmentMetadataResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  if (!*v6 || (lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
  {
    result = a4(v6, a1, a2, a3);
    if (!v7)
    {
      a5(v6, a1, a2, a3);
      a6(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAttachmentMetadataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AttachmentMetadataResponse + 24), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse, &protocol conformance descriptor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_GetAttachmentMetadataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AttachmentMetadataResponse + 28), v7, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

Swift::Int AttachmentLedger_MMCSMetadata.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  UnknownStorage.init()();
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 28);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_EncryptionID@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance AttachmentLedger_ResponseStatus@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataResponse);

  return Message.debugDescription.getter();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse, &protocol conformance descriptor for AttachmentLedger_GetAttachmentMetadataResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static AttachmentLedger_GetAuthTokenResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = (&v42 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
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

  v44 = v10;
  v42 = v6;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v23 = *(AuthTokenResponse + 28);
  v24 = *(v18 + 48);
  v45 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v23, v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v23, &v20[v24], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v24], 1, v11) == 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v17, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v25(&v20[v24], 1, v11) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_17:
    v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v33 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
LABEL_36:
    v35 = v20;
LABEL_37:
    outlined destroy of NSObject?(v35, v32, v33);
    goto LABEL_38;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v20[v24], v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  if ((*v17 != *v14 || v17[1] != v14[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v17[2] != v14[2] || v17[3] != v14[3])
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
    v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
    v33 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
    goto LABEL_36;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((v34 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  v26 = v44;
  v27 = *(AuthTokenResponse + 32);
  v28 = *(v47 + 48);
  v29 = v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v45 + v27, v44, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v27, v26 + v28, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v30 = v49;
  v31 = *(v48 + 48);
  if (v31(v26, 1, v49) != 1)
  {
    v38 = v46;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v46, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    if (v31(v26 + v28, 1, v30) != 1)
    {
      v39 = v26 + v28;
      v40 = v42;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v42, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      v41 = specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(v38, v40);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      outlined destroy of NSObject?(v26, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
      if ((v41 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    goto LABEL_42;
  }

  if (v31(v26 + v28, 1, v30) != 1)
  {
LABEL_42:
    v32 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd;
    v33 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR;
    v35 = v26;
    goto LABEL_37;
  }

  outlined destroy of NSObject?(v26, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
LABEL_54:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D12AuthGetTokenV_Tt1g5(v29[2], *(a2 + 16)))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v36 & 1;
  }

LABEL_38:
  v36 = 0;
  return v36 & 1;
}

uint64_t specialized static AttachmentLedger_GetAuthTokenRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(AuthToken - 8);
  MEMORY[0x1EEE9AC00](AuthToken);
  v7 = &AuthTokenRequest - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&AuthTokenRequest - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &AuthTokenRequest - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a1 + 8))
  {
    v15 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v16)
    {
      if (v15 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      goto LABEL_20;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_20;
  }

  v17 = v12;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_20;
  }

  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v18 = *(AuthTokenRequest + 32);
  v19 = *(v17 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v18, v14, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v26 = v19;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v18, &v14[v19], &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v20 = *(v5 + 48);
  if (v20(v14, 1, AuthToken) == 1)
  {
    if (v20(&v14[v26], 1, AuthToken) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_19;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v21 = v26;
  if (v20(&v14[v26], 1, AuthToken) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
LABEL_19:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMR);
    goto LABEL_20;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v21], v7, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  v24 = specialized static AttachmentLedger_GetAuthTokenRequest.TestOption.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  if (v24)
  {
    goto LABEL_23;
  }

LABEL_20:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static AttachmentLedger_GetAuthTokenRequest.TestOption.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_CreateTopicResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v47 = *(Topic - 8);
  v48 = Topic;
  MEMORY[0x1EEE9AC00](Topic);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = (&v41 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMR);
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
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  v23 = *(TopicResponse + 24);
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
  v27 = *(TopicResponse + 28);
  v28 = *(v46 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v44 + v27, v43, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v27, v26 + v28, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v29 = v48;
  v30 = *(v47 + 48);
  if (v30(v26, 1, v48) == 1)
  {
    if (v30(v26 + v28, 1, v29) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
LABEL_54:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_42;
  }

  v37 = v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v45, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if (v30(v26 + v28, 1, v29) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v37, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
LABEL_42:
    v31 = &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMd;
    v32 = &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMR;
    v34 = v26;
    goto LABEL_37;
  }

  v38 = v26 + v28;
  v39 = v41;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, v41, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v40 = specialized static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(v37, v39);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v39, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v37, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if (v40)
  {
    goto LABEL_54;
  }

LABEL_38:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_CreateTopicRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeResponse(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  v18 = specialized static AttachmentLedger_SubscribeResponse.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v34 - v21, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v37, &v22[v23], type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v18, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v25 = specialized static AttachmentLedger_SubscribeResponse.InitializeAck.== infix(_:_:)(v18, v9);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v26 = v18;
      v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck;
      goto LABEL_18;
    }

    v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck;
    v29 = v18;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate;
      v29 = v13;
      goto LABEL_16;
    }

    v30 = v36;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v36, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    v31 = *v13;
    v32 = *v30;
    if (v13[8])
    {
      v31 = *v13 != 0;
    }

    if (*(v30 + 8) == 1)
    {
      if (v32)
      {
        if (v31 != 1)
        {
          goto LABEL_25;
        }
      }

      else if (v31)
      {
LABEL_25:
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        goto LABEL_26;
      }
    }

    else if (v31 != v32)
    {
      goto LABEL_25;
    }

    if (*(v13 + 2) == *(v30 + 16))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        v25 = 1;
        return v25 & 1;
      }
    }

    goto LABEL_25;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v16, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate;
    v29 = v16;
LABEL_16:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v29, v28);
    outlined destroy of NSObject?(v22, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMR);
LABEL_26:
    v25 = 0;
    return v25 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v25 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.== infix(_:_:)(v16, v6);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v26 = v16;
  v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate;
LABEL_18:
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, v27);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  return v25 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = (&v42 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
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
            goto LABEL_41;
          }
        }

        else if (v21 != 3)
        {
          goto LABEL_41;
        }
      }

      else if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_41;
        }
      }

      else if (v21)
      {
        goto LABEL_41;
      }
    }

    else if (v22 <= 5)
    {
      if (v22 == 4)
      {
        if (v21 != 4)
        {
          goto LABEL_41;
        }
      }

      else if (v21 != 5)
      {
        goto LABEL_41;
      }
    }

    else if (v22 == 6)
    {
      if (v21 != 6)
      {
        goto LABEL_41;
      }
    }

    else if (v22 == 7)
    {
      if (v21 != 7)
      {
        goto LABEL_41;
      }
    }

    else if (v21 != 8)
    {
      goto LABEL_41;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_41;
  }

  v44 = v10;
  v42 = v6;
  v43 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v23 = *(v43 + 36);
  v24 = *(v18 + 48);
  v45 = a1;
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
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        if ((v34 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_12;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_ErrorResponse);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
      v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
      v33 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
LABEL_39:
      v35 = v20;
LABEL_40:
      outlined destroy of NSObject?(v35, v32, v33);
      goto LABEL_41;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_20:
    v32 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v33 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
    goto LABEL_39;
  }

  if (v25(&v20[v24], 1, v11) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of NSObject?(v20, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_12:
  v26 = v45;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v45[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(v26[3], *(a2 + 24)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0D8SnapshotV_Tt1g5(v26[4], *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_41;
  }

  v27 = v44;
  v28 = *(v43 + 40);
  v29 = *(v47 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26 + v28, v44, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v28, v27 + v29, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v30 = v49;
  v31 = *(v48 + 48);
  if (v31(v27, 1, v49) == 1)
  {
    if (v31(v27 + v29, 1, v30) == 1)
    {
      outlined destroy of NSObject?(v27, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
LABEL_57:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }

    goto LABEL_55;
  }

  v38 = v46;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v27, v46, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v31(v27 + v29, 1, v30) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_AuthPutMaterials);
LABEL_55:
    v32 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd;
    v33 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR;
    v35 = v27;
    goto LABEL_40;
  }

  v39 = v27 + v29;
  v40 = v42;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v42, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v41 = specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(v38, v40);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  outlined destroy of NSObject?(v27, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v41)
  {
    goto LABEL_57;
  }

LABEL_41:
  v36 = 0;
  return v36 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v23 + v14, &v13[v15], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v15], v7, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
      v18 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v19 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_9:
      outlined destroy of NSObject?(v13, v18, v19);
      goto LABEL_10;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_8:
    v18 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v19 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_5:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  v18 = specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = (&v24 + *(v14 + 56) - v15);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v24 - v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v16, v10, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v18 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v10, v6);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_9:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v16, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      return v18 & 1;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v16, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    v19 = *v12;
    v20 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *v17;
      v22 = v17[1];
      v18 = specialized static Data.== infix(_:_:)(v19, v20, v21, v22);
      outlined consume of Data._Representation(v21, v22);
      outlined consume of Data._Representation(v19, v20);
      goto LABEL_9;
    }

    outlined consume of Data._Representation(v19, v20);
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.TopicUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v21 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMR);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  v17 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  if (*(a1 + *(v18 + 20)) != *(a2 + *(v18 + 20)))
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  v18 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || a1[2] != a2[2])
  {
    goto LABEL_9;
  }

  v23 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = a2 + v14;
  v17 = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, &v13[v15], &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
LABEL_12:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_8:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v13[v17], v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v21 = specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  MEMORY[0x1EEE9AC00](v25);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v24 - v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v18[v19], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v18, v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v18[v19], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      v20 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.== infix(_:_:)(v14, v8);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      return v20 & 1;
    }

    v21 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full;
    v22 = v14;
    goto LABEL_10;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v18, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack;
    v22 = v12;
LABEL_10:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, v21);
    outlined destroy of NSObject?(v18, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMR);
LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v18[v19], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  if (!specialized static Data.== infix(_:_:)(*v12, v12[1], *v5, v5[1]) || v12[2] != v5[2] || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_13;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  v20 = 1;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_9:
      type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v14[v15], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  v18 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content.== infix(_:_:)(v10, v7);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.== infix(_:_:)(_BOOL8 *a1, uint64_t a2)
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

  if (a1[4] == *(a2 + 32))
  {
    type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.== infix(_:_:)(_BOOL8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)))
  {
    goto LABEL_28;
  }

  v14 = a1[2];
  v15 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v14 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v14)
    {
      goto LABEL_28;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_28;
  }

  v26 = v7;
  v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v16 = *(v27 + 28);
  v17 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v16, v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v16, &v13[v17], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      goto LABEL_17;
    }

    v22 = &v13[v17];
    v23 = v26;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v26, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    if (*v10 != *v23 || !specialized static Data.== infix(_:_:)(v10[1], v10[2], v23[1], v23[2]))
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v23, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      v20 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
      v21 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
      goto LABEL_27;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v23, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_28:
    v19 = 0;
    return v19 & 1;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_17:
    v20 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v21 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
LABEL_27:
    outlined destroy of NSObject?(v13, v20, v21);
    goto LABEL_28;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
LABEL_11:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v27 - v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v19[v20], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v19, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v19[v20], v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v21 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.== infix(_:_:)(v13, v6);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v22 = v13;
      v23 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
LABEL_9:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, v23);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      return v21 & 1;
    }

    v24 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
    v25 = v13;
  }

  else
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v19, v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v19[v20], v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v21 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.== infix(_:_:)(v15, v9);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v22 = v15;
      v23 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
    v25 = v15;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, v24);
  outlined destroy of NSObject?(v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMR);
  v21 = 0;
  return v21 & 1;
}