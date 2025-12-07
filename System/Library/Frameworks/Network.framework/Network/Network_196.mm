void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v12 = outbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = *(a1 + 32);
      v15 = v14 + 74;
      v16 = *(v14 + 256);
      v17 = *(*(v14 + 248) + 372);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 860);
      }

      v18 = *(v14 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v15;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v17;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v18;
      v76 = 2048;
      v77 = v12;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished sending {body_bytes=%llu}";
      goto LABEL_36;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v41 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_2;
      v63[3] = &__block_descriptor_tmp_22_44045;
      v63[4] = *(a1 + 32);
      v42 = v21;
      v43 = v63;
      _nw_http_request_access_method(v42, v43);
    }

    if (v41)
    {
      v25 = v41;
      status_code = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = v45 + 74;
      v47 = *(v45 + 256);
      v48 = *(*(v45 + 248) + 372);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 860);
      }

      v49 = *(v45 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v46;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v47;
      v74 = 1024;
      v75 = v49;
      v76 = 1024;
      LODWORD(v77) = status_code;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> sending response header {status=%hu}";
      goto LABEL_47;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 0x40000000;
        v58 = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_25;
        v59 = &__block_descriptor_tmp_27_44047;
        v5 = *(a1 + 32);
        v60 = a2;
        v61 = v5;
        v6 = nw_http_transaction_metadata_get_outbound_message(a2);
        v7 = v6;
        if (v6)
        {
          v8 = nw_http_metadata_copy_request(v6);
          v9 = nw_http_metadata_copy_response(v7);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_57;
          }

          if (v8)
          {
            if (v9)
            {
              goto LABEL_58;
            }

LABEL_56:
            v9 = nw_http_metadata_copy_response(inbound_message);
LABEL_57:
            if (!v9)
            {
              v52 = 0;
              if (!v8)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }

LABEL_58:
            v9 = v9;
            v52 = _nw_http_response_get_status_code(v9);

            if (!v8)
            {
LABEL_72:
              v58(v57, "", v52);
              v53 = 0;
              if (!inbound_message)
              {
LABEL_63:
                if (v7)
                {
                  os_release(v7);
                }

                if (v9)
                {
                  os_release(v9);
                }

                if (v53)
                {
                  v50 = v53;
                  goto LABEL_69;
                }

                return;
              }

LABEL_62:
              os_release(inbound_message);
              goto LABEL_63;
            }

LABEL_61:
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 0x40000000;
            v55[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_28;
            v55[3] = &unk_1E6A32648;
            v55[4] = v57;
            v56 = v52;
            v53 = v8;
            v54 = v55;
            _nw_http_request_access_method(v53, v54);

            if (!inbound_message)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v51 = nw_http_transaction_metadata_get_inbound_message(a2);
          v9 = 0;
          if (!v51)
          {
            v52 = 0;
            inbound_message = 0;
            goto LABEL_72;
          }

          inbound_message = v51;
        }

        v8 = nw_http_metadata_copy_request(inbound_message);
        if (v9)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v35 = inbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v36 = *(a1 + 32);
      v37 = v36 + 74;
      v38 = *(v36 + 256);
      v39 = *(*(v36 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v36 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v37;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      v74 = 1024;
      v75 = v40;
      v76 = 2048;
      v77 = v35;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished receiving {body_bytes=%llu}";
LABEL_36:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v19, buf, 0x3Cu);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v22 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_23;
      v62[3] = &__block_descriptor_tmp_24_44046;
      v62[4] = *(a1 + 32);
      v23 = v21;
      v24 = v62;
      _nw_http_request_access_method(v23, v24);
    }

    if (v22)
    {
      v25 = v22;
      v26 = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v28 = *(a1 + 32);
      v29 = v28 + 74;
      v30 = *(v28 + 256);
      v31 = *(*(v28 + 248) + 372);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 860);
      }

      v32 = *(v28 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v29;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v31;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v32;
      v76 = 1024;
      LODWORD(v77) = v26;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> receiving response header {status=%hu}";
LABEL_47:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v33, buf, 0x38u);
LABEL_48:
      os_release(v25);
    }
  }

  if (v21)
  {
    os_release(v21);
  }

  if (outbound_message)
  {
    v50 = outbound_message;
LABEL_69:
    os_release(v50);
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_32(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v12 = outbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = *(a1 + 32);
      v15 = v14 + 74;
      v16 = *(v14 + 256);
      v17 = *(*(v14 + 248) + 372);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 860);
      }

      v18 = *(v14 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v15;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v17;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v18;
      v76 = 2048;
      v77 = v12;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished sending {body_bytes=%llu}";
      goto LABEL_36;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v41 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_2_33;
      v63[3] = &__block_descriptor_tmp_34_44041;
      v63[4] = *(a1 + 32);
      v42 = v21;
      v43 = v63;
      _nw_http_request_access_method(v42, v43);
    }

    if (v41)
    {
      v25 = v41;
      status_code = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = v45 + 74;
      v47 = *(v45 + 256);
      v48 = *(*(v45 + 248) + 372);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 860);
      }

      v49 = *(v45 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v46;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v47;
      v74 = 1024;
      v75 = v49;
      v76 = 1024;
      LODWORD(v77) = status_code;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> sending response header {status=%hu}";
      goto LABEL_47;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 0x40000000;
        v58 = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_37;
        v59 = &__block_descriptor_tmp_38_44043;
        v5 = *(a1 + 32);
        v60 = a2;
        v61 = v5;
        v6 = nw_http_transaction_metadata_get_outbound_message(a2);
        v7 = v6;
        if (v6)
        {
          v8 = nw_http_metadata_copy_request(v6);
          v9 = nw_http_metadata_copy_response(v7);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_57;
          }

          if (v8)
          {
            if (v9)
            {
              goto LABEL_58;
            }

LABEL_56:
            v9 = nw_http_metadata_copy_response(inbound_message);
LABEL_57:
            if (!v9)
            {
              v52 = 0;
              if (!v8)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }

LABEL_58:
            v9 = v9;
            v52 = _nw_http_response_get_status_code(v9);

            if (!v8)
            {
LABEL_72:
              v58(v57, "", v52);
              v53 = 0;
              if (!inbound_message)
              {
LABEL_63:
                if (v7)
                {
                  os_release(v7);
                }

                if (v9)
                {
                  os_release(v9);
                }

                if (v53)
                {
                  v50 = v53;
                  goto LABEL_69;
                }

                return;
              }

LABEL_62:
              os_release(inbound_message);
              goto LABEL_63;
            }

LABEL_61:
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 0x40000000;
            v55[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_39;
            v55[3] = &unk_1E6A326F0;
            v55[4] = v57;
            v56 = v52;
            v53 = v8;
            v54 = v55;
            _nw_http_request_access_method(v53, v54);

            if (!inbound_message)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v51 = nw_http_transaction_metadata_get_inbound_message(a2);
          v9 = 0;
          if (!v51)
          {
            v52 = 0;
            inbound_message = 0;
            goto LABEL_72;
          }

          inbound_message = v51;
        }

        v8 = nw_http_metadata_copy_request(inbound_message);
        if (v9)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v35 = inbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v36 = *(a1 + 32);
      v37 = v36 + 74;
      v38 = *(v36 + 256);
      v39 = *(*(v36 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v36 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v37;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      v74 = 1024;
      v75 = v40;
      v76 = 2048;
      v77 = v35;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished receiving {body_bytes=%llu}";
LABEL_36:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v19, buf, 0x3Cu);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v22 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_35;
      v62[3] = &__block_descriptor_tmp_36_44042;
      v62[4] = *(a1 + 32);
      v23 = v21;
      v24 = v62;
      _nw_http_request_access_method(v23, v24);
    }

    if (v22)
    {
      v25 = v22;
      v26 = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v28 = *(a1 + 32);
      v29 = v28 + 74;
      v30 = *(v28 + 256);
      v31 = *(*(v28 + 248) + 372);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 860);
      }

      v32 = *(v28 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connect_block_invoke";
      v66 = 2082;
      v67 = v29;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v31;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v32;
      v76 = 1024;
      LODWORD(v77) = v26;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> receiving response header {status=%hu}";
LABEL_47:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v33, buf, 0x38u);
LABEL_48:
      os_release(v25);
    }
  }

  if (v21)
  {
    os_release(v21);
  }

  if (outbound_message)
  {
    v50 = outbound_message;
LABEL_69:
    os_release(v50);
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_2_33(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connect_block_invoke_2";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> sending request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_35(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connect_block_invoke";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> receiving request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_37(uint64_t a1, uint64_t a2, int a3)
{
  v67 = *MEMORY[0x1E69E9840];
  start_reason = nw_http_transaction_metadata_get_start_reason(*(a1 + 32));
  start_time = nw_http_transaction_metadata_get_start_time(*(a1 + 32));
  end_time = nw_http_transaction_metadata_get_end_time(*(a1 + 32));
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(*(a1 + 32));
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(*(a1 + 32));
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(*(a1 + 32));
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(*(a1 + 32));
  outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(*(a1 + 32));
  inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(*(a1 + 32));
  if ((*(*(a1 + 40) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v12 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a3;
      v13 = *(a1 + 40);
      v14 = *(v13 + 256);
      if (v14)
      {
        v30 = *(v14 + 860);
      }

      else
      {
        v30 = 0;
      }

      if ((start_reason - 1) > 3)
      {
        v15 = "initial";
      }

      else
      {
        v15 = off_1E6A3AE00[start_reason - 1];
      }

      v29 = v15;
      v27 = *(*(v13 + 248) + 372);
      v28 = *(v13 + 424);
      v16 = -1;
      if (start_time && end_time)
      {
        v17 = nw_delta_nanos(start_time, end_time);
        if (v17 > 0xF423FFFFFFFFFLL)
        {
          v16 = -1;
        }

        else
        {
          v16 = v17 / 0xF4240;
        }
      }

      v18 = -1;
      if (start_time && outbound_message_start_time)
      {
        v19 = nw_delta_nanos(start_time, outbound_message_start_time);
        if (v19 > 0xF423FFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v19 / 0xF4240;
        }
      }

      v20 = -1;
      if (outbound_message_start_time && outbound_message_end_time)
      {
        v21 = nw_delta_nanos(outbound_message_start_time, outbound_message_end_time);
        if (v21 > 0xF423FFFFFFFFFLL)
        {
          v20 = -1;
        }

        else
        {
          v20 = v21 / 0xF4240;
        }
      }

      v22 = v13 + 74;
      v23 = -1;
      if (start_time && inbound_message_start_time)
      {
        v24 = nw_delta_nanos(start_time, inbound_message_start_time);
        if (v24 > 0xF423FFFFFFFFFLL)
        {
          v23 = -1;
        }

        else
        {
          v23 = v24 / 0xF4240;
        }
      }

      LODWORD(v25) = -1;
      if (inbound_message_start_time && inbound_message_end_time)
      {
        v26 = nw_delta_nanos(inbound_message_start_time, inbound_message_end_time);
        v25 = v26 / 0xF4240;
        if (v26 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v25) = -1;
        }
      }

      *buf = 136450050;
      v36 = "nw_protocol_http1_connect_block_invoke";
      v37 = 2082;
      v38 = v22;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v28;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      v50 = v16;
      v51 = 2082;
      v52 = a2;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v25;
      v63 = 2048;
      v64 = outbound_body_size;
      v65 = 2048;
      v66 = inbound_body_size;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> transaction summary {start_reason=%s, duration_ms=%d, request_method=%{public}s, response_status=%hu, outbound_start_ms=%d, outbound_duration_ms=%d, inbound_start_ms=%d, inbound_duration_ms=%d, outbound_body_bytes=%llu, inbound_body_bytes=%llu}", buf, 0x7Eu);
    }
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connect_block_invoke_2";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> sending request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_23(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connect_block_invoke";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> receiving request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_25(uint64_t a1, uint64_t a2, int a3)
{
  v67 = *MEMORY[0x1E69E9840];
  start_reason = nw_http_transaction_metadata_get_start_reason(*(a1 + 32));
  start_time = nw_http_transaction_metadata_get_start_time(*(a1 + 32));
  end_time = nw_http_transaction_metadata_get_end_time(*(a1 + 32));
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(*(a1 + 32));
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(*(a1 + 32));
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(*(a1 + 32));
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(*(a1 + 32));
  outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(*(a1 + 32));
  inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(*(a1 + 32));
  if ((*(*(a1 + 40) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v12 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a3;
      v13 = *(a1 + 40);
      v14 = *(v13 + 256);
      if (v14)
      {
        v30 = *(v14 + 860);
      }

      else
      {
        v30 = 0;
      }

      if ((start_reason - 1) > 3)
      {
        v15 = "initial";
      }

      else
      {
        v15 = off_1E6A3AE00[start_reason - 1];
      }

      v29 = v15;
      v27 = *(*(v13 + 248) + 372);
      v28 = *(v13 + 424);
      v16 = -1;
      if (start_time && end_time)
      {
        v17 = nw_delta_nanos(start_time, end_time);
        if (v17 > 0xF423FFFFFFFFFLL)
        {
          v16 = -1;
        }

        else
        {
          v16 = v17 / 0xF4240;
        }
      }

      v18 = -1;
      if (start_time && outbound_message_start_time)
      {
        v19 = nw_delta_nanos(start_time, outbound_message_start_time);
        if (v19 > 0xF423FFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v19 / 0xF4240;
        }
      }

      v20 = -1;
      if (outbound_message_start_time && outbound_message_end_time)
      {
        v21 = nw_delta_nanos(outbound_message_start_time, outbound_message_end_time);
        if (v21 > 0xF423FFFFFFFFFLL)
        {
          v20 = -1;
        }

        else
        {
          v20 = v21 / 0xF4240;
        }
      }

      v22 = v13 + 74;
      v23 = -1;
      if (start_time && inbound_message_start_time)
      {
        v24 = nw_delta_nanos(start_time, inbound_message_start_time);
        if (v24 > 0xF423FFFFFFFFFLL)
        {
          v23 = -1;
        }

        else
        {
          v23 = v24 / 0xF4240;
        }
      }

      LODWORD(v25) = -1;
      if (inbound_message_start_time && inbound_message_end_time)
      {
        v26 = nw_delta_nanos(inbound_message_start_time, inbound_message_end_time);
        v25 = v26 / 0xF4240;
        if (v26 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v25) = -1;
        }
      }

      *buf = 136450050;
      v36 = "nw_protocol_http1_connect_block_invoke";
      v37 = 2082;
      v38 = v22;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v28;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      v50 = v16;
      v51 = 2082;
      v52 = a2;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v25;
      v63 = 2048;
      v64 = outbound_body_size;
      v65 = 2048;
      v66 = inbound_body_size;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> transaction summary {start_reason=%s, duration_ms=%d, request_method=%{public}s, response_status=%hu, outbound_start_ms=%d, outbound_duration_ms=%d, inbound_start_ms=%d, inbound_duration_ms=%d, outbound_body_bytes=%llu, inbound_body_bytes=%llu}", buf, 0x7Eu);
    }
  }
}

void *nw_protocol_copy_replicate_definition()
{
  if (nw_protocol_copy_replicate_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_replicate_definition::onceToken, &__block_literal_global_44061);
  }

  result = nw_protocol_copy_replicate_definition::definition;
  if (nw_protocol_copy_replicate_definition::definition)
  {

    return os_retain(result);
  }

  return result;
}

void __nw_protocol_copy_replicate_definition_block_invoke()
{
  if (nw_protocol_replicate_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_replicate_identifier(void)::onceToken, &__block_literal_global_29);
  }

  nw_protocol_copy_replicate_definition::definition = nw_protocol_definition_create_with_identifier(&g_replicate_protocol_identifier);
  nw_protocol_definition_set_options_allocator(nw_protocol_copy_replicate_definition::definition, nw_replicate_allocate_options, nw_replicate_copy_options, nw_replicate_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_protocol_copy_replicate_definition::definition, nw_replicate_option_is_equal);
  v0 = nw_protocol_copy_replicate_definition::definition;

  nw_protocol_definition_set_metadata_allocator(v0, nw_replicate_allocate_metadata, nw_replicate_deallocate_metadata);
}

void nw_replicate_deallocate_metadata(nw_protocol_definition *a1, _BYTE *a2)
{
  a2[20] = 1;
  v3 = *(a2 + 1);
  if (v3)
  {
    os_release(v3);
  }

  free(a2);
}

_DWORD *nw_replicate_allocate_metadata(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x18uLL, 0xE3F612CDuLL);
  if (result)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = 136446722;
  v7 = "nw_replicate_allocate_metadata";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v8 = 2048;
  v9 = 1;
  v10 = 2048;
  v11 = 24;
  v5 = 32;
  v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v6, v5);
  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
    result = 0;
LABEL_7:
    result[4] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t nw_replicate_option_is_equal(nw_protocol_definition *a1, void *a2, void *a3)
{
  if (!a2 || !a3)
  {
    return a2 == a3;
  }

  if (*a2 == *a3 && a2[1] == a3[1])
  {
    v3 = a2[2] == a3[2] && a2[3] == a3[3];
    v4 = v3 && a2[4] == a3[4];
    v5 = v4 && a2[5] == a3[5];
    v6 = v5 && a2[6] == a3[6];
    v7 = v6 && a2[7] == a3[7];
    v8 = v7 && a2[8] == a3[8];
    if (v8 && a2[9] == a3[9])
    {
      v10 = a2[10] == a3[10] && a2[11] == a3[11];
      v11 = v10 && a2[12] == a3[12];
      v12 = v11 && a2[13] == a3[13];
      v13 = v12 && a2[14] == a3[14];
      v14 = v13 && a2[15] == a3[15];
      v15 = v14 && a2[16] == a3[16];
      if (v15 && a2[17] == a3[17])
      {
        return nw_array_is_equal(a2[18], a3[18]);
      }
    }
  }

  return 0;
}

void nw_replicate_deallocate_options(nw_protocol_definition *a1, void *a2)
{
  v3 = a2[18];
  if (v3)
  {
    os_release(v3);
  }

  free(a2);
}

_OWORD *nw_replicate_copy_options(nw_protocol_definition *a1, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = nw_calloc_type<nw_protocol_replicate_options>();
    *v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[4];
    v3[3] = a2[3];
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
    v8 = a2[7];
    v7 = a2[8];
    v9 = a2[6];
    v3[5] = a2[5];
    v3[6] = v9;
    v3[7] = v8;
    v3[8] = v7;
    v10 = *(a2 + 18);
    if (v10)
    {
      v11 = _nw_array_copy(v10);
    }

    else
    {
      v11 = _nw_array_create();
    }

    *(v3 + 18) = v11;
    return v3;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_replicate_copy_options";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null existing_handle", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_replicate_copy_options";
        v17 = "%{public}s called with null existing_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v23 = "nw_replicate_copy_options";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_replicate_copy_options";
        v17 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_replicate_copy_options";
        v17 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

void *nw_calloc_type<nw_protocol_replicate_options>()
{
  v11 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x98uLL, 0x1B7E0D9uLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v1 = gLogObj;
    v5 = 136446722;
    v6 = "nw_calloc_type";
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
    v10 = 152;
    v4 = 32;
    v3 = _os_log_send_and_compose_impl(v2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v5, v4);
    result = __nwlog_should_abort(v3);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

void *nw_replicate_allocate_options(nw_protocol_definition *a1)
{
  v1 = nw_calloc_type<nw_protocol_replicate_options>();
  v1[18] = _nw_array_create();
  return v1;
}

uint64_t ___ZL32nw_protocol_replicate_identifierv_block_invoke()
{
  qword_1EA8424C0 = 0;
  *algn_1EA8424B2 = 0u;
  strcpy(&g_replicate_protocol_identifier, "replicate");
  qword_1EA8424C8 = 0x100000000;
  qword_1EA8424E0 = nw_protocol_default_replace_input_handler;
  qword_1EA842510 = nw_protocol_default_input_available;
  qword_1EA842518 = nw_protocol_default_output_available;
  qword_1EA842588 = nw_protocol_default_input_finished;
  qword_1EA842590 = nw_protocol_default_output_finished;
  qword_1EA8425D8 = nw_protocol_default_input_flush;
  qword_1EA8425C8 = nw_protocol_default_get_message_properties;
  qword_1EA842538 = nw_protocol_default_link_state;
  qword_1EA842548 = nw_protocol_default_get_path;
  qword_1EA842578 = nw_protocol_default_updated_path;
  qword_1EA842598 = nw_protocol_default_get_output_local;
  qword_1EA8425A0 = nw_protocol_default_get_output_interface;
  qword_1EA8424E8 = nw_protocol_default_connect;
  qword_1EA8424F0 = nw_protocol_default_disconnect;
  qword_1EA842500 = nw_protocol_default_disconnected;
  qword_1EA842508 = nw_protocol_default_error;
  qword_1EA8425D0 = nw_protocol_default_reset;
  qword_1EA842580 = nw_protocol_default_supports_external_data;
  qword_1EA8425A8 = nw_protocol_default_waiting_for_output;
  qword_1EA842560 = nw_protocol_default_register_notification;
  qword_1EA842568 = nw_protocol_default_unregister_notification;
  qword_1EA842570 = nw_protocol_default_notify;
  qword_1EA8425B8 = nw_protocol_default_add_listen_handler;
  qword_1EA8425C0 = nw_protocol_default_remove_listen_handler;
  g_replicate_protocol_callbacks = nw_protocol_replicate_add_input_handler;
  qword_1EA8424D8 = nw_protocol_replicate_remove_input_handler;
  qword_1EA8424F8 = nw_protocol_replicate_connected;
  qword_1EA842520 = nw_protocol_replicate_get_input_frames;
  qword_1EA842528 = nw_protocol_replicate_get_output_frames;
  qword_1EA842558 = nw_protocol_replicate_get_remote_endpoint;
  qword_1EA842550 = nw_protocol_replicate_get_local_endpoint;
  qword_1EA842540 = nw_protocol_replicate_get_parameters;
  qword_1EA842530 = nw_protocol_replicate_finalize_output_frames;
  qword_1EA8425B0 = nw_protocol_replicate_copy_info;
  return nw_protocol_register_extended(&g_replicate_protocol_identifier, nw_protocol_replicate_create);
}

_OWORD *nw_protocol_replicate_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0x1B0uLL, 0x6AA79F51uLL))
  {
    result = memptr;
    if (memptr)
    {
      goto LABEL_3;
    }
  }

  v4 = __nwlog_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v10 = 136446722;
  v11 = "nw_protocol_replicate_create";
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v12 = 2048;
  v13 = 8;
  v14 = 2048;
  v15 = 432;
  v8 = 32;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s posix_memalign(..., %zu, %zu) failed", &v10, v8);
  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    result = memptr;
LABEL_3:
    result[25] = 0u;
    result[26] = 0u;
    result[23] = 0u;
    result[24] = 0u;
    result[21] = 0u;
    result[22] = 0u;
    result[19] = 0u;
    result[20] = 0u;
    result[17] = 0u;
    result[18] = 0u;
    result[15] = 0u;
    result[16] = 0u;
    result[13] = 0u;
    result[14] = 0u;
    result[11] = 0u;
    result[12] = 0u;
    result[9] = 0u;
    result[10] = 0u;
    result[7] = 0u;
    result[8] = 0u;
    result[5] = 0u;
    result[6] = 0u;
    result[3] = 0u;
    result[4] = 0u;
    result[1] = 0u;
    result[2] = 0u;
    *result = 0u;
    *(result + 2) = &g_replicate_protocol_identifier;
    *(result + 3) = &g_replicate_protocol_callbacks;
    *(result + 5) = result;
    *(result + 52) = -1;
    return result;
  }

  __break(1u);
  return result;
}

