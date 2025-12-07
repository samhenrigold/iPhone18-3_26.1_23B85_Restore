uint64_t _mmcs_get_req_context_progress_timer_fired(uint64_t a1, uint64_t a2)
{
  result = mmcs_get_request_notify_all_items_with_pending_progress(a2);
  v4 = *(*(a2 + 304) + 120);
  if (v4)
  {
    CFAbsoluteTimeGetCurrent();

    return mmcs_perform_timer_set_next_fire_date(v4);
  }

  return result;
}

void mmcs_get_request_finalize(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 304) + 120))
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_2577D8000, v3, OS_LOG_TYPE_FAULT, "progressTimer must always be invalidated/freed first to break retain cycle, invariant violation.", v35, 2u);
    }
  }

  v4 = *(a1 + 304);
  v5 = v4[16];
  if (v5)
  {
    mmcs_http_context_clear_user_data(v5);
    mmcs_http_context_invalidate(*(*(a1 + 304) + 128));
    v6 = *(a1 + 304);
    v7 = *(v6 + 128);
    if (v7)
    {
      C3BaseRelease(v7);
      v6 = *(a1 + 304);
    }

    *(v6 + 128) = 0;
    v4 = *(a1 + 304);
  }

  v8 = v4[17];
  if (v8)
  {
    mmcs_http_context_clear_user_data(v8);
    mmcs_http_context_invalidate(*(*(a1 + 304) + 136));
    v9 = *(a1 + 304);
    v10 = *(v9 + 136);
    if (v10)
    {
      C3BaseRelease(v10);
      v9 = *(a1 + 304);
    }

    *(v9 + 136) = 0;
    v4 = *(a1 + 304);
  }

  v11 = v4[18];
  if (v11)
  {
    mmcs_http_context_invalidate(v11);
    v12 = *(a1 + 304);
    v13 = *(v12 + 144);
    if (v13)
    {
      C3BaseRelease(v13);
      v12 = *(a1 + 304);
    }

    *(v12 + 144) = 0;
    v4 = *(a1 + 304);
  }

  v14 = v4[8];
  if (v14)
  {
    CFRelease(v14);
    v4 = *(a1 + 304);
  }

  v4[8] = 0;
  v15 = *(a1 + 304);
  v16 = *(v15 + 80);
  if (v16)
  {
    CFRelease(v16);
    v15 = *(a1 + 304);
  }

  *(v15 + 80) = 0;
  v17 = *(a1 + 304);
  v18 = *(v17 + 72);
  if (v18)
  {
    CFRelease(v18);
    v17 = *(a1 + 304);
  }

  *(v17 + 72) = 0;
  v19 = *(a1 + 304);
  v20 = *(v19 + 88);
  if (v20)
  {
    CFRelease(v20);
    v19 = *(a1 + 304);
  }

  *(v19 + 88) = 0;
  v21 = *(a1 + 304);
  v22 = *(v21 + 96);
  if (v22)
  {
    CFRelease(v22);
    v21 = *(a1 + 304);
  }

  *(v21 + 96) = 0;
  v23 = *(a1 + 304);
  v24 = *(v23 + 104);
  if (v24)
  {
    CFSetApplyFunction(v24, dealloc_chunk_references, 0);
    v25 = *(a1 + 304);
    v26 = *(v25 + 104);
    if (v26)
    {
      CFRelease(v26);
      v25 = *(a1 + 304);
    }

    *(v25 + 104) = 0;
    v23 = *(a1 + 304);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    CFRelease(v27);
    v23 = *(a1 + 304);
  }

  *(v23 + 16) = 0;
  v28 = *(a1 + 304);
  if (*v28)
  {
    CFRelease(*v28);
    v28 = *(a1 + 304);
  }

  *v28 = 0;
  v29 = *(a1 + 304);
  v30 = *(v29 + 160);
  if (v30)
  {
    CFRelease(v30);
    v29 = *(a1 + 304);
  }

  *(v29 + 160) = 0;
  v31 = *(a1 + 304);
  v32 = *(v31 + 112);
  if (v32)
  {
    mmcs_get_state_dealloc(v32);
    *(*(a1 + 304) + 112) = 0;
    v31 = *(a1 + 304);
  }

  if (*(v31 + 168))
  {
    v33 = 0;
    v34 = 176;
    do
    {
      mmcs_item_finalize(v31 + v34);
      ++v33;
      v31 = *(a1 + 304);
      v34 += 416;
    }

    while (v33 < *(v31 + 168));
  }

  *(v31 + 168) = 0;
}

BOOL mmcs_get_request_has_items_not_done(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(v1 + 168);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 348);
  v4 = 1;
  do
  {
    v5 = *v3;
    if (v4 >= v2)
    {
      break;
    }

    ++v4;
    v3 += 104;
  }

  while (v5 == 5);
  return v5 != 5;
}

BOOL mmcs_get_request_stop_with_error(uint64_t a1, __CFError *a2)
{
  v2 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  v5 = mmcs_logging_logger_default(a1, a2);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (result)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Already cancelling. Ignoring stop of get request %p.", a1);
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v29 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }

    return result;
  }

  if (result)
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Stopping get request %p", a1);
    v12 = mmcs_logging_logger_default(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (v2)
  {
    error = 0;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Get was cancelled.");
    v2 = error;
  }

  CFRetain(v2);
  *(a1 + 152) = v2;
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 128), v2);
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 136), *(a1 + 152));
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 144), *(a1 + 152));
  v14 = *(*(a1 + 304) + 112);
  if (v14)
  {
    Count = CFArrayGetCount(*(v14 + 40));
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 40), i);
        mmcs_container_cancel(ValueAtIndex, *(a1 + 152));
      }
    }
  }

  while (1)
  {
    v20 = *(a1 + 304);
    v24 = v20[2];
    if (!v24)
    {
      break;
    }

    v19 = CFArrayGetCount(v24);
    v20 = *(a1 + 304);
    if (v19 < 1)
    {
      break;
    }

    v21 = CFArrayGetValueAtIndex(v20[2], 0);
    CFArrayRemoveValueAtIndex(*(*(a1 + 304) + 16), 0);
    mmcs_get_file_abort_writing_file(v21);
    v22 = *(v21 + 1);
    mmcs_get_item_progress_make_done_error(*(a1 + 152), v23, buf);
    mmcs_get_request_set_progress_and_notify_item(a1, v22, buf);
  }

  if (*v20 && CFSetGetCount(*v20) >= 1)
  {
    CFSetApplyFunction(**(a1 + 304), cancel_file_jobs, *(a1 + 152));
    CFSetRemoveAllValues(**(a1 + 304));
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(a1 + 192);
  if (v26 && mmcs_proxy_locator_is_locating(v26))
  {
    mmcs_proxy_locator_cancel(*(a1 + 192), v27);
LABEL_32:
    mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
    mmcs_get_req_context_cleanup(a1, *(a1 + 152));
    goto LABEL_33;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (error)
  {
    CFRelease(error);
  }

  C3BaseRelease(a1);
  return 1;
}

void mmcs_get_req_context_cleanup(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 304) + 120);
  if (v4)
  {
    mmcs_perform_timer_invalidate(v4);
    v5 = *(a1 + 304);
    v6 = *(v5 + 120);
    if (v6)
    {
      CFRelease(v6);
      v5 = *(a1 + 304);
    }

    *(v5 + 120) = 0;
  }

  if (a2)
  {
    *&buf = 5;
    *(&buf + 1) = 0xBFF0000000000000;
    v24 = a2;
  }

  else
  {
    if (!*(a1 + 144))
    {
      goto LABEL_10;
    }

    mmcs_get_item_progress_make_done_error(*(a1 + 152), a2, &buf);
  }

  mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, &buf);
LABEL_10:
  v7 = mmcs_engine_contains_request(*(a1 + 32), a1);
  if (v7)
  {
    if (*(*(a1 + 304) + 41))
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v9 = mmcs_logging_logger_default(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Deferring client request completed callback.");
          v12 = mmcs_logging_logger_default(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v10;
            _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }

    else
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v19 = mmcs_logging_logger_default(v7, v8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing client request completed callback.");
          v22 = mmcs_logging_logger_default(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v20;
            _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      mmcs_get_req_call_client_request_completed(a1, v8);
    }

    if (!*(*(a1 + 304) + 41) || !mmcs_perform_getComplete(a1, v8))
    {
      mmcs_get_req_done_phase2(a1, v8);
    }
  }

  else
  {
    v13 = mmcs_request_copy_description(a1);
    v15 = mmcs_logging_logger_default(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ignoring unknown get req %@", v13);
      v18 = mmcs_logging_logger_default(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void mmcs_get_request_append_description(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 16);
  context = *result;
  *theString = v2;
  v22 = *(result + 32);
  theString[1] = (*(&v2 + 1) + 1);
  if (*(result + 16))
  {
    v4 = _mmcs_request_copy_description(v1);
    if (v4)
    {
      v5 = v4;
      mmcs_op_requestor_context_indent(result);
      CFStringAppend(*(result + 16), v5);
      CFStringAppend(*(result + 16), @"\n");
      CFRelease(v5);
      v6 = *(v1 + 304);
      v7 = v6[16];
      if (v7)
      {
        is_sending = mmcs_http_context_is_sending(v7);
        v6 = *(v1 + 304);
        if (is_sending)
        {
          context.i64[0] = v6[16];
          mmcs_http_context_append_description(context.i64);
          v6 = *(v1 + 304);
        }
      }

      v9 = v6[17];
      if (v9)
      {
        v10 = mmcs_http_context_is_sending(v9);
        v6 = *(v1 + 304);
        if (v10)
        {
          context.i64[0] = v6[17];
          mmcs_http_context_append_description(context.i64);
          v6 = *(v1 + 304);
        }
      }

      v11 = v6[14];
      if (v11)
      {
        Count = CFArrayGetCount(*(v11 + 40));
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            context.i64[0] = CFArrayGetValueAtIndex(*(v11 + 40), i);
            mmcs_container_append_description(&context);
          }
        }

        v15 = vaddq_s64(*(result + 32), v22);
        *(result + 32) = v15;
        if (v15.i64[1] >= 11)
        {
          mmcs_op_requestor_context_indent(&context);
          CFStringAppendFormat(theString[0], 0, @"<%ld more container(s)> enqueued\n", *(result + 40) - 10);
        }
      }

      v16 = **(v1 + 304);
      if (v16)
      {
        if (CFSetGetCount(v16) >= 1)
        {
          Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], **(v1 + 304));
          if (Copy)
          {
            v18 = Copy;
            CFSetApplyFunction(Copy, _mmcs_get_request_append_description_file_job, &context);
            CFRelease(v18);
          }
        }
      }

      v19 = *(*(v1 + 304) + 144);
      if (v19)
      {
        if (mmcs_http_context_is_sending(v19))
        {
          context.i64[0] = *(*(v1 + 304) + 144);
          mmcs_http_context_append_description(context.i64);
        }
      }
    }
  }
}

void mmcs_get_req_add_item_for_get_chunks(uint64_t a1, void *value)
{
  v4 = *(*(a1 + 304) + 88);
  if (!v4)
  {
    *(*(a1 + 304) + 88) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemSignatureReferenceEqualitySetCallbacks);
    v4 = *(*(a1 + 304) + 88);
  }

  CFSetAddValue(v4, value);
  v5 = *(*(a1 + 304) + 96);
  if (!v5)
  {
    *(*(a1 + 304) + 96) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemItemIDEqualitySetCallbacks);
    v5 = *(*(a1 + 304) + 96);
  }

  CFSetAddValue(v5, value);
}

uint64_t mmcs_get_req_context_wants_getComplete(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (*(v2 + 59))
  {
    return *(v2 + 60);
  }

  reporting_level = mmcs_request_get_reporting_level(a1);

  return mmcs_report_want_report(0, reporting_level);
}

