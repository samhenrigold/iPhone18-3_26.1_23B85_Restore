void log_item_applier(uint64_t a1, __CFString *theString)
{
  if (CFStringGetLength(theString))
  {
    CFStringAppendFormat(theString, 0, @", %lld", *(a1 + 40));
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"%lld", *(a1 + 40));
  }
}

void _log_error_0(__CFError *a1, unsigned int *a2)
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

void mmcs_put_request_finalize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (*(v2 + 88))
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_2577D8000, v3, OS_LOG_TYPE_FAULT, "progressTimer must always be invalidated/freed first to break retain cycle, invariant violation.", v21, 2u);
    }
  }

  v4 = *(v2 + 96);
  if (v4)
  {
    mmcs_http_context_invalidate(v4);
    v5 = *(v2 + 96);
    if (v5)
    {
      C3BaseRelease(v5);
    }

    *(v2 + 96) = 0;
  }

  v6 = *(v2 + 104);
  if (v6)
  {
    CFRelease(v6);
  }

  *(v2 + 104) = 0;
  v7 = *(v2 + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  *(v2 + 24) = 0;
  v8 = *(v2 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  *(v2 + 32) = 0;
  v9 = *(v2 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  *(v2 + 40) = 0;
  v10 = *(v2 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v2 + 48) = 0;
  v11 = *(v2 + 56);
  if (v11)
  {
    CFRelease(v11);
  }

  *(v2 + 56) = 0;
  v12 = *(v2 + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  *(v2 + 72) = 0;
  v13 = *(v2 + 64);
  if (v13)
  {
    CFSetApplyFunction(v13, dealloc_chunk_references_0, 0);
    v14 = *(v2 + 64);
    if (v14)
    {
      CFRelease(v14);
    }

    *(v2 + 64) = 0;
  }

  v15 = *(v2 + 80);
  if (v15)
  {
    mmcs_put_state_dealloc(v15);
    *(v2 + 80) = 0;
  }

  v16 = *(v2 + 128);
  if (v16)
  {
    CFSetApplyFunction(v16, dealloc_put_completes, 0);
    v17 = *(v2 + 128);
    if (v17)
    {
      CFRelease(v17);
    }

    *(v2 + 128) = 0;
  }

  if (*v2)
  {
    CFRelease(*v2);
  }

  *v2 = 0;
  if (*(v2 + 144))
  {
    v18 = 0;
    v19 = v2 + 152;
    do
    {
      mmcs_item_finalize(v19);
      ++v18;
      v19 += 416;
    }

    while (v18 < *(v2 + 144));
  }

  *(v2 + 144) = 0;
  v20 = *(v2 + 120);
  if (v20)
  {
    CFRelease(v20);
  }

  *(v2 + 120) = 0;
}

uint64_t mmcs_put_request_stop_with_error(uint64_t a1, CFErrorRef a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144))
  {
    return 0;
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (a2)
  {
    error = 0;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Put request was cancelled.");
    a2 = error;
  }

  CFRetain(a2);
  *(a1 + 152) = a2;
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 96), a2);
  v8 = *(a1 + 304);
  v9 = *(v8 + 80);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = *MEMORY[0x277CBECE8];
      do
      {
        if (gMMCS_DebugLevel >= 5)
        {
          v13 = mmcs_logging_logger_default(v6, v7);
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
          if (v14)
          {
            v16 = CFStringCreateWithFormat(v12, 0, @"canceling put container %u", v11);
            v18 = mmcs_logging_logger_default(v16, v17);
            v14 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
            if (v14)
            {
              *buf = 138543362;
              *&buf[4] = v16;
              _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v16)
            {
              CFRelease(v16);
            }
          }

          if (gMMCS_DebugLevel >= 5)
          {
            v19 = mmcs_logging_logger_default(v14, v15);
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
            if (v20)
            {
              v22 = CFStringCreateWithFormat(v12, 0, @"request's put state ref: %p", *(*(a1 + 304) + 80));
              v24 = mmcs_logging_logger_default(v22, v23);
              v20 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
              if (v20)
              {
                *buf = 138543362;
                *&buf[4] = v22;
                _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v22)
              {
                CFRelease(v22);
              }
            }

            if (gMMCS_DebugLevel >= 5)
            {
              v25 = mmcs_logging_logger_default(v20, v21);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = CFStringCreateWithFormat(v12, 0, @"container's put state: %p", **(*(*(v9 + 64) + 8 * v11) + 88));
                v28 = mmcs_logging_logger_default(v26, v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *&buf[4] = v26;
                  _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                if (v26)
                {
                  CFRelease(v26);
                }
              }
            }
          }
        }

        mmcs_container_cancel(*(*(v9 + 64) + 8 * v11++), *(a1 + 152));
      }

      while (v10 != v11);
      v8 = *(a1 + 304);
    }
  }

  CFSetApplyFunction(*(v8 + 128), mmcs_put_req_cancel_put_complete, *(a1 + 152));
  v29 = *(a1 + 304);
  for (i = *(v29 + 8); i < *(v29 + 144); i = *(v29 + 8))
  {
    v31 = (v29 + 416 * i + 152);
    if (CFSetGetValue(*(v29 + 56), v31) == v31)
    {
      mmcs_put_item_progress_make_done_error(*(a1 + 152), v32, buf);
      mmcs_put_request_set_progress_and_notify_items_like_item(a1, v31, buf);
    }

    ++*(*(a1 + 304) + 8);
    v29 = *(a1 + 304);
  }

  Count = CFSetGetCount(*v29);
  if (Count >= 1)
  {
    CFSetApplyFunction(**(a1 + 304), cancel_chunk_job, a1);
    CFSetRemoveAllValues(**(a1 + 304));
  }

  v34 = *(a1 + 192);
  if (v34 && mmcs_proxy_locator_is_locating(v34))
  {
    mmcs_proxy_locator_cancel(*(a1 + 192), v35);
LABEL_39:
    mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
    mmcs_put_request_context_cleanup(a1, *(a1 + 152));
    goto LABEL_40;
  }

  if (Count >= 1)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

  C3BaseRelease(a1);
  return 1;
}

uint64_t cancel_chunk_job(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  mmcs_put_item_progress_make_done_error(*(a2 + 152), a2, v6);
  mmcs_put_request_set_progress_and_notify_items_like_item(a2, v4, v6);

  return mmcs_chunk_job_cancel(a1);
}

void mmcs_put_request_append_description(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  context = *a1;
  *theString = v2;
  v16 = *(a1 + 32);
  theString[1] = (*(&v2 + 1) + 1);
  if (*(a1 + 16))
  {
    v4 = _mmcs_request_copy_description(v1);
    if (v4)
    {
      v5 = v4;
      mmcs_op_requestor_context_indent(a1);
      CFStringAppend(*(a1 + 16), v5);
      CFStringAppend(*(a1 + 16), @"\n");
      CFRelease(v5);
      v6 = *(v1 + 304);
      if (*v6)
      {
        Count = CFSetGetCount(*v6);
        v6 = *(v1 + 304);
        if (Count >= 1)
        {
          CFSetApplyFunction(*v6, _mmcs_chunk_job_append_description, &context);
          v6 = *(v1 + 304);
        }
      }

      v8 = *(v6 + 96);
      if (v8)
      {
        is_sending = mmcs_http_context_is_sending(v8);
        v6 = *(v1 + 304);
        if (is_sending)
        {
          *&context = *(v6 + 96);
          mmcs_http_context_append_description(&context);
          v6 = *(v1 + 304);
        }
      }

      v10 = *(v6 + 80);
      if (v10)
      {
        if (*(v10 + 8))
        {
          v11 = 0;
          do
          {
            *&context = *(*(v10 + 64) + 8 * v11);
            mmcs_put_container_append_description(&context);
            ++v11;
          }

          while (v11 < *(v10 + 8));
        }

        v12 = vaddq_s64(*(a1 + 32), v16);
        *(a1 + 32) = v12;
        if (v12.i64[1] >= 11)
        {
          mmcs_op_requestor_context_indent(&context);
          CFStringAppendFormat(theString[0], 0, @"<%ld more container(s)> enqueued\n", *(a1 + 40) - 10);
        }
      }

      v13 = *(*(v1 + 304) + 128);
      if (v13)
      {
        CFSetApplyFunction(v13, _mmcs_put_complete_append_description, &context);
      }
    }
  }
}

uint64_t mmcs_put_req_is_using_itemid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 304);
  if (*(v2 + 144))
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = 316;
    do
    {
      if (v4)
      {
        break;
      }

      if (*(v2 + v5 - 124) == *a2 && *(v2 + v5) != 7)
      {
        v4 = 1;
        *(a2 + 8) = 1;
        v2 = *(result + 304);
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 += 416;
    }

    while (v3 < *(v2 + 144));
  }

  return result;
}

void mmcs_put_section_req_is_using_itemid(uint64_t a1, void *valuePtr)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 304);
  if (*(v2 + 144) != 1)
  {
    mmcs_put_section_req_is_using_itemid_cold_1();
  }

  if (*(v2 + 316) != 7)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, valuePtr);
    if (v6)
    {
      v8 = v6;
      if (CFSetContainsValue(*(*(a1 + 304) + 72), v6))
      {
        *(valuePtr + 8) = 1;
      }

      CFRelease(v8);
    }

    else
    {
      v9 = mmcs_logging_logger_default(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CFStringCreateWithFormat(v5, 0, @"Failed to create itemId to test conflicting use.");
        v12 = mmcs_logging_logger_default(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 138543362;
          v14 = v10;
          _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }
  }
}

void mmcs_put_request_set_progress_and_notify_all_items_not_done(uint64_t result, uint64_t a2)
{
  v2 = *(result + 304);
  if (*(v2 + 144))
  {
    v5 = 0;
    v6 = 316;
    do
    {
      if (*(v2 + v6) != 7)
      {
        v7 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v7;
        v9 = *(a2 + 32);
        mmcs_put_request_set_progress_and_notify_item(result, (v2 + v6 - 164), v8);
        v2 = *(result + 304);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < *(v2 + 144));
  }
}

void mmcs_put_item_progress_make_done_error(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0xBFF0000000000000;
  *a3 = 7;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = a1;
  if (!a1)
  {
    v3 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL error expected");
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }
}

const void *mmcs_put_req_context_add_chunk_reference(uint64_t a1, const void *a2)
{
  result = CFSetGetValue(*(*(a1 + 304) + 64), a2);
  if (!result)
  {
    CFSetSetValue(*(*(a1 + 304) + 64), a2);
    return a2;
  }

  return result;
}

void **mmcs_put_req_context_get_chunk_reference_with_signature(uint64_t a1, const void *a2)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0uLL;
  v8[0] = 0;
  v9 = 0u;
  v4 = CKChunkSchemeAndSignatureSize();
  v8[1] = malloc_type_malloc(v4, 0x100004077774924uLL);
  v5 = CKChunkSchemeAndSignatureSize();
  memcpy(v8[1], a2, v5);
  *&v9 = 0;
  Value = CFSetGetValue(*(*(a1 + 304) + 64), v8);
  if (v8[1])
  {
    free(v8[1]);
  }

  if (Value == v8)
  {
    return 0;
  }

  else
  {
    return Value;
  }
}

void mmcs_put_item_progress_make_state(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0xBFF0000000000000;
  *a3 = a1;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  if (a1 == 7)
  {
    v3 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"a put item is done either with an error or a putReceipt");
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }
}

uint64_t mmcs_put_item_progress_make_state_progress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return result;
}

void mmcs_put_item_progress_make_done_success(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0xBFF0000000000000;
  *a3 = 7;
  if (!a1)
  {
    v7 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL putReceipt expected");
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v11, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  *(a3 + 16) = a1;
  *(a3 + 24) = a4;
  *(a3 + 32) = 0;
}

BOOL mmcs_put_request_has_items_not_done(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(v1 + 144);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 316);
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

  while (v5 == 7);
  return v5 != 7;
}

void mmcs_put_request_set_progress_and_notify_item(uint64_t a1, uint64_t *a2, int *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = *(a3 + 1);
  *buf = *a3;
  v27 = v6;
  v28 = *(a3 + 4);
  mmcs_item_set_put_progress(a2, buf, &v25 + 1, &v25);
  v7 = *(a3 + 4);
  if (*a3 != 7 && v7)
  {
    v7 = mmcs_cferror_copy_description(*(a3 + 4));
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying a put item state change %d with error %@.", *a3, v7);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v7)
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  if (mmcs_engine_get_sparse_block_size())
  {
    mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v25) | v25)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    Mutable = results_dictionary_for_item;
    v15 = *(a3 + 2);
    if (v15)
    {
      if (!results_dictionary_for_item)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v15 = *(a3 + 2);
      }

      CFDictionaryAddValue(Mutable, @"kMMCSPutReceipt", v15);
      if (*(a3 + 3) != 0.0)
      {
        *buf = *(a3 + 3);
        v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, buf);
        CFDictionaryAddValue(Mutable, @"kMMCSPutReceiptExpiry", v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    if (v7)
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      CFDictionaryAddValue(Mutable, @"kMMCSResultError", v7);
    }
  }

  else
  {
    Mutable = 0;
  }

  if (*a3 == 4)
  {
    if (*(a1 + 272))
    {
      v17 = *(a1 + 280);
      if (v17)
      {
        CFDictionaryAddValue(Mutable, @"kMMCSAuthorizeSimulcastResponse", v17);
        CFDictionaryAddValue(Mutable, @"kMMCSAuthorizeSimulcastResponseSignature", *(a1 + 288));
        *(a1 + 280) = 0;
      }
    }
  }

  if (HIBYTE(v25))
  {
    is_section = mmcs_put_request_is_section(a1);
    v20 = *(a1 + 40);
    v21 = *(*(a1 + 32) + 152);
    if (is_section)
    {
      MMCSEngineClientContextPutSectionProgress(v21, v20, *(*(a1 + 304) + 488), *a2, *a3, *(a3 + 2), v7);
    }

    else
    {
      v19.n128_u64[0] = *(a3 + 1);
      MMCSEngineClientContextPutItemProgress(v21, v20, a2[5], *a2, *a3, Mutable, v19);
    }
  }

  if (!v25)
  {
LABEL_35:
    if (!Mutable)
    {
      return;
    }

    goto LABEL_36;
  }

  v22 = mmcs_put_request_is_section(a1);
  v23 = *(a1 + 40);
  v24 = *(*(a1 + 32) + 152);
  if (v22)
  {
    MMCSEngineClientContextPutSectionDone(v24, v23, *(*(a1 + 304) + 488), *a2, Mutable);
    goto LABEL_35;
  }

  MMCSEngineClientContextPutItemDone(v24, v23, a2[5], *a2, Mutable);
  if (!Mutable)
  {
    return;
  }

LABEL_36:
  CFRelease(Mutable);
}

void mmcs_put_request_notify_all_items_with_pending_progress(void *result)
{
  v1 = result[38];
  if (*(v1 + 144))
  {
    v3 = 0;
    v4 = 316;
    do
    {
      if (*(v1 + v4) != 7)
      {
        mmcs_put_request_notify_item_with_pending_progress(result, v1 + v4 - 164);
        v1 = result[38];
      }

      ++v3;
      v4 += 416;
    }

    while (v3 < *(v1 + 144));
  }
}

void mmcs_put_request_notify_item_with_pending_progress(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 328))
  {
    *(a2 + 328) = 0;
    if (mmcs_engine_get_sparse_block_size())
    {
      mmcs_engine_get_sparse_block_size();
    }

    is_section = mmcs_put_request_is_section(a1);
    v6 = *(a2 + 164);
    if (is_section)
    {
      if (v6 == 7)
      {
        v7 = mmcs_logging_logger_default(is_section, v5);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"pending progress should never notify the done state or that an error has occurred");
        v10 = mmcs_logging_logger_default(v8, v9);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v19 = 138543362;
        v20 = v8;
LABEL_13:
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v19, 0xCu);
LABEL_14:
        if (v8)
        {
          CFRelease(v8);
        }

        return;
      }

      v13 = a1[5];
      v14 = *(a1[4] + 152);
      v15 = *(a1[38] + 488);
      v16 = *a2;

      MMCSEngineClientContextPutSectionProgress(v14, v13, v15, v16, v6, 0, 0);
    }

    else
    {
      if (v6 == 7)
      {
        v11 = mmcs_logging_logger_default(is_section, v5);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"pending progress should never notify the done state or that an error has occurred");
        v10 = mmcs_logging_logger_default(v8, v12);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v19 = 138543362;
        v20 = v8;
        goto LABEL_13;
      }

      results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
      v18.n128_u64[0] = *(a2 + 248);
      MMCSEngineClientContextPutItemProgress(*(a1[4] + 152), a1[5], *(a2 + 40), *a2, *(a2 + 164), results_dictionary_for_item, v18);
      if (results_dictionary_for_item)
      {

        CFRelease(results_dictionary_for_item);
      }
    }
  }
}

void mmcs_put_request_set_progress_and_notify_items_like_item(uint64_t a1, const void *a2, __int128 *a3)
{
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), a2);
  if (Value)
  {
    v6 = Value;
    v8 = a1;
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = *(a3 + 4);
    v12.length = CFArrayGetCount(Value);
    v12.location = 0;
    CFArrayApplyFunction(v6, v12, _mmcs_item_set_progress_and_notify_0, &v8);
  }
}

void _mmcs_item_set_progress_and_notify_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  v5[0] = *(a2 + 8);
  v5[1] = v4;
  v6 = *(a2 + 40);
  mmcs_put_request_set_progress_and_notify_item(v3, a1, v5);
}

void mmcs_put_request_set_progress_and_notify_items_with_signature_reference(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v44 = 0;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  key = a2;
  v22 = a3;
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), &key);
  if (Value)
  {
    v8 = Value;
    v9 = *(a4 + 16);
    *&context[1] = *a4;
    v46 = v9;
    v10 = *(a4 + 32);
    context[0] = a1;
    v47 = v10;
    v49.length = CFArrayGetCount(Value);
    v49.location = 0;
    CFArrayApplyFunction(v8, v49, _mmcs_item_set_progress_and_notify_0, context);
  }

  else
  {
    v11 = mmcs_file_signature_to_hexstring(a2);
    v13 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot notify; No items found with signature %s", v11);
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context[0]) = 138543362;
        *(context + 4) = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", context, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (v11)
    {
      free(v11);
    }
  }
}

void mmcs_put_request_set_progress_for_items_with_signature_reference(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v44 = 0;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  key = a2;
  v22 = a3;
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), &key);
  if (Value)
  {
    v8 = Value;
    v9 = *(a4 + 16);
    *&context[1] = *a4;
    v46 = v9;
    v10 = *(a4 + 32);
    context[0] = a1;
    v47 = v10;
    v49.length = CFArrayGetCount(Value);
    v49.location = 0;
    CFArrayApplyFunction(v8, v49, _mmcs_item_set_progress, context);
  }

  else
  {
    v11 = mmcs_file_signature_to_hexstring(a2);
    v13 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot notify; No items found with signature %s", v11);
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context[0]) = 138543362;
        *(context + 4) = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", context, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (v11)
    {
      free(v11);
    }
  }
}

void _mmcs_item_set_progress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3[0] = *(a2 + 8);
  v3[1] = v2;
  v4 = *(a2 + 40);
  mmcs_item_set_put_progress(a1, v3, 0, 0);
}

void mmcs_put_req_context_items_by_signature_description(char **a1, const __CFArray *a2, uint64_t *a3)
{
  if (mmcs_put_request_is_section(*a3))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  mmcs_item_items_by_signature_description(a1, a2, v5);
}

void mmcs_put_req_context_did_chunk_item(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"completed chunk job %p", a2);
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
    v9 = **(a1 + 304);
    if (v9 && (v9 = CFSetContainsValue(v9, a2), v9))
    {
      if (a2)
      {
        C3BaseRetain(a2);
        CFSetRemoveValue(**(a1 + 304), a2);
        cf = 0;
        v10 = *(a2 + 136);
        *(v10 + 256) = *(a2 + 224);
        v11 = *(a2 + 264);
        if (v11)
        {
          *&buf = 0;
          if (mmcs_chunking_profile_create(&buf, *(a2 + 256), v11))
          {
            if (buf)
            {
              if (*(v10 + 112))
              {
                mmcs_put_req_context_did_chunk_item_cold_1();
              }

              *(v10 + 112) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &kC3BaseArrayCallBacks);
              v12 = buf;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            if (buf)
            {
              C3BaseRelease(buf);
            }

            v12 = 0;
            *&buf = 0;
          }

          v20 = *(v10 + 112);
          if (v20)
          {
            CFArrayAppendValue(v20, v12);
            v12 = buf;
          }

          if (v12)
          {
            C3BaseRelease(v12);
          }
        }

        *(v10 + 128) = *(a2 + 248);
        *(a2 + 248) = 0;
        v21 = *(a2 + 280);
        if (v21)
        {
          CFRetain(v21);
          v23 = *(a2 + 280);
LABEL_35:
          cf = v23;
          goto LABEL_36;
        }

        v36 = CKFileDigestResultsFileVerificationKey();
        mmcs_item_set_file_verification_key(v10, v36);
        v37 = CKFileDigestResultsFileLength();
        v43 = v37;
        if (*(a2 + 256))
        {
          if (v37 < 0)
          {
            v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 17, @"Calculated item size was too large (%llu) for item %lld", v38, v39, v40, v41, v42, v37, *(*(a2 + 136) + 40));
            goto LABEL_35;
          }

          mmcs_engine_add_bytes_chunked(*(a2 + 144), v37);
          v44 = mmcs_engine_commit_if_over_threshold(*(a2 + 144));
          v46 = mmcs_logging_logger_default(v44, v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Got %llu chunks for %lld", *(a2 + 256), *(*(a2 + 136) + 40));
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
        }

        if (mmcs_put_req_context_init_item_with_chunks(a1, v10, v43, *(a2 + 256), &cf))
        {
          *&buf = 2;
          *(&buf + 1) = 0x3FF0000000000000;
          v59 = 0;
          v60 = 0;
          v58 = 0;
          mmcs_put_request_set_progress_and_notify_items_like_item(a1, v10, &buf);
          if (gMMCS_DebugLevel >= 5)
          {
            v50 = CFCopyDescription(*(v10 + 280));
            v51 = v50;
            if (gMMCS_DebugLevel >= 5)
            {
              v52 = mmcs_logging_logger_default(v50, v24);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld outstanding chunk references for put %@", *(v10 + 40), v51);
                v55 = mmcs_logging_logger_default(v53, v54);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v53;
                  _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                }

                if (v53)
                {
                  CFRelease(v53);
                }
              }
            }

            if (v51)
            {
              CFRelease(v51);
            }
          }

          goto LABEL_37;
        }

        v23 = cf;
