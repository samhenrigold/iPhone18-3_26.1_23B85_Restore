@interface IMTranscriptChatItemRules
- (BOOL)_hasEarlierMessagesToLoad;
- (BOOL)_hasMultipleActiveSubscriptions;
- (BOOL)_hasRecentMessagesToLoad;
- (BOOL)_shouldAdjustNewDeliveredItemIndex:(int64_t)index chatItems:(id)items;
- (BOOL)_shouldAppendNumberChangedForItem:(id)item previousItem:(id)previousItem lastChatItem:(id)chatItem outPhoneNumber:(id *)number;
- (BOOL)_shouldAppendReplyContextForItem:(id)item previousItem:(id)previousItem chatStyle:(unsigned __int8)style;
- (BOOL)_shouldAppendScheduledSectionDateForItem:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendScheduledSectionLabelForItem:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendSendViaSatelliteForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendSentViaSatelliteForChat:(id)chat message:(id)message;
- (BOOL)_shouldAppendStewieSharingSummaryForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldAppendStoppedSharingForChat:(id)chat item:(id)item previousItem:(id)previousItem;
- (BOOL)_shouldDisplayAttributionInfo:(id)info;
- (BOOL)_shouldRegenerateChatItemsForItem:(id)item previousItem:(id)previousItem oldPreviousItem:(id)oldPreviousItem;
- (BOOL)_shouldReloadChatItem:(id)item oldChatItem:(id)chatItem;
- (BOOL)_shouldReloadChatItemWithAssociatedChatItems:(id)items oldAssociatedChatItems:(id)chatItems;
- (BOOL)_shouldReloadSatelliteChatItems:(id)items;
- (BOOL)_shouldShowBlockContactForChat:(id)chat withItems:(id)items;
- (BOOL)_shouldShowChatDispositionForChat:(id)chat;
- (BOOL)_shouldShowEffectPlayButtonForMessage:(id)message;
- (BOOL)_shouldShowHQButtonForMessage:(id)message;
- (BOOL)_shouldShowReportSpamForChat:(id)chat withItems:(id)items;
- (BOOL)_shouldShowStewieResumeButtonsForChat:(id)chat;
- (BOOL)_updateAggregateAttachmentMessagePartAssociatedItems:(id)items map:(id)map;
- (BOOL)isDeliveredStatusItem:(id)item;
- (BOOL)isReadStatusItem:(id)item;
- (IMChat)chat;
- (id)_addChoiceStatusItemForPollMessagePartChatItem:(id)item combiningStatusType:(int64_t)type;
- (id)_attributionChatItemForChatItem:(id)item;
- (id)_chatItemsForItem:(id)item previousItems:(id)items;
- (id)_chatItemsWithReplyCountsForNewChatItems:(id)items parentItem:(id)item;
- (id)_currentChatSubscriptionLabel;
- (id)_editedStatusItemForEditedMessagePartChatItem:(id)item combiningStatusType:(int64_t)type;
- (id)_effectControlForChatItem:(id)item;
- (id)_historyToDisplayForMessageItem:(id)item partIndex:(int64_t)index;
- (id)_initWithChat:(id)chat;
- (id)_itemWithChatItemsDeleted:(id)deleted fromItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapOfItemsDeleted:(id *)ofItemsDeleted;
- (id)_newDeliveredChatItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items;
- (id)_newiMessageLiteSentItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items;
- (id)_replyCountChatItemForChatItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me threadOriginatorMessageItem:(id)messageItem;
- (id)_updateOrRemoveDeliveredStatusItemMovingFromOldIndex:(int64_t)index chatItems:(id)items;
- (id)_updateOrRemoveiMessageLiteSentItemMovingFromOldIndex:(int64_t)index chatItems:(id)items;
- (id)inlineReplyController;
- (id)serviceForChatItems:(id)items;
- (id)testChatItems;
- (int64_t)_lastItemIndexExcludingScheduledSection:(id)section;
- (int64_t)_lastItemIndexExcludingWatchReplyOptions:(id)options;
- (void)_filterBreadcrumbs:(id)breadcrumbs;
- (void)_fixBreadcrumbs:(id)breadcrumbs;
- (void)_handleTemporaryBreadcrumbs:(id)breadcrumbs;
- (void)_insertOrMoveChatItemToEndOfChatItems:(id)items chatItemClass:(Class)class shouldInsert:(BOOL)insert chatItemCreationBlock:(id)block;
- (void)_invalidateSpamIndicatorCachedValues;
- (void)_manageMomentShareAndAggregateItemsForChatItems:(id)items;
- (void)_moveCustomAcknowledgementsForBreadcrumbs:(id)breadcrumbs visibleAssociatedMessageMap:(id)map;
- (void)_processChatItemsForAttribution:(id)attribution;
- (void)_processChatItemsForAutomaticTranslationIndicator:(id)indicator;
- (void)_processChatItemsForBreadcrumbs:(id)breadcrumbs;
- (void)_processChatItemsForDownloadingPendingMessages:(id)messages;
- (void)_processChatItemsForEditedStatus:(id)status;
- (void)_processChatItemsForExpandedEditedMessageHistory:(id)history;
- (void)_processChatItemsForIntroductionsButtons:(id)buttons;
- (void)_processChatItemsForIsShowingEditHistory:(id)history;
- (void)_processChatItemsForJunkRecoveryItem:(id)item inChat:(id)chat;
- (void)_processChatItemsForKeyTransparencyStatus:(id)status;
- (void)_processChatItemsForMessageStatusSequenceNumber:(id)number;
- (void)_processChatItemsForPollAddChoiceButton:(id)button;
- (void)_processChatItemsForReplayButton:(id)button;
- (void)_processChatItemsForSMSFallbackStatusIndicator:(id)indicator;
- (void)_processChatItemsForSatelliteAvailabilityIndicator:(id)indicator;
- (void)_processChatItemsForSatelliteNoDeliveryStatusIndicator:(id)indicator;
- (void)_processChatItemsForShowTranslationAlternateText:(id)text;
- (void)_processChatItemsForStewieResumeButtons:(id)buttons inChat:(id)chat;
- (void)_processChatItemsForSuggestedReplies:(id)replies inChat:(id)chat;
- (void)_processChatItemsForUnavailabilityIndicator:(id)indicator;
- (void)_processChatItemsForUnknownInternationalSender:(id)sender;
- (void)_processRCSEncryptionTestMessages:(id)messages;
- (void)_processSuggestedActionResponses:(id)responses;
- (void)_setItems:(id)items;
- (void)_setNextStaleTime:(id)time;
- (void)addChatItem:(id)item toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:(id)items;
@end

@implementation IMTranscriptChatItemRules

- (BOOL)_shouldShowEffectPlayButtonForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy errorCode])
  {
    v4 = 0;
  }

  else
  {
    expressiveSendStyleID = [messageCopy expressiveSendStyleID];
    if ([expressiveSendStyleID length] && ((objc_msgSend(expressiveSendStyleID, "containsString:", *MEMORY[0x1E69A7080]) & 1) != 0 || objc_msgSend(expressiveSendStyleID, "containsString:", *MEMORY[0x1E69A7028])))
    {
      v6 = [expressiveSendStyleID containsString:*MEMORY[0x1E69A7088]] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    message = [messageCopy message];
    text = [message text];

    if ([text im_containsIMTextEffect])
    {
      v9 = _AXSReduceMotionAutoplayMessagesEffectsEnabled() == 0;
    }

    else
    {
      v9 = 0;
    }

    v4 = v6 | v9;
  }

  return v4 & 1;
}

- (id)inlineReplyController
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  inlineReplyController = [WeakRetained inlineReplyController];

  return inlineReplyController;
}

- (void)_setItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  p_items = &self->_items;
  if (items != itemsCopy)
  {
    v8 = itemsCopy;
    v7 = [(NSArray *)itemsCopy copy];

    objc_storeStrong(p_items, v7);
    itemsCopy = v7;
  }
}

- (void)_setNextStaleTime:(id)time
{
  timeCopy = time;
  nextStaleTime = self->_nextStaleTime;
  p_nextStaleTime = &self->_nextStaleTime;
  if (nextStaleTime != timeCopy)
  {
    v8 = timeCopy;
    objc_storeStrong(p_nextStaleTime, time);
    timeCopy = v8;
  }
}

- (id)_currentChatSubscriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  lastAddressedSIMID = [WeakRetained lastAddressedSIMID];

  v5 = objc_loadWeakRetained(&self->_chat);
  lastAddressedHandleID = [v5 lastAddressedHandleID];

  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  v9 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedHandleID];

  label = [v9 label];

  return label;
}

- (id)_chatItemsForItem:(id)item previousItems:(id)items
{
  v426 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemsCopy = items;
  theArray = [MEMORY[0x1E695DF70] array];
  if (![itemCopy shouldGenerateTopLevelChatItem])
  {
    goto LABEL_370;
  }

  v5 = itemCopy;
  v6 = itemsCopy;
  objc_opt_class();
  v378 = v6;
  v382 = v5;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      lastObject = [v6 lastObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      time = [v5 time];
      time2 = [lastObject time];
      [time timeIntervalSinceDate:time2];
      v28 = v27;
      if (qword_1EB2EA418 != -1)
      {
        sub_1A84E2214();
      }

      v29 = *&qword_1EB2E56B0;

      if (fabs(v28) >= v29)
      {
        goto LABEL_42;
      }

      lastObject = lastObject;
      if (![v5 isFromMe] || (objc_msgSend(lastObject, "isFromMe") & 1) == 0)
      {
        sender = [v5 sender];
        sender2 = [lastObject sender];
        v32 = sender;
        v33 = sender2;
        v34 = v33;
        if (v32 == v33)
        {
        }

        else
        {
          if (!v32 || !v33)
          {
            v42 = v378;
LABEL_56:

            goto LABEL_57;
          }

          v35 = [v32 isEqualToString:v33];

          if ((v35 & 1) == 0)
          {

            goto LABEL_42;
          }
        }
      }

      title = [v5 title];
      title2 = [lastObject title];
      v32 = title;
      v47 = title2;
      v34 = v47;
      if (v32 != v47)
      {
        v42 = v378;
        if (v32 && v47)
        {
          v48 = [v32 isEqualToString:v47];

          if (v48)
          {
            goto LABEL_370;
          }

          goto LABEL_59;
        }

        goto LABEL_56;
      }

LABEL_54:
      goto LABEL_370;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_58;
    }

    v5 = v5;
    lastObject = [v6 lastObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    time3 = [v5 time];
    time4 = [lastObject time];
    [time3 timeIntervalSinceDate:time4];
    v39 = v38;
    if (qword_1EB2EA418 != -1)
    {
      sub_1A84E2214();
    }

    v40 = *&qword_1EB2E56B0;

    if (fabs(v39) >= v40)
    {
LABEL_42:

LABEL_58:
      goto LABEL_59;
    }

    lastObject = lastObject;
    actionType = [v5 actionType];
    v42 = v378;
    if (actionType != [lastObject actionType])
    {
LABEL_57:

      goto LABEL_58;
    }

    if ([v5 isFromMe] && (objc_msgSend(lastObject, "isFromMe") & 1) != 0)
    {
      v43 = 1;
    }

    else
    {
      sender3 = [v5 sender];
      sender4 = [lastObject sender];
      v331 = sender3;
      v332 = sender4;
      v333 = v332;
      if (v331 == v332)
      {
        v43 = 1;
        v42 = v378;
      }

      else
      {
        v43 = 0;
        v42 = v378;
        if (v331 && v332)
        {
          v43 = [v331 isEqualToString:v332];
        }
      }
    }

    actionType2 = [v5 actionType];
    if (actionType2 <= 7)
    {
      if (((1 << actionType2) & 0xBA) != 0)
      {
        if (!v43)
        {
          goto LABEL_57;
        }

        fileTransferGUIDs = [v5 fileTransferGUIDs];
        fileTransferGUIDs2 = [lastObject fileTransferGUIDs];
        v355 = fileTransferGUIDs;
        v356 = fileTransferGUIDs2;
        v357 = v356;
        if (v355 == v356)
        {
          LOBYTE(v43) = 1;
          v42 = v378;
        }

        else
        {
          LOBYTE(v43) = 0;
          v42 = v378;
          if (v355 && v356)
          {
            LOBYTE(v43) = [v355 isEqualToArray:v356];
          }
        }

LABEL_393:
        if (v43)
        {
          goto LABEL_370;
        }

        goto LABEL_59;
      }

      if (((1 << actionType2) & 0x44) != 0)
      {
        goto LABEL_393;
      }
    }

    goto LABEL_54;
  }

  v7 = v5;
  v411 = 0u;
  v412 = 0u;
  v413 = 0u;
  v414 = 0u;
  obj = [v6 reversed];
  v8 = [obj countByEnumeratingWithState:&v411 objects:buf count:16];
  if (v8)
  {
    v9 = *v412;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v412 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v411 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      time5 = [v7 time];
      time6 = [v11 time];
      [time5 timeIntervalSinceDate:time6];
      v15 = v14;
      if (qword_1EB2EA418 != -1)
      {
        sub_1A84E2228();
      }

      v16 = fabs(v15) < *&qword_1EB2E56B0;

      if (!v16)
      {
        break;
      }

      v17 = v11;
      otherHandle = [v7 otherHandle];
      otherHandle2 = [v17 otherHandle];
      v20 = otherHandle;
      v21 = otherHandle2;
      v22 = v21;
      if (v20 == v21)
      {

LABEL_45:
        changeType = [v7 changeType];
        LOBYTE(changeType) = changeType == [v17 changeType];

        if (changeType)
        {
          goto LABEL_370;
        }

        goto LABEL_59;
      }

      if (v20 && v21)
      {
        v23 = [v20 isEqualToString:v21];

        if (v23)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v411 objects:buf count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_59:
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  chatStyle = [WeakRetained chatStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _items = [(IMTranscriptChatItemRules *)self _items];
    v51 = objc_loadWeakRetained(&self->_chat);
    isInScrutinyMode = [v51 isInScrutinyMode];

    guid = [v382 guid];
    if (isInScrutinyMode)
    {
      guid2 = [v382 guid];
      [IMChat storeGUIDInAttemptingListInScrutinyMode:guid2];
    }

    v55 = objc_loadWeakRetained(&self->_chat);
    [v55 loadParticipantContactsIfNecessary];

    v56 = objc_loadWeakRetained(&self->_chat);
    v57 = sub_1A836B1CC(v56, _items);

    _newChatItems = [v382 _newChatItemsWithChatContext:v57];
    if (!_newChatItems || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![_newChatItems count])
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          guid3 = [v382 guid];
          *buf = 138412290;
          *v425 = guid3;
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "Generated no chat items for IMMessageItem with GUID: %@", buf, 0xCu);
        }
      }
    }

    if (isInScrutinyMode)
    {
      [IMChat removeGUIDInAttemptingListInScrutinyMode:guid];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _items2 = [(IMTranscriptChatItemRules *)self _items];
      v62 = objc_loadWeakRetained(&self->_chat);
      v63 = sub_1A836B1CC(v62, _items2);

      _newChatItems = [v382 _newChatItemsWithChatContext:v63];
    }

    else
    {
      _newChatItems = [v382 _newChatItems];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![_newChatItems changeType])
  {
    sender5 = [_newChatItems sender];
    v65 = [sender5 ID];

    otherHandle3 = [_newChatItems otherHandle];
    v67 = [otherHandle3 ID];

    if ([v65 isEqualToString:v67])
    {
      v68 = objc_loadWeakRetained(&self->_chat);
      [v68 setIsSubscriptionSwitchParticipantAddTypeFound:1];

      v69 = objc_loadWeakRetained(&self->_chat);
      [v69 setSubscriptionSwitchParticipantAddChatItem:_newChatItems];

      _newChatItems = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [_newChatItems changeType] != 1)
  {
    v94 = 1;
    goto LABEL_88;
  }

  v70 = objc_loadWeakRetained(&self->_chat);
  if ([v70 isSubscriptionSwitchParticipantAddTypeFound])
  {
    v71 = objc_loadWeakRetained(&self->_chat);
    subscriptionSwitchParticipantAddChatItem = [v71 subscriptionSwitchParticipantAddChatItem];
    v73 = subscriptionSwitchParticipantAddChatItem == 0;

    if (v73)
    {
      v94 = 1;
      goto LABEL_289;
    }

    v74 = objc_loadWeakRetained(&self->_chat);
    subscriptionSwitchParticipantAddChatItem2 = [v74 subscriptionSwitchParticipantAddChatItem];
    sender6 = [subscriptionSwitchParticipantAddChatItem2 sender];
    v70 = [sender6 ID];

    sender7 = [_newChatItems sender];
    v78 = [sender7 ID];

    sender8 = [_newChatItems sender];
    name = [sender8 name];

    otherHandle4 = [_newChatItems otherHandle];
    name2 = [otherHandle4 name];

    if ([v70 isEqualToString:v78])
    {
      obja = [name isEqualToString:name2];
      if (obja)
      {
        _item = [_newChatItems _item];
        v83 = [IMParticipantSubscriptionSwitchChatItem alloc];
        sender9 = [_newChatItems sender];
        otherHandle5 = [_newChatItems otherHandle];
        sender10 = [(IMParticipantSubscriptionSwitchChatItem *)v83 _initWithItem:_item sender:sender9 otherHandle:otherHandle5];

        v86 = [IMDateChatItem alloc];
        v87 = objc_loadWeakRetained(&self->_chat);
        subscriptionSwitchParticipantAddChatItem3 = [v87 subscriptionSwitchParticipantAddChatItem];
        _item2 = [subscriptionSwitchParticipantAddChatItem3 _item];
        _item3 = [(IMDateChatItem *)v86 _initWithItem:_item2];

        v423[0] = _item3;
        v423[1] = sender10;
        v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v423 count:2];

        v92 = objc_loadWeakRetained(&self->_chat);
        [v92 setIsSubscriptionSwitchParticipantAddTypeFound:0];

        v93 = objc_loadWeakRetained(&self->_chat);
        [v93 setSubscriptionSwitchParticipantAddChatItem:0];
        _newChatItems = v91;
      }

      else
      {
        _item = [_newChatItems otherHandle];
        sender10 = [_newChatItems sender];
        v258 = objc_loadWeakRetained(&self->_chat);
        subscriptionSwitchParticipantAddChatItem4 = [v258 subscriptionSwitchParticipantAddChatItem];
        _item3 = [subscriptionSwitchParticipantAddChatItem4 _item];

        v260 = [IMParticipantChangeChatItem alloc];
        v261 = objc_loadWeakRetained(&self->_chat);
        v262 = sub_1A836B1CC(v261, self->_items);
        v93 = [(IMParticipantChangeChatItem *)v260 _initWithItem:_item3 sender:_item otherHandle:sender10 context:v262];

        v263 = objc_loadWeakRetained(&self->_chat);
        [v263 setSubscriptionSwitchParticipantAddChatItem:v93];
      }

      v94 = obja ^ 1;
    }

    else
    {
      v94 = 1;
    }
  }

  else
  {
    v94 = 1;
  }