void *nw_protocol_replicate_copy_info(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      result = *(a1 + 32);
      if (result)
      {
        v5 = *(result[3] + 224);
        if (!v5)
        {
          result = 0;
          if (a2 != 255)
          {
            return result;
          }

          goto LABEL_7;
        }

        result = v5();
      }

      if (a2 != 255)
      {
        return result;
      }

LABEL_7:
      v6 = *(v2 + 64);
      if (v6)
      {
        if (!result)
        {
          result = _nw_array_create();
          v6 = *(v2 + 64);
        }

        if (result)
        {
          if (v6)
          {
            v7 = result;
            _nw_array_append(result, v6);
            return v7;
          }
        }
      }

      return result;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_replicate_copy_info";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_replicate_copy_info";
        v12 = "%{public}s called with null replicate";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v18 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_replicate_copy_info";
        v12 = "%{public}s called with null replicate, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v17 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_protocol_replicate_copy_info";
        v12 = "%{public}s called with null replicate, no backtrace";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "nw_protocol_replicate_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_replicate_copy_info";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_42;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_replicate_copy_info";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_replicate_copy_info";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v15)
    {
      *buf = 136446466;
      v21 = "nw_protocol_replicate_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_31:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
    }

LABEL_32:
    free(backtrace_string);
    goto LABEL_42;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v21 = "nw_protocol_replicate_copy_info";
    v12 = "%{public}s called with null protocol";
LABEL_41:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
  }

