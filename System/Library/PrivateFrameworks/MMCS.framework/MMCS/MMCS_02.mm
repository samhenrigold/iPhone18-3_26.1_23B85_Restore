void __handle_response_authorizeGetForChunks_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  cf = 0;
  req_schedule_new_containers = mmcs_get_req_schedule_new_containers(*(a1 + 32), &cf);
  if (req_schedule_new_containers == -1)
  {
    v4 = mmcs_logging_logger_default(req_schedule_new_containers, v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v6 = MEMORY[0x277CBECE8];
    if (v5)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to schedule new containers");
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    mmcs_proxy_locator_finish(*(*(a1 + 32) + 192));
    v15 = cf;
    if (!cf)
    {
      v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed handle_response_authorizeGetForChunks", v10, v11, v12, v13, v14);
      cf = v15;
    }

    mmcs_get_req_context_cleanup(*(a1 + 32), v15);
    v18 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = CFStringCreateWithFormat(*v6, 0, @"cleaned up get request because containers failed to schedule. mrc: %p", *(a1 + 32));
      v21 = mmcs_logging_logger_default(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_get_req_schedule_new_containers(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (*(a1 + 144))
    {
      v3 = *(a1 + 152);
      *a2 = v3;
      CFRetain(v3);
      return 0xFFFFFFFFLL;
    }
  }

  else if (*(a1 + 144))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(a1 + 304) + 112);
  if (v5)
  {
    mmcs_get_file_omit_containers_not_needed(v5, 0);
  }

  scheduleGetChunkAndDerivativeContainers(a1);
  return 0;
}

uint64_t file_groups_message_file_count(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x277CBECE8];
  do
  {
    v6 = *(*(v2 + 32) + 8 * v3);
    if (!*(v6 + 40))
    {
      v7 = mmcs_logging_logger_default(a1, a2);
      a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v8 = CFStringCreateWithFormat(v5, 0, @"No files to download");
        v10 = mmcs_logging_logger_default(v8, v9);
        a1 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (a1)
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }

    if (!*(v6 + 24))
    {
      v11 = mmcs_logging_logger_default(a1, a2);
      a1 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v12 = CFStringCreateWithFormat(v5, 0, @"No containers to download");
        v14 = mmcs_logging_logger_default(v12, v13);
        a1 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (a1)
        {
          *buf = 138543362;
          v17 = v12;
          _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    v4 += *(v6 + 40);
    ++v3;
  }

  while (v3 < *(v2 + 24));
  return v4;
}

uint64_t mmcs_get_req_process_another_file_groups_message(uint64_t a1, __CFSet *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v5 = a3;
  v144 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (*(a3 + 24))
  {
    v8 = a4;
    v9 = 0;
    do
    {
      v10 = 1;
      if (!mmcs_get_state_process_file_list(*(*(a1 + 304) + 112), *(*(v5 + 32) + 8 * v9), v8, 1, &cf))
      {
        v90 = 0;
        goto LABEL_114;
      }

      ++v9;
    }

    while (v9 < *(v5 + 24));
  }

  if (*(v5 + 80))
  {
    if (mmcs_get_req_get_opaque_clone_context(a1))
    {
      mmcs_get_req_process_another_file_groups_message_cold_1();
    }

    Data = ProtobufCBinaryData_CreateData((v5 + 88));
    mmcs_get_req_set_opaque_clone_context(a1, Data);
    CFRelease(Data);
  }

  v115 = a1;
  theSet = a2;
  v113 = v5;
  cf = 0;
  if (*(v5 + 40))
  {
    v12 = 0;
    v13 = *MEMORY[0x277CBECE8];
    v14 = @"apple.mme";
    while (1)
    {
      v15 = *(*(v5 + 48) + 8 * v12);
      is_valid_n = mmcs_file_signature_is_valid_n(*(v15 + 32), *(v15 + 24));
      if (!is_valid_n)
      {
        v91 = mmcs_logging_logger_default(is_valid_n, v17);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v97 = CFStringCreateWithFormat(v13, 0, @"Invalid file signature in FileGroup FileError file_checksum");
          v99 = mmcs_logging_logger_default(v97, v98);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            LODWORD(value) = 138543362;
            *(&value + 4) = v97;
            _os_log_impl(&dword_2577D8000, v99, OS_LOG_TYPE_ERROR, "%{public}@", &value, 0xCu);
          }

          if (v97)
          {
            CFRelease(v97);
          }
        }

        v90 = 0;
        cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid file signature in FileGroup FileError file_checksum", v92, v93, v94, v95, v96);
        v10 = 1;
        goto LABEL_114;
      }

      v18 = mmcs_file_signature_to_hexstring(*(v15 + 32));
      v19 = *(v15 + 40);
      v20 = CFStringCreateWithCString(v13, *(v19 + 24), 0x8000100u);
      v21 = *(v19 + 32);
      v22 = CFEqual(v20, v14);
      v26 = v21 == 1 || v21 == 6;
      v27 = 16;
      if (!v26)
      {
        v27 = 8;
      }

      if (v22)
      {
        v28 = v27;
      }

      else
      {
        v28 = 8;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, v28, v19, @"The server returned an error for signature %s", v23, v24, v25, v18);
      if (*(v15 + 48))
      {
        v30 = ProtobufCBinaryData_CreateData((v15 + 56));
      }

      else
      {
        v30 = 0;
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      value = 0u;
      v119 = 0u;
      *&value = *(v15 + 32);
      *&v121 = v30;
      v31 = CFSetGetValue(*(*(v115 + 304) + 80), &value);
      v33 = v31;
      if (v30)
      {
        CFRelease(v30);
      }

      if (v33)
      {
        break;
      }

      v42 = mmcs_logging_logger_default(v31, v32);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v34 = CFStringCreateWithFormat(v13, 0, @"Server referenced an item in FileGroup FileError with signature %s which is not in itemsWithDistinctSignatures. This FileError will be ignored.", v18);
        v44 = mmcs_logging_logger_default(v34, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v34;
          _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        goto LABEL_40;
      }

LABEL_42:
      if (v18)
      {
        free(v18);
      }

      if (error_with_error_response_and_format)
      {
        CFRelease(error_with_error_response_and_format);
      }

      if (++v12 >= *(v5 + 40))
      {
        goto LABEL_47;
      }
    }

    if (CFSetContainsValue(theSet, v33))
    {
      CFSetRemoveValue(theSet, v33);
      v34 = mmcs_item_copy_description(v33);
      v36 = mmcs_logging_logger_default(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v38 = v14;
        v39 = CFStringCreateWithFormat(v13, 0, @"Server returned error for item %@ %@", v34, error_with_error_response_and_format);
        v41 = mmcs_logging_logger_default(v39, v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v39;
          _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v14 = v38;
        if (v39)
        {
          CFRelease(v39);
        }
      }

      mmcs_get_item_progress_make_done_error(error_with_error_response_and_format, v37, buf);
      mmcs_get_request_set_progress_and_notify_items_like_item(v115, v33, buf);
      v5 = v113;
    }

    else
    {
      v34 = mmcs_item_copy_description(v33);
      v46 = mmcs_logging_logger_default(v34, v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = CFStringCreateWithFormat(v13, 0, @"Server returned file error %@ for item %@ which has already been handled. The error wil be ignored and no additional notification will be sent to client.", error_with_error_response_and_format, v34);
        v49 = mmcs_logging_logger_default(v47, v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v47;
          _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v5 = v113;
        if (v47)
        {
          CFRelease(v47);
        }
      }
    }

LABEL_40:
    if (v34)
    {
      CFRelease(v34);
    }

    goto LABEL_42;
  }

LABEL_47:
  cf = 0;
  if (!*(v5 + 56))
  {
LABEL_99:
    v10 = 0;
    goto LABEL_113;
  }

  v50 = 0;
  v51 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v52 = *(*(v5 + 64) + 8 * v50);
    v53 = mmcs_file_signature_is_valid_n(*(v52 + 32), *(v52 + 24));
    if (!v53)
    {
      break;
    }

    v114 = v50;
    v55 = mmcs_file_signature_to_hexstring(*(v52 + 32));
    Mutable = CFArrayCreateMutable(v51, 0, MEMORY[0x277CBF128]);
    if (*(v52 + 40))
    {
      v57 = 0;
      do
      {
        v58 = *(*(v52 + 48) + 8 * v57);
        if (mmcs_chunk_signature_is_valid_n(*(v58 + 32), *(v58 + 24)))
        {
          v59 = mmcs_chunk_signature_to_hexstring(*(v58 + 32));
        }

        else
        {
          v59 = strdup("(invalid chunk signature)");
        }

        v63 = v59;
        v64 = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 8, *(v58 + 40), @"The server returned an error for chunk %s file signature %s", v60, v61, v62, v59, v55);
        v66 = mmcs_logging_logger_default(v64, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = CFStringCreateWithFormat(v51, 0, @"The server returned an error for chunk %s at index %u for an item with signature %s:%@", v63, *(v58 + 48), v55, v64);
          v69 = mmcs_logging_logger_default(v67, v68);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(value) = 138543362;
            *(&value + 4) = v67;
            _os_log_impl(&dword_2577D8000, v69, OS_LOG_TYPE_DEBUG, "%{public}@", &value, 0xCu);
          }

          if (v67)
          {
            CFRelease(v67);
          }
        }

        CFArrayAppendValue(Mutable, v64);
        if (v64)
        {
          CFRelease(v64);
        }

        if (v63)
        {
          free(v63);
        }

        ++v57;
      }

      while (v57 < *(v52 + 40));
    }

    if (CFArrayGetCount(Mutable) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
      CFRetain(ValueAtIndex);
    }

    else
    {
      ValueAtIndex = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 8, @"There were errors with the chunks in the file", Mutable, 0);
    }

    if (*(v52 + 56))
    {
      v71 = ProtobufCBinaryData_CreateData((v52 + 64));
    }

    else
    {
      v71 = 0;
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    value = 0u;
    v119 = 0u;
    *&value = *(v52 + 32);
    *&v121 = v71;
    v72 = CFSetGetValue(*(*(v115 + 304) + 80), &value);
    if (v72)
    {
      v74 = v72;
      if (CFSetContainsValue(theSet, v72))
      {
        CFSetRemoveValue(theSet, v74);
        v75 = mmcs_item_copy_description(v74);
        v77 = mmcs_logging_logger_default(v75, v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          v79 = CFStringCreateWithFormat(v51, 0, @"Server returned error for item %@ %@", v75, ValueAtIndex);
          v81 = mmcs_logging_logger_default(v79, v80);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v79;
            _os_log_impl(&dword_2577D8000, v81, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v79)
          {
            CFRelease(v79);
          }
        }

        mmcs_get_item_progress_make_done_error(ValueAtIndex, v78, buf);
        mmcs_get_request_set_progress_and_notify_items_like_item(v115, v74, buf);
      }

      else
      {
        v75 = mmcs_item_copy_description(v74);
        v86 = mmcs_logging_logger_default(v75, v85);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = CFStringCreateWithFormat(v51, 0, @"Server returned file chunk error %@ for item %@ which has already been handled. Suppressing notification to client since it is likely already sent.", ValueAtIndex, v75);
          v89 = mmcs_logging_logger_default(v87, v88);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v87;
            _os_log_impl(&dword_2577D8000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v87)
          {
            CFRelease(v87);
          }
        }
      }

      v5 = v113;
LABEL_88:
      if (v75)
      {
        CFRelease(v75);
      }

      goto LABEL_90;
    }

    v82 = mmcs_logging_logger_default(0, v73);
    v5 = v113;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v75 = CFStringCreateWithFormat(v51, 0, @"Server referenced an item in FileGroup FileChunkError with signature %s which is not in itemsWithDistinctSignatures. This FileChunkError will be ignored.", v55);
      v84 = mmcs_logging_logger_default(v75, v83);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v75;
        _os_log_impl(&dword_2577D8000, v84, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

LABEL_90:
    if (v71)
    {
      CFRelease(v71);
    }

    if (v55)
    {
      free(v55);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

    v50 = v114 + 1;
    if ((v114 + 1) >= *(v5 + 56))
    {
      goto LABEL_99;
    }
  }

  v100 = mmcs_logging_logger_default(v53, v54);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    v106 = CFStringCreateWithFormat(v51, 0, @"Invalid file signature in FileGroup FileChunkError file_checksum");
    v108 = mmcs_logging_logger_default(v106, v107);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      LODWORD(value) = 138543362;
      *(&value + 4) = v106;
      _os_log_impl(&dword_2577D8000, v108, OS_LOG_TYPE_ERROR, "%{public}@", &value, 0xCu);
    }

    if (v106)
    {
      CFRelease(v106);
    }
  }

  cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid file signature in FileGroup FileChunkError file_checksum", v101, v102, v103, v104, v105);
  v10 = 1;
LABEL_113:
  v90 = v10 ^ 1u;
LABEL_114:
  v109 = cf;
  if (a5 && v10 && cf)
  {
    CFRetain(cf);
    v109 = cf;
    *a5 = cf;
  }

  if (v109)
  {
    CFRelease(v109);
  }

  return v90;
}

void scheduleGetContainers(void *a1, const __CFArray *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, a2);
  os_activity_scope_enter(request_activity_marker, &state);
  ++*(a1[38] + 32);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      v10 = ValueAtIndex;
      v11 = ValueAtIndex + 3;
      if (ValueAtIndex[3])
      {
        if (gMMCS_DebugLevel >= 4)
        {
          v12 = mmcs_logging_logger_default(ValueAtIndex, v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = CFStringCreateWithFormat(alloc, 0, @"using proxy transaction for container %s", *(*(v10 + 88) + 16));
            v15 = mmcs_logging_logger_default(v13, v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v13;
              _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
            }

            if (v13)
            {
              CFRelease(v13);
            }
          }
        }

        v16 = 2;
      }

      else
      {
        v11 = ValueAtIndex + 2;
        v16 = 3;
      }

      v17 = *v11;
      *(v10 + 68) = v16;
      if (*(v17 + 48) == 1)
      {
        if (*(v10 + 64) == 2 && !mmcs_get_container_is_needed(v10))
        {
          *(v17 + 48) = 4;
          *(*(v10 + 16) + 48) = 4;
          *(v10 + 68) = 4;
        }

        else
        {
          v18 = mmcs_http_request_options_network_behavior_type(*(*(v17 + 24) + 24), v9);
          v19 = mmcs_request_type_for_behavior_and_activity(v18, 1);
          mmcs_container_requirements(v10);
          *&buf = 0;
          *(&buf + 1) = v17;
          v20 = a1[11];
          v25 = v19;
          v26 = v20;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v27 = 0u;
          v28 = 0u;
          v33 = mmcs_container_schedule_request_callback;
          v34 = mmcs_container_cancel_request_callback;
          v35 = C3BaseRetain;
          v36 = C3BaseRelease;
          *(v17 + 48) = 2;
          Current = CFAbsoluteTimeGetCurrent();
          *(v17 + 56) = Current;
          mmcs_request_queue_enqueue_request(*(a1[4] + 48), &buf, Current);
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  mmcs_proxy_locator_finish(a1[24]);
  --*(a1[38] + 32);
  os_activity_scope_leave(&state);
}

void _mmcs_item_setup_metadata_only(void *a1)
{
  if (mmcs_item_is_metadata_only(a1))
  {
    mmcs_item_setup_chunk_references(a1);
    mmcs_item_setup_item_size(a1);

    mmcs_item_setup_item_padded_size(a1);
  }
}

void __send_request_downloadFord_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    scheduleGetContainers(v2, *(v3 + 56));
  }

  else
  {
    mmcs_proxy_locator_finish(v2[24]);
  }

  has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(*(a1 + 40));
  if (!has_outstanding_asynchronous_work)
  {
    v6 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_INFO, "Downloads complete. All done!", buf, 2u);
    }

    mmcs_get_req_context_cleanup(*(a1 + 40), 0);
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cleaned up get request because no outstanding work left. mrc: %p", *(a1 + 40));
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

void mmcs_get_req_context_will_retry_auth_get_file_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(a2);
    v7 = mmcs_cferror_copy_description(a3);
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry auth get file after error %@", v6, v7);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void handle_response_authorizeGetForFiles(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  mmcs_http_context_uuid_hash_code(a1);
  kdebug_trace();
  if (!mmcs_http_context_is_connection_reused(a1))
  {
    kdebug_trace();
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a3, v6);
  os_activity_scope_enter(request_activity_marker, &state);
  v9 = mmcs_http_context_status_succeeded(a1, v8);
  if (!a2 || !v9 || !*a2)
  {
    error = mmcs_http_context_get_error(a1);
    mmcs_get_req_context_cleanup(a3, error);
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  mmcs_http_context_validate_request_uuid_with_response(a1, v10);
  *(a3 + 120) = mmcs_get_proto_version(a1);
  *(a3 + 128) = v11;
  http_clock_skew_metrics_with_http_context = mmcs_create_http_clock_skew_metrics_with_http_context(a1);
  if (http_clock_skew_metrics_with_http_context)
  {
    v13 = http_clock_skew_metrics_with_http_context;
    mmcs_request_set_http_clock_skew_metrics(a3, http_clock_skew_metrics_with_http_context);
    CFRelease(v13);
  }

  mmcs_http_context_cleanup_response(a1);
  v14 = mmcs_server_version_compare(*(a3 + 120), *(a3 + 128), 5, 0);
  v16 = mmcs_logging_logger_default(v14, v15);
  if (v14 == -1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", *(a3 + 120), *(a3 + 128), 5, 0, state.opaque[0], state.opaque[1]);
      v39 = mmcs_logging_logger_default(v37, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v37;
        _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v37)
      {
        CFRelease(v37);
      }
    }

    v40 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", v32, v33, v34, v35, v36, *(a3 + 120), *(a3 + 128), 5, 0);
    mmcs_get_req_context_cleanup(a3, v40);
    if (!v40)
    {
      goto LABEL_27;
    }

    v41 = v40;
LABEL_35:
    CFRelease(v41);
    goto LABEL_27;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v23 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(*a2);
    v25 = CFStringCreateWithFormat(v23, 0, @"Got %ld bytes", Length);
    v27 = mmcs_logging_logger_default(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (*(a3 + 249))
  {
    v28 = *a2;
    if (*a2)
    {
      v29 = *(a3 + 256);
      if (v29 != v28)
      {
        if (v29)
        {
          CFRelease(v29);
        }

        *(a3 + 256) = 0;
        CFRetain(v28);
        *(a3 + 256) = v28;
      }
    }
  }

  if (*(a3 + 248))
  {
    authorization_error_with_format = mmcs_cferror_create_authorization_error_with_format(*a2, @"Successfully get fetched authorization", v17, v18, v19, v20, v21, v22);
    mmcs_get_req_context_cleanup(a3, authorization_error_with_format);
    if (authorization_error_with_format)
    {
      CFRelease(authorization_error_with_format);
    }

LABEL_24:
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    goto LABEL_27;
  }

  *buf = 0;
  v47 = process_authorization_data(a3, *a2, buf);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  if (!v47)
  {
    v48 = *buf;
    if (!*buf)
    {
      v48 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to download chunks", v42, v43, v44, v45, v46);
      *buf = v48;
    }

    mmcs_get_req_context_cleanup(a3, v48);
    v41 = *buf;
    if (*buf)
    {
      goto LABEL_35;
    }
  }

LABEL_27:
  os_activity_scope_leave(&state);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void XCFRunLoopAddTimerToModes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v4[0] = a1;
  v4[1] = a2;
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayApplyFunction(theArray, v5, _XCFRunLoopAddTimerToModesApplier, v4);
}

void XCFRunLoopAddSourceToModes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v4[0] = a1;
  v4[1] = a2;
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayApplyFunction(theArray, v5, _XCFRunLoopAddSourceToModesApplier, v4);
}

void *mmcs_get_complete_create_method_completion_info(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v30 = *MEMORY[0x277D85DE8];
  request = mmcs_get_container_get_request(a1);
  MethodCompletionInfo = Create_MethodCompletionInfo(a1[5], *(*(a1[2] + 24) + 16), *(a2 + 16), *(a1[11] + 24), v5, 0, v4);
  if (MethodCompletionInfo)
  {
    vendor_http_stats = mmcs_report_create_vendor_http_stats(*(a2 + 16), 0, v5);
    reporting_level = mmcs_request_get_reporting_level(request);
    if (mmcs_report_want_report(0, reporting_level))
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (request)
        {
          v14 = *(*(request + 304) + 128);
          if (v14)
          {
            v15 = mmcs_http_context_elapsed_seconds(v14);
            MillisStringFromAbsoluteTime = createMillisStringFromAbsoluteTime(v15);
            if (MillisStringFromAbsoluteTime)
            {
              v17 = MillisStringFromAbsoluteTime;
              CFDictionaryAddValue(Mutable, @"authorizeGetForFiles.millis", MillisStringFromAbsoluteTime);
              CFRelease(v17);
            }
          }
        }

        if (mmcs_transaction_is_proxy(a2))
        {
          CFDictionaryAddValue(Mutable, @"cachingServer.used", @"true");
          bytes_from_caching_server = mmcs_transaction_get_bytes_from_caching_server(a2);
          if (bytes_from_caching_server)
          {
            v19 = bytes_from_caching_server;
            v20 = CFStringCreateWithFormat(v12, 0, @"%llu", bytes_from_caching_server);
            if (v20)
            {
              v22 = v20;
              CFDictionaryAddValue(Mutable, @"cachingServer.bytes", v20);
              CFRelease(v22);
            }

            if (gMMCS_DebugLevel >= 5)
            {
              v23 = mmcs_logging_logger_default(v20, v21);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = CFStringCreateWithFormat(v12, 0, @"proxy get got %llu from caching server", v19);
                v26 = mmcs_logging_logger_default(v24, v25);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v29 = v24;
                  _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
                }

                if (v24)
                {
                  CFRelease(v24);
                }
              }
            }
          }
        }

        else
        {
          CFDictionaryAddValue(Mutable, @"cachingServer.used", @"false");
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    MethodCompletionInfo_SetReportingProperties(MethodCompletionInfo, vendor_http_stats, Mutable);
    if (vendor_http_stats)
    {
      CFRelease(vendor_http_stats);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return MethodCompletionInfo;
}

uint64_t mmcs_perform_getComplete(uint64_t a1, uint64_t a2)
{
  v119 = *MEMORY[0x277D85DE8];
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, a2);
  v4 = _os_activity_create(&dword_2577D8000, "mmcs-get-complete", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  if (*(a1 + 144) || (v7 = *(a1 + 32), CFSetGetCount(*(*(a1 + 304) + 80)) < 1) || (v8 = *MEMORY[0x277CBECE8], (v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a1 + 160), @"getComplete", 0)) == 0))
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_3:
    os_release(v4);
    goto LABEL_4;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (!v11)
  {
LABEL_50:
    v5 = 0;
    goto LABEL_51;
  }

  v12 = v11;
  chunkserver__method_completion_info_list__init(v11);
  *(v12 + 3) = 0;
  v13 = mmcs_get_req_context_get_get_state(a1);
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13;
  v94 = v7;
  Count = CFArrayGetCount(*(v13 + 40));
  if (Count < 1)
  {
    goto LABEL_48;
  }

  v16 = Count;
  v95 = v10;
  v17 = 0;
  for (i = 0; i != v16; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 40), i);
    v20 = ValueAtIndex[16];
    if (v20 != 3)
    {
      v21 = ValueAtIndex;
      if (v20 != 2 || !*(*(ValueAtIndex + 11) + 32))
      {
        v22 = *(ValueAtIndex + 3);
        if (v22)
        {
          if (*(v22 + 16))
          {
            mmcs_perform_getComplete_cold_1();
          }

          v23 = *(v22 + 40);
          if (v23)
          {
            v17 += CFArrayGetCount(v23);
          }
        }

        v24 = *(v21 + 2);
        if (v24)
        {
          if (*(v24 + 16))
          {
            mmcs_perform_getComplete_cold_2();
          }

          v25 = *(v24 + 40);
          if (v25)
          {
            v17 += CFArrayGetCount(v25);
          }
        }

        if (*(v21 + 5))
        {
          ++v17;
        }
      }
    }
  }

  if (v17 <= 0)
  {
LABEL_48:
    *(v12 + 4) = 0;
    goto LABEL_49;
  }

  v26 = malloc_type_calloc(1uLL, 8 * v17, 0x2004093837F09uLL);
  *(v12 + 4) = v26;
  if (!v26)
  {
LABEL_49:
    chunkserver__method_completion_info_list__free_unpacked(v12, 0);
    goto LABEL_50;
  }

  method_completion_info = CFArrayGetCount(*(v14 + 40));
  if (method_completion_info < 1)
  {
    goto LABEL_54;
  }

  v29 = method_completion_info;
  v93 = 0;
  v30 = 0;
  v92 = method_completion_info - 1;
  do
  {
    while (1)
    {
      method_completion_info = CFArrayGetValueAtIndex(*(v14 + 40), v30);
      v31 = *(method_completion_info + 64);
      if (v31 == 3)
      {
        break;
      }

      v32 = method_completion_info;
      if (v31 == 2)
      {
        if (*(*(method_completion_info + 88) + 32))
        {
          break;
        }
      }

      v33 = *(method_completion_info + 24);
      if (v33)
      {
        if (*(v33 + 16))
        {
          mmcs_perform_getComplete_cold_3();
        }

        v34 = *(v33 + 40);
        if (v34)
        {
          v120.length = CFArrayGetCount(*(v33 + 40));
          v120.location = 0;
          CFArrayApplyFunction(v34, v120, _copy_methodCompletionInfoToList, v12);
        }
      }

      v35 = v32[2];
      if (v35)
      {
        if (*(v35 + 16))
        {
          mmcs_perform_getComplete_cold_4();
        }

        v36 = *(v35 + 40);
        if (v36)
        {
          v121.length = CFArrayGetCount(*(v35 + 40));
          v121.location = 0;
          CFArrayApplyFunction(v36, v121, _copy_methodCompletionInfoToList, v12);
        }
      }

      if (!v32[5])
      {
        break;
      }

      v37 = v32[2];
      reporting_level = mmcs_request_get_reporting_level(a1);
      method_completion_info = mmcs_get_complete_create_method_completion_info(v32, v37, reporting_level, 0);
      if (method_completion_info)
      {
        v40 = *(v12 + 3);
        v39 = *(v12 + 4);
        *(v12 + 3) = v40 + 1;
        *(v39 + 8 * v40) = method_completion_info;
        break;
      }

      v93 = 1;
      v41 = v92 == v30++;
      v10 = v95;
      if (v41)
      {
        goto LABEL_49;
      }
    }

    ++v30;
  }

  while (v29 != v30);
  v10 = v95;
  if (v93)
  {
    goto LABEL_49;
  }

