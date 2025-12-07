uint64_t __swift_get_extra_inhabitant_index_235Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_236Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for NCProtoAddMemberRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_181Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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

uint64_t __swift_store_extra_inhabitant_index_182Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
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

void type metadata completion function for NCProtoDeviceTokenResponse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for String?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoTransferActiveConversationRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for String?(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NCProtoPendingConversationDisconnectedEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NCProtoCallInfo(uint64_t a1)
{
  type metadata accessor for [String : Bool](319, &lazy cache variable for type metadata for [String : String], MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoSenderIdentity?, type metadata accessor for NCProtoSenderIdentity, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
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

void type metadata completion function for NCProtoUpdateBlockedStateRequest(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoSpamCallModelInfo?, type metadata accessor for NCProtoSpamCallModelInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for NCProtoPrepareTransferRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for String?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoSpamCallModelInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoStartLagunaSessionResponse(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoContactInfo], type metadata accessor for NCProtoContactInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoActiveConversation], type metadata accessor for NCProtoActiveConversation, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContinuityFavorite], type metadata accessor for NCProtoContinuityFavorite, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContinuityCall], type metadata accessor for NCProtoContinuityCall, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoCallInfo], type metadata accessor for NCProtoCallInfo);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UnknownStorage();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for NCProtoJoinActiveConversationRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void type metadata completion function for NCProtoGetAddressableContactsResponse(uint64_t a1)
{
  type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoAddressableContact], type metadata accessor for NCProtoAddressableContact, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_172Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_index_173Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for NCProtoGetImageForContactRequest(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [NCProtoContactImageType], &type metadata for NCProtoContactImageType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoGetImageForContactResponse(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoContactImageType?, &type metadata for NCProtoContactImageType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for NCProtoSuggestionAdvertisement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NCProtoIncomingCallBannerActionRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoCallState(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoConversationAVMode?, &type metadata for NCProtoConversationAVMode, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_250Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_251Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for NCProtoSuggestionAdvertisementDidChangeEvent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for NCProtoContactInfo?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoDeviceTokenRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoMemberAssociationPrimaryInfo?, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoCallState?, type metadata accessor for NCProtoCallState, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoDeviceTokenRequest.ConversationHandoffType?, &type metadata for NCProtoDeviceTokenRequest.ConversationHandoffType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for NCProtoDisconnectRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoDisconnectRequest.DisconnectReason?, &type metadata for NCProtoDisconnectRequest.DisconnectReason, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_481Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_482Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_163Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_164Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for NCProtoEndedSessionEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_268Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_269Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for NCProtoLagunaConnectionResponse(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NCProtoMemberAssociationPrimaryInfo(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [NCProtoMemberAssociationPrimaryInfo.MemberAssociationType], &type metadata for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for NCProtoFavoritesDidChangeEvent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for NCProtoContactInfo?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NCProtoIDSProxyMessage.OneOf_Message(uint64_t a1)
{
  result = type metadata accessor for NCProtoIDSProxyMessage.RawData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NCProtoIDSProxyMessage.Resource(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for NCProtoJoinEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a5, a6);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for NCProtoIDSProxyMessage.Resource(uint64_t a1)
{
  type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : Google_Protobuf_Value], MEMORY[0x277D215F0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoIDSProxyMessage.ParticipantIDList], type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
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

uint64_t __swift_get_extra_inhabitant_index_124Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_125Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
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

void type metadata completion function for NCProtoContinuityCall._StorageClass(uint64_t a1)
{
  type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoCallInfo?, type metadata accessor for NCProtoCallInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t outlined init with take of (key: String, value: NCProtoCallInfo)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of NCProtoContactInfo?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of NCProtoContactInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

NeighborhoodActivityConduit::IncomingHandoffContext __swiftcall IncomingHandoffContext.init(isAudioEnabled:isVideoEnabled:callType:isCaptioningEnabled:skipPreviewBulletin:)(Swift::Bool isAudioEnabled, Swift::Bool isVideoEnabled, NeighborhoodActivityConduit::CallType callType, Swift::Bool isCaptioningEnabled, Swift::Bool skipPreviewBulletin)
{
  v6 = *callType;
  *v5 = isAudioEnabled;
  v5[1] = isVideoEnabled;
  v5[2] = v6;
  v5[3] = isCaptioningEnabled;
  v5[4] = skipPreviewBulletin;
  result.isAudioEnabled = isAudioEnabled;
  return result;
}

uint64_t IncomingHandoffContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v15 = v0[4];
  _StringGuts.grow(_:)(118);
  MEMORY[0x22AA66730](0xD000000000000027, 0x80000002255E1310);
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v5, v6);

  MEMORY[0x22AA66730](0xD000000000000010, 0x80000002255E1340);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v7, v8);

  MEMORY[0x22AA66730](0x7079546C6C616320, 0xEA00000000003D65);
  if (v3)
  {
    v9 = 0x6F656469762ELL;
  }

  else
  {
    v9 = 0x6F696475612ELL;
  }

  MEMORY[0x22AA66730](v9, 0xE600000000000000);

  MEMORY[0x22AA66730](0xD000000000000015, 0x80000002255E1360);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v10, v11);

  MEMORY[0x22AA66730](0xD000000000000015, 0x80000002255E1380);
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v12, v13);

  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t IncomingHandoffContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncomingHandoffContext and conformance IncomingHandoffContext();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance IncomingHandoffContext.CodingKeys()
{
  v1 = 0x456F696475417369;
  v2 = 0x657079546C6C6163;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x456F656469567369;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncomingHandoffContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized IncomingHandoffContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncomingHandoffContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncomingHandoffContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomingHandoffContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit22IncomingHandoffContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit22IncomingHandoffContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  v9 = v1[3];
  v12[0] = v1[4];
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v13;
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v11;
    v17 = 2;
    lazy protocol witness table accessor for type CallType and conformance CallType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IncomingHandoffContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit22IncomingHandoffContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit22IncomingHandoffContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v25 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = 1;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 2;
    lazy protocol witness table accessor for type CallType and conformance CallType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v23;
    v21 = 3;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v10;
    v18 = v11;
    v20 = 4;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v9 & 1;
    LOBYTE(v10) = v19 & 1;
    v14 = v18 & 1;
    (*(v6 + 8))(v8, v5);
    v15 = v17;
    *a2 = v16;
    a2[1] = v10;
    a2[2] = v15;
    a2[3] = v14;
    a2[4] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JoinFailureContext.init(conversationUUID:nacErrorCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for JoinFailureContext(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t JoinFailureContext.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x22AA66730](0xD000000000000025, 0x80000002255E13A0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA66730](v0);

  MEMORY[0x22AA66730](0x6F72724563616E20, 0xEE003D65646F4372);
  type metadata accessor for JoinFailureContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x22AA66730](v1);

  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t JoinFailureContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for JoinFailureContext(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

uint64_t static JoinFailureContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for JoinFailureContext(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JoinFailureContext.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinFailureContext.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JoinFailureContext.CodingKeys()
{
  if (*v0)
  {
    return 0x726F72724563616ELL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JoinFailureContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002255E1550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F72724563616ELL && a2 == 0xEC00000065646F43)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JoinFailureContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JoinFailureContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JoinFailureContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit18JoinFailureContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit18JoinFailureContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for JoinFailureContext(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t JoinFailureContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit18JoinFailureContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit18JoinFailureContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for JoinFailureContext(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[8] = v17 & 1;
  outlined init with copy of JoinFailureContext(v19, v18, type metadata accessor for JoinFailureContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of JoinFailureContext(v19, type metadata accessor for JoinFailureContext);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JoinFailureContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t JoinFailureContext.conversationUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *JoinContinuityConversationRequestContext.init(conversationUUID:isAudioEnabled:isVideoEnabled:wantsStagingArea:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for JoinContinuityConversationRequestContext(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t JoinContinuityConversationRequestContext.description.getter()
{
  _StringGuts.grow(_:)(118);
  MEMORY[0x22AA66730](0xD00000000000003BLL, 0x80000002255E13D0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA66730](v1);

  MEMORY[0x22AA66730](0xD000000000000010, 0x80000002255E1410);
  v2 = type metadata accessor for JoinContinuityConversationRequestContext(0);
  if (*(v0 + v2[5]))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + v2[5]))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v3, v4);

  MEMORY[0x22AA66730](0xD000000000000010, 0x80000002255E1340);
  if (*(v0 + v2[6]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v5, v6);

  MEMORY[0x22AA66730](0xD000000000000012, 0x80000002255E1430);
  if (*(v0 + v2[7]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v7, v8);

  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t JoinContinuityConversationRequestContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for JoinContinuityConversationRequestContext(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance JoinContinuityConversationRequestContext.CodingKeys()
{
  v1 = 0x456F696475417369;
  v2 = 0x456F656469567369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JoinContinuityConversationRequestContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized JoinContinuityConversationRequestContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JoinContinuityConversationRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JoinContinuityConversationRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JoinContinuityConversationRequestContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for JoinContinuityConversationRequestContext(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t JoinContinuityConversationRequestContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for JoinContinuityConversationRequestContext(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v19;
  v26 = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v22, v4);
  v25 = 1;
  *(v12 + v9[5]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v24 = 2;
  *(v12 + v9[6]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v23 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v8, v14);
  *(v12 + v9[7]) = v15 & 1;
  outlined init with copy of JoinFailureContext(v12, v18, type metadata accessor for JoinContinuityConversationRequestContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of JoinFailureContext(v12, type metadata accessor for JoinContinuityConversationRequestContext);
}

uint64_t IncomingCallBannerContext.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IncomingCallBannerContext.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IncomingCallBannerContext.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IncomingCallBannerContext.imageData.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

unint64_t IncomingCallBannerContext.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  return 0xD000000000000015;
}

uint64_t IncomingCallBannerContext.init(callUUID:title:subtitle:imageData:callService:dismissOnAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t IncomingCallBannerContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v11 = *(v0 + 72);
  _StringGuts.grow(_:)(128);
  MEMORY[0x22AA66730](0xD000000000000024, 0x80000002255E1470);
  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000013, 0x80000002255E14A0);
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000015, 0x80000002255E1450);

  MEMORY[0x22AA66730](0x3D656C74697420, 0xE700000000000000);
  MEMORY[0x22AA66730](v3, v4);
  MEMORY[0x22AA66730](0x6C74697462757320, 0xEA00000000003D65);
  MEMORY[0x22AA66730](v5, v6);
  MEMORY[0x22AA66730](0x61446567616D6920, 0xEB000000003D6174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA66730](0x7265536C6C616320, 0xED00003D65636976);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA66730](v7);

  MEMORY[0x22AA66730](0xD000000000000011, 0x80000002255E14C0);
  if (v11)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x22AA66730](v8, v9);

  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t IncomingCallBannerContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncomingCallBannerContext and conformance IncomingCallBannerContext();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IncomingCallBannerContext.CodingKeys()
{
  v1 = *v0;
  v2 = 0x444955556C6C6163;
  v3 = 0x7461446567616D69;
  v4 = 0x767265536C6C6163;
  if (v1 != 4)
  {
    v4 = 0x4F7373696D736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncomingCallBannerContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized IncomingCallBannerContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncomingCallBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncomingCallBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomingCallBannerContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit25IncomingCallBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit25IncomingCallBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v8 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v8;
  v9 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v9;
  v14 = *(v1 + 64);
  v24 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v10 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v15;
  v12 = v16;
  LOBYTE(v22) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v22) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v12;
  v23 = v13;
  v25 = 3;
  outlined copy of Data?(v12, v13);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v22, v23);
  LOBYTE(v22) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v22) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return MEMORY[8](v6, v3);
}

uint64_t IncomingCallBannerContext.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit25IncomingCallBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit25IncomingCallBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v36) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v12;
  LOBYTE(v36) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v27 = v13;
  LOBYTE(v32) = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  v28 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v36;
  v25 = v37;
  LOBYTE(v36) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = 5;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  LODWORD(v28) = v15 & 1;
  *&v32 = v9;
  *(&v32 + 1) = v11;
  v16 = v31;
  *&v33 = v29;
  *(&v33 + 1) = v31;
  v17 = v30;
  *&v34 = v27;
  *(&v34 + 1) = v30;
  v18 = v26;
  v19 = v25;
  *v35 = v26;
  *&v35[8] = v25;
  *&v35[16] = v24;
  v35[24] = v28;
  v20 = *v35;
  a2[2] = v34;
  a2[3] = v20;
  *(a2 + 57) = *&v35[9];
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  outlined init with copy of IncomingCallBannerContext(&v32, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v9;
  v37 = v11;
  v38 = v29;
  v39 = v16;
  v40 = v27;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v24;
  v45 = v28;
  return outlined destroy of IncomingCallBannerContext(&v36);
}

NeighborhoodActivityConduit::IncomingCallBannerContext::BannerState_optional __swiftcall IncomingCallBannerContext.BannerState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CallUpdateBannerContext.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallUpdateBannerContext.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t CallUpdateBannerContext.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  return 0xD000000000000015;
}

void __swiftcall CallUpdateBannerContext.init(callUUID:bannerState:subtitle:)(NeighborhoodActivityConduit::CallUpdateBannerContext *__return_ptr retstr, Swift::String callUUID, NeighborhoodActivityConduit::IncomingCallBannerContext::BannerState bannerState, Swift::String_optional subtitle)
{
  v4 = *bannerState;
  retstr->callUUID = callUUID;
  retstr->bannerState = v4;
  retstr->subtitle = subtitle;
}

uint64_t CallUpdateBannerContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(85);
  MEMORY[0x22AA66730](0xD000000000000022, 0x80000002255E14E0);
  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000013, 0x80000002255E14A0);
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000015, 0x80000002255E1450);

  MEMORY[0x22AA66730](0x5372656E6E616220, 0xED00003D65746174);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA66730](0x6C74697462757320, 0xEA00000000003D65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t CallUpdateBannerContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type CallUpdateBannerContext and conformance CallUpdateBannerContext();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CallUpdateBannerContext.CodingKeys()
{
  v1 = 0x745372656E6E6162;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444955556C6C6163;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CallUpdateBannerContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CallUpdateBannerContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CallUpdateBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CallUpdateBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallUpdateBannerContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit23CallUpdateBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit23CallUpdateBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v8 = v10[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v14 = v11;
    v13 = 1;
    lazy protocol witness table accessor for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CallUpdateBannerContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit23CallUpdateBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit23CallUpdateBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  lazy protocol witness table accessor for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v23;
  v21 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DismissBannerContext.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t DismissBannerContext.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  return 0xD000000000000015;
}

uint64_t DismissBannerContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(55);
  MEMORY[0x22AA66730](0xD00000000000001FLL, 0x80000002255E1510);
  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000013, 0x80000002255E14A0);
  _StringGuts.grow(_:)(23);

  MEMORY[0x22AA66730](v1, v2);
  MEMORY[0x22AA66730](0xD000000000000015, 0x80000002255E1450);

  MEMORY[0x22AA66730](62, 0xE100000000000000);
  return 0;
}

uint64_t DismissBannerContext.queryItem.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type DismissBannerContext and conformance DismissBannerContext();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  outlined copy of Data._Representation(v0, v1);
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v0, v2);

  outlined consume of Data._Representation(v0, v2);
  URLQueryItem.init(name:value:)();
}

uint64_t static DismissBannerContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DismissBannerContext.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DismissBannerContext.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DismissBannerContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DismissBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DismissBannerContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissBannerContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DismissBannerContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance DismissBannerContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit20DismissBannerContextV10CodingKeys33_055134E0D8552AD4E70ECAB0A8951A29LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DismissBannerContext(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type IncomingHandoffContext and conformance IncomingHandoffContext()
{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext and conformance IncomingHandoffContext);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingHandoffContext.CodingKeys and conformance IncomingHandoffContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallType and conformance CallType()
{
  result = lazy protocol witness table cache variable for type CallType and conformance CallType;
  if (!lazy protocol witness table cache variable for type CallType and conformance CallType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType and conformance CallType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType and conformance CallType;
  if (!lazy protocol witness table cache variable for type CallType and conformance CallType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType and conformance CallType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType and conformance CallType;
  if (!lazy protocol witness table cache variable for type CallType and conformance CallType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType and conformance CallType);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinFailureContext.CodingKeys and conformance JoinFailureContext.CodingKeys);
  }

  return result;
}

uint64_t specialized static IncomingCallBannerContext.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v15 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v18 = *(a2 + 48);
  v19 = a1[6];
  v16 = *(a2 + 64);
  v17 = a1[8];
  v14 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      outlined copy of Data?(v19, v6);
      outlined copy of Data?(v18, v11);
      outlined consume of Data?(v19, v6);
      if (v17 == v16)
      {
        return v15 ^ v14 ^ 1u;
      }

      return 0;
    }

    goto LABEL_15;
  }

  if (v11 >> 60 == 15)
  {
LABEL_15:
    outlined copy of Data?(v19, v6);
    outlined copy of Data?(v18, v11);
    outlined consume of Data?(v19, v6);
    outlined consume of Data?(v18, v11);
    return 0;
  }

  outlined copy of Data?(v19, v6);
  outlined copy of Data?(v18, v11);
  v13 = specialized static Data.== infix(_:_:)(v19, v6, v18, v11);
  outlined consume of Data?(v18, v11);
  outlined consume of Data?(v19, v6);
  result = 0;
  if (v13 && v17 == v16)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t specialized static CallUpdateBannerContext.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v5)
  {
LABEL_9:
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static JoinContinuityConversationRequestContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for JoinContinuityConversationRequestContext(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext.CodingKeys and conformance JoinContinuityConversationRequestContext.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of JoinFailureContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JoinFailureContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type IncomingCallBannerContext and conformance IncomingCallBannerContext()
{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext and conformance IncomingCallBannerContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.CodingKeys and conformance IncomingCallBannerContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallUpdateBannerContext and conformance CallUpdateBannerContext()
{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext and conformance CallUpdateBannerContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallUpdateBannerContext.CodingKeys and conformance CallUpdateBannerContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState()
{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState;
  if (!lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallBannerContext.BannerState and conformance IncomingCallBannerContext.BannerState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DismissBannerContext and conformance DismissBannerContext()
{
  result = lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext;
  if (!lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext;
  if (!lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext;
  if (!lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext;
  if (!lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext and conformance DismissBannerContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBannerContext.CodingKeys and conformance DismissBannerContext.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for JoinFailureContext(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
  a1[2] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
  a1[3] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for JoinContinuityConversationRequestContext(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
  a1[2] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
  a1[3] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IncomingHandoffContext(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IncomingHandoffContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingHandoffContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for JoinFailureContext(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Int?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t type metadata completion function for JoinContinuityConversationRequestContext(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IncomingCallBannerContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for IncomingCallBannerContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CallUpdateBannerContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CallUpdateBannerContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DismissBannerContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DismissBannerContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DismissBannerContext.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DismissBannerContext.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingCallBannerContext.BannerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingCallBannerContext.BannerState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingCallBannerContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingCallBannerContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinContinuityConversationRequestContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinContinuityConversationRequestContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinFailureContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinFailureContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

uint64_t getEnumTagSinglePayload for IncomingHandoffContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingHandoffContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized IncomingHandoffContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456F696475417369 && a2 == 0xEE0064656C62616ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456F656469567369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002255E0B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002255E1530 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized JoinContinuityConversationRequestContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002255E1550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456F696475417369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x456F656469567369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002255E1570 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized IncomingCallBannerContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x767265536C6C6163 && a2 == 0xEB00000000656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4F7373696D736964 && a2 == 0xEF6E6F697463416ELL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized CallUpdateBannerContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x745372656E6E6162 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static HandlesHasher.hash(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SHA512Digest();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA512();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v19 = v5;
  v20 = v6;
  v21 = v3;
  v22 = v2;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v9, 0);
  v11 = specialized Sequence._copySequenceContents(initializing:)(v25, v10 + 4, v9, a1);
  v12 = v25[0];

  outlined consume of Set<String>.Iterator._Variant(v12);
  if (v11 == v9)
  {
    v3 = v21;
    v2 = v22;
    v5 = v19;
    v6 = v20;
LABEL_5:
    v25[0] = v10;
    specialized MutableCollection<>.sort(by:)(v25);
    v13 = MEMORY[0x22AA667C0](v25[0], MEMORY[0x277D837D0]);
    v15 = v14;

    v25[0] = v13;
    v25[1] = v15;
    SHA512.init()();
    specialized String.withUTF8<A>(_:)(v25);

    SHA512.finalize()();
    SHA512Digest.withUnsafeBytes<A>(_:)();
    (*(v3 + 8))(v5, v2);
    v16 = v24;
    (*(v23 + 8))(v8, v6);
    return v16;
  }

  __break(1u);
  MEMORY[0x22AA66DF0](v10);

  __break(1u);
  return result;
}

uint64_t specialized String.withUTF8<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = static String._copying(_:)(v2, v3);
    v11 = v10;

    v2 = v9;
    *a1 = v9;
    a1[1] = v11;
    v3 = v11;
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13[0] = v2;
    v13[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v8 = v13;
    v7 = v13 + (HIBYTE(v3) & 0xF);
    return MEMORY[0x22AA66650](v8, v7);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  if (v5)
  {
    v7 = (v6 + v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  return MEMORY[0x22AA66650](v8, v7);
}

char *closure #2 in static HandlesHasher.hash(_:)@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (result)
  {
    v4 = a2 - result;
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(result, a2);
      v5 = (v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v6 = __DataStorage.init(bytes:length:)();
      if (v4 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 2) = 0;
        *(result + 3) = v4;
        v5 = (v6 | 0x8000000000000000);
      }

      else
      {
        result = (v4 << 32);
        v5 = (v6 | 0x4000000000000000);
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA66750](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t WeakTask.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](WeakTask.value.getter, 0, 0);
}

uint64_t WeakTask.value.getter()
{
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = WeakTask.value.getter;
  v6 = v0[2];
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6, v2, v4, v5, v7);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](WeakTask.value.getter, 0, 0);
  }
}

{
  (*(*(v0[6] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t WeakTask.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WeakTask.init(_:)(a1, a2);
  return v4;
}

uint64_t *WeakTask.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v11 = *(v5 + 80);
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = a2;
  v2[2] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v8, &_sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTATu, v10, v11);
  return v2;
}

uint64_t _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_;

  return v8(a1);
}

uint64_t _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_;

  return _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTR(a1, v4, v5, v6);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  outlined init with copy of TaskPriority?(a3, &v24[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v20 + 32, v24);

      v21 = v24[0];
      outlined destroy of TaskPriority?(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

void *WeakTask.deinit()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x22AA66840](v1, v2, v3, MEMORY[0x277D84950]);

  return v0;
}

uint64_t WeakTask.__deallocating_deinit()
{
  WeakTask.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AssertionManager.Assertion.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t key path getter for AssertionManager.Assertion.value : <A>AssertionManager<A>.Assertion@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(**a1 + 88);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t AssertionManager.Assertion.value.setter(uint64_t a1)
{
  v3 = *v1;
  specialized AssertionManager.Assertion.value.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*AssertionManager.Assertion.value.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AssertionManager.Assertion.value.modify;
}

uint64_t AssertionManager.Assertion.value.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(*(a1 + 24) + *(**(a1 + 24) + 104)))(result);
  }

  return result;
}

uint64_t AssertionManager.Assertion.init(_:invalidationHandler:valueChangedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  v10 = (v5 + *(*v5 + 96));
  *v10 = a2;
  v10[1] = a3;
  v11 = (v5 + *(*v5 + 104));
  *v11 = a4;
  v11[1] = a5;
  return v5;
}

uint64_t AssertionManager.Assertion.deinit(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - v4;
  v7 = *(v1 + *(v6 + 96));
  v8 = *(v6 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v8, v2);

  v7(v5);

  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *(v1 + *(*v1 + 104));

  v10(v11);

  v9((v1 + v8), v2);

  return v1;
}

uint64_t AssertionManager.Assertion.__deallocating_deinit(uint64_t a1)
{
  AssertionManager.Assertion.deinit(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t AssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AssertionManager.init()();
  return v0;
}

void *AssertionManager.init()()
{
  v1 = v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v1[14] = [objc_opt_self() weakObjectsHashTable];
  type metadata accessor for AssertionManager.Assertion(255, *(v2 + 80), v3, v4);
  type metadata accessor for Array();
  type metadata accessor for PassthroughSubject();
  v1[15] = PassthroughSubject.__allocating_init()();
  return v1;
}

uint64_t AssertionManager.assertionsSequence.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  type metadata accessor for AssertionManager.Assertion(255, *(*v3 + 80), a2, a3);
  type metadata accessor for Array();
  v5 = type metadata accessor for PassthroughSubject();
  WitnessTable = swift_getWitnessTable();
  a1[3] = type metadata accessor for AsyncPublisher();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return MEMORY[0x22AA66620](v5, WitnessTable);
}

uint64_t AssertionManager.assertionCountSequence.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v5 = *(*v3 + 80);
  type metadata accessor for AssertionManager.Assertion(255, v5, a2, a3);
  type metadata accessor for Array();
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  v6 = type metadata accessor for Publishers.MapKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v10 = v3[15];
  v13[0] = v5;
  v13[1] = v10;
  swift_getKeyPath();

  Publisher.map<A>(_:)();

  WitnessTable = swift_getWitnessTable();
  a1[3] = type metadata accessor for AsyncPublisher();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a1);
  MEMORY[0x22AA66620](v6, WitnessTable);
  return (*(v7 + 8))(v9, v6);
}

uint64_t AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - v9;
  type metadata accessor for AssertionManager.Assertion(0, v7, v11, v12);
  (*(v8 + 16))(v10, a1, v7);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  (*(*(*(*v15 + 80) - 8) + 32))(v15 + *(*v15 + 88), v10);
  v16 = (v15 + *(*v15 + 96));
  *v16 = a2;
  v16[1] = a3;
  v17 = (v15 + *(*v15 + 104));
  *v17 = partial apply for closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);
  v17[1] = v14;
  v18 = v3[14];

  [v18 addObject_];
  AssertionManager.assertionsChanged()();
  return v15;
}

uint64_t specialized closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), v6);
}

uint64_t closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), v8);
}

uint64_t closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1)
{
  AssertionManager.assertionsChanged()();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), 0, 0);
}

