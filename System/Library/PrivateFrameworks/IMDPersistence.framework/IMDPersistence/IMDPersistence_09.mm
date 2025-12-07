xpc_object_t sub_1B7BE2ECC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE2F60;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE2F60(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMostRecentUseageOfAddresses(const __CFArray *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7BE3364;
    v10[3] = &unk_1E7CB6838;
    v10[4] = &v12;
    __syncXPCIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(v10, a1);
    goto LABEL_14;
  }

  if (!a1)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCA3C();
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(a1);
  if (Count > 0)
  {
    v3 = IMDMessageRecordCopyMostRecentUseageOfAddressesQuery(Count);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7BE3220;
    v11[3] = &unk_1E7CBD090;
    v11[5] = v3;
    v11[6] = a1;
    v11[4] = &v12;
    _IMDPerformLockedDatabaseBlock(v11);
    if (v3)
    {
      CFRelease(v3);
    }

LABEL_9:
    if (v13[3])
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v13[3];
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Matching addresses (in order) are %@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFCA00();
  }

LABEL_14:
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t sub_1B7BE3220(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40))
  {
    v3 = result;
    result = CSDBSqliteDatabaseConnectionForReading();
    if (result)
    {
      result = CSDBSqliteConnectionStatementForSQL();
      if (result)
      {
        v4 = result;
        if (*(result + 8))
        {
          CSDBSqliteBindTextFromCFArrayOfCFStrings();
          if (sqlite3_step(*(v4 + 8)) == 100)
          {
            v5 = *MEMORY[0x1E695E480];
            v6 = MEMORY[0x1E695E9C0];
            do
            {
              if (sqlite3_column_text(*(v4 + 8), 1))
              {
                v7 = sqlite3_column_text(*(v4 + 8), 1);
                v8 = CFStringCreateWithCString(v5, v7, 0x8000100u);
                if (v8)
                {
                  v9 = v8;
                  v10 = *(*(*(v3 + 32) + 8) + 24);
                  if (!v10)
                  {
                    *(*(*(v3 + 32) + 8) + 24) = CFArrayCreateMutable(v5, 0, v6);
                    v10 = *(*(*(v3 + 32) + 8) + 24);
                  }

                  CFArrayAppendValue(v10, v9);
                  CFRelease(v9);
                }
              }
            }

            while (sqlite3_step(*(v4 + 8)) == 100);
          }

          return CSDBSqliteStatementReset();
        }
      }
    }
  }

  return result;
}

void sub_1B7BE3364(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string, v11);
          if (v12)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v12);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v34 = xmmword_1E7CBD0D8;
    v35 = *off_1E7CBD0E8;
    v36 = 3919;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728, v9);
    v13 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", v12, @"messageGUID", "CFArrayRef IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(NSString *, NSString *, NSError **)", v7, 3919, v10);
    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v13);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }
  }

  *&v34 = 0;
  *(&v34 + 1) = &v34;
  v35 = 0x2020000000uLL;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (a2)
    {
      v19 = v32;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1B7BE3750;
      v32[3] = &unk_1E7CBD108;
      v32[4] = a1;
      v32[5] = a2;
      v20 = &v33;
      v21 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE (associated_message_guid = ?) AND (handle_id IN (SELECT ROWID FROM handle where id = ?));";
    }

    else
    {
      v19 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1B7BE3894;
      v30[3] = &unk_1E7CB6F30;
      v30[4] = a1;
      v20 = &v31;
      v21 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ((associated_message_guid = ?) AND (is_from_me = 1));";
    }

    *v20 = &v34;
    _IMDPerformLockedStatementBlockWithQuery(v21, v19);
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7BE38FC;
    v29[3] = &unk_1E7CBD130;
    v29[4] = &v34;
    v29[5] = a3;
    __syncXPCIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(v29, a1, a2);
  }

  v22 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v26 = objc_msgSend_count(*(*(&v34 + 1) + 24), v23, v24, v25);
    *buf = 134218498;
    v38 = v26;
    v39 = 2112;
    v40 = a1;
    v41 = 2112;
    v42 = a2;
    _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Found %ld associated messages for messageGUID: %@, forSender: %@", buf, 0x20u);
  }

  v27 = *(*(&v34 + 1) + 24);
  _Block_object_dispose(&v34, 8);
  return v27;
}

__CFArray *sub_1B7BE3750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v9);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

__CFArray *sub_1B7BE37C4(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = 0;
      do
      {
        CFArrayGetValueAtIndex(a1, v5);
        ID = CSDBRecordGetID();
        v7 = IMDMessageRecordCreateFromRecordIDUnlocked(v3, ID);
        if (v7)
        {
          v8 = v7;
          CFArrayAppendValue(Mutable, v7);
          CFRelease(v8);
        }

        ++v5;
      }

      while (Count != v5);
    }
  }

  CFRelease(a1);
  return Mutable;
}

__CFArray *sub_1B7BE3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v9);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE38FC(uint64_t a1, xpc_object_t xdict)
{
  v21[1] = *MEMORY[0x1E69E9840];
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v5 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7BE3AC4;
    v19[3] = &unk_1E7CB8278;
    v19[4] = Mutable;
    result = xpc_array_apply(v5, v19);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  if (*(a1 + 40))
  {
    result = xpc_dictionary_get_int64(xdict, "error_code");
    if (result)
    {
      v7 = result;
      string = xpc_dictionary_get_string(xdict, "error_domain");
      result = xpc_dictionary_get_string(xdict, "error_description");
      if (string)
      {
        if (result)
        {
          v11 = result;
        }

        else
        {
          v11 = "";
        }

        v12 = MEMORY[0x1E696ABC0];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, string, v10);
        v20 = *MEMORY[0x1E696A578];
        v21[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, v11, v15);
        v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v21, &v20, 1);
        result = objc_msgSend_errorWithDomain_code_userInfo_(v12, v18, v13, v7, v17);
        **(a1 + 40) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1B7BE3AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit(int64_t a1, int64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v16 = a1;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    if (a2 == 4)
    {
      v5 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ck_sync_state == 0 AND TRIM(guid) <> '' AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite'))AND was_detonated == 0 AND schedule_type != 2 AND balloon_bundle_id == 'com.apple.messages.chatbot' ORDER BY date LIMIT ? ;";
    }

    else
    {
      v5 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ck_sync_state == 0 AND TRIM(guid) <> '' AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite'))AND was_detonated == 0 AND schedule_type != 2 AND (balloon_bundle_id IS NULL OR balloon_bundle_id != 'com.apple.messages.chatbot') ORDER BY date LIMIT ? ;";
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7BE3D6C;
    v10[3] = &unk_1E7CB7520;
    v10[4] = &v11;
    v10[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(v5, v10);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE3F1C;
    v9[3] = &unk_1E7CB6838;
    v9[4] = &v11;
    __syncXPCIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(v9, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1B7BE3D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = sub_1B7BE37C4(v9);
  v10 = *(*(*(a1 + 32) + 8) + 24);
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        Count = CFArrayGetCount(*(*(*(a1 + 32) + 8) + 24));
        v18 = 134217984;
        v19 = Count;
        v14 = "Number of results %ld";
        v15 = v12;
        v16 = 12;
LABEL_8:
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, v14, &v18, v16);
      }
    }
  }

  else if (v11)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v14 = "Number of results 0";
      v15 = v17;
      v16 = 2;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1B7BE3F1C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE3FE8;
    applier[3] = &unk_1E7CB8278;
    applier[4] = Mutable;
    result = xpc_array_apply(v4, applier);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  return result;
}

uint64_t sub_1B7BE3FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit(int64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v13 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE4260;
    v7[3] = &unk_1E7CB7948;
    v7[4] = &v8;
    v7[5] = a1;
    IMDRunSqlOperation(v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE49FC;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(v6, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL sub_1B7BE4260(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE432C;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE4338;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, thread_originator_guid, thread_originator_part FROM message where ck_sync_state == 8 AND (service == 'iMessage' OR service == 'SMS') order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE4338(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v32 = 0;
    v3 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x3052000000;
      v49 = sub_1B7AE1B30;
      v50 = sub_1B7AE25A0;
      v51 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3052000000;
      v43 = sub_1B7AE1B30;
      v44 = sub_1B7AE25A0;
      v45 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3052000000;
      v37 = sub_1B7AE1B30;
      v38 = sub_1B7AE25A0;
      v39 = 0;
      v4 = *(a1 + 40);
      v33[0] = v3;
      v33[1] = 3221225472;
      v33[2] = sub_1B7BE4848;
      v33[3] = &unk_1E7CBD158;
      v33[4] = &v52;
      v33[5] = &v46;
      v33[6] = &v40;
      v33[7] = &v34;
      IMDSqlOperationIterateRow(v4, v33);
      if (v53[3] && objc_msgSend_length(v47[5], v5, v6, v7) && objc_msgSend_length(v41[5], v8, v9, v10))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v12 = CFNumberCreate(allocator, kCFNumberLongLongType, v53 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v12);
          CFDictionarySetValue(Mutable, @"MID", v47[5]);
          CFDictionarySetValue(Mutable, @"TOID", v41[5]);
          if (objc_msgSend_length(v35[5], v13, v14, v15))
          {
            CFDictionarySetValue(Mutable, @"TOPart", v35[5]);
          }

          v16 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v53[3];
            v18 = v47[5];
            v19 = v41[5];
            v20 = v35[5];
            *buf = 134218754;
            v57 = v17;
            v58 = 2112;
            v59 = v18;
            v60 = 2112;
            v61 = v19;
            v62 = 2112;
            v63 = v20;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@ to update : originator GUID/part: %@/%@", buf, 0x2Au);
          }

          v21 = v32;
          if (!v32)
          {
            v21 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v32 = v21;
          CFArrayAppendValue(v21, Mutable);
          CFRelease(Mutable);
          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_18;
        }

        v29 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v47[5];
          *buf = 138412290;
          v57 = v30;
          v26 = v29;
          v27 = "Message Update v1 Query - unable to create row dictionary for messageId: %@, skipping!";
          v28 = 12;
          goto LABEL_17;
        }
      }

      else
      {
        v22 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v53[3];
          v24 = v47[5];
          v25 = v41[5];
          *buf = 134218498;
          v57 = v23;
          v58 = 2112;
          v59 = v24;
          v60 = 2112;
          v61 = v25;
          v26 = v22;
          v27 = "Message Update v1 query got invalid column data back: rowid %lld messageId:%@ threadOriginatorGUID:%@";
          v28 = 32;
LABEL_17:
          _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
        }
      }

LABEL_18:
      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v52, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  v32 = 0;
LABEL_23:
  *(*(*(a1 + 32) + 8) + 24) = v32;
  return result;
}

void sub_1B7BE47F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE4848(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[6];
      goto LABEL_13;
    }

    if (v4 == 3)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[7];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v4)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v9);
      return;
    }

    if (v4 == 1)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[5];
LABEL_13:
      *(*(v6 + 8) + 40) = v5;
      return;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a2 + 4);
      LODWORD(v9) = 67109120;
      DWORD1(v9) = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v1 with index %d", &v9, 8u);
    }
  }
}

uint64_t sub_1B7BE49FC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE4AC0;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE4AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit(int64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v13 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE4D30;
    v7[3] = &unk_1E7CB7948;
    v7[4] = &v8;
    v7[5] = a1;
    IMDRunSqlOperation(v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE55B0;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(v6, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL sub_1B7BE4D30(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE4DFC;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE4E08;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, syndication_ranges, synced_syndication_ranges FROM message where syndication_ranges is not null AND (synced_syndication_ranges is null or syndication_ranges != synced_syndication_ranges) AND (service == 'iMessage' OR service == 'SMS') order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE4E08(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v42 = 0;
    v4 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    *&v3 = 138412290;
    v40 = v3;
    while (1)
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x3052000000;
      v59 = sub_1B7AE1B30;
      v60 = sub_1B7AE25A0;
      v61 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3052000000;
      v53 = sub_1B7AE1B30;
      v54 = sub_1B7AE25A0;
      v55 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x3052000000;
      v47 = sub_1B7AE1B30;
      v48 = sub_1B7AE25A0;
      v49 = 0;
      v5 = *(a1 + 40);
      v43[0] = v4;
      v43[1] = 3221225472;
      v43[2] = sub_1B7BE53FC;
      v43[3] = &unk_1E7CBD158;
      v43[4] = &v62;
      v43[5] = &v56;
      v43[6] = &v50;
      v43[7] = &v44;
      IMDSqlOperationIterateRow(v5, v43);
      if (v63[3] && objc_msgSend_length(v57[5], v6, v7, v8) && objc_msgSend_length(v51[5], v9, v10, v11))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v13 = CFNumberCreate(allocator, kCFNumberLongLongType, v63 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v13);
          CFDictionarySetValue(Mutable, @"MID", v57[5]);
          if (objc_msgSend_length(v51[5], v14, v15, v16))
          {
            CFDictionarySetValue(Mutable, @"SR", v51[5]);
          }

          if (objc_msgSend_length(v45[5], v17, v18, v19, v40))
          {
            CFDictionarySetValue(Mutable, @"SSR", v45[5]);
          }

          v20 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v63[3];
            v22 = v57[5];
            v23 = v51[5];
            v24 = v45[5];
            *buf = 134218754;
            v67 = v21;
            v68 = 2112;
            v69 = v22;
            v70 = 2112;
            v71 = v23;
            v72 = 2112;
            v73 = v24;
            _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@ to update : originator GUID/part: %@/%@", buf, 0x2Au);
          }

          v25 = v42;
          if (!v42)
          {
            v25 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v42 = v25;
          CFArrayAppendValue(v25, Mutable);
          CFRelease(Mutable);
          if (v13)
          {
            CFRelease(v13);
          }

          v26 = v57[5];
          if (v26)
          {

            v57[5] = 0;
          }

          v27 = v51[5];
          if (v27)
          {

            v51[5] = 0;
          }

          v28 = v45[5];
          if (!v28)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v36 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v57[5];
            *buf = v40;
            v67 = v37;
            _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEFAULT, "Message Update v1 Query - unable to create row dictionary for messageId: %@, skipping!", buf, 0xCu);
          }

          v38 = v57[5];
          if (v38)
          {

            v57[5] = 0;
          }

          v39 = v51[5];
          if (v39)
          {

            v51[5] = 0;
          }

          v28 = v45[5];
          if (!v28)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v29 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v63[3];
          v31 = v57[5];
          v32 = v51[5];
          v33 = v45[5];
          *buf = 134218754;
          v67 = v30;
          v68 = 2112;
          v69 = v31;
          v70 = 2112;
          v71 = v32;
          v72 = 2112;
          v73 = v33;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_DEFAULT, "Message Update T2 query got invalid column data back: rowid %lld messageId:%@ syndicationRanges:%@ syncedSyndicationRanges:%@", buf, 0x2Au);
        }

        v34 = v57[5];
        if (v34)
        {

          v57[5] = 0;
        }

        v35 = v51[5];
        if (v35)
        {

          v51[5] = 0;
        }

        v28 = v45[5];
        if (!v28)
        {
          goto LABEL_31;
        }
      }

      v45[5] = 0;
LABEL_31:
      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(&v62, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_42;
      }
    }
  }

  v42 = 0;
LABEL_42:
  *(*(*(a1 + 32) + 8) + 24) = v42;
  return result;
}

void sub_1B7BE53A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE53FC(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[6];
      goto LABEL_13;
    }

    if (v4 == 3)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[7];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v4)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v9);
      return;
    }

    if (v4 == 1)
    {
      v9 = *a2;
      v10 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v9);
      v6 = a1[5];
LABEL_13:
      *(*(v6 + 8) + 40) = v5;
      return;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a2 + 4);
      LODWORD(v9) = 67109120;
      DWORD1(v9) = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v1 with index %d", &v9, 8u);
    }
  }
}