BOOL mmcs_get_req_done_phase2(uint64_t *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1[38] + 41))
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v3 = mmcs_logging_logger_default(a1, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing deferred client file failures callback.");
        v6 = mmcs_logging_logger_default(v4, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v14 = 138543362;
          v15 = v4;
          _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", &v14, 0xCu);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }
    }

    v7 = *(a1[38] + 112);
    if (v7)
    {
      mmcs_get_state_container_fail_deferred_files(v7);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      v8 = mmcs_logging_logger_default(v7, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing deferred client request completed callback.");
        v11 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = 138543362;
          v15 = v9;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", &v14, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }

    mmcs_get_req_call_client_request_completed(a1, a2);
  }

  mmcs_get_req_context_log_timing(a1, a2);
  v12 = *(a1[38] + 112);
  if (v12)
  {
    mmcs_get_state_invalidate(v12);
  }

  return mmcs_engine_remove_request(a1[4], a1);
}

void mmcs_get_req_call_client_request_completed(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, a2);
  os_activity_scope_enter(request_activity_marker, &state);
  kdebug_trace();
  v9 = *(a1 + 304);
  v10 = MEMORY[0x277CBECE8];
  if (*(v9 + 168))
  {
    v11 = 0;
    v12 = 0;
    v13 = *MEMORY[0x277CBECE8];
    v14 = 348;
    do
    {
      if (*(v9 + v14) != 5)
      {
        v15 = mmcs_item_copy_description((v9 + v14 - 172));
        v17 = mmcs_logging_logger_default(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = CFStringCreateWithFormat(v13, 0, @"Expected item %@ to be done by now.", v15);
          v20 = mmcs_logging_logger_default(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v45 = v18;
            _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v11 = 1;
      }

      ++v12;
      v9 = *(a1 + 304);
      v14 += 416;
    }

    while (v12 < *(v9 + 168));
    v10 = MEMORY[0x277CBECE8];
    if (v11)
    {
      v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"The item should have already completed.", v4, v5, v6, v7, v8);
      mmcs_get_item_progress_make_done_error(v21, v22, buf);
      mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, buf);
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  *(*(a1 + 304) + 40) = 1;
  Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 184) && *(a1 + 32))
  {
    *(*(a1 + 32) + 192) = C3BaseRetain(a1);
    v24 = *(a1 + 184);
    if (v24)
    {
      _mmcs_metrics_request_stopped(*(a1 + 184), 0, *(a1 + 152));
      Count = *(*(a1 + 304) + 64);
      if (Count)
      {
        Count = CFDictionaryGetCount(Count);
      }

      *(v24 + 96) = Count;
      *(v24 + 24) = mmcs_server_version_as_double(*(a1 + 120), *(a1 + 128));
      v26 = *(*(a1 + 304) + 112);
      if (v26 && *(v26 + 16))
      {
        v27 = 0;
        v28 = 0;
        v29 = *(v24 + 104);
        v30 = *(v24 + 120);
        do
        {
          v31 = (*(v26 + 32) + v27);
          v29 = vaddq_s64(vextq_s8(v31[6], v31[6], 8uLL), v29);
          *(v24 + 104) = v29;
          v30 += v31[5].i64[1];
          *(v24 + 120) = v30;
          ++v28;
          v26 = *(*(a1 + 304) + 112);
          v27 += 128;
        }

        while (v28 < *(v26 + 16));
      }
    }

    metric_object = mmcs_metrics_create_metric_object(*(a1 + 184));
    CFDictionarySetValue(Mutable, @"metricObject", metric_object);
    if (metric_object)
    {
      CFRelease(metric_object);
    }
  }

  if (*(a1 + 249))
  {
    v33 = *(a1 + 256);
    if (v33)
    {
      CFDictionarySetValue(Mutable, @"kMMCSResultDownloadAuthorization", v33);
    }
  }

  v34 = mmcs_request_copy_description(a1);
  v36 = mmcs_logging_logger_default(v34, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = *(a1 + 32);
    *buf = 134218242;
    v45 = v37;
    v46 = 2112;
    v47 = v34;
    _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_INFO, "Engine %p request will notify request %@ done", buf, 0x16u);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v38 = *(a1 + 304);
  if (*(v38 + 152))
  {
    v39 = *(v38 + 160);
    if (v39)
    {
      CFDictionarySetValue(Mutable, @"kMMCSRequestOptionReturnOpaqueCloneContext", v39);
    }
  }

  v40 = *(a1 + 32);
  if (v40)
  {
    MMCSEngineClientContextRequestCompleted(*(v40 + 152), *(a1 + 40), Mutable);
  }

  if (*(a1 + 184))
  {
    v41 = *(a1 + 32);
    if (v41)
    {
      v42 = *(v41 + 192);
      if (v42)
      {
        C3BaseRelease(v42);
        v41 = *(a1 + 32);
      }

      *(v41 + 192) = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  os_activity_scope_leave(&state);
}

void mmcs_get_req_context_log_timing(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v242 = *MEMORY[0x277D85DE8];
  v3 = mmcs_logging_logger_summary(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    timing_activity_marker = mmcs_request_get_timing_activity_marker(v2);
    os_activity_scope_enter(timing_activity_marker, &state);
    v7 = mmcs_logging_logger_summary(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"GET request timing=========================================");
      v10 = mmcs_logging_logger_summary(v8, v9);
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

    v11 = mmcs_request_copy_description(v2);
    v13 = mmcs_logging_logger_summary(v11, v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine %p request %@", *(v2 + 32), v11);
      v18 = mmcs_logging_logger_summary(v16, v17);
      v14 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (*(v2 + 144))
    {
      v19 = mmcs_logging_logger_summary(v14, v15);
      v14 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\trequest was cancelled.");
        v22 = mmcs_logging_logger_summary(v20, v21);
        v14 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    if (*(v2 + 264))
    {
      v23 = mmcs_logging_logger_summary(v14, v15);
      v14 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tmmcs was pre-authorized by client application");
        v26 = mmcs_logging_logger_summary(v24, v25);
        v14 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v24;
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v24)
        {
          CFRelease(v24);
        }
      }
    }

    if (*(*(v2 + 304) + 128))
    {
      v27 = mmcs_logging_logger_summary(v14, v15);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      if (v28)
      {
        v30 = *MEMORY[0x277CBECE8];
        v31 = mmcs_http_context_elapsed_seconds(*(*(v2 + 304) + 128));
        v32 = CFStringCreateWithFormat(v30, 0, @"\tmmcs get auth:     \t%0.4lf sec.", *&v31);
        v34 = mmcs_logging_logger_summary(v32, v33);
        v28 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
        if (v28)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v32;
          _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v32)
        {
          CFRelease(v32);
        }
      }

      v35 = mmcs_logging_logger_summary(v28, v29);
      v14 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        v36 = *MEMORY[0x277CBECE8];
        v37 = mmcs_http_context_enqueued_seconds(*(*(v2 + 304) + 128), v15);
        v38 = CFStringCreateWithFormat(v36, 0, @"\tmmcs get auth(inQ):  \t%0.4lf sec.", *&v37);
        v40 = mmcs_logging_logger_summary(v38, v39);
        v14 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v38;
          _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v38)
        {
          CFRelease(v38);
        }
      }
    }

    if (*(*(v2 + 304) + 136))
    {
      v41 = mmcs_logging_logger_summary(v14, v15);
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
      v44 = *MEMORY[0x277CBECE8];
      if (v42)
      {
        v45 = mmcs_http_context_elapsed_seconds(*(*(v2 + 304) + 136));
        v46 = CFStringCreateWithFormat(v44, 0, @"\tmmcs get chunks auth:\t%0.4lf sec.", *&v45);
        v48 = mmcs_logging_logger_summary(v46, v47);
        v42 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
        if (v42)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v46;
          _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v46)
        {
          CFRelease(v46);
        }
      }

      v49 = mmcs_logging_logger_summary(v42, v43);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v51 = mmcs_http_context_enqueued_seconds(*(*(v2 + 304) + 136), v50);
        v52 = CFStringCreateWithFormat(v44, 0, @"\tmmcs get chunks auth(inQ):\t%0.4lf sec.", *&v51);
        v54 = mmcs_logging_logger_summary(v52, v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v52;
          _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v52)
        {
          CFRelease(v52);
        }
      }
    }

    else
    {
      v44 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFArrayCreateMutable(v44, 0, &itemArrayCallbacks);
    v56 = *(v2 + 304);
    if (*(v56 + 168))
    {
      v57 = 0;
      v58 = 176;
      do
      {
        CFArrayAppendValue(Mutable, (v56 + v58));
        ++v57;
        v56 = *(v2 + 304);
        v58 += 416;
      }

      while (v57 < *(v56 + 168));
    }

    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      theArray = Mutable;
      v236 = v2;
      alloc = v44;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
        v62 = mmcs_file_signature_to_hexstring(*ValueAtIndex);
        v64 = mmcs_logging_logger_summary(v62, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = CFStringCreateWithFormat(v44, 0, @"\tsignature: %s", v62);
          v67 = mmcs_logging_logger_summary(v65, v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v65;
            _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v65)
          {
            CFRelease(v65);
          }
        }

        CStringDescription = XCFDataCreateCStringDescription(*(ValueAtIndex + 6));
        v70 = mmcs_logging_logger_summary(CStringDescription, v69);
        v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG);
        if (v71)
        {
          v73 = CFStringCreateWithFormat(v44, 0, @"\treference: %s", CStringDescription);
          v75 = mmcs_logging_logger_summary(v73, v74);
          v71 = os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG);
          if (v71)
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v73;
            _os_log_impl(&dword_2577D8000, v75, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v73)
          {
            CFRelease(v73);
          }
        }

        v76 = mmcs_logging_logger_summary(v71, v72);
        v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
        if (v77)
        {
          v79 = CFStringCreateWithFormat(v44, 0, @"\tsize: %lld bytes (not valid if no authGet response)", *(ValueAtIndex + 2));
          v81 = mmcs_logging_logger_summary(v79, v80);
          v77 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
          if (v77)
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v79;
            _os_log_impl(&dword_2577D8000, v81, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v79)
          {
            CFRelease(v79);
          }
        }

        v82 = mmcs_logging_logger_summary(v77, v78);
        v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG);
        if (v83)
        {
          v85 = CFStringCreateWithFormat(v44, 0, @"\tunique size: %lld bytes", *(ValueAtIndex + 37));
          v87 = mmcs_logging_logger_summary(v85, v86);
          v83 = os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG);
          if (v83)
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v85;
            _os_log_impl(&dword_2577D8000, v87, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v85)
          {
            CFRelease(v85);
          }
        }

        v88 = mmcs_logging_logger_summary(v83, v84);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          v89 = CFStringCreateWithFormat(v44, 0, @"\titem: %llu", *(ValueAtIndex + 5));
          v91 = mmcs_logging_logger_summary(v89, v90);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v89;
            _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v89)
          {
            CFRelease(v89);
          }
        }

        if (v62)
        {
          free(v62);
        }

        if (CStringDescription)
        {
          free(CStringDescription);
        }

        v92 = *(*(v2 + 304) + 112);
        if (v92)
        {
          is_derivative = mmcs_item_is_derivative(ValueAtIndex);
          if (!is_derivative && *(v92 + 16))
          {
            v95 = 0;
            v96 = 0;
            do
            {
              v97 = *(v92 + 32);
              if (*(v97 + v95 + 8) == ValueAtIndex)
              {
                v98 = mmcs_logging_logger_summary(is_derivative, v94);
                v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG);
                if (v99)
                {
                  v101 = *(*(v97 + v95 + 8) + 40);
                  file_local_fulfillment_elapsed_seconds = mmcs_get_file_local_fulfillment_elapsed_seconds(v97 + v95);
                  v103 = CFStringCreateWithFormat(alloc, 0, @"\tlocal fulfillment of item %llu: %0.4lf sec, %llu bytes", v101, *&file_local_fulfillment_elapsed_seconds, *(v97 + v95 + 96) + *(v97 + v95 + 88));
                  v105 = mmcs_logging_logger_summary(v103, v104);
                  v99 = os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG);
                  if (v99)
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v103;
                    _os_log_impl(&dword_2577D8000, v105, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v103)
                  {
                    CFRelease(v103);
                  }
                }

                v106 = mmcs_logging_logger_summary(v99, v100);
                v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG);
                if (v107)
                {
                  v109 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes validated for resume", *(v97 + v95 + 80));
                  v111 = mmcs_logging_logger_summary(v109, v110);
                  v107 = os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG);
                  if (v107)
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v109;
                    _os_log_impl(&dword_2577D8000, v111, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v109)
                  {
                    CFRelease(v109);
                  }
                }

                v112 = mmcs_logging_logger_summary(v107, v108);
                v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG);
                if (v113)
                {
                  v115 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes resumed", *(v97 + v95 + 88));
                  v117 = mmcs_logging_logger_summary(v115, v116);
                  v113 = os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG);
                  if (v113)
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v115;
                    _os_log_impl(&dword_2577D8000, v117, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v115)
                  {
                    CFRelease(v115);
                  }
                }

                v118 = mmcs_logging_logger_summary(v113, v114);
                v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG);
                if (v119)
                {
                  v121 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes fulfilled locally", *(v97 + v95 + 96));
                  v123 = mmcs_logging_logger_summary(v121, v122);
                  v119 = os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG);
                  if (v119)
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v121;
                    _os_log_impl(&dword_2577D8000, v123, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v121)
                  {
                    CFRelease(v121);
                  }
                }

                v124 = mmcs_logging_logger_summary(v119, v120);
                is_derivative = os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG);
                if (is_derivative)
                {
                  v125 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes fulfilled by peers", *(v97 + v95 + 104));
                  v127 = mmcs_logging_logger_summary(v125, v126);
                  is_derivative = os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG);
                  if (is_derivative)
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v125;
                    _os_log_impl(&dword_2577D8000, v127, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v125)
                  {
                    CFRelease(v125);
                  }
                }
              }

              ++v96;
              v95 += 128;
            }

            while (v96 < *(v92 + 16));
          }

          v128 = CFArrayGetCount(*(v92 + 40));
          if (v128 >= 1)
          {
            v129 = v128;
            for (i = 0; i != v129; ++i)
            {
              v131 = CFArrayGetValueAtIndex(*(v92 + 40), i);
              state_copy_file_states_for_container = mmcs_get_state_copy_file_states_for_container(v92, v131);
              *&buf = 0;
              *(&buf + 1) = ValueAtIndex;
              if (state_copy_file_states_for_container)
              {
                v133 = state_copy_file_states_for_container;
                CFSetApplyFunction(state_copy_file_states_for_container, item_match_applier, &buf);
                CFRelease(v133);
                if (buf)
                {
                  v135 = *(*(*(v131 + 2) + 24) + 16);
                  if (v135)
                  {
                    v135 = CFHTTPMessageCopyHeaderFieldValue(v135, @"Range");
                    v136 = v135;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v137 = mmcs_logging_logger_summary(v135, v134);
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
                  {
                    v138 = CFStringCreateWithFormat(alloc, 0, @"\t req container idx:\t%lu", i);
                    v140 = mmcs_logging_logger_summary(v138, v139);
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
                    {
                      *context = 138543362;
                      v240 = v138;
                      _os_log_impl(&dword_2577D8000, v140, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                    }

                    if (v138)
                    {
                      CFRelease(v138);
                    }
                  }

                  v141 = mmcs_container_copy_simple_description(v131);
                  if (v141)
                  {
                    v143 = v141;
                    CStringWithCFString = createCStringWithCFString(v141);
                    v146 = mmcs_logging_logger_summary(CStringWithCFString, v145);
                    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
                    {
                      v147 = "(no container description)";
                      if (CStringWithCFString)
                      {
                        v147 = CStringWithCFString;
                      }

                      v148 = CFStringCreateWithFormat(alloc, 0, @"\t     container:\t%s", v147);
                      v150 = mmcs_logging_logger_summary(v148, v149);
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v240 = v148;
                        _os_log_impl(&dword_2577D8000, v150, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v148)
                      {
                        CFRelease(v148);
                      }
                    }

                    if (CStringWithCFString)
                    {
                      free(CStringWithCFString);
                    }

                    CFRelease(v143);
                  }

                  if (*(v131 + 16) == 2)
                  {
                    v151 = *(v131 + 11);
                    v152 = mmcs_logging_logger_summary(v141, v142);
                    v153 = os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG);
                    if (v153)
                    {
                      v155 = *(v151 + 16);
                      if (!v155)
                      {
                        v155 = "(no key)";
                      }

                      v156 = CFStringCreateWithFormat(alloc, 0, @"\t     container key:\t%s", v155);
                      v158 = mmcs_logging_logger_summary(v156, v157);
                      v153 = os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG);
                      if (v153)
                      {
                        *context = 138543362;
                        v240 = v156;
                        _os_log_impl(&dword_2577D8000, v158, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v156)
                      {
                        CFRelease(v156);
                      }
                    }

                    v159 = *(v151 + 16);
                    if (v159)
                    {
                      v160 = strlen(*(v151 + 16));
                      v153 = CFStringCreateWithBytes(alloc, v159, v160, 0x8000100u, 0);
                      if (v153)
                      {
                        v161 = v153;
                        v162 = COERCE_DOUBLE(mmcs_container_id_info_parse_container_id(v153));
                        CFRelease(v161);
                        if (v162 != 0.0)
                        {
                          String = XCFAbsoluteTimeDateFormatterCreateString(v162);
                          if (String)
                          {
                            v165 = String;
                            v166 = mmcs_logging_logger_summary(String, v164);
                            if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
                            {
                              v167 = CFStringCreateWithFormat(alloc, 0, @"\t  upload auth date:\t%@", v165);
                              v169 = mmcs_logging_logger_summary(v167, v168);
                              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                              {
                                *context = 138543362;
                                v240 = v167;
                                _os_log_impl(&dword_2577D8000, v169, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                              }

                              if (v167)
                              {
                                CFRelease(v167);
                              }
                            }

                            CFRelease(v165);
                          }

                          v170 = mmcs_logging_logger_summary(String, v164);
                          v153 = os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG);
                          if (v153)
                          {
                            Current = CFAbsoluteTimeGetCurrent();
                            v172 = CFStringCreateWithFormat(alloc, 0, @"\t time since upload:\t%f", Current - v162);
                            v174 = mmcs_logging_logger_summary(v172, v173);
                            v153 = os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG);
                            if (v153)
                            {
                              *context = 138543362;
                              v240 = v172;
                              _os_log_impl(&dword_2577D8000, v174, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                            }

                            if (v172)
                            {
                              CFRelease(v172);
                            }
                          }
                        }
                      }
                    }

                    v175 = mmcs_logging_logger_summary(v153, v154);
                    v176 = os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG);
                    if (v176)
                    {
                      v178 = @"unknown range";
                      if (v136)
                      {
                        v178 = v136;
                      }

                      v179 = CFStringCreateWithFormat(alloc, 0, @"\t             range:\t%@", v178);
                      v181 = mmcs_logging_logger_summary(v179, v180);
                      v176 = os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG);
                      if (v176)
                      {
                        *context = 138543362;
                        v240 = v179;
                        _os_log_impl(&dword_2577D8000, v181, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v179)
                      {
                        CFRelease(v179);
                      }
                    }

                    if (v136)
                    {
                      CFRelease(v136);
                    }

                    v182 = mmcs_logging_logger_summary(v176, v177);
                    v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG);
                    if (v183)
                    {
                      body_size = mmcs_get_container_get_body_size(v131);
                      v186 = CFStringCreateWithFormat(alloc, 0, @"\t     expected size:\t%lu bytes", body_size);
                      v188 = mmcs_logging_logger_summary(v186, v187);
                      v183 = os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG);
                      if (v183)
                      {
                        *context = 138543362;
                        v240 = v186;
                        _os_log_impl(&dword_2577D8000, v188, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v186)
                      {
                        CFRelease(v186);
                      }
                    }

                    v189 = mmcs_logging_logger_summary(v183, v184);
                    v190 = os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG);
                    if (v190)
                    {
                      v191 = CFStringCreateWithFormat(alloc, 0, @"\t     total bytes not decrypted:\t%lu bytes", *(v151 + 136));
                      v193 = mmcs_logging_logger_summary(v191, v192);
                      v190 = os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG);
                      if (v190)
                      {
                        *context = 138543362;
                        v240 = v191;
                        _os_log_impl(&dword_2577D8000, v193, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v191)
                      {
                        CFRelease(v191);
                      }
                    }

                    if (!*(v151 + 180))
                    {
                      v194 = mmcs_logging_logger_summary(v190, v142);
                      if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
                      {
                        v195 = CFStringCreateWithFormat(alloc, 0, @"\t    container %lu was not needed", i);
                        v197 = mmcs_logging_logger_summary(v195, v196);
                        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
                        {
                          *context = 138543362;
                          v240 = v195;
                          _os_log_impl(&dword_2577D8000, v197, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                        }

                        if (v195)
                        {
                          CFRelease(v195);
                        }
                      }
                    }
                  }

                  mmcs_transaction_log_timing(*(v131 + 2), v142);
                  v199 = *(v131 + 3);
                  if (v199)
                  {
                    mmcs_transaction_log_timing(v199, v198);
                  }

                  v200 = *(v131 + 5);
                  if (v200)
                  {
                    v201 = mmcs_cferror_copy_description(v200);
                    v203 = mmcs_logging_logger_summary(v201, v202);
                    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
                    {
                      v204 = CFStringCreateWithFormat(alloc, 0, @"\terror :           \t%@", v201);
                      v206 = mmcs_logging_logger_summary(v204, v205);
                      if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v240 = v204;
                        _os_log_impl(&dword_2577D8000, v206, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v204)
                      {
                        CFRelease(v204);
                      }
                    }

                    if (v201)
                    {
                      CFRelease(v201);
                    }
                  }

                  v207 = *(v131 + 6);
                  if (v207)
                  {
                    *context = 1;
                    v243.length = CFArrayGetCount(v207);
                    v243.location = 0;
                    CFArrayApplyFunction(v207, v243, _log_error, context);
                  }
                }
              }
            }
          }
        }

        v208 = *(ValueAtIndex + 24);
        v44 = alloc;
        if (v208)
        {
          v209 = mmcs_cferror_copy_description(v208);
          v211 = mmcs_logging_logger_summary(v209, v210);
          v212 = os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG);
          if (v212)
          {
            v214 = CFStringCreateWithFormat(alloc, 0, @"\terror:             \t%@", v209);
            v216 = mmcs_logging_logger_summary(v214, v215);
            v212 = os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG);
            if (v212)
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v214;
              _os_log_impl(&dword_2577D8000, v216, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v214)
            {
              CFRelease(v214);
            }
          }

          v217 = mmcs_logging_logger_summary(v212, v213);
          if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
          {
            v218 = MMCSGetItemStateCString(*(ValueAtIndex + 44));
            v219 = CFStringCreateWithFormat(alloc, 0, @"\terror state:       \t%s", v218);
            v221 = mmcs_logging_logger_summary(v219, v220);
            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v219;
              _os_log_impl(&dword_2577D8000, v221, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v219)
            {
              CFRelease(v219);
            }
          }

          if (v209)
          {
            CFRelease(v209);
          }
        }

        Mutable = theArray;
        CFArrayRemoveValueAtIndex(theArray, 0);
        Count = CFArrayGetCount(theArray);
        v2 = v236;
      }

      while (Count > 0);
    }

    if (*(*(v2 + 304) + 144))
    {
      v222 = mmcs_logging_logger_summary(Count, v60);
      v223 = os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG);
      if (v223)
      {
        v225 = mmcs_http_context_elapsed_seconds(*(*(v2 + 304) + 144));
        v226 = CFStringCreateWithFormat(v44, 0, @"\tmmcs get complete:     \t%0.4lf sec.", *&v225);
        v228 = mmcs_logging_logger_summary(v226, v227);
        v223 = os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG);
        if (v223)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v226;
          _os_log_impl(&dword_2577D8000, v228, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v226)
        {
          CFRelease(v226);
        }
      }

      v229 = mmcs_logging_logger_summary(v223, v224);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEBUG))
      {
        v231 = mmcs_http_context_enqueued_seconds(*(*(v2 + 304) + 144), v230);
        v232 = CFStringCreateWithFormat(v44, 0, @"\tmmcs get complete(inQ):\t%0.4lf sec.", *&v231);
        v234 = mmcs_logging_logger_summary(v232, v233);
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v232;
          _os_log_impl(&dword_2577D8000, v234, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v232)
        {
          CFRelease(v232);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    os_activity_scope_leave(&state);
  }
}

uint64_t mmcs_get_req_has_outstanding_asynchronous_work(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 304);
  v3 = *(v2 + 112);
  if (v3)
  {
    if (mmcs_get_state_has_outstanding_async_transactions(v3))
    {
      goto LABEL_8;
    }

    v2 = *(a1 + 304);
  }

  if ((!*v2 || CFSetGetCount(*v2) <= 0) && mmcs_proxy_locator_is_done(*(a1 + 192)))
  {
    return 0;
  }

LABEL_8:
  is_done = mmcs_proxy_locator_is_done(*(a1 + 192));
  if (!is_done)
  {
    v7 = mmcs_logging_logger_default(is_done, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"waiting to hear back from ACS");
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  return 1;
}

void mmcs_get_req_add_file_job(uint64_t a1, void *value)
{
  v4 = **(a1 + 304);
  if (!v4)
  {
    v5 = *byte_2868BF038;
    **(a1 + 304) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v5);
    v4 = **(a1 + 304);
  }

  CFSetSetValue(v4, value);
}

CFIndex mmcs_get_req_validate_get_file(uint64_t a1, void *value)
{
  v4 = *(*(a1 + 304) + 16);
  if (!v4)
  {
    *(*(a1 + 304) + 16) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v4 = *(*(a1 + 304) + 16);
  }

  CFArrayAppendValue(v4, value);

  return mmcs_get_req_context_schedule_file_jobs(a1);
}

CFIndex mmcs_get_req_context_schedule_file_jobs(uint64_t a1)
{
  for (i = *(a1 + 304); ; i = *(a1 + 304))
  {
    result = *(i + 16);
    if (!result)
    {
      break;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      break;
    }

    v4 = *(a1 + 304);
    if (*v4)
    {
      result = CFSetGetCount(*v4);
      if (result > 0)
      {
        return result;
      }

      v4 = *(a1 + 304);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4[2], 0);
    CFArrayRemoveValueAtIndex(*(*(a1 + 304) + 16), 0);
    v6 = *(a1 + 32);
    v16 = 0;
    *&v11 = 0;
    *(&v11 + 1) = a1;
    v12 = C3BaseRetain;
    v13 = C3BaseRelease;
    v14 = 0;
    v15 = mmcs_get_req_context_did_validate_item;
    v7 = mmcs_file_job_create(&v11, v6, ValueAtIndex, &v16);
    if (v7)
    {
      v8 = v7;
      mmcs_get_req_add_file_job(a1, v7);
      mmcs_engine_file_job_dispatch_async(v8, *(v6 + 24));
      C3BaseRelease(v8);
    }

    else
    {
      mmcs_get_file_abort_writing_file(ValueAtIndex);
      v9 = *(ValueAtIndex + 1);
      mmcs_get_item_progress_make_done_error(v16, v10, &v11);
      mmcs_get_request_set_progress_and_notify_item(a1, v9, &v11);
      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  return result;
}

void mmcs_get_req_set_opaque_clone_context(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 304);
  v4 = *(v3 + 160);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      v3 = *(a1 + 304);
    }

    *(v3 + 160) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(*(a1 + 304) + 160) = cf;
  }
}

uint64_t item_match_applier(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) == *(result + 8))
  {
    *a2 = 1;
  }

  return result;
}

void _log_error(__CFError *a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = mmcs_cferror_copy_description(a1);
  v5 = mmcs_logging_logger_summary(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tprevious error %d:           \t%@", *a2, v3);
    v8 = mmcs_logging_logger_summary(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  ++*a2;
}

void mmcs_get_req_context_did_validate_item(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"completed file job %p", a2);
    v8 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (!*(a1 + 144))
  {
    v9 = *(a1 + 304);
    if (!*(v9 + 40))
    {
      v10 = *v9;
      if (*v9 && (v10 = CFSetContainsValue(v10, a2), v10))
      {
        if (a2)
        {
          C3BaseRetain(a2);
          CFSetRemoveValue(**(a1 + 304), a2);
          req_context_schedule_file_jobs = mmcs_get_req_context_schedule_file_jobs(a1);
          v13 = *(a2 + 136);
          v14 = *(v13 + 8);
          if (*(a2 + 216))
          {
            v16 = *(a2 + 200);
            v15 = *(a2 + 208);
            v17 = CKFileDigestResultsFileLength();
            v19 = mmcs_logging_logger_default(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Validated the contents of file %s (%llu bytes) for item %llu in %lf sec. (%.3lf MB/sec)", *(v13 + 16), v17, *(v14 + 40), v15 - v16, vcvtd_n_f64_u64(v17, 0xAuLL) * 0.0009765625 / (v15 - v16));
              v22 = mmcs_logging_logger_default(v20, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v20;
                _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }
          }

          else
          {
            v29 = *(a2 + 232);
            v30 = mmcs_logging_logger_default(req_context_schedule_file_jobs, v12);
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
            if (v29)
            {
              if (v31)
              {
                v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Could not validate contents of file %s for item %llu: %@", *(v13 + 16), *(v14 + 40), *(a2 + 232));
                v39 = mmcs_logging_logger_default(v37, v38);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v37;
                  _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
                }

                if (v37)
                {
                  CFRelease(v37);
                }
              }

              CFRetain(*(a2 + 232));
              v24 = *(a2 + 232);
            }

            else
            {
              if (v31)
              {
                v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Could not validate contents of file %s for item %llu with unspecified error", *(v13 + 16), *(v14 + 40));
                v42 = mmcs_logging_logger_default(v40, v41);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v40;
                  _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
                }

                if (v40)
                {
                  CFRelease(v40);
                }
              }

              v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 12, @"There was an unspecified error while trying to validate the contents of item %llu", v32, v33, v34, v35, v36, *(v14 + 40));
            }

            if (v24)
            {
              mmcs_get_file_abort_writing_file(v13);
              *&buf = 5;
              *(&buf + 1) = 0xBFF0000000000000;
              v56 = v24;
              mmcs_get_request_set_progress_and_notify_item(a1, v14, &buf);
              v45 = 0;
              goto LABEL_43;
            }
          }

          mmcs_get_file_finalize_file_after_validation(v13);
          v24 = 0;
          v45 = 1;
LABEL_43:
          if (*(a1 + 144))
          {
LABEL_44:
            v46 = mmcs_logging_logger_default(Count, v44);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Clean up put request as last step of cancel");
              v49 = mmcs_logging_logger_default(v47, v48);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v47;
                _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
              }

              if (v47)
              {
                CFRelease(v47);
              }
            }

            mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
            v50 = *(a1 + 152);
LABEL_50:
            mmcs_get_req_context_cleanup(a1, v50);
            goto LABEL_51;
          }

          v51 = **(a1 + 304);
          if (v51)
          {
            Count = CFSetGetCount(v51);
            if (Count <= 0)
            {
              if (!*(a1 + 144))
              {
                has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(a1);
                if (!has_outstanding_asynchronous_work)
                {
                  v54 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v53);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(buf) = 134217984;
                    *(&buf + 4) = a1;
                    _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &buf, 0xCu);
                  }

                  v50 = 0;
                  goto LABEL_50;
                }
              }
            }

            else if (*(a1 + 144))
            {
              goto LABEL_44;
            }
          }

LABEL_51:
          C3BaseRelease(a2);
          if (v45)
          {
            return;
          }

          goto LABEL_52;
        }

        v27 = mmcs_logging_logger_default(v10, v5);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL job. Ignoring");
        v26 = mmcs_logging_logger_default(v24, v28);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v24;
          goto LABEL_21;
        }
      }

      else
      {
        v23 = mmcs_logging_logger_default(v10, v5);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
        v26 = mmcs_logging_logger_default(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v24;
LABEL_21:
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }
      }

      if (!v24)
      {
        return;
      }

LABEL_52:
      CFRelease(v24);
    }
  }
}

__CFString *mmcs_key_description_create_with_bytes(int8x16_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBECE8];
  if (a2 && a3)
  {
    v7 = hextostrdup(a1->i8, 1uLL);
    --v4;
    v5 = (v5 + 1);
  }

  else
  {
    v7 = 0;
    if (!a1)
    {
      v9 = @"NULL keyData";
      goto LABEL_21;
    }
  }

  if (!v4)
  {
    v9 = @"0-length keyData";
    goto LABEL_21;
  }

  if (mmcs_zcmp(v5, v4))
  {
    v8 = CFStringCreateWithFormat(*v6, 0, @"zero-filled %llu bytes", v4);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"zero-filled";
    }

    goto LABEL_21;
  }

  *md = 0u;
  v25 = 0u;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v5, v4);
  CC_SHA256_Final(md, &c);
  v10 = *v6;
  v11 = XCFDataCreateWithBytesNoCopy(*v6, md, 6, *MEMORY[0x277CBED00]);
  if (v11)
  {
    v12 = v11;
    v13 = mmcs_base64_encode_cfdata_to_cstring(v11);
    if (v13)
    {
      v14 = v13;
      v15 = strlen(v13);
      v16 = XCFStringCreateWithBytesNoCopy(v10, v14, v15, 0x600u, 0, *MEMORY[0x277CBECF0]);
      if (!v16)
      {
        CFRelease(v12);
        free(v14);
        v16 = @"Error-Wrapping-Serialized-Hash";
        goto LABEL_19;
      }
    }

    else
    {
      v16 = @"Error-Serializing-Hash";
    }

    CFRelease(v12);
  }

  else
  {
    v16 = @"Error-Wrapping-Hash";
  }

LABEL_19:
  v9 = CFStringCreateWithFormat(v10, 0, @"%llu bytes with hash %@", v4, v16);
  CFRelease(v16);
  if (!v9)
  {
    v9 = @"non-zero-filled";
  }

LABEL_21:
  v17 = *v6;
  if (a3)
  {
    v18 = "error";
    if (v7)
    {
      v18 = v7;
    }

    v19 = CFStringCreateWithFormat(v17, 0, @"KeyWithScheme<%s,%@>", v18, v9);
  }

  else
  {
    v19 = CFStringCreateWithFormat(v17, 0, @"Key<%@>", v9, v22);
  }

  v20 = v19;
  CFRelease(v9);
  if (v7)
  {
    free(v7);
  }

  if (v20)
  {
    return v20;
  }

  else
  {
    return @"Key<Error>";
  }
}