uint64_t specialized AssertionManager.assertionsChanged()()
{
  v1 = [*(v0 + 112) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16AssertionManagerC0D0Cyyt_GMd, &_s27NeighborhoodActivityConduit16AssertionManagerC0D0Cyyt_GMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for assertionManager != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.assertionManager);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v7 = MEMORY[0x22AA66940](v9);
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_225565000, v4, v5, "Assertions updated with new count: %ld.", v6, 0xCu);
    MEMORY[0x22AA66F00](v6, -1, -1);
  }

  else
  {
  }

  PassthroughSubject.send(_:)();
}

uint64_t AssertionManager.assertionsChanged()()
{
  v1 = v0;
  v2 = *v0;
  v3 = [v1[14] allObjects];
  v6 = type metadata accessor for AssertionManager.Assertion(0, *(v2 + 80), v4, v5);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for assertionManager != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.assertionManager);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = MEMORY[0x22AA667E0](v7, v6);

    _os_log_impl(&dword_225565000, v9, v10, "Assertions updated with new count: %ld.", v11, 0xCu);
    MEMORY[0x22AA66F00](v11, -1, -1);
  }

  else
  {
  }

  PassthroughSubject.send(_:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AssertionManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssertionManager.__deallocating_deinit()
{
  AssertionManager.deinit();

  return MEMORY[0x282200960](v0);
}

void *AssertionManager<A>.takeAssertion(invalidationHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16AssertionManagerC0D0Cyyt_GMd, &_s27NeighborhoodActivityConduit16AssertionManagerC0D0Cyyt_GMR);
  v7 = swift_allocObject();
  v7[2] = partial apply for closure #1 in AssertionManager<A>.takeAssertion(invalidationHandler:);
  v7[3] = v5;
  v7[4] = partial apply for specialized closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);
  v7[5] = v6;
  v8 = *(v2 + 112);

  [v8 addObject_];
  specialized AssertionManager.assertionsChanged()();

  return v7;
}