uint64_t sub_1B7BE55B0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE5674;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);
  if (v4)
  {
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit(int64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v13 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE58E8;
    v7[3] = &unk_1E7CB7948;
    v7[4] = &v8;
    v7[5] = a1;
    IMDRunSqlOperation(v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE603C;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(v6, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL sub_1B7BE58E8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE59B4;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE59C0;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, service FROM message where ck_sync_state == 9 AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite')) order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE59C0(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v29 = 0;
    v3 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x3052000000;
      v40 = sub_1B7AE1B30;
      v41 = sub_1B7AE25A0;
      v42 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3052000000;
      v34 = sub_1B7AE1B30;
      v35 = sub_1B7AE25A0;
      v36 = 0;
      v4 = *(a1 + 40);
      v30[0] = v3;
      v30[1] = 3221225472;
      v30[2] = sub_1B7BE5EB8;
      v30[3] = &unk_1E7CB86F8;
      v30[4] = &v43;
      v30[5] = &v37;
      v30[6] = &v31;
      IMDSqlOperationIterateRow(v4, v30);
      if (v44[3] && objc_msgSend_length(v38[5], v5, v6, v7) && objc_msgSend_length(v32[5], v8, v9, v10))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v12 = CFNumberCreate(allocator, kCFNumberLongLongType, v44 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v12);
          CFDictionarySetValue(Mutable, @"MID", v38[5]);
          CFDictionarySetValue(Mutable, @"service", v32[5]);
          v13 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v44[3];
            v15 = v38[5];
            v16 = v32[5];
            *buf = 134218498;
            v48 = v14;
            v49 = 2112;
            v50 = v15;
            v51 = 2112;
            v52 = v16;
            _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@/%@ to update", buf, 0x20u);
          }

          v17 = v29;
          if (!v29)
          {
            v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v29 = v17;
          CFArrayAppendValue(v17, Mutable);
          v18 = v38[5];
          if (v18)
          {
            CFRelease(v18);
            v38[5] = 0;
          }

          CFRelease(Mutable);
          if (v12)
          {
            CFRelease(v12);
          }

          v19 = v32[5];
          if (!v19)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v38[5];
            *buf = 138412290;
            v48 = v26;
            _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Message Update v3 Query - unable to create row dictionary for messageId: %@, skipping!", buf, 0xCu);
          }

          v27 = v38[5];
          if (v27)
          {
            CFRelease(v27);
            v38[5] = 0;
          }

          v19 = v32[5];
          if (!v19)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v20 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v44[3];
          v22 = v38[5];
          v23 = v32[5];
          *buf = 134218498;
          v48 = v21;
          v49 = 2112;
          v50 = v22;
          v51 = 2112;
          v52 = v23;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Message Update v3 query got invalid column data back: rowid %lld messageId:%@ service:%@", buf, 0x20u);
        }

        v24 = v38[5];
        if (v24)
        {
          CFRelease(v24);
          v38[5] = 0;
        }

        v19 = v32[5];
        if (!v19)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v19);
      v32[5] = 0;
LABEL_23:
      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v43, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_32;
      }
    }
  }

  v29 = 0;
LABEL_32:
  *(*(*(a1 + 32) + 8) + 24) = v29;
  return result;
}

void sub_1B7BE5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE5EB8(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 2)
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v9);
    v6 = a1[6];
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v9);
    v6 = a1[5];
LABEL_7:
    *(*(v6 + 8) + 40) = v5;
    return;
  }

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a2 + 4);
        LODWORD(v9) = 67109120;
        DWORD1(v9) = v8;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v3 with index %d", &v9, 8u);
      }
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v9);
  }
}

uint64_t sub_1B7BE603C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE6100;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE6100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);

  return 1;
}

void IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"update message set ck_sync_state=0,ck_record_id='',ck_record_change_tag='';update attachment set ck_sync_state=0, ck_server_change_token_blob='';update recoverable_message_part set ck_sync_state=0;", &unk_1F2FA1450);
    IMDSqlOperationExecuteQuery(v2, @"update message set synced_syndication_ranges=NULL where synced_syndication_ranges is not null;", &unk_1F2FA1470);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking all msgs as dirty.", v2, 2u);
      }
    }
  }
}

void sub_1B7BE62B4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync updated messages as dirty ", v2, 2u);
    }
  }
}

void sub_1B7BE6354(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDMarkMessageForT2UpdateSync updated messages with syndicationRanges as dirty for T2 update", v2, 2u);
    }
  }
}

uint64_t IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit(sqlite3_int64 a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_1B7AE1B30;
  v21 = sub_1B7AE25A0;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit is in IMDP with limit %lld", buf, 0xCu);
      }
    }

    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @" select * from sync_deleted_messages where LENGTH(recordID) > 0 limit ?;");
    IMDSqlStatementBindInt64(v25, a1);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v25);
      if (Row)
      {
        objc_msgSend_addObject_(v18[5], v3, Row, v4);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v16 = 0;
    IMDSqlOperationRelease(buf, &v16);
    if (v16)
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFCA78();
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit is in imagent with limit %lld", buf, 0xCu);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7BE6774;
    v15[3] = &unk_1E7CB6838;
    v15[4] = &v17;
    __syncXPCIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(v15, a1);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(v18[5], v8, v9, v10);
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Returned from DB call after loading messages to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);
  return v13;
}

void sub_1B7BE66E8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BE66A0);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7BE6774(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE6808;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE6808(uint64_t a1, int a2, xpc_object_t xdict)
{
  v5 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v8 = objc_msgSend_stringWithCString_encoding_(v5, v7, string, 4);
  v9 = MEMORY[0x1E696AEC0];
  v10 = xpc_dictionary_get_string(xdict, "recordID");
  v12 = objc_msgSend_stringWithCString_encoding_(v9, v11, v10, 4);
  v15 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v13, v8, v14, @"guid", v12, @"recordID", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v16, v15, v17);
  return 1;
}

void IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 138412546;
    *(v6 + 4) = a1;
    WORD2(v6[1]) = 2112;
    *(&v6[1] + 6) = a2;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to add message with guid (%@) and recordID (%@) to delete table", v6, 0x16u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v7, 0, sizeof(v7));
    memset(v6, 0, sizeof(v6));
    IMDSqlOperationInitWithSharedCSDBDatabase(v6);
    _IMDSqlOperationBeginQuery(v6, @" INSERT INTO sync_deleted_messages (guid, recordID) VALUES (?, ?);");
    IMDSqlStatementBindTextFromCFString(v7, a1);
    IMDSqlStatementBindTextFromCFString(v7, a2);
    IMDSqlOperationFinishQuery(v6);
    IMDSqlOperationRelease(v6, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(0, a1, a2);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 138412546;
    *(v6 + 4) = a1;
    WORD2(v6[1]) = 2112;
    *(&v6[1] + 6) = a2;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished adding message with guid (%@) and recordID (%@) to delete table", v6, 0x16u);
  }
}

void IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit(uint64_t a1)
{
  v1 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Request to add incompatible group photo to delete table", v3, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v3, 0, sizeof(v3));
    IMDSqlOperationInitWithSharedCSDBDatabase(v3);
    _IMDSqlOperationBeginQuery(v3, @" INSERT INTO sync_deleted_messages (guid, recordID) SELECT guid,ck_record_id FROM message WHERE item_type = 3 AND group_action_type != 0 AND length(ck_record_id) > 0;");
    IMDSqlOperationFinishQuery(v3);
    IMDSqlOperationRelease(v3, 0);
  }

  else
  {
    __syncXPCIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(0);
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished adding incompatible group photo to delete table", v3, 2u);
  }
}

void IMDMessageRecordDeleteTombStonedMessagesWithRecordIDs(const __CFArray *Count)
{
  if (!Count || !CFArrayGetCount(Count))
  {
    v4 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "IMDMessageRecordDeleteTombStonedMessagesWithGUIDs has no GUIDs to delete.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = CFArrayGetCount(Count);
    v3 = IMDCreateQueryRemoveMessagesFromTombStoneTableQuery(v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE6CC0;
    v9[3] = &unk_1E7CBD178;
    v9[4] = v3;
    v9[5] = Count;
    IMDRunSqlOperation(v9);
    CFRelease(v3);
    return;
  }

  __syncXPCIMDMessageRecordDeleteTombStonedMessagesForRecordIDs_IPCAction(0, Count);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Returned from DB call after deleting RecordIDs from Tombstone table";
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_1B7AD5000, v6, v7, v5, buf, 2u);
    }
  }
}

BOOL sub_1B7BE6CC0(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BE6D40;
  v6[3] = &unk_1E7CB75B0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return _IMDSqlOperationRunQuery(a2, v3, v6, 0);
}

void IMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit(sqlite3_int64 a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark message with ROWID %lld as ignore but needing sync", v4, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v5, 0, sizeof(v5));
    memset(v4, 0, sizeof(v4));
    IMDSqlOperationInitWithSharedCSDBDatabase(v4);
    _IMDSqlOperationBeginQuery(v4, @"update message set ck_sync_state = 2 where rowid=?");
    IMDSqlStatementBindInt64(v5, a1);
    IMDSqlOperationFinishQuery(v4);
    IMDSqlOperationRelease(v4, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finised marking message with ROWID %lld as ignore but needing sync", v4, 0xCu);
  }
}

void IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit(sqlite3_int64 a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark message with ROWID %lld as clean", v4, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v5, 0, sizeof(v5));
    memset(v4, 0, sizeof(v4));
    IMDSqlOperationInitWithSharedCSDBDatabase(v4);
    _IMDSqlOperationBeginQuery(v4, @"update message set ck_sync_state = 1 where rowid=?");
    IMDSqlStatementBindInt64(v5, a1);
    IMDSqlOperationFinishQuery(v4);
    IMDSqlOperationRelease(v4, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finised marking message with ROWID %lld as clean", v4, 0xCu);
  }
}

sqlite3_int64 _IMDColumnTotalCount(void *a1, const __CFString *a2)
{
  _IMDSqlOperationBeginQuery(a1, a2);
  v7 = 0uLL;
  v8 = 0;
  IMDSqlOperationColumnByIndex(a1, 0, &v7);
  v3 = 0;
  if (IMDSqlOperationHasRows(a1))
  {
    v5 = v7;
    v6 = v8;
    v3 = IMDInt64FromSqlColumn(&v5);
  }

  IMDSqlOperationFinishQuery(a1);
  return v3;
}

id sub_1B7BE7084(void *a1, const __CFString *a2)
{
  _IMDSqlOperationBeginQuery(a1, a2);
  v23 = 0uLL;
  v24 = 0;
  IMDSqlOperationColumnByIndex(a1, 0, &v23);
  v21 = 0uLL;
  v22 = 0;
  IMDSqlOperationColumnByIndex(a1, 1, &v21);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = 0;
  if (IMDSqlOperationHasRows(a1))
  {
    v6 = 0;
    do
    {
      v19 = v23;
      v20 = v24;
      v7 = IMDInt64FromSqlColumn(&v19);
      v19 = v21;
      v20 = v22;
      v8 = IMDInt64FromSqlColumn(&v19);
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Status %ld", v10, v7);
      v14 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v8, v13);
      objc_msgSend_setObject_forKey_(v3, v15, v14, v11);
      v6 += v8;
    }

    while (IMDSqlOperationHasRows(a1));
  }

  v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v4, v6, v5);
  objc_msgSend_setObject_forKey_(v3, v17, v16, @"total");
  IMDSqlOperationFinishQuery(a1);
  return v3;
}

void IMDMessageRecordCalculateLocalCloudKitStatisticsAsync(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4);
  v41[3] = v5;
  v36 = 0;
  v37 = &v36;
  v38 = 0xD010000000;
  v39 = "";
  memset(v40, 0, sizeof(v40));
  IMDSqlOperationInitWithSharedCSDBDatabase(v40);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = sub_1B7AE1B30;
  v34 = sub_1B7AE25A0;
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  IMDSqlOperationBeginTransaction(v37 + 4);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_1B7AE1B30;
  v28 = sub_1B7AE25A0;
  v9 = objc_msgSend_allKeys(&unk_1F2FCA3C8, v6, v7, v8);
  v29 = objc_msgSend_mutableCopy(v9, v10, v11, v12);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_1B7BE749C;
  v22 = sub_1B7BE74AC;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BE74B8;
  v17[3] = &unk_1E7CBD1F0;
  v17[6] = &v24;
  v17[7] = &v36;
  v17[8] = &v30;
  v17[9] = &v18;
  v17[4] = &unk_1F2FCA3C8;
  v17[5] = a1;
  v17[10] = v41;
  v16 = objc_msgSend_copy(v17, v13, v14, v15);
  v19[5] = v16;
  (*(v16 + 16))();

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v41, 8);
}

