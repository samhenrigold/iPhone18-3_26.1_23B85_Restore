void ___ZL54nw_protocol_http_connection_state_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    *(*(a1 + 32) + 40) = 0;
    if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 136446722;
        v6 = "nw_http_connection_state_destroy";
        v7 = 2082;
        v8 = v1 + 114;
        v9 = 2080;
        v10 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v5, 0x20u);
      }
    }

    (*(*(v1 + 216) + 16))();
    v2 = *(v1 + 216);
    if (v2)
    {
      _Block_release(v2);
      *(v1 + 216) = 0;
    }

    if (*(v1 + 208))
    {
      v3 = *(v1 + 200);
      if (v3)
      {
        os_release(v3);
      }
    }

    free(v1);
  }
}

void ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    return;
  }

  *(*(a1 + 32) + 40) = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    if (*(v1 + 288))
    {
      v2 = *(v1 + 280);
      if (v2)
      {
        os_release(v2);
      }
    }

    *(v1 + 280) = 0;
    if (*(v1 + 272))
    {
      v3 = *(v1 + 264);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(v1 + 264) = 0;
    if (*(v1 + 256))
    {
      v4 = *(v1 + 248);
      if (v4)
      {
        os_release(v4);
      }
    }

    free(v1);
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_http_cookie_destroy";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null http_cookie", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_cookie_destroy";
      v9 = "%{public}s called with null http_cookie";
      goto LABEL_28;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_cookie_destroy";
      v9 = "%{public}s called with null http_cookie, backtrace limit exceeded";
      goto LABEL_28;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_http_cookie_destroy";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_cookie, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_29;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_http_cookie_destroy";
      v9 = "%{public}s called with null http_cookie, no backtrace";
LABEL_28:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_29:
  if (v6)
  {
    free(v6);
  }
}

void nw_http_retry_destroy(_BYTE *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136446722;
      v17 = "nw_http_retry_destroy";
      v18 = 2082;
      v19 = a1 + 114;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v16, 0x20u);
    }
  }

  if (*(a1 + 116))
  {
    *(a1 + 234) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136446722;
        v17 = "nw_http_retry_destroy";
        v18 = 2082;
        v19 = a1 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v16, 0x20u);
      }
    }
  }

  else
  {
    if (a1[560])
    {
      v3 = *(a1 + 69);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 69) = 0;
    if (a1[544])
    {
      v4 = *(a1 + 67);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v5 = *(a1 + 65);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v6 = *(a1 + 63);
      if (v6)
      {
        _Block_release(v6);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v7 = *(a1 + 61);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v8 = *(a1 + 59);
      if (v8)
      {
        os_release(v8);
      }
    }

    *(a1 + 59) = 0;
    if (a1[424])
    {
      v9 = *(a1 + 52);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 52) = 0;
    if (a1[384])
    {
      v10 = *(a1 + 47);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 47) = 0;
    if (a1[368])
    {
      v11 = *(a1 + 45);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 45) = 0;
    if (a1[288])
    {
      v12 = *(a1 + 35);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v13 = *(a1 + 33);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v14 = *(a1 + 31);
      if (v14)
      {
        os_release(v14);
      }
    }

    free(a1);
  }
}

void ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_retry_destroy(*(a1 + 32));
  }
}

void ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    nw_http_authentication_destroy(*(result + 32));
  }
}

