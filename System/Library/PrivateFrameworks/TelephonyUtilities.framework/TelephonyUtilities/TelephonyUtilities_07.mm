void sub_100184960(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) buzzedMember:*(a1 + 56)];
}

void sub_100184B80(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v15 = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ member: %@", &v15, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  v8 = sub_100004778(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Kicking member %@ from conversation %@", &v15, 0x16u);
    }

    [v6 kickMember:*(a1 + 40)];
  }

  else
  {
    if (v9)
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 48) mutableConversationsByUUID];
      v14 = [v13 allKeys];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v15, 0x16u);
    }
  }
}

void sub_100184FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v32 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 48) value];
  v4 = [TUHandle normalizedHandleWithDestinationID:v3];

  v6 = sub_100004778(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v8 = *(a1 + 56);
      v9 = [v32 UUID];
      *buf = 138412802;
      v47 = v8;
      v48 = 2112;
      v49 = v4;
      v50 = 2112;
      v51 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received nickname update message, set nickname to %@ from handle %@ for conversation UUID %@", buf, 0x20u);
    }

    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v10 = [v32 remoteMembers];
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v16 = [v15 handle];
          v17 = [v16 isEquivalentToHandle:v4];

          if (v17)
          {
            v20 = [*(a1 + 56) copy];
            [v15 setNickname:v20];

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v6 = [*(a1 + 32) delegateToQueue];
            v21 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v21)
            {
              v22 = v21;
              v31 = v4;
              v23 = *v37;
              do
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v37 != v23)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v25 = *(*(&v36 + 1) + 8 * j);
                  v26 = [v32 tuConversation];
                  v27 = [*(a1 + 32) delegateToQueue];
                  v28 = [v27 objectForKey:v25];

                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1001853CC;
                  block[3] = &unk_100619E58;
                  block[4] = v25;
                  v34 = v26;
                  v35 = *(a1 + 32);
                  v29 = v26;
                  dispatch_async(v28, block);
                }

                v22 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v22);
              v4 = v31;
            }

            goto LABEL_24;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v6 = sub_100004778(v18);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v32 remoteMembers];
      *buf = 138412546;
      v47 = v4;
      v48 = 2112;
      v49 = v19;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring nickname update message because the from-handle %@ did not match any remote members %@", buf, 0x16u);
    }
  }

  else if (v7)
  {
    v30 = *(a1 + 48);
    *buf = 138412290;
    v47 = v30;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring nickname update message because the from-handle %@ could not be normalized.", buf, 0xCu);
  }

LABEL_24:
}

void sub_1001853CC(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100185614(id *a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a1[4] delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = [a1[5] tuConversation];
          v8 = [a1[4] delegateToQueue];
          v9 = [v8 objectForKey:v6];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018580C;
          block[3] = &unk_10061A428;
          block[4] = v6;
          v13 = v7;
          v14 = a1[4];
          v15 = a1[6];
          v16 = a1[7];
          v10 = v7;
          dispatch_async(v9, block);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }
}

void sub_10018580C(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participant:*(a1 + 56) addedNotice:*(a1 + 64)];
}

void sub_100185A14(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v12 = 138412546;
    v13 = v3;
    v14 = 1024;
    LODWORD(v15) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ downlinkMuted: %d", &v12, 0x12u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setRemoteParticipantsDownlinkMuted:*(a1 + 48)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_100185CA0(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v16 = 138412802;
    v17 = v4;
    v18 = 1024;
    LODWORD(v19[0]) = v3;
    WORD2(v19[0]) = 2112;
    *(v19 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ downlinkMuted: %d remoteMembers: %@", &v16, 0x1Cu);
  }

  v6 = [*(a1 + 48) mutableConversationsByUUID];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];

  if (v7)
  {
    [v7 setDownlinkMuted:*(a1 + 64) forParticipants:*(a1 + 40)];
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 48) mutableConversationsByUUID];
      v13 = [v12 allKeys];
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19[0] = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v16, 0x16u);
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [NSError errorWithDomain:@"CSDAVCControlErrorDomain" code:1 userInfo:0];
      (*(v14 + 16))(v14, v15);
    }
  }
}

void sub_100185F6C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 localMember];
  v5 = [v4 nickname];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  v8 = sub_100004778(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = [v3 localMember];
      v11 = [v10 nickname];
      v23 = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring local member's nickname update request because their nickname %@ is already identical", &v23, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = [v3 localMember];
      v15 = [v14 nickname];
      v23 = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ set local member's nickname to %@, previously %@", &v23, 0x20u);
    }

    v16 = [*(a1 + 48) copy];
    v17 = [v3 localMember];
    [v17 setNickname:v16];

    v18 = [CSDMessagingConversationMessage alloc];
    v19 = [v3 groupUUID];
    v8 = [(CSDMessagingConversationMessage *)v18 initWithType:12 groupUUID:v19 link:0];

    v20 = [*(a1 + 48) copy];
    [v8 setNickname:v20];

    v21 = *(a1 + 32);
    v22 = [v8 data];
    [v21 broadcastData:v22 onConversation:v3];
  }
}

void sub_10018637C(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = [*(a1 + 32) linkManager];
    v3 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10018647C;
    v7[3] = &unk_10061D0B0;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    [v2 getActiveLinksWithCreatedOnly:v3 completionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

void sub_10018647C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186564;
  block[3] = &unk_10061AF20;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100186564(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    v9 = 134218242;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrieved %lu conversation link descriptors %@", &v9, 0x16u);
  }

  if (*(a1 + 40))
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to retrieve links with error %@", &v9, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100186774(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v46 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received request from TU client to generate link for conversation UUID: %@", buf, 0xCu);
    }

    v5 = [*(a1 + 32) mutableConversationsByUUID];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (!v6)
    {
      v12 = sub_100004778(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = [*(a1 + 32) mutableConversationsByUUID];
        v17 = [v16 allKeys];
        *buf = 138412546;
        v46 = v15;
        v47 = 2112;
        v48 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }

      goto LABEL_33;
    }

    v8 = [*(a1 + 32) deviceSupport];
    if ([v8 isGreenTea])
    {
      v9 = [v6 remoteMembers];
      v10 = [v9 count];

      if (v10 >= 2)
      {
        v12 = sub_100004778(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "GreenTea devices cannot generate conversation links for Group FaceTime (remoteMembers > 1)", buf, 2u);
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    v18 = [v6 messagesGroupUUID];

    if (v18)
    {
      v20 = sub_100004778(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 messagesGroupUUID];
        *buf = 138412290;
        v46 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Conversation was initiated from messages, a link cannot be generated in this case. {messagesGroupUUID: %@}", buf, 0xCu);
      }

      v22 = *(a1 + 48);
      if (!v22)
      {
        goto LABEL_34;
      }

      v12 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:14 userInfo:0];
      (*(v22 + 16))(v22, 0, v12);
    }

    else
    {
      v23 = [v6 link];

      if (v23)
      {
        v25 = sub_100004778(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 40);
          *buf = 138412290;
          v46 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Link for conversation with UUID %@ already exists.", buf, 0xCu);
        }

        v27 = *(a1 + 48);
        if (!v27)
        {
          goto LABEL_34;
        }

        v12 = [v6 link];
        (*(v27 + 16))(v27, v12, 0);
      }

      else
      {
        v28 = [v6 localMember];
        v29 = [v28 handle];
        v12 = [v29 copy];

        v30 = [v12 normalizedValue];

        if (!v30)
        {
          v31 = [v6 localMember];
          v32 = [v31 handle];
          v33 = TUNormalizedHandleForTUHandle();

          v12 = v33;
        }

        v34 = *(a1 + 32);
        v35 = [v6 groupUUID];
        v36 = [v6 memberHandlesEligibleForLinkApproval];
        v37 = [v34 _getActivatedLinkWithHandle:v12 updateGroupUUID:v35 updateInvitedHandles:v36];

        v38 = *(a1 + 32);
        if (v37)
        {
          [v38 setConversationLink:v37 forConversation:v6 replyToCompletionHandler:*(a1 + 48)];
        }

        else
        {
          v39 = [v38 linkManager];
          v40 = [v6 groupUUID];
          v41 = [v6 memberHandlesEligibleForLinkApproval];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100186CDC;
          v42[3] = &unk_10061D100;
          v42[4] = *(a1 + 32);
          v43 = v6;
          v44 = *(a1 + 48);
          [v39 generateLinkWithGroupUUID:v40 invitedHandles:v41 originatorHandle:v12 linkLifetimeScope:0 completionHandler:v42];
        }
      }
    }

LABEL_33:

LABEL_34:
    return;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(v13 + 16);

    v14();
  }
}

void sub_100186CDC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100186DE0;
  block[3] = &unk_10061D0D8;
  v13 = v6;
  v14 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v15 = v5;
  v16 = v9;
  v17 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

id *sub_100186DE0(id *result)
{
  v1 = result;
  if (result[4])
  {
    v2 = sub_100004778(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1[5] groupUUID];
      v4 = v1[4];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to generate link for groupUUID %@ with error %@", &v6, 0x16u);
    }

    result = v1[8];
    if (result)
    {
      return (result[2])(result, 0, v1[4]);
    }
  }

  else if (result[6])
  {
    v5 = result[7];

    return [v5 setConversationLink:? forConversation:? replyToCompletionHandler:?];
  }

  return result;
}

void sub_100187420(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v49 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received request from TU client to generate link with invitedMemberHandles: %@", buf, 0xCu);
    }

    v5 = [*(a1 + 32) deviceSupport];
    if ([v5 isGreenTea])
    {
      v6 = [*(a1 + 40) count];

      if (v6 >= 2)
      {
        v8 = sub_100004778(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GreenTea devices cannot generate conversation links for Group FaceTime (invitedMemberHandles > 1)", buf, 2u);
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    v8 = +[NSMutableSet set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (([*(*(&v44 + 1) + 8 * i) type] & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v16 = TUNormalizedHandleForTUHandle();
            v17 = v16;
            if (v16)
            {
              v18 = [v16 normalizedValue];

              if (v18)
              {
                [v8 addObject:v17];
              }
            }
          }

          else
          {
            v17 = 0;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v13);
    }

    if (![v8 count])
    {
      v36 = [*(a1 + 40) count];
      if (v36)
      {
        v37 = sub_100004778(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARN] No invited member handles were of eligible handle types and/or had normalized values, canceling link generation", buf, 2u);
        }

        v38 = *(a1 + 48);
        if (!v38)
        {
          goto LABEL_51;
        }

        v39 = 11;
        goto LABEL_49;
      }
    }

    v19 = [*(a1 + 32) localCallerID];
    v20 = v19[2]();

    if (!v20)
    {
      v21 = [*(a1 + 32) activeLocalHandles];
      v22 = v21[2]();
      v23 = [v22 count];

      if (!v23)
      {
        v40 = sub_100004778(v24);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Local user has no active handles, cannot proceed with link generation", buf, 2u);
        }

        v38 = *(a1 + 48);
        if (!v38)
        {
          goto LABEL_51;
        }

        v39 = 12;
LABEL_49:
        v20 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:v39 userInfo:0];
        (*(v38 + 16))(v38, 0, v20);
LABEL_50:

LABEL_51:
        return;
      }

      v25 = [*(a1 + 32) activeLocalHandles];
      v26 = v25[2]();
      v20 = [v26 anyObject];
    }

    v27 = [*(a1 + 32) _getActivatedLinkWithHandle:v20 updateGroupUUID:0 updateInvitedHandles:v8];
    v28 = sub_100004778(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = v20;
      v50 = 2112;
      v51 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Getting activated link for callerID %@, activatedLink: %@", buf, 0x16u);
    }

    if (!v27)
    {
      goto LABEL_38;
    }

    v30 = sub_100004778(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "We activated an inactive link, returning that.", buf, 2u);
    }

    [*(a1 + 32) notifyDelegatesOfChangedLink:v27 conversation:0];
    v31 = [*(a1 + 32) sendMessagesForCreatedOrChangedLink:v27 conversation:0 messageType:11];
    if (*(a1 + 48))
    {
      v32 = sub_100004778(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v27;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Link generation complete, returning to completionHandler for: %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
LABEL_38:
      v33 = [*(a1 + 32) linkManager];
      v34 = *(a1 + 56);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100187A68;
      v41[3] = &unk_10061D100;
      v35 = *(a1 + 40);
      v41[4] = *(a1 + 32);
      v42 = v35;
      v43 = *(a1 + 48);
      [v33 generateLinkWithInvitedHandles:v8 originatorHandle:v20 linkLifetimeScope:v34 completionHandler:v41];
    }

    goto LABEL_50;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(v9 + 16);

    v10();
  }
}