void sub_1B7BE7430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE74B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v258[19] = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_firstObject(*(*(*(a1 + 48) + 8) + 40), a2, a3, a4);
  objc_msgSend_removeObjectAtIndex_(*(*(*(a1 + 48) + 8) + 40), v6, 0, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, Object, v9);
  if (v10)
  {
    v14 = sub_1B7BE7084((*(*(a1 + 56) + 8) + 32), v10);
    if (v14)
    {
      objc_msgSend_setObject_forKey_(*(*(*(a1 + 64) + 8) + 40), v11, v14, Object);
    }
  }

  if (objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v11, v12, v13))
  {
    v15 = *(*(*(a1 + 48) + 8) + 40);
    v16 = *(*(*(a1 + 64) + 8) + 40);
    v17 = *(*(*(a1 + 72) + 8) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BE7D74;
    block[3] = &unk_1E7CBD1A0;
    v18 = *(a1 + 48);
    v19 = *(a1 + 64);
    block[4] = *(a1 + 72);
    block[5] = v18;
    block[6] = v19;
    IMDPersistencePerformBlock(block, 0, v20, v21);
  }

  else
  {
    v245 = 0;
    IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 56) + 8) + 32));
    IMDSqlOperationRelease(*(*(a1 + 56) + 8) + 32, &v245);
    if (v245)
    {
      v25 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = objc_msgSend_localizedDescription(v245, v26, v27, v28);
        *buf = 138412290;
        v248 = *&v29;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics failed with error: %@", buf, 0xCu);
      }

      v30 = *(a1 + 40);
      if (v30)
      {
        (*(v30 + 16))(v30, 0);
      }
    }

    else
    {
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v22, v23, v24);
      v32 = v31;
      v241 = 0;
      v242 = &v241;
      v243 = 0x2020000000;
      v244 = 0;
      v237 = 0;
      v238 = &v237;
      v239 = 0x2020000000;
      v240 = 0;
      v33 = *(*(*(a1 + 64) + 8) + 40);
      v236[0] = MEMORY[0x1E69E9820];
      v236[1] = 3221225472;
      v236[2] = sub_1B7BE7DE8;
      v236[3] = &unk_1E7CBD1C8;
      v236[4] = &v241;
      v236[5] = &v237;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v33, v34, v236, v35);
      v257[0] = @"chatStats";
      v258[0] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v36, @"chat", v37);
      v257[1] = @"msgStats";
      v258[1] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v38, @"msg", v39);
      v257[2] = @"attStats";
      v258[2] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v40, @"att", v41);
      v257[3] = *MEMORY[0x1E69A6E78];
      v42 = MEMORY[0x1E696AD98];
      v45 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v43, @"chat", v44);
      v48 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"total", v47);
      v52 = objc_msgSend_longLongValue(v48, v49, v50, v51);
      v258[3] = objc_msgSend_numberWithLongLong_(v42, v53, v52, v54);
      v257[4] = *MEMORY[0x1E69A6E58];
      v55 = MEMORY[0x1E696AD98];
      v58 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v56, @"chat", v57);
      v61 = objc_msgSend_objectForKeyedSubscript_(v58, v59, @"Status 1", v60);
      v65 = objc_msgSend_longLongValue(v61, v62, v63, v64);
      v258[4] = objc_msgSend_numberWithLongLong_(v55, v66, v65, v67);
      v257[5] = *MEMORY[0x1E69A6E28];
      v68 = MEMORY[0x1E696AD98];
      v71 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v69, @"delChat", v70);
      v74 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"total", v73);
      v78 = objc_msgSend_longLongValue(v74, v75, v76, v77);
      v258[5] = objc_msgSend_numberWithLongLong_(v68, v79, v78, v80);
      v257[6] = *MEMORY[0x1E69A6E88];
      v81 = MEMORY[0x1E696AD98];
      v84 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v82, @"msg", v83);
      v87 = objc_msgSend_objectForKeyedSubscript_(v84, v85, @"total", v86);
      v91 = objc_msgSend_longLongValue(v87, v88, v89, v90);
      v258[6] = objc_msgSend_numberWithLongLong_(v81, v92, v91, v93);
      v257[7] = *MEMORY[0x1E69A6E60];
      v94 = MEMORY[0x1E696AD98];
      v97 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v95, @"msg", v96);
      v100 = objc_msgSend_objectForKeyedSubscript_(v97, v98, @"Status 1", v99);
      v104 = objc_msgSend_longLongValue(v100, v101, v102, v103);
      v258[7] = objc_msgSend_numberWithLongLong_(v94, v105, v104, v106);
      v257[8] = *MEMORY[0x1E69A6E30];
      v107 = MEMORY[0x1E696AD98];
      v110 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v108, @"delMsg", v109);
      v113 = objc_msgSend_objectForKeyedSubscript_(v110, v111, @"total", v112);
      v117 = objc_msgSend_longLongValue(v113, v114, v115, v116);
      v258[8] = objc_msgSend_numberWithLongLong_(v107, v118, v117, v119);
      v257[9] = *MEMORY[0x1E69A6E70];
      v120 = MEMORY[0x1E696AD98];
      v123 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v121, @"att", v122);
      v126 = objc_msgSend_objectForKeyedSubscript_(v123, v124, @"total", v125);
      v130 = objc_msgSend_longLongValue(v126, v127, v128, v129);
      v258[9] = objc_msgSend_numberWithLongLong_(v120, v131, v130, v132);
      v257[10] = *MEMORY[0x1E69A6E50];
      v133 = MEMORY[0x1E696AD98];
      v136 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v134, @"att", v135);
      v139 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"Status 1", v138);
      v143 = objc_msgSend_longLongValue(v139, v140, v141, v142);
      v258[10] = objc_msgSend_numberWithLongLong_(v133, v144, v143, v145);
      v257[11] = *MEMORY[0x1E69A6E20];
      v146 = MEMORY[0x1E696AD98];
      v149 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v147, @"delAtt", v148);
      v152 = objc_msgSend_objectForKeyedSubscript_(v149, v150, @"Status 1", v151);
      v156 = objc_msgSend_longLongValue(v152, v153, v154, v155);
      v258[11] = objc_msgSend_numberWithLongLong_(v146, v157, v156, v158);
      v257[12] = *MEMORY[0x1E69A6E90];
      v159 = MEMORY[0x1E696AD98];
      v162 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v160, @"recovMsg", v161);
      v165 = objc_msgSend_objectForKeyedSubscript_(v162, v163, @"total", v164);
      v169 = objc_msgSend_longLongValue(v165, v166, v167, v168);
      v258[12] = objc_msgSend_numberWithLongLong_(v159, v170, v169, v171);
      v257[13] = *MEMORY[0x1E69A6E68];
      v172 = MEMORY[0x1E696AD98];
      v175 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v173, @"recovMsg", v174);
      v178 = objc_msgSend_objectForKeyedSubscript_(v175, v176, @"Status 1", v177);
      v182 = objc_msgSend_longLongValue(v178, v179, v180, v181);
      v258[13] = objc_msgSend_numberWithLongLong_(v172, v183, v182, v184);
      v257[14] = *MEMORY[0x1E69A6E38];
      v185 = MEMORY[0x1E696AD98];
      v188 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v186, @"delRecovMsg", v187);
      v191 = objc_msgSend_objectForKeyedSubscript_(v188, v189, @"total", v190);
      v195 = objc_msgSend_longLongValue(v191, v192, v193, v194);
      v258[14] = objc_msgSend_numberWithLongLong_(v185, v196, v195, v197);
      v257[15] = *MEMORY[0x1E69A6E40];
      v198 = MEMORY[0x1E696AD98];
      v201 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v199, @"updT1", v200);
      v204 = objc_msgSend_objectForKeyedSubscript_(v201, v202, @"total", v203);
      v208 = objc_msgSend_longLongValue(v204, v205, v206, v207);
      v258[15] = objc_msgSend_numberWithLongLong_(v198, v209, v208, v210);
      v257[16] = *MEMORY[0x1E69A6E48];
      v211 = MEMORY[0x1E696AD98];
      v214 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v212, @"updT2", v213);
      v217 = objc_msgSend_objectForKeyedSubscript_(v214, v215, @"total", v216);
      v221 = objc_msgSend_longLongValue(v217, v218, v219, v220);
      v258[16] = objc_msgSend_numberWithLongLong_(v211, v222, v221, v223);
      v257[17] = *MEMORY[0x1E69A6E18];
      v258[17] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v224, v238[3], v225);
      v257[18] = *MEMORY[0x1E69A6E80];
      v258[18] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v226, v242[3], v227);
      v229 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v228, v258, v257, 19);
      v230 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
      {
        v231 = v32 - *(*(*(a1 + 80) + 8) + 24);
        v232 = v238[3];
        v233 = v242[3];
        v234 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 134219010;
        v248 = v231;
        v249 = 2048;
        v250 = v232;
        v251 = 2048;
        v252 = v233;
        v253 = 2048;
        v254 = v233 - v232;
        v255 = 2112;
        v256 = v234;
        _os_log_impl(&dword_1B7AD5000, v230, OS_LOG_TYPE_INFO, "Calculated sync stats in %f seconds. All Records: %lld of %lld, %lld remaining. All Stats: %@", buf, 0x34u);
      }

      v235 = *(a1 + 40);
      if (v235)
      {
        (*(v235 + 16))(v235, v229);
      }

      _Block_object_dispose(&v237, 8);
      _Block_object_dispose(&v241, 8);
    }
  }
}

void sub_1B7BE7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE7D74(void *a1)
{
  (*(*(*(a1[4] + 8) + 40) + 16))();

  v2 = *(*(a1[4] + 8) + 40);
}

uint64_t sub_1B7BE7DE8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_objectForKey_(a3, a2, @"total", a4);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_longLongValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectForKey_(a3, v10, @"Status 1", v11);
  result = objc_msgSend_longLongValue(v12, v13, v14, v15);
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

id IMDMessageRecordCalculateLocalCloudKitStatistics()
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1B7AE1B30;
  v14 = sub_1B7AE25A0;
  v15 = 0;
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE7FEC;
    v9[3] = &unk_1E7CB6838;
    v9[4] = &v10;
    __syncXPCIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(v9);
  }

  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v4 = objc_msgSend_description(v11[5], v1, v2, v3);
    v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"\n", &stru_1F2FA9728);
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics loaded stats: %@", buf, 0xCu);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B7BE7FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE7FEC(uint64_t a1, xpc_object_t xdict)
{
  if (xpc_dictionary_get_value(xdict, "dictionary_result"))
  {
    *(*(*(a1 + 32) + 8) + 40) = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Expected dictionary of cloudkit stats is nil 2", v4, 2u);
    }
  }
}

BOOL sub_1B7BE8088(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"UPDATE %@ SET ck_sync_state = 0;", a4, a2);
  if (!IMDSqlOperationExecuteQuery(a1, v7, 0))
  {
    return 0;
  }

  v36 = 0;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"SELECT ROWID from %@ LIMIT %lld", v9, a2, a3);
  RowsForQuery = _IMDSqlOperationGetRowsForQuery(v10, &v36);
  v13 = RowsForQuery;
  if (v36)
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v36;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "_IMDMessageRecordSetSyncCountOnTable got error: %@", buf, 0xCu);
    }

    return 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowsForQuery, v12, &v32, v37, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v33;
LABEL_10:
    v22 = 0;
    while (1)
    {
      if (*v33 != v21)
      {
        objc_enumerationMutation(v13);
      }

      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_msgSend_objectForKey_(*(*(&v32 + 1) + 8 * v22), v18, @"ROWID", v19);
      v28 = objc_msgSend_longLongValue(v24, v25, v26, v27);
      v31 = objc_msgSend_stringWithFormat_(v23, v29, @"UPDATE %@ SET ck_sync_state = 1 WHERE ROWID = %lld;", v30, a2, v28);
      v15 = IMDSqlOperationExecuteQuery(a1, v31, 0);
      if (!v15)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v32, v37, 16);
        if (v20)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  else
  {

    return 1;
  }

  return v15;
}

void _IMDMessageRecordSetCloudKitSyncCounts(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = objc_msgSend_description(a1, v3, v4, v5);
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v7, @"\n", &stru_1F2FA9728);
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Write cloudkit sync counts: %@", buf, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v10 = objc_msgSend_objectForKey_(a1, v8, *MEMORY[0x1E69A6E60], v9);
    v14 = objc_msgSend_longLongValue(v10, v11, v12, v13);
    v17 = objc_msgSend_objectForKey_(a1, v15, *MEMORY[0x1E69A6E58], v16);
    v21 = objc_msgSend_longLongValue(v17, v18, v19, v20);
    v24 = objc_msgSend_objectForKey_(a1, v22, *MEMORY[0x1E69A6E50], v23);
    v28 = objc_msgSend_longLongValue(v24, v25, v26, v27);
    v29 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 134218496;
      *(buf + 4) = v14;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v21;
      WORD3(buf[1]) = 2048;
      *(&buf[1] + 1) = v28;
      _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "setting new stats: messageSyncCount: %lld, chatSyncCount: %lld, attachmentCount: %lld", buf, 0x20u);
    }

    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationBeginTransaction(buf);
    sub_1B7BE8088(buf, @"message", v14, v30);
    sub_1B7BE8088(buf, @"chat", v21, v31);
    sub_1B7BE8088(buf, @"attachment", v28, v32);
    IMDSqlOperationCommitOrRevertTransaction(buf);
    v44 = 0;
    IMDSqlOperationRelease(buf, &v44);
    if (v44)
    {
      v33 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFCAF0(&v44, v33, v34, v35);
      }
    }

    v36 = IMDMessageRecordCalculateLocalCloudKitStatistics();
    v37 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v41 = objc_msgSend_description(v36, v38, v39, v40);
      v43 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v41, v42, @"\n", &stru_1F2FA9728);
      *v45 = 138412290;
      v46 = v43;
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "new stats: %@", v45, 0xCu);
    }
  }

  else
  {
    __syncXPCIMDMessageRecordSetCloudKitSyncCounts_IPCAction(0);
  }
}

uint64_t IMDMessageRecordCopyMessagesWithReplyToGUIDs(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_length(a1, a2, a3, a4))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1B7BE86A0;
      v9[3] = &unk_1E7CB6F30;
      v9[4] = a1;
      v9[5] = &v10;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE reply_to_guid = ?;", v9);
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1B7BE8708;
      v8[3] = &unk_1E7CB6838;
      v8[4] = &v10;
      __syncXPCIMDMessageRecordCopyMessagesWithReplyToGUIDs_IPCAction(v8, a1);
    }

    v6 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCB74();
    }

    return 0;
  }

  return v6;
}

__CFArray *sub_1B7BE86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v9);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE8708(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE87D4;
    applier[3] = &unk_1E7CB8278;
    applier[4] = Mutable;
    result = xpc_array_apply(v4, applier);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  return result;
}

uint64_t sub_1B7BE87D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1B7BE881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v16 = a2;
    v17 = 2112;
    v18 = a3;
    v19 = 2112;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2112;
    v24 = a6;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Performing threaded history query ref msg: %@ originator guid: %@ part: %@ limit: %llu results: %@", buf, 0x34u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BE8964;
  v14[3] = &unk_1E7CBD238;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a2;
  v14[9] = a5;
  v14[4] = a6;
  v14[5] = a1;
  return IMDRunSqlOperation(v14);
}

BOOL sub_1B7BE8964(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCBB0(v4, v5, v6, v7);
    }
  }

  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BE8A74;
  v12[3] = &unk_1E7CBD210;
  v12[4] = a2;
  v13 = *(a1 + 48);
  v9 = *(a1 + 72);
  v14 = *(a1 + 64);
  v15 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BE8ADC;
  v11[3] = &unk_1E7CB6FD0;
  v11[4] = *(a1 + 32);
  v11[5] = a2;
  return _IMDSqlOperationRunQuery(a2, v8, v12, v11);
}

void sub_1B7BE8A74(uint64_t a1)
{
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 40));
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 48));
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 56));
  v2 = *(a1 + 64);
  v3 = (*(a1 + 32) + 32);

  IMDSqlStatementBindInt(v3, v2);
}

BOOL sub_1B7BE8ADC(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7BE8B88;
      v5[3] = &unk_1E7CB6FA8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B7BE8B88(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  v3 = IMDInt64FromSqlColumn(&v11);
  v4 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, v3, v6);
  return objc_msgSend_addObject_(v4, v8, v7, v9);
}

BOOL sub_1B7BE8BE8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE8CB4;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE8CC0;
  v4[3] = &unk_1E7CB6FD0;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT   m.ROWID FROM   message m INNER JOIN  chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.associated_message_guid = ?  AND m.thread_originator_guid IS NULL", v5, v4);
}

BOOL sub_1B7BE8CC0(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7BE8D6C;
      v5[3] = &unk_1E7CB6FA8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B7BE8D6C(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  v3 = IMDInt64FromSqlColumn(&v11);
  v4 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, v3, v6);
  return objc_msgSend_addObject_(v4, v8, v7, v9);
}

uint64_t sub_1B7BE8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  v5 = CSDBSqliteBindInt();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE8E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v4 = CSDBSqliteConnectionStatementForSQL();
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 8))
      {
        CSDBSqliteBindTextFromCFString();
        if (sqlite3_step(*(v5 + 8)) == 100)
        {
          v6 = *MEMORY[0x1E695E480];
          do
          {
            if (sqlite3_column_text(*(v5 + 8), 0))
            {
              v7 = sqlite3_column_text(*(v5 + 8), 0);
              v8 = CFStringCreateWithCString(v6, v7, 0x8000100u);
              if (v8)
              {
                v9 = v8;
                CFArrayAppendValue(*(a1 + 40), v8);
                CFRelease(v9);
              }
            }
          }

          while (sqlite3_step(*(v5 + 8)) == 100);
        }

        CSDBSqliteStatementReset();
      }
    }

    CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  CFRelease(@"SELECT   m.guid FROM   message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_from_me = 0   AND m.is_played = 0   AND m.is_audio_message = 1   AND c.guid = ? ORDER BY m.ROWID ASC");
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void sub_1B7BE8F64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = IMDGenerateInClauseForCount(*(a1 + 48), a2, a3, a4);
  v7 = CFStringCreateWithFormat(v5, 0, @"SELECT   message_id FROM chat_recoverable_message_join WHERE message_id in (SELECT rowid FROM message INDEXED BY message_idx_isRead_isFromMe_itemType  WHERE (is_read == 0     AND is_finished == 1     AND is_from_me == 0     AND item_type == 0     AND is_system_message == 0)) AND chat_id %@", v6);
  if (v7)
  {
    v8 = v7;
    if (CSDBSqliteDatabaseConnectionForReading())
    {
      v9 = CSDBSqliteConnectionStatementForSQL();
      if (v9)
      {
        v11 = v9;
        if (*(v9 + 8))
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v12 = *(a1 + 32);
          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v10, &v27, v31, 16);
          if (v13)
          {
            v17 = v13;
            v18 = *v28;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v12);
                }

                objc_msgSend_integerValue(*(*(&v27 + 1) + 8 * i), v14, v15, v16);
                CSDBSqliteBindInt64();
              }

              v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v27, v31, 16);
            }

            while (v17);
          }

          while (sqlite3_step(*(v11 + 8)) == 100)
          {
            v20 = sqlite3_column_int64(*(v11 + 8), 0);
            if (v20 != -1)
            {
              v23 = *(a1 + 40);
              v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, v20, v22);
              objc_msgSend_addObject_(v23, v25, v24, v26);
            }
          }

          CSDBSqliteStatementReset();
        }
      }

      CSDBSqliteDatabaseReleaseSqliteConnection();
    }

    CFRelease(v8);
  }
}