LABEL_36:
        mmcs_put_item_progress_make_done_error(v23, v22, &buf);
        mmcs_put_request_set_progress_and_notify_items_like_item(a1, v10, &buf);
LABEL_37:
        Count = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        if (*(a1 + 144))
        {
          goto LABEL_41;
        }

        mmcs_put_req_context_schedule_chunk_jobs(a1);
        if (*(a1 + 144))
        {
          goto LABEL_41;
        }

        Count = CFSetGetCount(**(a1 + 304));
        if (Count <= 0)
        {
          mmcs_put_req_context_chunking_complete(a1);
          goto LABEL_52;
        }

        if (*(a1 + 144))
        {
LABEL_41:
          v26 = mmcs_logging_logger_default(Count, v24);
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelled during notification. Notifying all remaining items of cancel");
            v31 = mmcs_logging_logger_default(v29, v30);
            v27 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
            if (v27)
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v29;
              _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v29)
            {
              CFRelease(v29);
            }
          }

          v32 = mmcs_logging_logger_default(v27, v28);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Clean up put request as last step of cancel");
            v35 = mmcs_logging_logger_default(v33, v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v33;
              _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v33)
            {
              CFRelease(v33);
            }
          }

          mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
          mmcs_put_request_context_cleanup(a1, *(a1 + 152));
        }

LABEL_52:
        C3BaseRelease(a2);
        v17 = cf;
        if (!cf)
        {
          return;
        }

LABEL_53:
        CFRelease(v17);
        return;
      }

      v18 = mmcs_logging_logger_default(v9, v5);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL job. Ignoring");
      v16 = mmcs_logging_logger_default(v14, v19);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        if (!v14)
        {
          return;
        }

        v17 = v14;
        goto LABEL_53;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
    }

    else
    {
      v13 = mmcs_logging_logger_default(v9, v5);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
      v16 = mmcs_logging_logger_default(v14, v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
    }

    _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    goto LABEL_20;
  }
}

uint64_t find_put_complete(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v3 = result;
    v4 = *(result + 24);
    v5.length = CFArrayGetCount(v4);
    v5.location = 0;
    result = CFArrayContainsValue(v4, v5, *a2);
    if (result)
    {
      *(a2 + 8) = v3;
    }
  }

  return result;
}

uint64_t mmcs_register_item_create(void *a1, const void *a2)
{
  *a1 = 0;
  v4 = C3TypeRegister(&mmcs_register_itemGetTypeID_typeID, &kmmcs_register_itemContextClass);
  Instance = C3TypeCreateInstance_(0, v4, 0x90uLL);
  v6 = Instance;
  if (a2 && Instance)
  {
    Instance[2] = a2;
    CFRetain(a2);
    result = 1;
    *(v6 + 136) = 1;
    v6[10] = 0;
    v6[18] = 0;
    *a1 = v6;
  }

  else
  {
    if (Instance)
    {
      C3BaseRelease(Instance);
    }

    return 0;
  }

  return result;
}

uint64_t mmcs_register_item_get_itemid(uint64_t Value, uint64_t a2)
{
  v2 = Value;
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!Value || (Value = *(Value + 16)) == 0 || (Value = CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr), !Value))
  {
    v3 = mmcs_logging_logger_default(Value, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        v4 = *(v2 + 16);
      }

      else
      {
        v4 = 0;
      }

      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error getting itemID from registerItem %p with itemID %@", v2, v4);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return valuePtr;
}

void mmcs_register_item_set_boundary_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 48);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 48) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 48) = cf;
  }
}

void mmcs_register_item_set_file_verification_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 56) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 56) = cf;
  }
}

CFStringRef mmcs_register_item_padded_length(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v18 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot be NULL.");
      v17 = mmcs_logging_logger_default(v7, v19);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v33 = v7;
      goto LABEL_33;
    }

    return 0;
  }

  if (!*(a1 + 80))
  {
    v20 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot have NULL chunks.");
      v17 = mmcs_logging_logger_default(v7, v21);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v33 = v7;
      goto LABEL_33;
    }

    return 0;
  }

  valuePtr = 0;
  Value = CFNumberGetValue(*(a1 + 120), kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    v22 = mmcs_logging_logger_default(Value, v4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot parse registerItem->chunkCount value.");
      v17 = mmcs_logging_logger_default(v7, v23);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v33 = v7;
      goto LABEL_33;
    }

    return 0;
  }

  if (!valuePtr)
  {
    v24 = mmcs_logging_logger_default(Value, v4);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot registerItem->chunkCount has invalid value %llu.", valuePtr);
      v17 = mmcs_logging_logger_default(v7, v25);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v33 = v7;
      goto LABEL_33;
    }

    return 0;
  }

  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  if (!valuePtr)
  {
LABEL_12:
    v15 = mmcs_logging_logger_default(BytePtr, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem paddedFileLength cannot be zero.");
      v17 = mmcs_logging_logger_default(v7, v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v33 = v7;
LABEL_33:
      _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_34;
    }

    return 0;
  }

  v7 = 0;
  v8 = *BytePtr;
  v9 = *(a1 + 80);
  v10 = 1;
  while (1)
  {
    if (!v9)
    {
      v26 = mmcs_logging_logger_default(BytePtr, v6);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem chunk %llu of %llu not returned.", v10, valuePtr);
      v17 = mmcs_logging_logger_default(v7, v27);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = v7;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v11 = CKRegisteredChunkKey();
    if (v8 >= 0 != (v11 != 0))
    {
      break;
    }

    v13 = CKRegisteredChunkLength();
    v7 = (v7 + mmcs_padded_chunk_length_with_policy_and_chunk_length(*(a1 + 40), v13));
    BytePtr = CKRegisteredChunkSize();
    v9 += BytePtr;
    if (v10++ >= valuePtr)
    {
      if (v7)
      {
        return v7;
      }

      goto LABEL_12;
    }
  }

  v28 = mmcs_logging_logger_default(v11, v12);
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem inconsistent Encryption between File and Chunks.");
  v17 = mmcs_logging_logger_default(v7, v29);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = v7;
    goto LABEL_33;
  }

LABEL_34:
  if (v7)
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

CFStringRef mmcs_register_item_copy_description(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277CBECE8];
  itemid = mmcs_register_item_get_itemid(a1, a2);
  return CFStringCreateWithFormat(v2, 0, @"<RegisterItem itemId:%llu", itemid);
}

CFStringRef mmcs_register_item_copy_short_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137))
  {
    v8 = " chunk";
  }

  else
  {
    v8 = "";
  }

  v9 = *(a1 + 128);
  if (v9)
  {
    StringDescription = mmcs_cferror_copy_short_description(v9);
    v11 = *MEMORY[0x277CBECE8];
    itemid = mmcs_register_item_get_itemid(a1, v12);
    v13 = CFStringCreateWithFormat(v11, 0, @"[%llu%s==> %@]", itemid, v8, StringDescription);
  }

  else
  {
    v16 = *(a1 + 96);
    if (!v16)
    {
      v28 = *MEMORY[0x277CBECE8];
      v29 = mmcs_register_item_get_itemid(a1, a2);
      return CFStringCreateWithFormat(v28, 0, @"[%llu%s]", v29, v8);
    }

    StringDescription = XCFDataCreateStringDescription(v16);
    if (*(a1 + 137))
    {
      v18 = *MEMORY[0x277CBECE8];
      v19 = mmcs_register_item_get_itemid(a1, v17);
      file_size = mmcs_register_item_get_file_size(a1, v20);
      valuePtr = 0;
      Value = *(a1 + 120);
      if (!Value || (Value = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr), !Value))
      {
        v24 = mmcs_logging_logger_default(Value, v21);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = CFStringCreateWithFormat(v18, 0, @"error getting chunkCount from registerItem %p with chunkCount %@", a1, *(a1 + 120));
          v27 = mmcs_logging_logger_default(v25, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v39 = v25;
            _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v25)
          {
            CFRelease(v25);
          }
        }
      }

      v13 = CFStringCreateWithFormat(v18, 0, @"[%llu%s ==> %@ %llu bytes %lu chunks]", v19, v8, StringDescription, file_size, valuePtr);
    }

    else
    {
      v30 = *(a1 + 104);
      v31 = *MEMORY[0x277CBECE8];
      v32 = mmcs_register_item_get_itemid(a1, v17);
      v34 = v32;
      if (v30)
      {
        v36 = mmcs_register_item_get_file_size(a1, v33);
        v13 = CFStringCreateWithFormat(v31, 0, @"[%llu ==> %@  %llu bytes]", v34, StringDescription, v36);
      }

      else
      {
        v13 = CFStringCreateWithFormat(v31, 0, @"[%llu ==> %@]", v32, StringDescription);
      }
    }
  }

  v14 = v13;
  if (StringDescription)
  {
    CFRelease(StringDescription);
  }

  return v14;
}

uint64_t mmcs_register_item_get_file_size(uint64_t Value, uint64_t a2)
{
  v2 = Value;
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!Value || (Value = *(Value + 104)) == 0 || (Value = CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr), !Value))
  {
    v3 = mmcs_logging_logger_default(Value, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        v4 = *(v2 + 104);
      }

      else
      {
        v4 = 0;
      }

      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error getting fileSize from registerItem %p with fileSize %@", v2, v4);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return valuePtr;
}

uint64_t mmcs_register_item_signature_equals(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    mmcs_register_item_signature_equals_cold_2();
  }

  if (!*(a2 + 96))
  {
    mmcs_register_item_signature_equals_cold_1();
  }

  CFDataGetBytePtr(v3);
  CFDataGetBytePtr(*(a2 + 96));
  result = CKFileSignaturesEqual();
  if (result)
  {
    v6 = *(a1 + 24);
    v7 = *(a2 + 24);

    return XCFSafelyEquals(v6, v7);
  }

  return result;
}

uint64_t mmcs_register_item_signature_hash(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    mmcs_register_item_signature_hash_cold_1();
  }

  return *CFDataGetBytePtr(v1);
}