void nw_http_authentication_destroy(nw_protocol_http_authentication *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = 136446722;
      v41 = "nw_http_authentication_destroy";
      v42 = 2082;
      v43 = a1 + 114;
      v44 = 2080;
      v45 = " ";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v40, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v40 = 136446722;
        v41 = "nw_http_authentication_destroy";
        v42 = 2082;
        v43 = a1 + 114;
        v44 = 2080;
        v45 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v40, 0x20u);
      }
    }
  }

  else
  {
    if (*(a1 + 928))
    {
      v3 = *(a1 + 115);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    *(a1 + 115) = 0;
    if (*(a1 + 912))
    {
      v4 = *(a1 + 113);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    *(a1 + 113) = 0;
    if (*(a1 + 896))
    {
      v5 = *(a1 + 111);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 111) = 0;
    if (*(a1 + 880))
    {
      v6 = *(a1 + 109);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(a1 + 109) = 0;
    if (*(a1 + 864))
    {
      v7 = *(a1 + 107);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 107) = 0;
    if (*(a1 + 848))
    {
      v8 = *(a1 + 105);
      if (v8)
      {
        os_release(v8);
      }
    }

    *(a1 + 105) = 0;
    if (*(a1 + 832))
    {
      v9 = *(a1 + 103);
      if (v9)
      {
        os_release(v9);
      }
    }

    *(a1 + 103) = 0;
    if (*(a1 + 816))
    {
      v10 = *(a1 + 101);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 101) = 0;
    if (*(a1 + 800))
    {
      v11 = *(a1 + 99);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    *(a1 + 99) = 0;
    if (*(a1 + 784))
    {
      v12 = *(a1 + 97);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    *(a1 + 97) = 0;
    if (*(a1 + 768))
    {
      v13 = *(a1 + 95);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 95) = 0;
    if (*(a1 + 752))
    {
      v14 = *(a1 + 93);
      if (v14)
      {
        os_release(v14);
      }
    }

    *(a1 + 93) = 0;
    if (*(a1 + 736))
    {
      v15 = *(a1 + 91);
      if (v15)
      {
        os_release(v15);
      }
    }

    *(a1 + 91) = 0;
    if (*(a1 + 720))
    {
      v16 = *(a1 + 89);
      if (v16)
      {
        os_release(v16);
      }
    }

    *(a1 + 89) = 0;
    if (*(a1 + 704))
    {
      v17 = *(a1 + 87);
      if (v17)
      {
        os_release(v17);
      }
    }

    *(a1 + 87) = 0;
    if (*(a1 + 688))
    {
      v18 = *(a1 + 85);
      if (v18)
      {
        os_release(v18);
      }
    }

    *(a1 + 85) = 0;
    if (*(a1 + 672))
    {
      v19 = *(a1 + 83);
      if (v19)
      {
        dispatch_release(v19);
      }
    }

    *(a1 + 83) = 0;
    if (*(a1 + 656))
    {
      v20 = *(a1 + 81);
      if (v20)
      {
        _Block_release(v20);
      }
    }

    *(a1 + 81) = 0;
    if (*(a1 + 640))
    {
      v21 = *(a1 + 79);
      if (v21)
      {
        os_release(v21);
      }
    }

    *(a1 + 79) = 0;
    if (*(a1 + 624))
    {
      v22 = *(a1 + 77);
      if (v22)
      {
        os_release(v22);
      }
    }

    *(a1 + 77) = 0;
    if (*(a1 + 608))
    {
      v23 = *(a1 + 75);
      if (v23)
      {
        os_release(v23);
      }
    }

    *(a1 + 75) = 0;
    if (*(a1 + 592))
    {
      v24 = *(a1 + 73);
      if (v24)
      {
        os_release(v24);
      }
    }

    *(a1 + 73) = 0;
    if (*(a1 + 576))
    {
      v25 = *(a1 + 71);
      if (v25)
      {
        os_release(v25);
      }
    }

    *(a1 + 71) = 0;
    if (*(a1 + 560))
    {
      v26 = *(a1 + 69);
      if (v26)
      {
        os_release(v26);
      }
    }

    *(a1 + 69) = 0;
    if (*(a1 + 544))
    {
      v27 = *(a1 + 67);
      if (v27)
      {
        os_release(v27);
      }
    }

    *(a1 + 67) = 0;
    if (*(a1 + 528))
    {
      v28 = *(a1 + 65);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    *(a1 + 65) = 0;
    if (*(a1 + 512))
    {
      v29 = *(a1 + 63);
      if (v29)
      {
        _Block_release(v29);
      }
    }

    *(a1 + 63) = 0;
    if (*(a1 + 496))
    {
      v30 = *(a1 + 61);
      if (v30)
      {
        os_release(v30);
      }
    }

    *(a1 + 61) = 0;
    if (*(a1 + 480))
    {
      v31 = *(a1 + 59);
      if (v31)
      {
        os_release(v31);
      }
    }

    *(a1 + 59) = 0;
    if (*(a1 + 464))
    {
      v32 = *(a1 + 57);
      if (v32)
      {
        os_release(v32);
      }
    }

    *(a1 + 57) = 0;
    if (*(a1 + 408))
    {
      v33 = *(a1 + 50);
      if (v33)
      {
        _Block_release(v33);
      }
    }

    *(a1 + 50) = 0;
    if (*(a1 + 368))
    {
      v34 = *(a1 + 45);
      if (v34)
      {
        _Block_release(v34);
      }
    }

    *(a1 + 45) = 0;
    if (*(a1 + 352))
    {
      v35 = *(a1 + 43);
      if (v35)
      {
        os_release(v35);
      }
    }

    *(a1 + 43) = 0;
    if (*(a1 + 288))
    {
      v36 = *(a1 + 35);
      if (v36)
      {
        os_release(v36);
      }
    }

    *(a1 + 35) = 0;
    if (*(a1 + 272))
    {
      v37 = *(a1 + 33);
      if (v37)
      {
        os_release(v37);
      }
    }

    *(a1 + 33) = 0;
    if (*(a1 + 256))
    {
      v38 = *(a1 + 31);
      if (v38)
      {
        os_release(v38);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    return;
  }

  v1 = *(a1 + 32);
  v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v51 = __nwlog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_encoding_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 114;
      *&buf[22] = 2080;
      v64 = " ";
      _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v52 = __nwlog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_encoding_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 114;
      *&buf[22] = 2080;
      v64 = " ";
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing frame arrays", buf, 0x20u);
    }
  }

  v3 = (v1 + 456);
  if (gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v4 = *v3;
  if (*v3)
  {
    *(v4 + 24) = type;
    v5 = *(v1 + 464);
    *type = v4;
    v62 = v5;
    *(v1 + 456) = 0;
    *(v1 + 464) = v3;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v64 = &__block_descriptor_tmp_21_49595;
    v65 = 0;
    do
    {
      v6 = *type;
      if (!*type)
      {
        break;
      }

      v7 = *(*type + 16);
      v8 = *(*type + 24);
      v9 = (v7 + 24);
      if (!v7)
      {
        v9 = &v62;
      }

      *v9 = v8;
      *v8 = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
    if (*v3)
    {
      v34 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s frame array is not empty after finalize", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (!__nwlog_fault(v35, type, &v60))
      {
        goto LABEL_103;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_103;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v38 = "%{public}s frame array is not empty after finalize";
      }

      else if (v60 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type[0];
        v54 = os_log_type_enabled(v36, type[0]);
        if (backtrace_string)
        {
          if (v54)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_103;
        }

        v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v54)
        {
LABEL_103:
          if (v35)
          {
            free(v35);
          }

          goto LABEL_14;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v38 = "%{public}s frame array is not empty after finalize, no backtrace";
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_103;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v38 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      goto LABEL_103;
    }
  }

LABEL_14:
  v10 = (v1 + 472);
  if (BYTE1(v2[82].isa) == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v11 = *v10;
  if (*v10)
  {
    *(v11 + 24) = type;
    v12 = *(v1 + 480);
    *type = v11;
    v62 = v12;
    *(v1 + 472) = 0;
    *(v1 + 480) = v10;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v64 = &__block_descriptor_tmp_21_49595;
    v65 = 0;
    do
    {
      v13 = *type;
      if (!*type)
      {
        break;
      }

      v14 = *(*type + 16);
      v15 = *(*type + 24);
      v16 = (v14 + 24);
      if (!v14)
      {
        v16 = &v62;
      }

      *v16 = v15;
      *v15 = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
    if (*v10)
    {
      v40 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      LODWORD(v59) = 12;
      v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s frame array is not empty after finalize", buf, v59);
      type[0] = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (!__nwlog_fault(v41, type, &v60))
      {
        goto LABEL_108;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (!os_log_type_enabled(v42, type[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v44 = "%{public}s frame array is not empty after finalize";
      }

      else if (v60 == 1)
      {
        v55 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v43 = type[0];
        v56 = os_log_type_enabled(v42, type[0]);
        if (v55)
        {
          if (v56)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = v55;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
          v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_108;
        }

        v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v56)
        {
LABEL_108:
          if (v41)
          {
            free(v41);
          }

          goto LABEL_22;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v44 = "%{public}s frame array is not empty after finalize, no backtrace";
      }

      else
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (!os_log_type_enabled(v42, type[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v44 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
      goto LABEL_108;
    }
  }

LABEL_22:
  v17 = (v1 + 520);
  if (BYTE1(v2[82].isa) == 1)
  {
    v45 = __nwlog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_30;
  }

  *(v18 + 24) = type;
  v19 = *(v1 + 528);
  *type = v18;
  v62 = v19;
  *(v1 + 520) = 0;
  *(v1 + 528) = v17;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
  v64 = &__block_descriptor_tmp_21_49595;
  v65 = 0;
  do
  {
    v20 = *type;
    if (!*type)
    {
      break;
    }

    v21 = *(*type + 16);
    v22 = *(*type + 24);
    v23 = (v21 + 24);
    if (!v21)
    {
      v23 = &v62;
    }

    *v23 = v22;
    *v22 = v21;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
  }

  while (((*&buf[16])(buf) & 1) != 0);
  if (!*v17)
  {
    goto LABEL_30;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_finalize_master_frame_array";
  LODWORD(v59) = 12;
  v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s frame array is not empty after finalize", buf, v59);
  type[0] = OS_LOG_TYPE_ERROR;
  v60 = 0;
  if (__nwlog_fault(v47, type, &v60))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type[0];
      if (!os_log_type_enabled(v48, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v50 = "%{public}s frame array is not empty after finalize";
      goto LABEL_112;
    }

    if (v60 != 1)
    {
      v48 = __nwlog_obj();
      v49 = type[0];
      if (!os_log_type_enabled(v48, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v50 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      goto LABEL_112;
    }

    v57 = __nw_create_backtrace_string();
    v48 = __nwlog_obj();
    v49 = type[0];
    v58 = os_log_type_enabled(v48, type[0]);
    if (v57)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        *&buf[12] = 2082;
        *&buf[14] = v57;
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v57);
      goto LABEL_113;
    }

    if (v58)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v50 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_112:
      _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
    }
  }

LABEL_113:
  if (v47)
  {
    free(v47);
  }

LABEL_30:
  nw_frame_cache_destroy((v1 + 336));
  v24 = *(v1 + 448);
  if (v24)
  {
    (**v24)(*(v1 + 448));
    free(v24);
    *(v1 + 448) = 0;
  }

  v25 = *(v1 + 440);
  if (v25)
  {
    (**v25)(*(v1 + 440));
    free(v25);
    *(v1 + 440) = 0;
  }

  if (*(v1 + 432))
  {
    v26 = *(v1 + 424);
    if (v26)
    {
      os_release(v26);
    }
  }

  *(v1 + 424) = 0;
  if (*(v1 + 416))
  {
    v27 = *(v1 + 408);
    if (v27)
    {
      os_release(v27);
    }
  }

  *(v1 + 408) = 0;
  if (*(v1 + 400))
  {
    v28 = *(v1 + 392);
    if (v28)
    {
      os_release(v28);
    }
  }

  *(v1 + 392) = 0;
  if (*(v1 + 384))
  {
    v29 = *(v1 + 376);
    if (v29)
    {
      os_release(v29);
    }
  }

  *(v1 + 376) = 0;
  if (*(v1 + 280))
  {
    v30 = *(v1 + 272);
    if (v30)
    {
      _Block_release(v30);
    }
  }

  *(v1 + 272) = 0;
  if (*(v1 + 240))
  {
    v31 = *(v1 + 232);
    if (v31)
    {
      _Block_release(v31);
    }
  }

  *(v1 + 232) = 0;
  if (*(v1 + 224))
  {
    v32 = *(v1 + 216);
    if (v32)
    {
      os_release(v32);
    }
  }

  free(v1);
}

void nw_frame_cache_destroy(char *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 2);
        v9 = "<null>";
        if (v8)
        {
          v10 = *(v8 + 16);
          if (v10)
          {
            v9 = v10;
          }
        }

        *buf = 136446722;
        v16 = "nw_frame_cache_destroy";
        v17 = 2048;
        v18 = a1;
        v19 = 2080;
        v20 = v9;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s destroying frame cache %p for protocol %s", buf, 0x20u);
      }
    }

    nw_frame_cache_remove_all(a1);
    *(a1 + 2) = 0;
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_frame_cache_destroy";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null frame_cache", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v3, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v16 = "nw_frame_cache_destroy";
      v6 = "%{public}s called with null frame_cache";
      goto LABEL_23;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v16 = "nw_frame_cache_destroy";
      v6 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v12 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_frame_cache_destroy";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_frame_cache_destroy";
      v6 = "%{public}s called with null frame_cache, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_24:
  if (v3)
  {
    free(v3);
  }
}

void nw_http_security_destroy(_BYTE *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136446722;
      v17 = "nw_http_security_destroy";
      v18 = 2082;
      v19 = a1 + 114;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v16, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136446722;
        v17 = "nw_http_security_destroy";
        v18 = 2082;
        v19 = a1 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v16, 0x20u);
      }
    }
  }

  else
  {
    if (a1[544])
    {
      v3 = *(a1 + 67);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v4 = *(a1 + 65);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v5 = *(a1 + 63);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v6 = *(a1 + 61);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v7 = *(a1 + 59);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 59) = 0;
    if (a1[464])
    {
      v8 = *(a1 + 57);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    *(a1 + 57) = 0;
    if (a1[408])
    {
      v9 = *(a1 + 50);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v10 = *(a1 + 45);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v11 = *(a1 + 43);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v12 = *(a1 + 35);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v13 = *(a1 + 33);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v14 = *(a1 + 31);
      if (v14)
      {
        os_release(v14);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_security_destroy(*(a1 + 32));
  }
}

void nw_http_redirect_destroy(_BYTE *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136446722;
      v19 = "nw_http_redirect_destroy";
      v20 = 2082;
      v21 = a1 + 114;
      v22 = 2080;
      v23 = " ";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v18, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136446722;
        v19 = "nw_http_redirect_destroy";
        v20 = 2082;
        v21 = a1 + 114;
        v22 = 2080;
        v23 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v18, 0x20u);
      }
    }
  }

  else
  {
    if (a1[576])
    {
      v3 = *(a1 + 71);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 71) = 0;
    if (a1[560])
    {
      v4 = *(a1 + 69);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 69) = 0;
    if (a1[544])
    {
      v5 = *(a1 + 67);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v6 = *(a1 + 65);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v7 = *(a1 + 63);
      if (v7)
      {
        dispatch_release(v7);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v8 = *(a1 + 61);
      if (v8)
      {
        _Block_release(v8);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v9 = *(a1 + 59);
      if (v9)
      {
        os_release(v9);
      }
    }

    *(a1 + 59) = 0;
    if (a1[464])
    {
      v10 = *(a1 + 57);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 57) = 0;
    if (a1[408])
    {
      v11 = *(a1 + 50);
      if (v11)
      {
        _Block_release(v11);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v12 = *(a1 + 45);
      if (v12)
      {
        _Block_release(v12);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v13 = *(a1 + 43);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v14 = *(a1 + 35);
      if (v14)
      {
        os_release(v14);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v15 = *(a1 + 33);
      if (v15)
      {
        os_release(v15);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v16 = *(a1 + 31);
      if (v16)
      {
        os_release(v16);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_redirect_destroy(*(a1 + 32));
  }
}

void ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke_140(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    return;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136446722;
      v12 = "nw_http_sniffing_destroy";
      v13 = 2082;
      v14 = v1 + 114;
      v15 = 2080;
      v16 = " ";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v11, 0x20u);
    }
  }

  v2 = *(v1 + 432);
  if (v2)
  {
    *(v1 + 440) = v2;
    operator delete(v2);
  }

  if (*(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
    if ((*(v1 + 400) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = *(v1 + 392);
    if (v3)
    {
      os_release(v3);
    }

    goto LABEL_12;
  }

  if (*(v1 + 400))
  {
    goto LABEL_10;
  }

LABEL_12:
  *(v1 + 392) = 0;
  if (*(v1 + 384))
  {
    v4 = *(v1 + 376);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(v1 + 376) = 0;
  if (*(v1 + 368))
  {
    v5 = *(v1 + 360);
    if (v5)
    {
      os_release(v5);
    }
  }

  *(v1 + 360) = 0;
  if (*(v1 + 352))
  {
    v6 = *(v1 + 344);
    if (v6)
    {
      os_release(v6);
    }
  }

  *(v1 + 344) = 0;
  if (*(v1 + 280))
  {
    v7 = *(v1 + 272);
    if (v7)
    {
      _Block_release(v7);
    }
  }

  *(v1 + 272) = 0;
  if (*(v1 + 240))
  {
    v8 = *(v1 + 232);
    if (v8)
    {
      _Block_release(v8);
    }
  }

  *(v1 + 232) = 0;
  if (*(v1 + 224))
  {
    v9 = *(v1 + 216);
    if (v9)
    {
      os_release(v9);
    }
  }

  free(v1);
}

void ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136446722;
        v13 = "nw_http_client_destroy";
        v14 = 2082;
        v15 = v1 + 114;
        v16 = 2080;
        v17 = " ";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v12, 0x20u);
      }
    }

    if (*(v1 + 448))
    {
      *(v1 + 452) |= 0x40u;
      if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v2 = __nwlog_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136446722;
          v13 = "nw_http_client_destroy";
          v14 = 2082;
          v15 = v1 + 114;
          v16 = 2080;
          v17 = " ";
          _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v12, 0x20u);
        }
      }
    }

    else
    {
      if (*(v1 + 480))
      {
        v3 = *(v1 + 472);
        if (v3)
        {
          os_release(v3);
        }
      }

      *(v1 + 472) = 0;
      if (*(v1 + 464))
      {
        v4 = *(v1 + 456);
        if (v4)
        {
          os_release(v4);
        }
      }

      *(v1 + 456) = 0;
      if (*(v1 + 408))
      {
        v5 = *(v1 + 400);
        if (v5)
        {
          _Block_release(v5);
        }
      }

      *(v1 + 400) = 0;
      if (*(v1 + 368))
      {
        v6 = *(v1 + 360);
        if (v6)
        {
          _Block_release(v6);
        }
      }

      *(v1 + 360) = 0;
      if (*(v1 + 352))
      {
        v7 = *(v1 + 344);
        if (v7)
        {
          os_release(v7);
        }
      }

      *(v1 + 344) = 0;
      if (*(v1 + 288))
      {
        v8 = *(v1 + 280);
        if (v8)
        {
          os_release(v8);
        }
      }

      *(v1 + 280) = 0;
      if (*(v1 + 272))
      {
        v9 = *(v1 + 264);
        if (v9)
        {
          os_release(v9);
        }
      }

      *(v1 + 264) = 0;
      if (*(v1 + 256))
      {
        v10 = *(v1 + 248);
        if (v10)
        {
          os_release(v10);
        }
      }

      free(v1);
    }
  }
}

uint64_t nw_frame_array_unclaimed_length(uint64_t *a1, int a2)
{
  v3 = 0;
  nw_frame_array_get_frame_count(a1, a2, &v3);
  return v3;
}

void nw_protocol_http2_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_input_available";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_input_available";
      v7 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v14 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_protocol_http2_input_available";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v4)
        {
          return;
        }

LABEL_41:
        free(v4);
        return;
      }

      if (!v14)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_input_available";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_input_available";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
    {
      v9 = handle;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      v11 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      handle = v9;
      if (v11)
      {
        v12 = *(v9 + 90);
        *buf = 136446978;
        v20 = "nw_protocol_http2_input_available";
        v21 = 2082;
        v22 = v9 + 380;
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v12;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        handle = v9;
      }
    }

    if ((*(handle + 377) & 0x1000) == 0)
    {
      nw_protocol_http2_process_input(handle);
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_http2_input_available";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http2", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_input_available";
    v7 = "%{public}s called with null http2";
    goto LABEL_39;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_input_available";
    v7 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_39;
  }

  v15 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v16 = os_log_type_enabled(v5, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http2_input_available";
    v7 = "%{public}s called with null http2, no backtrace";
    goto LABEL_39;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "nw_protocol_http2_input_available";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v4)
  {
    goto LABEL_41;
  }
}

uint64_t ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v46);
  v4 = v46;
  if (v3)
  {
    v5 = v46 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = v3;
    v8 = *(a1 + 40);
    if ((!v8 || (*(v8 + 379) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      v39 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      v4 = v46;
      if (v39)
      {
        v40 = *(a1 + 40);
        v41 = (v40 + 380);
        v42 = v40 == 0;
        v43 = "";
        if (!v40)
        {
          v41 = "";
        }

        v44 = *(v40 + 360);
        if (!v42)
        {
          v43 = " ";
        }

        *buf = 136447234;
        v48 = "nw_protocol_http2_process_input_block_invoke";
        v49 = 2082;
        v50 = v41;
        v51 = 2080;
        v52 = v43;
        v53 = 1024;
        v54 = v44;
        v55 = 1024;
        v56 = v46;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> processing frame of length %u bytes", buf, 0x2Cu);
        v4 = v46;
      }

      if (!v4)
      {
        v9 = 0;
        goto LABEL_55;
      }
    }

    v9 = 0;
    while (1)
    {
      v10 = MEMORY[0x1865DDB50](*(*(a1 + 40) + 96), v7 + v9, v4 - v9);
      if (v10 < 0)
      {
        break;
      }

      v9 += v10;
      v11 = *(a1 + 40);
      if ((!v11 || (*(v11 + 379) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        log = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 40);
          v13 = (v12 + 380);
          v14 = v12 == 0;
          v15 = "";
          if (!v12)
          {
            v13 = "";
          }

          v16 = *(v12 + 360);
          if (!v14)
          {
            v15 = " ";
          }

          *buf = 136447234;
          v48 = "nw_protocol_http2_process_input_block_invoke";
          v49 = 2082;
          v50 = v13;
          v51 = 2080;
          v52 = v15;
          v53 = 1024;
          v54 = v16;
          v55 = 1024;
          v56 = v9;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2_session_mem_recv consumed %u bytes", buf, 0x2Cu);
        }
      }

      v4 = v46;
      if (v9 >= v46)
      {
        goto LABEL_55;
      }
    }

    v17 = *(a1 + 40);
    v18 = *(v17 + 377) & 0x10;
    v19 = *(v17 + 379);
    if (v10 != -902 || v18 == 0)
    {
      if (v19)
      {
        goto LABEL_54;
      }

      v21 = v10;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v23 = *(a1 + 40);
      if (v23)
      {
        v24 = (v23 + 380);
      }

      else
      {
        v24 = "";
      }

      if (v23)
      {
        v25 = " ";
      }

      else
      {
        v25 = "";
      }

      v26 = *(v23 + 360);
      v27 = nghttp2_strerror();
      *buf = 136447490;
      v48 = "nw_protocol_http2_process_input_block_invoke";
      v49 = 2082;
      v50 = v24;
      v51 = 2080;
      v52 = v25;
      v53 = 1024;
      v54 = v26;
      v55 = 1024;
      v56 = v21;
      v57 = 2082;
      v58 = v27;
      v28 = "%{public}s %{public}s%s<i%u> ERROR: Could not process incoming data: %d (%{public}s)";
      v29 = v22;
      v30 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (v19)
      {
        goto LABEL_54;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v32 = *(a1 + 40);
      if (v32)
      {
        v33 = (v32 + 380);
      }

      else
      {
        v33 = "";
      }

      if (v32)
      {
        v34 = " ";
      }

      else
      {
        v34 = "";
      }

      v35 = *(v32 + 360);
      v36 = nghttp2_strerror();
      *buf = 136447490;
      v48 = "nw_protocol_http2_process_input_block_invoke";
      v49 = 2082;
      v50 = v33;
      v51 = 2080;
      v52 = v34;
      v53 = 1024;
      v54 = v35;
      v55 = 1024;
      v56 = -902;
      v57 = 2082;
      v58 = v36;
      v28 = "%{public}s %{public}s%s<i%u> Could not process incoming data: %d (%{public}s), closing";
      v29 = v31;
      v30 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_181A37000, v29, v30, v28, buf, 0x36u);
LABEL_54:
    nw_http2_connection_close(*(a1 + 40));
LABEL_55:
    *(*(*(a1 + 32) + 8) + 24) += v9;
  }

  return v6;
}

uint64_t nw_http_connection_metadata_get_settings_received(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_connection_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_connection_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_connection_metadata_get_settings_received_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_settings_received";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_settings_received";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_settings_received";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_settings_received";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6 & 1;
}

void sub_181F11BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_connection_metadata_get_webtransport_state(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_connection_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_connection_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_connection_metadata_get_webtransport_state_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181F12174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_connection_metadata_get_webtransport_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (!v3)
  {
    v3 = nw_webtransport_connection_state_create();
    *(a2 + 160) = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

void *nw_webtransport_connection_state_create()
{
  v11 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x661FAC76uLL);
  if (result)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  v5 = 136446722;
  v6 = "nw_webtransport_connection_state_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v7 = 2048;
  v8 = 1;
  v9 = 2048;
  v10 = 32;
  v4 = 32;
  v3 = _os_log_send_and_compose_impl(v2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v5, v4);
  result = __nwlog_should_abort(v3);
  if (!result)
  {
    free(v3);
    result = 0;
LABEL_7:
    *result = 0;
    result[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

void nw_http_connection_metadata_set_connect_enabled(void *a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_connect_enabled";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_connection_metadata_set_connect_enabled";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_connection_metadata_set_connect_enabled_block_invoke;
    v17 = &__block_descriptor_33_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_connection_metadata_set_connect_enabled";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be http_connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_connect_enabled";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_protocol_http2_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_http2_output_available";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http2_output_available";
      v9 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v16 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_protocol_http2_output_available";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_51:
        if (!v6)
        {
          return;
        }

LABEL_52:
        free(v6);
        return;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http2_output_available";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v22 = "nw_protocol_http2_output_available";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_50:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_51;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v12 = handle[90];
        *buf = 136446978;
        v22 = "nw_protocol_http2_output_available";
        v23 = 2082;
        v24 = (handle + 95);
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (nghttp2_session_want_write())
    {
      if ((*(handle + 379) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v3 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
        {
          v4 = handle[90];
          *buf = 136446978;
          v22 = "nw_protocol_http2_output_available";
          v23 = 2082;
          v24 = (handle + 95);
          v25 = 2080;
          v26 = " ";
          v27 = 1024;
          v28 = v4;
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> session send wanted by nghttp2 library", buf, 0x26u);
        }
      }

      nw_http2_session_send(handle);
      if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v14 = handle[90];
          *buf = 136446978;
          v22 = "nw_protocol_http2_output_available";
          v23 = 2082;
          v24 = (handle + 95);
          v25 = 2080;
          v26 = " ";
          v27 = 1024;
          v28 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called session send for nghttp2 session", buf, 0x26u);
        }
      }
    }

    nw_http2_drain_output_frames(handle);
    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_http2_output_available";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http2", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_51;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v22 = "nw_protocol_http2_output_available";
    v9 = "%{public}s called with null http2";
    goto LABEL_50;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v22 = "nw_protocol_http2_output_available";
    v9 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_50;
  }

  v17 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v18 = os_log_type_enabled(v7, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v22 = "nw_protocol_http2_output_available";
    v9 = "%{public}s called with null http2, no backtrace";
    goto LABEL_50;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_protocol_http2_output_available";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v6)
  {
    goto LABEL_52;
  }
}

void ___ZL21nw_http2_session_sendP17nw_protocol_http2_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    *(v1 + 377) &= ~0x4000u;

    nw_http2_finalize_written_output_frames(v1);
  }
}

uint64_t __nw_protocol_http2_create_block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_http2_finalize_written_output_frames(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 379) & 1) == 0)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_4;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v23 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v24 = " ";
      v25 = *(a1 + 360);
      v46 = "nw_http2_finalize_written_output_frames";
      v47 = 2082;
      v26 = (a1 + 380);
      *buf = 136446978;
      if (!a1)
      {
        v26 = "";
      }

      v48 = v26;
      if (!a1)
      {
        v24 = "";
      }

      v49 = 2080;
      v50 = v24;
      v51 = 1024;
      v52 = v25;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }

    else
    {
LABEL_4:
      if (!a1)
      {
        v18 = __nwlog_obj();
        *buf = 136446210;
        v46 = "nw_http2_finalize_written_output_frames";
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null http2", buf, 12);
        v42[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v19, v42, &type))
        {
          goto LABEL_97;
        }

        if (v42[0] == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = v42[0];
          if (!os_log_type_enabled(v20, v42[0]))
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v46 = "nw_http2_finalize_written_output_frames";
          v22 = "%{public}s called with null http2";
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v21 = v42[0];
          v33 = os_log_type_enabled(v20, v42[0]);
          if (backtrace_string)
          {
            if (v33)
            {
              *buf = 136446466;
              v46 = "nw_http2_finalize_written_output_frames";
              v47 = 2082;
              v48 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
LABEL_97:
            if (!v19)
            {
              return;
            }

LABEL_98:
            free(v19);
            return;
          }

          if (!v33)
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v46 = "nw_http2_finalize_written_output_frames";
          v22 = "%{public}s called with null http2, no backtrace";
        }

        else
        {
          v20 = __nwlog_obj();
          v21 = v42[0];
          if (!os_log_type_enabled(v20, v42[0]))
          {
            goto LABEL_97;
          }

          *buf = 136446210;
          v46 = "nw_http2_finalize_written_output_frames";
          v22 = "%{public}s called with null http2, backtrace limit exceeded";
        }

LABEL_96:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
        goto LABEL_97;
      }
    }
  }

  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  *(a1 + 366) = 0;
  if (v2)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_28_87159);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v4 = *(a1 + 32);
      if (v4)
      {
LABEL_11:
        *v42 = 0;
        v43 = v42;
        v5 = *v3;
        if (*v3)
        {
          *(v5 + 40) = v42;
          v6 = *(a1 + 248);
          *v42 = v5;
          v43 = v6;
        }

        *(a1 + 240) = 0;
        *(a1 + 248) = v3;
        v7 = *(v4 + 24);
        if (v7)
        {
          v8 = *(v7 + 96);
          if (v8)
          {
            v8();
LABEL_16:
            if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v27 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                v28 = *(a1 + 360);
                *buf = 136446978;
                v46 = "nw_http2_finalize_written_output_frames";
                v47 = 2082;
                v48 = (a1 + 380);
                v49 = 2080;
                v50 = " ";
                v51 = 1024;
                v52 = v28;
                _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> finalized written output frames", buf, 0x26u);
              }
            }

            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_28_87159);
            }

            if (_nw_signposts_enabled == 1)
            {
              if (kdebug_is_enabled())
              {
                kdebug_trace();
              }
            }

            return;
          }
        }

        v9 = v4;
        v10 = __nwlog_obj();
        v11 = v9;
        v12 = *(v9 + 16);
        if (!v12)
        {
          v12 = "invalid";
        }

        *buf = 136446466;
        v46 = "nw_http2_finalize_written_output_frames";
        v47 = 2082;
        v48 = v12;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", buf, 22);
        type = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (__nwlog_fault(v13, &type, &v41))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (!os_log_type_enabled(v14, type))
            {
              goto LABEL_90;
            }

            v16 = *(v11 + 16);
            if (!v16)
            {
              v16 = "invalid";
            }

            *buf = 136446466;
            v46 = "nw_http2_finalize_written_output_frames";
            v47 = 2082;
            v48 = v16;
            v17 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
            goto LABEL_89;
          }

          if (v41 != 1)
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (!os_log_type_enabled(v14, type))
            {
              goto LABEL_90;
            }

            v39 = *(v11 + 16);
            if (!v39)
            {
              v39 = "invalid";
            }

            *buf = 136446466;
            v46 = "nw_http2_finalize_written_output_frames";
            v47 = 2082;
            v48 = v39;
            v17 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_89;
          }

          v29 = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v15 = type;
          v30 = os_log_type_enabled(v14, type);
          if (v29)
          {
            if (v30)
            {
              v31 = "invalid";
              if (*(v11 + 16))
              {
                v31 = *(v11 + 16);
              }

              *buf = 136446722;
              v46 = "nw_http2_finalize_written_output_frames";
              v47 = 2082;
              v48 = v31;
              v49 = 2082;
              v50 = v29;
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v29);
            goto LABEL_90;
          }

          if (v30)
          {
            v40 = *(v11 + 16);
            if (!v40)
            {
              v40 = "invalid";
            }

            *buf = 136446466;
            v46 = "nw_http2_finalize_written_output_frames";
            v47 = 2082;
            v48 = v40;
            v17 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
LABEL_89:
            _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x16u);
          }
        }

