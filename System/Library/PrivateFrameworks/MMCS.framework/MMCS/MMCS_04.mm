void mmcs_http_context_should_stop_with_error(uint64_t a1, __CFError *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 288) && !*(a1 + 289))
  {
    v4 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p should stop", a1);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (a2)
    {
      mmcs_http_context_set_error(a1, a2);
    }

    mmcs_http_context_did_stop_with_error(a1, a2);
    mmcs_http_context_transaction_complete(a1, v8);
  }
}

__CFString *mmcs_http_get_stream_status_string(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"meandering";
  }

  else
  {
    return streamStatusString[a1];
  }
}

uint64_t mmcs_http_context_actual_bytes_written(uint64_t a1)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v2 = callbacks[15 * *(a1 + 16) + 6];
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  os_activity_scope_leave(&v5);
  return v3;
}

BOOL mmcs_http_context_is_sending(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 296) == 0;
  }

  return !v1;
}

uint64_t mmcs_http_context_send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &state);
  mmcs_http_context_will_reset_request(a1);
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 80) = Current;
  *(a1 + 280) = Current;
  *(a1 + 312) = Current;
  *(a1 + 320) = Current;
  v7 = callbacks[15 * *(a1 + 16) + 3];
  if (!v7)
  {
    mmcs_http_context_send_cold_2();
  }

  v8 = v7(a1, a2, a3);
  v9 = *(a1 + 336);
  if (*(a1 + 400))
  {
    v10 = CFHTTPMessageCopyHeaderFieldValue(v9, @"Content-Length");
    if (!v10)
    {
      IntValue = -1;
      goto LABEL_10;
    }

    v12 = v10;
    IntValue = CFStringGetIntValue(v10);
  }

  else
  {
    v10 = CFHTTPMessageCopyBody(v9);
    if (!v10)
    {
      IntValue = 0;
      goto LABEL_10;
    }

    v12 = v10;
    IntValue = CFDataGetLength(v10);
  }

  CFRelease(v12);
LABEL_10:
  *(a1 + 136) = IntValue;
  if (!*(a1 + 488) && gMMCS_DebugLevel < 3)
  {
    goto LABEL_22;
  }

  v14 = mmcs_logging_logger_default(v10, v11);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (IntValue == -1)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) sending request with unknown length body", a1);
    v18 = mmcs_logging_logger_default(v16, v19);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v23 = v16;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) sending %lld body bytes", a1, *(a1 + 136));
    v18 = mmcs_logging_logger_default(v16, v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v23 = v16;
  }

  _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_20:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_22:
  if (!v8)
  {
    if (!*(a1 + 328))
    {
      mmcs_http_context_send_cold_1();
    }

    mmcs_http_context_transaction_complete(a1, v11);
  }

  os_activity_scope_leave(&state);
  return v8;
}

void mmcs_http_context_will_reset_request(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  *(a1 + 296) = 0;
  *(a1 + 416) = 0;
  v2 = callbacks[15 * *(a1 + 16) + 4];
  if (v2)
  {
    v2(a1);
  }

  os_activity_scope_leave(&v3);
}

uint64_t mmcs_http_reset_context_for_new_stream(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) resetting for new stream", a1);
    v6 = mmcs_logging_logger_default(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  *(a1 + 296) = 0;
  *(a1 + 136) = xmmword_25785F970;
  metricsinfo__clear_bytes_written(a1 + 24);
  *(a1 + 312) = 0;
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_timed_out(a1 + 24);
  metricsinfo__clear_http_status(a1 + 24);
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  metricsinfo__clear_response_size(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  mmcs_http_context_will_reset_request(a1);
  *(a1 + 484) = 0;
  v7 = *(a1 + 424);
  if (v7)
  {
    fclose(v7);
    *(a1 + 424) = 0;
  }

  result = debug_begin_writing_http_message_to_file(a1, *(a1 + 336), (a1 + 424), *(a1 + 264), 0);
  if (result && !*(a1 + 400) && *(a1 + 424))
  {
    v9 = CFHTTPMessageCopyBody(*(a1 + 336));
    if (v9)
    {
      v10 = v9;
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v10);
      fwrite(BytePtr, Length, 1uLL, *(a1 + 424));
      CFRelease(v10);
    }

    result = fclose(*(a1 + 424));
    *(a1 + 424) = 0;
  }

  v13 = *(a1 + 504);
  if (v13)
  {
    return v13(a1, *(a1 + 576));
  }

  return result;
}

void mmcs_http_reset_response_state_for_background_retry(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p", a1);
    v6 = mmcs_logging_logger_default(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v7 = *(a1 + 432);
  if (v7)
  {
    fclose(v7);
    *(a1 + 432) = 0;
  }

  *(a1 + 120) = 0;
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  metricsinfo__clear_timed_out(a1 + 24);
  *(a1 + 56) = 0;
  metricsinfo__clear_http_status(a1 + 24);
  v8 = *(a1 + 488);
  if (v8)
  {
    mmcs_metrics_http_info_release(v8);
    *(a1 + 488) = 0;
  }

  metricsinfo__clear_response_size(a1 + 24);
  *(a1 + 144) = 0;
  metricsinfo__clear_bytes_written(a1 + 24);
  *(a1 + 312) = 0;
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  v9 = *(a1 + 408);
  if (v9)
  {
    CFDataSetLength(v9, 0);
  }

  v10 = *(a1 + 432);
  if (v10)
  {
    fclose(v10);
    *(a1 + 432) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 80) = Current;
  *(a1 + 312) = Current;
  *(a1 + 320) = Current;
  *(a1 + 280) = Current;
  v12 = *(a1 + 328);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 328) = 0;
  v13 = *(a1 + 392);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 392) = 0;
  v14 = *(a1 + 464);
  if (v14)
  {
    free(v14);
  }

  *(a1 + 464) = 0;
  v15 = *(a1 + 472);
  if (v15)
  {
    free(v15);
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
}

size_t mmcs_http_write_request_body(uint64_t a1, const void *a2, uint64_t a3)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &state);
  v6 = callbacks[15 * *(a1 + 16) + 7];
  if (v6)
  {
    v7 = v6(a1, a2, a3);
    v8 = v7;
    if (v7 >= 1)
    {
      *(a1 + 144) += v7;
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a1 + 552))
      {
        memset(v12, 0, sizeof(v12));
        mmcs_network_activity_make(v8, 0, v12, *(a1 + 312), Current);
        (*(a1 + 552))(a1, v12, *(a1 + 576));
      }

      *(a1 + 312) = Current;
      v10 = *(a1 + 424);
      if (v10)
      {
        fwrite(a2, v8, 1uLL, v10);
      }
    }
  }

  else
  {
    v8 = -1;
  }

  os_activity_scope_leave(&state);
  return v8;
}

void mmcs_http_set_request_body_done(uint64_t a1)
{
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v4);
  v2 = *(a1 + 424);
  if (v2)
  {
    fclose(v2);
    *(a1 + 424) = 0;
  }

  *(a1 + 416) = 1;
  v3 = callbacks[15 * *(a1 + 16) + 8];
  if (v3)
  {
    v3(a1);
  }

  os_activity_scope_leave(&v4);
}

uint64_t mmcs_http_request_body_can_accept_data(uint64_t a1)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v2 = callbacks[15 * *(a1 + 16) + 9];
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  os_activity_scope_leave(&v5);
  return v3;
}

__CFHTTPMessage *create_http_protobuf_message(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFURL *a6, const __CFData *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel <= 4)
  {
    v16 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v14 = mmcs_logging_logger_default(a1, a2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    v16 = *MEMORY[0x277CBECE8];
    if (v15)
    {
      v17 = CFStringCreateWithFormat(v16, 0, @"url: %@", a6);
      v19 = mmcs_logging_logger_default(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  Request = CFHTTPMessageCreateRequest(v16, @"POST", a6, *MEMORY[0x277CBAD00]);
  v22 = Request;
  if (Request)
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"application/vnd.com.apple.me.ubchunk+protobuf");
    CFHTTPMessageSetHeaderFieldValue(v22, @"Accept", @"application/vnd.com.apple.me.ubchunk+protobuf");
    CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-mmcs-proto-version", a1);
    CFHTTPMessageSetHeaderFieldValue(v22, @"x-mme-client-info", a2);
    CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-mmcs-dataclass", a3);
    value = 0;
    *buf = 0;
    mmcs_report_copy_plist_header_values(buf, &value);
    if (*buf)
    {
      CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-mmcs-plist-version", *buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      *buf = 0;
    }

    if (value)
    {
      CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-mmcs-plist-sha256", value);
      if (value)
      {
        CFRelease(value);
      }

      value = 0;
    }

    if (a4)
    {
      CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-mme-dsid", a4);
    }

    if (a5)
    {
      CFHTTPMessageSetHeaderFieldValue(v22, @"x-apple-caller-request-uuid", a5);
    }

    CFHTTPMessageSetBody(v22, a7);
  }

  else
  {
    v23 = mmcs_logging_logger_default(0, v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = CFStringCreateWithFormat(v16, 0, @"Failed creating request to %@", a6);
      v26 = mmcs_logging_logger_default(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  return v22;
}

double mmcs_http_context_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 128);
  v4 = v2 < v1 || v2 == 0.0 || v1 == 0.0;
  result = v2 - v1;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

double mmcs_http_context_enqueued_seconds(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 232);
  if (*(a1 + 248))
  {
    if (v2)
    {
      v3 = *(a1 + 240);
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 == 0.0)
      {
        return 0.0;
      }
    }

    v4 = v3 - *(a1 + 256);
  }

  else
  {
    v4 = 0.0;
    if (!v2)
    {
      return v4;
    }

    v5 = *(a1 + 80);
    if (v5 == 0.0)
    {
      return v4;
    }

    v4 = *(a1 + 240) - v5;
  }

  if (v4 < 0.0)
  {
    v6 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ignoring enqueued duration of %lf", *&v4);
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  return v4;
}

void mmcs_http_context_name_resolution_seconds(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 104))
    {
      metricsinfo__get_start_name_resolution(a1 + 24, a2);
      metricsinfo__get_stop_name_resolution(a1 + 24, v3);
    }
  }
}

__CFString *mmcs_http_context_class_description(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return @"unknown mmcs_http_class";
  }

  else
  {
    return off_279845628[v1];
  }
}

void mmcs_http_context_append_description(uint64_t *a1)
{
  v2 = *a1;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(v2 + 584), &state);
  v3 = *(a1 + 1);
  v15 = *a1;
  v16 = v3;
  v17 = *(a1 + 2);
  *(&v16 + 1) = *(&v3 + 1) + 1;
  if (!*(v2 + 56))
  {
    mmcs_op_requestor_context_indent(a1);
    v4 = *(v2 + 16);
    if (v4 > 3)
    {
      v5 = @"unknown mmcs_http_class";
    }

    else
    {
      v5 = off_279845628[v4];
    }

    CFStringAppendFormat(a1[2], 0, @"<%@ %p>", v5, v2, v15, v16, v17);
    v6 = a1[2];
    v7 = *(v2 + 336);
    if (v7)
    {
      v8 = CFHTTPMessageCopyRequestURL(v7);
      if (v8)
      {
        v9 = v8;
        v10 = CFURLGetString(v8);
        if (v10)
        {
          CFStringAppend(v6, v10);
        }

        CFRelease(v9);
      }
    }

    mmcs_http_request_options_append_description(*(v2 + 368), v6);
    v11 = *(v2 + 368);
    if (v11 && mmcs_http_request_options_is_background(v11))
    {
      CFStringAppendFormat(v6, 0, @" sendSize=%llu, receiveSize=%llu", *(v2 + 352), *(v2 + 360));
    }

    v12 = *(v2 + 296);
    if (v12 > 3)
    {
      v13 = @"meandering";
    }

    else
    {
      v13 = streamStatusString[v12];
    }

    CFStringAppendFormat(v6, 0, @" streamState=%@", v13);
    CFStringAppend(a1[2], @"\n");
    v14 = callbacks[15 * *(v2 + 16) + 2];
    if (v14)
    {
      v14(&v15);
    }
  }

  os_activity_scope_leave(&state);
}

CFStringRef mmcs_http_context_copy_blocked_application_header_value(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (!v1)
  {
    return 0;
  }

  v2 = CFHTTPMessageCopyAllHeaderFields(v1);
  Value = CFDictionaryGetValue(v2, @"x-apple-mmcs-blocked-apps");
  if (Value)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], Value);
    if (!v2)
    {
      return Copy;
    }

    goto LABEL_7;
  }

  Copy = 0;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

  return Copy;
}

const void *mmcs_index_set_create_with_string(const __CFString *a1)
{
  v10 = 0;
  if (!mmcs_index_set_create(&v10))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    v4 = 0;
    v7 = -1;
LABEL_14:
    v8 = token(v10, a1, v4, v7, Length);
    result = v10;
    if (v8 || !v10)
    {
      return result;
    }

LABEL_18:
    C3BaseRelease(result);
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = -1;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v3);
    if (CharacterAtIndex == 45)
    {
      break;
    }

    if (CharacterAtIndex == 44)
    {
      if (!token(v10, a1, v4, v5, v3))
      {
        goto LABEL_17;
      }

      v4 = v3 + 1;
      v7 = -1;
    }

    else
    {
      v7 = v5;
    }

LABEL_11:
    ++v3;
    v5 = v7;
    if (Length == v3)
    {
      goto LABEL_14;
    }
  }

  v7 = v3;
  if (v5 < 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  result = v10;
  if (v10)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t token(uint64_t a1, const __CFString *a2, CFIndex a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 - a3;
  if (a5 - a3 >= 3)
  {
    v11 = CFLocaleCreate(0, @"en_US");
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x277CBECE8];
      v14 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v11, kCFNumberFormatterNoStyle);
      if (!v14)
      {
        v20 = 0;
LABEL_31:
        CFRelease(v12);
        return v20;
      }

      v15 = v14;
      if (a4 < 0)
      {
        rangep.location = a3;
        rangep.length = v5;
        v21 = CFNumberFormatterCreateNumberFromString(v13, v14, a2, &rangep, 1uLL);
        LODWORD(valuePtr.location) = -1;
        if (v21)
        {
          v22 = v21;
          CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
          if ((LODWORD(valuePtr.location) - 100) > 0x383)
          {
            v20 = 0;
          }

          else
          {
            mmcs_index_set_add_index(a1, LODWORD(valuePtr.location));
            v20 = 1;
          }

          v24 = v22;
          goto LABEL_29;
        }

        v20 = 0;
LABEL_30:
        CFRelease(v15);
        goto LABEL_31;
      }

      rangep.location = a3;
      rangep.length = a4 - a3;
      valuePtr.location = a4 + 1;
      valuePtr.length = a5 - (a4 + 1);
      v26 = -1;
      v27 = -1;
      v16 = CFNumberFormatterCreateNumberFromString(v13, v14, a2, &rangep, 1uLL);
      v17 = CFNumberFormatterCreateNumberFromString(v13, v15, a2, &valuePtr, 1uLL);
      v18 = v17;
      if (v16)
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0;
        if (!v16)
        {
LABEL_24:
          if (v18)
          {
            v24 = v18;
LABEL_29:
            CFRelease(v24);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }

      else
      {
        Value = CFNumberGetValue(v16, kCFNumberSInt32Type, &v27);
        if (Value && CFNumberGetValue(v18, kCFNumberSInt32Type, &v26))
        {
          v20 = 0;
          if (v27 >= 100 && v26 <= 999)
          {
            mmcs_index_set_add_range(a1, v27, v26);
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      CFRelease(v16);
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t mmcs_file_extents(const char *a1, off_t *a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = open(a1, 0, 0);
  if (v9 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  memset(v19, 0, 20);
  bzero(&v20, 0x878uLL);
  memset(&v18, 0, sizeof(v18));
  if (!fstatfs(v10, &v20) && !fstat(v10, &v18))
  {
    st_size = v18.st_size;
    if (v18.st_size)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        *(v19 + 4) = st_size;
        *(&v19[1] + 4) = v16;
        if (fcntl(v10, 65, v19) == -1)
        {
          break;
        }

        f_bsize = v20.f_bsize;
        v16 += *(v19 + 4);
        v15 += (*(v19 + 4) + (v20.f_bsize - 1)) / v20.f_bsize;
        ++v14;
        st_size -= *(v19 + 4);
        if (!st_size)
        {
          if (a2)
          {
            *a2 = v18.st_size;
          }

          if (a4)
          {
            *a4 = f_bsize;
          }

          if (a3)
          {
            *a3 = v15;
          }

          v11 = 0;
          if (a5)
          {
            *a5 = v14;
          }

          goto LABEL_5;
        }
      }
    }
  }

  v11 = 0xFFFFFFFFLL;
LABEL_5:
  close(v10);
  return v11;
}

uint64_t mmcs_item_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char *a4, uint64_t a5, uint64_t a6, CFErrorRef *a7, uint64_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = a2;
  if (!a3)
  {
    if (a7)
    {
      v32 = a2;
      v13 = @"NULL signature for item %lld";
      goto LABEL_8;
    }

    return 0;
  }

  v10 = a5;
  if ((a5 & 1) != 0 && *a3 == 129)
  {
    if (a7)
    {
      v32 = a2;
      v13 = @"signature for item %lld requires the item to be put unencrypted";
LABEL_8:
      v14 = 40;
LABEL_9:
      v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v14, v13, a4, a5, a6, a7, a8, v32);
LABEL_10:
      v16 = v15;
      result = 0;
      *a7 = v16;
      return result;
    }

    return 0;
  }

  v18 = mmcs_file_signature_copy(a3);
  *a1 = v18;
  if (!v18)
  {
    if (!a7)
    {
      return 0;
    }

    v32 = *(a1 + 40);
    v13 = @"Unable to allocate signature for item %lld";
LABEL_30:
    v14 = 37;
    goto LABEL_9;
  }

  if (a4)
  {
    v19 = strdup(a4);
    *(a1 + 8) = v19;
    if (!v19)
    {
      if (!a7)
      {
        return 0;
      }

      v32 = *(a1 + 40);
      v13 = @"Unable to allocate token for item %lld";
      goto LABEL_30;
    }
  }

  *(a1 + 16) = -1;
  *(a1 + 32) = v10;
  *(a1 + 272) = 0;
  *(a1 + 392) = 0;
  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
  *(a1 + 280) = Mutable;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 160) = a6;
  if (a6 == 2)
  {
    *(a1 + 172) = 1;
    return 1;
  }

  if (a6 == 1)
  {
    *(a1 + 164) = 1;
    return 1;
  }

  v23 = mmcs_logging_logger_default(Mutable, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v29 = CFStringCreateWithFormat(v20, 0, @"Invalid operation type %d", a6);
    v31 = mmcs_logging_logger_default(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v29;
      _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

  if (a7)
  {
    v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Invalid operation type (%d) for item %lld", v24, v25, v26, v27, v28, *(a1 + 160), *(a1 + 40));
    goto LABEL_10;
  }

  return 0;
}

BOOL mmcs_item_set_chunk_instance_capacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 272))
  {
    return 0;
  }

  *(a1 + 136) = a2;
  if (!is_mul_ok(a2, 0x68uLL))
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 104 * a2, 0x1060040917B5EB5uLL);
  *(a1 + 272) = v4;
  return v4 != 0;
}

void mmcs_item_set_section_identifier(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 336);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 336) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 336) = cf;
  }
}

void mmcs_item_finalize(uint64_t a1)
{
  mmcs_wrapping_state_set_reference_signature_and_object(a1 + 48, 0, 0);
  mmcs_wrapping_state_set_reference_signature_and_object(a1 + 64, 0, 0);
  v2 = *(a1 + 200);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 200) = 0;
  }

  *(a1 + 352) = 0;
  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 112) = 0;
  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 120) = 0;
  v7 = *(a1 + 208);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 208) = 0;
  v8 = *(a1 + 280);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 280) = 0;
  v9 = *(a1 + 288);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 288) = 0;
  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 184) = 0;
  v11 = *(a1 + 224);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 224) = 0;
  v12 = *(a1 + 336);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 336) = 0;
  v13 = *(a1 + 240);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 240) = 0;
  v14 = *(a1 + 192);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 192) = 0;
  v15 = *(a1 + 360);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a1 + 360) = 0;
  v16 = *(a1 + 368);
  if (v16)
  {
    C3BaseRelease(v16);
  }

  *(a1 + 368) = 0;
  v17 = *(a1 + 400);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 400) = 0;
  v18 = *(a1 + 272);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 272) = 0;
  if (*a1)
  {
    free(*a1);
  }

  *a1 = 0;
  v19 = *(a1 + 8);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 128);
  if (v20)
  {
    free(v20);
  }

  *(a1 + 128) = 0;
}

void mmcs_item_set_MIME_type(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 200);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 200) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_item_set_boundary_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 80);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 80) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 80) = cf;
  }
}

void mmcs_item_set_file_verification_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 88) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 88) = cf;
  }
}

CFStringRef mmcs_item_copy_description(char **a1)
{
  v2 = mmcs_file_signature_to_hexstring(*a1);
  v3 = a1[50];
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    v5 = mmcs_file_signature_to_hexstring(BytePtr);
  }

  else
  {
    v5 = 0;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<req_item %p> id:%lld sig:%s rsig:%s roff:%lld rlen:%lld wrap ref:%@ unwrap ref:%@ chunks:%lld", a1, a1[5], v2, v5, a1[47], a1[48], a1[8], a1[6], a1[18]);
  if (v2)
  {
    free(v2);
  }

  if (v5)
  {
    free(v5);
  }

  return v6;
}

void mmcs_item_items_by_signature_description(char **a1, CFArrayRef theArray, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = mmcs_file_signature_to_hexstring(*a1);
    CStringDescription = XCFDataCreateCStringDescription(a1[8]);
    v7 = mmcs_logging_logger_default(CStringDescription, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[42];
      *v10 = 138543874;
      *&v10[4] = v8;
      v11 = 2082;
      v12 = v4;
      v13 = 2082;
      v14 = CStringDescription;
      _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_INFO, "sectionId:%{public}@ sig:%{public}s ref:%{public}s", v10, 0x20u);
    }

    if (v4)
    {
      free(v4);
    }

    if (CStringDescription)
    {
      free(CStringDescription);
    }
  }

  else
  {
    *v10 = a3;
    v16.length = CFArrayGetCount(theArray);
    v16.location = 0;
    CFArrayApplyFunction(theArray, v16, _item_by_signature_description, v10);
  }
}