__CFString *mmcs_key_description_create_with_cfdata(const __CFData *a1, int a2)
{
  if (!a1)
  {
    return @"Key<NULL key>";
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return mmcs_key_description_create_with_bytes(BytePtr, Length, a2);
}

uint64_t mmcs_proxy_locator_should_disable_for_request(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  dataclass = mmcs_request_get_dataclass(a1);
  v4 = mmcs_logging_logger_default(dataclass, v3);
  if (!dataclass)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request does not have a dataclass");
    v17 = mmcs_logging_logger_default(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v15;
LABEL_26:
      _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_27:
    if (v15)
    {
      CFRelease(v15);
    }

    return 0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine dataclass: %@", dataclass);
    v7 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v8 = 1;
  if (CFStringCompare(dataclass, @"com.apple.Dataclass.Messenger", 1uLL))
  {
    v8 = 1;
    if (CFStringCompare(dataclass, @"com.apple.Dataclass.Backup", 1uLL))
    {
      v8 = 1;
      if (CFStringCompare(dataclass, @"com.apple.Dataclass.MediaStream", 1uLL))
      {
        v8 = 1;
        if (CFStringCompare(dataclass, @"com.apple.Dataclass.FaceTime", 1uLL))
        {
          v8 = 1;
          if (CFStringCompare(dataclass, @"com.apple.Dataclass.SharePlay", 1uLL))
          {
            if (!mmcs_request_is_cloudkit_dataclass(a1))
            {
              return 0;
            }

            container_identifier = mmcs_request_get_container_identifier(a1);
            v11 = mmcs_logging_logger_default(container_identifier, v10);
            if (container_identifier)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"container id is %@", container_identifier);
                v14 = mmcs_logging_logger_default(v12, v13);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v21 = v12;
                  _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                if (v12)
                {
                  CFRelease(v12);
                }
              }

              v8 = 1;
              if (CFStringCompare(container_identifier, @"com.apple.backup.ios", 1uLL) == kCFCompareEqualTo)
              {
                return v8;
              }

              v8 = 1;
              if (CFStringCompare(container_identifier, @"iCloud.com.apple.Feldspar", 1uLL) == kCFCompareEqualTo)
              {
                return v8;
              }

              v8 = 1;
              if (CFStringCompare(container_identifier, @"com.apple.freeform", 1uLL) == kCFCompareEqualTo)
              {
                return v8;
              }

              return 0;
            }

            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              return 0;
            }

            v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request via cloudkit does not have a container identifier");
            v17 = mmcs_logging_logger_default(v15, v19);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v21 = v15;
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t mmcs_proxy_locator_create(uint64_t *a1, CFArrayRef theArray, const void *a3)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  result = 0;
  if (a3)
  {
    if (Count)
    {
      *a1 = 0;
      v8 = C3TypeRegister(&mmcs_proxy_locatorGetTypeID_typeID, &kmmcs_proxy_locatorContextClass);
      result = C3TypeCreateInstance_(0, v8, 0x20uLL);
      if (result)
      {
        v9 = result;
        *(result + 20) = 0;
        Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], theArray);
        *(v9 + 32) = Copy;
        *(v9 + 40) = 0;
        *(v9 + 42) = 0;
        if (Copy)
        {
          *(v9 + 24) = a3;
          C3BaseRetain(a3);
          *a1 = v9;
          return 1;
        }

        else
        {
          C3BaseRelease(v9);
          return 0;
        }
      }
    }
  }

  return result;
}

void mmcs_proxy_locator_invalidate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v2)
    {
      C3BaseRelease(v2);
    }
  }
}

CFIndex mmcs_proxy_locator_locate(uint64_t a1, uint64_t a2)
{
  C3BaseRetain(a1);
  *(a1 + 40) = 1;
  result = CFArrayGetCount(*(a1 + 32));
  if (result >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CBECE8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v4);
      v7 = mmcs_container_copy_vendor_url(ValueAtIndex);
      Options = getLocateOptions();
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, Options);
      v10 = mmcs_request_copy_persistent_identifier(*(a1 + 24));
      CFDictionaryAddValue(MutableCopy, @"x-apple-persistent-identifier", v10);
      ACSLocateCachingServer();
      if (v7)
      {
        CFRelease(v7);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      ++v4;
      result = CFArrayGetCount(*(a1 + 32));
    }

    while (v4 < result);
  }

  return result;
}

void __mmcs_proxy_locator_locate_block_invoke(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v8 = mmcs_chunk_instance_offset(*(*(a1 + 40) + 24));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __mmcs_proxy_locator_locate_block_invoke_2;
  v12[3] = &unk_279845578;
  v14 = cf;
  v15 = a3;
  v9 = *(a1 + 48);
  v16 = a4;
  v17 = v9;
  v13 = *(a1 + 32);
  v10 = *(v8 + 56);
  C3BaseRetain(v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __runOnMainRunLoop_block_invoke;
  block[3] = &unk_2798455C8;
  block[4] = v12;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  mmcs_perform_target_async(*(v8 + 56), v11);
  if (v10)
  {
    C3BaseRelease(v10);
  }

  _Block_release(v11);
}

void __mmcs_proxy_locator_locate_block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  ++*(v2 + 20);
  Count = CFArrayGetCount(*(v2 + 32));
  v5 = Count;
  v6 = *(a1 + 40);
  v7 = *(v6 + 20);
  if (!*(v6 + 41))
  {
    v13 = *(a1 + 64);
    if (*(a1 + 48))
    {
      if (!v13)
      {
        CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x277CEEEF0]);
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 32), *(a1 + 72));
        mmcs_container_create_proxy_transaction(ValueAtIndex);
        goto LABEL_28;
      }
    }

    else if (!v13)
    {
      v27 = mmcs_logging_logger_default(0, v4);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with no error");
      v26 = mmcs_logging_logger_default(v19, v28);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v35 = v19;
      goto LABEL_24;
    }

    Domain = CFErrorGetDomain(v13);
    Code = CFEqual(Domain, *MEMORY[0x277CBEE48]);
    if (Code)
    {
      Code = CFErrorGetCode(*(a1 + 64));
      if (Code == 60)
      {
        v18 = mmcs_logging_logger_default(60, v17);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with error: %@", *(a1 + 64));
        v21 = mmcs_logging_logger_default(v19, v20);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_26;
        }

        *buf = 138543362;
        v35 = v19;
        v22 = v21;
        v23 = OS_LOG_TYPE_DEBUG;
        goto LABEL_25;
      }
    }

    v24 = mmcs_logging_logger_default(Code, v17);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with error: %@", *(a1 + 64));
    v26 = mmcs_logging_logger_default(v19, v25);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v35 = v19;
LABEL_24:
    v22 = v26;
    v23 = OS_LOG_TYPE_ERROR;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v22, v23, "%{public}@", buf, 0xCu);
LABEL_26:
    if (v19)
    {
      CFRelease(v19);
    }

LABEL_28:
    if (v5 != v7)
    {
      goto LABEL_34;
    }

    *(*(a1 + 40) + 40) = 0;
    (*(*(a1 + 32) + 16))();
    v12 = *(a1 + 40);
    if (!v12)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v8 = mmcs_logging_logger_default(Count, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"proxy locator was cancelled. bailing.");
    v11 = mmcs_logging_logger_default(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v9;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (v5 == v7)
  {
    v12 = *(a1 + 40);
    *(v12 + 40) = 0;
LABEL_30:
    v29 = *(v12 + 24);
    *(v12 + 24) = 0;
    if (v29)
    {
      C3BaseRelease(v29);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      C3BaseRelease(v30);
    }
  }

LABEL_34:
  v31 = *(a1 + 48);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 56);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(a1 + 64);
  if (v33)
  {
    CFRelease(v33);
  }
}

void mmcs_proxy_locator_cancel(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cancelling ACS locator. disregarding any callbacks.");
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    os_unfair_lock_lock((a1 + 16));
    *(a1 + 41) = 257;
    os_unfair_lock_unlock((a1 + 16));
  }
}

uint64_t mmcs_proxy_locator_is_locating(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t mmcs_proxy_locator_is_done(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 42);
  }

  else
  {
    return 1;
  }
}

uint64_t mmcs_proxy_locator_finish(uint64_t result)
{
  if (result)
  {
    *(result + 42) = 1;
  }

  return result;
}

void _mmcs_proxy_locatorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    C3BaseRelease(v3);
  }

  *(a1 + 24) = 0;
}

CFURLRef _LocatorVars_init_once()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  v2 = MEMORY[0x277CBF150];
  sLocateOptions = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, v2);
  v4 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF00], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF08], v4);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF10], v4);
  CFDictionaryAddValue(sLocateOptions, *MEMORY[0x277CEEEF8], Mutable);
  CFDictionaryAddValue(sLocateOptions, *MEMORY[0x277CEEF18], v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = XCFURLCreateWithCString("https://www.apple.com");
  sDummyURL = result;
  return result;
}

void mmcs_get_state_invalidate(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2.length = CFArrayGetCount(*(a1 + 40));
    v2.location = 0;

    CFArrayApplyFunction(v1, v2, mmcs_container_invalidate_applier, 0);
  }
}

void mmcs_get_state_dealloc(void *a1)
{
  *a1 = 0;
  v2 = a1[4];
  if (v2)
  {
    if (!a1[1])
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      mmcs_get_file_finalize((a1[4] + v3));
      ++v4;
      v3 += 128;
    }

    while (v4 < a1[1]);
    v2 = a1[4];
    if (v2)
    {
LABEL_6:
      free(v2);
    }

    a1[4] = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[10] = 0;
  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[9] = 0;
  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[5] = 0;
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[6] = 0;
  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[7] = 0;
  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[8] = 0;
  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[11] = 0;
  v12 = a1[12];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[12] = 0;
  v13 = a1[13];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

BOOL mmcs_get_state_init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a3 >> 57)
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Multiplication overflow detected in computing the memory size to be allocated");
    v7 = mmcs_logging_logger_default(v5, v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  v9 = a3 << 7;
  v10 = malloc_type_malloc(a3 << 7, 0x10300402E4D67E1uLL);
  *(a1 + 32) = v10;
  if (!v10)
  {
    v24 = mmcs_logging_logger_default(0, v11);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v25);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  bzero(v10, v9);
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &containerArrayCallbacks);
  *(a1 + 40) = Mutable;
  if (!Mutable)
  {
    v26 = mmcs_logging_logger_default(0, v14);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(v12, 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v27);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  v15 = CFArrayCreateMutable(v12, 0, &containerArrayCallbacks);
  *(a1 + 48) = v15;
  if (!v15)
  {
    v28 = mmcs_logging_logger_default(0, v16);
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(v12, 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v29);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  v17 = CFArrayCreateMutable(v12, 0, &containerArrayCallbacks);
  *(a1 + 56) = v17;
  if (!v17)
  {
    v30 = mmcs_logging_logger_default(0, v18);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(v12, 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v31);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  v19 = CFArrayCreateMutable(v12, 0, &containerArrayCallbacks);
  *(a1 + 64) = v19;
  if (!v19)
  {
    v32 = mmcs_logging_logger_default(0, v20);
    result = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v5 = CFStringCreateWithFormat(v12, 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v33);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
    goto LABEL_30;
  }

  v21 = CFDictionaryCreateMutable(v12, 0, 0, 0);
  *(a1 + 104) = v21;
  if (v21)
  {
    keyCallBacks = *byte_2868BF068;
    v23 = MEMORY[0x277CBF150];
    *(a1 + 80) = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, MEMORY[0x277CBF150]);
    v36 = *byte_2868BF098;
    *(a1 + 72) = CFDictionaryCreateMutable(v12, 0, &v36, v23);
    *(a1 + 88) = CFDictionaryCreateMutable(v12, 0, &chunkReferenceSignatureEqualityDictionaryKeyCallbacks, 0);
    *(a1 + 96) = CFSetCreateMutable(v12, 0, &chunkReferenceSignatureEqualitySetCallbacks);
    return 1;
  }

  v34 = mmcs_logging_logger_default(0, v22);
  result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = CFStringCreateWithFormat(v12, 0, @"malloc");
    v7 = mmcs_logging_logger_default(v5, v35);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      if (v5)
      {
        CFRelease(v5);
      }

      return 0;
    }

    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
LABEL_30:
    _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", &keyCallBacks, 0xCu);
    goto LABEL_31;
  }

  return result;
}

BOOL mmcs_get_state_create(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v6 = malloc_type_malloc(0x70uLL, 0x10200409DBB4D49uLL);
  if (v6)
  {
    v8 = v6;
    if (mmcs_get_state_init(v6, a2, a3))
    {
      *a1 = v8;
      return 1;
    }

    mmcs_get_state_dealloc(v8);
  }

  else
  {
    v10 = mmcs_logging_logger_default(0, v7);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
    v13 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", &v14, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return 0;
}

uint64_t mmcs_get_file_omit_containers_not_needed(uint64_t a1, char *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = 0;
  v5 = 1;
  v6 = 1;
  do
  {
    v7 = *(a1 + 32) + v4;
    if (!*(v7 + 115) && !mmcs_item_is_derivative(*(v7 + 8)) && !mmcs_item_is_metadata_only(*(v7 + 8)))
    {
      v6 = 0;
    }

    v8 = v5++ >= *(a1 + 16);
    v4 += 128;
  }

  while (!v8 && v6 != 0);
  if (v6)
  {
LABEL_13:
    v10 = *(a1 + 48);
    v50.length = CFArrayGetCount(v10);
    v50.location = 0;
    CFArrayApplyFunction(v10, v50, mmcs_get_container_set_needed_applier, 0);
LABEL_14:
    v44 = 0;
    goto LABEL_15;
  }

  Count = CFArrayGetCount(*(a1 + 48));
  if (!Count)
  {
    goto LABEL_14;
  }

  v13 = Count;
  v44 = 0;
  v14 = 0;
  v15 = *MEMORY[0x277CBECE8];
  v42 = a2;
  v43 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v14);
    container_copy_chunk_reference_set = mmcs_get_container_copy_chunk_reference_set(ValueAtIndex);
    context = 0;
    CFSetApplyFunction(container_copy_chunk_reference_set, count_bytes_applier, &context);
    v20 = mmcs_logging_logger_default(v18, v19);
    container_copy_simple_description = 0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      container_copy_simple_description = mmcs_get_container_copy_simple_description(ValueAtIndex);
    }

    v22 = CFSetGetCount(container_copy_chunk_reference_set);
    XCFSetRemoveValuesFromSet(container_copy_chunk_reference_set, *(a1 + 96));
    v23 = CFSetGetCount(container_copy_chunk_reference_set);
    if (v22 == v23)
    {
      v25 = mmcs_logging_logger_default(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = CFStringCreateWithFormat(v15, 0, @"Omitting the download of container %@ which not needed.", container_copy_simple_description);
        v28 = mmcs_logging_logger_default(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v48 = v26;
          _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }

      mmcs_get_container_set_needed(ValueAtIndex, 0);
    }

    else
    {
      v45 = 0;
      CFSetApplyFunction(container_copy_chunk_reference_set, count_bytes_applier, &v45);
      v31 = mmcs_logging_logger_default(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = context;
        v33 = v15;
        v34 = v22 - CFSetGetCount(container_copy_chunk_reference_set);
        v35 = context - v45;
        v36 = CFSetGetCount(container_copy_chunk_reference_set);
        v41 = v34;
        v15 = v33;
        v37 = CFStringCreateWithFormat(v33, 0, @"Container %@ has %ld chunks %llu bytes (%ld chunks %llu bytes needed, %ld chunks %llu bytes not needed).", container_copy_simple_description, v22, v32, v41, v35, v36, v45);
        v39 = mmcs_logging_logger_default(v37, v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v48 = v37;
          _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        a2 = v42;
        v13 = v43;
        if (v37)
        {
          CFRelease(v37);
        }
      }

      if (a2 && *a2 && (mmcs_get_req_context_force_get_chunks(*a1) || v45 > 0x7D000))
      {
        Value = CFDictionaryGetValue(*(a1 + 72), ValueAtIndex);
        CFSetApplyFunction(Value, file_skip_container_and_get_chunks, ValueAtIndex);
        mmcs_get_container_set_needed(ValueAtIndex, 0);
        v44 = 1;
      }
    }

    if (container_copy_simple_description)
    {
      CFRelease(container_copy_simple_description);
    }

    if (container_copy_chunk_reference_set)
    {
      CFRelease(container_copy_chunk_reference_set);
    }

    ++v14;
  }

  while (v13 != v14);
LABEL_15:
  if (a2)
  {
    *a2 = v44;
  }

  return 1;
}