const __CFNumber *mmcs_register_item_chunk_count(uint64_t a1)
{
  valuePtr = 0;
  result = *(a1 + 120);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_register_item_chunk_length_at_index(uint64_t a1, uint64_t a2)
{
  CKRegisteredChunkSize();

  return CKRegisteredChunkLength();
}

uint64_t mmcs_register_item_chunk_signature_at_index(uint64_t a1, uint64_t a2)
{
  CKRegisteredChunkSize();

  return CKRegisteredChunkSignature();
}

uint64_t mmcs_register_item_chunk_key_at_index(uint64_t a1, uint64_t a2)
{
  CKRegisteredChunkSize();

  return CKRegisteredChunkKey();
}

uint64_t mmcs_register_item_chunk_subchunk_digest_at_index(uint64_t a1, uint64_t a2)
{
  CKRegisteredChunkSize();

  return CKRegisteredSubchunkDigest();
}

void _mmcs_register_itemCFFinalize(void *a1)
{
  mmcs_wrapping_state_set_reference_signature_and_object((a1 + 3), 0, 0);
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[12];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[12] = 0;
  v6 = a1[16];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[16] = 0;
  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[13] = 0;
  v8 = a1[14];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[14] = 0;
  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[9] = 0;
  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[15] = 0;
  v11 = a1[10];
  if (v11)
  {
    free(v11);
  }

  a1[10] = 0;
  v12 = a1[18];
  if (v12)
  {
    os_release(v12);
  }

  a1[18] = 0;
  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[19] = 0;
}

void mmcs_put_state_invalidate(uint64_t result)
{
  if (*(result + 8))
  {
    v2 = 0;
    do
    {
      mmcs_put_container_invalidate(*(*(result + 64) + 8 * v2++));
    }

    while (v2 < *(result + 8));
  }
}

uint64_t mmcs_put_state_create(uint64_t **a1, void *a2, uint64_t *a3, CFErrorRef *a4)
{
  v4 = a4;
  v5 = a3;
  v284 = *MEMORY[0x277D85DE8];
  item_signature_chunk_signature_error_with_format = 0;
  *a1 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    v83 = 0;
    v84 = 0;
    goto LABEL_290;
  }

  if (a3[5])
  {
    v6 = 0;
    v268 = *MEMORY[0x277CBECE8];
    do
    {
      v7 = *(v5[6] + 8 * v6);
      is_valid_n = mmcs_file_signature_is_valid_n(*(v7 + 32), *(v7 + 24));
      v12 = *(v7 + 32);
      if (is_valid_n)
      {
        v13 = mmcs_file_signature_to_hexstring(*(v7 + 32));
      }

      else if (v12)
      {
        v13 = hextostrdup(*(v7 + 32), *(v7 + 24));
        v12 = 0;
      }

      else
      {
        v13 = 0;
      }

      if (*(v7 + 48))
      {
        Data = ProtobufCBinaryData_CreateData((v7 + 56));
      }

      else
      {
        Data = 0;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 33, *(v7 + 40), @"The server returned an error for signature %s", v9, v10, v11, v13);
      v17 = mmcs_logging_logger_default(error_with_error_response_and_format, v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v18)
      {
        v20 = CFCopyDescription(error_with_error_response_and_format);
        v22 = mmcs_logging_logger_default(v20, v21);
        v18 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v18)
        {
          v23 = CFStringCreateWithFormat(v268, 0, @"file error %@", v20);
          v25 = mmcs_logging_logger_default(v23, v24);
          v18 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
          if (v18)
          {
            *buf = 138543362;
            v275 = v23;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      if (v12)
      {
        mmcs_put_item_progress_make_done_error(error_with_error_response_and_format, v19, buf);
        mmcs_put_request_set_progress_and_notify_items_with_signature_reference(a2, v12, Data, buf);
      }

      else
      {
        v26 = mmcs_logging_logger_default(v18, v19);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = CFStringCreateWithFormat(v268, 0, @"putAuth response invalid: ignoring putAuth file error %@ for invalid signature %s", error_with_error_response_and_format, v13);
          v29 = mmcs_logging_logger_default(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v275 = v27;
            _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      if (Data)
      {
        CFRelease(Data);
      }

      if (error_with_error_response_and_format)
      {
        CFRelease(error_with_error_response_and_format);
      }

      if (v13)
      {
        free(v13);
      }

      ++v6;
    }

    while (v6 < v5[5]);
  }

  alloc = *MEMORY[0x277CBECE8];
  v269 = v5;
  if (v5[8])
  {
    v30 = 0;
    theSet = 0;
    v262 = 0;
    v31 = 0;
    v32 = a2;
    while (1)
    {
      v33 = *(v5[9] + 8 * v31);
      v34 = *(v33 + 40);
      if ((v34 - 3) >= 3)
      {
        if (v34 == 2)
        {
          theSet = (theSet + 1);
        }

        else if (v34 == 1)
        {
          ++v262;
        }
      }

      else
      {
        ++v30;
      }

      v35 = mmcs_file_signature_is_valid_n(*(v33 + 32), *(v33 + 24));
      v36 = *(v33 + 32);
      if (v35)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_49;
      }

      v37 = hextostrdup(*(v33 + 32), *(v33 + 24));
      v36 = 0;
      if (!v37)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (*(v33 + 56))
      {
        v38 = ProtobufCBinaryData_CreateData((v33 + 64));
        CStringDescription = XCFDataCreateCStringDescription(v38);
        v41 = CStringDescription;
        if (CStringDescription)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v38 = 0;
      }

      CStringDescription = strdup("(null)");
      v41 = CStringDescription;
LABEL_55:
      if (v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = @"(null)";
      }

      if (!v36)
      {
        v53 = mmcs_logging_logger_default(CStringDescription, v40);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        v52 = CFStringCreateWithFormat(alloc, 0, @"putAuth response invalid: ignoring putAuth success for invalid signature %s ref %@", v37, v42);
        v55 = mmcs_logging_logger_default(v52, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
LABEL_79:
          *buf = 138543362;
          v275 = v52;
          _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_80:
        if (v52)
        {
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(v32, v36, v38);
      if (distinct_item_with_signature_reference)
      {
        v265 = v30;
        v45 = *(v33 + 48);
        if (v45 && (v46 = distinct_item_with_signature_reference, (distinct_item_with_signature_reference = strlen(*(v33 + 48))) != 0))
        {
          String = CFStringCreateWithBytes(alloc, v45, distinct_item_with_signature_reference, 0x8000100u, 0);
          if (String)
          {
            v49 = String;
            if (*(v33 + 80))
            {
              v50 = mmcs_time_convert_server_time_to_cfabsolutetime(*(v33 + 88));
              v51 = v50;
              if (v50 == 0.0)
              {
                v52 = 0;
              }

              else
              {
                String = XCFAbsoluteTimeDateFormatterCreateString(v50);
                v52 = String;
              }
            }

            else
            {
              v52 = 0;
              v51 = 0.0;
            }

            v78 = mmcs_logging_logger_default(String, v48);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = v46[5];
              v80 = v46[2];
              *buf = 134219266;
              v275 = v79;
              v276 = 2114;
              v277 = v49;
              v278 = 2114;
              v279 = v52;
              v280 = 2082;
              *v281 = v37;
              *&v281[8] = 2082;
              *&v281[10] = v41;
              v282 = 2048;
              v283 = v80;
              _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_DEFAULT, "Server Receipt Received. itemId:%llu receipt:%{public}@ expiry:%{public}@ sig:%{public}s ref:%{public}s len:%llu", buf, 0x3Eu);
            }

            mmcs_item_set_put_receipt_with_expiry_time(v46, v49, v51);
            mmcs_put_item_progress_make_done_success(v49, v81, buf, v51);
            mmcs_put_request_set_progress_and_notify_items_with_signature_reference(a2, v36, v38, buf);
            v82 = v49;
            v32 = a2;
            CFRelease(v82);
          }

          else
          {
            v68 = mmcs_logging_logger_default(0, v48);
            v32 = a2;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v74 = CFStringCreateWithFormat(alloc, 0, @"Invalid return receipt %s file signature %s ref %@", *(v33 + 48), v37, v42);
              v76 = mmcs_logging_logger_default(v74, v75);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v275 = v74;
                _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v74)
              {
                CFRelease(v74);
              }
            }

            v52 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s ref %@", v69, v70, v71, v72, v73, v37, v42);
            mmcs_put_item_progress_make_done_error(v52, v77, buf);
            mmcs_put_request_set_progress_and_notify_items_like_item(a2, v46, buf);
          }

          v30 = v265;
          if (!v52)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v30 = v265;
          if ((*(v33 + 40) - 3) > 2)
          {
            goto LABEL_82;
          }

          v56 = mmcs_logging_logger_default(distinct_item_with_signature_reference, v44);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v62 = CFStringCreateWithFormat(alloc, 0, @"Invalid return receipt for success_code %d file signature %s ref %@", *(v33 + 40), v37, v42);
            v64 = mmcs_logging_logger_default(v62, v63);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v275 = v62;
              _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            v30 = v265;
            if (v62)
            {
              CFRelease(v62);
            }
          }

          v52 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s", v57, v58, v59, v60, v61, v37);
          mmcs_put_item_progress_make_done_error(v52, v65, buf);
          mmcs_put_request_set_progress_and_notify_items_with_signature_reference(v32, v36, v38, buf);
          if (!v52)
          {
            goto LABEL_82;
          }
        }

LABEL_81:
        CFRelease(v52);
        goto LABEL_82;
      }

      v66 = mmcs_logging_logger_default(0, v44);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v52 = CFStringCreateWithFormat(alloc, 0, @"putAuth response invalid: ignoring putAuth success unknown signature %s ref %@", v37, v42);
        v55 = mmcs_logging_logger_default(v52, v67);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }

LABEL_82:
      if (v37)
      {
        free(v37);
      }

      v5 = v269;
      if (v41)
      {
        free(v41);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (++v31 >= v269[8])
      {
        goto LABEL_105;
      }
    }

    v37 = mmcs_file_signature_to_hexstring(*(v33 + 32));
    if (v37)
    {
      goto LABEL_50;
    }

LABEL_49:
    v37 = strdup("(null)");
    goto LABEL_50;
  }

  theSet = 0;
  v262 = 0;
  v30 = 0;
  v32 = a2;
LABEL_105:
  v85 = v5;
  v5 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409AC7CB0AuLL);
  v5[8] = malloc_type_calloc(1uLL, 8 * v85[3], 0x2004093837F09uLL);
  *v5 = v32;
  v5[1] = 0;
  v5[2] = CFDictionaryCreateMutable(alloc, 0, 0, 0);
  v5[3] = v30;
  v5[4] = theSet;
  v5[5] = v262;
  if (*(v85 + 14))
  {
    v86 = *(v85 + 15);
  }

  else
  {
    v86 = 0;
  }

  mmcs_request_set_reporting_level(v32, v86);
  if (*(v85 + 20))
  {
    v87 = ProtobufCBinaryData_CreateData((v269 + 11));
    v89 = mmcs_logging_logger_default(v87, v88);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      if (v87)
      {
        Length = CFDataGetLength(v87);
      }

      else
      {
        Length = 0;
      }

      *buf = 134217984;
      v275 = Length;
      _os_log_impl(&dword_2577D8000, v89, OS_LOG_TYPE_DEFAULT, "Opaque Method Completion Info List Context of Length %llu Found.", buf, 0xCu);
    }

    mmcs_put_state_set_opaque_context(v5, v87);
    if (v87)
    {
      CFRelease(v87);
    }
  }

  chunk_references = mmcs_put_req_context_get_chunk_references(v32);
  MutableCopy = CFSetCreateMutableCopy(alloc, 0, chunk_references);
  v84 = MutableCopy;
  if (!v269[3])
  {
    v93 = 0;
    v83 = 0;
LABEL_217:
    http_request_options = mmcs_request_get_http_request_options(v32);
    is_cloudkit_dataclass = mmcs_request_is_cloudkit_dataclass(v32);
    v195 = mmcs_put_request_item_count(v32);
    if (mmcs_http_request_options_should_use_bk_sys(http_request_options, is_cloudkit_dataclass, v195, v93))
    {
      http_request_options = mmcs_http_request_options_create_override_network_service_type_to_background_system_initiated_copy(http_request_options);
    }

    else if (http_request_options)
    {
      CFRetain(http_request_options);
    }

    if (v5[1])
    {
      v196 = 0;
      do
      {
        mmcs_http_request_set_options(*(*(*(v5[8] + 8 * v196++) + 16) + 24), http_request_options);
      }

      while (v196 < v5[1]);
    }

    if (http_request_options)
    {
      CFRelease(http_request_options);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      Mutable = CFStringCreateMutable(alloc, 0);
      CFSetApplyFunction(v84, append_chunk_ref_signature_and_length_description, Mutable);
      v200 = mmcs_logging_logger_chunk(v198, v199);
      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFSetGetCount(v84);
        *buf = 134218242;
        v275 = Count;
        v276 = 2114;
        v277 = Mutable;
        _os_log_impl(&dword_2577D8000, v200, OS_LOG_TYPE_DEFAULT, "Unneeded chunk reference count %ld (%{public}@)", buf, 0x16u);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CFSetApplyFunction(v84, chunk_reference_was_read, v32);
    *a1 = v5;
    v202 = 1;
    if (v83)
    {
      goto LABEL_296;
    }

    goto LABEL_297;
  }

  v83 = 0;
  v93 = 0;
  v94 = 0;
  v259 = *MEMORY[0x277CBED00];
  theSeta = MutableCopy;
LABEL_118:
  v95 = *(v269[4] + 8 * v94);
  v272 = 0;
  if (!mmcs_put_container_create((v5[8] + 8 * v94), v5))
  {
    goto LABEL_276;
  }

  ++v5[1];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(v5[8] + 8 * v94) + 80), &state);
  v98 = mmcs_logging_logger_default(v96, v97);
  v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
  if (v99)
  {
    v101 = *(v95 + 24);
    *buf = 136446210;
    v275 = v101;
    _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_DEFAULT, "Container %{public}s", buf, 0xCu);
  }

  v102 = *(v95 + 40);
  v103 = *(v95 + 64);
  if (v102)
  {
    v104 = v103 == 0;
  }

  else
  {
    v104 = 1;
  }

  if (!v104)
  {
    v223 = mmcs_logging_logger_default(v99, v100);
    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
    {
      v225 = CFStringCreateWithFormat(alloc, 0, @"Cannot have both chunk checksums and container uploade elements");
      v227 = mmcs_logging_logger_default(v225, v226);
      if (!os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v275 = v225;
      goto LABEL_272;
    }

    goto LABEL_275;
  }

  v105 = v103 + v102;
  if (v102)
  {
    if (v105)
    {
      v228 = mmcs_logging_logger_default(v99, v100);
      if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v228, OS_LOG_TYPE_FAULT, "Cannot have chunk checksums in MMCS Protocol version 5 upload.", buf, 2u);
      }

      goto LABEL_275;
    }

    goto LABEL_266;
  }

  if (!v103)
  {
    v231 = mmcs_logging_logger_default(v99, v100);
    if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
    {
      v225 = CFStringCreateWithFormat(alloc, 0, @"Cannot have neither chunk checksums or container upload elements");
      v227 = mmcs_logging_logger_default(v225, v232);
      if (!os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v275 = v225;
LABEL_272:
      _os_log_impl(&dword_2577D8000, v227, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_273:
      if (v225)
      {
        CFRelease(v225);
      }
    }

LABEL_275:
    os_activity_scope_leave(&state);
LABEL_276:
    v4 = a4;
    goto LABEL_290;
  }

  if (!v105)
  {
LABEL_266:
    v229 = mmcs_logging_logger_default(v99, v100);
    if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
    {
      v225 = CFStringCreateWithFormat(alloc, 0, @"Cannot have zero container chunk instances");
      v227 = mmcs_logging_logger_default(v225, v230);
      if (!os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v275 = v225;
      goto LABEL_272;
    }

    goto LABEL_275;
  }

  v106 = *(v5[8] + 8 * v94);
  if (!mmcs_storage_container_create(&v272, *(v95 + 24), *(v95 + 56), v105))
  {
    goto LABEL_275;
  }

  mmcs_put_container_set_storage_container(v106, v272);
  v270 = 0;
  server_version = mmcs_request_get_server_version(v32);
  v109 = mmcs_server_version_compare(server_version, v108, 3, 8) != 1 || *(mmcs_chunk_instance_offset(v32) + 174) == 0;
  if (!mmcs_storage_container_stream_create(&v270, v106, v272, v109))
  {
    goto LABEL_286;
  }

  v255 = v109;
  v266 = v105;
  mmcs_put_container_set_storage_container_stream(v106, v270);
  v110 = *(v106 + 16);
  v111 = *(v95 + 32);
  should_disable_vendor_tls = mmcs_request_should_disable_vendor_tls(v32);
  v113 = mmcs_http_request_create_with_host_info((v110 + 24), v111, 0, should_disable_vendor_tls, &item_signature_chunk_signature_error_with_format);
  if (v113)
  {
    v115 = v270;
    is_put_complete_at_edge_protocol_v2 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v106 + 16) + 24));
    mmcs_storage_container_set_should_write_payload_trailer(v115, is_put_complete_at_edge_protocol_v2);
    v117 = *(*v5 + 68);
    if (v117)
    {
      v118 = v266;
      if (v117 != 2)
      {
        mmcs_put_state_create_cold_1();
      }

      if (*(*v5 + 296))
      {
        v119 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v106 + 16) + 24));
        if (!v119)
        {
          v243 = mmcs_logging_logger_default(v119, v120);
          if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
          {
            v250 = CFStringCreateWithFormat(alloc, 0, @"PutCompleteAtEdge Required Version 2, Content Returned Something Else.");
            v252 = mmcs_logging_logger_default(v250, v251);
            if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v275 = v250;
              _os_log_impl(&dword_2577D8000, v252, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v250)
            {
              CFRelease(v250);
            }
          }

          v242 = @"PutCompleteAtEdge Required Version 2, Content Returned Something Else.";
LABEL_314:
          item_signature_chunk_signature_error_with_format = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v242, v245, v246, v247, v248, v249);
          goto LABEL_286;
        }
      }
    }

    else
    {
      v121 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v106 + 16) + 24));
      v118 = v266;
      if (v121)
      {
        v238 = mmcs_logging_logger_default(v121, v122);
        if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
        {
          v239 = CFStringCreateWithFormat(alloc, 0, @"PutCompleteAtEdge Disabled, Content Returned PutCompleteAtEdge.");
          v241 = mmcs_logging_logger_default(v239, v240);
          if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v275 = v239;
            _os_log_impl(&dword_2577D8000, v241, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v239)
          {
            CFRelease(v239);
          }
        }

        v242 = @"PutCompleteAtEdge Disabled, Content Returned PutCompleteAtEdge.";
        goto LABEL_314;
      }
    }

    v253 = v94;
    v254 = v93;
    http_clock_skew_metrics = mmcs_request_get_http_clock_skew_metrics(v32);
    if (http_clock_skew_metrics)
    {
      mmcs_container_set_http_clock_skew_metrics(v106, http_clock_skew_metrics);
    }

    v263 = v106;
    url_expiry_override = mmcs_request_get_url_expiry_override(v32);
    if (url_expiry_override)
    {
      v126 = mmcs_logging_logger_default(url_expiry_override, v125);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
      {
        v127 = CFStringCreateWithFormat(alloc, 0, @"overriding url expiry %llu from content server", *(*(v95 + 32) + 120));
        v129 = mmcs_logging_logger_default(v127, v128);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v275 = v127;
          _os_log_impl(&dword_2577D8000, v129, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v127)
        {
          CFRelease(v127);
        }
      }

      v130 = *(v263[2] + 24);
      v131 = mmcs_request_get_url_expiry_override(v32);
      mmcs_http_request_override_url_expiry(v130, v131);
      v118 = v266;
    }

    v132 = *(*(v95 + 32) + 128);
    if (v132)
    {
      v133 = strlen(*(v132 + 24));
      v134 = CFStringCreateWithBytes(alloc, *(v132 + 24), v133, 0x8000100u, 0);
      v135 = strlen(*(v132 + 32));
      v136 = CFStringCreateWithBytes(alloc, *(v132 + 32), v135, 0x8000100u, 0);
      v137 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v263[4] = v137;
      CFDictionaryAddValue(v137, v134, v136);
      v140 = mmcs_logging_logger_default(v138, v139);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v275 = v134;
        v276 = 2112;
        v277 = v136;
        _os_log_impl(&dword_2577D8000, v140, OS_LOG_TYPE_DEFAULT, "AcceleratorRequestHeader (%@:%@)", buf, 0x16u);
      }

      if (v134)
      {
        CFRelease(v134);
      }

      v118 = v266;
      if (v136)
      {
        CFRelease(v136);
      }
    }

    if (v83)
    {
      CFRelease(v83);
    }

    str = CFHTTPMessageCopyHeaderFieldValue(*(*(v263[2] + 24) + 16), @"Content-Length");
    v141 = 0;
    v142 = 0;
    v143 = 8;
    while (1)
    {
      if (*(v95 + 40))
      {
        v144 = (*(v95 + 48) + v143);
      }

      else
      {
        v151 = *(*(v95 + 72) + 8 * v142);
        v152 = *(v269[9] + 8 * *(v151 + 52));
        if (*(v152 + 56))
        {
          v153 = XCFDataCreateWithBytesNoCopy(alloc, *(v152 + 72), *(v152 + 64), v259);
          v154 = mmcs_put_request_get_distinct_item_with_signature_reference(a2, *(v152 + 32), v153);
          v156 = v154;
          if (v153)
          {
            CFRelease(v153);
          }

          v118 = v266;
          if (!v156)
          {
LABEL_238:
            v206 = mmcs_logging_logger_default(v154, v155);
            if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_2577D8000, v206, OS_LOG_TYPE_ERROR, "AuthorizePut response referenced unknown chunk/file in chunkList.", buf, 2u);
            }

LABEL_287:
            v4 = a4;
            v84 = theSeta;
LABEL_288:
            v83 = str;
            goto LABEL_289;
          }
        }

        else
        {
          v154 = mmcs_put_request_get_distinct_item_with_signature_reference(a2, *(v152 + 32), 0);
          v156 = v154;
          if (!v154)
          {
            goto LABEL_238;
          }
        }

        if (*(v151 + 48))
        {
          if (v269[8] <= *(v151 + 52))
          {
            v207 = mmcs_logging_logger_default(v154, v155);
            if (!os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v208 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server is beyond the length of file_success list.");
            v210 = mmcs_logging_logger_default(v208, v209);
            v84 = theSeta;
            v83 = str;
            if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v275 = v208;
            goto LABEL_283;
          }

          if (!*(v156 + 104))
          {
            v211 = mmcs_logging_logger_default(v154, v155);
            if (!os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v208 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server when not requested by client.");
            v210 = mmcs_logging_logger_default(v208, v212);
            v84 = theSeta;
            v83 = str;
            if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v275 = v208;
            goto LABEL_283;
          }

          FileOpaqueReferenceData = *(v156 + 208);
          if (!FileOpaqueReferenceData)
          {
            FileOpaqueReferenceData = mmcs_item_create_FileOpaqueReferenceData(v156, v155);
            *(v156 + 208) = FileOpaqueReferenceData;
            if (!FileOpaqueReferenceData)
            {
              v235 = mmcs_logging_logger_default(0, v164);
              if (!os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_287;
              }

              v208 = CFStringCreateWithFormat(alloc, 0, @"Failed to generate file opaque reference data.");
              v210 = mmcs_logging_logger_default(v208, v236);
              v84 = theSeta;
              v83 = str;
              if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_284;
              }

              *buf = 138543362;
              v275 = v208;
LABEL_283:
              _os_log_impl(&dword_2577D8000, v210, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_284:
              if (v208)
              {
                CFRelease(v208);
              }

              goto LABEL_286;
            }
          }

          if (!CFDataGetLength(FileOpaqueReferenceData))
          {
            v213 = mmcs_logging_logger_default(0, v165);
            if (!os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v208 = CFStringCreateWithFormat(alloc, 0, @"Failed to generate appropriate size for reference data.");
            v210 = mmcs_logging_logger_default(v208, v214);
            v84 = theSeta;
            v83 = str;
            if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v275 = v208;
            goto LABEL_283;
          }

          if (v142)
          {
            v166 = v272[4] + v141;
            v167 = *(v166 - 9);
            v168 = v167 + mmcs_chunk_instance_get_length(v166 - 13);
            v118 = v266;
          }

          else
          {
            v168 = 0;
          }

          mmcs_chunk_instance_init_with_file_opaque_reference_data(v272[4] + v141, v168, v142, *(v156 + 208));
          v169 = *(v156 + 208);
          if (v169)
          {
            CFRelease(v169);
          }

          *(v156 + 208) = 0;
          goto LABEL_193;
        }

        if (*(v156 + 216))
        {
          v215 = mmcs_chunk_signature_to_hexstring(*(v151 + 40));
          v216 = mmcs_file_signature_to_hexstring(*v156);
          v217 = XCFDataCreateCStringDescription(*(v156 + 64));
          v219 = mmcs_logging_logger_default(v217, v218);
          if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v275 = "Unexpected chunk reference for metadata only item.";
            v276 = 2082;
            v277 = v215;
            v278 = 2082;
            v279 = v216;
            v280 = 2082;
            *v281 = v217;
            _os_log_impl(&dword_2577D8000, v219, OS_LOG_TYPE_ERROR, "%s: chunk:%{public}s sig:%{public}s ref:%{public}s", buf, 0x2Au);
          }

          item_signature_chunk_signature_error_with_format = mmcs_cferror_create_item_signature_chunk_signature_error_with_format(@"com.apple.mmcs", 25, *(v156 + 40), *v156, *(v151 + 40), 0, @"%s", v220, "Unexpected chunk reference for metadata only item.");
          v83 = str;
          if (v215)
          {
            free(v215);
          }

          v84 = theSeta;
          if (v216)
          {
            free(v216);
          }

          if (v217)
          {
            free(v217);
          }

          goto LABEL_286;
        }

        if (!*(v151 + 24))
        {
          v221 = mmcs_logging_logger_default(v154, v155);
          v84 = theSeta;
          if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
          {
            v208 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server is unknown ContainerUploadElement type.");
            v210 = mmcs_logging_logger_default(v208, v222);
            v83 = str;
            if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v275 = v208;
            goto LABEL_283;
          }

LABEL_237:
          v4 = a4;
          goto LABEL_288;
        }

        v144 = (v151 + 40);
      }

      v145 = *v144;
      if (*v144)
      {
        chunk_reference_with_signature = mmcs_put_req_context_get_chunk_reference_with_signature(a2, *v144);
        if (!chunk_reference_with_signature)
        {
          v203 = mmcs_chunk_signature_to_hexstring(v145);
          v205 = mmcs_logging_logger_default(v203, v204);
          if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v275 = (v142 + 1);
            v276 = 2048;
            v277 = v266;
            v278 = 2082;
            v279 = v203;
            _os_log_impl(&dword_2577D8000, v205, OS_LOG_TYPE_ERROR, "Unknown Chunk Requested in Container at position %lu of %zu with signature %{public}s", buf, 0x20u);
          }

          v84 = theSeta;
          if (v203)
          {
            free(v203);
          }

          goto LABEL_237;
        }

        v147 = chunk_reference_with_signature;
        mmcs_chunk_reference_apply_function_to_instances(chunk_reference_with_signature, add_attributed_items, (v263[11] + 16));
        CFSetRemoveValue(theSeta, v147);
        if (v142)
        {
          v148 = v272[4] + v141;
          v149 = *(v148 - 9);
          v150 = v149 + mmcs_chunk_instance_get_length(v148 - 13);
          v118 = v266;
        }

        else
        {
          v150 = 0;
        }

        mmcs_chunk_instance_init(v272[4] + v141, v147, v150, v142, 0);
        v157 = mmcs_item_padded_chunk_length(*(*(v147 + 48) + 8), *(v147 + 4));
        *(v272[4] + v141 + 64) = v157;
        if (gMMCS_DebugLevel >= 4)
        {
          v158 = mmcs_chunk_signature_to_hexstring(v145);
          v160 = mmcs_logging_logger_chunk(v158, v159);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            v161 = (*(v95 + 64) + *(v95 + 40));
            v162 = *(v147 + 4);
            *buf = 134219010;
            v275 = (v142 + 1);
            v276 = 2048;
            v277 = v161;
            v278 = 2048;
            v279 = v150;
            v280 = 1024;
            *v281 = v162;
            *&v281[4] = 2082;
            *&v281[6] = v158;
            _os_log_impl(&dword_2577D8000, v160, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu at containerOffset %llu with byteLength %u has signature %{public}s", buf, 0x30u);
          }

          if (v158)
          {
            free(v158);
          }
        }
      }

LABEL_193:
      ++v142;
      v141 += 104;
      v143 += 16;
      if (v118 == v142)
      {
        mmcs_storage_container_compute_size(v272, v255);
        v170 = mmcs_request_index(v272);
        v83 = str;
        if (str)
        {
          IntValue = CFStringGetIntValue(str);
          v173 = IntValue;
          v84 = theSeta;
          if ((IntValue & 0x80000000) == 0)
          {
            v174 = mmcs_request_index(v272);
            v176 = mmcs_logging_logger_default(v174, v175);
            v177 = v176;
            v32 = a2;
            if (v174 == v173)
            {
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
              {
                v178 = CFStringCreateWithFormat(alloc, 0, @"put container %s has expected Content-Length %llu.", *v272, v173);
                v180 = mmcs_logging_logger_default(v178, v179);
                if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v275 = v178;
                  v181 = v180;
                  v182 = OS_LOG_TYPE_DEBUG;
                  goto LABEL_207;
                }

                goto LABEL_208;
              }
            }

            else if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
            {
              v190 = *v272;
              v191 = mmcs_request_index(v272);
              *buf = 136315906;
              v192 = "false";
              if (v255)
              {
                v192 = "true";
              }

              v275 = v190;
              v276 = 2048;
              v277 = v191;
              v278 = 2048;
              v279 = v173;
              v280 = 2080;
              *v281 = v192;
              _os_log_impl(&dword_2577D8000, v177, OS_LOG_TYPE_FAULT, "put container size mismatch containerId=%s containerLength=%llu contentLengthHeader=%llu shouldWriteToc=%s", buf, 0x2Au);
            }

            goto LABEL_214;
          }

          v188 = mmcs_logging_logger_default(IntValue, v172);
          v32 = a2;
          if (!os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_214;
          }

          v178 = CFStringCreateWithFormat(alloc, 0, @"put container %s has invalid Content-Length %d.", *v272, v173);
          v187 = mmcs_logging_logger_default(v178, v189);
          if (!os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_208;
          }
        }

        else
        {
          v183 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(v263[2] + 24));
          v32 = a2;
          v84 = theSeta;
          if (v183)
          {
            goto LABEL_214;
          }

          v185 = mmcs_logging_logger_default(v183, v184);
          if (!os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_214;
          }

          v178 = CFStringCreateWithFormat(alloc, 0, @"put container %s has no Content-Length header.", *v272);
          v187 = mmcs_logging_logger_default(v178, v186);
          if (!os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_208;
          }
        }

        *buf = 138543362;
        v275 = v178;
        v181 = v187;
        v182 = OS_LOG_TYPE_ERROR;
LABEL_207:
        _os_log_impl(&dword_2577D8000, v181, v182, "%{public}@", buf, 0xCu);
LABEL_208:
        if (v178)
        {
          CFRelease(v178);
        }

LABEL_214:
        v93 = v170 + v254;
        os_activity_scope_leave(&state);
        v94 = v253 + 1;
        if (v253 + 1 < v269[3])
        {
          goto LABEL_118;
        }

        goto LABEL_217;
      }
    }
  }

  v233 = mmcs_logging_logger_default(v113, v114);
  if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
  {
    v208 = CFStringCreateWithFormat(alloc, 0, @"Unable to create message for storage container %s", *(*(v269[4] + 8 * v94) + 24));
    v210 = mmcs_logging_logger_default(v208, v234);
    if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v275 = v208;
      goto LABEL_283;
    }

    goto LABEL_284;
  }

LABEL_286:
  v4 = a4;
LABEL_289:
  os_activity_scope_leave(&state);
LABEL_290:
  if (v4 && item_signature_chunk_signature_error_with_format)
  {
    CFRetain(item_signature_chunk_signature_error_with_format);
    *v4 = item_signature_chunk_signature_error_with_format;
  }

  if (v5)
  {
    mmcs_put_state_dealloc(v5);
  }

  v202 = 0;
  if (v83)
  {
LABEL_296:
    CFRelease(v83);
  }

LABEL_297:
  if (item_signature_chunk_signature_error_with_format)
  {
    CFRelease(item_signature_chunk_signature_error_with_format);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  return v202;
}

void mmcs_put_state_set_opaque_context(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      *(a1 + 48) = 0;
      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 48) = cf;
    }
  }
}

void append_chunk_ref_signature_and_length_description(uint64_t a1, __CFString *theString)
{
  if (CFStringGetLength(theString) >= 1)
  {
    CFStringAppend(theString, @", ");
  }

  mmcs_chunk_reference_append_signature_length_description(a1, theString);
}

void mmcs_put_state_dealloc(void *a1)
{
  if (!a1[1])
  {
    *a1 = 0;
    v4 = a1[8];
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 = 0;
  do
  {
    mmcs_put_container_invalidate(*(a1[8] + 8 * v2++));
    v3 = a1[1];
  }

  while (v2 < v3);
  *a1 = 0;
  v4 = a1[8];
  if (v4)
  {
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[8];
        v7 = *(v6 + 8 * i);
        if (v7)
        {
          C3BaseRelease(v7);
          v6 = a1[8];
          v3 = a1[1];
        }

        *(v6 + 8 * i) = 0;
      }

      v4 = a1[8];
    }

LABEL_12:
    free(v4);
  }

LABEL_13:
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[6] = 0;
  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[2] = 0;
  v10 = a1[7];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

BOOL mmcs_put_state_has_outstanding_async_transactions(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  do
  {
    result = mmcs_container_request_enqueued_or_inflight(*(*(a1 + 64) + 8 * v2++));
  }

  while (v2 < *(a1 + 8) && !result);
  return result;
}