void sub_100187A68(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187B68;
  block[3] = &unk_10061AF70;
  v13 = v6;
  v14 = v5;
  v8 = a1[5];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_100187B68(void *a1)
{
  v1 = a1;
  if (a1[4])
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1[5] groupUUID];
      v4 = v1[6];
      v5 = v1[4];
      v9 = 138412802;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creation of converation link with groupUUID %@ invited handles %@ failed with error %@", &v9, 0x20u);
    }
  }

  v6 = v1[5];
  if (v6)
  {
    [v1[7] notifyDelegatesOfChangedLink:v6 conversation:0];
    a1 = [v1[7] sendMessagesForCreatedOrChangedLink:v1[5] conversation:0 messageType:11];
  }

  if (v1[8])
  {
    v7 = sub_100004778(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v1[5];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Link generation complete, returning to completionHandler for: %@", &v9, 0xCu);
    }

    (*(v1[8] + 16))();
  }
}

void sub_100187DE4(id *a1)
{
  if ([a1[4] _linksEnabled])
  {
    objc_initWeak(&location, a1[4]);
    v2 = [a1[4] linkManager];
    v3 = a1[5];
    v4 = [a1[6] pseudonym];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100187F74;
    v7[3] = &unk_10061D1A0;
    objc_copyWeak(&v11, &location);
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    [v2 addInvitedHandles:v3 pseudonym:v4 completionHandler:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = a1[7];
    if (v5)
    {
      v6 = *(v5 + 2);

      v6();
    }
  }
}

void sub_100187F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100187F74(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018809C;
    v10[3] = &unk_10061D178;
    v11 = v6;
    v12 = a1[4];
    v13 = a1[5];
    v14 = v5;
    v15 = v8;
    v16 = a1[6];
    dispatch_async(v9, v10);
  }
}

uint64_t sub_10018809C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      v5 = *(a1 + 32);
      v10 = 138412802;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to %@ failed with error %@", &v10, 0x20u);
    }
  }

  if (*(a1 + 56))
  {
    v6 = *(a1 + 64);
    v7 = [*(a1 + 48) groupUUID];
    v8 = [v6 conversationWithGroupUUID:v7];

    if (v8)
    {
      [v8 setConversationLink:*(a1 + 56) allowUpdate:1];
    }

    [*(a1 + 64) notifyDelegatesOfChangedLink:*(a1 + 56) conversation:v8];
    [*(a1 + 64) sendMessagesForCreatedOrChangedLink:*(a1 + 56) conversation:v8 messageType:26];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void sub_1001882D4(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) pseudonym];
    v4 = [v2 findConversationLinkMatchingPseudonym:v3];

    v6 = sub_100004778(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to invalidate link %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) linkManager];
      v9 = [v4 pseudonym];
      v10 = *(a1 + 56);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100188548;
      v15[3] = &unk_10061D218;
      v15[4] = *(a1 + 32);
      v16 = v4;
      v17 = *(a1 + 48);
      [v8 invalidateLinkWithPseudonym:v9 deleteReason:v10 completionHandler:v15];
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not invalidating link since it's not being tracked by our link manager.", buf, 2u);
      }

      v13 = *(a1 + 48);
      if (v13)
      {
        v14 = [NSError errorWithDomain:@"callservicesd.ConversationLinkManagerErrorType" code:3 userInfo:0];
        (*(v13 + 16))(v13, 0, v14);
      }
    }
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }
  }
}

void sub_100188548(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018862C;
  block[3] = &unk_10061D1F0;
  v16 = a2;
  v7 = a1[5];
  v8 = a1[4];
  v12 = v7;
  v13 = v8;
  v9 = a1[6];
  v14 = v5;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_10018862C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) groupUUID];
    v3 = v2;
    if (v2)
    {
      v2 = [*(a1 + 40) conversationWithGroupUUID:v2];
      v4 = v2;
      if (v2)
      {
        v2 = [v2 setLink:0];
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_100004778(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completed invalidate the link: %@", &v8, 0xCu);
    }

    [*(a1 + 40) notifyDelegatesOfChangedLink:*(a1 + 32) conversation:v4];
    [*(a1 + 40) sendMessagesForInvalidatedLink:*(a1 + 32)];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 48));
  }

  return result;
}

void sub_100188838(id *a1)
{
  if ([a1[4] _linksEnabled] && (v2 = objc_msgSend(a1[5], "isLocallyCreated"), (v2 & 1) != 0))
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renewing link %@ if needed", buf, 0xCu);
    }

    objc_initWeak(buf, a1[4]);
    v5 = [a1[4] linkManager];
    v6 = [a1[5] pseudonym];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100188A54;
    v9[3] = &unk_10061D240;
    objc_copyWeak(&v12, buf);
    v10 = a1[5];
    v11 = a1[6];
    [v5 renewPseudonymIfNeeded:v6 completionHandler:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = *(v7 + 2);

      v8();
    }
  }
}

void sub_100188A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100188A54(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100188B68;
    block[3] = &unk_10061AF70;
    v11 = v6;
    v12 = a1[4];
    v13 = v5;
    v14 = v8;
    v15 = a1[5];
    dispatch_async(v9, block);
  }
}

uint64_t sub_100188B68(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100477FB0();
    }
  }

  else
  {
    v2 = [*(a1 + 40) copy];
    [v2 setExpirationDate:*(a1 + 48)];
    v3 = *(a1 + 56);
    v4 = [v2 groupUUID];
    v5 = [v3 conversationWithGroupUUID:v4];

    if (v5)
    {
      v6 = [v5 setConversationLink:v2 allowUpdate:1];
    }

    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) pseudonym];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "completed renewPseudonym %@", &v10, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:v2 conversation:v5];
    [*(a1 + 56) sendMessagesForCreatedOrChangedLink:v2 conversation:v5 messageType:26];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_100188E0C(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      *buf = 134217984;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renewing link for reason %lu", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v5 = [*(a1 + 32) linkManager];
    v6 = [*(a1 + 40) pseudonym];
    v7 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100189048;
    v10[3] = &unk_10061D290;
    objc_copyWeak(&v14, buf);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v5 renewLinkWithPseudonym:v6 expirationDate:v7 completionHandler:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void sub_10018901C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100189048(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189158;
    v9[3] = &unk_10061D268;
    v10 = v5;
    v11 = a1[4];
    v15 = a2;
    v12 = a1[5];
    v13 = v7;
    v14 = a1[6];
    dispatch_async(v8, v9);
  }
}

uint64_t sub_100189158(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100477FB0();
    }
  }

  if (*(a1 + 72) == 1)
  {
    v3 = [*(a1 + 40) copy];
    [v3 setExpirationDate:*(a1 + 48)];
    v4 = *(a1 + 56);
    v5 = [v3 groupUUID];
    v6 = [v4 conversationWithGroupUUID:v5];

    if (v6)
    {
      v7 = [v6 setConversationLink:v3 allowUpdate:1];
    }

    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "renewLinkWithPseudonym succeeded: %@", &v10, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:v3 conversation:v6];
    [*(a1 + 56) sendMessagesForCreatedOrChangedLink:v3 conversation:v6 messageType:26];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 72), *(a1 + 32));
  }

  return result;
}

void sub_1001893C0(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v5 = [*(a1 + 32) linkManager];
    v2 = [*(a1 + 40) pseudonym];
    [v5 checkLinkValidityWithPseudonym:v2 completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void sub_100189510(uint64_t a1)
{
  v2 = [*(a1 + 32) localCallerID];
  v3 = v2[2]();

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Generating cache of inactive links for originator handle %@", &v7, 0xCu);
  }

  v6 = [*(a1 + 32) linkManager];
  [v6 generateAllInactiveLinksFor:v3];
}

void sub_1001896B8(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v2 = [*(a1 + 32) localCallerID];
    v3 = v2[2]();

    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to retrieve inactive link for handle %@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) linkManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100189884;
    v12[3] = &unk_10061D100;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = v3;
    v14 = v7;
    v15 = v8;
    v9 = v3;
    [v6 getInactiveLinkForHandle:v9 completionHandler:v12];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

void sub_100189884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch inactive link, generating more for handle %@", &v11, 0xCu);
    }

    v10 = [*(a1 + 40) linkManager];
    [v10 generateAllInactiveLinksFor:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100189A60(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to activate conversation link %@", &v12, 0xCu);
    }

    v5 = [*(a1 + 32) linkManager];
    v6 = [*(a1 + 40) pseudonym];
    [v5 activateLinkForPseudonym:v6 completionHandler:*(a1 + 48)];

    v7 = [*(a1 + 32) localCallerID];
    v8 = v7[2]();

    v9 = [*(a1 + 32) linkManager];
    [v9 generateInactiveLinkFor:v8 afterActivation:1];

    [*(a1 + 32) notifyDelegatesOfChangedLink:*(a1 + 40) conversation:0];
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

void sub_100189D04(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to set name %@ for link %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v6 = [*(a1 + 32) linkManager];
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100189F28;
    v11[3] = &unk_10061D2E0;
    objc_copyWeak(&v14, buf);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v6 setLinkName:v8 forLink:v7 completionHandler:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void sub_100189EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100189F28(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018A03C;
    block[3] = &unk_10061AF70;
    v11 = v6;
    v12 = a1[4];
    v13 = v5;
    v14 = v8;
    v15 = a1[5];
    dispatch_async(v9, block);
  }
}

uint64_t sub_10018A03C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Link name setting provided error %@", &v7, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v4 = sub_100004778(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link name successfully set for updated link %@", &v7, 0xCu);
    }

    [*(a1 + 56) notifyDelegatesOfChangedLink:*(a1 + 48) conversation:0];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_10018A224(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to update participants: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) activeConversation];
  v5 = [v4 activitySessionManager];
  [v5 updateExternalParticipants:*(a1 + 32)];
}