void mmcs_get_state_decrement_outstanding_chunk_references_count(CFDictionaryRef *a1, const void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  value = -1;
  v5 = mmcs_chunk_reference_copy_description(a2);
  if (!CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
  {
    mmcs_get_state_decrement_outstanding_chunk_references_count_cold_5();
  }

  v6 = a1 + 11;
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1[11], a2, &value);
  if (!ValueIfPresent)
  {
    mmcs_get_state_decrement_outstanding_chunk_references_count_cold_4(a1 + 11, v5);
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v9 = mmcs_logging_logger_default(ValueIfPresent, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"trying to remove chunk %@ with count %ld", v5, value);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v32 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  if (value < 2)
  {
    if (value != 1)
    {
      if (CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
      {
        mmcs_get_state_decrement_outstanding_chunk_references_count_cold_1(&value, v5);
      }

      mmcs_get_state_decrement_outstanding_chunk_references_count_cold_2();
    }

    CFDictionaryRemoveValue(a1[11], a2);
    CFSetRemoveValue(a1[12], a2);
  }

  else
  {
    value = value - 1;
    if (!CFSetContainsValue(a1[12], a2))
    {
      mmcs_get_state_decrement_outstanding_chunk_references_count_cold_3();
    }

    v13 = CFSetGetValue(a1[12], a2);
    v14 = v13;
    if (gMMCS_DebugLevel >= 5)
    {
      v15 = mmcs_chunk_reference_copy_description(v13);
      v17 = v15;
      if (gMMCS_DebugLevel >= 5)
      {
        v18 = mmcs_logging_logger_default(v15, v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"found heap chunk reference %@", v17);
          v21 = mmcs_logging_logger_default(v19, v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v32 = v19;
            _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    CFDictionaryReplaceValue(*v6, v14, value);
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v24 = mmcs_logging_logger_default(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *MEMORY[0x277CBECE8];
      v26 = CFAbsoluteTimeGetCurrent();
      v27 = CFStringCreateWithFormat(v25, 0, @"removing chunk from maintained structure took %.6fus", (v26 - Current) * 1000000.0);
      v29 = mmcs_logging_logger_default(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t mmcs_get_state_all_outstanding_chunk_references_contains_chunk(CFSetRef *a1, const void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (!CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
  {
    mmcs_get_state_all_outstanding_chunk_references_contains_chunk_cold_1();
  }

  v5 = CFSetContainsValue(a1[12], a2);
  v7 = v5;
  if (gMMCS_DebugLevel >= 5)
  {
    v8 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = CFStringCreateWithFormat(v9, 0, @"consulting maintained structure took %.6fus", (v10 - Current) * 1000000.0);
      v13 = mmcs_logging_logger_default(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  return v7;
}

uint64_t mmcs_get_state_process_file_list(uint64_t a1, void *a2, int a3, int a4, CFTypeRef *a5)
{
  v6 = a1;
  v410 = *MEMORY[0x277D85DE8];
  v407[0] = 0;
  v407[1] = 0;
  value = 0;
  v406 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  Count = CFArrayGetCount(*(a1 + 40));
  v383 = *(v6 + 16);
  v8 = *v6;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v394 = CFDictionaryCreateMutable(v9, 0, 0, 0);
  v397 = CFDictionaryCreateMutable(v9, 0, 0, 0);
  v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], 0);
  v12 = a2[5];
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(a2[6] + 8 * i);
      v15 = v14[12];
      if (v15)
      {
        *valuePtr = *(v15 + 32) | (*(v15 + 24) << 32);
        v16 = CFNumberCreate(v9, kCFNumberSInt64Type, valuePtr);
        if (!v16)
        {
          goto LABEL_307;
        }

        v17 = v16;
        CFDictionaryAddValue(v11, v16, v14);
        CFRelease(v17);
        v12 = a2[5];
      }
    }
  }

  theDict = v11;
  alloc = v9;
  v399 = v6;
  v395 = v8;
  if (a2[3])
  {
    v18 = 0;
    v19 = &valuePtr[8];
    while (1)
    {
      v387 = v18;
      v20 = *(a2[4] + 8 * v18);
      if (value)
      {
        C3BaseRelease(value);
      }

      value = 0;
      container_create = mmcs_get_container_create(&value, v6, v20);
      if (!container_create)
      {
        v286 = mmcs_logging_logger_default(container_create, v22);
        v259 = Mutable;
        v260 = v394;
        if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
        {
          v287 = CFStringCreateWithFormat(v9, 0, @"mmcs_get_container_create");
          v289 = mmcs_logging_logger_default(v287, v288);
          if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v287;
            _os_log_impl(&dword_2577D8000, v289, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v287)
          {
            CFRelease(v287);
          }
        }

        error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"mmcs_get_container_create failed");
LABEL_376:
        LOBYTE(v19) = 0;
        v406 = error;
        goto LABEL_377;
      }

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(*(value + 10), &state);
      v25 = mmcs_logging_logger_default(v23, v24);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v26)
      {
        v27 = strlen(*(v20 + 48));
        v28 = CFStringCreateWithBytes(v9, *(v20 + 48), v27, 0x8000100u, 0);
        v29 = COERCE_DOUBLE(mmcs_container_id_info_parse_container_id(v28));
        v31 = v29;
        if (v29 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v29 = COERCE_DOUBLE(XCFAbsoluteTimeDateFormatterCreateString(v29));
          v32 = v29;
        }

        v33 = mmcs_logging_logger_default(*&v29, v30);
        v26 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (v26)
        {
          v34 = -1.0;
          if (v31 != 0.0)
          {
            v34 = CFAbsoluteTimeGetCurrent() - v31;
          }

          *valuePtr = 138543874;
          *&valuePtr[4] = v28;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v34;
          *&valuePtr[22] = 2114;
          *&valuePtr[24] = v32;
          _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_INFO, "Container %{public}@ upload authorized %0.4lf seconds ago at %{public}@", valuePtr, 0x20u);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        v6 = v399;
        if (v32 != 0.0)
        {
          CFRelease(*&v32);
        }
      }

      v35 = *(v8 + 112);
      if (v35)
      {
        v26 = mmcs_container_set_http_clock_skew_metrics(value, v35);
      }

      v36 = *(v20 + 64);
      if (*(v20 + 32))
      {
        break;
      }

      if (!v36)
      {
LABEL_306:
        os_activity_scope_leave(&state);
        goto LABEL_307;
      }

      v37 = 0;
      v38 = 0;
      v39 = *(v20 + 72);
      do
      {
        if (*(*v39 + 24))
        {
          v37 = 1;
        }

        else
        {
          if (!*(*v39 + 32))
          {
            goto LABEL_306;
          }

          v38 = 1;
        }

        v39 += 8;
        --v36;
      }

      while (v36);
      if (v37 && v38)
      {
        v329 = mmcs_logging_logger_default(v26, v35);
        if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_2577D8000, v329, OS_LOG_TYPE_ERROR, "Container contains both ford and chunks.", valuePtr, 2u);
        }

        v406 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, @"Container contains both ford and chunks.");
        goto LABEL_306;
      }

      if (v37)
      {
        goto LABEL_41;
      }

      if (!v38)
      {
        mmcs_get_state_process_file_list_cold_1();
      }

      CFArrayAppendValue(*(v6 + 56), value);
      *(*(value + 11) + 176) = 2;
      v45 = mmcs_logging_logger_default(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *valuePtr = 0;
        _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_INFO, "ContainerType: MMCSGetContainerTypeFORD", valuePtr, 2u);
      }

      mmcs_get_container_set_needed(value, 0);
LABEL_47:
      CFArrayAppendValue(*(v6 + 40), value);
      v46 = *(value + 2);
      v47 = *(v20 + 24);
      http_request_options = mmcs_request_get_http_request_options(*v6);
      should_disable_vendor_tls = mmcs_request_should_disable_vendor_tls(*v6);
      v50 = mmcs_http_request_create_with_host_info((v46 + 24), v47, http_request_options, should_disable_vendor_tls, &v406);
      if (!v50)
      {
        v295 = mmcs_logging_logger_default(v50, v51);
        if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
        {
          v296 = CFStringCreateWithFormat(v9, 0, @"Unable to create message for container %s", *(*(value + 11) + 16));
          v298 = mmcs_logging_logger_default(v296, v297);
          if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v296;
            _os_log_impl(&dword_2577D8000, v298, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v296)
          {
            CFRelease(v296);
          }
        }

        goto LABEL_306;
      }

      url_expiry_override = mmcs_request_get_url_expiry_override(v395);
      if (url_expiry_override)
      {
        v54 = mmcs_logging_logger_default(url_expiry_override, v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v55 = CFStringCreateWithFormat(v9, 0, @"overriding url expiry %llu from content server", *(*(v20 + 24) + 120));
          v57 = mmcs_logging_logger_default(v55, v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v55;
            _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
          }

          if (v55)
          {
            CFRelease(v55);
          }
        }

        v58 = *(*(value + 2) + 24);
        v59 = mmcs_request_get_url_expiry_override(v395);
        mmcs_http_request_override_url_expiry(v58, v59);
      }

      v60 = *(*(v20 + 24) + 128);
      if (v60)
      {
        v61 = strlen(*(v60 + 24));
        v62 = CFStringCreateWithBytes(v9, *(v60 + 24), v61, 0x8000100u, 0);
        v63 = strlen(*(v60 + 32));
        v64 = CFStringCreateWithBytes(v9, *(v60 + 32), v63, 0x8000100u, 0);
        v65 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(value + 4) = v65;
        CFDictionaryAddValue(v65, v62, v64);
        v68 = mmcs_logging_logger_default(v66, v67);
        v69 = mmcs_logging_log_header_level(v62);
        url_expiry_override = os_log_type_enabled(v68, v69);
        if (url_expiry_override)
        {
          *valuePtr = 138543618;
          *&valuePtr[4] = v62;
          *&valuePtr[12] = 2114;
          *&valuePtr[14] = v64;
          _os_log_impl(&dword_2577D8000, v68, v69, "AcceleratorRequestHeader (%{public}@:%{public}@)", valuePtr, 0x16u);
        }

        if (v62)
        {
          CFRelease(v62);
        }

        if (v64)
        {
          CFRelease(v64);
        }
      }

      v70 = *(v20 + 64) + *(v20 + 32);
      if (v70)
      {
        v71 = 0;
        while (1)
        {
          if (*(v20 + 32))
          {
            v72 = *(*(v20 + 40) + 8 * v71);
            goto LABEL_66;
          }

          v83 = *(*(v20 + 72) + 8 * v71);
          if (!*(v83 + 32))
          {
            v72 = *(v83 + 24);
            if (!v72)
            {
              v271 = mmcs_logging_logger_default(url_expiry_override, v53);
              v272 = os_log_type_enabled(v271, OS_LOG_TYPE_ERROR);
              v6 = v399;
              v259 = Mutable;
              v260 = v394;
              if (v272)
              {
                v273 = CFStringCreateWithFormat(alloc, 0, @"Unknown element type.");
                v275 = mmcs_logging_logger_default(v273, v274);
                if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v273;
                  _os_log_impl(&dword_2577D8000, v275, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                }

                if (v273)
                {
                  CFRelease(v273);
                }
              }

              goto LABEL_325;
            }

LABEL_66:
            if (v71)
            {
              url_expiry_override = ProtobufCBinaryData_Equals(v407, v72 + 24);
              if (url_expiry_override)
              {
                goto LABEL_114;
              }
            }

            ProtobufCBinaryData_SetCopyBufferLen(v407, *(v72 + 32), *(v72 + 24));
            v73 = CKChunkSchemeAndSignatureSize();
            v74 = *(v72 + 24);
            if (v73 != v74)
            {
              v246 = hextostrdup(*(v72 + 32), v74);
              v248 = mmcs_logging_logger_default(v246, v247);
              if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
              {
                v249 = CKChunkSchemeAndSignatureSize();
                v250 = CFStringCreateWithFormat(alloc, 0, @"Chunk rejected (%s): unexpected signature size. Expected: %lu, got: %lu.", v246, v249, *(v72 + 24));
                v252 = mmcs_logging_logger_default(v250, v251);
                if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v250;
                  _os_log_impl(&dword_2577D8000, v252, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                }

                if (v250)
                {
                  CFRelease(v250);
                }
              }

              v253 = CKChunkSchemeAndSignatureSize();
              v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk rejected (%s): unexpected signature size. Expected: %lu, got: %lu.", v254, v255, v256, v257, v258, v246, v253, *(v72 + 24));
              v6 = v399;
              if (v246)
              {
                free(v246);
              }

              goto LABEL_306;
            }

            if (!a3 && !mmcs_get_req_get_chunk_reference(*v399, *(v72 + 64), *(v72 + 32), 0))
            {
              v75 = hextostrdup(*(v72 + 32), *(v72 + 24));
              v77 = mmcs_logging_logger_default(v75, v76);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = CFStringCreateWithFormat(alloc, 0, @"Unknown chunk %s received", v75);
                v80 = mmcs_logging_logger_default(v78, v79);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v78;
                  _os_log_impl(&dword_2577D8000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
                }

                if (v78)
                {
                  CFRelease(v78);
                }
              }

              if (v75)
              {
                free(v75);
              }
            }

            buf[0] = 0;
            v402 = 0;
            if (*(v72 + 68))
            {
              v81 = *(v72 + 72);
              v82 = &v403;
            }

            else
            {
              v82 = 0;
              v81 = 0;
            }

            v403 = v81;
            url_expiry_override = mmcs_get_container_add_chunk_instance(value, *(v72 + 64), v82, *(v72 + 32), buf, &v402, &v406);
            if (url_expiry_override)
            {
              if (gMMCS_DebugLevel >= 4)
              {
                v93 = hextostrdup(*(v72 + 32), *(v72 + 24));
                v95 = mmcs_logging_logger_chunk(v93, v94);
                url_expiry_override = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
                if (url_expiry_override)
                {
                  v96 = *(v20 + 64) + *(v20 + 32);
                  v97 = *(v72 + 64);
                  v98 = "true";
                  if (!*(v72 + 68))
                  {
                    v98 = "false";
                  }

                  *valuePtr = 134219266;
                  *&valuePtr[4] = v71 + 1;
                  *&valuePtr[12] = 2048;
                  *&valuePtr[14] = v96;
                  *&valuePtr[22] = 1024;
                  *&valuePtr[24] = v97;
                  *&valuePtr[28] = 2080;
                  *&valuePtr[30] = v98;
                  *&valuePtr[38] = 2048;
                  *&valuePtr[40] = v403;
                  *&valuePtr[48] = 2082;
                  *&valuePtr[50] = v93;
                  _os_log_impl(&dword_2577D8000, v95, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu with byteLength %u and offset %s:%llu has signature %{public}s", valuePtr, 0x3Au);
                }

                if (v93)
                {
                  free(v93);
                }
              }

              if (!v402)
              {
                *(v72 + 32) = 0;
              }

              if (buf[0])
              {
                v99 = 0;
                goto LABEL_113;
              }

              v100 = hextostrdup(*(v72 + 32), *(v72 + 24));
              v102 = mmcs_logging_logger_default(v100, v101);
              url_expiry_override = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
              if (url_expiry_override)
              {
                *valuePtr = 136446210;
                *&valuePtr[4] = v100;
                _os_log_impl(&dword_2577D8000, v102, OS_LOG_TYPE_ERROR, "Chunk with signature %{public}s couldn't find associated chunk reference.", valuePtr, 0xCu);
              }

              if (v100)
              {
                free(v100);
              }
            }

            goto LABEL_112;
          }

          ProtobufCBinaryData_SetCopyBufferLen(v407, 0, 0);
          if (!*(*(v83 + 32) + 24))
          {
            v261 = mmcs_logging_logger_default(v84, v85);
            v6 = v399;
            if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v261, OS_LOG_TYPE_ERROR, "FORD Info must have non-zero length.", valuePtr, 2u);
            }

            v406 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, @"FORD Info must have non-zero length.");
            v259 = Mutable;
            v260 = v394;
LABEL_325:
            os_activity_scope_leave(&state);
            goto LABEL_326;
          }

          v403 = v71 | (v387 << 32);
          v86 = CFNumberCreate(alloc, kCFNumberSInt64Type, &v403);
          if (!v86)
          {
            v103 = mmcs_logging_logger_default(0, v87);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v103, OS_LOG_TYPE_ERROR, "Failed to generate CFNumberRef for storageContainerIndex", valuePtr, 2u);
            }

            v104 = 36;
            v105 = @"Failed to generate CFNumberRef for storageContainerIndex";
LABEL_111:
            url_expiry_override = mmcs_cferror_create_error(@"com.apple.mmcs", v104, v105);
            v406 = url_expiry_override;
LABEL_112:
            v99 = 5;
            goto LABEL_113;
          }

          v88 = v86;
          v89 = CFDictionaryGetValue(theDict, v86);
          CFRelease(v88);
          if (!v89)
          {
            v106 = mmcs_logging_logger_default(v90, v91);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v106, OS_LOG_TYPE_ERROR, "Failed to find fileChecksumChunkReferences for storageContainerIndex", valuePtr, 2u);
            }

            v104 = 1;
            v105 = @"Failed to find fileChecksumChunkReferences for storageContainerIndex";
            goto LABEL_111;
          }

          v92 = v89[14] ? ProtobufCBinaryData_CreateData((v89 + 16)) : 0;
          v107 = *(v89 + 4);
          v108 = *(v395 + 304);
          if (a3)
          {
            break;
          }

          v109 = *(v108 + 88);
          if (v109)
          {
            goto LABEL_120;
          }

          v123 = mmcs_logging_logger_default(0, v91);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            cfa = CFStringCreateWithFormat(alloc, 0, @"itemsForGetChunks is NULL");
            v125 = mmcs_logging_logger_default(cfa, v124);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0]) = 138543362;
              *(buf + 4) = cfa;
              _os_log_impl(&dword_2577D8000, v125, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (cfa)
            {
              CFRelease(cfa);
            }
          }

          v110 = 0;
          if (v92)
          {
            goto LABEL_121;
          }

LABEL_122:
          v111 = *(v83 + 32);
          if (v111[8])
          {
            v112 = v111[9];
            v113 = buf;
          }

          else
          {
            v113 = 0;
            v112 = 0;
          }

          buf[0] = v112;
          url_expiry_override = mmcs_get_container_add_ford_instance(value, v111[7], v113, v110, &v406);
          if (!url_expiry_override)
          {
            if (!v406)
            {
              v122 = mmcs_logging_logger_default(url_expiry_override, v53);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                *valuePtr = 0;
                _os_log_impl(&dword_2577D8000, v122, OS_LOG_TYPE_ERROR, "Unspecified error performing mmcs_get_container_add_ford_instance", valuePtr, 2u);
              }

              v104 = 1;
              v105 = @"Unspecified error performing mmcs_get_container_add_ford_instance";
              goto LABEL_111;
            }

            goto LABEL_112;
          }

          if (v110)
          {
            CFDictionaryAddValue(Mutable, v110, v89);
            container_set_needed = mmcs_get_container_set_needed(value, 1);
            v116 = mmcs_logging_logger_default(container_set_needed, v115);
            url_expiry_override = os_log_type_enabled(v116, OS_LOG_TYPE_INFO);
            if (url_expiry_override)
            {
              cf = mmcs_file_signature_to_hexstring(*v110);
              CStringDescription = XCFDataCreateCStringDescription(v110[6]);
              v119 = mmcs_logging_logger_default(CStringDescription, v118);
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                v120 = *(*(v83 + 32) + 28);
                v121 = v110[5];
                *valuePtr = 134219010;
                *&valuePtr[4] = buf[0];
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v120;
                *&valuePtr[22] = 2048;
                *&valuePtr[24] = v121;
                *&valuePtr[32] = 2082;
                *&valuePtr[34] = cf;
                *&valuePtr[42] = 2082;
                *&valuePtr[44] = CStringDescription;
                _os_log_impl(&dword_2577D8000, v119, OS_LOG_TYPE_INFO, "FORD container instance at offset %llu with length %llu for itemId:%llu sig:%{public}s ref:%{public}s", valuePtr, 0x34u);
              }

              url_expiry_override = cf;
              if (cf)
              {
                free(cf);
              }

              if (CStringDescription)
              {
                free(CStringDescription);
              }
            }
          }

          v99 = 32;
LABEL_113:
          if ((v99 | 0x20) != 0x20)
          {
            os_activity_scope_leave(&state);
            if (v99 != 5)
            {
              return v19;
            }

LABEL_310:
            LOBYTE(v19) = 0;
            v245 = 1;
            v6 = v399;
LABEL_308:
            v259 = Mutable;
            v260 = v394;
            goto LABEL_378;
          }

LABEL_114:
          if (v70 == ++v71)
          {
            goto LABEL_146;
          }
        }

        v109 = *(v108 + 80);
LABEL_120:
        memset(&valuePtr[56], 0, 360);
        memset(&valuePtr[8], 0, 40);
        *valuePtr = v107;
        *&valuePtr[48] = v92;
        v110 = CFSetGetValue(v109, valuePtr);
        if (!v92)
        {
          goto LABEL_122;
        }

LABEL_121:
        CFRelease(v92);
        goto LABEL_122;
      }

LABEL_146:
      os_activity_scope_leave(&state);
      v18 = v387 + 1;
      v9 = alloc;
      v6 = v399;
      v8 = v395;
      if ((v387 + 1) >= a2[3])
      {
        goto LABEL_147;
      }
    }

    if (v36)
    {
      goto LABEL_306;
    }

LABEL_41:
    CFArrayAppendValue(*(v6 + 48), value);
    *(*(value + 11) + 176) = 1;
    v42 = mmcs_logging_logger_default(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *valuePtr = 0;
      _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_INFO, "ContainerType: MMCSGetContainerTypeChunks", valuePtr, 2u);
    }

    goto LABEL_47;
  }

LABEL_147:
  v126 = theDict;
  if (theDict)
  {
    CFRelease(theDict);
  }

  v127 = *(v8 + 304);
  if (a3)
  {
    v128 = *(v127 + 80);
  }

  else
  {
    v128 = *(v127 + 88);
    if (!v128)
    {
      v262 = mmcs_logging_logger_default(v126, v10);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
      {
        v268 = CFStringCreateWithFormat(v9, 0, @"itemsForGetChunks is NULL");
        v270 = mmcs_logging_logger_default(v268, v269);
        if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v268;
          _os_log_impl(&dword_2577D8000, v270, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v268)
        {
          CFRelease(v268);
        }
      }

      v245 = 1;
      LOBYTE(v19) = 0;
      v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"itemsForGetChunks is NULL.", v263, v264, v265, v266, v267);
      goto LABEL_378;
    }
  }

  if (!a2[5])
  {
LABEL_220:
    if (a3)
    {
      v401 = CFArrayGetCount(*(v6 + 40));
      if (Count < v401)
      {
        v180 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v399 + 40), v180);
          v181 = ValueAtIndex[11];
          if (*(v181 + 48) >= 1)
          {
            break;
          }

LABEL_291:
          if (++v180 == v401)
          {
            goto LABEL_292;
          }
        }

        v182 = 0;
        v183 = 56;
        while (1)
        {
          v184 = *(v181 + 120);
          if (!mmcs_chunk_instance_is_ford((v184 + v183 - 56)))
          {
            if (!mmcs_chunk_instance_is_chunk_reference((v184 + v183 - 56)))
            {
              mmcs_get_state_process_file_list_cold_6();
            }

            first_chunk_instance = mmcs_chunk_reference_get_first_chunk_instance(*(v184 + v183));
            if (!first_chunk_instance || (v187 = first_chunk_instance, first_chunk_instance = mmcs_chunk_instance_is_chunk_reference((v184 + v183 - 56)), !first_chunk_instance))
            {
              v205 = mmcs_logging_logger_default(first_chunk_instance, v186);
              if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
              {
                *valuePtr = 0;
                _os_log_impl(&dword_2577D8000, v205, OS_LOG_TYPE_DEBUG, "Container chunk instance not referenced by file.", valuePtr, 2u);
              }

              goto LABEL_226;
            }

            v188 = CFDictionaryGetValue(v397, v187);
            if (!v188)
            {
              mmcs_get_state_process_file_list_cold_5();
            }

            v189 = v188;
            v190 = *(v184 + v183);
            v191 = *(v190 + 16);
            if (v188[10])
            {
              if (v191)
              {
                goto LABEL_248;
              }

              v192 = CFDictionaryGetValue(v394, v187);
              if (!v192)
              {
                v330 = mmcs_chunk_signature_to_hexstring(*(*(v184 + v183) + 8));
                v332 = mmcs_logging_logger_default(v330, v331);
                v6 = v399;
                if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                {
                  v338 = CFStringCreateWithFormat(alloc, 0, @"File state not found for chunk with signature %s in container %s at index %llu of %llu. Chunk reference %p", v330, *(ValueAtIndex[11] + 16), v182, *(v181 + 48), *(v184 + v183));
                  v340 = mmcs_logging_logger_default(v338, v339);
                  if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 138543362;
                    *&valuePtr[4] = v338;
                    _os_log_impl(&dword_2577D8000, v340, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                  }

                  if (v338)
                  {
                    CFRelease(v338);
                  }
                }

                v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"File state not found for chunk with signature %s in container %s at index %llu of %llu. Chunk reference %p", v333, v334, v335, v336, v337, v330, *(ValueAtIndex[11] + 16), v182, *(v181 + 48), *(v184 + v183));
                if (v330)
                {
                  free(v330);
                }

                goto LABEL_307;
              }

              v193 = v192;
              v194 = CFDataCreate(alloc, *(v189 + 7), *(v189 + 6));
              if (v194)
              {
                v195 = v193[1];
                keya = v194;
                if (*(v195 + 48))
                {
                  v196 = *(v195 + 56);
                  if (!v196)
                  {
                    mmcs_get_state_process_file_list_cold_3();
                  }

                  state.opaque[0] = 0;
                  Copy = mmcs_chunk_key_copy_wraptured_scheme_and_key(v194, v196, 0, &state);
                  if (Copy)
                  {
                    if (gMMCS_DebugLevel >= 4)
                    {
                      v198 = mmcs_item_copy_description(v195);
                      v200 = mmcs_logging_logger_default(v198, v199);
                      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
                      {
                        v201 = CFStringCreateWithFormat(alloc, 0, @"Unwrapped using item %@ ref %@", v198, *(v195 + 48));
                        v203 = mmcs_logging_logger_default(v201, v202);
                        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
                        {
                          *valuePtr = 138543362;
                          *&valuePtr[4] = v201;
                          _os_log_impl(&dword_2577D8000, v203, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                        }

                        if (v201)
                        {
                          v204 = v201;
                          goto LABEL_270;
                        }
                      }

                      goto LABEL_271;
                    }
                  }

                  else if (gMMCS_DebugLevel >= 4)
                  {
                    v198 = mmcs_item_copy_description(v195);
                    v224 = mmcs_logging_logger_default(v198, v223);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
                    {
                      v225 = CFStringCreateWithFormat(alloc, 0, @"Unable to unwrap using item %@ ref %@: %@", v198, *(v195 + 48), state.opaque[0]);
                      v227 = mmcs_logging_logger_default(v225, v226);
                      if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
                      {
                        *valuePtr = 138543362;
                        *&valuePtr[4] = v225;
                        _os_log_impl(&dword_2577D8000, v227, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                      }

                      if (v225)
                      {
                        v204 = v225;
LABEL_270:
                        CFRelease(v204);
                      }
                    }

LABEL_271:
                    if (v198)
                    {
                      CFRelease(v198);
                    }
                  }

                  if (state.opaque[0])
                  {
                    CFRelease(state.opaque[0]);
                  }
                }

                else
                {
                  Copy = CFDataCreateCopy(alloc, v194);
                }

                if (Copy)
                {
                  Length = CFDataGetLength(Copy);
                  if (Length < 1 || (v229 = Length, v230 = malloc_type_malloc(Length, 0x100004077774924uLL), v411.location = 0, v411.length = v229, CFDataGetBytes(Copy, v411, v230), *v230 < 0) || CKChunkSchemeAndEncryptionKeySize() != v229)
                  {
                    v308 = mmcs_key_description_create_with_cfdata(Copy, 1);
                    CFRelease(Copy);
                    v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"wrapped encryption key %@ once unwrapped is not valid: %@", v309, v310, v311, v312, v313, keya, v308);
                    v6 = v399;
                    if (v308)
                    {
                      CFRelease(v308);
                    }

                    goto LABEL_307;
                  }

                  CFRelease(Copy);
                  v231 = *(v184 + v183);
                  *(v231 + 16) = v230;
                  if (gMMCS_DebugLevel >= 4)
                  {
                    v232 = mmcs_chunk_signature_to_hexstring(*(v231 + 8));
                    v233 = *(*(v184 + v183) + 16);
                    v234 = CKChunkSchemeAndEncryptionKeySize();
                    v235 = mmcs_key_description_create_with_bytes(v233, v234, 1);
                    v237 = mmcs_logging_logger_default(v235, v236);
                    if (os_log_type_enabled(v237, OS_LOG_TYPE_DEBUG))
                    {
                      v238 = CFStringCreateWithFormat(alloc, 0, @"Unwrapped key %@ for chunk %s", v235, v232);
                      v240 = mmcs_logging_logger_default(v238, v239);
                      if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
                      {
                        *valuePtr = 138543362;
                        *&valuePtr[4] = v238;
                        _os_log_impl(&dword_2577D8000, v240, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                      }

                      if (v238)
                      {
                        CFRelease(v238);
                      }
                    }

                    if (v232)
                    {
                      free(v232);
                    }

                    if (v235)
                    {
                      CFRelease(v235);
                    }
                  }
                }

                v215 = keya;
LABEL_290:
                CFRelease(v215);
              }
            }

            else
            {
              if (v191)
              {
LABEL_248:
                if (gMMCS_DebugLevel < 4)
                {
                  goto LABEL_226;
                }

                v206 = mmcs_chunk_signature_to_hexstring(*(v190 + 8));
                v207 = *(*(v184 + v183) + 16);
                v208 = CKChunkSchemeAndEncryptionKeySize();
                v209 = mmcs_key_description_create_with_bytes(v207, v208, 1);
                v211 = mmcs_logging_logger_default(v209, v210);
                if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
                {
                  v212 = CFStringCreateWithFormat(alloc, 0, @"Re-using existing key %@ for chunk %s", v209, v206);
                  v214 = mmcs_logging_logger_default(v212, v213);
                  if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
                  {
                    *valuePtr = 138543362;
                    *&valuePtr[4] = v212;
                    _os_log_impl(&dword_2577D8000, v214, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                  }

                  if (v212)
                  {
                    CFRelease(v212);
                  }
                }

                if (v206)
                {
                  free(v206);
                }

                if (!v209)
                {
                  goto LABEL_226;
                }

                v215 = v209;
                goto LABEL_290;
              }

              if (**(v190 + 8) < 0)
              {
                v216 = CFDictionaryGetValue(v394, v187);
                if (!v216)
                {
                  mmcs_get_state_process_file_list_cold_4();
                }

                v217 = CFDictionaryGetValue(Mutable, v216[1]);
                if (!v217 || !v217[12])
                {
                  v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Encrypted chunk is not referenced by FORD or chunk encryption keys.", v218, v219, v220, v221, v222);
                  v6 = v399;
                  goto LABEL_307;
                }
              }
            }
          }

LABEL_226:
          ++v182;
          v183 += 104;
          if (v182 >= *(v181 + 48))
          {
            goto LABEL_291;
          }
        }
      }

LABEL_292:
      v6 = v399;
      v241 = *(v399 + 16);
      v242 = v241 - v383;
      if (v241 > v383)
      {
        v243 = v383 << 7;
        while (1)
        {
          v244 = (*(v399 + 32) + v243);
          if (!*(v244[1] + 104))
          {
            mmcs_get_state_initialize_duplicate_file_states(v399, v244, &v406);
            if (v406)
            {
              break;
            }
          }

          v243 += 128;
          if (!--v242)
          {
            goto LABEL_297;
          }
        }

LABEL_307:
        LOBYTE(v19) = 0;
        v245 = 1;
        goto LABEL_308;
      }

LABEL_297:
      if (!mmcs_get_state_setup_derivative_files_and_containers(v399, &v406))
      {
        goto LABEL_307;
      }
    }

    v245 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_308;
  }

  v129 = 0;
  if (v394)
  {
    v130 = v397 == 0;
  }

  else
  {
    v130 = 1;
  }

  v131 = v130;
  theDicta = v131;
  v386 = v128;
  while (1)
  {
    v132 = *(a2[6] + 8 * v129);
    if (*(v132 + 24) != 21)
    {
      v304 = mmcs_logging_logger_default(v126, v10);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
      {
        v305 = CFStringCreateWithFormat(alloc, 0, @"Bad length for file checksum length");
        v307 = mmcs_logging_logger_default(v305, v306);
        if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v305;
          _os_log_impl(&dword_2577D8000, v307, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v305)
        {
          CFRelease(v305);
        }
      }

      v379 = 21;
      v380 = *(v132 + 24);
      v285 = @"Bad length for file checksum, expected size: %d, got: %lu.";
      goto LABEL_374;
    }

    if (*(v132 + 56))
    {
      if (*(v132 + 64) == 21)
      {
        Data = ProtobufCBinaryData_CreateData((v132 + 64));
        goto LABEL_165;
      }

      v314 = mmcs_logging_logger_default(v126, v10);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
      {
        v315 = CFStringCreateWithFormat(alloc, 0, @"Bad length for reference signature length");
        v317 = mmcs_logging_logger_default(v315, v316);
        if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v315;
          _os_log_impl(&dword_2577D8000, v317, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v315)
        {
          CFRelease(v315);
        }
      }

      v379 = 21;
      v380 = *(v132 + 64);
      v285 = @"Bad length for reference signature, expected size: %d, got: %lu.";
LABEL_374:
      v318 = 6;
      goto LABEL_375;
    }

    Data = 0;
LABEL_165:
    memset(&valuePtr[48], 0, 368);
    memset(valuePtr, 0, 48);
    *valuePtr = *(v132 + 32);
    *&valuePtr[48] = Data;
    key = CFSetGetValue(v128, valuePtr);
    if (Data)
    {
      CFRelease(Data);
    }

    v134 = key;
    if (!key)
    {
      v146 = hextostrdup(*(v132 + 32), *(v132 + 24));
      v148 = v146;
      if (*(v132 + 56))
      {
        v146 = hextostrdup(*(v132 + 72), *(v132 + 64));
        v149 = v146;
      }

      else
      {
        v149 = 0;
      }

      v156 = mmcs_logging_logger_default(v146, v147);
      v126 = os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT);
      if (v126)
      {
        *valuePtr = 136315394;
        *&valuePtr[4] = v148;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = v149;
        _os_log_impl(&dword_2577D8000, v156, OS_LOG_TYPE_DEFAULT, "could not find item for signature %s reference %s", valuePtr, 0x16u);
      }

      if (v148)
      {
        free(v148);
      }

      if (v149)
      {
        free(v149);
      }

      goto LABEL_219;
    }

    v135 = *(v132 + 80);
    if (v135)
    {
      v136 = strlen(*(v132 + 80));
      v137 = CFStringCreateWithBytes(alloc, v135, v136, 0x8000100u, 0);
      if (v137)
      {
        v138 = v137;
        mmcs_item_set_MIME_type(key, v137);
        CFRelease(v138);
      }
    }

    v388 = v129;
    if (!a3)
    {
      break;
    }

    v139 = mmcs_item_set_chunk_instance_capacity(key, *(v132 + 40));
    if (v139)
    {
      v141 = *(v6 + 16);
      if (v141 >= *(v6 + 8))
      {
        v345 = mmcs_logging_logger_default(v139, v140);
        v259 = Mutable;
        v260 = v394;
        if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
        {
          v351 = CFStringCreateWithFormat(alloc, 0, @"mmcs_get_file overflow");
          v353 = mmcs_logging_logger_default(v351, v352);
          if (os_log_type_enabled(v353, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v351;
            _os_log_impl(&dword_2577D8000, v353, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v351)
          {
            CFRelease(v351);
          }
        }

        v245 = 1;
        LOBYTE(v19) = 0;
        v406 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"mmcs_get_file overflow", v346, v347, v348, v349, v350);
        goto LABEL_378;
      }

      v142 = v8;
      v143 = *(v6 + 32);
      req_context_use_registry = mmcs_get_req_context_use_registry(v142);
      if ((**key & 0x7F) == 4)
      {
        should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v2(v142);
      }

      else
      {
        should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v1(v142);
      }

      v157 = should_validate_file_content_for_v2;
      v154 = (v143 + (v141 << 7));
      if (mmcs_item_is_derivative(key))
      {
        v158 = 0;
      }

      else
      {
        v158 = req_context_use_registry;
      }

      file_init = mmcs_get_file_init(v154, v6, key, v158, v157);
      if (!file_init)
      {
        v354 = mmcs_logging_logger_default(file_init, v160);
        v259 = Mutable;
        v260 = v394;
        if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
        {
          v342 = CFStringCreateWithFormat(alloc, 0, @"mmcs_get_file_init");
          v344 = mmcs_logging_logger_default(v342, v355);
          if (os_log_type_enabled(v344, OS_LOG_TYPE_DEBUG))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v342;
LABEL_422:
            _os_log_impl(&dword_2577D8000, v344, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
          }

          goto LABEL_423;
        }

        goto LABEL_425;
      }

      CFDictionarySetValue(*(v6 + 104), key, v154);
      v155 = 0;
      goto LABEL_202;
    }

    if (!a4 || !key[34])
    {
      v341 = mmcs_logging_logger_default(v139, v140);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v341, OS_LOG_TYPE_DEBUG))
      {
        v342 = CFStringCreateWithFormat(alloc, 0, @"could not initialize chunk instance capacity");
        v344 = mmcs_logging_logger_default(v342, v343);
        if (os_log_type_enabled(v344, OS_LOG_TYPE_DEBUG))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v342;
          goto LABEL_422;
        }