uint64_t mmcs_put_state_containers_done_count(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  do
  {
    if (mmcs_container_is_done(*(*(a1 + 64) + 8 * v3)))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    ++v3;
  }

  while (v3 < *(a1 + 8));
  return v2;
}

uint64_t mmcs_put_state_containers_failed_count(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  do
  {
    if (mmcs_container_is_done_and_failed(*(*(a1 + 64) + 8 * v3)))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    ++v3;
  }

  while (v3 < *(a1 + 8));
  return v2;
}

uint64_t mmcs_put_state_get_put_container_for_storage_container_key(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(a1 + 64) + 8 * i);
      has_storage_container_key = mmcs_put_container_has_storage_container_key(v6, a2);
      v2 = *(a1 + 8);
      if (has_storage_container_key)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
    v6 = 0;
  }

  if (i >= v2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL mmcs_put_state_put_container_did_reserve_chunk_reference(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return Value == a2;
  }

  CFDictionarySetValue(*(a1 + 16), key, a2);
  return 1;
}

void mmcs_put_state_container_will_be_retried(uint64_t *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2[11];
  v3 = *(v2 + 56);
  v4 = *(v2 + 8);
  if (*(v3 + 64) <= *(v4 + 40))
  {
    v11 = -1;
    v12 = 56;
    do
    {
      if (v11 + 1 >= *(v4 + 40))
      {
        break;
      }

      v13 = *(v4 + 32);
      if (!mmcs_chunk_instance_is_ford((v13 + v12 - 56)))
      {
        if (!mmcs_chunk_instance_is_chunk_reference((v13 + v12 - 56)))
        {
          mmcs_put_state_container_will_be_retried_cold_1();
        }

        if (mmcs_put_state_put_container_did_reserve_chunk_reference(a1, a2, *(v13 + v12)))
        {
          v14 = *(v13 + v12);
          v15 = *(v14 + 4);
          if (v11 + 1 == *(v3 + 64) && *(v3 + 72) < v15)
          {
            v15 = *(v3 + 72);
          }

          mmcs_chunk_reference_was_unread(v14, *a1, v15);
        }
      }

      ++v11;
      v12 += 104;
    }

    while (v11 < *(v3 + 64));
  }

  else
  {
    v5 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"storage container stream chunk index is beyond the storage container chunk count");
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

CFErrorRef mmcs_put_state_copy_error_for_failed_containers(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277CBF128];
  do
  {
    primary_error = mmcs_container_get_primary_error(*(*(a1 + 64) + 8 * v2));
    if (primary_error)
    {
      v7 = primary_error;
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v4, 0, v5);
      }

      CFArrayAppendValue(Mutable, v7);
    }

    ++v2;
  }

  while (v2 < *(a1 + 8));
  if (!Mutable)
  {
    return 0;
  }

  error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 7, @"Put container failed.", Mutable, 0);
  CFRelease(Mutable);
  return error_with_underlying_errors;
}

void mmcs_put_state_process_storage_container_error_list(uint64_t *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a2[3])
    {
      v4 = 0;
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        v6 = *(a2[4] + 8 * v4);
        put_container_for_storage_container_key = mmcs_put_state_get_put_container_for_storage_container_key(a1, *(v6 + 24));
        if (put_container_for_storage_container_key)
        {
          v12 = *(v6 + 32);
          if (v12)
          {
            v13 = put_container_for_storage_container_key;
            error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(0, 1, 7, v12, @"The server returned an error for container %s", v9, v10, v11, *(v6 + 24));
            v15 = mmcs_container_set_complete_error(v13, error_with_error_response_and_format);
            v17 = mmcs_logging_logger_default(v15, v16);
            XCFPrint(v17, @"ContainerCompleteIssue", error_with_error_response_and_format);
LABEL_7:
            if (error_with_error_response_and_format)
            {
              CFRelease(error_with_error_response_and_format);
            }
          }
        }

        else
        {
          v18 = mmcs_logging_logger_default(0, v8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            error_with_error_response_and_format = CFStringCreateWithFormat(v5, 0, @"no storage container matching key %s", *(v6 + 24));
            v20 = mmcs_logging_logger_default(error_with_error_response_and_format, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v28 = error_with_error_response_and_format;
              _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            goto LABEL_7;
          }
        }

        ++v4;
      }

      while (v4 < a2[3]);
    }

    if (a2[5])
    {
      v21 = 0;
      do
      {
        mmcs_put_state_process_file_error(a1, *(a2[6] + 8 * v21++));
      }

      while (v21 < a2[5]);
    }

    if (a2[7])
    {
      v22 = 0;
      do
      {
        mmcs_put_state_process_file_success(a1, *(a2[8] + 8 * v22++));
      }

      while (v22 < a2[7]);
    }
  }

  else
  {
    v23 = mmcs_logging_logger_default(a1, 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed putComplete response body");
      v26 = mmcs_logging_logger_default(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v24;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }
  }
}

void mmcs_put_state_process_file_error(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  is_valid_n = mmcs_file_signature_is_valid_n(*(a2 + 32), *(a2 + 24));
  v5 = *(a2 + 32);
  if (is_valid_n)
  {
    v6 = mmcs_file_signature_to_hexstring(*(a2 + 32));
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v5 || (v6 = hextostrdup(*(a2 + 32), *(a2 + 24)), v5 = 0, !v6))
  {
LABEL_6:
    v6 = strdup("(null)");
  }

LABEL_7:
  if (*(a2 + 48))
  {
    Data = ProtobufCBinaryData_CreateData((a2 + 56));
    CStringDescription = XCFDataCreateCStringDescription(Data);
    if (CStringDescription)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Data = 0;
  }

  CStringDescription = strdup("(null)");
LABEL_12:
  error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(0, 1, 33, *(a2 + 40), @"The server returned an error. sig:%s ref:%s", v8, v9, v10, v6, CStringDescription);
  v14 = mmcs_logging_logger_default(error_with_error_response_and_format, v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v15)
  {
    v17 = CFCopyDescription(error_with_error_response_and_format);
    v19 = mmcs_logging_logger_default(v17, v18);
    v15 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file error %@", v17);
      v22 = mmcs_logging_logger_default(v20, v21);
      v15 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
      if (v15)
      {
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (!v5)
  {
    v25 = mmcs_logging_logger_default(v15, v16);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putComplete file error %@ for invalid item. sig:%s ref:%s", error_with_error_response_and_format, v6, CStringDescription);
    v28 = mmcs_logging_logger_default(v26, v27);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 138543362;
    v32 = v26;
    goto LABEL_29;
  }

  distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(*a1, v5, Data);
  if (distinct_item_with_signature_reference)
  {
    mmcs_item_set_server_error(distinct_item_with_signature_reference, error_with_error_response_and_format);
    goto LABEL_32;
  }

  v29 = mmcs_logging_logger_default(0, v24);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response error: ignoring putComplete file error %@; cannot find item. sig:%s ref:%s", error_with_error_response_and_format, v6, CStringDescription);
    v28 = mmcs_logging_logger_default(v26, v30);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 138543362;
    v32 = v26;
LABEL_29:
    _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_30:
    if (v26)
    {
      CFRelease(v26);
    }
  }

LABEL_32:
  if (error_with_error_response_and_format)
  {
    CFRelease(error_with_error_response_and_format);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v6)
  {
    free(v6);
  }

  if (CStringDescription)
  {
    free(CStringDescription);
  }
}

void mmcs_put_state_process_file_success(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  is_valid_n = mmcs_file_signature_is_valid_n(*(a2 + 32), *(a2 + 24));
  v5 = *(a2 + 32);
  if (is_valid_n)
  {
    v6 = mmcs_file_signature_to_hexstring(*(a2 + 32));
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v5 || (v6 = hextostrdup(*(a2 + 32), *(a2 + 24)), v5 = 0, !v6))
  {
LABEL_6:
    v6 = strdup("(null)");
  }

LABEL_7:
  if (*(a2 + 56))
  {
    Data = ProtobufCBinaryData_CreateData((a2 + 64));
    CStringDescription = XCFDataCreateCStringDescription(Data);
    v10 = CStringDescription;
    if (CStringDescription)
    {
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_24:
      v23 = mmcs_logging_logger_default(CStringDescription, v9);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putAuth success for invalid item. sig:%s ref:%s", v6, v10);
      v25 = mmcs_logging_logger_default(v22, v24);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      *buf = 138543362;
      v64 = v22;
      goto LABEL_42;
    }
  }

  else
  {
    Data = 0;
  }

  CStringDescription = strdup("(null)");
  v10 = CStringDescription;
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_10:
  distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(*a1, v5, Data);
  v13 = distinct_item_with_signature_reference;
  if (Data)
  {
    CFRelease(Data);
  }

  if (!v13)
  {
    v26 = mmcs_logging_logger_default(distinct_item_with_signature_reference, v12);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putAuth success for unknown item. sig:%s ref:%s", v6, v10);
    v25 = mmcs_logging_logger_default(v22, v27);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 138543362;
    v64 = v22;
LABEL_42:
    v42 = v25;
    v43 = OS_LOG_TYPE_ERROR;
    goto LABEL_43;
  }

  v14 = *(a2 + 40);
  if (v14 != 5)
  {
    if (v14 == 2)
    {
      v39 = mmcs_logging_logger_default(distinct_item_with_signature_reference, v12);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"One or more contributing containers. sig:%s ref:%s len:%llu", v6, v10, v13[2]);
      v41 = mmcs_logging_logger_default(v22, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v64 = v22;
        v42 = v41;
        v43 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
        _os_log_impl(&dword_2577D8000, v42, v43, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        goto LABEL_16;
      }

      v44 = mmcs_logging_logger_default(distinct_item_with_signature_reference, v12);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown success code %d. sig:%s ref:%s len:%llu", *(a2 + 40), v6, v10, v13[2]);
      v25 = mmcs_logging_logger_default(v22, v45);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v64 = v22;
        goto LABEL_42;
      }
    }

LABEL_44:
    if (!v22)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_16:
  v15 = *(a2 + 48);
  if (!v15 || (distinct_item_with_signature_reference = strlen(*(a2 + 48))) == 0)
  {
    v28 = mmcs_logging_logger_default(distinct_item_with_signature_reference, v12);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid return receipt for success_code %d. sig:%s ref:%s len:%llu", *(a2 + 40), v6, v10, v13[2]);
      v36 = mmcs_logging_logger_default(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v64 = v34;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    v37 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt. sig:%s ref:%s len:%llu", v29, v30, v31, v32, v33, v6, v10, v13[2]);
LABEL_57:
    v22 = v37;
    v55 = *a1;
    mmcs_put_item_progress_make_done_error(v37, v38, buf);
    mmcs_put_request_set_progress_and_notify_items_like_item(v55, v13, buf);
    if (!v22)
    {
      goto LABEL_46;
    }

LABEL_45:
    CFRelease(v22);
    goto LABEL_46;
  }

  v16 = *MEMORY[0x277CBECE8];
  String = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v15, distinct_item_with_signature_reference, 0x8000100u, 0);
  if (!String)
  {
    v46 = mmcs_logging_logger_default(0, v18);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v52 = CFStringCreateWithFormat(v16, 0, @"Invalid receipt received. receipt:%s sig:%s ref:%s len:%llu", *(a2 + 48), v6, v10, v13[2]);
      v54 = mmcs_logging_logger_default(v52, v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v64 = v52;
        _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v52)
      {
        CFRelease(v52);
      }
    }

    v37 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s", v47, v48, v49, v50, v51, v6, v61, v62);
    goto LABEL_57;
  }

  v19 = String;
  if (*(a2 + 80))
  {
    v20 = mmcs_time_convert_server_time_to_cfabsolutetime(*(a2 + 88));
    v21 = v20;
    if (v20 == 0.0)
    {
      v22 = 0;
    }

    else
    {
      String = XCFAbsoluteTimeDateFormatterCreateString(v20);
      v22 = String;
    }
  }

  else
  {
    v22 = 0;
    v21 = 0.0;
  }

  v56 = mmcs_logging_logger_default(String, v18);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = v13[5];
    v58 = v13[2];
    *buf = 134219266;
    v64 = v57;
    v65 = 2114;
    v66 = v19;
    v67 = 2114;
    v68 = v22;
    v69 = 2082;
    v70 = v6;
    v71 = 2082;
    v72 = v10;
    v73 = 2048;
    v74 = v58;
    _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_DEFAULT, "Server Receipt Received. itemId:%llu receipt:%{public}@ expiry:%{public}@ sig:%{public}s ref:%{public}s len:%llu", buf, 0x3Eu);
  }

  mmcs_item_set_put_receipt_with_expiry_time(v13, v19, v21);
  v59 = *a1;
  mmcs_put_item_progress_make_done_success(v19, v60, buf, v21);
  mmcs_put_request_set_progress_and_notify_items_like_item(v59, v13, buf);
  CFRelease(v19);
  if (v22)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v6)
  {
    free(v6);
  }

  if (v10)
  {
    free(v10);
  }
}

void mmcs_put_state_process_clone_complete(uint64_t *a1, void *a2)
{
  if (a2[5])
  {
    v4 = 0;
    do
    {
      mmcs_put_state_process_file_error(a1, *(a2[6] + 8 * v4++));
    }

    while (v4 < a2[5]);
  }

  if (a2[3])
  {
    v5 = 0;
    do
    {
      mmcs_put_state_process_file_success(a1, *(a2[4] + 8 * v5++));
    }

    while (v5 < a2[3]);
  }
}

CFDataRef mmcs_put_state_create_put_complete_request_body(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MethocCompletionInfoList = mmcs_put_state_create_MethocCompletionInfoList(a1, a2);
  if (!MethocCompletionInfoList)
  {
    return 0;
  }

  v4 = MethocCompletionInfoList;
  packed_size = chunkserver__method_completion_info_list__get_packed_size(MethocCompletionInfoList, v3);
  v6 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__method_completion_info_list__pack(v4, v6);
  v7 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v6, packed_size, *MEMORY[0x277CBECF0]);
  chunkserver__method_completion_info_list__free_unpacked(v4, 0);
  return v7;
}

void *mmcs_put_state_create_MethocCompletionInfoList(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (v4)
  {
    Count = CFArrayGetCount(*(a2 + 24));
    if (Count < 1)
    {
      chunkserver__method_completion_info_list__init(v4);
      v6 = 0;
      v4[3] = 0;
      v14 = v4 + 3;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), v7);
        v9 = ValueAtIndex[3];
        if (v9)
        {
          if (*(v9 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_1();
          }

          v10 = *(v9 + 40);
          if (v10)
          {
            v6 += CFArrayGetCount(v10);
          }
        }

        v11 = ValueAtIndex[2];
        if (v11)
        {
          if (*(v11 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_2();
          }

          v12 = *(v11 + 40);
          if (v12)
          {
            v6 += CFArrayGetCount(v12);
          }
        }

        if (ValueAtIndex[5])
        {
          ++v6;
        }

        ++v7;
      }

      while (Count != v7);
      chunkserver__method_completion_info_list__init(v4);
      v4[3] = 0;
      v14 = v4 + 3;
      if (v6 > 0)
      {
        method_completion_info = malloc_type_calloc(1uLL, 8 * v6, 0x2004093837F09uLL);
        v4[4] = method_completion_info;
        if (!method_completion_info)
        {
          goto LABEL_42;
        }

        goto LABEL_20;
      }
    }

    method_completion_info = v4[4];
    if (!method_completion_info)
    {
LABEL_42:
      chunkserver__method_completion_info_list__free_unpacked(v4, 0);
      return v4;
    }

LABEL_20:
    if (Count < 1)
    {
      v25 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      do
      {
        method_completion_info = CFArrayGetValueAtIndex(*(a2 + 24), v16);
        v18 = method_completion_info;
        v19 = method_completion_info[3];
        if (v19)
        {
          if (*(v19 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_3();
          }

          v20 = *(v19 + 40);
          if (v20)
          {
            v36.length = CFArrayGetCount(*(v19 + 40));
            v36.location = 0;
            CFArrayApplyFunction(v20, v36, _copy_methodCompletionInfoToList_0, v4);
          }
        }

        v21 = v18[2];
        if (v21)
        {
          if (*(v21 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_4();
          }

          v22 = *(v21 + 40);
          if (v22)
          {
            v37.length = CFArrayGetCount(*(v21 + 40));
            v37.location = 0;
            CFArrayApplyFunction(v22, v37, _copy_methodCompletionInfoToList_0, v4);
          }
        }

        if (v18[5])
        {
          method_completion_info = mmcs_put_container_create_method_completion_info(v18, v18[2], 0);
          if (method_completion_info)
          {
            v24 = v4[3];
            v23 = v4[4];
            v4[3] = v24 + 1;
            *(v23 + 8 * v24) = method_completion_info;
          }

          else
          {
            v17 = 0;
          }
        }

        ++v16;
      }

      while (Count != v16);
      v25 = v17 == 0;
    }

    if (*(a1 + 48))
    {
      v26 = mmcs_logging_logger_default(method_completion_info, v13);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        Length = CFDataGetLength(*(a1 + 48));
        *buf = 134217984;
        v34 = Length;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEFAULT, "Opaque Method Completion Info List Context of Length %llu Set.", buf, 0xCu);
      }

      *(v4 + 10) = 1;
      ProtobufCBinaryData_SetData(v4 + 6, *(a1 + 48));
    }

    if (!v25)
    {
      if (*v14 == v6)
      {
        return v4;
      }

      v29 = mmcs_logging_logger_default(method_completion_info, v13);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error Put MethodCompletionInfoList for putComplete (%p) creating response list", a2);
        v32 = mmcs_logging_logger_default(v30, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = v30;
          _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }
    }

    goto LABEL_42;
  }

  return v4;
}

CFDataRef mmcs_put_state_create_clone_complete_request_body(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  FileChunkLists = mmcs_put_request_create_FileChunkLists(a1, a2);
  if (!FileChunkLists)
  {
    return 0;
  }

  v6 = FileChunkLists;
  MethocCompletionInfoList = mmcs_put_state_create_MethocCompletionInfoList(a2, a3);
  if (MethocCompletionInfoList && (v8 = malloc_type_malloc(0x28uLL, 0x1060040A76FABEDuLL)) != 0)
  {
    v9 = v8;
    chunkserver__clone_complete_request__init(v8);
    v9[3] = v6;
    v9[4] = MethocCompletionInfoList;
    packed_size = chunkserver__clone_complete_request__get_packed_size(v9, v10);
    v12 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
    chunkserver__clone_complete_request__pack(v9, v12);
    v13 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v12, packed_size, *MEMORY[0x277CBECF0]);
    free(v9);
  }

  else
  {
    v13 = 0;
  }

  chunkserver__method_completion_info_list__free_unpacked(MethocCompletionInfoList, 0);
  mmcs_free_FileChunkLists(v6);
  return v13;
}

_BYTE *_copy_methodCompletionInfoToList_0(void **a1, uint64_t a2)
{
  result = Copy_MethodCompletionInfo(a1, a2);
  if (result)
  {
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    *(a2 + 24) = v5 + 1;
    *(v4 + 8 * v5) = result;
  }

  return result;
}

uint64_t mmcs_storage_container_init(uint64_t a1, char *__s1, const char *a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = strdup(__s1);
  *(a1 + 8) = 0;
  *(a1 + 40) = a4;
  *(a1 + 24) = 0;
  if (!a4 || (result = malloc_type_calloc(1uLL, 104 * a4, 0x1060040917B5EB5uLL), (*(a1 + 32) = result) != 0))
  {
    if (a3)
    {
      *(a1 + 16) = strdup(a3);
    }

    return 1;
  }

  return result;
}

uint64_t mmcs_storage_container_create(void *a1, char *a2, const char *a3, uint64_t a4)
{
  *a1 = 0;
  result = malloc_type_malloc(0x30uLL, 0x1070040E3208243uLL);
  if (result)
  {
    v9 = result;
    if (mmcs_storage_container_init(result, a2, a3, a4))
    {
      *a1 = v9;
      return 1;
    }

    else
    {
      free(v9);
      return 0;
    }
  }

  return result;
}

void mmcs_storage_container_finalize(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[1] = 0;
  mmcs_storage_container_cleanup_instances(a1);
  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  a1[2] = 0;
}

void mmcs_storage_container_cleanup_instances(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      mmcs_chunk_instance_finalize((*(a1 + 32) + v3));
      ++v4;
      v3 += 104;
    }

    while (v4 < *(a1 + 40));
    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_6:
      free(v2);
    }

    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
}

void mmcs_storage_container_dealloc(void **a1)
{
  mmcs_storage_container_finalize(a1);
  if (a1)
  {

    free(a1);
  }
}

void *mmcs_storage_container_compute_size(void *result, int a2)
{
  v2 = result;
  v3 = result[5];
  if (!a2)
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v3)
  {
    v4 = 0;
    v5 = 4;
    v6 = 56;
    do
    {
      result = CKChunkSchemeAndSignatureSize();
      v5 += result + 4;
      ++v4;
      v3 = v2[5];
      v6 += 104;
    }

    while (v4 < v3);
  }

  else
  {
    v5 = 4;
  }

  v7 = v2[3] + v5;
  if (v3)
  {
LABEL_10:
    v8 = 0;
    v9 = 0;
    do
    {
      result = mmcs_chunk_instance_get_length((v2[4] + v8));
      v7 += result;
      ++v9;
      v8 += 104;
    }

    while (v9 < v2[5]);
  }

LABEL_12:
  v2[3] = v7;
  return result;
}

void mmcs_storage_container_set_message_digest(void *a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v4 = mmcs_logging_logger_default(a1, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"container %s set message digest %@", *a1, cf);
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
  }

  v8 = a1[1];
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    a1[1] = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }
}

void *mmcs_epilogue_buffer_init(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t mmcs_epilogue_buffer_send(uint64_t result, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v6 + a3 > v5)
  {
    v7 = a3 - v5 + v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3 >= v5;
  v9 = a3 - v5;
  if (!v8)
  {
    v6 = v7;
    v9 = 0;
  }

  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

void *mmcs_epilogue_buffer_append(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v6 - a3;
  if (v6 > a3 && v7 + a3 > v6)
  {
    memmove(*a1, (*a1 + v7 - v8), v8);
    *(a1 + 16) = v8;
    v6 = *(a1 + 8);
    v7 = v8;
  }

  v10 = v3 - v6;
  if (v3 >= v6)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v7;
  }

  if (v6 < v3)
  {
    v3 = v6;
  }

  result = memcpy((*a1 + v11), (a2 + v10), v3);
  *(a1 + 16) = v11 + v3;
  return result;
}

double opaque__file_reference_data__v1__chunk__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279845708;
  *(a1 + 48) = unk_279845718;
  *(a1 + 64) = xmmword_279845728;
  *(a1 + 80) = 0;
  result = *&opaque__file_reference_data__v1__chunk__init_init_value;
  *a1 = opaque__file_reference_data__v1__chunk__init_init_value;
  *(a1 + 16) = unk_2798456F8;
  return result;
}