LABEL_289:
  v264 = objc_loadWeakRetained(&self->_chat);
  isSubscriptionSwitchParticipantAddTypeFound = [v264 isSubscriptionSwitchParticipantAddTypeFound];

  if (isSubscriptionSwitchParticipantAddTypeFound)
  {
    v266 = [IMDateChatItem alloc];
    v267 = objc_loadWeakRetained(&self->_chat);
    subscriptionSwitchParticipantAddChatItem5 = [v267 subscriptionSwitchParticipantAddChatItem];
    _item4 = [subscriptionSwitchParticipantAddChatItem5 _item];
    v270 = [(IMDateChatItem *)v266 _initWithItem:_item4];

    v422[0] = v270;
    v271 = objc_loadWeakRetained(&self->_chat);
    subscriptionSwitchParticipantAddChatItem6 = [v271 subscriptionSwitchParticipantAddChatItem];
    v422[1] = subscriptionSwitchParticipantAddChatItem6;
    _newChatItems2 = [v382 _newChatItems];
    v422[2] = _newChatItems2;
    v274 = [MEMORY[0x1E695DEC8] arrayWithObjects:v422 count:3];

    v275 = objc_loadWeakRetained(&self->_chat);
    [v275 setIsSubscriptionSwitchParticipantAddTypeFound:0];

    v276 = objc_loadWeakRetained(&self->_chat);
    [v276 setSubscriptionSwitchParticipantAddChatItem:0];

    v94 = 0;
    _newChatItems = v274;
  }

LABEL_88:
  v95 = [(IMTranscriptChatItemRules *)self _chatItemsWithReplyCountsForNewChatItems:_newChatItems parentItem:v382];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v373 = 0;
  }

  else
  {
    v373 = v95;

    v95 = 0;
  }

  v371 = [(IMTranscriptChatItemRules *)self _filteredChatItemsForNewChatItems:v95];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (theArray)
    {
      v96 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
      v97 = v96 == 0;

      if (!v97)
      {
        valuea = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
        CFArrayAppendValue(theArray, valuea);
      }
    }

    goto LABEL_369;
  }

  _hasMessageChatItem = [v382 _hasMessageChatItem];
  v98 = objc_loadWeakRetained(&self->_chat);
  if ([v98 isMapKitBusinessChat])
  {
    v99 = objc_loadWeakRetained(&self->_chat);
    isStewieSharingChat = [v99 isStewieSharingChat];

    if (!isStewieSharingChat)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v101 = objc_loadWeakRetained(&self->_chat);
  lastObject2 = [v378 lastObject];
  v103 = [(IMTranscriptChatItemRules *)self _shouldAppendServiceForChat:v101 item:v382 previousItem:lastObject2 chatStyle:chatStyle];

  if (v103)
  {
    v104 = objc_loadWeakRetained(&self->_chat);
    participants = [v104 participants];
    firstObject = [participants firstObject];

    v107 = [IMServiceChatItem alloc];
    _service = [v382 _service];
    v109 = [(IMServiceChatItem *)v107 _initWithItem:v382 service:_service handle:firstObject];

    _service2 = [v382 _service];
    v111 = +[IMService satelliteSMSService];
    v112 = _service2 == v111;

    if (v112)
    {
      v113 = objc_loadWeakRetained(&self->_chat);
      [v109 setLiteServiceCapable:{objc_msgSend(v113, "isRecipientAbleToDowngradeToSMS")}];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

    if (isTranscriptSharingEnabled)
    {
      v116 = objc_loadWeakRetained(&self->_chat);
      [v109 setStewieSharingChat:{objc_msgSend(v116, "isStewieSharingChat")}];
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRCSEncryptionEnabled = [mEMORY[0x1E69A8070]2 isRCSEncryptionEnabled];

    if (isRCSEncryptionEnabled)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        encrypted = [v382 encrypted];
      }

      else
      {
        encrypted = 0;
      }

      [v109 setEncrypted:encrypted];
    }

    if (theArray)
    {
      v120 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v109];
      v121 = v120 == 0;

      if (!v121)
      {
        v122 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v109];
        CFArrayAppendValue(theArray, v122);
      }
    }
  }

LABEL_115:
  value = [v382 time];
  if (value)
  {
    lastObject3 = [v378 lastObject];
    v124 = [(IMTranscriptChatItemRules *)self _shouldAppendScheduledSectionDateForItem:v382 previousItem:lastObject3];

    if (v124)
    {
      v125 = [[IMScheduledSectionDateChatItem alloc] initWithItem:v382];
      lastObject4 = [v378 lastObject];
      v127 = [(IMTranscriptChatItemRules *)self _shouldAppendScheduledSectionLabelForItem:v125 previousItem:lastObject4];

      if (v127)
      {
        v128 = [[IMScheduledSectionLabelChatItem alloc] initWithAssociatedDateChatItem:v125];
        if (theArray)
        {
          v129 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v128];
          v130 = v129 == 0;

          if (!v130)
          {
            v131 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v128];
            CFArrayAppendValue(theArray, v131);
          }
        }
      }

      if (!theArray)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (!v94)
      {
        goto LABEL_130;
      }

      lastObject5 = [v378 lastObject];
      v133 = [(IMTranscriptChatItemRules *)self _shouldAppendDateForItem:v382 previousItem:lastObject5];

      if (!v133)
      {
        goto LABEL_130;
      }

      v125 = [[IMDateChatItem alloc] _initWithItem:v382];
      if (!theArray)
      {
        goto LABEL_129;
      }
    }

    v134 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v125];
    v135 = v134 == 0;

    if (!v135)
    {
      v136 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v125];
      CFArrayAppendValue(theArray, v136);
    }

LABEL_129:
  }

LABEL_130:
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled2 = [mEMORY[0x1E69A8070]3 isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled2)
  {
    chat = [(IMTranscriptChatItemRules *)self chat];
    lastObject6 = [v378 lastObject];
    v141 = [(IMTranscriptChatItemRules *)self _shouldAppendStewieSharingSummaryForChat:chat item:v382 previousItem:lastObject6];

    if (v141)
    {
      v142 = [IMStewieSharingSummaryChatItem alloc];
      v143 = objc_loadWeakRetained(&self->_chat);
      emergencyUserHandle = [v143 emergencyUserHandle];
      v145 = objc_loadWeakRetained(&self->_chat);
      v146 = [(IMStewieSharingSummaryChatItem *)v142 _initWithItem:v382 emergencyUserHandle:emergencyUserHandle chat:v145];

      if (theArray)
      {
        v147 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v146];
        v148 = v147 == 0;

        if (!v148)
        {
          v149 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v146];
          CFArrayAppendValue(theArray, v149);
        }
      }
    }

    chat2 = [(IMTranscriptChatItemRules *)self chat];
    lastObject7 = [v378 lastObject];
    v152 = [(IMTranscriptChatItemRules *)self _shouldAppendStoppedSharingForChat:chat2 item:v382 previousItem:lastObject7];

    if (v152)
    {
      v153 = [IMStewieStoppedSharingChatItem alloc];
      v154 = objc_loadWeakRetained(&self->_chat);
      emergencyUserHandle2 = [v154 emergencyUserHandle];
      v156 = objc_loadWeakRetained(&self->_chat);
      v157 = [(IMStewieStoppedSharingChatItem *)v153 _initWithItem:v382 emergencyUserHandle:emergencyUserHandle2 chat:v156];

      if (theArray)
      {
        v158 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v157];
        v159 = v158 == 0;

        if (!v159)
        {
          v160 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v157];
          CFArrayAppendValue(theArray, v160);
        }
      }

      v161 = theArray;

      v162 = theArray;
      goto LABEL_376;
    }
  }

  if ((_hasMessageChatItem & 1) == 0)
  {
    if (v371)
    {
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v163 = v371;
      v164 = [v163 countByEnumeratingWithState:&v407 objects:v421 count:16];
      if (v164)
      {
        v165 = *v408;
        do
        {
          for (i = 0; i != v164; ++i)
          {
            if (*v408 != v165)
            {
              objc_enumerationMutation(v163);
            }

            if (theArray)
            {
              v167 = *(*(&v407 + 1) + 8 * i);
              v168 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v167];
              v169 = v168 == 0;

              if (!v169)
              {
                v170 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v167];
                CFArrayAppendValue(theArray, v170);
              }
            }
          }

          v164 = [v163 countByEnumeratingWithState:&v407 objects:v421 count:16];
        }

        while (v164);
      }

      goto LABEL_157;
    }

    if (theArray)
    {
      v171 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
      v172 = v171 == 0;

      if (!v172)
      {
        v163 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
        CFArrayAppendValue(theArray, v163);
LABEL_157:
      }
    }
  }

  lastObject8 = [v378 lastObject];
  v174 = [(IMTranscriptChatItemRules *)self _shouldAppendReplyContextForItem:v382 previousItem:lastObject8 chatStyle:chatStyle];

  if (v174)
  {
    objb = v382;
    threadIdentifier = [objb threadIdentifier];
    threadOriginator = [objb threadOriginator];
    if (threadOriginator)
    {
      OriginatorRange = IMMessageThreadIdentifierGetOriginatorRange();
      v177 = v176;
      OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart();
      _items3 = [(IMTranscriptChatItemRules *)self _items];
      v178 = objc_opt_new();
      v179 = objc_loadWeakRetained(&self->_chat);
      v361 = sub_1A836B1CC(v179, _items3);

      v358 = [threadOriginator _newChatItemsWithChatContext:v361];
      if (v358)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v180 = v358;
        }

        else
        {
          v420 = v358;
          v180 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v420 count:1];
        }

        v405 = 0u;
        v406 = 0u;
        v403 = 0u;
        v404 = 0u;
        v186 = v180;
        v187 = [v186 countByEnumeratingWithState:&v403 objects:v419 count:16];
        if (v187)
        {
          v188 = *v404;
          do
          {
            for (j = 0; j != v187; ++j)
            {
              if (*v404 != v188)
              {
                objc_enumerationMutation(v186);
              }

              v190 = *(*(&v403 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v191 = v190;
                if ([v191 messagePartRange] == OriginatorRange && v192 == v177)
                {
                  [v178 addObject:v191];
                }

                else
                {
                  aggregateAttachmentParts = [v191 aggregateAttachmentParts];
                  [v178 addObjectsFromArray:aggregateAttachmentParts];
                }
              }

              else
              {
                [v178 addObject:v190];
              }
            }

            v187 = [v186 countByEnumeratingWithState:&v403 objects:v419 count:16];
          }

          while (v187);
        }
      }

      v401 = 0u;
      v402 = 0u;
      v399 = 0u;
      v400 = 0u;
      v184 = v178;
      v195 = [v184 countByEnumeratingWithState:&v399 objects:v418 count:16];
      if (!v195)
      {
        goto LABEL_218;
      }

      v196 = *v400;
LABEL_193:
      v197 = 0;
      while (1)
      {
        if (*v400 != v196)
        {
          objc_enumerationMutation(v184);
        }

        v198 = *(*(&v399 + 1) + 8 * v197);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v201 = v198;
          isFromMe = [v201 isFromMe];
          if ([v201 partIndex] == OriginatorMessagePart)
          {
            goto LABEL_202;
          }

LABEL_203:
          isFromMe = 0;
LABEL_204:

          if (isFromMe)
          {
            if (theArray)
            {
              CFArrayAppendValue(theArray, isFromMe);
            }

            if ([(IMTranscriptChatItemRules *)self _shouldAppendReplyCountIfNeeded])
            {
              guid4 = [objb guid];
              v205 = -[IMTranscriptChatItemRules _replyCountChatItemForChatItem:parentItem:threadIdentifier:replyMessageGUID:replyIsFromMe:threadOriginatorMessageItem:](self, "_replyCountChatItemForChatItem:parentItem:threadIdentifier:replyMessageGUID:replyIsFromMe:threadOriginatorMessageItem:", isFromMe, objb, threadIdentifier, guid4, [objb isFromMe], threadOriginator);

              if (v205)
              {
                v206 = theArray != 0;
              }

              else
              {
                v206 = 0;
              }

              if (v206)
              {
                CFArrayAppendValue(theArray, v205);
              }
            }

            goto LABEL_218;
          }
        }

        if (v195 == ++v197)
        {
          v195 = [v184 countByEnumeratingWithState:&v399 objects:v418 count:16];
          if (v195)
          {
            goto LABEL_193;
          }

LABEL_218:

LABEL_219:
          goto LABEL_220;
        }
      }

      v199 = v198;
      if ([v199 index] != OriginatorMessagePart)
      {
        goto LABEL_203;
      }

      isFromMe = [v199 replyContextPreviewChatItemForReply:objb chatContext:v361];
      if (!isFromMe)
      {
LABEL_202:
        v202 = [IMReplyContextDeletedMessageChatItem alloc];
        guid5 = [objb guid];
        isFromMe = -[IMReplyContextDeletedMessageChatItem _initWithReplyItem:threadIdentifier:replyMessageGUID:replyIsFromMe:deletedMessageIsFromMe:](v202, "_initWithReplyItem:threadIdentifier:replyMessageGUID:replyIsFromMe:deletedMessageIsFromMe:", objb, threadIdentifier, guid5, [objb isFromMe], isFromMe);
      }

      goto LABEL_204;
    }

    v181 = [IMReplyContextDeletedMessageChatItem alloc];
    guid6 = [objb guid];
    _items3 = -[IMReplyContextDeletedMessageChatItem _initWithReplyItem:threadIdentifier:replyMessageGUID:replyIsFromMe:deletedMessageIsFromMe:](v181, "_initWithReplyItem:threadIdentifier:replyMessageGUID:replyIsFromMe:deletedMessageIsFromMe:", objb, threadIdentifier, guid6, [objb isFromMe], 0);

    if (theArray && _items3)
    {
      CFArrayAppendValue(theArray, _items3);
    }

    if ([(IMTranscriptChatItemRules *)self _shouldAppendReplyCountIfNeeded])
    {
      guid7 = [objb guid];
      v184 = -[IMTranscriptChatItemRules _replyCountChatItemForChatItem:parentItem:threadIdentifier:replyMessageGUID:replyIsFromMe:threadOriginatorMessageItem:](self, "_replyCountChatItemForChatItem:parentItem:threadIdentifier:replyMessageGUID:replyIsFromMe:threadOriginatorMessageItem:", _items3, objb, threadIdentifier, guid7, [objb isFromMe], 0);

      if (v184)
      {
        v185 = theArray != 0;
      }

      else
      {
        v185 = 0;
      }

      if (v185)
      {
        CFArrayAppendValue(theArray, v184);
      }

      goto LABEL_219;
    }

LABEL_220:
  }

  lastObject9 = [v378 lastObject];
  lastObject10 = [(NSMutableArray *)self->_chatItems lastObject];
  v398 = 0;
  v209 = [(IMTranscriptChatItemRules *)self _shouldAppendNumberChangedForItem:v382 previousItem:lastObject9 lastChatItem:lastObject10 outPhoneNumber:&v398];
  objc = v398;

  if (v209)
  {
    if ([objc length])
    {
      v210 = [[IMNumberChangedChatItem alloc] _initWithItem:v382 senderHandle:objc];
      if (theArray)
      {
        v211 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v210];
        v212 = v211 == 0;

        if (!v212)
        {
          v213 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v210];
          CFArrayAppendValue(theArray, v213);
        }
      }
    }

    else
    {
      v210 = IMLogHandleForCategory();
      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2250(v210);
      }
    }
  }

  v214 = objc_loadWeakRetained(&self->_chat);
  lastObject11 = [v378 lastObject];
  v216 = sub_1A836B364(v214, v382, lastObject11, chatStyle);

  if (v216)
  {
    if ([v382 isReply])
    {
      originalUnformattedID = v382;
      v218 = [IMReplySenderChatItem alloc];
      _senderHandle = [originalUnformattedID _senderHandle];
      threadIdentifier2 = [originalUnformattedID threadIdentifier];
      v221 = [(IMReplySenderChatItem *)v218 _initWithItem:originalUnformattedID handle:_senderHandle threadIdentifier:threadIdentifier2];

      if (!theArray)
      {
        goto LABEL_251;
      }

      v222 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v221];
      v223 = v222 == 0;

      if (v223)
      {
        goto LABEL_251;
      }

      goto LABEL_233;
    }

    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070]4 isMergeBusinessSenderIndiaEnabled])
    {
      v226 = objc_loadWeakRetained(&self->_chat);
      if ([v226 isMergedBusinessThread])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          originalUnformattedID = [v382 originalUnformattedID];
          v228 = [IMSenderChatItem alloc];
          _senderHandle2 = [v382 _senderHandle];
          v230 = objc_loadWeakRetained(&self->_chat);
          v221 = -[IMSenderChatItem _initWithItem:handle:displayName:mergedBusinessThread:](v228, "_initWithItem:handle:displayName:mergedBusinessThread:", v382, _senderHandle2, originalUnformattedID, [v230 isMergedBusinessThread]);

          if (!theArray)
          {
            goto LABEL_251;
          }

          v231 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v221];
          v232 = v231 == 0;

          if (v232)
          {
            goto LABEL_251;
          }

LABEL_233:
          v224 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v221];
          CFArrayAppendValue(theArray, v224);

          goto LABEL_251;
        }

LABEL_242:
        v233 = objc_loadWeakRetained(&self->_chat);
        isStewieSharingChat2 = [v233 isStewieSharingChat];

        if (isStewieSharingChat2)
        {
          _senderHandle3 = [v382 _senderHandle];
          v236 = objc_loadWeakRetained(&self->_chat);
          _senderHandle5 = [_senderHandle3 displayNameForChat:v236];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            transcriptSharingMessageType = [v382 transcriptSharingMessageType];
          }

          else
          {
            transcriptSharingMessageType = 1;
          }

          v240 = [IMSenderChatItem alloc];
          _senderHandle4 = [v382 _senderHandle];
          originalUnformattedID = [(IMSenderChatItem *)v240 _initWithItem:v382 handle:_senderHandle4 displayName:_senderHandle5 transcriptSharingMessageType:transcriptSharingMessageType];
        }

        else
        {
          v239 = [IMSenderChatItem alloc];
          _senderHandle5 = [v382 _senderHandle];
          originalUnformattedID = [(IMSenderChatItem *)v239 _initWithItem:v382 handle:_senderHandle5];
        }

        if (!theArray)
        {
          goto LABEL_252;
        }

        v242 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:originalUnformattedID];
        v243 = v242 == 0;

        if (v243)
        {
          goto LABEL_252;
        }

        v221 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:originalUnformattedID];
        CFArrayAppendValue(theArray, v221);