LABEL_423:
        if (v342)
        {
          CFRelease(v342);
        }
      }

LABEL_425:
      v285 = @"mmcs_get_file_init";
      v318 = 37;
LABEL_375:
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v318, v285, v280, v281, v282, v283, v284, v379, v380);
      goto LABEL_376;
    }

    v150 = mmcs_logging_logger_default(v139, v140);
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
    {
      v151 = CFStringCreateWithFormat(alloc, 0, @"could not initialize chunk instance capacity because it already was");
      v153 = mmcs_logging_logger_default(v151, v152);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v151;
        _os_log_impl(&dword_2577D8000, v153, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
      }

      v134 = key;
      if (v151)
      {
        CFRelease(v151);
      }
    }

    v126 = CFDictionaryGetValue(*(v6 + 104), v134);
    if (!v126)
    {
      v356 = mmcs_item_copy_description(key);
      v370 = mmcs_logging_logger_default(v356, v369);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
      {
        v376 = CFStringCreateWithFormat(alloc, 0, @"B unable to find file state for item %@", v356);
        v378 = mmcs_logging_logger_default(v376, v377);
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v376;
          _os_log_impl(&dword_2577D8000, v378, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v376)
        {
          CFRelease(v376);
        }
      }

      v368 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"B unable to find file state for item %@", v371, v372, v373, v374, v375, v356);
      goto LABEL_438;
    }

LABEL_188:
    v154 = v126;
    v155 = 1;
LABEL_202:
    if (*(v132 + 40))
    {
      v161 = 0;
      while (1)
      {
        v162 = *(*(v132 + 48) + 8 * v161);
        v163 = *(v162 + 24);
        v164 = CFArrayGetCount(*(v6 + 40));
        if (v163 >= v164)
        {
          break;
        }

        v166 = CFArrayGetValueAtIndex(*(v6 + 40), *(v162 + 24) + Count);
        v167 = v166[11];
        v168 = *(v162 + 32);
        if (v168 >= v167[7])
        {
          v291 = mmcs_logging_logger_default(v166, v168);
          v6 = v399;
          v259 = Mutable;
          v260 = v394;
          if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
          {
            v292 = CFStringCreateWithFormat(alloc, 0, @"chunk index out of range");
            v294 = mmcs_logging_logger_default(v292, v293);
            if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v292;
              _os_log_impl(&dword_2577D8000, v294, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
            }

            if (v292)
            {
              CFRelease(v292);
            }
          }

          v379 = *(v162 + 32);
          v380 = v167[6];
          v285 = @"chunk index %llu out of range %lu.";
          goto LABEL_374;
        }

        v169 = v166;
        v170 = v167[15];
        v171 = v170 + 104 * mmcs_get_container_container_index_for_message_index(v166, v168);
        if ((v155 & 1) == 0)
        {
          appended = mmcs_item_append_chunk_instance(key, *(v171 + 56), &v406);
          if (!appended)
          {
            goto LABEL_310;
          }

          if (theDicta)
          {
            mmcs_get_state_process_file_list_cold_2();
          }

          v173 = appended;
          CFDictionarySetValue(v394, appended, v154);
          v176 = *(v162 + 24);
          if (v176 >= a2[3])
          {
            v299 = mmcs_logging_logger_default(v174, v175);
            if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v299, OS_LOG_TYPE_ERROR, "Processing file chunk references yielded container index beyond limit.", valuePtr, 2u);
            }

            v300 = @"Processing file chunk references yielded container index beyond limit.";
            goto LABEL_359;
          }

          v177 = *(v162 + 32);
          v178 = *(a2[4] + 8 * v176);
          if (v177 >= *(v178 + 64))
          {
            v301 = mmcs_logging_logger_default(v174, v175);
            if (os_log_type_enabled(v301, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v301, OS_LOG_TYPE_ERROR, "Processing file chunk references yielded chunk index beyond limit.", valuePtr, 2u);
            }

            v300 = @"Processing file chunk references yielded chunk index beyond limit.";
            goto LABEL_359;
          }

          v179 = *(*(*(v178 + 72) + 8 * v177) + 24);
          if (!v179)
          {
            v302 = mmcs_logging_logger_default(v174, v175);
            if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v302, OS_LOG_TYPE_ERROR, "Processing file chunk references failed to discover chunk_info.", valuePtr, 2u);
            }

            v300 = @"Processing file chunk references failed to discover chunk_info";
LABEL_359:
            LOBYTE(v19) = 0;
            v406 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, v300);
            v245 = 1;
            v6 = v399;
            v259 = Mutable;
            v260 = v394;
            v303 = v397;
            goto LABEL_379;
          }

          CFDictionarySetValue(v397, v173, v179);
        }

        if (a3)
        {
          mmcs_get_state_associate_file_and_container(v399, v154, v169);
        }

        else
        {
          *valuePtr = v399;
          *&valuePtr[8] = v169;
          mmcs_chunk_reference_apply_function_to_instances(*(v171 + 56), _associate_files_and_containers_for_items, valuePtr);
        }

        ++v161;
        v6 = v399;
        if (v161 >= *(v132 + 40))
        {
          goto LABEL_217;
        }
      }

      v276 = mmcs_logging_logger_default(v164, v165);
      v259 = Mutable;
      v260 = v394;
      if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
      {
        v277 = CFStringCreateWithFormat(alloc, 0, @"container index out of range");
        v279 = mmcs_logging_logger_default(v277, v278);
        if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v277;
          _os_log_impl(&dword_2577D8000, v279, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
        }

        if (v277)
        {
          CFRelease(v277);
        }
      }

      v379 = *(v162 + 24);
      v380 = CFArrayGetCount(*(v6 + 40));
      v285 = @"container index %llu out of range %llu.";
      goto LABEL_374;
    }

LABEL_217:
    v128 = v386;
    v129 = v388;
    if ((v155 & 1) == 0)
    {
      ++*(v6 + 16);
    }

LABEL_219:
    ++v129;
    v8 = v395;
    if (v129 >= a2[5])
    {
      goto LABEL_220;
    }
  }

  v126 = CFDictionaryGetValue(*(v6 + 104), key);
  if (v126)
  {
    goto LABEL_188;
  }

  v356 = mmcs_item_copy_description(key);
  v358 = mmcs_logging_logger_default(v356, v357);
  v359 = os_log_type_enabled(v358, OS_LOG_TYPE_ERROR);
  v259 = Mutable;
  v260 = v394;
  if (v359)
  {
    v365 = CFStringCreateWithFormat(alloc, 0, @"C unable to find file state for item %@", v356);
    v367 = mmcs_logging_logger_default(v365, v366);
    if (os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138543362;
      *&valuePtr[4] = v365;
      _os_log_impl(&dword_2577D8000, v367, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
    }

    if (v365)
    {
      CFRelease(v365);
    }
  }

  v368 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"C unable to find file state for item %@", v360, v361, v362, v363, v364, v356);
LABEL_438:
  v406 = v368;
  if (v356)
  {
    CFRelease(v356);
LABEL_326:
    LOBYTE(v19) = 0;
LABEL_377:
    v245 = 1;
  }

  else
  {
    LOBYTE(v19) = 0;
    v245 = 1;
  }

LABEL_378:
  v303 = v397;
  if (v397)
  {
LABEL_379:
    CFRelease(v303);
  }

  if (v260)
  {
    CFRelease(v260);
  }

  if (v259)
  {
    CFRelease(v259);
  }

  if (value)
  {
    C3BaseRelease(value);
  }

  value = 0;
  ProtobufCBinaryData_SetCopyBufferLen(v407, 0, 0);
  if (v245)
  {
    v324 = v406;
    if (!v406)
    {
      v324 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unspecified error in mmcs_get_state_process_file_list", v319, v320, v321, v322, v323);
      v406 = v324;
    }

    if (a5)
    {
      CFRetain(v324);
      *a5 = v406;
    }

    v325 = CFArrayGetCount(*(v6 + 40));
    if (Count < v325)
    {
      v326 = v325;
      do
      {
        v327 = CFArrayGetValueAtIndex(*(v6 + 40), Count);
        if (!v327[5])
        {
          mmcs_container_set_error(v327, v406);
        }

        ++Count;
      }

      while (v326 != Count);
    }
  }

  if (v406)
  {
    CFRelease(v406);
  }

  return v19;
}

void mmcs_get_state_associate_file_and_container(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 72), key);
  if (!Value)
  {
    v8 = *byte_2868BF0C8;
    Value = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v8);
    CFDictionarySetValue(*(a1 + 72), key, Value);
    if (Value)
    {
      CFRelease(Value);
    }
  }

  CFSetAddValue(Value, a2);
  v7 = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!v7)
  {
    v8 = *byte_2868BF0F8;
    v7 = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v8);
    CFDictionarySetValue(*(a1 + 80), a2, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  CFSetAddValue(v7, key);
}

void _associate_files_and_containers_for_items(uint64_t a1, uint64_t **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **a2;
  if (!v3)
  {
    _associate_files_and_containers_for_items_cold_4();
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    _associate_files_and_containers_for_items_cold_3();
  }

  v5 = *(v3 + 304);
  if (!*(v5 + 88))
  {
    _associate_files_and_containers_for_items_cold_2();
  }

  v6 = *(v5 + 96);
  if (!v6)
  {
    _associate_files_and_containers_for_items_cold_1();
  }

  v8 = CFSetContainsValue(v6, v4);
  if (!v8)
  {
    v13 = mmcs_logging_logger_default(v8, v9);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"this item not participating in getChunks");
    v16 = mmcs_logging_logger_default(v14, v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 138543362;
    v20 = v14;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v2[13], v4);
  if (Value)
  {
    v12 = a2[1];

    mmcs_get_state_associate_file_and_container(v2, Value, v12);
    return;
  }

  v17 = mmcs_logging_logger_default(0, v11);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    return;
  }

  v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"expected to find a file for the item");
  v16 = mmcs_logging_logger_default(v14, v18);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 138543362;
    v20 = v14;
LABEL_16:
    _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &v19, 0xCu);
  }

LABEL_17:
  if (v14)
  {
    CFRelease(v14);
  }
}

CFIndex mmcs_get_state_initialize_duplicate_file_states(uint64_t a1, void *a2, CFIndex *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2[1];
  Value = CFDictionaryGetValue(*(*(*a1 + 304) + 64), v5);
  if (CFArrayGetCount(Value) < 1)
  {
LABEL_14:
    result = CFArrayGetCount(*(a1 + 40));
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), i);
        v23 = *(ValueAtIndex[11] + 184);
        if (v23)
        {
          CFRelease(v23);
          *(ValueAtIndex[11] + 184) = 0;
        }

        result = CFArrayGetCount(*(a1 + 40));
      }
    }

    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = CFArrayGetValueAtIndex(Value, v7);
    if (v8 == v5)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 16);
    if (v10 >= *(a1 + 8))
    {
      break;
    }

    v11 = v8;
    v12 = *(a1 + 32);
    *(a1 + 16) = v10 + 1;
    req_context_use_registry = mmcs_get_req_context_use_registry(v4);
    if ((**v11 & 0x7F) == 4)
    {
      should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v2(v4);
    }

    else
    {
      should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v1(v4);
    }

    v15 = should_validate_file_content_for_v2;
    v16 = (v12 + (v10 << 7));
    if (mmcs_item_is_derivative(v11))
    {
      v17 = 0;
    }

    else
    {
      v17 = req_context_use_registry;
    }

    mmcs_get_file_init(v16, *(*(v4 + 304) + 112), v11, v17, v15);
    CFDictionarySetValue(*(a1 + 104), v11, v16);
    v18 = mmcs_item_copy_chunk_instances_from_item(v11, v5);
    if (!v18)
    {
      v34 = mmcs_logging_logger_default(v18, v19);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to copy chunk instances from item %lld to %lld", v11[5], v5[5]);
        v42 = mmcs_logging_logger_default(v40, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v46 = v40;
          _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v40)
        {
          CFRelease(v40);
        }
      }

      result = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"unable to copy chunk instances from item %lld to %lld", v35, v36, v37, v38, v39, v11[5], v5[5]);
      v30 = a3;
      goto LABEL_32;
    }

    mmcs_get_state_associate_duplicate_file_and_containers_for_file(a1, v16, a2);
LABEL_13:
    if (++v7 >= CFArrayGetCount(Value))
    {
      goto LABEL_14;
    }
  }

  v24 = mmcs_logging_logger_default(v8, v9);
  v30 = a3;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"duplicate mmcs_get_file overflow");
    v33 = mmcs_logging_logger_default(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = v31;
      _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  result = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"duplicate mmcs_get_file overflow", v25, v26, v27, v28, v29);
LABEL_32:
  *v30 = result;
  return result;
}

uint64_t mmcs_get_state_setup_derivative_files_and_containers(CFMutableArrayRef *a1, CFTypeRef *a2)
{
  v2 = *a1;
  cf = 0;
  if (!a1[2])
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v8 = (a1[4] + v5);
    v9 = v8[1];
    if (mmcs_item_is_derivative(v9))
    {
      break;
    }

LABEL_13:
    ++v6;
    v5 += 128;
    if (v6 >= a1[2])
    {
      v24 = 1;
      error = cf;
      if (!cf)
      {
        return v24;
      }

      goto LABEL_25;
    }
  }

  Value = CFDictionaryGetValue(a1[10], v8);
  if (Value)
  {
    Copy = CFSetCreateCopy(v7, Value);
    if (!Copy)
    {
      mmcs_get_state_setup_derivative_files_and_containers_cold_1();
    }

    v12 = Copy;
    context[0] = a1;
    context[1] = v8;
    CFSetApplyFunction(Copy, _disassociate_chunk_container_applier, context);
    CFRelease(v12);
  }

  if (mmcs_get_req_context_use_reader_writer_callback(v2) || mmcs_get_file_init_temp_file(v8, &cf))
  {
    context[0] = 0;
    if (mmcs_get_derivative_container_create(context, v9, 1, a1))
    {
      http_request_options = mmcs_request_get_http_request_options(v2);
      if (mmcs_http_request_create_with_url((*(context[0] + 2) + 24), *(v9 + 360), http_request_options, &cf))
      {
        CFArrayAppendValue(a1[5], context[0]);
        CFArrayAppendValue(a1[8], context[0]);
        mmcs_get_state_associate_file_and_container(a1, v8, context[0]);
        if (context[0])
        {
          C3BaseRelease(context[0]);
        }

        goto LABEL_13;
      }

      error = cf;
      if (cf)
      {
        goto LABEL_23;
      }

LABEL_21:
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unspecified error in mmcs_get_state_setup_derivative_files_and_containers", v19, v20, v21, v22, v23);
      cf = error;
      goto LABEL_23;
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"mmcs_get_derivative_container_create", v13, v14, v15, v16, v17);
LABEL_18:
    cf = error;
    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  error = cf;
  if (!cf)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"An unknown error creating temp file.");
    goto LABEL_18;
  }

LABEL_23:
  if (a2)
  {
    CFRetain(error);
    v24 = 0;
    error = cf;
    *a2 = cf;
    if (!error)
    {
      return v24;
    }

    goto LABEL_25;
  }

  v24 = 0;
  if (error)
  {
LABEL_25:
    CFRelease(error);
  }

  return v24;
}

void mmcs_get_state_associate_duplicate_file_and_containers_for_file(uint64_t a1, uint64_t a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 80), key);
  if (Value)
  {
    v6[0] = a1;
    v6[1] = a2;
    CFSetApplyFunction(Value, _associate_container_applier, v6);
  }
}