double opaque__file_reference_data__v1__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v1__init_init_value;
  a1[1] = *algn_279845750;
  result = 0.0;
  a1[2] = xmmword_279845760;
  a1[3] = unk_279845770;
  return result;
}

double opaque__file_reference_data__v2__chunk_group__chunk__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v2__chunk_group__chunk__init_init_value;
  a1[1] = *algn_279845790;
  result = 0.0;
  a1[2] = xmmword_2798457A0;
  a1[3] = unk_2798457B0;
  return result;
}

double opaque__file_reference_data__v2__chunk_group__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v2__chunk_group__init_init_value;
  *(a1 + 16) = *algn_2798457D0;
  result = 0.0;
  *(a1 + 32) = xmmword_2798457E0;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v2__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v2__init_init_value;
  *(a1 + 16) = unk_279845808;
  result = 0.0;
  *(a1 + 32) = xmmword_279845818;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v3__chunk__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v3__chunk__init_init_value;
  a1[1] = unk_279845840;
  result = 0.0;
  a1[2] = xmmword_279845850;
  a1[3] = unk_279845860;
  return result;
}

double opaque__file_reference_data__v3__chunk_length_index_set__index_range__init(uint64_t a1)
{
  result = *&opaque__file_reference_data__v3__chunk_length_index_set__index_range__init_init_value;
  *a1 = opaque__file_reference_data__v3__chunk_length_index_set__index_range__init_init_value;
  *(a1 + 16) = unk_279845880;
  *(a1 + 32) = 0;
  return result;
}

double opaque__file_reference_data__v3__chunk_length_index_set__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v3__chunk_length_index_set__init_init_value;
  *(a1 + 16) = unk_2798458A8;
  result = 0.0;
  *(a1 + 32) = xmmword_2798458B8;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v3__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_2798458F0;
  *(a1 + 48) = unk_279845900;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = opaque__file_reference_data__v3__init_init_value;
  *(a1 + 16) = *dbl_2798458E0;
  return result;
}

double opaque__file_reference_data__ranged_item__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__ranged_item__init_init_value;
  *(a1 + 16) = unk_279845928;
  result = 0.0;
  *(a1 + 32) = xmmword_279845938;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__init_init_value;
  a1[1] = unk_279845960;
  result = 0.0;
  a1[2] = xmmword_279845970;
  a1[3] = unk_279845980;
  return result;
}

uint64_t opaque__file_reference_data__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &opaque__file_reference_data__descriptor)
  {
    opaque__file_reference_data__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t opaque__file_reference_data__pack(void **a1, uint64_t a2)
{
  if (*a1 != &opaque__file_reference_data__descriptor)
  {
    opaque__file_reference_data__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **opaque__file_reference_data__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &opaque__file_reference_data__descriptor)
    {
      opaque__file_reference_data__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

uint64_t mmcs_storage_container_stream_create(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a4;
    v7 = result;
    *result = 0;
    result = malloc_type_calloc(1uLL, 0x70uLL, 0x1060040E30FB482uLL);
    if (result)
    {
      v8 = result;
      if (mmcs_storage_container_stream_init(result, a2, a3, v4))
      {
        *v7 = v8;
        return 1;
      }

      else
      {
        mmcs_storage_container_stream_dealloc(v8);
        return 0;
      }
    }
  }

  return result;
}

uint64_t mmcs_storage_container_stream_init(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 48) = a4;
    *(a1 + 96) = 0;
    result = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    *(a1 + 16) = result;
    if (result)
    {
      mmcs_storage_container_stream_reset(a1);
      return 1;
    }
  }

  return result;
}

void mmcs_storage_container_stream_dealloc(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  a1[2] = 0;
  mmcs_storage_container_stream_clear_item_reader_cache(a1);
  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  a1[5] = 0;
  v4 = a1[13];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[13] = 0;
  v5 = a1[10];
  if (v5)
  {
    C3BaseRelease(v5);
  }

  free(a1);
}

uint64_t mmcs_storage_container_stream_reset(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    mmcs_storage_container_stream_reset_cold_1();
  }

  CC_MD5_Init(v2);
  mmcs_storage_container_set_message_digest(*(a1 + 8), 0);
  mmcs_storage_container_stream_clear_item_reader_cache(a1);
  v3 = *(a1 + 40);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 40) = 0;
  if (!*(a1 + 48))
  {
    *(a1 + 56) = *(*(a1 + 8) + 40);
  }

  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 104) = 0;
  v5 = *(a1 + 80);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(a1 + 80) = 0;
  return 1;
}

void mmcs_storage_container_stream_clear_item_reader_cache(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MMCSItemReaderWriterEnsureClosed(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 24) = 0;
  }

  *(a1 + 32) = -1;
}

uint64_t mmcs_storage_container_stream_read(uint64_t *a1, CFDataRef theData, unint64_t a3, CFErrorRef *a4, _BYTE *a5)
{
  v5 = a4;
  v6 = a3;
  v223 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = 0;
  if (!a1 || !theData || !a3)
  {
    return v9;
  }

  Length = CFDataGetLength(theData);
  v10 = a1[7];
  v11 = a1[1];
  v12 = *(v11 + 40);
  if (v10 < v12)
  {
    v13 = v5;
    *bytes = 0;
    while (1)
    {
      v14 = *(v11 + 32) + 104 * v10;
      v15 = CKChunkSchemeAndSignatureSize();
      v10 = a1[7];
      v16 = v10 ? 4 : 8;
      v17 = v16 + v15;
      v18 = v6 - v17;
      if (v6 < v17)
      {
        break;
      }

      if (!v10)
      {
        *bytes = bswap32(*(a1[1] + 40));
        CFDataAppendBytes(theData, bytes, 4);
      }

      v19 = *(*(v14 + 56) + 8);
      v20 = CKChunkSchemeAndSignatureSize();
      CFDataAppendBytes(theData, v19, v20);
      *bytes = 0;
      *bytes = bswap32(*(v14 + 64));
      CFDataAppendBytes(theData, bytes, 4);
      v10 = a1[7] + 1;
      a1[7] = v10;
      v11 = a1[1];
      v12 = *(v11 + 40);
      v6 = v18;
      if (v10 >= v12)
      {
        v6 = v18;
        goto LABEL_19;
      }
    }

    v12 = *(a1[1] + 40);
LABEL_19:
    v5 = v13;
  }

  if (v10 < v12)
  {
    v21 = 0;
LABEL_27:
    v32 = 0;
LABEL_28:
    error = CFDataGetLength(theData);
    v33 = error - Length;
    if (error - Length >= 1)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(theData);
      error = CC_MD5_Update(a1[2], &MutableBytePtr[Length], v33);
      if (v21)
      {
        v35 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
        v36 = CC_MD5_Final(v35, a1[2]);
        v38 = mmcs_logging_logger_default(v36, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = v5;
          v40 = hextostrdup(v35, 0x10uLL);
          v42 = mmcs_logging_logger_default(v40, v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *bytes = 136446210;
            *&bytes[4] = v40;
            _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_INFO, "client computed container md5 %{public}s", bytes, 0xCu);
          }

          v5 = v39;
          if (v40)
          {
            free(v40);
          }
        }

        v43 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v35, 16, *MEMORY[0x277CBECF0]);
        mmcs_storage_container_set_message_digest(a1[1], v43);
        if (v43)
        {
          CFRelease(v43);
        }
      }
    }

    v44 = 0;
    v45 = 1;
    v9 = 1;
    goto LABEL_38;
  }

  item_signature_chunk_signature_error_with_format = 0;
  v21 = a1[8] >= v12;
  if (!v6)
  {
    goto LABEL_27;
  }

  if (mmcs_request_is_container_interrupted_mode(***(*a1 + 88)))
  {
    v28 = a1[11];
    v29 = (CFDataGetLength(theData) + v28);
    if (mmcs_request_index(*(*(*a1 + 88) + 8)) * 0.1 < v29)
    {
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making around 10 percent progress.", v23, v24, v25, v26, v27);
      item_signature_chunk_signature_error_with_format = error;
      if (!error)
      {
        goto LABEL_216;
      }

LABEL_26:
      CFRetain(error);
      v31 = 1;
      v32 = item_signature_chunk_signature_error_with_format;
      error = item_signature_chunk_signature_error_with_format;
LABEL_195:
      if (error)
      {
        CFRelease(error);
      }

      if (v31)
      {
        v45 = 0;
        v9 = 0;
        goto LABEL_217;
      }

      goto LABEL_28;
    }
  }

  v204 = v5;
  v47 = a1[8];
  v48 = a1[1];
  if (v47 >= *(v48 + 40))
  {
LABEL_194:
    v32 = 0;
    v31 = 0;
    v21 = a1[8] >= *(a1[1] + 40);
    error = item_signature_chunk_signature_error_with_format;
    v5 = v204;
    goto LABEL_195;
  }

  alloc = *MEMORY[0x277CBECE8];
  v206 = v21;
  while (1)
  {
    v49 = *(v48 + 32) + 104 * v47;
    if (mmcs_chunk_instance_is_chunk_reference(v49) && !a1[10])
    {
      a1[10] = mmcs_chunk_instance_chunk_coder_create(v49, 1);
    }

    v50 = CFDataGetLength(theData);
    if (*v49 == 2)
    {
      v62 = v50;
      item_signature_chunk_signature_error_with_format = 0;
      v63 = (*(a1[1] + 32) + 104 * a1[8]);
      if (gMMCS_DebugLevel >= 6)
      {
        v64 = mmcs_chunk_instance_copy_description(*(a1[1] + 32) + 104 * a1[8]);
        v66 = v64;
        if (gMMCS_DebugLevel >= 5)
        {
          v67 = mmcs_logging_logger_default(v64, v65);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v68 = CFStringCreateWithFormat(alloc, 0, @"Reading chunk %@ beginning at chunk offset %lu", v66, a1[9]);
            v70 = mmcs_logging_logger_default(v68, v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *bytes = 138543362;
              *&bytes[4] = v68;
              _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
            }

            if (v68)
            {
              CFRelease(v68);
            }
          }
        }

        if (v66)
        {
          CFRelease(v66);
        }
      }

      v71 = mmcs_chunk_instance_get_length(v63);
      v72 = v71;
      v73 = a1[9];
      if (v71 - v73 >= v6)
      {
        v74 = v6;
      }

      else
      {
        v74 = v71 - v73;
      }

      v75 = CFDataGetLength(theData);
      CFDataSetLength(theData, v74 + v75);
      v76 = CFDataGetMutableBytePtr(theData);
      BytePtr = CFDataGetBytePtr(v63[10]);
      memcpy(&v76[v75], &BytePtr[a1[9]], v74);
      v6 -= v74;
      v78 = a1[9] + v74;
      a1[9] = v78;
      v79 = v78 == v72;
      v21 = v206;
      goto LABEL_128;
    }

    v205 = v50;
    if (*v49 != 1)
    {
      mmcs_storage_container_stream_read_cold_4();
    }

    item_signature_chunk_signature_error_with_format = 0;
    v210 = 0;
    v51 = *(a1[1] + 32) + 104 * a1[8];
    v52 = *(*(v51 + 56) + 8);
    if (gMMCS_DebugLevel >= 6)
    {
      v53 = mmcs_chunk_instance_copy_description(*(a1[1] + 32) + 104 * a1[8]);
      v55 = v53;
      if (gMMCS_DebugLevel >= 5)
      {
        v56 = mmcs_logging_logger_default(v53, v54);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v57 = CFStringCreateWithFormat(alloc, 0, @"Reading chunk %@ beginning at chunk offset %lu", v55, a1[9]);
          v59 = mmcs_logging_logger_default(v57, v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *bytes = 138543362;
            *&bytes[4] = v57;
            _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
          }

          if (v57)
          {
            CFRelease(v57);
          }
        }
      }

      if (v55)
      {
        CFRelease(v55);
      }
    }

    if (a1[5])
    {
      CKRegisteredChunkSignature();
      v60 = CKChunkSignaturesEqual();
      v61 = a1[5];
      if (v60)
      {
        if (v61)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v61)
        {
          free(v61);
        }

        a1[5] = 0;
      }
    }

    v80 = ***(*a1 + 88);
    v81 = mmcs_chunk_instance_offset(v80);
    v210 = 0;
    v82 = *(a1[1] + 32) + 104 * a1[8];
    if (!mmcs_chunk_instance_is_chunk_reference(v82))
    {
      mmcs_storage_container_stream_read_cold_3();
    }

    v83 = *(v82 + 56);
    v84 = *(v83 + 8);
    first_chunk_instance = mmcs_chunk_reference_get_first_chunk_instance(v83);
    if (!first_chunk_instance)
    {
      mmcs_storage_container_stream_read_cold_2();
    }

    RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(first_chunk_instance);
    a1[5] = RegisteredChunk;
    if (!RegisteredChunk)
    {
      v112 = mmcs_chunk_signature_to_hexstring(v84);
      v114 = mmcs_logging_logger_default(v112, v113);
      v21 = v206;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        v120 = CFStringCreateWithFormat(alloc, 0, @"unable to create chunk for chunk signature %s", v112);
        v122 = mmcs_logging_logger_default(v120, v121);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          *bytes = 138543362;
          *&bytes[4] = v120;
          _os_log_impl(&dword_2577D8000, v122, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
        }

        if (v120)
        {
          CFRelease(v120);
        }
      }

      error_with_underlying_error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"unable to allocate chunk signature %s", v115, v116, v117, v118, v119, v112);
      if (v112)
      {
        free(v112);
      }

      goto LABEL_119;
    }

    CKRegisteredChunkSetLocation();
    if (a1[3])
    {
      v87 = a1[4];
      if (v87 == CKRegisteredChunkItemID())
      {
        goto LABEL_92;
      }
    }

    mmcs_storage_container_stream_clear_item_reader_cache(a1);
    cf = 0;
    v88 = mmcs_engine_owner(v81);
    requestor = mmcs_request_get_requestor(v80);
    v90 = CKRegisteredChunkItemID();
    if (!mmcs_engine_get_item_reader_writer_for_item_callback(v81, v88, requestor, v90, a1 + 3, &cf) || (v91 = a1[3]) == 0 || !MMCSItemReaderWriterOpen(v91, &cf))
    {
      v124 = mmcs_chunk_signature_to_hexstring(v84);
      v125 = cf;
      v126 = CKRegisteredChunkItemID();
      error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 9, v125, @"Unable to open item %lld while looking for chunk %s", v127, v128, v129, v130, v126, v124);
      if (v124)
      {
        free(v124);
      }

      v21 = v206;
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v131 = mmcs_cferror_copy_description(error_with_underlying_error);
      v133 = mmcs_logging_logger_default(v131, v132);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        v134 = CFStringCreateWithFormat(alloc, 0, @"An error occurred: %@", v131);
        v136 = mmcs_logging_logger_default(v134, v135);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          *bytes = 138543362;
          *&bytes[4] = v134;
          _os_log_impl(&dword_2577D8000, v136, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
        }

        v21 = v206;
        if (v134)
        {
          CFRelease(v134);
        }
      }

      if (v131)
      {
        CFRelease(v131);
      }

      mmcs_storage_container_stream_clear_item_reader_cache(a1);
LABEL_119:
      v62 = v205;
      v137 = a1[5];
      if (v137)
      {
        free(v137);
      }

      a1[5] = 0;
      CFRetain(error_with_underlying_error);
      v210 = error_with_underlying_error;
      if (error_with_underlying_error)
      {
        CFRelease(error_with_underlying_error);
        goto LABEL_123;
      }

LABEL_124:
      v138 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unknown error in mmcs_storage_container_stream_read_chunk_data", v98, v99, v100, v101, v102);
      v210 = v138;
LABEL_125:
      CFRetain(v138);
      v79 = 0;
      v139 = v210;
      item_signature_chunk_signature_error_with_format = v210;
      v140 = 1;
      if (!v210)
      {
        goto LABEL_127;
      }

LABEL_126:
      CFRelease(v139);
      goto LABEL_127;
    }

    if (!a1[3])
    {
      mmcs_storage_container_stream_read_cold_1();
    }

    a1[4] = CKRegisteredChunkItemID();
LABEL_92:
    if (a1[9] >= CKRegisteredChunkLength())
    {
      v21 = v206;
    }

    else
    {
      v92 = v6;
      if (CKRegisteredChunkLength() - a1[9] < v6)
      {
        v92 = CKRegisteredChunkLength() - a1[9];
      }

      v93 = CFDataGetLength(theData);
      CFDataSetLength(theData, v93 + v92);
      v94 = CFDataGetMutableBytePtr(theData);
      *bytes = 0;
      v95 = a1[3];
      v96 = CKRegisteredChunkOffset();
      v97 = MMCSItemReaderWriterRead(v95, a1[9] + v96, &v94[v93], v92, bytes, &v210);
      v21 = v206;
      if (!v97)
      {
        goto LABEL_99;
      }

      if (*bytes < v92)
      {
        v103 = mmcs_chunk_signature_to_hexstring(v52);
        v104 = CKRegisteredChunkItemID();
        v105 = *bytes;
        v106 = CKRegisteredChunkOffset();
        v210 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 12, @"Short read of item %lld: while looking for chunk %s (read:%llu, expected:%lu, offset:%lld)", v107, v108, v109, v110, v111, v104, v103, v105, v92, a1[9] + v106);
        if (v103)
        {
          free(v103);
        }

LABEL_99:
        v62 = v205;
LABEL_123:
        v138 = v210;
        if (!v210)
        {
          goto LABEL_124;
        }

        goto LABEL_125;
      }

      v6 -= v92;
      a1[9] += v92;
      request = mmcs_put_container_get_request(*a1);
      mmcs_put_container_chunk_reference_was_read(*a1, request, *(v51 + 56), v92);
    }

    v62 = v205;
    v159 = CKRegisteredChunkLength();
    v160 = a1[9];
    if (v160 >= v159)
    {
      v161 = *(v51 + 64) - v160;
      if (v161 >= v6)
      {
        v162 = v6;
      }

      else
      {
        v162 = v161;
      }

      v163 = CFDataGetLength(theData);
      CFDataSetLength(theData, v162 + v163);
      v164 = CFDataGetMutableBytePtr(theData);
      bzero(&v164[v163], v162);
      v6 -= v162;
      v160 = a1[9] + v162;
      a1[9] = v160;
    }

    v140 = 0;
    v79 = v160 == *(v51 + 64);
    v139 = v210;
    if (v210)
    {
      goto LABEL_126;
    }

LABEL_127:
    if (v140)
    {
      goto LABEL_214;
    }

LABEL_128:
    v141 = CFDataGetLength(theData);
    v142 = v141 - v62;
    if (v141 - v62 >= 1)
    {
      CFDataGetMutableBytePtr(theData);
      v141 = a1[10];
      if (v141)
      {
        v141 = CKChunkCoderUpdate();
        if (!v141)
        {
          error = mmcs_cferror_create_error(@"com.apple.mmcs", 22, @"Chunk stream update error");
          item_signature_chunk_signature_error_with_format = error;
          goto LABEL_215;
        }
      }

      a1[11] += v142;
    }

    if (!v79)
    {
      if (v6)
      {
        v184 = mmcs_logging_logger_default(v141, v22);
        if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          v185 = CFStringCreateWithFormat(alloc, 0, @"The chunk isn't done and the buffer isn't full.");
          v187 = mmcs_logging_logger_default(v185, v186);
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *bytes = 138543362;
            *&bytes[4] = v185;
            _os_log_impl(&dword_2577D8000, v187, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
          }

          if (v185)
          {
            CFRelease(v185);
          }
        }
      }

      goto LABEL_194;
    }

    if (a1[10])
    {
      break;
    }

LABEL_137:
    a1[10] = 0;
    if (mmcs_chunk_instance_is_chunk_reference(v49))
    {
      mmcs_put_container_chunk_reference_was_put(*a1, *(v49 + 56));
      if (gMMCS_DebugLevel >= 4)
      {
        v149 = mmcs_chunk_signature_to_hexstring(*(*(v49 + 56) + 8));
        v151 = mmcs_logging_logger_chunk(v149, v150);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = a1[8] + 1;
          v153 = a1[1];
          v154 = *(v153 + 40);
          v155 = *(v49 + 32);
          v156 = *(v153 + 24);
          v157 = *(v49 + 64);
          *bytes = 134219266;
          *&bytes[4] = v152;
          v213 = 2048;
          v214 = v154;
          v215 = 2048;
          v216 = v155;
          v217 = 2048;
          v218 = v156;
          v219 = 1024;
          v220 = v157;
          v221 = 2082;
          v222 = v149;
          _os_log_impl(&dword_2577D8000, v151, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu at containerOffset %llu of %llu with byteLength %u and signature %{public}s sent.", bytes, 0x3Au);
        }

        if (v149)
        {
          free(v149);
        }
      }
    }

    v47 = a1[8] + 1;
    a1[8] = v47;
    a1[9] = 0;
    v48 = a1[1];
    if (v47 >= *(v48 + 40))
    {
      goto LABEL_194;
    }
  }

  if (CKChunkCoderFinish())
  {
    v148 = a1[10];
    if (v148)
    {
      C3BaseRelease(v148);
    }

    goto LABEL_137;
  }

  v188 = item_signature_chunk_signature_error_with_format;
  v189 = a1[10];
  if (v189)
  {
    C3BaseRelease(v189);
  }

  a1[10] = 0;
  if (a1[5])
  {
    v190 = CKRegisteredChunkSignatureCopyCString();
    v191 = CKRegisteredChunkItemID();
    v192 = CKRegisteredChunkSignature();
    v193 = CKRegisteredChunkItemID();
    item_signature_chunk_signature_error_with_format = mmcs_cferror_create_item_signature_chunk_signature_error_with_format(@"com.apple.mmcs", 11, v191, 0, v192, item_signature_chunk_signature_error_with_format, @"The container content is incorrect. Any items contributing will need to be retried. The data for chunk %s provided by item %lld did not match.", v194, v190, v193);
    v195 = mmcs_put_container_get_request(*a1);
    v196 = mmcs_chunk_instance_offset(v195);
    v198 = mmcs_logging_logger_default(v196, v197);
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      v199 = CKRegisteredChunkItemID();
      v200 = CFStringCreateWithFormat(alloc, 0, @"Unregistering item %lld which had a bogus chunk %s", v199, v190);
      v202 = mmcs_logging_logger_default(v200, v201);
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        *bytes = 138543362;
        *&bytes[4] = v200;
        _os_log_impl(&dword_2577D8000, v202, OS_LOG_TYPE_DEFAULT, "%{public}@", bytes, 0xCu);
      }

      v21 = v206;
      if (v200)
      {
        CFRelease(v200);
      }
    }

    CKRegisteredChunkItemID();
    CKUnregisterFile();
    if (v190)
    {
      free(v190);
    }
  }

  else
  {
    item_signature_chunk_signature_error_with_format = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"The container content is incorrect. Any items contributing will need to be retried. It is not known which chunk was responsible", v143, v144, v145, v146, v147);
  }

  if (v188)
  {
    CFRelease(v188);
  }