LABEL_251:

LABEL_252:
        goto LABEL_253;
      }
    }

    goto LABEL_242;
  }

LABEL_253:
  if (!_hasMessageChatItem)
  {
    goto LABEL_368;
  }

  if (v371)
  {
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v244 = v371;
    v245 = [v244 countByEnumeratingWithState:&v394 objects:v417 count:16];
    if (v245)
    {
      v246 = *v395;
      do
      {
        for (k = 0; k != v245; ++k)
        {
          if (*v395 != v246)
          {
            objc_enumerationMutation(v244);
          }

          v248 = *(*(&v394 + 1) + 8 * k);
          v249 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v248];
          lastObject12 = [(__CFArray *)theArray lastObject];
          objc_opt_class();
          v251 = objc_opt_isKindOfClass();

          objc_opt_class();
          if (v251 & objc_opt_isKindOfClass())
          {
            [(__CFArray *)theArray insertObject:v248 atIndex:[(__CFArray *)theArray count]- 1];
          }

          else if (theArray && v249)
          {
            CFArrayAppendValue(theArray, v249);
          }
        }

        v245 = [v244 countByEnumeratingWithState:&v394 objects:v417 count:16];
      }

      while (v245);
    }

    goto LABEL_271;
  }

  if (theArray)
  {
    v252 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
    v253 = v252 == 0;

    if (!v253)
    {
      v244 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v373];
      CFArrayAppendValue(theArray, v244);
LABEL_271:
    }
  }

  objc_opt_class();
  v254 = objc_opt_isKindOfClass();
  if (sub_1A836B760(v382) || (v254 & 1) == 0)
  {
    goto LABEL_368;
  }

  v383 = v382;
  expireState = [v383 expireState];
  if (expireState == 1)
  {
    if (([v383 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v255 >= 3.0))
    {
      v256 = 3;
    }

    else
    {
      v256 = 2;
    }

    v367 = v256;
  }

  else
  {
    v367 = 0;
  }

  if ([v383 isFromMe])
  {
    if ([v383 errorCode])
    {
      if ([v383 errorCode] == 43)
      {
        v257 = 17;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v287 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v287, OS_LOG_TYPE_INFO))
          {
            errorCode = [v383 errorCode];
            *buf = 67109378;
            *v425 = errorCode;
            *&v425[4] = 2112;
            *&v425[6] = v383;
            _os_log_impl(&dword_1A823F000, v287, OS_LOG_TYPE_INFO, "Generating not delivered status item with error code %d for message %@", buf, 0x12u);
          }
        }

        v257 = 10;
      }
    }

    else if ([v383 wasDowngraded] && objc_msgSend(v383, "_canShowDowngradeBreadcrumb"))
    {
      v392 = 0u;
      v393 = 0u;
      v390 = 0u;
      v391 = 0u;
      v277 = objc_loadWeakRetained(&self->_chat);
      participants2 = [v277 participants];

      v279 = [participants2 countByEnumeratingWithState:&v390 objects:v416 count:16];
      if (v279)
      {
        v280 = *v391;
        v281 = 9;
LABEL_295:
        v282 = 0;
        while (1)
        {
          if (*v391 != v280)
          {
            objc_enumerationMutation(participants2);
          }

          v283 = [*(*(&v390 + 1) + 8 * v282) ID];
          _appearsToBeEmail = [v283 _appearsToBeEmail];

          if (_appearsToBeEmail)
          {
            break;
          }

          if (v279 == ++v282)
          {
            v279 = [participants2 countByEnumeratingWithState:&v390 objects:v416 count:16];
            if (v279)
            {
              goto LABEL_295;
            }

            goto LABEL_301;
          }
        }
      }

      else
      {
LABEL_301:
        v281 = 7;
      }

      originalServiceName = [v383 originalServiceName];
      v286 = [originalServiceName isEqualToString:*MEMORY[0x1E69A7AD8]];

      if (v286)
      {
        v257 = 8;
      }

      else
      {
        v257 = v281;
      }
    }

    else
    {
      if (![(IMTranscriptChatItemRules *)self _shouldShowHQButtonForMessage:v383])
      {
        v291 = 0;
LABEL_313:
        chat3 = [(IMTranscriptChatItemRules *)self chat];
        lastObject13 = [v378 lastObject];
        v294 = [(IMTranscriptChatItemRules *)self _shouldAppendSendViaSatelliteForChat:chat3 item:v383 previousItem:lastObject13];

        if (v294)
        {
          v295 = [IMMessageStatusChatItem alloc];
          time7 = [v383 time];
          v379 = [(IMMessageStatusChatItem *)v295 _initWithItem:v383 statusType:34 time:time7 count:0 expireStatusType:v367 statusItemSequenceNumber:0];

          v297 = objc_loadWeakRetained(&self->_chat);
          participants3 = [v297 participants];
          firstObject2 = [participants3 firstObject];
          _displayNameWithAbbreviation = [firstObject2 _displayNameWithAbbreviation];
          [v379 setRecipientDisplayName:_displayNameWithAbbreviation];
        }

        else
        {
          v379 = v291;
        }

        goto LABEL_316;
      }

      v257 = 11;
    }

    v289 = [IMMessageStatusChatItem alloc];
    time8 = [v383 time];
    v291 = [(IMMessageStatusChatItem *)v289 _initWithItem:v383 statusType:v257 time:time8 count:0 expireStatusType:v367 statusItemSequenceNumber:0];

    goto LABEL_313;
  }

  v379 = 0;
LABEL_316:
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  syndicationRanges = [v383 syndicationRanges];
  v302 = [syndicationRanges countByEnumeratingWithState:&v386 objects:v415 count:16];
  if (!v302)
  {
    goto LABEL_334;
  }

  v303 = *v387;
  do
  {
    for (m = 0; m != v302; ++m)
    {
      if (*v387 != v303)
      {
        objc_enumerationMutation(syndicationRanges);
      }

      v305 = *(*(&v386 + 1) + 8 * m);
      chat4 = [(IMTranscriptChatItemRules *)self chat];
      isFiltered = [chat4 isFiltered];

      chat5 = [(IMTranscriptChatItemRules *)self chat];
      isFiltered2 = [chat5 isFiltered];

      syndicationStatus = [v305 syndicationStatus];
      if (syndicationStatus == 1)
      {
        v311 = 0;
      }

      else
      {
        if (syndicationStatus != 2)
        {
          v313 = 0;
          goto LABEL_332;
        }

        v311 = 1;
      }

      v312 = [[IMSyndicationStatusChatItem alloc] _initWithItem:v383 withSyndicationStatus:v311 statusItemSequenceNumber:0];
      v313 = v312;
      if (v312)
      {
        if (isFiltered == 2 || isFiltered2 == 1)
        {
          [v312 setIsSpamOrUnknown:1];
        }

        if (theArray)
        {
          CFArrayAppendValue(theArray, v313);
        }
      }

LABEL_332:
    }

    v302 = [syndicationRanges countByEnumeratingWithState:&v386 objects:v415 count:16];
  }

  while (v302);
LABEL_334:

  v314 = v379;
  v315 = expireState != 1;
  if (v379)
  {
    v315 = 1;
  }

  if (!v315)
  {
    v314 = [[IMMessageStatusChatItem alloc] _initWithItem:v383 expireStatusType:v367 count:0 statusItemSequenceNumber:0];
  }

  v316 = v314;
  if (v314)
  {
    if (theArray)
    {
      v317 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v314];
      v318 = v317 == 0;

      if (!v318)
      {
        v319 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v316];
        CFArrayAppendValue(theArray, v319);
      }
    }
  }

  balloonBundleID = [v383 balloonBundleID];
  if (![balloonBundleID length])
  {
    goto LABEL_356;
  }

  v321 = [v383 associatedMessageType] == 3;

  if (!v321)
  {
    v322 = +[IMBalloonPluginManager sharedInstance];
    pluginSessionGUID = [v383 pluginSessionGUID];
    balloonBundleID2 = [v383 balloonBundleID];
    balloonBundleID = [v322 existingDataSourceForMessageGUID:pluginSessionGUID bundleID:balloonBundleID2];

    if ([balloonBundleID wantsStatusItem])
    {
      pluginPayload = [balloonBundleID pluginPayload];
      pluginBundleID = [pluginPayload pluginBundleID];
      v327 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]];

      if (v327)
      {
        v328 = [[IMTranscriptPluginStatusChatItem alloc] _initWithItem:v383 dataSource:balloonBundleID statusItemSequenceNumber:0];
        if (theArray)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v334 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        statusString = [balloonBundleID statusString];
        v328 = [(IMTranscriptPluginBreadcrumbChatItem *)v334 _initWithItem:v383 datasource:balloonBundleID statusText:statusString optionFlags:0];

        if (theArray)
        {
LABEL_353:
          v336 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v328];
          v337 = v336 == 0;

          if (!v337)
          {
            v338 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v328];
            CFArrayAppendValue(theArray, v338);
          }
        }
      }
    }

LABEL_356:
  }

  expressiveSendStyleID = [v383 expressiveSendStyleID];
  v340 = [(IMTranscriptChatItemRules *)self shouldShowExpressiveMessageTextAsText:expressiveSendStyleID];

  if (v340)
  {
    _localizedBackwardsCompatibleExpressiveSendText = [v383 _localizedBackwardsCompatibleExpressiveSendText];
    if (_localizedBackwardsCompatibleExpressiveSendText)
    {
      v342 = [[IMExpressiveSendAsTextChatItem alloc] _initWithItem:v383 text:_localizedBackwardsCompatibleExpressiveSendText];
      if (v342 != 0 && theArray != 0)
      {
        v343 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v342];
        v344 = v343 == 0;

        if (!v344)
        {
          v345 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v342];
          CFArrayAppendValue(theArray, v345);
        }
      }
    }

    goto LABEL_366;
  }

  if ([(IMTranscriptChatItemRules *)self _shouldShowEffectPlayButtonForMessage:v383])
  {
    v346 = [IMMessageEffectControlChatItem alloc];
    expressiveSendStyleID2 = [v383 expressiveSendStyleID];
    _localizedBackwardsCompatibleExpressiveSendText = [(IMMessageEffectControlChatItem *)v346 _initWithItem:v383 effectStyleID:expressiveSendStyleID2 statusItemSequenceNumber:0];

    if (_localizedBackwardsCompatibleExpressiveSendText != 0 && theArray != 0)
    {
      CFArrayAppendValue(theArray, _localizedBackwardsCompatibleExpressiveSendText);
    }

LABEL_366:
  }

LABEL_368:
LABEL_369:

LABEL_370:
  if (![(__CFArray *)theArray count]&& IMOSLoggingEnabled())
  {
    v348 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v348, OS_LOG_TYPE_INFO))
    {
      guid8 = [itemCopy guid];
      *buf = 138412290;
      *v425 = guid8;
      _os_log_impl(&dword_1A823F000, v348, OS_LOG_TYPE_INFO, "Generated no final chat items for item with GUID: %@", buf, 0xCu);
    }
  }

  v162 = theArray;
  v350 = theArray;
LABEL_376:

  return theArray;
}

- (id)_chatItemsWithReplyCountsForNewChatItems:(id)items parentItem:(id)item
{
  v25[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  if (![(IMTranscriptChatItemRules *)self _shouldAppendReplyCountIfNeeded])
  {
    v16 = itemsCopy;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = itemCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9 && ([v9 replyCountsByPart], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1A836BA64;
      v21[3] = &unk_1E7813758;
      v21[4] = self;
      v22 = itemCopy;
      v23 = v10;
      v24 = v13;
      v14 = v13;
      [itemsCopy enumerateObjectsUsingBlock:v21];
      if ([v14 count])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      goto LABEL_17;
    }

    v14 = itemsCopy;
    v18 = [(IMTranscriptChatItemRules *)self _replyCountChatItemForChatItem:v14 parentItem:itemCopy threadOriginatorMessageItem:v10];
    if (v18)
    {
      v19 = v18;
      v25[0] = v14;
      v25[1] = v18;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

LABEL_17:
      goto LABEL_18;
    }

    v17 = v14;
  }

  else
  {
    v17 = itemsCopy;
  }

  v16 = v17;
LABEL_18:

LABEL_19:

  return v16;
}

- (id)_replyCountChatItemForChatItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me threadOriginatorMessageItem:(id)messageItem
{
  meCopy = me;
  itemCopy = item;
  parentItemCopy = parentItem;
  identifierCopy = identifier;
  dCopy = d;
  messageItemCopy = messageItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = itemCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  replyCount = [v19 replyCount];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v22 = 0;
  if (replyCount && (isKindOfClass & 1) == 0)
  {
    if (!identifierCopy)
    {
      identifierCopy = IMCreateThreadIdentifierForMessagePartChatItem(v19);
    }

    v22 = [[IMMessageReplyCountChatItem alloc] _initWithItem:messageItemCopy parentItem:parentItemCopy threadIdentifier:identifierCopy replyMessageGUID:dCopy replyIsFromMe:meCopy count:replyCount statusItemSequenceNumber:0];
  }

  return v22;
}

- (BOOL)_shouldRegenerateChatItemsForItem:(id)item previousItem:(id)previousItem oldPreviousItem:(id)oldPreviousItem
{
  itemCopy = item;
  previousItemCopy = previousItem;
  oldPreviousItemCopy = oldPreviousItem;
  v11 = oldPreviousItemCopy;
  if (previousItemCopy == oldPreviousItemCopy)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    LOBYTE(v12) = 1;
    if (previousItemCopy && oldPreviousItemCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_chat);
      chatStyle = [WeakRetained chatStyle];

      v15 = objc_loadWeakRetained(&self->_chat);
      v16 = [(IMTranscriptChatItemRules *)self _shouldAppendServiceForChat:v15 item:itemCopy previousItem:previousItemCopy chatStyle:chatStyle];
      v17 = objc_loadWeakRetained(&self->_chat);
      v18 = [(IMTranscriptChatItemRules *)self _shouldAppendServiceForChat:v17 item:itemCopy previousItem:v11 chatStyle:chatStyle];

      if (v16 == v18 && (v19 = [(IMTranscriptChatItemRules *)self _shouldAppendDateForItem:itemCopy previousItem:previousItemCopy], v19 == [(IMTranscriptChatItemRules *)self _shouldAppendDateForItem:itemCopy previousItem:v11]) && (v20 = [(IMTranscriptChatItemRules *)self _shouldAppendReplyContextForItem:itemCopy previousItem:previousItemCopy chatStyle:chatStyle], v20 == [(IMTranscriptChatItemRules *)self _shouldAppendReplyContextForItem:itemCopy previousItem:v11 chatStyle:chatStyle]))
      {
        v22 = objc_loadWeakRetained(&self->_chat);
        v23 = sub_1A836B364(v22, itemCopy, previousItemCopy, chatStyle);
        v24 = objc_loadWeakRetained(&self->_chat);
        v12 = v23 ^ sub_1A836B364(v24, itemCopy, v11, chatStyle);
      }

      else
      {
        LOBYTE(v12) = 1;
      }
    }
  }

  return v12;
}

- (BOOL)_hasEarlierMessagesToLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasMoreMessagesToLoad = [WeakRetained hasMoreMessagesToLoad];

  return hasMoreMessagesToLoad;
}

- (BOOL)_hasRecentMessagesToLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasMoreRecentMessagesToLoad = [WeakRetained hasMoreRecentMessagesToLoad];

  return hasMoreRecentMessagesToLoad;
}

- (BOOL)_shouldAppendReplyContextForItem:(id)item previousItem:(id)previousItem chatStyle:(unsigned __int8)style
{
  itemCopy = item;
  previousItemCopy = previousItem;
  v8 = itemCopy;
  v9 = previousItemCopy;
  if ([v8 isReply] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (!_IMScheduledMessageShouldBePinnedToBottom(v8) || _IMScheduledMessageShouldBePinnedToBottom(v9)))
    {
      threadIdentifier = [v8 threadIdentifier];
      v11 = IMMessageThreadIdentifierGetOriginatorGUID();
      message = [v9 message];
      guid = [message guid];
      v14 = [guid isEqualToString:v11];

      if (v14)
      {
        if (sub_1A836B760(v9))
        {
          LOBYTE(OriginatorMessagePart) = 1;
        }

        else
        {
          OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart();
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          text = [message text];
          v21 = [text length];
          v22 = *MEMORY[0x1E69A5FD8];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = sub_1A836C0F8;
          v23[3] = &unk_1E7813780;
          v23[4] = &v24;
          [text enumerateAttribute:v22 inRange:0 options:v21 usingBlock:{2, v23}];
          LOBYTE(OriginatorMessagePart) = v25[3] != OriginatorMessagePart;

          _Block_object_dispose(&v24, 8);
        }

        goto LABEL_19;
      }

      if ([v9 isReply])
      {
        threadIdentifier2 = [v9 threadIdentifier];
        v18 = [threadIdentifier2 isEqualToString:threadIdentifier];

        v19 = sub_1A836B760(v9);
        if (v18 && !v19)
        {
          LOBYTE(OriginatorMessagePart) = 0;
LABEL_19:

          goto LABEL_10;
        }
      }

      else
      {
        sub_1A836B760(v9);
      }

      LODWORD(OriginatorMessagePart) = !sub_1A836B760(v8);
      goto LABEL_19;
    }

    LOBYTE(OriginatorMessagePart) = 1;
  }

  else
  {
    LOBYTE(OriginatorMessagePart) = 0;
  }

LABEL_10:

  return OriginatorMessagePart;
}

- (BOOL)_shouldAppendScheduledSectionLabelForItem:(id)item previousItem:(id)previousItem
{
  previousItemCopy = previousItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = previousItemCopy;
    if ([v5 scheduleType] == 2)
    {
      scheduleState = [v5 scheduleState];
      if (scheduleState <= 5)
      {
        v7 = 9u >> scheduleState;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (BOOL)_shouldAppendScheduledSectionDateForItem:(id)item previousItem:(id)previousItem
{
  itemCopy = item;
  previousItemCopy = previousItem;
  v7 = itemCopy;
  v8 = previousItemCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 changeType] || (objc_msgSend(v7, "_senderHandle"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "ID"), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v7, "_otherHandle"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "ID"), v12 = objc_claimAutoreleasedReturnValue(), v11, LOBYTE(v11) = objc_msgSend(v10, "isEqualToString:", v12), v12, v10, (v11 & 1) == 0))
  {
    v14 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 scheduleType] != 2)
    {
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    scheduleState = [v14 scheduleState];
    v13 = 0;
    if (!scheduleState || scheduleState == 3)
    {
      goto LABEL_16;
    }

    time = [v14 time];
    time2 = [v8 time];
    [time timeIntervalSinceDate:time2];
    v19 = fabs(v18) >= 300.0;

    v20 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 scheduleType] == 2)
    {
      scheduleState2 = [v20 scheduleState];
      if ((scheduleState2 - 4) >= 2)
      {
        v13 = 1;
        if (!scheduleState2 || scheduleState2 == 3)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      scheduleState3 = [v14 scheduleState];
      if (scheduleState3 == [v20 scheduleState])
      {
LABEL_19:
        v13 = v19;
LABEL_21:

        goto LABEL_16;
      }
    }

    v13 = 1;
    goto LABEL_21;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)_shouldAppendStewieSharingSummaryForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  result = [chat isStewieSharingChat];
  if (previousItem)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldAppendStoppedSharingForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  itemCopy = item;
  if ([chat isStewieSharingChat])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldShowReportSpamForChat:(id)chat withItems:(id)items
{
  v5 = MEMORY[0x1E69A8070];
  itemsCopy = items;
  chatCopy = chat;
  sharedFeatureFlags = [v5 sharedFeatureFlags];
  [sharedFeatureFlags isReportJunkEverywhereEnabled];

  LOBYTE(sharedFeatureFlags) = sub_1A836C8D4(chatCopy, itemsCopy);
  return sharedFeatureFlags;
}