void _item_by_signature_description(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1[48])
  {
    v3 = a1[50];
    if (v3)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v3 = mmcs_file_signature_to_hexstring(BytePtr);
      CStringDescription = v3;
    }

    else
    {
      CStringDescription = 0;
    }

    v12 = mmcs_logging_logger_default(v3, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a1[5];
      v14 = a1[47];
      v15 = a1[48];
      v16 = 134218754;
      v17 = v13;
      v18 = 2080;
      v19 = CStringDescription;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_INFO, "itemId:%llu rsig:%s itemOffset:%lld itemLength:%lld", &v16, 0x2Au);
    }
  }

  else
  {
    v7 = mmcs_file_signature_to_hexstring(*a1);
    v8 = 8;
    if (*a2 == 3)
    {
      v8 = 6;
    }

    CStringDescription = XCFDataCreateCStringDescription(a1[v8]);
    v10 = mmcs_logging_logger_default(CStringDescription, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      v16 = 134218498;
      v17 = v11;
      v18 = 2082;
      v19 = v7;
      v20 = 2082;
      v21 = CStringDescription;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_INFO, "itemId:%llu sig:%{public}s ref:%{public}s", &v16, 0x20u);
    }

    if (v7)
    {
      free(v7);
    }
  }

  if (CStringDescription)
  {
    free(CStringDescription);
  }
}

uint64_t mmcs_item_signature_reference_equals(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CKFileSignaturesEqual();
      if (result)
      {
        result = XCFSafelyEquals(a1[8], a2[8]);
        if (result)
        {
          return XCFSafelyEquals(a1[6], a2[6]);
        }
      }
    }
  }

  return result;
}

unint64_t mmcs_item_signature_reference_hash(uint64_t **a1)
{
  v2 = **a1;
  v3 = XCFSafelyHash(a1[8]);
  return v3 ^ XCFSafelyHash(a1[6]) ^ v2;
}

void mmcs_item_set_size(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 < 0)
    {
      v4 = mmcs_logging_logger_default(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item size must not be negative (itemid: %lld size: %lld)!\n", *(a1 + 40), a2);
        v7 = mmcs_logging_logger_default(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    else
    {
      *(a1 + 16) = a2;
    }
  }
}

void mmcs_item_set_padded_size(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 < 0)
    {
      v4 = mmcs_logging_logger_default(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item padded size must not be negative (itemid: %lld size: %lld)!\n", *(a1 + 40), a2);
        v7 = mmcs_logging_logger_default(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    else
    {
      *(a1 + 24) = a2;
    }
  }
}

uint64_t mmcs_item_is_encrypted(char **a1)
{
  if (**a1 < 0)
  {
    return 0;
  }

  else
  {
    return a1[4] & 1;
  }
}

void mmcs_item_set_put_receipt_with_expiry_time(uint64_t a1, CFTypeRef cf, double a3)
{
  v5 = *(a1 + 224);
  if (v5 != cf)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 224) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 224) = cf;
  }

  *(a1 + 232) = a3;
}

void mmcs_wrapping_state_set_reference_signature_and_object(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v5 = *a1;
  if (v5 != cf)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    *a1 = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *a1 = cf;
  }

  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    *(a1 + 8) = 0;
    if (a3)
    {
      CFRetain(a3);
    }

    *(a1 + 8) = a3;
  }
}

uint64_t mmcs_wrapping_state_is_equal(const void **a1, const void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return CFEqual(v2, v3);
  }
}

const void *mmcs_wrapping_state_hash(const void **a1)
{
  result = *a1;
  if (result)
  {
    return CFHash(result);
  }

  return result;
}

void mmcs_item_set_server_error(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 240);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 240) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 240) = cf;
  }
}

uint64_t mmcs_item_add_outstanding_chunk_reference(uint64_t a1, void *a2)
{
  if (CFSetContainsValue(*(a1 + 280), a2))
  {
    return 0;
  }

  v5 = *(a1 + 296) + *(a2[6] + 64);
  *(a1 + 296) = v5;
  *(a1 + 304) = v5;
  CFSetSetValue(*(a1 + 280), a2);
  return 1;
}

void mmcs_item_append_put_container_error(uint64_t a1, void *value)
{
  Mutable = *(a1 + 184);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(a1 + 184) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

void mmcs_item_update_get_progress(_BOOL8 a1, unint64_t a2)
{
  v3 = a1;
  v20 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v4 = mmcs_logging_logger_default(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (a1)
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %p received %llu bytes\n", v3, a2);
      v7 = mmcs_logging_logger_default(v5, v6);
      a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  v8 = *(v3 + 304);
  v9 = v8 >= a2;
  v10 = v8 - a2;
  if (!v9)
  {
    v11 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested underflow averted\n");
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    v10 = 0;
  }

  *(v3 + 304) = v10;
  v15 = *(v3 + 296);
  v16 = v15 - v10;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16 / v15;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  mmcs_get_item_progress_make_state_progress(3, buf, v17);
  mmcs_item_set_get_progress(v3, buf, 0, 0);
}

void mmcs_item_set_get_progress(uint64_t a1, double *a2, BOOL *a3, char *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 172);
  v9 = *a2;
  if (*a2 >= v8)
  {
    if (v8 != 5)
    {
      if (v8 == v9)
      {
        v14 = *(a1 + 248) != a2[1] || !*(a1 + 192) && *(a2 + 2);
        v15 = 0;
        *(a1 + 328) = MMCSGetItemStateIsDeterminant(v8);
      }

      else
      {
        if (v9 == 5)
        {
          *(a1 + 176) = v8;
          v15 = 1;
        }

        else
        {
          v15 = 0;
        }

        *(a1 + 172) = v9;
        *(a1 + 328) = 0;
        v14 = 1;
      }

      *(a1 + 248) = a2[1];
      if (!*(a1 + 192))
      {
        v16 = *(a2 + 2);
        if (v16)
        {
          v17 = CFRetain(v16);
          *(a1 + 192) = v17;
          v19 = mmcs_logging_logger_default(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            v21 = MMCSPutItemStateCString(*(a1 + 168));
            *buf = 134218242;
            v26 = v20;
            v27 = 2082;
            v28 = v21;
            _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_INFO, "Item issue. itemId:%llu state:%{public}s", buf, 0x16u);
          }

          v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"itemId:%llu issue", *(a1 + 40));
          v24 = mmcs_logging_logger_default(v22, v23);
          XCFPrint(v24, v22, *(a1 + 192));
          if (v22)
          {
            CFRelease(v22);
          }
        }
      }

      if (a3)
      {
        *a3 = v14;
      }

      if (a4)
      {
        *a4 = v15;
      }
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default(v8, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid item state transition %d to %d\n", *(a1 + 172), *a2);
      v13 = mmcs_logging_logger_default(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

void mmcs_item_update_get_unprogress(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v4 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %p unhandling %llu bytes\n", a1, a2);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  v8 = *(a1 + 304) + a2;
  *(a1 + 304) = v8;
  v9 = *(a1 + 296);
  v10 = v9 - v8;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10 / v9;
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  mmcs_get_item_progress_make_state_progress(3, buf, v11);
  mmcs_item_set_get_progress(a1, buf, 0, 0);
}

void mmcs_item_update_get_derivative_progress(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 312);
  v4 = *(a1 + 320) + a2;
  *(a1 + 320) = v4;
  if (v4 >= v3)
  {
    v5 = 0.9;
  }

  else
  {
    v5 = v4 / v3 * 0.9;
  }

  mmcs_get_item_progress_make_state_progress(3, v6, v5);
  mmcs_item_set_get_progress(a1, v6, 0, 0);
}

void mmcs_item_update_unget_derivative_progress(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 312);
  v4 = *(a1 + 320);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 320) = v7;
  if (v7 >= v3)
  {
    v8 = 0.9;
  }

  else
  {
    v8 = v7 / v3 * 0.9;
  }

  mmcs_get_item_progress_make_state_progress(3, v9, v8);
  mmcs_item_set_get_progress(a1, v9, 0, 0);
}

uint64_t mmcs_item_remove_outstanding_chunk_reference(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 280), a2);
  if (result)
  {
    CFSetRemoveValue(*(a1 + 280), a2);
    return 1;
  }

  return result;
}

void mmcs_item_chunk_instance_was_read(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(result + 160) == 1 && (*(result + 164) - 3) <= 1)
  {
    v6 = *(result + 304);
    v7 = v6 >= a3;
    v8 = v6 - a3;
    if (!v7)
    {
      v9 = mmcs_logging_logger_default(result, a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested underflow averted\n");
        v12 = mmcs_logging_logger_default(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = 138543362;
          v19 = v10;
          _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", &v18, 0xCu);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      v8 = 0;
    }

    *(result + 304) = v8;
    v13 = *(result + 296);
    v14 = v13 - v8;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = v14 / v13;
    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    v16 = *result;
    v17 = *(result + 64);
    mmcs_put_item_progress_make_state_progress(4, &v18, v15);
    mmcs_put_request_set_progress_for_items_with_signature_reference(a2, v16, v17, &v18);
  }
}

void mmcs_item_chunk_instance_was_unread(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(result + 160) == 1 && *(result + 164) == 4)
  {
    v6 = *(result + 296);
    v7 = *(result + 304) + a3;
    *(result + 304) = v7;
    if (v6 < v7)
    {
      v8 = mmcs_logging_logger_default(result, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested overflow averted\n");
        v11 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = 138543362;
          v17 = v9;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      v7 = *(result + 296);
      *(result + 304) = v7;
      v6 = v7;
    }

    v12 = v6 - v7;
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = v12 / v6;
    if (v13 > 1.0)
    {
      v13 = 1.0;
    }

    v14 = *result;
    v15 = *(result + 64);
    mmcs_put_item_progress_make_state_progress(4, &v16, v13);
    mmcs_put_request_set_progress_for_items_with_signature_reference(a2, v14, v15, &v16);
  }
}

BOOL mmcs_item_copy_chunk_instances_from_item(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 400))
  {
    *(a1 + 392) = 1;
    v4 = mmcs_item_calculate_chunks_in_requested_range(a2, a1);
    start_chunk_index_for_inner_item = mmcs_item_get_start_chunk_index_for_inner_item(a2, a1);
  }

  else
  {
    start_chunk_index_for_inner_item = 0;
    v4 = *(a2 + 144);
  }

  v6 = mmcs_item_set_chunk_instance_capacity(a1, v4);
  if (v6)
  {
    if (*(a1 + 144))
    {
      mmcs_item_copy_chunk_instances_from_item_cold_1();
    }

    if (v4)
    {
      v8 = 0;
      v9 = *MEMORY[0x277CBED28];
      v10 = 104 * start_chunk_index_for_inner_item;
      do
      {
        v11 = *(a2 + 272);
        if (*(v11 + v10 + 8) != a2)
        {
          mmcs_item_copy_chunk_instances_from_item_cold_2();
        }

        v12 = *(a1 + 144);
        v13 = *(a1 + 272) + 104 * v12;
        if (*(v13 + 72))
        {
          mmcs_item_copy_chunk_instances_from_item_cold_3();
        }

        if (!*(a1 + 400) && v8 != *(v11 + v10 + 32))
        {
          mmcs_item_copy_chunk_instances_from_item_cold_4();
        }

        v14 = v11 + v10;
        mmcs_chunk_instance_init_with_source_instance(*(a1 + 272) + 104 * v12, v11 + v10, *(v11 + v10 + 56), v8, *(v11 + v10 + 24), a1);
        mmcs_chunk_reference_add_instance(*(v14 + 56), v13);
        ++*(a1 + 144);
        mmcs_item_add_outstanding_chunk_reference(a1, *(v13 + 56));
        *(v13 + 72) = v9;
        ++*(a1 + 152);
        v8 += *(*(v14 + 56) + 4);
        v10 += 104;
        --v4;
      }

      while (v4);
    }

    return 1;
  }

  else
  {
    v16 = mmcs_logging_logger_default(v6, v7);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to set chunk instance capacity for item %lld\n", *(a1 + 40));
      v19 = mmcs_logging_logger_default(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v17;
        _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }
  }

  return result;
}

uint64_t mmcs_item_calculate_chunks_in_requested_range(uint64_t a1, void *a2)
{
  v2 = a2[48];
  if (!v2)
  {
    mmcs_item_calculate_chunks_in_requested_range_cold_3();
  }

  if (!a2[50])
  {
    mmcs_item_calculate_chunks_in_requested_range_cold_2();
  }

  if (!*(a1 + 144))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2[47] + v2;
  v10 = 56;
  do
  {
    v11 = *(a1 + 272);
    if (!mmcs_chunk_instance_is_chunk_reference((v11 + v10 - 56)))
    {
      mmcs_item_calculate_chunks_in_requested_range_cold_1();
    }

    v12 = v5 + *(*(v11 + v10) + 4);
    if (v12 <= a2[47] || v5 >= v9)
    {
      if (v8)
      {
        return v6;
      }
    }

    else
    {
      ++v6;
    }

    if (v12 >= v9)
    {
      v8 = 1;
    }

    ++v7;
    v10 += 104;
    v5 = v12;
  }

  while (v7 < *(a1 + 144));
  return v6;
}

uint64_t mmcs_item_get_start_chunk_index_for_inner_item(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 392))
  {
    mmcs_item_get_start_chunk_index_for_inner_item_cold_1();
  }

  if (!*(a2 + 392))
  {
    mmcs_item_get_start_chunk_index_for_inner_item_cold_5();
  }

  v2 = *(a1 + 136);
  if (!v2)
  {
LABEL_13:
    mmcs_item_get_start_chunk_index_for_inner_item_cold_4();
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a2 + 376);
  v6 = *(a1 + 272) + 56;
  while (1)
  {
    if (*(v6 - 48) != a1)
    {
      mmcs_item_get_start_chunk_index_for_inner_item_cold_2();
    }

    if (!*(*v6 + 64))
    {
      mmcs_item_get_start_chunk_index_for_inner_item_cold_3();
    }

    v7 = v3 + *(*v6 + 4);
    if (v7 > v5 && v3 < *(a2 + 384) + v5)
    {
      return v4;
    }

    ++v4;
    v6 += 104;
    v3 = v7;
    if (v2 == v4)
    {
      goto LABEL_13;
    }
  }
}

uint64_t mmcs_item_copy_ford_state_from_item(void *a1, uint64_t a2)
{
  if (*(a2 + 392))
  {
    mmcs_item_copy_ford_state_from_item_cold_1();
  }

  if (!a1[50])
  {
    mmcs_item_set_file_verification_key(a1, *(a2 + 88));
  }

  v4 = *(a2 + 144);
  v5 = a1[50];
  if (v4 != a1[18])
  {
    if (!v5)
    {
      mmcs_item_copy_ford_state_from_item_cold_2();
    }

LABEL_9:
    result = mmcs_item_get_start_chunk_index_for_inner_item(a2, a1);
    v4 = a1[18];
    if (!v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  result = 0;
  if (!v4)
  {
    return result;
  }

LABEL_10:
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 272) + 104 * result;
  do
  {
    if (*(v9 + v7 + 8) != a2)
    {
      mmcs_item_copy_ford_state_from_item_cold_3();
    }

    v10 = a1[34] + v7;
    if (*(v10 + 8) != a1)
    {
      mmcs_item_copy_ford_state_from_item_cold_4();
    }

    *(v10 + 32) = v8;
    v8 += *(*(v9 + v7 + 56) + 4);
    v7 += 104;
    --v4;
  }

  while (v4);
  return result;
}

char *mmcs_item_append_chunk_instance(char **a1, uint64_t a2, CFErrorRef *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v6 = a1[18];
  if (v6 < a1[17])
  {
    v7 = *a1;
    v9 = (**a1 & 8) == 0 && (**a1 & 0x7F) != 4;
    if ((((**(a2 + 8) & 0x7F) == 4) ^ v9))
    {
      v10 = &a1[34][104 * v6];
      if (v6)
      {
        v11 = *(v10 - 9) + *(*(v10 - 6) + 4);
      }

      else
      {
        v11 = 0;
      }

      if (mmcs_chunk_instance_init(v10, a2, v11, v6, a1))
      {
        mmcs_chunk_reference_add_instance(a2, v10);
        ++a1[18];
        return v10;
      }

      if (a3)
      {
        v21 = @"mmcs_chunk_instance_init";
        v22 = 37;
        goto LABEL_20;
      }
    }

    else if (a3)
    {
      v23 = mmcs_file_signature_to_hexstring(v7);
      v24 = mmcs_chunk_signature_to_hexstring(*(a2 + 8));
      *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Observed inconsistent encryption type between item signature %s and chunk signature %s.", v25, v26, v27, v28, v29, v23, v24);
      if (v23)
      {
        free(v23);
      }

      if (v24)
      {
        free(v24);
      }
    }

    return 0;
  }

  v12 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk instance overflow\n");
    v20 = mmcs_logging_logger_default(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (!a3)
  {
    return 0;
  }

  v31 = a1[17];
  v21 = @"Unable to append chunk instance; capacity %llu exceeded.";
  v22 = 6;
LABEL_20:
  v10 = 0;
  *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v22, v21, v13, v14, v15, v16, v17, v31);
  return v10;
}

void mmcs_item_setup_chunk_references(void *a1)
{
  if (!a1[19])
  {
    if (a1[18])
    {
      v2 = 0;
      v3 = 0;
      v19 = 0;
      v4 = 0;
      v5 = 0;
      v16 = a1[48] + a1[47];
      v17 = 0;
      v18 = *MEMORY[0x277CBED10];
      v6 = *MEMORY[0x277CBED28];
      do
      {
        v7 = a1[34];
        if (!mmcs_chunk_instance_is_chunk_reference((v7 + v2)))
        {
          mmcs_item_setup_chunk_references_cold_1();
        }

        v8 = *(v7 + v2 + 56);
        v9 = *(v8 + 4);
        if (a1[48])
        {
          if (a1[50])
          {
            *(v7 + v2 + 32) = 0;
            v10 = v18;
          }

          else
          {
            ++a1[19];
            v10 = v6;
          }

          *(v7 + v2 + 72) = v10;
          if (v5 + v9 > a1[47])
          {
            v11 = v19;
            if (!v3)
            {
              v11 = v5;
            }

            v19 = v11;
            if (v5 < v16)
            {
              mmcs_item_add_outstanding_chunk_reference(a1, v8);
              if (a1[50])
              {
                *(v7 + v2 + 72) = v6;
                ++a1[19];
                *(v7 + v2 + 32) = v17;
              }

              v17 += v9;
            }

            v3 = 1;
          }
        }

        else
        {
          mmcs_item_add_outstanding_chunk_reference(a1, v8);
          *(v7 + v2 + 72) = v6;
          ++a1[19];
        }

        ++v4;
        v2 += 104;
        v5 += v9;
      }

      while (v4 < a1[18]);
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if (a1[50])
    {
      if (a1[47] != v19)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 45, @"requestedFileOffset is expected to align with chunks when a signature is validated");
        mmcs_get_item_progress_make_done_error(error, v13, v20);
      }

      if (a1[48] != v17)
      {
        v14 = mmcs_cferror_create_error(@"com.apple.mmcs", 45, @"requestedLengthAtFileOffset is expected to align with chunks when a signature is validated");
        mmcs_get_item_progress_make_done_error(v14, v15, v20);
      }
    }

    else
    {
      a1[47] = v19;
      a1[48] = v17;
    }
  }
}

void mmcs_item_setup_item_size(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 272);
      v6 = *(v5 + v2 + 72);
      if (!v6)
      {
        mmcs_item_setup_item_size_cold_1();
      }

      if (CFBooleanGetValue(v6))
      {
        v4 += *(*(v5 + v2 + 56) + 4);
      }

      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  else
  {
    v4 = 0;
  }

  mmcs_item_set_size(a1, v4);
}

void mmcs_item_setup_item_padded_size(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 272);
      v6 = *(v5 + v2 + 72);
      if (!v6)
      {
        mmcs_item_setup_item_padded_size_cold_1();
      }

      if (CFBooleanGetValue(v6))
      {
        v4 += *(v5 + v2 + 64);
      }

      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  else
  {
    v4 = 0;
  }

  mmcs_item_set_padded_size(a1, v4);
}

const __CFBoolean *mmcs_item_get_default_reader_writer_sparse_aware(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    return (CFBooleanGetValue(result) != 0);
  }

  return result;
}

CFIndex mmcs_item_has_outstanding_chunk_references(uint64_t a1)
{
  result = CFSetGetCount(*(a1 + 280));
  if (result)
  {
    return *(a1 + 360) == 0;
  }

  return result;
}

void mmcs_item_set_get_chunk_references(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 288);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 288) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 288) = cf;
  }
}

void mmcs_item_add_get_chunk_references(CFIndex result, CFSetRef theSet)
{
  if (theSet && CFSetGetCount(theSet) >= 1)
  {
    Mutable = *(result + 288);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
      *(result + 288) = Mutable;
    }

    XCFSetAddValuesFromSet(Mutable, theSet);
  }
}

const __CFSet *mmcs_item_needs_auth_get_chunks(uint64_t a1)
{
  result = *(a1 + 288);
  if (result)
  {
    return (CFSetGetCount(result) > 0);
  }

  return result;
}