LABEL_214:
  error = item_signature_chunk_signature_error_with_format;
LABEL_215:
  v5 = v204;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_216:
  v45 = 0;
  v9 = 0;
  v32 = 0;
LABEL_217:
  v44 = 1;
LABEL_38:
  if (!*(a1 + 96))
  {
LABEL_170:
    if (a5 && v9 && v21)
    {
      v9 = 1;
      *a5 = 1;
      goto LABEL_185;
    }

    goto LABEL_182;
  }

  if (!v21)
  {
    v45 = 0;
  }

  if (v45 != 1)
  {
    if ((v44 & 1) == 0)
    {
      v46 = a1[13] != 0;
      goto LABEL_155;
    }

    goto LABEL_45;
  }

  if (a1[13])
  {
    goto LABEL_43;
  }

  if (a1[9])
  {
    mmcs_storage_container_stream_read_cold_5();
  }

  v175 = a1[1];
  if (a1[8] != v175[5])
  {
    mmcs_storage_container_stream_read_cold_6();
  }

  v9 = v175[1];
  if (!v9)
  {
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Calculated MD5 Not Available for Trailer, Container (%s)", v23, v24, v25, v26, v27, *v175);
LABEL_182:
    if (!v5 || v9)
    {
      goto LABEL_185;
    }

    *v5 = v32;
    return v9;
  }

  v176 = mmcs_logging_logger_default(error, v22);
  if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
  {
    v177 = *a1[1];
    *bytes = 136315138;
    *&bytes[4] = v177;
    _os_log_impl(&dword_2577D8000, v176, OS_LOG_TYPE_INFO, "Appending Payload Trailer for Container (%s)", bytes, 0xCu);
  }

  error = mmcs_create_put_complete_at_edge_payload_trailer(v9, *(**(*a1 + 88) + 48));
  if (!error)
  {
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed produce payload trailer for container (%s)", v178, v179, v180, v181, v182, *a1[1]);
LABEL_45:
    v9 = 0;
    goto LABEL_182;
  }

  v32 = 0;
  a1[13] = error;
LABEL_43:
  v46 = 1;
LABEL_155:
  v9 = 1;
  if (v46 && v6)
  {
    if (a1[8] != *(a1[1] + 40))
    {
      mmcs_storage_container_stream_read_cold_7();
    }

    if (gMMCS_DebugLevel >= 6)
    {
      v165 = mmcs_logging_logger_default(error, v22);
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
      {
        v166 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Reading payload trailer at offset %lu", a1[9]);
        v168 = mmcs_logging_logger_default(v166, v167);
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
        {
          *bytes = 138543362;
          *&bytes[4] = v166;
          _os_log_impl(&dword_2577D8000, v168, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
        }

        if (v166)
        {
          CFRelease(v166);
        }
      }
    }

    v169 = CFDataGetLength(a1[13]);
    v170 = a1[9];
    if (v169 > v170)
    {
      if (v169 - v170 >= v6)
      {
        v171 = v6;
      }

      else
      {
        v171 = v169 - v170;
      }

      v172 = CFDataGetLength(theData);
      CFDataSetLength(theData, v172 + v171);
      v173 = CFDataGetMutableBytePtr(theData);
      v174 = CFDataGetBytePtr(a1[13]);
      memcpy(&v173[v172], &v174[a1[9]], v171);
      v170 = a1[9] + v171;
      a1[9] = v170;
      a1[11] += v171;
    }

    v21 = v170 >= CFDataGetLength(a1[13]);
    v9 = 1;
    goto LABEL_170;
  }

LABEL_185:
  if (v32)
  {
    CFRelease(v32);
  }

  return v9;
}

uint64_t mmcs_perform_run_loop_source_create(void *a1, _OWORD *a2, uint64_t a3, const __CFArray *a4)
{
  *a1 = 0;
  v15 = 0;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = mmcs_perform_source_create(&v15, 1, 8, v14);
  v9 = v15;
  if (v8 && v15)
  {
    v10 = v15[7];
    v13.version = 0;
    v13.info = v15;
    v13.retain = C3BaseRetain;
    v13.release = C3BaseRelease;
    memset(&v13.copyDescription, 0, 40);
    v13.perform = mmcs_perform_run_loop_source_perform_callback;
    v11 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v13);
    *v10 = v11;
    XCFRunLoopAddSourceToModes(a3, v11, a4);
    C3BaseRetain(v15);
    v9 = v15;
    *a1 = v15;
  }

  if (v9)
  {
    C3BaseRelease(v9);
  }

  return v8;
}

void mmcs_perform_run_loop_source_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_run_loop_source_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRunLoopSourceInvalidate(*v1);
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
  }
}

uint64_t get_path_for_fd(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  v4 = -5;
  v7 = 0;
  while (1)
  {
    if (fstat(a1, &v8) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7.val[1] = 0;
    v7.val[0] = v8.st_dev;
    if ((fsgetpath(a2, 0x400uLL, &v7, v8.st_ino) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 35 || v4++ == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

_BYTE *hextostrdup(char *a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    hextostrdup_cold_1();
  }

  v2 = a2;
  result = malloc_type_malloc((2 * a2) | 1, 0x100004077774924uLL);
  v5 = result;
  if (v2)
  {
    v6 = result;
    do
    {
      *v6 = hextostr_hexdigits[*a1 >> 4];
      v7 = *a1++;
      v5 = v6 + 2;
      v6[1] = hextostr_hexdigits[v7 & 0xF];
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  *v5 = 0;
  return result;
}

const char *_getCStringFromCFStringSafely(const __CFString *a1, CFStringEncoding a2, uint64_t a3)
{
  result = CFStringGetCStringPtr(a1, a2);
  if (a3)
  {
    if (!result)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
      v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      *a3 = v9;
      CFStringGetCString(a1, v9, MaximumSizeForEncoding + 1, a2);
      return *a3;
    }
  }

  return result;
}

__CFString *createCStringWithCFString(const __CFString *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v4)
  {
    v6 = v4;
    if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }
  }

  else
  {
    v7 = mmcs_logging_logger_default(0, v5);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
    v9 = mmcs_logging_logger_default(v6, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", &v11, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

CFNumberRef mmcs_copy_cfnumber_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, const void *a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_copy_cfnumber_from_cftype_using_description(key, Value, a3);
}

const __CFString *mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, uint64_t a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_get_cfBOOLean_from_cftype_using_description(key, Value, a3);
}

uint64_t mmcs_get_BOOLean_from_cfpreferences_object_for_key(const __CFString *a1, uint64_t BOOLean_from_cftype_using_description)
{
  if (a1)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.mmcs");
    if (v4)
    {
      v5 = v4;
      BOOLean_from_cftype_using_description = mmcs_get_BOOLean_from_cftype_using_description(a1, v4, BOOLean_from_cftype_using_description);
      CFRelease(v5);
    }
  }

  return BOOLean_from_cftype_using_description;
}

BOOL mmcs_file_signature_is_valid_n(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 == 21)
    {
      return CKFileSchemeAndSignatureSize() == 21;
    }
  }

  return result;
}

BOOL mmcs_file_signature_is_valid(_BOOL8 result)
{
  if (result)
  {
    return CKFileSchemeAndSignatureSize() == 21;
  }

  return result;
}

const UInt8 *mmcs_file_digest_arguments_create_with_boudnary_key(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) != 32)
    {
      return 0;
    }

    result = CFDataGetBytePtr(v1);
    if (!result)
    {
      return result;
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (!mmcs_zcmp(BytePtr, 0x20uLL))
    {
      if (CKFileDigestArgumentsV2WithBoundaryKeyCreate())
      {
        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *strtohex(_BYTE *result, _BYTE *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = 0;
    v4 = result + 2;
    do
    {
      v5 = v2 - 48;
      v6 = (v2 - 48);
      v7 = (v2 - 97);
      if ((v2 - 65) < 6u)
      {
        v3 = v2 - 55;
      }

      v8 = v2 - 87;
      if (v7 > 5)
      {
        v8 = v3;
      }

      if (v6 < 0xA)
      {
        v8 = v5;
      }

      v9 = 16 * v8;
      v10 = *(v4 - 1);
      v11 = v10 - 48;
      v12 = v10 - 97;
      if ((v10 - 65) <= 5)
      {
        v13 = (v10 - 55) | v9;
      }

      else
      {
        v13 = v9;
      }

      v3 = (v10 - 87) | v9;
      if (v12 > 5)
      {
        v3 = v13;
      }

      v14 = v11 | v9;
      if (v11 <= 9)
      {
        v3 = v14;
      }

      *a2++ = v3;
      v15 = *v4;
      v4 += 2;
      v2 = v15;
    }

    while (v15);
  }

  return result;
}

uint64_t mmcs_buffer_create_with_hex_string(char *__s, uint64_t *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  result = 0;
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      result = malloc_type_malloc(v6 >> 1, 0x100004077774924uLL);
      if (result)
      {
        v8 = result;
        strtohex(__s, result);
        if (a2)
        {
          *a2 = v8;
        }

        if (a3)
        {
          *a3 = (v6 >> 1);
        }

        return 1;
      }
    }
  }

  return result;
}

CFDataRef mmcs_cfdata_create_with_hexstring(char *a1)
{
  v4 = 0;
  v5 = 0;
  v1 = mmcs_buffer_create_with_hex_string(a1, &v5, &v4);
  result = 0;
  if (v1)
  {
    if (v5)
    {
      v3 = v4 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v4, *MEMORY[0x277CBECF0]);
    }
  }

  return result;
}

_BYTE *mmcs_file_signature_create_with_string(char *a1)
{
  if (!a1 || strlen(a1) > 0x2A)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x15uLL, 0x100004077774924uLL);
  if (v2)
  {
    strtohex(a1, v2);
    if (CKFileSchemeAndSignatureSize() != 21)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void *mmcs_file_signature_copy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

CFDataRef mmcs_file_signature_to_cfdata(const UInt8 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x277CBECE8];

  return CFDataCreate(v4, a1, v3);
}

_BYTE *mmcs_file_signature_to_hexstring(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  return hextostrdup(a1, v2);
}

uint64_t mmcs_file_signature_create_from_file_descriptor(const UInt8 *a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    CKFileDigestArgumentsV1WithFileCreate();
LABEL_8:
    if (a3)
    {
      v12 = 0;
      *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"failed to create fileDigestArguments", v5, v6, v7, v8, v9);
      return v12;
    }

    return 0;
  }

  cf = mmcs_file_digest_arguments_create_with_boudnary_key(a1);
  if (!cf)
  {
    goto LABEL_8;
  }

  v10 = CK2CalculateFileSignatureWithFlags();
  if (v10)
  {
    CKFileDigestResultsFileSignature();
    v12 = CKFileSignatureCopy();
    CFRelease(cf);
    return v12;
  }

  v13 = mmcs_logging_logger_default(v10, v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MMCSGetSignatureForFileDescriptor can't calculate file signature for fd (%d)", a2);
    v16 = mmcs_logging_logger_default(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (!a3)
  {
    return 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

BOOL mmcs_chunk_signature_is_valid_n(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 - 22) >= 0xFFFFFFFFFFFFFFEBLL)
    {
      return CKChunkSchemeAndSignatureSize() == 21;
    }
  }

  return result;
}

BOOL mmcs_chunk_signature_is_valid(_BOOL8 result)
{
  if (result)
  {
    return CKChunkSchemeAndSignatureSize() == 21;
  }

  return result;
}

void *mmcs_chunk_signature_copy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKChunkSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

_BYTE *mmcs_chunk_signature_to_hexstring(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKChunkSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  return hextostrdup(a1, v2);
}

uint64_t mmcs_print_registered_chunk_list(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (gMMCS_DebugLevel >= 4 && a2 != 0)
    {
      v4 = result;
      v5 = 0;
      do
      {
        v6 = CKRegisteredChunkSignatureCopyCString();
        v8 = mmcs_logging_logger_chunk(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CKRegisteredChunkOffset();
          v10 = CKRegisteredChunkLength();
          *buf = 134219010;
          v12 = v5 + 1;
          v13 = 2048;
          v14 = a2;
          v15 = 2048;
          v16 = v9;
          v17 = 1024;
          v18 = v10;
          v19 = 2082;
          v20 = v6;
          _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEFAULT, "Chunk %llu of %llu at itemOffset %llu with byteLength %u has signature %{public}s", buf, 0x30u);
        }

        if (v6)
        {
          free(v6);
        }

        result = CKRegisteredChunkSize();
        v4 += result;
        ++v5;
      }

      while (a2 != v5);
    }
  }

  return result;
}

void mmcs_op_requestor_context_indent(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 1)
  {
    v2 = *(a1 + 16);
    v3 = v1 + 1;
    do
    {
      CFStringAppend(v2, @"    ");
      --v3;
    }

    while (v3 > 1);
  }
}

__CFString *mmcs_cferror_copy_description(__CFError *a1)
{
  if (a1)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    _mmcs_cferror_append_description(Mutable, a1, 0);
    return Mutable;
  }

  else
  {

    return CFRetain(@"(null)");
  }
}

void _mmcs_cferror_append_description(CFMutableStringRef theString, CFErrorRef err, int a3)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      --v6;
      CFStringAppend(theString, @"    ");
    }

    while (v6);
  }

  Domain = CFErrorGetDomain(err);
  Code = CFErrorGetCode(err);
  CFStringAppendFormat(theString, 0, @"Error Domain=%@ Code=%ld", Domain, Code);
  v9 = CFErrorCopyDescription(err);
  if (v9)
  {
    v10 = v9;
    CFStringAppendFormat(theString, 0, @" %@", v9);
    CFRelease(v10);
  }

  v11 = CFErrorCopyUserInfo(err);
  if (v11)
  {
    v12 = v11;
    Value = CFDictionaryGetValue(v11, @"NSDebugDescription");
    if (Value)
    {
      CFStringAppendFormat(theString, 0, @" (%@)", Value);
    }

    CFStringAppend(theString, @"\n");
    context[0] = theString;
    context[1] = (a3 + 1);
    CFDictionaryApplyFunction(v12, _mmcs_cferror_append_description_userInfo, context);
    v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CBEE78]);
    _mmcs_cferror_append_underlying_error_description(v14, context);
    v15 = CFDictionaryGetValue(v12, @"kMMCSErrorUnderlyingErrorArrayKey");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFArrayGetTypeID())
      {
        v21.length = CFArrayGetCount(v16);
        v21.location = 0;
        CFArrayApplyFunction(v16, v21, _mmcs_cferror_append_underlying_error_description, context);
      }
    }

    v18 = mmcs_cfnetwork_copy_underlying_stream_error(v12);
    if (v18)
    {
      v19 = v18;
      _mmcs_cferror_append_underlying_error_description(v18, context);
      CFRelease(v19);
    }

    CFRelease(v12);
  }
}

__CFString *mmcs_cferror_copy_short_description(__CFError *a1)
{
  if (a1)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    _mmcs_cferror_append_short_description(Mutable, a1);
    return Mutable;
  }

  else
  {

    return CFRetain(@"(null)");
  }
}

void _mmcs_cferror_append_short_description(__CFString *a1, __CFError *a2)
{
  Domain = CFErrorGetDomain(a2);
  Code = CFErrorGetCode(a2);
  CFStringAppendFormat(a1, 0, @"%@/%ld", Domain, Code);
  v6 = CFErrorCopyUserInfo(a2);
  Value = CFDictionaryGetValue(v6, *MEMORY[0x277CBEE78]);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFErrorGetTypeID())
    {
      CFStringAppend(a1, @"(");
      _mmcs_cferror_append_short_description(a1, v8);
LABEL_11:
      CFStringAppend(a1, @""));
      goto LABEL_12;
    }
  }

  v10 = CFDictionaryGetValue(v6, @"kMMCSErrorUnderlyingErrorArrayKey");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFArrayGetTypeID())
    {
      CFStringAppend(a1, @"(");
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
          if (i)
          {
            CFStringAppend(a1, @", ");
          }

          _mmcs_cferror_append_short_description(a1, ValueAtIndex);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (v6)
  {

    CFRelease(v6);
  }
}

char *mmcs_cfnetwork_cfstream_error_domain_copy_description(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case -1:
      v1 = "_kCFStreamErrorDomainCustom";
      goto LABEL_18;
    case 0:
      v1 = "_kCFStreamErrorDomainNoError";
      goto LABEL_18;
    case 1:
      v1 = "_kCFStreamErrorDomainPOSIX";
      goto LABEL_18;
    case 2:
      v1 = "_kCFStreamErrorDomainMacOSStatus";
      goto LABEL_18;
    case 3:
      v1 = "_kCFStreamErrorDomainSSL";
      goto LABEL_18;
    case 4:
      v1 = "_kCFStreamErrorDomainHTTP";
      goto LABEL_18;
    case 5:
      v1 = "_kCFStreamErrorDomainSOCKS";
      goto LABEL_18;
    case 6:
      v1 = "_kCFStreamErrorDomainFTP";
      goto LABEL_18;
    case 7:
      v1 = "_kCFStreamErrorDomainWinSock";
      goto LABEL_18;
    case 10:
      v1 = "_kCFStreamErrorDomainNetServices";
      goto LABEL_18;
    case 11:
      v1 = "_kCFStreamErrorDomainMach";
      goto LABEL_18;
    case 12:
      v1 = "_kCFStreamErrorDomainNetDB";
      goto LABEL_18;
    case 13:
      v1 = "_kCFStreamErrorDomainSystemConfiguration";
      goto LABEL_18;
    case 15:
      v1 = "__kCFURLErrorDomain";
      goto LABEL_18;
    case 20:
      v1 = "_kCFStreamErrorDomainCFHTTPServer";
LABEL_18:

      result = strdup(v1);
      break;
    default:
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *__str = 0u;
      v4 = 0u;
      snprintf(__str, 0x64uLL, "_kCFStreamErrorDomainNumber%d", a1);
      result = strdup(__str);
      break;
  }

  return result;
}