LABEL_54:
  if (*(v12 + 3) != v17)
  {
    v57 = mmcs_logging_logger_default(method_completion_info, v28);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = CFStringCreateWithFormat(v8, 0, @"error MethodCompletionInfoList (getComplete) creating response list");
      v60 = mmcs_logging_logger_default(v58, v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v58;
        _os_log_impl(&dword_2577D8000, v60, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v58)
      {
        CFRelease(v58);
      }
    }

    goto LABEL_49;
  }

  packed_size = chunkserver__method_completion_info_list__get_packed_size(v12, v28);
  v43 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__method_completion_info_list__pack(v12, v43);
  v44 = XCFDataCreateWithBytesNoCopy(v8, v43, packed_size, *MEMORY[0x277CBECF0]);
  chunkserver__method_completion_info_list__free_unpacked(v12, 0);
  if (!v44)
  {
    goto LABEL_73;
  }

  v45 = v94[8];
  v46 = v94[10];
  dataclass = mmcs_request_get_dataclass(a1);
  http_protobuf_message = create_http_protobuf_message(v45, v46, dataclass, *(a1 + 168), *(a1 + 176), v95, v44);
  CFRelease(v44);
  if (!http_protobuf_message)
  {
    v61 = mmcs_logging_logger_default(v49, v50);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(v8, 0, @"unable to create getComplete msg");
      v63 = mmcs_logging_logger_default(v5, v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_2577D8000, v63, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      v10 = v95;
      if (!v5)
      {
        goto LABEL_51;
      }

      CFRelease(v5);
      goto LABEL_50;
    }

LABEL_73:
    v5 = 0;
    v10 = v95;
    goto LABEL_51;
  }

  mmcs_request_insert_headers(a1, http_protobuf_message);
  v51 = mmcs_request_get_dataclass(a1);
  if (CFStringCompare(v51, @"com.apple.Dataclass.Messenger", 1uLL) == kCFCompareEqualTo)
  {
    v52 = CFURLCopyHostName(*(a1 + 160));
    if (v52)
    {
      v53 = v52;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v52, @"-");
      if (ArrayBySeparatingStrings)
      {
        v55 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
        {
          v56 = CFArrayGetValueAtIndex(v55, 0);
          CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"x-apple-content-partition", v56);
        }

        CFRelease(v53);
      }

      else
      {
        v55 = v53;
      }

      CFRelease(v55);
    }
  }

  v64 = *(*(a1 + 56) + 56);
  if (v64)
  {
    v65 = CFLocaleCreate(v8, @"en_US");
    v66 = CFNumberFormatterCreate(v8, v65, kCFNumberFormatterDecimalStyle);
    StringWithNumber = CFNumberFormatterCreateStringWithNumber(v8, v66, v64);
    if (v66)
    {
      CFRelease(v66);
    }

    if (v65)
    {
      CFRelease(v65);
    }

    if (StringWithNumber)
    {
      v68 = StringWithNumber;
    }

    else
    {
      v68 = @"NULL";
    }

    CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"mmcs_network_service_type", v68);
    if (StringWithNumber)
    {
      CFRelease(StringWithNumber);
    }
  }

  else
  {
    CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"mmcs_network_service_type", @"NULL");
  }

  v71 = *(*(a1 + 304) + 112);
  if (!v71 || (v69 = CFArrayGetCount(*(v71 + 40))) == 0)
  {
    v80 = mmcs_logging_logger_default(v69, v70);
    v10 = v95;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(v8, 0, @"no containers for get request");
      v82 = mmcs_logging_logger_default(v5, v81);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
LABEL_99:
        if (!v5)
        {
          goto LABEL_105;
        }

        CFRelease(v5);
        goto LABEL_104;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
LABEL_98:
      _os_log_impl(&dword_2577D8000, v82, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      goto LABEL_99;
    }

LABEL_104:
    v5 = 0;
    goto LABEL_105;
  }

  v72 = CFArrayGetValueAtIndex(*(*(*(a1 + 304) + 112) + 40), 0);
  container_http_msg_add_token_header = mmcs_get_container_http_msg_add_token_header(v72, http_protobuf_message);
  v10 = v95;
  if (!container_http_msg_add_token_header)
  {
    v83 = mmcs_logging_logger_default(container_http_msg_add_token_header, v74);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v84 = CFArrayGetValueAtIndex(*(*(*(a1 + 304) + 112) + 40), 0);
      v5 = CFStringCreateWithFormat(v8, 0, @"unable to add get container token header for container %s", *(v84[11] + 16));
      v82 = mmcs_logging_logger_default(v5, v85);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      goto LABEL_98;
    }

    goto LABEL_104;
  }

  promoted_to_foreground_copy = mmcs_http_request_options_create_promoted_to_foreground_copy(*(a1 + 56));
  *&buf = @"getComplete";
  *(&buf + 1) = http_protobuf_message;
  v101 = promoted_to_foreground_copy;
  v102 = *(a1 + 96);
  v103 = 0;
  v104 = -1;
  v116 = 0;
  v106 = 0;
  v107 = 0;
  v105 = -1;
  v108 = mmcs_get_complete_will_retry_after_error;
  v109 = handle_response_getComplete;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = a1;
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  v115 = mmcs_engine_owner(v94);
  v117 = 0;
  v118 = v4;
  memset(v96, 0, sizeof(v96));
  mmcs_read_stream_pool_parameters_make_pool_timeout_max(v94[4], 100, v96, 90.0);
  v76 = mmcs_http_context_create((*(a1 + 304) + 144), *(a1 + 140), &buf);
  if (!v76)
  {
    v86 = mmcs_logging_logger_default(v76, v77);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v5 = CFStringCreateWithFormat(v8, 0, @"unable to create getComplete http context");
    v88 = mmcs_logging_logger_default(v5, v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *v98 = 138543362;
      v99 = v5;
      _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_ERROR, "%{public}@", v98, 0xCu);
    }

LABEL_113:
    if (!v5)
    {
      goto LABEL_116;
    }

    CFRelease(v5);
LABEL_115:
    v5 = 0;
    goto LABEL_116;
  }

  mmcs_get_req_context_setup_complete_metrics(a1, promoted_to_foreground_copy);
  mmcs_http_context_update_voucher(*(*(a1 + 304) + 144));
  mmcs_http_context_uuid_hash_code(*(*(a1 + 304) + 144));
  kdebug_trace();
  v78 = mmcs_http_context_send(*(*(a1 + 304) + 144), v96, v94[7]);
  if (!v78)
  {
    v89 = mmcs_logging_logger_default(v78, v79);
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v5 = CFStringCreateWithFormat(v8, 0, @"unable to send getComplete http msg");
    v91 = mmcs_logging_logger_default(v5, v90);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *v98 = 138543362;
      v99 = v5;
      _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_ERROR, "%{public}@", v98, 0xCu);
    }

    v10 = v95;
    goto LABEL_113;
  }

  v5 = 1;
LABEL_116:
  if (promoted_to_foreground_copy)
  {
    C3BaseRelease(promoted_to_foreground_copy);
  }

LABEL_105:
  CFRelease(http_protobuf_message);
LABEL_51:
  CFRelease(v10);
  if (v4)
  {
    goto LABEL_3;
  }

LABEL_4:
  os_activity_scope_leave(&state);
  return v5;
}

void mmcs_get_complete_will_retry_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(a2);
    v7 = mmcs_cferror_copy_description(a3);
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry get complete after error %@", v6, v7);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