void mmcs_item_set_put_progress(uint64_t a1, double *a2, BOOL *a3, char *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 164);
  v9 = *a2;
  if (*a2 >= v8)
  {
    if (v8 != 7)
    {
      if (v8 == v9)
      {
        v14 = *(a1 + 248) != a2[1] || !*(a1 + 192) && *(a2 + 4);
        v15 = 0;
        *(a1 + 328) = MMCSPutItemStateIsDeterminant(v8);
      }

      else
      {
        if (v9 == 7)
        {
          *(a1 + 168) = v8;
          v15 = 1;
        }

        else
        {
          v15 = 0;
        }

        *(a1 + 164) = v9;
        *(a1 + 328) = 0;
        v14 = 1;
      }

      *(a1 + 248) = a2[1];
      if (!*(a1 + 192))
      {
        v16 = *(a2 + 4);
        if (v16)
        {
          v17 = CFRetain(v16);
          *(a1 + 192) = v17;
          v19 = mmcs_logging_logger_default(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            v21 = MMCSPutItemStateCString(*(a1 + 168));
            *buf = 134218242;
            v26 = v20;
            v27 = 2082;
            v28 = v21;
            _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_INFO, "Item issue. itemId:%llu state:%{public}s", buf, 0x16u);
          }

          v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"itemId:%llu issue", *(a1 + 40));
          v24 = mmcs_logging_logger_default(v22, v23);
          XCFPrint(v24, v22, *(a1 + 192));
          if (v22)
          {
            CFRelease(v22);
          }
        }
      }

      if (a3)
      {
        *a3 = v14;
      }

      if (a4)
      {
        *a4 = v15;
      }
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default(v8, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid item state transition %d to %d\n", *(a1 + 164), *a2);
      v13 = mmcs_logging_logger_default(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

double mmcs_item_chunking_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 256);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(a1 + 264);
    v4 = v3 < v1 || v3 == 0.0;
    result = v3 - v1;
    if (v4)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t mmcs_item_padded_length(uint64_t *a1)
{
  if (!a1)
  {
    mmcs_item_padded_length_cold_1();
  }

  if (!a1[18])
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 56;
  do
  {
    v3 += mmcs_padded_chunk_length_with_policy_and_chunk_length(a1[12], *(*(a1[34] + v4) + 4));
    ++v2;
    v4 += 104;
  }

  while (v2 < a1[18]);
  return v3;
}

__CFDictionary *mmcs_item_create_results_dictionary_for_item(uint64_t *a1)
{
  if (a1[18])
  {
    v2 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4 = a1[19];
    if (!v4)
    {
      v4 = a1[18];
    }

    valuePtr = v4;
    v5 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"kMMCSChunkCount", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = a1 + 2;
    v6 = a1[2];
    if (v6 <= 0)
    {
LABEL_14:
      v10 = a1 + 3;
      v9 = a1[3];
      if (v9 <= 0)
      {
        goto LABEL_22;
      }

      if (Mutable)
      {
LABEL_20:
        valuePtr = v9;
        v11 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
        CFDictionarySetValue(Mutable, @"kMMCSPaddedFileSize", v11);
        if (v11)
        {
          CFRelease(v11);
        }

LABEL_22:
        if (!a1[48])
        {
          goto LABEL_29;
        }

        v12 = a1 + 48;
        if (Mutable)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_19:
      Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = *v10;
      goto LABEL_20;
    }

    if (Mutable)
    {
LABEL_12:
      valuePtr = v6;
      v8 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"kMMCSFileSize", v8);
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_14;
    }

LABEL_11:
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = *v7;
    goto LABEL_12;
  }

  v7 = a1 + 2;
  if (a1[2] >= 1)
  {
    v2 = *MEMORY[0x277CBECE8];
    goto LABEL_11;
  }

  v10 = a1 + 3;
  if (a1[3] >= 1)
  {
    v2 = *MEMORY[0x277CBECE8];
    goto LABEL_19;
  }

  if (!a1[48])
  {
    Mutable = 0;
    goto LABEL_29;
  }

  v12 = a1 + 48;
  v2 = *MEMORY[0x277CBECE8];
LABEL_24:
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_25:
  valuePtr = a1[47];
  v13 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"kMMCSResultFileOffset", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  valuePtr = *v12;
  v14 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"kMMCSResultLengthAtFileOffset", v14);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_29:
  v15 = a1[11];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"kMMCSVerificationKey", v15);
  }

  return Mutable;
}

__CFData *mmcs_item_create_chunk_key_concatenation(uint64_t a1)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (*(a1 + 144))
  {
    v3 = 0;
    v4 = 56;
    do
    {
      v5 = *(*(*(a1 + 272) + v4) + 16);
      v6 = CKChunkSchemeAndEncryptionKeySize();
      CFDataAppendBytes(Mutable, v5, v6);
      ++v3;
      v4 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  return Mutable;
}

CFTypeRef mmcs_item_set_derivative_digest_results_for_file_validation(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 368);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(a1 + 368) = 0;
  result = C3BaseRetain(cf);
  *(a1 + 368) = cf;
  return result;
}

void *mmcs_report_tickle(void *result)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gMMCS_MobileMeReporting)
  {
    v1 = result;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = pthread_mutex_lock(&sReportingInfoAccessLock);
    if (gMMCS_MobileMeReporting)
    {
      v5 = *(gMMCS_MobileMeReporting + 48);
      if (v5 == 0.0)
      {
        v6 = Current - *(gMMCS_MobileMeReporting + 56);
        v7 = *(gMMCS_MobileMeReporting + 40);
      }

      else
      {
        v6 = Current - v5;
        v7 = *(gMMCS_MobileMeReporting + 32);
      }

      if (v6 > v7)
      {
        if (*(gMMCS_MobileMeReporting + 64))
        {
          v8 = mmcs_logging_logger_default(v3, v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Background fetch for MobileMe configs is already underway.");
            v11 = mmcs_logging_logger_default(v9, v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v18 = v9;
              _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }
        }

        else
        {
          v16 = 0;
          v12 = mmcs_logging_logger_default(v3, v4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Scheduling fetch for MobileMe configs.");
            v15 = mmcs_logging_logger_default(v13, v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v18 = v13;
              _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v13)
            {
              CFRelease(v13);
            }
          }

          *(gMMCS_MobileMeReporting + 64) = 1;
          C3BaseRetain(v1);
          pthread_create(&v16, 0, _mmcs_report_fetchFromMobileMe, v1);
        }
      }
    }

    return pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  return result;
}

uint64_t _mmcs_report_fetchFromMobileMe(const void *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_2577D8000, "mmcs-fetch-plist", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v5 = mmcs_logging_logger_default(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  v7 = *MEMORY[0x277CBECE8];
  if (v6)
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_config_fetcher started.");
    v10 = mmcs_logging_logger_default(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v11 = CFURLCreateWithString(v7, @"https://gateway.icloud.com/configuration/configurations/internetservices/mobileme/content/content-1.0.plist", 0);
  if (v11)
  {
    v13 = v11;
    Request = CFHTTPMessageCreateRequest(v7, @"GET", v11, *MEMORY[0x277CBAD00]);
    CFRelease(v13);
    if (!Request)
    {
      goto LABEL_31;
    }

    client_header_value = mmcs_engine_create_client_header_value(0);
    if (client_header_value)
    {
      v16 = client_header_value;
      CFHTTPMessageSetHeaderFieldValue(Request, @"x-mme-client-info", client_header_value);
      CFRelease(v16);
    }

    Current = CFRunLoopGetCurrent();
    CFRetain(Current);
    *&buf = @"content_plist";
    *(&buf + 1) = Request;
    v37 = a1;
    v38 = xmmword_25785F9B0;
    v39 = -1;
    v40 = -1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v44 = mmcs_reporting_fetch_operation_http_callback;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v50 = 0;
    v48 = Current;
    v49 = 0;
    v51 = 1;
    v52 = 0;
    v53 = v2;
    cf = 0;
    v18 = mmcs_http_class_default_value(2);
    if (!mmcs_http_context_create(&cf, v18, &buf))
    {
      goto LABEL_30;
    }

    C3BaseRetain(cf);
    mmcs_http_context_set_to_configuration(cf, 1);
    mmcs_http_context_set_to_mobileme(cf, 1);
    pthread_mutex_lock(&sReportingInfoAccessLock);
    if (gMMCS_MobileMeReporting && !*(gMMCS_MobileMeReporting + 16))
    {
      *(gMMCS_MobileMeReporting + 16) = cf;
      pthread_mutex_unlock(&sReportingInfoAccessLock);
      v23 = CFArrayCreate(v7, MEMORY[0x277CBF048], 1, MEMORY[0x277CBF128]);
      v33 = 0;
      mmcs_perform_run_loop_target_create(&v33, Current, v23);
      if (mmcs_http_context_send(cf, 0, v33))
      {
        memset(&v32, 0, sizeof(v32));
        v24 = CFRunLoopSourceCreate(v7, 0, &v32);
        CFRunLoopAddSource(Current, v24, *MEMORY[0x277CBF058]);
        CFRunLoopRun();
        if (v24)
        {
          CFRelease(v24);
        }
      }

      else
      {
        _mmcs_report_clearFetchContext(cf);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      v19 = v33;
      if (!v33)
      {
        goto LABEL_28;
      }
    }

    else
    {
      pthread_mutex_unlock(&sReportingInfoAccessLock);
      mmcs_http_context_invalidate(cf);
      v19 = cf;
      if (!cf)
      {
LABEL_30:
        CFRelease(Request);
        goto LABEL_31;
      }
    }

    C3BaseRelease(v19);
LABEL_28:
    if (cf)
    {
      C3BaseRelease(cf);
    }

    goto LABEL_30;
  }

  v20 = mmcs_logging_logger_default(0, v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    Request = CFStringCreateWithFormat(v7, 0, @"Failed to create URL for MobileMe reporting levels.");
    v22 = mmcs_logging_logger_default(Request, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = Request;
      _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    if (Request)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (a1)
  {
    C3BaseRelease(a1);
  }

  if (v2)
  {
    os_release(v2);
  }

  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (gMMCS_MobileMeReporting)
  {
    *(gMMCS_MobileMeReporting + 64) = 0;
  }

  v25 = pthread_mutex_unlock(&sReportingInfoAccessLock);
  v27 = mmcs_logging_logger_default(v25, v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = CFStringCreateWithFormat(v7, 0, @"mmcs_config_fetcher completed.");
    v30 = mmcs_logging_logger_default(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v28;
      _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  os_activity_scope_leave(&state);
  return 0;
}

const void *mmcs_report_copy_vendor_configuration_with_name(__CFString *a1)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  if (a1)
  {
    a1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", @"vendor.dc.configuration", a1);
  }

  v2 = 1;
  v3 = a1;
  while (1)
  {
    v4 = v2;
    if (v3)
    {
      Value = CFDictionaryGetValue(theDict, v3);
      if (Value)
      {
        v6 = Value;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          break;
        }
      }
    }

    v2 = 0;
    v3 = @"vendor.dc.configuration";
    if ((v4 & 1) == 0)
    {
      v6 = 0;
      if (!a1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  CFRetain(v6);
  if (a1)
  {
LABEL_10:
    CFRelease(a1);
  }

LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v6;
}

const void *mmcs_report_copy_vendor_retryable_http_errors(__CFString *a1, const __CFString *a2)
{
  v3 = mmcs_report_copy_vendor_configuration_with_name(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
    if (v6)
    {
      v7 = v6;
      Length = CFStringGetLength(a2);
      MutableCopy = CFStringCreateMutableCopy(v5, Length, a2);
      v10 = MutableCopy;
      if (!MutableCopy)
      {
LABEL_12:
        CFRelease(v7);
        goto LABEL_13;
      }

      CFStringLowercase(MutableCopy, v7);
      v11 = CFStringCreateWithFormat(v5, 0, @"retry.%@.http_response_code", v10);
      CFRelease(v7);
      CFRelease(v10);
      if (v11)
      {
        Value = CFDictionaryGetValue(v4, v11);
        if (Value && (v13 = Value, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v13)))
        {
          v10 = mmcs_index_set_create_with_string(v13);
        }

        else
        {
          v10 = 0;
        }

        v7 = v11;
        goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_13:
    CFRelease(v4);
    return v10;
  }

  return 0;
}

void mmcs_report_copy_vendor_request_queue_config(void *a1, void *a2)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (theDict)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(theDict, @"max.vendor.upload.connections.override");
      if (Value)
      {
        v5 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v5))
        {
          CFRetain(v5);
          *a1 = v5;
        }
      }
    }

    if (a2)
    {
      v7 = CFDictionaryGetValue(theDict, @"max.vendor.download.connections.override");
      if (v7)
      {
        v8 = v7;
        v9 = CFNumberGetTypeID();
        if (v9 == CFGetTypeID(v8))
        {
          CFRetain(v8);
          *a2 = v8;
        }
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }
}

uint64_t mmcs_report_want_report(int a1, unsigned int a2)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  v4 = a2;
  v5 = *MEMORY[0x277CBECE8];
  if (a1)
  {
    v6 = @"putcomplete.verbosity.%ld";
    goto LABEL_5;
  }

  v6 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v5, 0, @"getcomplete.verbosity.%ld", v4); ; i = CFStringCreateWithFormat(v5, 0, v6, v4))
  {
    v8 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v8)
    {
      CFRelease(v8);
    }

    if (Value && CFDictionaryGetCount(Value) >= 1)
    {
      break;
    }

    if (v4-- <= 0)
    {
      v11 = 0;
      v12 = theDict;
      if (!theDict)
      {
        return v11;
      }

      goto LABEL_16;
    }

LABEL_5:
    ;
  }

  v12 = theDict;
  v11 = 1;
  if (!theDict)
  {
    return v11;
  }

LABEL_16:
  CFRelease(v12);
  return v11;
}

const void *mmcs_report_value_for_config_key(const void *a1, int a2, unsigned int a3)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v6 = theDict;
  if (!a1 || !theDict)
  {
LABEL_14:
    v15 = 0;
    v16 = 0;
    if (!v6)
    {
      return v16;
    }

LABEL_15:
    CFRelease(v6);
    return v15;
  }

  v7 = a3;
  v8 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    v9 = @"putcomplete.verbosity.%ld";
    goto LABEL_6;
  }

  v9 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v8, 0, @"getcomplete.verbosity.%ld", v7); ; i = CFStringCreateWithFormat(v8, 0, v9, v7))
  {
    v11 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v11)
    {
      CFRelease(v11);
    }

    if (Value)
    {
      v13 = CFDictionaryGetValue(Value, a1);
      if (v13)
      {
        break;
      }
    }

    if (v7-- < 1)
    {
      v6 = theDict;
      goto LABEL_14;
    }

LABEL_6:
    ;
  }

  v15 = v13;
  v6 = theDict;
  v16 = v15;
  if (theDict)
  {
    goto LABEL_15;
  }

  return v16;
}

uint64_t mmcs_report_is_valid_base_url_for_configs(const __CFArray *a1, const __CFArray *a2, CFURLRef anURL)
{
  v3 = 0;
  v65 = *MEMORY[0x277D85DE8];
  if (a2 && a1)
  {
    v6 = 0;
    if (anURL)
    {
      v8 = CFURLCopyHostName(anURL);
      if (v8)
      {
        v9 = v8;
        Count = CFArrayGetCount(a1);
        if (Count >= 1)
        {
          v12 = 0;
          v13 = *MEMORY[0x277CBECE8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              v16 = CFGetTypeID(ValueAtIndex);
              TypeID = CFStringGetTypeID();
              if (v16 == TypeID)
              {
                v6 = 1;
                if (CFStringCompare(v15, v9, 1uLL) == kCFCompareEqualTo)
                {
                  goto LABEL_28;
                }

                HasPrefix = CFStringHasPrefix(v15, @".");
                if (HasPrefix)
                {
                  HasPrefix = CFStringHasSuffix(v9, v15);
                  if (HasPrefix)
                  {
                    v6 = 1;
                    goto LABEL_28;
                  }
                }

                v21 = mmcs_logging_logger_default(HasPrefix, v20);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  v22 = CFStringCreateWithFormat(v13, 0, @"Did not match %@ from config as suffix of hostname %@.", v15, v9);
                  v24 = mmcs_logging_logger_default(v22, v23);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v64 = v22;
                    v25 = v24;
                    v26 = OS_LOG_TYPE_DEBUG;
                    goto LABEL_18;
                  }

                  goto LABEL_19;
                }
              }

              else
              {
                v27 = mmcs_logging_logger_default(TypeID, v18);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = CFGetTypeID(v15);
                  v22 = CFStringCreateWithFormat(v13, 0, @"Invalid typeId %llu provided for %@ element.", v28, @"metaserver.allowed.hostname.suffix");
                  v30 = mmcs_logging_logger_default(v22, v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v64 = v22;
                    v25 = v30;
                    v26 = OS_LOG_TYPE_ERROR;
LABEL_18:
                    _os_log_impl(&dword_2577D8000, v25, v26, "%{public}@", buf, 0xCu);
                  }

LABEL_19:
                  if (v22)
                  {
                    CFRelease(v22);
                  }
                }
              }
            }

            ++v12;
            Count = CFArrayGetCount(a1);
          }

          while (v12 < Count);
        }

        v31 = mmcs_logging_logger_default(Count, v11);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Metaserver Hostname %@ Not Allowed", v9);
          v34 = mmcs_logging_logger_default(v32, v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v64 = v32;
            _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }

        v6 = 0;
LABEL_28:
        CFRelease(v9);
        v35 = CFURLCopyScheme(anURL);
        if (v35)
        {
          v36 = v35;
          v37 = CFArrayGetCount(a2);
          if (v37 >= 1)
          {
            v39 = 0;
            v40 = *MEMORY[0x277CBECE8];
            do
            {
              v41 = CFArrayGetValueAtIndex(a2, v39);
              if (v41)
              {
                v42 = v41;
                v43 = CFGetTypeID(v41);
                v44 = CFStringGetTypeID();
                if (v43 == v44)
                {
                  v3 = 1;
                  v46 = CFStringCompare(v36, v42, 1uLL);
                  if (v46 == kCFCompareEqualTo)
                  {
                    goto LABEL_50;
                  }

                  v48 = mmcs_logging_logger_default(v46, v47);
                  if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_43;
                  }

                  v49 = CFStringCreateWithFormat(v40, 0, @"Did not match %@ from config as suffix of scheme %@.", v42, v36);
                  v51 = mmcs_logging_logger_default(v49, v50);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v64 = v49;
                    v52 = v51;
                    v53 = OS_LOG_TYPE_DEBUG;
                    goto LABEL_40;
                  }

                  goto LABEL_41;
                }

                v54 = mmcs_logging_logger_default(v44, v45);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = CFGetTypeID(v42);
                  v49 = CFStringCreateWithFormat(v40, 0, @"Invalid typeId %llu provided for %@ element.", v55, @"metaserver.allowed.schemes");
                  v57 = mmcs_logging_logger_default(v49, v56);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v64 = v49;
                    v52 = v57;
                    v53 = OS_LOG_TYPE_ERROR;
LABEL_40:
                    _os_log_impl(&dword_2577D8000, v52, v53, "%{public}@", buf, 0xCu);
                  }

LABEL_41:
                  if (v49)
                  {
                    CFRelease(v49);
                  }
                }
              }

LABEL_43:
              ++v39;
              v37 = CFArrayGetCount(a2);
            }

            while (v39 < v37);
          }

          v58 = mmcs_logging_logger_default(v37, v38);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Metaserver Scheme %@ Not Allowed", v36);
            v61 = mmcs_logging_logger_default(v59, v60);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v64 = v59;
              _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v59)
            {
              CFRelease(v59);
            }
          }

          v3 = 0;
LABEL_50:
          CFRelease(v36);
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v3 & v6;
}

uint64_t mmcs_report_is_valid_base_url_for_mobile_me(const __CFArray *a1, CFStringRef a2, const __CFURL *a3)
{
  cf = 0;
  _mmcs_report_copyConfiguration(&cf, 0);
  v6 = cf;
  if (!cf)
  {
    return 0;
  }

  v7 = MEMORY[0x277CBECE8];
  if (!a1)
  {
LABEL_7:
    Mutable = CFArrayCreateMutable(*v7, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v10 = Mutable;
      CFArrayAppendValue(Mutable, @".icloud.com");
      CFArrayAppendValue(v10, @".icloud.com.cn");
      a1 = mmcs_report_copy_cfarray_with_key(v6, @"metaserver.allowed.hostname.suffix", v10);
      CFRelease(v10);
      if (a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a1 = mmcs_report_copy_cfarray_with_key(v6, @"metaserver.allowed.hostname.suffix", 0);
      if (a1)
      {
        goto LABEL_9;
      }
    }

    mmcs_report_is_valid_base_url_for_mobile_me_cold_2();
  }

  if (!CFArrayGetCount(a1))
  {
    v6 = cf;
    goto LABEL_7;
  }

  CFRetain(a1);
LABEL_9:
  if (a2 && CFArrayGetCount(a2))
  {
    CFRetain(a2);
    goto LABEL_14;
  }

  v11 = cf;
  v12 = CFArrayCreateMutable(*v7, 0, MEMORY[0x277CBF128]);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(v12, @"https");
    a2 = mmcs_report_copy_cfarray_with_key(v11, @"metaserver.allowed.schemes", v13);
    CFRelease(v13);
    if (a2)
    {
      goto LABEL_14;
    }

LABEL_20:
    mmcs_report_is_valid_base_url_for_mobile_me_cold_1();
  }

  a2 = mmcs_report_copy_cfarray_with_key(v11, @"metaserver.allowed.schemes", 0);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_14:
  is_valid_base_url_for_configs = mmcs_report_is_valid_base_url_for_configs(a1, a2, a3);
  CFRelease(a1);
  CFRelease(a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return is_valid_base_url_for_configs;
}

uint64_t mmcs_report_is_enabled_for_config_key(const void *a1, int a2, unsigned int a3)
{
  v3 = mmcs_report_value_for_config_key(a1, a2, a3);

  return mmcs_get_BOOLean_from_cftype_using_description(@"mmcsReportConfigKey", v3, 0);
}

uint64_t mmcs_report_property_for_config_key(const void *a1, const void *a2, int a3, unsigned int a4)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v8 = theDict;
  if (!a2 || !a1 || !theDict)
  {
LABEL_16:
    v17 = 0;
    v18 = 0;
    if (!v8)
    {
      return v18;
    }

LABEL_17:
    CFRelease(v8);
    return v17;
  }

  v9 = a4;
  v10 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v11 = @"putcomplete.verbosity.%ld";
    goto LABEL_7;
  }

  v11 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v10, 0, @"getcomplete.verbosity.%ld", v9); ; i = CFStringCreateWithFormat(v10, 0, v11, v9))
  {
    v13 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v13)
    {
      CFRelease(v13);
    }

    if (Value)
    {
      v15 = CFDictionaryGetValue(Value, a1);
      if (IsValidCFArray(v15))
      {
        v21.length = CFArrayGetCount(v15);
        v21.location = 0;
        if (CFArrayContainsValue(v15, v21, a2))
        {
          break;
        }
      }
    }

    if (v9-- <= 0)
    {
      v8 = theDict;
      goto LABEL_16;
    }