LABEL_42:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t nw_protocol_replicate_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v77 = handle;
    if (handle)
    {
      if ((handle[107] & 8) != 0)
      {
        v55 = mach_absolute_time();
      }

      else
      {
        v55 = 0;
      }

      if (handle[104] <= 8)
      {
        v9 = *(handle + 428);
LABEL_48:
        v18 = (v9 >> 2) & 1;
        if (handle[104] > v18)
        {
          v19 = a2;
          do
          {
            v20 = &handle[2 * handle[v18 + 96]];
            v21 = *(v20 + 12);
            if (v21)
            {
              v22 = v2;
              v23 = *(v20 + 28);
              v24 = *(v20 + 36);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              LODWORD(v79) = 0;
              v73[0] = MEMORY[0x1E69E9820];
              v73[1] = 0x40000000;
              v74 = ___ZL44nw_protocol_replicate_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
              v75 = &unk_1E6A33010;
              v76 = buf;
              tqh_first = v19->tqh_first;
              do
              {
                if (!tqh_first)
                {
                  break;
                }

                v26 = *(tqh_first + 4);
                v27 = v74(v73);
                tqh_first = v26;
              }

              while ((v27 & 1) != 0);
              v72[0] = 0;
              v72[1] = v72;
              v2 = v22;
              if ((*(*(v21 + 24) + 88))(v21, v22, 1, 0xFFFFFFFFLL, *(*&buf[8] + 24), v72))
              {
                *type = 0;
                v71[0] = type;
                v71[1] = 0x2000000000;
                v71[2] = v72[0];
                v62[0] = MEMORY[0x1E69E9820];
                v62[1] = 0x40000000;
                v63 = ___ZL44nw_protocol_replicate_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2;
                v64 = &unk_1E6A33038;
                v65 = type;
                v66 = v22;
                v67 = v55;
                v68 = v23;
                v69 = v24;
                v28 = v19->tqh_first;
                do
                {
                  if (!v28)
                  {
                    break;
                  }

                  v29 = *(v28 + 4);
                  v30 = v63(v62);
                  v28 = v29;
                }

                while ((v30 & 1) != 0);
                (*(*(v21 + 24) + 96))(v21, v72);
                _Block_object_dispose(type, 8);
                v2 = v22;
              }

              _Block_object_dispose(buf, 8);
              handle = v77;
            }

            ++v18;
          }

          while (v18 < handle[104]);
          LOBYTE(v9) = *(handle + 428);
          a2 = v19;
        }

        if ((v9 & 4) != 0)
        {
          v38 = *(handle + 4);
          v39 = &handle[2 * handle[105]];
          v40 = *(v39 + 28);
          v41 = *(v39 + 36);
          if (v40 | v41)
          {
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 0x40000000;
            v57 = ___ZL44nw_protocol_replicate_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_3;
            v58 = &__block_descriptor_tmp_46_44100;
            v59 = v55;
            v60 = v40;
            v61 = v41;
            v42 = a2->tqh_first;
            do
            {
              if (!v42)
              {
                break;
              }

              v43 = *(v42 + 4);
              v44 = v57(v56);
              v42 = v43;
            }

            while ((v44 & 1) != 0);
          }

          return (*(*(v38 + 24) + 96))(v38, a2);
        }

        else
        {
          v31 = a2->tqh_first;
          if (a2->tqh_first)
          {
            *(v31 + 5) = type;
            tqh_last = a2->tqh_last;
            *type = v31;
            v71[0] = tqh_last;
            a2->tqh_first = 0;
            a2->tqh_last = &a2->tqh_first;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
            v79 = &__block_descriptor_tmp_21_49595;
            v80 = 0;
            do
            {
              v33 = *type;
              if (!*type)
              {
                break;
              }

              v34 = *(*type + 32);
              v35 = *(*type + 40);
              v36 = (v34 + 40);
              if (!v34)
              {
                v36 = v71;
              }

              *v36 = v35;
              *v35 = v34;
              *(v33 + 32) = 0;
              *(v33 + 40) = 0;
            }

            while (((*&buf[16])(buf) & 1) != 0);
          }

          return 1;
        }
      }

      handle[104] = 0;
      v5 = *(handle + 428);
      *(handle + 428) = v5 & 0xFB;
      v6 = handle[105];
      if (v6 >= 8)
      {
        LODWORD(v7) = 0;
        v8 = handle + 96;
      }

      else
      {
        v7 = *&handle[2 * v6 + 24];
        if (v7)
        {
          handle[96] = v6;
          LODWORD(v7) = 1;
          handle[104] = 1;
          *(handle + 428) = v5 | 4;
        }

        v8 = handle + 96;
        if (!v6)
        {
          v6 = 0;
          goto LABEL_17;
        }
      }

      if (*(handle + 12))
      {
        handle[v7 + 96] = 0;
        LODWORD(v7) = v7 + 1;
        handle[104] = v7;
      }

      if (v6 == 1)
      {
LABEL_20:
        if (*(handle + 14))
        {
          v8[v7] = 2;
          LODWORD(v7) = handle[104] + 1;
          handle[104] = v7;
          v6 = handle[105];
        }

        if (v6 == 3)
        {
LABEL_26:
          if (*(handle + 16))
          {
            v8[v7] = 4;
            LODWORD(v7) = handle[104] + 1;
            handle[104] = v7;
            v6 = handle[105];
          }

          if (v6 == 5)
          {
LABEL_32:
            if (*(handle + 18))
            {
              v8[v7] = 6;
              LODWORD(v7) = handle[104] + 1;
              handle[104] = v7;
              v6 = handle[105];
            }

            if (v6 == 7)
            {
LABEL_37:
              v9 = *(handle + 428);
              if ((v9 & 0x10) != 0)
              {
                v10 = v7;
                v11 = &v8[v7];
                *buf = &v77;
                if (v7 < 0x81)
                {
                  v15 = 0;
LABEL_44:
                  std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v8, v11, buf, v10, 0, v15);
                }

                else
                {
                  v12 = MEMORY[0x1E69E5398];
                  v13 = v7;
                  while (1)
                  {
                    v14 = operator new(4 * v13, v12);
                    if (v14)
                    {
                      break;
                    }

                    v15 = v13 >> 1;
                    v16 = v13 > 1;
                    v13 >>= 1;
                    if (!v16)
                    {
                      goto LABEL_44;
                    }
                  }

                  v17 = v14;
                  std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v8, v11, buf, v10, v14, v13);
                  operator delete(v17);
                }

                handle = v77;
                v9 = *(v77 + 428);
                if ((v9 & 4) != 0)
                {
                  v9 = v9 & 0xFFFFFFFB | (4 * (v77[96] == v77[105]));
                  *(v77 + 428) = v9;
                }
              }

              goto LABEL_48;
            }

LABEL_35:
            if (*(handle + 19))
            {
              v8[v7] = 7;
              LODWORD(v7) = handle[104] + 1;
              handle[104] = v7;
            }

            goto LABEL_37;
          }

LABEL_29:
          if (*(handle + 17))
          {
            v8[v7] = 5;
            LODWORD(v7) = handle[104] + 1;
            handle[104] = v7;
            v6 = handle[105];
          }

          if (v6 == 6)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

LABEL_23:
        if (*(handle + 15))
        {
          v8[v7] = 3;
          LODWORD(v7) = handle[104] + 1;
          handle[104] = v7;
          v6 = handle[105];
        }

        if (v6 == 4)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

LABEL_17:
      if (*(handle + 13))
      {
        v8[v7] = 1;
        LODWORD(v7) = handle[104] + 1;
        handle[104] = v7;
        v6 = handle[105];
      }

      if (v6 == 2)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null replicate", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v46, type, v72))
    {
      goto LABEL_103;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (os_log_type_enabled(v47, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
        v49 = "%{public}s called with null replicate";
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (os_log_type_enabled(v47, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
        v49 = "%{public}s called with null replicate, backtrace limit exceeded";
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v54 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
        v49 = "%{public}s called with null replicate, no backtrace";
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v53 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v45 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
  v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v72[0]) = 0;
  if (!__nwlog_fault(v46, type, v72))
  {
    goto LABEL_103;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (LOBYTE(v72[0]) != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (os_log_type_enabled(v47, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
        v49 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v52 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (v52)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
        v49 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_102;
      }

      goto LABEL_103;
    }

    if (v52)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v53 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_92:
      _os_log_impl(&dword_181A37000, v47, v48, v53, buf, 0x16u);
    }

LABEL_93:
    free(backtrace_string);
    goto LABEL_103;
  }

  v47 = __nwlog_obj();
  v48 = type[0];
  if (os_log_type_enabled(v47, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_replicate_finalize_output_frames";
    v49 = "%{public}s called with null protocol";
LABEL_102:
    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
  }

LABEL_103:
  if (v46)
  {
    free(v46);
  }

  return 0;
}

unsigned int *std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(unsigned int *result, unsigned int *a2, void **a3, unint64_t a4, unsigned int *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (*(**a3 + 352 + 4 * v6) > *(**a3 + 352 + 4 * v7))
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[a4 >> 1];
      v20 = a4 - (a4 >> 1);
      v21 = result;
      if (a4 <= a6)
      {
        v27 = a5;
        std::__stable_sort_move<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(result, v19, a3, a4 >> 1, a5);
        v28 = &v27[v18];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v19, a2, a3, v20, v28);
        v29 = *a3;
        v30 = -1;
        v31 = v21;
        v32 = v28;
        v33 = &v27[a4];
        do
        {
          ++v30;
          if (v32 == v33)
          {
            if (v27 == v28)
            {
              return result;
            }

            v47 = v28 - v27 - 4;
            if (v47 >= 0x1C && (&v21[v30] - v27) >= 0x20)
            {
              v48 = v31 + 4;
              v49 = (v47 >> 2) + 1;
              v50 = 4 * (v49 & 0x7FFFFFFFFFFFFFF8);
              v31 = (v31 + v50);
              v51 = (v27 + 4);
              v52 = v49 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v53 = *v51;
                *(v48 - 1) = *(v51 - 1);
                *v48 = v53;
                v51 += 2;
                v48 += 2;
                v52 -= 8;
              }

              while (v52);
              if (v49 == (v49 & 0x7FFFFFFFFFFFFFF8))
              {
                return result;
              }

              v27 = (v27 + v50);
            }

            do
            {
              v54 = *v27++;
              *v31++ = v54;
            }

            while (v27 != v28);
            return result;
          }

          v34 = v32;
          v35 = *v32;
          v36 = *v27;
          if (*(*v29 + 352 + 4 * v35) <= *(*v29 + 352 + 4 * v36))
          {
            v37 = *v27;
          }

          else
          {
            v37 = v35;
          }

          v27 += *(*v29 + 352 + 4 * v35) <= *(*v29 + 352 + 4 * v36);
          v38 = *(*v29 + 352 + 4 * v35) > *(*v29 + 352 + 4 * v36);
          v32 = &v34[v38];
          *v31++ = v37;
        }

        while (v27 != v28);
        if (v32 == v33)
        {
          return result;
        }

        v39 = v33 - &v34[v38] - 4;
        if (v39 <= 0x2B || (&v21[v30] - &v34[v38] + 4) < 0x20)
        {
          goto LABEL_35;
        }

        v40 = v31 + 4;
        v41 = (v39 >> 2) + 1;
        v42 = 4 * (v41 & 0x7FFFFFFFFFFFFFF8);
        v31 = (v31 + v42);
        v43 = &v34[v38 + 4];
        v44 = v41 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v45 = *v43;
          *(v40 - 1) = *(v43 - 1);
          *v40 = v45;
          v43 += 8;
          v40 += 2;
          v44 -= 8;
        }

        while (v44);
        if (v41 != (v41 & 0x7FFFFFFFFFFFFFF8))
        {
          v32 = (v32 + v42);
          do
          {
LABEL_35:
            v46 = *v32++;
            *v31++ = v46;
          }

          while (v32 != v33);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(result, v19, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v19, a2, a3, v20, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v21, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 1;
      if (result + 1 != a2)
      {
        v9 = **a3 + 352;
        v10 = 4;
        v11 = result;
        do
        {
          v14 = *v11;
          v13 = v11[1];
          v11 = v8;
          if (*(v9 + 4 * v13) > *(v9 + 4 * v14))
          {
            v15 = v10;
            do
            {
              *(result + v15) = v14;
              v16 = v15 - 4;
              if (v15 == 4)
              {
                v12 = result;
                goto LABEL_11;
              }

              v14 = *(result + v15 - 8);
              v15 -= 4;
            }

            while (*(v9 + 4 * v13) > *(v9 + 4 * v14));
            v12 = (result + v16);
LABEL_11:
            *v12 = v13;
          }

          v8 = v11 + 1;
          v10 += 4;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t ___ZL44nw_protocol_replicate_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_2(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 8) + 24))
  {
    return 1;
  }

  v63 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v63);
  v62 = 0;
  v5 = nw_frame_unclaimed_bytes(*(*(a1[4] + 8) + 24), &v62);
  v7 = v63;
  if (v62 < v63)
  {
    v63 = v62;
    v7 = v62;
  }

  if (v7)
  {
    memcpy(v5, v4, v7);
    v8 = v63;
  }

  else
  {
    v8 = 0;
  }

  nw_frame_claim(*(*(a1[4] + 8) + 24), v6, v8, 0);
  nw_frame_collapse(*(*(a1[4] + 8) + 24));
  nw_frame_unclaim(*(*(a1[4] + 8) + 24), v9, v63, 0);
  if (!a2)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v67 = "__nw_frame_get_expire_time";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v31, &type, &v64))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v67 = "__nw_frame_get_expire_time";
      v34 = "%{public}s called with null frame";
    }

    else if (v64 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = type;
      v36 = os_log_type_enabled(v32, type);
      if (backtrace_string)
      {
        if (v36)
        {
          *buf = 136446466;
          v67 = "__nw_frame_get_expire_time";
          v68 = 2082;
          v69 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_59:
        if (v31)
        {
          free(v31);
        }

        v24 = *(*(a1[4] + 8) + 24);
        v45 = __nwlog_obj();
        *buf = 136446210;
        v67 = "__nw_frame_get_service_class";
        LODWORD(v61) = 12;
        v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null frame", buf, v61);
        type = OS_LOG_TYPE_ERROR;
        v64 = 0;
        if (__nwlog_fault(v46, &type, &v64))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v47 = __nwlog_obj();
            v48 = type;
            if (!os_log_type_enabled(v47, type))
            {
              goto LABEL_75;
            }

            *buf = 136446210;
            v67 = "__nw_frame_get_service_class";
            v49 = "%{public}s called with null frame";
LABEL_74:
            _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
            goto LABEL_75;
          }

          if (v64 != 1)
          {
            v47 = __nwlog_obj();
            v48 = type;
            if (!os_log_type_enabled(v47, type))
            {
              goto LABEL_75;
            }

            *buf = 136446210;
            v67 = "__nw_frame_get_service_class";
            v49 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_74;
          }

          v50 = v24;
          v51 = __nw_create_backtrace_string();
          v47 = __nwlog_obj();
          v48 = type;
          v52 = os_log_type_enabled(v47, type);
          if (!v51)
          {
            v24 = v50;
            if (!v52)
            {
              goto LABEL_75;
            }

            *buf = 136446210;
            v67 = "__nw_frame_get_service_class";
            v49 = "%{public}s called with null frame, no backtrace";
            goto LABEL_74;
          }

          if (v52)
          {
            *buf = 136446466;
            v67 = "__nw_frame_get_service_class";
            v68 = 2082;
            v69 = v51;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v51);
          v24 = v50;
        }

LABEL_75:
        if (v46)
        {
          free(v46);
        }

        v25 = 0;
        if (v24)
        {
          goto LABEL_30;
        }

LABEL_78:
        v53 = __nwlog_obj();
        *buf = 136446210;
        v67 = "__nw_frame_set_service_class";
        LODWORD(v60) = 12;
        v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null frame", buf, v60);
        type = OS_LOG_TYPE_ERROR;
        v64 = 0;
        if (!__nwlog_fault(v54, &type, &v64))
        {
          goto LABEL_92;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v55 = __nwlog_obj();
          v56 = type;
          if (!os_log_type_enabled(v55, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          v67 = "__nw_frame_set_service_class";
          v57 = "%{public}s called with null frame";
        }

        else if (v64 == 1)
        {
          v58 = __nw_create_backtrace_string();
          v55 = __nwlog_obj();
          v56 = type;
          v59 = os_log_type_enabled(v55, type);
          if (v58)
          {
            if (v59)
            {
              *buf = 136446466;
              v67 = "__nw_frame_set_service_class";
              v68 = 2082;
              v69 = v58;
              _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v58);
            goto LABEL_92;
          }

          if (!v59)
          {
LABEL_92:
            if (v54)
            {
              free(v54);
            }

            goto LABEL_31;
          }

          *buf = 136446210;
          v67 = "__nw_frame_set_service_class";
          v57 = "%{public}s called with null frame, no backtrace";
        }

        else
        {
          v55 = __nwlog_obj();
          v56 = type;
          if (!os_log_type_enabled(v55, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          v67 = "__nw_frame_set_service_class";
          v57 = "%{public}s called with null frame, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
        goto LABEL_92;
      }

      if (!v36)
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v67 = "__nw_frame_get_expire_time";
      v34 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v67 = "__nw_frame_get_expire_time";
      v34 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
    goto LABEL_59;
  }

  if ((*(a2 + 204) & 0x10) == 0)
  {
    goto LABEL_29;
  }

  v10 = *(a2 + 152);
  if (!v10)
  {
    goto LABEL_29;
  }

  v12 = a1[6];
  v11 = a1[7];
  v13 = a1[8];
  v14 = dword_1ED4117CC;
  if (v11 < 0)
  {
    v17 = -1000000 * v11;
    if (!dword_1ED4117CC)
    {
      mach_timebase_info(&time_base);
      v14 = dword_1ED4117CC;
    }

    v16 = time_base;
    v18 = v17 * v14 / time_base;
    v19 = v10 >= v18;
    v21 = v10 - v18;
    v20 = v21 != 0 && v19;
    if (!v19)
    {
      v21 = 0;
    }

    if (v20)
    {
      v10 = v21;
    }

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = 1000000 * v11;
    if (!dword_1ED4117CC)
    {
      mach_timebase_info(&time_base);
      v14 = dword_1ED4117CC;
    }

    v10 += v15 * v14 / time_base;
    v16 = time_base;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  if (!v14)
  {
    mach_timebase_info(&time_base);
    v16 = time_base;
    v14 = dword_1ED4117CC;
  }

  v22 = 1000000 * v13 * v14 / v16 + v12;
  if (v22 >= v10)
  {
LABEL_26:
    v22 = v10;
  }

  v23 = *(*(a1[4] + 8) + 24);
  if (v23)
  {
    *(v23 + 204) |= 0x10u;
    *(v23 + 152) = v22;
    goto LABEL_29;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v67 = "__nw_frame_set_expire_time";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v64 = 0;
  v39 = v38;
  if (!__nwlog_fault(v38, &type, &v64))
  {
    goto LABEL_99;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v67 = "__nw_frame_set_expire_time";
    v42 = "%{public}s called with null frame";
    goto LABEL_98;
  }

  if (v64 != 1)
  {
    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v67 = "__nw_frame_set_expire_time";
    v42 = "%{public}s called with null frame, backtrace limit exceeded";
    goto LABEL_98;
  }

  v43 = __nw_create_backtrace_string();
  v40 = __nwlog_obj();
  v41 = type;
  v44 = os_log_type_enabled(v40, type);
  if (v43)
  {
    if (v44)
    {
      *buf = 136446466;
      v67 = "__nw_frame_set_expire_time";
      v68 = 2082;
      v69 = v43;
      _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v43);
    goto LABEL_99;
  }

  if (v44)
  {
    *buf = 136446210;
    v67 = "__nw_frame_set_expire_time";
    v42 = "%{public}s called with null frame, no backtrace";
LABEL_98:
    _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
  }

LABEL_99:
  if (v39)
  {
    free(v39);
  }

LABEL_29:
  v24 = *(*(a1[4] + 8) + 24);
  v25 = *(a2 + 176);
  if (!v24)
  {
    goto LABEL_78;
  }

LABEL_30:
  *(v24 + 176) = v25;
LABEL_31:
  v26 = *(a1[4] + 8);
  v27 = *(v26 + 24);
  v28 = *(v27 + 32);
  if (!v28 && !*(v27 + 40))
  {
    v28 = 0;
  }

  *(v26 + 24) = v28;
  return 1;
}

uint64_t ___ZL44nw_protocol_replicate_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_3(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v30 = "__nw_frame_get_expire_time";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v21, &type, &v27))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v30 = "__nw_frame_get_expire_time";
      v24 = "%{public}s called with null frame";
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v26 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v30 = "__nw_frame_get_expire_time";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (!v26)
      {
LABEL_37:
        if (v21)
        {
          free(v21);
        }

        return 1;
      }

      *buf = 136446210;
      v30 = "__nw_frame_get_expire_time";
      v24 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v30 = "__nw_frame_get_expire_time";
      v24 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_37;
  }

  if ((*(a2 + 204) & 0x10) != 0)
  {
    v2 = *(a2 + 152);
    if (v2)
    {
      v4 = a1[4];
      v3 = a1[5];
      v5 = a1[6];
      v6 = dword_1ED4117CC;
      if (v3 < 0)
      {
        v10 = -1000000 * v3;
        if (!dword_1ED4117CC)
        {
          v11 = a2;
          mach_timebase_info(&time_base);
          a2 = v11;
          v6 = dword_1ED4117CC;
        }

        v9 = time_base;
        v12 = v10 * v6 / time_base;
        v13 = v2 >= v12;
        v15 = v2 - v12;
        v14 = v15 != 0 && v13;
        if (!v13)
        {
          v15 = 0;
        }

        if (v14)
        {
          v2 = v15;
        }

        if (!v4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = 1000000 * v3;
        if (!dword_1ED4117CC)
        {
          v8 = a2;
          mach_timebase_info(&time_base);
          a2 = v8;
          v6 = dword_1ED4117CC;
        }

        v2 += v7 * v6 / time_base;
        v9 = time_base;
        if (!v4)
        {
LABEL_20:
          v18 = v2;
LABEL_21:
          *(a2 + 204) |= 0x10u;
          *(a2 + 152) = v18;
          return 1;
        }
      }

      if (v5)
      {
        v16 = 1000000 * v5;
        if (!v6)
        {
          v17 = a2;
          mach_timebase_info(&time_base);
          a2 = v17;
          v9 = time_base;
          v6 = dword_1ED4117CC;
        }

        v18 = v16 * v6 / v9 + v4;
        if (v18 < v2)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_20;
    }
  }

  return 1;
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(unsigned int *result, unsigned int *a2, void **a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **a3 + 352;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v23 = a4 >> 1;
      v24 = a4 >> 1;
      v25 = &result[v24];
      v26 = result;
      v30 = a5;
      std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(result, &result[v24], a3, v23, a5, v23);
      result = std::__stable_sort<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v25, a2, a3, a4 - v23, &v30[v24], a4 - v23);
      v31 = *a3;
      v32 = -1;
      v33 = v30;
      v34 = v26;
      v35 = v25;
      do
      {
        ++v32;
        if (v35 == a2)
        {
          if (v34 == v25)
          {
            return result;
          }

          v50 = &v26[v23] - v34 - 4;
          if (v50 >= 0x1C && (&v30[v32] - v34) >= 0x20)
          {
            v51 = v33 + 4;
            v52 = (v50 >> 2) + 1;
            v53 = 4 * (v52 & 0x7FFFFFFFFFFFFFF8);
            v33 = (v33 + v53);
            v54 = (v34 + 4);
            v55 = v52 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v56 = *v54;
              *(v51 - 1) = *(v54 - 1);
              *v51 = v56;
              v54 += 2;
              v51 += 2;
              v55 -= 8;
            }

            while (v55);
            if (v52 == (v52 & 0x7FFFFFFFFFFFFFF8))
            {
              return result;
            }

            v34 = (v34 + v53);
          }

          do
          {
            v57 = *v34++;
            *v33++ = v57;
          }

          while (v34 != v25);
          return result;
        }

        v36 = v35;
        v37 = *v35;
        v38 = *v34;
        v39 = *(*v31 + 352 + 4 * v37) <= *(*v31 + 352 + 4 * v38);
        if (*(*v31 + 352 + 4 * v37) <= *(*v31 + 352 + 4 * v38))
        {
          v40 = *v34;
        }

        else
        {
          v40 = v37;
        }

        v41 = *(*v31 + 352 + 4 * v37) > *(*v31 + 352 + 4 * v38);
        v35 = &v36[v41];
        v34 += v39;
        *v33++ = v40;
      }

      while (v34 != v25);
      if (v35 == a2)
      {
        return result;
      }

      v42 = a2 - &v36[v41] - 4;
      if (v42 < 0x2C || (&v30[v32] - &v36[v41] + 4) < 0x20)
      {
        goto LABEL_36;
      }

      v43 = v33 + 4;
      v44 = (v42 >> 2) + 1;
      v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
      v33 = (v33 + v45);
      v46 = &v36[v41 + 4];
      v47 = v44 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v48 = *v46;
        *(v43 - 1) = *(v46 - 1);
        *v43 = v48;
        v46 += 8;
        v43 += 2;
        v47 -= 8;
      }

      while (v47);
      if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
      {
        v35 = (v35 + v45);
        do
        {
LABEL_36:
          v49 = *v35++;
          *v33++ = v49;
        }

        while (v35 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result++;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11 + 352;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          v19 = *result;
          if (*(v14 + 4 * v19) <= *(v14 + 4 * v18))
          {
            *v16 = v19;
          }

          else
          {
            v15[1] = v17;
            v20 = a5;
            if (v15 != a5)
            {
              v21 = v13;
              while (1)
              {
                v20 = (a5 + v21);
                v22 = *(a5 + v21 - 4);
                if (*(v14 + 4 * *result) <= *(v14 + 4 * v22))
                {
                  break;
                }

                *v20 = v22;
                v21 -= 4;
                if (!v21)
                {
                  v20 = a5;
                  break;
                }
              }
            }

            *v20 = *result;
          }

          ++result;
          v13 += 4;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

unsigned int *std::__inplace_merge<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(unsigned int *result, unsigned int *a2, unsigned int *a3, void **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = *a2;
    v12 = **a4 + 352;
    while (1)
    {
      v13 = *result;
      if (*(v12 + 4 * v11) > *(v12 + 4 * v13))
      {
        break;
      }

      ++result;
      if (!--a5)
      {
        return result;
      }
    }

    if (a5 >= a6)
    {
      if (a5 == 1)
      {
        *result = v11;
        *a2 = v13;
        return result;
      }

      v24 = a5 / 2;
      v17 = &result[a5 / 2];
      if (a3 == a2)
      {
        v30 = a3;
        v31 = a3;
        v15 = a2;
      }

      else
      {
        v25 = a3 - a2;
        v15 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v15[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v12 + 4 * v29) > *(v12 + 4 * *v17))
          {
            v15 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
        v30 = v15;
        v31 = a2;
      }

      v14 = v30 - v31;
    }

    else
    {
      v14 = a6 / 2;
      v15 = &a2[a6 / 2];
      if (a2 == result)
      {
        v22 = a2;
        v23 = a2;
        v17 = result;
      }

      else
      {
        v16 = a2 - result;
        v17 = result;
        do
        {
          v18 = v16 >> 1;
          v19 = &v17[v16 >> 1];
          v21 = *v19;
          v20 = v19 + 1;
          v16 += ~(v16 >> 1);
          if (*(v12 + 4 * *v15) > *(v12 + 4 * v21))
          {
            v16 = v18;
          }

          else
          {
            v17 = v20;
          }
        }

        while (v16);
        v22 = v17;
        v23 = result;
      }

      v24 = v22 - v23;
    }

    v32 = v15;
    if (v17 != a2)
    {
      v32 = v17;
      if (a2 != v15)
      {
        v33 = v17 + 1;
        if (v17 + 1 == a2)
        {
          v108 = *v17;
          v40 = v15 - a2;
          v110 = a4;
          v112 = result;
          v41 = a3;
          v42 = a7;
          v43 = a6;
          v44 = a5;
          memmove(v17, v17 + 1, v15 - a2);
          a5 = v44;
          a4 = v110;
          result = v112;
          a6 = v43;
          a7 = v42;
          a3 = v41;
          v32 = (v17 + v40);
          *v32 = v108;
        }

        else
        {
          v34 = a2 + 1;
          if (a2 + 1 == v15)
          {
            v45 = *(v15 - 1);
            v32 = v17 + 1;
            if (v15 - 1 != v17)
            {
              v111 = a4;
              v113 = result;
              v109 = a3;
              v46 = a7;
              v47 = a6;
              v48 = a5;
              memmove(v17 + 1, v17, (v15 - 1) - v17);
              a5 = v48;
              a4 = v111;
              result = v113;
              a6 = v47;
              a7 = v46;
              a3 = v109;
            }

            *v17 = v45;
          }

          else
          {
            v35 = (a2 - v17);
            v36 = a2 - v17;
            v37 = v15 - a2;
            if (v36 == v37)
            {
              do
              {
                v38 = *(v33 - 1);
                *(v33 - 1) = *(v34 - 1);
                *(v34 - 1) = v38;
                if (v33 == a2)
                {
                  break;
                }

                ++v33;
              }

              while (v34++ != v15);
              v32 = a2;
            }

            else
            {
              v49 = a2 - v17;
              do
              {
                v50 = v49;
                v49 = v37;
                v37 = v50 % v37;
              }

              while (v37);
              v51 = &v17[v49];
              do
              {
                v53 = *--v51;
                v52 = v53;
                v54 = &v35[v51];
                v55 = v51;
                do
                {
                  v56 = v55;
                  v55 = v54;
                  *v56 = *v54;
                  v57 = (v15 - v54) >> 2;
                  v58 = __OFSUB__(v36, v57);
                  v60 = v36 - v57;
                  v59 = (v60 < 0) ^ v58;
                  v54 = &v17[v60];
                  if (v59)
                  {
                    v54 = &v35[v55];
                  }
                }

                while (v54 != v51);
                *v55 = v52;
              }

              while (v51 != v17);
              v32 = (v17 + v15 - a2);
            }
          }
        }
      }
    }

    v61 = a5 - v24;
    v62 = a6 - v14;
    if (v24 + v14 >= v61 + v62)
    {
      v68 = result;
      std::__inplace_merge<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(v32, v15, a3, a4, v61, v62, a7, a8);
      result = v68;
      a6 = v14;
      a5 = v24;
      a3 = v32;
      a2 = v17;
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v63 = v17;
      v64 = a3;
      v65 = v61;
      v66 = v24;
      v67 = v62;
      std::__inplace_merge<std::_ClassicAlgPolicy,nw_protocol_replicate_finalize_output_frames(nw_protocol *,nw_frame_array_s *)::$_0 &,unsigned int *>(result, v63, v32, a4, v66, v14, a7, a8);
      a5 = v65;
      a6 = v67;
      a3 = v64;
      result = v32;
      a2 = v15;
      if (!v67)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v83 = a2 - result - 4;
    v84 = a7;
    v85 = result;
    if (v83 >= 0x1C)
    {
      v84 = a7;
      v85 = result;
      if ((a7 - result) > 0x1F)
      {
        v86 = (v83 >> 2) + 1;
        v87 = v86 & 0x7FFFFFFFFFFFFFF8;
        v84 = &a7[v87 * 4];
        v88 = result + 4;
        v89 = a7 + 16;
        v90 = v86 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v91 = *v88;
          *(v89 - 1) = *(v88 - 1);
          *v89 = v91;
          v88 += 8;
          v89 += 32;
          v90 -= 8;
        }

        while (v90);
        if (v86 == (v86 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_80:
          v93 = *a4;
          while (a2 != a3)
          {
            v94 = *a2;
            v95 = *a7;
            v96 = *(*v93 + 352 + 4 * v94) <= *(*v93 + 352 + 4 * v95);
            v97 = *(*v93 + 352 + 4 * v94) > *(*v93 + 352 + 4 * v95);
            if (*(*v93 + 352 + 4 * v94) <= *(*v93 + 352 + 4 * v95))
            {
              LODWORD(v94) = *a7;
            }

            a7 += 4 * v96;
            a2 += v97;
            *result++ = v94;
            if (a7 == v84)
            {
              return result;
            }
          }

          return memmove(result, a7, v84 - a7);
        }

        v85 = &result[v87];
      }
    }

    do
    {
      v92 = *v85++;
      *v84 = v92;
      v84 += 4;
    }

    while (v85 != a2);
    goto LABEL_80;
  }

  if (a2 == a3)
  {
    return result;
  }

  v69 = a3 - a2 - 4;
  v70 = a7;
  v71 = a2;
  if (v69 >= 0x1C)
  {
    v70 = a7;
    v71 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v72 = (v69 >> 2) + 1;
      v73 = v72 & 0x7FFFFFFFFFFFFFF8;
      v70 = &a7[v73 * 4];
      v74 = a2 + 4;
      v75 = a7 + 16;
      v76 = v72 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v77 = *v74;
        *(v75 - 1) = *(v74 - 1);
        *v75 = v77;
        v74 += 8;
        v75 += 32;
        v76 -= 8;
      }

      while (v76);
      if (v72 == (v72 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_65;
      }

      v71 = &a2[v73];
    }
  }

  do
  {
    v78 = *v71++;
    *v70 = v78;
    v70 += 4;
  }

  while (v71 != a3);
LABEL_65:
  v79 = 0;
  v80 = *a4;
  v81 = a3;
  while (a2 != result)
  {
    v82 = *(a2 - 1);
    if (*(*v80 + 352 + 4 * *(v70 - 1)) > *(*v80 + 352 + 4 * v82))
    {
      --a2;
    }

    else
    {
      LODWORD(v82) = *(v70 - 1);
      v70 -= 4;
    }

    *--v81 = v82;
    ++v79;
    if (v70 == a7)
    {
      return result;
    }
  }

  v98 = v70 - a7;
  if (v70 != a7)
  {
    v99 = v98 - 4;
    if ((v98 - 4) < 0x2C || (v70 - a3 + 4 * v79) < 0x20)
    {
      v100 = v70;
      goto LABEL_91;
    }

    v103 = v81 - 4;
    v104 = (v99 >> 2) + 1;
    v100 = &v70[-4 * (v104 & 0x7FFFFFFFFFFFFFF8)];
    v105 = v70 - 16;
    v106 = v104 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v107 = *v105;
      *(v103 - 1) = *(v105 - 1);
      *v103 = v107;
      v103 -= 8;
      v105 -= 32;
      v106 -= 8;
    }

    while (v106);
    if (v104 != (v104 & 0x7FFFFFFFFFFFFFF8))
    {
      v81 -= v104 & 0x7FFFFFFFFFFFFFF8;
LABEL_91:
      v101 = v81 - 1;
      do
      {
        v102 = *(v100 - 1);
        v100 -= 4;
        *v101-- = v102;
      }

      while (v100 != a7);
    }
  }

  return result;
}

uint64_t nw_protocol_replicate_get_parameters(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 428) & 2) != 0)
      {
        return handle[11];
      }

      get_parameters = a1->default_input_handler->callbacks->get_parameters;

      return get_parameters();
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_replicate_get_parameters";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_parameters";
        v8 = "%{public}s called with null replicate";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_parameters";
        v8 = "%{public}s called with null replicate, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_parameters";
        v8 = "%{public}s called with null replicate, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_replicate_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_replicate_get_parameters";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_parameters";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_parameters";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_replicate_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_replicate_get_parameters";
    v8 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_replicate_get_local_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_replicate_get_local_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null protocol";
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_33;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v4)
    {
      return 0;
    }

LABEL_35:
    free(v4);
    return 0;
  }

  if (!a1->handle)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_replicate_get_local_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null replicate";
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null replicate, backtrace limit exceeded";
      goto LABEL_33;
    }

    v11 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (v11)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_replicate_get_local_endpoint";
        v17 = 2082;
        v18 = v11;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null replicate, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v11);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_protocol_replicate_get_local_endpoint";
      v7 = "%{public}s called with null replicate, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  get_local_endpoint = a1->default_input_handler->callbacks->get_local_endpoint;

  return get_local_endpoint();
}

