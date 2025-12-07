@interface MRMediaRemoteCommandOptionsSerialization
@end

@implementation MRMediaRemoteCommandOptionsSerialization

uint64_t ___MRMediaRemoteCommandOptionsSerialization_block_invoke()
{
  v91[85] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = _MRMediaRemoteCommandOptionsSerialization___serialization;
  _MRMediaRemoteCommandOptionsSerialization___serialization = v0;

  v66 = _MRMediaRemoteCommandOptionsSerialization___serialization;
  v90[0] = @"kMRMediaRemoteOptionIsExternalPlayerCommand";
  v89 = NSStringFromSelector(sel_externalPlayerCommand);
  v91[0] = v89;
  v90[1] = @"kMRMediaRemoteOptionIsNegative";
  v88 = NSStringFromSelector(sel_negative);
  v91[1] = v88;
  v90[2] = @"kMRMediaRemoteOptionMediaType";
  v87 = NSStringFromSelector(sel_mediaType);
  v91[2] = v87;
  v90[3] = @"kMRMediaRemoteOptionPlaybackPosition";
  v86 = NSStringFromSelector(sel_playbackPosition);
  v91[3] = v86;
  v90[4] = @"kMRMediaRemoteOptionBeginSeek";
  v85 = NSStringFromSelector(sel_beginSeek);
  v91[4] = v85;
  v90[5] = @"kMRMediaRemoteOptionEndSeek";
  v84 = NSStringFromSelector(sel_endSeek);
  v91[5] = v84;
  v90[6] = @"kMRMediaRemoteOptionPlaybackRate";
  v83 = NSStringFromSelector(sel_playbackRate);
  v91[6] = v83;
  v90[7] = @"kMRMediaRemoteOptionRepeatMode";
  v82 = NSStringFromSelector(sel_repeatMode);
  v91[7] = v82;
  v90[8] = @"kMRMediaRemoteCommandInfoPreservesRepeatModeKey";
  v81 = NSStringFromSelector(sel_preservesRepeatMode);
  v91[8] = v81;
  v90[9] = @"kMRMediaRemoteOptionShuffleMode";
  v80 = NSStringFromSelector(sel_shuffleMode);
  v91[9] = v80;
  v90[10] = @"kMRMediaRemoteCommandInfoPreservesShuffleModeKey";
  v79 = NSStringFromSelector(sel_preservesShuffleMode);
  v91[10] = v79;
  v90[11] = @"kMRMediaRemoteOptionQueueEndAction";
  v78 = NSStringFromSelector(sel_queueEndAction);
  v91[11] = v78;
  v90[12] = @"kMRMediaRemoteCommandInfoPreservesQueueEndActionKey";
  v77 = NSStringFromSelector(sel_preservesQueueEndAction);
  v91[12] = v77;
  v90[13] = @"kMRMediaRemoteOptionSkipInterval";
  v76 = NSStringFromSelector(sel_skipInterval);
  v91[13] = v76;
  v90[14] = @"kMRMediaRemoteOptionSourceID";
  v75 = NSStringFromSelector(sel_sourceID);
  v91[14] = v75;
  v90[15] = @"kMRMediaRemoteOptionStationHash";
  v74 = NSStringFromSelector(sel_radioStationHash);
  v91[15] = v74;
  v90[16] = @"kMRMediaRemoteOptionStationID";
  v73 = NSStringFromSelector(sel_radioStationID);
  v91[16] = v73;
  v90[17] = @"kMRMediaRemoteOptionSystemAppPlaybackQueueData";
  v72 = NSStringFromSelector(sel_systemAppPlaybackQueueData);
  v91[17] = v72;
  v90[18] = @"MRMediaRemoteOptionSystemAppPlaybackQueue";
  v71 = NSStringFromSelector(sel_systemAppPlaybackQueue);
  v91[18] = v71;
  v90[19] = @"PQso";
  v70 = NSStringFromSelector(sel_shouldOverrideManuallyCuratedQueue);
  v91[19] = v70;
  v90[20] = @"kMRMediaRemoteOptionTrackID";
  v69 = NSStringFromSelector(sel_trackID);
  v91[20] = v69;
  v90[21] = @"kMRMediaRemoteOptionContentItemID";
  v68 = NSStringFromSelector(sel_contentItemID);
  v91[21] = v68;
  v90[22] = @"kMRMediaRemoteOptionDestinationAppDisplayID";
  v67 = NSStringFromSelector(sel_destinationAppDisplayID);
  v91[22] = v67;
  v90[23] = @"kMRMediaRemoteOptionSendOptionsNumber";
  v65 = NSStringFromSelector(sel_sendOptions);
  v91[23] = v65;
  v90[24] = @"kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition";
  v64 = NSStringFromSelector(sel_requestDefermentToPlaybackQueuePosition);
  v91[24] = v64;
  v90[25] = @"kMRMediaRemoteOptionRating";
  v63 = NSStringFromSelector(sel_rating);
  v91[25] = v63;
  v90[26] = @"kMRMediaRemoteOptionContextID";
  v62 = NSStringFromSelector(sel_contextID);
  v91[26] = v62;
  v90[27] = @"kMRMediaRemoteOptionDesiredSessionID";
  v61 = NSStringFromSelector(sel_desiredSessionID);
  v91[27] = v61;
  v90[28] = @"kMRMediaRemoteOptionStationURL";
  v60 = NSStringFromSelector(sel_stationURL);
  v91[28] = v60;
  v90[29] = @"kMRMediaRemoteOptionShouldBeginRadioPlayback";
  v59 = NSStringFromSelector(sel_shouldBeginRadioPlayback);
  v91[29] = v59;
  v90[30] = @"kMRMediaRemoteOptionPlaybackQueueInsertionPosition";
  v58 = NSStringFromSelector(sel_playbackQueueInsertionPosition);
  v91[30] = v58;
  v90[31] = @"kMRMediaRemoteOptionPlaybackQueueOffset";
  v57 = NSStringFromSelector(sel_playbackQueueOffset);
  v91[31] = v57;
  v90[32] = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
  v56 = NSStringFromSelector(sel_playbackQueueDestinationOffset);
  v91[32] = v56;
  v90[33] = @"kMRMediaRemoteOptionLanguageOptionData";
  v55 = NSStringFromSelector(sel_languageOption);
  v91[33] = v55;
  v90[34] = @"kMRMediaRemoteOptionInsertAfterContentItemID";
  v54 = NSStringFromSelector(sel_insertAfterContentItemID);
  v91[34] = v54;
  v90[35] = @"kMRMediaRemoteOptionInsertBeforeContentItemID";
  v53 = NSStringFromSelector(sel_insertBeforeContentItemID);
  v91[35] = v53;
  v90[36] = @"kMRMediaRemoteOptionNowPlayingContentItemID";
  v52 = NSStringFromSelector(sel_nowPlayingContentItemID);
  v91[36] = v52;
  v90[37] = @"PQri";
  v51 = NSStringFromSelector(sel_replaceIntent);
  v91[37] = v51;
  v90[38] = @"kMRMediaRemoteOptionCommandID";
  v50 = NSStringFromSelector(sel_commandID);
  v91[38] = v50;
  v90[39] = @"kMRMediaRemoteOptionSenderID";
  v49 = NSStringFromSelector(sel_senderID);
  v91[39] = v49;
  v90[40] = @"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier";
  v48 = NSStringFromSelector(sel_remoteControlInterface);
  v91[40] = v48;
  v90[41] = @"kMRMediaRemoteOptionPlaybackSessionData";
  v47 = NSStringFromSelector(sel_playbackSession);
  v91[41] = v47;
  v90[42] = @"kMRMediaRemoteOptionPlaybackSessionIdentifier";
  v46 = NSStringFromSelector(sel_playbackSessionIdentifier);
  v91[42] = v46;
  v90[43] = @"kMRMediaRemoteOptionPlaybackSessionType";
  v45 = NSStringFromSelector(sel_playbackSessionType);
  v91[43] = v45;
  v90[44] = @"kMRMediaRemoteOptionPlaybackSessionPriority";
  v44 = NSStringFromSelector(sel_playbackSessionPriority);
  v91[44] = v44;
  v90[45] = @"kMRMediaRemoteOptionPlaybackSessionFilePath";
  v43 = NSStringFromSelector(sel_playbackSessionFilePath);
  v91[45] = v43;
  v90[46] = @"kMRMediaRemoteOptionPlaybackSessionRevision";
  v42 = NSStringFromSelector(sel_playbackSessionRevision);
  v91[46] = v42;
  v90[47] = @"kMRMediaRemoteOptionPlaybackSessionMetadata";
  v41 = NSStringFromSelector(sel_playbackSessionMetadata);
  v91[47] = v41;
  v90[48] = @"kMRMediaRemoteOptionUserIdentityData";
  v40 = NSStringFromSelector(sel_userIdentityData);
  v91[48] = v40;
  v90[49] = @"kMRMediaRemoteOptionHomeKitUserIdentifier";
  v39 = NSStringFromSelector(sel_homeKitUserIdentifier);
  v91[49] = v39;
  v90[50] = @"kMRMediaRemoteOptionVerifySupportedCommands";
  v38 = NSStringFromSelector(sel_verifySupportedCommands);
  v91[50] = v38;
  v90[51] = @"kMRMediaRemoteOptionAssistantSetQueueTrueCompletion";
  v37 = NSStringFromSelector(sel_trueCompletion);
  v91[51] = v37;
  v90[52] = @"kMRMediaRemoteOptionCommandTimeout";
  v36 = NSStringFromSelector(sel_commandTimeout);
  v91[52] = v36;
  v90[53] = @"kMRMediaRemoteOptionPlaybackAuthorizationToken";
  v35 = NSStringFromSelector(sel_playbackAuthorizationToken);
  v91[53] = v35;
  v90[54] = @"kMRMediaRemoteOptionEventNoticeType";
  v34 = NSStringFromSelector(sel_eventNoticeType);
  v91[54] = v34;
  v90[55] = @"kMRMediaRemoteOptionEventNoticeIdentifier";
  v33 = NSStringFromSelector(sel_eventNoticeIdentifier);
  v91[55] = v33;
  v90[56] = @"kMRMediaRemoteOptionSharedPlaybackSessionIdentifier";
  v32 = NSStringFromSelector(sel_sharedPlaybackSessionIdentifier);
  v91[56] = v32;
  v90[57] = @"kMRMediaRemoteOptionOriginatingDeviceUID";
  v31 = NSStringFromSelector(sel_originatingDeviceUID);
  v91[57] = v31;
  v90[58] = @"kMRMediaRemoteOptionDestinationDeviceUIDs";
  v30 = NSStringFromSelector(sel_destinationDeviceUIDs);
  v91[58] = v30;
  v90[59] = @"kMRMediaRemoteOptionAlwaysIgnoreDuringCall";
  v29 = NSStringFromSelector(sel_alwaysIgnoreDuringCall);
  v91[59] = v29;
  v90[60] = @"kMRMediaRemoteOptionAlwaysIgnoreDuringSharePlay";
  v28 = NSStringFromSelector(sel_alwaysIgnoreDuringSharePlay);
  v91[60] = v28;
  v90[61] = @"kMRMediaRemoteOptionCommandSequenceUUID";
  v27 = NSStringFromSelector(sel_commandSequenceUUID);
  v91[61] = v27;
  v90[62] = @"kMRMediaRemoteOptionAssistantTTSEndTimestamp";
  v26 = NSStringFromSelector(sel_assistantTTSEndTimestamp);
  v91[62] = v26;
  v90[63] = @"kMRMediaRemoteOptionAssistantCommandSendTimestamp";
  v25 = NSStringFromSelector(sel_assistantCommandSendTimestamp);
  v91[63] = v25;
  v90[64] = @"kMRMediaRemoteOptionVocalsControlActive";
  v24 = NSStringFromSelector(sel_vocalsControlActive);
  v91[64] = v24;
  v90[65] = @"kMRMediaRemoteOptionVocalsControlLevel";
  v23 = NSStringFromSelector(sel_vocalsControlLevel);
  v91[65] = v23;
  v90[66] = @"kMRMediaRemoteOptionVocalsControlMinLevel";
  v22 = NSStringFromSelector(sel_vocalsControlMinLevel);
  v91[66] = v22;
  v90[67] = @"kMRMediaRemoteOptionVocalsControlMaxLevel";
  v21 = NSStringFromSelector(sel_vocalsControlMaxLevel);
  v91[67] = v21;
  v90[68] = @"kMRMediaRemoteOptionVocalsControlContinuous";
  v20 = NSStringFromSelector(sel_vocalsControlContinuous);
  v91[68] = v20;
  v90[69] = @"kMRMediaRemoteOptionOriginatedFromRemoteDevice";
  v19 = NSStringFromSelector(sel_originatedFromRemoteDevice);
  v91[69] = v19;
  v90[70] = @"kMRMediaRemoteOptionSiriTurnIdentifier";
  v18 = NSStringFromSelector(sel_siriTurnIdentifier);
  v91[70] = v18;
  v90[71] = @"kMRMediaRemoteOptionSiriSearchDataSetIdentifier";
  v17 = NSStringFromSelector(sel_siriSearchDataSetIdentifier);
  v91[71] = v17;
  v90[72] = @"kMRMediaRemoteOptionPrepareForSetQueueIsProactive";
  v16 = NSStringFromSelector(sel_prepareForSetQueueIsProactive);
  v91[72] = v16;
  v90[73] = @"kMRMediaRemoteOptionPrepareForSetQueueProactiveReason";
  v15 = NSStringFromSelector(sel_prepareForSetQueueProactiveReason);
  v91[73] = v15;
  v90[74] = @"MRMediaRemoteOptionPrepareForSetQueueProactiveReasonType";
  v14 = NSStringFromSelector(sel_prepareForSetQueueProactiveReasonType);
  v91[74] = v14;
  v90[75] = @"kMRMediaRemoteOptionApplicationUserIdentity";
  v13 = NSStringFromSelector(sel_applicationUserIdentity);
  v91[75] = v13;
  v90[76] = @"kMRMediaRemoteOptionAssociatedParticipantIdentifier";
  v2 = NSStringFromSelector(sel_associatedParticipantIdentifier);
  v91[76] = v2;
  v90[77] = @"kMRMediaRemoteOptionDialogOptions";
  v3 = NSStringFromSelector(sel_dialogOptions);
  v91[77] = v3;
  v90[78] = @"kMRMediaRemoteOptionClientPreferredLanguages";
  v4 = NSStringFromSelector(sel_clientPreferredLanguages);
  v91[78] = v4;
  v90[79] = @"kMRMediaRemoteOptionSleepTimerTime";
  v5 = NSStringFromSelector(sel_sleepTimerTime);
  v91[79] = v5;
  v90[80] = @"kMRMediaRemoteOptionSleepTimerStopMode";
  v6 = NSStringFromSelector(sel_sleepTimerStopMode);
  v91[80] = v6;
  v90[81] = @"kMRMediaRemoteOptionReferencePosition";
  v7 = NSStringFromSelector(sel_referencePosition);
  v91[81] = v7;
  v90[82] = @"kMRMediaRemoteOptionEnhanceDialogueActive";
  v8 = NSStringFromSelector(sel_enhanceDialogueActive);
  v91[82] = v8;
  v90[83] = @"kMRMediaRemoteOptionDelegateAccountData";
  v9 = NSStringFromSelector(sel_delegateAccountData);
  v91[83] = v9;
  v90[84] = @"kMRMediaRemoteOptionDelegateAccountDataType";
  v10 = NSStringFromSelector(sel_delegateAccountDataType);
  v91[84] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:85];
  [v66 setDictionaryKeyToProtobufKeyMapping:v11];

  [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufClass:objc_opt_class()];
  [_MRMediaRemoteCommandOptionsSerialization___serialization setDictionaryValueToProtobufValueTransformer:&__block_literal_global_173];
  [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufValueToDictionaryValueTransformer:&__block_literal_global_183_0];
  return [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufValueToDictionaryPostTransformer:&__block_literal_global_190];
}

id ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_isEqualToString_(v5) || objc_msgSend_isEqualToString_(v5))
  {
    v7 = [v6 unsignedIntValue];
    v8 = MEMORY[0x1E696AD98];
    if (v7 - 1 >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v13 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    if (v13 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v13 == 2);
    }

    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v14 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    v9 = v14 == 1;
LABEL_6:
    v10 = [v8 numberWithInt:v9];
LABEL_7:
    v11 = v10;

    v6 = v11;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v15 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    if (v15 == 512)
    {
      v16 = 512;
    }

    else
    {
      v16 = 1024;
    }

    if (v15)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    if ((_NSIsNSDictionary() & 1) == 0)
    {
      ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2_cold_1();
    }

    v10 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v6);
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

id ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = NSStringFromSelector(sel_repeatMode);
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString || (NSStringFromSelector(sel_shuffleMode), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend_isEqualToString_(v5), v9, v10))
  {
    v11 = [v6 unsignedIntValue];
    v12 = MEMORY[0x1E696AD98];
    if (v11 - 1 >= 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

LABEL_6:
    v14 = [v12 numberWithInt:v13];
LABEL_7:
    v15 = v14;

    v6 = v15;
    goto LABEL_8;
  }

  v17 = NSStringFromSelector(sel_replaceIntent);
  v18 = objc_msgSend_isEqualToString_(v5);

  if (v18)
  {
    v19 = [v6 unsignedIntValue];
    v12 = MEMORY[0x1E696AD98];
    if (v19 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v19 == 2);
    }

    goto LABEL_6;
  }

  v20 = NSStringFromSelector(sel_sendOptions);
  v21 = objc_msgSend_isEqualToString_(v5);

  if (v21)
  {
    v22 = [v6 intValue] == 1;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
    goto LABEL_7;
  }

  v23 = NSStringFromSelector(sel_playbackSessionPriority);
  v24 = objc_msgSend_isEqualToString_(v5);

  if (v24)
  {
    v25 = [v6 intValue];
    if (v25)
    {
      if (v25 == 512)
      {
        v26 = 512;
      }

      else
      {
        v26 = 1024;
      }
    }

    else
    {
      v26 = 0;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
    goto LABEL_7;
  }

  v27 = NSStringFromSelector(sel_dialogOptions);
  v28 = objc_msgSend_isEqualToString_(v5);

  if (v28)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3_cold_1(v6);
    }

    v14 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v6);
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 systemAppPlaybackQueue];

  if (v5)
  {
    v6 = [v9 systemAppPlaybackQueue];
    v7 = MRSystemAppPlaybackQueueCreateFromProtobuf(v6);

    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation(*MEMORY[0x1E695E480], v7);
    [v9 setSystemAppPlaybackQueueData:ExternalRepresentation];
    [v4 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
    [v4 setObject:0 forKeyedSubscript:@"MRMediaRemoteOptionSystemAppPlaybackQueue"];
    MRSystemAppPlaybackQueueDestroy(v7);
  }
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRProtobufSerialization *_MRMediaRemoteCommandOptionsSerialization(void)_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"MRProtobufUtility.m" lineNumber:494 description:@"Expected dictionary value for kMRMediaRemoteOptionDialogOptions"];
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRProtobufSerialization *_MRMediaRemoteCommandOptionsSerialization(void)_block_invoke_3"];
  [v3 handleFailureInFunction:v2 file:@"MRProtobufUtility.m" lineNumber:517 description:{@"Expected DictionaryProtobuf value for kMRMediaRemoteOptionDialogOptions: %@", a1}];
}

@end