- (BOOL)_shouldShowChatDispositionForChat:(id)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldShowIntroductionsButtons = [WeakRetained shouldShowIntroductionsButtons];

  return shouldShowIntroductionsButtons;
}

- (BOOL)_shouldAppendSendViaSatelliteForChat:(id)chat item:(id)item previousItem:(id)previousItem
{
  chatCopy = chat;
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy isPendingSatelliteSend])
  {
    message = [itemCopy message];
    lastPendingSatelliteSendMessage = [chatCopy lastPendingSatelliteSendMessage];
    v10 = message == lastPendingSatelliteSendMessage;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldAppendSentViaSatelliteForChat:(id)chat message:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  _service = [messageCopy _service];
  name = [_service name];
  v9 = [name isEqualToString:*MEMORY[0x1E69A7AF8]];

  if (!v9)
  {
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      v18 = 138412290;
      v19 = guid;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Checking if we should append sent via satellite for message: %@", &v18, 0xCu);
    }
  }

  if (([messageCopy sentOrReceivedOffGrid] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Message was not sent off grid", &v18, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if ([messageCopy isPendingSatelliteSend])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Message is pending", &v18, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  isSent = [messageCopy isSent];
  v16 = IMOSLoggingEnabled();
  if ((isSent & 1) == 0)
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Message is not sent yet", &v18, 2u);
    }

    goto LABEL_15;
  }

  if (v16)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Appending sent via satellite for message", &v18, 2u);
    }
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (BOOL)_shouldShowHQButtonForMessage:(id)message
{
  messageCopy = message;
  v7 = 0;
  if ([messageCopy isFailedHQTransfer])
  {
    if ([messageCopy isDelivered])
    {
      time = [messageCopy time];
      [time timeIntervalSinceNow];
      v6 = fabs(v5);

      if (v6 < 86400.0)
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (BOOL)_shouldShowStewieResumeButtonsForChat:(id)chat
{
  chatCopy = chat;
  if ([chatCopy isStewieEmergencyChat])
  {
    v4 = +[IMChorosMonitor sharedInstance];
    isStewieEmergencyActive = [v4 isStewieEmergencyActive];
  }

  else
  {
    if (![chatCopy isStewieRoadsideChat])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = +[IMChorosMonitor sharedInstance];
    isStewieEmergencyActive = [v4 isStewieRoadsideActive];
  }

  v6 = isStewieEmergencyActive ^ 1;

LABEL_7:
  return v6;
}

- (BOOL)_shouldShowBlockContactForChat:(id)chat withItems:(id)items
{
  chatCopy = chat;
  itemsCopy = items;
  v7 = chatCopy;
  v8 = itemsCopy;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

  if (enablementGroup == 1 && ([v7 allParticipantsBlocked] & 1) == 0)
  {
    v12 = [v8 __imArrayByFilteringWithBlock:&unk_1F1B6F260];
    if ([v12 count] && (objc_msgSend(v7, "chatStyle") != 43 || objc_msgSend(v7, "joinState")))
    {
      if ([v7 hasCommSafetySensitiveMessage] && (objc_msgSend(v7, "isCommSafetySensitiveMessageRecent") & 1) != 0)
      {
        v11 = 1;
LABEL_12:

        goto LABEL_13;
      }

      [v7 shouldBeAllowListed];
    }

    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)_shouldAppendNumberChangedForItem:(id)item previousItem:(id)previousItem lastChatItem:(id)chatItem outPhoneNumber:(id *)number
{
  v49 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  previousItemCopy = previousItem;
  chatItemCopy = chatItem;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  isStewieChat = [WeakRetained isStewieChat];

  if ((isStewieChat & 1) != 0 || ![(IMTranscriptChatItemRules *)self _hasMultipleActiveSubscriptions])
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  destinationCallerID = [previousItemCopy destinationCallerID];
  numberCopy = number;
  if (destinationCallerID)
  {
    v16 = MEMORY[0x1E69A51E8];
    destinationCallerID2 = [itemCopy destinationCallerID];
    destinationCallerID3 = [previousItemCopy destinationCallerID];
    if ([v16 isPhoneNumber:destinationCallerID2 equivalentToExistingPhoneNumber:destinationCallerID3])
    {
      accountID = [itemCopy accountID];
      accountID2 = [previousItemCopy accountID];
      v21 = [accountID isEqualToString:accountID2];
    }

    else
    {
      v21 = 0;
    }

    if ((isKindOfClass & 1) != 0 && (v21 & 1) == 0)
    {
      destinationCallerID4 = [previousItemCopy destinationCallerID];
      [itemCopy setDestinationCallerID:destinationCallerID4];

      accountID3 = [previousItemCopy accountID];
      [itemCopy setAccountID:accountID3];
    }
  }

  v24 = objc_opt_class();
  if (v24 == objc_opt_class())
  {
    goto LABEL_20;
  }

  v25 = objc_opt_class();
  if (!((v25 != objc_opt_class()) | isKindOfClass & 1))
  {
    *numberCopy = [(IMTranscriptChatItemRules *)self _currentChatSubscriptionLabel];
    if (!IMOSLoggingEnabled())
    {
LABEL_31:
      v33 = 1;
      goto LABEL_21;
    }

    destinationCallerID7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(destinationCallerID7, OS_LOG_TYPE_INFO))
    {
      v35 = *numberCopy;
      *buf = 138412290;
      v44 = v35;
      _os_log_impl(&dword_1A823F000, destinationCallerID7, OS_LOG_TYPE_INFO, "Found a SIM switch item with label %@, replacing it with Number Changed item", buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  destinationCallerID5 = [itemCopy destinationCallerID];
  if (!destinationCallerID5)
  {
    goto LABEL_20;
  }

  destinationCallerID6 = [itemCopy destinationCallerID];
  destinationIdIsPhoneNumber = [destinationCallerID6 destinationIdIsPhoneNumber];

  if (!destinationIdIsPhoneNumber)
  {
    goto LABEL_20;
  }

  destinationCallerID7 = [itemCopy destinationCallerID];
  v30 = MEMORY[0x1E69A51E8];
  destinationCallerID8 = [previousItemCopy destinationCallerID];
  LOBYTE(v30) = [v30 isPhoneNumber:destinationCallerID7 equivalentToExistingPhoneNumber:destinationCallerID8];

  destinationCallerID9 = [previousItemCopy destinationCallerID];
  LOBYTE(v30) = (destinationCallerID9 == 0) | v30;

  if ((v30 & 1) == 0)
  {
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
    *numberCopy = [ctSubscriptionInfo __im_labelForPhoneNumber:destinationCallerID7 simID:destinationCallerID7];

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        destinationCallerID10 = [previousItemCopy destinationCallerID];
        v40 = *numberCopy;
        *buf = 138412802;
        v44 = destinationCallerID10;
        v45 = 2112;
        v46 = destinationCallerID7;
        v47 = 2112;
        v48 = v40;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Destination caller ID changed from: %@ to: %@, label: %@", buf, 0x20u);
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  v33 = 0;
LABEL_21:

  return v33;
}

- (BOOL)_hasMultipleActiveSubscriptions
{
  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];

  if (ctSubscriptionInfo)
  {
    __im_onlyHasActiveSlots = [ctSubscriptionInfo __im_onlyHasActiveSlots];
  }

  else
  {
    __im_onlyHasActiveSlots = 0;
  }

  return __im_onlyHasActiveSlots;
}

- (BOOL)_updateAggregateAttachmentMessagePartAssociatedItems:(id)items map:(id)map
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  mapCopy = map;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = itemsCopy;
      obj = [itemsCopy aggregateAttachmentParts];
      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v9)
      {
        v8 = 0;
        goto LABEL_23;
      }

      v10 = v9;
      v8 = 0;
      v11 = *v27;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = sub_1A836DD28(v13, mapCopy);
          if (v14)
          {
            v15 = v14;
            v16 = sub_1A836DFBC(v14);
          }

          else
          {
            v16 = 0;
          }

          visibleAssociatedMessageChatItems = [v13 visibleAssociatedMessageChatItems];
          v18 = [(IMTranscriptChatItemRules *)self _shouldReloadChatItemWithAssociatedChatItems:v16 oldAssociatedChatItems:visibleAssociatedMessageChatItems];

          if (v18)
          {
            if (v16)
            {
              v19 = v13;
              v20 = v16;
              goto LABEL_17;
            }

            visibleAssociatedMessageChatItems2 = [v13 visibleAssociatedMessageChatItems];
            v22 = [visibleAssociatedMessageChatItems2 count];

            if (v22)
            {
              v19 = v13;
              v20 = 0;
LABEL_17:
              [v19 _setVisibleAssociatedMessageChatItems:v20];
            }

            v8 = 1;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (!v10)
        {
LABEL_23:

          itemsCopy = v24;
          goto LABEL_24;
        }
      }
    }
  }

  v8 = 0;
LABEL_24:

  return v8 & 1;
}

- (id)_newDeliveredChatItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = [itemsCopy objectAtIndex:index - 1];
  _item = [v9 _item];
  timeDelivered = [_item timeDelivered];
  time = [_item time];
  v13 = [timeDelivered laterDate:time];

  v14 = _item;
  expireState = [v14 expireState];
  if (expireState == 1)
  {
    if (([v14 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v16 >= 3.0))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [[IMMessageStatusChatItem alloc] _initWithItem:v14 statusType:type time:v13 count:0 expireStatusType:v17 statusItemSequenceNumber:0];
  v19 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v18];
  if (expireState == 1)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL || [itemsCopy count] <= index || !v19)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 134218498;
          indexCopy = index;
          v24 = 2048;
          v25 = [itemsCopy count];
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "_processChatItems couldn't replace Delivered object at index %lu, chatItems count: %lu, item %@", &v22, 0x20u);
        }
      }
    }

    else
    {
      [itemsCopy replaceObjectAtIndex:index withObject:v19];

      v19 = 0;
    }
  }

  return v19;
}

- (id)_newiMessageLiteSentItemWithStatusType:(int64_t)type atIndex:(int64_t)index chatItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = [itemsCopy objectAtIndex:index - 1];
  _item = [v9 _item];
  timeDelivered = [_item timeDelivered];
  time = [_item time];
  v13 = [timeDelivered laterDate:time];

  v14 = _item;
  expireState = [v14 expireState];
  if (expireState == 1)
  {
    if (([v14 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v16 >= 3.0))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [[IMMessageStatusChatItem alloc] _initWithItem:v14 statusType:type time:v13 count:0 expireStatusType:v17 statusItemSequenceNumber:0];
  v19 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v18];
  if (expireState == 1)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL || [itemsCopy count] <= index || !v19)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 134218498;
          indexCopy = index;
          v24 = 2048;
          v25 = [itemsCopy count];
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "_processChatItems couldn't replace Delivered object at index %lu, chatItems count: %lu, item %@", &v22, 0x20u);
        }
      }
    }

    else
    {
      [itemsCopy replaceObjectAtIndex:index withObject:v19];

      v19 = 0;
    }
  }

  return v19;
}

- (id)_updateOrRemoveDeliveredStatusItemMovingFromOldIndex:(int64_t)index chatItems:(id)items
{
  v5 = [items objectAtIndex:index];
  _item = [v5 _item];
  if ([_item expireState] == 1)
  {
    if (([_item isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v7 >= 3.0))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = [[IMMessageStatusChatItem alloc] _initWithItem:_item expireStatusType:v8 count:0 statusItemSequenceNumber:0];
    v9 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v10];
  }

  else
  {

    v9 = 0;
    v10 = _item;
  }

  return v9;
}

- (id)_updateOrRemoveiMessageLiteSentItemMovingFromOldIndex:(int64_t)index chatItems:(id)items
{
  v5 = [items objectAtIndex:index];
  _item = [v5 _item];
  if ([_item expireState] == 1)
  {
    if (([_item isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v7 >= 3.0))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = [[IMMessageStatusChatItem alloc] _initWithItem:_item expireStatusType:v8 count:0 statusItemSequenceNumber:0];
    v9 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v10];
  }

  else
  {

    v9 = 0;
    v10 = _item;
  }

  return v9;
}

- (BOOL)_shouldAdjustNewDeliveredItemIndex:(int64_t)index chatItems:(id)items
{
  itemsCopy = items;
  v6 = itemsCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL || [itemsCopy count] <= index)
  {
    isKindOfClass = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:index - 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectAtIndex:index];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v8;
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (void)_processSuggestedActionResponses:(id)responses
{
  responsesCopy = responses;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259C30;
  v9 = sub_1A825AF44;
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8385318;
  v4[3] = &unk_1E78139A8;
  v4[4] = &v5;
  [responsesCopy enumerateObjectsWithOptions:2 usingBlock:v4];
  [responsesCopy removeObjectsAtIndexes:v6[5]];
  _Block_object_dispose(&v5, 8);
}

- (void)_processRCSEncryptionTestMessages:(id)messages
{
  messagesCopy = messages;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259C30;
  v9 = sub_1A825AF44;
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A83854D8;
  v4[3] = &unk_1E78139A8;
  v4[4] = &v5;
  [messagesCopy enumerateObjectsWithOptions:2 usingBlock:v4];
  [messagesCopy removeObjectsAtIndexes:v6[5]];
  _Block_object_dispose(&v5, 8);
}

- (void)_processChatItemsForBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  [(IMTranscriptChatItemRules *)self _fixBreadcrumbs:breadcrumbsCopy];
  [(IMTranscriptChatItemRules *)self _filterBreadcrumbs:breadcrumbsCopy];
  [(IMTranscriptChatItemRules *)self _handleTemporaryBreadcrumbs:breadcrumbsCopy];
}

- (void)_fixBreadcrumbs:(id)breadcrumbs
{
  v25 = *MEMORY[0x1E69E9840];
  breadcrumbsCopy = breadcrumbs;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_1A8259C30;
  v22[4] = sub_1A825AF44;
  v23 = [MEMORY[0x1E695DFA8] set];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A8259C30;
  v20 = sub_1A825AF44;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A8385890;
  v15[3] = &unk_1E78139D0;
  v15[4] = v22;
  v15[5] = &v16;
  [breadcrumbsCopy enumerateObjectsWithOptions:2 usingBlock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [v17[5] allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        unsignedIntegerValue = [v8 unsignedIntegerValue];
        v10 = [v17[5] objectForKey:v8];
        [breadcrumbsCopy replaceObjectAtIndex:unsignedIntegerValue withObject:v10];
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
}

- (void)_filterBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1A8259C30;
  v15 = sub_1A825AF44;
  v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1A8259C30;
  v9[4] = sub_1A825AF44;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_1A8259C30;
  v7[4] = sub_1A825AF44;
  v8 = [MEMORY[0x1E695DFA8] set];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8385C6C;
  v5[3] = &unk_1E78139F8;
  v5[6] = &v11;
  v5[7] = v9;
  v5[8] = v6;
  v5[4] = self;
  v5[5] = v7;
  [breadcrumbsCopy enumerateObjectsWithOptions:2 usingBlock:v5];
  [breadcrumbsCopy removeObjectsAtIndexes:v12[5]];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);
}

- (void)_handleTemporaryBreadcrumbs:(id)breadcrumbs
{
  breadcrumbsCopy = breadcrumbs;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259C30;
  v9 = sub_1A825AF44;
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8385F80;
  v4[3] = &unk_1E78139A8;
  v4[4] = &v5;
  [breadcrumbsCopy enumerateObjectsWithOptions:2 usingBlock:v4];
  [breadcrumbsCopy removeObjectsAtIndexes:v6[5]];
  _Block_object_dispose(&v5, 8);
}

- (void)_moveCustomAcknowledgementsForBreadcrumbs:(id)breadcrumbs visibleAssociatedMessageMap:(id)map
{
  v55 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v6 = [breadcrumbs __imArrayByFilteringWithBlock:&unk_1F1B6F180];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        dataSource = [v11 dataSource];
        isShowingLatestMessageAsBreadcrumb = [dataSource isShowingLatestMessageAsBreadcrumb];

        if ((isShowingLatestMessageAsBreadcrumb & 1) == 0)
        {
          _item = [v11 _item];
          guid = [_item guid];

          dataSource2 = [v11 dataSource];
          guidOfLastMessageInSession = [dataSource2 guidOfLastMessageInSession];

          if (guidOfLastMessageInSession)
          {
            v18 = guid == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18 && ([guid isEqualToString:guidOfLastMessageInSession] & 1) == 0)
          {
            [dictionary setObject:guidOfLastMessageInSession forKey:guid];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allKeys = [dictionary allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    v34 = *v45;
    do
    {
      v22 = 0;
      v35 = v20;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v44 + 1) + 8 * v22);
        v24 = [mapCopy objectsForKey:{v23, v34}];
        v25 = v24;
        if (v24 && [v24 count])
        {
          [mapCopy removeObjectsForKey:v23];
          v26 = [dictionary objectForKey:v23];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v39 = v25;
          v27 = v25;
          v28 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v41;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v41 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v40 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  _item2 = [v32 _item];
                  [_item2 setAssociatedMessageGUID:v26];
                }

                [mapCopy pushObject:v32 forKey:v26];
              }

              v29 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v29);
          }

          v21 = v34;
          v20 = v35;
          v25 = v39;
        }

        ++v22;
      }

      while (v22 != v20);
      v20 = [allKeys countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v20);
  }
}