uint64_t nw_protocol_replicate_get_remote_endpoint(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 428) & 2) != 0)
      {
        return handle[10];
      }

      get_remote_endpoint = a1->default_input_handler->callbacks->get_remote_endpoint;

      return get_remote_endpoint();
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_replicate_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_remote_endpoint";
        v8 = "%{public}s called with null replicate";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_remote_endpoint";
        v8 = "%{public}s called with null replicate, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_remote_endpoint";
        v8 = "%{public}s called with null replicate, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_replicate_get_remote_endpoint";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_replicate_get_remote_endpoint";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_replicate_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_replicate_get_remote_endpoint";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_replicate_get_remote_endpoint";
    v8 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_replicate_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_replicate_get_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null protocol";
      goto LABEL_33;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_33;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_protocol_replicate_get_output_frames";
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v10)
    {
      return 0;
    }

LABEL_35:
    free(v10);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_replicate_get_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null replicate";
      goto LABEL_33;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null replicate, backtrace limit exceeded";
      goto LABEL_33;
    }

    v17 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v18 = os_log_type_enabled(v11, type);
    if (v17)
    {
      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_protocol_replicate_get_output_frames";
        v23 = 2082;
        v24 = v17;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null replicate, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
      if (!v10)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_output_frames";
      v13 = "%{public}s called with null replicate, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v7 = *(*(handle[4] + 24) + 88);

  return v7();
}

uint64_t nw_protocol_replicate_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_replicate_get_input_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null protocol";
      goto LABEL_33;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_33;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_protocol_replicate_get_input_frames";
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v10)
    {
      return 0;
    }

LABEL_35:
    free(v10);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_replicate_get_input_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null replicate";
      goto LABEL_33;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null replicate, backtrace limit exceeded";
      goto LABEL_33;
    }

    v17 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v18 = os_log_type_enabled(v11, type);
    if (v17)
    {
      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_protocol_replicate_get_input_frames";
        v23 = 2082;
        v24 = v17;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null replicate, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
      if (!v10)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *buf = 136446210;
      v22 = "nw_protocol_replicate_get_input_frames";
      v13 = "%{public}s called with null replicate, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v7 = *(*(handle[4] + 24) + 80);

  return v7();
}

void nw_protocol_replicate_connected(nw_protocol *a1, nw_protocol *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_replicate_connected";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v39, &type, &v48))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v51 = "nw_protocol_replicate_connected";
      v42 = "%{public}s called with null protocol";
    }

    else if (v48 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v45 = os_log_type_enabled(v40, type);
      if (backtrace_string)
      {
        if (v45)
        {
          *buf = 136446466;
          v51 = "nw_protocol_replicate_connected";
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_78:
        if (!v39)
        {
          return;
        }

        goto LABEL_79;
      }

      if (!v45)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v51 = "nw_protocol_replicate_connected";
      v42 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v51 = "nw_protocol_replicate_connected";
      v42 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_77:
    _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
    goto LABEL_78;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 428) & 1) == 0)
    {
      v4 = handle[12];
      if (v4)
      {
        output_handler = a1->output_handler;
        do
        {
          v6 = output_handler;
          output_handler = output_handler->output_handler;
        }

        while (output_handler);
        do
        {
          v7 = v4;
          v4 = *(v4 + 32);
        }

        while (v4);
        nw_protocol_set_output_handler(v7, v6);
      }

      v8 = handle[13];
      if (v8)
      {
        v9 = a1->output_handler;
        do
        {
          v10 = v9;
          v9 = v9->output_handler;
        }

        while (v9);
        do
        {
          v11 = v8;
          v8 = *(v8 + 32);
        }

        while (v8);
        nw_protocol_set_output_handler(v11, v10);
      }

      v12 = handle[14];
      if (v12)
      {
        v13 = a1->output_handler;
        do
        {
          v14 = v13;
          v13 = v13->output_handler;
        }

        while (v13);
        do
        {
          v15 = v12;
          v12 = *(v12 + 32);
        }

        while (v12);
        nw_protocol_set_output_handler(v15, v14);
      }

      v16 = handle[15];
      if (v16)
      {
        v17 = a1->output_handler;
        do
        {
          v18 = v17;
          v17 = v17->output_handler;
        }

        while (v17);
        do
        {
          v19 = v16;
          v16 = *(v16 + 32);
        }

        while (v16);
        nw_protocol_set_output_handler(v19, v18);
      }

      v20 = handle[16];
      if (v20)
      {
        v21 = a1->output_handler;
        do
        {
          v22 = v21;
          v21 = v21->output_handler;
        }

        while (v21);
        do
        {
          v23 = v20;
          v20 = *(v20 + 32);
        }

        while (v20);
        nw_protocol_set_output_handler(v23, v22);
      }

      v24 = handle[17];
      if (v24)
      {
        v25 = a1->output_handler;
        do
        {
          v26 = v25;
          v25 = v25->output_handler;
        }

        while (v25);
        do
        {
          v27 = v24;
          v24 = *(v24 + 32);
        }

        while (v24);
        nw_protocol_set_output_handler(v27, v26);
      }

      v28 = handle[18];
      if (v28)
      {
        v29 = a1->output_handler;
        do
        {
          v30 = v29;
          v29 = v29->output_handler;
        }

        while (v29);
        do
        {
          v31 = v28;
          v28 = *(v28 + 32);
        }

        while (v28);
        nw_protocol_set_output_handler(v31, v30);
      }

      v32 = handle[19];
      if (v32)
      {
        v33 = a1->output_handler;
        do
        {
          v34 = v33;
          v33 = v33->output_handler;
        }

        while (v33);
        do
        {
          v35 = v32;
          v32 = *(v32 + 32);
        }

        while (v32);
        nw_protocol_set_output_handler(v35, v34);
      }

      *(handle + 428) |= 1u;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      connected = default_input_handler->callbacks->connected;
      if (connected)
      {

        connected();
      }
    }

    return;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_protocol_replicate_connected";
  v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null replicate", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (!__nwlog_fault(v39, &type, &v48))
  {
    goto LABEL_78;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v51 = "nw_protocol_replicate_connected";
    v42 = "%{public}s called with null replicate";
    goto LABEL_77;
  }

  if (v48 != 1)
  {
    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v51 = "nw_protocol_replicate_connected";
    v42 = "%{public}s called with null replicate, backtrace limit exceeded";
    goto LABEL_77;
  }

  v46 = __nw_create_backtrace_string();
  v40 = __nwlog_obj();
  v41 = type;
  v47 = os_log_type_enabled(v40, type);
  if (!v46)
  {
    if (!v47)
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v51 = "nw_protocol_replicate_connected";
    v42 = "%{public}s called with null replicate, no backtrace";
    goto LABEL_77;
  }

  if (v47)
  {
    *buf = 136446466;
    v51 = "nw_protocol_replicate_connected";
    v52 = 2082;
    v53 = v46;
    _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null replicate, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v46);
  if (v39)
  {
LABEL_79:
    free(v39);
  }
}