uint64_t sub_1B7BE9134(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = CSDBSqliteDatabaseStatementForWriting();
  if (v4 && *(v4 + 8))
  {
    v8 = a1[6];
    if (!v8)
    {
      v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6, v7);
    }

    objc_msgSend___im_nanosecondTimeInterval(v8, v5, v6, v7);
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
    *(*(a1[4] + 8) + 24) = 1;
  }

  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t sub_1B7BE91E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + 24) = a3;
  *(a2 + 28) = 2112;
  *(a2 + 30) = result;
  return result;
}

void sub_1B7BE91FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void *IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup(CFArrayRef *a1, void *a2, char a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v429 = 0;
  v430 = 0;
  v427 = 0;
  v428 = 0;
  v425 = 0;
  v426 = 0;
  v423 = 0;
  v424 = 0;
  v421 = 0;
  v422 = 0;
  v419 = 0;
  v420 = 0;
  v417 = 0;
  v418 = 0;
  v415 = 0;
  v416 = 0;
  v414 = 0;
  v412 = 0;
  v413 = 0;
  v410 = 0;
  v411 = 0;
  v409 = 0;
  v408 = 0;
  v407 = 0;
  v406 = 0;
  v405 = 0;
  v404 = 0;
  v403 = 0;
  v402 = 0;
  v401 = 0;
  v400 = 0;
  v399 = 0;
  v398 = 0;
  v397 = 0;
  v396 = 0;
  v395 = 0;
  v394 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  IMDMessageRecordBulkCopy(a1, &v421, &v426, &v425, &v412, &v429, &v430, &v428, &v427, &v411, &v410, &v409, &v408, &v407, &v406, &v422, &v405, &v423, &v424, &v414 + 1, &v414, &v413, &v420, &v404, &v419, &v418, &v417, &v416, &v415, &v403, &v402, &v400, &v399, &v398, &v397, &v396, &v395, &v394, &v393, &v392, &v391, &v390, &v389, &v388, &v387, &v386, &v385, &v384, &v383, &v382, &v381, &v380, &v379, &v378, &v377, &v376, &v375);
  v361 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v10, v426, v11);
  v360 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v425, v13);
  v351 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v14, v424, v15);
  v359 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v423, v17);
  ThreadIdentifierWithComponents = 0;
  v22 = v388;
  if (v387)
  {
    v18 = v386;
    if (v386)
    {
      ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
    }
  }

  if (v429)
  {
    v353 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v429);
  }

  else
  {
    v353 = 0;
  }

  if (v430)
  {
    v362 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v430);
  }

  else
  {
    v362 = 0;
  }

  if (v428)
  {
    v358 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v428);
  }

  else
  {
    v358 = 0;
  }

  if (v427)
  {
    v357 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v427);
  }

  else
  {
    v357 = 0;
  }

  if (v396)
  {
    v356 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v396);
  }

  else
  {
    v356 = 0;
  }

  if (v382)
  {
    v352 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v382);
  }

  else
  {
    v352 = 0;
  }

  if (v381)
  {
    v355 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v19, v20, v381);
    if (!a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v355 = 0;
    if (!a2)
    {
LABEL_29:
      if (v422 >= 1 && (v24 = IMDMessageRecordCopyHandle(a1, v18, v19, v20)) != 0)
      {
        v25 = *MEMORY[0x1E695E480];
        v367 = IMDHandleRecordCopyID(*MEMORY[0x1E695E480], v24);
        v23 = IMDHandleRecordCopyUncanonicalizedID(v25, v24);
        v363 = IMDHandleRecordCopyCountry(v25, v24);
        CFRelease(v24);
      }

      else
      {
        v363 = 0;
        v23 = 0;
        v367 = 0;
      }

      goto LABEL_33;
    }
  }

  if (v421 == 3)
  {
    goto LABEL_29;
  }

  v367 = a2;
  v363 = 0;
  v23 = 0;
LABEL_33:
  if (v420 >= 1 && (v26 = IMDMessageRecordCopyOtherHandle(a1, v18, v19, v20)) != 0)
  {
    v27 = *MEMORY[0x1E695E480];
    v366 = IMDHandleRecordCopyID(*MEMORY[0x1E695E480], v26);
    v365 = IMDHandleRecordCopyUncanonicalizedID(v27, v26);
    v364 = IMDHandleRecordCopyCountry(v27, v26);
    CFRelease(v26);
  }

  else
  {
    v364 = 0;
    v365 = 0;
    v366 = 0;
  }

  if (v424 == 1 && (v28 = objc_msgSend_componentsSeparatedByString_(v413, v18, @",", v20), objc_msgSend_count(v28, v29, v30, v31)))
  {
    v354 = objc_msgSend_objectAtIndex_(v28, v18, 0, v20);
  }

  else
  {
    v354 = 0;
  }

  if (v413)
  {
    CFRelease(v413);
    v413 = 0;
  }

  if (a4 && (HIBYTE(v414) || (a3 & 1) == 0) && (v32 = IMDMessageRecordCopyAttachments(a1), (v33 = v32) != 0))
  {
    if (CFArrayGetCount(v32) < 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v35 = 0;
      v36 = *MEMORY[0x1E695E480];
      while (v35 < CFArrayGetCount(v33))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v33, v35);
        v40 = IMDAttachmentRecordCopyGUID(v36, ValueAtIndex);
        if (v40)
        {
          objc_msgSend_addObject_(v34, v38, v40, v39);
          CFRelease(v40);
        }

        ++v35;
      }
    }

    CFRelease(v33);
  }

  else
  {
    v34 = 0;
  }

  v41 = v408;
  if (a5)
  {
    v42 = (*(a5 + 16))(a5, v406, v407, v408);
    if (v42)
    {
      v43 = v42;

      v407 = objc_msgSend_loginID(v43, v44, v45, v46);
      v406 = objc_msgSend_accountID(v43, v47, v48, v49);
    }
  }

  timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = 0;
  if (v421 <= 3)
  {
    v52 = v22;
    if (v421 > 1)
    {
      if (v421 == 2)
      {
        v106 = objc_alloc(MEMORY[0x1E69A80A0]);
        v51 = v353;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v106, v107, v367, v353, v412, 2);
        v53 = v359;
        if (v395)
        {
          v66 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v108, v395, v109);
        }

        else
        {
          v66 = 0;
        }

        objc_msgSend_setTitle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v108, v404, v109);
      }

      else
      {
        v53 = v359;
        v51 = v353;
        v62 = objc_alloc(MEMORY[0x1E69A8098]);
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v62, v63, v367, v353, v412, 3);
        if (v395)
        {
          v66 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v64, v395, v65);
        }

        else
        {
          v66 = 0;
        }

        objc_msgSend_setActionType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v64, v419, v65);
      }

      objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v180, v23, v181);
      v55 = v363;
      objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v201, v363, v202);
      objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v203, v366, v204);
      objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v205, v365, v206);
      objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v207, v364, v208);
      objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v209, v41, v210);
      objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v211, v407, v212);
      objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v213, v406, v214);
      objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v215, v426, v216);
      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v217, v390, v218);
      objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v219, v389, v220);
      objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v221, v52, v222);
      v226 = objc_msgSend_unsignedIntValue(v53, v223, v224, v225);
      objc_msgSend_setErrorCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v227, v226, v228);
      v229 = v66;
      v54 = v23;
      objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v230, v229, v231);
    }

    else if (v421)
    {
      v53 = v359;
      v51 = v353;
      v54 = v23;
      v55 = v363;
      if (v421 == 1)
      {
        v57 = objc_alloc(MEMORY[0x1E69A81B8]);
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v57, v58, v367, v353, v412, 1);
        if (v395)
        {
          v61 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v59, v395, v60);
        }

        else
        {
          v61 = 0;
        }

        objc_msgSend_setChangeType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v59, v419, v60);
        objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v145, v23, v146);
        v55 = v363;
        objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v147, v363, v148);
        objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v149, v366, v150);
        objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v151, v365, v152);
        objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v153, v364, v154);
        objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v155, v41, v156);
        objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v157, v407, v158);
        objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v159, v406, v160);
        objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v161, v426, v162);
        objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v163, v390, v164);
        objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v165, v389, v166);
        objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v167, v52, v168);
        v172 = objc_msgSend_unsignedIntValue(v359, v169, v170, v171);
        objc_msgSend_setErrorCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v173, v172, v174);
        v175 = v61;
        v54 = v23;
        objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v176, v175, v177);
        objc_msgSend_setTimeRead_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v178, v362, v179);
      }
    }

    else
    {
      v97 = objc_autoreleasePoolPush();
      v101 = objc_msgSend_unsignedLongLongValue(v409, v98, v99, v100);
      v104 = 0;
      if ((v101 & 4) == 0 && v367)
      {
        v104 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v102, v367, *MEMORY[0x1E69A6310]);
      }

      v349 = v104;
      if (v395)
      {
        v105 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v102, v395, v103);
      }

      else
      {
        v105 = 0;
      }

      v346 = v105;
      v347 = v97;
      v348 = v22;
      v350 = ThreadIdentifierWithComponents;
      if (v403)
      {
        v342 = objc_alloc(MEMORY[0x1E69A7EF0]);
        v344 = v405;
        v340 = v410;
        v185 = objc_msgSend_unsignedLongLongValue(v409, v182, v183, v184);
        v336 = v412;
        v338 = v185;
        v334 = objc_msgSend_longLongValue(v361, v186, v187, v188);
        v189 = v407;
        v190 = v406;
        v191 = v416;
        v192 = v399;
        v193 = v398;
        v194 = v397;
        LODWORD(v326) = objc_msgSend_unsignedIntValue(v359, v195, v196, v197);
        v325 = v194;
        v324 = v190;
        ThreadIdentifierWithComponents = v350;
        v51 = v353;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v342, v198, v349, v353, v362, v358, v357, v344, 0, v340, 0, v34, v338, v336, v334, v189, v324, v41, v367, v354, v23, v363, v191, v192, v193, v325, v356, v326, v403, v402, v400, v401, v378, 0, 0, v380, v346, v383, v350, v355, v377, v376, v375);
        v52 = v348;
      }

      else
      {
        v343 = objc_alloc(MEMORY[0x1E69A8138]);
        v345 = v405;
        v341 = v410;
        v235 = objc_msgSend_unsignedLongLongValue(v409, v232, v233, v234);
        v337 = v412;
        v339 = v235;
        v239 = objc_msgSend_longLongValue(v361, v236, v237, v238);
        v333 = v407;
        v335 = v239;
        v331 = v416;
        v332 = v406;
        v329 = v398;
        v330 = v399;
        v240 = v397;
        v241 = v380;
        v245 = objc_msgSend_unsignedIntValue(v359, v242, v243, v244);
        v248 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v246, v385, v247);
        v251 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v249, v384, v250);
        LODWORD(v328) = v245;
        v327 = v241;
        ThreadIdentifierWithComponents = v350;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_bizIntent_locale_biaReferenceID_errorType_threadIdentifier_syndicationRanges_syncedSyndicationRanges_partCount_dateEdited_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v343, v252, v349, v353, v362, v358, v357, v345, 0, v341, 0, v34, v339, v337, v335, v333, v332, v41, v367, v354, v23, v363, v331, v330, v329, v240, v356, 0, 0, v327, v328, v350, v248, v251, v383, v352, v355, v377, v376, v375);
        if (objc_msgSend_isReply(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v253, v254, v255))
        {
          v369 = 0;
          v370 = &v369;
          v371 = 0x3052000000;
          v372 = sub_1B7AE1B40;
          v373 = sub_1B7AE25AC;
          v374 = 0;
          v257 = objc_msgSend_synchronousDatabase(IMDDatabase, v199, v256, v200);
          v368[0] = MEMORY[0x1E69E9820];
          v368[1] = 3221225472;
          v368[2] = sub_1B7BEA514;
          v368[3] = &unk_1E7CBB6C8;
          v368[4] = &v369;
          objc_msgSend_fetchMessageRecordWithGUID_excludeRecoverableMessages_completionHandler_(v257, v258, v387, 1, v368);
          v259 = v370[5];
          if (v259)
          {
            v260 = IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup(v259, 0, 1, 1, a5);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setThreadOriginator_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v261, v260, v262);
            }
          }

          _Block_object_dispose(&v369, 8);
        }

        v52 = v22;
        if (v346)
        {
          objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v199, v346, v200);
        }

        v51 = v353;
      }

      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v199, v390, v200);
      objc_msgSend_setThreadIdentifier_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v263, ThreadIdentifierWithComponents, v264);
      v268 = objc_msgSend_longLongValue(v360, v265, v266, v267);
      objc_msgSend_setReplaceID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v269, v268, v270);
      objc_msgSend_setFallbackHash_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v271, v379, v272);
      v273 = IMDMessageRecordCopyThreadCountsByPart(a1);
      if (v273)
      {
        v277 = v273;
        objc_msgSend_setReplyCountsByPart_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v274, v273, v276);
      }

      v53 = v359;
      v54 = v23;
      if (!objc_msgSend_count(v34, v274, v275, v276) && objc_msgSend_length(v411, v278, v279, v280) && (objc_msgSend_hasDataDetectorResults(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v278, v279, v280) & 1) == 0)
      {
        objc_msgSend_setPlainBody_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v278, v411, v280);
      }

      if ((objc_msgSend_flags(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v278, v279, v280) & 4) == 0 && !objc_msgSend_sender(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v281, v282, v283) || (objc_msgSend_isFromMe(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v281, v282, v283) & 1) == 0 && !objc_msgSend_sender(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v284, v285, v286) || (v287 = objc_msgSend_guid(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v284, v285, v286), !objc_msgSend_length(v287, v288, v289, v290)))
      {

        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = 0;
      }

      objc_autoreleasePoolPop(v347);
      v55 = v363;
    }

    goto LABEL_118;
  }

  v51 = v353;
  v52 = v22;
  if (v421 <= 5)
  {
    v53 = v359;
    v54 = v23;
    if (v421 != 4)
    {
      v55 = v363;
      v67 = objc_alloc(MEMORY[0x1E69A8110]);
      timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v67, v68, v367, v353, v412, 5);
      objc_msgSend_setActionType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v69, v415, v70);
      objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v71, v23, v72);
      objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v73, v363, v74);
      objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v75, v366, v76);
      objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v77, v365, v78);
      objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v79, v364, v80);
      objc_msgSend_setOriginalMessageGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v81, v405, v82);
      objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v83, v41, v84);
      objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v85, v407, v86);
      objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v87, v406, v88);
      objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v89, v426, v90);
      objc_msgSend_setBalloonBundleID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v91, v399, v92);
      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v93, v390, v94);
LABEL_86:
      objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v95, v389, v96);
      objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v143, v52, v144);
      goto LABEL_118;
    }

    v115 = objc_alloc(MEMORY[0x1E69A80E8]);
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v115, v116, v367, v353, v412, 4);
    objc_msgSend_setStatus_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v117, v418, v118);
    objc_msgSend_setDirection_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v119, v417, v120);
    objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v121, v23, v122);