BOOL handle_response_getComplete(uint64_t a1, CFDataRef *a2, uint64_t *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  mmcs_http_context_uuid_hash_code(a1);
  kdebug_trace();
  if (!mmcs_http_context_is_connection_reused(a1))
  {
    kdebug_trace();
  }

  v7 = mmcs_http_context_status_succeeded(a1, v6);
  if (!a2 || !v7 || !*a2)
  {
    has_http_status = mmcs_http_context_has_http_status(a1);
    v16 = has_http_status;
    v18 = mmcs_logging_logger_default(has_http_status, v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *MEMORY[0x277CBECE8];
      v21 = mmcs_http_context_http_status(a1, v10);
      v22 = CFStringCreateWithFormat(v20, 0, @"GetComplete (%p) HTTP status: %d", a1, v21);
      v24 = mmcs_logging_logger_default(v22, v23);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v34 = v22;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"GetComplete (%p) has no http status!", a1);
      v24 = mmcs_logging_logger_default(v22, v25);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        if (v22)
        {
          CFRelease(v22);
        }

LABEL_22:
        if (!a2)
        {
          return mmcs_get_req_done_phase2(a3, v10);
        }

        goto LABEL_34;
      }

      *buf = 138543362;
      v34 = v22;
    }

    _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    goto LABEL_20;
  }

  Length = CFDataGetLength(*a2);
  BytePtr = CFDataGetBytePtr(*a2);
  v11 = chunkserver__storage_container_error_list__unpack(0, Length, BytePtr);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  if (!v11)
  {
    goto LABEL_36;
  }

  state = mmcs_get_req_context_get_get_state(a3);
  if (!state)
  {
    v26 = mmcs_logging_logger_default(0, v13);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL getState for hc %p get request %p", a1, a3);
    v29 = mmcs_logging_logger_default(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v27;
LABEL_30:
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_31:
    if (v27)
    {
      CFRelease(v27);
    }

    goto LABEL_33;
  }

  v14 = state;
  if (!*(state + 40))
  {
    v30 = mmcs_logging_logger_default(state, v13);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL getState->containers for hc %p get request %p getState %p", a1, a3, v14);
    v29 = mmcs_logging_logger_default(v27, v31);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v27;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  mmcs_get_state_process_storage_container_error_list(state, v11);
LABEL_33:
  chunkserver__storage_container_error_list__free_unpacked(v11, 0);
LABEL_34:
  if (*a2)
  {
    CFRelease(*a2);
  }

LABEL_36:
  *a2 = 0;
  return mmcs_get_req_done_phase2(a3, v10);
}

_BYTE *_copy_methodCompletionInfoToList(void **a1, uint64_t a2)
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

uint64_t mmcs_get_container_create(void *a1, uint64_t *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v56 = 0;
  result = mmcs_container_create(&v56, 2, 192);
  if (result)
  {
    request_activity_marker = mmcs_request_get_request_activity_marker(*a2, v7);
    v9 = _os_activity_create(&dword_2577D8000, "mmcs-get-container", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    v11 = v56;
    v56[10] = v9;
    v12 = v11[11];
    *v12 = a2;
    v13 = *(a3 + 32);
    v14 = *(a3 + 64);
    v15 = v13 + v14;
    if (__CFADD__(v13, v14))
    {
      v16 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Sum of the number of chunk infos and the number of container elements will overflow");
        v19 = mmcs_logging_logger_default(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v13 && v14)
    {
      v20 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have both chunk infos and container elements");
        v19 = mmcs_logging_logger_default(v17, v21);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v13)
    {
      if (v15)
      {
        v22 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_FAULT, "Cannot have chunk infos in MMCS Protocol version 5 download.", buf, 2u);
        }

        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (!v14)
    {
      v27 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have neither chunk infos or container elements");
        v19 = mmcs_logging_logger_default(v17, v28);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (!v15)
    {
LABEL_22:
      v25 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have zero container chunk instances");
        v19 = mmcs_logging_logger_default(v17, v26);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    *(v12 + 56) = v15;
    if (v15 >> 62)
    {
      v23 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Overflow detected in computing the size of memory to be allocated for containerIndexForMessageIndex.");
        v19 = mmcs_logging_logger_default(v17, v24);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v29 = malloc_type_calloc(1uLL, 4 * v15, 0x100004052888210uLL);
    *(v12 + 72) = v29;
    if (!v29)
    {
      v32 = mmcs_logging_logger_default(0, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Allocation failure");
        v19 = mmcs_logging_logger_default(v17, v33);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (*(a3 + 32))
    {
      v31 = **(a3 + 40) + 24;
    }

    else
    {
      v34 = **(a3 + 72);
      if (!v34)
      {
        v50 = mmcs_logging_logger_default(v29, v30);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing container element.");
          v19 = mmcs_logging_logger_default(v17, v51);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v58 = v17;
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v35 = *(v34 + 24);
      if (v35)
      {
        v31 = v35 + 24;
      }

      else
      {
        v31 = 0;
      }
    }

    *v29 = 0;
    ++*(v12 + 40);
    if (v15 != 1)
    {
      v36 = 0;
      for (i = 1; v15 != i; ++i)
      {
        if (*(a3 + 32))
        {
          v38 = *(*(a3 + 40) + 8 * i) + 24;
          if (!v31)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v39 = *(*(a3 + 72) + 8 * i);
          if (!v39)
          {
            v54 = mmcs_logging_logger_default(v29, v30);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing container element.");
              v19 = mmcs_logging_logger_default(v17, v55);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v58 = v17;
LABEL_28:
                _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              goto LABEL_29;
            }

            goto LABEL_31;
          }

          v40 = *(v39 + 24);
          if (v40)
          {
            v38 = v40 + 24;
          }

          else
          {
            v38 = 0;
          }

          if (!v31)
          {
LABEL_57:
            v29[i] = ++v36;
            ++*(v12 + 40);
            v31 = v38;
            continue;
          }
        }

        if (!v38)
        {
          goto LABEL_57;
        }

        v41 = ProtobufCBinaryData_Equals(v31, v38);
        v29 = *(v12 + 72);
        if (!v41)
        {
          goto LABEL_57;
        }

        v29[i] = v36;
      }
    }

    *(v12 + 48) = 0;
    *(v12 + 8) = 0;
    v42 = *(a3 + 48);
    if (v42)
    {
      *(v12 + 16) = strdup(v42);
    }

    v43 = *(a3 + 56);
    if (v43)
    {
      v43 = strdup(v43);
      *(v12 + 24) = v43;
    }

    *(v12 + 32) = 0;
    if (*(a3 + 80) && (*(a3 + 88) & 1) != 0)
    {
      *(v12 + 32) = 1;
    }

    *(v12 + 80) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 88) = 0;
    *(v12 + 180) = 1;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    v44 = *(v12 + 40);
    if (!is_mul_ok(v44, 0x68uLL))
    {
      v45 = mmcs_logging_logger_default(v43, v30);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Overflow detected in computing the size of container instances to be allocated");
        v19 = mmcs_logging_logger_default(v17, v46);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v47 = 104 * v44;
    v48 = malloc_type_malloc(104 * v44, 0x1060040917B5EB5uLL);
    *(v12 + 120) = v48;
    if (v48)
    {
      bzero(v48, v47);
      C3BaseRetain(**v12);
      *a1 = v56;
      return 1;
    }

    else
    {
      v52 = mmcs_logging_logger_default(0, v49);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
        v19 = mmcs_logging_logger_default(v17, v53);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v17;
          goto LABEL_28;
        }

LABEL_29:
        if (v17)
        {
          CFRelease(v17);
        }
      }

LABEL_31:
      result = v56;
      if (v56)
      {
        C3BaseRelease(v56);
        return 0;
      }
    }
  }

  return result;
}

void mmcs_get_container_create_proxy_transaction(uint64_t a1, const __CFURL *a2, const __CFBoolean *a3)
{
  if (*(*(a1 + 88) + 180))
  {
    _mmcs_container_create_proxy_transaction_impl(a1, a2, a3);
  }
}

uint64_t mmcs_get_container_get_request(uint64_t a1)
{
  v1 = **(a1 + 88);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void mmcs_get_container_invalidate(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *v2;
  if (*v2)
  {
    if (*v3)
    {
      C3BaseRelease(*v3);
    }

    *v2 = 0;
  }

  v4 = *(v2 + 152);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(v2 + 152) = 0;
  v5 = *(v2 + 160);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(v2 + 160) = 0;
  v6 = *(v2 + 144);
  if (v6)
  {
    C3BaseRelease(v6);
  }

  *(v2 + 144) = 0;

  mmcs_container_invalidate_transactions(a1);
}

uint64_t mmcs_get_container_container_index_for_message_index(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (*(v2 + 56) <= a2)
  {
    mmcs_get_container_container_index_for_message_index_cold_1();
  }

  return *(*(v2 + 72) + 4 * a2);
}

uint64_t mmcs_get_container_http_msg_add_token_header(uint64_t a1, __CFHTTPMessage *a2)
{
  result = 0;
  v21 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v5 = *(a1 + 88);
    if (!v5)
    {
      return 0;
    }

    result = *(v5 + 16);
    if (!result)
    {
      return result;
    }

    v6 = *(v5 + 24);
    if (!v6)
    {
      v11 = mmcs_logging_logger_default(result, a2);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing token for container %s", *(v5 + 16));
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (!v12)
      {
        return 1;
      }

      v10 = v12;
LABEL_13:
      CFRelease(v10);
      return 1;
    }

    v7 = mmcs_item_copy_token_header_value(result, 0, v6, 0, 0);
    if (v7)
    {
      v9 = v7;
      CFHTTPMessageSetHeaderFieldValue(a2, @"x-apple-mmcs-auth", v7);
      v10 = v9;
      goto LABEL_13;
    }

    v15 = mmcs_logging_logger_default(0, v8);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to create token header for get container %s", *(v5 + 16));
      v18 = mmcs_logging_logger_default(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      return 0;
    }
  }

  return result;
}

uint64_t mmcs_get_container_add_ford_instance(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, CFErrorRef *a5)
{
  v7 = a2;
  v58 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  v9 = *(a1 + 88);
  v10 = v9[6];
  if (v10 > v9[5])
  {
    v11 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"instance count overflow");
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (a5)
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<get_container %p>", a1);
      *a5 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk instance overflow in container %@ with capacity %ld", v16, v17, v18, v19, v20, v15, v9[5]);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    return 0;
  }

  if (!a3)
  {
    if (!v10)
    {
      v22 = 0;
      goto LABEL_46;
    }

    v42 = v9[15] + 104 * v10;
    v43 = *(v42 - 72);
    length = mmcs_chunk_instance_get_length((v42 - 104));
    v22 = v43 + length;
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_46;
    }

    v46 = mmcs_logging_logger_default(length, v45);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Inferring chunk instance offset %lld", v22);
    v49 = mmcs_logging_logger_default(v47, v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v57 = v47;
      _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v22 = *a3;
  if (gMMCS_DebugLevel >= 5)
  {
    v23 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Setting explicit chunk instance offset %lld", v22);
      v26 = mmcs_logging_logger_default(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v57 = v24;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  v27 = v9[6];
  if (!v27)
  {
    if (!v22)
    {
      v9[16] = 0;
      goto LABEL_46;
    }

    v9[16] = v22;
    if (gMMCS_DebugLevel < 5)
    {
LABEL_46:
      mmcs_chunk_instance_init_with_file_opaque_reference_length(v9[15] + 104 * v9[6], v22, v9[6], v7, a4);
      ++v9[6];
      return 1;
    }

    container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
    v47 = container_copy_simple_description;
    if (gMMCS_DebugLevel >= 5)
    {
      v52 = mmcs_logging_logger_default(container_copy_simple_description, v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preparing for %ld bytes to ignore in container %@", v9[16], v47);
        v55 = mmcs_logging_logger_default(v53, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v57 = v53;
          _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v53)
        {
          CFRelease(v53);
        }
      }
    }

LABEL_42:
    if (v47)
    {
      CFRelease(v47);
    }

    goto LABEL_46;
  }

  v28 = v9[15] + 104 * v27;
  v29 = *(v28 - 72);
  v30 = mmcs_chunk_instance_get_length((v28 - 104));
  if (v22 >= v29 + v30)
  {
    goto LABEL_46;
  }

  v32 = mmcs_logging_logger_default(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk cannot go backward!");
    v40 = mmcs_logging_logger_default(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v57 = v38;
      _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v38)
    {
      CFRelease(v38);
    }
  }

  if (!a5)
  {
    return 0;
  }

  v41 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Chunk cannot go backward!", v33, v34, v35, v36, v37);
  result = 0;
  *a5 = v41;
  return result;
}

CFStringRef mmcs_get_container_copy_simple_description(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(*(*(a1 + 16) + 24) + 16);
  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s", *(v1 + 16));
  }

  v3 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Range");
  if (!v3)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s", *(v1 + 16));
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s(%@)", *(v1 + 16), v3);
  CFRelease(v4);
  return v5;
}

uint64_t mmcs_get_container_add_chunk_instance(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4, uint64_t *a5, _BYTE *a6, CFErrorRef *a7)
{
  v10 = a2;
  v76 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v12 = *(a1 + 88);
  if (*(v12 + 48) > *(v12 + 40))
  {
    v13 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"instance count overflow");
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v75 = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (a7)
    {
      v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<get_container %p>", a1);
      *a7 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk instance overflow in container %@ with capacity %ld", v18, v19, v20, v21, v22, v17, *(v12 + 40));
      if (v17)
      {
        CFRelease(v17);
      }
    }

    return 0;
  }

  chunk_reference = mmcs_get_req_get_or_create_chunk_reference(**v12, a2, a4, 0, a6);
  if (!chunk_reference)
  {
    v46 = mmcs_logging_logger_default(0, v24);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"create chunk reference");
      v49 = mmcs_logging_logger_default(v47, v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v75 = v47;
        _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v47)
      {
        CFRelease(v47);
      }
    }

    if (!a7)
    {
      return 0;
    }

    v45 = @"Unable to create chunk reference";
    goto LABEL_66;
  }

  v25 = chunk_reference;
  if (a3)
  {
    v26 = *a3;
    if (gMMCS_DebugLevel >= 5)
    {
      v27 = mmcs_logging_logger_default(chunk_reference, v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Setting explicit chunk instance offset %lld", v26);
        v30 = mmcs_logging_logger_default(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v75 = v28;
          _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    v31 = *(v12 + 48);
    if (v31)
    {
      v32 = *(v12 + 120) + 104 * v31;
      v33 = *(v32 - 72);
      length = mmcs_chunk_instance_get_length((v32 - 104));
      if (v26 < v33 + length)
      {
        v36 = mmcs_logging_logger_default(length, v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk cannot go backward!");
          v44 = mmcs_logging_logger_default(v42, v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v75 = v42;
            _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v42)
          {
            CFRelease(v42);
          }
        }

        if (!a7)
        {
          return 0;
        }

        v45 = @"Chunk cannot go backward!";
LABEL_66:
        v73 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, v45, v37, v38, v39, v40, v41);
        result = 0;
        *a7 = v73;
        return result;
      }

      goto LABEL_55;
    }

    if (!v26)
    {
      *(v12 + 128) = 0;
      goto LABEL_55;
    }

    *(v12 + 128) = v26;
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_55;
    }

    container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
    v56 = container_copy_simple_description;
    if (gMMCS_DebugLevel >= 5)
    {
      v61 = mmcs_logging_logger_default(container_copy_simple_description, v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preparing for %ld bytes to ignore in container %@", *(v12 + 128), v56);
        v64 = mmcs_logging_logger_default(v62, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v75 = v62;
          _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v62)
        {
          CFRelease(v62);
        }
      }
    }

LABEL_51:
    if (v56)
    {
      CFRelease(v56);
    }

    goto LABEL_55;
  }

  v50 = *(v12 + 48);
  if (!v50)
  {
    v26 = 0;
    goto LABEL_55;
  }

  v51 = *(v12 + 120) + 104 * v50;
  v52 = *(v51 - 72);
  v53 = mmcs_chunk_instance_get_length((v51 - 104));
  v26 = v52 + v53;
  if (gMMCS_DebugLevel >= 5)
  {
    v55 = mmcs_logging_logger_default(v53, v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Inferring chunk instance offset %lld", v26);
      v58 = mmcs_logging_logger_default(v56, v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v75 = v56;
        _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

LABEL_55:
  v65 = mmcs_chunk_instance_init(*(v12 + 120) + 104 * *(v12 + 48), v25, v26, *(v12 + 48), 0);
  if (!v65)
  {
    v69 = mmcs_logging_logger_default(v65, v66);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_chunk_instance_init");
      v72 = mmcs_logging_logger_default(v70, v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v75 = v70;
        _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v70)
      {
        CFRelease(v70);
      }
    }

    if (!a7)
    {
      return 0;
    }

    v45 = @"Unable to init chunk instance";
    goto LABEL_66;
  }

  v67 = *(v12 + 48);
  *(*(v12 + 120) + 104 * v67 + 64) = v10;
  if (a5)
  {
    *a5 = v25;
  }

  *(v12 + 48) = v67 + 1;
  return 1;
}

uint64_t mmcs_get_container_requirements@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = mmcs_http_request_options_network_behavior_type(*(*(a2 + 24) + 24), a2);
  v7 = mmcs_request_type_for_behavior_and_activity(v6, 1);
  *a3 = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[1] = 0u;
  mmcs_http_request_make_request_requirements(*(a2 + 24), a3);
  result = mmcs_get_container_get_body_size(a1);
  *(a3 + v7 + 2) = result;
  return result;
}

uint64_t mmcs_get_container_get_body_size(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = v1[8];
  if (!v2)
  {
    if (v1[6])
    {
      v3 = 0;
      v4 = 0;
      v2 = 0;
      do
      {
        v5 = v1[15];
        if (v4)
        {
          v6 = v5 + v3;
          v7 = *(v6 + 32);
          v8 = *(v6 - 72);
          v9 = v7 - (v8 + mmcs_chunk_instance_get_length((v6 - 104)));
          v5 = v1[15];
        }

        else
        {
          v9 = *(v5 + 32);
        }

        v2 += v9 + mmcs_chunk_instance_get_length((v5 + v3));
        ++v4;
        v3 += 104;
      }

      while (v4 < v1[6]);
    }

    else
    {
      v2 = 0;
    }

    v1[8] = v2;
  }

  return v2;
}

__CFSet *mmcs_get_container_copy_chunk_reference_set(uint64_t a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
  v3 = *(a1 + 88);
  if (*(v3 + 48))
  {
    v4 = 0;
    v5 = 56;
    do
    {
      v6 = *(v3 + 120);
      if (mmcs_chunk_instance_is_chunk_reference((v6 + v5 - 56)))
      {
        CFSetSetValue(Mutable, *(v6 + v5));
      }

      ++v4;
      v5 += 104;
    }

    while (v4 < *(v3 + 48));
  }

  return Mutable;
}

BOOL mmcs_get_container_is_body_complete(uint64_t a1, CFErrorRef *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  if (a2)
  {
    *a2 = 0;
  }

  body_size = mmcs_get_container_get_body_size(a1);
  v7 = body_size;
  v8 = *(v4 + 104);
  if (body_size != v8)
  {
    v9 = mmcs_logging_logger_default(body_size, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = mmcs_get_container_get_body_size(a1);
      v12 = CFStringCreateWithFormat(v10, 0, @"Expected body of %lu; got %lu", v11, *(v4 + 104));
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (a2)
    {
      v15 = mmcs_get_container_get_body_size(a1);
      *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 38, @"The expected size of the container get (%lu) didn't match the number of bytes received (%lu).", v16, v17, v18, v19, v20, v15, *(v4 + 104));
    }
  }

  return v7 == v8;
}

uint64_t mmcs_get_container_process_data(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v10 = a1;
  v391 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 88);
  v12 = *(v11 + 128);
  v370 = a1;
  if (v12)
  {
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = *(v11 + 128);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
      v16 = mmcs_logging_logger_default(container_copy_simple_description, v15);
      a1 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignored next %ld bytes in container %@", v13, container_copy_simple_description);
        v19 = mmcs_logging_logger_default(v17, v18);
        a1 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (a1)
        {
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v10 = v370;
        if (v17)
        {
          CFRelease(v17);
        }
      }

      if (container_copy_simple_description)
      {
        CFRelease(container_copy_simple_description);
      }
    }

    *(v11 + 128) -= v13;
    *(v11 + 104) += v13;
  }

  else
  {
    v13 = 0;
  }

  v20 = a4 - v13;
  if (a4 <= v13)
  {
    return 1;
  }

  v330 = a6;
  if (gMMCS_DebugLevel >= 5)
  {
    v21 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Processing %ld bytes of container", a4 - v13);
      v24 = mmcs_logging_logger_default(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
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
  }

  error = 0;
  v25 = v10[11];
  if (mmcs_request_is_container_interrupted_mode(**v25))
  {
    v26 = *(v25 + 104) + v20;
    if (v26 > (mmcs_get_container_get_body_size(v10) * 0.1))
    {
      v329 = v20;
      v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making around 10 percent progress.", v27, v28, v29, v30, v31);
      v360 = 0;
LABEL_25:
      v332 = 0;
      error = v32;
      goto LABEL_26;
    }
  }

  if (!v20 || (v35 = *(v25 + 88), v35 >= *(v25 + 48)))
  {
    *(v25 + 104) += v20;
    v33 = 1;
LABEL_406:
    v34 = error;
    if (error)
    {
      goto LABEL_407;
    }

    return v33;
  }

  v36 = 0;
  v360 = 0;
  v361 = a3 + v13;
  allocator = *MEMORY[0x277CBECE8];
  v324 = *MEMORY[0x277CBECF0];
  v332 = 1;
  v328 = a2;
  v329 = v20;
  v37 = v20;
  while (1)
  {
    v38 = *(v25 + 120) + 104 * v35;
    length = mmcs_chunk_instance_get_length(v38);
    v40 = length;
    v41 = *(v25 + 96);
    v42 = length - v41;
    v43 = v42 >= v37 ? v37 : length - v41;
    v44 = (v361 + v36);
    if (*v38 != 1)
    {
      break;
    }

    v364 = (v361 + v36);
    state_all_outstanding_chunk_references_contains_chunk = mmcs_get_state_all_outstanding_chunk_references_contains_chunk(*v25, *(v38 + 56));
    v339 = state_all_outstanding_chunk_references_contains_chunk == 0;
    v357 = state_all_outstanding_chunk_references_contains_chunk;
    if (state_all_outstanding_chunk_references_contains_chunk)
    {
      if (!*(v25 + 112))
      {
        state_all_outstanding_chunk_references_contains_chunk = mmcs_chunk_instance_chunk_coder_create(v38, 2);
        *(v25 + 112) = state_all_outstanding_chunk_references_contains_chunk;
        if (!state_all_outstanding_chunk_references_contains_chunk)
        {
          v99 = @"no chunk coder";
          goto LABEL_146;
        }
      }

      if (gMMCS_DebugLevel >= 5)
      {
        v81 = mmcs_logging_logger_default(state_all_outstanding_chunk_references_contains_chunk, v80);
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
        if (v82)
        {
          v345 = v36;
          v84 = v42;
          v85 = v43;
          v86 = v37;
          v87 = v38;
          v88 = v85;
          v89 = CFStringCreateWithFormat(allocator, 0, @"decrypting %p len %lu (of buffer %p)", v364, v85, v361);
          v91 = mmcs_logging_logger_default(v89, v90);
          v82 = os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG);
          if (v82)
          {
            *buf = 138543362;
            *&buf[4] = v89;
            _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          v38 = v87;
          v37 = v86;
          v43 = v88;
          v42 = v84;
          v36 = v345;
          if (v89)
          {
            CFRelease(v89);
          }
        }

        v92 = v40 == v41 || gMMCS_DebugLevel < 5;
        if (!v92)
        {
          v93 = mmcs_logging_logger_default(v82, v83);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            v351 = v42;
            v94 = v37;
            v95 = v38;
            v96 = CFStringCreateWithFormat(allocator, 0, @"%u %u", *v364, v364[v43 - 1]);
            v98 = mmcs_logging_logger_default(v96, v97);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v96;
              _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            v38 = v95;
            v37 = v94;
            v42 = v351;
            if (v96)
            {
              CFRelease(v96);
            }
          }
        }
      }

      if (!CKChunkCoderUpdate())
      {
        v99 = @"CKChunkCoderUpdate";
LABEL_146:
        v332 = 0;
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 22, v99);
        goto LABEL_307;
      }
    }

    else
    {
      *(v25 + 136) += v43;
    }

    v102 = *(*(v38 + 56) + 32);
    if (v102)
    {
      v352 = v42;
      v336 = v43;
      theDicta = v37;
      v368 = v38;
      v346 = v36;
      v103 = v10[11];
      v104 = *(v103[15] + 104 * v103[11] + 56);
      keya = *(v104 + 32);
      if (keya)
      {
        if (v40 == v41)
        {
          mmcs_get_container_process_data_cold_2();
        }

        v105 = *(v104 + 4);
        v106 = v103[21];
        v92 = v105 > v106;
        v107 = v105 - v106;
        if (!v92)
        {
          mmcs_get_container_process_data_cold_1();
        }

        v108 = *v102 << 10;
        v109 = v107 < v336 || v352 <= theDicta;
        if (v107 >= v336)
        {
          v110 = v336;
        }

        else
        {
          v110 = v107;
        }

        v111 = v364;
        while (1)
        {
          if (!v103[18])
          {
            if (!v103[19])
            {
              CKChunkDigestArgumentsV1Create();
            }

            CKSchemeAndSignatureSize();
            v10 = v370;
            if (!CKChunkDigestResultsCreate() || !CKChunkSignatureGeneratorCreate() || !v103[18])
            {
              goto LABEL_161;
            }

            v106 = v103[21];
          }

          v112 = v106 % v108;
          v113 = v112 + v110 >= v108 || v109;
          if ((v113 & 1) == 0)
          {
            CKChunkSignatureGeneratorUpdate();
            v103[21] += v110;
            goto LABEL_161;
          }

          v114 = (v108 - v112);
          v115 = v110 >= v114 ? v114 : v110;
          v373 = 0;
          CKChunkSignatureGeneratorUpdate();
          v116 = CKChunkSignatureGeneratorFinish();
          if (!v116)
          {
            break;
          }

          if (v373)
          {
            C3BaseRelease(v373);
          }

          v373 = 0;
          v118 = v103[18];
          if (v118)
          {
            C3BaseRelease(v118);
          }

          v103[18] = 0;
          v119 = v103[20];
          if (v119)
          {
            C3BaseRelease(v119);
          }

          v106 = v103[21] + v115;
          if (v109)
          {
            v106 = 0;
          }

          v103[20] = 0;
          v103[21] = v106;
          v111 += v115;
          v110 -= v115;
          if (!v110)
          {
            goto LABEL_161;
          }
        }

        v124 = mmcs_logging_logger_default(v116, v117);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          v125 = CFStringCreateWithFormat(allocator, 0, @"CKChunkSignatureGeneratorFinish failed\n");
          v127 = mmcs_logging_logger_default(v125, v126);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v125;
            _os_log_impl(&dword_2577D8000, v127, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v125)
          {
            CFRelease(v125);
          }
        }

        if (v373)
        {
          C3BaseRelease(v373);
        }

        v373 = 0;
        v128 = v103[18];
        if (v128)
        {
          C3BaseRelease(v128);
        }

        v103[18] = 0;
        v129 = v103[20];
        if (v129)
        {
          C3BaseRelease(v129);
        }

        v103[20] = 0;
      }

LABEL_161:
      v43 = v336;
      v120 = keya != 0;
      v37 = theDicta;
      v36 = v346;
      v38 = v368;
      v42 = v352;
    }

    else
    {
      v120 = 1;
    }

    v130 = v42 <= v37;
    if (!v357)
    {
      v130 = 0;
    }

    v360 |= v130;
    if (v42 <= v37 || !v120)
    {
      v131 = *(v25 + 112) && CKChunkCoderFinish() || v339;
      v132 = v120 & v131;
      if ((v120 & v131) == 1 && error)
      {
        CFRelease(error);
        error = 0;
      }

      v133 = *(v25 + 112);
      if (v133)
      {
        C3BaseRelease(v133);
      }

      *(v25 + 112) = 0;
      if ((v132 & 1) == 0)
      {
        v369 = v38;
        v301 = mmcs_chunk_signature_to_hexstring(*(*(v38 + 56) + 8));
        v304 = mmcs_get_container_copy_simple_description(v10);
        v305 = *(v328 + 16);
        if (v305)
        {
          request_message = mmcs_http_context_get_request_message(v305);
          v307 = *(v328 + 16);
          if (v307)
          {
            response_message = mmcs_http_context_get_response_message(v307);
LABEL_416:
            v309 = error;
            if (v120)
            {
              v310 = @"Chunk data verification failed for chunk %s in container %@ at chunk index %lu at offset %llu length %u (relative to the container's range)";
            }

            else
            {
              v310 = @"Subchunk data verification failed for chunk %s in container %@ at chunk index %lu at offset %llu length %u (relative to the container's range)";
            }

            error = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", 11, request_message, response_message, error, v310, v302, v303, v301, v304, *(v25 + 88), *(v369 + 32), *(*(v369 + 56) + 4));
            if (v301)
            {
              free(v301);
            }

            if (v304)
            {
              CFRelease(v304);
            }

            if (v309)
            {
              CFRelease(v309);
            }

            goto LABEL_425;
          }
        }

        else
        {
          request_message = 0;
        }

        response_message = 0;
        goto LABEL_416;
      }
    }

    v134 = mmcs_chunk_instance_get_length(v38);
    v135 = *(v25 + 96);
    if (v135 < v134)
    {
      mmcs_get_state_process_chunk_with_padding(*v25, v10, *(v38 + 56), v135, v364, v43);
    }

LABEL_307:
    v100 = (v37 - v43);
    v36 += v43;
    *(v25 + 96) += v43;
    if (v42 <= v37)
    {
      if (*(mmcs_chunk_instance_offset(**v25) + 170))
      {
        v240 = mmcs_chunk_instance_offset(**v25);
        v241 = mmcs_chunk_instance_get_length(v38);
        mmcs_engine_add_bytes_got(v240, v241);
        v242 = mmcs_chunk_instance_offset(**v25);
        mmcs_engine_commit_if_over_threshold(v242);
      }

      v243 = *(v25 + 88) + 1;
      if (v243 < *(v25 + 48))
      {
        v244 = *(v25 + 120);
        v245 = v36;
        v246 = *(v38 + 32);
        v247 = v246 + mmcs_chunk_instance_get_length(v38);
        v36 = v245;
        v248 = *(v244 + 104 * v243 + 32);
        if (v247 < v248)
        {
          v249 = *(v38 + 32);
          v250 = (v248 - (v249 + mmcs_chunk_instance_get_length(v38)));
          *(v25 + 128) = v250;
          v251 = gMMCS_DebugLevel;
          if (gMMCS_DebugLevel > 4)
          {
            v252 = mmcs_get_container_copy_simple_description(v10);
            v254 = v252;
            if (gMMCS_DebugLevel >= 5)
            {
              v255 = mmcs_logging_logger_default(v252, v253);
              if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
              {
                v256 = CFStringCreateWithFormat(allocator, 0, @"Ignoring next %ld bytes in container %@", *(v25 + 128), v254);
                v258 = mmcs_logging_logger_default(v256, v257);
                if (os_log_type_enabled(v258, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *&buf[4] = v256;
                  _os_log_impl(&dword_2577D8000, v258, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                v36 = v245;
                if (v256)
                {
                  CFRelease(v256);
                }
              }
            }

            if (v254)
            {
              CFRelease(v254);
            }

            v251 = gMMCS_DebugLevel;
            v250 = *(v25 + 128);
          }

          if (v250 >= v100)
          {
            v259 = v100;
          }

          else
          {
            v259 = v250;
          }

          if (v251 >= 4)
          {
            v260 = mmcs_get_container_copy_simple_description(v370);
            v262 = mmcs_logging_logger_default(v260, v261);
            if (os_log_type_enabled(v262, OS_LOG_TYPE_DEBUG))
            {
              v263 = CFStringCreateWithFormat(allocator, 0, @"Ignored next %ld bytes in container %@", v259, v260);
              v265 = mmcs_logging_logger_default(v263, v264);
              if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v263;
                _os_log_impl(&dword_2577D8000, v265, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              v36 = v245;
              if (v263)
              {
                CFRelease(v263);
              }
            }

            if (v260)
            {
              CFRelease(v260);
            }
          }

          *(v25 + 128) -= v259;
          v100 = (v100 - v259);
          v36 += v259;
          v10 = v370;
        }
      }

      v101 = 0;
      ++*(v25 + 88);
      goto LABEL_335;
    }

LABEL_336:
    v37 = v100;
    v35 = *(v25 + 88);
    v266 = *(v25 + 48);
    if (v35 == v266)
    {
      goto LABEL_26;
    }

    if (*(v10[11] + 176) != 2)
    {
      if (!mmcs_get_state_has_files_which_still_needs_container(*v25, v10))
      {
        v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 34, @"Container %s is no longer needed.", v267, v268, v269, v270, v271, *(v25 + 16));
        goto LABEL_25;
      }

      v35 = *(v25 + 88);
      v266 = *(v25 + 48);
    }

    if (v35 >= v266 || !v100)
    {
      goto LABEL_26;
    }
  }

  if (*v38 != 3)
  {
    mmcs_get_container_process_data_cold_6();
  }

  Mutable = *(v38 + 88);
  if (!Mutable)
  {
    Mutable = CFDataCreateMutable(allocator, *(v38 + 96));
    v44 = (v361 + v36);
    *(v38 + 88) = Mutable;
  }

  CFDataAppendBytes(Mutable, v44, v43);
  if (v42 > v37)
  {
    v100 = (v37 - v43);
    v36 += v43;
    v101 = *(v25 + 96) + v43;
LABEL_335:
    *(v25 + 96) = v101;
    goto LABEL_336;
  }

  v48 = v10[11];
  v49 = *(v38 + 8);
  v372 = 0;
  v367 = v38;
  if (!v49)
  {
    v121 = mmcs_logging_logger_default(v46, v47);
    v122 = 1;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v121, OS_LOG_TYPE_INFO, "Unneeded FORD downloaded.", buf, 2u);
      v123 = v372;
      if (v372)
      {
        goto LABEL_281;
      }

      error = 0;
      v10 = v370;
      goto LABEL_305;
    }

    goto LABEL_285;
  }

  v50 = PCSMMCSCopyDecryptedData();
  v51 = *(v38 + 88);
  if (v51)
  {
    CFRelease(v51);
  }

  *(v38 + 88) = 0;
  if (!v50)
  {
    v363 = "Unable to Decrypt FORD";
    v356 = 42;
    goto LABEL_283;
  }

  key = v49;
  v52 = CFDataGetLength(v50);
  BytePtr = CFDataGetBytePtr(v50);
  v54 = opaque__file_reference_data__unpack(0, v52, BytePtr);
  if (!v54)
  {
    v122 = 0;
    v363 = "Unable to Decode Protobuf";
    v356 = 43;
    goto LABEL_279;
  }

  v338 = v54;
  theDict = v37;
  v55 = v54[3];
  if (!v55)
  {
    v136 = v54[4];
    if (v136)
    {
      v37 = theDict;
      if (*(v136 + 5))
      {
        v137 = v10[11];
        v138 = XCFDataCreateWithBytesNoCopy(allocator, *(v136 + 4), *(v136 + 3), v324);
        v139 = v136;
        v140 = v138;
        v139[3] = 0;
        v139[4] = 0;
        v311 = v139;
        v141 = *(v367 + 8);
        if (!*(v141 + 400))
        {
          mmcs_item_set_file_verification_key(v141, v140);
        }

        if (v140)
        {
          CFRelease(v140);
        }

        Value = CFDictionaryGetValue(*(*v137 + 104), *(v367 + 8));
        if (!Value)
        {
          mmcs_get_container_process_data_cold_4();
        }

        v142 = v311;
        v143 = v311[5];
        if (!v143)
        {
          v363 = 0;
          v356 = 0;
          v54 = v338;
          goto LABEL_351;
        }

        v144 = 0;
        v145 = 0;
        v146 = 0;
        v347 = v36;
        v350 = v42;
        v335 = v43;
        v325 = v48;
        v314 = v50;
        while (1)
        {
          v147 = *(v142[6] + 8 * v146);
          if (*(v147 + 24) != 4)
          {
            break;
          }

          v148 = **(v147 + 32);
          if (!v148)
          {
            v356 = 45;
            v363 = "Chunk Length Cannot Have Zero Bytes";
            v37 = theDict;
            goto LABEL_277;
          }

          if (*(v147 + 40))
          {
            v149 = 0;
            v312 = (&v146->isa + 1);
            v150 = 104 * v145;
            v365 = *(v142[6] + 8 * v146);
            do
            {
              v151 = *(*(v367 + 8) + 272);
              v152 = *(*(v147 + 48) + 8 * v149);
              v153 = v151 + v150;
              v154 = *(v151 + v150 + 56);
              if (!*(v154 + 16))
              {
                *(v154 + 16) = *(v152 + 32);
                *(v152 + 32) = 0;
              }

              if (gMMCS_DebugLevel >= 4 && (v148 != *(v154 + 4) || v144 != *(v151 + v150 + 32)))
              {
                v358 = mmcs_file_signature_to_hexstring(*Value[1]);
                v321 = mmcs_chunk_signature_to_hexstring(*(*(v153 + 56) + 8));
                v156 = mmcs_logging_logger_chunk(v321, v155);
                if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                {
                  v157 = Value[1];
                  v158 = v157[5];
                  v159 = v157[18];
                  v160 = *(*(v153 + 56) + 4);
                  v161 = *(v151 + v150 + 32);
                  *buf = 134220034;
                  *&buf[4] = v158;
                  v375 = 2082;
                  v376 = v358;
                  v377 = 2048;
                  v378 = v312;
                  v379 = 2048;
                  v380 = v159;
                  v381 = 2082;
                  v382 = v321;
                  v383 = 2048;
                  v384 = v160;
                  v385 = 2048;
                  v386 = v148;
                  v387 = 2048;
                  v388 = v161;
                  v389 = 2048;
                  v390 = v144;
                  _os_log_impl(&dword_2577D8000, v156, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu and offset from %llu to %llu", buf, 0x5Cu);
                }

                if (v358)
                {
                  free(v358);
                }

                v36 = v347;
                if (v321)
                {
                  free(v321);
                }
              }

              v162 = *(v153 + 56);
              *(v162 + 4) = v148;
              *(v162 + 64) = 1;
              *(v151 + v150 + 32) = v144;
              v163 = v148;
              if (*(v152 + 40))
              {
                *(v162 + 40) = *(v152 + 48);
                v164 = *(v152 + 56);
                *(v162 + 32) = v164;
                *(v162 + 24) = 1;
                *(v152 + 48) = 0;
                *(v152 + 56) = 0;
                if (!v164 || !*v164)
                {
                  v356 = 45;
                  v215 = "Unexpected value for Max Subchunk length in Subchunk Digest, V2";
                  goto LABEL_276;
                }

                v165 = CKSubchunkBlobSize();
                v166 = *(v153 + 56);
                if (v165 != *(v166 + 40))
                {
                  v356 = 45;
                  v215 = "Unexpected Number of Bytes for Subchunk Digest, V2";
                  goto LABEL_276;
                }

                v163 = *(v166 + 4);
              }

              v144 += v163;
              ++v149;
              v147 = v365;
              v150 += 104;
              ++v145;
            }

            while (v149 < *(v365 + 40));
            v142 = v311;
            v146 = v312;
            v143 = v311[5];
            v43 = v335;
            v42 = v350;
            v48 = v325;
          }

          else
          {
            v146 = (v146 + 1);
          }

          v50 = v314;
          if (v146 >= v143)
          {
            goto LABEL_211;
          }
        }

        v356 = 45;
        v167 = "Unexpected Number of Bytes for Chunk Length";
LABEL_214:
        v363 = v167;
        v54 = v338;
        v37 = theDict;
        goto LABEL_278;
      }

      v356 = 45;
      v214 = "Unexpected Number of Chunk Groups";
LABEL_268:
      v363 = v214;
      goto LABEL_278;
    }

    v168 = v54[5];
    v37 = theDict;
    if (!v168)
    {
      v356 = 44;
      v214 = "Unsupported Version";
      goto LABEL_268;
    }

    v373 = 0;
    v169 = *(v168 + 5);
    if (!v169)
    {
      v356 = 45;
      v214 = "Unexpected Number of Chunks";
      goto LABEL_268;
    }

    if (v169 == *(*(v38 + 8) + 144))
    {
      v315 = v50;
      v326 = v48;
      v170 = v38;
      v171 = v10[11];
      v359 = v168;
      v172 = XCFDataCreateWithBytesNoCopy(allocator, *(v168 + 4), *(v168 + 3), v324);
      v359[3] = 0;
      v359[4] = 0;
      v173 = v170;
      v174 = *(v170 + 8);
      if (!*(v174 + 400))
      {
        mmcs_item_set_file_verification_key(v174, v172);
      }

      if (v172)
      {
        CFRelease(v172);
      }

      v175 = *(*v171 + 104);
      v176 = v170;
      v177 = CFDictionaryGetValue(v175, *(v170 + 8));
      v50 = v315;
      v366 = v177;
      if (!v177)
      {
        mmcs_get_container_process_data_cold_5();
      }

      v178 = v359[5];
      if (v178)
      {
        v179 = v359[6];
        v180 = *(*(v173 + 8) + 272) + 56;
        while (1)
        {
          v181 = *v179;
          v182 = *v180;
          if (!*(*v180 + 16))
          {
            *(v182 + 16) = *(v181 + 32);
            *(v181 + 32) = 0;
          }

          if (*(v181 + 40))
          {
            *(v182 + 40) = *(v181 + 48);
            v183 = *(v181 + 56);
            *(v182 + 32) = v183;
            v184 = 1;
            *(v182 + 24) = 1;
            *(v181 + 48) = 0;
            *(v181 + 56) = 0;
            if (!v183 || !*v183)
            {
              break;
            }
          }

          v180 += 104;
          ++v179;
          if (!--v178)
          {
            goto LABEL_231;
          }
        }

        v363 = "Unexpected value for Max Subchunk length in Subchunk Digest, V3";
        v212 = 45;
        goto LABEL_345;
      }

LABEL_231:
      if (!mmcs_index_set_create(&v373))
      {
        v184 = 1;
        v363 = "mmcs_index_set_create";
        v212 = 37;
LABEL_345:
        v48 = v326;
        goto LABEL_348;
      }

      v186 = v359;
      v187 = v359[7];
      if (v187)
      {
        v188 = 0;
        while (1)
        {
          v189 = *(v186[8] + 8 * v188);
          v190 = **(v189 + 32);
          if (!v190)
          {
            v184 = 1;
            v363 = "Chunk Length Cannot Have Zero Bytes";
            v212 = 45;
            goto LABEL_347;
          }

          v191 = *(v189 + 40);
          if (v191)
          {
            break;
          }

LABEL_256:
          if (++v188 >= v187)
          {
            goto LABEL_257;
          }
        }

        v313 = v188;
        v337 = v43;
        v192 = 0;
        v348 = v36;
        v353 = v42;
        v318 = *(v186[8] + 8 * v188);
        while (1)
        {
          v193 = *(*(v189 + 48) + 8 * v192);
          if (!v193[7])
          {
            break;
          }

          v194 = v193[8];
          if (v194 >= 1)
          {
            goto LABEL_241;
          }

LABEL_254:
          if (++v192 >= v191)
          {
            v187 = v186[7];
            v43 = v337;
            v188 = v313;
            goto LABEL_256;
          }
        }

        v194 = 1;
LABEL_241:
        v322 = v192;
        v195 = v193[6];
        v196 = v195 + v194;
        v197 = 104 * v195 + 56;
        while (1)
        {
          v198 = *(*(v176 + 8) + 272);
          mmcs_index_set_add_index(v373, v195);
          if (gMMCS_DebugLevel >= 4 && v190 != *(*(v198 + v197) + 4))
          {
            v199 = mmcs_file_signature_to_hexstring(*v366[1]);
            v200 = mmcs_chunk_signature_to_hexstring(*(*(v198 + v197) + 8));
            v202 = mmcs_logging_logger_chunk(v200, v201);
            if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
            {
              v203 = v366[1];
              v204 = v203[5];
              v205 = v203[18];
              v206 = *(*(v198 + v197) + 4);
              *buf = 134219522;
              *&buf[4] = v204;
              v375 = 2082;
              v376 = v199;
              v377 = 2048;
              v378 = (v195 + 1);
              v379 = 2048;
              v380 = v205;
              v381 = 2082;
              v382 = v200;
              v383 = 2048;
              v384 = v206;
              v385 = 2048;
              v386 = v190;
              _os_log_impl(&dword_2577D8000, v202, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu", buf, 0x48u);
            }

            if (v199)
            {
              free(v199);
            }

            if (v200)
            {
              free(v200);
            }
          }

          v207 = *(v198 + v197);
          *(v207 + 4) = v190;
          *(v207 + 64) = 1;
          if (*(v207 + 32))
          {
            if (CKSubchunkBlobSize() != *(*(v198 + v197) + 40))
            {
              break;
            }
          }

          ++v195;
          v197 += 104;
          v176 = v173;
          if (v195 >= v196)
          {
            v189 = v318;
            v192 = v322;
            v191 = *(v318 + 40);
            v37 = theDict;
            v36 = v348;
            v42 = v353;
            v186 = v359;
            goto LABEL_254;
          }
        }

        v184 = 1;
        v363 = "Unexpected Number of Bytes for Subchunk Digest, V3";
        v212 = 45;
        v37 = theDict;
        v36 = v348;
        v43 = v337;
        v42 = v353;
LABEL_347:
        v48 = v326;
        v50 = v315;
LABEL_348:
        v356 = v212;
        if (v373)
        {
          C3BaseRelease(v373);
        }

        v54 = v338;
        if (v184)
        {
          goto LABEL_278;
        }

        goto LABEL_351;
      }

LABEL_257:
      v208 = mmcs_index_set_count(v373, v185);
      v48 = v326;
      v50 = v315;
      if (v208 == v366[1][18] && mmcs_index_set_contains_range(v373, 0, v208 - 1))
      {
        v209 = v366[1][18];
        if (v209)
        {
          v210 = 0;
          v211 = (*(*(v176 + 8) + 272) + 56);
          do
          {
            v363 = 0;
            v212 = 0;
            v184 = 0;
            *(v211 - 3) = v210;
            v213 = *v211;
            v211 += 13;
            v210 += *(v213 + 4);
            --v209;
          }

          while (v209);
        }

        else
        {
          v363 = 0;
          v212 = 0;
          v184 = 0;
        }

        goto LABEL_348;
      }

      v184 = 1;
      v216 = "Check Set Failure";
    }

    else
    {
      v184 = 1;
      v216 = "Unexpected Number of Chunks";
    }

    v363 = v216;
    v212 = 45;
    goto LABEL_348;
  }

  v56 = *(v38 + 8);
  if ((**v56 & 0x7F) != 4 && (**v56 & 8) == 0)
  {
    v356 = 45;
    v167 = "File Key State Unexpected";
    goto LABEL_214;
  }

  if (*(v56 + 144) != *(v55 + 3))
  {
    v356 = 45;
    v167 = "Unexpected Number of Chunks";
    goto LABEL_214;
  }

  v58 = v10[11];
  if (*(v55 + 10))
  {
    v59 = XCFDataCreateWithBytesNoCopy(allocator, *(v55 + 7), *(v55 + 6), v324);
    *(v55 + 6) = 0;
    *(v55 + 7) = 0;
    v60 = *(v367 + 8);
    if (!*(v60 + 400))
    {
      mmcs_item_set_file_verification_key(v60, v59);
    }

    if (v59)
    {
      CFRelease(v59);
    }
  }

  v320 = CFDictionaryGetValue(*(*v58 + 104), *(v367 + 8));
  if (!v320)
  {
    mmcs_get_container_process_data_cold_3();
  }

  if (*(v55 + 3))
  {
    v314 = v50;
    v325 = v48;
    v344 = v36;
    v350 = v42;
    v335 = v43;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    while (1)
    {
      v64 = *(*(v367 + 8) + 272);
      v65 = *(*(v55 + 4) + 8 * v63);
      v66 = v64 + v61;
      v67 = *(v64 + v61 + 56);
      if (!*(v67 + 16))
      {
        *(v67 + 16) = *(v65 + 32);
        *(v65 + 32) = 0;
      }

      v68 = *(v67 + 4);
      v69 = v68;
      if (*(v65 + 40))
      {
        if (*(v65 + 48) != 4)
        {
          v356 = 45;
          v215 = "Unexpected Number of Bytes for Chunk Length";
          goto LABEL_276;
        }

        v69 = **(v65 + 56);
        if (!v69)
        {
          v356 = 45;
          v215 = "Chunk Length Cannot Have Zero Bytes";
          goto LABEL_276;
        }
      }

      if (gMMCS_DebugLevel >= 4 && (v69 != v68 || v62 != *(v64 + v61 + 32)))
      {
        v362 = mmcs_file_signature_to_hexstring(*v320[1]);
        v355 = mmcs_chunk_signature_to_hexstring(*(*(v66 + 56) + 8));
        v71 = mmcs_logging_logger_chunk(v355, v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = v320[1];
          v73 = v72[5];
          v74 = v72[18];
          v75 = *(*(v66 + 56) + 4);
          v76 = *(v64 + v61 + 32);
          *buf = 134220034;
          *&buf[4] = v73;
          v375 = 2082;
          v376 = v362;
          v377 = 2048;
          v378 = (v63 + 1);
          v379 = 2048;
          v380 = v74;
          v381 = 2082;
          v382 = v355;
          v383 = 2048;
          v384 = v75;
          v385 = 2048;
          v386 = v69;
          v387 = 2048;
          v388 = v76;
          v389 = 2048;
          v390 = v62;
          _os_log_impl(&dword_2577D8000, v71, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu and offset from %llu to %llu", buf, 0x5Cu);
        }

        if (v362)
        {
          free(v362);
        }

        v36 = v344;
        if (v355)
        {
          free(v355);
        }
      }

      v77 = *(v66 + 56);
      *(v77 + 4) = v69;
      *(v77 + 64) = 1;
      *(v64 + v61 + 32) = v62;
      if (*(v65 + 64))
      {
        *(v77 + 40) = *(v65 + 72);
        v78 = *(v65 + 80);
        *(v77 + 32) = v78;
        *(v77 + 24) = 1;
        *(v65 + 72) = 0;
        *(v65 + 80) = 0;
        if (!v78 || !*v78)
        {
          v356 = 45;
          v215 = "Unexpected value for Max Subchunk length in Subchunk Digest, V1";
          goto LABEL_276;
        }

        if (CKSubchunkBlobSize() != *(*(v66 + 56) + 40))
        {
          break;
        }
      }

      v62 += v69;
      ++v63;
      v61 += 104;
      if (v63 >= *(v55 + 3))
      {
        v363 = 0;
        v356 = 0;
        v54 = v338;
        v37 = theDict;
        v43 = v335;
        v42 = v350;
        v48 = v325;
        v50 = v314;
        goto LABEL_351;
      }
    }

    v356 = 45;
    v215 = "Unexpected Number of Bytes for Subchunk Digest, V1";
LABEL_276:
    v363 = v215;
    v37 = theDict;
    v43 = v335;
    v42 = v350;
    v48 = v325;
LABEL_277:
    v50 = v314;
    v54 = v338;
LABEL_278:
    opaque__file_reference_data__free_unpacked(v54, 0);
    v122 = 0;
LABEL_279:
    CFRelease(v50);
    goto LABEL_280;
  }

LABEL_211:
  v363 = 0;
  v356 = 0;
  v54 = v338;
  v37 = theDict;
LABEL_351:
  v272 = CFDictionaryCreateMutable(allocator, v54[6], 0, MEMORY[0x277CBF150]);
  v273 = v338;
  v274 = key;
  v275 = *(key + 216);
  v276 = v338[6];
  theDictc = v272;
  if (!*(key + 216))
  {
    v278 = 0;
    goto LABEL_355;
  }

  if (v276)
  {
    v277 = CFArrayCreateMutable(0, v276, &kAssignArrayCallBacks);
    v273 = v338;
    v278 = v277;
    v276 = v338[6];
LABEL_355:
    if (v276)
    {
      v316 = v50;
      v279 = v36;
      v280 = 0;
      v281 = 0;
      do
      {
        v373 = 0;
        *buf = 0;
        if (!mmcs_RangedItem_copyFileVerificationKey_copyItemLength(*(v273[7] + v281), buf, &v373))
        {
          v122 = 0;
          v356 = 45;
          v363 = "Ranged Item Missing Required Fields";
          v36 = v279;
          goto LABEL_391;
        }

        v280 += v373;
        CFDictionarySetValue(theDictc, v280, *buf);
        if (v278)
        {
          RangedItem = mmcs_create_RangedItem(*buf, v373);
          CFArrayAppendValue(v278, RangedItem);
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        ++v281;
        v273 = v338;
      }

      while (v281 < v338[6]);
      v36 = v279;
      v50 = v316;
      v274 = key;
    }
  }

  else
  {
    v278 = 0;
  }

  if (v274[50])
  {
    v283 = CFDictionaryGetValue(theDictc, (v274[48] + v274[47]));
    if (!v283)
    {
      v122 = 0;
      v356 = 40;
      v363 = "Ranged Item Not Found with Requested Offset and Length";
      goto LABEL_392;
    }

    mmcs_item_set_file_verification_key(v274, v283);
  }

  v284 = CFDictionaryGetValue(*(*v48 + 104), v274);
  v285 = v284;
  if (v275)
  {
    if (v278)
    {
      key[15] = v278;
    }

    mmcs_get_file_complete_metadata_only_file(v284);
    v278 = 0;
  }

  mmcs_get_state_initialize_duplicate_file_states(*v48, v285, &v372);
  if (v372)
  {
    v122 = 0;
    goto LABEL_392;
  }

  v286 = CFDictionaryGetValue(*(*(**v48 + 304) + 64), key);
  if (!v286 || (v287 = v286, Count = CFArrayGetCount(v286), Count < 1))
  {
    v122 = 1;
    goto LABEL_392;
  }

  v316 = v50;
  v319 = v287;
  v288 = 0;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v287, v288);
    if (ValueAtIndex == key)
    {
LABEL_384:
      if (Count == ++v288)
      {
        v122 = 1;
        goto LABEL_391;
      }

      continue;
    }

    break;
  }

  v290 = ValueAtIndex;
  mmcs_item_copy_ford_state_from_item(ValueAtIndex, key);
  if (!key[50])
  {
LABEL_382:
    v287 = v319;
    if (*(v290 + 216))
    {
      v292 = CFDictionaryGetValue(*(*v48 + 104), v290);
      mmcs_get_file_complete_metadata_only_file(v292);
    }

    goto LABEL_384;
  }

  v291 = CFDictionaryGetValue(theDictc, (*(v290 + 384) + *(v290 + 376)));
  if (v291)
  {
    mmcs_item_set_file_verification_key(v290, v291);
    goto LABEL_382;
  }

  v122 = 0;
  v356 = 40;
  v363 = "Duplicate Ranged Item Not Found with Requested Offset and Length";
LABEL_391:
  v50 = v316;
LABEL_392:
  opaque__file_reference_data__free_unpacked(v338, 0);
  if (theDictc)
  {
    CFRelease(theDictc);
  }

  CFRelease(v50);
  v50 = v278;
  if (v278)
  {
    goto LABEL_279;
  }

LABEL_280:
  v123 = v372;
  if (v372)
  {
LABEL_281:
    CFRetain(v123);
    v217 = 1;
    v218 = v372;
    v219 = v372;
    goto LABEL_302;
  }

  v10 = v370;
  if (!v363)
  {
LABEL_285:
    v219 = 0;
    goto LABEL_301;
  }

LABEL_283:
  v220 = mmcs_file_signature_to_hexstring(**(v367 + 8));
  v221 = *(*(v367 + 8) + 48);
  if (v221)
  {
    StringDescription = XCFDataCreateStringDescription(v221);
  }

  else
  {
    StringDescription = @"(null reference)";
  }

  v224 = mmcs_get_container_copy_simple_description(v10);
  v225 = *(v328 + 16);
  v349 = v36;
  if (v225)
  {
    v226 = mmcs_http_context_get_request_message(v225);
    v225 = *(v328 + 16);
    if (v225)
    {
      v225 = mmcs_http_context_get_response_message(v225);
      theDictb = v225;
      goto LABEL_292;
    }
  }

  else
  {
    v226 = 0;
  }

  theDictb = 0;
LABEL_292:
  v354 = v42;
  v227 = mmcs_logging_logger_default(v225, v223);
  if (os_log_type_enabled(v227, OS_LOG_TYPE_FAULT))
  {
    v228 = v48[11];
    v327 = v48;
    v229 = v37;
    v230 = v226;
    v231 = *(v367 + 32);
    v232 = mmcs_chunk_instance_get_length(v367);
    *buf = 136447746;
    *&buf[4] = v363;
    v375 = 2082;
    v376 = v220;
    v377 = 2114;
    v378 = StringDescription;
    v379 = 2114;
    v380 = v224;
    v381 = 2048;
    v382 = v228;
    v383 = 2048;
    v384 = v231;
    v226 = v230;
    v37 = v229;
    v48 = v327;
    v385 = 1024;
    LODWORD(v386) = v232;
    _os_log_impl(&dword_2577D8000, v227, OS_LOG_TYPE_FAULT, "FORD failed (%{public}s) for file %{public}s with reference %{public}@ in container %{public}@ at element index %lu at offset %llu length %u (relative to the container's range)", buf, 0x44u);
  }

  v233 = v48[11];
  v234 = *(v367 + 32);
  v235 = mmcs_chunk_instance_get_length(v367);
  v219 = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", v356, v226, theDictb, 0, @"FORD failed (%s) for file %s with reference %@ in container %@ at element index %lu at offset %llu length %u (relative to the container's range)", v236, v237, v363, v220, StringDescription, v224, v233, v234, v235);
  if (v220)
  {
    free(v220);
  }

  v36 = v349;
  v42 = v354;
  if (StringDescription)
  {
    CFRelease(StringDescription);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  v122 = 0;
LABEL_301:
  v218 = v372;
  v217 = v122 == 0;
LABEL_302:
  error = v219;
  if (v218)
  {
    CFRelease(v218);
  }

  v10 = v370;
  if (!v217)
  {
LABEL_305:
    v38 = v367;
    v238 = *(v367 + 8);
    v239 = *(v238 + 120);
    if (v239)
    {
      mmcs_engine_cache_ranged_items(*(**v25 + 32), *(v238 + 40), v239);
    }

    goto LABEL_307;
  }

LABEL_425:
  v332 = 0;
LABEL_26:
  v33 = v332;
  if (!v330 || v332)
  {
    if (v332)
    {
      v293 = *(v25 + 88);
      v294 = *(v25 + 48);
      *(v25 + 104) += v329;
      if (v293 < v294 && v360 && mmcs_request_is_container_resumable_limp_mode(**v25))
      {
        v33 = 0;
        if (v330)
        {
          *v330 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making some resumable progress.", v295, v296, v297, v298, v299);
        }

        return v33;
      }
    }

    goto LABEL_406;
  }

  CFRetain(error);
  v34 = error;
  *v330 = error;
  if (!error)
  {
    return v33;
  }

LABEL_407:
  CFRelease(v34);
  return v33;
}

uint64_t mmcs_get_container_schedule(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_2577D8000, "mmcs-get-schedule", *(a1 + 80), OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = *(a1 + 88);
  v6 = mmcs_container_check_expired(a1, a2, "get", *(v5 + 16));
  if (v6)
  {
    goto LABEL_2;
  }

  v10 = *v5;
  if (!*v5)
  {
    v20 = mmcs_logging_logger_default(v6, v7);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get state backref in container %p", a1);
    v23 = mmcs_logging_logger_default(v21, v22);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    *&buf[4] = v21;
    goto LABEL_25;
  }

  v11 = *v10;
  if (!*v10)
  {
    v24 = mmcs_logging_logger_default(v6, v7);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get request backref in container %p", a1);
    v23 = mmcs_logging_logger_default(v21, v25);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    *&buf[4] = v21;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_26;
  }

  v12 = mmcs_chunk_instance_offset(*v10);
  if (!v12)
  {
    v26 = mmcs_logging_logger_default(0, v13);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null engine backref in container %p", a1);
    v23 = mmcs_logging_logger_default(v21, v27);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v21;
      goto LABEL_25;
    }

LABEL_26:
    if (!v21)
    {
      goto LABEL_2;
    }

LABEL_54:
    CFRelease(v21);
    goto LABEL_2;
  }

  v14 = v12;
  if (*(a2 + 56) == 0.0)
  {
    v15 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"enqueueTime should be defined for get request");
      v18 = mmcs_logging_logger_default(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  v70 = 0;
  v54 = @"getContainer";
  v55 = *(*(a2 + 24) + 16);
  network_timeout_period = mmcs_request_get_network_timeout_period(v11);
  if (mmcs_request_is_background(v11))
  {
    v19 = *(*(a2 + 24) + 40);
  }

  else
  {
    v19 = 0;
  }

  v57 = v19;
  v58 = -1;
  v60 = 0;
  v61 = 0;
  body_size = mmcs_get_container_get_body_size(a1);
  v62 = handle_container_request_will_retry_after_error;
  v63 = handle_response_downloadChunks;
  v64 = handle_callback_downloadContainer;
  v65 = 0;
  v66 = mmcs_container_xmitcallback;
  v67 = a2;
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  v69 = mmcs_engine_owner(v14);
  v28 = 1;
  LOBYTE(v70) = 1;
  v71 = *(a2 + 56);
  v72 = v4;
  *cf = 0u;
  v53 = 0u;
  mmcs_read_stream_pool_parameters_make_pool(*(v14 + 40), cf);
  http_class = mmcs_request_get_http_class(v11);
  v31 = mmcs_http_context_create((a2 + 16), http_class, &v54);
  if (v31)
  {
    mmcs_http_context_set_to_mobileme(*(a2 + 16), 0);
    mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(*(v14 + 40), buf, *(a2 + 16));
    *cf = *buf;
    v53 = v75;
    v32 = *(*(a2 + 24) + 24);
    if (mmcs_get_req_context_get_current_request_metrics(v11))
    {
      v33 = *(*(a2 + 64) + 88);
      v34 = *(v33 + 16);
      v35 = v34 ? CFStringCreateWithCString(*MEMORY[0x277CBECE8], v34, 0x8000100u) : 0;
      mmcs_transaction_make_req_context_metrics(a2, **v33, v32, @"getContainer", v35);
      if (v35)
      {
        CFRelease(v35);
      }
    }

    mmcs_http_context_update_voucher(*(a2 + 16));
    mmcs_http_context_uuid_hash_code(*(a2 + 16));
    kdebug_trace();
    v28 = mmcs_http_context_send(*(a2 + 16), cf, *(v14 + 56)) == 0;
  }

  v36 = cf[1];
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v31)
  {
    if (!v28)
    {
      v8 = 1;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v37 = mmcs_logging_logger_default(v36, v30);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v43 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to send http message");
      v45 = mmcs_logging_logger_default(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v43)
      {
        CFRelease(v43);
      }
    }

    v46 = @"Unable to send http request";
    v47 = 1;
  }

  else
  {
    v48 = mmcs_logging_logger_default(v36, v30);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to create http context");
      v51 = mmcs_logging_logger_default(v49, v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v49;
        _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v49)
      {
        CFRelease(v49);
      }
    }

    v46 = @"Unable to create http context";
    v47 = 37;
  }

  v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v47, v46, v38, v39, v40, v41, v42);
  setErrorAndFailContainer(a1, v21);
  if (v21)
  {
    goto LABEL_54;
  }

LABEL_2:
  v8 = 0;
  if (v4)
  {
LABEL_3:
    os_release(v4);
  }

LABEL_4:
  os_activity_scope_leave(&state);
  return v8;
}

void setErrorAndFailContainer(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mmcs_container_set_error(a1, a2);
  }

  else
  {
    v3 = mmcs_logging_logger_default(a1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"There should always be an error set here for container %p", a1);
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  mmcs_get_state_fail_container(**(a1 + 88), a1);
}

uint64_t mmcs_get_container_add_method_completion_info(uint64_t a1, uint64_t a2)
{
  reporting_level = mmcs_request_get_reporting_level(***(a1 + 88));
  method_completion_info = mmcs_get_complete_create_method_completion_info(a1, a2, reporting_level, 1);

  return mmcs_transaction_add_method_completion_info(a2, method_completion_info);
}

void mmcs_get_container_failed_to_schedule_transaction(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1 + 68) = 4;
  v1 = ***(a1 + 88);
  has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(v1);
  if (!has_outstanding_asynchronous_work)
  {
    v4 = *(v1 + 304);
    if (!*(v4 + 24) && !*(v4 + 32))
    {
      v5 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 134217984;
        v7 = v1;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &v6, 0xCu);
      }

      mmcs_get_req_context_cleanup(v1, 0);
    }
  }
}

uint64_t mmcs_get_container_retry(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  is_proxy = mmcs_transaction_is_proxy(a2);
  if (is_proxy)
  {
    v6 = mmcs_logging_logger_default(is_proxy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"caching server failed; retrying with vendor");
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  v10 = **(a1 + 88);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  if (v13)
  {
    mmcs_http_context_invalidate(v13);
  }

  _mmcs_get_container_reset_for_retry(a1, a2);
  v14 = *(a2 + 16);
  if (v14)
  {
    C3BaseRelease(v14);
  }

  *(a2 + 16) = 0;
  *(a1 + 68) = 3;
  *(v12 + 48) = 2;
  *(v12 + 56) = CFAbsoluteTimeGetCurrent();
  v16 = mmcs_http_request_options_network_behavior_type(*(*(v12 + 24) + 24), v15);
  v17 = mmcs_request_type_for_behavior_and_activity(v16, 1);
  mmcs_container_requirements(a1);
  *&buf = 0;
  *(&buf + 1) = v12;
  v21 = v17;
  priority = mmcs_request_get_priority(v11);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = 0u;
  v24 = 0u;
  v29 = mmcs_container_schedule_request_callback;
  v30 = mmcs_container_cancel_request_callback;
  v31 = C3BaseRetain;
  v32 = C3BaseRelease;
  v18 = mmcs_chunk_instance_offset(v11);
  mmcs_request_queue_enqueue_request(*(v18 + 48), &buf, *(v12 + 56));
  return 1;
}

double _mmcs_get_container_reset_for_retry(void *a1, uint64_t a2)
{
  v3 = a1[11];
  mmcs_container_remember_error(a1, a2);
  mmcs_container_reset_error_for_retry(a1);
  v4 = *(a1[11] + 176);
  if (v4 == 1)
  {
    v10 = *(v3 + 88);
    if (v10 < *(v3 + 48))
    {
      v11 = *(v3 + 96);
      if (v11 >= 1)
      {
        v12 = *(*(v3 + 120) + 104 * v10 + 56);
        if (v11 >= *(v12 + 4))
        {
          v13 = *(v12 + 4);
        }

        else
        {
          v13 = *(v3 + 96);
        }

        mmcs_get_state_unprocess_chunk_data(*v3, a1, v12, v13);
      }
    }
  }

  else if (v4 == 2)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = 88;
      do
      {
        v8 = *(v3 + 120);
        v9 = *(v8 + v7);
        if (v9)
        {
          CFRelease(v9);
          v5 = *(v3 + 48);
        }

        *(v8 + v7) = 0;
        ++v6;
        v7 += 104;
      }

      while (v6 < v5);
    }
  }

  v14 = *(v3 + 112);
  if (v14)
  {
    C3BaseRelease(v14);
  }

  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 128) = *(*(v3 + 120) + 32);
  *(v3 + 136) = 0;
  return result;
}