uint64_t nw_protocol_replicate_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_replicate_remove_input_handler";
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v47, &type, &v58))
    {
      goto LABEL_123;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v58 != 1)
      {
        v48 = __nwlog_obj();
        v49 = type;
        if (!os_log_type_enabled(v48, type))
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v61 = "nw_protocol_replicate_remove_input_handler";
        v50 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_122;
      }

      backtrace_string = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v53 = os_log_type_enabled(v48, type);
      if (!backtrace_string)
      {
        if (!v53)
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        v61 = "nw_protocol_replicate_remove_input_handler";
        v50 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_122;
      }

      if (v53)
      {
        *buf = 136446466;
        v61 = "nw_protocol_replicate_remove_input_handler";
        v62 = 2082;
        v63 = backtrace_string;
        v54 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_112:
        _os_log_impl(&dword_181A37000, v48, v49, v54, buf, 0x16u);
      }

LABEL_113:
      free(backtrace_string);
      goto LABEL_123;
    }

    v48 = __nwlog_obj();
    v49 = type;
    if (!os_log_type_enabled(v48, type))
    {
      goto LABEL_123;
    }

    *buf = 136446210;
    v61 = "nw_protocol_replicate_remove_input_handler";
    v50 = "%{public}s called with null protocol";
LABEL_122:
    _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
LABEL_123:
    if (v47)
    {
      free(v47);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_protocol_replicate_remove_input_handler";
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s called with null replicate", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v47, &type, &v58))
    {
      goto LABEL_123;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v61 = "nw_protocol_replicate_remove_input_handler";
      v50 = "%{public}s called with null replicate";
      goto LABEL_122;
    }

    if (v58 != 1)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v61 = "nw_protocol_replicate_remove_input_handler";
      v50 = "%{public}s called with null replicate, backtrace limit exceeded";
      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    v48 = __nwlog_obj();
    v49 = type;
    v55 = os_log_type_enabled(v48, type);
    if (backtrace_string)
    {
      if (v55)
      {
        *buf = 136446466;
        v61 = "nw_protocol_replicate_remove_input_handler";
        v62 = 2082;
        v63 = backtrace_string;
        v54 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
        goto LABEL_112;
      }

      goto LABEL_113;
    }

    if (!v55)
    {
      goto LABEL_123;
    }

    *buf = 136446210;
    v61 = "nw_protocol_replicate_remove_input_handler";
    v50 = "%{public}s called with null replicate, no backtrace";
    goto LABEL_122;
  }

  nw_protocol_set_output_handler(a2, 0);
  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  nw_protocol_set_input_handler(a1, 0);
  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  v9 = handle[12];
  if (v9)
  {
    (*(*(v9 + 24) + 8))();
    handle[12] = 0;
    *(handle + 104) = -1;
  }

  v10 = handle[20];
  if (v10)
  {
    v11 = handle[9];
    if (!v11)
    {
      goto LABEL_14;
    }

    if (nw_endpoint_is_equal(v11, v10, 0))
    {
      *(handle + 105) = -1;
    }

    v10 = handle[20];
    if (v10)
    {
LABEL_14:
      os_release(v10);
      handle[20] = 0;
    }
  }

  v12 = handle[13];
  if (v12)
  {
    (*(*(v12 + 24) + 8))();
    handle[13] = 0;
    *(handle + 104) = -1;
  }

  v13 = handle[21];
  if (v13)
  {
    v14 = handle[9];
    if (!v14)
    {
      goto LABEL_22;
    }

    if (nw_endpoint_is_equal(v14, v13, 0))
    {
      *(handle + 105) = -1;
    }

    v13 = handle[21];
    if (v13)
    {
LABEL_22:
      os_release(v13);
      handle[21] = 0;
    }
  }

  v15 = handle[14];
  if (v15)
  {
    (*(*(v15 + 24) + 8))();
    handle[14] = 0;
    *(handle + 104) = -1;
  }

  v16 = handle[22];
  if (v16)
  {
    v17 = handle[9];
    if (!v17)
    {
      goto LABEL_30;
    }

    if (nw_endpoint_is_equal(v17, v16, 0))
    {
      *(handle + 105) = -1;
    }

    v16 = handle[22];
    if (v16)
    {
LABEL_30:
      os_release(v16);
      handle[22] = 0;
    }
  }

  v18 = handle[15];
  if (v18)
  {
    (*(*(v18 + 24) + 8))();
    handle[15] = 0;
    *(handle + 104) = -1;
  }

  v19 = handle[23];
  if (v19)
  {
    v20 = handle[9];
    if (!v20)
    {
      goto LABEL_38;
    }

    if (nw_endpoint_is_equal(v20, v19, 0))
    {
      *(handle + 105) = -1;
    }

    v19 = handle[23];
    if (v19)
    {
LABEL_38:
      os_release(v19);
      handle[23] = 0;
    }
  }

  v21 = handle[16];
  if (v21)
  {
    (*(*(v21 + 24) + 8))();
    handle[16] = 0;
    *(handle + 104) = -1;
  }

  v22 = handle[24];
  if (v22)
  {
    v23 = handle[9];
    if (!v23)
    {
      goto LABEL_46;
    }

    if (nw_endpoint_is_equal(v23, v22, 0))
    {
      *(handle + 105) = -1;
    }

    v22 = handle[24];
    if (v22)
    {
LABEL_46:
      os_release(v22);
      handle[24] = 0;
    }
  }

  v24 = handle[17];
  if (v24)
  {
    (*(*(v24 + 24) + 8))();
    handle[17] = 0;
    *(handle + 104) = -1;
  }

  v25 = handle[25];
  if (v25)
  {
    v26 = handle[9];
    if (!v26)
    {
      goto LABEL_54;
    }

    if (nw_endpoint_is_equal(v26, v25, 0))
    {
      *(handle + 105) = -1;
    }

    v25 = handle[25];
    if (v25)
    {
LABEL_54:
      os_release(v25);
      handle[25] = 0;
    }
  }

  v27 = handle[18];
  if (v27)
  {
    (*(*(v27 + 24) + 8))();
    handle[18] = 0;
    *(handle + 104) = -1;
  }

  v28 = handle[26];
  if (v28)
  {
    v29 = handle[9];
    if (!v29)
    {
      goto LABEL_62;
    }

    if (nw_endpoint_is_equal(v29, v28, 0))
    {
      *(handle + 105) = -1;
    }

    v28 = handle[26];
    if (v28)
    {
LABEL_62:
      os_release(v28);
      handle[26] = 0;
    }
  }

  v30 = handle[19];
  if (v30)
  {
    (*(*(v30 + 24) + 8))();
    handle[19] = 0;
    *(handle + 104) = -1;
  }

  v31 = handle[27];
  if (v31)
  {
    v32 = handle[9];
    if (!v32)
    {
      goto LABEL_70;
    }

    if (nw_endpoint_is_equal(v32, v31, 0))
    {
      *(handle + 105) = -1;
    }

    v31 = handle[27];
    if (v31)
    {
LABEL_70:
      os_release(v31);
      handle[27] = 0;
    }
  }

  if (a3)
  {
    v33 = handle[8];
    if (!v33)
    {
LABEL_81:
      a1->handle = 0;
      v37 = handle[9];
      if (v37)
      {
        os_release(v37);
        handle[9] = 0;
      }

      v38 = handle[11];
      if (v38)
      {
        os_release(v38);
        handle[11] = 0;
      }

      v39 = handle[10];
      if (v39)
      {
        os_release(v39);
        handle[10] = 0;
      }

      v40 = handle[8];
      if (v40)
      {
        os_release(v40);
      }

      free(handle);
      return 1;
    }

    if (nw_protocol_copy_replicate_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_replicate_definition::onceToken, &__block_literal_global_44061);
    }

    if (nw_protocol_copy_replicate_definition::definition)
    {
      v34 = os_retain(nw_protocol_copy_replicate_definition::definition);
      v35 = nw_protocol_metadata_matches_definition(v33, v34);
      if (v34)
      {
        os_release(v34);
      }

      if (v35)
      {
        goto LABEL_79;
      }
    }

    else if (nw_protocol_metadata_matches_definition(v33, 0))
    {
LABEL_79:
      v36 = _nw_protocol_metadata_get_handle();
      if (v36)
      {
        ___ZL32nw_replicate_metadata_invalidateP20nw_protocol_metadata_block_invoke(&__block_literal_global_42_44198, v36);
      }

      goto LABEL_81;
    }

    v41 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_replicate_metadata_invalidate";
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v42, &type, &v58))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        v61 = "nw_replicate_metadata_invalidate";
        v45 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
        goto LABEL_134;
      }

      if (v58 != 1)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        v61 = "nw_replicate_metadata_invalidate";
        v45 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
        goto LABEL_134;
      }

      v56 = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = type;
      v57 = os_log_type_enabled(v43, type);
      if (v56)
      {
        if (v57)
        {
          *buf = 136446466;
          v61 = "nw_replicate_metadata_invalidate";
          v62 = 2082;
          v63 = v56;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v56);
        goto LABEL_135;
      }

      if (v57)
      {
        *buf = 136446210;
        v61 = "nw_replicate_metadata_invalidate";
        v45 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
LABEL_134:
        _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
      }
    }

LABEL_135:
    if (v42)
    {
      free(v42);
    }

    goto LABEL_81;
  }

  return 1;
}

uint64_t nw_protocol_metadata_is_replicate(nw_protocol_metadata *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_copy_replicate_definition::onceToken != -1)
    {
      v10 = a1;
      dispatch_once(&nw_protocol_copy_replicate_definition::onceToken, &__block_literal_global_44061);
      a1 = v10;
    }

    if (nw_protocol_copy_replicate_definition::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_copy_replicate_definition::definition);
      result = nw_protocol_metadata_matches_definition(v1, v2);
      if (v2)
      {
        v4 = result;
        os_release(v2);
        return v4;
      }
    }

    else
    {

      return nw_protocol_metadata_matches_definition(a1, 0);
    }

    return result;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_metadata_is_replicate";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_replicate";
        v9 = "%{public}s called with null metadata";
LABEL_24:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_metadata_is_replicate";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_replicate";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_24;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_replicate";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t ___ZL32nw_replicate_metadata_invalidateP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  *(a2 + 20) = 1;
  os_unfair_lock_unlock((a2 + 16));
  return 1;
}