LABEL_85:
    v55 = v363;
    objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v123, v363, v124);
    objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v127, v366, v128);
    objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v129, v365, v130);
    objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v131, v364, v132);
    objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v133, v41, v134);
    objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v135, v407, v136);
    objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v137, v406, v138);
    objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v139, v426, v140);
    objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v141, v390, v142);
    goto LABEL_86;
  }

  v53 = v359;
  v54 = v23;
  if (v421 == 8)
  {
    v110 = objc_alloc(MEMORY[0x1E69A80F0]);
    v112 = objc_msgSend_initWithSender_time_guid_type_(v110, v111, v367, v353, v412, 8);
LABEL_84:
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = v112;
    objc_msgSend_setUnformattedID_(v112, v113, v23, v114);
    goto LABEL_85;
  }

  if (v421 == 7)
  {
    v125 = objc_alloc(MEMORY[0x1E69A8300]);
    v112 = objc_msgSend_initWithSender_time_guid_type_(v125, v126, v367, v353, v412, 7);
    goto LABEL_84;
  }

  v55 = v363;
  if (v421 == 6)
  {
    if (v395)
    {
      v56 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v18, v395, v20);
    }

    else
    {
      v56 = MEMORY[0x1E695E0F8];
    }

    v301 = objc_alloc(MEMORY[0x1E69A82E0]);
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_messageSummaryInfo_(v301, v302, v367, v353, v412, v56);
    objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v303, v41, v304);
    objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v305, v407, v306);
    objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v307, v406, v308);
    objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v309, v426, v310);
    v54 = v23;
    objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v311, v23, v312);
    v55 = v363;
    objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v313, v363, v314);
    objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v315, v390, v316);
    v320 = objc_msgSend_unsignedLongLongValue(v409, v317, v318, v319);
    objc_msgSend_setFlags_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v321, v320, v322);
    goto LABEL_86;
  }

LABEL_118:
  objc_msgSend_setCloudKitSyncState_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v18, v394, v20);
  objc_msgSend_setCloudKitRecordID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v291, v393, v292);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v293, v392, v294);
  objc_msgSend_setCloudKitRecordChangeTag_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v295, v391, v296);
  objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v297, v389, v298);
  objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v299, v52, v300);

  return timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID;
}

id sub_1B7BEA514(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __XPCServerIMDMessageStoreSave_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEA5BC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BEA5BC(uint64_t a1)
{
  IMDSMSRecordStoreSave();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageStoreIsFull_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEA684;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BEA684(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  IsFull = IMDSMSRecordIsFull();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (IsFull)
      {
        v4 = @"YES";
      }

      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Is database full? %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", IsFull != 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageStoreSchemaVersion_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEA818;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BEA818(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = SchemaVersion;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Database schema version? %u", v5, 8u);
    }
  }

  if (SchemaVersion)
  {
    xpc_dictionary_set_uint64(*(a1 + 32), "uint64_result", SchemaVersion);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageStoreSchema_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEA994;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BEA994(uint64_t a1)
{
  Schema = IMDSMSRecordStoreGetSchema();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Fetched Database schema", v10, 2u);
    }
  }

  if (Schema)
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_UTF8String(Schema, v3, v4, v5);
    xpc_dictionary_set_string(v7, "schema", v8);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCreate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, const char *a16, uint64_t a17, char a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1B7BEAB70;
  v28[3] = &unk_1E7CBD320;
  v42 = a6;
  v43 = a7;
  v28[4] = a5;
  v28[5] = a8;
  v29 = a9;
  v47 = a12;
  v30 = a10;
  v31 = a14;
  v48 = a15;
  v32 = a16;
  v33 = a17;
  v49 = a18;
  v44 = a11;
  v45 = a19;
  v34 = a20;
  v40 = a13;
  v41 = a22;
  v35 = a21;
  v36 = a23;
  v46 = a25;
  v37 = a24;
  v38 = a3;
  v39 = a4;
  v25 = sub_1B7ADEAB4(a3, a16, a15, a4);
  IMDPersistencePerformBlock(v28, v25, v26, v27);
}