char *mmcs_cfnetwork_cfstream_http_error_copy_description(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 <= -2099)
  {
    if (a1 <= -2102)
    {
      switch(a1)
      {
        case -2104:
          v1 = "kCFStreamErrorWatchdogTimeout";
          goto LABEL_28;
        case -2103:
          v1 = "kCFStreamErrorResourceTimeout";
          goto LABEL_28;
        case -2102:
          v1 = "kCFStreamErrorRequestTimeout";
          goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (a1 == -2101)
    {
      v1 = "kCFStreamErrorAdaptiveReadTimeout";
    }

    else if (a1 == -2100)
    {
      v1 = "kCFStreamErrorAdaptiveWriteTimeout";
    }

    else
    {
      v1 = "__kCFStreamErrorHTTPLedBellyDisconnect";
    }
  }

  else
  {
    if (a1 > -2096)
    {
      if (a1 <= -2094)
      {
        if (a1 == -2095)
        {
          v1 = "__kCFStreamErrorHTTPStreamAtMark";
        }

        else
        {
          v1 = "__kCFStreamErrorHTTPProxyFailure";
        }

        goto LABEL_28;
      }

      if (a1 == -2093)
      {
        v1 = "__kCFStreamErrorHTTPProxyConfigChanged";
        goto LABEL_28;
      }

      if (a1 == -4)
      {
        v1 = "_kCFStreamErrorHTTPConnectionLost";
        goto LABEL_28;
      }

LABEL_31:
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *__str = 0u;
      v4 = 0u;
      snprintf(__str, 0x64uLL, "_CFStreamErrorHTTPErrorNumber%d", a1);
      return strdup(__str);
    }

    if (a1 == -2098)
    {
      v1 = "__kCFStreamErrorHTTPSProxyFailureUnexpectedResponseToCONNECTMethod";
    }

    else if (a1 == -2097)
    {
      v1 = "__kCFStreamErrorHTTPSProxyAuthRequired";
    }

    else
    {
      v1 = "__kCFStreamErrorHTTPSProxyFailure";
    }
  }

LABEL_28:

  return strdup(v1);
}

CFErrorRef mmcs_cfnetwork_copy_underlying_stream_error(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"_kCFStreamErrorDomainKey");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = CFDictionaryGetValue(a1, @"_kCFStreamErrorCodeKey");
  if (!v7)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  TypeID = CFNumberGetTypeID();
  v6 = 0;
  if (v9 != TypeID)
  {
    v8 = 0;
  }

  if (v5 && v9 == TypeID)
  {
    valuePtr = 0;
    if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr + 4))
    {
      if (CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v11 = mmcs_cfnetwork_cfstream_error_domain_copy_description(SHIDWORD(valuePtr));
        if (v11)
        {
          v12 = v11;
          v13 = strlen(v11);
          v14 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v12, v13, 0x8000100u, 0);
          if (!v14)
          {
            v6 = 0;
LABEL_40:
            free(v12);
            goto LABEL_21;
          }

          v20 = v14;
          if (HIDWORD(valuePtr) == 1)
          {
            v41 = strerror(valuePtr);
            v21 = strdup(v41);
          }

          else
          {
            if (HIDWORD(valuePtr) != 4)
            {
              v42 = 0;
LABEL_35:
              v43 = " ";
              v44 = "";
              if (v42)
              {
                v44 = v42;
              }

              else
              {
                v43 = "";
              }

              v6 = mmcs_cferror_create_with_format(v20, valuePtr, @"%@/%d%s%s", v15, v16, v17, v18, v19, v20, valuePtr, v43, v44);
              CFRelease(v20);
              if (v42)
              {
                free(v42);
              }

              goto LABEL_40;
            }

            v21 = mmcs_cfnetwork_cfstream_http_error_copy_description(valuePtr);
          }

          v42 = v21;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  nsurlerror_background_task_cancelled_reason_key = mmcs_get_nsurlerror_background_task_cancelled_reason_key();
  v23 = CFDictionaryGetValue(a1, nsurlerror_background_task_cancelled_reason_key);
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 == CFNumberGetTypeID())
    {
      v45 = 0;
      if (CFNumberGetValue(v24, kCFNumberIntType, &v45))
      {
        if (v6)
        {
          CFRelease(v6);
        }

        v31 = v45;
        if (v45 <= 2)
        {
          v32 = off_279846150[v45];
          v6 = mmcs_cferror_create_with_format(@"com.apple.nsurlsessiond", v45, @"%@", v26, v27, v28, v29, v30, v32);
LABEL_29:
          CFRelease(v32);
          return v6;
        }

        v33 = *MEMORY[0x277CBECE8];
        v34 = mmcs_get_nsurlerror_background_task_cancelled_reason_key();
        v32 = CFStringCreateWithFormat(v33, 0, @"%@%d", v34, v31);
        v6 = mmcs_cferror_create_with_format(@"com.apple.nsurlsessiond", v45, @"%@", v35, v36, v37, v38, v39, v32);
        if (v32)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return v6;
}

const char *MMCSPutItemStateCString(unsigned int a1)
{
  if (a1 <= 7)
  {
    return MMCSPutItemStateCString_strings[a1];
  }

  else
  {
    return "(unknown put item state)";
  }
}

const char *MMCSGetItemStateCString(unsigned int a1)
{
  if (a1 <= 5)
  {
    return MMCSGetItemStateCString_strings[a1];
  }

  else
  {
    return "(unknown get item state)";
  }
}

CFURLRef XCFURLCreateWithCString(const char *a1)
{
  v2 = strlen(a1);
  v3 = *MEMORY[0x277CBECE8];

  return CFURLCreateWithBytes(v3, a1, v2, 0x8000100u, 0);
}

CFHTTPMessageRef XCFHTTPMessageCopyWithNewURLAndHeaders(__CFHTTPMessage *a1, const __CFURL *a2, const __CFDictionary *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v22 = mmcs_logging_logger_default(a1, 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cannot create new message with a null url!");
      v24 = mmcs_logging_logger_default(v15, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v42 = 138543362;
        v43 = v15;
LABEL_18:
        _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", &v42, 0xCu);
      }

LABEL_19:
      v27 = 0;
      goto LABEL_46;
    }

    return 0;
  }

  v6 = CFHTTPMessageCopyRequestMethod(a1);
  if (!v6)
  {
    v25 = mmcs_logging_logger_default(0, v7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get request method");
      v24 = mmcs_logging_logger_default(v15, v26);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v42 = 138543362;
        v43 = v15;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    return 0;
  }

  v8 = v6;
  v9 = CFHTTPMessageCopyVersion(a1);
  if (!v9)
  {
    v28 = mmcs_logging_logger_default(0, v10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get version");
      v31 = mmcs_logging_logger_default(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v42 = 138543362;
        v43 = v29;
        _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", &v42, 0xCu);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    v27 = 0;
    v15 = v8;
    goto LABEL_47;
  }

  v11 = v9;
  v13 = CFHTTPMessageCopyAllHeaderFields(a1);
  if (v13)
  {
    v15 = CFHTTPMessageCopyBody(a1);
    if (v15 || gMMCS_DebugLevel <= 4)
    {
      v18 = *MEMORY[0x277CBECE8];
    }

    else
    {
      v16 = mmcs_logging_logger_default(0, v14);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      v18 = *MEMORY[0x277CBECE8];
      if (v17)
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to copy body; possibly empty");
        v21 = mmcs_logging_logger_default(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v42 = 138543362;
          v43 = v19;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", &v42, 0xCu);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }
    }

    Request = CFHTTPMessageCreateRequest(v18, v8, a2, v11);
    if (Request)
    {
      v27 = Request;
      CFDictionaryApplyFunction(v13, copyWithNewUrlHelper, Request);
      if (a3)
      {
        CFDictionaryApplyFunction(a3, copyWithNewUrlHelper, v27);
      }

      CFHTTPMessageSetBody(v27, v15);
      goto LABEL_44;
    }

    v37 = mmcs_logging_logger_default(0, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = CFStringCreateWithFormat(v18, 0, @"failed to create new message");
      v40 = mmcs_logging_logger_default(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = 138543362;
        v43 = v38;
        _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, "%{public}@", &v42, 0xCu);
      }

      if (v38)
      {
        CFRelease(v38);
      }
    }
  }

  else
  {
    v32 = mmcs_logging_logger_default(0, v12);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to copy headers");
      v34 = mmcs_logging_logger_default(v15, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v42 = 138543362;
        v43 = v15;
        _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_ERROR, "%{public}@", &v42, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_43;
      }

      CFRelease(v15);
    }

    v15 = 0;
  }

LABEL_43:
  v27 = 0;
LABEL_44:
  CFRelease(v8);
  CFRelease(v11);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_46:
  if (v15)
  {
LABEL_47:
    CFRelease(v15);
  }

  return v27;
}

BOOL XCFSafelyEquals(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

CFTypeRef XCFSafelyHash(CFTypeRef cf)
{
  if (cf)
  {
    return CFHash(cf);
  }

  return cf;
}

__CFString *XCFCreateTruncatedHash(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return &stru_2868BF3F0;
  }

  v1 = *MEMORY[0x277CBECE8];
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"com.apple.mmcs.%@", a1);
  MutableCopy = CFStringCreateMutableCopy(v1, 0, v2);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  DataUsingEncoding = XCFStringCreateDataUsingEncoding(MutableCopy, 0x8000100u);
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  BytePtr = CFDataGetBytePtr(DataUsingEncoding);
  Length = CFDataGetLength(DataUsingEncoding);
  CC_SHA256_Update(&c, BytePtr, Length);
  *md = 0u;
  v12 = 0u;
  CC_SHA256_Final(md, &c);
  if (DataUsingEncoding)
  {
    CFRelease(DataUsingEncoding);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v7 = hextostrdup(md, 2uLL);
  v8 = CFStringCreateWithCString(v1, v7, 0x8000100u);
  if (v7)
  {
    free(v7);
  }

  return v8;
}

CFDataRef XCFStringCreateDataUsingEncoding(const __CFString *a1, CFStringEncoding a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, a2))
  {
    free(v7);
    return 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v8, v7, MaximumSizeForEncoding + 1, v9);
}

void XCFSetAddValuesFromArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFSetAddValuesFromSetApplier, a1);
}

void XCFSetRemoveValuesFromArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFSetRemoveValuesFromSetApplier, a1);
}

void XCFSetSafelyRemoveValue(void *a1, const void *a2)
{
  CFRetain(a1);
  CFSetRemoveValue(a1, a2);
  if (a1)
  {

    CFRelease(a1);
  }
}

void mmcs_cfarray_free_callback(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFIndex XCFArrayRemoveAllInstancesOfValue(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  result = CFArrayGetLastIndexOfValue(a1, v6, a2);
  if (result != -1)
  {
    v5 = result;
    do
    {
      CFArrayRemoveValueAtIndex(a1, v5);
      v7.length = CFArrayGetCount(a1);
      v7.location = 0;
      result = CFArrayGetLastIndexOfValue(a1, v7, a2);
      v5 = result;
    }

    while (result != -1);
  }

  return result;
}

void XCFArrayRemoveAllValuesWithArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFArrayRemoveValuesFromArrayApplier, a1);
}

CFArrayRef XCFArrayCreateWithObject(const void *a1)
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = a1;
  return CFArrayCreate(*MEMORY[0x277CBECE8], v2, 1, MEMORY[0x277CBF128]);
}

void XCFDictionaryAppendValue(const __CFDictionary *a1, const CFArrayCallBacks *a2, void *key, const void *a4)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {

    CFArrayAppendValue(Value, a4);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, a2);
    CFArrayAppendValue(Mutable, a4);
    CFDictionarySetValue(a1, key, Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

CFArrayRef XCFDictionaryCopyKeys(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(a1, v5, 0);
  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], v5, Count, a2);
  if (v5)
  {
    free(v5);
  }

  return v6;
}

CFMutableArrayRef XCFSetMutableCopyValues(const __CFSet *a1, const CFArrayCallBacks *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Count = CFSetGetCount(a1);
  Mutable = CFArrayCreateMutable(v4, Count, a2);
  CFSetApplyFunction(a1, _set_applier_append_array, Mutable);
  return Mutable;
}

CFStringRef XCFAbsoluteTimeDateFormatterCreateString(CFAbsoluteTime a1)
{
  pthread_once(&sAbsoluteTimeDateFormatter_once, _AbsoluteTimeDateFormatter_init_once);
  pthread_mutex_lock(&XCFAbsoluteTimeDateFormatterCreateString_lock);
  if (sAbsoluteTimeDateFormatter)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x277CBECE8], sAbsoluteTimeDateFormatter, a1);
  }

  else
  {
    StringWithAbsoluteTime = 0;
  }

  pthread_mutex_unlock(&XCFAbsoluteTimeDateFormatterCreateString_lock);
  return StringWithAbsoluteTime;
}

void _AbsoluteTimeDateFormatter_init_once()
{
  v0 = CFLocaleCreate(0, @"en_US");
  v1 = *MEMORY[0x277CBECE8];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v0);
  sAbsoluteTimeDateFormatter = CFDateFormatterCreate(v1, v0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(sAbsoluteTimeDateFormatter, DateFormatFromTemplate);
  if (DateFormatFromTemplate)
  {
    CFRelease(DateFormatFromTemplate);
  }

  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t XCFReadStreamGetSocketNativeHandle(__CFReadStream *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = CFReadStreamCopyProperty(a1, *MEMORY[0x277CBF078]);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(v2) && CFDataGetLength(v2) == 4)
  {
    v4 = *CFDataGetBytePtr(v2);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  CFRelease(v2);
  return v4;
}

char *XCFDataCreateCStringDescription(const __CFData *a1)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);

    return hextostrdup(BytePtr, Length);
  }

  else
  {

    return strdup("(null)");
  }
}

CFStringRef XCFDataCreateStringDescription(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = hextostrdup(BytePtr, Length);
  v5 = strlen(v4);
  v6 = *MEMORY[0x277CBECF0];
  v7 = *MEMORY[0x277CBECE8];

  return XCFStringCreateWithBytesNoCopy(v7, v4, v5, 0x8000100u, 0, v6);
}

CFStringRef XCFStringCopyPathExtension(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  v2 = CFURLCopyPathExtension(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t mmcs_server_version_compare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 > a3;
  if (a1 < a3)
  {
    v4 = -1;
  }

  v5 = a2 > a4;
  if (a2 < a4)
  {
    v5 = -1;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t mmcs_server_version_make_from_CFString(CFStringRef theString)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v2 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    IntValue = 0;
  }

  else
  {
    v4 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    IntValue = CFStringGetIntValue(ValueAtIndex);
    if (v4 != 1)
    {
      v7 = CFArrayGetValueAtIndex(v2, 1);
      CFStringGetIntValue(v7);
    }
  }

  CFRelease(v2);
  return IntValue;
}

double mmcs_server_version_as_double(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = log10(a2);
  return v3 / __exp10(floor(v4) + 1.0) + a1;
}

void _mmcs_cferror_append_description_userInfo(const __CFString *cf, const __CFString *a2, uint64_t a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()) || !CFEqual(cf, @"NSDebugDescription") && !CFEqual(cf, *MEMORY[0x277CBEE58]) && !CFEqual(cf, *MEMORY[0x277CBEE30]) && !CFEqual(cf, *MEMORY[0x277CBEE78]) && !CFEqual(cf, @"kMMCSErrorUnderlyingErrorArrayKey"))
  {

    _mmcs_cferror_append_description_dict(cf, a2, a3);
  }
}

void _mmcs_cferror_append_underlying_error_description(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = *a2;
      v6 = *(a2 + 8);

      _mmcs_cferror_append_description(v5, a1, v6);
    }
  }
}

void _mmcs_cferror_append_description_dict(const __CFString *a1, CFStringRef StringWithNumber, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      v7 = 0;
    }

    else
    {
      v5 = CFCopyDescription(v5);
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    v5 = @"(null)";
  }

  v8 = *a3;
  v9 = *(a3 + 8);
  if (v9)
  {
    do
    {
      --v9;
      CFStringAppend(v8, @"    ");
    }

    while (v9);
    v8 = *a3;
  }

  CFStringAppend(v8, @"");
  CFStringAppend(*a3, v5);
  CFStringAppend(*a3, @"");
  if (v7)
  {
    CFRelease(v7);
  }

  CFStringAppend(*a3, @" = ");
  if (!StringWithNumber)
  {
    v12 = @"(null)";
    goto LABEL_18;
  }

  v10 = CFGetTypeID(StringWithNumber);
  if (v10 == CFStringGetTypeID())
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", StringWithNumber);
LABEL_14:
    StringWithNumber = v11;
    goto LABEL_15;
  }

  v13 = CFGetTypeID(StringWithNumber);
  if (v13 != CFDictionaryGetTypeID())
  {
    v16 = CFGetTypeID(StringWithNumber);
    if (v16 == CFNumberGetTypeID())
    {
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
      v19 = CFNumberFormatterCreate(v17, v18, kCFNumberFormatterDecimalStyle);
      StringWithNumber = CFNumberFormatterCreateStringWithNumber(v17, v19, StringWithNumber);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

LABEL_15:
      v12 = StringWithNumber;
      if (!StringWithNumber)
      {
        return;
      }

      goto LABEL_18;
    }

    v20 = CFGetTypeID(StringWithNumber);
    if (v20 != CFBooleanGetTypeID())
    {
      v11 = CFCopyDescription(StringWithNumber);
      goto LABEL_14;
    }

    Value = CFBooleanGetValue(StringWithNumber);
    StringWithNumber = 0;
    if (Value)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

LABEL_18:
    CFStringAppend(*a3, v12);
    CFStringAppend(*a3, @"\n");
    if (StringWithNumber)
    {

      CFRelease(StringWithNumber);
    }

    return;
  }

  CFStringAppend(*a3, @"{\n");
  context = *a3;
  v23 = 0;
  LODWORD(v23) = *(a3 + 8) + 1;
  CFDictionaryApplyFunction(StringWithNumber, _mmcs_cferror_append_description_dict, &context);
  v14 = *a3;
  v15 = *(a3 + 8);
  if (v15)
  {
    do
    {
      --v15;
      CFStringAppend(v14, @"    ");
    }

    while (v15);
    v14 = *a3;
  }

  CFStringAppend(v14, @"}\n");
}

uint64_t MMCSEngineGetRequestMetrics(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 200);
    if (v3)
    {
      if (v4)
      {
        v5 = mmcs_logging_logger_default(v3, a2);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"This shouldn't happen: currentGetRequestContext and currentPutRequestContext are both non-NULL! I refuse to choose.");
          v8 = mmcs_logging_logger_default(v6, v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v10 = 138543362;
            v11 = v6;
            _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
          }

          if (v6)
          {
            CFRelease(v6);
          }
        }

        return 0;
      }

      return mmcs_get_req_context_get_current_request_metrics(v3);
    }

    if (v4)
    {
      v3 = v4;

      return mmcs_get_req_context_get_current_request_metrics(v3);
    }
  }

  return 0;
}

void MMCSGetChunks(const void *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t (*a5)(uint64_t, const void *, CFTypeRef *), uint64_t (*a6)(uint64_t, void))
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = _os_activity_create(&dword_2577D8000, "mmcs-get-chunks", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v14 = mmcs_logging_logger_default(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks - Start.", buf, 2u);
  }

  if (!a5 || !a6)
  {
    MMCSGetChunks_cold_1();
  }

  v63 = 0;
  v64 = 0;
  v15 = mmcs_local_chunk_satisfyer_create(&v64, a1, a2, 0, &v63, 0);
  if (v15)
  {
    v56 = a6;
    object = v11;
    v58 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v18 = Count;
      for (i = 0; v18 != i; ++i)
      {
        v61 = 0;
        cf = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        v21 = CFGetTypeID(ValueAtIndex);
        TypeID = CFDataGetTypeID();
        if (v21 == TypeID)
        {
          v24 = a5(a2, ValueAtIndex, &v61);
          if (v24)
          {
            if (v61)
            {
              v26 = MMCSItemReaderWriterOpen(v61, &cf);
              if (v26)
              {
                v28 = v64;
                v64[4] = v61;
                v28[5] = &v63;
                v60 = 0;
                BytePtr = CFDataGetBytePtr(ValueAtIndex);
                v30 = mmcs_chunk_reference_create(&v60, 0, BytePtr, 0, 0);
                if (v30)
                {
                  v59 = 0;
                  v32 = mmcs_chunk_instance_create(&v59, v60, 0, 0, 0);
                  if (v32)
                  {
                    RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(v59);
                    if (RegisteredChunk)
                    {
                      v36 = RegisteredChunk;
                      v37 = mmcs_local_chunk_satisfyer_perform(v64, v59, RegisteredChunk, 1, v58, 0x8000uLL, &cf);
                      if (!v37)
                      {
                        v39 = mmcs_logging_logger_default(v37, v38);
                        v37 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
                        if (v37)
                        {
                          *buf = 0;
                          _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_ERROR, "MMCSGetChunks, fatal error copying source chunk.", buf, 2u);
                        }
                      }

                      goto LABEL_34;
                    }

                    v48 = mmcs_logging_logger_default(0, v35);
                    v37 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
                    if (v37)
                    {
                      *buf = 0;
                      v41 = v48;
                      v42 = "MMCSGetChunks, failed to created source registered chunk.";
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    v47 = mmcs_logging_logger_default(v32, v33);
                    v37 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
                    if (v37)
                    {
                      *buf = 0;
                      v41 = v47;
                      v42 = "MMCSGetChunks, failed to created source chunk instance.";
                      goto LABEL_32;
                    }
                  }
                }

                else
                {
                  v46 = mmcs_logging_logger_default(v30, v31);
                  v37 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                  if (v37)
                  {
                    *buf = 0;
                    v41 = v46;
                    v42 = "MMCSGetChunks, failed to created destionation chunk reference.";
                    goto LABEL_32;
                  }
                }
              }

              else
              {
                v45 = mmcs_logging_logger_default(v26, v27);
                v37 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
                if (v37)
                {
                  *buf = 0;
                  v41 = v45;
                  v42 = "MMCSGetChunks, destination item reader did not open.";
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v44 = mmcs_logging_logger_default(0, v25);
              v37 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
              if (v37)
              {
                *buf = 0;
                v41 = v44;
                v42 = "MMCSGetChunks, retrieval of destination item reader writer returned nil.";
                goto LABEL_32;
              }
            }
          }

          else
          {
            v43 = mmcs_logging_logger_default(v24, v25);
            v37 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
            if (v37)
            {
              *buf = 0;
              v41 = v43;
              v42 = "MMCSGetChunks, retrieval of destination item reader writer failed.";
              goto LABEL_32;
            }
          }
        }

        else
        {
          v40 = mmcs_logging_logger_default(TypeID, v23);
          v37 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
          if (v37)
          {
            *buf = 0;
            v41 = v40;
            v42 = "MMCSGetChunks, chunkSignatures array element had incorrect type.";
LABEL_32:
            _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
          }
        }

        v36 = 0;
LABEL_34:
        v49 = mmcs_logging_logger_default(v37, v38);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          if (v59)
          {
            v50 = "no";
            if (*(v59 + 48))
            {
              v50 = "yes";
            }
          }

          else
          {
            v50 = "no";
          }

          *buf = 138412802;
          v67 = ValueAtIndex;
          v68 = 2080;
          v69 = v50;
          v70 = 2112;
          v71 = cf;
          _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks, chunk %@ satisfied locally %s eith error %@", buf, 0x20u);
        }

        v64[4] = 0;
        MMCSItemReaderWriterClose(v61, 0);
        if (v61)
        {
          C3BaseRelease(v61);
        }

        v61 = 0;
        if (v63)
        {
          C3BaseRelease(v63);
        }

        v63 = 0;
        mmcs_chunk_reference_dealloc(v60);
        mmcs_chunk_instance_dealloc(v59);
        if (v36)
        {
          free(v36);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    v51 = v56(a2, 0);
    v53 = mmcs_logging_logger_default(v51, v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v64[9];
      *buf = 134217984;
      v67 = v54;
      _os_log_impl(&dword_2577D8000, v53, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks - Done, found %llu bytes.", buf, 0xCu);
    }

    if (v64)
    {
      C3BaseRelease(v64);
    }

    v64 = 0;
    if (object)
    {
      os_release(object);
    }

    if (v58)
    {
      free(v58);
    }
  }

  else
  {
    v55 = mmcs_logging_logger_default(v15, v16);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_ERROR, "MMCSGetChunks, failed to initialize local chunk satisfyer.", buf, 2u);
    }

    a6(a2, 0);
  }

  os_activity_scope_leave(&state);
}

uint64_t MMCSGetItems(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, CFErrorRef *a10)
{
  v16 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v33 = v16;
    v19 = a3;
    v20 = a7;
    v21 = a8;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get items");
    v27 = mmcs_logging_logger_default(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    a6 = v24;
    a5 = v23;
    a4 = v22;
    a8 = v21;
    a7 = v20;
    a3 = v19;
    v16 = v33;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!v16 || !a3 || !a7 || !a8)
  {
    if (a10)
    {
      v28 = @"Missing required parameters.";
      v29 = 40;
      goto LABEL_18;
    }

    return 0;
  }

  if (*(a1 + 120))
  {
    if (a10)
    {
      v28 = @"Engine is already closed.";
      v29 = 26;
LABEL_18:
      items = 0;
      *a10 = mmcs_cferror_create_error(@"com.apple.mmcs", v29, v28);
      return items;
    }

    return 0;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  items = mmcs_get_items(a1, a4, a5, v16, CStringFromCFStringSafely, a6, a7, a8, a9, a10);
  if (*buf)
  {
    free(*buf);
  }

  return items;
}

const __CFArray *MMCSPutItems(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFErrorRef *a11)
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"put items");
    v21 = mmcs_logging_logger_default(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a11)
  {
    *a11 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!a2 || !a3 || !a7 || !a8)
  {
    if (a11)
    {
      v22 = @"Missing required parameters.";
      v23 = 40;
      goto LABEL_18;
    }

    return 0;
  }

  if (*(a1 + 120))
  {
    if (a11)
    {
      v22 = @"Engine is already closed.";
      v23 = 26;
LABEL_18:
      v24 = 0;
      *a11 = mmcs_cferror_create_error(@"com.apple.mmcs", v23, v22);
      return v24;
    }

    return 0;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  v24 = mmcs_put_items(a1, a4, a5, a2, CStringFromCFStringSafely, a6, a7, a8, a9, a10, a11);
  if (*buf)
  {
    free(*buf);
  }

  return v24;
}

void MMCSUpdateItems(_BYTE *a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, void (*a6)(uint64_t, CFDictionaryRef))
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"update items");
    v15 = mmcs_logging_logger_default(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (!a1 || !a2 || !a3 || !a5)
  {
    v16 = @"Missing required parameters.";
    v17 = 40;
LABEL_13:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v17, v16);
    mmcs_update_request_abort(a4, error, a6);
    if (error)
    {
      CFRelease(error);
    }

    return;
  }

  if (a1[120])
  {
    v16 = @"Engine is already closed.";
    v17 = 26;
    goto LABEL_13;
  }

  v20 = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, &v20);
  mmcs_update_items(a1, a2, CStringFromCFStringSafely, a4, a5, a6);
  if (v20)
  {
    free(v20);
  }
}