uint64_t nw_protocol_replicate_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      nw_protocol_set_input_handler(a1, a2);
      *handle = *a2->flow_id;
      nw_protocol_set_output_handler(a2, handle);
      v4 = (a2->callbacks->get_path)(a2);
      if (v4)
      {
        v5 = v4;
        nexus_protocol_level = _nw_path_get_nexus_protocol_level(v5);
      }

      else
      {
        nexus_protocol_level = 4;
      }

      *(handle + 106) = nexus_protocol_level;
      v7 = (a2->callbacks->get_remote_endpoint)(a2);
      if (v7)
      {
        v7 = os_retain(v7);
      }

      handle[9] = v7;
      v8 = (a2->callbacks->get_parameters)(a2);
      v9 = nw_parameters_copy_context(v8);
      if (nw_protocol_copy_replicate_definition::onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_replicate_definition::onceToken, &__block_literal_global_44061);
      }

      if (nw_protocol_copy_replicate_definition::definition)
      {
        v10 = os_retain(nw_protocol_copy_replicate_definition::definition);
      }

      else
      {
        v10 = 0;
      }

      singleton = _nw_protocol_metadata_create_singleton(v10);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL28nw_replicate_create_metadataP11nw_protocolP10nw_context_block_invoke;
      v38 = &__block_descriptor_tmp_33_44217;
      v39 = handle;
      v40 = v9;
      nw_protocol_metadata_access_handle(singleton, buf);
      if (v10)
      {
        os_release(v10);
      }

      handle[8] = singleton;
      if (v9)
      {
        os_release(v9);
      }

      v12 = nw_parameters_copy_protocol_options_legacy(v8, handle);
      if (v12)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        v13 = handle[9];
        *type = 0;
        v34 = type;
        v35 = 0x2000000000;
        v36 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_replicate_options_get_primary_expiration_adjustment_block_invoke;
        v38 = &unk_1E6A32E00;
        v39 = type;
        v14 = v12;
        nw_protocol_options_access_handle(v12, buf);
        v15 = *(v34 + 3);
        _Block_object_dispose(type, 8);
        *type = 0;
        v34 = type;
        v35 = 0x2000000000;
        v36 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_replicate_options_get_primary_maximum_expiration_block_invoke;
        v38 = &unk_1E6A32E28;
        v39 = type;
        nw_protocol_options_access_handle(v14, buf);
        v16 = *(v34 + 3);
        _Block_object_dispose(type, 8);
        nw_protocol_replicate_add_secondary_endpoint(handle, v13, 0, v15, v16);
        ++*(v30 + 6);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 0x40000000;
        v28[2] = ___ZL39nw_protocol_replicate_add_input_handlerP11nw_protocolS0__block_invoke;
        v28[3] = &unk_1E6A32F30;
        v28[4] = &v29;
        v28[5] = handle;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_replicate_options_enumerate_endpoints_with_expiration_block_invoke;
        v38 = &unk_1E6A32DD8;
        v39 = v28;
        nw_protocol_options_access_handle(v14, buf);
        os_release(v14);
        _Block_object_dispose(&v29, 8);
      }

      return 1;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_replicate_add_input_handler";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null replicate", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v29) = 0;
    if (!__nwlog_fault(v19, type, &v29))
    {
      goto LABEL_47;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (os_log_type_enabled(v20, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_add_input_handler";
        v22 = "%{public}s called with null replicate";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (os_log_type_enabled(v20, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_add_input_handler";
        v22 = "%{public}s called with null replicate, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v27 = os_log_type_enabled(v20, type[0]);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_add_input_handler";
        v22 = "%{public}s called with null replicate, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v27)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_replicate_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v26 = "%{public}s called with null replicate, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_replicate_add_input_handler";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v29) = 0;
  if (!__nwlog_fault(v19, type, &v29))
  {
    goto LABEL_47;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (os_log_type_enabled(v20, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_add_input_handler";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v25 = os_log_type_enabled(v20, type[0]);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_replicate_add_input_handler";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v25)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_replicate_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_36:
      _os_log_impl(&dword_181A37000, v20, v21, v26, buf, 0x16u);
    }

LABEL_37:
    free(backtrace_string);
    goto LABEL_47;
  }

  v20 = __nwlog_obj();
  v21 = type[0];
  if (os_log_type_enabled(v20, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_replicate_add_input_handler";
    v22 = "%{public}s called with null protocol";
LABEL_46:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
  }

LABEL_47:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

uint64_t ___ZL28nw_replicate_create_metadataP11nw_protocolP10nw_context_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v4;
  if (v3)
  {
    v3 = os_retain(v3);
  }

  a2[1] = v3;
  return 1;
}

void nw_protocol_replicate_add_secondary_endpoint(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3 < 8)
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      *(a1 + 428) |= 2u;
      (*(*(v10 + 24) + 112))();
      *(a1 + 80) = a2;
      v12 = _nw_parameters_copy();
      *(a1 + 88) = v12;
      v13 = a1 + 8 * a3;
      *(v13 + 224) = a4;
      *(v13 + 288) = a5;
      *(a1 + 4 * a3 + 352) = 0;
      if (a5)
      {
        *(a1 + 428) |= 8u;
      }

      if (!*(a1 + 80) || !v12)
      {
LABEL_28:
        *(a1 + 80) = 0;
        if (!v12)
        {
LABEL_30:
          *(a1 + 428) &= ~2u;
          nw_protocol_set_output_handler(a1, v11);
          return;
        }

LABEL_29:
        os_release(v12);
        *(a1 + 88) = 0;
        goto LABEL_30;
      }

      if ((*(a1 + 424) - 1) >= 3)
      {
        *(a1 + 80) = 0;
        goto LABEL_29;
      }

      *v42 = 0;
      *&v42[8] = v42;
      *&v42[16] = 0x2000000000;
      v43 = a1;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke;
      v34[3] = &unk_1E6A32F78;
      v34[5] = &v36;
      v34[6] = a1;
      v35 = a3;
      v34[4] = v42;
      nw_parameters_internal_iterate_protocol_stack(v12, 3, 0, v34);
      if (*(v37 + 24) == 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
LABEL_12:
          _Block_object_dispose(&v36, 8);
LABEL_27:
          _Block_object_dispose(v42, 8);
          v12 = *(a1 + 88);
          goto LABEL_28;
        }

        *buf = 136446210;
        v41 = "nw_protocol_replicate_add_secondary_endpoint";
        v15 = "%{public}s Failed to attach transport protocol";
LABEL_11:
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
        goto LABEL_12;
      }

      _Block_object_dispose(&v36, 8);
      if ((*(a1 + 424) - 1) <= 1)
      {
        v36 = 0;
        v37 = &v36;
        v38 = 0x2000000000;
        v39 = 0;
        v16 = *(a1 + 88);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 0x40000000;
        v32[2] = ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke_36;
        v32[3] = &unk_1E6A32FA0;
        v32[5] = &v36;
        v32[6] = a1;
        v33 = a3;
        v32[4] = v42;
        nw_parameters_internal_iterate_protocol_stack(v16, 2, 0, v32);
        if (*(v37 + 24) == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          *buf = 136446210;
          v41 = "nw_protocol_replicate_add_secondary_endpoint";
          v15 = "%{public}s Failed to attach internet protocol";
          goto LABEL_11;
        }

        _Block_object_dispose(&v36, 8);
        if (*(a1 + 424) == 1)
        {
          v36 = 0;
          v37 = &v36;
          v38 = 0x2000000000;
          v39 = 0;
          v17 = *(a1 + 88);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 0x40000000;
          v30[2] = ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke_38;
          v30[3] = &unk_1E6A32FC8;
          v30[5] = &v36;
          v30[6] = a1;
          v31 = a3;
          v30[4] = v42;
          nw_parameters_internal_iterate_protocol_stack(v17, 1, 0, v30);
          if (*(v37 + 24) == 1)
          {
            v14 = __nwlog_obj();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }

            *buf = 136446210;
            v41 = "nw_protocol_replicate_add_secondary_endpoint";
            v15 = "%{public}s Failed to attach link protocol";
            goto LABEL_11;
          }

          _Block_object_dispose(&v36, 8);
        }
      }

      if (*(a1 + 428))
      {
        v18 = *(a1 + 32);
        do
        {
          v19 = v18;
          v18 = v18[4];
        }

        while (v18);
        nw_protocol_set_output_handler(*(*&v42[8] + 24), v19);
      }

      goto LABEL_27;
    }

    v25 = __nwlog_obj();
    *v42 = 136446210;
    *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null (index < NW_PROTOCOL_REPLICATE_MAX_ENDPOINTS)", v42, 12);
    LOBYTE(v36) = 16;
    buf[0] = 0;
    if (__nwlog_fault(v21, &v36, buf))
    {
      if (v36 == 17)
      {
        v22 = __nwlog_obj();
        v23 = v36;
        if (!os_log_type_enabled(v22, v36))
        {
          goto LABEL_60;
        }

        *v42 = 136446210;
        *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
        v24 = "%{public}s called with null (index < NW_PROTOCOL_REPLICATE_MAX_ENDPOINTS)";
        goto LABEL_59;
      }

      if (buf[0] != 1)
      {
        v22 = __nwlog_obj();
        v23 = v36;
        if (!os_log_type_enabled(v22, v36))
        {
          goto LABEL_60;
        }

        *v42 = 136446210;
        *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
        v24 = "%{public}s called with null (index < NW_PROTOCOL_REPLICATE_MAX_ENDPOINTS), backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = v36;
      v29 = os_log_type_enabled(v22, v36);
      if (backtrace_string)
      {
        if (v29)
        {
          *v42 = 136446466;
          *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
          *&v42[12] = 2082;
          *&v42[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null (index < NW_PROTOCOL_REPLICATE_MAX_ENDPOINTS), dumping backtrace:%{public}s", v42, 0x16u);
        }

        free(backtrace_string);
        if (v21)
        {
          goto LABEL_61;
        }

        return;
      }

      if (v29)
      {
        *v42 = 136446210;
        *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
        v24 = "%{public}s called with null (index < NW_PROTOCOL_REPLICATE_MAX_ENDPOINTS), no backtrace";
LABEL_59:
        _os_log_impl(&dword_181A37000, v22, v23, v24, v42, 0xCu);
      }
    }
  }

  else
  {
    v20 = __nwlog_obj();
    *v42 = 136446210;
    *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null replicate", v42, 12);
    LOBYTE(v36) = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v21, &v36, buf))
    {
      goto LABEL_60;
    }

    if (v36 == 17)
    {
      v22 = __nwlog_obj();
      v23 = v36;
      if (!os_log_type_enabled(v22, v36))
      {
        goto LABEL_60;
      }

      *v42 = 136446210;
      *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
      v24 = "%{public}s called with null replicate";
      goto LABEL_59;
    }

    if (buf[0] != 1)
    {
      v22 = __nwlog_obj();
      v23 = v36;
      if (!os_log_type_enabled(v22, v36))
      {
        goto LABEL_60;
      }

      *v42 = 136446210;
      *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
      v24 = "%{public}s called with null replicate, backtrace limit exceeded";
      goto LABEL_59;
    }

    v26 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = v36;
    v27 = os_log_type_enabled(v22, v36);
    if (!v26)
    {
      if (!v27)
      {
        goto LABEL_60;
      }

      *v42 = 136446210;
      *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
      v24 = "%{public}s called with null replicate, no backtrace";
      goto LABEL_59;
    }

    if (v27)
    {
      *v42 = 136446466;
      *&v42[4] = "nw_protocol_replicate_add_secondary_endpoint";
      *&v42[12] = 2082;
      *&v42[14] = v26;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null replicate, dumping backtrace:%{public}s", v42, 0x16u);
    }

    free(v26);
  }

LABEL_60:
  if (v21)
  {
LABEL_61:
    free(v21);
  }
}

uint64_t ___ZL39nw_protocol_replicate_add_input_handlerP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nw_protocol_replicate_add_secondary_endpoint(*(a1 + 40), a2, *(*(*(a1 + 32) + 8) + 24), a3, a4);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

uint64_t __nw_replicate_options_enumerate_endpoints_with_expiration_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __nw_replicate_options_enumerate_endpoints_with_expiration_block_invoke_2;
  v5[3] = &unk_1E6A32DB0;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  if (v3)
  {
    _nw_array_apply(v3, v5);
  }

  return 1;
}

uint64_t __nw_replicate_options_enumerate_endpoints_with_expiration_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 7)
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32), a3, *(*(a1 + 40) + 8 * a2 + 16), *(*(a1 + 40) + 8 * a2 + 80));
  }

  else
  {
    return 0;
  }
}

BOOL ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = nw_protocol_replicate_attach_protocol(*(a1 + 48), a3, a4, *(*(*(a1 + 32) + 8) + 24), *(a1 + 56));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5 != 0;
}

BOOL ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke_36(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = nw_protocol_replicate_attach_protocol(*(a1 + 48), a3, a4, *(*(*(a1 + 32) + 8) + 24), *(a1 + 56));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5 != 0;
}

BOOL ___ZL44nw_protocol_replicate_add_secondary_endpointP21nw_protocol_replicateP11nw_endpointjxy_block_invoke_38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = nw_protocol_replicate_attach_protocol(*(a1 + 48), a3, a4, *(*(*(a1 + 32) + 8) + 24), *(a1 + 56));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5 != 0;
}

uint64_t nw_protocol_replicate_attach_protocol(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a5 >= 8)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_replicate_attach_protocol";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null (index < 8)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v26, &type, &v32))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v35 = "nw_protocol_replicate_attach_protocol";
      v29 = "%{public}s called with null (index < 8)";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v31 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v35 = "nw_protocol_replicate_attach_protocol";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null (index < 8), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (!v31)
      {
LABEL_37:
        if (v26)
        {
          free(v26);
        }

        return 0;
      }

      *buf = 136446210;
      v35 = "nw_protocol_replicate_attach_protocol";
      v29 = "%{public}s called with null (index < 8), no backtrace";
    }

    else
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v35 = "nw_protocol_replicate_attach_protocol";
      v29 = "%{public}s called with null (index < 8), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
    goto LABEL_37;
  }

  identifier = nw_protocol_definition_get_identifier(a2);
  internal = nw_protocol_create_internal(identifier, *(a1 + 80), *(a1 + 88), 1);
  if (!internal)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "nw_protocol_replicate_attach_protocol";
      v36 = 2114;
      v37 = a2;
      v21 = "%{public}s Replicate could not create protocol for %{public}@";
      v22 = v20;
LABEL_20:
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
    }

    return 0;
  }

  v13 = internal;
  nw_parameters_set_protocol_instance(a3, v12, internal);
  v14 = (**(v13 + 24))(v13, a4);
  if (!*(a1 + 96 + 8 * a5))
  {
    *(a1 + 96 + 8 * a5) = v13;
    *(a1 + 416) = -1;
  }

  if (!*(a1 + 160 + 8 * a5))
  {
    v15 = *(a1 + 80);
    if (v15)
    {
      v16 = *(a1 + 72);
      if (v16 && nw_endpoint_is_equal(v16, v15, 0))
      {
        *(a1 + 420) = a5;
      }

      v17 = *(a1 + 80);
      if (v17)
      {
        v17 = os_retain(v17);
      }

      *(a1 + 160 + 8 * a5) = v17;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 80);
      *buf = 136446466;
      v35 = "nw_protocol_replicate_attach_protocol";
      v36 = 2112;
      v37 = v23;
      v21 = "%{public}s Replicate failed to add output handler for %@";
      v22 = v18;
      goto LABEL_20;
    }

    return 0;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 80);
    *buf = 136446722;
    v35 = "nw_protocol_replicate_attach_protocol";
    v36 = 2112;
    v37 = a2;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s Replicate added output handler for %@ on %@", buf, 0x20u);
  }

  return v13;
}

uint64_t nw_replicate_create_options()
{
  if (nw_protocol_copy_replicate_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_replicate_definition::onceToken, &__block_literal_global_44061);
  }

  if (nw_protocol_copy_replicate_definition::definition)
  {
    v0 = os_retain(nw_protocol_copy_replicate_definition::definition);
    result = nw_protocol_create_options(v0);
    if (v0)
    {
      v2 = v0;
      v3 = result;
      os_release(v2);
      return v3;
    }
  }

  else
  {

    return nw_protocol_create_options(0);
  }

  return result;
}

void nw_replicate_options_set_primary_expiration(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __nw_replicate_options_set_primary_expiration_block_invoke;
    v10[3] = &__block_descriptor_tmp_6_44255;
    v10[4] = a2;
    v10[5] = a3;
    nw_protocol_options_access_handle(a1, v10);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_replicate_options_set_primary_expiration";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null options", buf, 12);
  v12 = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &v12, &v11))
  {
    if (v12 == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = v12;
      if (!os_log_type_enabled(v5, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_replicate_options_set_primary_expiration";
      v7 = "%{public}s called with null options";
      goto LABEL_17;
    }

    if (v11 != 1)
    {
      v5 = __nwlog_obj();
      v6 = v12;
      if (!os_log_type_enabled(v5, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_replicate_options_set_primary_expiration";
      v7 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = v12;
    v9 = os_log_type_enabled(v5, v12);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v14 = "nw_replicate_options_set_primary_expiration";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v9)
    {
      *buf = 136446210;
      v14 = "nw_replicate_options_set_primary_expiration";
      v7 = "%{public}s called with null options, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }
}

uint64_t __nw_replicate_options_set_primary_expiration_block_invoke(uint64_t a1, void *a2)
{
  *a2 = *(a1 + 32);
  a2[1] = *(a1 + 40);
  return 1;
}

void nw_replicate_options_add_endpoint_with_expiration(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __nw_replicate_options_add_endpoint_with_expiration_block_invoke;
      v14[3] = &__block_descriptor_tmp_7_44266;
      v14[4] = a2;
      v14[5] = a3;
      v14[6] = a4;
      nw_protocol_options_access_handle(a1, v14);
      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_replicate_options_add_endpoint_with_expiration";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null endpoint", buf, 12);
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &v16, &v15))
    {
      if (v16 == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = v16;
        if (!os_log_type_enabled(v6, v16))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v18 = "nw_replicate_options_add_endpoint_with_expiration";
        v8 = "%{public}s called with null endpoint";
        goto LABEL_32;
      }

      if (v15 != 1)
      {
        v6 = __nwlog_obj();
        v7 = v16;
        if (!os_log_type_enabled(v6, v16))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v18 = "nw_replicate_options_add_endpoint_with_expiration";
        v8 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v16;
      v13 = os_log_type_enabled(v6, v16);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_replicate_options_add_endpoint_with_expiration";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v5)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_replicate_options_add_endpoint_with_expiration";
        v8 = "%{public}s called with null endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_replicate_options_add_endpoint_with_expiration";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &v16, &v15))
    {
      goto LABEL_33;
    }

    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_options_add_endpoint_with_expiration";
      v8 = "%{public}s called with null options";
      goto LABEL_32;
    }

    if (v15 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_options_add_endpoint_with_expiration";
      v8 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_32;
    }

    v10 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v16;
    v11 = os_log_type_enabled(v6, v16);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_options_add_endpoint_with_expiration";
      v8 = "%{public}s called with null options, no backtrace";
      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v18 = "nw_replicate_options_add_endpoint_with_expiration";
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_33:
  if (v5)
  {
LABEL_34:
    free(v5);
  }
}

uint64_t __nw_replicate_options_add_endpoint_with_expiration_block_invoke(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  count = *(a2 + 144);
  if (!count)
  {
LABEL_6:
    v7 = a2 + 8 * count;
    *(v7 + 16) = a1[5];
    *(v7 + 80) = a1[6];
    return 1;
  }

  count = _nw_array_get_count(count);
  if (count <= 7)
  {
    if (*(a2 + 144))
    {
      v5 = a1[4];
      if (v5)
      {
        v6 = count;
        _nw_array_append(*(a2 + 144), v5);
        count = v6;
      }
    }

    goto LABEL_6;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v10 = 136446466;
    v11 = "nw_replicate_options_add_endpoint_with_expiration_block_invoke";
    v12 = 1024;
    v13 = 8;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Cannot add more than %d endpoints to replicator", &v10, 0x12u);
  }

  return 1;
}

void nw_replicate_options_enumerate_endpoints(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __nw_replicate_options_enumerate_endpoints_block_invoke;
      v12[3] = &unk_1E6A32D88;
      v12[4] = a2;
      nw_protocol_options_access_handle(a1, v12);
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_replicate_options_enumerate_endpoints";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null enumerate_block", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v3, &v14, &v13))
    {
      if (v14 == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints";
        v6 = "%{public}s called with null enumerate_block";
        goto LABEL_32;
      }

      if (v13 != 1)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints";
        v6 = "%{public}s called with null enumerate_block, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = v14;
      v11 = os_log_type_enabled(v4, v14);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_replicate_options_enumerate_endpoints";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints";
        v6 = "%{public}s called with null enumerate_block, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_replicate_options_enumerate_endpoints";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &v14, &v13))
    {
      goto LABEL_33;
    }

    if (v14 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints";
      v6 = "%{public}s called with null options";
      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v14;
    v9 = os_log_type_enabled(v4, v14);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints";
      v6 = "%{public}s called with null options, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v16 = "nw_replicate_options_enumerate_endpoints";
      v17 = 2082;
      v18 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v8);
  }