void sub_10018A398(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "TU client asked to schedule a syncing of activated conversation links {initial: %@}", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) linkManager];
    [v5 scheduleConversationLinkCheckInInitial:*(a1 + 40)];
  }
}

void sub_10018A534(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending recovery messages to local user's other devices in an attempt to recover links for pseudonyms %@", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) linkManager];
    [v5 recoverLinksForPseudonyms:*(a1 + 40)];
  }
}

void sub_10018A6C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "TU client asked for link sync state {includeLinks: %@}", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) linkManager];
    [v5 linkSyncStateWithIncludeLinks:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void sub_10018A884(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has approved let me in for pending member: %@", &v14, 0x16u);
    }

    v6 = [*(a1 + 32) mutableConversationsByUUID];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];

    if (v7)
    {
      [*(a1 + 48) setJoinedFromLetMeIn:1];
      v9 = [*(a1 + 32) pendingMembershipTracker];
      [v9 handleLocalApprovalOfMember:*(a1 + 48) forConversation:v7];
    }

    else
    {
      v9 = sub_100004778(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v10 = *(a1 + 48);
        v12 = [*(a1 + 32) mutableConversationsByUUID];
        v13 = [v12 allKeys];
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to approve let me in request for pending member %@. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v14, 0x20u);
      }
    }
  }
}

void sub_10018AB10(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has rejected let me in for pending member: %@", &v14, 0x16u);
    }

    v6 = [*(a1 + 32) mutableConversationsByUUID];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];

    if (v7)
    {
      v9 = [*(a1 + 32) pendingMembershipTracker];
      [v9 handleLocalRejectionOfMember:*(a1 + 48) forConversation:v7];
    }

    else
    {
      v9 = sub_100004778(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v10 = *(a1 + 48);
        v12 = [*(a1 + 32) mutableConversationsByUUID];
        v13 = [v12 allKeys];
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to reject let me in request for pending member %@. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v14, 0x20u);
      }
    }
  }
}

void sub_10018AD74(uint64_t a1)
{
  v2 = [*(a1 + 32) _linksEnabled];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "For conversationUUID: %@, user has requested to ignore all LMI requests.", buf, 0xCu);
    }

    v5 = [*(a1 + 32) mutableConversationsByUUID];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (v6)
    {
      [v6 setIgnoreLMIRequests:*(a1 + 48)];
      v19 = v6;
      v8 = [v6 tuConversation];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = [*(a1 + 32) delegateToQueue];
      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          v12 = 0;
          do
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v25 + 1) + 8 * v12);
            v14 = [*(a1 + 32) delegateToQueue];
            v15 = [v14 objectForKey:v13];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10018B048;
            block[3] = &unk_100619E58;
            v22 = v8;
            v23 = v13;
            v24 = *(a1 + 32);
            dispatch_async(v15, block);

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v10);
      }

      v6 = v19;
    }

    else
    {
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        v17 = [*(a1 + 32) mutableConversationsByUUID];
        v18 = [v17 allKeys];
        *buf = 138412546;
        v30 = v16;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to ignore let me in requests. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
      }
    }
  }
}

void sub_10018B048(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = [*(a1 + 32) provider];
      if ([v3 shouldHandleUpdateForProvider:v4])
      {
      }

      else
      {
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          return;
        }
      }
    }

    else
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        return;
      }
    }

    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) provider];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_10018B254(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    *buf = 134218242;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating screen sharing type to %lu for conversationUUID: %@.", buf, 0x16u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 addScreenSharingType:*(a1 + 48)];
    v19 = v6;
    v8 = [v6 tuConversation];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [*(a1 + 40) delegateToQueue];
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v14 = [*(a1 + 40) delegateToQueue];
          v15 = [v14 objectForKey:v13];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018B530;
          block[3] = &unk_100619E58;
          v22 = v8;
          v23 = v13;
          v24 = *(a1 + 40);
          dispatch_async(v15, block);

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v6 = v19;
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) mutableConversationsByUUID];
      v18 = [v17 allKeys];
      *buf = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to ignore let me in requests. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10018B530(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = [*(a1 + 32) provider];
      if ([v3 shouldHandleUpdateForProvider:v4])
      {
      }

      else
      {
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          return;
        }
      }
    }

    else
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        return;
      }
    }

    v7 = sub_100004778(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) provider];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_10018B734(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  v3 = [v2 fetchUpcomingNoticeFromQueue];

  (*(*(a1 + 40) + 16))();
}

void sub_10018B880(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  [v2 activateConversationNoticeWithActionURL:*(a1 + 40) bundleIdentifier:*(a1 + 48)];
}

void sub_10018B988(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationNoticeManger];
  [v2 removeConversationNoticeWithUUID:*(a1 + 40)];
}

void sub_10018BAB4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ messagesGroupName: %@", &v12, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setMessagesGroupName:*(a1 + 40)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_10018BCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018BD7C;
  v7[3] = &unk_100619D88;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10018BD7C(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 134218242;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 linkLifetimeScope])
        {
          v9 = [*(a1 + 40) mutableConversationsByUUID];
          v10 = [v8 groupUUID];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (!v11)
          {
            goto LABEL_10;
          }

          v12 = [v11 activeRemoteParticipants];
          if ([v12 count])
          {
LABEL_13:
          }

          else
          {
            v13 = [v11 state];

            if (!v13)
            {
LABEL_10:
              v14 = [v8 pseudonym];
              v15 = sub_100004778(v14);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v8 linkLifetimeScope];
                *buf = v19;
                v27 = v16;
                v28 = 2112;
                v29 = v8;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%ld conversationLink should be removed, not needed anymore %@", buf, 0x16u);
              }

              v17 = [*(a1 + 40) linkManager];
              v18 = [v8 pseudonym];
              v20[0] = _NSConcreteStackBlock;
              v20[1] = 3221225472;
              v20[2] = sub_10018C014;
              v20[3] = &unk_10061A5D8;
              v21 = v14;
              v12 = v14;
              [v17 invalidateLinkWithPseudonym:v18 deleteReason:6 completionHandler:v20];

              goto LABEL_13;
            }
          }

          continue;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }
}

void sub_10018C014(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "conversationLink was removed since it was not needed anymore {pseudonym: %@, success: %@, error: %@}", &v9, 0x20u);
  }
}

void sub_10018C1B4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removeConversationWithUUID: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) conversationInvalidated:v5];
  }

  else
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10018C400(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [*(a1 + 40) UUID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 addAliasesToConversationContainer:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  }

  else
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) UUID];
      v8 = [*(a1 + 32) mutableConversationsByUUID];
      v9 = [v8 allKeys];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for container with UUID %@. All conversation UUIDs: %@", &v10, 0x16u);
    }
  }
}

void sub_10018C624(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "includeMetricsReport onConversationWithUUID: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v7 = [*(a1 + 40) reportingController];
    v15 = *(a1 + 48);
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v5 tuConversation];
    [v7 groupActivitiesReportsReceived:v8 forConversation:v9];
LABEL_7:

    goto LABEL_8;
  }

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v8 = [*(a1 + 40) mutableConversationsByUUID];
    v9 = [v8 allKeys];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping metrics report, could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v11, 0x16u);
    goto LABEL_7;
  }

LABEL_8:
}

void sub_10018C8B8(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 removeNearbyMemberWithHandleIfNecessary:*(a1 + 48)];
  }

  else
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) mutableConversationsByUUID];
      v8 = [v7 allKeys];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", &v9, 0x16u);
    }
  }
}

void sub_10018CAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    goto LABEL_20;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 tuActivitySessions];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      if ([v9 state] == 1)
      {
        v10 = [v9 activity];
        v11 = [v10 isScreenSharingActivity];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (!*(a1 + 48))
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_11:

    if (!*(a1 + 48))
    {
      v12 = [*(a1 + 32) featureFlags];
      v13 = [v12 avLessSharePlayEnabled];

      if ((v13 & 1) == 0)
      {
LABEL_13:
        v15 = sub_100004778(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100478020();
        }

        v16 = +[TUCallCenter sharedInstance];
        v17 = [v16 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018CDB8;
        block[3] = &unk_100619D38;
        v25 = v3;
        dispatch_async(v17, block);

        goto LABEL_20;
      }
    }
  }

  v18 = [*(a1 + 32) mutableConversationsRequestingUpgradeWithPreferences];
  v19 = [v18 objectForKey:*(a1 + 40)];

  if (!v19)
  {
    v20 = [*(a1 + 32) mutableConversationsRequestingUpgradeWithPreferences];
    v21 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    [v20 setObject:v21 forKey:*(a1 + 40)];

    v22 = +[TUConversationInvitationPreference incomingCallInvitationPreferences];
    [v3 setInvitationPreferences:v22];
  }

  v23 = [v3 avMode];
  [v3 setLocalParticipantAudioVideoMode:*(a1 + 48) presentationMode:*(a1 + 56)];
  [v3 setVideoEnabled:*(a1 + 48) == 2];
  [*(a1 + 32) notifyDelegatesOfAVModeChanged:v23 toAVMode:*(a1 + 48) forConversation:v3];
LABEL_20:
}

void sub_10018CDB8(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [*(a1 + 32) groupUUID];
  v4 = [v2 callsWithGroupUUID:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = sub_100004778(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10047805C(v17, v10);
        }

        v12 = +[TUCallCenter sharedInstance];
        [v12 disconnectCall:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      v7 = v6;
    }

    while (v6);
  }
}

void sub_10018D00C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v5 = sub_100004778(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found conversation that we want to register the messagesGroupUUID on", buf, 2u);
    }

    [v3 registerMessagesGroupAssociation];
    v7 = [CSDMessagingConversationMessage alloc];
    v8 = [v3 groupUUID];
    v6 = [(CSDMessagingConversationMessage *)v7 initWithType:34 groupUUID:v8 link:0];

    v17[0] = IDSSendMessageOptionPublicMessageIntentKey;
    v9 = [NSNumber numberWithInt:34];
    v18[0] = v9;
    v17[1] = IDSSendMessageOptionQueueOneIdentifierKey;
    v10 = [v6 conversationGroupUUIDString];
    v11 = [NSNumber numberWithInt:34];
    v12 = [NSString stringWithFormat:@"%@:%@", v10, v11];
    v18[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v14 = *(a1 + 32);
    v15 = [v6 data];
    [v14 broadcastData:v15 onConversation:v3 additionalOptions:v13];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1004780B8();
  }
}

void sub_10018D478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018D4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cleanupExpiredPendingConversations];
    WeakRetained = v2;
  }
}

void sub_10018DDAC(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10018E160(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) connectionDidStartForConversation:*(a1 + 40)];
}