void _associate_container_applier(void *key, uint64_t *a2)
{
  v4 = a2[1];
  v5 = v4[1];
  if (!v5[50])
  {
LABEL_13:
    v12 = *a2;

    mmcs_get_state_associate_file_and_container(v12, v4, key);
    return;
  }

  Mutable = *(*(key + 11) + 184);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v7 = *(key + 11);
    if (v7[6])
    {
      v8 = 0;
      v9 = 56;
      do
      {
        CFSetAddValue(Mutable, *(v7[15] + v9));
        ++v8;
        v7 = *(key + 11);
        v9 += 104;
      }

      while (v8 < v7[6]);
    }

    v7[23] = Mutable;
  }

  if (v5[19])
  {
    v10 = 0;
    for (i = 56; !CFSetContainsValue(Mutable, *(v5[34] + i)); i += 104)
    {
      if (++v10 >= v5[19])
      {
        return;
      }
    }

    v4 = a2[1];
    goto LABEL_13;
  }
}

void mmcs_get_state_process_derivative_data(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  v24 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v19 = a2;
    *(&v19 + 1) = a3;
    v20 = a4;
    v21 = a5;
    v23 = a7;
    v22 = a6;
    CFSetApplyFunction(Value, mmcs_get_state_process_derivative_container_data_for_file_state, &v19);
  }

  else
  {
    v15 = mmcs_logging_logger_default(0, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"processing container data with no file states");
      v18 = mmcs_logging_logger_default(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v19) = 138543362;
        *(&v19 + 4) = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", &v19, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }
}

void mmcs_get_state_process_derivative_container_data_for_file_state(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 115))
  {
    cf[3] = v2;
    cf[4] = v3;
    cf[0] = 0;
    if (!mmcs_get_file_process_derivative_buffer(a1, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), cf))
    {
      v10 = cf[0];
      if (!cf[0])
      {
        v10 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 33, @"The item failed for an unspecified reason.", v5, v6, v7, v8, v9);
        cf[0] = v10;
      }

      mmcs_get_file_completed_with_error(a1, v10);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }
}

void mmcs_get_state_process_chunk_with_padding(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v17 = a2;
    *(&v17 + 1) = a3;
    v18 = a4;
    v19 = a5;
    v20 = a6;
    CFSetApplyFunction(Value, mmcs_get_state_process_container_data_for_file_state, &v17);
  }

  else
  {
    v13 = mmcs_logging_logger_default(0, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"processing container data with no file states");
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v17) = 138543362;
        *(&v17 + 4) = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &v17, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }
}

void mmcs_get_state_process_container_data_for_file_state(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 115))
  {
    cf[5] = v2;
    cf[6] = v3;
    v6 = *(a1 + 8);
    if (!mmcs_item_is_derivative(v6) && !mmcs_item_is_metadata_only(v6))
    {
      cf[0] = 0;
      if (mmcs_get_file_process_chunk_reference_with_padding(a1, a2[1], a2[2], a2[3], a2[4], cf))
      {
        if (!mmcs_item_has_outstanding_chunk_references(v6))
        {
          mmcs_get_file_candidate_completed_with_success(a1, v12);
        }
      }

      else
      {
        v13 = cf[0];
        if (!cf[0])
        {
          v13 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 33, @"The item failed for an unspecified reason.", v7, v8, v9, v10, v11);
          cf[0] = v13;
        }

        mmcs_get_file_completed_with_error(a1, v13);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }
}

void mmcs_get_state_unprocess_chunk_data(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v13 = a2;
    *(&v13 + 1) = a3;
    v14 = a4;
    CFSetApplyFunction(Value, mmcs_get_state_unprocess_container_data_for_file_state, &v13);
  }

  else
  {
    v9 = mmcs_logging_logger_default(0, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unprocessing container data with no file states");
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v13) = 138543362;
        *(&v13 + 4) = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

void mmcs_get_state_unprocess_container_data_for_file_state(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 115) && !mmcs_item_is_derivative(*(a1 + 8)))
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);

    mmcs_get_file_unprocess_chunk_reference(a1, v4, v5);
  }
}

const __CFSet *mmcs_get_state_has_files_which_still_needs_container(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  context = 0;
  if (result)
  {
    CFSetApplyFunction(result, mmcs_get_file_which_still_needs_container, &context);
    return context;
  }

  return result;
}

uint64_t mmcs_get_file_which_still_needs_container(uint64_t result, _BYTE *a2)
{
  if (*(result + 115))
  {
    v3 = 0;
  }

  else
  {
    result = mmcs_item_is_derivative(*(result + 8));
    v3 = result == 0;
  }

  *a2 |= v3;
  return result;
}

CFSetRef mmcs_get_state_copy_file_states_for_container(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x277CBECE8];

    return CFSetCreateCopy(v4, v3);
  }

  return result;
}

void mmcs_get_state_fail_file_state(uint64_t a1, uint64_t a2)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  if (v4)
  {
    Domain = CFErrorGetDomain(v4);
    if (CFEqual(@"com.apple.mmcs", Domain))
    {
      if (CFErrorGetCode(*(a2 + 40)) == 16)
      {
        v6 = mmcs_logging_logger_default(16, a2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
          v9 = mmcs_logging_logger_default(v7, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = 138543362;
            *(buf + 4) = v7;
            _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v7)
          {
            CFRelease(v7);
          }
        }

        mmcs_get_file_completed_with_error(a1, *(a2 + 40));
        return;
      }
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = CFErrorGetDomain(v10);
    Code = CFEqual(@"com.apple.mmcs", v11);
    if (Code && (Code = CFErrorGetCode(*(a2 + 56)), Code == 7) && (Code = CFErrorCopyUserInfo(*(a2 + 56))) != 0)
    {
      v14 = Code;
      Value = CFDictionaryGetValue(Code, *MEMORY[0x277CBEE78]);
      if (Value && (v16 = Value, v17 = CFGetTypeID(Value), v17 == CFErrorGetTypeID()) && (v18 = CFErrorGetDomain(v16), CFEqual(@"apple.mme", v18)))
      {
        if (CFErrorGetCode(v16) == 13)
        {
          v19 = 8;
        }

        else
        {
          v19 = 23;
        }
      }

      else
      {
        v19 = 23;
      }

      CFRelease(v14);
    }

    else
    {
      v19 = 23;
    }

    v20 = mmcs_logging_logger_default(Code, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, vendor request failed.");
      v23 = mmcs_logging_logger_default(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v21;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    *buf = 0uLL;
    v24 = *(a2 + 40);
    if (v24)
    {
      buf[0] = *(a2 + 40);
      LODWORD(v24) = 1;
    }

    buf[v24] = *(a2 + 56);
    v25 = CFArrayCreate(*MEMORY[0x277CBECE8], buf, (v24 + 1), MEMORY[0x277CBF128]);
    error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", v19, @"Vendor request failed", v25, 0);
    if (v25)
    {
      CFRelease(v25);
    }

LABEL_40:
    mmcs_get_file_completed_with_error(a1, error_with_underlying_errors);
    if (!error_with_underlying_errors)
    {
      return;
    }

    v45 = error_with_underlying_errors;
    goto LABEL_59;
  }

  v27 = *(a2 + 40);
  if (!v27)
  {
    v36 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed: container %p has no error", a2);
      v44 = mmcs_logging_logger_default(v42, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v42;
        _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v42)
      {
        CFRelease(v42);
      }
    }

    error_with_underlying_errors = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Get failed", v37, v38, v39, v40, v41);
    goto LABEL_40;
  }

  v28 = CFErrorGetDomain(*(a2 + 40));
  error_with_underlying_error = CFEqual(@"com.apple.mmcs", v28);
  if (!error_with_underlying_error)
  {
    goto LABEL_51;
  }

  error_with_underlying_error = CFErrorGetCode(*(a2 + 40));
  if ((error_with_underlying_error - 42) < 5)
  {
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 11, *(a2 + 40), @"FORD data malformed.", v31, v32, v33, v34);
    v35 = error_with_underlying_error;
    v27 = error_with_underlying_error;
    goto LABEL_52;
  }

  if (error_with_underlying_error == 6 && (error_with_underlying_error = CFErrorCopyUserInfo(*(a2 + 40))) != 0)
  {
    v46 = error_with_underlying_error;
    v35 = CFDictionaryGetValue(error_with_underlying_error, @"kMMCSErrorHTTPStatusKey");
    if (v35)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v35))
      {
        buf[0] = 0;
        v48 = CFNumberGetValue(v35, kCFNumberCFIndexType, buf);
        v35 = 0;
        if (v48 && buf[0] == 404)
        {
          v35 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 8, *(a2 + 40), @"Vendor request failed", v49, v50, v51, v52);
          v27 = v35;
        }
      }

      else
      {
        v35 = 0;
      }
    }

    CFRelease(v46);
  }

  else
  {
LABEL_51:
    v35 = 0;
  }

LABEL_52:
  v53 = mmcs_logging_logger_default(error_with_underlying_error, v30);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
    v56 = mmcs_logging_logger_default(v54, v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v54;
      _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v54)
    {
      CFRelease(v54);
    }
  }

  mmcs_get_file_completed_with_error(a1, v27);
  if (v35)
  {
    v45 = v35;
LABEL_59:
    CFRelease(v45);
  }
}

void mmcs_get_state_fail_container(CFDictionaryRef *a1, void *a2)
{
  if (!*(*(*a1 + 38) + 41))
  {
    Value = CFDictionaryGetValue(a1[9], a2);
    if (Value)
    {
      CFSetApplyFunction(Value, mmcs_get_state_fail_file_state, a2);
    }

    *(a2[11] + 80) = 1;
  }
}

void mmcs_get_state_container_fail_deferred_files(CFArrayRef *a1)
{
  if (*(*(*a1 + 38) + 41))
  {
    Count = CFArrayGetCount(a1[5]);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4);
        v6 = ValueAtIndex;
        v7 = *(ValueAtIndex + 16);
        if (v7 == 3)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = *(ValueAtIndex + 11);
          if ((*(ValueAtIndex + 5) || *(ValueAtIndex + 7)) && !*(v8 + 80))
          {
            Value = CFDictionaryGetValue(a1[9], ValueAtIndex);
            if (Value)
            {
              CFSetApplyFunction(Value, mmcs_get_state_fail_file_state, v6);
            }
          }

          v10 = (v8 + 80);
LABEL_18:
          *v10 = 1;
        }

        if (v3 == ++v4)
        {
          return;
        }
      }

      v11 = *(ValueAtIndex + 11);
      if ((*(ValueAtIndex + 5) || *(ValueAtIndex + 7)) && !*(v11 + 16))
      {
        v12 = CFDictionaryGetValue(a1[9], ValueAtIndex);
        if (v12)
        {
          CFSetApplyFunction(v12, mmcs_get_state_fail_file_state, v6);
        }
      }

      v10 = (v11 + 16);
      goto LABEL_18;
    }
  }
}

void mmcs_get_state_fail_deriviative_container(uint64_t a1, void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {

    CFSetApplyFunction(Value, mmcs_get_state_fail_derivative_file_state, a2);
  }
}

void mmcs_get_state_fail_derivative_file_state(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = mmcs_logging_logger_default(a1, a2);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    mmcs_get_file_completed_with_error(a1, *(a2 + 40));
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed: container %p has no error", a2);
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v19 = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    v17 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Get failed", v9, v10, v11, v12, v13);
    mmcs_get_file_completed_with_error(a1, v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void mmcs_get_state_process_storage_container_error_list(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v49 = mmcs_logging_logger_default(a1, 0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed getComplete response body");
      v52 = mmcs_logging_logger_default(v50, v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v50;
        _os_log_impl(&dword_2577D8000, v52, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v50)
      {
        CFRelease(v50);
      }
    }

    return;
  }

  v2 = a2;
  if (!*(a2 + 24))
  {
    return;
  }

  v4 = 0;
  alloc = *MEMORY[0x277CBECE8];
  do
  {
    v5 = *(*(v2 + 32) + 8 * v4);
    v6 = v5[3];
    v7 = v5[5];
    Count = CFArrayGetCount(*(a1 + 40));
    if (Count < 1)
    {
      goto LABEL_44;
    }

    v10 = Count;
    v54 = v5;
    v11 = 1;
    do
    {
      Count = CFArrayGetValueAtIndex(*(a1 + 40), v11 - 1);
      v15 = 0;
      if (!v6)
      {
        goto LABEL_10;
      }

      v16 = Count;
      if (*(Count + 64) == 3)
      {
        goto LABEL_10;
      }

      Count = strcmp(*(*(Count + 88) + 16), v6);
      if (Count)
      {
        goto LABEL_9;
      }

      if (!v7)
      {
        v25 = mmcs_logging_logger_default(Count, v9);
        Count = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        if (!Count)
        {
          goto LABEL_9;
        }

        v20 = CFStringCreateWithFormat(alloc, 0, @"Expected byte-range field in protobuf message");
        v27 = mmcs_logging_logger_default(v20, v26);
        Count = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (Count)
        {
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      v17 = strncmp("bytes=", v7, 6uLL);
      v18 = CFHTTPMessageCopyHeaderFieldValue(*(*(v16->data + 3) + 16), @"Range");
      if (!v18)
      {
        v28 = mmcs_logging_logger_default(0, v19);
        Count = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (!Count)
        {
LABEL_9:
          v15 = 0;
          goto LABEL_10;
        }

        v20 = CFStringCreateWithFormat(alloc, 0, @"Get container http message missing byte-range header");
        v27 = mmcs_logging_logger_default(v20, v29);
        Count = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (Count)
        {
LABEL_28:
          *buf = 138543362;
          v57 = v20;
          _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_34:
        v15 = 0;
        goto LABEL_35;
      }

      v20 = v18;
      if (v17 && CFStringHasPrefix(v18, @"bytes="))
      {
        v59.length = CFStringGetLength(v20) - 6;
        v59.location = 6;
        v21 = CFStringCreateWithSubstring(alloc, v20, v59);
        CFRelease(v20);
        v20 = v21;
      }

      CStringWithCFString = createCStringWithCFString(v20);
      if (!CStringWithCFString)
      {
        v30 = mmcs_logging_logger_default(0, v23);
        Count = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (Count)
        {
          v15 = CFStringCreateWithFormat(alloc, 0, @"Couldn't create string");
          v32 = mmcs_logging_logger_default(v15, v31);
          Count = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
          if (Count)
          {
            *buf = 138543362;
            v57 = v15;
            _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (!v15)
          {
            goto LABEL_35;
          }

          CFRelease(v15);
        }

        goto LABEL_34;
      }

      v24 = CStringWithCFString;
      if (!strcmp(CStringWithCFString, v7))
      {
        v15 = v16;
      }

      else
      {
        v15 = 0;
      }

      free(v24);
LABEL_35:
      if (v20)
      {
        CFRelease(v20);
      }

LABEL_10:
      if (v11 >= v10)
      {
        break;
      }

      ++v11;
    }

    while (!v15);
    v2 = a2;
    v5 = v54;
    if (v15)
    {
      v33 = v54[4];
      if (v33)
      {
        v34 = v54[3];
        if (!v34)
        {
          v34 = "(null)";
        }

        v35 = v54[5];
        if (!v35)
        {
          v35 = "(null)";
        }

        error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 7, v33, @"The server returned a container error for container %s byte range %s", v12, v13, v14, v34, v35);
        v37 = mmcs_container_set_complete_error(v15, error_with_error_response_and_format);
        v39 = mmcs_logging_logger_default(v37, v38);
        XCFPrint(v39, @"ContainerCompleteIssue", error_with_error_response_and_format);
        goto LABEL_51;
      }

      v45 = mmcs_logging_logger_default(Count, v9);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = v54[3];
        if (!v46)
        {
          v46 = "(null)";
        }

        v47 = v54[5];
        if (!v47)
        {
          v47 = "(null)";
        }

        error_with_error_response_and_format = CFStringCreateWithFormat(alloc, 0, @"no error for storage container with key %s byte range %s", v46, v47);
        v44 = mmcs_logging_logger_default(error_with_error_response_and_format, v48);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
LABEL_50:
          *buf = 138543362;
          v57 = error_with_error_response_and_format;
          _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_51:
        if (error_with_error_response_and_format)
        {
          CFRelease(error_with_error_response_and_format);
        }
      }

      goto LABEL_53;
    }

LABEL_44:
    v40 = mmcs_logging_logger_default(Count, v9);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = v5[3];
      if (!v41)
      {
        v41 = "(null)";
      }

      v42 = v5[5];
      if (!v42)
      {
        v42 = "(null)";
      }

      error_with_error_response_and_format = CFStringCreateWithFormat(alloc, 0, @"no storage container matching key %s byte range %s", v41, v42);
      v44 = mmcs_logging_logger_default(error_with_error_response_and_format, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

LABEL_53:
    ++v4;
  }

  while (v4 < *(v2 + 24));
}

uint64_t mmcs_get_state_has_outstanding_async_transactions(CFArrayRef *a1)
{
  Count = CFArrayGetCount(a1[5]);
  if (Count < 1)
  {
    goto LABEL_6;
  }

  v3 = Count;
  v4 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4 - 1);
    result = mmcs_container_request_enqueued_or_inflight(ValueAtIndex);
    if (v4 >= v3)
    {
      break;
    }

    ++v4;
  }

  while (!result);
  if (!result)
  {
LABEL_6:

    return mmcs_get_state_has_outstanding_http_transactions(a1);
  }

  return result;
}

uint64_t mmcs_get_state_has_outstanding_http_transactions(CFArrayRef *a1)
{
  Count = CFArrayGetCount(a1[5]);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4 - 1);
      v6 = *(ValueAtIndex[2] + 16);
      if (v6)
      {
        is_sending = mmcs_http_context_is_sending(v6);
      }

      else
      {
        is_sending = 0;
      }

      v8 = ValueAtIndex[3];
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          LODWORD(v8) = mmcs_http_context_is_sending(v9);
        }

        else
        {
          LODWORD(v8) = 0;
        }
      }

      v10 = v8 | is_sending;
      if (v4 >= v3)
      {
        break;
      }

      ++v4;
    }

    while (!v10);
    if (v10)
    {
      return 1;
    }
  }

  result = *(*(*a1 + 38) + 136);
  if (result)
  {
    return mmcs_http_context_is_sending(result);
  }

  return result;
}

void file_skip_container_and_get_chunks(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
  if (*(v3 + 48))
  {
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(v3 + 120);
      if (!mmcs_chunk_instance_is_chunk_reference((v7 + v6 - 56)))
      {
        file_skip_container_and_get_chunks_cold_1();
      }

      if (CFSetContainsValue(*(*(a1 + 8) + 280), *(v7 + v6)))
      {
        CFSetSetValue(Mutable, *(v7 + v6));
      }

      ++v5;
      v6 += 104;
    }

    while (v5 < *(v3 + 48));
  }

  if (CFSetGetCount(Mutable) >= 1)
  {
    mmcs_get_req_add_item_for_get_chunks(**a1, *(a1 + 8));
    v8 = *(a1 + 8);
    if (!*(v8 + 288))
    {
      mmcs_item_set_get_chunk_references(v8, Mutable);
      if (!Mutable)
      {
        return;
      }

      goto LABEL_11;
    }

    mmcs_item_add_get_chunk_references(v8, Mutable);
  }

  if (!Mutable)
  {
    return;
  }

LABEL_11:

  CFRelease(Mutable);
}

void _disassociate_chunk_container_applier(void *key, void *a2)
{
  if (key && *(key + 16) == 2 && *(*(key + 11) + 176) == 1)
  {
    v4 = *a2;
    v3 = a2[1];
    Value = CFDictionaryGetValue(*(*a2 + 72), key);
    if (Value)
    {
      v7 = Value;
      v8 = CFSetContainsValue(Value, v3);
      if (!v8)
      {
        v10 = mmcs_logging_logger_default(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "odd missing fileState", buf, 2u);
        }
      }

      CFSetRemoveValue(v7, v3);
    }

    else
    {
      v11 = mmcs_logging_logger_default(0, v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "odd missing files", v21, 2u);
      }
    }

    v12 = CFDictionaryGetValue(*(v4 + 80), v3);
    if (v12)
    {
      v14 = v12;
      v15 = CFSetContainsValue(v12, key);
      if (!v15)
      {
        v17 = mmcs_logging_logger_default(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "odd missing container", v20, 2u);
        }
      }

      CFSetRemoveValue(v14, key);
    }

    else
    {
      v18 = mmcs_logging_logger_default(0, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "odd missing containers", v19, 2u);
      }
    }
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

BOOL mmcs_http_clock_skew_metrics_create(uint64_t *a1, double a2, double a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_http_clock_skew_metricsGetTypeID_typeID, &kmmcs_http_clock_skew_metricsContextClass);
  Instance = C3TypeCreateInstance_(0, v6, 0x10uLL);
  if (Instance)
  {
    *(Instance + 16) = a3;
    *(Instance + 24) = a2;
    *a1 = Instance;
  }

  return Instance != 0;
}

uint64_t mmcs_put_request_alloc(void *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v7 = 0;
  if (!a3)
  {
    return 0;
  }

  if (!is_mul_ok(a3 - 1, 0x1A0uLL))
  {
    return 0;
  }

  v3 = 416 * (a3 - 1);
  if (v3 >= 0xFFFFFFFFFFFFFDC8)
  {
    return 0;
  }

  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  result = mmcs_request_allocate(&v7, v6, v3 + 568);
  if (result)
  {
    *a1 = v7;
  }

  return result;
}

CFErrorRef mmcs_no_memory_error_init(CFDictionaryRef userInfo)
{
  result = CFErrorCreate(*MEMORY[0x277CBECE8], @"com.apple.mmcs", 37, userInfo);
  sNoMemoryError = result;
  return result;
}

uint64_t mmcs_no_memory_error_create()
{
  if (!sNoMemoryError)
  {
    abort();
  }

  CFRetain(sNoMemoryError);
  return sNoMemoryError;
}

CFErrorRef mmcs_cferror_create_error_with_userInfo(const __CFString *cf2, CFIndex a2, CFDictionaryRef theDict)
{
  v3 = theDict;
  if (theDict && !CFDictionaryGetCount(theDict))
  {
    v3 = 0;
  }

  CFEqual(@"com.apple.mmcs", cf2);
  result = CFErrorCreate(*MEMORY[0x277CBECE8], cf2, a2, v3);
  if (!result)
  {

    return mmcs_no_memory_error_create();
  }

  return result;
}

CFErrorRef mmcs_cferror_create_error_with_underlying_errors(const __CFString *a1, CFIndex a2, void *a3, const __CFArray *a4, const void *a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v11 = Mutable;
    mmcs_user_info_add_description(Mutable, a3);
    if (a4)
    {
      if (CFArrayGetCount(a4) == 1)
      {
        v12 = *MEMORY[0x277CBEE78];
        ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
        v14 = v11;
        v15 = v12;
      }

      else
      {
        v15 = @"kMMCSErrorUnderlyingErrorArrayKey";
        v14 = v11;
        ValueAtIndex = a4;
      }

      CFDictionarySetValue(v14, v15, ValueAtIndex);
    }

    if (a5)
    {
      if (CFDictionaryGetCount(a5) >= 1)
      {
        CFDictionarySetValue(v11, @"kMMCSErrorSupplementalDictionaryKey", a5);
      }
    }

    error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, v11);
    CFRelease(v11);
    return error_with_userInfo;
  }

  else
  {

    return mmcs_cferror_create_error_with_userInfo(a1, a2, 0);
  }
}