uint64_t one-time initialization function for assertionManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.assertionManager);
  __swift_project_value_buffer(v0, static Logger.assertionManager);
  return Logger.init(subsystem:category:)();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  specialized AssertionManager.assertionsChanged()();

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:), 0, 0);
}

uint64_t specialized AssertionManager.Assertion.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  v5 = swift_endAccess();
  return (*(v1 + *(*v1 + 104)))(v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata completion function for AssertionManager.Assertion(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);

  return specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_25(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_;

  return closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:)(a1, v4, v5, v6);
}

uint64_t CallType.description.getter()
{
  if (*v0)
  {
    return 0x6F656469762ELL;
  }

  else
  {
    return 0x6F696475612ELL;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CallType.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CallType.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CallType.CodingKeys()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CallType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CallType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.CodingKeys and conformance CallType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CallType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.CodingKeys and conformance CallType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CallType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CallType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO15VideoCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO15VideoCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO15AudioCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO15AudioCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO10CodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedEncodingContainerVy27NeighborhoodActivityConduit8CallTypeO10CodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CallType.CodingKeys and conformance CallType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    lazy protocol witness table accessor for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys();
    v14 = v18;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    lazy protocol witness table accessor for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t lazy protocol witness table accessor for type CallType.CodingKeys and conformance CallType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.CodingKeys and conformance CallType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys()
{
  result = lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys()
{
  result = lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys;
  if (!lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys);
  }

  return result;
}

Swift::Int CallType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](v1);
  return Hasher._finalize()();
}