void sub_1B7BEAB70(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCreate(0, *(a1 + 32), *(a1 + 168), *(a1 + 172), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 176), *(a1 + 188), *(a1 + 152), *(a1 + 72), *(a1 + 189), *(a1 + 80), *(a1 + 88), *(a1 + 190), *(a1 + 180), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 160), *(a1 + 120), *(a1 + 128), *(a1 + 184));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        *buf = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Created attachment record for guid: %@ with filename %@", buf, 0x16u);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 136), 1);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to create attachment record for guid: %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    (*(v9 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDAttachmentRecordRIDForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEADE0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEADE0(uint64_t a1)
{
  v2 = IMDAttachmentRecordRowIDForGUID(*(a1 + 32));
  xpc_dictionary_set_int64(*(a1 + 40), "rrid", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BEAEC8;
  v9[3] = &unk_1E7CBD370;
  v10 = a6;
  v9[4] = a5;
  v9[5] = a3;
  v9[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

void sub_1B7BEAEC8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(*(a1 + 32), *(a1 + 56));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copied attachment record for guid: %@", &v9, 0xCu);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment record found for guid: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB0C8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7BEB0C8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentCopyAttachmentWithStickerPath(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copied attachment record for path: %@", &v9, 0xCu);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment record found for path: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEB2C0;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BEB2C0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete attachment for guid: %@", &v5, 0xCu);
    }
  }

  IMDAttachmentRecordDeleteAttachmentForGUID(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEB41C;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BEB41C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting attachments older than %lld days", &v5, 0xCu);
    }
  }

  IMDAttachmentRecordDeleteAttachmentsOlderThanDays(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB57C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEB57C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query space saved by deleting attachments older than %lld days", &v6, 0xCu);
    }
  }

  v4 = IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays(*(a1 + 48));
  xpc_dictionary_set_uint64(*(a1 + 32), "bytes", v4);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDDatabaseClean_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB6EC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BEB6EC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Clean database", v4, 2u);
    }
  }

  IMDDatabaseClean();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordFindLargestConversations_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB80C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEB80C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query largest conversations", v6, 2u);
    }
  }

  if (IMDAttachmentFindLargestConversations(*(a1 + 48)))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_value(*(a1 + 32), "result", v3);
      xpc_release(v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BEB960;
  v10[3] = &unk_1E7CBD3E8;
  v10[8] = a6;
  v10[9] = a7;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

uint64_t sub_1B7BEB960(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query largest attachment GUIDs", v9, 2u);
    }
  }

  string = xpc_dictionary_get_string(*(a1 + 32), "attachmentClass");
  if (string)
  {
    string = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, string, v5);
  }

  if (IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset(string, *(a1 + 56), *(a1 + 64), *(a1 + 72)))
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_value(*(a1 + 40), "result", v6);
      xpc_release(v7);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBAD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEBAD8(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query space taken by attachment class", v6, 2u);
    }
  }

  if (IMDAttachmentSpaceTakenByAttachmentClass(*(a1 + 48)))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_value(*(a1 + 32), "result", v3);
      xpc_release(v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBC28;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEBC28(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DoesAttachmentWithGUIDExist = IMDAttachmentRecordDoesAttachmentWithGUIDExist(a1[4]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      v5 = a1[4];
      if (DoesAttachmentWithGUIDExist)
      {
        v4 = @"YES";
      }

      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Does attachment exist for guid: %@? %@", &v8, 0x16u);
    }
  }

  v6 = a1[5];
  if (v6)
  {
    xpc_dictionary_set_BOOL(v6, "BOOL_result", DoesAttachmentWithGUIDExist != 0);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBDD4;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEBDD4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  HaveAttachments = IMDAttachmentRecordDoesStickerPathHaveAttachments(*(a1 + 32));
  if (*(a1 + 40))
  {
    v3 = HaveAttachments;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v7 = 138412546;
        v8 = v5;
        v9 = 2048;
        v10 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Attachment count at sticker: %@ is %lld", &v7, 0x16u);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 40), "int64_result", v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyRecentFilenames_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBF68;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEBF68(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyRecentFilenames(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v22 = 134218240;
      v23 = v7;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying filenames for most recent %lld attachments (Results: %ld)", &v22, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v14 = objc_msgSend_count(v2, v8, v9, v10);
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v12, v15, v13);
        v18 = xpc_dictionary_create(0, 0, 0);
        if (v18)
        {
          v19 = objc_msgSend_UTF8String(v16, v12, v17, v13);
          xpc_array_set_string(v11, 0xFFFFFFFFFFFFFFFFLL, v19);
          xpc_release(v18);
        }

        ++v15;
      }

      while (v14 != v15);
    }

    v20 = a1[4];
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC1A8;
  block[3] = &unk_1E7CBD410;
  block[7] = a5;
  block[8] = a7;
  block[4] = a6;
  block[5] = a3;
  block[6] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BEC1A8(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit(a1[7], a1[4], a1[8]);
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = a1[7];
        v6 = a1[8];
        v13 = 134218496;
        v14 = v6;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying most recent %lld attachments for queryType: %lld (Results: %ld)", &v13, 0x20u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v10, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v10);
          xpc_release(v10);
        }
      }
    }

    v11 = a1[5];
    if (v11)
    {
      xpc_dictionary_set_value(v11, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC3FC;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BEC3FC(void *a1)
{
  IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState(a1[5], a1[6]);
  result = a1[4];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEC4CC;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BEC4CC(uint64_t a1)
{
  IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC598;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BEC598(uint64_t a1)
{
  IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC660;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BEC660(uint64_t a1)
{
  IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC72C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7BEC72C(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyMessageForAttachmentGUID(a1[4]);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Getting message record for attachment GUID %@", &v9, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, a1[5], 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for attachment GUID %@", &v9, 0xCu);
    }
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BEC930;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BEC930(void *a1)
{
  updated = IMDAttachmentRecordUpdateAttachmentGUIDWithGUID(a1[4], a1[5]);
  v3 = a1[6];
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", updated != 0);
  }

  result = a1[7];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BECA20;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BECA20(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  PurgeableDiskSpace = IMDAttachmentRecordGetPurgeableDiskSpace(a1);
  if (*(a1 + 32))
  {
    v3 = PurgeableDiskSpace;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 134217984;
        v7 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Purgeable disk space is %lld", &v6, 0xCu);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 32), "purgeableDiskSpace", v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BECB9C;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BECB9C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  NonSyncedAttachmentDiskSpace = IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace(a1);
  if (*(a1 + 32))
  {
    v3 = NonSyncedAttachmentDiskSpace;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 134217984;
        v7 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Non synced attachment disk space is %lld", &v6, 0xCu);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 32), "diskSpace", v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BECD1C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BECD1C(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace(a1[6]);
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[6];
        v12 = 134218240;
        v13 = v6;
        v14 = 2048;
        v15 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying oldest attachments to delete to free up: %lld bytes (Results: %ld)", &v12, 0x16u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v9 = xpc_dictionary_create(0, 0, 0);
        if (v9)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v9, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v9);
          xpc_release(v9);
        }
      }
    }

    v10 = a1[4];
    if (v10)
    {
      xpc_dictionary_set_value(v10, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BECF60;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BECF60(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChatsTest(a1[6], a1[7]);
  v40 = objc_msgSend_allValues(v1, v2, v3, v4);
  cf = v1;
  v8 = objc_msgSend_allKeys(v1, v5, v6, v7);
  v9 = xpc_dictionary_create(0, 0, 0);
  if (objc_msgSend_count(v8, v10, v11, v12))
  {
    v16 = 0;
    *&v15 = 134218496;
    v38 = v15;
    do
    {
      v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, v16, v14);
      v20 = objc_msgSend_valueForKey_(cf, v18, v17, v19);
      v24 = xpc_array_create(0, 0);
      if (v24 != 0 && v40 != 0)
      {
        v25 = objc_msgSend_count(v20, v21, v22, v23);
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v28 = a1[6];
            v27 = a1[7];
            *buf = v38;
            v43 = v27;
            v44 = 2048;
            v45 = v28;
            v46 = 2048;
            v47 = v25;
            _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Copying most recent attachments %ld from %ld most recent chats: (Results: %ld)", buf, 0x20u);
          }
        }

        if (v25)
        {
          for (i = 0; i != v25; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
            v31 = xpc_dictionary_create(0, 0, 0);
            if (v31)
            {
              _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v31, 1);
              xpc_array_set_value(v24, 0xFFFFFFFFFFFFFFFFLL, v31);
              xpc_release(v31);
            }
          }
        }
      }

      v32 = objc_msgSend_cStringUsingEncoding_(v17, v21, 1, v23);
      xpc_dictionary_set_value(v9, v32, v24);
      if (v24)
      {
        xpc_release(v24);
      }

      ++v16;
    }

    while (objc_msgSend_count(v8, v33, v34, v35, v38) > v16);
  }

  v36 = a1[4];
  if (v36)
  {
    xpc_dictionary_set_value(v36, "dictionary_result", v9);
  }

  if (v9)
  {
    xpc_release(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BED28C;
  v9[3] = &unk_1E7CBD4B0;
  v9[5] = a4;
  v9[6] = a5;
  v10 = a6;
  v9[4] = a3;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BED28C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(*(a1 + 48), *(a1 + 56));
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v13 = 134218496;
        v14 = v6;
        v15 = 1024;
        v16 = v7;
        v17 = 2048;
        v18 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying oldest attachments to delete to free up: %lld bytes starting offset: %d (Results: %ld)", &v13, 0x1Cu);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v10, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v10);
          xpc_release(v10);
        }
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      xpc_dictionary_set_value(v11, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BED4E4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BED4E4(uint64_t a1)
{
  v1 = a1;
  updated = IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark(*(a1 + 48));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v7 = v3;
    v34 = v1;
    if (objc_msgSend_count(updated, v4, v5, v6))
    {
      v10 = 0;
      do
      {
        v11 = objc_msgSend_objectAtIndex_(updated, v8, v10, v9);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          v16 = v12;
          if (objc_msgSend_objectForKeyedSubscript_(v11, v13, @"rowID", v15))
          {
            v19 = objc_msgSend_objectForKeyedSubscript_(v11, v17, @"rowID", v18);
            v30 = objc_msgSend_intValue(v19, v20, v21, v22);
            v32 = 0;
            IMInsertIntsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v11, v17, @"filename", v18, v30, v32))
          {
            v31 = objc_msgSend_objectForKeyedSubscript_(v11, v23, @"filename", v24);
            v33 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v11, v23, @"guid", v24, v31, v33))
          {
            v30 = objc_msgSend_objectForKeyedSubscript_(v11, v25, @"guid", v26);
            v32 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          xpc_array_append_value(v7, v16);
          xpc_release(v16);
        }

        ++v10;
      }

      while (v10 < objc_msgSend_count(updated, v13, v14, v15, v30, v32));
    }

    v1 = v34;
    if (updated)
    {
      v27 = *(v34 + 32);
      if (v27)
      {
        xpc_dictionary_set_value(v27, "array_result", v7);
      }
    }

    xpc_release(v7);
  }

  if (updated)
  {
    CFRelease(updated);
  }

  result = *(v1 + 40);
  if (result)
  {
    v29 = *(result + 16);

    return v29();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BED750;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BED750(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan(*(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting files older than %lld recent attachments", &v5, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BED8B0;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BED8B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices(a1[4], a1[5], a3, a4);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      v9 = a1[5];
      *buf = 138412802;
      v58 = v10;
      v59 = 2112;
      v60 = v9;
      v61 = 2048;
      v62 = objc_msgSend_count(v4, v6, v7, v8);
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying filenames for attachments for chat identifiers: %@ on services: %@   (Results: %ld)", buf, 0x20u);
    }
  }

  v14 = xpc_array_create(0, 0);
  if (v14)
  {
    v17 = objc_msgSend_count(v4, v11, v12, v13);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = objc_msgSend_objectAtIndex_(v4, v15, v18, v16);
        v20 = xpc_dictionary_create(0, 0, 0);
        if (v20)
        {
          v21 = objc_msgSend_objectForKeyedSubscript_(v19, v15, @"path", v16);
          v25 = objc_msgSend_UTF8String(v21, v22, v23, v24);
          v28 = objc_msgSend_objectForKey_(v19, v26, @"guid", v27);
          v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
          xpc_dictionary_set_string(v20, "guid", v32);
          if (v25)
          {
            xpc_dictionary_set_string(v20, "path", v25);
          }

          v35 = objc_msgSend_objectForKey_(v19, v33, @"isSticker", v34);
          v39 = objc_msgSend_BOOLValue(v35, v36, v37, v38);
          xpc_dictionary_set_BOOL(v20, "isSticker", v39);
          v42 = objc_msgSend_objectForKey_(v19, v40, @"createdDate", v41);
          v46 = objc_msgSend_unsignedLongLongValue(v42, v43, v44, v45);
          xpc_dictionary_set_int64(v20, "createdDate", v46);
          v49 = objc_msgSend_objectForKey_(v19, v47, @"transferState", v48);
          v53 = objc_msgSend_unsignedLongLongValue(v49, v50, v51, v52);
          xpc_dictionary_set_int64(v20, "transferState", v53);
          xpc_array_append_value(v14, v20);
          xpc_release(v20);
        }

        ++v18;
      }

      while (v17 != v18);
    }

    v54 = a1[6];
    if (v54)
    {
      xpc_dictionary_set_value(v54, "array_result", v14);
    }

    xpc_release(v14);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEDBE8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BEDBE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices(a1[4], a1[5], a1[8], a4);
  v6 = xpc_array_create(0, 0);
  if (v6 && v5)
  {
    Count = CFArrayGetCount(v5);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a1[8], v10);
        v19 = 138412802;
        v20 = v12;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Copying purged attachments for chat %@ services %@ limit %@", &v19, 0x20u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v16, 1);
          xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v16);
          xpc_release(v16);
        }
      }
    }

    v17 = a1[6];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v6);
    }
  }

  if (v6)
  {
    xpc_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatGetChatsThatContainRecipient_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEDE50;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEDE50(uint64_t a1)
{
  v1 = a1;
  v44 = *MEMORY[0x1E69E9840];
  ChatsThatContainRecipient = IMDChatGetChatsThatContainRecipient(*(a1 + 32));
  if (ChatsThatContainRecipient)
  {
    v3 = ChatsThatContainRecipient;
    v41 = v1;
    v4 = xpc_array_create(0, 0);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v3);
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(v41 + 32);
          *buf = 138412290;
          v43 = v8;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "All chats that have %@ as a participant.", buf, 0xCu);
        }
      }

      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          v13 = xpc_dictionary_create(0, 0, 0);
          if (v13)
          {
            v14 = objc_msgSend_valueForKey_(ValueAtIndex, v11, @"chatGUID", v12);
            if (v14)
            {
              v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
              xpc_dictionary_set_string(v13, "chatGUID", v18);
            }

            v19 = objc_msgSend_valueForKey_(ValueAtIndex, v15, @"displayName", v17);
            if (v19)
            {
              v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
              xpc_dictionary_set_string(v13, "displayName", v23);
            }

            v24 = xpc_array_create(0, 0);
            v27 = objc_msgSend_valueForKey_(ValueAtIndex, v25, @"handles", v26);
            v31 = v27;
            if (v27 && objc_msgSend_count(v27, v28, v29, v30))
            {
              v34 = 0;
              do
              {
                v35 = objc_msgSend_objectAtIndex_(v31, v32, v34, v33);
                v39 = xpc_dictionary_create(0, 0, 0);
                if (v39)
                {
                  _IMDHandleRecordBulkCopyXPCDictionary(v35, v39, 1);
                  xpc_array_append_value(v24, v39);
                  xpc_release(v39);
                }

                ++v34;
              }

              while (v34 < objc_msgSend_count(v31, v36, v37, v38));
            }

            if (v24)
            {
              xpc_dictionary_set_value(v13, "handles", v24);
              xpc_release(v24);
            }

            xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v13);
            xpc_release(v13);
          }
        }
      }

      xpc_dictionary_set_value(*(v41 + 40), "array_result", v5);
      xpc_release(v5);
    }

    CFRelease(v3);
    v1 = v41;
  }

  result = *(v1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BEE194;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BEE194(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices(a1[4], a1[5], a3, a4);
  v6 = xpc_array_create(0, 0);
  v7 = v6;
  if (v6 && v5)
  {
    if (CFArrayGetCount(v5) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = a1[4];
          v10 = a1[5];
          v20 = 138412546;
          v21 = v9;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Copying purged attachments count for chat %@ services %@", &v20, 0x16u);
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v15 = objc_msgSend_unsignedIntegerValue(ValueAtIndex, v12, v13, v14);
      v16 = xpc_dictionary_create(0, 0, 0);
      v17 = v16;
      if (v16)
      {
        xpc_dictionary_set_int64(v16, "purgedCount", v15);
        xpc_array_set_value(v7, 0xFFFFFFFFFFFFFFFFLL, v17);
        xpc_release(v17);
      }

      v18 = a1[6];
      if (v18)
      {
        xpc_dictionary_set_value(v18, "array_result", v7);
      }
    }
  }

  else if (!v6)
  {
    goto LABEL_13;
  }

  xpc_release(v7);
LABEL_13:
  if (v5)
  {
    CFRelease(v5);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyStickers_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE3CC;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEE3CC(uint64_t a1)
{
  v1 = a1;
  v2 = IMDAttachmentRecordCopyAttachmentStickers(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying filenames for sticker attachments", buf, 2u);
    }
  }

  v4 = xpc_array_create(0, 0);
  if (v4)
  {
    v8 = v4;
    v37 = v1;
    if (objc_msgSend_count(v2, v5, v6, v7))
    {
      v11 = 0;
      v38 = v2;
      do
      {
        v12 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
        v15 = objc_msgSend_valueForKey_(v12, v13, @"sticker_user_info", v14);
        v18 = objc_msgSend_valueForKey_(v12, v16, @"filename", v17);
        v21 = objc_msgSend_valueForKey_(v12, v19, @"created_date", v20);
        objc_msgSend_intValue(v21, v22, v23, v24);
        v27 = objc_msgSend_valueForKey_(v12, v25, @"accessibility_string", v26);
        if (v15 && v18)
        {
          v31 = v27;
          v32 = xpc_dictionary_create(0, 0, 0);
          IMInsertDatasToXPCDictionary();
          IMInsertNSStringsToXPCDictionary();
          v2 = v38;
          IMInsertIntsToXPCDictionary();
          v35 = v31;
          v36 = 0;
          IMInsertNSStringsToXPCDictionary();
          xpc_array_append_value(v8, v32);
          xpc_release(v32);
        }

        ++v11;
      }

      while (v11 < objc_msgSend_count(v2, v28, v29, v30, v35, v36));
    }

    v1 = v37;
    v33 = *(v37 + 32);
    if (v33)
    {
      xpc_dictionary_set_value(v33, "array_result", v8);
    }

    xpc_release(v8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(v1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordBulkUpdate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, const char *a16, uint64_t a17, char a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE718;
  block[3] = &unk_1E7CBD500;
  v41 = a6;
  v42 = a7;
  block[4] = a5;
  block[5] = a8;
  v29 = a9;
  v46 = a12;
  v30 = a10;
  v31 = a14;
  v47 = a15;
  v32 = a16;
  v33 = a17;
  v48 = a18;
  v43 = a11;
  v44 = a19;
  v34 = a20;
  v39 = a13;
  v40 = a22;
  v35 = a21;
  v36 = a23;
  v45 = a25;
  v37 = a24;
  v38 = a4;
  v25 = sub_1B7ADEAB4(a3, a16, a15, a4);
  IMDPersistencePerformBlock(block, v25, v26, v27);
}

uint64_t sub_1B7BEE718(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentForGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Updating attachment for guid: %@", buf, 0xCu);
      }
    }

    IMDAttachmentRecordBulkUpdate(v2, *(a1 + 32), *(a1 + 160), *(a1 + 164), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 168), *(a1 + 180), *(a1 + 144), *(a1 + 72), *(a1 + 181), *(a1 + 80), *(a1 + 88), *(a1 + 182), *(a1 + 172), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 152), *(a1 + 120), *(a1 + 128), *(a1 + 176));
    CFRelease(v2);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment found to update for guid: %@", buf, 0xCu);
    }
  }

  result = *(a1 + 136);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_IPAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE974;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEE974(uint64_t a1)
{
  IMDCNRecordIDAndHistoryTokenForAliases(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNRecordIDForAliases_IPAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEA6C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEEA6C(uint64_t a1)
{
  IMDCNRecordIDForAliases(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_asyncIPAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDBE5BE0 != -1)
  {
    sub_1B7CFCC60();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BEEBD4;
  v10[3] = &unk_1E7CBD460;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_async(qword_1EDBE5BD8, v10);
}

dispatch_queue_t sub_1B7BEEB98()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  result = dispatch_queue_create("_IMDPersistenceQueueForAsyncIPAction", v0);
  qword_1EDBE5BD8 = result;
  return result;
}

void sub_1B7BEEBD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BEEC4C;
  v3[3] = &unk_1E7CBD528;
  v4 = *(a1 + 48);
  IMDCNRecordIDAndHistoryTokenForAliasesWithCompletionHandler(v2, v1, v3);
}

uint64_t sub_1B7BEEC4C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDIsFavoritedContact_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEED38;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEED38(uint64_t a1)
{
  v2 = IMDIsFavoritedContact(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDCNGivenNameAndBirthdayForHandleID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEE20;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEEE20(uint64_t a1)
{
  IMDCNGivenNameAndBirthdayForHandleID(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEF18;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEEF18(uint64_t a1)
{
  IMDCNFullNameAndOrganizationNameForHandleID(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDHandleRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF01C;
  block[3] = &unk_1E7CBD550;
  block[4] = a5;
  block[5] = a6;
  block[6] = a7;
  block[7] = a8;
  block[8] = a9;
  block[9] = a3;
  block[10] = a4;
  v9 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v9, v10, v11);
}

void sub_1B7BEF01C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCreate(0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Creating handle record for ID: %@  service: %@", &v11, 0x16u);
      }
    }

    _IMDHandleRecordBulkCopyXPCDictionary(v2, *(a1 + 72), 1);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to create handle record for ID: %@  service: %@", &v11, 0x16u);
    }
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    (*(v10 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF244;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BEF244(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Unassociating message guid: %@  from attachment: %@", &v6, 0x16u);
    }
  }

  IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF3B0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BEF3B0(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Associating message guid: %@  from attachment: %@", &v6, 0x16u);
    }
  }

  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF51C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEF51C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesForAssociatedGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v22 = 138412546;
      v23 = v7;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for associated guid: %@   (Results: %ld)", &v22, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    if (objc_msgSend_count(v2, v8, v9, v10))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v19, 1, 0);
          xpc_array_append_value(v11, v19);
          xpc_release(v19);
        }

        ++v14;
      }

      while (v14 < objc_msgSend_count(v2, v16, v17, v18));
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BEF760;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BEF760(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesBetweenRowIDs(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = a1[6];
      v7 = a1[7];
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages between rowID: %lld  and rowID: %lld   (Results: %ld)", &v22, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v9, v10, v11);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v13 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v14, v16, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v12, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = a1[4];
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessageForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF1DDC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void __XPCServerIMDMessageRecordCopyMessageForRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEFA34;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7BEFA34(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageForRowID(a1[6]);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[6];
        v9 = 134218242;
        v10 = v5;
        v11 = 2112;
        v12 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy message for RowID: %lld   (Result: %@)", &v9, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, a1[4], 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for rowID: %lld", &v9, 0xCu);
    }
  }

  v8 = a1[5];
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDMessageRecordCopyLastReceivedMessage_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEFC40;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

void sub_1B7BEFC40(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ReceivedMessage = IMDMessageRecordCopyLastReceivedMessage();
  v3 = IMOSLoggingEnabled();
  if (ReceivedMessage)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = ReceivedMessage;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy last received message (Result: %@)", &v7, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(ReceivedMessage, *(a1 + 32), 1, 0);
  }

  else if (v3)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Failed to copy last received message", &v7, 2u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  if (ReceivedMessage)
  {
    CFRelease(ReceivedMessage);
  }
}