LABEL_7:
    ;
  }

  v8 = theDict;
  v17 = 1;
  v18 = 1;
  if (theDict)
  {
    goto LABEL_17;
  }

  return v18;
}

__CFDictionary *mmcs_report_create_vendor_http_stats(uint64_t a1, int a2, unsigned int a3)
{
  v6 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.roundtrip.millis", a2, a3);
  v7 = mmcs_report_property_for_config_key(@"vendor.kpis", @"contentlength.bytes", a2, a3);
  v8 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.nameresolution.millis", a2, a3);
  v9 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.nameresolution.serverAddress", a2, a3);
  v10 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.request.qos", a2, a3);
  v11 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.network.interface", a2, a3);
  if (!a1)
  {
    return 0;
  }

  v12 = v11;
  if (!(v7 | v6 | v8 | v10 | v11))
  {
    return 0;
  }

  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (v6)
    {
      v16 = mmcs_http_context_elapsed_seconds(a1);
      MillisStringFromAbsoluteTime = createMillisStringFromAbsoluteTime(v16);
      if (MillisStringFromAbsoluteTime)
      {
        v18 = MillisStringFromAbsoluteTime;
        CFDictionaryAddValue(Mutable, @"vendor.roundtrip.millis", MillisStringFromAbsoluteTime);
        CFRelease(v18);
      }
    }

    if (v7)
    {
      v19 = a2 ? mmcs_http_context_actual_bytes_written(a1) : mmcs_http_context_actual_bytes_read(a1);
      v21 = CFStringCreateWithFormat(v13, 0, @"%lld", v19);
      if (v21)
      {
        v22 = v21;
        CFDictionaryAddValue(Mutable, @"contentlength.bytes", v21);
        CFRelease(v22);
      }
    }

    if (v8)
    {
      mmcs_http_context_name_resolution_seconds(a1, v14);
      v24 = createMillisStringFromAbsoluteTime(v23);
      if (v24)
      {
        v25 = v24;
        CFDictionaryAddValue(Mutable, @"vendor.nameresolution.millis", v24);
        CFRelease(v25);
      }
    }

    if (v9)
    {
      v26 = mmcs_http_context_copy_destination_address(a1);
      if (v26)
      {
        v27 = v26;
        CFDictionaryAddValue(Mutable, @"vendor.nameresolution.serverAddress", v26);
        CFRelease(v27);
      }
    }

    if (v10)
    {
      request_options = mmcs_http_context_get_request_options(a1);
      discretionary_network_behavior = mmcs_http_request_options_get_discretionary_network_behavior(request_options);
      String = MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(discretionary_network_behavior);
      if (String)
      {
        v31 = String;
        CFDictionaryAddValue(Mutable, @"vendor.request.qos", String);
        CFRelease(v31);
      }
    }

    if (v12)
    {
      v32 = mmcs_http_context_copy_interface_identifier(a1);
      if (v32)
      {
        v33 = v32;
        CFDictionaryAddValue(Mutable, @"vendor.network.interface", v32);
        CFRelease(v33);
      }
    }
  }

  return Mutable;
}

CFTypeRef mmcs_report_copy_headers_from_vendor_response(__CFHTTPMessage *a1, int a2, int a3, unsigned int a4)
{
  v7 = CFHTTPMessageCopyAllHeaderFields(a1);
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v8 = 0;
  v9 = theDict;
  if (v7 && theDict)
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = 0;
      v14 = 0;
      if (a2)
      {
        v15 = @"vendor.headers.on.success";
      }

      else
      {
        v15 = @"vendor.headers.on.failure";
      }

      v26 = 0u;
      *cf = 0u;
      context = Mutable;
      if (a3)
      {
        v16 = @"putcomplete.verbosity.%u";
        goto LABEL_10;
      }

      v16 = @"getcomplete.verbosity.%u";
      for (i = CFStringCreateWithFormat(v10, 0, @"getcomplete.verbosity.%u", 0); ; i = CFStringCreateWithFormat(v10, 0, v16, v13))
      {
        if (i)
        {
          v18 = i;
          if (CFDictionaryContainsKey(theDict, i))
          {
            Value = CFDictionaryGetValue(theDict, v18);
            if (Value)
            {
              cf[0] = CFDictionaryGetValue(Value, v15);
              if (cf[0])
              {
                TypeID = CFArrayGetTypeID();
                if (TypeID == CFGetTypeID(cf[0]))
                {
                  v21 = cf[0];
                  v28.length = CFArrayGetCount(cf[0]);
                  v28.location = 0;
                  if (CFArrayContainsValue(v21, v28, @"*"))
                  {
                    CFRelease(v18);
                    v22 = v7;
                    goto LABEL_22;
                  }

                  CFDictionaryApplyFunction(v7, _collect_response_headers, &context);
                  v14 = 1;
                }
              }
            }

            else
            {
              cf[0] = 0;
            }
          }

          CFRelease(v18);
        }

        v13 = (v13 + 1);
        if (v13 > a4)
        {
          break;
        }

LABEL_10:
        ;
      }

      v22 = v12;
      if (v14)
      {
LABEL_22:
        v8 = CFRetain(v22);
        goto LABEL_25;
      }

      v8 = 0;
LABEL_25:
      CFRelease(v12);
    }

    else
    {
      v8 = 0;
    }

    v9 = theDict;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  theDict = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void _collect_response_headers(uint64_t a1, uint64_t a2, void *a3)
{
  a3[3] = a1;
  a3[4] = a2;
  v4 = a3[1];
  v5.length = CFArrayGetCount(v4);
  v5.location = 0;
  CFArrayApplyFunction(v4, v5, _collectHeadersWhichMatch, a3);
  a3[3] = 0;
  a3[4] = 0;
}

uint64_t mmcs_report_get_chunker_max_fixed_length(_DWORD *a1)
{
  valuePtr = 0;
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"chunker.max.fixed.length");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      v3 = (CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr) != 0);
    }

    else
    {
      v3 = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (a1 && v3)
  {
    *a1 = valuePtr;
    return 1;
  }

  return v3;
}

uint64_t mmcs_report_chunker_allow_item_chunk_length_28455742()
{
  cf = 0;
  _mmcs_report_copyConfiguration(&cf, 0);
  if (!cf)
  {
    return 0;
  }

  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(cf, @"chunker.allow.item.chunk.length.28455742", 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return BOOLean_from_cfdictionary_object_for_key;
}

__CFString *mmcs_report_auth_simulcast_response_signing_key_public_current()
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"auth.simulcast.response.signing.key.public.current");
  MutableCopy = Value;
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
      v4 = mmcs_base64_encoded_cstring_to_cfdata(CStringPtr);
      v5 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(v4);
      MutableCopy = CFDataCreateMutableCopy(v5, Length, v4);
      v9.location = 0;
      v9.length = 26;
      CFDataDeleteBytes(MutableCopy, v9);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      MutableCopy = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return MutableCopy;
}

const __CFString *mmcs_report_auth_simulcast_response_signing_key_public_prior()
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"auth.simulcast.response.signing.key.public.prior");
  v1 = Value;
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
      v1 = mmcs_base64_encoded_cstring_to_cfdata(CStringPtr);
    }

    else
    {
      v1 = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v1;
}

void mmcs_reporting_fetch_operation_http_callback(const void *a1, CFDataRef *a2, __CFRunLoop *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = mmcs_http_context_status_succeeded(a1, a2);
  v7 = MEMORY[0x277CBECE8];
  if (!a2 || !v6 || !*a2)
  {
    if (mmcs_http_context_is_cancelled(a1))
    {
      v15 = "was cancelled";
    }

    else if (mmcs_http_context_has_timedout(a1) && mmcs_http_context_is_timedout(a1, v32))
    {
      v15 = "timed out";
    }

    else if (a2 && *a2)
    {
      v15 = "failed";
    }

    else
    {
      v15 = "had no response body";
    }

    has_http_status = mmcs_http_context_has_http_status(a1);
    v17 = has_http_status;
    v19 = mmcs_logging_logger_default(has_http_status, v18);
    if (v17)
    {
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      v21 = *v7;
      v22 = mmcs_http_context_http_status(a1, v20);
      v23 = CFStringCreateWithFormat(v21, 0, @"Request to MobileMe config server %s with status: %d.", v15, v22);
      v25 = mmcs_logging_logger_default(v23, v24);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      c.count[0] = 138543362;
      *&c.count[1] = v23;
      v26 = v25;
      v27 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v23 = CFStringCreateWithFormat(*v7, 0, @"Request to MobileMe config server %s has no status!", v15);
      v29 = mmcs_logging_logger_default(v23, v28);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:
        if (v23)
        {
          CFRelease(v23);
        }

LABEL_20:
        v30 = 0;
        v12 = 0;
        v31 = 0;
        if (!a2)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      c.count[0] = 138543362;
      *&c.count[1] = v23;
      v26 = v29;
      v27 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_2577D8000, v26, v27, "%{public}@", &c, 0xCu);
    goto LABEL_18;
  }

  *md = 0u;
  v54 = 0u;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  CC_SHA256_Update(&c, BytePtr, Length);
  CC_SHA256_Final(md, &c);
  v10 = *v7;
  v11 = XCFDataCreateWithBytesNoCopy(*v7, md, 32, *MEMORY[0x277CBED00]);
  v12 = v11;
  if (v11)
  {
    v13 = mmcs_base64_encode_cfdata_to_cstring(v11);
    CFRelease(v12);
    if (v13)
    {
      v14 = strlen(v13);
      v12 = XCFStringCreateWithBytesNoCopy(v10, v13, v14, 0x600u, 0, *MEMORY[0x277CBECF0]);
      if (!v12)
      {
        free(v13);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  error = 0;
  format = 0;
  v33 = CFPropertyListCreateWithData(v10, *a2, 0, &format, &error);
  v30 = v33;
  if (error)
  {
    v35 = mmcs_logging_logger_default(v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = CFStringCreateWithFormat(v10, 0, @"Failed to create configuration plist (%@) ", error);
      v38 = mmcs_logging_logger_default(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v36;
        _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  v31 = v30 != 0;
LABEL_39:
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
LABEL_42:
  *c.count = CFAbsoluteTimeGetCurrent();
  v39 = *v7;
  v40 = CFNumberCreate(*v7, kCFNumberDoubleType, &c);
  v41 = *c.count;
  if (v31)
  {
    v42 = _mmcs_report_setReportingInfo(a1, v12, v30, 1, v40, *c.count, 0.0);
    if (!v40)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (!gMMCS_MobileMeReporting || a1 && *(gMMCS_MobileMeReporting + 16) != a1)
  {
    v42 = pthread_mutex_unlock(&sReportingInfoAccessLock);
    if (!v40)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  *(gMMCS_MobileMeReporting + 48) = v41;
  pthread_mutex_unlock(&sReportingInfoAccessLock);
  CFPreferencesSetAppValue(@"report.LastFailedCheckTime", v40, @"com.apple.mmcs");
  v42 = CFPreferencesAppSynchronize(@"com.apple.mmcs");
  if (v40)
  {
LABEL_49:
    CFRelease(v40);
  }

LABEL_50:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v44 = mmcs_logging_logger_default(v42, v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = CFStringCreateWithFormat(v39, 0, @"Remote fetch completed (%d)", v31);
    v47 = mmcs_logging_logger_default(v45, v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      c.count[0] = 138543362;
      *&c.count[1] = v45;
      _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_DEBUG, "%{public}@", &c, 0xCu);
    }

    if (v45)
    {
      CFRelease(v45);
    }
  }

  _mmcs_report_clearFetchContext(a1);
  CFRunLoopStop(a3);
  if (a3)
  {
    CFRelease(a3);
  }
}

uint64_t _mmcs_report_clearFetchContext(const void *a1)
{
  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (gMMCS_MobileMeReporting)
  {
    if (*(gMMCS_MobileMeReporting + 16) == a1)
    {
      *(gMMCS_MobileMeReporting + 16) = 0;
      mmcs_http_context_invalidate(a1);
      if (a1)
      {
        C3BaseRelease(a1);
      }
    }
  }

  return pthread_mutex_unlock(&sReportingInfoAccessLock);
}

CFStringRef mmcs_report_copy_cfarray_with_key(const __CFDictionary *a1, const void *a2, const void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(a1, a2);
  v6 = Value;
  if (!Value)
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(Value);
  TypeID = CFArrayGetTypeID();
  if (v7 != TypeID)
  {
    v10 = mmcs_logging_logger_default(TypeID, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = CFGetTypeID(v6);
      v6 = CFStringCreateWithFormat(v11, 0, @"Invalid typeId %llu provided for %@.", v12, a2);
      v14 = mmcs_logging_logger_default(v6, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v6)
      {
        goto LABEL_12;
      }

      CFRelease(v6);
    }

    goto LABEL_11;
  }

  if (CFArrayGetCount(v6))
  {
    CFRetain(v6);
    return v6;
  }

LABEL_12:
  if (a3)
  {
    CFRetain(a3);
    return a3;
  }

  return v6;
}

void _collectHeadersWhichMatch(const __CFString *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && *a2 && CFStringCompare(a1, v3, 1uLL) == kCFCompareEqualTo)
  {
    v4 = *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);

    CFDictionarySetValue(v4, v5, v6);
  }
}

void ProtobufCBinaryData_SetCopyBufferLen(void *a1, const void *a2, size_t size)
{
  if (a2 && size)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    *a1 = size;
    memcpy(v6, a2, size);
    v7 = a1[1];
    if (v7)
    {
      free(v7);
    }

    a1[1] = v6;
  }

  else
  {
    v8 = a1[1];
    if (v8)
    {
      free(v8);
    }

    *a1 = 0;
    a1[1] = 0;
  }
}

CFDataRef ProtobufCBinaryData_CreateData(CFDataRef result)
{
  if (result)
  {
    return CFDataCreate(*MEMORY[0x277CBECE8], *(result + 1), *result);
  }

  return result;
}

BOOL ProtobufCBinaryData_Equals(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    return *a1 == *a2 && memcmp(*(a1 + 8), *(a2 + 8), *a1) == 0;
  }

  return result;
}

void ProtobufCBinaryData_SetData(CFIndex *a1, CFDataRef theData)
{
  v4 = a1[1];
  if (v4)
  {
    free(v4);
  }

  *a1 = 0;
  a1[1] = 0;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    v6 = malloc_type_malloc(Length, 0x100004077774924uLL);
    v7.location = 0;
    v7.length = Length;
    CFDataGetBytes(theData, v7, v6);
    *a1 = Length;
    a1[1] = v6;
  }
}

__CFString *ProtobufCString_SetString(__CFString **a1, const __CFString *a2)
{
  if (a2)
  {
    result = createCStringWithCFString(a2);
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      free(result);
      result = 0;
    }
  }

  *a1 = result;
  return result;
}

void *chunkserver__get_file_chunk_keys__create()
{
  v0 = malloc_type_malloc(0x48uLL, 0x10700404B5FC448uLL);
  chunkserver__get_file_chunk_keys__init(v0);
  return v0;
}

_OWORD *chunkserver__get_chunk_keys_request__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x10E00407CC324CDuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__get_chunk_keys_request__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      *(v3 + 4) = v4;
      if (!v4)
      {
        chunkserver__get_chunk_keys_request__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

CFDataRef chunkserver__get_chunk_keys_request__create_data(void **a1, uint64_t a2)
{
  packed_size = chunkserver__get_chunk_keys_request__get_packed_size(a1, a2);
  v4 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__get_chunk_keys_request__pack(a1, v4);
  v5 = *MEMORY[0x277CBECE8];
  v6 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v5, v4, packed_size, v6);
}

void **chunkserver__put_chunk_keys_request__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10E00409A86192AuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__put_chunk_keys_request__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      v3[4] = v4;
      if (!v4)
      {
        chunkserver__put_chunk_keys_request__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

CFDataRef chunkserver__put_chunk_keys_request__create_data(void **a1, uint64_t a2)
{
  packed_size = chunkserver__put_chunk_keys_request__get_packed_size(a1, a2);
  v4 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__put_chunk_keys_request__pack(a1, v4);
  v5 = *MEMORY[0x277CBECE8];
  v6 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v5, v4, packed_size, v6);
}

_OWORD *chunkserver__put_file_chunk_keys__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10F0040B8968E1DuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__put_file_chunk_keys__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      *(v3 + 6) = v4;
      if (!v4)
      {
        chunkserver__put_file_chunk_keys__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

_OWORD *chunkserver__chunk_key__create()
{
  v0 = malloc_type_malloc(0x50uLL, 0x1070040FC70CDAEuLL);
  chunkserver__chunk_key__init(v0);
  return v0;
}

void *mmcs_create_RangedItem(const __CFData *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v16 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "mmcs_create_FileReferenceDataV1Chunk fileVerificationKey required.";
      v18 = v16;
      v19 = 2;
LABEL_11:
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }

    return 0;
  }

  v4 = malloc_type_malloc(0x38uLL, 0x1070040B7852850uLL);
  if (!v4)
  {
    v20 = mmcs_logging_logger_default(0, v5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_create_RangedItem";
      v17 = "%s failed to allocate rangedItem.";
      v18 = v20;
      v19 = 12;
      goto LABEL_11;
    }

    return 0;
  }

  v6 = v4;
  opaque__file_reference_data__ranged_item__init(v4);
  *buf = a2;
  ProtobufCBinaryData_SetCopyBufferLen(v6 + 5, buf, 8uLL);
  if (!v6[6])
  {
    v21 = mmcs_logging_logger_default(v7, v8);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *v24 = 0;
    v22 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate chunk_length.";
LABEL_18:
    _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, v22, v24, 2u);
    goto LABEL_19;
  }

  Length = CFDataGetLength(a1);
  if (Length != 32)
  {
    v21 = mmcs_logging_logger_default(Length, v10);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *v24 = 0;
    v22 = "mmcs_create_FileReferenceDataV1Chunk unexpected fileVerificationKey length.";
    goto LABEL_18;
  }

  v11 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  v6[4] = v11;
  if (!v11)
  {
    v21 = mmcs_logging_logger_default(0, v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      v22 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate file verification key.";
      goto LABEL_18;
    }

LABEL_19:
    free(v6);
    return 0;
  }

  v13 = v11;
  v6[3] = 32;
  BytePtr = CFDataGetBytePtr(a1);
  v15 = *(BytePtr + 1);
  *v13 = *BytePtr;
  v13[1] = v15;
  return v6;
}