CFErrorRef mmcs_cferror_create_error(const __CFString *a1, CFIndex a2, void *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description(Mutable, a3);
  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_format(const __CFString *a1, CFIndex a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, va);
  error = mmcs_cferror_create_error(a1, a2, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  return error;
}

CFErrorRef mmcs_cferror_create_file_error_with_format(CFIndex a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *MEMORY[0x277CBEE48];
  v11 = strerror(a1);
  v17 = mmcs_cferror_create_with_format(v10, a1, @"%s(%d)", v12, v13, v14, v15, v16, v11, a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a2, va);
  if (v17)
  {
    mmcs_user_info_add_underlying_error(Mutable, v17);
    CFRelease(v17);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", 39, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_authorization_error_with_format(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a2, va);
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"kMMCSErrorAuthorizationBodyDictionaryKey", a1);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_error_with_error_response_and_format(int a1, int a2, CFIndex a3, __CFError *a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a5, va);
  if (a4)
  {
    cferror_with_error_response = create_cferror_with_error_response(a4);
    if (cferror_with_error_response)
    {
      v15 = cferror_with_error_response;
      Domain = CFErrorGetDomain(cferror_with_error_response);
      v17 = CFEqual(@"apple.mme", Domain);
      v18 = v17;
      if (a1 && v17 && CFErrorGetCode(v15) == 7)
      {
        a3 = 13;
      }

      else if (a2 && v18 && CFErrorGetCode(v15) == 20)
      {
        a3 = 13;
      }

      mmcs_user_info_add_underlying_error(Mutable, v15);
      CFRelease(v15);
    }
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_error_with_underlying_error(const __CFString *a1, CFIndex a2, void *a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a4, va);
  if (a3)
  {
    mmcs_user_info_add_underlying_error(Mutable, a3);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_request_response_and_format(const __CFString *a1, CFIndex a2, __CFHTTPMessage *a3, __CFHTTPMessage *a4, void *a5, const __CFString *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a6, va);
  if (a3)
  {
    mmcs_user_info_add_http_message_request(Mutable, a3);
  }

  if (a4)
  {
    mmcs_user_info_add_http_message_response(Mutable, a4);
  }

  if (a5)
  {
    mmcs_user_info_add_underlying_error(Mutable, a5);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_item_signature_chunk_signature_error_with_format(const __CFString *a1, CFIndex a2, uint64_t a3, const UInt8 *a4, const UInt8 *a5, void *a6, const __CFString *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a7, va);
  mmcs_user_info_add_itemID(Mutable, a3);
  if (a4)
  {
    mmcs_user_info_add_fileSignature(Mutable, a4);
  }

  if (a5)
  {
    mmcs_user_info_add_chunkSignature(Mutable, a5);
  }

  if (a6)
  {
    mmcs_user_info_add_underlying_error(Mutable, a6);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_swiss_army_knife(const __CFString *a1, CFIndex a2, const __CFArray *a3, const void *a4, const void **a5, const void **a6, uint64_t a7, CFStringRef format, ...)
{
  va_start(va, format);
  v15 = *MEMORY[0x277CBECE8];
  v16 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, 0);
    if (!v16)
    {
      return error_with_userInfo;
    }

    goto LABEL_15;
  }

  v18 = Mutable;
  mmcs_user_info_add_description(Mutable, v16);
  if (a3)
  {
    if (CFArrayGetCount(a3) == 1)
    {
      v19 = *MEMORY[0x277CBEE78];
      ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
      v21 = v18;
      v22 = v19;
    }

    else
    {
      v22 = @"kMMCSErrorUnderlyingErrorArrayKey";
      v21 = v18;
      ValueAtIndex = a3;
    }

    CFDictionarySetValue(v21, v22, ValueAtIndex);
  }

  if (a4 && CFDictionaryGetCount(a4) >= 1)
  {
    CFDictionarySetValue(v18, @"kMMCSErrorSupplementalDictionaryKey", a4);
  }

  if (a7 >= 1)
  {
    do
    {
      v25 = *a5++;
      v24 = v25;
      v26 = *a6++;
      CFDictionaryAddValue(v18, v24, v26);
      --a7;
    }

    while (a7);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, v18);
  CFRelease(v18);
  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_retry_requested(uint64_t a1, const __CFArray *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  keys[2] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CBECE8];
  v11 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, va);
  if (a1)
  {
    v12 = CFStringCreateWithFormat(v10, 0, @"%u", a1);
    keys[0] = @"Retry-After";
    keys[1] = @"kMMCSErrorRetryClientInitiatedKey";
    v13 = *MEMORY[0x277CBED28];
    values[0] = v12;
    values[1] = v13;
    v14 = CFDictionaryCreate(v10, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, a2, v14, 0, 0, 0, @"%@. Retry after %@ seconds", v11, v12, va);
  }

  else
  {
    keys[0] = @"kMMCSErrorRetryClientInitiatedKey";
    values[0] = *MEMORY[0x277CBED28];
    v14 = CFDictionaryCreate(v10, keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, a2, v14, 0, 0, 0, @"%@. Retry immediately", v11, v18, va);
  }

  v16 = v15;
  if (v14)
  {
    CFRelease(v14);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

CFErrorRef mmcs_cferror_copy_transformed_cannot_find_host_error(uint64_t a1)
{
  error = mmcs_http_context_get_error(a1);
  Domain = CFErrorGetDomain(error);
  Code = CFErrorGetCode(error);
  v5 = CFEqual(@"NSURLErrorDomain", Domain);
  retry_requested = 0;
  if (v5 && Code == -1003)
  {
    v7 = XCFArrayCreateWithObject(error);
    v8 = mmcs_http_context_copy_request_url(a1);
    if (!v8)
    {
      retry_requested = mmcs_cferror_create_retry_requested(60, v7, @"Unable to find host %@", v9, v10, v11, v12, v13, 0);
      if (!v7)
      {
        return retry_requested;
      }

      goto LABEL_7;
    }

    v14 = v8;
    v15 = CFURLCopyHostName(v8);
    retry_requested = mmcs_cferror_create_retry_requested(60, v7, @"Unable to find host %@", v16, v17, v18, v19, v20, v15);
    CFRelease(v14);
    if (v15)
    {
      CFRelease(v15);
    }

    if (v7)
    {
LABEL_7:
      CFRelease(v7);
    }
  }

  return retry_requested;
}

CFErrorRef mmcs_cferror_create_file_error_wrapping_error_to_release(__CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1;
    v10 = mmcs_cferror_copy_short_description(a1);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v9, @"%@%@", v11, v12, v13, v14, a2, v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v9 = @"The reason was not specified";
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, 0, @"%@%@", a5, a6, a7, a8, a2, @"The reason was not specified");
  }

  CFRelease(v9);
  return error_with_underlying_error;
}

double mmcs_perform_timer_get_next_fire_date(uint64_t a1)
{
  v1 = _performTimerCallbacks[4 * *(a1 + 16)];
  if (!v1)
  {
    return -1.0;
  }

  v1();
  return result;
}

uint64_t mmcs_read_stream_pool_parameters_make_pool@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0xBFF0000000000000;
  a2[3] = 0;
  return result;
}

uint64_t mmcs_read_stream_pool_parameters_make_pool_timeout_max@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = 0;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a2;
  return result;
}

__CFDictionary *mmcs_network_request_options_for_options(const __CFDictionary *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"kMMCSRequestOptionStreamOptions");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
  v5 = *MEMORY[0x277CBADD8];
  v6 = CFDictionaryGetValue(v2, *MEMORY[0x277CBADD8]);
  if (v6)
  {
    v8 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamPropertyDataContextOnDemand ignored.");
      v11 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = v9;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    CFDictionaryRemoveValue(MutableCopy, v5);
  }

  v12 = *MEMORY[0x277CBADA8];
  v13 = CFDictionaryGetValue(v2, *MEMORY[0x277CBADA8]);
  if (v13)
  {
    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionBoundInterfaceIdentifier", v13);
    CFDictionaryRemoveValue(MutableCopy, v12);
  }

  v14 = *MEMORY[0x277CBAE40];
  cfBOOLean_from_cfdictionary_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(v2, *MEMORY[0x277CBAE40], 0);
  v16 = MEMORY[0x277CBED10];
  v17 = MEMORY[0x277CBED28];
  if (cfBOOLean_from_cfdictionary_object_for_key)
  {
    if (CFBooleanGetValue(cfBOOLean_from_cfdictionary_object_for_key))
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionAllowsCellularAccess", *v18);
    CFDictionaryRemoveValue(MutableCopy, v14);
  }

  v19 = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(v2, @"kMMCSRequestOptionUseNWLoaderOverride", 0);
  if (v19)
  {
    if (CFBooleanGetValue(v19))
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionUseNWLoaderOverride", *v20);
  }

  v21 = *MEMORY[0x277CBAD50];
  v22 = CFDictionaryGetValue(v2, *MEMORY[0x277CBAD50]);
  if (!v22)
  {
    goto LABEL_50;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  TypeID = CFStringGetTypeID();
  if (v24 == TypeID)
  {
    if (CFEqual(v23, *MEMORY[0x277CBAD90]))
    {
      v27 = 2;
LABEL_47:
      *buf = v27;
      v34 = CFNumberCreate(v3, kCFNumberSInt32Type, buf);
      if (!v34)
      {
        mmcs_network_request_options_for_options_cold_1();
      }

      CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionNetworkServiceType", v34);
      goto LABEL_49;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD60]))
    {
      v27 = 3;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD98]))
    {
      v27 = 4;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD68]))
    {
      v27 = 5;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD88]))
    {
      v27 = 6;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD78]))
    {
      v27 = 7;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD58]))
    {
      v27 = 8;
      goto LABEL_47;
    }

    if (CFEqual(v23, *MEMORY[0x277CBAD80]))
    {
      v27 = 9;
      goto LABEL_47;
    }

    v32 = CFEqual(v23, *MEMORY[0x277CBAD70]);
    if (v32)
    {
      v27 = 10;
      goto LABEL_47;
    }

    v36 = mmcs_logging_logger_default(v32, v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v29 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamNetworkServiceType ignored. Unknown type %@", v23);
      v31 = mmcs_logging_logger_default(v29, v37);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:
        if (v29)
        {
          CFRelease(v29);
        }

        goto LABEL_49;
      }

      *buf = 138543362;
      v39 = v29;
LABEL_28:
      _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_29;
    }
  }

  else
  {
    v28 = mmcs_logging_logger_default(TypeID, v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamPropertyNoCellular ignored. Expected string. Got %@", v23);
      v31 = mmcs_logging_logger_default(v29, v30);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138543362;
      v39 = v29;
      goto LABEL_28;
    }
  }

LABEL_49:
  CFDictionaryRemoveValue(MutableCopy, v21);
LABEL_50:
  if (MutableCopy && !CFDictionaryGetCount(MutableCopy))
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return MutableCopy;
}

void mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v5 = mmcs_http_context_copy_vendor_name(a3);
  v6 = v5;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (v5)
  {
    CFRetain(v5);
  }

  v7 = mmcs_report_copy_vendor_configuration_with_name(v6);
  if (!v7)
  {
    *(a2 + 16) = 0xBFF0000000000000;
    *(a2 + 24) = 0;
    *a2 = a1;
    *(a2 + 8) = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  v8 = v7;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v7, @"connection.max.requests");
  if (Value)
  {
    v10 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v10) && (!CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr) || valuePtr < 0))
    {
      valuePtr = 0;
    }
  }

  v12 = CFDictionaryGetValue(v8, @"connection.max.idle.millis");
  v13 = -1.0;
  if (v12)
  {
    v14 = v12;
    v15 = CFNumberGetTypeID();
    if (v15 == CFGetTypeID(v14))
    {
      v16 = 0;
      if (CFNumberGetValue(v14, kCFNumberSInt64Type, &v16))
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          v13 = v16 / 1000.0;
        }
      }
    }
  }

  CFRelease(v8);
  *(a2 + 24) = 0;
  *a2 = a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v13;
  *(a2 + 24) = valuePtr;
  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }
}

const void *mmcs_http_context_copy_vendor_name(uint64_t a1)
{
  v1 = *(a1 + 576);
  v2 = *(v1 + 24);
  if (!v2)
  {
    mmcs_http_context_copy_vendor_name_cold_1();
  }

  result = *(v2 + 32);
  if (result)
  {
    CFRetain(result);
    return *(*(v1 + 24) + 32);
  }

  return result;
}

BOOL debug_begin_writing_http_message_to_file(uint64_t a1, __CFHTTPMessage *a2, FILE **a3, const __CFString *a4, int a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v10 = debug_begin_writing_http_message_to_file_dumpdir;
  if ((debug_begin_writing_http_message_to_file_didCheck & 1) == 0 && !debug_begin_writing_http_message_to_file_dumpdir)
  {
    v10 = getenv("MMCS_HTTP_DEBUG_DIR");
    debug_begin_writing_http_message_to_file_dumpdir = v10;
    debug_begin_writing_http_message_to_file_didCheck = 1;
  }

  if (!v10)
  {
    return 1;
  }

  v11 = CFHTTPMessageCopyRequestURL(*(a1 + 336));
  PathComponent = CFURLCopyLastPathComponent(v11);
  if (v11)
  {
    CFRelease(v11);
  }

  bzero(__str, 0x400uLL);
  bzero(__filename, 0x400uLL);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  *buffer = 0u;
  v63 = 0u;
  *v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  CFStringGetCString(PathComponent, buffer, 100, 0x8000100u);
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (a4)
  {
    v13 = v55;
    CFStringGetCString(a4, v55, 100, 0x8000100u);
  }

  else
  {
    v13 = buffer;
  }

  os_unfair_lock_lock(&sMMCSHTTPClassLock);
  v14 = sMMCSHTTPMessageSequenceNumber++;
  os_unfair_lock_unlock(&sMMCSHTTPClassLock);
  v15 = debug_begin_writing_http_message_to_file_dumpdir;
  v16 = getpid();
  if (a5)
  {
    v17 = "response";
  }

  else
  {
    v17 = "request";
  }

  v54 = v14;
  snprintf(__str, 0x400uLL, "%s/httpdebug.pid%d.tx%04ld.seq%08ld.%p.%s.%s.headers.txt", v15, v16, *(a1 + 272), v14, a1, v13, v17);
  v18 = fopen(__str, "w");
  v20 = mmcs_logging_logger_default(v18, v19);
  if (!v18)
  {
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open %s", __str);
    v30 = mmcs_logging_logger_default(v28, v29);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    *&buf[4] = v28;
    goto LABEL_56;
  }

  v52 = v13;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Writing message headers to %s", __str);
    v23 = mmcs_logging_logger_default(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  memset(v88, 0, sizeof(v88));
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  *buf = 0u;
  if (a5)
  {
    v24 = CFHTTPMessageCopyVersion(a2);
    if (v24)
    {
      v26 = v24;
      CFStringGetCString(v24, buf, 300, 0x8000100u);
      CFRelease(v26);
    }

    else
    {
      buf[0] = 0;
    }

    if (*(a1 + 68))
    {
      http_status = metricsinfo__get_http_status(a1 + 24, v25);
      fprintf(v18, "%s %ld ", buf, http_status);
    }

    v34 = CFHTTPMessageCopyResponseStatusLine(a2);
  }

  else
  {
    v31 = CFHTTPMessageCopyRequestMethod(a2);
    CFStringGetCString(v31, buf, 300, 0x8000100u);
    if (v31)
    {
      CFRelease(v31);
    }

    fprintf(v18, "%s ", buf);
    v32 = CFHTTPMessageCopyRequestURL(a2);
    v33 = CFURLCopyPath(v32);
    if (v32)
    {
      CFRelease(v32);
    }

    CFStringGetCString(v33, buf, 300, 0x8000100u);
    if (v33)
    {
      CFRelease(v33);
    }

    fprintf(v18, "%s ", buf);
    v34 = CFHTTPMessageCopyVersion(a2);
  }

  v36 = v34;
  CFStringGetCString(v34, buf, 300, 0x8000100u);
  if (v36)
  {
    CFRelease(v36);
  }

  v51 = v17;
  v53 = a3;
  fprintf(v18, "%s\n", buf);
  v37 = CFHTTPMessageCopyAllHeaderFields(a2);
  Count = CFDictionaryGetCount(v37);
  v39 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v40 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(v37, v39, v40);
  if (Count < 1)
  {
    if (!v39)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v41 = v39;
    v42 = v40;
    do
    {
      v43 = *v41++;
      CFStringGetCString(v43, buf, 300, 0x8000100u);
      fprintf(v18, "%s: ", buf);
      v44 = *v42++;
      CFStringGetCString(v44, buf, 300, 0x8000100u);
      fprintf(v18, "%s\n", buf);
      --Count;
    }

    while (Count);
  }

  free(v39);
LABEL_46:
  if (v40)
  {
    free(v40);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  fputs("\nWARNING: this is not an exact copy of the headers on the wire\n", v18);
  fclose(v18);
  v45 = debug_begin_writing_http_message_to_file_dumpdir;
  v46 = getpid();
  snprintf(__filename, 0x400uLL, "%s/httpdebug.pid%d.tx%04ld.seq%08ld.%p.%s.%s.body.bin", v45, v46, *(a1 + 272), v54, a1, v52, v51);
  v47 = fopen(__filename, "w");
  if (v47)
  {
    *v53 = v47;
    return 1;
  }

  v49 = mmcs_logging_logger_default(0, v48);
  result = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open %s", __filename);
    v30 = mmcs_logging_logger_default(v28, v50);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_57:
      if (v28)
      {
        CFRelease(v28);
      }

      return 0;
    }

    *buf = 138543362;
    *&buf[4] = v28;
LABEL_56:
    _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_57;
  }

  return result;
}

CFErrorRef mmcs_http_context_copy_cferror_for_http_status_not_ok(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 408);
  if (v2)
  {
    CFRetain(v2);
    v3 = *(a1 + 408);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (*(a1 + 68))
    {
      http_status = metricsinfo__get_http_status(a1 + 24, v5);
      v8 = CFStringCreateWithFormat(v4, 0, @"The server returned HTTP status code: %ld", http_status);
    }

    else
    {
      v8 = @"The server did not return an HTTP status code";
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE30], v8);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v8);
    if (v8)
    {
      CFRelease(v8);
    }

    if (*(a1 + 68))
    {
      v10 = metricsinfo__get_http_status(a1 + 24, v9);
    }

    else
    {
      v10 = -1;
    }

    *valuePtr = v10;
    v11 = CFNumberCreate(v4, kCFNumberCFIndexType, valuePtr);
    CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPStatusKey", v11);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v3)
    {
      CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPBodyKey", v3);
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v14 = CFStringCreateWithBytes(v4, BytePtr, Length, 0x8000100u, 0);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPBodyStringKey", v14);
        CFRelease(v15);
      }
    }

    v16 = *(a1 + 328);
    if (v16)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE78], v16);
    }

    v17 = *(a1 + 336);
    if (v17)
    {
      mmcs_user_info_add_http_message_request(Mutable, v17);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v18 = *(a1 + 292);
  v19 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v21 = v19;
  v22 = *(a1 + 68);
  if (!v18)
  {
    if (!v22)
    {
      v37 = mmcs_logging_logger_default(v19, v20);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 6;
        if (!v21)
        {
          goto LABEL_57;
        }

        goto LABEL_81;
      }

      v38 = CFStringCreateWithFormat(v4, 0, @"mmcs http context <%p> does not have http status", a1);
      v40 = mmcs_logging_logger_default(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v38;
        _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
      }

      v26 = 6;
      if (v38)
      {
        goto LABEL_79;
      }

LABEL_80:
      if (!v21)
      {
        goto LABEL_57;
      }

      goto LABEL_81;
    }

    v27 = mmcs_http_context_copy_vendor_name(a1);
    if (v27)
    {
      v29 = v27;
      v30 = CFHTTPMessageCopyRequestMethod(*(a1 + 336));
      if (v30)
      {
        v31 = v30;
        v32 = mmcs_report_copy_vendor_retryable_http_errors(v29, v30);
        CFRelease(v29);
        v29 = v31;
      }

      else
      {
        v32 = 0;
      }

      CFRelease(v29);
      v45 = metricsinfo__get_http_status(a1 + 24, v46);
      if (v32)
      {
        if (mmcs_index_set_contains_index(v32, v45))
        {
          v26 = 16;
        }

        else
        {
          v26 = 6;
        }

        C3BaseRelease(v32);
        goto LABEL_75;
      }
    }

    else
    {
      v45 = metricsinfo__get_http_status(a1 + 24, v28);
    }

    if (v45 == 503 || v45 == 500)
    {
      v26 = 16;
    }

    else
    {
      v26 = 6;
    }

LABEL_75:
    if (v26 == 16 && v45 == 503)
    {
      v48 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"Retry-After");
      if (v48)
      {
        v38 = v48;
        CFDictionarySetValue(v21, @"Retry-After", v48);
        CFDictionarySetValue(v21, @"kMMCSErrorRetryClientInitiatedKey", *MEMORY[0x277CBED10]);
        v26 = 16;
LABEL_79:
        CFRelease(v38);
        goto LABEL_80;
      }

      v26 = 16;
      if (!v21)
      {
        goto LABEL_57;
      }

LABEL_81:
      if (CFDictionaryGetCount(v21) < 1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_80;
  }

  if (!v22)
  {
    v33 = mmcs_logging_logger_default(v19, v20);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = CFStringCreateWithFormat(v4, 0, @"mmcs http context <%p> does not have http status", a1);
      v36 = mmcs_logging_logger_default(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v34;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    goto LABEL_42;
  }

  v23 = metricsinfo__get_http_status(a1 + 24, v20);
  if (v23 != 503)
  {
    if (v23 == 401)
    {
      v26 = 14;
      if (!v21)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v23 == 330)
    {
      v24 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"X-Apple-MMe-Host");
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(v21, @"X-Apple-MMe-Host", v24);
        CFRelease(v25);
      }

      v26 = 15;
      if (!v21)
      {
        goto LABEL_57;
      }

LABEL_54:
      if (CFDictionaryGetCount(v21) <= 0)
      {
LABEL_56:
        CFRelease(v21);
        goto LABEL_57;
      }

LABEL_55:
      CFDictionarySetValue(Mutable, @"kMMCSErrorSupplementalDictionaryKey", v21);
      goto LABEL_56;
    }

LABEL_42:
    v26 = 6;
    if (!v21)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v41 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"Retry-After");
  if (v41)
  {
    v42 = v41;
    CFDictionarySetValue(v21, @"Retry-After", v41);
    CFDictionarySetValue(v21, @"kMMCSErrorRetryClientInitiatedKey", *MEMORY[0x277CBED10]);
    CFRelease(v42);
  }

  v26 = 16;
  if (v21)
  {
    goto LABEL_54;
  }

LABEL_57:
  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", v26, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

const void *mmcs_http_context_copy_response_body(uint64_t a1)
{
  result = *(a1 + 408);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 408);
  }

  return result;
}

CFStringRef mmcs_item_copy_token_header_value(char *cStr, char *a2, const char *a3, uint64_t a4, int a5)
{
  if (!cStr)
  {
    return 0;
  }

  v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v10 = CFStringCreateWithCString(0, a3, 0x8000100u);
  if (a2)
  {
    v11 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v11)
    {
      v12 = v11;
      a2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @" %@", v11);
      CFRelease(v12);
    }

    else
    {
      a2 = 0;
    }
  }

  v14 = &stru_2868BF3F0;
  if (a2)
  {
    v14 = a2;
  }

  if (a5)
  {
    if (a4 < 1)
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@ %lld %@", v9, v14, a4, v10);
  }

  else
  {
    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@ %@", v9, v14, v10);
  }

  v13 = v15;
  if (v9)
  {
LABEL_14:
    CFRelease(v9);
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v13;
}