void __XPCServerIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEFE2C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BEFE2C(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  ReceivedMessageLimit = IMDMessageRecordCopyLastReceivedMessageLimit(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v21 = 134218240;
      v22 = v7;
      v23 = 2048;
      v24 = objc_msgSend_count(ReceivedMessageLimit, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying last received messages with limit: %lld   (Results: %ld)", &v21, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v12 = objc_msgSend_count(ReceivedMessageLimit, v8, v9, v10);
    if (v12 >= 1)
    {
      v15 = 0;
      v16 = v12 & 0x7FFFFFFF;
      do
      {
        v17 = objc_msgSend_objectAtIndex_(ReceivedMessageLimit, v13, v15, v14);
        v18 = xpc_dictionary_create(0, 0, 0);
        if (v18)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v17, v18, 1, 0);
          xpc_array_append_value(v11, v18);
          xpc_release(v18);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    v19 = a1[4];
    if (v19)
    {
      xpc_dictionary_set_value(v19, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (ReceivedMessageLimit)
  {
    CFRelease(ReceivedMessageLimit);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesForRowIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0078;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF0078(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesForRowIDs(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v21 = 138412546;
      v22 = v7;
      v23 = 2048;
      v24 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for rowIDs: %@   (Results: %ld)", &v21, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v12 = objc_msgSend_count(v2, v8, v9, v10);
    if (v12 >= 1)
    {
      v15 = 0;
      v16 = v12 & 0x7FFFFFFF;
      do
      {
        v17 = objc_msgSend_objectAtIndex_(v2, v13, v15, v14);
        v18 = xpc_dictionary_create(0, 0, 0);
        if (v18)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v17, v18, 1, 0);
          xpc_array_append_value(v11, v18);
          xpc_release(v18);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      xpc_dictionary_set_value(v19, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF02C0;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BF02C0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete messages for guids: %@", &v5, 0xCu);
    }
  }

  IMDMessageRecordDeleteMessagesForGUIDs(*(a1 + 32), 0);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF0420;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BF0420(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete messages older than %lld days", &v5, 0xCu);
    }
  }

  IMDMessageRecordDeleteMessagesOlderThanDays(*(a1 + 40), 0);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0588;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BF0588(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v22 = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = v7;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for room name: %@ on service: %@   (Results: %ld)", &v22, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v9, v10, v11);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v13 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v14, v16, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v12, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BF07F4;
  v13[3] = &unk_1E7CBD5C8;
  v13[4] = a5;
  v13[5] = a6;
  v13[10] = a9;
  v13[11] = a10;
  v13[6] = a7;
  v13[7] = a8;
  v13[8] = a3;
  v13[9] = a4;
  v10 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v13, v10, v11, v12);
}

uint64_t sub_1B7BF07F4(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  value = 1;
  v29 = 1;
  v2 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 88), *(a1 + 56), &value, &v29);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = objc_msgSend_count(v2, v4, v5, v6);
      v10 = *(a1 + 80);
      v11 = *(a1 + 88);
      *buf = 138413314;
      v32 = v8;
      v33 = 2112;
      v34 = v7;
      v35 = 2048;
      v36 = v9;
      v37 = 2048;
      v38 = v10;
      v39 = 2048;
      v40 = v11;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying limited number of messages for chat identifiers: %@ on services: %@  (Results: %ld) numberOfMessagesBefore: %lld numberOfMessagesAfter: %lld", buf, 0x34u);
    }
  }

  v12 = xpc_array_create(0, 0);
  v13 = xpc_BOOL_create(value);
  v17 = xpc_BOOL_create(v29);
  if (v12)
  {
    v18 = objc_msgSend_count(v2, v14, v15, v16);
    if (v18 >= 1)
    {
      v21 = 0;
      v22 = v18 & 0x7FFFFFFF;
      do
      {
        v23 = objc_msgSend_objectAtIndex_(v2, v19, v21, v20);
        v24 = xpc_dictionary_create(0, 0, 0);
        if (v24)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v23, v24, 1, 0);
          xpc_array_append_value(v12, v24);
          xpc_release(v24);
        }

        ++v21;
      }

      while (v22 != v21);
    }

    v25 = *(a1 + 64);
    if (v25)
    {
      xpc_dictionary_set_value(v25, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v13)
  {
    v26 = *(a1 + 64);
    if (v26)
    {
      xpc_dictionary_set_value(v26, "has_messages_before", v13);
    }

    xpc_release(v13);
  }

  if (v17)
  {
    v27 = *(a1 + 64);
    if (v27)
    {
      xpc_dictionary_set_value(v27, "has_messages_after", v17);
    }

    xpc_release(v17);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0AEC;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BF0AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64), a4);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v28 = 138412802;
      v29 = v11;
      v30 = 2112;
      v31 = v10;
      v32 = 2048;
      v33 = objc_msgSend_count(v5, v7, v8, v9);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Copying frequent replies for chat identifiers: %@ on services: %@   (Results: %ld)", &v28, 0x20u);
    }
  }

  v15 = xpc_array_create(0, 0);
  if (v15)
  {
    v16 = objc_msgSend_count(v5, v12, v13, v14);
    if (v16 >= 1)
    {
      v19 = 0;
      v20 = v16 & 0x7FFFFFFF;
      do
      {
        v21 = objc_msgSend_objectAtIndex_(v5, v17, v19, v18);
        v25 = objc_msgSend_UTF8String(v21, v22, v23, v24);
        xpc_array_set_string(v15, 0xFFFFFFFFFFFFFFFFLL, v25);
        ++v19;
      }

      while (v20 != v19);
    }

    v26 = *(a1 + 48);
    if (v26)
    {
      xpc_dictionary_set_value(v26, "array_result", v15);
    }

    xpc_release(v15);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF0D10;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = IMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), a3, a4);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v27 = 138412802;
      v28 = v11;
      v29 = 2112;
      v30 = v10;
      v31 = 2048;
      v32 = objc_msgSend_count(v5, v7, v8, v9);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Copying guids for chat identifiers: %@ on services: %@   (Results: %ld)", &v27, 0x20u);
    }
  }

  v15 = xpc_array_create(0, 0);
  if (v15)
  {
    v16 = objc_msgSend_count(v5, v12, v13, v14);
    if (v16 >= 1)
    {
      v19 = 0;
      v20 = v16 & 0x7FFFFFFF;
      do
      {
        v21 = objc_msgSend_objectAtIndex_(v5, v17, v19, v18);
        v23 = xpc_dictionary_create(0, 0, 0);
        if (v23)
        {
          v24 = objc_msgSend_UTF8String(v21, v17, v22, v18);
          xpc_array_set_string(v15, 0xFFFFFFFFFFFFFFFFLL, v24);
          xpc_release(v23);
        }

        ++v19;
      }

      while (v20 != v19);
    }

    v25 = *(a1 + 48);
    if (v25)
    {
      xpc_dictionary_set_value(v25, "array_result", v15);
    }

    xpc_release(v15);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BF0F60;
  v10[3] = &unk_1E7CBD460;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

uint64_t sub_1B7BF0F60(uint64_t a1)
{
  IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF1034;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF1034(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs = IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs(*(a1 + 32), *(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v26 = v4;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Getting last addressed labelID and last message date for chat identifiers: %@ and last addressed labelIDs: %@   (Results: %@)", buf, 0x20u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9)
  {
    if (objc_msgSend_count(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v6, v7, v8))
    {
      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v10, @"labelID", v11))
      {
        v23 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v12, @"labelID", v13);
        v24 = 0;
        IMInsertNSStringsToXPCDictionary();
      }

      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v12, @"date", v13, v23, v24))
      {
        v16 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v14, @"date", v15);
        v20 = objc_msgSend_integerValue(v16, v17, v18, v19);
        xpc_dictionary_set_int64(v9, "date", v20);
      }
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      xpc_dictionary_set_value(v21, "dictionary_result", v9);
    }

    xpc_release(v9);
  }

  if (MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs)
  {
    CFRelease(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF127C;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF127C(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles = IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles(*(a1 + 32), *(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v26 = v4;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Getting last addressed handle and last message date for chat identifiers: %@ and last addressed handles: %@   (Results: %@)", buf, 0x20u);
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9)
  {
    if (objc_msgSend_count(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v6, v7, v8))
    {
      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v10, @"handle", v11))
      {
        v23 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v12, @"handle", v13);
        v24 = 0;
        IMInsertNSStringsToXPCDictionary();
      }

      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v12, @"date", v13, v23, v24))
      {
        v16 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v14, @"date", v15);
        v20 = objc_msgSend_integerValue(v16, v17, v18, v19);
        xpc_dictionary_set_int64(v9, "date", v20);
      }
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      xpc_dictionary_set_value(v21, "dictionary_result", v9);
    }

    xpc_release(v9);
  }

  if (MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles)
  {
    CFRelease(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BF14C4;
  v10[3] = &unk_1E7CBD460;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

uint64_t sub_1B7BF14C4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Delete messages guids: %@ for chat identifiers: %@ on services: %@", &v8, 0x20u);
    }
  }

  IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), *(a1 + 48), v2);
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1644;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BF1644(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithHandleOnServiceLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(a1 + 64);
      v23 = 138413058;
      v24 = v8;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy messages with for handle: %@ on service: %@  limit: %lld  (Results: %ld)", &v23, 0x2Au);
    }
  }

  v13 = xpc_array_create(0, 0);
  if (v13)
  {
    v14 = objc_msgSend_count(v2, v10, v11, v12);
    if (v14 >= 1)
    {
      v17 = 0;
      v18 = v14 & 0x7FFFFFFF;
      do
      {
        v19 = objc_msgSend_objectAtIndex_(v2, v15, v17, v16);
        v20 = xpc_dictionary_create(0, 0, 0);
        if (v20)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v19, v20, 1, 0);
          xpc_array_append_value(v13, v20);
          xpc_release(v20);
        }

        ++v17;
      }

      while (v18 != v17);
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      xpc_dictionary_set_value(v21, "array_result", v13);
    }

    xpc_release(v13);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BF18C8;
  v15[3] = &unk_1E7CBD5F0;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a9;
  *&v15[12] = a1;
  v16 = a10;
  v15[8] = a11;
  v15[9] = a12;
  v15[10] = a4;
  v15[11] = a5;
  v12 = sub_1B7ADEAB4(a4, a3, a4, a5);
  IMDPersistencePerformBlock(v15, v12, v13, v14);
}

void sub_1B7BF18C8(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 104), *(a1 + 64), *(a1 + 72), *(a1 + 96));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 64);
        v6 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v15 = 138413314;
        v16 = v7;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy messages with handle: %@ matching body with for chatidentifiers: %@ on services: %@  skipping: %@  (Result: %@)", &v15, 0x34u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 80), 1, 0);
  }

  else if (v3)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = 138413058;
      v16 = v12;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "No message found with handle: %@ matching body with for chatidentifiers: %@ on services: %@  skipping: %@", &v15, 0x2Au);
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    (*(v14 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1B30;
  block[3] = &unk_1E7CBD578;
  block[4] = a6;
  block[5] = a7;
  block[6] = a8;
  block[7] = a9;
  *&block[10] = a1;
  block[8] = a4;
  block[9] = a5;
  v9 = sub_1B7ADEAB4(a4, a3, a4, a5);
  IMDPersistencePerformBlock(block, v9, v10, v11);
}

void sub_1B7BF1B30(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 80));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v11 = 138412802;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        v15 = 2112;
        v16 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy messages with handle: %@ matching body skipping services: %@  (Result: %@)", &v11, 0x20u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 64), 1, 0);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "No message found with handle: %@ matching body skipping services: %@", &v11, 0x16u);
    }
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BF1D70;
  v13[3] = &unk_1E7CBD618;
  v13[4] = a6;
  v13[5] = a7;
  v14 = a9;
  v13[6] = a8;
  v13[7] = a10;
  *&v13[10] = a1;
  v13[8] = a4;
  v13[9] = a5;
  v10 = sub_1B7ADEAB4(a4, a3, a4, a5);
  IMDPersistencePerformBlock(v13, v10, v11, v12);
}

void sub_1B7BF1D70(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 56), *(a1 + 80));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = *(a1 + 88);
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        v16 = 1024;
        v17 = v7;
        v18 = 2112;
        v19 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy SOS messages with handle: %@ matching body matching service: %@ matchingIsSOS: %d (Result: %@)", &v12, 0x26u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 64), 1, 0);
  }

  else if (v3)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "No SOS duplicate message found with handle: %@ matching body matching service: %@", &v12, 0x16u);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1FB8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

void sub_1B7BF1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID(*(a1 + 32), *(a1 + 40), *(a1 + 64), a4);
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(a1 + 64);
        v16 = 138413058;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Copy message with handle: %@ on service: %@  replaceID: %lld (Result: %@)", &v16, 0x2Au);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v5, *(a1 + 48), 1, 0);
  }

  else if (v6)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 64);
      v16 = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "No message found with handle: %@ on service: %@  replaceID: %lld", &v16, 0x20u);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))();
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __XPCServerIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2204;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF2204(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUndeliveredOneToOneiMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy undelivered 1-1 messages (Results: %ld)", &v20, 0xCu);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v7, v8, v9);
    if (v11 >= 1)
    {
      v14 = 0;
      v15 = v11 & 0x7FFFFFFF;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v16, v17, 1, 0);
          xpc_array_append_value(v10, v17);
          xpc_release(v17);
        }

        ++v14;
      }

      while (v15 != v14);
    }

    v18 = a1[4];
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2440;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF2440(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyExpiringOrExpiredMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy expiring or expired messages (Results: %ld)", &v20, 0xCu);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v7, v8, v9);
    if (v11 >= 1)
    {
      v14 = 0;
      v15 = v11 & 0x7FFFFFFF;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v16, v17, 1, 0);
          xpc_array_append_value(v10, v17);
          xpc_release(v17);
        }

        ++v14;
      }

      while (v15 != v14);
    }

    v18 = a1[4];
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF267C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF267C(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUnsentUnfailedMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unsent messages (Results: %ld)", &v20, 0xCu);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v7, v8, v9);
    if (v11 >= 1)
    {
      v14 = 0;
      v15 = v11 & 0x7FFFFFFF;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v16, v17, 1, 0);
          xpc_array_append_value(v10, v17);
          xpc_release(v17);
        }

        ++v14;
      }

      while (v15 != v14);
    }

    v18 = a1[4];
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF28B8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF28B8(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID(a1[4]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy message action items for original message guid (Results: %ld)", &v20, 0xCu);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v7, v8, v9);
    if (v11 >= 1)
    {
      v14 = 0;
      v15 = v11 & 0x7FFFFFFF;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v16, v17, 1, 0);
          xpc_array_append_value(v10, v17);
          xpc_release(v17);
        }

        ++v14;
      }

      while (v15 != v14);
    }

    v18 = a1[5];
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF2AF0;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF2AF0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessages();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld", &v5, 0xCu);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2C70;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF2C70(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessagesForChatGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 134218242;
      v7 = v2;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld  for chat GUID: %@", &v6, 0x16u);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 40), "sint64_result", v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2E04;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF2E04(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessagesForChatRowID(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v6 = 134218240;
      v7 = v2;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld  for chat rowID: %lld", &v6, 0x16u);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordLastFailedMessageRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF2F94;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF2F94(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  FailedMessageRowID = IMDMessageRecordLastFailedMessageRowID();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = FailedMessageRowID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last failed message rowID: %lld", &v5, 0xCu);
    }
  }

  if (FailedMessageRowID)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", FailedMessageRowID);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordLastSyncedMessageRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF3110;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF3110(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  SyncedMessageRowID = IMDMessageRecordLastSyncedMessageRowID();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = SyncedMessageRowID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last synced message rowID: %lld", &v5, 0xCu);
    }
  }

  if (SyncedMessageRowID)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", SyncedMessageRowID);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordLastFailedMessageDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF328C;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF328C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = FailedMessageDate;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last failed message rowID: %lld", &v5, 0xCu);
    }
  }

  if (FailedMessageDate)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", FailedMessageDate);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordGetMostRecentMessageDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF3408;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF3408(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  MostRecentMessageDate = IMDMessageRecordGetMostRecentMessageDate();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = MostRecentMessageDate;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Most recent message date: %lld", &v5, 0xCu);
    }
  }

  if (MostRecentMessageDate)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", MostRecentMessageDate);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3588;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF3588(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  IndentifierForMessageWithGUID = IMDMessageRecordGetIndentifierForMessageWithGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412546;
      v7 = v4;
      v8 = 2048;
      v9 = IndentifierForMessageWithGUID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Get identifier for message guid: %@  result: %lld", &v6, 0x16u);
    }
  }

  if (IndentifierForMessageWithGUID)
  {
    xpc_dictionary_set_int64(*(a1 + 40), "sint64_result", IndentifierForMessageWithGUID);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF3718;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF3718(uint64_t a1)
{
  v2 = IMDMessageRecordMaxMessageIDFromChatMessageJoin();
  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDMessageRecordGetMessagesSequenceNumber_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF37F8;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF37F8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = MessagesSequenceNumber;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Get messages sequence number: %lld", &v5, 0xCu);
    }
  }

  if (MessagesSequenceNumber)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "int64_result", MessagesSequenceNumber);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF3974;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BF3974(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IMDMessageRecordMarkMessageGUIDAsDeduplicated(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3A44;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BF3A44(uint64_t a1)
{
  v2 = IMOSLoggingEnabled();
  if (v2)
  {
    v3 = OSLogHandleForIMFoundationCategory();
    v2 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Mark all unsent messages failed", v5, 2u);
    }
  }

  IMDMessageRecordMarkFailedAllUnsentUnfailedMessages(v2);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteOrphanedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3B60;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BF3B60(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete orphaned messages", v4, 2u);
    }
  }

  IMDMessageRecordDeleteOrphanedMessages();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7AF5A14;
  v11[3] = &unk_1E7CBD640;
  v11[4] = a5;
  v11[5] = a6;
  v12 = a8;
  v11[6] = a7;
  v11[7] = a3;
  v11[8] = a4;
  v8 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v11, v8, v9, v10);
}