LABEL_33:
  if (v3)
  {
LABEL_34:
    free(v3);
  }
}

uint64_t __nw_replicate_options_enumerate_endpoints_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __nw_replicate_options_enumerate_endpoints_block_invoke_2;
  aBlock[3] = &unk_1E6A32D60;
  aBlock[4] = *(a1 + 32);
  if (v3)
  {
    _nw_array_apply(v3, aBlock);
  }

  return 1;
}

void nw_replicate_options_enumerate_endpoints_with_expiration(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __nw_replicate_options_enumerate_endpoints_with_expiration_block_invoke;
      v12[3] = &unk_1E6A32DD8;
      v12[4] = a2;
      nw_protocol_options_access_handle(a1, v12);
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null enumerate_block", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v3, &v14, &v13))
    {
      if (v14 == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
        v6 = "%{public}s called with null enumerate_block";
        goto LABEL_32;
      }

      if (v13 != 1)
      {
        v4 = __nwlog_obj();
        v5 = v14;
        if (!os_log_type_enabled(v4, v14))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
        v6 = "%{public}s called with null enumerate_block, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = v14;
      v11 = os_log_type_enabled(v4, v14);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
        v6 = "%{public}s called with null enumerate_block, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
    v14 = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v3, &v14, &v13))
    {
      goto LABEL_33;
    }

    if (v14 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
      v6 = "%{public}s called with null options";
      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v14;
      if (!os_log_type_enabled(v4, v14))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v14;
    v9 = os_log_type_enabled(v4, v14);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
      v6 = "%{public}s called with null options, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v16 = "nw_replicate_options_enumerate_endpoints_with_expiration";
      v17 = 2082;
      v18 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v8);
  }

LABEL_33:
  if (v3)
  {
LABEL_34:
    free(v3);
  }
}

uint64_t nw_replicate_options_get_primary_expiration_adjustment(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __nw_replicate_options_get_primary_expiration_adjustment_block_invoke;
    v10[3] = &unk_1E6A32E00;
    v10[4] = buf;
    nw_protocol_options_access_handle(a1, v10);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_replicate_options_get_primary_expiration_adjustment";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null options", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_expiration_adjustment";
        v7 = "%{public}s called with null options";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          *&buf[4] = "nw_replicate_options_get_primary_expiration_adjustment";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_expiration_adjustment";
        v7 = "%{public}s called with null options, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_expiration_adjustment";
        v7 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_replicate_options_get_primary_maximum_expiration(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __nw_replicate_options_get_primary_maximum_expiration_block_invoke;
    v10[3] = &unk_1E6A32E28;
    v10[4] = buf;
    nw_protocol_options_access_handle(a1, v10);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_replicate_options_get_primary_maximum_expiration";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null options", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_maximum_expiration";
        v7 = "%{public}s called with null options";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          *&buf[4] = "nw_replicate_options_get_primary_maximum_expiration";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_maximum_expiration";
        v7 = "%{public}s called with null options, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_replicate_options_get_primary_maximum_expiration";
        v7 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_replicate_metadata_add_endpoint_with_expiration(nw_protocol_metadata *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (nw_protocol_metadata_is_replicate(a1))
  {
    if (a2)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __nw_replicate_metadata_add_endpoint_with_expiration_block_invoke;
      v18[3] = &__block_descriptor_tmp_16_44310;
      v18[4] = a1;
      v18[5] = a2;
      v18[6] = a3;
      v18[7] = a4;
      nw_protocol_metadata_access_handle(a1, v18);
      return;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null endpoint", buf, 12);
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &v20, &v19))
    {
      if (v20 == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
        v12 = "%{public}s called with null endpoint";
        goto LABEL_32;
      }

      if (v19 != 1)
      {
        v10 = __nwlog_obj();
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
        v12 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = v20;
      v17 = os_log_type_enabled(v10, v20);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v9)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
        v12 = "%{public}s called with null endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &v20, &v19))
    {
      goto LABEL_33;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v20;
      if (!os_log_type_enabled(v10, v20))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
      goto LABEL_32;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = v20;
      if (!os_log_type_enabled(v10, v20))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_32;
    }

    v14 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = v20;
    v15 = os_log_type_enabled(v10, v20);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_32;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_replicate_metadata_add_endpoint_with_expiration";
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v14);
  }

LABEL_33:
  if (v9)
  {
LABEL_34:
    free(v9);
  }
}

uint64_t __nw_replicate_metadata_add_endpoint_with_expiration_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  if ((*(a2 + 20) & 1) == 0 && *a2 && *(a2 + 8))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      os_retain(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      os_retain(v5);
    }

    is_inline = nw_context_is_inline(*(a2 + 8));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_replicate_metadata_add_endpoint_with_expiration_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_15_44311;
    v12 = is_inline;
    v7 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = v7;
    if (is_inline)
    {
      __nw_replicate_metadata_add_endpoint_with_expiration_block_invoke_2(v9);
    }

    else
    {
      nw_queue_context_async(*(a2 + 8), v9);
    }
  }

  os_unfair_lock_unlock((a2 + 16));
  return 1;
}

void __nw_replicate_metadata_add_endpoint_with_expiration_block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if ((nw_protocol_metadata_is_replicate(v2) & 1) == 0)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
      v13 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
LABEL_36:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      goto LABEL_37;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
      v13 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
      v13 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_36;
    }

    if (v16)
    {
      *buf = 136446466;
      *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  if (v3)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL43nw_replicate_metadata_add_endpoint_on_queueP20nw_protocol_metadataP11nw_endpointbxy_block_invoke;
    v22 = &__block_descriptor_tmp_47_44322;
    v26 = (v4 & 1) == 0;
    v23 = v3;
    v24 = v5;
    v25 = v6;
    nw_protocol_metadata_access_handle(v2, buf);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null endpoint", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v10, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
    v13 = "%{public}s called with null endpoint";
    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
    v13 = "%{public}s called with null endpoint, backtrace limit exceeded";
    goto LABEL_36;
  }

  v17 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v18 = os_log_type_enabled(v11, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
    v13 = "%{public}s called with null endpoint, no backtrace";
    goto LABEL_36;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_replicate_metadata_add_endpoint_on_queue";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v10)
  {
LABEL_38:
    free(v10);
  }

LABEL_4:
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7)
  {
    os_release(v7);
  }

  if (v8)
  {
    os_release(v8);
  }
}

uint64_t ___ZL43nw_replicate_metadata_add_endpoint_on_queueP20nw_protocol_metadataP11nw_endpointbxy_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v5 = (a2 + 16);
  if (v4 == 1)
  {
    os_unfair_lock_lock(v5);
    if (*(a2 + 20))
    {
      goto LABEL_36;
    }
  }

  else
  {
    os_unfair_lock_assert_owner(v5);
    if (*(a2 + 20))
    {
      goto LABEL_36;
    }
  }

  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      if ((v7[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v7[1]);
      }

      v9 = *(*a2 + 40);
      v10 = v9[20];
      v11 = v10 == 0;
      if (v10)
      {
        is_equal = nw_endpoint_is_equal(v10, *(a1 + 32), 0);
        v13 = v9[21];
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        is_equal = 0;
        v13 = v9[21];
        if (v13)
        {
LABEL_11:
          v14 = 0;
          is_equal |= nw_endpoint_is_equal(v13, *(a1 + 32), 0);
          v15 = v9[22];
          if (v15)
          {
            goto LABEL_12;
          }

          goto LABEL_23;
        }
      }

      v14 = 1;
      v11 = 1;
      v15 = v9[22];
      if (v15)
      {
LABEL_12:
        is_equal |= nw_endpoint_is_equal(v15, *(a1 + 32), 0);
        v16 = v9[23];
        if (v16)
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }

LABEL_23:
      v11 = 1;
      v14 = 2;
      v16 = v9[23];
      if (v16)
      {
LABEL_13:
        is_equal |= nw_endpoint_is_equal(v16, *(a1 + 32), 0);
        v17 = v9[24];
        if (v17)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }

LABEL_24:
      v11 = 1;
      v14 = 3;
      v17 = v9[24];
      if (v17)
      {
LABEL_14:
        is_equal |= nw_endpoint_is_equal(v17, *(a1 + 32), 0);
        v18 = v9[25];
        if (v18)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }

LABEL_25:
      v11 = 1;
      v14 = 4;
      v18 = v9[25];
      if (v18)
      {
LABEL_15:
        is_equal |= nw_endpoint_is_equal(v18, *(a1 + 32), 0);
        v19 = v9[26];
        if (v19)
        {
          goto LABEL_16;
        }

        goto LABEL_27;
      }

LABEL_26:
      v11 = 1;
      v14 = 5;
      v19 = v9[26];
      if (v19)
      {
LABEL_16:
        is_equal |= nw_endpoint_is_equal(v19, *(a1 + 32), 0);
        v20 = v9[27];
        if (v20)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }

LABEL_27:
      v11 = 1;
      v14 = 6;
      v20 = v9[27];
      if (v20)
      {
LABEL_17:
        if (((nw_endpoint_is_equal(v20, *(a1 + 32), 0) | is_equal) & 1) == 0)
        {
          if (!v11)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v21 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v22 = *(a1 + 32);
            v28 = 136446466;
            v29 = "nw_replicate_metadata_add_endpoint_on_queue_block_invoke";
            v30 = 2112;
            v31 = v22;
            v23 = "%{public}s Will not add endpoint %@ for replication, no room for more endpoints";
LABEL_31:
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, v23, &v28, 0x16u);
            goto LABEL_36;
          }

          goto LABEL_33;
        }

        goto LABEL_29;
      }

LABEL_28:
      if ((is_equal & 1) == 0)
      {
        v14 = 7;
LABEL_33:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v28 = 136446466;
          v29 = "nw_replicate_metadata_add_endpoint_on_queue_block_invoke";
          v30 = 2112;
          v31 = v26;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Adding endpoint %@ for replication", &v28, 0x16u);
        }

        nw_protocol_replicate_add_secondary_endpoint(v9, *(a1 + 32), v14, *(a1 + 40), *(a1 + 48));
        goto LABEL_36;
      }

LABEL_29:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v24 = *(a1 + 32);
      v28 = 136446466;
      v29 = "nw_replicate_metadata_add_endpoint_on_queue_block_invoke";
      v30 = 2112;
      v31 = v24;
      v23 = "%{public}s Will not add endpoint %@ for replication, already covered";
      goto LABEL_31;
    }
  }

LABEL_36:
  if (*(a1 + 56) == 1)
  {
    os_unfair_lock_unlock((a2 + 16));
  }

  return 1;
}

void nw_replicate_metadata_remove_endpoint(nw_protocol_metadata *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (nw_protocol_metadata_is_replicate(a1))
  {
    if (a2)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __nw_replicate_metadata_remove_endpoint_block_invoke;
      v14[3] = &__block_descriptor_tmp_18_44336;
      v14[4] = a1;
      v14[5] = a2;
      nw_protocol_metadata_access_handle(a1, v14);
      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_replicate_metadata_remove_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null endpoint", buf, 12);
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &v16, &v15))
    {
      if (v16 == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = v16;
        if (!os_log_type_enabled(v6, v16))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v18 = "nw_replicate_metadata_remove_endpoint";
        v8 = "%{public}s called with null endpoint";
        goto LABEL_32;
      }

      if (v15 != 1)
      {
        v6 = __nwlog_obj();
        v7 = v16;
        if (!os_log_type_enabled(v6, v16))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v18 = "nw_replicate_metadata_remove_endpoint";
        v8 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v16;
      v13 = os_log_type_enabled(v6, v16);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_replicate_metadata_remove_endpoint";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v5)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_replicate_metadata_remove_endpoint";
        v8 = "%{public}s called with null endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_replicate_metadata_remove_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    v16 = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v5, &v16, &v15))
    {
      goto LABEL_33;
    }

    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_metadata_remove_endpoint";
      v8 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
      goto LABEL_32;
    }

    if (v15 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v16;
      if (!os_log_type_enabled(v6, v16))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_metadata_remove_endpoint";
      v8 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_32;
    }

    v10 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v16;
    v11 = os_log_type_enabled(v6, v16);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v18 = "nw_replicate_metadata_remove_endpoint";
      v8 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v18 = "nw_replicate_metadata_remove_endpoint";
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_33:
  if (v5)
  {
LABEL_34:
    free(v5);
  }
}

uint64_t __nw_replicate_metadata_remove_endpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  if ((*(a2 + 20) & 1) == 0 && *a2 && *(a2 + 8))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      os_retain(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      os_retain(v5);
    }

    is_inline = nw_context_is_inline(*(a2 + 8));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __nw_replicate_metadata_remove_endpoint_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_17_44337;
    v9 = *(a1 + 32);
    v10 = is_inline;
    if (is_inline)
    {
      __nw_replicate_metadata_remove_endpoint_block_invoke_2(v8);
    }

    else
    {
      nw_queue_context_async(*(a2 + 8), v8);
    }
  }

  os_unfair_lock_unlock((a2 + 16));
  return 1;
}

void __nw_replicate_metadata_remove_endpoint_block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if ((nw_protocol_metadata_is_replicate(v2) & 1) == 0)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
      v11 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
LABEL_36:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_37;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
      v11 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v14 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
      v11 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_36;
    }

    if (v14)
    {
      *buf = 136446466;
      *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  if (v3)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL46nw_replicate_metadata_remove_endpoint_on_queueP20nw_protocol_metadataP11nw_endpointb_block_invoke;
    v20 = &__block_descriptor_tmp_48_44348;
    v22 = (v4 & 1) == 0;
    v21 = v3;
    nw_protocol_metadata_access_handle(v2, buf);
    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null endpoint", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
    v11 = "%{public}s called with null endpoint";
    goto LABEL_36;
  }

  if (v17 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
    v11 = "%{public}s called with null endpoint, backtrace limit exceeded";
    goto LABEL_36;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v16 = os_log_type_enabled(v9, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
    v11 = "%{public}s called with null endpoint, no backtrace";
    goto LABEL_36;
  }

  if (v16)
  {
    *buf = 136446466;
    *&buf[4] = "nw_replicate_metadata_remove_endpoint_on_queue";
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
LABEL_38:
    free(v8);
  }

LABEL_4:
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    os_release(v5);
  }

  if (v6)
  {
    os_release(v6);
  }
}