void sub_10018E4CC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conversationLink finished removing after call was invalidated {success: %@, error: %@}", &v7, 0x16u);
  }
}

void sub_10018EEF4(id *a1)
{
  v2 = [a1[4] queue];
  dispatch_assert_queue_V2(v2);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [a1[4] delegateToQueue];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[5] tuConversation];
          v9 = [a1[4] delegateToQueue];
          v10 = [v9 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018F104;
          block[3] = &unk_10061A428;
          block[4] = v7;
          v14 = v8;
          v15 = a1[4];
          v16 = a1[6];
          v17 = a1[7];
          v11 = v8;
          dispatch_async(v10, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_10018F104(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedHandedOffConversation:*(a1 + 40) replacedByIdentifier:objc_msgSend(*(a1 + 56) localizedHandoffRecipientDeviceCategory:{"identifier"), *(a1 + 64)}];
}

void sub_10018F264(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedRemoteDoesHandedOffForConversation:*(a1 + 40)];
}

void sub_10018F3AC(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) addedActiveParticipant:*(a1 + 56)];
}

void sub_100190368(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedActiveParticipant:*(a1 + 56)];
}

void sub_1001904B0(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedActiveParticipant:*(a1 + 56) withReason:*(a1 + 64)];
}

void sub_10019084C(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100190BC8(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationScreenSharingChanged:*(a1 + 40) forParticipant:*(a1 + 56)];
}

void sub_100191004(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) mediaPrioritiesDidChangeForParticipant:*(a1 + 56)];
}

void sub_1001913A8(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participant:*(a1 + 56) didReact:*(a1 + 64)];
}

void sub_100191728(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) participantDidStopReacting:*(a1 + 56)];
}

void sub_100191D88(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) failedWithContext:*(a1 + 56)];
}

void sub_100192110(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) receivedActivitySessionEvent:*(a1 + 56)];
}

void sub_1001925C8(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) didChangeStateForActivitySession:*(a1 + 56)];
}

void sub_100192980(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) didChangeSceneAssociationForActivitySession:*(a1 + 56)];
}

void sub_100192D6C(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) appLaunchState:*(a1 + 64) forActivitySession:*(a1 + 56)];
}

void sub_10019346C(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) activeParticipant:*(a1 + 56) addedHighlightToConversation:*(a1 + 40) highlightIdentifier:*(a1 + 64) oldHighlightIdentifier:*(a1 + 72) isFirstAdd:*(a1 + 80)];
}

void sub_1001937F0(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) activeParticipant:*(a1 + 56) removedHighlightFrom:*(a1 + 40) highlightIdentifier:*(a1 + 64)];
}

void sub_100193A88(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = [v3 UUID];
      v14 = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started tracking highlight identifier %@ with URL %@ for conversation UUID: %@", &v14, 0x20u);
    }

    v9 = [*(a1 + 32) collaborationStateManager];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = [v3 UUID];
    [v9 startTrackingCollaborationIdentifier:v10 collaborationURL:v11 cloudKitAppBundleIDs:v12 isLocallyAdded:1 toConversationUUID:v13 completionHandler:*(a1 + 72)];
  }
}

void sub_100193D10(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 40))
  {
    v3 = [*(a1 + 48) mutableConversationsByUUID];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 56)];

    v6 = sub_100004778(v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = [v4 UUID];
        v17 = 138412802;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding highlight identifier %@ with URL %@ to conversation UUID: %@", &v17, 0x20u);
      }

      v11 = [v4 highlightIdentifiers];
      v7 = [v11 anyObject];

      if (([v7 isEqualToString:*v1]& 1) != 0)
      {
        [*(a1 + 48) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:30];
      }

      else
      {
        [v4 addHighlightIdentifier:*(a1 + 32)];
        [*(a1 + 48) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:30];
        [*(a1 + 48) conversationChanged:v4];
        v12 = [*(a1 + 48) collaborationStateManager];
        [v12 startTrackingCollaborationIdentifier:*(a1 + 32) collaborationURL:*(a1 + 40) cloudKitAppBundleIDs:*(a1 + 64) isLocallyAdded:1 toConversationUUID:*(a1 + 56) completionHandler:0];

        v13 = *(a1 + 48);
        v14 = [v4 tuConversation];
        v15 = *(a1 + 32);
        v16 = [v4 localParticipant];
        [v13 notifyDelegateOfHighlightAddedForConversation:v14 highlightIdentifier:v15 oldHighlightIdentifier:v7 byParticipant:v16 isFirstAdd:1];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100478198();
    }
  }

  else
  {
    v4 = sub_100004778(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100478204();
    }
  }
}

void sub_100194044(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) mutableConversationsByUUID];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v1;
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing Highlight identifier: %@ from conversation: %@", &v13, 0x16u);
    }

    if (v4)
    {
      [v4 removeHighlightIdentifier:*(a1 + 32)];
      [*(a1 + 40) sendHighlightMessageForConversation:v4 highlightIdentifier:*(a1 + 32) type:31];
      [*(a1 + 40) conversationChanged:v4];
      v9 = *(a1 + 40);
      v10 = [v4 tuConversation];
      v11 = *(a1 + 32);
      v12 = [v4 localParticipant];
      [v9 notifyDelegateOfHighlightRemovedFromConversation:v10 highlightIdentifier:v11 byParticipant:v12];
    }

    else
    {
      v10 = sub_100004778(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100478198();
      }
    }
  }

  else
  {
    v4 = sub_100004778(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100478240();
    }
  }
}

void sub_1001942DC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking Highlight opened for identifier: %@ on conversation: %@", &v8, 0x16u);
  }

  v7 = [*(a1 + 32) collaborationStateManager];
  [v7 collaborationOpened:*(a1 + 48)];
}

void sub_1001946A0(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 56) collaborationStateChanged:*(a1 + 72) highlightIdentifier:*(a1 + 64)];
}

void sub_100194B58(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 gelatoEnabled];

  if (v3)
  {
    if (*(a1 + 40))
    {
      v5 = [*(a1 + 32) mutableConversationsByUUID];
      v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

      v8 = sub_100004778(v7);
      v9 = v8;
      v42 = v6;
      if (!v6)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100478328();
        }

        goto LABEL_36;
      }

      v40 = (a1 + 48);
      v41 = (a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v12 = @"NO";
        if (*(a1 + 56))
        {
          v12 = @"YES";
        }

        *buf = 136315906;
        v55 = "[CSDConversationManager addCollaborationDictionary:forConversationWithUUID:fromMe:]_block_invoke";
        v56 = 2112;
        v57 = v10;
        v58 = 2112;
        v59 = v11;
        v60 = 2112;
        v61 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Asked to add collaboration dictionary %@ to conversation with UUID %@ fromMe %@", buf, 0x2Au);
      }

      v9 = [v6 tuConversation];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [*(a1 + 32) delegateToQueue];
      v13 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v50;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v50 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v49 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [*(a1 + 32) delegateToQueue];
              v19 = v18 = v9;
              v20 = [v19 objectForKey:v17];

              v9 = v18;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100195080;
              block[3] = &unk_10061A428;
              block[4] = v17;
              v21 = v42;
              v22 = *(a1 + 32);
              v23 = *(a1 + 40);
              v45 = v21;
              v46 = v22;
              v47 = v23;
              v48 = v18;
              dispatch_async(v20, block);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v14);
      }

      v24 = TUCollaborationDictionaryIdentifierTypeKey;
      v25 = [*v41 objectForKeyedSubscript:TUCollaborationDictionaryIdentifierTypeKey];
      v26 = TUCollaborationDictionaryURLKey;
      v27 = [*v41 objectForKeyedSubscript:TUCollaborationDictionaryURLKey];
      v28 = [*v41 objectForKeyedSubscript:TUCollaborationDictionaryBundleIDKey];
      v29 = v28;
      if (v25)
      {
        v30 = v27 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        v31 = sub_100004778(v28);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v38 = *v41;
          v39 = *v40;
          *buf = 138413058;
          v55 = v38;
          v56 = 2112;
          v57 = v39;
          v58 = 2112;
          v59 = v24;
          v60 = 2112;
          v61 = v26;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cannot add collaboration dictionary %@ to conversation with UUID %@ because it is missing required keys %@ and/or %@", buf, 0x2Au);
        }
      }

      else
      {
        if (*(a1 + 56) == 1)
        {
          [*(a1 + 32) addHighlightIdentifier:v25 collaborationURL:v27 cloudKitAppBundleIDs:v28 forConversationUUID:*(a1 + 48)];
          goto LABEL_35;
        }

        v32 = v9;
        v33 = [v42 highlightIdentifiers];
        v34 = [v33 anyObject];
        v35 = [v34 isEqualToString:v25];

        if (v35)
        {
          v37 = [*(a1 + 32) collaborationStateManager];
          [v37 startTrackingCollaborationIdentifier:v25 collaborationURL:v27 cloudKitAppBundleIDs:v29 isLocallyAdded:0 toConversationUUID:*(a1 + 48) completionHandler:0];

          v9 = v32;
          goto LABEL_35;
        }

        v31 = sub_100004778(v36);
        v9 = v32;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1004782B8();
        }
      }

LABEL_35:
LABEL_36:

      goto LABEL_37;
    }

    v42 = sub_100004778(v4);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100478394();
    }
  }

  else
  {
    v42 = sub_100004778(v4);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10047827C();
    }
  }

LABEL_37:
}

void sub_100195080(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) addedCollaborationDictionary:*(a1 + 56) forConversation:*(a1 + 64)];
}

void sub_1001954D4(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) changedBytesOfDataUsed:*(a1 + 56)];
}

void sub_100196530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100196560(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100196594(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100196648;
  v7[3] = &unk_10061D3A0;
  v7[4] = v2;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v1 conversationManager:v2 requestedEndpointWithIdentifier:v3 activitySession:v4 completion:v7];
}

void sub_100196648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019671C;
  block[3] = &unk_10061ABF0;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_10019671C(void *a1)
{
  if (a1[4])
  {
    v2 = *(*(a1[6] + 8) + 40);
    if (v2)
    {
      (*(v2 + 16))();
      v3 = *(a1[6] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = 0;
    }
  }

  v5 = a1[5];

  dispatch_group_leave(v5);
}

uint64_t sub_100196788(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100196BE8(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) provider];
    if ([v3 shouldHandleUpdateForProvider:v4])
    {
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      return;
    }
  }

  v7 = sub_100004778(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) provider];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v10, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) remoteMembersChanged:*(a1 + 56) forConversation:*(a1 + 40)];
}

void sub_10019938C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100199454;
  block[3] = &unk_100619E58;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_10019E358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019E388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [*(a1 + 32) kickedMembers];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) handle];
        v9 = [v8 isEquivalentToHandle:*(a1 + 40)];

        if (v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = sub_100004778(v17);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 40);
      v16 = [*(a1 + 32) UUID];
      *buf = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "It would have been time to add LMI approved handle %@ on conversation UUID %@ to link's invited members, but they were kicked.", buf, 0x16u);
    }

    else
    {
LABEL_10:

      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) link];
        v14 = [*(a1 + 32) UUID];
        *buf = 138412802;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding LMI approved handle %@ to invited member handles for link %@ after their kick timeout elapsed for conversation UUID %@", buf, 0x20u);
      }

      v15 = [NSSet setWithObject:*(a1 + 40)];
      v16 = [*(a1 + 32) link];
      [WeakRetained addInvitedMemberHandles:v15 toConversationLink:v16 completionHandler:0];
    }