void __XPCServerIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3D04;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF3D04(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v23 = 138412546;
      v24 = v7;
      v25 = 2048;
      v26 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unplayed audio messages guids, for chat guid: %@  (Results: %ld)", &v23, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v12 = objc_msgSend_count(v2, v8, v9, v10);
    if (v12 >= 1)
    {
      v15 = 0;
      v16 = v12 & 0x7FFFFFFF;
      do
      {
        v17 = objc_msgSend_objectAtIndex_(v2, v13, v15, v14);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          v20 = objc_msgSend_UTF8String(v17, v13, v18, v14);
          xpc_array_set_string(v11, 0xFFFFFFFFFFFFFFFFLL, v20);
          xpc_release(v19);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      xpc_dictionary_set_value(v21, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BF3F48;
  v11[3] = &unk_1E7CBD668;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a8;
  v11[7] = a3;
  v11[8] = a4;
  v11[9] = a7;
  v8 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v11, v8, v9, v10);
}

uint64_t sub_1B7BF3F48(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID(*(a1 + 32), *(a1 + 40), *(a1 + 72), *(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(a1 + 72);
      v10 = *(a1 + 48);
      v24 = 138413314;
      v25 = v8;
      v26 = 2112;
      v27 = v7;
      v28 = 2048;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2048;
      v33 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unread incoming messages chatIdentifiers:%@   services: %@   limit: %lld  fallbackGUID:%@ (Result: %lu)", &v24, 0x34u);
    }
  }

  v14 = xpc_array_create(0, 0);
  if (v14)
  {
    v15 = objc_msgSend_count(v2, v11, v12, v13);
    if (v15 >= 1)
    {
      v18 = 0;
      v19 = v15 & 0x7FFFFFFF;
      do
      {
        v20 = objc_msgSend_objectAtIndex_(v2, v16, v18, v17);
        v21 = xpc_dictionary_create(0, 0, 0);
        if (v21)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v20, v21, 1, 0);
          xpc_array_append_value(v14, v21);
          xpc_release(v21);
        }

        ++v18;
      }

      while (v19 != v18);
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      xpc_dictionary_set_value(v22, "array_result", v14);
    }

    xpc_release(v14);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF41C0;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF41C0(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesDataDetectionResults(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v8 = a1[7];
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy DD result messages up to rowID: %lld  limit: %lld   (Result: %lu)", &v22, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v9, v10, v11);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v13 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v14, v16, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v12, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = a1[4];
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithReplyToGUIDs(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF4418;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF4418(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = IMDMessageRecordCopyMessagesWithReplyToGUIDs(*(a1 + 32), a2, a3, a4);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Copy messages with reply to guid %@", &v21, 0xCu);
    }
  }

  if (v5)
  {
    v11 = xpc_array_create(0, 0);
    if (v11)
    {
      v12 = objc_msgSend_count(v5, v8, v9, v10);
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v12 & 0x7FFFFFFF;
        do
        {
          v17 = objc_msgSend_objectAtIndex_(v5, v13, v15, v14);
          v18 = xpc_dictionary_create(0, 0, 0);
          if (v18)
          {
            _IMDMessageRecordBulkCopyXPCDictionary(v17, v18, 1, 0);
            xpc_array_append_value(v11, v18);
            xpc_release(v18);
          }

          ++v15;
        }

        while (v16 != v15);
      }

      v19 = *(a1 + 40);
      if (v19)
      {
        xpc_dictionary_set_value(v19, "array_result", v11);
      }

      xpc_release(v11);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF464C;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF464C(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v8 = a1[7];
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy newest unread incoming messages up to rowID: %lld  limit: %lld   (Result: %lu)", &v22, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v9, v10, v11);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v13 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v14, v16, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v12, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = a1[4];
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF48A4;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF48A4(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v8 = a1[7];
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy newest failed outgoing messages up to date: %lld  limit: %lld   (Result: %lu)", &v22, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v9, v10, v11);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v13 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v14, v16, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v12, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = a1[4];
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF4AFC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF4AFC(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMostRecentUseageOfAddresses(*(a1 + 32));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v7 = v3;
    v8 = objc_msgSend_count(v2, v4, v5, v6);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = v8 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          v16 = v14;
          v17 = objc_msgSend_UTF8String(v13, v9, v15, v10);
          xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, v17);
          xpc_release(v16);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v7);
    }

    xpc_release(v7);
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v2;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Copy most recent usage of addresses: %@   result: %@", &v22, 0x16u);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, uint64_t a44, uint64_t a45, __int128 a46, uint64_t a47, __int128 a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_1B7BF4E7C;
  v55[3] = &unk_1E7CBD690;
  v55[4] = a12;
  v55[5] = a14;
  v55[6] = a31;
  v55[7] = a5;
  v55[8] = a13;
  v55[9] = a17;
  v55[10] = a39;
  v78 = a6;
  v79 = a20;
  v80 = a7;
  v81 = a8;
  v83 = a10;
  v84 = a11;
  v58 = a21;
  v59 = a24;
  v86 = a23;
  v87 = a25;
  v60 = a27;
  v88 = a26;
  v89 = a28;
  v90 = a29;
  v91 = a30;
  v61 = a32;
  v62 = a33;
  v63 = a35;
  v92 = a34;
  v93 = a36;
  v65 = a38;
  v66 = a40;
  v67 = a41;
  v69 = a44;
  v70 = a45;
  v95 = a46;
  v94 = a42;
  v96 = a47;
  v97 = a50;
  v98 = a51;
  v72 = a49;
  v73 = a52;
  v74 = a18;
  v75 = a19;
  v76 = a3;
  v77 = a4;
  v82 = a9;
  v56 = a15;
  v57 = a16;
  v85 = a22;
  v64 = a37;
  v68 = a43;
  v71 = a48;
  v52 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v55, v52, v53, v54);
}

uint64_t sub_1B7BF4E7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = objc_msgSend_unsignedLongLongValue(v5, a2, a3, a4);
  v8 = *(a1 + 48);
  if ((v7 & 0x100000) != 0)
  {
    v73 = v5;
    goto LABEL_24;
  }

  v9 = *(a1 + 56);
  v10 = JWDecodeCodableObjectWithStandardAllowlist();
  v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);
  if (!objc_msgSend_length(v9, v15, v16, v17))
  {
    objc_msgSend_string(v14, v18, v19, v20);
  }

  if (objc_msgSend_supportsDataDetectors(MEMORY[0x1E69A8020], v18, v19, v20) && objc_msgSend_length(v14, v21, v22, v23) < *MEMORY[0x1E69A6878])
  {
    objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v21, v24, v23, *(a1 + 304));
    if (IMDDScanAttributedStringWithExtendedContext())
    {
      v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v25, v7 | 0x110000, v26);
      v6 = JWEncodeCodableObject();
    }

    else
    {
      v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v25, v7 | 0x100000, v26);
    }

    if ((v7 & 4) == 0)
    {
LABEL_13:
      if (objc_msgSend_isEqualToString_(*(a1 + 48), v28, *MEMORY[0x1E69A68F0], v29))
      {
        v30 = objc_alloc_init(MEMORY[0x1E69A81B0]);
        OTCFromMessageBody_sender_guid = objc_msgSend_createOTCFromMessageBody_sender_guid_(v30, v31, v14, *(a1 + 72), *(a1 + 64));
        if (OTCFromMessageBody_sender_guid)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = *(a1 + 64);
              *buf = 138412290;
              v76 = v34;
              _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Creating chat bot message containing OTC guid: %@", buf, 0xCu);
            }
          }

          v8 = 0;
        }

        if (v30)
        {
        }

        if (OTCFromMessageBody_sender_guid)
        {
        }
      }
    }
  }

  else
  {
    v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v21, v7 | 0x100000, v23);
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  v73 = v27;
LABEL_24:
  v35 = *(a1 + 88);
  v36 = *(a1 + 120);
  v37 = *(a1 + 368);
  v38 = *(a1 + 384);
  v39 = IMDMessageRecordCreate(0, *(a1 + 312), *(a1 + 56), *(a1 + 304), *(a1 + 320), *(a1 + 328), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), v73, *(a1 + 64), v6, v35, *(&v35 + 1), *(a1 + 104), *(a1 + 112), 0, 0, 0, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), *(a1 + 400), *(a1 + 136), *(a1 + 408), *(a1 + 416), *(a1 + 424), v8, *(a1 + 144), *(a1 + 152), *(a1 + 432), *(a1 + 160), *(a1 + 440), *(a1 + 168), *(a1 + 176), *(a1 + 184), 0, *(a1 + 192), *(a1 + 200), *(a1 + 448), *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 456), *(a1 + 464), *(a1 + 472), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 480), *(a1 + 488), *(a1 + 264));
  if (v39)
  {
    v40 = *(a1 + 72);
    if (v40)
    {
      v41 = IMDHandleRecordCopyHandleForIDOnService(v40, *(a1 + 88));
      if (v41)
      {
        goto LABEL_30;
      }

      v42 = *(a1 + 72);
      v43 = *(a1 + 272);
      if (!v43)
      {
        v43 = IMCountryCodeForIncomingTextMessage();
      }

      v41 = IMDHandleRecordCreate(*MEMORY[0x1E695E480], v42, v43, *(a1 + 88), *(a1 + 280), 0);
      if (v41)
      {
LABEL_30:
        IMDMessageRecordSetHandle(v39, v41);
        IMDSMSRecordStoreInvalidateCaches();
        CFRelease(v41);
      }
    }

    v44 = *(a1 + 120);
    if (v44)
    {
      v45 = IMDHandleRecordCopyHandleForIDOnService(v44, *(a1 + 88));
      if (v45)
      {
        goto LABEL_36;
      }

      v46 = *(a1 + 120);
      v47 = *(a1 + 272);
      if (!v47)
      {
        v47 = IMCountryCodeForIncomingTextMessage();
      }

      v45 = IMDHandleRecordCreate(*MEMORY[0x1E695E480], v46, v47, *(a1 + 88), *(a1 + 280), 0);
      if (v45)
      {
LABEL_36:
        IMDMessageRecordSetOtherHandle(v39, v45);
        IMDSMSRecordStoreInvalidateCaches();
        CFRelease(v45);
      }
    }
  }

  v48 = IMBalloonExtensionIDWithSuffix();
  if (objc_msgSend_isEqualToString_(v8, v49, v48, v50))
  {
    IMProcessPeerPaymentMessageWithPayloadData();
  }

  else
  {
    v51 = IMBalloonExtensionIDWithSuffix();
    if (objc_msgSend_isEqualToString_(v8, v52, v51, v53))
    {
      IMProcessPhotosExtensionMessageWithPayloadData();
    }

    else if (objc_msgSend_isEqualToString_(v8, v54, *MEMORY[0x1E69A6A18], v55))
    {
      IMProcessRichLinkMessageWithBody();
    }

    else
    {
      v56 = IMBalloonExtensionIDWithSuffix();
      if (objc_msgSend_isEqualToString_(v8, v57, v56, v58))
      {
        if (*(a1 + 72))
        {
          v74 = *(a1 + 72);
          v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v59, &v74, 1);
          v61 = IMDCNRecordIDForAliases(v60);
          v64 = objc_msgSend_objectForKey_(v61, v62, *(a1 + 72), v63);
          objc_msgSend_isEqualToString_(v64, v65, @"__kIMDCNPersonNotFound", v66);
        }

        IMProcessGameCenterMessageWithPayloadData();
      }
    }
  }

  v67 = IMOSLoggingEnabled();
  if (v39)
  {
    if (v67)
    {
      v68 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = *(a1 + 64);
        *buf = 138412290;
        v76 = v69;
        _os_log_impl(&dword_1B7AD5000, v68, OS_LOG_TYPE_INFO, "Created message with guid: %@", buf, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v39, *(a1 + 288), 0, 0);
    CFRelease(v39);
  }

  else if (v67)
  {
    v70 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = *(a1 + 64);
      *buf = 138412290;
      v76 = v71;
      _os_log_impl(&dword_1B7AD5000, v70, OS_LOG_TYPE_INFO, "Failed to create message with guid: %@", buf, 0xCu);
    }
  }

  result = *(a1 + 296);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatForMessageGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5580;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF5580(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatForMessageGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v9 = 138412546;
        v10 = v2;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Found chat: %@  for message GUID: %@", &v9, 0x16u);
      }
    }

    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 0, 0, 0, 1);
    CFRelease(v2);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Tried to find chat from message GUID: %@, but no chat was found", &v9, 0xCu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyAttachments_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5788;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  IMDPersistencePerformBlock(block, 1, a3, a4);
}

uint64_t sub_1B7BF5788(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDMessageRecordCopyAttachments(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = a1[6];
        v25 = 134218240;
        v26 = v9;
        v27 = 2048;
        v28 = objc_msgSend_count(v4, v6, v7, v8);
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copy attachments from message ID: %lld  (Results: %lu)", &v25, 0x16u);
      }
    }

    v13 = xpc_array_create(0, 0);
    if (v13)
    {
      v14 = objc_msgSend_count(v4, v10, v11, v12);
      if (v14 >= 1)
      {
        v17 = 0;
        v18 = v14 & 0x7FFFFFFF;
        do
        {
          v19 = objc_msgSend_objectAtIndex_(v4, v15, v17, v16);
          v20 = xpc_dictionary_create(0, 0, 0);
          if (v20)
          {
            _IMDAttachmentRecordBulkCopyXPCDictionary(v19, v20, 1);
            xpc_array_append_value(v13, v20);
            xpc_release(v20);
          }

          ++v17;
        }

        while (v18 != v17);
      }

      v21 = a1[4];
      if (v21)
      {
        xpc_dictionary_set_value(v21, "array_result", v13);
      }

      xpc_release(v13);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = a1[6];
      v25 = 134217984;
      v26 = v23;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Tried to copy attachments from message ID: %lld, but no attachments found", &v25, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordSetHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5A58;
  block[3] = &unk_1E7CBD438;
  block[5] = a6;
  block[6] = a5;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF5A58(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v4)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = a1[5];
        v11 = a1[6];
        v13 = 134218240;
        v14 = v10;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Setting handle ID: %lld  on message ID: %lld", &v13, 0x16u);
      }
    }

    IMDMessageRecordSetHandle(v3, v2);
LABEL_15:
    CFRelease(v3);
    goto LABEL_16;
  }

  if (v4)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = a1[6];
      v13 = 134218754;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v2;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to set handle (%lld) on message (%lld)   (Message: %@  Handle: %@)", &v13, 0x2Au);
    }
  }

  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v2)
  {
    CFRelease(v2);
  }

  IMDSMSRecordStoreInvalidateCaches();
  result = a1[4];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5CB0;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF5CB0(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  if (v2)
  {
    v6 = v2;
    v7 = IMDMessageRecordCopyHandle(v2, v3, v4, v5);
    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = a1[6];
          v16 = 138412546;
          v17 = v7;
          v18 = 2048;
          v19 = v10;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Copied handle: %@  for message ID: %lld", &v16, 0x16u);
        }
      }

      _IMDHandleRecordBulkCopyXPCDictionary(v7, a1[4], 1);
      CFRelease(v7);
    }

    else if (v8)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = a1[6];
        v16 = 134217984;
        v17 = v14;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Tried to copy handle from Message ID: %lld, but no handle was found", &v16, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[6];
      v16 = 134217984;
      v17 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Tried to copy handle from Message ID: %lld, but no message was found", &v16, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyOtherHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5F44;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF5F44(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  if (v2)
  {
    v6 = v2;
    v7 = IMDMessageRecordCopyOtherHandle(v2, v3, v4, v5);
    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = a1[6];
          v16 = 138412546;
          v17 = v7;
          v18 = 2048;
          v19 = v10;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Copied other handle: %@  for message ID: %lld", &v16, 0x16u);
        }
      }

      _IMDHandleRecordBulkCopyXPCDictionary(v7, a1[4], 1);
      CFRelease(v7);
    }

    else if (v8)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = a1[6];
        v16 = 134217984;
        v17 = v14;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Tried to copy other handle from Message ID: %lld, but no handle was found", &v16, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[6];
      v16 = 134217984;
      v17 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Tried to copy other handle from Message ID: %lld, but no message was found", &v16, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordBulkUpdate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, __int128 a35, uint64_t a36, uint64_t a37, __int128 a38, uint64_t a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1B7BF62F4;
  v47[3] = &unk_1E7CBD6B8;
  v67 = a5;
  v68 = a6;
  v47[4] = a7;
  v70 = a9;
  v69 = a8;
  v71 = a10;
  v51 = a15;
  v73 = a16;
  v72 = a14;
  v74 = a17;
  v52 = a20;
  v76 = a19;
  v77 = a21;
  v53 = a23;
  v79 = a24;
  v78 = a22;
  v80 = a25;
  v81 = a28;
  v55 = a27;
  v56 = a29;
  v82 = a30;
  v59 = a33;
  v61 = a36;
  v84 = a38;
  v83 = a34;
  v85 = a39;
  v60 = a35;
  v63 = a40;
  v62 = a37;
  v64 = a41;
  v86 = a42;
  v87 = a43;
  v65 = a44;
  v66 = a4;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v75 = a18;
  v54 = a26;
  v57 = a31;
  v58 = a32;
  v44 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v47, v44, v45, v46);
}