LABEL_90:
        if (v13)
        {
          free(v13);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        goto LABEL_11;
      }
    }

    v36 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_http2_finalize_written_output_frames";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null output_handler", buf, 12);
    v42[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v19, v42, &type))
    {
      goto LABEL_97;
    }

    if (v42[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = v42[0];
      if (!os_log_type_enabled(v20, v42[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v46 = "nw_http2_finalize_written_output_frames";
      v22 = "%{public}s called with null output_handler";
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = v42[0];
      if (!os_log_type_enabled(v20, v42[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v46 = "nw_http2_finalize_written_output_frames";
      v22 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_96;
    }

    v37 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = v42[0];
    v38 = os_log_type_enabled(v20, v42[0]);
    if (!v37)
    {
      if (!v38)
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v46 = "nw_http2_finalize_written_output_frames";
      v22 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_96;
    }

    if (v38)
    {
      *buf = 136446466;
      v46 = "nw_http2_finalize_written_output_frames";
      v47 = 2082;
      v48 = v37;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v37);
    if (v19)
    {
      goto LABEL_98;
    }
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v34 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 360);
      *buf = 136446978;
      v46 = "nw_http2_finalize_written_output_frames";
      v47 = 2082;
      v48 = (a1 + 380);
      v49 = 2080;
      v50 = " ";
      v51 = 1024;
      v52 = v35;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no written output frames, nothing to finalize", buf, 0x26u);
    }
  }
}

void sub_181F1399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_listener_copy_description_block_invoke(uint64_t a1)
{
  v2 = _nw_parameters_copy_description(*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  if (v3[22])
  {
    v4 = _nw_path_copy_description(v3[22]);
    v3 = *(a1 + 32);
    v5 = v3[34];
    if (v5)
    {
LABEL_3:
      v6 = nw_advertise_descriptor_copy_description(v5);
      v3 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[34];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(*(a1 + 40) + 8);
  id_string = nw_listener_get_id_string(v3);
  v9 = *(a1 + 32);
  v10 = *(v9 + 128);
  if (v10 > 4)
  {
    v11 = "<unknown>";
  }

  else
  {
    v11 = off_1E6A2E220[v10];
  }

  v12 = *(v9 + 288);
  v13 = v12;
  if (v12)
  {
    description = _nw_endpoint_get_description(v12);
  }

  else
  {
    description = "<NULL>";
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = "<NULL>";
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = "<NULL>";
  }

  asprintf((v7 + 24), "[%s %s, local endpoint: %s, parameters: %s, port: %d, path %s, service: %s]", id_string, v11, description, v2, *(*(a1 + 32) + 308), v15, v16);
  if (v6)
  {
    free(v6);
  }

  if (v2)
  {
    free(v2);
  }

  if (v4)
  {

    free(v4);
  }
}

uint64_t nw_advertise_descriptor_copy_description(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    v3 = *(v1 + 2);
    if (v3 == 2)
    {
      v8 = "<NULL>";
      if (v1[7])
      {
        v8 = v1[7];
      }

      asprintf(buf, "%s.%s scope:%x route:%x custom:%zu", v8, v1[6], *(v1 + 16), *(v1 + 17), v1[9]);
    }

    else if (v3 == 1)
    {
      v4 = "<NULL>";
      v5 = v1[2];
      if (!v5)
      {
        v5 = "<NULL>";
      }

      v6 = v1[5];
      if (v1[4])
      {
        v4 = v1[4];
      }

      if (v6)
      {
        v6 = *(v6 + 2);
      }

      if (v1[11])
      {
        v7 = " noAutoRename";
      }

      else
      {
        v7 = "";
      }

      asprintf(buf, "%s.%s.%s txtLength:%zu%s", v5, v1[3], v4, v6, v7);
    }

    v9 = *buf;
    goto LABEL_18;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_advertise_descriptor_copy_description";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null descriptor", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_advertise_descriptor_copy_description";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_advertise_descriptor_copy_description";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

void nw_framer_protocol_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2[1])
      {
        if ((v2[76] & 2) == 0)
        {
          *(v2 + 608) &= 0xBDu;
          if (!nw_framer_flush_output(v2, 0))
          {
            goto LABEL_14;
          }

          v4 = v3[42];
          if (!v4)
          {
            goto LABEL_14;
          }

          v5 = *(v4 + 24);
          if (!v5)
          {
            goto LABEL_14;
          }

          v6 = *(v5 + 72);
          if (!v6)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v7 = v2[42];
        if (v7)
        {
          v8 = *(v7 + 24);
          if (v8)
          {
            v6 = *(v8 + 72);
            if (v6)
            {
LABEL_13:
              v6();
LABEL_14:

              return;
            }
          }
        }

        v9 = __nwlog_obj();
        v10 = v3[42];
        v11 = "invalid";
        if (v10)
        {
          v12 = *(v10 + 16);
          if (v12)
          {
            v11 = v12;
          }
        }

        *buf = 136446466;
        v55 = "nw_framer_protocol_output_available";
        v56 = 2082;
        v57 = v11;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s protocol %{public}s has invalid output_available callback", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v13, &type, &v52))
        {
          goto LABEL_99;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v15 = type;
          if (os_log_type_enabled(v14, type))
          {
            v16 = v3[42];
            v17 = "invalid";
            if (v16)
            {
              v18 = *(v16 + 16);
              if (v18)
              {
                v17 = v18;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v17;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid output_available callback", buf, 0x16u);
          }
        }

        else if (v52 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v28 = type;
          v29 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v29)
            {
              v30 = v3[42];
              v31 = "invalid";
              if (v30)
              {
                v32 = *(v30 + 16);
                if (v32)
                {
                  v31 = v32;
                }
              }

              *buf = 136446722;
              v55 = "nw_framer_protocol_output_available";
              v56 = 2082;
              v57 = v31;
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v28, "%{public}s protocol %{public}s has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            if (!v13)
            {
              goto LABEL_14;
            }

            goto LABEL_100;
          }

          if (v29)
          {
            v49 = v3[42];
            v50 = "invalid";
            if (v49)
            {
              v51 = *(v49 + 16);
              if (v51)
              {
                v50 = v51;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v50;
            _os_log_impl(&dword_181A37000, v14, v28, "%{public}s protocol %{public}s has invalid output_available callback, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v14, type))
          {
            v43 = v3[42];
            v44 = "invalid";
            if (v43)
            {
              v45 = *(v43 + 16);
              if (v45)
              {
                v44 = v45;
              }
            }

            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v44;
            _os_log_impl(&dword_181A37000, v14, v42, "%{public}s protocol %{public}s has invalid output_available callback, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      else
      {
        v25 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null framer->parent_definition", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v13, &type, &v52))
        {
          goto LABEL_99;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v14, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v52 == 1)
        {
          v39 = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v40 = type;
          v41 = os_log_type_enabled(v14, type);
          if (v39)
          {
            if (v41)
            {
              *buf = 136446466;
              v55 = "nw_framer_protocol_output_available";
              v56 = 2082;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v14, v40, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v39);
            if (!v13)
            {
              goto LABEL_14;
            }

            goto LABEL_100;
          }

          if (v41)
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v40, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v14, type))
          {
            *buf = 136446210;
            v55 = "nw_framer_protocol_output_available";
            _os_log_impl(&dword_181A37000, v14, v48, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_framer_protocol_output_available";
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v13, &type, &v52))
      {
        goto LABEL_99;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null framer", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v14, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            v55 = "nw_framer_protocol_output_available";
            v56 = 2082;
            v57 = v36;
            _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
LABEL_99:
          if (!v13)
          {
            goto LABEL_14;
          }

LABEL_100:
          free(v13);
          goto LABEL_14;
        }

        if (v38)
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v55 = "nw_framer_protocol_output_available";
          _os_log_impl(&dword_181A37000, v14, v47, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_99;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_framer_protocol_output_available";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v20, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v21, type);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          v55 = "nw_framer_protocol_output_available";
          v56 = 2082;
          v57 = v33;
          _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_91;
      }

      if (v35)
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v55 = "nw_framer_protocol_output_available";
        _os_log_impl(&dword_181A37000, v21, v46, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_91:
  if (v20)
  {
    free(v20);
  }
}

uint64_t sub_181F148B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_181F1490C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(v2, ObjectType, v1);
}

uint64_t NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)(size_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_181F14B5C;
  *(v11 + 24) = v10;
  v15[4] = sub_181F14B2C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_181F14AF8;
  v15[3] = &block_descriptor_9;
  v12 = _Block_copy(v15);

  v13 = nw_framer_parse_input(v9, a1, a2, 0, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F14B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 + a1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(a1, v4, 0, a3);
}

NWConcrete_nw_path_flow_registration *nw_path_flow_registration_create_new_flow(void *a1, int a2, int a3, int a4, int a5, _OWORD *a6, void *a7, int a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a7;
  if (v15)
  {
    v17 = nw_path_flow_registration_copy_parent_evaluator(v15);
    v18 = v17;
    if (v17)
    {
      flow_inner = nw_path_evaluator_create_flow_inner(v17, a2, a3, a4, a5, a6, v16, a8, 0, 0, 0);
      subflow_registrations = v15->subflow_registrations;
      if (subflow_registrations || (v21 = _nw_array_create(), v22 = v15->subflow_registrations, v15->subflow_registrations = v21, v22, (subflow_registrations = v15->subflow_registrations) != 0))
      {
        if (flow_inner)
        {
          _nw_array_append(subflow_registrations, flow_inner);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v15->subflow_registrations;
        *buf = 136446722;
        v45 = "nw_path_flow_registration_create_new_flow";
        v46 = 2112;
        v47 = v24;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s Added subflow registration %@ to %@", buf, 0x20u);
      }

LABEL_10:
      goto LABEL_11;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_path_flow_registration_create_new_flow";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null evaluator", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v31, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null evaluator", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v38 = type;
        v39 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v39)
          {
            *buf = 136446466;
            v45 = "nw_path_flow_registration_create_new_flow";
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v39)
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v45 = "nw_path_flow_registration_create_new_flow";
          _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v31)
    {
      free(v31);
    }

    flow_inner = 0;
    goto LABEL_10;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v45 = "nw_path_flow_registration_create_new_flow";
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null existing_flow_registration", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v27, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null existing_flow_registration", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v28, type);
      if (v34)
      {
        if (v36)
        {
          *buf = 136446466;
          v45 = "nw_path_flow_registration_create_new_flow";
          v46 = 2082;
          v47 = v34;
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null existing_flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_41;
      }

      if (v36)
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null existing_flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v45 = "nw_path_flow_registration_create_new_flow";
        _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null existing_flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_41:
  if (v27)
  {
    free(v27);
  }

  flow_inner = 0;
LABEL_11:

  return flow_inner;
}

uint64_t nw_protocol_instance_establish_path(void *a1, NSObject *a2)
{
  v230 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v121 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_establish_path";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null instance", buf, 12);

    LOBYTE(v225) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v122, &v225, &__src))
    {
      goto LABEL_239;
    }

    if (v225 == 17)
    {
      v123 = __nwlog_obj();
      v124 = v225;
      if (os_log_type_enabled(v123, v225))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v128 = v225;
      v129 = os_log_type_enabled(v123, v225);
      if (backtrace_string)
      {
        if (v129)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v123, v128, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_239:
        if (!v122)
        {
          goto LABEL_18;
        }

LABEL_240:
        free(v122);
        goto LABEL_18;
      }

      if (v129)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v128, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v123 = __nwlog_obj();
      v133 = v225;
      if (os_log_type_enabled(v123, v225))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v133, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_238:

    goto LABEL_239;
  }

  if (!a2)
  {
    v125 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_establish_path";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s called with null path", buf, 12);

    LOBYTE(v225) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v122, &v225, &__src))
    {
      goto LABEL_239;
    }

    if (v225 == 17)
    {
      v123 = __nwlog_obj();
      v126 = v225;
      if (os_log_type_enabled(v123, v225))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v126, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      v130 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v131 = v225;
      v132 = os_log_type_enabled(v123, v225);
      if (v130)
      {
        if (v132)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v130;
          _os_log_impl(&dword_181A37000, v123, v131, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v130);
        if (!v122)
        {
          goto LABEL_18;
        }

        goto LABEL_240;
      }

      if (v132)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v131, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v123 = __nwlog_obj();
      v134 = v225;
      if (os_log_type_enabled(v123, v225))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        _os_log_impl(&dword_181A37000, v123, v134, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_238;
  }

  v5 = v3[37];
  if (!v5)
  {
    if ((*(v4 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_establish_path";
        *&buf[12] = 2082;
        *&buf[14] = v4 + 415;
        *&buf[22] = 2080;
        v210 = " ";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path table found", buf, 0x20u);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  node = nw_hash_table_get_node(v5, a2, 8);
  if (node)
  {
    v7 = node;
    if (node[7])
    {
      if ((*(v4 + 413) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v210 = " ";
          v211 = 2048;
          v212 = a2;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx already has registered flow", buf, 0x2Au);
        }

LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v186 = (node + 4);
    stack = uuid_is_null(node + 32);
    v11 = *(v7 + 168);
    if (v11)
    {
      v12 = v11;
LABEL_43:
      v24 = v4 + 5;
      goto LABEL_44;
    }

    if (!v4[45] && !v4[46])
    {
LABEL_49:
      v33 = v4[44];
      v24 = v4 + 5;
      if (!v33)
      {
        v25 = *v24;
        v187 = 0;
        v188 = 0;
        if (!v25)
        {
          goto LABEL_65;
        }

LABEL_45:
        v188 = v25;
        v26 = _nw_endpoint_get_type(v188);

        if (v26 != 1)
        {
          goto LABEL_65;
        }

        v188 = v188;
        address_family = _nw_endpoint_get_address_family(v188);

        if (address_family != 2)
        {
          goto LABEL_65;
        }

        v28 = _nw_parameters_create();
        nw_parameters_require_interface(v28, *(v7 + 48));
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(0, v28);
        v30 = evaluator_for_endpoint;
        if (evaluator_for_endpoint)
        {
          v31 = evaluator_for_endpoint;
          os_unfair_lock_lock(v30 + 24);
          v32 = v31[6];
          os_unfair_lock_unlock(v30 + 24);
        }

        else
        {
          v32 = 0;
        }

        if (!nw_path_is_eligible_for_CrazyIvan46(v32) || !nw_path_has_nat64_prefixes(v32))
        {
          goto LABEL_64;
        }

        v225 = 0uLL;
        if (nw_endpoint_fillout_v4_address(v188, &v225))
        {
          v34 = nw_path_nat64_prefixes(v32);
          __src = 0;
          p_src = 0;
          v35 = v34[4];
          if (v35 && (__dst = 0uLL, LODWORD(__src) = v35, memcpy(&__src + 4, v34, v35), nw_nat64_synthesize_v6(&__src, &v225 + 2, &__dst)) || (v36 = v34[9], v36) && (__dst = 0uLL, LODWORD(__src) = v36, memcpy(&__src + 4, v34 + 5, v36), (nw_nat64_synthesize_v6(&__src, &v225 + 2, &__dst) & 1) != 0) || (v37 = v34[14], v37) && (__dst = 0uLL, LODWORD(__src) = v37, memcpy(&__src + 4, v34 + 10, v37), (nw_nat64_synthesize_v6(&__src, &v225 + 2, &__dst) & 1) != 0) || (v38 = v34[19], v38) && (__dst = 0uLL, LODWORD(__src) = v38, memcpy(&__src + 4, v34 + 15, v38), (nw_nat64_synthesize_v6(&__src, &v225 + 2, &__dst) & 1) != 0))
          {
            *buf = 7708;
            *&buf[2] = WORD1(v225);
            *&buf[8] = __dst;
            *&buf[4] = 0;
            LODWORD(v210) = 0;
            address = _nw_endpoint_create_address(buf);

            v187 = address;
          }

LABEL_64:

LABEL_65:
          v40 = *(v7 + 144);
          v41 = *(v4 + 413);
          if (v40)
          {
            if ((v41 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = *(v7 + 144);
                if (v43)
                {
                  v44 = v43;
                  os_unfair_lock_lock(v43 + 24);
                  v45 = v44[6];
                  os_unfair_lock_unlock(v43 + 24);
                }

                else
                {
                  v45 = 0;
                }

                v49 = v45;
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2112;
                v212 = v43;
                v213 = 2112;
                *v214 = v49;
                _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sCreating new flow from evaluator %@ path %@", buf, 0x34u);
              }

              v40 = *(v7 + 144);
            }

            new_flow_from_evaluator = nw_path_flow_registration_create_new_flow_from_evaluator(v4[35], v40);
          }

          else
          {
            if ((v41 & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2112;
                v212 = v188;
                _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sCreating new flow for %@", buf, 0x2Au);
              }
            }

            if (stack)
            {
              v47 = 0;
            }

            else
            {
              v47 = v186;
            }

            new_flow_from_evaluator = nw_path_flow_registration_create_new_flow(v4[35], 1, stack == 0, 0, 0, v47, v187, 0);
          }

          v50 = *(v7 + 56);
          *(v7 + 56) = new_flow_from_evaluator;

          v51 = *(v7 + 56);
          if (v51)
          {
            v52 = v4 - 12;
            if (stack)
            {
              v229 = *v52;
              v228 = 0uLL;
              nw_path_flow_registration_get_id(v51, &v228);
              *v52 = v228;
              v4[40] = a2;
              nw_path_override_interface(v4[36], *(v7 + 48));
              v53 = v187;
              if (!v187)
              {
                v53 = *v24;
              }

              objc_storeStrong(v4 + 41, v53);
              v54 = v4[42];
              v4[42] = 0;

              v55 = _nw_parameters_copy();
              v56 = v4[43];
              v4[43] = v55;

              nw_parameters_require_interface(v4[43], *(v7 + 48));
              *&v225 = 0;
              *(&v225 + 1) = &v225;
              v226 = 0x2020000000;
              v227 = v4 - 12;
              __src = 0;
              p_src = &__src;
              v223 = 0x2020000000;
              v224 = 0;
              *&__dst = 0;
              *(&__dst + 1) = &__dst;
              v203 = 0x2020000000;
              v204 = 0;
              v57 = v4[6];
              v198[0] = MEMORY[0x1E69E9820];
              v198[1] = 3221225472;
              v198[2] = __nw_protocol_instance_establish_path_block_invoke;
              v198[3] = &unk_1E6A2CD50;
              v58 = v4;
              v199 = v58;
              v200 = &__src;
              p_dst = &__dst;
              nw_parameters_internal_iterate_protocol_stack(v57, 4, 0, v198);
              if (*(p_src + 24) == 1)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v210) = 0;
                v59 = v4[43];
                v191[0] = MEMORY[0x1E69E9820];
                v191[1] = 3221225472;
                v191[2] = __nw_protocol_instance_establish_path_block_invoke_2;
                v191[3] = &unk_1E6A2CD78;
                v193 = &__dst;
                v60 = v58;
                v192 = v60;
                v194 = &v225;
                v195 = buf;
                v196 = a2;
                v197 = v186;
                nw_parameters_internal_iterate_protocol_stack(v59, 4, 0, v191);
                if (*(*&buf[8] + 24) == 1)
                {
                  if ((*(v4 + 413) & 0x80000000) == 0)
                  {
                    v61 = __nwlog_obj();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      *v216 = 136446722;
                      *&v216[4] = "nw_protocol_instance_establish_path";
                      v217 = 2082;
                      v218 = v60 + 415;
                      v219 = 2080;
                      v220 = " ";
                      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach application protocol", v216, 0x20u);
                    }
                  }

                  nw_protocol_instance_tear_down_path_inner(v60, v186);
                  *v52 = v229;
                  v4[40] = 0;
                  nw_path_override_interface(v4[36], 0);
                  v62 = v4[41];
                  v4[41] = 0;

                  v63 = v4[42];
                  v4[42] = 0;

                  v64 = v4[43];
                  v4[43] = 0;

                  _Block_object_dispose(buf, 8);
                  v9 = 0;
                  goto LABEL_180;
                }

                _Block_object_dispose(buf, 8);
              }

              v215 = *v52;
              if ((*(v4 + 413) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v86 = gLogObj;
                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
                {
                  v87 = *(v7 + 48);
                  *buf = 136447746;
                  *&buf[4] = "nw_protocol_instance_establish_path";
                  *&buf[12] = 2082;
                  *&buf[14] = v58 + 415;
                  *&buf[22] = 2080;
                  v210 = " ";
                  v211 = 2048;
                  v212 = a2;
                  v213 = 1040;
                  *v214 = 16;
                  *&v214[4] = 2096;
                  *&v214[6] = &v215;
                  *&v214[14] = 2112;
                  *&v214[16] = v87;
                  _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx requested socket flow %{uuid_t}.16P over %@", buf, 0x44u);
                }
              }

              v88 = v58;
              v89 = nw_hash_table_get_node(v4[37], a2, 8);
              if (v89)
              {
                v90 = v89;
                if (v89[7])
                {
                  if (nw_socket_protocol_identifier::onceToken[0] != -1)
                  {
                    dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
                  }

                  internal = nw_protocol_create_internal(&nw_socket_protocol_identifier::identifier, v4[41], v4[43], 1);
                  if (internal)
                  {
                    v92 = internal;
                    if (nw_socket_protocol_identifier::onceToken[0] != -1)
                    {
                      dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
                    }

                    v182 = nw_protocol_definition_create_with_identifier(&nw_socket_protocol_identifier::identifier);
                    stacka = nw_parameters_copy_default_protocol_stack(v4[43]);
                    v183 = nw_protocol_stack_copy_transport_protocol(stacka);
                    nw_protocol_instance_set_protocol_instance(v88, v183, v182, v92);
                    v181 = nw_protocol_stack_copy_internet_protocol(stacka);
                    nw_protocol_instance_set_protocol_instance(v88, v181, v182, v92);
                    v93 = v90 + 8;
                    if (v90[8])
                    {
                      v94 = v90[8];
                    }

                    else
                    {
                      v94 = (v4 - 12);
                    }

                    nw::share(v216, v92);
                    nw::share(&v207, v94);
                    v95 = *(v92 + 24);
                    if (v95)
                    {
                      v96 = *v95;
                      if (v96)
                      {
                        v97 = v96(v92, v94);
                        if ((v208 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_140;
                      }
                    }

                    v135 = __nwlog_obj();
                    v136 = *(v92 + 16);
                    *buf = 136446722;
                    *&buf[4] = "__nw_protocol_add_input_handler";
                    if (!v136)
                    {
                      v136 = "invalid";
                    }

                    *&buf[12] = 2082;
                    *&buf[14] = v136;
                    *&buf[22] = 2048;
                    v210 = v92;
                    v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v135, 16, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 32);

                    type = OS_LOG_TYPE_ERROR;
                    v205 = 0;
                    if (__nwlog_fault(v180, &type, &v205))
                    {
                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        v137 = __nwlog_obj();
                        v177 = type;
                        if (os_log_type_enabled(v137, type))
                        {
                          v138 = *(v92 + 16);
                          if (!v138)
                          {
                            v138 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v138;
                          *&buf[22] = 2048;
                          v210 = v92;
                          _os_log_impl(&dword_181A37000, v137, v177, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
                        }

LABEL_249:

                        goto LABEL_315;
                      }

                      if (v205 != 1)
                      {
                        v137 = __nwlog_obj();
                        v179 = type;
                        if (os_log_type_enabled(v137, type))
                        {
                          v162 = *(v92 + 16);
                          if (!v162)
                          {
                            v162 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v162;
                          *&buf[22] = 2048;
                          v210 = v92;
                          _os_log_impl(&dword_181A37000, v137, v179, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
                        }

                        goto LABEL_249;
                      }

                      v147 = __nw_create_backtrace_string();
                      v178 = __nwlog_obj();
                      v176 = type;
                      v148 = os_log_type_enabled(v178, type);
                      if (v147)
                      {
                        if (v148)
                        {
                          v149 = *(v92 + 16);
                          if (!v149)
                          {
                            v149 = "invalid";
                          }

                          *buf = 136446978;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v149;
                          *&buf[22] = 2048;
                          v210 = v92;
                          v211 = 2082;
                          v212 = v147;
                          _os_log_impl(&dword_181A37000, v178, v176, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v147);
                      }

                      else
                      {
                        if (v148)
                        {
                          v173 = *(v92 + 16);
                          if (!v173)
                          {
                            v173 = "invalid";
                          }

                          *buf = 136446722;
                          *&buf[4] = "__nw_protocol_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v173;
                          *&buf[22] = 2048;
                          v210 = v92;
                          _os_log_impl(&dword_181A37000, v178, v176, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
                        }
                      }
                    }

LABEL_315:
                    if (v180)
                    {
                      free(v180);
                    }

                    v97 = 0;
                    if ((v208 & 1) == 0)
                    {
LABEL_141:
                      if (v216[8])
                      {
                        nw::release_if_needed<nw_protocol *>(v216);
                        if (!*v93)
                        {
LABEL_161:
                          nw::share(buf, v92);
                          v101 = *(v90 + 72);
                          if (v101)
                          {
                            nw::release_if_needed<nw_protocol *>(v90 + 8);
                            v101 = *(v90 + 72);
                          }

                          v90[8] = *buf;
                          *(v90 + 72) = v101 & 0xFE | buf[8] & 1;
                        }
                      }

                      else if (!*v93)
                      {
                        goto LABEL_161;
                      }

                      p_super = &v182->super;
                      goto LABEL_165;
                    }

LABEL_140:
                    nw::release_if_needed<nw_protocol *>(&v207);
                    goto LABEL_141;
                  }

                  if ((*(v4 + 413) & 0x80000000) == 0)
                  {
                    p_super = __nwlog_obj();
                    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                      *&buf[12] = 2082;
                      *&buf[14] = v88 + 415;
                      *&buf[22] = 2080;
                      v210 = " ";
                      v211 = 2048;
                      v212 = a2;
                      _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx could not create socket protocol", buf, 0x2Au);
                    }

                    v97 = 0;
LABEL_165:

                    *v52 = v229;
                    v102 = *(v4 + 413);
                    if (v97)
                    {
                      if ((v102 & 0x80000000) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v103 = gLogObj;
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                        {
                          v104 = *(v7 + 48);
                          *buf = 136447234;
                          *&buf[4] = "nw_protocol_instance_establish_path";
                          *&buf[12] = 2082;
                          *&buf[14] = v88 + 415;
                          *&buf[22] = 2080;
                          v210 = " ";
                          v211 = 2048;
                          v212 = a2;
                          v213 = 2112;
                          *v214 = v104;
                          _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx opened socket over %@", buf, 0x34u);
                        }
                      }

                      v105 = *(v7 + 64);
                      if (v105)
                      {
                        v106 = *(v105 + 5);
                        v107 = *(v7 + 64);
                        if (v106 == &nw_protocol_ref_counted_handle || v106 == &nw_protocol_ref_counted_additional_handle && (v107 = *(v105 + 8)) != 0)
                        {
                          v114 = *(v107 + 88);
                          if (v114)
                          {
                            *(v107 + 88) = v114 + 1;
                          }

                          v108 = 0;
                          *v216 = v105;
                          v216[8] |= 1u;
                        }

                        else
                        {
                          *v216 = *(v7 + 64);
                          v216[8] &= ~1u;
                          v108 = 1;
                        }

                        v115 = *(v88 - 7);
                        v116 = v4 - 12;
                        if (v115 == &nw_protocol_ref_counted_handle || v115 == &nw_protocol_ref_counted_additional_handle && (v116 = *(v88 - 4)) != 0)
                        {
                          v118 = v116[11];
                          if (v118)
                          {
                            v116[11] = v118 + 1;
                          }

                          v117 = 0;
                          v207 = v4 - 12;
                          v208 |= 1u;
                        }

                        else
                        {
                          v207 = v4 - 12;
                          v208 &= ~1u;
                          v117 = 1;
                        }

                        v119 = *(v105 + 3);
                        if (v119)
                        {
                          v120 = *(v119 + 24);
                          if (v120)
                          {
                            v120();
LABEL_201:
                            if ((v117 & 1) == 0)
                            {
                              nw::release_if_needed<nw_protocol *>(&v207);
                            }

                            if ((v108 & 1) == 0)
                            {
                              nw::release_if_needed<nw_protocol *>(v216);
                            }

LABEL_205:
                            v9 = 1;
                            goto LABEL_179;
                          }
                        }

                        v139 = v105;
                        v140 = __nwlog_obj();
                        v141 = *(v139 + 2);
                        *buf = 136446722;
                        *&buf[4] = "__nw_protocol_connect";
                        if (!v141)
                        {
                          v141 = "invalid";
                        }

                        *&buf[12] = 2082;
                        *&buf[14] = v141;
                        *&buf[22] = 2048;
                        v142 = v139;
                        v210 = v139;
                        LODWORD(v175) = 32;
                        v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, v175);

                        type = OS_LOG_TYPE_ERROR;
                        v205 = 0;
                        if (__nwlog_fault(v143, &type, &v205))
                        {
                          if (type == OS_LOG_TYPE_FAULT)
                          {
                            v144 = __nwlog_obj();
                            v145 = type;
                            if (os_log_type_enabled(v144, type))
                            {
                              v146 = *(v142 + 2);
                              if (!v146)
                              {
                                v146 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v146;
                              *&buf[22] = 2048;
                              v210 = v142;
                              _os_log_impl(&dword_181A37000, v144, v145, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                            }
                          }

                          else if (v205 == 1)
                          {
                            v158 = __nw_create_backtrace_string();
                            v144 = __nwlog_obj();
                            v159 = type;
                            v160 = os_log_type_enabled(v144, type);
                            if (v158)
                            {
                              if (v160)
                              {
                                v161 = *(v142 + 2);
                                if (!v161)
                                {
                                  v161 = "invalid";
                                }

                                *buf = 136446978;
                                *&buf[4] = "__nw_protocol_connect";
                                *&buf[12] = 2082;
                                *&buf[14] = v161;
                                *&buf[22] = 2048;
                                v210 = v142;
                                v211 = 2082;
                                v212 = v158;
                                _os_log_impl(&dword_181A37000, v144, v159, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                              }

                              free(v158);
                              goto LABEL_324;
                            }

                            if (v160)
                            {
                              v174 = *(v142 + 2);
                              if (!v174)
                              {
                                v174 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v174;
                              *&buf[22] = 2048;
                              v210 = v142;
                              _os_log_impl(&dword_181A37000, v144, v159, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                            }
                          }

                          else
                          {
                            v144 = __nwlog_obj();
                            v169 = type;
                            if (os_log_type_enabled(v144, type))
                            {
                              v170 = *(v142 + 2);
                              if (!v170)
                              {
                                v170 = "invalid";
                              }

                              *buf = 136446722;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v170;
                              *&buf[22] = 2048;
                              v210 = v142;
                              _os_log_impl(&dword_181A37000, v144, v169, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                            }
                          }
                        }

LABEL_324:
                        if (v143)
                        {
                          free(v143);
                        }

                        goto LABEL_201;
                      }

                      v154 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_connect";
                      LODWORD(v175) = 12;
                      v155 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v154, 16, "%{public}s called with null protocol", buf, v175);

                      v216[0] = 16;
                      LOBYTE(v207) = 0;
                      if (__nwlog_fault(v155, v216, &v207))
                      {
                        if (v216[0] == 17)
                        {
                          v156 = __nwlog_obj();
                          v157 = v216[0];
                          if (os_log_type_enabled(v156, v216[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v157, "%{public}s called with null protocol", buf, 0xCu);
                          }
                        }

                        else if (v207 == 1)
                        {
                          v166 = __nw_create_backtrace_string();
                          v156 = __nwlog_obj();
                          v167 = v216[0];
                          v168 = os_log_type_enabled(v156, v216[0]);
                          if (v166)
                          {
                            if (v168)
                            {
                              *buf = 136446466;
                              *&buf[4] = "__nw_protocol_connect";
                              *&buf[12] = 2082;
                              *&buf[14] = v166;
                              _os_log_impl(&dword_181A37000, v156, v167, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v166);
                            goto LABEL_335;
                          }

                          if (v168)
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v167, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v156 = __nwlog_obj();
                          v172 = v216[0];
                          if (os_log_type_enabled(v156, v216[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_connect";
                            _os_log_impl(&dword_181A37000, v156, v172, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_335:
                      if (v155)
                      {
                        free(v155);
                      }

                      goto LABEL_205;
                    }

                    if ((v102 & 0x80000000) == 0)
                    {
                      goto LABEL_175;
                    }

                    goto LABEL_178;
                  }

LABEL_152:

                  *v52 = v229;
                  if ((*(v4 + 413) & 0x80000000) == 0)
                  {
LABEL_175:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v109 = gLogObj;
                    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                    {
                      v110 = *(v7 + 48);
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_instance_establish_path";
                      *&buf[12] = 2082;
                      *&buf[14] = v88 + 415;
                      *&buf[22] = 2080;
                      v210 = " ";
                      v211 = 2048;
                      v212 = a2;
                      v213 = 2112;
                      *v214 = v110;
                      _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx failed to open socket over %@", buf, 0x34u);
                    }
                  }

LABEL_178:
                  nw_protocol_instance_tear_down_path_inner(v88, v186);
                  v9 = 0;
LABEL_179:
                  v4[40] = 0;
                  nw_path_override_interface(v4[36], 0);
                  v111 = v4[41];
                  v4[41] = 0;

                  v112 = v4[42];
                  v4[42] = 0;

                  v113 = v4[43];
                  v4[43] = 0;

LABEL_180:
                  _Block_object_dispose(&__dst, 8);
                  _Block_object_dispose(&__src, 8);
                  _Block_object_dispose(&v225, 8);
                  goto LABEL_186;
                }

                if (*(v4 + 413) < 0)
                {
                  goto LABEL_152;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
LABEL_151:

                  goto LABEL_152;
                }

                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                *&buf[12] = 2082;
                *&buf[14] = v88 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2048;
                v212 = a2;
                v99 = "%{public}s %{public}s%sPath %lx has no registered flow";
              }

              else
              {
                if (*(v4 + 413) < 0)
                {
                  goto LABEL_152;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_attach_socket_protocol";
                *&buf[12] = 2082;
                *&buf[14] = v88 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2048;
                v212 = a2;
                v99 = "%{public}s %{public}s%sNo path found for %lx";
              }

              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, v99, buf, 0x2Au);
              goto LABEL_151;
            }

            v225 = *v52;
            if ((*(v4 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v71 = gLogObj;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v72 = *(v7 + 48);
                *buf = 136447746;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2048;
                v212 = a2;
                v213 = 1040;
                *v214 = 16;
                *&v214[4] = 2096;
                *&v214[6] = &v225;
                *&v214[14] = 2112;
                *&v214[16] = v72;
                _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx requested channel flow %{uuid_t}.16P over %@", buf, 0x44u);
              }

              v51 = *(v7 + 56);
            }

            v73 = nw_path_flow_registration_force_update(v51);
            __src = 0;
            p_src = 0;
            LODWORD(__dst) = 0;
            if (nw_path_flow_registration_get_nexus_instance(v73, *(v7 + 56), &__src, &__dst))
            {
              nw_protocol_instance_bring_up_channel(v4, a2, v186, v73);
LABEL_185:

              v9 = 1;
              goto LABEL_186;
            }

            if ((*(v4 + 413) & 0x80000000) == 0)
            {
              v74 = __nwlog_obj();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                v75 = *(v7 + 48);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                v211 = 2048;
                v212 = a2;
                v213 = 2112;
                *v214 = v75;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo nexus assignment yet, saving path %lx over %@", buf, 0x34u);
              }
            }

            v76 = v4[9];
            if (!v76)
            {
              v77 = xpc_array_create(0, 0);
              v78 = v4[9];
              v4[9] = v77;

              v76 = v4[9];
            }

            xpc_array_set_uint64(v76, 0xFFFFFFFFFFFFFFFFLL, a2);
            if (v4[8])
            {
              goto LABEL_185;
            }

            v79 = nw_protocol_instance_copy_association(v4);
            v80 = v4[8];
            v4[8] = v79;

            v81 = v4[8];
            v82 = *(v4 + 413);
            if (v81)
            {
              if ((v82 & 0x80000000) == 0)
              {
                v83 = __nwlog_obj();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_establish_path";
                  *&buf[12] = 2082;
                  *&buf[14] = v4 + 415;
                  *&buf[22] = 2080;
                  v210 = " ";
                  _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRegistering association", buf, 0x20u);
                }

                v81 = v4[8];
              }

              v84 = v4[6];
              v189[0] = MEMORY[0x1E69E9820];
              v189[1] = 3221225472;
              v189[2] = __nw_protocol_instance_establish_path_block_invoke_68;
              v189[3] = &unk_1E6A30E88;
              v190 = v4;
              nw_association_register_internal(v81, v84, v190, 0, 1, v189);
              v85 = v190;
            }

            else
            {
              if (v82 < 0)
              {
                goto LABEL_185;
              }

              v85 = __nwlog_obj();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 415;
                *&buf[22] = 2080;
                v210 = " ";
                _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFailed to access protocol instance association", buf, 0x20u);
              }
            }

            goto LABEL_185;
          }

          if ((*(v4 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v65 = gLogObj;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = *(v7 + 48);
              v67 = "socket";
              *buf = 136447490;
              *&buf[4] = "nw_protocol_instance_establish_path";
              *&buf[12] = 2082;
              if (!stack)
              {
                v67 = "channel";
              }

              *&buf[14] = v4 + 415;
              *&buf[22] = 2080;
              v210 = " ";
              v211 = 2048;
              v212 = a2;
              v213 = 2080;
              *v214 = v67;
              *&v214[8] = 2112;
              *&v214[10] = v66;
              _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx failed to request %s flow over %@", buf, 0x3Eu);
            }
          }

          *(v7 + 176) = 2;
          *(v7 + 185) |= 8u;
          v68 = v4;
          v69 = v68;
          v70 = *(*(v68[1] + 10) + 216);
          if (v70)
          {
            v70(v68, a2, 2, v68[39] == a2);
          }

          nw_protocol_path_state_dispose(v69, v186);
          nw_hash_table_remove_node(v4[37], v7);
LABEL_102:
          v9 = 0;
LABEL_186:

          goto LABEL_19;
        }

        v150 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_establish_path";
        v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v150, 16, "%{public}s called with null success", buf, 12);

        LOBYTE(__src) = 16;
        LOBYTE(__dst) = 0;
        if (__nwlog_fault(v151, &__src, &__dst))
        {
          if (__src == 17)
          {
            v152 = __nwlog_obj();
            v153 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v153, "%{public}s called with null success", buf, 0xCu);
            }
          }

          else if (__dst == 1)
          {
            v163 = __nw_create_backtrace_string();
            v152 = __nwlog_obj();
            v164 = __src;
            v165 = os_log_type_enabled(v152, __src);
            if (v163)
            {
              if (v165)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_instance_establish_path";
                *&buf[12] = 2082;
                *&buf[14] = v163;
                _os_log_impl(&dword_181A37000, v152, v164, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v163);
              goto LABEL_329;
            }

            if (v165)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v164, "%{public}s called with null success, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v152 = __nwlog_obj();
            v171 = __src;
            if (os_log_type_enabled(v152, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_instance_establish_path";
              _os_log_impl(&dword_181A37000, v152, v171, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_329:
        if (v151)
        {
          free(v151);
        }

        goto LABEL_102;
      }

      v12 = v33;
LABEL_44:
      v25 = v12;
      v187 = v25;
      goto LABEL_45;
    }

    v13 = _nw_parameters_create();
    nw_parameters_require_interface(v13, *(v7 + 48));
    v14 = nw_path_create_evaluator_for_endpoint(0, v13);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      os_unfair_lock_lock(v15 + 24);
      v17 = v16[6];
      os_unfair_lock_unlock(v15 + 24);
    }

    else
    {
      v17 = 0;
    }

    if (nw_path_has_ipv6(v17) && (v18 = v4[46]) != 0)
    {
      if ((*(v4 + 413) & 0x80000000) == 0)
      {
        v19 = v4 + 46;
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          logging_description = nw_endpoint_get_logging_description(*v19);
          *buf = 136446979;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v210 = " ";
          v211 = 2081;
          v212 = logging_description;
          v22 = "%{public}s %{public}s%sUsing IPv6 Preferred Address %{private}s to establish a new path";
LABEL_37:
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, v22, buf, 0x2Au);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (!nw_path_has_ipv4(v17) || (v19 = v4 + 45, (v18 = v4[45]) == 0))
      {
        v12 = 0;
        goto LABEL_41;
      }

      if ((*(v4 + 413) & 0x80000000) == 0)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v23 = nw_endpoint_get_logging_description(*v19);
          *buf = 136446979;
          *&buf[4] = "nw_protocol_instance_establish_path";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 415;
          *&buf[22] = 2080;
          v210 = " ";
          v211 = 2081;
          v212 = v23;
          v22 = "%{public}s %{public}s%sUsing IPv4 Preferred Address %{private}s to establish a new path";
          goto LABEL_37;
        }

LABEL_38:

        v18 = *v19;
      }
    }

    v12 = v18;
    objc_storeStrong((v7 + 136), v18);
LABEL_41:

    if (v12)
    {
      goto LABEL_43;
    }

    v12 = *(v7 + 168);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if ((*(v4 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_establish_path";
      *&buf[12] = 2082;
      *&buf[14] = v4 + 415;
      *&buf[22] = 2080;
      v210 = " ";
      v211 = 2048;
      v212 = a2;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for %lx", buf, 0x2Au);
    }

    goto LABEL_17;
  }

LABEL_18:
  v9 = 0;
LABEL_19:

  return v9;
}

void sub_181F17938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a58)
  {
    nw::release_if_needed<nw_protocol *>(&a57);
  }

  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v60 - 224), 8);
  _Block_object_dispose((v60 - 192), 8);

  _Unwind_Resume(a1);
}

os_unfair_lock_s *nw_path_flow_registration_force_update(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    nw_path_evaluator_force_update(v3, v2);
    v4 = nw_path_flow_registration_copy_path(v2);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_path_flow_registration_force_update";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null flow_registration", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null flow_registration", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_path_flow_registration_force_update";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_path_flow_registration_force_update";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void nw_endpoint_clone_parent_endpoint_properties(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_clone_parent_endpoint_properties";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_endpoint_clone_parent_endpoint_properties";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_clone_parent_endpoint_properties";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_clone_parent_endpoint_properties(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_clone_parent_endpoint_properties";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null original_endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null original_endpoint", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null original_endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_endpoint_clone_parent_endpoint_properties";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null original_endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_clone_parent_endpoint_properties";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null original_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void _nw_endpoint_clone_parent_endpoint_properties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  Endpoint.copyParentProperties(_:)(v4);
}

void Endpoint.copyParentProperties(_:)(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  v4 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = v3;
  v5 = v3;

  v6 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v7 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((*(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x20) != 0)
  {
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    v7 |= 0x20u;
  }

  else
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v7 &= ~0x20u;
  }

  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v7;
LABEL_7:
  v8 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2);
  v9 = v1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort;
  *v9 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
  *(v9 + 2) = v8;
  if ((*(a1 + v6) & 0x80) != 0)
  {
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_13;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v11 = v7 | 0x80;
  }

  else
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    v10 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v11 = v7 & 0xFF7F;
  }

  *(v1 + v10) = v11;
LABEL_13:
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_signature) = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v12 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  v14 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig);
  *(v1 + OBJC_IVAR____TtC7Network8Endpoint_echConfig) = v12;
  v13 = v12;
}

void nw_protocol_instance_bring_up_channel(void *a1, NSObject *a2, uint64_t a3, void *a4)
{
  v264 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    if (!a2)
    {
      v108 = v8;
      v113 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null path", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v232) = 0;
      if (!__nwlog_fault(v110, type, &v232))
      {
        goto LABEL_231;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v114 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v114, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v138 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v138, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v123 = type[0];
      v124 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v124)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v124)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_179;
    }

    if (!a3)
    {
      v108 = v8;
      v115 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null path_state", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v232) = 0;
      if (!__nwlog_fault(v110, type, &v232))
      {
        goto LABEL_231;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v116 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v116, "%{public}s called with null path_state", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v139 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v139, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v125 = type[0];
      v126 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v126)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v125, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v126)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v125, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_179;
    }

    if (v8)
    {
      v200 = v8;
      if ((*(v7 + 413) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a3 + 16);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 415;
          *&buf[22] = 2080;
          v249 = " ";
          v250 = 2112;
          v251 = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReceived nexus assignment, bringing up channel for %@", buf, 0x2Au);
        }
      }

      v260 = *(v7 - 6);
      v259 = 0uLL;
      nw_path_flow_registration_get_id(*(a3 + 24), &v259);
      v201 = (v7 - 12);
      *(v7 - 6) = v259;
      v7[40] = a2;
      v11 = v200;
      v12 = _nw_path_copy_effective_remote_endpoint(v11);

      v13 = v7[41];
      v7[41] = v12;

      v14 = v11;
      v15 = _nw_path_copy_effective_local_endpoint();

      v16 = v7[42];
      v7[42] = v15;

      v17 = _nw_parameters_copy();
      v18 = v7[43];
      v7[43] = v17;

      nw_parameters_require_interface(v7[43], *(a3 + 16));
      protocol_level = nw_path_flow_registration_get_protocol_level(v14, *(a3 + 24));
      *type = 0;
      v237 = type;
      v238 = 0x2020000000;
      v239 = (v7 - 12);
      v232 = 0;
      v233 = &v232;
      v234 = 0x2020000000;
      v235 = 0;
      v231[0] = 0;
      v231[1] = v231;
      v231[2] = 0x2020000000;
      v231[3] = 0;
      v20 = v7[6];
      v227[0] = MEMORY[0x1E69E9820];
      v227[1] = 3221225472;
      v227[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke;
      v227[3] = &unk_1E6A2CD50;
      v21 = v7;
      v228 = v21;
      v229 = &v232;
      v230 = v231;
      nw_parameters_internal_iterate_protocol_stack(v20, 4, 0, v227);
      if (*(v233 + 24) == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v249) = 0;
        v22 = v7[43];
        v220[0] = MEMORY[0x1E69E9820];
        v220[1] = 3221225472;
        v220[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_2;
        v220[3] = &unk_1E6A2CD78;
        v222 = v231;
        v23 = v21;
        v221 = v23;
        v223 = type;
        v224 = buf;
        v225 = a2;
        v226 = a3;
        nw_parameters_internal_iterate_protocol_stack(v22, 4, 0, v220);
        if (*(*&buf[8] + 24) == 1)
        {
          if ((*(v7 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v254 = 136446722;
              *&v254[4] = "nw_protocol_instance_bring_up_channel";
              v255 = 2082;
              v256 = v23 + 415;
              v257 = 2080;
              v258 = " ";
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach application protocol", v254, 0x20u);
            }
          }

          nw_protocol_instance_tear_down_path_inner(v23, a3);
          *v201 = v260;
          v25 = v7[41];
          v7[40] = 0;
          v7[41] = 0;

          v26 = v7[42];
          v7[42] = 0;

          v27 = v7[43];
          v7[43] = 0;

LABEL_24:
          _Block_object_dispose(buf, 8);
LABEL_307:

          _Block_object_dispose(v231, 8);
          _Block_object_dispose(&v232, 8);
          _Block_object_dispose(type, 8);
          v108 = v200;
          goto LABEL_308;
        }

        _Block_object_dispose(buf, 8);
      }

      if ((protocol_level - 1) <= 2)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v249) = 0;
        v28 = v7[43];
        v214[0] = MEMORY[0x1E69E9820];
        v214[1] = 3221225472;
        v214[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_246;
        v214[3] = &unk_1E6A2CE40;
        v29 = v21;
        v215 = v29;
        v216 = type;
        v218 = a2;
        v219 = a3;
        v217 = buf;
        nw_parameters_internal_iterate_protocol_stack(v28, 3, 0, v214);
        if (*(*&buf[8] + 24) == 1)
        {
          if ((*(v7 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v254 = 136446722;
              *&v254[4] = "nw_protocol_instance_bring_up_channel";
              v255 = 2082;
              v256 = v29 + 415;
              v257 = 2080;
              v258 = " ";
              _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach transport protocol", v254, 0x20u);
            }
          }

          nw_protocol_instance_tear_down_path_inner(v29, a3);
          *v201 = v260;
          v31 = v7[41];
          v7[40] = 0;
          v7[41] = 0;

          v32 = v7[42];
          v7[42] = 0;

          v33 = v7[43];
          v7[43] = 0;

          goto LABEL_24;
        }

        _Block_object_dispose(buf, 8);
        if (protocol_level != 3)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v249) = 0;
          v60 = v7[43];
          v208[0] = MEMORY[0x1E69E9820];
          v208[1] = 3221225472;
          v208[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_247;
          v208[3] = &unk_1E6A2CE40;
          v61 = v29;
          v209 = v61;
          v210 = type;
          v212 = a2;
          v213 = a3;
          v211 = buf;
          nw_parameters_internal_iterate_protocol_stack(v60, 2, 0, v208);
          if (*(*&buf[8] + 24) == 1)
          {
            if ((*(v7 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *v254 = 136446722;
                *&v254[4] = "nw_protocol_instance_bring_up_channel";
                v255 = 2082;
                v256 = v61 + 415;
                v257 = 2080;
                v258 = " ";
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach internet protocol", v254, 0x20u);
              }
            }

            nw_protocol_instance_tear_down_path_inner(v61, a3);
            *v201 = v260;
            v63 = v7[41];
            v7[40] = 0;
            v7[41] = 0;

            v64 = v7[42];
            v7[42] = 0;

            v65 = v7[43];
            v7[43] = 0;

            goto LABEL_24;
          }

          _Block_object_dispose(buf, 8);
          if (protocol_level == 1)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v249) = 0;
            v74 = v7[43];
            v202[0] = MEMORY[0x1E69E9820];
            v202[1] = 3221225472;
            v202[2] = ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_248;
            v202[3] = &unk_1E6A2CE40;
            v75 = v61;
            v203 = v75;
            v204 = type;
            v206 = a2;
            v207 = a3;
            v205 = buf;
            nw_parameters_internal_iterate_protocol_stack(v74, 1, 0, v202);
            if (*(*&buf[8] + 24) == 1)
            {
              if ((*(v7 + 413) & 0x80000000) == 0)
              {
                v76 = __nwlog_obj();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  *v254 = 136446722;
                  *&v254[4] = "nw_protocol_instance_bring_up_channel";
                  v255 = 2082;
                  v256 = v75 + 415;
                  v257 = 2080;
                  v258 = " ";
                  _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach link protocol", v254, 0x20u);
                }
              }

              nw_protocol_instance_tear_down_path_inner(v75, a3);
              *v201 = v260;
              v77 = v7[41];
              v7[40] = 0;
              v7[41] = 0;

              v78 = v7[42];
              v7[42] = 0;

              v79 = v7[43];
              v7[43] = 0;

              goto LABEL_24;
            }

            _Block_object_dispose(buf, 8);
          }
        }
      }

      v34 = *(v237 + 3);
      v35 = v21;
      v36 = v14;
      *uu = 0;
      v263 = 0;
      v243 = 0;
      if ((nw_path_flow_registration_get_nexus_instance(v36, *(a3 + 24), uu, &v243) & 1) == 0)
      {
        if ((*(v7 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v35 + 415;
            *&buf[22] = 2080;
            v249 = " ";
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snexus is not ready", buf, 0x20u);
          }
        }

        goto LABEL_301;
      }

      v261 = 0uLL;
      v242 = 0;
      nw_path_flow_registration_get_id(*(a3 + 24), &v261);
      v37 = _nw_path_copy_flow_for_registration(v36, &v261);
      v198 = v37;
      if (v37)
      {
        nexus_key = _nw_path_flow_get_nexus_key(v37, &v242);
      }

      else
      {
        nexus_key = 0;
      }

      v241 = 0;
      v240 = 0;
      can_support_user_packet_pool = nw_path_flow_registration_can_support_user_packet_pool(v36, *(a3 + 24));
      BYTE4(v241) = BYTE4(v241) & 0xFE | can_support_user_packet_pool;
      if (nw_path_flow_registration_should_use_event_ring(v36, *(a3 + 24)))
      {
        v41 = 2;
      }

      else
      {
        v41 = 0;
      }

      BYTE4(v241) = BYTE4(v241) & 0xFD | v41;
      v240 = nexus_key;
      LODWORD(v241) = 16;
      v42 = v36;
      v199 = _nw_path_copy_endpoint(v42);

      v43 = v42;
      v44 = _nw_path_copy_parameters(v43);

      v45 = nw_parameters_copy_context(v44);
      v46 = nw_channel_create_with_attributes(v45, uu, v243, &v240);
      v47 = *(a3 + 48);
      *(a3 + 48) = v46;

      v48 = *(a3 + 48);
      v49 = *(v7 + 413);
      if (!v48)
      {
        if ((v49 & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v35 + 415;
            *&buf[22] = 2080;
            v249 = " ";
            _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sfailed to open channel", buf, 0x20u);
          }
        }

        goto LABEL_300;
      }

      if ((v49 & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = gLogObj;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_attach_channel_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v35 + 415;
          *&buf[22] = 2080;
          v249 = " ";
          v250 = 1024;
          LODWORD(v251) = protocol_level;
          _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sopened channel at level %u", buf, 0x26u);
        }

        v48 = *(a3 + 48);
      }

      nw_channel_set_close_automatically(v48, 1);
      nw_channel_set_defer_input_available(*(a3 + 48), 1);
      nw_channel_set_protocol_level(*(a3 + 48), protocol_level);
      if (protocol_level == 2)
      {
        if (nw_protocol_ip_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
        }

        has_protocol_in_stack = nw_parameters_has_protocol_in_stack(v44, &nw_protocol_ip_identifier::identifier);
        if (v199)
        {
          v52 = has_protocol_in_stack;
        }

        else
        {
          v52 = 0;
        }

        if (v52 == 1)
        {
          v53 = v199;
          v54 = _nw_endpoint_get_type(v53);

          if (v54 == 1)
          {
            address_family = nw_endpoint_get_address_family(v53);
            v56 = *(a3 + 24);
            if (nw_protocol_ip_identifier::onceToken != -1)
            {
              v180 = address_family;
              dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
              address_family = v180;
            }

            if (address_family == 2)
            {
              v57 = 1;
            }

            else
            {
              v57 = 2;
            }

            stats_region = nw_channel_get_stats_region(*(a3 + 48), v57);
            nw_path_flow_registration_set_stats_region(v56, 2, &nw_protocol_ip_identifier::identifier, stats_region);
          }
        }
      }

      else if ((protocol_level & 0xFFFFFFFE) != 2)
      {
        goto LABEL_76;
      }

      v66 = nw_protocol_tcp_identifier();
      if (nw_parameters_has_protocol_in_stack(v44, v66))
      {
        v67 = *(a3 + 24);
        v68 = nw_protocol_tcp_identifier();
        v69 = 3;
      }

      else
      {
        if (nw_protocol_udp_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        }

        if (!nw_parameters_has_protocol_in_stack(v44, &nw_protocol_udp_identifier::identifier))
        {
          if (nw_parameters_get_upper_transport_protocol(v44) == 253)
          {
            upper_transport_protocol_identifier = nw_parameters_get_upper_transport_protocol_identifier(v44);
            v94 = *(a3 + 24);
            v95 = nw_channel_get_stats_region(*(a3 + 48), 5);
            nw_path_flow_registration_set_stats_region(v94, 3, upper_transport_protocol_identifier, v95);
            v96 = *(a3 + 24);
            if (nw_protocol_udp_identifier::onceToken != -1)
            {
              dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
            }

            v97 = nw_channel_get_stats_region(*(a3 + 48), 4);
            nw_path_flow_registration_set_stats_region(v96, 3, &nw_protocol_udp_identifier::identifier, v97);
          }

LABEL_76:
          protocol_handler = nw_channel_get_protocol_handler(*(a3 + 48));
          if (protocol_handler)
          {
            v72 = protocol_handler[5];
            v73 = protocol_handler;
            if (v72 != &nw_protocol_ref_counted_handle)
            {
              if (v72 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v73) = 0;
LABEL_80:
                v197 = 1;
                goto LABEL_92;
              }

              v73 = protocol_handler[8];
              if (!v73)
              {
                goto LABEL_80;
              }
            }

            v80 = v73[11];
            v197 = 0;
            if (v80)
            {
              v73[11] = v80 + 1;
            }

            LOBYTE(v73) = -1;
LABEL_92:
            *v254 = protocol_handler;
            v254[8] = v73;
            if (v34)
            {
              v81 = *(v34 + 40);
              v82 = v34;
              if (v81 != &nw_protocol_ref_counted_handle)
              {
                if (v81 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v82) = 0;
                  v83 = 1;
                  goto LABEL_100;
                }

                v82 = *(v34 + 64);
                if (!v82)
                {
                  v83 = 1;
                  goto LABEL_100;
                }
              }

              v84 = *(v82 + 88);
              v83 = 0;
              if (v84)
              {
                *(v82 + 88) = v84 + 1;
              }

              LOBYTE(v82) = -1;
LABEL_100:
              *v245 = v34;
              v246 = v82;
              v85 = protocol_handler[3];
              if (v85)
              {
                v86 = *v85;
                if (v86)
                {
                  v87 = v86();
                  if (v83)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_103;
                }
              }

              v129 = protocol_handler;
              v130 = __nwlog_obj();
              v131 = *(v129 + 2);
              *buf = 136446722;
              *&buf[4] = "__nw_protocol_add_input_handler";
              if (!v131)
              {
                v131 = "invalid";
              }

              *&buf[12] = 2082;
              *&buf[14] = v131;
              *&buf[22] = 2048;
              v132 = v129;
              v249 = v129;
              v196 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 32);

              v247 = OS_LOG_TYPE_ERROR;
              v244 = 0;
              v133 = v196;
              if (!__nwlog_fault(v196, &v247, &v244))
              {
                goto LABEL_281;
              }

              if (v247 == OS_LOG_TYPE_FAULT)
              {
                v134 = __nwlog_obj();
                v135 = v247;
                if (os_log_type_enabled(v134, v247))
                {
                  v136 = *(v132 + 2);
                  if (!v136)
                  {
                    v136 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v136;
                  *&buf[22] = 2048;
                  v249 = v132;
                  _os_log_impl(&dword_181A37000, v134, v135, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
                }
              }

              else
              {
                if (v244 == 1)
                {
                  v149 = __nw_create_backtrace_string();
                  v150 = __nwlog_obj();
                  HIDWORD(v194) = v247;
                  v151 = os_log_type_enabled(v150, v247);
                  if (v149)
                  {
                    if (v151)
                    {
                      v152 = *(v132 + 2);
                      if (!v152)
                      {
                        v152 = "invalid";
                      }

                      *buf = 136446978;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v152;
                      *&buf[22] = 2048;
                      v249 = v132;
                      v250 = 2082;
                      v251 = v149;
                      _os_log_impl(&dword_181A37000, v150, BYTE4(v194), "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v149);
                  }

                  else
                  {
                    if (v151)
                    {
                      v179 = *(v132 + 2);
                      if (!v179)
                      {
                        v179 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v179;
                      *&buf[22] = 2048;
                      v249 = v132;
                      _os_log_impl(&dword_181A37000, v150, BYTE4(v194), "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
                    }
                  }

                  goto LABEL_280;
                }

                v134 = __nwlog_obj();
                v167 = v247;
                if (os_log_type_enabled(v134, v247))
                {
                  v168 = *(v132 + 2);
                  if (!v168)
                  {
                    v168 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v168;
                  *&buf[22] = 2048;
                  v249 = v132;
                  _os_log_impl(&dword_181A37000, v134, v167, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
                }
              }

LABEL_280:
              v133 = v196;
LABEL_281:
              if (v133)
              {
                free(v133);
              }

              v87 = 0;
              if ((v83 & 1) == 0)
              {
LABEL_103:
                nw::release_if_needed<nw_protocol *>(v245);
              }

LABEL_104:
              if (v197)
              {
                if ((v87 & 1) == 0)
                {
                  goto LABEL_300;
                }
              }

              else
              {
                nw::release_if_needed<nw_protocol *>(v254);
                if ((v87 & 1) == 0)
                {
LABEL_300:

LABEL_301:
                  goto LABEL_302;
                }
              }

              v88 = nw_channel_set_path_flow_registration(*(a3 + 48), v43, *(a3 + 24));
              nw_channel_configure_flow_registration(*(a3 + 48), *(a3 + 24), v44);

              if (!v88)
              {
LABEL_302:
                if ((*(v7 + 413) & 0x80000000) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v186 = gLogObj;
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                  {
                    v188 = v7[41];
                    v187 = v7[42];
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_instance_bring_up_channel";
                    *&buf[12] = 2082;
                    *&buf[14] = v35 + 415;
                    *&buf[22] = 2080;
                    v249 = " ";
                    v250 = 2112;
                    v251 = v187;
                    v252 = 2112;
                    v253 = v188;
                    _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach channel protocol for %@ -> %@", buf, 0x34u);
                  }
                }

                nw_protocol_instance_tear_down_path_inner(v35, a3);
                *v201 = v260;
                v189 = v7[41];
                v7[40] = 0;
                v7[41] = 0;

                v190 = v7[42];
                v7[42] = 0;

                v191 = v7[43];
                v7[43] = 0;

                goto LABEL_307;
              }

              *v201 = v260;
              v89 = *(a3 + 32);
              if (v89)
              {
                v90 = *(v89 + 5);
                v91 = *(a3 + 32);
                if (v90 == &nw_protocol_ref_counted_handle)
                {
                  goto LABEL_120;
                }

                if (v90 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v91) = 0;
                  v92 = 1;
                  goto LABEL_123;
                }

                v91 = *(v89 + 8);
                if (v91)
                {
LABEL_120:
                  v98 = *(v91 + 88);
                  v92 = 0;
                  if (v98)
                  {
                    *(v91 + 88) = v98 + 1;
                  }

                  LOBYTE(v91) = -1;
                }

                else
                {
                  v92 = 1;
                }

LABEL_123:
                *v254 = v89;
                v254[8] = v91;
                v99 = *(v35 - 7);
                v100 = (v7 - 12);
                if (v99 != &nw_protocol_ref_counted_handle)
                {
                  if (v99 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v100) = 0;
                    v101 = 1;
                    goto LABEL_130;
                  }

                  v100 = *(v35 - 4);
                  if (!v100)
                  {
                    v101 = 1;
                    goto LABEL_130;
                  }
                }

                v102 = *(v100 + 11);
                v101 = 0;
                if (v102)
                {
                  *(v100 + 11) = v102 + 1;
                }

                LOBYTE(v100) = -1;
LABEL_130:
                *v245 = v7 - 12;
                v246 = v100;
                v103 = *(v89 + 3);
                if (v103)
                {
                  v104 = *(v103 + 24);
                  if (v104)
                  {
                    v104();
LABEL_133:
                    if ((v101 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v245);
                    }

                    if ((v92 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v254);
                    }

LABEL_137:
                    v105 = v7[41];
                    v7[40] = 0;
                    v7[41] = 0;

                    v106 = v7[42];
                    v7[42] = 0;

                    v107 = v7[43];
                    v7[43] = 0;

                    goto LABEL_307;
                  }
                }

                v159 = v89;
                v160 = __nwlog_obj();
                v161 = *(v159 + 2);
                *buf = 136446722;
                *&buf[4] = "__nw_protocol_connect";
                if (!v161)
                {
                  v161 = "invalid";
                }

                *&buf[12] = 2082;
                *&buf[14] = v161;
                *&buf[22] = 2048;
                v162 = v159;
                v249 = v159;
                LODWORD(v194) = 32;
                v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v160, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, v194);

                uu[0] = 16;
                LOBYTE(v261) = 0;
                if (__nwlog_fault(v163, uu, &v261))
                {
                  if (uu[0] == 17)
                  {
                    v164 = __nwlog_obj();
                    v165 = uu[0];
                    if (os_log_type_enabled(v164, uu[0]))
                    {
                      v166 = *(v162 + 2);
                      if (!v166)
                      {
                        v166 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v166;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v165, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                    }
                  }

                  else if (v261 == 1)
                  {
                    v175 = __nw_create_backtrace_string();
                    v164 = __nwlog_obj();
                    v176 = uu[0];
                    v177 = os_log_type_enabled(v164, uu[0]);
                    if (v175)
                    {
                      if (v177)
                      {
                        v178 = *(v162 + 2);
                        if (!v178)
                        {
                          v178 = "invalid";
                        }

                        *buf = 136446978;
                        *&buf[4] = "__nw_protocol_connect";
                        *&buf[12] = 2082;
                        *&buf[14] = v178;
                        *&buf[22] = 2048;
                        v249 = v162;
                        v250 = 2082;
                        v251 = v175;
                        _os_log_impl(&dword_181A37000, v164, v176, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v175);
                      goto LABEL_323;
                    }

                    if (v177)
                    {
                      v193 = *(v162 + 2);
                      if (!v193)
                      {
                        v193 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v193;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v176, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v164 = __nwlog_obj();
                    v184 = uu[0];
                    if (os_log_type_enabled(v164, uu[0]))
                    {
                      v185 = *(v162 + 2);
                      if (!v185)
                      {
                        v185 = "invalid";
                      }

                      *buf = 136446722;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v185;
                      *&buf[22] = 2048;
                      v249 = v162;
                      _os_log_impl(&dword_181A37000, v164, v184, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                    }
                  }
                }

LABEL_323:
                if (v163)
                {
                  free(v163);
                }

                goto LABEL_133;
              }

              v170 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_connect";
              LODWORD(v194) = 12;
              v171 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v170, 16, "%{public}s called with null protocol", buf, v194);

              v254[0] = 16;
              v245[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v171, v254, v245))
              {
                if (v254[0] == 17)
                {
                  v172 = __nwlog_obj();
                  v173 = v254[0];
                  if (os_log_type_enabled(v172, v254[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v173, "%{public}s called with null protocol", buf, 0xCu);
                  }
                }

                else if (v245[0] == OS_LOG_TYPE_INFO)
                {
                  v181 = __nw_create_backtrace_string();
                  v172 = __nwlog_obj();
                  v182 = v254[0];
                  v183 = os_log_type_enabled(v172, v254[0]);
                  if (v181)
                  {
                    if (v183)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_protocol_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v181;
                      _os_log_impl(&dword_181A37000, v172, v182, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v181);
                    goto LABEL_328;
                  }

                  if (v183)
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v182, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v172 = __nwlog_obj();
                  v192 = v254[0];
                  if (os_log_type_enabled(v172, v254[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v172, v192, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_328:
              if (v171)
              {
                free(v171);
              }

              goto LABEL_137;
            }

            v145 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_add_input_handler";
            v146 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s called with null input_protocol", buf, 12);

            v245[0] = OS_LOG_TYPE_ERROR;
            v247 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v146, v245, &v247))
            {
              if (v245[0] == OS_LOG_TYPE_FAULT)
              {
                v147 = __nwlog_obj();
                v148 = v245[0];
                if (os_log_type_enabled(v147, v245[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  _os_log_impl(&dword_181A37000, v147, v148, "%{public}s called with null input_protocol", buf, 0xCu);
                }
              }

              else
              {
                if (v247 == OS_LOG_TYPE_INFO)
                {
                  v156 = __nw_create_backtrace_string();
                  v157 = __nwlog_obj();
                  v195 = v245[0];
                  v158 = os_log_type_enabled(v157, v245[0]);
                  if (v156)
                  {
                    if (v158)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v156;
                      _os_log_impl(&dword_181A37000, v157, v195, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v156);
                  }

                  else
                  {
                    if (v158)
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_add_input_handler";
                      _os_log_impl(&dword_181A37000, v157, v195, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
                    }
                  }

                  goto LABEL_312;
                }

                v147 = __nwlog_obj();
                v174 = v245[0];
                if (os_log_type_enabled(v147, v245[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  _os_log_impl(&dword_181A37000, v147, v174, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_312:
            if (v146)
            {
              free(v146);
            }

            v87 = 0;
            goto LABEL_104;
          }

          v141 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null protocol", buf, 12);

          v254[0] = 16;
          v245[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v142, v254, v245))
          {
            if (v254[0] == 17)
            {
              v143 = __nwlog_obj();
              v144 = v254[0];
              if (os_log_type_enabled(v143, v254[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null protocol", buf, 0xCu);
              }
            }

            else if (v245[0] == OS_LOG_TYPE_INFO)
            {
              v153 = __nw_create_backtrace_string();
              v143 = __nwlog_obj();
              v154 = v254[0];
              v155 = os_log_type_enabled(v143, v254[0]);
              if (v153)
              {
                if (v155)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_protocol_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v153;
                  _os_log_impl(&dword_181A37000, v143, v154, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v153);
                goto LABEL_298;
              }

              if (v155)
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v154, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v143 = __nwlog_obj();
              v169 = v254[0];
              if (os_log_type_enabled(v143, v254[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_add_input_handler";
                _os_log_impl(&dword_181A37000, v143, v169, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_298:
          if (v142)
          {
            free(v142);
          }

          goto LABEL_300;
        }

        v67 = *(a3 + 24);
        if (nw_protocol_udp_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        }

        v68 = &nw_protocol_udp_identifier::identifier;
        v69 = 4;
      }

      v70 = nw_channel_get_stats_region(*(a3 + 48), v69);
      nw_path_flow_registration_set_stats_region(v67, 3, v68, v70);
      goto LABEL_76;
    }

    v108 = 0;
    v117 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_bring_up_channel";
    v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s called with null new_path", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232) = 0;
    if (__nwlog_fault(v110, type, &v232))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v118 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v118, "%{public}s called with null new_path", buf, 0xCu);
        }

LABEL_230:

        goto LABEL_231;
      }

      if (v232 != 1)
      {
        v111 = __nwlog_obj();
        v140 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v140, "%{public}s called with null new_path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_230;
      }

      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v127 = type[0];
      v128 = os_log_type_enabled(v111, type[0]);
      if (!backtrace_string)
      {
        if (v128)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_bring_up_channel";
          _os_log_impl(&dword_181A37000, v111, v127, "%{public}s called with null new_path, no backtrace", buf, 0xCu);
        }

        goto LABEL_230;
      }

      if (v128)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v111, v127, "%{public}s called with null new_path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_179:

      free(backtrace_string);
      if (!v110)
      {
        goto LABEL_308;
      }

      goto LABEL_232;
    }
  }

  else
  {
    v108 = v8;
    v109 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_bring_up_channel";
    v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s called with null instance", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232) = 0;
    if (!__nwlog_fault(v110, type, &v232))
    {
      goto LABEL_231;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_230;
    }

    if (v232 != 1)
    {
      v111 = __nwlog_obj();
      v137 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v137, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_230;
    }

    v119 = __nw_create_backtrace_string();
    v111 = __nwlog_obj();
    v120 = type[0];
    v121 = os_log_type_enabled(v111, type[0]);
    if (!v119)
    {
      if (v121)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_bring_up_channel";
        _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_230;
    }

    if (v121)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_bring_up_channel";
      *&buf[12] = 2082;
      *&buf[14] = v119;
      _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v119);
  }

LABEL_231:
  if (v110)
  {
LABEL_232:
    free(v110);
  }

LABEL_308:
}

void sub_181F1ABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x270], 8);

  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x218], 8);

  _Unwind_Resume(a1);
}

void nw_parameters_require_interface(nw_parameters_t parameters, nw_interface_t interface)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = parameters;
  v4 = interface;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      index = _nw_interface_get_index(v4);
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v7 = nw_context_copy_implicit_context::implicit_context;
      v8 = nw_path_copy_interface_with_generation(v7, index, 0);

      if (_nw_interface_shallow_compare(v8, v5))
      {
        v9 = v3;
        v10 = v8;
      }

      else
      {
        v9 = v3;
        v10 = v5;
      }

      _nw_parameters_require_interface(v9, v10);
    }

    else
    {
      _nw_parameters_require_interface(v3, 0);
    }

    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_require_interface";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v12, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_parameters_require_interface";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_require_interface";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v12)
  {
    free(v12);
  }

LABEL_9:
}

uint64_t sub_181F1B0F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);
    v3 = (a1 + 224);
    v4 = *(a1 + 224);

    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = 0;
  v3 = (a1 + 224);
  v4 = *(a1 + 224);
  if (!v4)
  {
LABEL_3:
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v4 = swift_allocObject();
    sub_18226B448(v4 + 16);
    *v3 = v4;
  }

LABEL_4:
  *(v4 + 16) = v2;
}

uint64_t nw_path_flow_registration_get_protocol_level(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_path_copy_flow_for_registration(v3, v4);
    v6 = v5;
    if (v5)
    {
      protocol_level = _nw_path_flow_get_protocol_level(v5);
    }

    else
    {
      protocol_level = 0;
    }

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_flow_registration_get_protocol_level";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_path_flow_registration_get_protocol_level";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_flow_registration_get_protocol_level";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  protocol_level = 0;
LABEL_6:

  return protocol_level;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  protocol_handle = nw_protocol_options_get_protocol_handle(a4);
  v7 = a1[4];
  if (v7)
  {
    v8 = v7 - 96;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == protocol_handle)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = a2;
  }

  return v8 != protocol_handle;
}

uint64_t ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_2(void *a1, unint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (*(*(a1[5] + 8) + 24) < a2)
  {
    v9 = nw_protocol_instance_attach_protocol(a1[4], v7, v8, *(*(a1[6] + 8) + 24), a1[8], a1[9]);
    if (!v9)
    {
      v16 = 0;
      *(*(a1[7] + 8) + 24) = 1;
      goto LABEL_15;
    }

    *(*(a1[6] + 8) + 24) = v9;
    v10 = a1[4];
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = a1[4];
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v18 = 136446978;
        v19 = "nw_protocol_instance_bring_up_channel_block_invoke_2";
        v20 = 2082;
        v21 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v22 = 2080;
        v23 = v15;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached application protocol: %{public}@", &v18, 0x2Au);
      }
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

uint64_t sub_181F1B6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

const char *nw_protocol_instance_attach_protocol(void *a1, void *a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v76 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  identifier = nw_protocol_definition_get_identifier(v12);
  internal = nw_protocol_create_internal(identifier, *(v11 + 41), *(v11 + 43), 1);
  if (internal)
  {
    v16 = internal;
    nw_protocol_instance_set_protocol_instance(v11, v13, v12, internal);
    v17 = *(v16 + 5);
    v18 = v16;
    if (v17 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_11;
    }

    if (v17 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v18) = 0;
      v19 = 1;
      goto LABEL_14;
    }

    v18 = *(v16 + 8);
    if (v18)
    {
LABEL_11:
      v22 = *(v18 + 11);
      v19 = 0;
      if (v22)
      {
        *(v18 + 11) = v22 + 1;
      }

      LOBYTE(v18) = -1;
    }

    else
    {
      v19 = 1;
    }

LABEL_14:
    v65 = v16;
    v66 = v18;
    if (a4)
    {
      v23 = *(a4 + 40);
      v24 = a4;
      if (v23 != &nw_protocol_ref_counted_handle)
      {
        if (v23 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v24) = 0;
          v25 = 1;
          goto LABEL_22;
        }

        v24 = *(a4 + 64);
        if (!v24)
        {
          v25 = 1;
          goto LABEL_22;
        }
      }

      v26 = *(v24 + 88);
      v25 = 0;
      if (v26)
      {
        *(v24 + 88) = v26 + 1;
      }

      LOBYTE(v24) = -1;
LABEL_22:
      *v62 = a4;
      v63 = v24;
      v27 = *(v16 + 3);
      if (v27)
      {
        v28 = *v27;
        if (v28)
        {
          v29 = v28(v16, a4);
          if (v25)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }

      v36 = __nwlog_obj();
      v37 = *(v16 + 2);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_add_input_handler";
      if (!v37)
      {
        v37 = "invalid";
      }

      v68 = 2082;
      v69 = v37;
      v70 = 2048;
      v71 = v16;
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      v38 = v59;
      if (!__nwlog_fault(v59, &type, &v61))
      {
        goto LABEL_86;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v39, type))
        {
          v40 = *(v16 + 2);
          if (!v40)
          {
            v40 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v68 = 2082;
          v69 = v40;
          v70 = 2048;
          v71 = v16;
          _os_log_impl(&dword_181A37000, v39, v55, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback", buf, 0x20u);
        }
      }

      else
      {
        if (v61 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v56 = __nwlog_obj();
          v54 = type;
          v46 = os_log_type_enabled(v56, type);
          if (backtrace_string)
          {
            if (v46)
            {
              v47 = *(v16 + 2);
              if (!v47)
              {
                v47 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_add_input_handler";
              v68 = 2082;
              v69 = v47;
              v70 = 2048;
              v71 = v16;
              v72 = 2082;
              v73 = backtrace_string;
              _os_log_impl(&dword_181A37000, v56, v54, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
          }

          else
          {
            if (v46)
            {
              v53 = *(v16 + 2);
              if (!v53)
              {
                v53 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_add_input_handler";
              v68 = 2082;
              v69 = v53;
              v70 = 2048;
              v71 = v16;
              _os_log_impl(&dword_181A37000, v56, v54, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace", buf, 0x20u);
            }
          }

          goto LABEL_85;
        }

        v39 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v39, type))
        {
          v51 = *(v16 + 2);
          if (!v51)
          {
            v51 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_add_input_handler";
          v68 = 2082;
          v69 = v51;
          v70 = 2048;
          v71 = v16;
          _os_log_impl(&dword_181A37000, v39, v58, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_85:
      v38 = v59;
LABEL_86:
      if (v38)
      {
        free(v38);
      }

      v29 = 0;
      if ((v25 & 1) == 0)
      {
LABEL_25:
        nw::release_if_needed<nw_protocol *>(v62);
      }

LABEL_26:
      if ((v19 & 1) == 0)
      {
        nw::release_if_needed<nw_protocol *>(&v65);
      }

      if (*(a6 + 32))
      {
        goto LABEL_42;
      }

      v30 = *(v16 + 5);
      v31 = v16;
      if (v30 != &nw_protocol_ref_counted_handle)
      {
        if (v30 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v31) = 0;
LABEL_32:
          v32 = 0;
LABEL_39:
          *buf = v16;
          buf[8] = v31;
          v34 = *(a6 + 40);
          if (v34)
          {
            nw::release_if_needed<nw_protocol *>((a6 + 32));
            v34 = *(a6 + 40);
          }

          *(a6 + 32) = v16;
          *(a6 + 40) = v32 | v34 & 0xFE;
LABEL_42:
          if (v29)
          {
            v21 = v16;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_45;
        }

        v31 = *(v16 + 8);
        if (!v31)
        {
          goto LABEL_32;
        }
      }

      v33 = *(v31 + 11);
      if (v33)
      {
        *(v31 + 11) = v33 + 1;
      }

      v32 = 1;
      LOBYTE(v31) = -1;
      goto LABEL_39;
    }

    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_add_input_handler";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null input_protocol", buf, 12);

    v62[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    v42 = v60;
    if (!__nwlog_fault(v60, v62, &type))
    {
LABEL_94:
      if (v42)
      {
        free(v42);
      }

      v29 = 0;
      goto LABEL_26;
    }

    if (v62[0] == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = v62[0];
      if (os_log_type_enabled(v43, v62[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null input_protocol", buf, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v57 = v62[0];
        v50 = os_log_type_enabled(v49, v62[0]);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_add_input_handler";
            v68 = 2082;
            v69 = v48;
            _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
        }

        else
        {
          if (v50)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_93;
      }

      v43 = __nwlog_obj();
      v52 = v62[0];
      if (os_log_type_enabled(v43, v62[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v43, v52, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_93:
    v42 = v60;
    goto LABEL_94;
  }

  if ((v11[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "nw_protocol_instance_attach_protocol";
      v68 = 2082;
      v69 = v11 + 415;
      v70 = 2080;
      v71 = " ";
      v72 = 2048;
      v73 = a5;
      v74 = 2114;
      v75 = v12;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPath %lx could not create protocol for %{public}@", buf, 0x34u);
    }
  }

  v21 = 0;
LABEL_45:

  return v21;
}

void sub_181F1BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if ((v25 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_instance_set_protocol_instance(void *a1, void *a2, void *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_instance_set_protocol_instance";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol_parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v20, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol_parameters", buf, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v33 = "nw_protocol_instance_set_protocol_instance";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v28)
        {
          *buf = 136446210;
          v33 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null protocol_parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_instance_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null protocol_parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_13;
  }

  v10 = strdup(v7 + 415);
  if (v10)
  {
LABEL_3:
    v11 = strlen(v10);
    if (v11)
    {
      v10[v11 - 1] = 0;
    }

    v12 = v11 > 2;
    v13 = *(v7 + 204);
    v14 = -1;
    if (v13 != 0xFFFF)
    {
      v14 = v13 + 1;
      *(v7 + 204) = v13 + 1;
    }

    v15 = v8;
    v16 = v15;
    if (v10)
    {
      v17 = &v10[2 * v12];
      if (*v17)
      {
        _nw_protocol_options_set_log_id(v15, 67, v17, v14);
      }

      free(v10);
    }

    else
    {
    }

    v18 = v16;
    _nw_protocol_options_set_instance(v18, a4);

LABEL_13:
    return;
  }

  v23 = __nwlog_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  *buf = 136446210;
  v33 = "strict_strdup";
  v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s strdup() failed", buf, 12);

  if (!__nwlog_should_abort(v25))
  {
    free(v25);
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_181F1C44C(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B1C0, &unk_182AFE5B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = swift_unknownObjectRetain();
  sub_181F1C508(v6, v5);
  a2(v5);
  return sub_181F49A88(v5, &unk_1EA83B1C0, &unk_182AFE5B0);
}

uint64_t sub_181F1C508@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.EstablishmentReport(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v21 = v5;
    *v8 = a1;
    v9 = swift_unknownObjectRetain();
    v8[1] = nw_establishment_report_get_duration_milliseconds(v9) / 1000.0;
    v8[2] = nw_establishment_report_get_attempt_started_after_milliseconds(a1) / 1000.0;
    *(v8 + 3) = nw_establishment_report_get_previous_attempt_count(a1);
    *(v8 + 32) = nw_establishment_report_get_used_proxy(a1);
    *(v8 + 33) = nw_establishment_report_get_proxy_configured(a1);
    v10 = nw_establishment_report_copy_proxy_endpoint(a1);
    sub_181B80998(v10, v8 + v4[10]);
    v29 = MEMORY[0x1E69E7CC0];
    v11 = swift_allocObject();
    *(v11 + 16) = &v29;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F1DD30;
    *(v12 + 24) = v11;
    v27 = sub_181B80070;
    v28 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_181B7FFE4;
    v26 = &block_descriptor_297;
    v13 = _Block_copy(&aBlock);

    nw_establishment_report_enumerate_resolution_reports(a1, v13);
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(v8 + v4[11]) = v29;
      v22 = MEMORY[0x1E69E7CC0];
      v15 = swift_allocObject();
      *(v15 + 16) = &v22;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_181F1EB94;
      *(v16 + 24) = v15;
      v27 = sub_181F1EA34;
      v28 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_181F1E9CC;
      v26 = &block_descriptor_306_0;
      v17 = _Block_copy(&aBlock);

      nw_establishment_report_enumerate_protocols(a1, v17);
      swift_unknownObjectRelease();
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        *(v8 + v4[12]) = v22;

        sub_181D8DDC0(v8, a2, type metadata accessor for NWConnection.EstablishmentReport);
        (*(v21 + 56))(a2, 0, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {
    v19 = *(v5 + 56);

    return v19(a2, 1, 1, v4, v6);
  }

  return result;
}

uint64_t nw_establishment_report_get_duration_milliseconds(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[2].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_duration_milliseconds";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_establishment_report_get_duration_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_duration_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

uint64_t nw_establishment_report_get_attempt_started_after_milliseconds(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[1].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_attempt_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

uint32_t nw_establishment_report_get_previous_attempt_count(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    isa = v1[10].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_previous_attempt_count";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_establishment_report_get_previous_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_previous_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

BOOL nw_establishment_report_get_used_proxy(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    v2 = (BYTE4(v1[10].isa) >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_used_proxy";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_establishment_report_get_used_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_used_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  LOBYTE(v2) = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

nw_endpoint_t nw_establishment_report_copy_proxy_endpoint(nw_establishment_report_t report)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = report;
  p_isa = &v1->isa;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_establishment_report_copy_proxy_endpoint";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null report", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v7, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v11 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v18 = "nw_establishment_report_copy_proxy_endpoint";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_establishment_report_copy_proxy_endpoint";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_24;
  }

  isa = v1[5].isa;
  if (!isa || !_nw_array_get_count(isa) || (v4 = p_isa[5]) == 0)
  {
LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  v5 = _nw_array_get_object_at_index(v4, 0);
LABEL_25:

  return v5;
}