LABEL_16:
  }
}

id sub_10019E900(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:updatedLinksFromSync: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) notifyDelegatesOfChangedLinkDescriptors:*(a1 + 32)];
}

id sub_10019EA68(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:removedLinkDescriptorsFromIDSSignal: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) handleRemovedLinkDescriptors:*(a1 + 32)];
}

id sub_10019EBD0(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:updatedLinkDescriptorsFromIDSSignal: -- updating delegates {linkDescriptors.count: %d} %@", v6, 0x12u);
  }

  return [*(a1 + 40) notifyDelegatesOfChangedLinkDescriptors:*(a1 + 32)];
}

id sub_10019ED48(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "linkManager:removedLinkDescriptorsFromValidityCheck: -- updating delegates {linkDescriptors.count: %d}", v5, 8u);
  }

  return [*(a1 + 40) handleRemovedLinkDescriptors:*(a1 + 32)];
}

void sub_10019F10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019F130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained mutableConversationsByUUID];
  v3 = [*(a1 + 32) UUID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [NSSet setWithObject:*(a1 + 40)];
  v6 = +[NSSet set];
  v7 = +[TUConversationInvitationPreference letMeInResponseInvitationPreferences];
  [v4 addRemoteMembers:v5 otherInvitedHandles:v6 invitationPreferences:v7 addingFromLetMeIn:1 triggeredLocally:1];
}

void sub_10019F5A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Membership reported rejection {member: %@, error: %@}", &v6, 0x16u);
  }
}

void sub_1001A0088(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID with Advertisement: %@ ", buf, 0xCu);
  }

  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v4 = [*(a1 + 40) delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A03E4;
        block[3] = &unk_100619E58;
        block[4] = v9;
        v23 = *(a1 + 32);
        v12 = v23.i64[0];
        v32 = vextq_s8(v23, v23, 8uLL);
        dispatch_async(v11, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 40) observerStorage];
  v14 = [v13 observerToQueue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [v15 objectForKey:v20];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1001A043C;
          v25[3] = &unk_100619E58;
          v25[4] = v20;
          v24 = *(a1 + 32);
          v22 = v24.i64[0];
          v26 = vextq_s8(v24, v24, 8uLL);
          dispatch_async(v21, v25);
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v17);
  }
}

uint64_t sub_1001A03E4(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 conversationAdvertisementChanged:v5];
  }

  return result;
}

void sub_1001A05B4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Letting delegates know Advertisement was lost: %@ ", buf, 0xCu);
  }

  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v4 = [*(a1 + 40) delegateToQueue];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [*(a1 + 40) delegateToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A0910;
        block[3] = &unk_100619E58;
        block[4] = v9;
        v23 = *(a1 + 32);
        v12 = v23.i64[0];
        v32 = vextq_s8(v23, v23, 8uLL);
        dispatch_async(v11, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 40) observerStorage];
  v14 = [v13 observerToQueue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v21 = [v15 objectForKey:v20];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1001A0968;
          v25[3] = &unk_100619E58;
          v25[4] = v20;
          v24 = *(a1 + 32);
          v22 = v24.i64[0];
          v26 = vextq_s8(v24, v24, 8uLL);
          dispatch_async(v21, v25);
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v17);
  }
}

uint64_t sub_1001A0910(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 conversationManager:v4 conversationAdvertisementChanged:v5];
  }

  return result;
}

void sub_1001A0B0C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying delegates of received remote attributes %@ (isLocallySharing: %@)", &v5, 0x16u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 40) notifyDelegatesOfRemoteScreenShareAttributes:*(a1 + 32) isLocallySharing:0];
  }
}

void sub_1001A0CAC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asking screen sharing activity manager to resume observing after invalidation", buf, 2u);
  }

  if (*(a1 + 48))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [*(a1 + 32) mutableConversationsByUUID];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v18;
      *&v6 = 138412290;
      v16 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 state] == 3)
          {
            v11 = [v10 isScreenEnabled];
            if (v11)
            {
              v12 = sub_100004778(v11);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v10 UUID];
                *buf = v16;
                v22 = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Disabling screensharing forConversationWithUUID:%@ since screen sharing session got invalidated", buf, 0xCu);
              }

              v14 = *(a1 + 32);
              v15 = [v10 UUID];
              [v14 setScreenEnabled:0 forConversationWithUUID:v15];
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [*(a1 + 32) notifyDelegatesOfRemoteScreenShareEndedWithReason:*(a1 + 40)];
  }
}

void sub_1001A0F8C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v12 = 138412546;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteControlStatus: %lu", &v12, 0x16u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 handleRemoteControlStatusChanged:*(a1 + 48)];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) mutableConversationsByUUID];
      v11 = [v10 allKeys];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v12, 0x16u);
    }
  }
}

void sub_1001A1AFC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received resource at url %@", buf, 0xCu);
  }

  v4 = [NSUUID alloc];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"resourceTransferConversationIDKey"];
  v6 = [v4 initWithUUIDString:v5];

  if (v6)
  {
    v8 = [*(a1 + 48) conversationWithGroupUUID:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 activeRemoteParticipants];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001A1EA0;
      v36[3] = &unk_10061A628;
      v37 = *(a1 + 56);
      v11 = [v10 objectsPassingTest:v36];
      v12 = [v11 allObjects];
      v13 = [v12 firstObject];

      if (v13)
      {
        v15 = [NSUUID alloc];
        v16 = [*(a1 + 40) objectForKey:@"resourceTransferActivitySessionIDKey"];
        v17 = [v15 initWithUUIDString:v16];

        if (v17)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v19 = [v9 activitySessions];
          v20 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v20)
          {
            v21 = v20;
            v30 = v13;
            v31 = v6;
            v22 = *v33;
            while (2)
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v32 + 1) + 8 * i);
                v25 = [v24 identifier];
                v26 = [v25 isEqual:v17];

                if (v26)
                {
                  v28 = *(a1 + 32);
                  v29 = [*(a1 + 40) objectForKey:@"resourceTransferClientMetadataKey"];
                  v13 = v30;
                  [v24 receivedResourceAtURL:v28 withMetadata:v29 fromParticipantIdentifier:{objc_msgSend(v30, "identifier")}];

                  v6 = v31;
                  goto LABEL_25;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

            v13 = v30;
            v6 = v31;
          }
        }

        else
        {
          v19 = sub_100004778(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100478AC8();
          }
        }

LABEL_25:
      }

      else
      {
        v17 = sub_100004778(v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100478B04();
        }
      }

      v27 = v37;
    }

    else
    {
      v27 = sub_100004778(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100478B40();
      }
    }
  }

  else
  {
    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100478BB0();
    }
  }
}

id sub_1001A1EA0(uint64_t a1, void *a2)
{
  v3 = [a2 activeIDSDestination];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001A2018(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceTransferCallbacks];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v3[2](v3, 0);
  }

  else
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100478BEC();
    }
  }

  v6 = [*(a1 + 32) resourceTransferCallbacks];
  [v6 removeObjectForKey:*(a1 + 40)];
}

void sub_1001A239C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setIsHeld:*(a1 + 48)];
  }

  else
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) mutableConversationsByUUID];
      v8 = [v7 allKeys];
      v9 = 136315650;
      v10 = "[CSDConversationManager setIsHeld:forConversationUUID:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] %s, Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v9, 0x20u);
    }
  }
}

void sub_1001A25A4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setProvider:*(a1 + 48)];
  }

  else
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) mutableConversationsByUUID];
      v8 = [v7 allKeys];
      v9 = 136315650;
      v10 = "[CSDConversationManager setProvider:forConversationUUID:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] %s, Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v9, 0x20u);
    }
  }
}

void sub_1001A2EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A2EC0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100478C28(v2, v3);
    }
  }
}

void sub_1001A2F18(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained delegate];
    if (a2 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 continuityCameraDidConnect];
    }

    WeakRetained = v5;
  }
}

uint64_t sub_1001A34C0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 32;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(CSDMessagingHandle);
          objc_storeStrong((a1 + 16), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_1000D1450(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1001A4EF8(id a1, TUHandle *a2)
{
  v2 = [(TUHandle *)a2 value];
  v3 = [v2 destinationIdIsPseudonym];

  return v3 ^ 1;
}

id sub_1001A50D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 UIBackgroundModes];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t sub_1001A5954(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v65[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65[0] & 0x7F) << v5;
        if ((v65[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v65[0] & 0x7F) << v31;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v33;
          }

LABEL_107:
          v61 = 32;
          goto LABEL_108;
        }

        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v65[0] & 0x7F) << v16;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_101:
          v61 = 16;
LABEL_108:
          *(a1 + v61) = v22;
          goto LABEL_118;
        }

LABEL_96:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
      }

      if (v13 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 0x40u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v65[0] & 0x7F) << v37;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_110;
          }
        }

        v30 = (v39 != 0) & ~[a2 hasError];
LABEL_110:
        v62 = 40;
        goto LABEL_117;
      }

      if (v13 != 4)
      {
        goto LABEL_96;
      }

      v23 = objc_alloc_init(CSDMessagingAVConferenceInviteData);
      objc_storeStrong((a1 + 8), v23);
      v65[0] = 0;
      v65[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100100720(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_118:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65[0] & 0x7F) << v49;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_114;
          }
        }

        v30 = (v51 != 0) & ~[a2 hasError];
LABEL_114:
        v62 = 36;
        goto LABEL_117;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          LOBYTE(v65[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v65[0] & 0x7F) << v24;
          if ((v65[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_103;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_103:
        v62 = 38;
        goto LABEL_117;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 44) |= 0x20u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v65[0] & 0x7F) << v43;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_112;
            }
          }

          v30 = (v45 != 0) & ~[a2 hasError];