CFIndex *mmcs_RangedItem_copyFileVerificationKey_copyItemLength(CFIndex *result, uint64_t *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = result[4];
    if (v5 && result[5] == 8)
    {
      result = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, result[3], *MEMORY[0x277CBECF0]);
      if (result)
      {
        if (a2)
        {
          v4[3] = 0;
          v4[4] = 0;
          *a2 = result;
          result = 0;
        }

        if (a3)
        {
          *a3 = *v4[6];
        }

        if (result)
        {
          CFRelease(result);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_item_create_FileOpaqueReferenceData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FileReferenceData = mmcs_generic_item_create_FileReferenceData(a1, mmcs_item_generic_item_callbacks);
    if (FileReferenceData)
    {
      v5 = FileReferenceData;
      v6 = *(a1 + 72);
      if (v6)
      {
        v7 = CFGetTypeID(v6);
        TypeID = CFDataGetTypeID();
        if (v7 == TypeID)
        {
          file_reference_data_with_cfdata = mmcs_create_file_reference_data_with_cfdata(v5, *(a1 + 72));
          if (file_reference_data_with_cfdata)
          {
LABEL_20:
            mmcs_free_FileReferenceData(v5);
            return file_reference_data_with_cfdata;
          }

          v12 = mmcs_logging_logger_default(0, v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v19 = 0;
            v13 = "mmcs_item_create_FileOpaqueReferenceData failed to create cfdata from fileReferenceData.";
            v14 = &v19;
LABEL_18:
            _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
          }
        }

        else
        {
          v12 = mmcs_logging_logger_default(TypeID, v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            v13 = "mmcs_item_create_FileOpaqueReferenceData must have CFDataRef referenceObject.";
            v14 = v20;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v12 = mmcs_logging_logger_default(0, v4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v21 = 0;
          v13 = "mmcs_item_create_FileOpaqueReferenceData cannot have NULL referenceObject.";
          v14 = &v21;
          goto LABEL_18;
        }
      }

      file_reference_data_with_cfdata = 0;
      goto LABEL_20;
    }

    v15 = mmcs_logging_logger_default(0, v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "mmcs_item_create_FileOpaquedReferenceData failed to create fileReferenceData.";
      v17 = buf;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v16 = "mmcs_item_create_FileOpaquedReferenceData cannot have NULL item.";
      v17 = &v23;
LABEL_12:
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    }
  }

  return 0;
}

void **mmcs_generic_item_create_FileReferenceData(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x277D85DE8];
  v4 = (*a2)();
  if (!v4)
  {
    v66 = mmcs_logging_logger_default(0, v5);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v67 = "%s failed, cannot have no signature";
    goto LABEL_85;
  }

  v6 = v4;
  if ((*v4 & 0x7F) != 4 && (*v4 & 8) == 0)
  {
    v66 = mmcs_logging_logger_default(v4, v5);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v67 = "%s failed, FORD unexpected for non-MMCSv2 file";
    goto LABEL_85;
  }

  if (*v4 < 0)
  {
    v66 = mmcs_logging_logger_default(v4, v5);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v67 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_85;
  }

  v8 = (*(a2 + 8))(a1);
  if (!v8)
  {
    v66 = mmcs_logging_logger_default(0, v9);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v67 = "%s failed, Sha2HMAC signature cannot have NULL fileVerificationKey.";
    goto LABEL_85;
  }

  if (*v6 < 0)
  {
    v66 = mmcs_logging_logger_default(v8, v9);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v67 = "%s failed, Sha2HMAC signature cannot be unencrypted.";
    goto LABEL_85;
  }

  v10 = (*(a2 + 64))(a1);
  v12 = v10;
  if ((*v6 & 8) != 0)
  {
    if (!v10)
    {
      v66 = mmcs_logging_logger_default(0, v11);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v67 = "%s failed, Sha2HMAC package must have ranged items.";
      goto LABEL_85;
    }

    if (!CFArrayGetCount(v10))
    {
      v66 = mmcs_logging_logger_default(0, v13);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v67 = "%s failed, Sha2HMAC package must have non-zero ranged items.";
      goto LABEL_85;
    }
  }

  v14 = (*(a2 + 24))(a1);
  if (!v14)
  {
    v68 = mmcs_logging_logger_default(0, v15);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v71 = "%s failed, cannot have no-chunks";
LABEL_77:
    _os_log_impl(&dword_2577D8000, v68, OS_LOG_TYPE_ERROR, v71, buf, 0xCu);
    goto LABEL_78;
  }

  v16 = v14;
  v17 = (*a2)(a1);
  if (!v17)
  {
    v68 = mmcs_logging_logger_default(0, v18);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v71 = "%s failed, cannot have no signature";
    goto LABEL_77;
  }

  if ((*v17 & 0x7F) != 4 && (*v17 & 8) == 0)
  {
    v68 = mmcs_logging_logger_default(v17, v18);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v71 = "%s failed, FORD unexpected for non-MMCSv2 file";
    goto LABEL_77;
  }

  if (*v17 < 0)
  {
    v68 = mmcs_logging_logger_default(v17, v18);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v71 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_77;
  }

  v20 = (*(a2 + 8))(a1);
  if (!v20)
  {
    v68 = mmcs_logging_logger_default(0, v21);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v71 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_77;
  }

  v22 = v20;
  FileReferenceData = mmcs_create_FileReferenceData(v12);
  if (!FileReferenceData)
  {
    v68 = mmcs_logging_logger_default(0, v24);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v69)
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
      v71 = "%s failed to invoke mmcs_create_FileReferenceData";
      goto LABEL_77;
    }

LABEL_78:
    v25 = 0;
    goto LABEL_79;
  }

  v25 = FileReferenceData;
  v26 = malloc_type_malloc(8 * v16, 0x2004093837F09uLL);
  if (!v26)
  {
    v76 = mmcs_logging_logger_default(0, v27);
    v69 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_79;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v77 = "%s failed to allocate chunk list";
    goto LABEL_94;
  }

  v28 = v26;
  v29 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (!v29)
  {
    v78 = mmcs_logging_logger_default(0, v30);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_ERROR, "mmcs_create_FileReferenceDataV1 failed to allocate fileReferenceData.", buf, 2u);
    }

    free(v28);
    v76 = mmcs_logging_logger_default(v79, v80);
    v69 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
    if (!v69)
    {
      goto LABEL_79;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v77 = "%s failed to invoke mmcs_create_FileReferenceDataV1";
LABEL_94:
    v81 = v76;
    v82 = 12;
    goto LABEL_112;
  }

  v31 = v29;
  opaque__file_reference_data__v1__init(v29);
  *(v31 + 3) = 0;
  *(v31 + 4) = v28;
  *(v31 + 10) = 1;
  BytePtr = CFDataGetBytePtr(v22);
  Length = CFDataGetLength(v22);
  v34 = 0;
  if (BytePtr)
  {
    v35 = Length;
  }

  else
  {
    v35 = 0;
  }

  if (Length)
  {
    v36 = BytePtr;
  }

  else
  {
    v36 = 0;
  }

  *(v31 + 6) = v35;
  *(v31 + 7) = v36;
  v25[3] = v31;
  v174 = v31;
  do
  {
    v37 = (*(a2 + 40))(a1, v34);
    if ((*v37 & 0x7F) != 4)
    {
      v83 = mmcs_logging_logger_default(v37, v38);
      v69 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v34;
        v77 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
        goto LABEL_111;
      }

      goto LABEL_79;
    }

    if ((*v37 & 0x80) == 0)
    {
      v83 = mmcs_logging_logger_default(v37, v38);
      v69 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v34;
        v77 = "%s observed inconsistent encryption between registerItem->signature and registerItem->chunks[%llu]->signature.";
        goto LABEL_111;
      }

      goto LABEL_79;
    }

    v39 = (*(a2 + 56))(a1, v34);
    v40 = (*(a2 + 32))(a1, v34);
    v41 = (*(a2 + 48))(a1, v34);
    if (!v41)
    {
      v84 = mmcs_logging_logger_default(0, v42);
      v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
      if (!v85)
      {
        goto LABEL_109;
      }

      *buf = 0;
      v87 = "mmcs_create_FileReferenceDataV1Chunk cannot have NULL chunkEncryptionKey.";
LABEL_105:
      _os_log_impl(&dword_2577D8000, v84, OS_LOG_TYPE_ERROR, v87, buf, 2u);
      goto LABEL_109;
    }

    v43 = v41;
    v44 = CKChunkSchemeAndEncryptionKeySize();
    if (!v44)
    {
      v84 = mmcs_logging_logger_default(0, v45);
      v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
      if (!v85)
      {
        goto LABEL_109;
      }

      *buf = 0;
      v87 = "mmcs_create_FileReferenceDataV1Chunk cannot have zero length chunkEncryptionSignature.";
      goto LABEL_105;
    }

    v46 = v44;
    v176 = v34;
    v47 = malloc_type_malloc(0x58uLL, 0x10700408B6EF5B1uLL);
    if (!v47)
    {
      v84 = mmcs_logging_logger_default(0, v48);
      v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
      if (!v85)
      {
        goto LABEL_109;
      }

      *buf = 0;
      v87 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate fileReferenceDataChunk.";
      goto LABEL_105;
    }

    v49 = v47;
    opaque__file_reference_data__v1__chunk__init(v47);
    if (!v40)
    {
      goto LABEL_38;
    }

    *buf = v40;
    ProtobufCBinaryData_SetCopyBufferLen(v49 + 6, buf, 4uLL);
    if (!v49[7])
    {
      v88 = mmcs_logging_logger_default(v50, v51);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *v179 = 0;
        _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_ERROR, "mmcs_create_FileReferenceDataV1Chunk failed to allocate chunk_length.", v179, 2u);
      }

      free(v49);
      v34 = v176;
LABEL_109:
      v83 = mmcs_logging_logger_default(v85, v86);
      v69 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v34;
        v77 = "%s observed error processing registerItem->chunks[%llu]";
LABEL_111:
        v81 = v83;
        v82 = 22;
LABEL_112:
        _os_log_impl(&dword_2577D8000, v81, OS_LOG_TYPE_ERROR, v77, buf, v82);
      }

LABEL_79:
      v72 = mmcs_logging_logger_default(v69, v70);
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        *buf = 136315138;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, "%s failed to create fileReferenceData", buf, 0xCu);
      }

      if (v25)
      {
        v73 = mmcs_free_FileReferenceData(v25);
      }

      v66 = mmcs_logging_logger_default(v73, v74);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v67 = "%s failed, cannot have NULL fileReferenceData";
LABEL_85:
      _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, v67, buf, 0xCu);
      return 0;
    }

    *(v49 + 10) = 1;
LABEL_38:
    v49[3] = v46;
    v49[4] = v43;
    if (v39)
    {
      v52 = CKSubchunkBlobSize();
      if (v52)
      {
        v53 = v39;
      }

      else
      {
        v53 = 0;
      }

      v49[9] = v52;
      v49[10] = v53;
      v54 = 1;
    }

    else
    {
      v54 = 0;
    }

    *(v49 + 16) = v54;
    v56 = *(v174 + 3);
    v55 = *(v174 + 4);
    *(v174 + 3) = v56 + 1;
    *(v55 + 8 * v56) = v49;
    v34 = v176 + 1;
  }

  while (v16 != v176 + 1);
  v57 = (*(a2 + 24))(a1);
  if (!v57)
  {
    v62 = mmcs_logging_logger_default(0, v58);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v63)
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v65 = "%s failed, cannot have no-chunks";
LABEL_151:
    _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, v65, buf, 0xCu);
    goto LABEL_152;
  }

  v59 = v57;
  v60 = (*a2)(a1);
  if (!v60)
  {
    v62 = mmcs_logging_logger_default(0, v61);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v63)
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v65 = "%s failed, cannot have no signature";
    goto LABEL_151;
  }

  if ((*v60 & 0x7F) != 4 && (*v60 & 8) == 0)
  {
    v62 = mmcs_logging_logger_default(v60, v61);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
      v65 = "%s failed, FORD unexpected for non-MMCSv2 file";
      goto LABEL_151;
    }

LABEL_152:
    v92 = 0;
LABEL_153:
    v114 = mmcs_logging_logger_default(v63, v64);
    v115 = os_log_type_enabled(v114, OS_LOG_TYPE_ERROR);
    if (v115)
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v114, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
    }

    if (v92)
    {
      v115 = mmcs_free_FileReferenceData(v92);
    }

    v117 = mmcs_logging_logger_default(v115, v116);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      goto LABEL_159;
    }

    goto LABEL_160;
  }

  if (*v60 < 0)
  {
    v62 = mmcs_logging_logger_default(v60, v61);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v63)
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v65 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_151;
  }

  v89 = (*(a2 + 8))(a1);
  if (!v89)
  {
    v62 = mmcs_logging_logger_default(0, v90);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v63)
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v65 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_151;
  }

  v91 = v89;
  v63 = mmcs_create_FileReferenceData(v12);
  v92 = v63;
  if (!v63)
  {
    goto LABEL_153;
  }

  v63 = malloc_type_malloc(0x38uLL, 0x10F0040167B91E7uLL);
  v173 = v63;
  if (!v63)
  {
    goto LABEL_153;
  }

  opaque__file_reference_data__v2__init(v63);
  *(v92 + 32) = v173;
  v93 = CFDataGetBytePtr(v91);
  v94 = CFDataGetLength(v91);
  v172 = 0;
  v175 = 0;
  v177 = 0;
  if (v93)
  {
    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  if (v94)
  {
    v96 = v93;
  }

  else
  {
    v96 = 0;
  }

  *(v173 + 24) = v95;
  *(v173 + 32) = v96;
  while (2)
  {
    v97 = (*(a2 + 40))(a1, v177);
    v98 = (*(a2 + 32))(a1, v177);
    v63 = (*(a2 + 48))(a1, v177);
    if ((*v97 & 0x7F) != 4)
    {
      v118 = mmcs_logging_logger_default(v63, v64);
      v63 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
      if (!v63)
      {
        goto LABEL_153;
      }

      *buf = 136315394;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
      *&buf[12] = 2048;
      *&buf[14] = v177;
      v119 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
      v120 = v118;
      v121 = 22;
LABEL_165:
      _os_log_impl(&dword_2577D8000, v120, OS_LOG_TYPE_ERROR, v119, buf, v121);
      goto LABEL_153;
    }

    if ((*v97 & 0x80) == 0)
    {
      v122 = mmcs_logging_logger_default(v63, v64);
      v63 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
      if (!v63)
      {
        goto LABEL_153;
      }

      *buf = 134217984;
      *&buf[4] = v177;
      v119 = "mmcs_item_create_FileReferenceData observed inconsistent encryption between registerItem->signature and registerItem->ri_chunkInstances[%llu].chunkReference->signature.";
      v120 = v122;
      v121 = 12;
      goto LABEL_165;
    }

    v99 = v63;
    if (v172 != v98)
    {
      v63 = malloc_type_realloc(*(v173 + 48), 8 * *(v173 + 40) + 8, 0x2004093837F09uLL);
      if (!v63)
      {
        goto LABEL_153;
      }

      *(v173 + 48) = v63;
      v63 = malloc_type_malloc(0x38uLL, 0x10F0040167B91E7uLL);
      v175 = v63;
      if (!v63)
      {
        goto LABEL_153;
      }

      opaque__file_reference_data__v2__chunk_group__init(v63);
      v101 = *(v173 + 40);
      v100 = *(v173 + 48);
      *(v173 + 40) = v101 + 1;
      *(v100 + 8 * v101) = v175;
      *buf = v98;
      ProtobufCBinaryData_SetCopyBufferLen((v175 + 24), buf, 4uLL);
      v172 = v98;
      if (!*(v175 + 32))
      {
        goto LABEL_153;
      }
    }

    if (!v99)
    {
      goto LABEL_153;
    }

    v63 = CKChunkSchemeAndEncryptionKeySize();
    if (!v63)
    {
      goto LABEL_153;
    }

    v102 = v63;
    v103 = malloc_type_malloc(0x40uLL, 0x10700407A2CD8F7uLL);
    v104 = opaque__file_reference_data__v2__chunk_group__chunk__init(v103);
    v103[3] = v102;
    v103[4] = v99;
    v105 = (*(a2 + 56))(a1, v177, v104);
    if (v105)
    {
      v106 = v105;
      v107 = CKSubchunkBlobSize();
      v108 = v107 ? v106 : 0;
      v103[6] = v107;
      v103[7] = v108;
      v109 = 1;
    }

    else
    {
      v109 = 0;
    }

    *(v103 + 10) = v109;
    v63 = malloc_type_realloc(*(v175 + 48), 8 * *(v175 + 40) + 8, 0x2004093837F09uLL);
    if (!v63)
    {
      goto LABEL_153;
    }

    v110 = *(v175 + 40);
    *(v175 + 40) = v110 + 1;
    *(v175 + 48) = v63;
    *(v63 + 8 * v110) = v103;
    if (v59 != ++v177)
    {
      continue;
    }

    break;
  }

  packed_size = opaque__file_reference_data__get_packed_size(v92, v64);
  if (packed_size && opaque__file_reference_data__get_packed_size(v25, v112) > packed_size)
  {
    v113 = v25;
    v25 = v92;
  }

  else
  {
    v113 = v92;
  }

  mmcs_free_FileReferenceData(v113);
  v123 = (*(a2 + 24))(a1);
  if (!v123)
  {
    v128 = mmcs_logging_logger_default(0, v124);
    Mutable = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (!Mutable)
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v131 = "%s failed, cannot have no-chunks";
LABEL_215:
    _os_log_impl(&dword_2577D8000, v128, OS_LOG_TYPE_ERROR, v131, buf, 0xCu);
    goto LABEL_216;
  }

  v125 = v123;
  v126 = (*a2)(a1);
  if (!v126)
  {
    v128 = mmcs_logging_logger_default(0, v127);
    Mutable = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (!Mutable)
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v131 = "%s failed, cannot have no signature";
    goto LABEL_215;
  }

  if ((*v126 & 0x7F) != 4 && (*v126 & 8) == 0)
  {
    v128 = mmcs_logging_logger_default(v126, v127);
    Mutable = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (Mutable)
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
      v131 = "%s failed, FORD unexpected for non-MMCSv2 file";
      goto LABEL_215;
    }

LABEL_216:
    v135 = 0;
LABEL_217:
    v145 = 0;
    goto LABEL_218;
  }

  if (*v126 < 0)
  {
    v128 = mmcs_logging_logger_default(v126, v127);
    Mutable = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (!Mutable)
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v131 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_215;
  }

  v132 = (*(a2 + 8))(a1);
  if (!v132)
  {
    v128 = mmcs_logging_logger_default(0, v133);
    Mutable = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (!Mutable)
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v131 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_215;
  }

  v134 = v132;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  v135 = Mutable;
  if (!Mutable)
  {
    goto LABEL_217;
  }

  for (i = 0; i != v125; ++i)
  {
    v137 = (*(a2 + 32))(a1, i);
    Value = CFDictionaryGetValue(v135, v137);
    *buf = Value;
    if (!Value)
    {
      Mutable = mmcs_index_set_create(buf);
      if (!Mutable)
      {
        goto LABEL_217;
      }

      CFDictionarySetValue(v135, v137, *buf);
      Value = *buf;
      if (*buf)
      {
        C3BaseRelease(*buf);
        Value = *buf;
      }
    }

    mmcs_index_set_add_index(Value, i);
  }

  *buf = 0;
  mmcs_index_set_create(buf);
  CFDictionaryApplyFunction(v135, _chunkLengthIndexSetChecker, *buf);
  v139 = mmcs_index_set_contains_range(*buf, 0, v125 - 1);
  if (!v139)
  {
    v141 = mmcs_logging_logger_default(v139, v140);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      *v179 = 0;
      _os_log_impl(&dword_2577D8000, v141, OS_LOG_TYPE_ERROR, "index set missing indexes", v179, 2u);
    }
  }

  v142 = mmcs_index_set_count(*buf, v140);
  if (v142 != v125)
  {
    v144 = mmcs_logging_logger_default(v142, v143);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      *v179 = 0;
      _os_log_impl(&dword_2577D8000, v144, OS_LOG_TYPE_ERROR, "index set wrong number of indexes", v179, 2u);
    }
  }

  if (*buf)
  {
    C3BaseRelease(*buf);
  }

  Mutable = mmcs_create_FileReferenceData(v12);
  v145 = Mutable;
  if (!Mutable || (Mutable = malloc_type_malloc(0x48uLL, 0x10F00406B62C39FuLL), (v178 = Mutable) == 0))
  {
LABEL_218:
    v163 = mmcs_logging_logger_default(Mutable, v130);
    Mutable = os_log_type_enabled(v163, OS_LOG_TYPE_ERROR);
    if (Mutable)
    {
      *v179 = 0;
      _os_log_impl(&dword_2577D8000, v163, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileReferenceData failed to create fileReferenceData", v179, 2u);
    }

    if (v145)
    {
      Mutable = mmcs_free_FileReferenceData(v145);
      v145 = 0;
    }

    goto LABEL_222;
  }

  opaque__file_reference_data__v3__init(Mutable);
  *(v145 + 40) = v178;
  v146 = CFDataGetBytePtr(v134);
  v147 = CFDataGetLength(v134);
  if (v146)
  {
    v148 = v147;
  }

  else
  {
    v148 = 0;
  }

  if (v147)
  {
    v149 = v146;
  }

  else
  {
    v149 = 0;
  }

  v178[3] = v148;
  v178[4] = v149;
  v150 = malloc_type_malloc(8 * v125, 0x2004093837F09uLL);
  if (!v150)
  {
    v166 = mmcs_logging_logger_default(0, v151);
    Mutable = os_log_type_enabled(v166, OS_LOG_TYPE_ERROR);
    if (!Mutable)
    {
      goto LABEL_218;
    }

    *buf = 0;
    v167 = "mmcs_item_create_FileReferenceData failed to allocate chunk list";
    v168 = v166;
    v169 = 2;
    goto LABEL_240;
  }

  v152 = 0;
  v178[6] = v150;
  do
  {
    v153 = (*(a2 + 40))(a1, v152);
    v154 = (*(a2 + 48))(a1, v152);
    v155 = (*(a2 + 32))(a1, v152);
    v156 = (*(a2 + 56))(a1, v152);
    if ((*v153 & 0x7F) != 4)
    {
      v170 = mmcs_logging_logger_default(v156, v157);
      Mutable = os_log_type_enabled(v170, OS_LOG_TYPE_ERROR);
      if (!Mutable)
      {
        goto LABEL_218;
      }

      *buf = 136315394;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
      *&buf[12] = 2048;
      *&buf[14] = v152;
      v167 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
      v168 = v170;
      v169 = 22;
LABEL_240:
      _os_log_impl(&dword_2577D8000, v168, OS_LOG_TYPE_ERROR, v167, buf, v169);
      goto LABEL_218;
    }

    if ((*v153 & 0x80) == 0)
    {
      v171 = mmcs_logging_logger_default(v156, v157);
      Mutable = os_log_type_enabled(v171, OS_LOG_TYPE_ERROR);
      if (!Mutable)
      {
        goto LABEL_218;
      }

      *buf = 134217984;
      *&buf[4] = v152;
      v167 = "mmcs_item_create_FileReferenceData observed inconsistent encryption between registerItem->signature and registerItem->ri_chunkInstances[%llu].chunkReference->signature.";
LABEL_239:
      v168 = v171;
      v169 = 12;
      goto LABEL_240;
    }

    FileReferenceDataV3Chunk = mmcs_create_FileReferenceDataV3Chunk(v154, v155, v156);
    if (!FileReferenceDataV3Chunk)
    {
      v171 = mmcs_logging_logger_default(0, v159);
      Mutable = os_log_type_enabled(v171, OS_LOG_TYPE_ERROR);
      if (!Mutable)
      {
        goto LABEL_218;
      }

      *buf = 134217984;
      *&buf[4] = v152;
      v167 = "mmcs_item_create_FileReferenceData observed error processing registerItem->ri_chunkInstances[%llu].chunkReference";
      goto LABEL_239;
    }

    v161 = v178[5];
    v160 = v178[6];
    v178[5] = v161 + 1;
    *(v160 + 8 * v161) = FileReferenceDataV3Chunk;
    ++v152;
  }

  while (v125 != v152);
  Count = CFDictionaryGetCount(v135);
  Mutable = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  v178[8] = Mutable;
  if (!Mutable)
  {
    goto LABEL_218;
  }

  *&buf[8] = 0;
  *&buf[16] = 1;
  *buf = v178;
  CFDictionaryApplyFunction(v135, _add_index_set, buf);
  if (!buf[16])
  {
    goto LABEL_218;
  }

LABEL_222:
  if (v135)
  {
    CFRelease(v135);
  }

  if (!v145)
  {
    v117 = mmcs_logging_logger_default(Mutable, v130);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
LABEL_159:
      _os_log_impl(&dword_2577D8000, v117, OS_LOG_TYPE_ERROR, "%s failed, cannot have NULL fileReferenceData", buf, 0xCu);
    }

LABEL_160:
    mmcs_free_FileReferenceData(v25);
    return 0;
  }

  v164 = opaque__file_reference_data__get_packed_size(v145, v130);
  if (v164 && opaque__file_reference_data__get_packed_size(v25, v165) > v164)
  {
    mmcs_free_FileReferenceData(v25);
    return v145;
  }

  else
  {
    mmcs_free_FileReferenceData(v145);
  }

  return v25;
}