uint64_t MMCSPutSection(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, const void *a6, uint64_t a7, CFIndex a8, char *a9, uint64_t a10, int a11, CFErrorRef *a12)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"put section");
    v22 = mmcs_logging_logger_default(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (a12)
  {
    *a12 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!a2 || !a3 || !a7 || !a9)
  {
    if (a12)
    {
      v23 = @"Missing required parameters.";
      v24 = 40;
      goto LABEL_18;
    }

    return 0;
  }

  if (*(a1 + 120))
  {
    if (a12)
    {
      v23 = @"Engine is already closed.";
      v24 = 26;
LABEL_18:
      v25 = 0;
      *a12 = mmcs_cferror_create_error(@"com.apple.mmcs", v24, v23);
      return v25;
    }

    return 0;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  v25 = mmcs_put_section_with_items(a1, a2, CStringFromCFStringSafely, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (*buf)
  {
    free(*buf);
  }

  return v25;
}

uint64_t MMCSGetItemsWithSection(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, int64_t a8, uint64_t *a9, uint64_t a10, char *a11, char *a12, CFErrorRef *a13)
{
  v62 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get section");
    v21 = mmcs_logging_logger_default(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a13)
  {
    *a13 = 0;
  }

  v60 = 0;
  *buf = 0;
  if (!a2 || !a3 || !a9 || !a1 || !a10)
  {
    v22 = @"Missing required parameters.";
    v23 = 40;
    goto LABEL_16;
  }

  if (*(a1 + 120))
  {
    v22 = @"Engine is already closed.";
    v23 = 26;
LABEL_16:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v23, v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    Mutable = 0;
    v29 = 0;
    goto LABEL_17;
  }

  v31 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a5);
  v29 = MutableCopy;
  if (!MutableCopy)
  {
    v46 = @"Failed to alloc mutableRequestOptions.";
    v47 = 36;
    goto LABEL_58;
  }

  Value = CFDictionaryGetValue(MutableCopy, @"kMMCSRequestOptionItemOptions");
  if (!Value || (theArray = Value, v34 = CFGetTypeID(Value), v34 != CFArrayGetTypeID()))
  {
    v46 = @"Missing kMMCSRequestOptionItemOptions.";
LABEL_56:
    v47 = 40;
LABEL_58:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v47, v46);
    v25 = 0;
    v26 = 0;
LABEL_59:
    v27 = 0;
LABEL_60:
    Mutable = 0;
    goto LABEL_17;
  }

  if (CFArrayGetCount(theArray) != a8)
  {
    v46 = @"kMMCSRequestOptionItemOptions had wrong type.";
    goto LABEL_56;
  }

  Mutable = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v48 = @"Failed to alloc newItemOptionsArray.";
    v49 = 36;
LABEL_64:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v49, v48);
    v25 = 0;
LABEL_65:
    v26 = 0;
LABEL_73:
    v27 = 0;
LABEL_17:
    items = 0;
    *buf = error;
    if (!a13)
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

  v51 = a8;
  allocator = v31;
  if (a8 >= 1)
  {
    v35 = 0;
    while (1)
    {
      v53 = v35;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v35);
      if (!ValueAtIndex || (v37 = ValueAtIndex, v38 = CFGetTypeID(ValueAtIndex), v38 != CFDictionaryGetTypeID()))
      {
        v48 = @"kMMCSRequestOptionItemOptions element had wrong type.";
        v49 = 40;
        goto LABEL_64;
      }

      v25 = CFDictionaryCreateMutableCopy(allocator, 0, v37);
      if (!v25)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc mutableItemOptionsElementDictionary.");
        goto LABEL_65;
      }

      v26 = CFNumberCreate(allocator, kCFNumberSInt64Type, a11);
      if (!v26)
      {
        v50 = @"offsets type issue.";
        goto LABEL_72;
      }

      CFDictionarySetValue(v25, @"kMMCSRequestedFileOffset", v26);
      CFRelease(v26);
      v26 = CFNumberCreate(allocator, kCFNumberSInt64Type, a12);
      if (!v26)
      {
        v50 = @"lengths type issue.";
        goto LABEL_72;
      }

      CFDictionarySetValue(v25, @"kMMCSRequestedLengthAtFileOffset", v26);
      CFRelease(v26);
      v26 = mmcs_file_signature_to_cfdata(*(a10 + 8 * v35));
      if (!v26)
      {
        break;
      }

      CFDictionarySetValue(v25, @"kMMCSRequestedRangeSignature", v26);
      CFRelease(v26);
      CFArrayAppendValue(Mutable, v25);
      CFRelease(v25);
      ++v35;
      a12 += 8;
      a11 += 8;
      a8 = v51;
      if (v51 == v53 + 1)
      {
        goto LABEL_34;
      }
    }

    v50 = @"signatures issue.";
LABEL_72:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 40, v50);
    goto LABEL_73;
  }

LABEL_34:
  CFDictionarySetValue(v29, @"kMMCSRequestOptionItemOptions", Mutable);
  CFRelease(Mutable);
  v39 = a8;
  v26 = malloc_type_calloc(a8, 8uLL, 0x50040EE9192B6uLL);
  if (!v26)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc newTokens.");
    v25 = 0;
    goto LABEL_59;
  }

  v40 = malloc_type_calloc(v39, 8uLL, 0x50040EE9192B6uLL);
  v27 = v40;
  if (!v40)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc newSignatures.");
    v25 = 0;
    goto LABEL_60;
  }

  if (v39 >= 1)
  {
    v41 = v26;
    v42 = v40;
    v43 = v51;
    do
    {
      *v41++ = a7;
      *v42++ = a6;
      --v43;
    }

    while (v43);
  }

  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, &v60);
  items = mmcs_get_items(a1, a4, v29, a2, CStringFromCFStringSafely, v51, a9, v27, v26, buf);
  v25 = 0;
  Mutable = 0;
  error = *buf;
  if (!a13)
  {
    goto LABEL_40;
  }

LABEL_18:
  if (error)
  {
    *a13 = error;
    goto LABEL_42;
  }

LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

LABEL_42:
  *buf = 0;
  if (v60)
  {
    free(v60);
  }

  v60 = 0;
  if (v26)
  {
    free(v26);
  }

  if (v27)
  {
    free(v27);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return items;
}

uint64_t MMCSRegisterFileWithOptions(uint64_t a1, uint64_t a2, void **a3, void *a4, CFErrorRef *a5, const __CFDictionary *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"register file");
    v15 = mmcs_logging_logger_default(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  *buf = 0;
  theDict[1] = 0;
  v31 = 0;
  *&buf[8] = a2;
  theDict[0] = a6;
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
    if (!MMCSRegisterFilesWithOptions(a1, buf, 1u))
    {
      v23 = 0;
      *a5 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"engine argument is NULL", v16, v17, v18, v19, v20);
      goto LABEL_30;
    }

    if (!v31)
    {
      if (theDict[1] && (Value = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultError")) != 0)
      {
        v22 = Value;
        CFRetain(Value);
        v23 = 0;
        *a5 = v22;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v24 = MMCSRegisterFilesWithOptions(a1, buf, 1u);
    v23 = 0;
    if (!v24 || !v31)
    {
      goto LABEL_30;
    }
  }

  if (a3)
  {
    if (theDict[1])
    {
      v25 = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultSignature");
      if (v25)
      {
        *a3 = MMCSSignatureCreateWithData(v25);
      }
    }
  }

  if (a4)
  {
    if (theDict[1])
    {
      v26 = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultFileSize");
      if (v26)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v26, kCFNumberSInt64Type, &valuePtr))
        {
          *a4 = valuePtr;
        }
      }
    }
  }

  v23 = 1;
LABEL_30:
  if (theDict[1])
  {
    CFRelease(theDict[1]);
  }

  return v23;
}

uint64_t MMCSRegisterFilesWithOptions(uint64_t result, uint64_t a2, unsigned int a3)
{
  v72 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a3)
    {
      v3 = result;
      v60 = 0;
      v4 = *MEMORY[0x277CBECE8];
      v5 = a3;
      v6 = (a2 + 32);
      v7 = MEMORY[0x277CBF138];
      v8 = MEMORY[0x277CBF150];
      v9 = a3;
      alloc = *MEMORY[0x277CBECE8];
      do
      {
        Mutable = CFDictionaryCreateMutable(v4, 0, v7, v8);
        *v6 = 0;
        *(v6 - 1) = Mutable;
        if (*(v3 + 120))
        {
          v16 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 26, @"The engine is closed", v10, v11, v12, v13, v14);
          if (v16)
          {
            v18 = v16;
            CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultError", v16);
            CFRelease(v18);
          }
        }

        else
        {
          v19 = v8;
          v20 = v7;
          v66 = 0;
          v21 = *(v6 - 2);
          if (v21)
          {
            v22 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v21, @"kMMCSRegisterFileOptionPublic", 0) == 0;
            BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(*(v6 - 2), @"kMMCSRegisterFileOptionChunk", 0);
          }

          else
          {
            BOOLean_from_cfdictionary_object_for_key = 0;
            v22 = 1;
          }

          v64 = 0;
          v65 = 0;
          v63 = 0;
          v24 = *(v3 + 152);
          v25 = mmcs_engine_owner(v3);
          ItemReaderWriterForItem = MMCSEngineClientContextGetItemReaderWriterForItem(v24, v25, 0, *(v6 - 3), 1, &v64, &v66);
          v27 = v64;
          if (ItemReaderWriterForItem && v64)
          {
            if (MMCSItemReaderWriterOpen(v64, &v66))
            {
              *v6 = mmcs_compute_signature_and_register_item_with_item_reader_writer(*(v3 + 16), *(v6 - 3), v64, v22, BOOLean_from_cfdictionary_object_for_key, 0, &v65, &v63, 0, 0, &v66);
              if (!MMCSItemReaderWriterClose(v64, &v66))
              {
                if (v66)
                {
                  v28 = mmcs_cferror_copy_description(v66);
                  v30 = mmcs_logging_logger_default(v28, v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v31 = @"(none)";
                    if (v28)
                    {
                      v31 = v28;
                    }

                    v32 = CFStringCreateWithFormat(alloc, 0, @"Closing itemReaderWriter failed with error %@", v31);
                    v34 = mmcs_logging_logger_default(v32, v33);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      *&buf[4] = v32;
                      _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                    }

                    if (v32)
                    {
                      CFRelease(v32);
                    }
                  }

                  if (v28)
                  {
                    CFRelease(v28);
                  }
                }
              }
            }

            v27 = v64;
          }

          v7 = v20;
          if (v27)
          {
            C3BaseRelease(v27);
          }

          v64 = 0;
          v8 = v19;
          if (*v6)
          {
            v35 = CKFileDigestResultsFileSignature();
            v36 = MMCSSignatureCopyData(v35);
            v4 = alloc;
            if (v36)
            {
              v37 = v36;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultSignature", v36);
              CFRelease(v37);
            }

            *buf = CKFileDigestResultsFileLength();
            v38 = CFNumberCreate(alloc, kCFNumberSInt64Type, buf);
            if (v38)
            {
              v39 = v38;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultFileSize", v38);
              CFRelease(v39);
            }

            valuePtr = v63;
            v40 = CFNumberCreate(alloc, kCFNumberSInt32Type, &valuePtr);
            if (v40)
            {
              v41 = v40;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultChunkCount", v40);
              CFRelease(v41);
            }

            v42 = *v6 == 0;
            v60 = 1;
          }

          else
          {
            v42 = 1;
            v4 = alloc;
          }

          v43 = v66;
          if (v42 && v66)
          {
            CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultError", v66);
            v43 = v66;
          }

          if (v43)
          {
            CFRelease(v43);
          }

          v66 = 0;
          if (v65)
          {
            C3BaseRelease(v65);
          }
        }

        v6 += 40;
        --v9;
      }

      while (v9);
      if (v60)
      {
        mmcs_engine_force_commit(v3);
      }

      v44 = a2 + 24;
      do
      {
        Value = *v44;
        if (!*(v44 + 8))
        {
          if (Value && (Value = CFDictionaryGetValue(Value, @"kMMCSRegisterFileResultError")) != 0)
          {
            Value = mmcs_cferror_copy_description(Value);
            v53 = Value;
          }

          else
          {
            v53 = 0;
          }

          v56 = mmcs_logging_logger_default(Value, v17);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = *(v44 - 16);
            if (v53)
            {
              v58 = v53;
            }

            else
            {
              v58 = @"(no error specified)";
            }

            *buf = 134218242;
            *&buf[4] = v57;
            v68 = 2114;
            v69 = v58;
            _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_DEFAULT, "Failed to register item %lld in chunk store: %{public}@.", buf, 0x16u);
          }

          if (v53)
          {
            CFRelease(v53);
          }

          goto LABEL_68;
        }

        if (Value)
        {
          v46 = CFDictionaryGetValue(Value, @"kMMCSRegisterFileResultSignature");
          Value = *v44;
          if (*v44)
          {
            Value = CFDictionaryGetValue(Value, @"kMMCSRegisterFileResultChunkCount");
            if (Value)
            {
              v47 = Value;
              v48 = mmcs_logging_logger_default(Value, v17);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v49 = *(v44 - 16);
                *buf = 134218498;
                *&buf[4] = v49;
                v68 = 2114;
                v69 = v46;
                v70 = 2114;
                v71 = v47;
                v50 = v48;
                v51 = "Committed newly registered item %lld as %{public}@ to chunk store with %{public}@ chunks.";
                v52 = 32;
LABEL_59:
                _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_INFO, v51, buf, v52);
                goto LABEL_68;
              }

              goto LABEL_68;
            }
          }
        }

        else
        {
          v46 = 0;
        }

        v54 = mmcs_logging_logger_default(Value, v17);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = *(v44 - 16);
          *buf = 134218242;
          *&buf[4] = v55;
          v68 = 2114;
          v69 = v46;
          v50 = v54;
          v51 = "Committed newly registered item %lld as %{public}@ to chunk store.";
          v52 = 22;
          goto LABEL_59;
        }

LABEL_68:
        v44 += 40;
        --v5;
      }

      while (v5);
    }

    return 1;
  }

  return result;
}

void *MMCSSignatureCreateWithData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!mmcs_file_signature_is_valid_n(BytePtr, Length))
  {
    return 0;
  }

  v4 = CFDataGetBytePtr(a1);

  return mmcs_file_signature_copy(v4);
}

CFDataRef MMCSSignatureCopyData(const UInt8 *a1)
{
  if (!mmcs_file_signature_is_valid(a1))
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = mmcs_file_signature_size_with_scheme(a1);

  return CFDataCreate(v2, a1, v3);
}

uint64_t MMCSDuplicateRegisteredfile(uint64_t a1, const __CFString *a2, const void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = CKGetRegisteredFileMetadata();
  if (v6 && (v6 = CKRegisterFile(), (v6 & 1) != 0))
  {
    v8 = CKGetRegisteredChunksForItemID();
    if (v8)
    {
      v10 = 0;
      while (1)
      {
        CKRegisteredChunkSignature();
        CKRegisteredChunkKey();
        v8 = CKCreateRegisteredChunk();
        if (!v8)
        {
          break;
        }

        v11 = v8;
        CKRegisteredChunkSetItemID();
        CKRegisteredChunkLength();
        CKRegisteredChunkSetLength();
        CKRegisteredChunkOffset();
        CKRegisteredChunkSetOffset();
        v12 = CKRegisterTemporaryChunk();
        free(v11);
        if (!v12)
        {
          break;
        }

        CKRegisteredChunkSize();
        if (++v10 >= 0x4E20)
        {
          v13 = CKConvertTemporaryChunks();
          goto LABEL_16;
        }
      }
    }

    v16 = mmcs_logging_logger_default(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = a2;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "MMCSDuplicateRegisteredfile failed to get chunk list for itemID %lld", buf, 0xCu);
    }

    v13 = 0;
LABEL_16:
    mmcs_engine_copy_cached_ranged_items(a1, a2, a3);
    if (v13)
    {
      v18 = mmcs_logging_logger_default(0, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MMCSDuplicateRegisteredfile copied id %llu to %llu", a2, a3);
        v21 = mmcs_logging_logger_default(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v23 = v19;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }
    }
  }

  else
  {
    v14 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = a2;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "Unable to duplicate itemID %lld", buf, 0xCu);
    }

    return 0;
  }

  return v13;
}

uint64_t MMCSRegisterFiles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = malloc_type_calloc(1uLL, 40 * a3, 0x10600401EFA0F88uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = a3;
  v9 = (a2 + 16);
  v10 = v6 + 2;
  v11 = a3;
  do
  {
    v12 = *(v9 - 2);
    *(v10 - 2) = 0;
    *(v10 - 1) = v12;
    *v10 = 0;
    v10[1] = 0;
    v10 += 5;
    *(v9 - 8) = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v9 += 5;
    --v11;
  }

  while (v11);
  v13 = MMCSRegisterFilesWithOptions(a1, v6, a3);
  if (v13)
  {
    v14 = (a2 + 32);
    v15 = (v7 + 24);
    do
    {
      *(v14 - 24) = *(v15 + 8);
      if (*v15)
      {
        Value = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultSignature");
        if (Value)
        {
          *(v14 - 2) = MMCSSignatureCreateWithData(Value);
        }

        v17 = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultFileSize");
        if (v17)
        {
          valuePtr = 0;
          if (CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr))
          {
            *(v14 - 1) = valuePtr;
          }
        }

        v18 = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultError");
        if (v18)
        {
          v19 = v18;
          CFRetain(v18);
          *v14 = v19;
        }

        if (*v15)
        {
          CFRelease(*v15);
        }

        *v15 = 0;
      }

      v14 += 5;
      v15 += 5;
      --v8;
    }

    while (v8);
  }

  free(v7);
  return v13;
}

void MMCSRegisterItems(_BYTE *a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(uint64_t, CFDictionaryRef))
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"register items");
    v11 = mmcs_logging_logger_default(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", &v15, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (a1 && a3)
  {
    if (!a1[120])
    {
      mmcs_register_items(a1, a2, a3, a4);
      return;
    }

    v12 = @"Engine is already closed.";
    v13 = 26;
  }

  else
  {
    v12 = @"Missing required parameters.";
    v13 = 40;
  }

  error = mmcs_cferror_create_error(@"com.apple.mmcs", v13, v12);
  mmcs_register_request_abort(a2, error, a4);
  if (error)
  {
    CFRelease(error);
  }
}

void MMCSUnregisterFiles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 120) && *(a1 + 16))
  {
    mmcs_library_init();
    alloc = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (a3)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(a2 + v7);
        cf = 0;
        v31 = 0;
        v9 = mmcs_engine_file_path(a1, "tmpm", v8, &v31, &cf);
        if (v9)
        {
          break;
        }

        v24 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v21 = CFStringCreateWithFormat(alloc, 0, @"Unable to create path for item %lld %@", v8, cf);
          v23 = mmcs_logging_logger_default(v21, v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

LABEL_24:
        if (v31)
        {
          free(v31);
        }

        v31 = 0;
        if (v7)
        {
          CFStringAppendFormat(Mutable, 0, @", %llu", v8);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%llu", v8);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        CKUnregisterFile();
        mmcs_engine_clear_cached_ranged_items(a1, v8);
        v7 += 8;
        if (8 * a3 == v7)
        {
          goto LABEL_32;
        }
      }

      if (gMMCS_DebugLevel >= 5)
      {
        v11 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = CFStringCreateWithFormat(alloc, 0, @"Deleting temporary file at path %s for item %lld", v31, v8);
          v14 = mmcs_logging_logger_default(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v33 = v12;
            _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v12)
          {
            CFRelease(v12);
          }
        }
      }

      if (!unlink(v31))
      {
        goto LABEL_24;
      }

      v15 = *__error();
      v16 = __error();
      if (*v16 == 2)
      {
        goto LABEL_24;
      }

      v18 = mmcs_logging_logger_default(v16, v17);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v19 = v31;
      v20 = strerror(v15);
      v21 = CFStringCreateWithFormat(alloc, 0, @"Deleting temporary file at path %s for item %lld failed :%s(%d)", v19, v8, v20, v15);
      v23 = mmcs_logging_logger_default(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        *buf = 138543362;
        v33 = v21;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_22:
      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_24;
    }

LABEL_32:
    v26 = mmcs_engine_force_commit(a1);
    v28 = mmcs_logging_logger_default(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v33 = Mutable;
      _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_INFO, "Committed unregister of items with itemIDs (%{public}@)", buf, 0xCu);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t MMCSRegisteredItemCount(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 120))
    {
      return 0;
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        return CKRegisteredItemCount();
      }
    }
  }

  return result;
}