void mmcs_get_container_finalize(uint64_t a1)
{
  v1 = *(a1 + 88);
  *v1 = 0;
  v2 = v1[2];
  if (v2)
  {
    free(v2);
  }

  v1[2] = 0;
  v3 = v1[3];
  if (v3)
  {
    free(v3);
  }

  v1[3] = 0;
  v4 = v1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v1[1] = 0;
  v5 = v1[14];
  if (v5)
  {
    C3BaseRelease(v5);
  }

  v1[14] = 0;
  v6 = v1[18];
  if (v6)
  {
    C3BaseRelease(v6);
  }

  v1[18] = 0;
  v7 = v1[19];
  if (v7)
  {
    C3BaseRelease(v7);
  }

  v1[19] = 0;
  v8 = v1[20];
  if (v8)
  {
    C3BaseRelease(v8);
  }

  v1[20] = 0;
  v9 = v1[15];
  if (v9)
  {
    if (!v1[5])
    {
      goto LABEL_20;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      mmcs_chunk_instance_finalize((v1[15] + v10));
      ++v11;
      v10 += 104;
    }

    while (v11 < v1[5]);
    v9 = v1[15];
    if (v9)
    {
LABEL_20:
      free(v9);
    }

    v1[15] = 0;
  }

  v1[5] = 0;
  v1[6] = 0;
  v12 = v1[9];
  if (v12)
  {
    free(v12);
  }

  v1[9] = 0;
  v13 = v1[23];
  if (v13)
  {
    C3BaseRelease(v13);
    v1[23] = 0;
  }
}