uint64_t CallType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO15VideoCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO15VideoCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO15AudioCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO15AudioCodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO10CodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMd, &_ss22KeyedDecodingContainerVy27NeighborhoodActivityConduit8CallTypeO10CodingKeys33_4979A1ACB5FFFE105B2FCB5E7166177DLLOGMR);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CallType.CodingKeys and conformance CallType.CodingKeys();
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*(v17 + 16) != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v21 = &type metadata for CallType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    lazy protocol witness table accessor for type CallType.VideoCodingKeys and conformance CallType.VideoCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type CallType.AudioCodingKeys and conformance CallType.AudioCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CallType()
{
  if (*v0)
  {
    return 0x6F656469762ELL;
  }

  else
  {
    return 0x6F696475612ELL;
  }
}

unint64_t FaceTimeURLQueryItemName.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x676E696D6F636E69;
  v2 = 0xD000000000000016;
  v3 = 0xD000000000000019;
  if (a1 == 4)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000020;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t static FaceTimeURL.from(url:allowCallLinks:)@<X0>(uint64_t x8_0@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  outlined init with copy of URLComponents?(v8, v6);
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v6, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
LABEL_4:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v11 = URLComponents.queryItems.getter();
  (*(v10 + 8))(v6, v9);
  if (!v11)
  {
    goto LABEL_4;
  }

LABEL_5:
  static FaceTimeURL.from(queryItems:)(v11, x8_0);

  return outlined destroy of NCProtoContactInfo?(v8, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

uint64_t outlined init with copy of URLComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static FaceTimeURL.from(queryItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18JoinFailureContextVSgMd, &_s27NeighborhoodActivityConduit18JoinFailureContextVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v184 = &v180 - v5;
  v183 = type metadata accessor for JoinFailureContext(0);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v180 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextVSgMd, &_s27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v187 = &v180 - v8;
  v186 = type metadata accessor for JoinContinuityConversationRequestContext(0);
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v181 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v207 = *(v10 - 8);
  v208 = v10;
  MEMORY[0x28223BE20](v10);
  v206 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLQueryItem();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v203 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v191 = &v180 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v180 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v211 = &v180 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v192 = &v180 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v193 = &v180 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v204 = &v180 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v194 = &v180 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v195 = &v180 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v180 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v196 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v197 = &v180 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v180 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v198 = &v180 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v201 = &v180 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v180 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v199 = &v180 - v51;
  MEMORY[0x28223BE20](v50);
  v202 = &v180 - v52;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v53 = JSONDecoder.init()();
  v54 = *(a1 + 16);
  if (v54)
  {
    v200 = v53;
    v188 = 0;
    v189 = v20;
    v190 = a2;
    v210 = v13;
    v56 = *(v13 + 16);
    v55 = v13 + 16;
    v57 = a1 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
    v212 = *(v55 + 56);
    v213 = v56;
    v214 = v55;
    v215 = (v55 - 8);
    v209 = v57;
    v205 = v54;
    v58 = v54;
    while (1)
    {
      v213(v49, v57, v12);
      if (URLQueryItem.name.getter() == 0xD000000000000020 && 0x80000002255DF880 == v59)
      {
        break;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_10;
      }

      v61 = *v215;
      result = (*v215)(v49, v12);
      v57 += v212;
      if (!--v58)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v63 = *(v210 + 32);
    v64 = v199;
    v63(v199, v49, v12);
    v65 = v202;
    v63(v202, v64, v12);
    URLQueryItem.value.getter();
    if (!v66 || (v67 = v206, static String.Encoding.utf8.getter(), v68 = String.data(using:allowLossyConversion:)(), v70 = v69, , (*(v207 + 8))(v67, v208), v70 >> 60 == 15) || (v71 = Data.init(base64Encoded:options:)(), v73 = v72, outlined consume of Data?(v68, v70), v73 >> 60 == 15))
    {
      v61 = *v215;
      result = (*v215)(v65, v12);
    }

    else
    {
      lazy protocol witness table accessor for type JoinFailureContext and conformance JoinFailureContext(&lazy protocol witness table cache variable for type JoinContinuityConversationRequestContext and conformance JoinContinuityConversationRequestContext, type metadata accessor for JoinContinuityConversationRequestContext, &protocol conformance descriptor for JoinContinuityConversationRequestContext);
      v154 = v187;
      v155 = v186;
      v156 = v188;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (!v156)
      {
        (*v215)(v202, v12);
        outlined consume of Data?(v71, v73);

        (*(v185 + 56))(v154, 0, 1, v155);
        v164 = v181;
        outlined init with take of JoinFailureContext(v154, v181, type metadata accessor for JoinContinuityConversationRequestContext);
        v165 = v164;
        v166 = v190;
        outlined init with take of JoinFailureContext(v165, v190, type metadata accessor for JoinContinuityConversationRequestContext);
        v167 = type metadata accessor for FaceTimeURL(0);
        goto LABEL_95;
      }

      MEMORY[0x22AA66DF0](v156);
      outlined consume of Data?(v71, v73);
      v61 = *v215;
      (*v215)(v202, v12);
      (*(v185 + 56))(v154, 1, 1, v155);
      result = outlined destroy of NCProtoContactInfo?(v154, &_s27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextVSgMd, &_s27NeighborhoodActivityConduit40JoinContinuityConversationRequestContextVSgMR);
      v188 = 0;
    }

LABEL_14:
    v74 = v209;
    v75 = v205;
    v76 = v204;
    while (1)
    {
      if (!v75)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        return result;
      }

      v213(v42, v74, v12);
      if (URLQueryItem.name.getter() == 0xD00000000000001ELL && 0x80000002255DF8B0 == v77)
      {
        break;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v78)
      {
        goto LABEL_22;
      }

      result = v61(v42, v12);
      v74 += v212;
      if (!--v75)
      {
        goto LABEL_26;
      }
    }

LABEL_22:
    v79 = *(v210 + 32);
    v80 = v198;
    v79(v198, v42, v12);
    v81 = v201;
    v79(v201, v80, v12);
    URLQueryItem.value.getter();
    if (!v82 || (v83 = v206, static String.Encoding.utf8.getter(), v84 = String.data(using:allowLossyConversion:)(), v86 = v85, , v87 = v83, v76 = v204, (*(v207 + 8))(v87, v208), v86 >> 60 == 15) || (v88 = Data.init(base64Encoded:options:)(), v90 = v89, outlined consume of Data?(v84, v86), v90 >> 60 == 15))
    {
      result = v61(v81, v12);
LABEL_26:
      v91 = v209;
      v92 = v205;
      while (1)
      {
        if (!v92)
        {
          goto LABEL_97;
        }

        v213(v35, v91, v12);
        if (URLQueryItem.name.getter() == 0x676E696D6F636E69 && v93 == 0xEF66666F646E6148)
        {
          break;
        }

        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v94)
        {
          goto LABEL_34;
        }

        result = v61(v35, v12);
        v91 += v212;
        if (!--v92)
        {
          goto LABEL_38;
        }
      }

LABEL_34:
      v95 = *(v210 + 32);
      v96 = v196;
      v95(v196, v35, v12);
      v97 = v197;
      v95(v197, v96, v12);
      URLQueryItem.value.getter();
      if (!v98 || (v99 = v206, static String.Encoding.utf8.getter(), v100 = String.data(using:allowLossyConversion:)(), v102 = v101, , v103 = v99, v76 = v204, (*(v207 + 8))(v103, v208), v102 >> 60 == 15) || (v104 = Data.init(base64Encoded:options:)(), v106 = v105, outlined consume of Data?(v100, v102), v106 >> 60 == 15))
      {
        result = v61(v97, v12);
LABEL_38:
        v107 = v209;
        v108 = v205;
        v109 = v205;
        v110 = v189;
        while (1)
        {
          if (!v109)
          {
            goto LABEL_98;
          }

          v213(v76, v107, v12);
          if (URLQueryItem.name.getter() == 0xD000000000000016 && 0x80000002255DF8E0 == v111)
          {
            break;
          }

          v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v112)
          {
            goto LABEL_46;
          }

          result = v61(v76, v12);
          v107 += v212;
          if (!--v109)
          {
            goto LABEL_50;
          }
        }

LABEL_46:
        v113 = *(v210 + 32);
        v114 = v194;
        v113(v194, v76, v12);
        v115 = v195;
        v113(v195, v114, v12);
        URLQueryItem.value.getter();
        if (!v116 || (v117 = v206, static String.Encoding.utf8.getter(), v118 = String.data(using:allowLossyConversion:)(), v120 = v119, , (*(v207 + 8))(v117, v208), v120 >> 60 == 15) || (v121 = Data.init(base64Encoded:options:)(), v123 = v122, outlined consume of Data?(v118, v120), v123 >> 60 == 15))
        {
          result = v61(v115, v12);
LABEL_50:
          v124 = v209;
          v125 = v209;
          v126 = v108;
          while (1)
          {
            if (!v126)
            {
              goto LABEL_99;
            }

            v213(v211, v125, v12);
            if (URLQueryItem.name.getter() == 0xD000000000000010 && 0x80000002255DF900 == v127)
            {
              break;
            }

            v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v128)
            {
              goto LABEL_58;
            }

            result = v61(v211, v12);
            v125 += v212;
            if (!--v126)
            {
              goto LABEL_62;
            }
          }

LABEL_58:
          v129 = *(v210 + 32);
          v130 = v192;
          v129(v192, v211, v12);
          v131 = v193;
          v129(v193, v130, v12);
          URLQueryItem.value.getter();
          if (!v132 || (v133 = v206, static String.Encoding.utf8.getter(), v134 = String.data(using:allowLossyConversion:)(), v136 = v135, , (*(v207 + 8))(v133, v208), v136 >> 60 == 15) || (v137 = Data.init(base64Encoded:options:)(), v139 = v138, outlined consume of Data?(v134, v136), v139 >> 60 == 15))
          {
            result = v61(v131, v12);
LABEL_62:
            v140 = v203;
            while (1)
            {
              if (!v108)
              {
                goto LABEL_100;
              }

              v213(v140, v124, v12);
              if (URLQueryItem.name.getter() == 0xD000000000000019 && 0x80000002255DF920 == v141)
              {
                break;
              }

              v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v142)
              {
                goto LABEL_70;
              }

              result = v61(v140, v12);
              v124 += v212;
              if (!--v108)
              {

LABEL_75:
                a2 = v190;
                goto LABEL_76;
              }
            }

LABEL_70:
            v143 = *(v210 + 32);
            v144 = v191;
            v143(v191, v140, v12);
            v143(v110, v144, v12);
            URLQueryItem.value.getter();
            if (!v145 || (v146 = v206, static String.Encoding.utf8.getter(), v147 = String.data(using:allowLossyConversion:)(), v149 = v148, , (*(v207 + 8))(v146, v208), v149 >> 60 == 15) || (v150 = Data.init(base64Encoded:options:)(), v152 = v151, outlined consume of Data?(v147, v149), v152 >> 60 == 15))
            {

LABEL_74:
              v61(v110, v12);
              goto LABEL_75;
            }

            lazy protocol witness table accessor for type DismissBannerContext and conformance DismissBannerContext();
            v163 = v188;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v163)
            {
              MEMORY[0x22AA66DF0](v163);

              outlined consume of Data?(v150, v152);
              goto LABEL_74;
            }

            v61(v110, v12);

            outlined consume of Data?(v150, v152);
            v179 = *(&v216 + 1);
            v166 = v190;
            *v190 = v216;
            *(v166 + 8) = v179;
            v167 = type metadata accessor for FaceTimeURL(0);
          }

          else
          {
            lazy protocol witness table accessor for type CallUpdateBannerContext and conformance CallUpdateBannerContext();
            v162 = v188;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v162)
            {
              MEMORY[0x22AA66DF0](v162);
              outlined consume of Data?(v137, v139);
              result = v61(v131, v12);
              v188 = 0;
              goto LABEL_62;
            }

            v61(v131, v12);

            outlined consume of Data?(v137, v139);
            v176 = *(&v216 + 1);
            v177 = v217[0];
            v178 = *&v217[8];
            v166 = v190;
            *v190 = v216;
            *(v166 + 8) = v176;
            *(v166 + 16) = v177;
            *(v166 + 24) = v178;
            v167 = type metadata accessor for FaceTimeURL(0);
          }
        }

        else
        {
          lazy protocol witness table accessor for type IncomingCallBannerContext and conformance IncomingCallBannerContext();
          v161 = v188;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (v161)
          {
            MEMORY[0x22AA66DF0](v161);
            outlined consume of Data?(v121, v123);
            result = v61(v115, v12);
            v188 = 0;
            goto LABEL_50;
          }

          v61(v115, v12);

          outlined consume of Data?(v121, v123);
          v174 = *v218;
          v166 = v190;
          *(v190 + 32) = *&v217[16];
          *(v166 + 48) = v174;
          *(v166 + 57) = *&v218[9];
          v175 = *v217;
          *v166 = v216;
          *(v166 + 16) = v175;
          v167 = type metadata accessor for FaceTimeURL(0);
        }
      }

      else
      {
        lazy protocol witness table accessor for type IncomingHandoffContext and conformance IncomingHandoffContext();
        v160 = v188;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v160)
        {
          MEMORY[0x22AA66DF0](v160);
          outlined consume of Data?(v104, v106);
          result = v61(v97, v12);
          v188 = 0;
          goto LABEL_38;
        }

        v61(v97, v12);

        outlined consume of Data?(v104, v106);
        v170 = BYTE1(v216);
        v171 = BYTE2(v216);
        v172 = BYTE3(v216);
        v173 = BYTE4(v216);
        v166 = v190;
        *v190 = v216;
        *(v166 + 1) = v170;
        *(v166 + 2) = v171;
        *(v166 + 3) = v172;
        *(v166 + 4) = v173;
        v167 = type metadata accessor for FaceTimeURL(0);
      }
    }

    else
    {
      lazy protocol witness table accessor for type JoinFailureContext and conformance JoinFailureContext(&lazy protocol witness table cache variable for type JoinFailureContext and conformance JoinFailureContext, type metadata accessor for JoinFailureContext, &protocol conformance descriptor for JoinFailureContext);
      v157 = v184;
      v158 = v183;
      v159 = v188;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v159)
      {
        MEMORY[0x22AA66DF0](v159);
        outlined consume of Data?(v88, v90);
        v61(v201, v12);
        (*(v182 + 56))(v157, 1, 1, v158);
        result = outlined destroy of NCProtoContactInfo?(v157, &_s27NeighborhoodActivityConduit18JoinFailureContextVSgMd, &_s27NeighborhoodActivityConduit18JoinFailureContextVSgMR);
        v188 = 0;
        goto LABEL_26;
      }

      v61(v201, v12);

      outlined consume of Data?(v88, v90);
      (*(v182 + 56))(v157, 0, 1, v158);
      v168 = v180;
      outlined init with take of JoinFailureContext(v157, v180, type metadata accessor for JoinFailureContext);
      v169 = v168;
      v166 = v190;
      outlined init with take of JoinFailureContext(v169, v190, type metadata accessor for JoinFailureContext);
      v167 = type metadata accessor for FaceTimeURL(0);
    }