LABEL_112:
          v62 = 39;
          goto LABEL_117;
        case 8:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            LOBYTE(v65[0]) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v65[0] & 0x7F) << v55;
            if ((v65[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_116;
            }
          }

          v30 = (v57 != 0) & ~[a2 hasError];
LABEL_116:
          v62 = 37;
LABEL_117:
          *(a1 + v62) = v30;
          goto LABEL_118;
        case 9:
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_118;
      }
    }

    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1001A6E70(id a1, TURoute *a2)
{
  v2 = a2;
  if ([(TURoute *)v2 isPreferred])
  {
    v3 = [(TURoute *)v2 isPreferredAndActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001A722C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001A7404(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A76A0(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

id sub_1001A79EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bluetoothAddress];
  if (v4)
  {
    v5 = [*(a1 + 32) uniqueIdentifier];
    v6 = [v3 bluetoothAddress];
    v7 = [v5 hasPrefix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001A7B98(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.facetime.audio"];
  v2 = qword_1006ACE38;
  qword_1006ACE38 = v1;
}

id sub_1001A7DE0(CSDMessagingConversationActivity *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivity;
  v3 = [(CSDMessagingConversationActivity *)&v7 description];
  v4 = [(CSDMessagingConversationActivity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_1001A812C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v35) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v35 & 0x7F) << v5;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_52;
      case 2u:
        v13 = PBReaderReadData();
        v14 = 48;
        goto LABEL_52;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_52;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_52;
      case 5u:
        v13 = PBReaderReadData();
        v14 = 88;
        goto LABEL_52;
      case 7u:
        v22 = objc_alloc_init(CSDMessagingConversationActivityContext);
        objc_storeStrong((a1 + 24), v22);
        v35 = 0;
        v36 = 0;
        if (!PBReaderPlaceMark() || !sub_1000DC2A0(v22, a2))
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      case 8u:
        v22 = objc_alloc_init(CSDMessagingHandle);
        v23 = 96;
        goto LABEL_42;
      case 9u:
        *(a1 + 108) |= 2u;
        v35 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 16;
        goto LABEL_59;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 64;
LABEL_52:
        v28 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_60;
      case 0xBu:
        v22 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
        objc_storeStrong((a1 + 40), v22);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && sub_1001E858C(v22, a2))
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      case 0xCu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v35) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v35 & 0x7F) << v15;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_54;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 104) = v21;
        goto LABEL_60;
      case 0xDu:
        *(a1 + 108) |= 1u;
        v35 = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35;
        v31 = 8;
LABEL_59:
        *(a1 + v31) = v30;
        goto LABEL_60;
      case 0xEu:
        v22 = objc_alloc_init(CSDMessagingHandle);
        v23 = 72;
LABEL_42:
        objc_storeStrong((a1 + v23), v22);
        v35 = 0;
        v36 = 0;
        if (PBReaderPlaceMark() && sub_1000D1450(v22, a2))
        {
LABEL_50:
          PBReaderRecallMark();

LABEL_60:
          v33 = [a2 position];
          if (v33 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_62:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_60;
    }
  }
}

uint64_t sub_1001A9A90(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__notificationStyles;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__notificationStyles;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v37 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__version;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__version;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__handleType;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___CSDMessagingConversationInvitationPreference__handleType;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001AA634(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeAudioAvailable;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeAudioAvailable;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeVideoAvailable;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___CSDMessagingCallCapabilitiesState__faceTimeVideoAvailable;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001AD384(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Issuing request to acquire process assertion for bundle identifier: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) processAssertionWithBundleIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) processAssertions];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v8 = [*(a1 + 40) processAssertions];
    [v8 addObject:v4];

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) processAssertions];
      (*(v10 + 16))(v10, v11, [v12 countForObject:v4]);
    }
  }

  else
  {
    v13 = sub_100004778(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Acquiring process assertion for bundle identifier %@", buf, 0xCu);
    }

    v15 = [*(a1 + 40) processAssertions];
    [v15 addObject:v4];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001AD654;
    v22[3] = &unk_10061D8B8;
    v21 = *(a1 + 32);
    v16 = v21.i64[0];
    v23 = vextq_s8(v21, v21, 8uLL);
    v24 = v4;
    v25 = *(a1 + 48);
    [v24 acquireWithCompletionHandler:v22];
  }

  v17 = sub_100004778(v9);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) processAssertions];
    v20 = [v19 countForObject:v4];
    *buf = 138412546;
    v27 = v18;
    v28 = 2048;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Incremented count of process assertion for bundle identifier %@ to %lu", buf, 0x16u);
  }
}

void sub_1001AD654(id *a1, char a2)
{
  v4 = a1 + 4;
  v5 = [a1[4] serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD748;
  block[3] = &unk_10061D088;
  v14 = a2;
  *&v6 = a1[5];
  *(&v6 + 1) = *v4;
  v10 = v6;
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

uint64_t sub_1001AD748(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = sub_100004778(a1);
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Acquired initial process assertion for bundle identifier %@", &v14, 0xCu);
    }

    v6 = [*(a1 + 40) processAssertions];
    v7 = [v6 countForObject:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100478FEC(a1, v4);
    }

    v8 = [*(a1 + 40) processAssertions];
    v9 = [v8 containsObject:*(a1 + 48)];

    if (v9)
    {
      do
      {
        v10 = [*(a1 + 40) processAssertions];
        [v10 removeObject:*(a1 + 48)];

        v11 = [*(a1 + 40) processAssertions];
        v12 = [v11 containsObject:*(a1 + 48)];
      }

      while ((v12 & 1) != 0);
    }

    v7 = 0;
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), v7);
  }

  return result;
}

void sub_1001AD9AC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to invalidate process assertion with bundle identifier: %@", &v14, 0xCu);
  }

  v4 = [*(a1 + 40) processAssertionWithBundleIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) processAssertions];
  v6 = [v5 countForObject:v4];

  if (v6)
  {
    v8 = [*(a1 + 40) processAssertions];
    [v8 removeObject:v4];

    v9 = [*(a1 + 40) processAssertions];
    v10 = [v9 countForObject:v4];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100004778(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v14 = 138412546;
    v15 = v12;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Decremented count of process assertion for bundle identifier %@ to %lu", &v14, 0x16u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, *(a1 + 32), v10);
  }
}

void sub_1001ADD7C(uint64_t a1)
{
  v12 = objc_alloc_init(CSDIncomingCallFilterDataSource);
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(a1 + 32)];
  v3 = objc_alloc_init(CSDCallCenterObserver);
  v4 = +[CSDCallDirectoryManager sharedInstance];
  v5 = *(a1 + 40);
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 contactStore];
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [v5 initWithDataSource:v12 deviceLockObserver:v2 callCenterObserver:v3 callDirectoryStoreBuilder:&stru_10061D8F8 callDirectoryManager:v4 contactStore:v7 featureFlags:v8 queue:*(a1 + 32)];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

CXCallDirectoryStore *__cdecl sub_1001ADEB0(id a1)
{
  v7 = 0;
  v1 = [[CXCallDirectoryStore alloc] initForReadingWithError:&v7];
  v2 = v7;
  v3 = sub_100004778(v2);
  v4 = v3;
  if (v1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initialized CXCallDirectoryStore for reading", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100479068(v2, v4);
  }

  return v1;
}

void sub_1001AE220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AE23C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to initialize CXCallDirectoryStore...", v5, 2u);
  }

  v3 = (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCallDirectoryStore:v3];
}

uint64_t sub_1001AE38C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = sub_100004778(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Incoming call filter block called with sourceAddress: %@ providerIdentifier: %@", &v18, 0x16u);
    }

    v10 = [v8[7] providerWithIdentifier:v6];
    v11 = v10;
    if (v10 && [v10 isSystemProvider] && (v12 = objc_msgSend(v8, "callDirectoryAllowsCallFromSourceAddress:", v5), (v12 & 1) == 0))
    {
      v15 = sub_100004778(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v5;
        v16 = "Blocking call with sourceAddress %@ since callDirectoryAllowsCallFromSourceAddress returned NO";
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [v8 systemAllowsCallsFromSourceAddress:v5 providerIdentifier:v6];
      if (v13)
      {
        v14 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v15 = sub_100004778(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v5;
        v16 = "Blocking call with sourceAddress %@ since systemAllowsCallsFromSourceAddress returned NO";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v18, 0xCu);
      }
    }

    v14 = 1;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

void sub_1001AE6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AE6F8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isOnEmergencyCall];
    v4 = *(a1 + 40);
    v12 = 67109378;
    LODWORD(v13[0]) = v3;
    WORD2(v13[0]) = 2112;
    *(v13 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DND - onEmergencyCall: %d providerIdentifier: %@", &v12, 0x12u);
  }

  if (![*(a1 + 32) isOnEmergencyCall])
  {
    v7 = [*(a1 + 32) dataSource];
    v8 = [v7 isDestinationIDAllowedThroughDoNotDisturb:*(a1 + 48) providerIdentifier:*(a1 + 40)];

    if (v8)
    {
      return;
    }

    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = 138412290;
      v13[0] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not allowing call because DND is enabled for %@", &v12, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) emergencyProviderIdentifier];
  LOBYTE(v5) = [v5 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
LABEL_10:
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1001AF544(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [v2 anyCallPassesTest:&stru_10061D990];

  v4 = [*(a1 + 40) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AF60C;
  v5[3] = &unk_100619EA8;
  v5[4] = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, v5);
}

id sub_1001B0874(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Call history changed: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _handleCallHistoryChanged];
}

void sub_1001B0E9C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requested to report call ended for conversation %@", &v5, 0xCu);
  }

  v4 = [[CHRecentCall alloc] initWithConversation:*(a1 + 32) startDate:*(a1 + 40) avMode:*(a1 + 56)];
  [*(a1 + 48) _addRecentCallToCallHistory:v4];
}

void sub_1001B16E0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionObjectsAwaitingCallHistory];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Ending transaction for %@ because we timed out waiting for a call history database changed notification", &v9, 0xCu);
    }

    v7 = [*(a1 + 32) transactionObjectsAwaitingCallHistory];
    [v7 removeObject:*(a1 + 40)];

    v8 = [*(a1 + 32) transactionManager];
    [v8 endTransactionIfNecessaryForObject:*(a1 + 40)];
  }
}

void sub_1001B198C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) predicateFormat];
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set %ld recent calls as read using matching predicate '%@'.", &v6, 0x16u);
  }
}

void sub_1001B1D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleted %ld recent calls matching predicate %@", &v6, 0x16u);
  }
}

uint64_t sub_1001B2458(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1001B37E0(uint64_t a1)
{
  [*(a1 + 32) _relayHostDeviceIdentifierChanged];
  v2 = *(a1 + 32);

  return [v2 syncRelayCallProvidersWithKVS];
}

void sub_1001B38EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _relayHostDeviceIdentifierChanged];
  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 syncRelayCallProvidersWithKVS];
  }

  else
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10047918C(v4);
    }
  }
}

void sub_1001B3A30(uint64_t a1)
{
  v2 = [*(a1 + 32) _relayHostDeviceIdentifierChanged];
  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 syncRelayCallProvidersWithKVS];
  }

  else
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004791D0(v4);
    }
  }
}