uint64_t mmcs_create_file_reference_data_with_cfdata(void **a1, uint64_t a2)
{
  packed_size = opaque__file_reference_data__get_packed_size(a1, a2);
  if (packed_size)
  {
    v5 = packed_size;
    v6 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
    if (v6)
    {
      v8 = v6;
      v9 = opaque__file_reference_data__pack(a1, v6);
      if (v5 == v9)
      {
        v11 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v8, v5, *MEMORY[0x277CBECF0]);
        if (v11)
        {
          v13 = v11;
          v14 = PCSMMCSCopyEncryptedData();
          CFRelease(v13);
          return v14;
        }

        v19 = mmcs_logging_logger_default(0, v12);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v22 = 0;
        v20 = "mmcs_create_file_reference_data_with_cfdata failed to allocate CFData wrapping body buffer";
        v21 = &v22;
      }

      else
      {
        v19 = mmcs_logging_logger_default(v9, v10);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          free(v8);
          return 0;
        }

        v23 = 0;
        v20 = "mmcs_create_file_reference_data_with_cfdata failed to serialize fileReferenceData to expected size";
        v21 = &v23;
      }

      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
      goto LABEL_16;
    }

    v16 = mmcs_logging_logger_default(0, v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "mmcs_create_file_reference_data_with_cfdata failed to allocate buffer for serialized fileReferenceData";
      v18 = buf;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = mmcs_logging_logger_default(0, v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 0;
      v17 = "mmcs_create_file_reference_data_with_cfdata invalid size for serialized fileReferenceData";
      v18 = &v25;
LABEL_10:
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    }
  }

  return 0;
}

void **mmcs_free_FileReferenceData(void **result)
{
  if (result)
  {
    v1 = result;
    result[6] = 0;
    v2 = result[7];
    if (v2)
    {
      free(v2);
    }

    *(v1 + 56) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = v3[3];
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = *(v3[4] + 8 * i);
          if (v6)
          {
            *(v6 + 64) = 0;
            *(v6 + 24) = 0;
            *(v6 + 32) = 0;
            *(v6 + 72) = 0;
            *(v6 + 80) = 0;
            v4 = v3[3];
          }
        }
      }

      v3[6] = 0;
      v3[7] = 0;
    }

    v7 = *(v1 + 32);
    if (v7)
    {
      v8 = v7[5];
      if (v8)
      {
        for (j = 0; j < v8; ++j)
        {
          v10 = *(v7[6] + 8 * j);
          if (v10)
          {
            v11 = *(v10 + 40);
            if (v11)
            {
              v12 = *(v10 + 48);
              do
              {
                v13 = *v12;
                *(v13 + 24) = 0;
                *(v13 + 32) = 0;
                v14 = *v12;
                *(v14 + 48) = 0;
                *(v14 + 56) = 0;
                v15 = *v12++;
                *(v15 + 40) = 0;
                --v11;
              }

              while (v11);
              v8 = v7[5];
            }
          }
        }
      }

      v7[3] = 0;
      v7[4] = 0;
    }

    v16 = *(v1 + 40);
    if (v16)
    {
      v17 = v16[5];
      if (v17)
      {
        for (k = 0; k < v17; ++k)
        {
          v19 = *(v16[6] + 8 * k);
          if (v19)
          {
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            *(v19 + 40) = 0;
            *(v19 + 48) = 0;
            *(v19 + 56) = 0;
            v17 = v16[5];
          }
        }
      }

      v16[3] = 0;
      v16[4] = 0;
    }

    return opaque__file_reference_data__free_unpacked(v1, 0);
  }

  return result;
}

uint64_t mmcs_register_item_create_FileOpaqueReferenceData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FileReferenceData = mmcs_generic_item_create_FileReferenceData(a1, mmcs_register_item_generic_item_callbacks);
    if (FileReferenceData)
    {
      v5 = FileReferenceData;
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = CFGetTypeID(v6);
        TypeID = CFDataGetTypeID();
        if (v7 == TypeID)
        {
          file_reference_data_with_cfdata = mmcs_create_file_reference_data_with_cfdata(v5, *(a1 + 32));
          if (file_reference_data_with_cfdata)
          {
LABEL_20:
            mmcs_free_FileReferenceData(v5);
            return file_reference_data_with_cfdata;
          }

          v12 = mmcs_logging_logger_default(0, v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v19 = 0;
            v13 = "mmcs_register_item_create_FileOpaquedReferenceData failed to create cfdata from fileReferenceData.";
            v14 = &v19;
LABEL_18:
            _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
          }
        }

        else
        {
          v12 = mmcs_logging_logger_default(TypeID, v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            v13 = "mmcs_register_item_create_FileOpaquedReferenceData must have CFDataRef referenceObject.";
            v14 = v20;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v12 = mmcs_logging_logger_default(0, v4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v21 = 0;
          v13 = "mmcs_register_item_create_FileOpaquedReferenceData cannot have NULL referenceObject.";
          v14 = &v21;
          goto LABEL_18;
        }
      }

      file_reference_data_with_cfdata = 0;
      goto LABEL_20;
    }

    v15 = mmcs_logging_logger_default(0, v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "mmcs_register_item_create_FileOpaquedReferenceData failed to create fileReferenceData.";
      v17 = buf;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v16 = "mmcs_register_item_create_FileOpaquedReferenceData cannot have NULL registerItem.";
      v17 = &v23;
LABEL_12:
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    }
  }

  return 0;
}

void mmcs_free_ChunkInfo(void *a1)
{
  if (a1)
  {
    a1[3] = 0;
    a1[4] = 0;
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

CFIndex *mmcs_create_ChunkInfo(uint64_t a1, char *a2, const UInt8 *a3, __CFData *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = mmcs_logging_logger_default(a1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v13 = "ChunkInfo cannot have NULL chunkSignature.";
      goto LABEL_35;
    }

    return 0;
  }

  v4 = a1;
  if (!a1)
  {
    v12 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v13 = "ChunkInfo cannot have zero length chunk.";
      goto LABEL_35;
    }

    return 0;
  }

  v8 = CKChunkSchemeAndSignatureSize();
  if (!v8)
  {
    v12 = mmcs_logging_logger_default(0, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v13 = "ChunkInfo cannot have zero length chunkSignature.";
      goto LABEL_35;
    }

    return 0;
  }

  v10 = v8;
  if (a3)
  {
    v8 = CKChunkSchemeAndEncryptionKeySize();
    v11 = v8;
    if (!v8)
    {
      v12 = mmcs_logging_logger_default(0, v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v13 = "ChunkInfo cannot have zero length chunkEncryptionSignature.";
LABEL_35:
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, v13, cf, 2u);
        return 0;
      }

      return 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    if ((*a4 == 0) != (*(a4 + 1) == 0))
    {
      v12 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v13 = "ChunkInfo cannot have partial complete pcs info.";
        goto LABEL_35;
      }

      return 0;
    }

    if (!a3 && *a4)
    {
      v12 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v13 = "ChunkInfo cannot have reference signature without encryption signature.";
        goto LABEL_35;
      }

      return 0;
    }
  }

  v14 = malloc_type_malloc(0x50uLL, 0x10700403FCE3692uLL);
  if (!v14)
  {
    v12 = mmcs_logging_logger_default(0, v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v13 = "ChunkInfo failed to allocate Chunkserver__ChunkInfo";
      goto LABEL_35;
    }

    return 0;
  }

  v16 = v14;
  if (a3)
  {
    v17 = CFDataCreate(*MEMORY[0x277CBECE8], a3, v11);
    v19 = v17;
    if (!v17)
    {
      v23 = mmcs_logging_logger_default(0, v18);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v24 = "ChunkInfo failed to create schemeAndKey for chunkEncryptionSignature";
        v25 = cf;
        goto LABEL_56;
      }

LABEL_57:
      free(v16);
      a4 = 0;
      v16 = 0;
      goto LABEL_63;
    }

    if (a4)
    {
      v20 = *(a4 + 1);
      if (v20)
      {
        *cf = 0;
        a4 = mmcs_chunk_key_copy_wraptured_scheme_and_key(v17, v20, 1, cf);
        v22 = *cf;
        if (*cf)
        {
          CFRelease(*cf);
        }

        *cf = 0;
        if (!a4)
        {
          v23 = mmcs_logging_logger_default(v22, v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v36 = 0;
            v24 = "ChunkInfo failed to create wrappedKey for chunkEncryptionSignature";
            v25 = &v36;
LABEL_56:
            _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
            goto LABEL_57;
          }

          goto LABEL_57;
        }
      }

      else
      {
        a4 = 0;
      }
    }
  }

  else
  {
    a4 = 0;
    v19 = 0;
  }

  if (gMMCS_DebugLevel < 4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  }

  chunkserver__chunk_info__init(v16);
  *(v16 + 16) = v4;
  v16[3] = v10;
  v16[4] = a2;
  if (Mutable)
  {
    v28 = hextostrdup(a2, v10);
    CFStringAppendFormat(Mutable, 0, @"chunk sig %s", v28);
    if (v28)
    {
      free(v28);
    }

    if (!a3)
    {
      goto LABEL_60;
    }

    *(v16 + 10) = 1;
    v31 = mmcs_key_description_create_with_cfdata(v19, 1);
    CFStringAppendFormat(Mutable, 0, @" key %@", v31);
    if (v31)
    {
      CFRelease(v31);
    }

    if (a4)
    {
      StringDescription = XCFDataCreateStringDescription(a4);
      CFStringAppendFormat(Mutable, 0, @" encrypted key %@", StringDescription);
      if (StringDescription)
      {
        CFRelease(StringDescription);
      }

      goto LABEL_53;
    }

    goto LABEL_58;
  }

  if (a3)
  {
    *(v16 + 10) = 1;
    if (a4)
    {
LABEL_53:
      v33 = v16 + 6;
      v34 = a4;
      goto LABEL_59;
    }

LABEL_58:
    v33 = v16 + 6;
    v34 = v19;
LABEL_59:
    ProtobufCBinaryData_SetData(v33, v34);
    if (!Mutable)
    {
      goto LABEL_63;
    }

LABEL_60:
    v35 = mmcs_logging_logger_chunk(v29, v30);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 138543362;
      *&cf[4] = Mutable;
      _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_DEFAULT, "ChunkInfo %{public}@", cf, 0xCu);
    }

    CFRelease(Mutable);
  }

LABEL_63:
  if (v19)
  {
    CFRelease(v19);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  return v16;
}

_DWORD *mmcs_create_FordInfo(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = malloc_type_malloc(0x28uLL, 0x10600401BE82CDFuLL);
    v4 = v3;
    if (v3)
    {
      chunkserver__ford_info__init(v3);
      v4[6] = 1;
      v4[7] = v2;
      v4[8] = 0;
    }
  }

  else
  {
    v5 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "FordInfo cannot have zero length fileOpaqueReferenceDataLength.", v7, 2u);
    }

    return 0;
  }

  return v4;
}

void mmcs_free_ChunkingProfile(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    a1[5] = 0;
    v3 = a1[6];
    if (v3)
    {
      free(v3);
    }

    a1[6] = 0;
    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

_DWORD *mmcs_create_ChunkingProfile(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = malloc_type_malloc(0x48uLL, 0x10700402FA450D5uLL);
    v4 = v3;
    if (v3)
    {
      chunkserver__file_chunk_list__chunking_profile__init(v3);
      v4[6] = 1;
      *(v4 + 4) = *(a1 + 16);
      v5 = CKProfileResultsConfigurationVersion();
      if (v5)
      {
        *(v4 + 6) = createCStringWithCFString(v5);
      }

      v6 = CKProfileResultsResolvedFileExtension();
      if (v6)
      {
        *(v4 + 8) = createCStringWithCFString(v6);
      }

      if (CKProfileResultsType())
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = CKProfileTypeDescription();
        v9 = CFStringCreateWithCString(v7, v8, 0x8000100u);
        *(v4 + 5) = createCStringWithCFString(v9);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      IsDefault = CKProfileResultsIsDefault();
      v4[14] = IsDefault != 0;
      if (IsDefault)
      {
        v4[15] = CFBooleanGetValue(IsDefault) != 0;
      }
    }
  }

  else
  {
    v11 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 0;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "chunkingProfile cannot be NULL.", v13, 2u);
    }

    return 0;
  }

  return v4;
}

void mmcs_free_FileChunkList(void *a1)
{
  if (a1)
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    a1[9] = 0;
    a1[10] = 0;
    if (a1[6])
    {
      v2 = 0;
      do
      {
        mmcs_free_ChunkInfo(*(a1[7] + 8 * v2++));
      }

      while (v2 < a1[6]);
    }

    if (a1[14])
    {
      v3 = 0;
      do
      {
        mmcs_free_ChunkingProfile(*(a1[15] + 8 * v3++));
      }

      while (v3 < a1[14]);
    }

    v4 = a1[12];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[7];
    if (v5)
    {
      free(v5);
    }

    a1[7] = 0;
    v6 = a1[15];
    if (v6)
    {
      free(v6);
    }

    a1[15] = 0;
    v7 = a1[11];
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }
}

_OWORD *mmcs_create_FileChunkList(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    v20 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v35 = 0;
      v21 = "FileChunkList cannot have NULL fileSignature.";
      v22 = &v35;
      goto LABEL_27;
    }

    return 0;
  }

  if (!a5)
  {
    v20 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v34 = 0;
      v21 = "FileChunkList cannot have zero length chunk.";
      v22 = &v34;
      goto LABEL_27;
    }

    return 0;
  }

  if (!a6)
  {
    v20 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v21 = "FileChunkList cannot have NULL chunkList.";
      v22 = &v33;
      goto LABEL_27;
    }

    return 0;
  }

  v17 = CKFileSchemeAndSignatureSize();
  if (!v17)
  {
    v20 = mmcs_logging_logger_default(0, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "FileChunkList cannot have zero length fileSignature.";
      v22 = buf;
      goto LABEL_27;
    }

    return 0;
  }

  v19 = v17;
  if (a4 && (*a4 == 0) != (*(a4 + 8) == 0))
  {
    v20 = mmcs_logging_logger_default(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v21 = "FileChunkList cannot have partial complete pcs info.";
      v22 = &v31;
LABEL_27:
      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
      return 0;
    }

    return 0;
  }

  v23 = malloc_type_malloc(0x80uLL, 0x10F00400DC2D0DAuLL);
  v24 = v23;
  if (v23)
  {
    chunkserver__file_chunk_list__init(v23);
    *(v24 + 3) = v19;
    *(v24 + 4) = a1;
    if (a4 && (v25 = *a4) != 0)
    {
      *(v24 + 16) = 1;
      BytePtr = CFDataGetBytePtr(v25);
      Length = CFDataGetLength(*a4);
      if (BytePtr)
      {
        v28 = Length;
      }

      else
      {
        v28 = 0;
      }

      if (Length)
      {
        v29 = BytePtr;
      }

      else
      {
        v29 = 0;
      }

      *(v24 + 9) = v28;
      *(v24 + 10) = v29;
    }

    else
    {
      *(v24 + 16) = 0;
      *(v24 + 9) = 0;
      *(v24 + 10) = 0;
    }

    *(v24 + 5) = a2;
    if (a3)
    {
      *(v24 + 11) = createCStringWithCFString(a3);
    }

    *(v24 + 6) = a5;
    *(v24 + 7) = a6;
    if (a7)
    {
      *(v24 + 12) = a7;
    }

    if (a8 && a9)
    {
      *(v24 + 14) = a8;
      *(v24 + 15) = a9;
    }
  }

  return v24;
}

void mmcs_free_FileChunkLists(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      v2 = 0;
      do
      {
        mmcs_free_FileChunkList(*(a1[4] + 8 * v2++));
      }

      while (v2 < a1[3]);
    }

    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }

    a1[4] = 0;
    v4 = a1[10];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

void *mmcs_create_FileChunkLists(uint64_t a1, uint64_t a2, uint64_t a3, const __CFData *a4, uint64_t a5)
{
  if (!a3)
  {
    v15 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v16 = "FileChunkLists cannot have zero length chunk count.";
      v17 = &v22;
LABEL_18:
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    }

    return 0;
  }

  if (!a5)
  {
    v15 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v16 = "FileChunkLists cannot have NULL fileChunkLists.";
      v17 = v21;
      goto LABEL_18;
    }

    return 0;
  }

  v8 = a2;
  v9 = a1;
  v10 = malloc_type_malloc(0x58uLL, 0x10F00405CAB4923uLL);
  chunkserver__file_chunk_lists__init(v10);
  v10[3] = a3;
  v10[4] = a5;
  *(v10 + 12) = 1;
  v10[7] = 65;
  if (v9 && v8)
  {
    mmcs_create_FileChunkLists_cold_1();
  }

  if (v9 == 2 && !a4)
  {
    v10[7] = 81;
    v13 = mmcs_logging_logger_default(v11, v12);
    v11 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_INFO, "Asking for Inline Put Complete Request Version 2", buf, 2u);
    }
  }

  if (v8)
  {
    v10[7] |= 2uLL;
    v14 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_INFO, "Request LAN Asset Cache Headers", v19, 2u);
    }
  }

  if (a4)
  {
    ProtobufCBinaryData_SetData(v10 + 9, a4);
    *(v10 + 16) = 1;
  }

  return v10;
}

void *mmcs_put_request_create_FileChunkLists(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v59 = mmcs_logging_logger_default(0, a2);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v60 = "PutRequest cannot be NULL.";
LABEL_55:
    _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_ERROR, v60, buf, 2u);
    return 0;
  }

  v3 = *(a1 + 304);
  if (!v3)
  {
    v59 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v60 = "PutRequest cannot have NULL putState.";
    goto LABEL_55;
  }

  if (!*(v3 + 144))
  {
    v59 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v60 = "PutRequest cannot have zero state item count.";
    goto LABEL_55;
  }

  Count = CFSetGetCount(*(v3 + 56));
  v5 = 8 * Count;
  MEMORY[0x28223BE20](Count);
  v6 = &v77 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  bzero(&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v9 = *(a1 + 304);
  if (!*(v9 + 144))
  {
    goto LABEL_51;
  }

  v10 = 0;
  v11 = 0;
  v12 = 152;
  do
  {
    v13 = v9 + v12;
    Value = CFSetGetValue(*(v9 + 56), (v9 + v12));
    if (!Value)
    {
      v59 = mmcs_logging_logger_default(0, v8);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v60 = "PutRequest putState distinct item list corrupt";
        goto LABEL_55;
      }

      return 0;
    }

    if (v13 == Value)
    {
      Value = mmcs_item_needs_put(v13);
      if (Value)
      {
        if (v10 >= Count)
        {
          v59 = mmcs_logging_logger_default(Value, v8);
          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 0;
          v60 = "PutRequest too many distinct items!";
          goto LABEL_55;
        }

        *&v6[8 * v10++] = v13;
      }
    }

    ++v11;
    v9 = *(a1 + 304);
    v12 += 416;
  }

  while (v11 < *(v9 + 144));
  if (!v10)
  {
LABEL_51:
    v59 = mmcs_logging_logger_default(Value, v8);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v60 = "PutRequest no items in the put request available";
      goto LABEL_55;
    }

    return 0;
  }

  v15 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  v16 = 0;
  v80 = v15;
  do
  {
    v17 = *&v6[8 * v16];
    if (!v17)
    {
      mmcs_put_request_create_FileChunkLists_cold_1();
    }

    if (!*(v17 + 104))
    {
      FordInfo = 0;
      goto LABEL_21;
    }

    FileOpaqueReferenceData = mmcs_item_create_FileOpaqueReferenceData(*&v6[8 * v16], v14);
    *(v17 + 208) = FileOpaqueReferenceData;
    if (!FileOpaqueReferenceData)
    {
      v72 = mmcs_logging_logger_default(0, v19);
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        *buf = 0;
        v71 = "mmcs_item_create_FileChunkList failed to create fileOpaqueMetadataReference.";
LABEL_94:
        _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, v71, buf, 2u);
      }

LABEL_79:
      v15[v16] = 0;
      v68 = mmcs_logging_logger_default(v73, v74);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v68, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
      }

      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          mmcs_free_FileChunkList(v15[i]);
        }
      }

      free(v15);
      return 0;
    }

    Length = CFDataGetLength(FileOpaqueReferenceData);
    if (!Length)
    {
      v72 = mmcs_logging_logger_default(Length, v21);
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        *buf = 0;
        v71 = "mmcs_item_create_FileChunkList cannot have 0 length fileOpaqueMetadataReference.";
        goto LABEL_94;
      }

      goto LABEL_79;
    }

    FordInfo = mmcs_create_FordInfo(Length, v21);
    if (!FordInfo)
    {
      v72 = mmcs_logging_logger_default(0, v22);
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (!v73)
      {
        goto LABEL_79;
      }

      *buf = 0;
      v71 = "mmcs_item_create_FileChunkList failed to create fordInfo.";
      goto LABEL_94;
    }