LABEL_95:
    swift_storeEnumTagMultiPayload();
    return (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
  }

  else
  {

LABEL_76:
    v153 = type metadata accessor for FaceTimeURL(0);
    return (*(*(v153 - 8) + 56))(a2, 1, 1, v153);
  }
}

uint64_t type metadata accessor for FaceTimeURL(uint64_t a1)
{
  result = type metadata singleton initialization cache for FaceTimeURL;
  if (!type metadata singleton initialization cache for FaceTimeURL)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type JoinFailureContext and conformance JoinFailureContext(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of JoinFailureContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FaceTimeURLQueryItemName(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FaceTimeURLQueryItemName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FaceTimeURLQueryItemName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FaceTimeURLQueryItemName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FaceTimeURLQueryItemName.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FaceTimeURLQueryItemName(uint64_t a1)
{
  FaceTimeURLQueryItemName.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FaceTimeURLQueryItemName(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  FaceTimeURLQueryItemName.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FaceTimeURLQueryItemName@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FaceTimeURLQueryItemName.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FaceTimeURLQueryItemName@<X0>(unint64_t *a1@<X8>)
{
  result = FaceTimeURLQueryItemName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized static FaceTimeURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v85 = type metadata accessor for JoinFailureContext(0);
  MEMORY[0x28223BE20](v85);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for JoinContinuityConversationRequestContext(0);
  MEMORY[0x28223BE20](v86);
  v87 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FaceTimeURL(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v84 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v84 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v84 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit11FaceTimeURLO_ACtMd, &_s27NeighborhoodActivityConduit11FaceTimeURLO_ACtMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v84 + *(v24 + 56) - v25;
  v27 = a1;
  v28 = &v84 - v25;
  outlined init with copy of FaceTimeURL(v27, &v84 - v25);
  outlined init with copy of FaceTimeURL(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of FaceTimeURL(v28, v22);
      if (!swift_getEnumCaseMultiPayload())
      {
        v74 = v87;
        outlined init with take of JoinFailureContext(v26, v87, type metadata accessor for JoinContinuityConversationRequestContext);
        if ((static UUID.== infix(_:_:)() & 1) != 0 && v22[v86[5]] == *(v74 + v86[5]) && v22[v86[6]] == *(v74 + v86[6]))
        {
          v81 = v86[7];
          v82 = v22[v81];
          v83 = *(v74 + v81);
          outlined destroy of FaceTimeURL(v74, type metadata accessor for JoinContinuityConversationRequestContext);
          if (v82 == v83)
          {
            v79 = type metadata accessor for JoinContinuityConversationRequestContext;
            v80 = v22;
            goto LABEL_49;
          }
        }

        else
        {
          outlined destroy of FaceTimeURL(v74, type metadata accessor for JoinContinuityConversationRequestContext);
        }

        v75 = type metadata accessor for JoinContinuityConversationRequestContext;
        v76 = v22;
LABEL_41:
        outlined destroy of FaceTimeURL(v76, v75);
        outlined destroy of FaceTimeURL(v28, type metadata accessor for FaceTimeURL);
        goto LABEL_32;
      }

      outlined destroy of FaceTimeURL(v22, type metadata accessor for JoinContinuityConversationRequestContext);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of FaceTimeURL(v28, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v88;
        outlined init with take of JoinFailureContext(v26, v88, type metadata accessor for JoinFailureContext);
        if (static UUID.== infix(_:_:)())
        {
          v31 = v28;
          v32 = *(v85 + 20);
          v33 = *&v20[v32];
          v34 = v20[v32 + 8];
          v35 = (v30 + v32);
          v36 = *v35;
          v37 = *(v35 + 8);
          outlined destroy of FaceTimeURL(v30, type metadata accessor for JoinFailureContext);
          if (v34)
          {
            v28 = v31;
            if (v37)
            {
LABEL_48:
              v79 = type metadata accessor for JoinFailureContext;
              v80 = v20;
LABEL_49:
              outlined destroy of FaceTimeURL(v80, v79);
              v77 = v28;
              goto LABEL_50;
            }
          }

          else
          {
            if (v33 == v36)
            {
              v78 = v37;
            }

            else
            {
              v78 = 1;
            }

            v28 = v31;
            if ((v78 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          outlined destroy of FaceTimeURL(v30, type metadata accessor for JoinFailureContext);
        }

        v75 = type metadata accessor for JoinFailureContext;
        v76 = v20;
        goto LABEL_41;
      }

      outlined destroy of FaceTimeURL(v20, type metadata accessor for JoinFailureContext);
      goto LABEL_31;
    }

    outlined init with copy of FaceTimeURL(v28, v17);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v57 = v17[4];
      v58 = v17[3];
      v59 = v17[2];
      v60 = v17[1];
      v61 = *v26;
      v62 = v26[1];
      v63 = v26[2];
      v64 = v26[3];
      v65 = v26[4];
      LOBYTE(v98) = *v17;
      BYTE1(v98) = v60;
      BYTE2(v98) = v59;
      BYTE3(v98) = v58;
      BYTE4(v98) = v57;
      LOBYTE(v94) = v61;
      BYTE1(v94) = v62;
      BYTE2(v94) = v63;
      BYTE3(v94) = v64;
      BYTE4(v94) = v65;
      v48 = specialized static IncomingHandoffContext.== infix(_:_:)(&v98, &v94);
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 3)
  {
    outlined init with copy of FaceTimeURL(v28, v14);
    v49 = v14[3];
    v100 = v14[2];
    v101[0] = v49;
    *(v101 + 9) = *(v14 + 57);
    v50 = v14[1];
    v98 = *v14;
    v99 = v50;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v51 = *(v26 + 1);
      v52 = *(v26 + 3);
      v96 = *(v26 + 2);
      v97[0] = v52;
      *(v97 + 9) = *(v26 + 57);
      v53 = *(v26 + 1);
      v94 = *v26;
      v95 = v53;
      v54 = v14[3];
      v92[2] = v14[2];
      v93[0] = v54;
      *(v93 + 9) = *(v14 + 57);
      v55 = v14[1];
      v92[0] = *v14;
      v92[1] = v55;
      v56 = *(v26 + 3);
      v90[2] = v96;
      v91[0] = v56;
      *(v91 + 9) = *(v26 + 57);
      v90[0] = v94;
      v90[1] = v51;
      v48 = specialized static IncomingCallBannerContext.== infix(_:_:)(v92, v90);
      outlined destroy of IncomingCallBannerContext(&v94);
      outlined destroy of IncomingCallBannerContext(&v98);
LABEL_19:
      outlined destroy of FaceTimeURL(v28, type metadata accessor for FaceTimeURL);
      return v48 & 1;
    }

    outlined destroy of IncomingCallBannerContext(&v98);
LABEL_31:
    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit11FaceTimeURLO_ACtMd, &_s27NeighborhoodActivityConduit11FaceTimeURLO_ACtMR);
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v66 = v28;
    outlined init with copy of FaceTimeURL(v28, v8);
    v68 = *v8;
    v67 = v8[1];
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v69 = *v26;
      v70 = *(v26 + 1);
      if (v68 == v69 && v67 == v70)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          outlined destroy of FaceTimeURL(v66, type metadata accessor for FaceTimeURL);
LABEL_32:
          v48 = 0;
          return v48 & 1;
        }
      }

      v77 = v66;
LABEL_50:
      outlined destroy of FaceTimeURL(v77, type metadata accessor for FaceTimeURL);
      v48 = 1;
      return v48 & 1;
    }

    v28 = v66;
    goto LABEL_31;
  }

  outlined init with copy of FaceTimeURL(v28, v11);
  v38 = *(v11 + 1);
  v39 = v28;
  v40 = *(v11 + 4);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    v28 = v39;
    goto LABEL_31;
  }

  v41 = *(v11 + 3);
  v42 = v11[16];
  v43 = *v26;
  v44 = *(v26 + 1);
  v45 = v26[16];
  v46 = *(v26 + 3);
  v47 = *(v26 + 4);
  *&v98 = *v11;
  *(&v98 + 1) = v38;
  LOBYTE(v99) = v42;
  *(&v99 + 1) = v41;
  *&v100 = v40;
  *&v94 = v43;
  *(&v94 + 1) = v44;
  LOBYTE(v95) = v45;
  *(&v95 + 1) = v46;
  *&v96 = v47;
  v48 = specialized static CallUpdateBannerContext.== infix(_:_:)(&v98, &v94);

  outlined destroy of FaceTimeURL(v39, type metadata accessor for FaceTimeURL);
  return v48 & 1;
}

unint64_t specialized FaceTimeURLQueryItemName.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FaceTimeURLQueryItemName.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FaceTimeURLQueryItemName and conformance FaceTimeURLQueryItemName()
{
  result = lazy protocol witness table cache variable for type FaceTimeURLQueryItemName and conformance FaceTimeURLQueryItemName;
  if (!lazy protocol witness table cache variable for type FaceTimeURLQueryItemName and conformance FaceTimeURLQueryItemName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FaceTimeURLQueryItemName and conformance FaceTimeURLQueryItemName);
  }

  return result;
}

uint64_t type metadata completion function for FaceTimeURL(uint64_t a1)
{
  result = type metadata accessor for JoinContinuityConversationRequestContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for JoinFailureContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of FaceTimeURL(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceTimeURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FaceTimeURL(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int AsyncUtilities.TimeoutError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA66B50](v1);
  return Hasher._finalize()();
}

uint64_t static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](static AsyncUtilities.timeout<A>(after:work:), 0, 0);
}