void sub_1001B3C44(uint64_t a1)
{
  v2 = +[TUCallCapabilities supportsPrimaryCalling];
  if (v2)
  {
    v3 = sub_100004778(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not updating call providers on primary calling device", buf, 2u);
    }
  }

  else
  {
    v4 = +[NSUserDefaults tu_defaults];
    v3 = [v4 stringForKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

    if (v3)
    {
      v6 = +[CSDCallProviderKVS sharedInstance];
      v7 = [v6 fetchCallProvidersForIDSDeviceIdentifier:v3];

      v8 = [*(a1 + 32) delegate];
      [v8 relayCallProvidersChangedForDataSource:*(a1 + 32) updatedCallProviders:v7];
    }

    else
    {
      v9 = sub_100004778(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot sync call providers as device identifier for outgoing caller device isn't known yet", v10, 2u);
      }
    }
  }
}

uint64_t sub_1001B44D8(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v18[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v18[0] & 0x7F) << v5;
      if ((v18[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 14;
        goto LABEL_37;
      case 2u:
        v15 = objc_alloc_init(CSDMessagingPersonNameComponents);
        objc_storeStrong(a1 + 15, v15);
        v18[0] = 0;
        v18[1] = 0;
        if (PBReaderPlaceMark() && sub_100138C28(v15, a2))
        {
          PBReaderRecallMark();
LABEL_38:

LABEL_39:
          v16 = [a2 position];
          if (v16 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_37;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 11;
        goto LABEL_37;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 6;
        goto LABEL_37;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 13;
        goto LABEL_37;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 12;
        goto LABEL_37;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 10;
        goto LABEL_37;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 9;
        goto LABEL_37;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 2;
        goto LABEL_37;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 3;
        goto LABEL_37;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 1;
        goto LABEL_37;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 7;
        goto LABEL_37;
      case 0xEu:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addContactIdentifiers:v15];
        }

        goto LABEL_38;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 4;
        goto LABEL_37;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 5;
LABEL_37:
        v15 = a1[v14];
        a1[v14] = v13;
        goto LABEL_38;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
    }
  }
}

void sub_1001B5B24(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_100004778(a1);
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received successful didSend for message with identifier %@ using account %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1004759CC(a1, v4);
  }
}

void sub_1001B5FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messenger:*(a1 + 32) handledMessage:*(a1 + 40) fromDestination:*(a1 + 48) device:*(a1 + 56)];
}

void sub_1001B61C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _sendMessageOptions];
  v3 = +[CSDRelayIDSService sharedInstance];
  v4 = [v3 service];
  v5 = (a1 + 40);
  v6 = [*(a1 + 40) data];
  v7 = *(a1 + 48);
  v30 = 0;
  v31 = 0;
  v8 = [v4 sendData:v6 toDestinations:v7 priority:300 options:v2 identifier:&v31 error:&v30];
  v9 = v31;
  v10 = v30;

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) typeString];
    v14 = *(a1 + 48);
    *buf = 138413058;
    v33 = v13;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v2;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending %@ message with identifier %@ and options %@ to destinations %@", buf, 0x2Au);
  }

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *v5;
    *buf = 138412546;
    v33 = v9;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "identifier %@ message %@", buf, 0x16u);
  }

  v19 = sub_100004778(v18);
  v20 = v19;
  if (v8)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*v5 typeString];
      *buf = 138412290;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully sent %@ message", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v22 = +[TUCallCenter sharedInstance];
      v23 = [v22 queue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001B6564;
      v28[3] = &unk_10061A7E0;
      v24 = &v29;
      v29 = *(a1 + 56);
      v25 = v28;
LABEL_14:
      dispatch_async(v23, v25);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100475A60((a1 + 40), v10, v20);
    }

    if (*(a1 + 56))
    {
      v22 = +[TUCallCenter sharedInstance];
      v23 = [v22 queue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001B6578;
      v26[3] = &unk_10061A7E0;
      v24 = &v27;
      v27 = *(a1 + 56);
      v25 = v26;
      goto LABEL_14;
    }
  }
}

void sub_1001B67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B6924(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) activityQueue];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 userActivity];
        v8 = [v7 activityType];
        v9 = [CSDUserActivity activityTypeForUserActivityTypeString:v8];
        v10 = *(a1 + 48);

        if (v9 == v10)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_1001B7E1C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v31 = 138412290;
    *v32 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Best app suggestion changed to %@", &v31, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  v5 = [*(a1 + 40) mostRecentBestAppSuggestion];
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 32))
    {
      v7 = [*(a1 + 40) mostRecentBestAppSuggestion];
      v8 = [v7 activityType];
      v9 = [*(a1 + 32) activityType];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = [*(a1 + 40) mostRecentBestAppSuggestion];
    v12 = [v11 activityType];
    v13 = [CSDUserActivity activityTypeForUserActivityTypeString:v12];

    if (v4)
    {
      v15 = sub_100004778(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 40) mostRecentBestAppSuggestion];
        v17 = [v16 activityType];
        v18 = [*(a1 + 40) mostRecentBestAppSuggestion];
        v19 = [v18 dynamicIdentifier];
        v31 = 67109634;
        *v32 = v13;
        *&v32[4] = 2112;
        *&v32[6] = v17;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Firing delegate callback for stopped activity type %d (%@) and dynamicIdentifier %@", &v31, 0x1Cu);
      }

      v20 = [*(a1 + 40) mostRecentBestAppSuggestion];
      v21 = [v20 dynamicIdentifier];
      [v4 stoppedReceivingActivityType:v13 dynamicIdentifier:v21];
    }

    [*(a1 + 40) setMostRecentBestAppSuggestion:0];
  }

LABEL_13:
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = [v22 activityType];
    v24 = [CSDUserActivity activityTypeForUserActivityTypeString:v23];

    if (v24 && v4)
    {
      v26 = sub_100004778(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(a1 + 32) activityType];
        v28 = [*(a1 + 32) dynamicIdentifier];
        v31 = 67109634;
        *v32 = v24;
        *&v32[4] = 2112;
        *&v32[6] = v27;
        v33 = 2112;
        v34 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Firing delegate callback with activity type %d (%@) and dynamicIdentifier %@", &v31, 0x1Cu);
      }

      v29 = [*(a1 + 32) dynamicIdentifier];
      v30 = [*(a1 + 32) originatingDeviceType];
      [v4 receivedBroadcastedActivityType:v24 dynamicIdentifier:v29 originatingDeviceType:v30];
    }

    [*(a1 + 40) setMostRecentBestAppSuggestion:*(a1 + 32)];
  }
}

void sub_1001B87E0(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.phone.auth"];
  v2 = qword_1006ACE48;
  qword_1006ACE48 = v1;
}

void sub_1001B88C4(uint64_t a1)
{
  v7 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.telephonyutilities.callservicesd" type:2];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("CSDCallProviderKVSQueue", v1);

  v3 = objc_alloc(objc_opt_class());
  v4 = IDSCopyLocalDeviceUniqueID();
  v5 = [v3 initWithCallProviderStore:v7 queue:v2 currentDeviceIdentifier:v4];
  v6 = qword_1006ACE58;
  qword_1006ACE58 = v5;
}

void sub_1001B8D38(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  [v2 setData:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001B8F80(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1001B909C(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 hasPrefix:{*(a1 + 40), v12}])
        {
          v11 = [*(a1 + 32) callProviderStore];
          [v11 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1001B93C8(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderStore];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412290;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 hasPrefix:{*(a1 + 40), v20}])
        {
          v11 = [*(a1 + 32) callProviderStore];
          v12 = [v11 dataForKey:v10];

          if (v12)
          {
            v14 = [*(a1 + 32) unarchivedObjectClasses];
            v22 = 0;
            v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v12 error:&v22];
            v16 = v22;

            if (v15)
            {
              v18 = *(a1 + 48);
              v19 = [v15 identifier];
              [v18 setObject:v15 forKeyedSubscript:v19];
            }

            else
            {
              v19 = sub_100004778(v17);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v28 = v10;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to unarchive call provider for key = %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v16 = sub_100004778(v13);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v28 = v10;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to read call provider data for key = %@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }
}

void sub_1001B96E4(uint64_t a1)
{
  v1 = [*(a1 + 32) callProviderStore];
  [v1 synchronize];

  v3 = sub_100004778(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requested to synchronize iCloud KVS", v4, 2u);
  }
}

void sub_1001BBD48(uint64_t a1, int a2)
{
  v4 = sub_100004778(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Query for capabilities returned any destinations with web only endpoints: %@", buf, 0xCu);
  }

  if (a2)
  {
    [*(a1 + 32) addMembers:*(a1 + 40) toExistingMembers:*(a1 + 48) participantDestinationIDs:*(a1 + 56) webDestinationIDs:*(a1 + 64) activeParticipants:*(a1 + 72) activitySessions:*(a1 + 80) link:*(a1 + 88) otherInvitedHandles:*(a1 + 96) report:*(a1 + 104) invitationPreferences:*(a1 + 112)];
  }
}

void sub_1001BFE60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_100004778(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by requesting handoff for all calls", buf, 0xCu);
  }

  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DC830;
    block[3] = &unk_100619D38;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1001C0BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  objc_destroyWeak((v63 + 32));
  objc_destroyWeak((v64 + 32));
  objc_destroyWeak((v62 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a62);
  objc_destroyWeak((v66 - 192));
  objc_destroyWeak((v66 - 144));
  objc_destroyWeak((v66 - 136));
  _Unwind_Resume(a1);
}

void sub_1001C0CB4(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted from client %@", &v4, 0xCu);
  }
}

void sub_1001C0D60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C0E34;
    v6[3] = &unk_100619D88;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001C0E34(uint64_t a1)
{
  [*(a1 + 32) updateClientsWithCall:*(a1 + 40)];
  [*(a1 + 32) updateAudioArbitration];
  v2 = [*(a1 + 32) conversationCallCoordinationManager];
  [v2 handleCallChangedWithCall:*(a1 + 40)];
}

void sub_1001C0E9C(uint64_t a1, int a2)
{
  v4 = sub_100004778(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay screen is now %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _launchInCallApplicationForExistingCall];
  }
}

void sub_1001C0F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001C1034;
    v5[3] = &unk_100619D88;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void sub_1001C1034(uint64_t a1)
{
  [*(a1 + 32) _updateBluetoothAudioFormatIfNecessaryDueToMVMChange:0];
  v2 = [*(a1 + 32) clientManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C11AC;
  v11[3] = &unk_10061DA78;
  v12 = *(a1 + 32);
  v3 = NSStringFromSelector("handleRoutesByUniqueIdentifierUpdated:");
  [v2 performBlockOnClients:v11 coalescedByIdentifier:v3];

  v4 = [*(a1 + 40) featureFlags];
  if (![v4 isRemoteCallControlOnWatchEnabled])
  {
    goto LABEL_4;
  }

  v5 = [*(a1 + 40) callCenter];
  v6 = [v5 currentAudioAndVideoCalls];
  v7 = [v6 count];

  if (v7)
  {
    v4 = [*(a1 + 32) relayMessagingController];
    v8 = [*(a1 + 32) localRouteController];
    v9 = [v8 routesByUniqueIdentifier];
    v10 = [v9 allValues];
    [v4 sendUpdateRoutesMessageToClientForRoutes:v10];

LABEL_4:
  }
}

void sub_1001C11AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 localRouteController];
  v5 = [v6 routesByUniqueIdentifier];
  [v4 handleLocalRoutesByUniqueIdentifierUpdated:v5];
}

void sub_1001C1220(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C12E4;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C12E4(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPickedByAnyTrigger:*(a1 + 32)];
}

void sub_1001C133C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1400;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1400(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPicked:*(a1 + 32)];
}