void mmcs_get_container_cancel_transaction(void *a1, unsigned int *a2, __CFError *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2[12] == 2)
  {
    v6 = a1[11];
    v7 = mmcs_chunk_instance_offset(**v6);
    mmcs_transaction_cancel_enqueued(a2, *(v7 + 48), a3);
    if (a1[5])
    {
      v8 = a1[5];
    }

    else
    {
      v8 = a3;
    }

    setErrorAndFailContainer(a1, v8);
    has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(**v6);
    if (!has_outstanding_asynchronous_work)
    {
      v11 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = **v6;
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &v13, 0xCu);
      }

      mmcs_get_req_context_cleanup(**v6, 0);
    }
  }

  else
  {
    mmcs_transaction_cancel_not_enqueued(a2, a3);

    mmcs_container_set_error(a1, a3);
  }
}

CFAbsoluteTime mmcs_time_convert_date_header_to_cfabsolutetime(const __CFString *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  atp = 0.0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = CFDateFormatterCreate(v2, v3, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (v5)
  {
    v6 = v5;
    v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(v2, 0.0);
    if (v7)
    {
      v8 = v7;
      CFDateFormatterSetProperty(v6, *MEMORY[0x277CBEDF8], v7);
      v9 = 0;
      while (1)
      {
        CFDateFormatterSetFormat(v6, off_279844F48[v9]);
        if (CFDateFormatterGetAbsoluteTimeFromString(v6, a1, 0, &atp))
        {
          break;
        }

        if (++v9 == 3)
        {
          atp = 0.0;
          break;
        }
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }

  CFRelease(v4);
  return atp;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HttpContextPerformBlockAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = mmcs_nshttp_copy_perform_target([v3 hc]);
  if (!v5)
  {
    v10 = mmcs_logging_logger_default(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HttpContextPerformBlockAsync_cold_1(v3);
    }

    __assert_rtn("HttpContextPerformBlockAsync", "MMCSHTTPContext.m", 54, "performTarget");
  }

  v7 = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __HttpContextPerformBlockAsync_block_invoke;
  v11[3] = &unk_279845008;
  v12 = v3;
  v13 = v4;
  v8 = v4;
  v9 = v3;
  mmcs_perform_target_async(v7, v11);
  C3BaseRelease(v7);
}

void appendTrailers(uint64_t a1, uint64_t a2)
{
  v4 = mmcs_nshttp_get_http_context(a1);
  v3 = [v4 inputStream];
  [v3 setProperty:a2 forKey:*MEMORY[0x277CBEC68]];
}

void HttpContextPerformBlockSync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_semaphore_create(0);
  v6 = mmcs_nshttp_copy_perform_target([v3 hc]);
  if (!v6)
  {
    v11 = mmcs_logging_logger_default(0, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      HttpContextPerformBlockAsync_cold_1(v3);
    }

    __assert_rtn("HttpContextPerformBlockSync", "MMCSHTTPContext.m", 72, "performTarget");
  }

  v8 = v6;
  dispatch_retain(v5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __HttpContextPerformBlockSync_block_invoke;
  v12[3] = &unk_279845058;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v9 = v4;
  v10 = v3;
  mmcs_perform_target_async(v8, v12);
  C3BaseRelease(v8);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
}

void sub_257801E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state)
{
  objc_sync_exit(v21);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void __HttpContextPerformBlockAsync_block_invoke(uint64_t a1)
{
  if (*([*(a1 + 32) hc] + 592))
  {
    os_retain(*([*(a1 + 32) hc] + 592));
  }

  [*(a1 + 32) hc];
  voucher_adopt();
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x277CF36A0] annotateCallstackForContainerType:objc_msgSend(*(a1 + 32) block:{"containerType"), *(a1 + 40)}];
  objc_autoreleasePoolPop(v2);
  v3 = voucher_adopt();
  if (v3)
  {

    os_release(v3);
  }
}

void __HttpContextPerformBlockSync_block_invoke(uint64_t a1)
{
  if (*([*(a1 + 32) hc] + 592))
  {
    os_retain(*([*(a1 + 32) hc] + 592));
  }

  [*(a1 + 32) hc];
  voucher_adopt();
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x277CF36A0] annotateCallstackForContainerType:objc_msgSend(*(a1 + 32) block:{"containerType"), *(a1 + 40)}];
  objc_autoreleasePoolPop(v2);
  v3 = voucher_adopt();
  if (v3)
  {
    os_release(v3);
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v4 = *(a1 + 48);

  dispatch_release(v4);
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void mmcs_perform_dispatch_target_stream_schedule(int a1, CFTypeRef cf)
{
  v2 = CFGetTypeID(cf);
  if (v2 == CFReadStreamGetTypeID())
  {

    JUMPOUT(0x259C66210);
  }

  TypeID = CFWriteStreamGetTypeID();
  if (v2 == TypeID)
  {

    JUMPOUT(0x259C66740);
  }

  v5 = mmcs_logging_logger_default(TypeID, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to schedule request", v6, 2u);
  }
}

void mmcs_perform_dispatch_target_stream_unschedule(int a1, CFTypeRef cf)
{
  v2 = CFGetTypeID(cf);
  if (v2 == CFReadStreamGetTypeID())
  {

    JUMPOUT(0x259C66210);
  }

  TypeID = CFWriteStreamGetTypeID();
  if (v2 == TypeID)
  {

    JUMPOUT(0x259C66740);
  }

  v5 = mmcs_logging_logger_default(TypeID, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to unschedule request", v6, 2u);
  }
}

void mmcs_get_file_close_temp_reader_writer(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 24);
  if (v3)
  {
    MMCSItemReaderWriterEnsureClosed(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
      C3BaseRelease(v4);
    }

    *(a1 + 24) = 0;
  }

  v7 = CFAbsoluteTimeGetCurrent() - Current;
  if (v7 > 0.25)
  {
    v8 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "Close of item took %.3f seconds", &v9, 0xCu);
    }
  }
}

void mmcs_get_file_finalize(void *a1)
{
  if (*a1)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  a1[5] = 0;
  mmcs_get_file_close_temp_reader_writer(a1);
  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  a1[2] = 0;
  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[6] = 0;
  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[7] = 0;
  v7 = a1[15];
  if (v7)
  {
    C3BaseRelease(v7);
  }

  a1[15] = 0;
}

uint64_t mmcs_get_file_init(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 115) = 0;
  *(a1 + 113) = a4;
  *(a1 + 114) = a5;
  return 1;
}

uint64_t mmcs_get_file_process_chunk_reference_with_padding(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, CFTypeRef *a6)
{
  is_outstanding_chunk_reference = mmcs_item_is_outstanding_chunk_reference(a1[1], a2);
  result = 1;
  if (is_outstanding_chunk_reference)
  {
    context[0] = a1;
    context[1] = a3;
    context[2] = a4;
    context[3] = a5;
    v18 = 1;
    p_cf = &cf;
    cf = 0;
    v14 = *(a2 + 48);
    if (v14)
    {
      mmcs_get_file_process_chunk_instance_with_padding(v14, context);
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      CFSetApplyFunction(v15, mmcs_get_file_process_chunk_instance_with_padding, context);
    }

    mmcs_item_update_get_progress(a1[1], a5);
    if (mmcs_chunk_instance_get_length(*(a2 + 48)) == a5 + a3)
    {
      mmcs_item_remove_outstanding_chunk_reference(a1[1], a2);
      mmcs_get_state_decrement_outstanding_chunk_references_count(*a1, a2);
    }

    v16 = cf;
    if (a6 && !v18 && cf)
    {
      CFRetain(cf);
      v16 = cf;
      *a6 = cf;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    return v18;
  }

  return result;
}

void mmcs_get_file_process_chunk_instance_with_padding(uint64_t a1, uint64_t ***a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!mmcs_chunk_instance_is_chunk_reference(a1))
  {
    mmcs_get_file_process_chunk_instance_with_padding_cold_1();
  }

  v4 = *(a1 + 8);
  if ((*a2)[1] == v4 && CFBooleanGetValue(*(a1 + 72)) && *(a2 + 32) && mmcs_item_is_outstanding_chunk_reference(v4, *(a1 + 56)))
  {
    v45 = 0;
    cf = 0;
    mmcs_chunk_instance_offset(***a2);
    v5 = *(*(a1 + 56) + 4) - a2[1];
    v6 = v5 & ~(v5 >> 63);
    if (v6 >= a2[3])
    {
      v7 = a2[3];
    }

    else
    {
      v7 = v6;
    }

    if (mmcs_get_file_ensure_temp_file_is_open_with_length_check(*a2, &cf, -1))
    {
      if (v7 < 1)
      {
        v11 = 0;
        v45 = 0;
      }

      else
      {
        v8 = *a2;
        v9 = (*a2)[3];
        v10 = mmcs_chunk_instance_offset(a1);
        if (!MMCSItemReaderWriterWrite(v9, v8 + 15, a2[1] + v10, a2[2], v7, &v45, &cf))
        {
          if (cf)
          {
LABEL_25:
            v22 = mmcs_cferror_copy_description(cf);
            v24 = mmcs_logging_logger_default(v22, v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v22);
              v27 = mmcs_logging_logger_default(v25, v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v48 = v25;
                _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v25)
              {
                CFRelease(v25);
              }
            }

            if (v22)
            {
              CFRelease(v22);
            }

            v28 = a2[5];
            if (v28 && !*v28)
            {
              CFRetain(cf);
              *a2[5] = cf;
            }

            *(a2 + 32) = 0;
LABEL_36:
            if (cf)
            {
              CFRelease(cf);
            }

            return;
          }

          v17 = mmcs_chunk_instance_copy_description(a1);
          v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Unknown error occurred for %@", v29, v30, v31, v32, v33, v17);
LABEL_23:
          cf = v21;
          if (v17)
          {
            CFRelease(v17);
          }

          goto LABEL_25;
        }

        v11 = v45;
      }

      if (v11 == v7)
      {
        if (mmcs_chunk_instance_get_length(a1) != *(a2 + 6) + *(a2 + 2))
        {
          goto LABEL_36;
        }

        RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(a1);
        CKRegisteredChunkSetRowID();
        if (*(*a2 + 113) && (CKRelocateTemporaryChunk() & 1) == 0)
        {
          v34 = mmcs_chunk_instance_copy_description(a1);
          cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 20, @"Unable to register chunk instance %@", v35, v36, v37, v38, v39, v34);
          if (v34)
          {
            CFRelease(v34);
          }

          v20 = 1;
        }

        else
        {
          v20 = 0;
        }

        v40 = (*a2)[3];
        v41 = mmcs_chunk_instance_offset(a1);
        MMCSItemReaderWriterValidated(v40, 2, v41, *(*(a1 + 56) + 4), 0);
        if (RegisteredChunk)
        {
          free(RegisteredChunk);
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v17 = mmcs_chunk_instance_copy_description(a1);
      v43 = v7;
      v44 = v45;
      v42 = v17;
      v18 = @"Unable to write all chunk data for %@: %lu read %lu written";
    }

    else
    {
      v17 = mmcs_chunk_instance_copy_description(a1);
      v42 = (*a2)[3];
      v43 = v17;
      v18 = @"TempReaderWriter (%p) not open for %@";
    }

    v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, v18, v12, v13, v14, v15, v16, v42, v43, v44);
    goto LABEL_23;
  }
}

void mmcs_get_file_unprocess_chunk_reference(uint64_t a1, void *a2, uint64_t a3)
{
  if (mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), a2))
  {
    v8[0] = a1;
    v8[1] = a3;
    v6 = a2[6];
    if (v6)
    {
      mmcs_get_file_unprocess_chunk_instance(v6, v8);
    }

    v7 = a2[7];
    if (v7)
    {
      CFSetApplyFunction(v7, mmcs_get_file_unprocess_chunk_instance, v8);
    }
  }
}

void mmcs_get_file_unprocess_chunk_instance(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  is_chunk_reference = mmcs_chunk_instance_is_chunk_reference(a1);
  if (!is_chunk_reference)
  {
    mmcs_get_file_unprocess_chunk_instance_cold_1();
  }

  v6 = *(a1 + 8);
  if (*(*a2 + 8) == v6)
  {
    if (mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), *(a1 + 56)))
    {
      v11 = a2[1];

      mmcs_item_update_get_unprogress(v6, v11);
    }
  }

  else
  {
    v7 = mmcs_logging_logger_default(is_chunk_reference, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"skipping chunk instance for now");
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", &v12, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }
}

uint64_t mmcs_get_file_process_derivative_buffer(uint64_t a1, unint64_t a2, int8x16_t *a3, unint64_t a4, int a5, const void *a6, CFTypeRef *a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = 0;
  cf = 0;
  if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, &cf, -1))
  {
    v34 = *(a1 + 24);
    v21 = @"TempReaderWriter (%p) not open";
LABEL_6:
    v22 = 11;
LABEL_7:
    v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v22, v21, v14, v15, v16, v17, v18, v34, v35);
    cf = v23;
    goto LABEL_8;
  }

  v19 = MMCSItemReaderWriterWrite(*(a1 + 24), (a1 + 120), a2, a3, a4, &v36, &cf);
  if (v19)
  {
    v20 = v19;
    if (v36 == a4)
    {
      goto LABEL_18;
    }

    v34 = a4;
    v35 = v36;
    v21 = @"Unable to write all deriviative data: %lu read %lu written";
    goto LABEL_6;
  }

  v23 = cf;
  if (!cf)
  {
    v21 = @"Unknown error occurred";
    v22 = 39;
    goto LABEL_7;
  }

LABEL_8:
  v24 = mmcs_cferror_copy_description(v23);
  v26 = mmcs_logging_logger_default(v24, v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v24);
    v29 = mmcs_logging_logger_default(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (!a7 || *a7)
  {
    v20 = 0;
LABEL_18:
    v30 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  CFRetain(cf);
  v20 = 0;
  v30 = cf;
  *a7 = cf;
  if (v30)
  {
LABEL_19:
    CFRelease(v30);
  }

LABEL_20:
  if (v20)
  {
    mmcs_item_update_get_derivative_progress(*(a1 + 8), a4);
  }

  if (a5 && !*(a1 + 115))
  {
    mmcs_get_request_notify_item_with_pending_progress(**a1, *(a1 + 8));
    v31 = *(a1 + 8);
    *(v31 + 16) = a4 + a2;
    *(v31 + 24) = a4 + a2;
    mmcs_item_set_derivative_digest_results_for_file_validation(v31, a6);
    mmcs_get_file_candidate_completed_with_success(a1, v32);
  }

  return v20;
}

void mmcs_get_file_candidate_completed_with_success(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(v3, a2);
  os_activity_scope_enter(request_activity_marker, &state);
  if (*(a1 + 115))
  {
    goto LABEL_41;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = *(*(a1 + 8) + 16);
    if (v8 <= 0)
    {
      mmcs_get_file_candidate_completed_with_success_cold_1();
    }

    if (*(v7 + 32) < v8)
    {
      *buf = 0;
      if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, buf, -1))
      {
LABEL_32:
        error = *buf;
        if (*buf)
        {
          goto LABEL_37;
        }

        v15 = @"An unknown error occurred while opening the item reader writer.";
        goto LABEL_36;
      }

      v5 = MMCSItemReaderWriterSeek(*(a1 + 24), *(a1 + 120), *(*(a1 + 8) + 16), buf);
      if (!v5)
      {
        error = *buf;
        if (*buf)
        {
          goto LABEL_37;
        }

        v15 = @"An unknown error occurred while seeking the item reader writer.";
        goto LABEL_36;
      }
    }

    v9 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      file_sparse_context_contains_zero_filled_block = mmcs_get_file_sparse_context_contains_zero_filled_block(*(a1 + 120));
      v11 = "Sparse";
      if (!file_sparse_context_contains_zero_filled_block)
      {
        v11 = "Dense";
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEFAULT, "Sparse Aware Output Produced %s File.", buf, 0xCu);
    }
  }

  v12 = (a1 + 8);
  if (mmcs_item_is_metadata_only(*(a1 + 8)))
  {
    goto LABEL_12;
  }

  if (CFSetGetCount(*(*v12 + 280)) >= 1)
  {
    mmcs_get_file_candidate_completed_with_success_cold_2(a1 + 8, v13);
  }

  *buf = 0;
  if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, buf, -1))
  {
    goto LABEL_32;
  }

  if (MMCSItemReaderWriterSync(*(a1 + 24), buf))
  {
LABEL_12:
    *(a1 + 115) = 1;
    ++*(*a1 + 24);
    if (mmcs_item_is_metadata_only(*(a1 + 8)) || (has_requested_length_at_file_offset = mmcs_item_has_requested_length_at_file_offset(*v12)) && !*(*v12 + 400) || !*(a1 + 114))
    {
      mmcs_get_file_finalize_file_after_validation(a1);
    }

    else
    {
      v18 = mmcs_logging_logger_default(has_requested_length_at_file_offset, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(*v12 + 40);
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_INFO, "item %llu being validated", buf, 0xCu);
      }

      is_validation_queue_empty = mmcs_get_request_is_validation_queue_empty(v3);
      if (is_validation_queue_empty)
      {
        if (*(a1 + 24))
        {
          if (gMMCS_DebugLevel >= 5)
          {
            v22 = mmcs_logging_logger_default(is_validation_queue_empty, v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"leaving temp file for item %llu open for reuse", *(*v12 + 40));
              v25 = mmcs_logging_logger_default(v23, v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v23;
                _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v23)
              {
                CFRelease(v23);
              }
            }
          }
        }
      }

      else
      {
        mmcs_get_file_close_temp_reader_writer(a1);
      }

      mmcs_get_req_validate_get_file(v3, a1);
    }

    goto LABEL_41;
  }

  error = *buf;
  if (!*buf)
  {
    v15 = @"An unknown error occurred while syncing the item reader writer.";
LABEL_36:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, v15);
    *buf = error;
  }

LABEL_37:
  mmcs_get_file_completed_with_error(a1, error);
  if (*buf)
  {
    CFRelease(*buf);
  }

LABEL_41:
  os_activity_scope_leave(&state);
}

uint64_t mmcs_get_file_abort_writing_file(uint64_t **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = mmcs_chunk_instance_offset(v2);
  req_context_use_reader_writer_callback = mmcs_get_req_context_use_reader_writer_callback(**a1);
  if (!req_context_use_reader_writer_callback)
  {
    if (!*(v3 + 170) || (req_context_use_reader_writer_callback = mmcs_get_request_get_failed_to_preallocate(v2, v5), req_context_use_reader_writer_callback) && *(a1 + 112))
    {
      v7 = mmcs_logging_logger_default(req_context_use_reader_writer_callback, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = a1[2];
        *buf = 136315138;
        v21 = v8;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_INFO, "Unlinking %s due to abort", buf, 0xCu);
      }

      mmcs_get_file_close_temp_reader_writer(a1);
      v9 = a1[2];
      if (v9)
      {
        unlink(v9);
        v10 = a1[2];
        if (v10)
        {
          free(v10);
        }
      }

      a1[2] = 0;
      CKUnregisterTemporaryChunks();
      CKUnregisterFile();
      v11 = mmcs_engine_force_commit(v3);
      v13 = mmcs_logging_logger_default(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = a1[1][5];
        *buf = 134217984;
        v21 = v14;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_INFO, "Committed unregister of partially downloaded item %lld and its temporary chunks", buf, 0xCu);
      }
    }

    else
    {
      v15 = mmcs_logging_logger_default(req_context_use_reader_writer_callback, v5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Leaving partial results for item %lld in chunk store and file %s", a1[1][5], a1[2]);
        v18 = mmcs_logging_logger_default(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v21 = v16;
          _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      mmcs_get_file_close_temp_reader_writer(a1);
      v19 = a1[2];
      if (v19)
      {
        free(v19);
      }

      a1[2] = 0;
    }
  }

  return 1;
}