LABEL_21:
    v24 = *(v17 + 112);
    if (v24)
    {
      v25 = CFArrayGetCount(v24);
      v26 = v25;
      if (v25 >= 1)
      {
        v27 = malloc_type_malloc(8 * v25, 0x2004093837F09uLL);
        if (v27)
        {
          v29 = v27;
          v30 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 112), v30);
            ChunkingProfile = mmcs_create_ChunkingProfile(ValueAtIndex, v32);
            v29[v30] = ChunkingProfile;
            if (!ChunkingProfile)
            {
              break;
            }

            if (v26 == ++v30)
            {
              v35 = FordInfo;
              goto LABEL_30;
            }
          }

          v81 = v29;
          v64 = mmcs_logging_logger_default(0, v34);
          v73 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
          if (v73)
          {
            *buf = 0;
            _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_ERROR, "chunkProfiles[i] undefined.", buf, 2u);
          }

          v40 = 0;
          v53 = 0;
          v26 = v30;
        }

        else
        {
          v76 = mmcs_logging_logger_default(0, v28);
          v73 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
          if (v73)
          {
            *buf = 0;
            _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunkProfiles.", buf, 2u);
          }

          v40 = 0;
          v53 = 0;
          v81 = 0;
        }

        goto LABEL_65;
      }

      v35 = FordInfo;
      v29 = 0;
    }

    else
    {
      v35 = FordInfo;
      v29 = 0;
      v26 = 0;
    }

LABEL_30:
    v36 = malloc_type_malloc(8 * *(v17 + 144), 0x2004093837F09uLL);
    if (!v36)
    {
      v81 = v29;
      v70 = mmcs_logging_logger_default(0, v37);
      v73 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunks.", buf, 2u);
      }

      v40 = 0;
      v53 = 0;
      FordInfo = v35;
      v15 = v80;
LABEL_65:
      if (FordInfo)
      {
        free(FordInfo);
      }

      if (v81)
      {
        if (v26 >= 1)
        {
          v65 = v81;
          do
          {
            v66 = *v65++;
            mmcs_free_ChunkingProfile(v66);
            --v26;
          }

          while (v26);
        }

        free(v81);
      }

      if (v53)
      {
        if (v40)
        {
          v67 = v53;
          do
          {
            mmcs_free_ChunkInfo(*v67);
            if (*v67)
            {
              free(*v67);
            }

            *v67++ = 0;
            --v40;
          }

          while (v40);
        }

        free(v53);
      }

      goto LABEL_79;
    }

    v38 = v36;
    v39 = *(v17 + 144);
    if (v39)
    {
      v81 = v29;
      v78 = v35;
      v79 = v16;
      v40 = 0;
      v82 = (v17 + 64);
      v41 = 56;
      while (1)
      {
        v42 = *(*(v17 + 272) + v41);
        v43 = mmcs_item_padded_chunk_length(v17, *(v42 + 4));
        if (*(v17 + 104))
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          v45 = *(v42 + 16);
          v44 = v82;
        }

        ChunkInfo = mmcs_create_ChunkInfo(v43, *(v42 + 8), v45, v44);
        *(v38 + 8 * v40) = ChunkInfo;
        if (!ChunkInfo)
        {
          break;
        }

        ++v40;
        v41 += 104;
        if (v39 == v40)
        {
          v48 = *(v17 + 144);
          v35 = v78;
          v16 = v79;
          v29 = v81;
          goto LABEL_40;
        }
      }

      v61 = mmcs_logging_logger_default(0, v47);
      v73 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
      v16 = v79;
      v62 = v80;
      v63 = v78;
      if (v73)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_ERROR, "chunks[i] undefined.", buf, 2u);
      }

      v53 = v38;
      FordInfo = v63;
      v15 = v62;
      goto LABEL_65;
    }

    v48 = 0;
LABEL_40:
    v49 = *v17;
    v50 = *(v17 + 8);
    v51 = *(v17 + 200);
    v52 = v17 + 64;
    v53 = v38;
    FileChunkList = mmcs_create_FileChunkList(v49, v50, v51, v52, v48, v38, v35, v26, v29);
    if (!FileChunkList)
    {
      FordInfo = v35;
      v81 = v29;
      v75 = mmcs_logging_logger_default(0, v14);
      v73 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      v15 = v80;
      if (v73)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v75, OS_LOG_TYPE_ERROR, "mmcs_register_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
      }

      v40 = v39;
      goto LABEL_65;
    }

    v15 = v80;
    v80[v16++] = FileChunkList;
  }

  while (v16 != v10);
  v55 = *(a1 + 68);
  v56 = *(a1 + 72);
  v57 = *(*(a1 + 304) + 120);

  return mmcs_create_FileChunkLists(v55, v56, v10, v57, v15);
}

CFDataRef mmcs_put_request_create_AuthorizePutRequestBody(uint64_t a1, uint64_t a2)
{
  FileChunkLists = mmcs_put_request_create_FileChunkLists(a1, a2);

  return mmcs_create_AuthorizePutRequestBody(FileChunkLists, v3);
}

CFDataRef mmcs_create_AuthorizePutRequestBody(void **a1, uint64_t a2)
{
  if (a1)
  {
    packed_size = chunkserver__file_chunk_lists__get_packed_size(a1, a2);
    if (packed_size)
    {
      v5 = packed_size;
      v6 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
      if (v6)
      {
        v8 = v6;
        v9 = chunkserver__file_chunk_lists__pack(a1, v6);
        if (v5 == v9)
        {
          v12 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v8, v5, *MEMORY[0x277CBECF0]);
          if (v12)
          {
LABEL_21:
            mmcs_free_FileChunkLists(a1);
            return v12;
          }

          v13 = mmcs_logging_logger_default(0, v11);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          v21 = 0;
          v14 = "AuthorizePutRequestBody failed to allocate CFData wrapping body buffer";
          v15 = &v21;
        }

        else
        {
          v13 = mmcs_logging_logger_default(v9, v10);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_19:
            free(v8);
            goto LABEL_20;
          }

          *v22 = 0;
          v14 = "AuthorizePutRequestBody failed to create request body of expected size";
          v15 = v22;
        }

        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
        goto LABEL_19;
      }

      v17 = mmcs_logging_logger_default(0, v7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        v18 = "AuthorizePutRequestBody failed to allocate request body buffer";
        v19 = v23;
        goto LABEL_15;
      }
    }

    else
    {
      v17 = mmcs_logging_logger_default(0, v4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = 0;
        v18 = "AuthorizePutRequestBody invalid request size";
        v19 = &v24;
LABEL_15:
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
      }
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v16 = mmcs_logging_logger_default(0, a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "AuthorizePutRequestBody cannot have NULL fileChunkLists.", buf, 2u);
  }

  return 0;
}

CFDataRef mmcs_register_request_create_AuthorizePutRequestBody(uint64_t a1, uint64_t a2)
{
  FileChunkLists = mmcs_register_request_create_FileChunkLists(a1, a2);

  return mmcs_create_AuthorizePutRequestBody(FileChunkLists, v3);
}

void *mmcs_register_request_create_FileChunkLists(uint64_t a1, uint64_t a2)
{
  v112 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v29 = mmcs_logging_logger_default(0, a2);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest cannot be NULL.";
    goto LABEL_39;
  }

  v3 = *(a1 + 304);
  if (!v3)
  {
    v29 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest cannot have NULL registerState.";
    goto LABEL_39;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    v29 = mmcs_logging_logger_default(0, a2);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest cannot have NULL registerItems.";
    goto LABEL_39;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    v29 = mmcs_logging_logger_default(Count, v6);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest cannot have zero registerItems.";
    goto LABEL_39;
  }

  v7 = CFArrayGetCount(*(*(a1 + 304) + 8));
  if (v7 < 1)
  {
    goto LABEL_35;
  }

  v10 = 0;
  v11 = 0;
  *&v9 = 138412290;
  v106 = v9;
  do
  {
    v12 = *(CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v11) + 16);
    if (v12)
    {
      v13 = mmcs_cferror_copy_description(v12);
      v15 = mmcs_logging_logger_default(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v106;
        v109 = v13;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "RegisterItem exited registration with error: %@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      ++v10;
    }

    ++v11;
    v7 = CFArrayGetCount(*(*(a1 + 304) + 8));
  }

  while (v11 < v7);
  if (!v10)
  {
LABEL_35:
    v29 = mmcs_logging_logger_default(v7, v8);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest had no items available after registration.";
    goto LABEL_39;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &registerItemSignatureEqualitySetCallbacks);
  if (CFArrayGetCount(*(*(a1 + 304) + 8)) >= 1)
  {
    v17 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v17);
      if (!ValueAtIndex[16])
      {
        v19 = ValueAtIndex;
        if (!CFSetContainsValue(Mutable, ValueAtIndex))
        {
          CFSetAddValue(Mutable, v19);
        }
      }

      ++v17;
    }

    while (v17 < CFArrayGetCount(*(*(a1 + 304) + 8)));
  }

  v20 = CFSetGetCount(Mutable);
  v21 = 8 * v20;
  MEMORY[0x28223BE20]();
  v22 = &v100 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v23 = CFArrayGetCount(*(*(a1 + 304) + 8));
  if (v23 < 1)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v25);
      if (!v27[16])
      {
        v28 = v27;
        if (CFSetContainsValue(Mutable, v27))
        {
          if (v26 >= v20)
          {
            mmcs_register_request_create_FileChunkLists_cold_1();
          }

          *&v22[8 * v26] = v28;
          CFSetRemoveValue(Mutable, v28);
          ++v26;
        }
      }

      ++v25;
      v23 = CFArrayGetCount(*(*(a1 + 304) + 8));
    }

    while (v25 < v23);
  }

  if (v26 != v20)
  {
    mmcs_register_request_create_FileChunkLists_cold_2();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v20)
  {
    v29 = mmcs_logging_logger_default(v23, v24);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v30 = "RegisterRequest no items in the put request available";
LABEL_39:
    _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    return 0;
  }

  FileChunkList = malloc_type_malloc(v21, 0x2004093837F09uLL);
  v34 = FileChunkList;
  if (v20 < 1)
  {
    return mmcs_create_FileChunkLists(*(a1 + 68), *(a1 + 72), v20, *(*(a1 + 304) + 56), v34);
  }

  v35 = 0;
  v103 = FileChunkList;
  v101 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v36 = *&v22[8 * v35];
    if (!v36)
    {
      mmcs_register_request_create_FileChunkLists_cold_3();
    }

    valuePtr = 0;
    if (!*(v36 + 80))
    {
      v95 = mmcs_logging_logger_default(FileChunkList, v33);
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
      if (!v96)
      {
        goto LABEL_110;
      }

      *buf = 0;
      v88 = "RegisterItem cannot have NULL chunks.";
      goto LABEL_133;
    }

    if (*(v36 + 64))
    {
      FileOpaqueReferenceData = mmcs_register_item_create_FileOpaqueReferenceData(v36, v33);
      if (!FileOpaqueReferenceData)
      {
        v95 = mmcs_logging_logger_default(0, v38);
        v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
        if (!v96)
        {
          goto LABEL_110;
        }

        *buf = 0;
        v88 = "mmcs_register_item_create_FileChunkList failed to create fileOpaqueMetadataReference.";
        goto LABEL_133;
      }

      v39 = FileOpaqueReferenceData;
      Length = CFDataGetLength(FileOpaqueReferenceData);
      CFRelease(v39);
      if (!Length)
      {
        v95 = mmcs_logging_logger_default(v41, v42);
        v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
        if (!v96)
        {
          goto LABEL_110;
        }

        *buf = 0;
        v88 = "mmcs_register_item_create_FileChunkList cannot have 0 length fileOpaqueMetadataReference.";
        goto LABEL_133;
      }

      FordInfo = mmcs_create_FordInfo(Length, v42);
      if (!FordInfo)
      {
        v95 = mmcs_logging_logger_default(0, v43);
        v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
        if (!v96)
        {
          goto LABEL_110;
        }

        *buf = 0;
        v88 = "mmcs_register_item_create_FileChunkList failed to create fordInfo";
LABEL_133:
        _os_log_impl(&dword_2577D8000, v95, OS_LOG_TYPE_ERROR, v88, buf, 2u);
        goto LABEL_110;
      }
    }

    else
    {
      FordInfo = 0;
    }

    v45 = *(v36 + 72);
    if (!v45)
    {
      v50 = 0;
      v47 = 0;
      goto LABEL_65;
    }

    v46 = CFArrayGetCount(v45);
    v47 = v46;
    if (v46 >= 1)
    {
      break;
    }

    v50 = 0;
LABEL_65:
    Value = CFNumberGetValue(*(v36 + 120), kCFNumberSInt64Type, &valuePtr);
    *&v106 = v50;
    if (!Value)
    {
      v89 = mmcs_logging_logger_default(Value, v57);
      v96 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        *buf = 0;
        v90 = "RegisterItem cannot parse registerItem->chunkCount value.";
        v91 = v89;
        v92 = 2;
        goto LABEL_122;
      }

LABEL_123:
      v61 = 0;
      goto LABEL_96;
    }

    if (!valuePtr)
    {
      v93 = mmcs_logging_logger_default(Value, v57);
      v96 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        *buf = 134217984;
        v109 = valuePtr;
        v90 = "RegisterItem cannot registerItem->chunkCount has invalid value %llu.";
        v91 = v93;
        v92 = 12;
LABEL_122:
        _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_ERROR, v90, buf, v92);
      }

      goto LABEL_123;
    }

    v104 = v35;
    v58 = *CFDataGetBytePtr(*(v36 + 96));
    v59 = malloc_type_malloc(8 * valuePtr, 0x2004093837F09uLL);
    if (!v59)
    {
      v94 = mmcs_logging_logger_default(0, v60);
      v96 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v94, OS_LOG_TYPE_ERROR, "RegisterItem failed to allocate request chunk list.", buf, 2u);
      }

      v61 = 0;
      v34 = v103;
      v35 = v104;
      goto LABEL_96;
    }

    v61 = v59;
    v102 = FordInfo;
    if (valuePtr)
    {
      v62 = 0;
      v63 = *(v36 + 80);
      v105 = (v36 + 24);
      while (1)
      {
        if (!v63)
        {
          v76 = mmcs_logging_logger_default(v59, v60);
          ChunkInfo = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
          if (!ChunkInfo)
          {
            goto LABEL_92;
          }

          *buf = 134218240;
          v109 = v62 + 1;
          v110 = 2048;
          v111 = valuePtr;
          v77 = "RegisterItem chunk %llu of %llu not returned.";
          v78 = v76;
          v79 = 22;
          goto LABEL_91;
        }

        v64 = CKRegisteredChunkKey();
        if (v58 >= 0 != (v64 != 0))
        {
          break;
        }

        v66 = CKRegisteredChunkLength();
        v67 = mmcs_register_item_padded_chunk_length(v36, v66);
        v68 = CKRegisteredChunkSignature();
        if (*(v36 + 64))
        {
          v69 = 0;
          v70 = 0;
        }

        else
        {
          v70 = CKRegisteredChunkKey();
          if (*(v36 + 64))
          {
            v69 = 0;
          }

          else
          {
            v69 = v105;
          }
        }

        ChunkInfo = mmcs_create_ChunkInfo(v67, v68, v70, v69);
        v61[v62] = ChunkInfo;
        if (!ChunkInfo)
        {
          goto LABEL_93;
        }

        v59 = CKRegisteredChunkSize();
        v63 += v59;
        if (++v62 >= valuePtr)
        {
          goto LABEL_79;
        }
      }

      v80 = mmcs_logging_logger_default(v64, v65);
      ChunkInfo = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
      if (!ChunkInfo)
      {
        goto LABEL_92;
      }

      *buf = 0;
      v77 = "RegisterItem inconsistent Encryption between File and Chunks.";
      v78 = v80;
      v79 = 2;
LABEL_91:
      _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_ERROR, v77, buf, v79);
LABEL_92:
      v61[v62] = 0;
LABEL_93:
      v81 = mmcs_logging_logger_default(ChunkInfo, v72);
      v96 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v81, OS_LOG_TYPE_ERROR, "chunkList[i] undefined.", buf, 2u);
      }

      valuePtr = v62;
      v34 = v103;
      v35 = v104;
      FordInfo = v102;
      goto LABEL_96;
    }

LABEL_79:
    BytePtr = CFDataGetBytePtr(*(v36 + 96));
    FordInfo = v102;
    FileChunkList = mmcs_create_FileChunkList(BytePtr, 0, 0, v36 + 24, valuePtr, v61, v102, v47, v106);
    if (!FileChunkList)
    {
      v99 = mmcs_logging_logger_default(0, v33);
      v96 = os_log_type_enabled(v99, OS_LOG_TYPE_ERROR);
      v34 = v103;
      v35 = v104;
      if (v96)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v99, OS_LOG_TYPE_ERROR, "mmcs_register_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
      }

      goto LABEL_96;
    }

    v34 = v103;
    v74 = v104;
    v103[v104] = FileChunkList;
    v35 = v74 + 1;
    v22 = v101;
    if (v35 == v20)
    {
      return mmcs_create_FileChunkLists(*(a1 + 68), *(a1 + 72), v20, *(*(a1 + 304) + 56), v34);
    }
  }

  v48 = malloc_type_malloc(8 * v46, 0x2004093837F09uLL);
  if (v48)
  {
    v50 = v48;
    v51 = 0;
    while (1)
    {
      v52 = CFArrayGetValueAtIndex(*(v36 + 72), v51);
      ChunkingProfile = mmcs_create_ChunkingProfile(v52, v53);
      v50[v51] = ChunkingProfile;
      if (!ChunkingProfile)
      {
        break;
      }

      if (v47 == ++v51)
      {
        goto LABEL_65;
      }
    }

    *&v106 = v50;
    v75 = mmcs_logging_logger_default(0, v55);
    v96 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
    if (v96)
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v75, OS_LOG_TYPE_ERROR, "chunkProfiles[i] undefined.", buf, 2u);
    }

    v61 = 0;
    v47 = v51;
  }

  else
  {
    v98 = mmcs_logging_logger_default(0, v49);
    v96 = os_log_type_enabled(v98, OS_LOG_TYPE_ERROR);
    if (v96)
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunkProfiles.", buf, 2u);
    }

    v61 = 0;
    *&v106 = 0;
  }

LABEL_96:
  if (FordInfo)
  {
    free(FordInfo);
  }

  if (v106)
  {
    if (v47 >= 1)
    {
      v82 = v106;
      do
      {
        v83 = *v82++;
        mmcs_free_ChunkingProfile(v83);
        --v47;
      }

      while (v47);
    }

    free(v106);
  }

  if (v61)
  {
    if (valuePtr)
    {
      for (i = 0; i < valuePtr; ++i)
      {
        mmcs_free_ChunkInfo(v61[i]);
        v85 = v61[i];
        if (v85)
        {
          free(v85);
        }

        v61[i] = 0;
      }
    }

    free(v61);
  }

LABEL_110:
  v34[v35] = 0;
  v86 = mmcs_logging_logger_default(v96, v97);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v86, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
  }

  if (v35)
  {
    for (j = 0; j != v35; ++j)
    {
      mmcs_free_FileChunkList(v34[j]);
    }
  }

  free(v34);
  return 0;
}

CFDataRef mmcs_update_request_create_AuthorizePutRequestBody(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v27 = mmcs_logging_logger_default(0, a2);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v29 = "updateRequest cannot be NULL.";
LABEL_39:
    _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    goto LABEL_40;
  }

  v3 = *(a1 + 304);
  if (!v3)
  {
    v27 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v29 = "updateRequest cannot have NULL updateState.";
    goto LABEL_39;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    v27 = mmcs_logging_logger_default(0, a2);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v29 = "updateRequest cannot have NULL updateItems.";
    goto LABEL_39;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    v27 = mmcs_logging_logger_default(Count, v6);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v29 = "updateRequest cannot have zero updateItems.";
    goto LABEL_39;
  }

  v7 = CFArrayGetCount(*(*(a1 + 304) + 16));
  if (v7 < 1)
  {
    goto LABEL_35;
  }

  v9 = 0;
  for (i = 0; i < v7; ++i)
  {
    v11 = *(CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), i) + 5);
    if (v11)
    {
      v12 = mmcs_cferror_copy_description(v11);
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v70 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "updateItem exited registration with error: %@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      ++v9;
    }

    v7 = CFArrayGetCount(*(*(a1 + 304) + 16));
  }

  if (!v9)
  {
LABEL_35:
    v27 = mmcs_logging_logger_default(v7, v8);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v29 = "updateRequest had no items available after registration.";
    goto LABEL_39;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &_update_items_wrap_set_callbacks);
  if (CFArrayGetCount(*(*(a1 + 304) + 16)) >= 1)
  {
    v16 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), v16);
      if (!ValueAtIndex[5])
      {
        v18 = ValueAtIndex;
        if (!CFSetContainsValue(Mutable, ValueAtIndex))
        {
          CFSetAddValue(Mutable, v18);
        }
      }

      ++v16;
    }

    while (v16 < CFArrayGetCount(*(*(a1 + 304) + 16)));
  }

  v19 = CFSetGetCount(Mutable);
  v20 = malloc_type_calloc(v19, 8uLL, 0x80040B8603338uLL);
  v21 = CFArrayGetCount(*(*(a1 + 304) + 16));
  if (v21 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), v23);
      if (!v25[5])
      {
        v26 = v25;
        if (CFSetContainsValue(Mutable, v25))
        {
          if (v24 >= v19)
          {
            mmcs_update_request_create_AuthorizePutRequestBody_cold_1();
          }

          v20[v24] = v26;
          CFSetRemoveValue(Mutable, v26);
          ++v24;
        }
      }

      ++v23;
      v21 = CFArrayGetCount(*(*(a1 + 304) + 16));
    }

    while (v23 < v21);
  }

  if (v24 != v19)
  {
    mmcs_update_request_create_AuthorizePutRequestBody_cold_2();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v19)
  {
    v57 = mmcs_logging_logger_default(v21, v22);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_ERROR, "updateRequest no items in the put request available", buf, 2u);
    }

    goto LABEL_88;
  }

  v32 = malloc_type_malloc(8 * v19, 0x2004093837F09uLL);
  v34 = v32;
  if (v19 < 1)
  {
LABEL_60:
    free(v20);
    FileChunkLists = mmcs_create_FileChunkLists(0, 0, v19, *(*(a1 + 304) + 88), v34);
    return mmcs_create_AuthorizePutRequestBody(FileChunkLists, v28);
  }

  v35 = 0;
  v67 = v32;
  v68 = v20;
  v66 = v19;
  while (1)
  {
    v36 = v20[v35];
    if (!v36)
    {
      mmcs_update_request_create_AuthorizePutRequestBody_cold_3();
    }

    v37 = v36[12];
    if (!v37)
    {
      v58 = mmcs_logging_logger_default(0, v33);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (!v59)
      {
        goto LABEL_82;
      }

      *buf = 0;
      v61 = "updateItem cannot have NULL chunkSignatures.";
LABEL_73:
      _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_ERROR, v61, buf, 2u);
      goto LABEL_82;
    }

    if (!v36[13])
    {
      v58 = mmcs_logging_logger_default(v37, v33);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (!v59)
      {
        goto LABEL_82;
      }

      *buf = 0;
      v61 = "updateItem cannot have NULL chunkKeys.";
      goto LABEL_73;
    }

    if (!CFArrayGetCount(v37))
    {
      v58 = mmcs_logging_logger_default(0, v38);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (!v59)
      {
        goto LABEL_82;
      }

      *buf = 0;
      v61 = "updateItem cannot have 0 chunkSignatures.";
      goto LABEL_73;
    }

    v39 = CFArrayGetCount(v36[12]);
    v40 = CFArrayGetCount(v36[13]);
    if (v39 != v40)
    {
      v58 = mmcs_logging_logger_default(v40, v41);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (!v59)
      {
        goto LABEL_82;
      }

      *buf = 0;
      v61 = "updateItem cannot have a different number of signatures and keys.";
      goto LABEL_73;
    }

    v42 = CFArrayGetCount(v36[12]);
    v43 = malloc_type_malloc(8 * v42, 0x2004093837F09uLL);
    if (!v43)
    {
      v58 = mmcs_logging_logger_default(0, v44);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (!v59)
      {
        goto LABEL_82;
      }

      *buf = 0;
      v61 = "updateItem failed to allocate request chunk list.";
      goto LABEL_73;
    }

    v45 = v43;
    v46 = CFArrayGetCount(v36[12]);
    if (v46 >= 1)
    {
      v47 = v46;
      for (j = 0; j != v47; ++j)
      {
        v49 = CFArrayGetValueAtIndex(v36[12], j);
        v50 = CFArrayGetValueAtIndex(v36[13], j);
        v51 = CFArrayGetValueAtIndex(v36[14], j);
        *buf = 0;
        CFNumberGetValue(v51, kCFNumberSInt32Type, buf);
        v52 = *buf;
        BytePtr = CFDataGetBytePtr(v49);
        v54 = CFDataGetBytePtr(v50);
        v45[j] = mmcs_create_ChunkInfo(v52, BytePtr, v54, (v36 + 10));
      }
    }

    v55 = CFDataGetBytePtr(v36[2]);
    FileChunkList = mmcs_create_FileChunkList(v55, 0, 0, (v36 + 10), v42, v45, 0, 0, 0);
    if (!FileChunkList)
    {
      break;
    }

    v19 = v66;
    v34 = v67;
    v67[v35++] = FileChunkList;
    v20 = v68;
    if (v35 == v66)
    {
      goto LABEL_60;
    }
  }

  v62 = mmcs_logging_logger_default(0, v33);
  v34 = v67;
  v20 = v68;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, "mmcs_update_item_create_FileChunkList failed to create fileReferenceData", buf, 2u);
  }

  if (v42)
  {
    v63 = v45;
    do
    {
      mmcs_free_ChunkInfo(*v63);
      if (*v63)
      {
        free(*v63);
      }

      *v63++ = 0;
      --v42;
    }

    while (v42);
  }

  free(v45);