void sub_1001C1458(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C151C;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C151C(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportTimedOutPickingRoute:*(a1 + 32)];
}

void sub_1001C1574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1620;
    block[3] = &unk_100619D38;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_1001C1620(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C16DC;
  v4[3] = &unk_10061DA78;
  v5 = *(a1 + 32);
  v3 = NSStringFromSelector("handleRoutesByUniqueIdentifierUpdated:");
  [v2 performBlockOnClients:v4 coalescedByIdentifier:v3];
}

void sub_1001C16DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 pairedHostDeviceRouteController];
  v5 = [v6 routesByUniqueIdentifier];
  [v4 handlePairedHostDeviceRoutesByUniqueIdentifierUpdated:v5];
}

void sub_1001C1750(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1814;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1814(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportRouteWasPickedByAnyTrigger:*(a1 + 32)];
}

void sub_1001C186C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C1940;
    v7[3] = &unk_100619D88;
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1001C1940(uint64_t a1)
{
  v2 = [*(a1 + 32) relayMessagingController];
  [v2 sendPickRouteMessageToHostForRoute:*(a1 + 40)];

  v3 = +[CSDReportingController sharedInstance];
  [v3 reportRouteWasPicked:*(a1 + 40)];
}

void sub_1001C19B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1A78;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1A78(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportTimedOutPickingRoute:*(a1 + 32)];
}

void sub_1001C1BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C1C58;
  v4[3] = &unk_10061DAC0;
  v5 = *(a1 + 40);
  v3 = NSStringFromSelector("handlePairedHostVolumeChanged:");
  [v2 performBlockOnClients:v4 coalescedByIdentifier:v3];
}

void sub_1001C1D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 capabilities];
    *buf = 138412546;
    v34 = v3;
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client: %@ capabilities: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v3 capabilities];
  v8 = [v7 wantsCallDisconnectionOnInvalidation];

  if (v8)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 processName];
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting all calls because wantsCallDisconnectionOnInvalidation=YES for %@", buf, 0xCu);
    }

    v12 = [WeakRetained callCenter];
    [v12 disconnectAllCalls];
  }

  v13 = [v3 capabilities];
  v14 = [v13 wantsCallStopStreamingOnInvalidation];

  if (v14)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = WeakRetained;
    v15 = [WeakRetained callContainer];
    v16 = [v15 currentVideoCalls];

    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = [v21 provider];
          if ([v22 isSystemProvider])
          {
            v23 = [v21 status];

            if (v23 == 1)
            {
              v25 = sub_100004778(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v3 processName];
                *buf = 138412546;
                v34 = v21;
                v35 = 2112;
                v36 = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting isSendingVideo:NO isSharingScreen:NO on call: %@ because wantsCallStopStreamingOnInvalidation=YES for %@", buf, 0x16u);
              }

              [v21 setIsSendingVideo:0];
              [v21 setSharingScreen:0];
            }
          }

          else
          {
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    WeakRetained = v27;
  }
}

void sub_1001C2198(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C22A0;
  v3[3] = &unk_10061A740;
  objc_copyWeak(&v4, &location);
  v1 = sub_100004778([AVAudioClient registerSecureMicrophoneEngagedHandler:v3]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Registered for registerSecureMicrophoneEngagedHandler", v2, 2u);
  }

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1001C2280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001C22A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C233C;
    block[3] = &unk_100619D38;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void sub_1001C233C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AVAudioClient secure microphone interruption", v5, 2u);
  }

  v3 = [*(a1 + 32) shouldHandleSecureMicrophoneEvents];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [*(a1 + 32) performDisconnectAllCallsWithReason:39];
  }
}

void sub_1001C2A38(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received LocaleDidChange notification: %@", &v15, 0xCu);
  }

  if (TUTranscriptionAvailabilityForUseCase())
  {
    v4 = [*(a1 + 40) answeringMachineController];

    if (!v4)
    {
      v5 = [*(a1 + 40) featureFlags];
      v6 = TUCallScreeningActivatable();

      if (v6)
      {
        v8 = sub_100004778(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "creating answeringMachineController", &v15, 2u);
        }

        v9 = [CSDAnsweringMachineController alloc];
        v10 = *(a1 + 40);
        v11 = [v10 speechAssetManager];
        v12 = [(CSDAnsweringMachineController *)v9 initWith:v10 speechAssetManager:v11];
        [*(a1 + 40) setAnsweringMachineController:v12];

        v13 = +[_TtC13callservicesd19CSDAnalyticsManager sharedInstance];
        [v13 setAnalyticsManagerProvider:*(a1 + 40)];
      }
    }
  }

  else
  {
    v14 = sub_100004778(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setting answeringMachineController to nil", &v15, 2u);
    }

    [*(a1 + 40) setAnsweringMachineController:0];
  }
}

void sub_1001C2CF4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AudioSession Interruption notification: %@", &v12, 0xCu);
  }

  v4 = [*(a1 + 40) shouldHandleSecureMicrophoneEvents];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [*(a1 + 32) userInfo];
    v7 = [v6 valueForKey:AVAudioSessionInterruptionReasonKey];
    v8 = [NSNumber numberWithInt:2];
    v9 = [v7 isEqualToNumber:v8];

    if (v9)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Determined that audio interruption was caused due to built in mic muted, ending all calls", &v12, 2u);
      }

      [*(a1 + 40) performDisconnectAllCallsWithReason:40];
    }
  }
}

BOOL sub_1001C2FC8(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 1 && [(TUCall *)v2 isHostedOnCurrentDevice])
  {
    v3 = [(TUCall *)v2 isEndpointOnCurrentDevice];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001C30D4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v30 = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received CarPlay hardware control: %@", &v30, 0xCu);
  }

  if ([*(a1 + 40) shouldHandleCarPlayControlEvents])
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 valueForKey:kTUCarPlayHardwareControlButtonKey];

    v6 = [*(a1 + 40) callContainer];
    v7 = [v6 callPassingTest:&stru_10061DB00];

    v8 = [*(a1 + 40) callContainer];
    v9 = [v8 callPassingTest:&stru_10061DB20];

    v10 = [*(a1 + 40) callContainer];
    v11 = [v10 callPassingTest:&stru_10061DB40];

    v12 = [*(a1 + 40) callContainer];
    v13 = [v12 frontmostBargeCall];

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138413058;
      v31 = v7;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating calls in response to CarPlay hardware control: incomingCall %@, activeCall %@, heldCall %@ bargeCall %@", &v30, 0x2Au);
    }

    if (v7)
    {
      if (v5 == kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress)
      {
        v16 = [*(a1 + 40) callCenter];
        [v16 disconnectCall:v7];
      }

      else
      {
        if (v5 == kTUCarPlayHardwareControlButtonGreenTelephone || v5 == kTUCarPlayHardwareControlButtonWhiteTelephone)
        {
          if (!v9)
          {
            if ([v7 status] == 4)
            {
              v24 = *(a1 + 40);
              if ([v7 isVideo])
              {
                v25 = 4;
              }

              else
              {
                v25 = 0;
              }

              [v24 _answerIncomingCall:v7 withBehavior:v25];
            }

            else if ([v7 isConversation])
            {
              [*(a1 + 40) _answerIncomingCallAsConversation:v7];
            }

            goto LABEL_47;
          }

          if ([v7 isConversation])
          {
            v21 = [v7 status];
            v22 = *(a1 + 40);
            v23 = v7;
            if (v21 == 3)
            {
              [v22 _answerIncomingCallAsConversation:v7];
              goto LABEL_44;
            }

            v26 = 0;
          }

          else
          {
            v22 = *(a1 + 40);
            v23 = v7;
            if (v11)
            {
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }
          }

          [v22 _answerIncomingCall:v23 withBehavior:v26];
LABEL_44:
          if (v9)
          {
            if (v5 == kTUCarPlayHardwareControlButtonMute)
            {
              [v9 setUplinkMuted:{objc_msgSend(v9, "isUplinkMuted") ^ 1}];
            }
          }

          goto LABEL_47;
        }

        if (v5 != kTUCarPlayHardwareControlButtonRedTelephone)
        {
          goto LABEL_44;
        }

        v16 = +[TUCallCenter sharedInstance];
        [v16 disconnectCall:v7 withReason:2];
      }

LABEL_43:

      goto LABEL_44;
    }

    if (v5 != kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress && v5 != kTUCarPlayHardwareControlButtonRedTelephone)
    {
      if (v5 != kTUCarPlayHardwareControlButtonWhiteTelephone)
      {
        if (v5 != kTUCarPlayHardwareControlButtonGreenTelephone)
        {
          goto LABEL_44;
        }

        v17 = [v9 model];
        if ([v17 supportsHolding])
        {
          v18 = [*(a1 + 40) callCenter];
          v19 = [v18 currentCallCount];

          if (v19 >= 2)
          {
            v20 = +[TUCallCenter sharedInstance];
LABEL_34:
            v16 = v20;
            [v20 swapCalls];
            goto LABEL_43;
          }
        }

        else
        {
        }

        if (v11)
        {
          v16 = [*(a1 + 40) callCenter];
          [v16 unholdCall:v11];
        }

        else
        {
          if (!v9)
          {
LABEL_47:

            return;
          }

          v16 = [*(a1 + 40) callCenter];
          [v16 holdCall:v9];
        }

        goto LABEL_43;
      }

      v27 = [v9 model];
      if ([v27 supportsHolding])
      {
        v28 = [*(a1 + 40) callCenter];
        v29 = [v28 currentCallCount];

        if (v29 >= 2)
        {
          v20 = [*(a1 + 40) callCenter];
          goto LABEL_34;
        }
      }

      else
      {
      }

      if (v13)
      {
        if ([v13 status] == 2)
        {
          [*(a1 + 40) startTransmissionForBargeCall:v13 sourceIsHandsfreeAccessory:1];
        }

        else if ([v13 status] == 1)
        {
          [*(a1 + 40) stopTransmissionForBargeCall:v13 sourceIsHandsfreeAccessory:0];
        }

        goto LABEL_44;
      }
    }

    v16 = [*(a1 + 40) callCenter];
    [v16 disconnectCurrentCall];
    goto LABEL_43;
  }
}

BOOL sub_1001C3600(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 4)
  {
    v3 = 1;
  }

  else if ([(TUCall *)v2 status]== 3)
  {
    v3 = [(TUCall *)v2 isConversation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001C3B44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v9, 0x16u);
  }

  if (v5)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004794A0();
    }
  }
}

void sub_1001C3EC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v9, 0x16u);
  }

  if (v5)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004794A0();
    }
  }
}

void sub_1001C4088(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4188;
  block[3] = &unk_10061A428;
  v13 = v5;
  v14 = v6;
  v15 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_1001C4188(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v11, 0x16u);
  }

  if (*(a1 + 40))
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100479508();
    }

    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disconnecting call because there wont be a UI to host the call: %@", &v11, 0xCu);
    }

    v10 = [*(a1 + 64) callCenter];
    [v10 disconnectCall:*(a1 + 56)];
  }
}