void mmcs_get_file_completed_with_error(uint64_t result, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(result + 115))
  {
    v4 = **result;
    Count = CFSetGetCount(*(*(result + 8) + 280));
    if (Count >= 1)
    {
      v7 = mmcs_logging_logger_default(Count, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Decrementing outstanding chunk references due to item %lld completing.", *(*(result + 8) + 40));
        v10 = mmcs_logging_logger_default(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v8;
          _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      CFSetApplyFunction(*(*(result + 8) + 280), mmcs_get_file_decrement_outstanding_chunk_references_count, *result);
      mmcs_item_remove_all_outstanding_chunk_reference(*(result + 8));
    }

    *(result + 115) = 1;
    ++*(*result + 24);
    v11 = mmcs_logging_logger_default(Count, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Completed download of file for item %lld", *(*(result + 8) + 40));
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    v15 = *(result + 8);
    mmcs_get_file_abort_writing_file(result);
    mmcs_get_item_progress_make_done_error(a2, v16, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v15, buf);
  }
}

void mmcs_get_file_metadata_completed_with_error(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(result + 115))
  {
    v4 = **result;
    Count = CFSetGetCount(*(*(result + 8) + 280));
    if (Count >= 1 && gMMCS_DebugLevel >= 5)
    {
      v8 = mmcs_logging_logger_default(Count, v6);
      Count = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (Count)
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstanding chunk references is not empty! %@", *(*(result + 8) + 280));
        v11 = mmcs_logging_logger_default(v9, v10);
        Count = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        if (Count)
        {
          *buf = 138543362;
          v19 = v9;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }

    *(result + 115) = 1;
    ++*(*result + 24);
    v12 = *(result + 8);
    v13 = mmcs_logging_logger_default(Count, v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Completed download of metadata for item %lld with error %@", *(v12 + 40), a2);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    mmcs_get_item_progress_make_done_error(a2, v14, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v12, buf);
  }
}

void mmcs_get_file_finalize_file_after_validation(uint64_t **a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = mmcs_chunk_instance_offset(v2);
  v4 = a1[1];
  mmcs_get_file_close_temp_reader_writer(a1);
  bzero(__str, 0x400uLL);
  req_context_use_reader_writer_callback = mmcs_get_req_context_use_reader_writer_callback(v2);
  if (req_context_use_reader_writer_callback || (req_context_use_reader_writer_callback = mmcs_item_is_metadata_only(a1[1]), req_context_use_reader_writer_callback))
  {
LABEL_19:
    if (*(a1 + 113))
    {
      req_context_use_reader_writer_callback = CKConvertTemporaryChunks();
      if ((req_context_use_reader_writer_callback & 1) == 0)
      {
        v27 = mmcs_logging_logger_default(req_context_use_reader_writer_callback, v6);
        req_context_use_reader_writer_callback = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (req_context_use_reader_writer_callback)
        {
          v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert temporary chunks for item %lld", v4[5]);
          v30 = mmcs_logging_logger_default(v28, v29);
          req_context_use_reader_writer_callback = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (req_context_use_reader_writer_callback)
          {
            *buf = 138543362;
            v59 = v28;
            _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v28)
          {
            CFRelease(v28);
          }
        }
      }
    }

    v31 = mmcs_logging_logger_default(req_context_use_reader_writer_callback, v6);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v4[5];
      *buf = 134217984;
      v59 = v32;
      _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_DEFAULT, "itemId %llu completed", buf, 0xCu);
    }

    if (mmcs_get_req_context_use_reader_writer_callback(v2))
    {
      v33 = 0;
    }

    else
    {
      v33 = __str;
    }

    mmcs_get_req_item_set_done_success_and_notify_item(v2, v4, v33);
    return;
  }

  v7 = a1[2];
  if (!v7)
  {
    mmcs_get_file_finalize_file_after_validation_cold_1();
  }

  if (gMMCS_DebugLevel >= 4)
  {
    is_apple_file_system = mmcs_engine_is_apple_file_system(v3);
    v7 = a1[2];
    if (is_apple_file_system)
    {
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v9 = mmcs_file_extents(v7, &v57, &v56, &v55, &v54);
      v10 = v9;
      v12 = mmcs_logging_logger_default(v9, v11);
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v14 = "Error retrieving file extent information.";
          v15 = v13;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = 2;
LABEL_11:
          _os_log_impl(&dword_2577D8000, v15, v16, v14, buf, v17);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[1][5];
        *buf = 134219008;
        v59 = v18;
        v60 = 2048;
        v61 = v57;
        v62 = 2048;
        v63 = v56;
        v64 = 2048;
        v65 = v55;
        v66 = 2048;
        v67 = v54;
        v14 = "itemId %llu had %llu bytes in %llu blocks represented by blocks of width %llu bytes and %llu extents.";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 52;
        goto LABEL_11;
      }

      v7 = a1[2];
    }
  }

  v19 = ub_dirname_alloced(v7);
  if (v19)
  {
    v20 = v19;
    snprintf(__str, 0x400uLL, "%s/new-0x%016llx", v19, v4[5]);
    free(v20);
  }

  else
  {
    __strlcpy_chk();
    v21 = __strlcat_chk();
  }

  v23 = mmcs_logging_logger_default(v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[2];
    v26 = v4[5];
    *buf = 136315650;
    v59 = v25;
    v60 = 2080;
    v61 = __str;
    v62 = 2048;
    v63 = v26;
    _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEFAULT, "Renaming %s to %s for item %lld", buf, 0x20u);
  }

  rename(a1[2], __str, v24);
  if (req_context_use_reader_writer_callback != -1)
  {
    goto LABEL_19;
  }

  v34 = __error();
  v35 = *v34;
  v37 = mmcs_logging_logger_default(v34, v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = *MEMORY[0x277CBECE8];
    v39 = a1[2];
    v40 = strerror(v35);
    v41 = CFStringCreateWithFormat(v38, 0, @"Failed to rename %s to %s: %s", v39, __str, v40);
    v43 = mmcs_logging_logger_default(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = v41;
      _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v41)
    {
      CFRelease(v41);
    }
  }

  v44 = a1[2];
  v45 = strerror(v35);
  file_error_with_format = mmcs_cferror_create_file_error_with_format(v35, @"Failed to rename %s to %s: %s(%d)", v46, v47, v48, v49, v50, v51, v44, __str, v45, v35);
  mmcs_get_file_abort_writing_file(a1);
  mmcs_get_item_progress_make_done_error(file_error_with_format, v53, buf);
  mmcs_get_request_set_progress_and_notify_item(v2, v4, buf);
  if (file_error_with_format)
  {
    CFRelease(file_error_with_format);
  }
}

uint64_t mmcs_get_file_ensure_temp_file_is_open_with_length_check(uint64_t **a1, CFTypeRef *a2, off_t a3)
{
  v163 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v6 = a1 + 3;
  if (a1[3])
  {
    return 1;
  }

  v8 = **a1;
  v9 = mmcs_chunk_instance_offset(v8);
  if ((mmcs_get_req_context_use_reader_writer_callback(**a1) == 0) != (a1[2] != 0))
  {
    mmcs_get_file_ensure_temp_file_is_open_with_length_check_cold_1();
  }

  if (!mmcs_get_req_context_use_reader_writer_callback(**a1))
  {
    v15 = access(a1[2], 0);
    memset(&cf, 0, sizeof(cf));
    v16 = open(a1[2], 514, 384);
    v160 = 0;
    if ((v16 & 0x80000000) != 0)
    {
      v39 = __error();
      v40 = *v39;
      v42 = mmcs_logging_logger_default(v39, v41);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      v44 = MEMORY[0x277CBECE8];
      if (v43)
      {
        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open/create file path %s for item %lld", a1[2], a1[1][5]);
        v47 = mmcs_logging_logger_default(v45, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 138543362;
          *&buf.st_mode = v45;
          _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v45)
        {
          CFRelease(v45);
        }
      }

      if (!a2)
      {
        return 0;
      }

      Mutable = CFStringCreateMutable(*v44, 0);
      v49 = ub_dirname_alloced(a1[2]);
      if (v49)
      {
        v50 = v49;
        while (1)
        {
          if (CFStringGetLength(Mutable) >= 1)
          {
            CFStringAppend(Mutable, @"\n");
          }

          memset(&buf, 0, sizeof(buf));
          if (stat(v50, &buf) == -1)
          {
            v52 = __error();
            v53 = *v52;
            v150 = strerror(*v52);
            CFStringAppendFormat(Mutable, 0, @"stat (%s) failed: %s (%d)", v50, v150, v53);
          }

          else
          {
            v51 = (buf.st_mode & 0xF000) == 0x4000 ? "isDir" : "isNotDir";
            CFStringAppendFormat(Mutable, 0, @"stat (%s) %s", v50, v51, v151);
          }

          v54 = *v50;
          if (!(v54 == 47 ? -v50[1] : 47 - v54))
          {
            break;
          }

          v56 = ub_dirname_alloced(v50);
          free(v50);
          v50 = v56;
          if (!v56)
          {
            goto LABEL_92;
          }
        }

        free(v50);
      }

LABEL_92:
      v80 = a1[2];
      v81 = a1[1][5];
      v82 = strerror(v40);
      *a2 = mmcs_cferror_create_file_error_with_format(v40, @"Unable to open file path %s for item %lld: %s\n%@\n", v83, v84, v85, v86, v87, v88, v80, v81, v82, Mutable);
      if (!Mutable)
      {
        return 0;
      }

      v14 = Mutable;
      goto LABEL_22;
    }

    v17 = v16;
    if (fstat(v16, &cf))
    {
      v18 = __error();
      v19 = *v18;
      v21 = mmcs_logging_logger_default(v18, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get stat file path %s for item %lld", a1[2], a1[1][5]);
        v24 = mmcs_logging_logger_default(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 138543362;
          *&buf.st_mode = v22;
          _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v22)
        {
          CFRelease(v22);
        }
      }

      v25 = a1[2];
      v26 = a1[1][5];
      v27 = strerror(v19);
      file_error_with_format = mmcs_cferror_create_file_error_with_format(v19, @"Unable to stat file path %s for item %lld: %s", v28, v29, v30, v31, v32, v33, v25, v26, v27);
      v35 = *a1;
      v36 = a1[1];
      v37 = *v35;
      mmcs_get_item_progress_make_done_error(file_error_with_format, v38, &buf);
      mmcs_get_request_set_progress_and_notify_item(v37, v36, &buf);
      if (a2)
      {
        *a2 = CFRetain(file_error_with_format);
      }

      if (file_error_with_format)
      {
        CFRelease(file_error_with_format);
      }

      close(v17);
      return 0;
    }

    is_derivative = mmcs_item_is_derivative(a1[1]);
    if ((a3 & 0x8000000000000000) == 0 || !is_derivative)
    {
      if (a3 < 0)
      {
        a3 = a1[1][2];
      }

      if (cf.st_size > a3)
      {
        v59 = mmcs_logging_logger_default(is_derivative, v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = a1[1];
          v61 = v60[5];
          v62 = v60[2];
          buf.st_dev = 134218496;
          *&buf.st_mode = v61;
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = cf.st_size;
          HIWORD(buf.st_gid) = 2048;
          *&buf.st_rdev = v62;
          _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_ERROR, "Truncating oversized temp file %llu of %llu bytes to %llu bytes", &buf, 0x20u);
        }

        if (ftruncate(v17, a1[1][2]) == -1)
        {
          v63 = __error();
          v64 = *v63;
          v66 = mmcs_logging_logger_default(v63, v65);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = strerror(v64);
            buf.st_dev = 136315138;
            *&buf.st_mode = v67;
            _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "Failed to truncate temp file with error %s", &buf, 0xCu);
          }
        }
      }
    }

    if (mmcs_item_get_default_reader_writer_sparse_aware(a1[1]))
    {
      sparse_block_size = mmcs_engine_get_sparse_block_size();
    }

    else
    {
      sparse_block_size = 0;
    }

    if (v15 && !sparse_block_size && mmcs_engine_is_apple_file_system(v9) && !mmcs_item_is_derivative(a1[1]) && !mmcs_item_has_requested_length_at_file_offset(a1[1]))
    {
      BOOLean_from_cfpreferences_object_for_key = mmcs_get_BOOLean_from_cfpreferences_object_for_key(@"UsePreallocate", 1);
      v90 = BOOLean_from_cfpreferences_object_for_key;
      v92 = mmcs_logging_logger_default(BOOLean_from_cfpreferences_object_for_key, v91);
      v93 = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
      if (v90)
      {
        if (v93)
        {
          v94 = a1[1];
          v95 = v94[2];
          v96 = v94[5];
          buf.st_dev = 134218240;
          *&buf.st_mode = v95;
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = v96;
          _os_log_impl(&dword_2577D8000, v92, OS_LOG_TYPE_DEFAULT, "Preallocating %llu bytes for itemId %llu,", &buf, 0x16u);
        }

        *(a1 + 112) = 1;
        Current = CFAbsoluteTimeGetCurrent();
        v98 = a1[1];
        v100 = v98[2];
        v99 = v98 + 2;
        if (v100 < 1)
        {
          v101 = 0;
          v103 = 0;
        }

        else
        {
          v101 = 0;
          v102 = 1;
          while (1)
          {
            v103 = v102;
            v158 = 0;
            v159 = 0;
            v157[0] = 0x30000000ALL;
            v104 = *v99 - v101;
            v157[1] = 0;
            v158 = v104;
            v105 = fcntl(v17, 42, v157);
            if (v105 == -1)
            {
              v112 = __error();
              v113 = *v112;
              __errnum = mmcs_logging_logger_default(v112, v114);
              if (!os_log_type_enabled(__errnum, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_111;
              }

              v115 = a1[1];
              v152 = v115[5];
              v153 = v115[2];
              v154 = v158;
              v116 = strerror(v113);
              buf.st_dev = 134219010;
              *&buf.st_mode = v152;
              WORD2(buf.st_ino) = 2048;
              *(&buf.st_ino + 6) = v153;
              HIWORD(buf.st_gid) = 2048;
              v117 = __errnum;
              *&buf.st_rdev = v154;
              LOWORD(buf.st_atimespec.tv_sec) = 1024;
              *(&buf.st_atimespec.tv_sec + 2) = v113;
              HIWORD(buf.st_atimespec.tv_sec) = 2080;
              buf.st_atimespec.tv_nsec = v116;
              v118 = "Preallocation for itemId %llu of %llu bytes failed to allocate %llu bytes with posix error %d (%s).";
              v119 = 48;
              goto LABEL_110;
            }

            if (v159 <= 0)
            {
              break;
            }

            v101 += v159;
            v107 = a1[1];
            v108 = v107[2];
            v99 = v107 + 2;
            v102 = v103 + 1;
            if (v101 >= v108)
            {
              goto LABEL_111;
            }
          }

          v120 = mmcs_logging_logger_default(v105, v106);
          if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }

          v121 = a1[1];
          v122 = v121[5];
          v123 = v121[2];
          buf.st_dev = 134218496;
          *&buf.st_mode = v122;
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = v123;
          HIWORD(buf.st_gid) = 2048;
          *&buf.st_rdev = v158;
          v118 = "Preallocation for itemId %llu of %llu bytes failed to allocate %llu bytes.";
          v117 = v120;
          v119 = 32;
LABEL_110:
          _os_log_impl(&dword_2577D8000, v117, OS_LOG_TYPE_ERROR, v118, &buf, v119);
        }

LABEL_111:
        v126 = CFAbsoluteTimeGetCurrent() - Current;
        if (v126 > 0.25 || v101 < a1[1][2])
        {
          v128 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          v128 = OS_LOG_TYPE_DEFAULT;
        }

        v129 = mmcs_logging_logger_default(v124, v125);
        if (os_log_type_enabled(v129, v128))
        {
          v131 = a1[1];
          v132 = v131[5];
          v133 = v131[2];
          v134 = "successful";
          if (v101 < v133)
          {
            v134 = "failed";
          }

          __errnuma = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preallocated %llu bytes for itemId %llu of %llu bytes %s after %.3f seconds over %llu preallocation calls.", v101, v132, v133, v134, *&v126, v103);
          v136 = mmcs_logging_logger_default(__errnuma, v135);
          if (os_log_type_enabled(v136, v128))
          {
            buf.st_dev = 138543362;
            *&buf.st_mode = __errnuma;
            _os_log_impl(&dword_2577D8000, v136, v128, "%{public}@", &buf, 0xCu);
          }

          if (__errnuma)
          {
            CFRelease(__errnuma);
          }
        }

        should_error_on_preallocation_failure = mmcs_get_request_should_error_on_preallocation_failure(v8, v130);
        if (should_error_on_preallocation_failure)
        {
          v139 = a1[1];
          if (v101 < v139[2] || *(v139 + 408))
          {
            v140 = mmcs_logging_logger_default(should_error_on_preallocation_failure, v138);
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              v141 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to preallocate item %lld", a1[1][5]);
              v143 = mmcs_logging_logger_default(v141, v142);
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                buf.st_dev = 138543362;
                *&buf.st_mode = v141;
                _os_log_impl(&dword_2577D8000, v143, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
              }

              if (v141)
              {
                CFRelease(v141);
              }
            }

            mmcs_get_request_set_failed_to_preallocate(v8, 1);
            error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 48, 0, @"Failed to preallocate item %lld", v144, v145, v146, v147, a1[1][5]);
            v149 = error_with_underlying_error;
            if (a2)
            {
              *a2 = CFRetain(error_with_underlying_error);
            }

            if (v149)
            {
              CFRelease(v149);
            }

            goto LABEL_89;
          }
        }
      }

      else if (v93)
      {
        v109 = a1[1];
        v110 = v109[5];
        v111 = v109[2];
        buf.st_dev = 134218240;
        *&buf.st_mode = v110;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v111;
        _os_log_impl(&dword_2577D8000, v92, OS_LOG_TYPE_DEFAULT, "Preallocation skipped for itemId %llu of %llu bytes", &buf, 0x16u);
      }
    }

    v12 = MMCSItemReaderWriterCreateWithFileDescriptor(v17, 0, 0, sparse_block_size, &v160);
    *v6 = v12;
    if (v12 && !v160)
    {
      goto LABEL_9;
    }

    v70 = mmcs_logging_logger_default(v12, v69);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v76 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"An error occurred creating temp reader writer for item %lld", a1[1][5]);
      v78 = mmcs_logging_logger_default(v76, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138543362;
        *&buf.st_mode = v76;
        _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v76)
      {
        CFRelease(v76);
      }
    }

    v79 = v160;
    if (!v160)
    {
      v79 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"An unknown error occurred creating temp fd reader writer for item %lld", v71, v72, v73, v74, v75, a1[1][5]);
      v160 = v79;
    }

    if (a2)
    {
      *a2 = CFRetain(v79);
      v79 = v160;
    }

    if (v79)
    {
      CFRelease(v79);
    }

    v160 = 0;
LABEL_89:
    mmcs_get_file_close_temp_reader_writer(a1);
    return 0;
  }

  *&cf.st_dev = 0;
  v10 = mmcs_engine_owner(v9);
  requestor = mmcs_request_get_requestor(**a1);
  if (mmcs_engine_get_item_reader_writer_for_item_callback(v9, v10, requestor, a1[1][5], a1 + 3, &cf))
  {
    v12 = *v6;
    if (*v6)
    {
LABEL_9:
      *&cf.st_dev = 0;
      if (MMCSItemReaderWriterOpen(v12, &cf))
      {
        return 1;
      }

      error = *&cf.st_dev;
      if (!*&cf.st_dev)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"An unknown error occurred while opening the item reader writer.");
        *&cf.st_dev = error;
      }

      if (a2)
      {
        *a2 = CFRetain(error);
        error = *&cf.st_dev;
      }

      if (error)
      {
        CFRelease(error);
      }

      *&cf.st_dev = 0;
      goto LABEL_89;
    }
  }

  v14 = *&cf.st_dev;
  if (!*&cf.st_dev)
  {
    v14 = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"An unknown error occurred retrieving item reader writer from callback for download.");
    *&cf.st_dev = v14;
  }

  if (a2)
  {
    *a2 = CFRetain(v14);
    v14 = *&cf.st_dev;
  }

  if (!v14)
  {
    return 0;
  }

LABEL_22:
  CFRelease(v14);
  return 0;
}

uint64_t mmcs_get_file_init_temp_file(uint64_t a1, CFTypeRef *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = **a1;
  v5 = mmcs_chunk_instance_offset(v4);
  cf = 0;
  if (mmcs_item_is_metadata_only(*(a1 + 8)))
  {
    mmcs_get_file_init_temp_file_cold_1();
  }

  if (*(a1 + 24))
  {
    mmcs_get_file_init_temp_file_cold_2();
  }

  v6 = (a1 + 16);
  if (*(a1 + 16))
  {
    mmcs_get_file_init_temp_file_cold_3();
  }

  v7 = mmcs_engine_file_path(v5, "tmpm", *(*(a1 + 8) + 40), (a1 + 16), &cf);
  if (!v7)
  {
    v15 = *v6;
    if (*v6)
    {
      free(v15);
    }

    *v6 = 0;
    v16 = mmcs_logging_logger_default(v15, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get file path for item %lld", *(*(a1 + 8) + 40));
      v20 = mmcs_logging_logger_default(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    error = cf;
    if (!cf)
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get work path for item %lld", *(*(a1 + 8) + 40));
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 10, v22);
      cf = error;
      if (v22)
      {
        CFRelease(v22);
        error = cf;
      }
    }

    v23 = *(a1 + 8);
    mmcs_get_item_progress_make_done_error(error, v17, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v23, buf);
    if (a2)
    {
      *a2 = CFRetain(cf);
    }

    v13 = 0;
    result = 0;
    v10 = cf;
    if (!cf)
    {
      return result;
    }

LABEL_27:
    CFRelease(v10);
    return v13;
  }

  if (!*(v5 + 170))
  {
    CKUnregisterFile();
    v7 = unlink(*(a1 + 16));
  }

  v9 = mmcs_logging_logger_default(v7, v8);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    return 1;
  }

  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Opened file %s", *v6);
  v12 = mmcs_logging_logger_default(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v26 = v10;
    _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  v13 = 1;
  result = 1;
  if (v10)
  {
    goto LABEL_27;
  }

  return result;
}

double mmcs_get_file_local_fulfillment_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(a1 + 72);
    v4 = v3 < v1 || v3 == 0.0;
    result = v3 - v1;
    if (v4)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t mmcs_get_file_compute_remaining_work(uint64_t **a1)
{
  v187 = *MEMORY[0x277D85DE8];
  v2 = mmcs_chunk_instance_offset(**a1);
  error = 0;
  if (*(a1 + 115))
  {
    return 1;
  }

  v3 = v2;
  if (mmcs_item_is_derivative(a1[1]))
  {
    return 1;
  }

  if (!mmcs_item_is_metadata_only(a1[1]))
  {
    if (!mmcs_get_req_context_use_reader_writer_callback(**a1) && !mmcs_get_file_init_temp_file(a1, &error))
    {
      if (!error)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"An unknown error creating temp file.");
      }

      goto LABEL_169;
    }

    if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, &error, -1))
    {
LABEL_169:
      mmcs_get_file_completed_with_error(a1, error);
      if (error)
      {
        CFRelease(error);
      }

      error = 0;
      mmcs_get_file_close_temp_reader_writer(a1);
      return 0;
    }
  }

  if (!*(a1 + 113))
  {
    goto LABEL_155;
  }

  v5 = **a1;
  v6 = mmcs_chunk_instance_offset(v5);
  v172 = 0;
  cf = 0;
  error = 0;
  v7 = a1[1][50];
  if (v7)
  {
    CFDataGetBytePtr(v7);
  }

  if (CKFileDigestResultsCreate())
  {
    if (CKGetRegisteredFileMetadata())
    {
      if (!CKFileDigestResultsEqual())
      {
        v14 = CFCopyDescription(cf);
        v15 = CFCopyDescription(v172);
        v17 = mmcs_logging_logger_default(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", a1[1][5], v14, v15);
          v25 = mmcs_logging_logger_default(v23, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v23;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }

        v10 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld. Perhaps the item should be unregistered.", v18, v19, v20, v21, v22, v14, v15, a1[1][5]);
        v26 = a1[1];
        mmcs_get_item_progress_make_done_error(v10, v27, buf);
        mmcs_get_request_set_progress_and_notify_item(v5, v26, buf);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_46;
      }

      if (!*(v6 + 170))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld was already registered. Perhaps the item should be unregistered.", a1[1][5]);
        v10 = mmcs_cferror_create_error(@"com.apple.mmcs", 32, v8);
        if (v8)
        {
          CFRelease(v8);
        }

        v11 = a1[1];
        v12 = v10;
LABEL_45:
        mmcs_get_item_progress_make_done_error(v12, v9, buf);
        mmcs_get_request_set_progress_and_notify_item(v5, v11, buf);
LABEL_46:
        if (v10)
        {
          CFRetain(v10);
          error = v10;
          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_49;
      }

      goto LABEL_33;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    v13 = a1[1][50];
    if (v13)
    {
      CFDataGetBytePtr(v13);
    }

    if (CKFileDigestResultsCreate())
    {
      if ((CKRegisterFile() & 1) == 0)
      {
        v30 = mmcs_item_copy_description(a1[1]);
        v32 = mmcs_logging_logger_default(v30, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register item %@", v30);
          v35 = mmcs_logging_logger_default(v33, v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v33;
            _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v33)
          {
            CFRelease(v33);
          }
        }

        if (v30)
        {
          CFRelease(v30);
        }

        v12 = mmcs_cferror_create_error(@"com.apple.mmcs", 19, @"Unable to register item");
        v10 = v12;
        v11 = a1[1];
        goto LABEL_45;
      }

LABEL_33:
      v28 = 0;
      v29 = 0;
      v10 = 0;
      goto LABEL_50;
    }
  }

  v28 = 0;
  v10 = 0;
LABEL_49:
  v29 = 1;
LABEL_50:
  if (cf)
  {
    C3BaseRelease(cf);
  }

  cf = 0;
  if (v172)
  {
    C3BaseRelease(v172);
  }

  v172 = 0;
  if (v28)
  {
    C3BaseRelease(v10);
  }

  if (v29)
  {
    goto LABEL_169;
  }

  error = 0;
  v171 = 0;
  v36 = **a1;
  v37 = mmcs_chunk_instance_offset(v36);
  v38 = a1[1];
  v170 = 0;
  if (!*(v37 + 170) && (CKUnregisterChunksForItem() & 1) == 0)
  {
    goto LABEL_89;
  }

  v169 = 0;
  if (!mmcs_GetSortedRegisteredChunksForItemID(*(v37 + 16), v38[5], &v170, &v169, 0, 0) || !v170 || !v169)
  {
    if (CKUnregisterChunksForItem())
    {
      v58 = a1[1];
      if (v58[19])
      {
        v165 = v36;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          v61 = 104 * v59;
          do
          {
            v62 = v58[34];
            v63 = *(v62 + v61 + 72);
            if (!v63)
            {
              mmcs_get_file_compute_remaining_work_cold_1();
            }

            v64 = v59;
            v65 = v61;
            if (CFBooleanGetValue(v63))
            {
              break;
            }

            ++v59;
            v58 = a1[1];
            v61 = v65 + 104;
          }

          while (v64 + 1 < v58[18]);
          if (!CFBooleanGetValue(*(v62 + v65 + 72)))
          {
            v146 = @"chunksPartOfItemInstanceCount/partOfItem mismatch";
            goto LABEL_220;
          }

          v71 = *(v62 + v65 + 56);
          if (!*(v71 + 16) && **(v71 + 8) < 0)
          {
            break;
          }

          RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v62 + v65));
          if (!RegisteredChunk)
          {
            v146 = @"No memory to create a registered chunk";
            goto LABEL_218;
          }

          v73 = RegisteredChunk;
          if (!v60 && CKRegisteredChunkOffset())
          {
            v146 = @"Registered offset of first chunk non-zero.";
LABEL_220:
            v152 = 1;
LABEL_221:
            v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v152, v146, v66, v67, v68, v69, v70, v159);
            goto LABEL_222;
          }

          if ((CKRegisterChunk() & 1) == 0)
          {
            free(v73);
            v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk for item %lld could not be registered.", v147, v148, v149, v150, v151, v38[5]);
            goto LABEL_222;
          }

          v59 = v64 + 1;
          *(v62 + v65 + 40) = CKRegisteredChunkRowID();
          free(v73);
          v74 = 0;
          ++v60;
          v58 = a1[1];
          if (v60 >= v58[19])
          {
            goto LABEL_150;
          }
        }

        v146 = @"Cannot register encrypted chunk without encryption key.";
LABEL_218:
        v152 = 36;
        goto LABEL_221;
      }

      goto LABEL_149;
    }