double mmcs_http_context_enqueued_time(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 248))
  {
    mmcs_http_context_enqueued_time_cold_1();
  }

  return *(a1 + 256);
}

uint64_t mmcs_http_context_copy_uuid(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    CFRetain(*(a1 + 304));
  }

  return v1;
}

__CFHTTPMessage *mmcs_http_context_copy_request_url(uint64_t a1)
{
  result = *(a1 + 336);
  if (result)
  {
    return CFHTTPMessageCopyRequestURL(result);
  }

  return result;
}

CFHashCode mmcs_http_context_uuid_hash_code(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 304)) != 0)
  {
    return CFHash(v1);
  }

  else
  {
    return 0;
  }
}

const void *mmcs_http_context_copy_error(uint64_t a1)
{
  result = *(a1 + 328);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 328);
  }

  return result;
}

__CFHTTPMessage *mmcs_http_context_copy_header_field_value(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 392);
  if (result)
  {
    return CFHTTPMessageCopyHeaderFieldValue(result, a2);
  }

  return result;
}

uint64_t mmcs_http_msg_add_items_token_header(__CFHTTPMessage *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !a2 || !a3)
  {
    return 0;
  }

  v8 = a4;
  v10 = 0;
  v11 = a3;
  while (v8)
  {
    if (mmcs_item_needs_put(v11))
    {
      goto LABEL_11;
    }

    ++v10;
    v11 += 416;
    if (a2 == v10)
    {
      v12 = 0;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_11:
  v12 = (a3 + 416 * v10);
LABEL_12:

  return mmcs_http_msg_add_item_token_header(a1, v12, v8, a5);
}

uint64_t mmcs_http_msg_add_item_token_header(__CFHTTPMessage *a1, char **a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = a4;
  v7 = 8;
  if (!a3)
  {
    v7 = 6;
  }

  v8 = a2[v7];
  v9 = a2[1];
  v10 = mmcs_item_padded_length(a2);

  return mmcs_http_msg_add_auth_header(a1, v4, v8, v9, v10, v5);
}

uint64_t mmcs_http_msg_add_items_token_header_simulcast(__CFHTTPMessage *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2)
  {
    if (a1)
    {
      v5 = a3;
      if (a3)
      {
        for (i = a2; !mmcs_item_needs_put(i); i += 416)
        {
          if (!--v5)
          {
            return 0;
          }
        }

        v7 = CFStringCreateWithCString(0, *(i + 8), 0x8000100u);
        CFHTTPMessageSetHeaderFieldValue(a1, @"x-apple-mmcs-auth", v7);
        return 1;
      }
    }
  }

  return result;
}

uint64_t mmcs_http_msg_add_auth_header(__CFHTTPMessage *a1, char *a2, char *CStringDescription, const char *a4, uint64_t a5, int a6)
{
  v6 = 0;
  v23 = *MEMORY[0x277D85DE8];
  if (!a2 || !a4)
  {
    return v6;
  }

  v12 = mmcs_file_signature_to_hexstring(a2);
  if (CStringDescription)
  {
    CStringDescription = XCFDataCreateCStringDescription(CStringDescription);
  }

  v13 = mmcs_item_copy_token_header_value(v12, CStringDescription, a4, a5, a6);
  if (v13)
  {
    v15 = v13;
    CFHTTPMessageSetHeaderFieldValue(a1, @"x-apple-mmcs-auth", v13);
    CFRelease(v15);
    v6 = 1;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = mmcs_logging_logger_default(0, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to create token header for item %s", v12);
      v20 = mmcs_logging_logger_default(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v6 = 0;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  free(v12);
LABEL_8:
  if (CStringDescription)
  {
    free(CStringDescription);
  }

  return v6;
}

void mmcs_http_context_set_perform_target(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 608);
  if (v3 != cf)
  {
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 608) = 0;
    if (cf)
    {
      *(a1 + 608) = cf;

      C3BaseRetain(cf);
    }
  }
}

__CFString *mmcs_http_class_description(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"unknown mmcs_http_class";
  }

  else
  {
    return off_279845628[a1];
  }
}

const void *mmcs_http_class_for_string(const void *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1) && !CFEqual(v1, @"mmcs_http_class_none"))
    {
      return (2 * (CFEqual(v1, @"mmcs_http_class_nsurlsession") != 0));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_http_class_default_value(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"http_class", @"com.apple.mmcs");
  if (v2)
  {
    v3 = v2;
    TypeID = CFStringGetTypeID();
    v5 = CFGetTypeID(v3);
    if (TypeID == v5)
    {
      v7 = mmcs_http_class_for_string(v3);
      if (v7)
      {
        v9 = v7;
        CFRelease(v3);
        return v9;
      }

      v14 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring user default for http_class. Unknown http class %@", v3);
        v13 = mmcs_logging_logger_default(v11, v15);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v18 = v11;
LABEL_11:
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_12:
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    else
    {
      v10 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring user default for http_class. Expect string value, got %@", v3);
        v13 = mmcs_logging_logger_default(v11, v12);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v18 = v11;
        goto LABEL_11;
      }
    }

    CFRelease(v3);
  }

  return a1;
}

double mmcs_http_total_timeout(double DoubleValue)
{
  v2 = CFPreferencesCopyAppValue(@"http.totalTimeout", @"com.apple.mmcs");
  if (v2)
  {
    v3 = v2;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      DoubleValue = CFStringGetDoubleValue(v3);
    }

    else
    {
      v5 = CFNumberGetTypeID();
      if (v5 == CFGetTypeID(v3))
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr))
        {
          DoubleValue = valuePtr;
        }
      }
    }

    CFRelease(v3);
  }

  return DoubleValue;
}

uint64_t mmcs_http_context_allocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  switch(a2)
  {
    case 3:
      v6 = &mmcs_http_class_curlGetTypeID_typeID;
      v7 = &kmmcs_http_class_curlContextClass;
      break;
    case 2:
      v6 = &mmcs_http_class_nsurlsessionGetTypeID_typeID;
      v7 = &kmmcs_http_class_nsurlsessionContextClass;
      break;
    case 1:
      v6 = &mmcs_http_class_cfhttpGetTypeID_typeID;
      v7 = &kmmcs_http_class_cfhttpContextClass;
      break;
    default:
      goto LABEL_11;
  }

  v8 = C3TypeRegister(v6, v7);
  if (!v8)
  {
LABEL_11:
    mmcs_http_context_allocate_cold_1();
  }

  result = C3TypeCreateInstance_(0, v8, a3 + 632);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 624) = result + 632;
    *a1 = result;
    return 1;
  }

  return result;
}

CFStringRef _mmcs_http_context_init(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v4 = _mmcs_http_transactionIndex++;
  *(a1 + 272) = v4;
  v5 = *(a2 + 144);
  v6 = a1 + 24;
  if (v5 == 0.0)
  {
    metricsinfo__clear_enqueued_time(v6);
  }

  else
  {
    metricsinfo__set_enqueued_time(v6, v5);
  }

  *(a1 + 80) = 0;
  *(a1 + 280) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  *(a1 + 336) = CFRetain(*(a2 + 8));
  v8 = *(a2 + 16);
  if (!v8)
  {
    _mmcs_http_context_init_cold_1();
  }

  *(a1 + 368) = C3BaseRetain(v8);
  v9 = *a2;
  *(a1 + 264) = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 376) = *(a2 + 24);
  *(a1 + 288) = 0;
  *(a1 + 290) = 0;
  *(a1 + 56) = 0;
  *(a1 + 292) = 1;
  *(a1 + 294) = 0;
  metricsinfo__clear_http_status(a1 + 24);
  v10 = *MEMORY[0x277CBECE8];
  *(a1 + 304) = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  *(a1 + 520) = *(a2 + 80);
  v11 = *(a2 + 104);
  *(a1 + 536) = *(a2 + 96);
  *(a1 + 552) = v11;
  *(a1 + 560) = 0;
  v12 = *(a2 + 112);
  *(a1 + 544) = *(a2 + 120);
  *(a1 + 568) = *(a2 + 128);
  *(a1 + 576) = v12;
  *(a1 + 352) = *(a2 + 40);
  *(a1 + 496) = *(a2 + 56);
  *(a1 + 512) = *(a2 + 72);
  *(a1 + 296) = 0;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 136) = -1;
  v13 = *(a2 + 152);
  if (v13)
  {
    os_retain(v13);
    v14 = *(a2 + 152);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 584) = v14;
  *(a1 + 592) = voucher_copy();
  *(a1 + 616) = 0;
  metricsinfo__clear_response_size(a1 + 24);
  metricsinfo__clear_timed_out(a1 + 24);
  metricsinfo__clear_bytes_written(a1 + 24);
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  metricsinfo__clear_bytes_write_buffered(a1 + 24);
  metricsinfo__clear_actual_bytes_written(a1 + 24);
  v15 = *(a1 + 304);
  if (v15)
  {
    result = CFUUIDCreateString(v10, v15);
    if (!result)
    {
      return result;
    }

    v16 = result;
    CFHTTPMessageSetHeaderFieldValue(*(a2 + 8), @"x-apple-request-uuid", result);
    CFRelease(v16);
  }

  *(a1 + 408) = CFDataCreateMutable(v10, 0);
  return 1;
}

uint64_t mmcs_http_context_create(void *a1, unsigned int a2, uint64_t a3)
{
  v8 = 0;
  if (!a1)
  {
    mmcs_http_context_create_cold_4();
  }

  if (a2 - 4 <= 0xFFFFFFFC)
  {
    mmcs_http_context_create_cold_3();
  }

  v3 = &callbacks[15 * a2];
  if (!*v3)
  {
    mmcs_http_context_create_cold_2();
  }

  if (!v3[1])
  {
    mmcs_http_context_create_cold_1();
  }

  result = (*v3)(&v8);
  if (result)
  {
    v7 = (v3[1])(v8, a3);
    result = v8;
    if (v7)
    {
      *a1 = v8;
      return 1;
    }

    else if (v8)
    {
      C3BaseRelease(v8);
      return 0;
    }
  }

  return result;
}

void mmcs_http_context_finalize(uint64_t a1)
{
  v2 = callbacks[15 * *(a1 + 16) + 14];
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    C3BaseRelease(v3);
    *(a1 + 608) = 0;
  }

  v4 = *(a1 + 600);
  if (v4)
  {
    C3BaseRelease(v4);
    *(a1 + 600) = 0;
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 264) = 0;
  v6 = *(a1 + 336);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 336) = 0;
  v7 = *(a1 + 368);
  if (v7)
  {
    C3BaseRelease(v7);
  }

  *(a1 + 368) = 0;
  v8 = *(a1 + 392);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 392) = 0;
  v9 = *(a1 + 328);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 328) = 0;
  v10 = *(a1 + 304);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 304) = 0;
  v11 = *(a1 + 488);
  if (v11)
  {
    mmcs_metrics_http_info_release(v11);
    *(a1 + 488) = 0;
  }

  v12 = *(a1 + 408);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 408) = 0;
  v13 = *(a1 + 424);
  if (v13)
  {
    fclose(v13);
    *(a1 + 424) = 0;
  }

  v14 = *(a1 + 432);
  if (v14)
  {
    fclose(v14);
    *(a1 + 432) = 0;
  }

  metricsinfo__set_request_url_with_cfstring(a1 + 24, 0);
  metricsinfo__set_http_error_with_cferror(a1 + 24, 0);
  socketinfo__set_interface_identifier_with_c_string(a1 + 440, 0);
  socketinfo__set_peer_address_with_c_string(a1 + 440, 0);
  *(a1 + 520) = 0;
  *(a1 + 576) = 0;
  v15 = *(a1 + 584);
  if (v15)
  {
    os_release(v15);
  }

  *(a1 + 584) = 0;
  v16 = *(a1 + 592);
  if (v16)
  {
    os_release(v16);
  }

  *(a1 + 592) = 0;
  v17 = *(a1 + 616);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 616) = 0;
}

void mmcs_http_context_invalidate(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  v2 = callbacks[15 * *(a1 + 16) + 13];
  if (v2)
  {
    v2(a1);
  }

  mmcs_http_context_cleanup_response(a1);
  os_activity_scope_leave(&v3);
}

void mmcs_http_context_cleanup_response(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v11);
  if (*(a1 + 56))
  {
    v4 = callbacks[15 * *(a1 + 16) + 12];
    if (v4)
    {
      v4(a1);
    }

    v5 = *(a1 + 392);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 392) = 0;
    v6 = *(a1 + 408);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 408) = 0;
  }

  else
  {
    v7 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"called before http transactionComplete");
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  os_activity_scope_leave(&v11);
}

void mmcs_http_context_set_error(uint64_t a1, __CFError *cf)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 328);
  if (v3 != cf)
  {
    if (v3)
    {
      v5 = mmcs_cferror_copy_description(v3);
      v6 = mmcs_cferror_copy_description(cf);
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping error %@ with %@", v5, v6);
        v11 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v9;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      v12 = *(a1 + 328);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 328) = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (!cf)
    {
      goto LABEL_89;
    }

    v13 = gMMCS_DebugLevel;
    if (gMMCS_DebugLevel < 3)
    {
LABEL_88:
      CFRetain(cf);
LABEL_89:
      v56 = cf;
LABEL_90:
      *(a1 + 328) = v56;
      return;
    }

    v14 = CFLocaleCreate(0, @"en_US");
    v15 = *MEMORY[0x277CBECE8];
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v14);
    v17 = DateFormatFromTemplate;
    if (v14 && DateFormatFromTemplate)
    {
      v18 = CFDateFormatterCreate(v15, v14, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      v19 = v18;
      if (v18)
      {
        CFDateFormatterSetFormat(v18, v17);
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    CFRelease(v14);
    v20 = v19;
LABEL_22:
    if (v17)
    {
      CFRelease(v17);
    }

    Mutable = CFStringCreateMutable(v15, 0);
    v22 = Mutable;
    if (!Mutable)
    {
LABEL_76:
      v50 = CFErrorCopyUserInfo(cf);
      MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, v50);
      v52 = MutableCopy;
      if (v22 && MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, @"debug description:mmcs_http", v22);
        Domain = CFErrorGetDomain(cf);
        Code = CFErrorGetCode(cf);
        v55 = CFErrorCreate(v15, Domain, Code, v52);
      }

      else
      {
        v55 = 0;
        v56 = 0;
        if (!MutableCopy)
        {
          goto LABEL_81;
        }
      }

      CFRelease(v52);
      v56 = v55;
LABEL_81:
      if (v50)
      {
        CFRelease(v50);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v56)
      {
        goto LABEL_90;
      }

      goto LABEL_88;
    }

    v23 = *(a1 + 16);
    if (v23 > 3)
    {
      v24 = @"unknown mmcs_http_class";
    }

    else
    {
      v24 = off_279845628[v23];
    }

    CFStringAppendFormat(Mutable, 0, @" class:%@", v24);
    v26 = *(a1 + 336);
    if (v26)
    {
      v27 = CFHTTPMessageCopyRequestURL(v26);
      if (v27)
      {
        v28 = v27;
        v29 = CFURLGetString(v27);
        CFStringAppendFormat(v22, 0, @" url:%@", v29);
        CFRelease(v28);
      }

      if (v13 != 3)
      {
        v30 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 336), @"x-apple-mme-dsid");
        if (v30)
        {
          v31 = v30;
          CFStringAppendFormat(v22, 0, @" x-apple-mme-dsid:%@", v30);
          CFRelease(v31);
        }

        v32 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 336), @"x-apple-mmcs-auth");
        if (v32)
        {
          v33 = v32;
          CFStringAppendFormat(v22, 0, @" x-apple-mmcs-auth:%@", v32);
          CFRelease(v33);
        }

LABEL_38:
        v35 = *(a1 + 80);
        if (v35 == 0.0)
        {
          CFStringAppend(v22, @" start: (none)");
        }

        else
        {
          if (!v20)
          {
            if (*(a1 + 128) != 0.0)
            {
LABEL_49:
              v34 = 1;
              goto LABEL_50;
            }

LABEL_48:
            CFStringAppend(v22, @" stop: (none)");
            goto LABEL_49;
          }

          StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v15, v20, v35);
          if (StringWithAbsoluteTime)
          {
            v37 = StringWithAbsoluteTime;
            CFStringAppend(v22, @" start:");
            CFStringAppend(v22, v37);
            CFRelease(v37);
          }
        }

        v38 = *(a1 + 128);
        if (v38 != 0.0)
        {
          if (v20)
          {
            v39 = CFDateFormatterCreateStringWithAbsoluteTime(v15, v20, v38);
            if (v39)
            {
              v40 = v39;
              CFStringAppend(v22, @" stop:");
              CFStringAppend(v22, v40);
              CFRelease(v40);
            }
          }

          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    else if (v13 != 3)
    {
      goto LABEL_38;
    }

    v34 = 0;
LABEL_50:
    if (*(a1 + 68))
    {
      http_status = metricsinfo__get_http_status(a1 + 24, v25);
      CFStringAppendFormat(v22, 0, @" httpStatus:%d", http_status);
    }

    if (*(a1 + 152))
    {
      bytes_written = metricsinfo__get_bytes_written(a1 + 24, v25);
      CFStringAppendFormat(v22, 0, @" bytesWritten:%lld", bytes_written);
    }

    if (*(a1 + 208))
    {
      v43 = metricsinfo__get_bytes_read(a1 + 24, v25);
      CFStringAppendFormat(v22, 0, @" bytesRead:%lld", v43);
    }

    if (v34)
    {
      v44 = *(a1 + 304);
      if (v44)
      {
        v45 = CFUUIDCreateString(v15, v44);
        if (v45)
        {
          v46 = v45;
          CFStringAppend(v22, @" uuid:");
          CFStringAppend(v22, v46);
          CFRelease(v46);
        }
      }
    }

    v47 = *(a1 + 296);
    if (v47 > 3)
    {
      v48 = @"meandering";
    }

    else
    {
      v48 = streamStatusString[v47];
    }

    CFStringAppendFormat(v22, 0, @" streamState:%@", v48);
    if (*(a1 + 464))
    {
      CFStringAppendFormat(v22, 0, @" interfaceIdentifier:%s", *(a1 + 464));
    }

    if (*(a1 + 472))
    {
      CFStringAppendFormat(v22, 0, @" destination:%s:%u", *(a1 + 472), *(a1 + 480));
    }

    if (*(a1 + 208))
    {
      CFStringAppend(v22, @" c_finished");
    }

    if (*(a1 + 56))
    {
      CFStringAppend(v22, @" transactionComplete");
    }

    if (*(a1 + 60) && metricsinfo__get_timed_out(a1 + 24, v49))
    {
      CFStringAppend(v22, @" timedOut");
    }

    if (*(a1 + 290))
    {
      CFStringAppend(v22, @" cancelled");
    }

    goto LABEL_76;
  }
}

uint64_t mmcs_http_context_update_voucher(uint64_t a1)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    os_release(v2);
  }

  *(a1 + 592) = 0;
  result = voucher_copy();
  *(a1 + 592) = result;
  return result;
}

uint64_t mmcs_http_context_validate_request_uuid_with_response(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 292))
  {
    return 1;
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    CFRetain(*(a1 + 304));
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v3);
    if (v5)
    {
      v7 = v5;
      v8 = *(a1 + 392);
      if (v8 && (v8 = CFHTTPMessageCopyHeaderFieldValue(v8, @"x-apple-request-uuid")) != 0)
      {
        v9 = v8;
        result.location = 0;
        result.length = 0;
        v10 = CFLocaleCreate(0, @"en_US");
        v33.length = CFStringGetLength(v9);
        v11 = 1;
        v33.location = 0;
        v12 = CFStringFindWithOptionsAndLocale(v9, v7, v33, 1uLL, v10, &result);
        if (!v12)
        {
          v14 = mmcs_logging_logger_default(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = CFStringCreateWithFormat(v4, 0, @"Context %p expected header x-apple-request-uuid: %@ got %@", a1, v7, v9);
            v17 = mmcs_logging_logger_default(v15, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v15;
              _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }

          v11 = 0;
        }

        if (v10)
        {
          CFRelease(v10);
        }

        CFRelease(v9);
      }

      else
      {
        v21 = mmcs_logging_logger_default(v8, v6);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = CFStringCreateWithFormat(v4, 0, @"Context %p expected header x-apple-request-uuid: %@", a1, v7);
          v24 = mmcs_logging_logger_default(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LODWORD(result.location) = 138543362;
            *(&result.location + 4) = v22;
            _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
          }

          if (v22)
          {
            CFRelease(v22);
          }
        }

        v11 = 0;
      }
    }

    else
    {
      v25 = mmcs_logging_logger_default(0, v6);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        goto LABEL_35;
      }

      v7 = CFStringCreateWithFormat(v4, 0, @"Context %p could not create string of request uuid", a1);
      v27 = mmcs_logging_logger_default(v7, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LODWORD(result.location) = 138543362;
        *(&result.location + 4) = v7;
        _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
      }

      v11 = 0;
      if (!v7)
      {
        goto LABEL_35;
      }
    }

    CFRelease(v7);
LABEL_35:
    CFRelease(v3);
    return v11;
  }

  v18 = mmcs_logging_logger_default(a1, a2);
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Context %p has no request uuid", a1);
  v20 = mmcs_logging_logger_default(v3, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LODWORD(result.location) = 138543362;
    *(&result.location + 4) = v3;
    _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
  }

  v11 = 0;
  if (v3)
  {
    goto LABEL_35;
  }

  return v11;
}

char *mmcs_http_context_make_metrics(char *result, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    result = mmcs_metrics_http_info_create(a2, a3, a4, a5);
    *(v5 + 488) = result;
  }

  return result;
}

void mmcs_http_context_mark_as_writing(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  v2 = callbacks[15 * *(a1 + 16) + 5];
  if (v2)
  {
    v2(a1);
  }

  *(a1 + 296) = 2;
  os_activity_scope_leave(&v3);
}

void mmcs_http_context_did_stop_with_error(uint64_t a1, uint64_t a2)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v4 = callbacks[15 * *(a1 + 16) + 10];
  if (v4)
  {
    v4(a1, a2);
  }

  os_activity_scope_leave(&v5);
}

void mmcs_http_context_should_cancel(_BYTE *result, __CFError *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (result && !result[288] && !result[289] && !result[290])
  {
    v4 = mmcs_logging_logger_default(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p should cancel", result);
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

    result[290] = 1;
    if (a2)
    {
      mmcs_http_context_set_error(result, a2);
    }

    mmcs_http_context_did_stop_with_error(result, a2);
    mmcs_http_context_transaction_complete(result, v8);
  }
}

void mmcs_http_context_transaction_complete(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p already complete", a1);
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.opaque[0]) = 138543362;
        *(buf.opaque + 4) = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else
  {
    *(a1 + 128) = CFAbsoluteTimeGetCurrent();
    *(a1 + 56) = 1;
    v7 = *(a1 + 432);
    if (v7)
    {
      fclose(v7);
      *(a1 + 432) = 0;
    }

    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(*(a1 + 584), &buf);
    v8 = callbacks[15 * *(a1 + 16) + 11];
    if (v8)
    {
      v8(a1);
    }

    os_activity_scope_leave(&buf);
  }
}