- (void)_manageMomentShareAndAggregateItemsForChatItems:(id)items
{
  *(&v93[1] + 4) = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = +[IMPhotoLibraryPersistenceManager sharedInstance];
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  [v5 unregisterPhotoLibraryPersistenceManagerListener:WeakRetained];

  v7 = [itemsCopy count];
  if (v7 >= 1)
  {
    v8 = v7;
    v86 = itemsCopy;
    while (1)
    {
      v9 = [itemsCopy objectAtIndexedSubscript:v8 - 1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = v8 - 1;
      if (v8 == 1 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v12 = [itemsCopy objectAtIndexedSubscript:v8 - 2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [itemsCopy removeObjectAtIndex:v8 - 1];
LABEL_63:

LABEL_64:
      v8 = v11;
      if ((v11 + 1) <= 1)
      {
        goto LABEL_65;
      }
    }

LABEL_7:
    isReplyContextPreview = [v9 isReplyContextPreview];
    isEditedMessageHistory = [v9 isEditedMessageHistory];
    if (isReplyContextPreview & 1) != 0 || (isEditedMessageHistory)
    {
      goto LABEL_64;
    }

    v15 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      message = [v15 message];
      v17 = IMCoreMomentShareURLForMessage(message);
      if (v17 && ([message isSenderUnknown] & 1) == 0)
      {
        absoluteString = [v17 absoluteString];
        v20 = absoluteString;

        v19 = 1;
      }

      else
      {
        absoluteString = 0;
        v19 = 0;
      }
    }

    else
    {
      absoluteString = 0;
      v19 = 0;
    }

    v21 = absoluteString;
    v12 = v21;
    if (!v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        aggregateAttachmentParts = [v15 aggregateAttachmentParts];
        v32 = [aggregateAttachmentParts count];
        v33 = +[IMMessagePartChatItem _attachmentStackAggregationThreshold];

        if (v32 > v33)
        {
          v34 = +[IMPhotoLibraryPersistenceManager sharedInstance];
          v35 = objc_loadWeakRetained(&selfCopy->_chat);
          [v34 registerPhotoLibraryPersistenceManagerListener:v35];

          v90 = 0;
          v91 = 0;
          v89 = 0;
          sub_1A8386E3C(v15, &v91, &v90, &v89);
          sub_1A8386CF4(itemsCopy, v15, v11, v91, v90, v89);
        }
      }

      goto LABEL_63;
    }

    v76 = v21;
    if ([v21 length])
    {
      v22 = objc_loadWeakRetained(&selfCopy->_chat);
      momentShareCache = [v22 momentShareCache];
      v88 = 0;
      v24 = [momentShareCache momentShareForURLString:v12 error:&v88];
      v25 = v88;

      if (v24)
      {
        v79 = v25;
        v26 = objc_loadWeakRetained(&selfCopy->_chat);
        momentSharePresentationCache = [v26 momentSharePresentationCache];
        v28 = [momentSharePresentationCache statusPresentationForMomentShareURLString:v12];

        v29 = 0;
        IsPermanent = 0;
        goto LABEL_29;
      }

      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2294(v92, v25, v93, v36);
      }
    }

    else
    {
      v25 = 0;
    }

    v79 = v25;
    IsPermanent = IMMomentShareCacheErrorIsPermanent(v25);
    v24 = 0;
    v28 = 0;
    v29 = 1;
LABEL_29:
    v37 = v15;
    v38 = v24;
    v39 = v28;
    v40 = v39;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    if (v29)
    {
      if (IsPermanent)
      {
        objc_opt_class();
        v12 = v76;
        if (objc_opt_isKindOfClass())
        {
          sub_1A8386E3C(v37, &v91, &v90, &v89);
          activityTitle = 0;
          expiryDate = 0;
          v73 = 0;
          videosCount = v90;
          numberOfAssetsCopied = v89;
          photosCount = v91;
        }

        else
        {
          numberOfAssetsCopied = 0;
          photosCount = 0;
          videosCount = 0;
          activityTitle = 0;
          expiryDate = 0;
          v73 = 0;
        }

LABEL_38:
        v43 = activityTitle;
        v44 = expiryDate;

        v77 = v40;
        v78 = v38;

        v45 = activityTitle;
        v46 = expiryDate;
        v47 = v86;
        v48 = v37;
        v49 = v45;
        v87 = v46;
        _item = [v48 _item];
        if (v8 >= [v47 count])
        {
          v50 = 0;
          itemsCopy = v86;
          v51 = videosCount;
        }

        else
        {
          v50 = [v47 objectAtIndexedSubscript:v8];
          v51 = videosCount;
          if (v50)
          {
            objc_opt_class();
            itemsCopy = v86;
            if (objc_opt_isKindOfClass())
            {
              if ([v50 wouldBeEqualIfInitializedWithItem:_item activityTitle:v49 expirationDate:v87])
              {
                v52 = photosCount;
                v51 = videosCount;
LABEL_58:

                v85 = v47;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v63 = v48;
                  [v63 setNumberOfMomentShareSavedAssets:numberOfAssetsCopied];
                  [v63 setNumberOfMomentSharePhotos:v52];
                  [v63 setNumberOfMomentShareVideos:v51];
                }

                if (v52 + v51 > +[IMMessagePartChatItem _attachmentStackAggregationThreshold]|| v73)
                {
                  v64 = +[IMPhotoLibraryPersistenceManager sharedInstance];
                  v83 = v49;
                  v65 = v51;
                  v66 = v52;
                  v67 = objc_loadWeakRetained(&selfCopy->_chat);
                  [v64 registerPhotoLibraryPersistenceManagerListener:v67];

                  v68 = v65;
                  v49 = v83;
                  itemsCopy = v86;
                  sub_1A8386CF4(v85, v48, v11, v66, v68, numberOfAssetsCopied);
                }

                goto LABEL_63;
              }

              v72 = [[IMMomentShareStatusChatItem alloc] _initWithItem:_item activityTitle:v49 expirationDate:v87];
              [v47 replaceObjectAtIndex:v8 withObject:?];
              v51 = videosCount;
              goto LABEL_56;
            }
          }

          else
          {
            itemsCopy = v86;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_57:
          v52 = photosCount;
          goto LABEL_58;
        }

        v53 = v48;
        v82 = v47;
        v54 = v53;
        objc_opt_class();
        v72 = v54;
        v55 = _item;
        if ((objc_opt_isKindOfClass() & 1) != 0 && v8 < [v82 count])
        {
          v56 = [v82 objectAtIndexedSubscript:v8];
          objc_opt_class();
          v71 = v56;
          if (objc_opt_isKindOfClass())
          {
            layoutGroupIdentifier = [v56 layoutGroupIdentifier];
            layoutGroupIdentifier2 = [v72 layoutGroupIdentifier];
            v70 = [layoutGroupIdentifier isEqualToString:?];

            v55 = _item;
            if (v70)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          v55 = _item;
        }

LABEL_55:
        v58 = [[IMMomentShareStatusChatItem alloc] _initWithItem:v55 activityTitle:v49 expirationDate:v87];
        v59 = v51;
        v60 = v48;
        v61 = v47;
        v62 = v58;
        [v82 insertObject:v58 atIndex:v8];

        v47 = v61;
        v48 = v60;
        v51 = v59;
LABEL_56:

        itemsCopy = v86;
        goto LABEL_57;
      }

      numberOfAssetsCopied = 0;
      photosCount = 0;
      videosCount = 0;
      activityTitle = 0;
      expiryDate = 0;
    }

    else
    {
      activityTitle = [v39 activityTitle];
      expiryDate = [v38 expiryDate];
      photosCount = [v38 photosCount];
      videosCount = [v38 videosCount];
      numberOfAssetsCopied = [v40 numberOfAssetsCopied];
      if ([v40 type] == 1)
      {
        v73 = [v40 state] == 2;
LABEL_37:
        v12 = v76;
        goto LABEL_38;
      }
    }

    v73 = 0;
    goto LABEL_37;
  }

LABEL_65:
}

- (BOOL)_shouldDisplayAttributionInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:*MEMORY[0x1E69A6FA8]];
  if ([v4 length])
  {
    v5 = *MEMORY[0x1E69A6FB0];
    v6 = [infoCopy objectForKey:*MEMORY[0x1E69A6FB0]];
    if ([v6 length])
    {
      v7 = +[IMBalloonPluginAttributionController sharedInstance];
      v8 = [infoCopy objectForKeyedSubscript:v5];
      v9 = [v7 shouldShowAttributionForBundleID:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_editedStatusItemForEditedMessagePartChatItem:(id)item combiningStatusType:(int64_t)type
{
  itemCopy = item;
  _item = [itemCopy _item];
  isFailedEditMessagePart = [itemCopy isFailedEditMessagePart];
  isFailedRetractMessagePart = [itemCopy isFailedRetractMessagePart];
  isFailedHQTransfer = [_item isFailedHQTransfer];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  guid = [itemCopy guid];
  v13 = [WeakRetained isShowingEditHistoryForChatItemGUID:guid];

  scheduleType = [itemCopy scheduleType];
  if (scheduleType == 2)
  {
    if (((isFailedEditMessagePart | isFailedRetractMessagePart) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    isFailedRetractMessagePart = 0;
  }

  if (type > 0x28)
  {
LABEL_29:
    v21 = 22;
    if (isFailedRetractMessagePart)
    {
      v21 = 36;
    }

    if (v13)
    {
      v21 = 25;
    }

    if (isFailedEditMessagePart)
    {
      v18 = 28;
    }

    else
    {
      v18 = v21;
    }

    v19 = 0;
    goto LABEL_37;
  }

  if (((1 << type) & 0xC3C9000802) != 0)
  {
    v16 = isFailedEditMessagePart | v13;
    v17 = 24;
    if (v13)
    {
      v17 = 27;
    }

    if (isFailedEditMessagePart)
    {
      v18 = 30;
    }

    else
    {
      v18 = v17;
    }

    if (v16 & 1) != 0 || ((isFailedHQTransfer ^ 1))
    {
      goto LABEL_38;
    }

    v19 = 0;
    v18 = 11;
    goto LABEL_37;
  }

  if (((1 << type) & 0x10024800010) == 0)
  {
    if (type == 2)
    {
      v20 = 31;
      if (v13)
      {
        v20 = 32;
      }

      if (isFailedEditMessagePart)
      {
        v18 = 33;
      }

      else
      {
        v18 = v20;
      }

      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (isFailedEditMessagePart)
  {
    v18 = 29;
LABEL_39:
    timeRead = [_item timeRead];
    goto LABEL_40;
  }

  v19 = v13 ^ 1;
  if (v13)
  {
    v18 = 26;
  }

  else
  {
    v18 = 23;
  }

  if (v13)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (v19)
  {
    goto LABEL_39;
  }

LABEL_38:
  timeRead = [_item timeDelivered];
LABEL_40:
  v23 = timeRead;
  time = [_item time];
  v25 = [v23 laterDate:time];

  v26 = _item;
  if ([v26 expireState] == 1)
  {
    if (([v26 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v27 >= 3.0))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = [[IMMessageStatusChatItem alloc] _initWithItem:v26 statusType:v18 time:v25 count:0 expireStatusType:v28 statusItemSequenceNumber:0];
  v15 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v29];

LABEL_47:

  return v15;
}

- (id)_addChoiceStatusItemForPollMessagePartChatItem:(id)item combiningStatusType:(int64_t)type
{
  _item = [item _item];
  v7 = _item;
  if ((type - 1) >= 2)
  {
    if (type == 4)
    {
      timeRead = [_item timeRead];
      v8 = 40;
    }

    else
    {
      timeRead = [_item timeDelivered];
      v8 = 37;
    }
  }

  else
  {
    if (type == 2)
    {
      v8 = 39;
    }

    else
    {
      v8 = 38;
    }

    timeRead = [_item timeDelivered];
  }

  time = [v7 time];
  v11 = [timeRead laterDate:time];

  v12 = v7;
  if ([v12 expireState] == 1)
  {
    if (([v12 isFromMe] & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v13 >= 3.0))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [[IMMessageStatusChatItem alloc] _initWithItem:v12 statusType:v8 time:v11 count:0 expireStatusType:v14 statusItemSequenceNumber:0];
  v16 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v15];

  return v16;
}

- (id)_attributionChatItemForChatItem:(id)item
{
  v86 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  v57 = itemCopy;
  if (objc_opt_isKindOfClass() & 1) == 0 || ([itemCopy isReplyContextPreview] & 1) != 0 || (objc_msgSend(itemCopy, "isEditedMessageHistory"))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v56 = itemCopy;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v60 = +[IMFileTransferCenter sharedInstance];
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

  visibleAssociatedMessageChatItems = [v56 visibleAssociatedMessageChatItems];
  v9 = [visibleAssociatedMessageChatItems count] == 0;

  if (v9)
  {
    v61 = 0;
    v58 = 0;
    goto LABEL_38;
  }

  [v56 _visibleAssociatedChatItemsByFlatteningAggregateChatItems];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v10 = v71 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (!v11)
  {
    v61 = 0;
    v58 = 0;
    goto LABEL_37;
  }

  v61 = 0;
  v58 = 0;
  v12 = *v71;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v71 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v70 + 1) + 8 * i);
      associatedMessageType = [v14 associatedMessageType];
      if (isFeatureEnabled)
      {
        v16 = associatedMessageType;
        if (([v14 isFromMe] & 1) == 0 && (v16 == 2007 || v16 == 1000))
        {
          commSafetyTransferGUID = [v14 commSafetyTransferGUID];
          v18 = [v60 transferForGUID:commSafetyTransferGUID];
          attributionInfo = [v18 attributionInfo];
          if ([v18 commSafetySensitive] == 1)
          {
            v20 = v75 + 3;
            v21 = 8;
            if (*(v75 + 24))
            {
              v21 = 9;
            }

            v79[3] = v21;
LABEL_24:
            *v20 = 1;
          }

          else if ([v18 commSafetySensitive] == 2)
          {
            v79[3] = 11;
            v20 = v75 + 3;
            goto LABEL_24;
          }

          if (v61)
          {
            time = [v14 time];
            v23 = time < v61;
          }

          else
          {
            v23 = 0;
          }

          if ((v75[3] & 1) == 0 && !(v23 | ![(IMTranscriptChatItemRules *)self _shouldDisplayAttributionInfo:attributionInfo]))
          {
            v24 = attributionInfo;

            v79[3] = 4;
            time2 = [v14 time];

            v61 = time2;
            v58 = v24;
          }

          continue;
        }
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v70 objects:v85 count:16];
  }

  while (v11);
LABEL_37:

LABEL_38:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v27 = v79[3];
  if (((v27 == 0) & isFeatureEnabled & isKindOfClass) == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8387F0C;
    aBlock[3] = &unk_1E7813A20;
    v69 = v60;
    v28 = _Block_copy(aBlock);
    v29 = v56;
    text = [v29 text];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_1A8387F18;
    v66[3] = &unk_1E7813A48;
    v67 = isFeatureEnabled;
    v66[4] = &v74;
    v66[5] = &v78;
    [text __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v28 block:v66];

    v27 = v79[3];
  }

  if (!v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v56;
      type = [v31 type];
      v33 = [type containsString:*MEMORY[0x1E69A6A08]];

      if ((v33 & 1) == 0 && !v79[3] && ([v31 isFromMe] & 1) == 0)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        _item = [v31 _item];
        fileTransferGUIDs = [_item fileTransferGUIDs];

        v36 = [fileTransferGUIDs countByEnumeratingWithState:&v62 objects:v84 count:16];
        if (v36)
        {
          v37 = *v63;
          while (2)
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v63 != v37)
              {
                objc_enumerationMutation(fileTransferGUIDs);
              }

              v39 = *(*(&v62 + 1) + 8 * j);
              v40 = +[IMFileTransferCenter sharedInstance];
              v41 = [v40 transferForGUID:v39];
              attributionInfo2 = [v41 attributionInfo];

              if ([(IMTranscriptChatItemRules *)self _shouldDisplayAttributionInfo:attributionInfo2])
              {

                v47 = 1;
                goto LABEL_61;
              }
            }

            v36 = [fileTransferGUIDs countByEnumeratingWithState:&v62 objects:v84 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v56 isFromMe] & 1) == 0)
    {
      v43 = +[IMFileTransferCenter sharedInstance];
      transferGUID = [v56 transferGUID];
      v31 = [v43 transferForGUID:transferGUID];

      fileTransferGUIDs = [v31 attributionInfo];
      if ([(IMTranscriptChatItemRules *)self _shouldDisplayAttributionInfo:fileTransferGUIDs])
      {
        fileTransferGUIDs = fileTransferGUIDs;

        v45 = [fileTransferGUIDs objectForKey:*MEMORY[0x1E69A6FB0]];
        v46 = [v45 containsString:*MEMORY[0x1E69A6A20]];

        v47 = 2;
        if (!v46)
        {
          v47 = 3;
        }

        attributionInfo2 = fileTransferGUIDs;
LABEL_61:
        v79[3] = v47;
        v58 = attributionInfo2;
      }

LABEL_62:

LABEL_63:
    }
  }

  v48 = v79;
  if (!v79[3])
  {
    if ([v56 requiresSiriAttribution])
    {
      v48 = v79;
      v49 = 6;
      goto LABEL_69;
    }

    if ([v56 requiresFaceTimeAttribution])
    {
      v48 = v79;
      v49 = 7;
LABEL_69:
      v48[3] = v49;
    }

    else
    {
      requiresCriticalMessagingAPIAttribution = [v56 requiresCriticalMessagingAPIAttribution];
      v48 = v79;
      if (requiresCriticalMessagingAPIAttribution)
      {
        v79[3] = 10;
        v82 = *MEMORY[0x1E69A6FA8];
        messageItem = [v56 messageItem];
        criticalMessagingAppName = [messageItem criticalMessagingAppName];
        v83 = criticalMessagingAppName;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];

        v48 = v79;
        v58 = v55;
      }
    }
  }

  if (v48[3])
  {
    v50 = [IMMessageAttributionChatItem alloc];
    _item2 = [v56 _item];
    v4 = [(IMMessageAttributionChatItem *)v50 _initWithItem:_item2 attributionInfo:v58 attributionType:v79[3] showsLearnMoreLink:0 statusItemSequenceNumber:0];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

LABEL_5:

  return v4;
}

- (id)_effectControlForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _item = [itemCopy _item];
    expressiveSendStyleID = [_item expressiveSendStyleID];
    if ([(IMTranscriptChatItemRules *)self _shouldShowEffectPlayButtonForMessage:_item])
    {
      v7 = [[IMMessageEffectControlChatItem alloc] _initWithItem:_item effectStyleID:expressiveSendStyleID statusItemSequenceNumber:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processChatItemsForIsShowingEditHistory:(id)history
{
  historyCopy = history;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259C30;
  v18 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259C30;
  v12 = sub_1A825AF44;
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8388220;
  v7[3] = &unk_1E7813A70;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  [historyCopy enumerateObjectsUsingBlock:v7];
  if ([v15[5] count])
  {
    v5 = [v15[5] copy];
    v6 = [v9[5] copy];
    [historyCopy replaceObjectsAtIndexes:v5 withObjects:v6];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

- (void)_processChatItemsForShowTranslationAlternateText:(id)text
{
  textCopy = text;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259C30;
  v18 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259C30;
  v12 = sub_1A825AF44;
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83884FC;
  v7[3] = &unk_1E7813A70;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  [textCopy enumerateObjectsUsingBlock:v7];
  if ([v15[5] count])
  {
    v5 = [v15[5] copy];
    v6 = [v9[5] copy];
    [textCopy replaceObjectsAtIndexes:v5 withObjects:v6];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

- (void)_processChatItemsForEditedStatus:(id)status
{
  statusCopy = status;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1A8259C30;
  v42 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1A8259C30;
  v36 = sub_1A825AF44;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259C30;
  v30 = sub_1A825AF44;
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259C30;
  v24 = sub_1A825AF44;
  array2 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1A83889A8;
  v13 = &unk_1E7813A98;
  v5 = statusCopy;
  v14 = v5;
  selfCopy = self;
  v16 = &v26;
  v17 = &v20;
  v18 = &v38;
  v19 = &v32;
  [v5 enumerateObjectsUsingBlock:&v10];
  if ([v27[5] count])
  {
    v6 = [v27[5] count];
    if (v6 == [v21[5] count])
    {
      [v5 replaceObjectsAtIndexes:v27[5] withObjects:v21[5]];
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1A84E230C();
      }
    }
  }

  if ([v39[5] count])
  {
    v8 = [v39[5] count];
    if (v8 == [v33[5] count])
    {
      [v5 insertObjects:v33[5] atIndexes:v39[5]];
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1A84E2374();
      }
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

- (BOOL)isReadStatusItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && -[IMTranscriptChatItemRules isReadStatusType:](self, "isReadStatusType:", [itemCopy statusType]);

  return v5;
}

- (BOOL)isDeliveredStatusItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && -[IMTranscriptChatItemRules isDeliveredStatusType:](self, "isDeliveredStatusType:", [itemCopy statusType]);

  return v5;
}

- (id)serviceForChatItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] && (objc_msgSend(itemsCopy, "lastObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_item"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "service"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v5, v8))
  {
    WeakRetained = [itemsCopy lastObject];
    _item = [WeakRetained _item];
    service = [_item service];
    service2 = [IMServiceImpl serviceWithInternalName:service];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    _item = [WeakRetained account];
    service2 = [_item service];
  }

  return service2;
}

- (void)_processChatItemsForReplayButton:(id)button
{
  buttonCopy = button;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8259C30;
  v23 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8259C30;
  v17 = sub_1A825AF44;
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83890EC;
  v7[3] = &unk_1E7813AC0;
  v5 = buttonCopy;
  v8 = v5;
  selfCopy = self;
  v10 = &v25;
  v11 = &v13;
  v12 = &v19;
  [v5 enumerateObjectsUsingBlock:v7];
  if (v26[3])
  {
    [v5 removeObjectAtIndex:?];
  }

  v6 = [v20[5] count];
  if (v6 == [v14[5] count] && objc_msgSend(v14[5], "count"))
  {
    [v5 insertObjects:v14[5] atIndexes:v20[5]];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
}

- (void)_processChatItemsForMessageStatusSequenceNumber:(id)number
{
  numberCopy = number;
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8389398;
  v7[3] = &unk_1E7813AE8;
  v8 = v4;
  v9 = numberCopy;
  v5 = numberCopy;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (int64_t)_lastItemIndexExcludingScheduledSection:(id)section
{
  sectionCopy = section;
  lastObject = [sectionCopy lastObject];
  _item = [lastObject _item];

  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && _IMScheduledMessageShouldBePinnedToBottom(_item);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = [sectionCopy count];
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A83895D0;
    v10[3] = &unk_1E78139A8;
    v10[4] = &v11;
    [sectionCopy enumerateObjectsWithOptions:2 usingBlock:v10];
  }

  v7 = v12[3];
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int64_t)_lastItemIndexExcludingWatchReplyOptions:(id)options
{
  v3 = [options count];
  if (v3)
  {
    return v3 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)addChatItem:(id)item toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:(id)items
{
  itemsCopy = items;
  itemCopy = item;
  v7 = [(IMTranscriptChatItemRules *)self _lastItemIndexExcludingScheduledSection:itemsCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [itemsCopy addObject:itemCopy];
  }

  else
  {
    [itemsCopy insertObject:itemCopy atIndex:v7 + 1];
  }
}

- (void)_processChatItemsForKeyTransparencyStatus:(id)status
{
  statusCopy = status;
  v5 = objc_opt_class();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A83898D0;
  v16[3] = &unk_1E7813B10;
  v18 = v5;
  v7 = indexSet;
  v17 = v7;
  [statusCopy enumerateObjectsWithOptions:2 usingBlock:v16];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v15 = 0;
  v9 = [WeakRetained keyTransparencyStatusForAffectedHandles:&v15];
  v10 = v15;

  if (v9 <= 0xB && ((1 << v9) & 0xA60) != 0)
  {
    v11 = [IMKeyTransparencyStatusChangedChatItem alloc];
    v12 = objc_loadWeakRetained(&self->_chat);
    v13 = -[IMKeyTransparencyStatusChangedChatItem _initWithHandles:status:isGroupChat:](v11, "_initWithHandles:status:isGroupChat:", v10, v9, [v12 isGroupChat]);

    v14 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v13];
    if ([v7 count])
    {
      [statusCopy removeObjectsAtIndexes:v7];
    }

    if (v14)
    {
      [(IMTranscriptChatItemRules *)self addChatItem:v14 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:statusCopy];
    }
  }

  else if ([v7 count])
  {
    [statusCopy removeObjectsAtIndexes:v7];
  }
}

- (void)_processChatItemsForExpandedEditedMessageHistory:(id)history
{
  historyCopy = history;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  v6 = objc_opt_class();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A8389BB4;
  v24[3] = &unk_1E7813B10;
  v26 = v6;
  v8 = indexSet;
  v25 = v8;
  [historyCopy enumerateObjectsWithOptions:0 usingBlock:v24];
  [historyCopy removeObjectsAtIndexes:v8];
  if ([WeakRetained isShowingEditHistoryForAnyChatItem])
  {
    v9 = objc_opt_class();
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A8389C10;
    v18[3] = &unk_1E7813B60;
    v22[1] = v9;
    v19 = WeakRetained;
    objc_copyWeak(v22, &location);
    v12 = v10;
    v20 = v12;
    v13 = v11;
    v21 = v13;
    [historyCopy enumerateObjectsWithOptions:0 usingBlock:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A8389E88;
    v15[3] = &unk_1E7813BB0;
    v14 = v13;
    v16 = v14;
    v17 = historyCopy;
    [v12 enumerateObjectsWithOptions:2 usingBlock:v15];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (id)_historyToDisplayForMessageItem:(id)item partIndex:(int64_t)index
{
  v4 = [item historyForMessagePart:index];
  v5 = [v4 mutableCopy];
  if ([v5 count])
  {
    [v5 removeLastObject];
  }

  v6 = [v5 copy];

  return v6;
}

- (void)_processChatItemsForSatelliteAvailabilityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if ((IMGetDomainBoolForKey() & 1) != 0 || (v5 = objc_loadWeakRetained(&self->_chat), v6 = [v5 shouldDisplayOffGridModeStatus], v5, v6))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    chatStyle = [WeakRetained chatStyle];

    if (chatStyle == 45)
    {
      __imLastMessageItem = [indicatorCopy __imLastMessageItem];
      if ([__imLastMessageItem isPendingSatelliteSend])
      {
        v6 = 0;
      }

      else
      {
        service = [__imLastMessageItem service];
        v11 = MEMORY[0x1E69A7AF8];
        if ([service isEqualToString:*MEMORY[0x1E69A7AF8]])
        {
          v6 = 0;
        }

        else
        {
          v12 = objc_loadWeakRetained(&self->_chat);
          account = [v12 account];
          service2 = [account service];
          internalName = [service2 internalName];
          v6 = [internalName isEqualToString:*v11] ^ 1;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v16 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A838A18C;
  v17[3] = &unk_1E7813868;
  v17[4] = self;
  [(IMTranscriptChatItemRules *)self _insertOrMoveChatItemToEndOfChatItems:indicatorCopy chatItemClass:v16 shouldInsert:v6 chatItemCreationBlock:v17];
}

- (void)_processChatItemsForPollAddChoiceButton:(id)button
{
  buttonCopy = button;
  if ((IMIsRunningInMessagesViewService() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chat);
    if (([WeakRetained hasLeftGroup] & 1) == 0)
    {
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_1A8259C30;
      v53 = sub_1A825AF44;
      indexSet = [MEMORY[0x1E696AD50] indexSet];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = sub_1A838A6C0;
      v46[3] = &unk_1E7813BD8;
      v6 = buttonCopy;
      v47 = v6;
      v48 = &v49;
      [v6 enumerateObjectsUsingBlock:v46];
      [v6 removeObjectsAtIndexes:v50[5]];
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = sub_1A8259C30;
      v44 = sub_1A825AF44;
      indexSet2 = [MEMORY[0x1E696AD50] indexSet];
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_1A8259C30;
      v38 = sub_1A825AF44;
      array = [MEMORY[0x1E695DF70] array];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = sub_1A8259C30;
      v32 = sub_1A825AF44;
      indexSet3 = [MEMORY[0x1E696AD50] indexSet];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_1A8259C30;
      v26 = sub_1A825AF44;
      array2 = [MEMORY[0x1E695DF70] array];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = sub_1A838A7EC;
      v15 = &unk_1E7813A98;
      v7 = v6;
      v16 = v7;
      selfCopy = self;
      v18 = &v28;
      v19 = &v22;
      v20 = &v40;
      v21 = &v34;
      [v7 enumerateObjectsUsingBlock:&v12];
      if ([v29[5] count])
      {
        v8 = [v29[5] count];
        if (v8 == [v23[5] count])
        {
          [v7 replaceObjectsAtIndexes:v29[5] withObjects:v23[5]];
        }

        else
        {
          v9 = IMLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            sub_1A84E23DC();
          }
        }
      }

      if ([v41[5] count])
      {
        v10 = [v41[5] count];
        if (v10 == [v35[5] count])
        {
          [v7 insertObjects:v35[5] atIndexes:v41[5]];
        }

        else
        {
          v11 = IMLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            sub_1A84E2444();
          }
        }
      }

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);

      _Block_object_dispose(&v49, 8);
    }
  }
}

- (void)_processChatItemsForSatelliteNoDeliveryStatusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  lastSentMessage = [WeakRetained lastSentMessage];

  v7 = objc_loadWeakRetained(&self->_chat);
  account = [v7 account];
  service = [account service];
  internalName = [service internalName];
  v11 = MEMORY[0x1E69A7AF8];
  v12 = [internalName isEqualToString:*MEMORY[0x1E69A7AF8]];

  v13 = +[IMChorosMonitor sharedInstance];
  LOBYTE(service) = [v13 isSatelliteConnectionActive];

  sentOrReceivedOffGrid = [lastSentMessage sentOrReceivedOffGrid];
  v15 = 0;
  if ((service & 1) == 0 && v12)
  {
    if (([lastSentMessage isDelivered] | sentOrReceivedOffGrid))
    {
      v15 = 0;
    }

    else
    {
      _imMessageItem = [lastSentMessage _imMessageItem];
      service2 = [_imMessageItem service];
      v15 = [service2 isEqualToString:*v11];
    }
  }

  v18 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A838AE18;
  v19[3] = &unk_1E7813868;
  v19[4] = self;
  [(IMTranscriptChatItemRules *)self _insertOrMoveChatItemToEndOfChatItems:indicatorCopy chatItemClass:v18 shouldInsert:v15 chatItemCreationBlock:v19];
}

- (void)_insertOrMoveChatItemToEndOfChatItems:(id)items chatItemClass:(Class)class shouldInsert:(BOOL)insert chatItemCreationBlock:(id)block
{
  insertCopy = insert;
  itemsCopy = items;
  blockCopy = block;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1A838B02C;
  v22 = &unk_1E7813B10;
  classCopy = class;
  v13 = indexSet;
  v23 = v13;
  [itemsCopy enumerateObjectsWithOptions:2 usingBlock:&v19];
  v14 = [v13 count];
  if (insertCopy)
  {
    if (v14)
    {
      v15 = [itemsCopy count] - 1;
      lastIndex = [v13 lastIndex];
      if (v15 == lastIndex)
      {
        goto LABEL_10;
      }

      v17 = [itemsCopy objectAtIndex:lastIndex];
      [itemsCopy removeObjectsAtIndexes:v13];
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = blockCopy[2](blockCopy);
      v17 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v18];

      if (!v17)
      {
        goto LABEL_10;
      }
    }

    [(IMTranscriptChatItemRules *)self addChatItem:v17 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:itemsCopy];

    goto LABEL_10;
  }

  if (v14)
  {
    [itemsCopy removeObjectsAtIndexes:v13];
  }

LABEL_10:
}

- (void)_processChatItemsForUnknownInternationalSender:(id)sender
{
  v46 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (!IMIsInternationalFilteringAccount())
  {
    goto LABEL_49;
  }

  WeakRetained = objc_loadWeakRetained(&self->_chat);
  hasKnownParticipants = [WeakRetained hasKnownParticipants];

  if (!hasKnownParticipants)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    *buf = 0;
    v38 = buf;
    v39 = 0x2020000000;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    _items = [(IMTranscriptChatItemRules *)self _items];
    v8 = [_items __imArrayByFilteringWithBlock:&unk_1F1B6F1A0];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v10)
    {
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            originalUnformattedID = [v14 originalUnformattedID];
            if (originalUnformattedID)
            {
              v16 = [MEMORY[0x1E69A8320] shouldShowInternationalSenderWarningForHandleID:originalUnformattedID];

              if (v16)
              {
                v17 = 1;
                goto LABEL_20;
              }
            }

            else
            {
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v10);
    }

    v17 = 0;
LABEL_20:

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A838B634;
    v30[3] = &unk_1E7813BD8;
    v18 = indexSet;
    v31 = v18;
    v32 = buf;
    [senderCopy enumerateObjectsWithOptions:2 usingBlock:v30];
    v19 = objc_loadWeakRetained(&self->_chat);
    isFiltered = [v19 isFiltered];

    if ((v17 & (isFiltered != 0)) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = @"NO";
          if (isFiltered)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          if (v17)
          {
            v26 = @"YES";
          }

          *v41 = 138412546;
          v42 = v27;
          v43 = 2112;
          v44 = v26;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Not showing unknown international status item. chat.isFiltered=%@ and hasUnknownInternationalParticipant=%@", v41, 0x16u);
        }
      }

      if ([v18 count])
      {
        [senderCopy removeObjectsAtIndexes:v18];
      }

      goto LABEL_48;
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Chat has unknown international participant, inserting status item for unknown international number.", v41, 2u);
      }
    }

    if ([v18 count])
    {
      v22 = *(v38 + 3);
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [senderCopy count];
      }

      lastIndex = [v18 lastIndex];
      if (v22 - 1 == lastIndex)
      {
        v24 = 0;
LABEL_47:

LABEL_48:
        _Block_object_dispose(buf, 8);

        goto LABEL_49;
      }

      v24 = [senderCopy objectAtIndex:lastIndex];
      [senderCopy removeObjectsAtIndexes:v18];
    }

    else
    {
      v24 = [(IMChatItem *)[IMUnknownInternationalSenderChatItem alloc] _initWithItem:0];
    }

    if (v24)
    {
      if (*(v38 + 3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(IMTranscriptChatItemRules *)self addChatItem:v24 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:senderCopy];
      }

      else
      {
        [senderCopy insertObject:v24 atIndex:?];
      }
    }

    goto LABEL_47;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Not showing unknown international status item because chat has known participants.", buf, 2u);
    }
  }