LABEL_89:
    v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunks for item %lld could not be unregistered.", v39, v40, v41, v42, v43, v38[5], v160, v161);
    goto LABEL_91;
  }

  if (v169 != v38[19])
  {
    v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunklists length mismatch for item %lld. Expected %llu got %llu from the chunk store. Perhaps the item should be unregistered.", v44, v45, v46, v47, v48, v38[5], v38[19], v169);
    goto LABEL_91;
  }

  if (mmcs_item_is_metadata_only(v38))
  {
    goto LABEL_149;
  }

  if (v169)
  {
    v49 = 0;
    v50 = 0;
    while (1)
    {
      v51 = v38[34];
      if (CKRegisteredChunkOffset() != *(v51 + v49 + 32))
      {
        break;
      }

      if (CKRegisteredChunkLength() != *(*(v51 + v49 + 56) + 4))
      {
        break;
      }

      CKRegisteredChunkSignature();
      if ((CKChunkSignaturesEqual() & 1) == 0)
      {
        break;
      }

      if (CKRegisteredChunkLocation() != 116 && CKRegisteredChunkLocation() != 110)
      {
        v153 = v38[5];
        v162 = CKRegisteredChunkLocation();
        v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk for item %lld at chunk index %llu has location %c. Perhaps the item should be unregistered.", v154, v155, v156, v157, v158, v153, v50, v162);
        goto LABEL_91;
      }

      *(v51 + v49 + 40) = CKRegisteredChunkRowID();
      CKRegisteredChunkSize();
      ++v50;
      v57 = v169;
      v49 += 104;
      if (v50 >= v169)
      {
        goto LABEL_102;
      }
    }

    v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk mismatch for item %lld at chunk index %llu. Perhaps the item should be unregistered.", v52, v53, v54, v55, v56, v38[5], v50, v161);
LABEL_91:
    v171 = v75;
    goto LABEL_92;
  }

  v57 = 0;
LABEL_102:
  if (!mmcs_get_file_create_buffer(a1, &v171))
  {
    v75 = v171;
    goto LABEL_92;
  }

  if (!v57)
  {
LABEL_149:
    v74 = 0;
    goto LABEL_150;
  }

  v165 = v36;
  v87 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v164 = v57;
  while (1)
  {
    v88 = a1[1][34];
    if (CKRegisteredChunkLocation() == 116)
    {
      break;
    }

LABEL_147:
    v74 = 0;
    CKRegisteredChunkSize();
    if (++v87 == v57)
    {
      goto LABEL_150;
    }
  }

  v90 = a1[4];
  v89 = a1[5];
  mmcs_chunk_instance_offset(**a1);
  v166 = v88 + 104 * v87;
  v91 = mmcs_chunk_instance_chunk_coder_create(v166, 3);
  v92 = CKRegisteredChunkLength();
  v93 = CKRegisteredChunkOffset();
  while (1)
  {
    v94 = (v92 >= v89 ? v89 : v92);
    v172 = 0;
    cf = 0;
    v96 = MMCSItemReaderWriterRead(a1[3], v93, v90, v94, &v172, &cf);
    v97 = cf;
    if (!v96 || cf != 0)
    {
      break;
    }

    if (!v172)
    {
      goto LABEL_130;
    }

    CKChunkCoderUpdate();
    v93 += v172;
    v92 = (v92 - v172);
    if (!v92)
    {
      goto LABEL_132;
    }
  }

  if (cf)
  {
    v97 = mmcs_cferror_copy_description(cf);
  }

  if (v97)
  {
    v99 = v97;
  }

  else
  {
    v99 = @"unknown";
  }

  v100 = mmcs_logging_logger_default(v97, v95);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    v101 = CFStringCreateWithFormat(alloc, 0, @"reading from readerWriter failed with error: %@", v99);
    v103 = mmcs_logging_logger_default(v101, v102);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v101;
      _os_log_impl(&dword_2577D8000, v103, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v101)
    {
      CFRelease(v101);
    }
  }

  CFRelease(v99);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_130:
  if (v92)
  {
    v104 = 0;
    v105 = "needs";
    goto LABEL_135;
  }

LABEL_132:
  v106 = CKChunkCoderFinish();
  v104 = v106 != 0;
  if (v106)
  {
    v105 = "has";
  }

  else
  {
    v105 = "needs";
  }

LABEL_135:
  if (v91)
  {
    C3BaseRelease(v91);
  }

  v107 = CKRegisteredChunkSignatureCopyCString();
  v109 = mmcs_logging_logger_default(v107, v108);
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    v110 = CFStringCreateWithFormat(alloc, 0, @"Temporary file for item %lld %s chunk %s", a1[1][5], v105, v107);
    v112 = mmcs_logging_logger_default(v110, v111);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v110;
      _os_log_impl(&dword_2577D8000, v112, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v110)
    {
      CFRelease(v110);
    }
  }

  if (v107)
  {
    free(v107);
  }

  a1[10] = (a1[10] + CKRegisteredChunkLength());
  if (v104)
  {
    a1[11] = (a1[11] + CKRegisteredChunkLength());
    *(v166 + 48) = 1;
    v57 = v164;
    goto LABEL_147;
  }

  *(v166 + 48) = 0;
  v57 = v164;
  if (CKRelocateTemporaryChunk())
  {
    goto LABEL_147;
  }

  v75 = mmcs_cferror_create_error(@"com.apple.mmcs", 29, @"A temporary chunk could not be registered as needed.");
LABEL_222:
  v171 = v75;
  v36 = v165;
LABEL_92:
  if (!v75)
  {
    v75 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"No local error was specified", v77, v78, v79, v80, v81);
    v171 = v75;
  }

  v82 = mmcs_logging_logger_default(v75, v76);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    v84 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register chunks for item %lld: %@", v38[5], v171);
    v86 = mmcs_logging_logger_default(v84, v85);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v84;
      _os_log_impl(&dword_2577D8000, v86, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v84)
    {
      CFRelease(v84);
    }
  }

  mmcs_get_item_progress_make_done_error(v171, v83, buf);
  mmcs_get_request_set_progress_and_notify_item(v36, v38, buf);
  error = CFRetain(v171);
  v74 = 1;
LABEL_150:
  if (v171)
  {
    CFRelease(v171);
  }

  v171 = 0;
  if (v170)
  {
    free(v170);
  }

  if (v74)
  {
    goto LABEL_169;
  }

LABEL_155:
  is_metadata_only = mmcs_item_is_metadata_only(a1[1]);
  if (is_metadata_only)
  {
    goto LABEL_201;
  }

  if (*(v3 + 171) && !mmcs_get_file_fulfill_locally(a1, &error))
  {
    goto LABEL_169;
  }

  error = 0;
  v115 = **a1;
  v116 = mmcs_chunk_instance_offset(v115);
  cf = 0;
  *buf = 0;
  if (!*(a1 + 113) || (mmcs_GetSortedRegisteredChunksForItemID(*(v116 + 16), a1[1][5], buf, &cf, 0, 0) ? (v117 = *buf == 0) : (v117 = 1), !v117 ? (v118 = cf == 0) : (v118 = 1), !v118))
  {
    v119 = *MEMORY[0x277CBECE8];
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v121 = CFSetCreateMutable(v119, 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v122 = *buf;
    v167 = v115;
    if (*buf)
    {
      v123 = cf;
      v124 = a1[1];
      if (cf != v124[19])
      {
        mmcs_get_file_compute_remaining_work_cold_2();
      }
    }

    else
    {
      v124 = a1[1];
      v123 = v124[19];
    }

    if (v123)
    {
      v125 = 0;
      v126 = 0;
      do
      {
        v127 = 104 * v125;
        do
        {
          v128 = v124[34];
          v129 = *(v128 + v127 + 72);
          if (!v129)
          {
            mmcs_get_file_compute_remaining_work_cold_6();
          }

          v130 = v125;
          v131 = v127;
          if (CFBooleanGetValue(v129))
          {
            break;
          }

          v125 = v130 + 1;
          v124 = a1[1];
          v127 = v131 + 104;
        }

        while (v130 + 1 < v124[18]);
        if (!CFBooleanGetValue(*(v128 + v131 + 72)))
        {
          mmcs_get_file_compute_remaining_work_cold_5();
        }

        if (!mmcs_chunk_instance_is_chunk_reference((v128 + v131)))
        {
          mmcs_get_file_compute_remaining_work_cold_4();
        }

        v132 = v128 + v131;
        if (v122)
        {
          v133 = *(v128 + v131 + 48);
          if (v133 == (CKRegisteredChunkLocation() != 116))
          {
            mmcs_get_file_compute_remaining_work_cold_3();
          }

          if (*(v132 + 48))
          {
            v134 = Mutable;
          }

          else
          {
            v134 = v121;
          }

          CFSetAddValue(v134, *(v128 + v131 + 56));
          v122 += CKRegisteredChunkSize();
        }

        else
        {
          if (*(v128 + v131 + 48))
          {
            v135 = Mutable;
          }

          else
          {
            v135 = v121;
          }

          CFSetAddValue(v135, *(v132 + 56));
        }

        v125 = v130 + 1;
        ++v126;
        v124 = a1[1];
      }

      while (v126 < v124[19]);
    }

    XCFSetRemoveValuesFromSet(Mutable, v121);
    CFSetApplyFunction(Mutable, mmcs_get_file_notify_locally_fulfilled_chunk_reference, a1);
    mmcs_get_request_notify_item_with_pending_progress(v167, a1[1]);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v121)
    {
      CFRelease(v121);
    }

    if (*buf)
    {
      free(*buf);
    }
  }

  v136 = a1[4];
  if (v136)
  {
    free(v136);
  }

  a1[4] = 0;
  a1[5] = 0;
  mmcs_get_file_close_temp_reader_writer(a1);
LABEL_201:
  v137 = *(a1 + 8);
  v138 = 0.0;
  if (v137 != 0.0 && (v139 = *(a1 + 9), v139 != 0.0) && v139 >= v137 && (v138 = v139 - v137, v139 - v137 != 0.0) || a1[11] || a1[12] || a1[10] || a1[13])
  {
    v140 = mmcs_logging_logger_default(is_metadata_only, v114);
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      v141 = a1[1][5];
      v142 = a1[12];
      v143 = a1[13];
      v145 = a1[10];
      v144 = a1[11];
      *buf = 134219520;
      *&buf[4] = v141;
      v175 = 2048;
      v176 = v138;
      v177 = 2048;
      v178 = v144 + v142 + v143;
      v179 = 2048;
      v180 = v145;
      v181 = 2048;
      v182 = v144;
      v183 = 2048;
      v184 = v142;
      v185 = 2048;
      v186 = v143;
      _os_log_impl(&dword_2577D8000, v140, OS_LOG_TYPE_DEFAULT, "itemId:%llu local fulfillment took %0.4lf seconds for %llu bytes. Validated for Resume (%llu bytes), Resumed (%llu bytes), Fullfilled Locally (%llu bytes), Fullfilled By Peers (%llu bytes)", buf, 0x48u);
    }
  }

  return 1;
}

uint64_t mmcs_get_file_fulfill_locally(uint64_t a1, CFErrorRef *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  *(a1 + 64) = CFAbsoluteTimeGetCurrent();
  if (!mmcs_get_file_create_buffer(a1, a2))
  {
    LOBYTE(v16) = 0;
    return v16;
  }

  v4 = **a1;
  v5 = mmcs_chunk_instance_offset(v4);
  v56 = 0;
  requestor = mmcs_request_get_requestor(v4);
  if (!mmcs_local_chunk_satisfyer_create(&v56, v5, requestor, *(a1 + 24), a1 + 120, *(a1 + 113)))
  {
    LOBYTE(v16) = 0;
    *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to initialize mmcs_local_chunk_satisfyer", v7, v8, v9, v10, v11);
    return v16;
  }

  if (!*(a1 + 113))
  {
    v16 = 1;
    v17 = -1;
    v18 = 48;
    do
    {
      v19 = *(a1 + 8);
      if (++v17 >= *(v19 + 144))
      {
        break;
      }

      v20 = *(v19 + 272);
      RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v20 + v18 - 48));
      v22 = mmcs_local_chunk_satisfyer_perform(v56, v20 + v18 - 48, RegisteredChunk, 3, *(a1 + 32), *(a1 + 40), a2);
      v23 = v56;
      *(a1 + 96) += v56[9];
      v23[9] = 0;
      if (v22)
      {
        if (*(v20 + v18))
        {
          v24 = 0;
        }

        else
        {
          if (!mmcs_external_chunk_satisfyer_perform(v23, v20 + v18 - 48, RegisteredChunk, *(a1 + 32), *(a1 + 40), a2))
          {
            v16 = 0;
          }

          v23 = v56;
          v24 = v56[9];
        }
      }

      else
      {
        v24 = 0;
        v16 = 0;
      }

      *(a1 + 104) += v24;
      v23[9] = 0;
      if (RegisteredChunk)
      {
        free(RegisteredChunk);
      }

      v18 += 104;
    }

    while (v16);
    goto LABEL_61;
  }

  v54 = 0;
  v55 = 0;
  SortedRegisteredChunksForItemID = mmcs_GetSortedRegisteredChunksForItemID(v5[2], *(*(a1 + 8) + 40), &v55, &v54, 0, 0);
  v13 = v55;
  if (SortedRegisteredChunksForItemID)
  {
    v14 = v55 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v54 == 0)
  {
    LOBYTE(v16) = 1;
    if (v55)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (v54 != *(*(a1 + 8) + 152))
  {
    mmcs_get_file_fulfill_locally_cold_1();
  }

  v25 = 0;
  v26 = 0;
  v16 = 1;
  do
  {
    v27 = *(a1 + 8);
    v28 = 104 * v26;
    do
    {
      v29 = v26;
      v30 = *(v27 + 272);
      v31 = *(v30 + v28 + 72);
      if (!v31)
      {
        mmcs_get_file_fulfill_locally_cold_4();
      }

      v32 = v28;
      if (CFBooleanGetValue(v31))
      {
        break;
      }

      v26 = v29 + 1;
      v27 = *(a1 + 8);
      v28 = v32 + 104;
    }

    while ((v29 + 1) < *(v27 + 144));
    v33 = v30 + v32;
    if (!CFBooleanGetValue(*(v30 + v32 + 72)))
    {
      mmcs_get_file_fulfill_locally_cold_3();
    }

    CKRegisteredChunkSignature();
    if ((CKChunkSignaturesEqual() & 1) == 0)
    {
      mmcs_get_file_fulfill_locally_cold_2();
    }

    if (mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), *(v33 + 56)))
    {
      if (CKRegisteredChunkLocation() == 110)
      {
        v34 = mmcs_local_chunk_satisfyer_perform(v56, v30 + v32, v13, 3, *(a1 + 32), *(a1 + 40), a2);
        v35 = v56;
        *(a1 + 96) += v56[9];
        v35[9] = 0;
        if (!v34)
        {
          v37 = 0;
LABEL_50:
          v16 = 0;
          *(a1 + 104) += v37;
          v35[9] = 0;
          goto LABEL_54;
        }

        v36 = v30 + v32;
        if (*(v36 + 48))
        {
          v37 = 0;
        }

        else
        {
          v46 = mmcs_external_chunk_satisfyer_perform(v35, v33, v13, *(a1 + 32), *(a1 + 40), a2);
          v35 = v56;
          v37 = v56[9];
          if (!v46)
          {
            goto LABEL_50;
          }
        }

        *(a1 + 104) += v37;
        v35[9] = 0;
        if (*(v36 + 48) && (CKRelocateTemporaryChunk() & 1) == 0)
        {
          error = mmcs_cferror_create_error(@"com.apple.mmcs", 29, @"A temporary chunk could not be relocated as needed.");
          *a2 = error;
          v50 = mmcs_logging_logger_default(error, v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = CKRegisteredChunkItemID();
            v52 = *a2;
            *buf = 134218242;
            v58 = v51;
            v59 = 2114;
            v60 = v52;
            _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_ERROR, "Failed to write chunk to item %lld with error: %{public}@", buf, 0x16u);
          }

LABEL_48:
          v16 = 0;
        }
      }

      else
      {
        if (CKRegisteredChunkLocation() != 116)
        {
          if (a2)
          {
            v38 = CKRegisteredChunkSignatureCopyCString();
            v39 = *(*(a1 + 8) + 40);
            v40 = CKRegisteredChunkLocation();
            *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s for item %lld had unexpected location %d", v41, v42, v43, v44, v45, v38, v39, v40);
            free(v38);
          }

          goto LABEL_48;
        }

        *(v30 + v32 + 48) = 1;
      }
    }

LABEL_54:
    v47 = CKRegisteredChunkSize();
    if (!v16)
    {
      break;
    }

    v26 = v29 + 1;
    v13 += v47;
    ++v25;
  }

  while (v25 < v54);
  v13 = v55;
  if (v55)
  {
LABEL_60:
    free(v13);
  }

LABEL_61:
  if (v56)
  {
    C3BaseRelease(v56);
  }

  v56 = 0;
  *(a1 + 72) = CFAbsoluteTimeGetCurrent();
  return v16;
}

uint64_t mmcs_get_file_complete_metadata_only_file(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  mmcs_chunk_instance_offset(v2);
  v3 = *(*(a1 + 8) + 400);
  if (v3)
  {
    CFDataGetBytePtr(v3);
  }

  if (CKFileDigestResultsCreate())
  {
    if (CKRegisterFile())
    {
      error = 0;
      v5 = 0;
      goto LABEL_17;
    }

    v6 = mmcs_item_copy_description(*(a1 + 8));
    v8 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register item %@", v6);
      v11 = mmcs_logging_logger_default(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v9;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 19, @"Unable to register item");
    v12 = *(a1 + 8);
    mmcs_get_item_progress_make_done_error(error, v13, buf);
    mmcs_get_request_set_progress_and_notify_item(v2, v12, buf);
    if (error)
    {
      CFRetain(error);
      C3BaseRelease(error);
    }
  }

  else
  {
    error = 0;
  }

  v5 = 1;
LABEL_17:
  if (v5)
  {
    goto LABEL_38;
  }

  v14 = **a1;
  mmcs_chunk_instance_offset(v14);
  v15 = *(a1 + 8);
  if (!CKUnregisterChunksForItem())
  {
    v43 = *(v15 + 40);
    v28 = @"chunks for item %lld could not be unregistered.";
LABEL_28:
    v29 = 29;
LABEL_29:
    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v29, v28, v16, v17, v18, v19, v20, v43);
    v37 = v30;
    if (!v30)
    {
      v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"No local error was specified", v32, v33, v34, v35, v36);
      v37 = v30;
    }

    v38 = mmcs_logging_logger_default(v30, v31);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register chunks for item %lld: %@", *(v15 + 40), v37);
      v42 = mmcs_logging_logger_default(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v40;
        _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    mmcs_get_item_progress_make_done_error(v37, v39, buf);
    mmcs_get_request_set_progress_and_notify_item(v14, v15, buf);
    error = CFRetain(v37);
    if (v37)
    {
      CFRelease(v37);
    }

LABEL_38:
    mmcs_get_file_metadata_completed_with_error(a1, error);
    v26 = 0;
    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (*(v15 + 144))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = *(v15 + 272);
      if (!*(v23 + v21 + 72))
      {
        mmcs_get_file_complete_metadata_only_file_cold_1();
      }

      RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v23 + v21));
      if (!RegisteredChunk)
      {
        v28 = @"No memory to create a registered chunk";
        v29 = 36;
        goto LABEL_29;
      }

      v25 = RegisteredChunk;
      CKRegisteredChunkSetLocation();
      if ((CKRegisterChunk() & 1) == 0)
      {
        break;
      }

      *(v23 + v21 + 40) = CKRegisteredChunkRowID();
      free(v25);
      ++v22;
      v21 += 104;
      if (v22 >= *(v15 + 144))
      {
        goto LABEL_25;
      }
    }

    free(v25);
    v43 = *(v15 + 40);
    v28 = @"chunk for item %lld could not be registered.";
    goto LABEL_28;
  }

LABEL_25:
  mmcs_get_req_item_set_done_success_and_notify_item(v14, v15, 0);
  v26 = 1;
  result = 1;
  if (!error)
  {
    return result;
  }

LABEL_39:
  CFRelease(error);
  return v26;
}

uint64_t mmcs_get_file_create_buffer(uint64_t a1, CFErrorRef *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  *(a1 + 40) = 0x8000;
  v5 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(a1 + 32) = v5;
  if (v5)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"No memory to create buffer for get_file", v6, v7, v8, v9, v10);
  result = 0;
  *a2 = v11;
  return result;
}

void mmcs_get_file_notify_locally_fulfilled_chunk_reference(unsigned int *a1, CFDictionaryRef **a2)
{
  if (!mmcs_item_remove_outstanding_chunk_reference(a2[1], a1))
  {
    mmcs_get_file_notify_locally_fulfilled_chunk_reference_cold_1();
  }

  mmcs_get_state_decrement_outstanding_chunk_references_count(*a2, a1);
  v4 = a2[1];
  v5 = a1[1];

  mmcs_item_update_get_progress(v4, v5);
}

BOOL mmcs_index_set_create(uint64_t *a1)
{
  *a1 = 0;
  v2 = C3TypeRegister(&mmcs_index_setGetTypeID_typeID, &kmmcs_index_setContextClass);
  Instance = C3TypeCreateInstance_(0, v2, 8uLL);
  if (Instance)
  {
    *(Instance + 16) = objc_alloc_init(MEMORY[0x277CCAB58]);
    *a1 = Instance;
  }

  return Instance != 0;
}

uint64_t mmcs_index_set_add_index(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    mmcs_index_set_add_index_cold_1();
  }

  return [v3 addIndex:a2];
}

void *mmcs_index_set_add_range(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    mmcs_index_set_add_range_cold_1();
  }

  if (a3 - a2 != -1)
  {

    return [result addIndexesInRange:{a2, a3 - a2 + 1}];
  }

  return result;
}

uint64_t mmcs_index_set_contains_index(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    mmcs_index_set_contains_index_cold_1();
  }

  return [v2 containsIndex:a2];
}

uint64_t mmcs_index_set_contains_range(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    mmcs_index_set_contains_range_cold_1();
  }

  v4 = 1;
  if (a3 - a2 != -1)
  {
    return [v3 containsIndexesInRange:{a2, a3 - a2 + 1}];
  }

  return v4;
}

uint64_t mmcs_index_set_count(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    mmcs_index_set_count_cold_1();
  }

  return [v3 count];
}

uint64_t mmcs_index_set_apply_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __mmcs_index_set_apply_function_block_invoke;
  v5[3] = &__block_descriptor_48_e24_v32__0__NSRange_QQ_8_B24l;
  v5[4] = a2;
  v5[5] = a3;
  return [v3 enumerateRangesUsingBlock:v5];
}