uint64_t static AsyncUtilities.timeout<A>(after:work:)()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = static AsyncUtilities.timeout<A>(after:work:);
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static AsyncUtilities.timeout<A>(after:work:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for Result();
  v7[10] = v8;
  v9 = type metadata accessor for Optional();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static AsyncUtilities.timeout<A>(after:work:), 0, 0);
}

uint64_t closure #1 in static AsyncUtilities.timeout<A>(after:work:)()
{
  v1 = v0[17];
  v2 = v0[8];
  v13 = v0[6];
  v14 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  v8 = type metadata accessor for ThrowingTaskGroup();

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #1 in closure #1 in static AsyncUtilities.timeout<A>(after:work:), v7, v8);
  outlined destroy of TaskPriority?(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v14;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:), v9, v8);
  outlined destroy of TaskPriority?(v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = closure #1 in static AsyncUtilities.timeout<A>(after:work:);
  v11 = v0[13];

  return ThrowingTaskGroup.nextResult(isolation:)(v11, 0, 0, v8);
}

{

  return MEMORY[0x2822009F8](closure #1 in static AsyncUtilities.timeout<A>(after:work:), 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[12] + 8))(v1, v0[11]);
    lazy protocol witness table accessor for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
LABEL_5:

    v13 = v0[1];
    goto LABEL_7;
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[3];
  (*(v2 + 32))(v5, v1, v3);
  MEMORY[0x22AA66870](*v9, v8, v7, MEMORY[0x277D84950]);
  (*(v2 + 16))(v6, v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  v14 = v0[15];
  v15 = v0[8];
  v16 = v0[2];
  (*(v0[14] + 8))(v0[16], v0[10]);
  (*(*(v15 - 8) + 32))(v16, v14, v15);

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t partial apply for closure #1 in static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTRTQ0_;

  return closure #1 in static AsyncUtilities.timeout<A>(after:work:)(a1, a2, v7, v8, v9, v10, v6);
}

unint64_t lazy protocol witness table accessor for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError()
{
  result = lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError;
  if (!lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError;
  if (!lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);

  return _sxs5Error_pIegHrzo_xsAA_pIeAgHrzo_s8SendableRzlTR(a1, v4, v5, v6);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  outlined init with copy of TaskPriority?(a1, v19 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:), 0, 0);
}

uint64_t closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:);
  v3 = v0[2];
  v2 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v3, v2, 0, 0, 1);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:);
  }

  else
  {
    v5 = closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 64);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    lazy protocol witness table accessor for type AsyncUtilities.TimeoutError and conformance AsyncUtilities.TimeoutError();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in closure #1 in AssertionManager.takeAssertion(_:invalidationHandler:);

  return closure #2 in closure #1 in static AsyncUtilities.timeout<A>(after:work:)(a1, v4, v5, v6, v7);
}

uint64_t ThrowingTaskGroup.nextResult(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = ThrowingTaskGroup.nextResult(isolation:);

  return MEMORY[0x2822004C0](a1, a4);
}

uint64_t ThrowingTaskGroup.nextResult(isolation:)()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    if (v2[2])
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](ThrowingTaskGroup.nextResult(isolation:), v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

{
  return MEMORY[0x2821FEBD8](*(v0 + 40), "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 1, 3126);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)()
{
  return MEMORY[0x28217E248]();
}

{
  return MEMORY[0x28217E250]();
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return MEMORY[0x28217E280]();
}

{
  return MEMORY[0x28217E288]();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)()
{
  return MEMORY[0x28217E290]();
}

{
  return MEMORY[0x28217E298]();
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return MEMORY[0x28217E2C0]();
}

{
  return MEMORY[0x28217E2C8]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)()
{
  return MEMORY[0x28217E358]();
}

{
  return MEMORY[0x28217E360]();
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)()
{
  return MEMORY[0x28217E468]();
}

{
  return MEMORY[0x28217E470]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}