LABEL_82:
  v34[v35] = 0;
  v64 = mmcs_logging_logger_default(v59, v60);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
  }

  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      mmcs_free_FileChunkList(v34[k]);
    }
  }

  free(v34);
LABEL_88:
  free(v20);
LABEL_40:
  FileChunkLists = 0;
  return mmcs_create_AuthorizePutRequestBody(FileChunkLists, v28);
}

CFDataRef mmcs_create_put_complete_at_edge_payload_trailer(const __CFData *a1, const __CFData *a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10700407A2CD8F7uLL);
  v6 = v4;
  if (!v4)
  {
    v22 = mmcs_logging_logger_default(0, v5);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v30 = 0;
    v23 = "mmcs_create_put_complete_at_edge_payload_trailer failed to create protobuf object.";
    v24 = &v30;
LABEL_17:
    _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_ERROR, v23, v24, 2u);
    goto LABEL_22;
  }

  chunkserver__put_complete_at_edge_payload_trailer__init(v4);
  ProtobufCBinaryData_SetData(v6 + 3, a1);
  if (a2)
  {
    *(v6 + 10) = 1;
    ProtobufCBinaryData_SetData(v6 + 6, a2);
  }

  packed_size = chunkserver__put_complete_at_edge_payload_trailer__get_packed_size(v6, v7);
  if (!packed_size)
  {
    v22 = mmcs_logging_logger_default(0, v9);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v29 = 0;
    v23 = "mmcs_create_put_complete_at_edge_payload_trailer invalid request size";
    v24 = &v29;
    goto LABEL_17;
  }

  v10 = packed_size;
  v11 = packed_size + 4;
  if (packed_size + 4 <= 0)
  {
    mmcs_create_put_complete_at_edge_payload_trailer_cold_1();
  }

  v12 = malloc_type_malloc(packed_size + 4, 0x100004077774924uLL);
  if (!v12)
  {
    v22 = mmcs_logging_logger_default(0, v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "mmcs_create_put_complete_at_edge_payload_trailer failed to allocate request body buffer";
      v24 = buf;
      goto LABEL_17;
    }

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v14 = v12;
  *v12 = bswap32(v10);
  v15 = chunkserver__put_complete_at_edge_payload_trailer__pack(v6, (v12 + 1));
  if (v10 != v15)
  {
    v19 = mmcs_logging_logger_default(v15, v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      v20 = "mmcs_create_put_complete_at_edge_payload_trailer failed to create request body of expected size";
      v21 = v27;
      goto LABEL_20;
    }

LABEL_21:
    free(v14);
    goto LABEL_22;
  }

  v18 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v14, v11, *MEMORY[0x277CBECF0]);
  if (!v18)
  {
    v19 = mmcs_logging_logger_default(0, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = 0;
      v20 = "mmcs_create_put_complete_at_edge_payload_trailer failed to allocate CFData wrapping body buffer";
      v21 = &v26;
LABEL_20:
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_23:
  chunkserver__put_complete_at_edge_payload_trailer__free_unpacked(v6, 0);
  return v18;
}

CFDataRef AuthorizeGetBodyCreate(void *Value, uint64_t a2)
{
  v2 = Value[38];
  v3 = 80;
  if (!a2)
  {
    v3 = 88;
  }

  if (*(v2 + 168))
  {
    v4 = a2;
    v5 = Value;
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + v3);
    v9 = 176;
    do
    {
      v10 = (v2 + v9);
      Value = CFSetGetValue(v8, (v2 + v9));
      if (v10 == Value)
      {
        if (v4 || (Value = mmcs_item_needs_auth_get_chunks(v10), Value))
        {
          ++v6;
        }
      }

      ++v7;
      v2 = v5[38];
      v9 += 416;
    }

    while (v7 < *(v2 + 168));
    if (v6 >= 1)
    {
      Value = malloc_type_malloc(0x38uLL, 0x10E004083CC9259uLL);
      if (Value)
      {
        v11 = Value;
        chunkserver__file_checksum_authorization_list__init(Value);
        v11[3] = 0;
        v11[4] = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
        v13 = v5[38];
        if (*(v13 + 168))
        {
          v14 = 0;
          allocator = *MEMORY[0x277CBECE8];
          do
          {
            v15 = (v13 + 416 * v14 + 176);
            if (v15 == CFSetGetValue(v8, v15))
            {
              if (v4)
              {
                MutableCopy = 0;
              }

              else
              {
                if (!mmcs_item_needs_auth_get_chunks(v15))
                {
                  goto LABEL_35;
                }

                MutableCopy = CFSetCreateMutableCopy(allocator, 0, v15[36]);
                v23 = CFDictionaryGetValue(*(v5[38] + 64), v15);
                if (CFArrayGetCount(v23) >= 1)
                {
                  v24 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
                    if (v15 != ValueAtIndex)
                    {
                      v26 = ValueAtIndex;
                      if (mmcs_item_needs_auth_get_chunks(ValueAtIndex))
                      {
                        XCFSetAddValuesFromSet(MutableCopy, v26[36]);
                      }
                    }

                    ++v24;
                  }

                  while (v24 < CFArrayGetCount(v23));
                }
              }

              v17 = v15[6];
              v18 = *v15;
              v19 = v15[1];
              v20 = malloc_type_malloc(0x60uLL, 0x1070040B2EF5D3EuLL);
              if (!v20)
              {
                Value = chunkserver__file_checksum_authorization_list__free_unpacked(v11, 0);
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                goto LABEL_59;
              }

              v21 = v20;
              chunkserver__file_checksum_authorization__init(v20);
              *(v21 + 3) = CKFileSchemeAndSignatureSize();
              *(v21 + 4) = mmcs_file_signature_copy(v18);
              if (v17)
              {
                *(v21 + 16) = 1;
                ProtobufCBinaryData_SetData(v21 + 9, v17);
              }

              if (v19)
              {
                v22 = strdup(v19);
              }

              else
              {
                v22 = 0;
              }

              *(v21 + 5) = v22;
              if (!v4)
              {
                Count = CFSetGetCount(MutableCopy);
                *(v21 + 6) = Count;
                *(v21 + 7) = malloc_type_calloc(1uLL, 16 * Count, 0x1010040466105CCuLL);
                context[0] = v21;
                context[1] = 0;
                CFSetApplyFunction(MutableCopy, add_checksum_applier, context);
              }

              v29 = v11[3];
              v28 = v11[4];
              v11[3] = v29 + 1;
              v28[v29] = v21;
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }
            }

LABEL_35:
            ++v14;
            v13 = v5[38];
          }

          while (v14 < *(v13 + 168));
        }

        if (*(v5 + 72))
        {
          *(v11 + 10) = 1;
          v11[6] = (v11[6] | 2);
          v13 = v5[38];
        }

        if (*(v13 + 152))
        {
          *(v11 + 10) = 1;
          v11[6] = (v11[6] | 0x10);
        }

        packed_size = chunkserver__file_checksum_authorization_list__get_packed_size(v11, v12);
        if (packed_size)
        {
          v32 = packed_size;
          v33 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
          if (v33)
          {
            v35 = v33;
            v36 = chunkserver__file_checksum_authorization_list__pack(v11, v33);
            if (v32 == v36)
            {
              v39 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v35, v32, *MEMORY[0x277CBECF0]);
              if (v39)
              {
LABEL_56:
                chunkserver__file_checksum_authorization_list__free_unpacked(v11, 0);
                return v39;
              }

              v40 = mmcs_logging_logger_default(0, v38);
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_54;
              }

              LOWORD(context[0]) = 0;
              v41 = "AuthorizeGetBodyCreate failed to allocate CFData wrapping body buffer";
            }

            else
            {
              v40 = mmcs_logging_logger_default(v36, v37);
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
LABEL_54:
                free(v35);
                goto LABEL_55;
              }

              LOWORD(context[0]) = 0;
              v41 = "AuthorizeGetBodyCreate failed to create request body of expected size";
            }

            _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, v41, context, 2u);
            goto LABEL_54;
          }

          v42 = mmcs_logging_logger_default(0, v34);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            LOWORD(context[0]) = 0;
            v43 = "AuthorizeGetBodyCreate failed to allocate request body buffer";
            goto LABEL_50;
          }
        }

        else
        {
          v42 = mmcs_logging_logger_default(0, v31);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            LOWORD(context[0]) = 0;
            v43 = "AuthorizeGetBodyCreate invalid request size";
LABEL_50:
            _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, v43, context, 2u);
          }
        }

LABEL_55:
        v39 = 0;
        goto LABEL_56;
      }
    }
  }

LABEL_59:
  v44 = mmcs_logging_logger_default(Value, a2);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    LOWORD(context[0]) = 0;
    _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "AuthorizeGetBodyCreate cannot have NULL fileCheksumAuthList.", context, 2u);
  }

  return 0;
}

__CFHTTPMessage *mmcs_get_proto_version(uint64_t a1)
{
  result = mmcs_http_context_copy_header_field_value(a1, @"x-apple-mmcs-proto-version");
  if (result)
  {
    v2 = result;
    v3 = mmcs_server_version_make_from_CFString(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

__CFHTTPMessage *mmcs_create_http_clock_skew_metrics_with_http_context(uint64_t a1)
{
  result = mmcs_http_context_copy_header_field_value(a1, @"Date");
  if (result)
  {
    v3 = result;
    v4 = mmcs_time_convert_date_header_to_cfabsolutetime(result);
    CFRelease(v3);
    if (v4 == 0.0)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v5 = mmcs_http_context_response_received_time(a1);
      if (mmcs_http_clock_skew_metrics_create(&v6, v4, v5))
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t chunkserver__file_success__parse_and_validate(uint64_t a1, CFDataRef *a2, CFDataRef *a3, CFStringRef *a4, CFNumberRef *a5, CFErrorRef *a6)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (mmcs_file_signature_is_valid_n(*(a1 + 32), *(a1 + 24)))
  {
    v17 = *MEMORY[0x277CBECE8];
    v18 = CFDataCreate(*MEMORY[0x277CBECE8], *(a1 + 32), *(a1 + 24));
    if (v18)
    {
      v19 = v18;
      if (*(a1 + 56))
      {
        v20 = CFDataCreate(v17, *(a1 + 72), *(a1 + 64));
        if (!v20)
        {
          v21 = @"Invalid signature";
          goto LABEL_26;
        }
      }

      else
      {
        v20 = 0;
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        v26 = strlen(*(a1 + 48));
        if (v26)
        {
          v27 = CFStringCreateWithBytes(v17, v25, v26, 0x8000100u, 0);
          if (v27)
          {
            v28 = v27;
            if (*(a1 + 80))
            {
              v29 = CFNumberCreate(v17, kCFNumberSInt64Type, (a1 + 88));
            }

            else
            {
              v29 = 0;
            }

            if ((*(a1 + 40) - 3) < 3)
            {
              if (a2)
              {
                CFRetain(v19);
                *a2 = v19;
              }

              if (a3 && v20)
              {
                CFRetain(v20);
                *a3 = v20;
              }

              if (a4)
              {
                CFRetain(v28);
                *a4 = v28;
              }

              v23 = 0;
              v24 = 1;
              if (a5 && v29)
              {
                CFRetain(v29);
                v23 = 0;
                *a5 = v29;
              }

              goto LABEL_30;
            }

            v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid succes code %d when put receipt is present", v12, v13, v14, v15, v16, *(a1 + 40));
LABEL_27:
            v24 = 0;
            if (a6 && v23)
            {
              CFRetain(v23);
              v24 = 0;
              *a6 = v23;
            }

LABEL_30:
            CFRelease(v19);
            if (v20)
            {
              CFRelease(v20);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            goto LABEL_36;
          }
        }
      }

      v21 = @"Invalid return receipt";
LABEL_26:
      v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v21, v12, v13, v14, v15, v16);
      v28 = 0;
      v29 = 0;
      goto LABEL_27;
    }
  }

  v22 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid signature", v12, v13, v14, v15, v16);
  v23 = v22;
  v24 = 0;
  if (a6 && v22)
  {
    CFRetain(v22);
    v24 = 0;
    *a6 = v23;
LABEL_37:
    CFRelease(v23);
    return v24;
  }

LABEL_36:
  if (v23)
  {
    goto LABEL_37;
  }

  return v24;
}

uint64_t chunkserver__file_error__parse_and_validate(uint64_t a1, CFDataRef *a2, CFDataRef *a3, CFErrorRef *a4, CFErrorRef *a5, CFIndex a6, CFStringRef format, ...)
{
  va_start(va, format);
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (mmcs_file_signature_is_valid_n(*(a1 + 32), *(a1 + 24)))
  {
    v20 = CFDataCreate(v13, *(a1 + 32), *(a1 + 24));
    if (v20)
    {
      v21 = v20;
      if (*(a1 + 48))
      {
        v24 = CFDataCreate(v13, *(a1 + 64), *(a1 + 56));
        if (!v24)
        {
          v25 = @"Invalid signature";
          v26 = 6;
LABEL_25:
          v27 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v26, v25, v22, v23, v17, v18, v19);
          v28 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 0;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, a6, *(a1 + 40), @"%@", v17, v18, v19, v14, va);
      if (error_with_error_response_and_format)
      {
        v30 = error_with_error_response_and_format;
        if (a2)
        {
          CFRetain(v21);
          *a2 = v21;
        }

        if (a3 && v24)
        {
          CFRetain(v24);
          *a3 = v24;
        }

        if (a4)
        {
          CFRetain(v30);
          v27 = 0;
          v28 = 0;
          *a4 = v30;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        v31 = 1;
        if (v14)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v25 = @"Unable to create CFError from Chunkserver__FileError";
      v26 = 37;
      goto LABEL_25;
    }
  }

  v27 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid signature", v15, v16, v17, v18, v19);
  v21 = 0;
  v24 = 0;
  v28 = 1;
LABEL_26:
  v31 = 0;
  v30 = 0;
  if (a5 && v27)
  {
    CFRetain(v27);
    v30 = 0;
    v31 = 0;
    *a5 = v27;
  }

  if (v14)
  {
LABEL_30:
    CFRelease(v14);
  }

LABEL_31:
  if ((v28 & 1) == 0)
  {
    CFRelease(v21);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v31;
}

CFErrorRef create_cferror_with_error_response(__CFError *a1)
{
  error_with_underlying_errors = a1;
  if (a1)
  {
    v2 = *MEMORY[0x277CBECE8];
    if (*(a1 + 6))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (*(error_with_underlying_errors + 6))
      {
        v4 = 0;
        do
        {
          cferror_with_error_response = create_cferror_with_error_response(*(*(error_with_underlying_errors + 7) + 8 * v4));
          if (cferror_with_error_response)
          {
            v6 = cferror_with_error_response;
            CFArrayAppendValue(Mutable, cferror_with_error_response);
            CFRelease(v6);
          }

          ++v4;
        }

        while (v4 < *(error_with_underlying_errors + 6));
      }
    }

    else
    {
      Mutable = 0;
    }

    if (*(error_with_underlying_errors + 8))
    {
      v7 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(error_with_underlying_errors + 8))
      {
        for (i = 0; i < *(error_with_underlying_errors + 8); ++i)
        {
          v9 = *(*(error_with_underlying_errors + 9) + 8 * i);
          if (v9)
          {
            v10 = strlen(*(v9 + 24));
            v11 = CFStringCreateWithBytes(v2, *(v9 + 24), v10, 0x8000100u, 0);
            v12 = *(v9 + 32);
            v13 = strlen(v12);
            v14 = CFStringCreateWithBytes(v2, v12, v13, 0x8000100u, 0);
            v15 = v14;
            if (v11)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              CFDictionarySetValue(v7, v11, v14);
LABEL_24:
              CFRelease(v11);
              if (!v15)
              {
                continue;
              }

LABEL_21:
              CFRelease(v15);
              continue;
            }

            if (v11)
            {
              goto LABEL_24;
            }

            if (v14)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = *(error_with_underlying_errors + 5);
    if (v17)
    {
      v18 = strlen(*(error_with_underlying_errors + 5));
      v17 = CFStringCreateWithBytes(v2, v17, v18, 0x8000100u, 0);
    }

    if (*(error_with_underlying_errors + 3))
    {
      v19 = *(error_with_underlying_errors + 3);
    }

    else
    {
      v19 = "";
    }

    v20 = strlen(v19);
    v21 = CFStringCreateWithBytes(v2, v19, v20, 0x8000100u, 0);
    v22 = v21;
    if (!v21)
    {
      v21 = @"Unknown Error Domain";
    }

    error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(v21, *(error_with_underlying_errors + 8), v17, Mutable, v7);
    if (v22)
    {
      CFRelease(v22);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  return error_with_underlying_errors;
}

_OWORD *create_error_response_for_Error(__CFError *a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0x10F00405BFF1630uLL);
  v4 = v2;
  if (v2)
  {
    chunkserver__error_response__init(v2);
    Domain = CFErrorGetDomain(a1);
    *(v4 + 3) = createCStringWithCFString(Domain);
    *(v4 + 8) = CFErrorGetCode(a1);
    *(v4 + 8) = 0;
    v6 = CFErrorCopyDescription(a1);
    if (v6)
    {
      v7 = v6;
      *(v4 + 5) = createCStringWithCFString(v6);
      CFRelease(v7);
    }

    v8 = CFErrorCopyUserInfo(a1);
    if (v8)
    {
      v9 = v8;
      Value = CFDictionaryGetValue(v8, *MEMORY[0x277CBEE78]);
      if (Value)
      {
        v11 = 0;
      }

      else
      {
        Value = mmcs_cfnetwork_copy_underlying_stream_error(v9);
        v11 = Value;
        if (!Value)
        {
LABEL_15:
          v18 = CFDictionaryGetValue(v9, @"kMMCSErrorSupplementalDictionaryKey");
          if (IsValidCFDictionary(v18))
          {
            Count = CFDictionaryGetCount(v18);
            *(v4 + 9) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            CFDictionaryApplyFunction(v18, copy_error_response_nv_pairs, v4);
          }

          if (v11)
          {
            CFRelease(v11);
          }

          CFRelease(v9);
          return v4;
        }
      }

      error_response_for_Error = create_error_response_for_Error(Value);
      v14 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      *(v4 + 7) = v14;
      if (v14)
      {
        v16 = *(v4 + 6);
        *(v4 + 6) = v16 + 1;
        v14[v16] = error_response_for_Error;
      }

      else
      {
        v17 = mmcs_logging_logger_default(0, v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v21[0] = 0;
          _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "malloc", v21, 2u);
        }

        chunkserver__error_response__free_unpacked(error_response_for_Error, 0);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v12 = mmcs_logging_logger_default(0, v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "malloc", buf, 2u);
    }
  }

  return v4;
}