uint64_t __mmcs_index_set_apply_function_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(result + 32);
  if (v5)
  {
    result = v5(a2, a3, *(result + 40));
  }

  *a4 = 0;
  return result;
}

void _mmcs_index_setCFFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
  }
}

UInt8 *mmcs_working_directory_file_path(const __CFURL *a1, const char *a2, uint64_t a3, char **a4, CFErrorRef *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    mmcs_working_directory_file_path_cold_2();
  }

  result = malloc_type_calloc(1uLL, 0x401uLL, 0x100004077774924uLL);
  if (result)
  {
    v11 = result;
    v12 = CFURLGetFileSystemRepresentation(a1, 1u, result, 1025);
    if (v12)
    {
      v14 = strnlen(v11, 0x400uLL);
      if (v14 - 1025 <= 0xFFFFFFFFFFFFFBFFLL)
      {
        mmcs_working_directory_file_path_cold_1();
      }

      v15 = snprintf(&v11[v14], 1025 - v14, "/%s-0x%016llx", a2, a3);
      if (v15 > 0)
      {
        v16 = strlen(v11);
        v17 = malloc_type_calloc(1uLL, v16 + 1, 0x100004077774924uLL);
        *a4 = v17;
        if (v17)
        {
          strncpy(v17, v11, v16 + 1);
          free(v11);
          return 1;
        }

        goto LABEL_18;
      }

      if (!a5)
      {
LABEL_18:
        free(v11);
        return 0;
      }

      v23 = v15;
      v24 = __error();
      v25 = strerror(*v24);
      v26 = __error();
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unable to get file path for item %lld: snprintf returned %d. %s(%d)", v27, v28, v29, v30, v31, a3, v23, v25, *v26);
    }

    else
    {
      v18 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Bad working directory passed to MMCSEngineRef.");
        v21 = mmcs_logging_logger_default(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v33 = v19;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

      if (!a5)
      {
        goto LABEL_18;
      }

      error = mmcs_cferror_create_error(@"com.apple.mmcs", 10, @"Bad working directory passed to MMCSEngineRef.");
    }

    *a5 = error;
    goto LABEL_18;
  }

  return result;
}

uint64_t mmcs_get_item_progress_make_state@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xBFF0000000000000;
  *a2 = result;
  a2[2] = 0;
  return result;
}

uint64_t mmcs_get_item_progress_make_state_progress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  return result;
}

void mmcs_get_item_progress_make_done_error(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0xBFF0000000000000;
  *a3 = 5;
  if (!a1)
  {
    v5 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL error expected");
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v9, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  a3[2] = a1;
}

void mmcs_get_request_set_progress_and_notify_item(uint64_t a1, const UInt8 **a2, unsigned int *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = 0;
  *buf = *a3;
  v38 = *(a3 + 2);
  mmcs_item_set_get_progress(a2, buf, &v36 + 1, &v36);
  v8 = *(a3 + 2);
  if (*a3 != 5)
  {
    if (v8)
    {
      v8 = mmcs_cferror_copy_description(*(a3 + 2));
      v20 = mmcs_logging_logger_default(v8, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying a get item state change %d with error %@.", *a3, v8);
        v23 = mmcs_logging_logger_default(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      if (v8)
      {
        CFRelease(v8);
        v8 = 0;
      }
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v9 = mmcs_logging_logger_default(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying that get item is done without an error specified. Creating an internal error instead.");
    v17 = mmcs_logging_logger_default(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  v8 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Notifying get item state done without an error specified.", v10, v11, v12, v13, v14);
  v18 = v8;
LABEL_18:
  if (mmcs_engine_get_sparse_block_size())
  {
    mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v36))
  {
    v24 = *(a1 + 40);
    v25 = *(*(a1 + 32) + 152);
    v26 = a2[5];
    v27 = a2[50];
    if (v27)
    {
      BytePtr = CFDataGetBytePtr(v27);
    }

    else
    {
      BytePtr = *a2;
    }

    MMCSEngineClientContextGetItemProgress(v25, v24, v26, BytePtr, *a3, v8);
  }

  if (v36)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v32 = *(v30 + 152);
    v33 = a2[5];
    v34 = a2[50];
    v35 = v34 ? CFDataGetBytePtr(v34) : *a2;
    MMCSEngineClientContextGetItemDone(v32, v31, v33, v35, 0, v8, results_dictionary_for_item);
    if (results_dictionary_for_item)
    {
      CFRelease(results_dictionary_for_item);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void mmcs_get_request_set_progress_and_notify_items_like_item(uint64_t a1, const void *a2, __int128 *a3)
{
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 64), a2);
  if (Value)
  {
    v6 = Value;
    v7 = a1;
    v8 = *a3;
    v9 = *(a3 + 2);
    v10.length = CFArrayGetCount(Value);
    v10.location = 0;
    CFArrayApplyFunction(v6, v10, _mmcs_item_set_progress_and_notify, &v7);
  }
}

void _mmcs_item_set_progress_and_notify(const UInt8 **a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  mmcs_get_request_set_progress_and_notify_item(v3, a1, &v4);
}

void mmcs_get_request_set_progress_and_notify_items_like_items_in_set(uint64_t a1, CFSetRef theSet, __int128 *a3)
{
  if (theSet)
  {
    v3 = a1;
    v4 = *a3;
    v5 = *(a3 + 2);
    CFSetApplyFunction(theSet, _mmcs_get_request_set_progress_and_notify_items_like_items_in_set_applier, &v3);
  }
}

void _mmcs_get_request_set_progress_and_notify_items_like_items_in_set_applier(const void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  mmcs_get_request_set_progress_and_notify_items_like_item(v3, a1, &v4);
}

void mmcs_get_req_item_set_done_success_and_notify_item(uint64_t a1, const UInt8 **a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  *&buf = 5;
  *(&buf + 1) = 0xBFF0000000000000;
  v27 = 0;
  mmcs_item_set_get_progress(a2, &buf, &v25 + 1, &v25);
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  if (sparse_block_size)
  {
    sparse_block_size = mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v25))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 152);
    v10 = a2[5];
    v11 = a2[50];
    if (v11)
    {
      BytePtr = CFDataGetBytePtr(v11);
    }

    else
    {
      BytePtr = *a2;
    }

    sparse_block_size = MMCSEngineClientContextGetItemProgress(v9, v8, v10, BytePtr, 5, 0);
  }

  v13 = v25;
  if (a3 && !v25)
  {
    v14 = mmcs_logging_logger_default(sparse_block_size, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring successful get of %s", a3);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    v13 = v25;
  }

  if (v13)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(v19 + 152);
    v22 = a2[5];
    v23 = a2[50];
    if (v23)
    {
      v24 = CFDataGetBytePtr(v23);
    }

    else
    {
      v24 = *a2;
    }

    MMCSEngineClientContextGetItemDone(v21, v20, v22, v24, a3, 0, results_dictionary_for_item);
    if (results_dictionary_for_item)
    {
      CFRelease(results_dictionary_for_item);
    }
  }
}

void mmcs_get_request_set_progress_and_notify_all_items_not_done(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 304);
  if (*(v2 + 168))
  {
    v5 = 0;
    v6 = 348;
    do
    {
      if (*(v2 + v6) != 5)
      {
        v7 = *a2;
        v8 = *(a2 + 2);
        mmcs_get_request_set_progress_and_notify_item(a1, (v2 + v6 - 172), &v7);
        v2 = *(a1 + 304);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < *(v2 + 168));
  }
}

uint64_t mmcs_get_request_notify_all_items_with_pending_progress(uint64_t result)
{
  v1 = *(result + 304);
  if (*(v1 + 168))
  {
    v2 = result;
    v3 = 0;
    v4 = 348;
    do
    {
      if (*(v1 + v4) != 5)
      {
        result = mmcs_get_request_notify_item_with_pending_progress(v2, (v1 + v4 - 172));
        v1 = *(v2 + 304);
      }

      ++v3;
      v4 += 416;
    }

    while (v3 < *(v1 + 168));
  }

  return result;
}

uint64_t mmcs_get_request_notify_item_with_pending_progress(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 328))
  {
    v3 = result;
    *(a2 + 328) = 0;
    if (mmcs_engine_get_sparse_block_size())
    {
      mmcs_engine_get_sparse_block_size();
    }

    v4 = *(v3 + 40);
    v5 = *(*(v3 + 32) + 152);
    v6 = a2[5];
    v7 = *a2;
    v8 = *(a2 + 43);
    v9 = a2[24];

    return MMCSEngineClientContextGetItemProgress(v5, v4, v6, v7, v8, v9);
  }

  return result;
}

const void *mmcs_get_req_get_chunk_reference(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5[0] = 0;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v5[1] = a2;
  v6 = a3;
  v7 = a4;
  return CFSetGetValue(*(*(a1 + 304) + 104), v5);
}

void *mmcs_get_req_get_or_create_chunk_reference(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  LODWORD(value[0]) = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  HIDWORD(value[0]) = a2;
  value[1] = a3;
  v12 = a4;
  result = CFSetGetValue(*(*(a1 + 304) + 104), value);
  value[0] = result;
  if (result)
  {
    if (a5)
    {
      *a5 = 1;
    }
  }

  else if (mmcs_chunk_reference_create(value, a2, a3, a4, 1))
  {
    CFSetSetValue(*(*(a1 + 304) + 104), value[0]);
    return value[0];
  }

  else
  {
    return 0;
  }

  return result;
}

__CFDictionary *mmcs_wrapping_state_create_wrapping_state_dictionary(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  if (*a1)
  {
    CFDictionarySetValue(Mutable, @"kMMCSReferenceSignature", *a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFDictionarySetValue(v3, @"kMMCSReferenceObject", v4);
  }

  return v3;
}

uint64_t mmcs_wrapping_state_init_with_dictionary(uint64_t a1, CFDictionaryRef theDict, CFErrorRef *a3)
{
  Value = CFDictionaryGetValue(theDict, @"kMMCSReferenceSignature");
  if (Value && (v7 = CFDataGetTypeID(), v7 != CFGetTypeID(Value)))
  {
    v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceSignature type: Expected data, Got %@", v8, v9, v10, v11, v12, Value);
  }

  else
  {
    v13 = CFDictionaryGetValue(theDict, @"kMMCSReferenceObject");
    if (!v13)
    {
LABEL_7:
      mmcs_wrapping_state_set_reference_signature_and_object(a1, Value, v13);
      return 1;
    }

    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v13))
    {
      if (CFDataGetLength(v13) == 16 || CFDataGetLength(v13) == 32)
      {
        goto LABEL_7;
      }

      v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceObject type: Expected data 16 bytes long, Got %@", v20, v21, v22, v23, v24, v13);
    }

    else
    {
      v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceObject type: Expected data, Got %@", v15, v16, v17, v18, v19, v13);
    }
  }

  v27 = v26;
  if (a3)
  {
    *a3 = v26;
    CFRetain(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return 0;
}

uint64_t mmcs_wrapping_state_init_with_option_dict(uint64_t a1, CFDictionaryRef theDict, void *key, uint64_t a4)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  v8 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option %@ type: Expected dictionary, Got %@", v10, v11, v12, v13, v14, key, v8);
LABEL_7:
    if (a4)
    {
      v15 = cf;
      *a4 = cf;
      CFRetain(v15);
      a4 = 0;
    }

    goto LABEL_9;
  }

  if (!mmcs_wrapping_state_init_with_dictionary(a1, v8, &cf))
  {
    goto LABEL_7;
  }

  a4 = 1;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return a4;
}

__CFArray *mmcs_get_req_context_setup_complete_metrics(__CFArray *result, uint64_t a2)
{
  if (*(result + 23))
  {
    v2 = result;
    mmcs_http_context_make_metrics(*(*(result + 38) + 144), @"getComplete", 0, a2, 0);
    v3 = *(v2 + 23);
    metrics = mmcs_http_context_get_metrics(*(*(v2 + 38) + 144));

    return mmcs_metrics_request_add_http_info_for_completion(v3, metrics);
  }

  return result;
}

uint64_t mmcs_get_req_create(void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, CFErrorRef *a16)
{
  v133 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    mmcs_get_req_create_cold_1();
  }

  v23 = a16;
  *a1 = 0;
  v130 = 0;
  if (!mmcs_get_request_alloc(&v130, a9) || !v130)
  {
    if (!a16)
    {
LABEL_107:
      v122 = v130;
      if (*(v130[38] + 120))
      {
        mmcs_perform_timer_invalidate(*(v130[38] + 120));
        v122 = v130;
        v123 = v130[38];
        if (*(v123 + 120))
        {
          CFRelease(*(v123 + 120));
          v122 = v130;
          v123 = v130[38];
        }

        *(v123 + 120) = 0;
      }

      C3BaseRelease(v122);
      return 0;
    }

    v40 = @"Cannot allocate get request";
    v41 = 36;
LABEL_13:
    *v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v41, v40, v24, v25, v26, v27, v28, Count, v125);
    goto LABEL_107;
  }

  kdebug_trace();
  v129 = 0;
  if (!_mmcs_request_init(v130, a2, a3, a4, a5, a6, a15, &v129))
  {
    if (a16)
    {
      *a16 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 37, v129, @"Cannot initialize underlying mmcs_request", v29, v30, v31, v32);
    }

    if (v129)
    {
      CFRelease(v129);
    }

    v129 = 0;
    goto LABEL_107;
  }

  v33 = v130;
  *(v130[38] + 59) = 0;
  *(*(v33 + 304) + 60) = 1;
  *(*(v33 + 304) + 41) = 0;
  v34 = 1;
  if (!a7)
  {
    dataclass = mmcs_request_get_dataclass(v33);
    v37 = dataclass;
    if (dataclass)
    {
      dataclass = mmcs_request_is_cloudkit_dataclass(v33);
      v38 = "enabled";
      if (dataclass)
      {
        dataclass = mmcs_request_get_container_identifier(v33);
        v39 = dataclass;
        if (dataclass)
        {
          dataclass = CFStringCompare(dataclass, @"com.apple.clouddocs", 1uLL);
          v34 = dataclass != 0;
          if (!dataclass)
          {
            v38 = "disabled";
          }
        }

        else
        {
          v34 = 0;
          v38 = "disabled";
        }
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      v34 = 0;
      v38 = "disabled";
    }

    v42 = mmcs_logging_logger_default(dataclass, v36);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2114;
      v132 = v39;
      _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_DEFAULT, "file content validation %{public}s by default for dataclass %{public}@ with container %{public}@. Does not impact chunk validation.", buf, 0x20u);
    }

    v23 = a16;
  }

  v43 = v130;
  *(v130[38] + 11) = v34;
  *(*(v43 + 304) + 12) = 1;
  *(*(v43 + 304) + 8) = 1;
  *(*(v43 + 304) + 57) = 0;
  *(*(v43 + 304) + 56) = 0;
  *(*(v43 + 304) + 48) = 0;
  *(*(v43 + 304) + 13) = 0;
  *(*(v43 + 304) + 58) = 0;
  **(v43 + 304) = 0;
  *(v130[38] + 10) = 0;
  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionReturnOpaqueCloneContext", 0);
  *(v130[38] + 152) = BOOLean_from_cfdictionary_object_for_key;
  cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"kMMCSDefaultReaderWriterSparseAware", 0);
  if (a4)
  {
    v46 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionReaderWriterCallbackForDownloads", *(v130[38] + 9));
    v47 = v130;
    *(v130[38] + 9) = v46;
    v48 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestValidateFileContents", *(*(v47 + 304) + 11));
    v49 = v130;
    *(v130[38] + 11) = v48;
    v50 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestValidateFileContents", *(*(v49 + 304) + 12));
    v51 = v130;
    *(v130[38] + 12) = v50;
    v52 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionUseRegistryForDownloads", *(*(v51 + 304) + 8));
    v53 = v130;
    *(v130[38] + 8) = v52;
    v54 = mmcs_copy_cfnumber_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionCacheDeleteAvailableSpaceClass", *(*(v53 + 304) + 48));
    v55 = v130;
    *(v130[38] + 48) = v54;
    v56 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionErrorOnPreallocationFailure", *(*(v55 + 304) + 56));
    v57 = v130;
    *(v130[38] + 56) = v56;
    v58 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionForceGetChunks", *(*(v57 + 304) + 13));
    v59 = v130;
    *(v130[38] + 13) = v58;
    v60 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionInsufficientDiskSpaceMode", *(*(v59 + 304) + 58));
    *(v130[38] + 58) = v60;
    Value = CFDictionaryGetValue(a4, @"kMMCSRequestOptionItemOptions");
    if (Value)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFArrayGetCount(Value) != a9)
        {
          if (!v23)
          {
            goto LABEL_107;
          }

          Count = CFArrayGetCount(Value);
          v125 = a9;
          v40 = @"Item options array had %d elements but request had %d elements";
LABEL_31:
          v41 = 37;
          goto LABEL_13;
        }
      }

      else
      {
        Value = 0;
      }
    }

    cfBOOLean_from_cfdictionary_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestForceGetCompleteRequest", 0);
    if (cfBOOLean_from_cfdictionary_object_for_key)
    {
      v64 = cfBOOLean_from_cfdictionary_object_for_key;
      *(v130[38] + 59) = 1;
      v65 = CFBooleanGetValue(cfBOOLean_from_cfdictionary_object_for_key);
      *(v130[38] + 60) = v65;
      CFRelease(v64);
    }

    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSDefaultReaderWriterSparseAware", cfBOOLean_from_cfpreferences_object_for_key);
  }

  else
  {
    Value = 0;
  }

  v66 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &itemsBySignatureReferenceDictionaryKeyCallbacks, MEMORY[0x277CBF150]);
  *(v130[38] + 64) = Mutable;
  v68 = CFSetCreateMutable(v66, 0, &itemSignatureReferenceEqualitySetCallbacks);
  *(v130[38] + 80) = v68;
  v69 = CFSetCreateMutable(v66, 0, &itemItemIDEqualitySetCallbacks);
  *(v130[38] + 72) = v69;
  v70 = CFSetCreateMutable(v66, 0, &chunkReferenceSignatureEqualitySetCallbacks);
  v72 = v130;
  *(v130[38] + 104) = v70;
  v127 = cfBOOLean_from_cfpreferences_object_for_key;
  v128 = Value;
  if (*(a2 + 175))
  {
    v73 = mmcs_metrics_request_create(@"get");
    v72 = v130;
    v130[23] = v73;
  }

  *(*(v72 + 304) + 168) = a9;
  v74 = *(v72 + 304);
  if (!v74[8])
  {
    goto LABEL_107;
  }

  if (!v74[10])
  {
    goto LABEL_107;
  }

  if (!v74[9])
  {
    goto LABEL_107;
  }

  if (!v74[13])
  {
    goto LABEL_107;
  }

  if (!*(v72 + 168))
  {
    goto LABEL_107;
  }

  v75 = *(a2 + 56);
  *buf = v72;
  *&buf[8] = C3BaseRetain;
  *&buf[16] = C3BaseRelease;
  v132 = _mmcs_get_req_context_progress_timer_fired;
  timer = mmcs_perform_target_create_timer(v75, (v74 + 15), buf, v71);
  if (!timer)
  {
    goto LABEL_107;
  }

  v79 = v130[38];
  if (*(v79 + 168))
  {
    v80 = 0;
    v81 = a12;
    v82 = 584;
    v126 = v23;
    do
    {
      v83 = v81 ? *(v81 + 8 * v80) : 0;
      v84 = (v79 + v82 - 408);
      if (!mmcs_item_init(v84, *(a10 + 8 * v80), *(a11 + 8 * v80), v83, 0, 2, 0, v78))
      {
        goto LABEL_107;
      }

      if (a13)
      {
        *(v79 + v82 - 64) = *(a13 + 8 * v80);
      }

      if (a14)
      {
        *(v79 + v82 - 392) = *(a14 + 8 * v80);
      }

      if (v128)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v128, v80);
        v86 = CFDictionaryGetTypeID();
        if (v86 != CFGetTypeID(ValueAtIndex))
        {
          if (!v23)
          {
            goto LABEL_107;
          }

          Count = ValueAtIndex;
          v40 = @"Invalid item option type: Expected dictionary, Got %@";
          goto LABEL_31;
        }

        if (!mmcs_wrapping_state_init_with_option_dict(v79 + v82 - 360, ValueAtIndex, @"kMMCSUnwrappingState", v23))
        {
          goto LABEL_107;
        }

        v87 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSFileSize");
        if (v87)
        {
          if (a14)
          {
            v89 = mmcs_logging_logger_default(v87, v88);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v90 = CFStringCreateWithFormat(v66, 0, @"Ignoring kMMCSFileSize because lengths are set");
              v92 = mmcs_logging_logger_default(v90, v91);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v90;
                _os_log_impl(&dword_2577D8000, v92, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v90)
              {
                CFRelease(v90);
              }
            }
          }

          else
          {
            v93 = v87;
            v94 = CFGetTypeID(v87);
            if (v94 == CFNumberGetTypeID())
            {
              *buf = 0;
              if (CFNumberGetValue(v93, kCFNumberSInt64Type, buf))
              {
                *(v79 + v82 - 384) = *buf;
              }
            }
          }
        }

        v95 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedFileOffset");
        if (v95)
        {
          v96 = v95;
          v97 = CFGetTypeID(v95);
          if (v97 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v96, kCFNumberSInt64Type, buf))
            {
              *(v79 + v82 - 32) = *buf;
            }
          }
        }

        v98 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedLengthAtFileOffset");
        if (v98)
        {
          v99 = v98;
          v100 = CFGetTypeID(v98);
          if (v100 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v99, kCFNumberSInt64Type, buf))
            {
              *(v79 + v82 - 24) = *buf;
              *(v130[38] + 10) = 0;
            }
          }
        }

        v101 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedRangeSignature");
        if (v101)
        {
          v102 = v101;
          v103 = CFGetTypeID(v101);
          if (v103 == CFDataGetTypeID())
          {
            CFRetain(v102);
            *(v79 + v82 - 8) = v102;
          }
        }

        v104 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSDerivativeAssetDownloadURL");
        if (v104)
        {
          v105 = v104;
          v106 = CFGetTypeID(v104);
          if (v106 == CFURLGetTypeID())
          {
            *(v79 + v82 - 48) = v105;
            CFRetain(v105);
          }
        }

        v107 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSDerivativeAssetEstimatedSize");
        if (v107)
        {
          v108 = v107;
          v109 = CFGetTypeID(v107);
          if (v109 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v108, kCFNumberSInt64Type, buf))
            {
              v110 = *buf;
              *(v79 + v82 - 96) = *buf;
              *(v79 + v82 - 392) = v110;
            }
          }
        }

        v111 = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSDefaultReaderWriterSparseAware", v127);
        mmcs_item_set_default_reader_writer_sparse_aware(v79 + v82 - 408, v111);
        v112 = (v79 + v82);
        *(v112 - 192) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSMetadataOnly", *(v79 + v82 - 192));
        *v112 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSFailPreallocationMode", *(v79 + v82));
        v23 = v126;
      }

      if ((**v84 & 0x7F) == 4 || (**v84 & 8) != 0)
      {
        *(v79 + v82 - 304) = 1;
      }

      CFSetAddValue(*(v130[38] + 72), (v79 + v82 - 408));
      v114 = CFDictionaryGetValue(*(v130[38] + 64), (v79 + v82 - 408));
      if (!v114)
      {
        v115 = CFArrayCreateMutable(v66, 0, &itemArrayCallbacks);
        if (!v115)
        {
          goto LABEL_107;
        }

        v114 = v115;
        CFDictionarySetValue(*(v130[38] + 64), (v79 + v82 - 408), v115);
        CFRelease(v114);
        CFSetAddValue(*(v130[38] + 80), (v79 + v82 - 408));
      }

      CFArrayAppendValue(v114, (v79 + v82 - 408));
      if (*(v79 + v82))
      {
        v116 = mmcs_logging_logger_default(timer, v77);
        timer = os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
        if (timer)
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v116, OS_LOG_TYPE_ERROR, "********************* ENABLING TESTING MODE WHICH PRETENDS PREALLOCATION FAILS *********************", buf, 2u);
        }
      }

      ++v80;
      v79 = v130[38];
      v82 += 416;
      v81 = a12;
    }

    while (v80 < *(v79 + 168));
  }

  v117 = mmcs_logging_logger_default(timer, v77);
  v118 = os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT);
  if (v118)
  {
    *buf = v130;
    CFDictionaryApplyFunction(*(v130[38] + 64), mmcs_get_req_context_items_by_signature_description, buf);
  }

  if (*(v130[38] + 58))
  {
    v120 = mmcs_logging_logger_default(v118, v119);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v120, OS_LOG_TYPE_ERROR, "********************* ENABLING TESTING MODE WHICH PRETENDS THERE IS INSUFFICIENT DISK SPACE *********************", buf, 2u);
    }
  }

  *a1 = v130;
  return 1;
}