LABEL_49:
}

- (void)_processChatItemsForSMSFallbackStatusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1A8259C30;
  v29 = sub_1A825AF44;
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  account = [WeakRetained account];
  service = [account service];
  internalName = [service internalName];
  v9 = MEMORY[0x1E69A7AE8];
  v10 = [internalName isEqualToString:*MEMORY[0x1E69A7AE8]];
  if (!v10)
  {

    internalName2 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v11 = objc_loadWeakRetained(&self->_chat);
  isGroupChat = [v11 isGroupChat];

  if ((isGroupChat & 1) == 0)
  {
    v13 = objc_opt_class();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A838B9AC;
    v24[3] = &unk_1E7813C20;
    v24[4] = &v25;
    v24[5] = v13;
    [indicatorCopy enumerateObjectsWithOptions:2 usingBlock:v24];
    if (objc_opt_isKindOfClass())
    {
      _item = [v26[5] _item];
      _service = [_item _service];
      name = [_service name];
      v17 = [name isEqualToString:*v9];

      if ((v17 & 1) == 0)
      {
        WeakRetained = [v26[5] _item];
        account = [WeakRetained _service];
        internalName2 = [account internalName];
        goto LABEL_7;
      }
    }
  }

  internalName2 = 0;
  v10 = 0;
LABEL_8:
  v19 = objc_opt_class();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A838BA28;
  v21[3] = &unk_1E7813840;
  v21[4] = self;
  v23 = &v25;
  v20 = internalName2;
  v22 = v20;
  [(IMTranscriptChatItemRules *)self _insertOrMoveChatItemToEndOfChatItems:indicatorCopy chatItemClass:v19 shouldInsert:v10 chatItemCreationBlock:v21];

  _Block_object_dispose(&v25, 8);
}