uint64_t ___ZL46nw_replicate_metadata_remove_endpoint_on_queueP20nw_protocol_metadataP11nw_endpointb_block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = (a2 + 16);
  if (v4 == 1)
  {
    os_unfair_lock_lock(v5);
    if (*(a2 + 20))
    {
      goto LABEL_51;
    }
  }

  else
  {
    os_unfair_lock_assert_owner(v5);
    if (*(a2 + 20))
    {
      goto LABEL_51;
    }
  }

  if (!*a2)
  {
    goto LABEL_51;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_51;
  }

  v7 = v6;
  v8 = v7;
  if ((v7[19] & 8) == 0)
  {
    dispatch_assert_queue_V2(v7[1]);
  }

  v9 = *(*a2 + 40);
  v11 = v9 + 160;
  v10 = *(v9 + 160);
  if (v10)
  {
    is_equal = nw_endpoint_is_equal(v10, *(a1 + 32), 0);
    v13 = *(v9 + 168);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_46:
    v14 = 0;
    v15 = *(v9 + 176);
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  is_equal = 0;
  v13 = *(v9 + 168);
  if (!v13)
  {
    goto LABEL_46;
  }

LABEL_11:
  v14 = nw_endpoint_is_equal(v13, *(a1 + 32), 0);
  is_equal |= v14;
  v15 = *(v9 + 176);
  if (v15)
  {
LABEL_12:
    v16 = nw_endpoint_is_equal(v15, *(a1 + 32), 0);
    if (v16)
    {
      v14 = 2;
    }

    is_equal |= v16;
  }

LABEL_15:
  v17 = *(v9 + 184);
  if (v17)
  {
    v18 = nw_endpoint_is_equal(v17, *(a1 + 32), 0);
    if (v18)
    {
      v14 = 3;
    }

    is_equal |= v18;
  }

  v19 = *(v9 + 192);
  if (v19)
  {
    v20 = nw_endpoint_is_equal(v19, *(a1 + 32), 0);
    if (v20)
    {
      v14 = 4;
    }

    is_equal |= v20;
  }

  v21 = *(v9 + 200);
  if (v21)
  {
    v22 = nw_endpoint_is_equal(v21, *(a1 + 32), 0);
    if (v22)
    {
      v14 = 5;
    }

    is_equal |= v22;
  }

  v23 = *(v9 + 208);
  if (v23)
  {
    v24 = nw_endpoint_is_equal(v23, *(a1 + 32), 0);
    if (v24)
    {
      v14 = 6;
    }

    is_equal |= v24;
  }

  v25 = *(v9 + 216);
  if (v25)
  {
    v26 = nw_endpoint_is_equal(v25, *(a1 + 32), 0);
    if (v26)
    {
      v14 = 7;
    }

    if ((v26 | is_equal))
    {
      goto LABEL_35;
    }
  }

  else if (is_equal)
  {
LABEL_35:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v36 = 136446466;
      v37 = "nw_replicate_metadata_remove_endpoint_on_queue_block_invoke";
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s Removing endpoint %@ for replication", &v36, 0x16u);
    }

    v29 = *(v9 + 96 + 8 * v14);
    if (v29)
    {
      (*(*(v29 + 24) + 8))();
      *(v9 + 96 + 8 * v14) = 0;
      *(v9 + 416) = -1;
    }

    v30 = *(v11 + 8 * v14);
    if (v30)
    {
      v31 = *(v9 + 72);
      if (v31 && nw_endpoint_is_equal(v31, v30, 0))
      {
        *(v9 + 420) = -1;
      }

      v32 = *(v11 + 8 * v14);
      if (v32)
      {
        os_release(v32);
        *(v11 + 8 * v14) = 0;
      }
    }

    goto LABEL_51;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v34 = *(a1 + 32);
    v36 = 136446466;
    v37 = "nw_replicate_metadata_remove_endpoint_on_queue_block_invoke";
    v38 = 2112;
    v39 = v34;
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s Will not remove endpoint %@ for replication, not found", &v36, 0x16u);
  }

LABEL_51:
  if (*(a1 + 40) == 1)
  {
    os_unfair_lock_unlock((a2 + 16));
  }

  return 1;
}

void nw_replicate_metadata_set_endpoint_priority(nw_protocol_metadata *a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (nw_protocol_metadata_is_replicate(a1))
  {
    if (a2)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __nw_replicate_metadata_set_endpoint_priority_block_invoke;
      v16[3] = &__block_descriptor_tmp_20_44361;
      v16[4] = a1;
      v16[5] = a2;
      v17 = a3;
      nw_protocol_metadata_access_handle(a1, v16);
      return;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_replicate_metadata_set_endpoint_priority";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null endpoint", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v7, &v19, &v18))
    {
      if (v19 == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = v19;
        if (!os_log_type_enabled(v8, v19))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v21 = "nw_replicate_metadata_set_endpoint_priority";
        v10 = "%{public}s called with null endpoint";
        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v8 = __nwlog_obj();
        v9 = v19;
        if (!os_log_type_enabled(v8, v19))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v21 = "nw_replicate_metadata_set_endpoint_priority";
        v10 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v19;
      v15 = os_log_type_enabled(v8, v19);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_replicate_metadata_set_endpoint_priority";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v7)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_replicate_metadata_set_endpoint_priority";
        v10 = "%{public}s called with null endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_replicate_metadata_set_endpoint_priority";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &v19, &v18))
    {
      goto LABEL_33;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v19;
      if (!os_log_type_enabled(v8, v19))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v21 = "nw_replicate_metadata_set_endpoint_priority";
      v10 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = v19;
      if (!os_log_type_enabled(v8, v19))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v21 = "nw_replicate_metadata_set_endpoint_priority";
      v10 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_32;
    }

    v12 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = v19;
    v13 = os_log_type_enabled(v8, v19);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v21 = "nw_replicate_metadata_set_endpoint_priority";
      v10 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 136446466;
      v21 = "nw_replicate_metadata_set_endpoint_priority";
      v22 = 2082;
      v23 = v12;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

LABEL_33:
  if (v7)
  {
LABEL_34:
    free(v7);
  }
}

uint64_t __nw_replicate_metadata_set_endpoint_priority_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  if ((*(a2 + 20) & 1) == 0 && *a2 && *(a2 + 8))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      os_retain(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      os_retain(v5);
    }

    is_inline = nw_context_is_inline(*(a2 + 8));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __nw_replicate_metadata_set_endpoint_priority_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_19_44362;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = is_inline;
    if (is_inline)
    {
      __nw_replicate_metadata_set_endpoint_priority_block_invoke_2(v8);
    }

    else
    {
      nw_queue_context_async(*(a2 + 8), v8);
    }
  }

  os_unfair_lock_unlock((a2 + 16));
  return 1;
}

void __nw_replicate_metadata_set_endpoint_priority_block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  if ((nw_protocol_metadata_is_replicate(v2) & 1) == 0)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata)";
LABEL_36:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      goto LABEL_37;
    }

    if (v18 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
      v12 = "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), no backtrace";
      goto LABEL_36;
    }

    if (v15)
    {
      *buf = 136446466;
      *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_metadata_is_replicate(metadata), dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  if (v3)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL52nw_replicate_metadata_set_endpoint_priority_on_queueP20nw_protocol_metadataP11nw_endpointib_block_invoke;
    v21 = &__block_descriptor_tmp_49_44373;
    v24 = (v5 & 1) == 0;
    v22 = v3;
    v23 = v4;
    nw_protocol_metadata_access_handle(v2, buf);
    goto LABEL_4;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null endpoint", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
    v12 = "%{public}s called with null endpoint";
    goto LABEL_36;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
    v12 = "%{public}s called with null endpoint, backtrace limit exceeded";
    goto LABEL_36;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
    v12 = "%{public}s called with null endpoint, no backtrace";
    goto LABEL_36;
  }

  if (v17)
  {
    *buf = 136446466;
    *&buf[4] = "nw_replicate_metadata_set_endpoint_priority_on_queue";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
LABEL_38:
    free(v9);
  }

LABEL_4:
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6)
  {
    os_release(v6);
  }

  if (v7)
  {
    os_release(v7);
  }
}

uint64_t ___ZL52nw_replicate_metadata_set_endpoint_priority_on_queueP20nw_protocol_metadataP11nw_endpointib_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 44);
  v5 = (a2 + 16);
  if (v4 == 1)
  {
    os_unfair_lock_lock(v5);
    if (*(a2 + 20))
    {
      goto LABEL_36;
    }
  }

  else
  {
    os_unfair_lock_assert_owner(v5);
    if (*(a2 + 20))
    {
      goto LABEL_36;
    }
  }

  if (*a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      if ((v7[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v7[1]);
      }

      v9 = *(*a2 + 40);
      v10 = *(v9 + 160);
      if (v10 && nw_endpoint_is_equal(v10, *(a1 + 32), 0))
      {
        v11 = 0;
LABEL_33:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v26 = 136446722;
          v27 = "nw_replicate_metadata_set_endpoint_priority_on_queue_block_invoke";
          v28 = 2112;
          v29 = v20;
          v30 = 1024;
          v31 = v21;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s Setting priority of endpoint %@ to %d for replication", &v26, 0x1Cu);
        }

        *(v9 + 4 * v11 + 352) = *(a1 + 40);
        *(v9 + 428) |= 0x10u;
        *(v9 + 416) = -1;
        goto LABEL_36;
      }

      v12 = *(v9 + 168);
      if (v12 && (nw_endpoint_is_equal(v12, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 1;
        goto LABEL_33;
      }

      v13 = *(v9 + 176);
      if (v13 && (nw_endpoint_is_equal(v13, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 2;
        goto LABEL_33;
      }

      v14 = *(v9 + 184);
      if (v14 && (nw_endpoint_is_equal(v14, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 3;
        goto LABEL_33;
      }

      v15 = *(v9 + 192);
      if (v15 && (nw_endpoint_is_equal(v15, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 4;
        goto LABEL_33;
      }

      v16 = *(v9 + 200);
      if (v16 && (nw_endpoint_is_equal(v16, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 5;
        goto LABEL_33;
      }

      v17 = *(v9 + 208);
      if (v17 && (nw_endpoint_is_equal(v17, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 6;
        goto LABEL_33;
      }

      v18 = *(v9 + 216);
      if (v18 && (nw_endpoint_is_equal(v18, *(a1 + 32), 0) & 1) != 0)
      {
        v11 = 7;
        goto LABEL_33;
      }

      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        v26 = 136446722;
        v27 = "nw_replicate_metadata_set_endpoint_priority_on_queue_block_invoke";
        v28 = 2112;
        v29 = v24;
        v30 = 1024;
        v31 = v25;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Will not set priority of endpoint %@ to %d for replication, not found", &v26, 0x1Cu);
      }
    }
  }

LABEL_36:
  if (*(a1 + 44) == 1)
  {
    os_unfair_lock_unlock((a2 + 16));
  }

  return 1;
}

BOOL nw_endpoint_host_endpoint_matches_hostname(void *a1, uint64_t a2, unsigned __int16 a3, int a4, char a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    if (a2)
    {
      v11 = _nw_endpoint_host_endpoint_matches_hostname(v9, a2, a3, a4, a5);
      goto LABEL_4;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_host_endpoint_matches_hostname";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null hostname", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v14, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null hostname", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v26 != 1)
      {
        v15 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null hostname, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null hostname, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23)
      {
        *buf = 136446466;
        v29 = "nw_endpoint_host_endpoint_matches_hostname";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null hostname, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_host_endpoint_matches_hostname";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v14, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v26 != 1)
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v29 = "nw_endpoint_host_endpoint_matches_hostname";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 136446466;
        v29 = "nw_endpoint_host_endpoint_matches_hostname";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_4:

  return v11;
}

BOOL nw_protocol_http_retry_create::$_3::__invoke(nw_protocol_http_retry_create::$_3 *this, nw_protocol *a2, nw_protocol *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }

LABEL_35:
      if (v6)
      {
        free(v6);
      }

      return 0;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_retry", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if ((*(v3 + 572) & 8) == 0)
  {
    result = nw_http_retry_can_retry(*(this + 5), *(v3 + 488));
    if (!result)
    {
      return result;
    }

    nw_http_retry_reissue(v3, *(v3 + 472));
  }

  return 1;
}

BOOL nw_http_retry_can_retry(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 572) & 4) != 0 || (*(a1 + 572) & 1) != 0 || !*(a1 + 568) || !*(a1 + 472))
  {
    return 0;
  }

  if (!a2)
  {
    v3 = 0;
    goto LABEL_12;
  }

  v3 = a2;
  v4 = nw_http_metadata_copy_response(a2);
  if (!v4)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  status_code = _nw_http_response_get_status_code(v5);

  if (status_code != 425)
  {
    goto LABEL_46;
  }

  *v32 = 0;
  *&v32[8] = v32;
  *&v32[16] = 0x2000000000;
  LOBYTE(v33) = 0;
  v7 = nw_protocol_copy_info(*(a1 + 32));
  v8 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZL23nw_http_retry_can_retryP22nw_protocol_http_retryP20nw_protocol_metadata_block_invoke;
  aBlock[3] = &unk_1E6A33120;
  aBlock[4] = v32;
  if (v7)
  {
    _nw_array_apply(v7, aBlock);
    if ((*(*&v32[8] + 24) & 1) == 0)
    {
      os_release(v8);
LABEL_45:
      _Block_object_dispose(v32, 8);
LABEL_46:
      v5 = v5;
      v18 = _nw_http_response_get_status_code(v5);

      if (v18 == 421)
      {
        v19 = a1;
        while (1)
        {
          v19 = v19[4];
          if (!v19)
          {
            break;
          }

          v20 = v19[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v30 = v19[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v20 = v30;
          }

          if (nw_protocols_are_equal(v20, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            remote_endpoint = nw_protocol_get_remote_endpoint(a1);
            v22 = nw_protocol_get_remote_endpoint(v19);
            if (v22)
            {
              v23 = os_retain(v22);
            }

            else
            {
              v23 = 0;
            }

            while (1)
            {
              v10 = v23;
              v24 = nw_endpoint_copy_parent_endpoint(v23);
              if (!v24)
              {
                break;
              }

              v23 = v24;
              if (v10)
              {
                os_release(v10);
              }
            }

            if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
            {
              v28 = __nwlog_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 136447234;
                *&v32[4] = "nw_http_retry_can_retry";
                *&v32[12] = 2082;
                *&v32[14] = a1 + 114;
                *&v32[22] = 2080;
                v33 = " ";
                v34 = 2112;
                v35 = remote_endpoint;
                v36 = 2112;
                v37 = v10;
                _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scomparing remote endpoints: %@, %@", v32, 0x34u);
              }
            }

            if (remote_endpoint)
            {
              remote_endpoint = nw_endpoint_get_hostname(remote_endpoint);
            }

            if (!v10)
            {
              break;
            }

            hostname = nw_endpoint_get_hostname(v10);
            if (!remote_endpoint || !hostname || !strcmp(remote_endpoint, hostname))
            {
              os_release(v10);
              break;
            }

            if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
            {
              v29 = __nwlog_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 136446722;
                *&v32[4] = "nw_http_retry_can_retry";
                *&v32[12] = 2082;
                *&v32[14] = a1 + 114;
                *&v32[22] = 2080;
                v33 = " ";
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sresponse is 421, able to retry", v32, 0x20u);
              }
            }

            parameters = nw_protocol_get_parameters(a1);
            http_messaging_options = nw_parameters_find_http_messaging_options(parameters, a1);
            nw_http_messaging_options_set_no_coalescing(http_messaging_options);
            if (http_messaging_options)
            {
              os_release(http_messaging_options);
              v14 = 1;
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }
      }

LABEL_13:
      v9 = nw_http_metadata_copy_request(*(a1 + 472));
      v10 = v9;
      if (v3 || !v9)
      {
        v14 = 0;
        if (!v9)
        {
LABEL_32:
          if (!v5)
          {
            return v14 != 0;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v10 = v9;
        is_safe = _nw_http_request_is_safe();

        if (is_safe)
        {
          if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
          {
            v12 = __nwlog_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *v32 = 136446722;
              *&v32[4] = "nw_http_retry_can_retry";
              *&v32[12] = 2082;
              *&v32[14] = a1 + 114;
              *&v32[22] = 2080;
              v33 = " ";
              v13 = "%{public}s %{public}s%sidempotent request has not received any response, able to retry";
LABEL_73:
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, v13, v32, 0x20u);
              v14 = 1;
              goto LABEL_31;
            }
          }
        }

        else
        {
          v15 = *(a1 + 432);
          if (v15 == 35)
          {
            if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
            {
              v12 = __nwlog_obj();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 136446722;
                *&v32[4] = "nw_http_retry_can_retry";
                *&v32[12] = 2082;
                *&v32[14] = a1 + 114;
                *&v32[22] = 2080;
                v33 = " ";
                v13 = "%{public}s %{public}s%srequest received no response and EAGAIN, able to retry";
                goto LABEL_73;
              }
            }
          }

          else
          {
            if (v15 != 43)
            {
              v14 = 0;
              goto LABEL_31;
            }

            if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
            {
              v12 = __nwlog_obj();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 136446722;
                *&v32[4] = "nw_http_retry_can_retry";
                *&v32[12] = 2082;
                *&v32[14] = a1 + 114;
                *&v32[22] = 2080;
                v33 = " ";
                v13 = "%{public}s %{public}s%srequest received no response, should retry using HTTP/1.1";
                goto LABEL_73;
              }
            }
          }
        }

LABEL_30:
        v14 = 1;
      }

LABEL_31:
      os_release(v10);
      goto LABEL_32;
    }
  }

  else if (*(*&v32[8] + 24) != 1)
  {
    goto LABEL_45;
  }

  if ((*(a1 + 198) & 1) == 0)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v39 = "nw_http_retry_can_retry";
      v40 = 2082;
      v41 = a1 + 114;
      v42 = 2080;
      v43 = " ";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%srequest received 425 response, able to retry", buf, 0x20u);
    }
  }

  *(a1 + 468) |= 0x100u;
  if (v8)
  {
    os_release(v8);
  }

  _Block_object_dispose(v32, 8);
  v14 = 1;
LABEL_33:
  os_release(v5);
  return v14 != 0;
}