- (void)_processChatItemsForAutomaticTranslationIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v5 = objc_opt_class();
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_1A8259C30;
  v64 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1A838C17C;
  v59[3] = &unk_1E7813C20;
  v59[4] = &v60;
  v59[5] = v5;
  [indicatorCopy enumerateObjectsWithOptions:2 usingBlock:v59];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldDisplayAutomaticTranslation = [WeakRetained shouldDisplayAutomaticTranslation];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1A8259C30;
  v57 = sub_1A825AF44;
  v58 = 0;
  v8 = objc_loadWeakRetained(&self->_chat);
  incomingTranslationLanguageCode = [v8 incomingTranslationLanguageCode];

  if (shouldDisplayAutomaticTranslation)
  {
    v10 = objc_loadWeakRetained(&self->_chat);
    isAutomaticTranslationEnabled = [v10 isAutomaticTranslationEnabled];

    if ((isAutomaticTranslationEnabled & 1) == 0)
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1A838C1E0;
      v50[3] = &unk_1E7813BD8;
      v51 = incomingTranslationLanguageCode;
      v52 = &v53;
      [indicatorCopy enumerateObjectsWithOptions:2 usingBlock:v50];
    }

    if (v54[5])
    {
      goto LABEL_8;
    }
  }

  else if (v54[5])
  {
    goto LABEL_20;
  }

  v12 = objc_loadWeakRetained(&self->_chat);
  isAutomaticTranslationEnabled2 = [v12 isAutomaticTranslationEnabled];

  if (isAutomaticTranslationEnabled2 & shouldDisplayAutomaticTranslation)
  {
LABEL_8:
    v14 = objc_loadWeakRetained(&self->_chat);
    translationLanguageCode = [v14 translationLanguageCode];

    v16 = objc_loadWeakRetained(&self->_chat);
    userTranslationLanguageCode = [v16 userTranslationLanguageCode];

    chat = [(IMTranscriptChatItemRules *)self chat];
    chat2 = [(IMTranscriptChatItemRules *)self chat];
    translationLanguageCode2 = [chat2 translationLanguageCode];
    v49 = [chat checkTranslationLanguageStatusForLanguageCode:translationLanguageCode2];

    chat3 = [(IMTranscriptChatItemRules *)self chat];
    chat4 = [(IMTranscriptChatItemRules *)self chat];
    userTranslationLanguageCode2 = [chat4 userTranslationLanguageCode];
    v48 = [chat3 checkTranslationLanguageStatusForLanguageCode:userTranslationLanguageCode2];

    chat5 = [(IMTranscriptChatItemRules *)self chat];
    isShowingTranslationText = [chat5 isShowingTranslationText];

    chat6 = [(IMTranscriptChatItemRules *)self chat];
    isShowingTranslationText2 = [chat6 isShowingTranslationText];

    if ([v61[5] count])
    {
      v27 = [indicatorCopy count];
      lastIndex = [v61[5] lastIndex];
      v28 = [indicatorCopy objectAtIndex:?];
      translationLanguageCode3 = [v28 translationLanguageCode];
      userTranslationLanguageCode3 = [v28 userTranslationLanguageCode];
      incomingLanguageCode = [v28 incomingLanguageCode];
      v42 = v27;
      isShowingTranslationText3 = [v28 isShowingTranslationText];
      v31 = 0;
      if (translationLanguageCode3 && translationLanguageCode)
      {
        v31 = [translationLanguageCode3 isEqualToString:translationLanguageCode] ^ 1;
      }

      v43 = translationLanguageCode;
      v32 = 0;
      if (userTranslationLanguageCode3 && userTranslationLanguageCode)
      {
        v32 = [userTranslationLanguageCode3 isEqualToString:userTranslationLanguageCode] ^ 1;
      }

      v40 = userTranslationLanguageCode3;
      v33 = incomingTranslationLanguageCode;
      v34 = 0;
      if (incomingLanguageCode && v33)
      {
        v34 = [incomingLanguageCode isEqualToString:{v33, v40}] ^ 1;
      }

      translationLanguageStatus = [v28 translationLanguageStatus];
      v36 = v31 | v32 | isShowingTranslationText ^ isShowingTranslationText3 | (translationLanguageStatus != v49) | ([v28 userTranslationLanguageStatus] != v48) | v34;
      if (v36)
      {
        v37 = [IMAutomaticTranslationIndicatorChatItem alloc];
        translationLanguageCode = v43;
        incomingTranslationLanguageCode = v33;
        v38 = [(IMAutomaticTranslationIndicatorChatItem *)v37 _initWithTranslationLanguageCode:v43 userLanguageCode:userTranslationLanguageCode incomingLanguageCode:v33 senderHandle:v54[5] isShowingTranslationText:isShowingTranslationText];

        [v38 setTranslationLanguageStatus:v49];
        [v38 setUserTranslationLanguageStatus:v48];
      }

      else
      {
        v38 = v28;
        incomingTranslationLanguageCode = v33;
        translationLanguageCode = v43;
      }

      if (v42 - 1 != lastIndex || (([v61[5] count] < 2) & ~v36) == 0)
      {
        [indicatorCopy removeObjectsAtIndexes:v61[5]];
        [(IMTranscriptChatItemRules *)self addChatItem:v38 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
      }
    }

    else
    {
      v39 = [IMAutomaticTranslationIndicatorChatItem alloc];
      v38 = [(IMAutomaticTranslationIndicatorChatItem *)v39 _initWithTranslationLanguageCode:translationLanguageCode userLanguageCode:userTranslationLanguageCode incomingLanguageCode:incomingTranslationLanguageCode senderHandle:v54[5] isShowingTranslationText:isShowingTranslationText2];
      [v38 setTranslationLanguageStatus:v49];
      [v38 setUserTranslationLanguageStatus:v48];
      translationLanguageCode3 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v38];
      if (translationLanguageCode3)
      {
        [(IMTranscriptChatItemRules *)self addChatItem:translationLanguageCode3 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  if ([v61[5] count])
  {
    [indicatorCopy removeObjectsAtIndexes:v61[5]];
  }

LABEL_30:

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)_processChatItemsForIntroductionsButtons:(id)buttons
{
  buttonsCopy = buttons;
  v5 = objc_opt_class();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259C30;
  v24 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A838C618;
  v19[3] = &unk_1E7813C20;
  v19[4] = &v20;
  v19[5] = v5;
  [buttonsCopy enumerateObjectsWithOptions:2 usingBlock:v19];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldShowIntroductionsButtons = [WeakRetained shouldShowIntroductionsButtons];

  chat = [(IMTranscriptChatItemRules *)self chat];
  if ([chat isFiltered] == 2)
  {
    chat2 = [(IMTranscriptChatItemRules *)self chat];
    allowsJunkConfiguration = [chat2 allowsJunkConfiguration];
  }

  else
  {
    allowsJunkConfiguration = 0;
  }

  v11 = v21[5];
  if (shouldShowIntroductionsButtons)
  {
    if ([v11 count])
    {
      v12 = [buttonsCopy count];
      lastIndex = [v21[5] lastIndex];
      v14 = [buttonsCopy objectAtIndex:lastIndex];
      v15 = allowsJunkConfiguration ^ [v14 chatWantsIntroductionsLabel];
      if ((v15 & 1) == 0)
      {
        v16 = [[IMIntroductionsButtonsChatItem alloc] _initWithChatWantsIntroductionsLabel:allowsJunkConfiguration ^ 1u];

        v14 = v16;
      }

      if (v12 - 1 != lastIndex || ([v21[5] count] < 2 ? (v17 = v15) : (v17 = 0), (v17 & 1) == 0))
      {
        [buttonsCopy removeObjectsAtIndexes:v21[5]];
        [(IMTranscriptChatItemRules *)self addChatItem:v14 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:buttonsCopy];
      }
    }

    else
    {
      v14 = [[IMIntroductionsButtonsChatItem alloc] _initWithChatWantsIntroductionsLabel:allowsJunkConfiguration ^ 1u];
      v18 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v14];
      if (v18)
      {
        [(IMTranscriptChatItemRules *)self addChatItem:v18 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:buttonsCopy];
      }
    }
  }

  else if ([v11 count])
  {
    [buttonsCopy removeObjectsAtIndexes:v21[5]];
  }

  _Block_object_dispose(&v20, 8);
}

- (void)_processChatItemsForUnavailabilityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A838CB1C;
  v33[3] = &unk_1E7813C48;
  v38 = v5;
  v9 = indexSet;
  v34 = v9;
  v35 = &v41;
  v36 = &v47;
  v37 = v45;
  v39 = v6;
  v40 = v7;
  [indicatorCopy enumerateObjectsWithOptions:2 usingBlock:v33];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  shouldDisplayUnavailabilityIndicator = [WeakRetained shouldDisplayUnavailabilityIndicator];

  if (*(v48 + 24) == 1)
  {
    v12 = objc_loadWeakRetained(&self->_chat);
    v13 = [v12 supportsCapabilities:0x200000];

    if (!shouldDisplayUnavailabilityIndicator)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (!shouldDisplayUnavailabilityIndicator)
    {
LABEL_3:
      if ([v9 count])
      {
        [indicatorCopy removeObjectsAtIndexes:v9];
      }

      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if ([v9 count])
  {
    v14 = [indicatorCopy count];
    lastIndex = [v9 lastIndex];
    firstObject = [indicatorCopy objectAtIndex:lastIndex];
    [firstObject setDisplayNotifyAnywayButton:v13];
    if (v14 - 1 != lastIndex || [v9 count] >= 2)
    {
      [indicatorCopy removeObjectsAtIndexes:v9];
      [(IMTranscriptChatItemRules *)self addChatItem:firstObject toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
    }
  }

  else
  {
    v17 = objc_loadWeakRetained(&self->_chat);
    v18 = [v17 participantsWithState:16];
    firstObject = [v18 firstObject];

    v19 = [[IMUnavailabilityIndicatorChatItem alloc] _initWithHandle:firstObject displayNotifyAnywayButton:v13];
    v20 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:v19];
    if (v20)
    {
      [(IMTranscriptChatItemRules *)self addChatItem:v20 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
    }
  }

  if (v13)
  {
LABEL_17:
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = sub_1A838CC4C;
    v30 = &unk_1E7813B10;
    v32 = v6;
    v22 = indexSet2;
    v31 = v22;
    [indicatorCopy enumerateObjectsWithOptions:2 usingBlock:&v27];
    if (!v13)
    {
      if ([v22 count])
      {
        [indicatorCopy removeObjectsAtIndexes:v22];
      }

      goto LABEL_28;
    }

    if ([v22 count])
    {
      v23 = [indicatorCopy count];
      lastIndex2 = [v22 lastIndex];
      if (v23 - 1 == lastIndex2 && [v22 count] < 2)
      {
        goto LABEL_28;
      }

      _init = [indicatorCopy objectAtIndex:lastIndex2];
      [indicatorCopy removeObjectsAtIndexes:v22];
      [(IMTranscriptChatItemRules *)self addChatItem:_init toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
    }

    else
    {
      _init = [[IMNotifyAnywayChatItem alloc] _init];
      v26 = [(IMTranscriptChatItemRules *)self chatItemForIMChatItem:_init];
      if (v26)
      {
        [(IMTranscriptChatItemRules *)self addChatItem:v26 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:indicatorCopy];
      }
    }

LABEL_28:
    goto LABEL_29;
  }

LABEL_16:
  if (*(v42 + 24) == 1)
  {
    goto LABEL_17;
  }

LABEL_29:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);
}

- (void)_processChatItemsForJunkRecoveryItem:(id)item inChat:(id)chat
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  v8 = objc_opt_class();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = sub_1A838CF88;
  v26 = &unk_1E7813B10;
  v28 = v8;
  v10 = indexSet;
  v27 = v10;
  [itemCopy enumerateObjectsWithOptions:2 usingBlock:&v23];
  v11 = chatCopy;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  isFiltered = [v11 isFiltered];
  if (isModernFilteringEnabled)
  {
    if (isFiltered != 2)
    {
      goto LABEL_11;
    }

    allowsJunkConfiguration = [v11 allowsJunkConfiguration];
  }

  else
  {
    if (isFiltered != 2)
    {
      goto LABEL_11;
    }

    allowsJunkConfiguration = IMIsOscarEnabled();
  }

  if ((allowsJunkConfiguration & 1) == 0)
  {
LABEL_11:

    if ([v10 count])
    {
      [itemCopy removeObjectsAtIndexes:v10];
    }

    goto LABEL_13;
  }

  if ([v10 count])
  {
    v16 = [itemCopy count];
    lastIndex = [v10 lastIndex];
    if (v16 - 1 == lastIndex)
    {
      goto LABEL_13;
    }

    v18 = [itemCopy objectAtIndex:lastIndex];
    [itemCopy removeObjectsAtIndexes:v10];
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = [[v8 alloc] _initWithItem:0];
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      earliestCachedMessageDate = [v11 earliestCachedMessageDate];
      guid = [v11 guid];
      *buf = 138412546;
      v30 = earliestCachedMessageDate;
      v31 = 2112;
      v32 = guid;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Inserting JunkRecovery chat item with date %@ for chat %@", buf, 0x16u);
    }
  }

  earliestCachedMessageDate2 = [v11 earliestCachedMessageDate];
  [v18 setEarliestMessageDate:earliestCachedMessageDate2];

  [(IMTranscriptChatItemRules *)self addChatItem:v18 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:itemCopy];
LABEL_13:
}

- (void)_processChatItemsForStewieResumeButtons:(id)buttons inChat:(id)chat
{
  buttonsCopy = buttons;
  chatCopy = chat;
  v8 = objc_opt_class();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1A838D18C;
  v21 = &unk_1E7813B10;
  v23 = v8;
  v10 = indexSet;
  v22 = v10;
  [buttonsCopy enumerateObjectsWithOptions:2 usingBlock:&v18];
  v11 = [(IMTranscriptChatItemRules *)self _shouldShowStewieResumeButtonsForChat:chatCopy, v18, v19, v20, v21];
  v12 = [v10 count];
  if (v11)
  {
    if (v12)
    {
      v13 = [buttonsCopy count] - 1;
      lastIndex = [v10 lastIndex];
      if (v13 == lastIndex)
      {
        goto LABEL_10;
      }

      v15 = [buttonsCopy objectAtIndex:lastIndex];
      [buttonsCopy removeObjectsAtIndexes:v10];
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [IMStewieResumeItem alloc];
      chatIdentifier = [chatCopy chatIdentifier];
      v15 = [(IMStewieResumeItem *)v16 _initWithItem:0 chatIdentifier:chatIdentifier];

      if (!v15)
      {
        goto LABEL_10;
      }
    }

    [(IMTranscriptChatItemRules *)self addChatItem:v15 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:buttonsCopy];

    goto LABEL_10;
  }

  if (v12)
  {
    [buttonsCopy removeObjectsAtIndexes:v10];
  }

LABEL_10:
}

- (void)_processChatItemsForDownloadingPendingMessages:(id)messages
{
  messagesCopy = messages;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  account = [WeakRetained account];
  service = [account service];

  if ([service supportsShowingSatelliteMessageDownloadCount])
  {
    v8 = objc_opt_class();
    v9 = objc_loadWeakRetained(&self->_chat);
    pendingIncomingSatelliteMessageCount = [v9 pendingIncomingSatelliteMessageCount];

    v11 = +[IMChorosMonitor sharedInstance];
    if ([v11 isSatelliteConnectionActive])
    {
      v12 = objc_loadWeakRetained(&self->_chat);
      isDownloadingPendingSatelliteMessages = 0;
      if (([v12 isGroupChat] & 1) == 0 && pendingIncomingSatelliteMessageCount)
      {
        v14 = objc_loadWeakRetained(&self->_chat);
        isDownloadingPendingSatelliteMessages = [v14 isDownloadingPendingSatelliteMessages];
      }
    }

    else
    {
      isDownloadingPendingSatelliteMessages = 0;
    }

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = sub_1A838D440;
    v25 = &unk_1E7813B10;
    v27 = v8;
    v16 = indexSet;
    v26 = v16;
    [messagesCopy enumerateObjectsWithOptions:2 usingBlock:&v22];
    v17 = [v16 count];
    if (!isDownloadingPendingSatelliteMessages)
    {
      if (v17)
      {
        [messagesCopy removeObjectsAtIndexes:v16];
      }

      goto LABEL_17;
    }

    if (v17)
    {
      v18 = [messagesCopy count] - 1;
      lastIndex = [v16 lastIndex];
      if (v18 == lastIndex)
      {
        goto LABEL_17;
      }

      v20 = [messagesCopy objectAtIndex:lastIndex];
      [messagesCopy removeObjectsAtIndexes:v16];
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = [[IMDownloadingPendingMessagesChatItem alloc] _initWithItem:0];
      if (!v20)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    [v20 _setPendingIncomingSatelliteMessageCount:pendingIncomingSatelliteMessageCount];
    v21 = objc_loadWeakRetained(&self->_chat);
    [v20 _setTotalSatelliteMessageCount:{objc_msgSend(v21, "totalSatelliteMessageCount")}];

    [(IMTranscriptChatItemRules *)self addChatItem:v20 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:messagesCopy];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_processChatItemsForSuggestedReplies:(id)replies inChat:(id)chat
{
  v30[1] = *MEMORY[0x1E69E9840];
  repliesCopy = replies;
  chatCopy = chat;
  suggestedRepliesData = [chatCopy suggestedRepliesData];

  if (suggestedRepliesData)
  {
    mEMORY[0x1E69A8280] = [MEMORY[0x1E69A8280] sharedInstance];
    isRBMEnabled = [mEMORY[0x1E69A8280] isRBMEnabled];

    if (isRBMEnabled)
    {
      v11 = MEMORY[0x1E69A7F48];
      suggestedRepliesData2 = [chatCopy suggestedRepliesData];
      v13 = [v11 IMChipListFromSuggestions:suggestedRepliesData2];

      suggestedReplies = [v13 suggestedReplies];
      if ([suggestedReplies count])
      {
        indexSet = [MEMORY[0x1E696AD50] indexSet];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_1A838D76C;
        v24[3] = &unk_1E7811FA8;
        v16 = indexSet;
        v25 = v16;
        [repliesCopy enumerateObjectsWithOptions:2 usingBlock:v24];
        if ([v16 count])
        {
          [repliesCopy removeObjectsAtIndexes:v16];
        }

        suggestedReplies2 = [v13 suggestedReplies];
        v30[0] = suggestedReplies2;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            suggestedReplies3 = [v13 suggestedReplies];
            *buf = 138412546;
            v27 = suggestedReplies3;
            v28 = 2112;
            v29 = chatCopy;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "stage suggested replies: %@, chat: %@", buf, 0x16u);
          }
        }

        v21 = [IMNewComposeSuggestedRepliesMessagePartChatItem alloc];
        messageItem = [v13 messageItem];
        v23 = [(IMSuggestedRepliesMessagePartChatItem *)v21 initWithItem:messageItem suggestedRepliesList:v18 selectedIndex:0];

        [(IMTranscriptChatItemRules *)self addChatItem:v23 toChatItemsAtEndButBeforeWatchReplyOrScheduledSendItems:repliesCopy];
      }
    }
  }
}

- (void)_processChatItemsForAttribution:(id)attribution
{
  v74 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_1A8259C30;
  v68 = sub_1A825AF44;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1A8259C30;
  v62 = sub_1A825AF44;
  array = [MEMORY[0x1E695DF70] array];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1A8259C30;
  v56 = sub_1A825AF44;
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1A838DE8C;
  v49[3] = &unk_1E7813BD8;
  v5 = attributionCopy;
  v50 = v5;
  v51 = &v52;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v49];
  [v5 removeObjectsAtIndexes:v53[5]];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1A838DF64;
  v44[3] = &unk_1E7813C70;
  v6 = v5;
  v45 = v6;
  selfCopy = self;
  v47 = &v58;
  v48 = &v64;
  [v6 enumerateObjectsUsingBlock:v44];
  v7 = [v59[5] count];
  if (v7 == [v65[5] count])
  {
    [v6 insertObjects:v59[5] atIndexes:v65[5]];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v59[5];
      v10 = v65[5];
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Attribution chat items to insert: %@ did not match indices: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = sub_1A8259C30;
  v72 = sub_1A825AF44;
  v73 = [MEMORY[0x1E695DFA8] set];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1A8259C30;
  v42 = sub_1A825AF44;
  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A838E07C;
  v33[3] = &unk_1E7813C98;
  v11 = v6;
  v36 = buf;
  v37 = &v38;
  v34 = v11;
  selfCopy2 = self;
  [v11 enumerateObjectsWithOptions:2 usingBlock:v33];
  [v11 removeObjectsAtIndexes:v39[5]];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1A8259C30;
  v31 = sub_1A825AF44;
  indexSet4 = [MEMORY[0x1E696AD50] indexSet];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A838E414;
  v24[3] = &unk_1E7813BD8;
  v12 = v11;
  v25 = v12;
  v26 = &v27;
  [v12 enumerateObjectsWithOptions:2 usingBlock:v24];
  [v12 removeObjectsAtIndexes:v28[5]];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 1;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = sub_1A838E528;
  v19 = &unk_1E7813CC0;
  v21 = v22;
  v13 = v12;
  v20 = v13;
  [v13 enumerateObjectsWithOptions:2 usingBlock:&v16];
  if ([*(*&buf[8] + 40) count])
  {
    v14 = +[IMBalloonPluginAttributionController sharedInstance];
    allObjects = [*(*&buf[8] + 40) allObjects];
    [v14 didShowAttributionForBundleIDs:allObjects];
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
}

- (BOOL)_shouldReloadChatItemWithAssociatedChatItems:(id)items oldAssociatedChatItems:(id)chatItems
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  chatItemsCopy = chatItems;
  v7 = [chatItemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(chatItemsCopy);
        }

        if ([*(*(&v13 + 1) + 8 * i) fileTransferReloadStatus])
        {

          goto LABEL_15;
        }
      }

      v8 = [chatItemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (itemsCopy == chatItemsCopy)
  {
    goto LABEL_16;
  }

  if (itemsCopy && ![itemsCopy isEqual:chatItemsCopy])
  {
LABEL_15:
    LOBYTE(v11) = 1;
    goto LABEL_17;
  }

  if (!chatItemsCopy)
  {
LABEL_16:
    LOBYTE(v11) = 0;
    goto LABEL_17;
  }

  v11 = [chatItemsCopy isEqual:itemsCopy] ^ 1;
LABEL_17:

  return v11;
}

- (BOOL)_shouldReloadChatItem:(id)item oldChatItem:(id)chatItem
{
  itemCopy = item;
  chatItemCopy = chatItem;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

  if (itemCopy == chatItemCopy)
  {
    goto LABEL_89;
  }

  contiguousType = [itemCopy contiguousType];
  if (contiguousType != [chatItemCopy contiguousType])
  {
    goto LABEL_19;
  }

  attachmentContiguousType = [itemCopy attachmentContiguousType];
  if (attachmentContiguousType != [chatItemCopy attachmentContiguousType])
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusType = [itemCopy statusType];
    if (statusType != [chatItemCopy statusType])
    {
      goto LABEL_19;
    }

    v12 = [itemCopy count];
    if (v12 != [chatItemCopy count])
    {
      goto LABEL_19;
    }

    expireStatusType = [itemCopy expireStatusType];
    if (expireStatusType != [chatItemCopy expireStatusType])
    {
      goto LABEL_19;
    }

    _item = [itemCopy _item];
    message = [_item message];

    _item2 = [chatItemCopy _item];
    message2 = [_item2 message];

    error = [message error];
    code = [error code];
    error2 = [message2 error];
    code2 = [error2 code];

    if (code != code2)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy wasReportedAsSpam])
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = chatItemCopy;
    extensionName = [itemCopy extensionName];
    extensionName2 = [v22 extensionName];

    LODWORD(v22) = [extensionName isEqualToString:extensionName2];
    if (!v22)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [itemCopy supportsCommunicationSafety] && objc_msgSend(chatItemCopy, "fileTransferReloadStatus") == 1)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = chatItemCopy;
    failed = [itemCopy failed];
    failed2 = [v27 failed];

    if (failed != failed2)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = chatItemCopy;
    failed3 = [itemCopy failed];
    failed4 = [v30 failed];

    if (failed3 != failed4)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = chatItemCopy;
    failed5 = [itemCopy failed];
    failed6 = [v33 failed];

    if (failed5 != failed6)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = chatItemCopy;
    selectedIndex = [itemCopy selectedIndex];
    selectedIndex2 = [v36 selectedIndex];

    if (selectedIndex != selectedIndex2)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = itemCopy;
    v40 = chatItemCopy;
    visibleAssociatedMessageChatItems = [v39 visibleAssociatedMessageChatItems];
    visibleAssociatedMessageChatItems2 = [v40 visibleAssociatedMessageChatItems];
    v43 = [(IMTranscriptChatItemRules *)self _shouldReloadChatItemWithAssociatedChatItems:visibleAssociatedMessageChatItems oldAssociatedChatItems:visibleAssociatedMessageChatItems2];

    if (v43 || (v44 = [v40 syndicationType], v44 != objc_msgSend(v39, "syndicationType")) || (objc_msgSend(v40, "scheduleType") == 2 || objc_msgSend(v39, "scheduleType") == 2) && ((v99 = objc_msgSend(v40, "scheduleType"), v97 = objc_msgSend(v39, "scheduleType"), v95 = objc_msgSend(v40, "scheduleState"), v45 = objc_msgSend(v39, "scheduleState"), objc_msgSend(v40, "time"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "time"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v46, "isEqualToDate:", v47), v47, v46, objc_msgSend(v40, "text"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "text"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v49, "isEqualToAttributedString:", v50), v50, v49, v99 != v97) || v95 != v45 || !v51 || !v48))
    {

      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _item3 = [itemCopy _item];
    message3 = [_item3 message];

    _item4 = [chatItemCopy _item];
    message4 = [_item4 message];

    v100 = message3;
    sender = [message3 sender];
    service = [sender service];
    sender2 = [message4 sender];
    service2 = [sender2 service];
    if (service != service2)
    {
LABEL_46:

      goto LABEL_47;
    }

    error3 = [message3 error];
    error4 = [message4 error];
    if ((error3 == 0) == (error4 != 0) || (v61 = [message3 isPlayed], v61 != objc_msgSend(message4, "isPlayed")))
    {

      goto LABEL_46;
    }

    hasDataDetectorResults = [v100 hasDataDetectorResults];
    hasDataDetectorResults2 = [message4 hasDataDetectorResults];

    if (hasDataDetectorResults != hasDataDetectorResults2)
    {
      goto LABEL_48;
    }

    sender = [message4 syndicationRanges];
    syndicationRanges = [v100 syndicationRanges];
    service = syndicationRanges;
    if (sender != syndicationRanges && (!sender || !syndicationRanges || ![sender isEqualToArray:syndicationRanges]))
    {
LABEL_47:

LABEL_48:
      goto LABEL_19;
    }

    hasEditedParts = [v100 hasEditedParts];

    if (hasEditedParts)
    {
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = itemCopy;
      dataSource2 = chatItemCopy;
      isShowingEditHistory = [v65 isShowingEditHistory];
      if (isShowingEditHistory != [dataSource2 isShowingEditHistory])
      {
        goto LABEL_68;
      }

      showTranslationAlternateText = [v65 showTranslationAlternateText];
      if (showTranslationAlternateText != [dataSource2 showTranslationAlternateText])
      {
        goto LABEL_68;
      }

      alternateTranscriptText = [v65 alternateTranscriptText];
      v70 = [alternateTranscriptText length];
      alternateTranscriptText2 = [dataSource2 alternateTranscriptText];
      v72 = [alternateTranscriptText2 length];

      if (v70 != v72)
      {
        goto LABEL_19;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = chatItemCopy;
    richCards = [itemCopy richCards];
    richCards2 = [v73 richCards];

    v25 = [richCards isEqual:richCards2] ^ 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([itemCopy transferGUID], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(chatItemCopy, "transferGUID"), v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v76, "isEqualToString:", v77), v77, v76, v78))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = itemCopy;
      dataSource = [v65 dataSource];
      hasInvalidatedSize = [dataSource hasInvalidatedSize];

      if (hasInvalidatedSize)
      {
        dataSource2 = [v65 dataSource];
        [dataSource2 setHasInvalidatedSize:0];
LABEL_68:

        goto LABEL_19;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      offerState = [itemCopy offerState];
      if (offerState != [chatItemCopy offerState])
      {
        goto LABEL_19;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![itemCopy isEqual:chatItemCopy])
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (![itemCopy isEqual:chatItemCopy])
      {
        goto LABEL_19;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = chatItemCopy;
        isPendingSatelliteSend = [itemCopy isPendingSatelliteSend];
        isPendingSatelliteSend2 = [v82 isPendingSatelliteSend];

        if (isPendingSatelliteSend != isPendingSatelliteSend2)
        {
          goto LABEL_19;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = itemCopy;
        dataSource2 = chatItemCopy;
        isShowingTranslationText = [v65 isShowingTranslationText];
        if (isShowingTranslationText != [dataSource2 isShowingTranslationText])
        {
          goto LABEL_68;
        }

        translationLanguageCode = [v65 translationLanguageCode];
        translationLanguageCode2 = [dataSource2 translationLanguageCode];
        v88 = [translationLanguageCode isEqualToString:translationLanguageCode2];

        if (!v88)
        {
          goto LABEL_68;
        }

        userTranslationLanguageCode = [v65 userTranslationLanguageCode];
        userTranslationLanguageCode2 = [dataSource2 userTranslationLanguageCode];
        v91 = [userTranslationLanguageCode isEqualToString:userTranslationLanguageCode2];

        if (!v91)
        {
          goto LABEL_68;
        }

        translationLanguageStatus = [v65 translationLanguageStatus];
        if (translationLanguageStatus != [dataSource2 translationLanguageStatus])
        {
          goto LABEL_68;
        }

        userTranslationLanguageStatus = [v65 userTranslationLanguageStatus];
        userTranslationLanguageStatus2 = [dataSource2 userTranslationLanguageStatus];

        if (userTranslationLanguageStatus != userTranslationLanguageStatus2)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_89:
    LOBYTE(v25) = 0;
    goto LABEL_20;
  }

LABEL_19:
  LOBYTE(v25) = 1;
LABEL_20:

  return v25;
}

- (BOOL)_shouldReloadSatelliteChatItems:(id)items
{
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  lastUsedSatelliteStatus = [WeakRetained lastUsedSatelliteStatus];
  v7 = +[IMChorosMonitor sharedInstance];
  isSatelliteConnectionActive = [v7 isSatelliteConnectionActive];

  if (lastUsedSatelliteStatus != isSatelliteConnectionActive)
  {
    goto LABEL_4;
  }

  v9 = objc_loadWeakRetained(&self->_chat);
  lastUsedShowTextRoadsideProviderStatus = [v9 lastUsedShowTextRoadsideProviderStatus];
  v11 = +[IMChorosMonitor sharedInstance];
  shouldShowTextRoadsideProviderButton = [v11 shouldShowTextRoadsideProviderButton];

  if (lastUsedShowTextRoadsideProviderStatus != shouldShowTextRoadsideProviderButton)
  {
    goto LABEL_4;
  }

  v13 = objc_loadWeakRetained(&self->_chat);
  lastUsedShowTextEmergencyServicesStatus = [v13 lastUsedShowTextEmergencyServicesStatus];
  v15 = +[IMChorosMonitor sharedInstance];
  shouldShowTextEmergencyServicesButton = [v15 shouldShowTextEmergencyServicesButton];

  if (lastUsedShowTextEmergencyServicesStatus != shouldShowTextEmergencyServicesButton)
  {
    goto LABEL_4;
  }

  lastObject = [itemsCopy lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = objc_loadWeakRetained(&self->_chat);
  account = [v21 account];
  service = [account service];
  v24 = +[IMService iMessageLiteService];
  v25 = v24;
  if (service == v24)
  {

    LOBYTE(v17) = 1;
    goto LABEL_13;
  }

  v26 = objc_loadWeakRetained(&self->_chat);
  account2 = [v26 account];
  service2 = [account2 service];
  v29 = +[IMService satelliteSMSService];

  if (service2 != v29)
  {
LABEL_9:
    v21 = objc_loadWeakRetained(&self->_chat);
    if (![v21 isStewieChat])
    {
      LOBYTE(v17) = 0;
LABEL_14:

      goto LABEL_5;
    }

    account = objc_loadWeakRetained(&self->_chat);
    v30 = [(IMTranscriptChatItemRules *)self _shouldShowStewieResumeButtonsForChat:account];
    v31 = objc_opt_class();
    v17 = v30 ^ sub_1A838F810(v31, itemsCopy, v31);
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  LOBYTE(v17) = 1;
LABEL_5:

  return v17;
}

- (id)_itemWithChatItemsDeleted:(id)deleted fromItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapOfItemsDeleted:(id *)ofItemsDeleted
{
  v30 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  itemCopy = item;
  objc_opt_class();
  v10 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    itemsDeletedCopy = itemsDeleted;
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(deletedCopy, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = deletedCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 addObject:v16];
          }

          else if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v26 = v16;
              v27 = 2112;
              v28 = itemCopy;
              _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Can only delete message parts. Tried to delete %@ from message:%@", buf, 0x16u);
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }

    v10 = [IMMessagePartChatItem _messageItemWithPartsDeleted:v11 fromMessageItem:itemCopy indexesOfItemsDeleted:itemsDeletedCopy indexToRangeMapping:ofItemsDeleted];
  }

  return v10;
}

- (id)_initWithChat:(id)chat
{
  chatCopy = chat;
  v10.receiver = self;
  v10.super_class = IMTranscriptChatItemRules;
  v5 = [(IMTranscriptChatItemRules *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chat, chatCopy);
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    chatItems = v6->_chatItems;
    v6->_chatItems = v7;
  }

  return v6;
}

- (void)_invalidateSpamIndicatorCachedValues
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  [WeakRetained invalidateSpamIndicatorCachedValues];
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

- (id)testChatItems
{
  v59[16] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_chat);
  participants = [WeakRetained participants];

  v4 = [participants objectAtIndex:0];
  v5 = 0;
  if ([participants count] >= 2)
  {
    v5 = [participants objectAtIndex:1];
  }

  v34 = v5;
  v58 = participants;
  v6 = [IMGroupActionChatItem alloc];
  v57 = objc_alloc_init(MEMORY[0x1E69A8098]);
  [v57 setActionType:0];
  v56 = [(IMGroupActionChatItem *)v6 _initWithItem:v57 sender:0];
  v59[0] = v56;
  v7 = [IMGroupActionChatItem alloc];
  v55 = objc_alloc_init(MEMORY[0x1E69A8098]);
  [v55 setActionType:0];
  v54 = [(IMGroupActionChatItem *)v7 _initWithItem:v55 sender:v4];
  v59[1] = v54;
  v8 = [IMGroupTitleChangeChatItem alloc];
  v53 = objc_alloc_init(MEMORY[0x1E69A80A0]);
  [v53 setTitle:@"Vegas Trip"];
  v52 = [(IMGroupTitleChangeChatItem *)v8 _initWithItem:v53 sender:0];
  v59[2] = v52;
  v9 = [IMGroupTitleChangeChatItem alloc];
  v51 = objc_alloc_init(MEMORY[0x1E69A80A0]);
  [v51 setTitle:@"Vegas Trip"];
  v50 = [(IMGroupTitleChangeChatItem *)v9 _initWithItem:v51 sender:v4];
  v59[3] = v50;
  v10 = [IMParticipantChangeChatItem alloc];
  v49 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v49 setChangeType:0];
  v48 = [(IMParticipantChangeChatItem *)v10 _initWithItem:v49 sender:0 otherHandle:v4];
  v59[4] = v48;
  v11 = [IMParticipantChangeChatItem alloc];
  v47 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v47 setChangeType:0];
  v46 = [(IMParticipantChangeChatItem *)v11 _initWithItem:v47 sender:v4 otherHandle:0];
  v59[5] = v46;
  v12 = [IMParticipantChangeChatItem alloc];
  v45 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v45 setChangeType:0];
  v44 = [(IMParticipantChangeChatItem *)v12 _initWithItem:v45 sender:v4 otherHandle:v5];
  v59[6] = v44;
  v13 = [IMParticipantChangeChatItem alloc];
  v43 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v43 setChangeType:1];
  v42 = [(IMParticipantChangeChatItem *)v13 _initWithItem:v43 sender:0 otherHandle:v4];
  v59[7] = v42;
  v14 = [IMParticipantChangeChatItem alloc];
  v41 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v41 setChangeType:1];
  v40 = [(IMParticipantChangeChatItem *)v14 _initWithItem:v41 sender:v4 otherHandle:0];
  v59[8] = v40;
  v15 = [IMParticipantChangeChatItem alloc];
  v39 = objc_alloc_init(MEMORY[0x1E69A81B8]);
  [v39 setChangeType:1];
  v38 = [(IMParticipantChangeChatItem *)v15 _initWithItem:v39 sender:v4 otherHandle:v5];
  v59[9] = v38;
  v16 = [IMLocationShareActionChatItem alloc];
  v37 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  [v37 setStatus:0];
  [v37 setDirection:0];
  v36 = [(IMLocationShareActionChatItem *)v16 _initWithItem:v37 sender:0 otherHandle:v4];
  v59[10] = v36;
  v17 = [IMLocationShareActionChatItem alloc];
  v18 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  [v18 setStatus:1];
  [v18 setDirection:0];
  v35 = [(IMLocationShareActionChatItem *)v17 _initWithItem:v18 sender:0 otherHandle:v4];
  v59[11] = v35;
  v19 = [IMLocationShareActionChatItem alloc];
  v20 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  [v20 setStatus:0];
  [v20 setDirection:1];
  v33 = [(IMLocationShareActionChatItem *)v19 _initWithItem:v20 sender:v4 otherHandle:0];
  v59[12] = v33;
  v21 = [IMLocationShareActionChatItem alloc];
  v22 = objc_alloc_init(MEMORY[0x1E69A80E8]);
  [v22 setStatus:1];
  [v22 setDirection:1];
  v23 = [(IMLocationShareActionChatItem *)v21 _initWithItem:v22 sender:v4 otherHandle:0];
  v59[13] = v23;
  v24 = [IMTranscriptSharingChatItem alloc];
  v25 = objc_alloc_init(MEMORY[0x1E69A8300]);
  v26 = [(IMTranscriptSharingChatItem *)v24 _initWithItem:v25];
  v59[14] = v26;
  v27 = [IMLocationUpdateSentChatItem alloc];
  v28 = objc_alloc_init(MEMORY[0x1E69A80F0]);
  v29 = [v4 ID];
  v30 = [(IMLocationUpdateSentChatItem *)v27 _initWithItem:v28 chatIdentifier:v29];
  v59[15] = v30;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:16];

  return v32;
}

@end