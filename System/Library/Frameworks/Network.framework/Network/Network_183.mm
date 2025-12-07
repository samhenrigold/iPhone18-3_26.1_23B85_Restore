void nw_authentication_challenge_set_http_message(void *a1, const void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[2];
    if (v5)
    {
      CFRelease(v5);
      v4[2] = 0;
    }

    if (a2)
    {
      v4[2] = CFRetain(a2);
    }

    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_authentication_challenge_set_http_message";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null challenge", buf, 12);

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
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null challenge", buf, 0xCu);
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
          v17 = "nw_authentication_challenge_set_http_message";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_authentication_challenge_set_http_message";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

LABEL_6:
}

CFTypeRef nw_authentication_challenge_copy_http_message(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_authentication_challenge_copy_http_message";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v6, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_authentication_challenge_copy_http_message";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 136446210;
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_authentication_challenge_copy_http_message";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  v3 = v1[2];
  if (!v3)
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v4 = CFRetain(v3);
LABEL_23:

  return v4;
}

void nw_authentication_challenge_set_protection_space(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = _nw_array_create();
    v6 = v3[3];
    v3[3] = v5;

    v3[4] = 0;
    v7 = v3[3];
    if (v7 && v4)
    {
      _nw_array_append(v7, v4);
    }

    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_authentication_challenge_set_protection_space";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null challenge", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null challenge", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_authentication_challenge_set_protection_space";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_challenge_set_protection_space";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

uint64_t nw_authentication_challenge_copy_protection_space(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[3];
    if (v3)
    {
      v4 = _nw_array_get_object_at_index(v3, v2[4]);
      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_authentication_challenge_copy_protection_space";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null challenge->protection_space_array", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null challenge->protection_space_array", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null challenge->protection_space_array, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null challenge->protection_space_array, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_authentication_challenge_copy_protection_space";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null challenge->protection_space_array, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_authentication_challenge_copy_protection_space";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null challenge", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v22 = "nw_authentication_challenge_copy_protection_space";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v14)
      {
        *buf = 136446466;
        v22 = "nw_authentication_challenge_copy_protection_space";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_4:

  return v4;
}

void nw_authentication_challenge_set_attempt_count(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[10] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_challenge_set_attempt_count";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null challenge", buf, 12);

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
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null challenge", buf, 0xCu);
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
          v15 = "nw_authentication_challenge_set_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_set_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_authentication_challenge_get_attempt_count(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_challenge_get_attempt_count";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null challenge", buf, 12);

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
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null challenge", buf, 0xCu);
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
          v15 = "nw_authentication_challenge_get_attempt_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_challenge_get_attempt_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_authentication_challenge_set_proposed_credential(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_challenge_set_proposed_credential";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null challenge", buf, 12);

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
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_authentication_challenge_set_proposed_credential";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

id nw_authentication_challenge_get_proposed_credential(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_challenge_get_proposed_credential";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null challenge", buf, 12);

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
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_authentication_challenge_get_proposed_credential";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_get_proposed_credential";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void nw_authentication_challenge_set_protection_space_array(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 3, a2);
    v3[4] = 0;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_challenge_set_protection_space_array";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null challenge", buf, 12);

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
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null challenge", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_authentication_challenge_set_protection_space_array";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_challenge_set_protection_space_array";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_authentication_challenge_try_next_protection_space(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_try_next_protection_space";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null challenge", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v14 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v15)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_try_next_protection_space";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v3 = v1[3];
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_try_next_protection_space";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null challenge->protection_space_array", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null challenge->protection_space_array", buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_43;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null challenge->protection_space_array, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_try_next_protection_space";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, no backtrace", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_try_next_protection_space";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_28:

    free(backtrace_string);
    goto LABEL_41;
  }

  v4 = v2[4];
  if (v4 + 1 >= _nw_array_get_count(v3))
  {
LABEL_43:
    v6 = 0;
    goto LABEL_44;
  }

  v5 = v2[3];
  if (v5 && (_nw_array_get_object_at_index(v5, v2[4] + 1), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ++v2[4];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_44:
  return v6;
}

_DWORD *nw_authentication_credential_create(int a1)
{
  v2 = [NWConcrete_nw_authentication_credential alloc];

  return [(NWConcrete_nw_authentication_credential *)v2 initWithType:a1];
}

void nw_authentication_credential_set_persistence(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[3] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_set_persistence";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null credential", buf, 12);

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
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_set_persistence";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_set_persistence";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_authentication_credential_set_username(void *a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_authentication_credential_set_username";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null credential", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null credential", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_authentication_credential_set_username";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null credential, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_authentication_credential_set_username";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_7;
  }

  v5 = v3[2];
  if (v5)
  {
    free(v5);
    v4[2] = 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = strdup(a2);
  if (v6)
  {
LABEL_6:
    v4[2] = v6;
LABEL_7:

    return;
  }

  v11 = __nwlog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  *buf = 136446210;
  v21 = "strict_strdup";
  v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strdup() failed", buf, 12);

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    v6 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void nw_authentication_credential_set_password(void *a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_authentication_credential_set_password";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null credential", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v12, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null credential", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v25 = "nw_authentication_credential_set_password";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null credential, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v25 = "nw_authentication_credential_set_password";
          _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_8;
  }

  v5 = v3;
  v6 = v5;
  v7 = *(v5 + 3);
  if (v7)
  {
    v8 = strlen(*(v5 + 3));
    bzero(v7, v8);
    v9 = v6[3];
    if (v9)
    {
      free(v9);
      v6[3] = 0;
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = strdup(a2);
  if (v10)
  {
LABEL_7:
    v6[3] = v10;
LABEL_8:

    return;
  }

  v15 = __nwlog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  *buf = 136446210;
  v25 = "strict_strdup";
  v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strdup() failed", buf, 12);

  if (!__nwlog_should_abort(v17))
  {
    free(v17);
    v10 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void nw_authentication_credential_add_valid_authentication_type(void *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[5];
    if (!v5)
    {
      v6 = xpc_array_create(0, 0);
      v7 = v4[5];
      v4[5] = v6;

      v5 = v4[5];
    }

    xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_authentication_credential_add_valid_authentication_type";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null credential", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_authentication_credential_add_valid_authentication_type";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_authentication_credential_add_valid_authentication_type";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

uint64_t __nw_authentication_credential_add_to_tlv_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(*(a1 + 32) + 8) + 24))++ = xpc_uint64_get_value(v4);

  return 1;
}

BOOL nw_authentication_credential_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!(v3 | v4))
  {
    v5 = 1;
    goto LABEL_29;
  }

  v5 = 0;
  if (v3 && v4)
  {
    v6 = *(v3 + 8);
    if (v6 != *(v4 + 8) || *(v3 + 12) != *(v4 + 12))
    {
      goto LABEL_28;
    }

    if (v6 == 1)
    {
      v7 = *(v3 + 16);
      v8 = *(v4 + 16);
      if (v7 != v8 && v7 && v8)
      {
        v9 = v4;
        v10 = strcmp(*(v3 + 16), v8);
        v4 = v9;
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else if (v7 != v8)
      {
        goto LABEL_28;
      }

      v11 = *(v3 + 24);
      v12 = *(v4 + 24);
      if (v11 != v12 && v11 && v12)
      {
        v13 = v4;
        v14 = strcmp(*(v3 + 24), v12);
        v4 = v13;
        if (v14)
        {
          goto LABEL_28;
        }
      }

      else if (v11 != v12)
      {
        goto LABEL_28;
      }
    }

    v15 = *(v4 + 32);
    if (*(v3 + 32))
    {
      if (v15)
      {
        goto LABEL_22;
      }
    }

    else if (!v15)
    {
LABEL_22:
      v16 = v4;
      v17 = *(v4 + 40);
      v18 = *(v3 + 40);
      v19 = v17;
      v20 = v19;
      v5 = v18 == v19;
      if (v18 != v19 && v18 && v19)
      {
        v5 = xpc_equal(v18, v19);
      }

      v4 = v16;
      goto LABEL_29;
    }

LABEL_28:
    v5 = 0;
  }

LABEL_29:

  return v5;
}

void nw_authentication_credential_iterate_valid_authentication_types(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_authentication_credential_iterate_valid_authentication_types";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null credential", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_authentication_credential_iterate_valid_authentication_types";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_authentication_credential_iterate_valid_authentication_types";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[5];
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_authentication_credential_iterate_valid_authentication_types_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(v6, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_authentication_credential_iterate_valid_authentication_types";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null iterator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null iterator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null iterator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_authentication_credential_iterate_valid_authentication_types";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null iterator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_authentication_credential_iterate_valid_authentication_types";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t __nw_authentication_credential_iterate_valid_authentication_types_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  xpc_uint64_get_value(v4);
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

uint64_t nw_authentication_credential_get_username(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_get_username";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null credential", buf, 12);

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
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_username";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_username";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_authentication_credential_get_password(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[3];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_get_password";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null credential", buf, 12);

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
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_password";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_password";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_authentication_credential_set_identity(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 4, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_credential_set_identity";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null credential", buf, 12);

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
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null credential", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_authentication_credential_set_identity";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_credential_set_identity";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_authentication_credential_get_persistence(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[3];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_credential_get_persistence";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null credential", buf, 12);

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
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null credential", buf, 0xCu);
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
          v15 = "nw_authentication_credential_get_persistence";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null credential, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_credential_get_persistence";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null credential, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t __nw_proxy_options_authbroker_is_available_block_invoke()
{
  sp = 0;
  result = bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.cfnetwork.AuthBrokerAgent", &sp);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = sp == 0;
  }

  if (!v1)
  {
    nw_proxy_options_authbroker_is_available::available = 1;
    return mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
  }

  return result;
}

void *nw_proxy_options_copy_authentication_challenge_handler(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__38357;
  v9 = __Block_byref_object_dispose__38358;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_proxy_options_copy_authentication_challenge_handler_block_invoke;
  v4[3] = &unk_1E6A3A858;
  v4[4] = &v5;
  nw_protocol_options_access_handle(v1, v4);
  v2 = _Block_copy(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_182680D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__38357(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __nw_proxy_options_copy_authentication_challenge_handler_block_invoke(uint64_t a1, const void **a2)
{
  v3 = _Block_copy(*a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void nw_proxy_options_set_http_proxy_authorization_header(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_proxy_options_set_http_proxy_authorization_header_block_invoke;
    v13[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v13[4] = a2;
    nw_protocol_options_access_handle(v3, v13);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_proxy_options_set_http_proxy_authorization_header";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_proxy_options_set_http_proxy_authorization_header";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_proxy_options_set_http_proxy_authorization_header";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t __nw_proxy_options_set_http_proxy_authorization_header_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4)
  {
    free(v4);
    *(a2 + 8) = 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 1;
  }

  v6 = strdup(v5);
  if (v6)
  {
LABEL_5:
    *(a2 + 8) = v6;
    return 1;
  }

  v8 = __nwlog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v12 = 136446210;
  v13 = "strict_strdup";
  v11 = 12;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strdup() failed", &v12, v11);

  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *nw_proxy_copy_shoes_definition()
{
  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  result = nw_protocol_shoes_get_definition(void)::proxy_definition;
  if (nw_protocol_shoes_get_definition(void)::proxy_definition)
  {

    return os_retain(result);
  }

  return result;
}

void *nw_protocol_http_connect_create()
{
  v14 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v9 = "nw_protocol_http_connect_create";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v0 = malloc_type_calloc(1uLL, 0x178uLL, 0x68F4822AuLL);
  if (v0)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v1 = gLogObj;
  v2 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v9 = "nw_protocol_http_connect_create";
  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v10 = 2048;
  v11 = 1;
  v12 = 2048;
  v13 = 376;
  v7 = 32;
  v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v7);
  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
    v0 = 0;
LABEL_8:
    v0[5] = &g_http_connect_protocol_identifier;
    v0[6] = &g_http_connect_protocol_callbacks;
    v0[8] = v0;
    return v0 + 3;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_connect_get_remote_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      result = handle[19];
      if (!result)
      {
        return handle[17];
      }

      return result;
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_remote_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_remote_endpoint";
        v7 = "%{public}s called with null http_connect";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_remote_endpoint";
        v7 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_remote_endpoint";
        v7 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http_connect_get_remote_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_http_connect_get_remote_endpoint";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_33;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_protocol_http_connect_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http_connect_get_remote_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_22:
      _os_log_impl(&dword_181A37000, v5, v6, v11, buf, 0x16u);
    }

LABEL_23:
    free(backtrace_string);
    goto LABEL_33;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_protocol_http_connect_get_remote_endpoint";
    v7 = "%{public}s called with null protocol";
LABEL_32:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_33:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

nw_protocol *nw_protocol_http_connect_get_local_endpoint(nw_protocol *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_connect_get_local_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_39;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v18 = "nw_protocol_http_connect_get_local_endpoint";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v18 = "nw_protocol_http_connect_get_local_endpoint";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "nw_protocol_http_connect_get_local_endpoint";
        v19 = 2082;
        v20 = backtrace_string;
        v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_28:
        _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
      }

LABEL_29:
      free(backtrace_string);
      goto LABEL_39;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http_connect_get_local_endpoint";
    v9 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
LABEL_39:
    if (v6)
    {
      free(v6);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_connect_get_local_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connect_get_local_endpoint";
      v9 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connect_get_local_endpoint";
      v9 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_protocol_http_connect_get_local_endpoint";
        v19 = 2082;
        v20 = backtrace_string;
        v13 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (!v14)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http_connect_get_local_endpoint";
    v9 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_38;
  }

  if (handle[13])
  {
    return handle[15];
  }

  result = a1->default_input_handler;
  if (result)
  {
    callbacks = result->callbacks;
    if (callbacks)
    {
      get_local_endpoint = callbacks->get_local_endpoint;
      if (get_local_endpoint)
      {

        return get_local_endpoint();
      }
    }

    return 0;
  }

  return result;
}

nw_protocol *nw_protocol_http_connect_get_path(nw_protocol *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connect_get_path";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_path";
      v10 = "%{public}s called with null protocol";
    }

    else
    {
      if (v16 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v19 = "nw_protocol_http_connect_get_path";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_http_connect_get_path";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_40;
      }

      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_path";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connect_get_path";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_path";
      v10 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_path";
      v10 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_path";
      v10 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_38;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_connect_get_path";
      v20 = 2082;
      v21 = v14;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v14);
LABEL_39:
    if (!v7)
    {
      return 0;
    }

LABEL_40:
    free(v7);
    return 0;
  }

  result = handle[13];
  if (result)
  {
    return result;
  }

  result = a1->default_input_handler;
  if (!result)
  {
    return result;
  }

  callbacks = result->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_path = callbacks->get_path;
  if (!get_path)
  {
    return 0;
  }

  return get_path();
}

nw_protocol *nw_protocol_http_connect_get_parameters(nw_protocol *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connect_get_parameters";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_parameters";
      v10 = "%{public}s called with null protocol";
    }

    else
    {
      if (v16 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v19 = "nw_protocol_http_connect_get_parameters";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_http_connect_get_parameters";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_40;
      }

      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_parameters";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connect_get_parameters";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_parameters";
      v10 = "%{public}s called with null http_connect";
      goto LABEL_38;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_parameters";
      v10 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_38;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connect_get_parameters";
      v10 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_38;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_connect_get_parameters";
      v20 = 2082;
      v21 = v14;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v14);
LABEL_39:
    if (!v7)
    {
      return 0;
    }

LABEL_40:
    free(v7);
    return 0;
  }

  result = handle[14];
  if (result)
  {
    return result;
  }

  result = a1->default_input_handler;
  if (!result)
  {
    return result;
  }

  callbacks = result->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_parameters = callbacks->get_parameters;
  if (!get_parameters)
  {
    return 0;
  }

  return get_parameters();
}

id nw_protocol_http_connect_copy_info(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http_connect_copy_info";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http_connect_copy_info";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v24 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http_connect_copy_info";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_60;
      }

      if (v24)
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_connect_copy_info";
        v31 = 2082;
        v32 = backtrace_string;
        v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_50:
        _os_log_impl(&dword_181A37000, v19, v20, v25, buf, 0x16u);
      }

LABEL_51:
      free(backtrace_string);
      goto LABEL_61;
    }

    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v30 = "nw_protocol_http_connect_copy_info";
    v21 = "%{public}s called with null protocol";
LABEL_60:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
LABEL_61:
    if (v18)
    {
      free(v18);
    }

    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http_connect_copy_info";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_connect_copy_info";
      v21 = "%{public}s called with null http_connect";
      goto LABEL_60;
    }

    if (v27 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_connect_copy_info";
      v21 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v26 = os_log_type_enabled(v19, type);
    if (backtrace_string)
    {
      if (v26)
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_connect_copy_info";
        v31 = 2082;
        v32 = backtrace_string;
        v25 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v26)
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v30 = "nw_protocol_http_connect_copy_info";
    v21 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_60;
  }

  if (a2 == 254 && *v2 && v2[1] && v2[2])
  {
    v3 = *(a1 + 32);
    if (!v3 || (v4 = *(v3 + 24)) == 0 || (v5 = *(v4 + 224)) == 0 || (v6 = v5()) == 0)
    {
      v6 = _nw_array_create();
    }

    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
    {
      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
    }

    v7 = nw_proxy_copy_http_connect_definition::proxy_definition;
    v8 = nw_delta_nanos(*v2, v2[1]);
    if (v8 <= 0xF423FFFFFFFFFLL)
    {
      v9 = (v8 / 0xF4240);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = nw_delta_nanos(*v2, v2[2]);
    if (v10 <= 0xF423FFFFFFFFFLL)
    {
      v11 = (v10 / 0xF4240);
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    v12 = nw_protocol_establishment_report_create(v7, v9, v11);
    if (v7)
    {
      os_release(v7);
    }

    if (v6 && v12)
    {
      _nw_array_append(v6, v12);
    }

    else if (!v12)
    {
      return v6;
    }

    os_release(v12);
    return v6;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 24);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 224);
  if (!v15)
  {
    return 0;
  }

  return v15();
}

void nw_protocol_http_connect_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_http_connect_error";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null protocol";
LABEL_86:
      v41 = v20;
      v42 = v21;
      v43 = 12;
      goto LABEL_87;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v30 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (!v30)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_86;
    }

    if (!v30)
    {
      goto LABEL_59;
    }

    *buf = 136446466;
    v47 = "nw_protocol_http_connect_error";
    v48 = 2082;
    v49 = backtrace_string;
    v31 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_58:
    _os_log_impl(&dword_181A37000, v20, v21, v31, buf, 0x16u);
    goto LABEL_59;
  }

  handle = a1->handle;
  if (!handle)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_http_connect_error";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null http_connect";
      goto LABEL_86;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v32 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (!v32)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_86;
    }

    if (!v32)
    {
      goto LABEL_59;
    }

    *buf = 136446466;
    v47 = "nw_protocol_http_connect_error";
    v48 = 2082;
    v49 = backtrace_string;
    v31 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
    goto LABEL_58;
  }

  if (!a2)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_http_connect_error";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null other_protocol";
      goto LABEL_86;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_86;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (!v33)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v47 = "nw_protocol_http_connect_error";
      v18 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_86;
    }

    if (v33)
    {
      *buf = 136446466;
      v47 = "nw_protocol_http_connect_error";
      v48 = 2082;
      v49 = backtrace_string;
      v31 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

LABEL_59:
    free(backtrace_string);
    if (!v12)
    {
      return;
    }

LABEL_89:
    free(v12);
    return;
  }

  if (a3)
  {
    if (handle[70] == 1 && a1->output_handler == a2)
    {
      return;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        error = callbacks->error;
        if (error)
        {

          error();
          return;
        }
      }
    }

    v8 = __nwlog_obj();
    v9 = a1->default_input_handler;
    v10 = "invalid";
    if (v9)
    {
      identifier = v9->identifier;
      if (identifier)
      {
        v10 = identifier;
      }
    }

    *buf = 136446466;
    v47 = "nw_protocol_http_connect_error";
    v48 = 2082;
    v49 = v10;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s protocol %{public}s has invalid error callback", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_88;
      }

      v15 = a1->default_input_handler;
      v16 = "invalid";
      if (v15)
      {
        v17 = v15->identifier;
        if (v17)
        {
          v16 = v17;
        }
      }

      *buf = 136446466;
      v47 = "nw_protocol_http_connect_error";
      v48 = 2082;
      v49 = v16;
      v18 = "%{public}s protocol %{public}s has invalid error callback";
    }

    else if (v44 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v25 = os_log_type_enabled(v13, type);
      if (v24)
      {
        if (v25)
        {
          v26 = a1->default_input_handler;
          v27 = "invalid";
          if (v26)
          {
            v28 = v26->identifier;
            if (v28)
            {
              v27 = v28;
            }
          }

          *buf = 136446722;
          v47 = "nw_protocol_http_connect_error";
          v48 = 2082;
          v49 = v27;
          v50 = 2082;
          v51 = v24;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v24);
LABEL_88:
        if (!v12)
        {
          return;
        }

        goto LABEL_89;
      }

      if (!v25)
      {
        goto LABEL_88;
      }

      v38 = a1->default_input_handler;
      v39 = "invalid";
      if (v38)
      {
        v40 = v38->identifier;
        if (v40)
        {
          v39 = v40;
        }
      }

      *buf = 136446466;
      v47 = "nw_protocol_http_connect_error";
      v48 = 2082;
      v49 = v39;
      v18 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_88;
      }

      v34 = a1->default_input_handler;
      v35 = "invalid";
      if (v34)
      {
        v36 = v34->identifier;
        if (v36)
        {
          v35 = v36;
        }
      }

      *buf = 136446466;
      v47 = "nw_protocol_http_connect_error";
      v48 = 2082;
      v49 = v35;
      v18 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
    }

    v41 = v13;
    v42 = v14;
    v43 = 22;
LABEL_87:
    _os_log_impl(&dword_181A37000, v41, v42, v18, buf, v43);
    goto LABEL_88;
  }

  if ((handle[92] & 0x80) == 0 && gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v47 = "nw_protocol_http_connect_error";
      v48 = 2082;
      v49 = (handle + 71);
      v50 = 2080;
      v51 = " ";
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%ssuppressing error 0", buf, 0x20u);
    }
  }
}

void nw_protocol_http_connect_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v39 = a2;
    v40 = __nwlog_obj();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
    a2 = v39;
    if (v41)
    {
      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a2 = v39;
    }
  }

  if (!a1)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_protocol_http_connect_disconnected";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (!__nwlog_fault(v43, &type, &v87))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null protocol";
    }

    else if (v87 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v55 = os_log_type_enabled(v44, type);
      if (backtrace_string)
      {
        if (v55)
        {
          *buf = 136446466;
          v90 = "nw_protocol_http_connect_disconnected";
          v91 = 2082;
          v92 = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_132:
        if (!v43)
        {
          return;
        }

        goto LABEL_133;
      }

      if (!v55)
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_131;
  }

  handle = a1->handle;
  if (!handle)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_protocol_http_connect_disconnected";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (!__nwlog_fault(v43, &type, &v87))
    {
      goto LABEL_132;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v87 != 1)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_132;
        }

        *buf = 136446210;
        v90 = "nw_protocol_http_connect_disconnected";
        v46 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_131;
      }

      v56 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v57 = os_log_type_enabled(v44, type);
      if (!v56)
      {
        if (!v57)
        {
          goto LABEL_132;
        }

        *buf = 136446210;
        v90 = "nw_protocol_http_connect_disconnected";
        v46 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_131;
      }

      if (v57)
      {
        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v56;
        v58 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_84:
        _os_log_impl(&dword_181A37000, v44, v45, v58, buf, 0x16u);
      }

LABEL_85:
      free(v56);
      if (!v43)
      {
        return;
      }

LABEL_133:
      v78 = v43;
LABEL_142:
      free(v78);
      return;
    }

    v44 = __nwlog_obj();
    v45 = type;
    if (!os_log_type_enabled(v44, type))
    {
      goto LABEL_132;
    }

    *buf = 136446210;
    v90 = "nw_protocol_http_connect_disconnected";
    v46 = "%{public}s called with null http_connect";
LABEL_131:
    _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
    goto LABEL_132;
  }

  if (!a2)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_protocol_http_connect_disconnected";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (!__nwlog_fault(v43, &type, &v87))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null other_protocol";
      goto LABEL_131;
    }

    if (v87 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_131;
    }

    v56 = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type;
    v59 = os_log_type_enabled(v44, type);
    if (!v56)
    {
      if (!v59)
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v90 = "nw_protocol_http_connect_disconnected";
      v46 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_131;
    }

    if (v59)
    {
      *buf = 136446466;
      v90 = "nw_protocol_http_connect_disconnected";
      v91 = 2082;
      v92 = v56;
      v58 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (*(handle + 70) == 1)
  {
    if (a1->output_handler != a2)
    {
      default_input_handler = a1->default_input_handler;
      if (!default_input_handler || (callbacks = default_input_handler->callbacks) == 0 || (disconnected = callbacks->disconnected) == 0)
      {
        v7 = __nwlog_obj();
        v8 = a1->default_input_handler;
        v9 = "invalid";
        if (v8)
        {
          identifier = v8->identifier;
          if (identifier)
          {
            v9 = identifier;
          }
        }

        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v9;
        v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
        type = OS_LOG_TYPE_ERROR;
        v87 = 0;
        if (!__nwlog_fault(v11, &type, &v87))
        {
          goto LABEL_140;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_140;
          }

          v14 = a1->default_input_handler;
          v15 = "invalid";
          if (v14)
          {
            v16 = v14->identifier;
            if (v16)
            {
              v15 = v16;
            }
          }

LABEL_19:
          *buf = 136446466;
          v90 = "nw_protocol_http_connect_disconnected";
          v91 = 2082;
          v92 = v15;
          v17 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_139:
          _os_log_impl(&dword_181A37000, v12, v13, v17, buf, 0x16u);
          goto LABEL_140;
        }

        if (v87 == 1)
        {
          v60 = __nw_create_backtrace_string();
          v12 = __nwlog_obj();
          v13 = type;
          v61 = os_log_type_enabled(v12, type);
          if (v60)
          {
            if (v61)
            {
              v62 = a1->default_input_handler;
              v63 = "invalid";
              if (v62)
              {
                v64 = v62->identifier;
                if (v64)
                {
                  v63 = v64;
                }
              }

              *buf = 136446722;
              v90 = "nw_protocol_http_connect_disconnected";
              v91 = 2082;
              v92 = v63;
              v93 = 2082;
              v94 = v60;
              _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v60);
            if (v11)
            {
              goto LABEL_141;
            }

            return;
          }

          if (v61)
          {
            v79 = a1->default_input_handler;
            v76 = "invalid";
            if (v79)
            {
              v80 = v79->identifier;
              if (v80)
              {
                v76 = v80;
              }
            }

LABEL_138:
            *buf = 136446466;
            v90 = "nw_protocol_http_connect_disconnected";
            v91 = 2082;
            v92 = v76;
            v17 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
            goto LABEL_139;
          }

          goto LABEL_140;
        }

        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_140;
        }

        v68 = a1->default_input_handler;
        v66 = "invalid";
        if (v68)
        {
          v69 = v68->identifier;
          if (v69)
          {
            v66 = v69;
          }
        }

LABEL_100:
        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v66;
        v17 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_139;
      }

LABEL_23:
      disconnected();
      return;
    }

    handle[184] = handle[184] & 0xFFC7 | 0x20;
    if (nw_http_connect_restart_after_disconnect(handle))
    {
      return;
    }

    v20 = a1->default_input_handler;
    if (v20)
    {
      v21 = v20->callbacks;
      if (v21)
      {
        disconnected = v21->disconnected;
        if (disconnected)
        {
          goto LABEL_23;
        }
      }
    }

    v22 = __nwlog_obj();
    v23 = a1->default_input_handler;
    v24 = "invalid";
    if (v23)
    {
      v25 = v23->identifier;
      if (v25)
      {
        v24 = v25;
      }
    }

    *buf = 136446466;
    v90 = "nw_protocol_http_connect_disconnected";
    v91 = 2082;
    v92 = v24;
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
    if (__nwlog_fault(v26, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_154;
        }

        v29 = a1->default_input_handler;
        v30 = "invalid";
        if (v29)
        {
          v31 = v29->identifier;
          if (v31)
          {
            v30 = v31;
          }
        }

        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v30;
        v32 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_153:
        _os_log_impl(&dword_181A37000, v27, v28, v32, buf, 0x16u);
        goto LABEL_154;
      }

      if (v87 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_154;
        }

        v81 = a1->default_input_handler;
        v82 = "invalid";
        if (v81)
        {
          v83 = v81->identifier;
          if (v83)
          {
            v82 = v83;
          }
        }

        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v82;
        v32 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_153;
      }

      v70 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v71 = os_log_type_enabled(v27, type);
      if (!v70)
      {
        if (!v71)
        {
          goto LABEL_154;
        }

        v84 = a1->default_input_handler;
        v85 = "invalid";
        if (v84)
        {
          v86 = v84->identifier;
          if (v86)
          {
            v85 = v86;
          }
        }

        *buf = 136446466;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v85;
        v32 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
        goto LABEL_153;
      }

      if (v71)
      {
        v72 = a1->default_input_handler;
        v73 = "invalid";
        if (v72)
        {
          v74 = v72->identifier;
          if (v74)
          {
            v73 = v74;
          }
        }

        *buf = 136446722;
        v90 = "nw_protocol_http_connect_disconnected";
        v91 = 2082;
        v92 = v73;
        v93 = 2082;
        v94 = v70;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v70);
    }

LABEL_154:
    if (v26)
    {
      v78 = v26;
      goto LABEL_142;
    }

    return;
  }

  v18 = a1->default_input_handler;
  if (v18)
  {
    v19 = v18->callbacks;
    if (v19)
    {
      disconnected = v19->disconnected;
      if (disconnected)
      {
        goto LABEL_23;
      }
    }
  }

  v33 = __nwlog_obj();
  v34 = a1->default_input_handler;
  v35 = "invalid";
  if (v34)
  {
    v36 = v34->identifier;
    if (v36)
    {
      v35 = v36;
    }
  }

  *buf = 136446466;
  v90 = "nw_protocol_http_connect_disconnected";
  v91 = 2082;
  v92 = v35;
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v87 = 0;
  if (!__nwlog_fault(v11, &type, &v87))
  {
    goto LABEL_140;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_140;
    }

    v37 = a1->default_input_handler;
    v15 = "invalid";
    if (v37)
    {
      v38 = v37->identifier;
      if (v38)
      {
        v15 = v38;
      }
    }

    goto LABEL_19;
  }

  if (v87 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_140;
    }

    v65 = a1->default_input_handler;
    v66 = "invalid";
    if (v65)
    {
      v67 = v65->identifier;
      if (v67)
      {
        v66 = v67;
      }
    }

    goto LABEL_100;
  }

  v49 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v50 = os_log_type_enabled(v12, type);
  if (!v49)
  {
    if (!v50)
    {
      goto LABEL_140;
    }

    v75 = a1->default_input_handler;
    v76 = "invalid";
    if (v75)
    {
      v77 = v75->identifier;
      if (v77)
      {
        v76 = v77;
      }
    }

    goto LABEL_138;
  }

  if (v50)
  {
    v51 = a1->default_input_handler;
    v52 = "invalid";
    if (v51)
    {
      v53 = v51->identifier;
      if (v53)
      {
        v52 = v53;
      }
    }

    *buf = 136446722;
    v90 = "nw_protocol_http_connect_disconnected";
    v91 = 2082;
    v92 = v52;
    v93 = 2082;
    v94 = v49;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v49);
LABEL_140:
  if (v11)
  {
LABEL_141:
    v78 = v11;
    goto LABEL_142;
  }
}

uint64_t nw_http_connect_restart_after_disconnect(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_connect_restart_after_disconnect";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v24 = "nw_http_connect_restart_after_disconnect";
      v12 = "%{public}s called with null http_connect";
LABEL_52:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      goto LABEL_53;
    }

    if (v21 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v16)
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v24 = "nw_http_connect_restart_after_disconnect";
    v25 = 2082;
    v26 = backtrace_string;
    v17 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_38:
    _os_log_impl(&dword_181A37000, v10, v11, v17, buf, 0x16u);
    goto LABEL_39;
  }

  if (!*(a1 + 168))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_http_connect_restart_after_disconnect";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null http_connect->context", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v24 = "nw_http_connect_restart_after_disconnect";
      v12 = "%{public}s called with null http_connect->context";
      goto LABEL_52;
    }

    if (v21 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect->context, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect->context, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v18)
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v24 = "nw_http_connect_restart_after_disconnect";
    v25 = 2082;
    v26 = backtrace_string;
    v17 = "%{public}s called with null http_connect->context, dumping backtrace:%{public}s";
    goto LABEL_38;
  }

  v2 = *(a1 + 368);
  if ((v2 & 0x20) != 0)
  {
    if (*(a1 + 276))
    {
      if ((v2 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = 1;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v24 = "nw_http_connect_restart_after_disconnect";
          v25 = 2082;
          v26 = (a1 + 284);
          v27 = 2080;
          v28 = " ";
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because async operation is active", buf, 0x20u);
        }

        return v4;
      }
    }

    else
    {
      if ((v2 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v24 = "nw_http_connect_restart_after_disconnect";
          v25 = 2082;
          v26 = (a1 + 284);
          v27 = 2080;
          v28 = " ";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sWaiting to restart after disconnect", buf, 0x20u);
        }
      }

      nw_http_connect_start_async(a1);
      v6 = *(a1 + 168);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke;
      v20[3] = &__block_descriptor_tmp_42_38508;
      v20[4] = a1;
      nw_queue_context_async(v6, v20);
    }

    return 1;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_connect_restart_after_disconnect";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null http_connect->was_disconnected", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v9, &type, &v21))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v21 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect->was_disconnected, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v19 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v24 = "nw_http_connect_restart_after_disconnect";
        v12 = "%{public}s called with null http_connect->was_disconnected, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v24 = "nw_http_connect_restart_after_disconnect";
      v25 = 2082;
      v26 = backtrace_string;
      v17 = "%{public}s called with null http_connect->was_disconnected, dumping backtrace:%{public}s";
      goto LABEL_38;
    }

LABEL_39:
    free(backtrace_string);
    goto LABEL_53;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v24 = "nw_http_connect_restart_after_disconnect";
    v12 = "%{public}s called with null http_connect->was_disconnected";
    goto LABEL_52;
  }

LABEL_53:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

void nw_http_connect_start_async(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 276) + 1;
    *(a1 + 276) = v2;
    if (v2 == v2 << 31 >> 31)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 276);
    *buf = 136446978;
    v24 = "nw_http_connect_start_async";
    v25 = 2082;
    v26 = "http_connect->in_async";
    v27 = 2048;
    v28 = 1;
    v29 = 2048;
    v30 = v3;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v4, &type, &v21))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v7 = *(a1 + 276);
        *buf = 136446978;
        v24 = "nw_http_connect_start_async";
        v25 = 2082;
        v26 = "http_connect->in_async";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v7;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_16:
        _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v10)
        {
          v11 = *(a1 + 276);
          *buf = 136447234;
          v24 = "nw_http_connect_start_async";
          v25 = 2082;
          v26 = "http_connect->in_async";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v11;
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v10)
      {
        v13 = *(a1 + 276);
        *buf = 136446978;
        v24 = "nw_http_connect_start_async";
        v25 = 2082;
        v26 = "http_connect->in_async";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v13;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_16;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v12 = *(a1 + 276);
        *buf = 136446978;
        v24 = "nw_http_connect_start_async";
        v25 = 2082;
        v26 = "http_connect->in_async";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v12;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 276) = -1;
    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_connect_start_async";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null http_connect", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v24 = "nw_http_connect_start_async";
      v18 = "%{public}s called with null http_connect";
      goto LABEL_34;
    }

    if (v21 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v24 = "nw_http_connect_start_async";
      v18 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_34;
    }

    v19 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_http_connect_start_async";
        v25 = 2082;
        v26 = v19;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      goto LABEL_35;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "nw_http_connect_start_async";
      v18 = "%{public}s called with null http_connect, no backtrace";
LABEL_34:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    }
  }

LABEL_35:
  if (v15)
  {
    free(v15);
  }
}

void ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke(uint64_t a1)
{
  *&v142[11] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    v2 = *(a1 + 32);
    if (v4)
    {
      v5 = "";
      v6 = (v2 + 284);
      if (!v2)
      {
        v6 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
      if (v2)
      {
        v5 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v6;
      *&buf[22] = 2080;
      v140 = v5;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFinished waiting to restart after disconnect", buf, 0x20u);
      v2 = *(a1 + 32);
    }
  }

  v7 = nw_http_connect_end_async(v2);
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *(v8 + 368);
    if ((v9 & 0x20) == 0)
    {
      if ((v9 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v12 = "";
          v13 = v11 == 0;
          if (v11)
          {
            v14 = (v11 + 284);
          }

          else
          {
            v14 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (!v13)
          {
            v12 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v14;
          *&buf[22] = 2080;
          v140 = v12;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting because not disconnected", buf, 0x20u);
        }
      }

      return;
    }

    *(v8 + 368) = v9 & 0xFFDF;
    v19 = *(a1 + 32);
    v20 = *(v19 + 368);
    if (*(v19 + 280) == 1)
    {
      if ((v20 & 4) == 0)
      {
        if ((v20 & 0x80) != 0)
        {
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        v19 = *(a1 + 32);
        if (!v22)
        {
          goto LABEL_39;
        }

        v23 = "";
        v24 = (v19 + 284);
        if (!v19)
        {
          v24 = "";
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v19)
        {
          v23 = " ";
        }

        *&buf[12] = 2082;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        v140 = v23;
        v25 = "%{public}s %{public}s%sNot restarting because no response bytes were received";
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 32;
LABEL_38:
        _os_log_impl(&dword_181A37000, v26, v27, v25, buf, v28);
        v19 = *(a1 + 32);
LABEL_39:
        nw_http_connect_fail(v19, 22);
        return;
      }

      v35 = (v19 + 224);
      if (gLogDatapath == 1)
      {
        v117 = *(a1 + 32);
        v118 = __nwlog_obj();
        v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG);
        v19 = v117;
        if (v119)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_temp_frame_array";
          _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          v19 = v117;
        }
      }

      v36 = *v35;
      if (*v35)
      {
        *(v36 + 40) = type;
        v37 = *(v19 + 232);
        *type = v36;
        v138[0] = v37;
        *(v19 + 224) = 0;
        *(v19 + 232) = v35;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v140 = &__block_descriptor_tmp_21_49595;
        LOBYTE(v141) = 0;
        do
        {
          v38 = *type;
          if (!*type)
          {
            break;
          }

          v39 = *(*type + 32);
          v40 = *(*type + 40);
          v41 = (v39 + 40);
          if (!v39)
          {
            v41 = v138;
          }

          *v41 = v40;
          *v40 = v39;
          *(v38 + 32) = 0;
          *(v38 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      *(*(a1 + 32) + 368) &= ~4u;
      *(*(a1 + 32) + 368) &= ~2u;
      v19 = *(a1 + 32);
      v42 = *(v19 + 368);
      if ((v42 & 1) == 0)
      {
        v43 = *(v19 + 56);
        if (!v43 || (v44 = *(v43 + 24)) == 0 || (v45 = *(v44 + 256)) == 0)
        {
          if ((v42 & 0x80) != 0)
          {
            goto LABEL_39;
          }

          v112 = __nwlog_obj();
          v113 = os_log_type_enabled(v112, OS_LOG_TYPE_ERROR);
          v19 = *(a1 + 32);
          if (!v113)
          {
            goto LABEL_39;
          }

          v114 = (v19 + 284);
          v115 = *(v19 + 56);
          if (!v19)
          {
            v114 = "";
          }

          *buf = 136446978;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v114;
          if (v19)
          {
            v116 = " ";
          }

          else
          {
            v116 = "";
          }

          *&buf[22] = 2080;
          v140 = v116;
          v141 = 2048;
          *v142 = v115;
          v25 = "%{public}s %{public}s%sNot restarting after disconnect because unable to call reset on output_handler %p";
          v26 = v112;
          v27 = OS_LOG_TYPE_ERROR;
          v28 = 42;
          goto LABEL_38;
        }

        v45(*(v19 + 56), v19 + 24);
LABEL_59:
        v46 = *(*(a1 + 32) + 56);
        if (v46)
        {
          v47 = *(v46 + 24);
          if (v47)
          {
            v48 = *(v47 + 24);
            if (v48)
            {
              v48();
              return;
            }
          }
        }

        v101 = __nwlog_obj();
        v102 = *(*(a1 + 32) + 56);
        v103 = "invalid";
        if (v102)
        {
          v104 = *(v102 + 16);
          if (v104)
          {
            v103 = v104;
          }
        }

        *buf = 136446466;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v103;
        v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v101, 16, "%{public}s protocol %{public}s has invalid connect callback", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        v131 = 0;
        if (!__nwlog_fault(v105, type, &v131))
        {
          goto LABEL_171;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v106 = __nwlog_obj();
          v107 = type[0];
          if (!os_log_type_enabled(v106, type[0]))
          {
            goto LABEL_171;
          }

          v108 = *(*(a1 + 32) + 56);
          v109 = "invalid";
          if (v108)
          {
            v110 = *(v108 + 16);
            if (v110)
            {
              v109 = v110;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v109;
          v111 = "%{public}s protocol %{public}s has invalid connect callback";
        }

        else if (v131 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v106 = __nwlog_obj();
          v107 = type[0];
          v121 = os_log_type_enabled(v106, type[0]);
          if (backtrace_string)
          {
            if (v121)
            {
              v122 = *(*(a1 + 32) + 56);
              v123 = "invalid";
              if (v122)
              {
                v124 = *(v122 + 16);
                if (v124)
                {
                  v123 = v124;
                }
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v123;
              *&buf[22] = 2082;
              v140 = backtrace_string;
              _os_log_impl(&dword_181A37000, v106, v107, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_171;
          }

          if (!v121)
          {
LABEL_171:
            if (v105)
            {
              free(v105);
            }

            return;
          }

          v128 = *(*(a1 + 32) + 56);
          v129 = "invalid";
          if (v128)
          {
            v130 = *(v128 + 16);
            if (v130)
            {
              v129 = v130;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v129;
          v111 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
        }

        else
        {
          v106 = __nwlog_obj();
          v107 = type[0];
          if (!os_log_type_enabled(v106, type[0]))
          {
            goto LABEL_171;
          }

          v125 = *(*(a1 + 32) + 56);
          v126 = "invalid";
          if (v125)
          {
            v127 = *(v125 + 16);
            if (v127)
            {
              v126 = v127;
            }
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v126;
          v111 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v106, v107, v111, buf, 0x16u);
        goto LABEL_171;
      }

      *type = 0;
      v138[0] = type;
      v138[1] = 0x2000000000;
      v138[2] = nw_path_copy_flow_registration(*(v19 + 168), v19 + 24);
      v49 = v138[0];
      if (!*(v138[0] + 24))
      {
        v76 = *(a1 + 32);
        if (!v76 || (*(v76 + 368) & 0x80) == 0)
        {
          v77 = __nwlog_obj();
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_INFO);
          v76 = *(a1 + 32);
          if (v78)
          {
            v79 = "";
            v80 = (v76 + 284);
            if (!v76)
            {
              v80 = "";
            }

            *buf = 136446722;
            *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
            if (v76)
            {
              v79 = " ";
            }

            *&buf[12] = 2082;
            *&buf[14] = v80;
            *&buf[22] = 2080;
            v140 = v79;
            _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because unable to get flow registration", buf, 0x20u);
            v76 = *(a1 + 32);
          }
        }

        nw_http_connect_fail(v76, 22);
        goto LABEL_130;
      }

      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 0x40000000;
      v133 = ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke_40;
      v134 = &unk_1E6A31E58;
      v50 = *(a1 + 32);
      v135 = type;
      v136 = v50;
      v51 = *(v50 + 96);
      if (v51)
      {
        os_release(v51);
        v50 = *(a1 + 32);
        *(v50 + 96) = 0;
        v49 = v138[0];
      }

      new_flow = nw_path_flow_registration_create_new_flow(*(v49 + 24), 1, 1, 0, 0, (v50 + 240), 0, 0);
      v53 = *(a1 + 32);
      *(v53 + 96) = new_flow;
      if (new_flow)
      {
        nw_http_connect_start_async(v53);
        v54 = *(a1 + 32);
        v55 = *(v54 + 104);
        if (v55)
        {
          os_release(v55);
          v54 = *(a1 + 32);
          *(v54 + 104) = 0;
        }

        v56 = nw_path_flow_registration_force_update(*(v54 + 96));
        v57 = *(a1 + 32);
        *(v57 + 104) = v56;
        v58 = nw_http_connect_end_async(v57);
        v53 = *(a1 + 32);
        if (!v58)
        {
          if (!v53 || (*(v53 + 368) & 0x80) == 0)
          {
            v89 = __nwlog_obj();
            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);
            v53 = *(a1 + 32);
            if (v90)
            {
              v91 = "";
              v92 = (v53 + 284);
              if (!v53)
              {
                v92 = "";
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
              if (v53)
              {
                v91 = " ";
              }

              *&buf[12] = 2082;
              *&buf[14] = v92;
              *&buf[22] = 2080;
              v140 = v91;
              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because getting new path changed state to destroy", buf, 0x20u);
              v53 = *(a1 + 32);
            }
          }

          nw_http_connect_destroy(v53);
          goto LABEL_129;
        }

        v59 = *(v53 + 104);
        if (v59)
        {
          v60 = *(v53 + 120);
          if (v60)
          {
            os_release(v60);
            v61 = *(a1 + 32);
            *(v61 + 120) = 0;
            v59 = *(v61 + 104);
          }

          v62 = nw_path_copy_effective_local_endpoint(v59);
          v53 = *(a1 + 32);
          *(v53 + 120) = v62;
          v63 = *(v53 + 72);
          if (!v63)
          {
            goto LABEL_118;
          }

          v64 = *(v63 + 24);
          if (!v64)
          {
            goto LABEL_118;
          }

          v65 = *(v64 + 112);
          if (!v65)
          {
            goto LABEL_118;
          }

          v66 = v65(*(v53 + 72));
          v53 = *(a1 + 32);
          if (v66)
          {
            v67 = *(v53 + 112);
            if (v67)
            {
              os_release(v67);
              *(*(a1 + 32) + 112) = 0;
            }

            v68 = _nw_parameters_copy();
            v69 = *(a1 + 32);
            *(v69 + 112) = v68;
            *buf = 0;
            *&buf[8] = 0;
            nw_path_flow_registration_get_id(*(v69 + 96), buf);
            *(*(a1 + 32) + 24) = *buf;
            v70 = *(a1 + 32);
            v71 = *(v70 + 56);
            nw_protocol_set_output_handler(v70 + 24, 0);
            if (nw_http_connect_reattach_channel_protocol(*(a1 + 32)))
            {
              if (v71)
              {
                v72 = v71[3];
                if (v72)
                {
                  v73 = *(v72 + 8);
                  if (v73)
                  {
                    v74 = *(a1 + 32);
                    v75 = *(v74 + 56);
                    v73(v71, v74 + 24, 1);
                    nw_protocol_set_output_handler(*(a1 + 32) + 24, v75);
                  }
                }
              }

              v133(v132);
              _Block_object_dispose(type, 8);
              goto LABEL_59;
            }

            nw_protocol_set_output_handler(*(a1 + 32) + 24, v71);
            goto LABEL_127;
          }

          if (v53)
          {
LABEL_118:
            if ((*(v53 + 368) & 0x80) != 0)
            {
              goto LABEL_128;
            }
          }

          v97 = __nwlog_obj();
          v98 = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);
          v53 = *(a1 + 32);
          if (!v98)
          {
LABEL_128:
            nw_http_connect_fail(v53, 22);
LABEL_129:
            v133(v132);
LABEL_130:
            _Block_object_dispose(type, 8);
            return;
          }

          v99 = "";
          v100 = (v53 + 284);
          if (!v53)
          {
            v100 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (v53)
          {
            v99 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v100;
          *&buf[22] = 2080;
          v140 = v99;
          v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to get parameters";
          v86 = v97;
          v87 = OS_LOG_TYPE_INFO;
        }

        else
        {
          if ((*(v53 + 368) & 0x80) != 0)
          {
            goto LABEL_128;
          }

          v93 = __nwlog_obj();
          v94 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
          v53 = *(a1 + 32);
          if (!v94)
          {
            goto LABEL_128;
          }

          v95 = "";
          v96 = (v53 + 284);
          if (!v53)
          {
            v96 = "";
          }

          *buf = 136446722;
          *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
          if (v53)
          {
            v95 = " ";
          }

          *&buf[12] = 2082;
          *&buf[14] = v96;
          *&buf[22] = 2080;
          v140 = v95;
          v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to get new path";
          v86 = v93;
          v87 = OS_LOG_TYPE_ERROR;
        }

        v88 = 32;
      }

      else
      {
        if ((*(v53 + 368) & 0x80) != 0)
        {
          goto LABEL_128;
        }

        v81 = __nwlog_obj();
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
        v53 = *(a1 + 32);
        if (!v82)
        {
          goto LABEL_128;
        }

        v83 = (v53 + 284);
        *buf = 136447234;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (!v53)
        {
          v83 = "";
        }

        *&buf[12] = 2082;
        *&buf[14] = v83;
        *&buf[22] = 2080;
        v84 = " ";
        if (!v53)
        {
          v84 = "";
        }

        v140 = v84;
        v141 = 1040;
        *v142 = 16;
        v142[2] = 2096;
        *&v142[3] = v53 + 240;
        v85 = "%{public}s %{public}s%sNot restarting after disconnect because unable to create new flow with nexus agent %{uuid_t}.16P";
        v86 = v81;
        v87 = OS_LOG_TYPE_INFO;
        v88 = 48;
      }

      _os_log_impl(&dword_181A37000, v86, v87, v85, buf, v88);
LABEL_127:
      v53 = *(a1 + 32);
      goto LABEL_128;
    }

    if ((v20 & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = (v30 + 284);
        v32 = "";
        v33 = v30 == 0;
        v34 = *(v30 + 280);
        if (v33)
        {
          v31 = "";
        }

        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        *&buf[12] = 2082;
        *buf = 136446978;
        if (!v33)
        {
          v32 = " ";
        }

        *&buf[14] = v31;
        *&buf[22] = 2080;
        v140 = v32;
        v141 = 1024;
        *v142 = v34;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting because state %d is not negotiating", buf, 0x26u);
      }
    }
  }

  else
  {
    if (!v8 || (*(v8 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      v8 = *(a1 + 32);
      if (v16)
      {
        v17 = "";
        v18 = (v8 + 284);
        if (!v8)
        {
          v18 = "";
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v8)
        {
          v17 = " ";
        }

        *&buf[12] = 2082;
        *&buf[14] = v18;
        *&buf[22] = 2080;
        v140 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot restarting after disconnect because http connect state was changed to destroy", buf, 0x20u);
        v8 = *(a1 + 32);
      }
    }

    nw_http_connect_destroy(v8);
  }
}

BOOL nw_http_connect_end_async(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 276);
    *(a1 + 276) = v2 - 1;
    if (v2)
    {
      return (*(a1 + 368) & 0x40) == 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 276);
    *buf = 136446978;
    v25 = "nw_http_connect_end_async";
    v26 = 2082;
    v27 = "http_connect->in_async";
    v28 = 2048;
    v29 = 1;
    v30 = 2048;
    v31 = v3;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v4, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v7 = *(a1 + 276);
          *buf = 136446978;
          v25 = "nw_http_connect_end_async";
          v26 = 2082;
          v27 = "http_connect->in_async";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v7;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_16:
          _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        v10 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v10)
          {
            v11 = *(a1 + 276);
            *buf = 136447234;
            v25 = "nw_http_connect_end_async";
            v26 = 2082;
            v27 = "http_connect->in_async";
            v28 = 2048;
            v29 = 1;
            v30 = 2048;
            v31 = v11;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_17;
        }

        if (v10)
        {
          v13 = *(a1 + 276);
          *buf = 136446978;
          v25 = "nw_http_connect_end_async";
          v26 = 2082;
          v27 = "http_connect->in_async";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v13;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_16;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 276);
          *buf = 136446978;
          v25 = "nw_http_connect_end_async";
          v26 = 2082;
          v27 = "http_connect->in_async";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v12;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_16;
        }
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 276) = 0;
    return (*(a1 + 368) & 0x40) == 0;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_http_connect_end_async";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null http_connect", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v16, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_http_connect_end_async";
        v19 = "%{public}s called with null http_connect";
LABEL_35:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v21 = os_log_type_enabled(v17, type);
      if (v20)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_http_connect_end_async";
          v26 = 2082;
          v27 = v20;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 136446210;
        v25 = "nw_http_connect_end_async";
        v19 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_http_connect_end_async";
        v19 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (v16)
  {
    free(v16);
  }

  return 0;
}

void nw_http_connect_destroy(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = *(a1 + 368), (v2 & 0x80) != 0))
  {
    if (*(a1 + 276))
    {
LABEL_11:
      *(a1 + 368) |= 0x40u;
      return;
    }
  }

  else
  {
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = (a1 + 284);
        if (!a1)
        {
          v27 = "";
        }

        v29 = 136446978;
        v30 = "nw_http_connect_destroy";
        v31 = 2082;
        v32 = v27;
        v28 = " ";
        if (!a1)
        {
          v28 = "";
        }

        v33 = 2080;
        v34 = v28;
        v35 = 2048;
        v36 = a1;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%stearing down %p", &v29, 0x2Au);
      }
    }

    if (nw_http_connect_in_async(a1))
    {
      if (!a1 || (*(a1 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v4 = " ";
          v5 = (a1 + 284);
          v30 = "nw_http_connect_destroy";
          v29 = 136446722;
          if (!a1)
          {
            v4 = "";
            v5 = "";
          }

          v31 = 2082;
          v32 = v5;
          v33 = 2080;
          v34 = v4;
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect in async, setting state to destroy", &v29, 0x20u);
        }
      }

      goto LABEL_11;
    }

    v2 = *(a1 + 368);
  }

  if ((v2 & 0x40) != 0)
  {
    *(a1 + 368) = v2 & 0xFFBF;
    if ((v2 & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v29 = 136446722;
        v30 = "nw_http_connect_destroy";
        v31 = 2082;
        v32 = (a1 + 284);
        v33 = 2080;
        v34 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect destroying after deferral", &v29, 0x20u);
      }
    }
  }

  _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
  v7 = *(a1 + 96);
  if (v7)
  {
    nw_path_flow_registration_close(v7);
    v8 = *(a1 + 96);
    if (v8)
    {
      os_release(v8);
      *(a1 + 96) = 0;
    }
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    nw_path_flow_registration_close(v9);
    v10 = *(a1 + 88);
    if (v10)
    {
      os_release(v10);
      *(a1 + 88) = 0;
    }
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    os_release(v11);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    os_release(v12);
    *(a1 + 104) = 0;
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    os_release(v13);
    *(a1 + 112) = 0;
  }

  v14 = *(a1 + 120);
  if (v14)
  {
    os_release(v14);
    *(a1 + 120) = 0;
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    os_release(v15);
    *(a1 + 136) = 0;
  }

  v16 = *(a1 + 144);
  if (v16)
  {
    os_release(v16);
    *(a1 + 144) = 0;
  }

  v17 = *(a1 + 152);
  if (v17)
  {
    os_release(v17);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 160);
  if (v18)
  {
    os_release(v18);
    *(a1 + 160) = 0;
  }

  v19 = *(a1 + 168);
  if (v19)
  {
    os_release(v19);
    *(a1 + 168) = 0;
  }

  v20 = *(a1 + 176);
  if (v20)
  {
    os_release(v20);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 184);
  if (v21)
  {
    os_release(v21);
    *(a1 + 184) = 0;
  }

  v22 = *(a1 + 192);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 192) = 0;
  }

  v23 = *(a1 + 208);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 208) = 0;
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 200) = 0;
  }

  v25 = *(a1 + 216);
  if (v25)
  {
    CFRelease(v25);
  }

  free(a1);
}

void nw_http_connect_fail(uint64_t a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 280) = 3;
    if (!a2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          v5();
          goto LABEL_7;
        }
      }
    }

    v34 = __nwlog_obj();
    v35 = *(a1 + 72);
    v36 = "invalid";
    if (v35)
    {
      v37 = *(v35 + 16);
      if (v37)
      {
        v36 = v37;
      }
    }

    *buf = 136446466;
    v90 = "nw_http_connect_fail";
    v91 = 2082;
    v92 = v36;
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s protocol %{public}s has invalid error callback", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v38, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_118;
        }

        v41 = *(a1 + 72);
        v42 = "invalid";
        if (v41)
        {
          v43 = *(v41 + 16);
          if (v43)
          {
            v42 = v43;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v42;
        v44 = "%{public}s protocol %{public}s has invalid error callback";
        goto LABEL_117;
      }

      if (v87 != 1)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_118;
        }

        v73 = *(a1 + 72);
        v74 = "invalid";
        if (v73)
        {
          v75 = *(v73 + 16);
          if (v75)
          {
            v74 = v75;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v74;
        v44 = "%{public}s protocol %{public}s has invalid error callback, backtrace limit exceeded";
        goto LABEL_117;
      }

      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v61 = os_log_type_enabled(v39, type);
      if (backtrace_string)
      {
        if (v61)
        {
          v62 = *(a1 + 72);
          v63 = "invalid";
          if (v62)
          {
            v64 = *(v62 + 16);
            if (v64)
            {
              v63 = v64;
            }
          }

          *buf = 136446722;
          v90 = "nw_http_connect_fail";
          v91 = 2082;
          v92 = v63;
          v93 = 2082;
          v94 = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s protocol %{public}s has invalid error callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_118;
      }

      if (v61)
      {
        v83 = *(a1 + 72);
        v84 = "invalid";
        if (v83)
        {
          v85 = *(v83 + 16);
          if (v85)
          {
            v84 = v85;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v84;
        v44 = "%{public}s protocol %{public}s has invalid error callback, no backtrace";
LABEL_117:
        _os_log_impl(&dword_181A37000, v39, v40, v44, buf, 0x16u);
      }
    }

LABEL_118:
    if (v38)
    {
      free(v38);
    }

LABEL_7:
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8)
        {
          v8();
          goto LABEL_11;
        }
      }
    }

    v12 = __nwlog_obj();
    v13 = *(a1 + 72);
    v14 = "invalid";
    if (v13)
    {
      v15 = *(v13 + 16);
      if (v15)
      {
        v14 = v15;
      }
    }

    *buf = 136446466;
    v90 = "nw_http_connect_fail";
    v91 = 2082;
    v92 = v14;
    LODWORD(v86) = 22;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, v86);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v16, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_100;
        }

        v19 = *(a1 + 72);
        v20 = "invalid";
        if (v19)
        {
          v21 = *(v19 + 16);
          if (v21)
          {
            v20 = v21;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v20;
        v22 = "%{public}s protocol %{public}s has invalid disconnected callback";
        goto LABEL_99;
      }

      if (v87 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_100;
        }

        v65 = *(a1 + 72);
        v66 = "invalid";
        if (v65)
        {
          v67 = *(v65 + 16);
          if (v67)
          {
            v66 = v67;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v66;
        v22 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_99;
      }

      v45 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v46 = os_log_type_enabled(v17, type);
      if (v45)
      {
        if (v46)
        {
          v47 = *(a1 + 72);
          v48 = "invalid";
          if (v47)
          {
            v49 = *(v47 + 16);
            if (v49)
            {
              v48 = v49;
            }
          }

          *buf = 136446722;
          v90 = "nw_http_connect_fail";
          v91 = 2082;
          v92 = v48;
          v93 = 2082;
          v94 = v45;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v45);
        goto LABEL_100;
      }

      if (v46)
      {
        v76 = *(a1 + 72);
        v77 = "invalid";
        if (v76)
        {
          v78 = *(v76 + 16);
          if (v78)
          {
            v77 = v78;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v77;
        v22 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
LABEL_99:
        _os_log_impl(&dword_181A37000, v17, v18, v22, buf, 0x16u);
      }
    }

LABEL_100:
    if (v16)
    {
      free(v16);
    }

LABEL_11:
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 24);
      if (v10)
      {
        v11 = *(v10 + 32);
        if (v11)
        {
          v11();
          return;
        }
      }
    }

    v23 = __nwlog_obj();
    v24 = *(a1 + 56);
    v25 = "invalid";
    if (v24)
    {
      v26 = *(v24 + 16);
      if (v26)
      {
        v25 = v26;
      }
    }

    *buf = 136446466;
    v90 = "nw_http_connect_fail";
    v91 = 2082;
    v92 = v25;
    LODWORD(v86) = 22;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s protocol %{public}s has invalid disconnect callback", buf, v86);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v27, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_108;
        }

        v30 = *(a1 + 56);
        v31 = "invalid";
        if (v30)
        {
          v32 = *(v30 + 16);
          if (v32)
          {
            v31 = v32;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v31;
        v33 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_107:
        _os_log_impl(&dword_181A37000, v28, v29, v33, buf, 0x16u);
        goto LABEL_108;
      }

      if (v87 != 1)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_108;
        }

        v68 = *(a1 + 56);
        v69 = "invalid";
        if (v68)
        {
          v70 = *(v68 + 16);
          if (v70)
          {
            v69 = v70;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v69;
        v33 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_107;
      }

      v50 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v51 = os_log_type_enabled(v28, type);
      if (!v50)
      {
        if (!v51)
        {
          goto LABEL_108;
        }

        v79 = *(a1 + 56);
        v80 = "invalid";
        if (v79)
        {
          v81 = *(v79 + 16);
          if (v81)
          {
            v80 = v81;
          }
        }

        *buf = 136446466;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v80;
        v33 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        goto LABEL_107;
      }

      if (v51)
      {
        v52 = *(a1 + 56);
        v53 = "invalid";
        if (v52)
        {
          v54 = *(v52 + 16);
          if (v54)
          {
            v53 = v54;
          }
        }

        *buf = 136446722;
        v90 = "nw_http_connect_fail";
        v91 = 2082;
        v92 = v53;
        v93 = 2082;
        v94 = v50;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v50);
    }

LABEL_108:
    if (v27)
    {
      v82 = v27;
LABEL_125:
      free(v82);
      return;
    }

    return;
  }

  v55 = __nwlog_obj();
  *buf = 136446210;
  v90 = "nw_http_connect_fail";
  v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null http_connect", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v87 = 0;
  if (__nwlog_fault(v56, &type, &v87))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v90 = "nw_http_connect_fail";
      v59 = "%{public}s called with null http_connect";
LABEL_122:
      _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
      goto LABEL_123;
    }

    if (v87 != 1)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (!os_log_type_enabled(v57, type))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v90 = "nw_http_connect_fail";
      v59 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_122;
    }

    v71 = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v58 = type;
    v72 = os_log_type_enabled(v57, type);
    if (!v71)
    {
      if (!v72)
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      v90 = "nw_http_connect_fail";
      v59 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_122;
    }

    if (v72)
    {
      *buf = 136446466;
      v90 = "nw_http_connect_fail";
      v91 = 2082;
      v92 = v71;
      _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v71);
  }

LABEL_123:
  if (v56)
  {
    v82 = v56;
    goto LABEL_125;
  }
}

void ___ZL40nw_http_connect_restart_after_disconnectP24nw_protocol_http_connect_block_invoke_40(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (!v1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null flow_registration", buf, 12);
    LOBYTE(v39) = 16;
    v28 = 0;
    if (!__nwlog_fault(v12, &v39, &v28))
    {
      goto LABEL_44;
    }

    if (v39 == 17)
    {
      v13 = __nwlog_obj();
      v14 = v39;
      if (!os_log_type_enabled(v13, v39))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v15 = "%{public}s called with null flow_registration";
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v39;
      v22 = os_log_type_enabled(v13, v39);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (!v22)
      {
LABEL_44:
        if (v12)
        {
          free(v12);
        }

        return;
      }

      *buf = 136446210;
      v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v15 = "%{public}s called with null flow_registration, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = v39;
      if (!os_log_type_enabled(v13, v39))
      {
        goto LABEL_44;
      }

      *buf = 136446210;
      v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
      v15 = "%{public}s called with null flow_registration, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_44;
  }

  v39 = 0uLL;
  v3 = v1;
  if (!uuid_is_null(v3 + 32))
  {
    v39 = v3[2];
  }

  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  v6 = *(v4 + 88);
  v7 = *(v4 + 368);
  if (!v6)
  {
    if ((v7 & 0x80) == 0 && gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *v5 + 284;
        v25 = *v5 == 0;
        *buf = 136447234;
        v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
        if (v25)
        {
          v26 = "";
        }

        else
        {
          v26 = v24;
        }

        v31 = 2082;
        v32 = v26;
        if (v25)
        {
          v27 = "";
        }

        else
        {
          v27 = " ";
        }

        v33 = 2080;
        v34 = v27;
        v35 = 1040;
        v36 = 16;
        v37 = 2096;
        v38 = &v39;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferring cleanup of flow registration %{uuid_t}.16P", buf, 0x30u);
      }
    }

    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = 88;
    goto LABEL_12;
  }

  if ((v7 & 0x80) == 0 && gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *v5 + 284;
      v18 = *v5 == 0;
      *buf = 136447234;
      v30 = "nw_http_connect_restart_after_disconnect_block_invoke";
      if (v18)
      {
        v19 = "";
      }

      else
      {
        v19 = v17;
      }

      v31 = 2082;
      v32 = v19;
      if (v18)
      {
        v20 = "";
      }

      else
      {
        v20 = " ";
      }

      v33 = 2080;
      v34 = v20;
      v35 = 1040;
      v36 = 16;
      v37 = 2096;
      v38 = &v39;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCleaning up flow registration %{uuid_t}.16P", buf, 0x30u);
    }
  }

  nw_path_flow_registration_close(*(*(*(a1 + 32) + 8) + 24));
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    os_release(v8);
    v9 = 0;
    v5 = (*(a1 + 32) + 8);
    v10 = 24;
LABEL_12:
    *(*v5 + v10) = v9;
  }
}

uint64_t nw_http_connect_reattach_channel_protocol(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *v56 = 136446210;
    *&v56[4] = "nw_http_connect_reattach_channel_protocol";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null http_connect", v56, 12);
    uu[0] = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v41, uu, buf))
    {
      goto LABEL_97;
    }

    if (uu[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = uu[0];
      if (!os_log_type_enabled(v42, uu[0]))
      {
        goto LABEL_97;
      }

      *v56 = 136446210;
      *&v56[4] = "nw_http_connect_reattach_channel_protocol";
      v44 = "%{public}s called with null http_connect";
    }

    else if (buf[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = uu[0];
      v46 = os_log_type_enabled(v42, uu[0]);
      if (backtrace_string)
      {
        if (v46)
        {
          *v56 = 136446466;
          *&v56[4] = "nw_http_connect_reattach_channel_protocol";
          *&v56[12] = 2082;
          *&v56[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http_connect, dumping backtrace:%{public}s", v56, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_97;
      }

      if (!v46)
      {
LABEL_97:
        if (v41)
        {
          free(v41);
        }

        return 0;
      }

      *v56 = 136446210;
      *&v56[4] = "nw_http_connect_reattach_channel_protocol";
      v44 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v42 = __nwlog_obj();
      v43 = uu[0];
      if (!os_log_type_enabled(v42, uu[0]))
      {
        goto LABEL_97;
      }

      *v56 = 136446210;
      *&v56[4] = "nw_http_connect_reattach_channel_protocol";
      v44 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v42, v43, v44, v56, 0xCu);
    goto LABEL_97;
  }

  protocol_level = nw_path_flow_registration_get_protocol_level(*(a1 + 104), *(a1 + 96));
  v52 = 0;
  *uu = 0;
  v62 = uu;
  v63 = 0x2000000000;
  v64 = 1;
  if (protocol_level > 4)
  {
LABEL_3:
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_reattach_protocols";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        v54 = 2080;
        v55 = " ";
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to locate http_connect in protocol stack", buf, 0x20u);
      }
    }

    v62[24] = 0;
    goto LABEL_21;
  }

  v4 = protocol_level;
  v5 = *(a1 + 112);
  v6 = MEMORY[0x1E69E9820];
  *v56 = MEMORY[0x1E69E9820];
  *&v56[8] = 0x40000000;
  *&v56[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
  v57 = &unk_1E6A31EA0;
  v59 = a1;
  v60 = &v52;
  v58 = uu;
  nw_parameters_internal_iterate_protocol_stack(v5, 4, 0, v56);
  if ((v62[24] & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v52)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v62 = uu;
  v63 = 0x2000000000;
  v64 = 1;
  if (v4 != 4)
  {
    v7 = *(a1 + 112);
    *v56 = v6;
    *&v56[8] = 0x40000000;
    *&v56[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v57 = &unk_1E6A31EA0;
    v59 = a1;
    v60 = &v52;
    v58 = uu;
    nw_parameters_internal_iterate_protocol_stack(v7, 3, 0, v56);
    if ((v62[24] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!v52)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v62 = uu;
  v63 = 0x2000000000;
  v64 = 1;
  if (v4 <= 2)
  {
    v8 = *(a1 + 112);
    *v56 = v6;
    *&v56[8] = 0x40000000;
    *&v56[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v57 = &unk_1E6A31EA0;
    v59 = a1;
    v60 = &v52;
    v58 = uu;
    nw_parameters_internal_iterate_protocol_stack(v8, 2, 0, v56);
    if ((v62[24] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!v52)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v62 = uu;
  v63 = 0x2000000000;
  v64 = 1;
  if (v4 <= 1)
  {
    v9 = *(a1 + 112);
    *v56 = v6;
    *&v56[8] = 0x40000000;
    *&v56[16] = ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke;
    v57 = &unk_1E6A31EA0;
    v59 = a1;
    v60 = &v52;
    v58 = uu;
    nw_parameters_internal_iterate_protocol_stack(v9, 1, 0, v56);
    if ((v62[24] & 1) == 0)
    {
LABEL_21:
      _Block_object_dispose(uu, 8);
      return 0;
    }
  }

  if (!v52)
  {
    goto LABEL_3;
  }

  _Block_object_dispose(uu, 8);
  *uu = 0;
  v62 = 0;
  v51 = 0;
  if ((nw_path_flow_registration_get_nexus_instance(*(a1 + 104), *(a1 + 96), uu, &v51) & 1) == 0)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      return 0;
    }

    v14 = __nwlog_obj();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v56 = 136446722;
      *&v56[4] = "nw_http_connect_reattach_channel_protocol";
      *&v56[12] = 2082;
      *&v56[14] = a1 + 284;
      *&v56[22] = 2080;
      v57 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because nexus is not ready", v56, 0x20u);
      return 0;
    }

    return result;
  }

  *buf = 0;
  *&buf[8] = 0;
  v50 = 0;
  nw_path_flow_registration_get_id(*(a1 + 96), buf);
  v10 = _nw_path_copy_flow_for_registration(*(a1 + 104), buf);
  v11 = v10;
  if (v10)
  {
    nexus_key = nw_path_flow_get_nexus_key(v10, &v50);
  }

  else
  {
    nexus_key = 0;
  }

  v48 = 0;
  v49 = 0;
  HIDWORD(v49) = nw_path_flow_registration_can_support_user_packet_pool(*(a1 + 104), *(a1 + 96));
  if (nw_path_flow_registration_should_use_event_ring(*(a1 + 104), *(a1 + 96)))
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  BYTE4(v49) = BYTE4(v49) & 0xFD | v15;
  v48 = nexus_key;
  LODWORD(v49) = 16;
  v16 = nw_path_copy_endpoint(*(a1 + 104));
  v17 = nw_path_copy_parameters(*(a1 + 104));
  v18 = *(a1 + 128);
  if (v18)
  {
    os_release(v18);
    *(a1 + 128) = 0;
  }

  v19 = nw_parameters_copy_context(v17);
  *(a1 + 128) = nw_channel_create_with_attributes(v19, uu, v51, &v48);
  if (v19)
  {
    os_release(v19);
  }

  if (v11)
  {
    os_release(v11);
  }

  v20 = *(a1 + 368);
  if (!*(a1 + 128))
  {
    if ((v20 & 0x80) == 0)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v56 = 136446722;
        *&v56[4] = "nw_http_connect_reattach_channel_protocol";
        *&v56[12] = 2082;
        *&v56[14] = a1 + 284;
        *&v56[22] = 2080;
        v57 = " ";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because failed to open channel", v56, 0x20u);
      }
    }

    if (v16)
    {
      os_release(v16);
    }

    result = 0;
    if (v17)
    {
      goto LABEL_82;
    }

    return result;
  }

  if ((v20 & 0x80) == 0)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v56 = 136446978;
      *&v56[4] = "nw_http_connect_reattach_channel_protocol";
      *&v56[12] = 2082;
      *&v56[14] = a1 + 284;
      *&v56[22] = 2080;
      v57 = " ";
      LOWORD(v58) = 1024;
      *(&v58 + 2) = v4;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sopened channel at level %u", v56, 0x26u);
    }
  }

  nw_channel_set_close_automatically(*(a1 + 128), 1);
  nw_channel_set_defer_input_available(*(a1 + 128), 1);
  nw_channel_set_protocol_level(*(a1 + 128), v4);
  if (v4 == 2)
  {
    if (nw_protocol_ip_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
    }

    if (nw_parameters_has_protocol_in_stack(v17, &nw_protocol_ip_identifier::identifier) && v16 && nw_endpoint_get_type(v16) == nw_endpoint_type_address)
    {
      if (nw_endpoint_get_address_family(v16) == 2)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      v23 = *(a1 + 96);
      if (nw_protocol_ip_identifier::onceToken != -1)
      {
        v47 = v22;
        dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
        v22 = v47;
      }

      stats_region = nw_channel_get_stats_region(*(a1 + 128), v22);
      nw_path_flow_registration_set_stats_region(v23, 2, &nw_protocol_ip_identifier::identifier, stats_region);
    }
  }

  else if ((v4 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_72;
  }

  v26 = nw_protocol_tcp_identifier();
  if (!nw_parameters_has_protocol_in_stack(v17, v26))
  {
    if (nw_protocol_udp_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
    }

    if (nw_parameters_has_protocol_in_stack(v17, &nw_protocol_udp_identifier::identifier))
    {
      v32 = *(a1 + 96);
      if (nw_protocol_udp_identifier::onceToken == -1)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (nw_parameters_get_upper_transport_protocol(v17) != 253)
      {
        goto LABEL_72;
      }

      upper_transport_protocol_identifier = nw_parameters_get_upper_transport_protocol_identifier(v17);
      v34 = *(a1 + 96);
      v35 = nw_channel_get_stats_region(*(a1 + 128), 5);
      nw_path_flow_registration_set_stats_region(v34, 3, upper_transport_protocol_identifier, v35);
      v32 = *(a1 + 96);
      if (nw_protocol_udp_identifier::onceToken == -1)
      {
        goto LABEL_70;
      }
    }

    dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
LABEL_70:
    v29 = nw_channel_get_stats_region(*(a1 + 128), 4);
    v31 = &nw_protocol_udp_identifier::identifier;
    v30 = v32;
    goto LABEL_71;
  }

  v27 = *(a1 + 96);
  v28 = nw_protocol_tcp_identifier();
  v29 = nw_channel_get_stats_region(*(a1 + 128), 3);
  v30 = v27;
  v31 = v28;
LABEL_71:
  nw_path_flow_registration_set_stats_region(v30, 3, v31, v29);
LABEL_72:
  protocol_handler = nw_channel_get_protocol_handler(*(a1 + 128));
  result = (**(protocol_handler + 24))();
  if (!result)
  {
    goto LABEL_79;
  }

  if (nw_channel_set_path_flow_registration(*(a1 + 128), *(a1 + 104), *(a1 + 96)))
  {
    nw_channel_set_keep_path_flow_registration_open(*(a1 + 128), *(a1 + 96));
    result = 1;
    goto LABEL_79;
  }

  if ((*(a1 + 368) & 0x80) == 0)
  {
    v37 = __nwlog_obj();
    result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_79;
    }

    *v56 = 136446722;
    *&v56[4] = "nw_http_connect_reattach_channel_protocol";
    *&v56[12] = 2082;
    *&v56[14] = a1 + 284;
    *&v56[22] = 2080;
    v57 = " ";
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNot restarting after disconnect because unable to set path flow registration", v56, 0x20u);
  }

  result = 0;
LABEL_79:
  if (v16)
  {
    v38 = result;
    os_release(v16);
    result = v38;
  }

  if (v17)
  {
LABEL_82:
    v39 = result;
    os_release(v17);
    return v39;
  }

  return result;
}

uint64_t ___ZL34nw_http_connect_reattach_protocolsP24nw_protocol_http_connect19nw_protocol_level_tS1_PP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  if (!v7 || (*(v7 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = v9 == 0;
      if (v9)
      {
        v11 = (v9 + 284);
      }

      else
      {
        v11 = "";
      }

      *buf = 136446978;
      v60 = "nw_http_connect_reattach_protocols_block_invoke";
      v61 = 2082;
      v62 = v11;
      if (v10)
      {
        v12 = "";
      }

      else
      {
        v12 = " ";
      }

      v63 = 2080;
      v64 = v12;
      v65 = 2114;
      v66 = a3;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sEnumerating protocol: %{public}@", buf, 0x2Au);
    }
  }

  v13 = **(a1 + 48);
  if (!v13)
  {
    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
    {
      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
    }

    if (nw_protocol_definition_is_equal_unsafe(a3, nw_proxy_copy_http_connect_definition::proxy_definition))
    {
      v29 = *(a1 + 40);
      if (!v29 || (*(v29 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
        v29 = *(a1 + 40);
        if (v31)
        {
          v32 = v29 == 0;
          if (v29)
          {
            v33 = (v29 + 284);
          }

          else
          {
            v33 = "";
          }

          *buf = 136446978;
          v60 = "nw_http_connect_reattach_protocols_block_invoke";
          v61 = 2082;
          v62 = v33;
          v34 = " ";
          if (v32)
          {
            v34 = "";
          }

          v63 = 2080;
          v64 = v34;
          v65 = 2114;
          v66 = a3;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRebuilding stack under protocol: %{public}@", buf, 0x2Au);
          v29 = *(a1 + 40);
        }
      }

      **(a1 + 48) = v29 + 24;
    }

    return 1;
  }

  v14 = *(a1 + 40);
  if (!v14)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_connect_reattach_protocol";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null http_connect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v45, &type, &v57))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null http_connect";
    }

    else if (v57 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type;
      v52 = os_log_type_enabled(v46, type);
      if (backtrace_string)
      {
        if (v52)
        {
          *buf = 136446466;
          v60 = "nw_http_connect_reattach_protocol";
          v61 = 2082;
          v62 = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_107:
        if (!v45)
        {
          goto LABEL_52;
        }

LABEL_108:
        free(v45);
        goto LABEL_52;
      }

      if (!v52)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

    goto LABEL_106;
  }

  if (!a3)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_connect_reattach_protocol";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null definition", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v45, &type, &v57))
    {
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v57 != 1)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (!os_log_type_enabled(v46, type))
        {
          goto LABEL_107;
        }

        *buf = 136446210;
        v60 = "nw_http_connect_reattach_protocol";
        v48 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_106;
      }

      v53 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type;
      v54 = os_log_type_enabled(v46, type);
      if (!v53)
      {
        if (!v54)
        {
          goto LABEL_107;
        }

        *buf = 136446210;
        v60 = "nw_http_connect_reattach_protocol";
        v48 = "%{public}s called with null definition, no backtrace";
        goto LABEL_106;
      }

      if (v54)
      {
        *buf = 136446466;
        v60 = "nw_http_connect_reattach_protocol";
        v61 = 2082;
        v62 = v53;
        v55 = "%{public}s called with null definition, dumping backtrace:%{public}s";
LABEL_91:
        _os_log_impl(&dword_181A37000, v46, v47, v55, buf, 0x16u);
      }

LABEL_92:
      free(v53);
      if (!v45)
      {
        goto LABEL_52;
      }

      goto LABEL_108;
    }

    v46 = __nwlog_obj();
    v47 = type;
    if (!os_log_type_enabled(v46, type))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v60 = "nw_http_connect_reattach_protocol";
    v48 = "%{public}s called with null definition";
LABEL_106:
    _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
    goto LABEL_107;
  }

  if (!a4)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_connect_reattach_protocol";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null protocol_parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v45, &type, &v57))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null protocol_parameters";
      goto LABEL_106;
    }

    if (v57 != 1)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_106;
    }

    v53 = __nw_create_backtrace_string();
    v46 = __nwlog_obj();
    v47 = type;
    v56 = os_log_type_enabled(v46, type);
    if (!v53)
    {
      if (!v56)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v60 = "nw_http_connect_reattach_protocol";
      v48 = "%{public}s called with null protocol_parameters, no backtrace";
      goto LABEL_106;
    }

    if (v56)
    {
      *buf = 136446466;
      v60 = "nw_http_connect_reattach_protocol";
      v61 = 2082;
      v62 = v53;
      v55 = "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s";
      goto LABEL_91;
    }

    goto LABEL_92;
  }

  v15 = a3;

  internal = nw_protocol_create_internal(v15 + 8, *(v14 + 120), *(v14 + 112), 1);
  if (internal)
  {
    v17 = internal;
    v18 = a4;
    _nw_protocol_options_set_instance(v18, v17);

    v19 = v17[3];
    if (v19 && (v20 = *v19) != 0)
    {
      v21 = v20(v17, v13);
      v22 = v21;
      if (*(v14 + 56))
      {
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        nw_protocol_set_output_handler(v14 + 24, v17);
        if (v22)
        {
LABEL_20:
          **(a1 + 48) = v17;
          v23 = *(a1 + 40);
          if (!v23 || (*(v23 + 368) & 0x80) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(a1 + 40);
              v26 = v25 == 0;
              if (v25)
              {
                v27 = (v25 + 284);
              }

              else
              {
                v27 = "";
              }

              *buf = 136446978;
              v60 = "nw_http_connect_reattach_protocols_block_invoke";
              v61 = 2082;
              v62 = v27;
              if (v26)
              {
                v28 = "";
              }

              else
              {
                v28 = " ";
              }

              v63 = 2080;
              v64 = v28;
              v65 = 2114;
              v66 = v15;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached protocol: %{public}@", buf, 0x2Au);
            }
          }

          return 1;
        }
      }

      if ((*(v14 + 368) & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v60 = "nw_http_connect_reattach_protocol";
          v61 = 2082;
          v62 = (v14 + 284);
          v63 = 2080;
          v64 = " ";
          v65 = 2114;
          v66 = v15;
          v37 = "%{public}s %{public}s%sCould not add input handler for %{public}@";
          goto LABEL_51;
        }
      }
    }

    else if ((*(v14 + 368) & 0x80) == 0)
    {
      v36 = __nwlog_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v60 = "nw_http_connect_reattach_protocol";
        v61 = 2082;
        v62 = (v14 + 284);
        v63 = 2080;
        v64 = " ";
        v65 = 2114;
        v66 = v15;
        v37 = "%{public}s %{public}s%sCannot call add input handler for %{public}@ because it is not valid";
        goto LABEL_51;
      }
    }
  }

  else if ((*(v14 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v60 = "nw_http_connect_reattach_protocol";
      v61 = 2082;
      v62 = (v14 + 284);
      v63 = 2080;
      v64 = " ";
      v65 = 2114;
      v66 = v15;
      v37 = "%{public}s %{public}s%sPath could not create protocol for %{public}@";
LABEL_51:
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x2Au);
    }
  }

LABEL_52:
  v38 = *(a1 + 40);
  if (!v38 || (*(v38 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v41 = v40 == 0;
      if (v40)
      {
        v42 = (v40 + 284);
      }

      else
      {
        v42 = "";
      }

      *buf = 136446978;
      v60 = "nw_http_connect_reattach_protocols_block_invoke";
      v61 = 2082;
      v62 = v42;
      if (v41)
      {
        v43 = "";
      }

      else
      {
        v43 = " ";
      }

      v63 = 2080;
      v64 = v43;
      v65 = 2114;
      v66 = a3;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to attach protocol %{public}@", buf, 0x2Au);
    }
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

BOOL nw_http_connect_in_async(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 276) != 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_connect_in_async";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null http_connect", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_connect_in_async";
        v6 = "%{public}s called with null http_connect";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v12 = "nw_http_connect_in_async";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "nw_http_connect_in_async";
        v6 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_connect_in_async";
        v6 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_http_connect_finalize_request(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_http_connect_finalize_request";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null http_connect", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v11 = "nw_http_connect_finalize_request";
      v5 = "%{public}s called with null http_connect";
      goto LABEL_18;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v11 = "nw_http_connect_finalize_request";
      v5 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_18;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "nw_http_connect_finalize_request";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_19;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "nw_http_connect_finalize_request";
      v5 = "%{public}s called with null http_connect, no backtrace";
LABEL_18:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_19:
  if (v2)
  {
    free(v2);
  }
}

void nw_protocol_http_connect_connected(nw_protocol *a1, nw_protocol *a2)
{
  v150 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v61 = a1;
    v62 = a2;
    v63 = __nwlog_obj();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
    a2 = v62;
    v65 = v64;
    a1 = v61;
    if (v65)
    {
      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a2 = v62;
      a1 = v61;
    }
  }

  if (!a1)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v140 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null protocol", buf, 12);
    uu[0] = 16;
    LOBYTE(v147) = 0;
    if (!__nwlog_fault(v32, uu, &v147))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol";
      goto LABEL_197;
    }

    if (v147 != 1)
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_197;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = uu[0];
    v80 = os_log_type_enabled(v67, uu[0]);
    if (!backtrace_string)
    {
      if (!v80)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_197;
    }

    if (!v80)
    {
      goto LABEL_136;
    }

    *buf = 136446466;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = backtrace_string;
    v76 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_134;
  }

  handle = a1->handle;
  if (!handle)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    v140 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null http_connect", buf, 12);
    uu[0] = 16;
    LOBYTE(v147) = 0;
    if (!__nwlog_fault(v32, uu, &v147))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect";
      goto LABEL_197;
    }

    if (v147 != 1)
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_197;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = uu[0];
    v81 = os_log_type_enabled(v67, uu[0]);
    if (!backtrace_string)
    {
      if (!v81)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_197;
    }

    if (!v81)
    {
      goto LABEL_136;
    }

    *buf = 136446466;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = backtrace_string;
    v76 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_134:
    v77 = v67;
    v78 = v68;
    v79 = 22;
LABEL_135:
    _os_log_impl(&dword_181A37000, v77, v78, v76, buf, v79);
LABEL_136:
    free(backtrace_string);
    if (v32)
    {
      goto LABEL_62;
    }

    return;
  }

  if (!a2)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    v140 = "nw_protocol_http_connect_connected";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null other_protocol", buf, 12);
    uu[0] = 16;
    LOBYTE(v147) = 0;
    if (!__nwlog_fault(v32, uu, &v147))
    {
      goto LABEL_61;
    }

    if (uu[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol";
      goto LABEL_197;
    }

    if (v147 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = uu[0];
      v82 = os_log_type_enabled(v67, uu[0]);
      if (backtrace_string)
      {
        if (!v82)
        {
          goto LABEL_136;
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = backtrace_string;
        v76 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_134;
      }

      if (!v82)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v67 = __nwlog_obj();
      v68 = uu[0];
      if (!os_log_type_enabled(v67, uu[0]))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v140 = "nw_protocol_http_connect_connected";
      v35 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_197:
    v40 = v67;
    v41 = v68;
    v42 = 12;
    goto LABEL_60;
  }

  if (a1->output_handler == a2)
  {
    v6 = *(handle + 184);
    *(handle + 184) = v6 | 0x10;
    v7 = *(handle + 70);
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          return;
        }

        v8 = *(handle + 26);
        if (!v8 || (v6 & 8) != 0)
        {
          return;
        }

        v9 = handle;
        goto LABEL_99;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_95;
      }

      path = nw_protocol_http_connect_get_path((handle + 24));
      if (path)
      {
        v18 = path;
        v19 = _nw_path_copy_parameters(v18);

        if (v19)
        {
          v20 = _nw_parameters_copy_context();
          if (v20)
          {
            v21 = v20;
            v22 = nw_path_copy_flow_registration(v20, (handle + 24));
            if (!v22)
            {
              if ((*(handle + 184) & 0x80) == 0)
              {
                v44 = __nwlog_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v140 = "nw_http_connect_keep_path_flow_registration_open";
                  v141 = 2082;
                  v142 = handle + 284;
                  v143 = 2080;
                  v144 = " ";
                  _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to copy flow registration", buf, 0x20u);
                }
              }

              goto LABEL_94;
            }

            v23 = v22;
            *uu = 0;
            v149 = 0;
            v138 = 0;
            if (nw_path_flow_registration_get_nexus_instance(v18, v22, uu, &v138))
            {
              v147 = 0uLL;
              v137 = 0;
              nw_path_flow_registration_get_id(v23, &v147);
              v24 = _nw_path_copy_flow_for_registration(v18, &v147);
              if (v24)
              {
                v25 = v24;
                nexus_key = nw_path_flow_get_nexus_key(v24, &v137);
                v136 = 16;
                can_support_user_packet_pool = nw_path_flow_registration_can_support_user_packet_pool(v18, v23);
                if (nw_path_flow_registration_should_use_event_ring(v18, v23))
                {
                  v28 = 2;
                }

                else
                {
                  v28 = 0;
                }

                BYTE4(v136) = v28 | can_support_user_packet_pool;
                v135 = nexus_key;
                v29 = nw_channel_create_with_attributes(v21, uu, v138, &v135);
                if (v29)
                {
                  v30 = v29;
                  nw_channel_set_keep_path_flow_registration_open(v29, v23);
                  os_release(v30);
                }

                else if ((*(handle + 184) & 0x80) == 0)
                {
                  v58 = __nwlog_obj();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v140 = "nw_http_connect_keep_path_flow_registration_open";
                    v141 = 2082;
                    v142 = handle + 284;
                    v143 = 2080;
                    v144 = " ";
                    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to get channel", buf, 0x20u);
                  }
                }

                os_release(v23);
                v47 = v25;
                goto LABEL_93;
              }

              if ((*(handle + 184) & 0x80) != 0 || (v45 = __nwlog_obj(), !os_log_type_enabled(v45, OS_LOG_TYPE_ERROR)))
              {
LABEL_78:
                v47 = v23;
LABEL_93:
                os_release(v47);
LABEL_94:
                os_release(v21);
                os_release(v19);
                goto LABEL_95;
              }

              *buf = 136446722;
              v140 = "nw_http_connect_keep_path_flow_registration_open";
              v141 = 2082;
              v142 = handle + 284;
              v143 = 2080;
              v144 = " ";
              v46 = "%{public}s %{public}s%sUnable to copy flow from registration id";
            }

            else
            {
              if ((*(handle + 184) & 0x80) != 0)
              {
                goto LABEL_78;
              }

              v45 = __nwlog_obj();
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_78;
              }

              *buf = 136446722;
              v140 = "nw_http_connect_keep_path_flow_registration_open";
              v141 = 2082;
              v142 = handle + 284;
              v143 = 2080;
              v144 = " ";
              v46 = "%{public}s %{public}s%sUnable to get nexus instance";
            }

            _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, v46, buf, 0x20u);
            goto LABEL_78;
          }

          os_release(v19);
          if ((*(handle + 184) & 0x80) == 0)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v140 = "nw_http_connect_keep_path_flow_registration_open";
              v141 = 2082;
              v142 = handle + 284;
              v143 = 2080;
              v144 = " ";
              v39 = "%{public}s %{public}s%sUnable to get context";
              goto LABEL_67;
            }
          }

LABEL_95:
          v59 = mach_continuous_time();
          if (v59 <= 1)
          {
            v60 = 1;
          }

          else
          {
            v60 = v59;
          }

          *handle = v60;
          *(handle + 70) = 1;
          v9 = handle;
          v8 = 0;
LABEL_99:
          if ((nw_http_connect_send_request(v9, v8) & 1) == 0)
          {
            nw_http_connect_fail(handle, 22);
          }

          return;
        }

        if ((*(handle + 184) & 0x80) != 0)
        {
          goto LABEL_95;
        }

        v38 = __nwlog_obj();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        *buf = 136446722;
        v140 = "nw_http_connect_keep_path_flow_registration_open";
        v141 = 2082;
        v142 = handle + 284;
        v143 = 2080;
        v144 = " ";
        v39 = "%{public}s %{public}s%sUnable to get parameters";
      }

      else
      {
        if ((*(handle + 184) & 0x80) != 0)
        {
          goto LABEL_95;
        }

        v38 = __nwlog_obj();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        *buf = 136446722;
        v140 = "nw_http_connect_keep_path_flow_registration_open";
        v141 = 2082;
        v142 = handle + 284;
        v143 = 2080;
        v144 = " ";
        v39 = "%{public}s %{public}s%sUnable to get path";
      }

LABEL_67:
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x20u);
      goto LABEL_95;
    }

    if (v7 == 3)
    {
      if ((v6 & 0x80) != 0)
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = handle + 284;
      *buf = 136446722;
      v140 = "nw_protocol_http_connect_connected";
      v141 = 2082;
      v142 = handle + 284;
      v143 = 2080;
      v144 = " ";
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%shttp connect state is failed", buf, 32);
      uu[0] = 16;
      LOBYTE(v147) = 0;
      if (!__nwlog_fault(v32, uu, &v147))
      {
        goto LABEL_61;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v31;
        v143 = 2080;
        v144 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed";
      }

      else if (v147 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = uu[0];
        v37 = os_log_type_enabled(v33, uu[0]);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446978;
            v140 = "nw_protocol_http_connect_connected";
            v141 = 2082;
            v142 = v31;
            v143 = 2080;
            v144 = " ";
            v145 = 2082;
            v146 = v36;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%shttp connect state is failed, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v36);
          goto LABEL_61;
        }

        if (!v37)
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v31;
        v143 = 2080;
        v144 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = uu[0];
        if (!os_log_type_enabled(v33, uu[0]))
        {
          goto LABEL_61;
        }

        *buf = 136446722;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v31;
        v143 = 2080;
        v144 = " ";
        v35 = "%{public}s %{public}s%shttp connect state is failed, backtrace limit exceeded";
      }

      v40 = v33;
      v41 = v34;
      v42 = 32;
LABEL_60:
      _os_log_impl(&dword_181A37000, v40, v41, v35, buf, v42);
      goto LABEL_61;
    }

    if (v7 != 2)
    {
      return;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        connected = callbacks->connected;
        if (connected)
        {
          v13 = a1;
          connected(a1->default_input_handler, a1->output_handler);
          goto LABEL_23;
        }
      }
    }

    v86 = a1;
    v87 = __nwlog_obj();
    v13 = v86;
    v88 = v86->default_input_handler;
    v89 = "invalid";
    if (v88)
    {
      name = v88->identifier->name;
      if (name)
      {
        v89 = name;
      }
    }

    *buf = 136446466;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = v89;
    v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
    uu[0] = 16;
    LOBYTE(v147) = 0;
    if (__nwlog_fault(v91, uu, &v147))
    {
      if (uu[0] == 17)
      {
        v92 = __nwlog_obj();
        v93 = uu[0];
        if (!os_log_type_enabled(v92, uu[0]))
        {
          goto LABEL_214;
        }

        v94 = v13->default_input_handler;
        v95 = "invalid";
        if (v94)
        {
          v96 = v94->identifier->name;
          if (v96)
          {
            v95 = v96;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v95;
        v97 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_213;
      }

      if (v147 != 1)
      {
        v92 = __nwlog_obj();
        v93 = uu[0];
        if (!os_log_type_enabled(v92, uu[0]))
        {
          goto LABEL_214;
        }

        v122 = v13->default_input_handler;
        v123 = "invalid";
        if (v122)
        {
          v124 = v122->identifier->name;
          if (v124)
          {
            v123 = v124;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v123;
        v97 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_213;
      }

      v112 = __nw_create_backtrace_string();
      v92 = __nwlog_obj();
      v93 = uu[0];
      v113 = os_log_type_enabled(v92, uu[0]);
      if (v112)
      {
        if (v113)
        {
          v114 = v13->default_input_handler;
          v115 = "invalid";
          if (v114)
          {
            v116 = v114->identifier->name;
            if (v116)
            {
              v115 = v116;
            }
          }

          *buf = 136446722;
          v140 = "nw_protocol_http_connect_connected";
          v141 = 2082;
          v142 = v115;
          v143 = 2082;
          v144 = v112;
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v112);
        goto LABEL_214;
      }

      if (v113)
      {
        v128 = v13->default_input_handler;
        v129 = "invalid";
        if (v128)
        {
          v130 = v128->identifier->name;
          if (v130)
          {
            v129 = v130;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v129;
        v97 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_213:
        _os_log_impl(&dword_181A37000, v92, v93, v97, buf, 0x16u);
      }
    }

LABEL_214:
    if (v91)
    {
      free(v91);
    }

LABEL_23:
    v14 = v13->default_input_handler;
    if (v14)
    {
      v15 = v14->callbacks;
      if (v15)
      {
        v16 = v15->connected;
        if (v16)
        {
          v16();
          return;
        }
      }
    }

    v98 = __nwlog_obj();
    v99 = v13->default_input_handler;
    v100 = "invalid";
    if (v99)
    {
      v101 = v99->identifier->name;
      if (v101)
      {
        v100 = v101;
      }
    }

    *buf = 136446466;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = v100;
    LODWORD(v134) = 22;
    v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, v134);
    uu[0] = 16;
    LOBYTE(v147) = 0;
    if (__nwlog_fault(v102, uu, &v147))
    {
      if (uu[0] == 17)
      {
        v103 = __nwlog_obj();
        v104 = uu[0];
        if (!os_log_type_enabled(v103, uu[0]))
        {
          goto LABEL_222;
        }

        v105 = v13->default_input_handler;
        v106 = "invalid";
        if (v105)
        {
          v107 = v105->identifier->name;
          if (v107)
          {
            v106 = v107;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v106;
        v108 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_221:
        _os_log_impl(&dword_181A37000, v103, v104, v108, buf, 0x16u);
        goto LABEL_222;
      }

      if (v147 != 1)
      {
        v103 = __nwlog_obj();
        v104 = uu[0];
        if (!os_log_type_enabled(v103, uu[0]))
        {
          goto LABEL_222;
        }

        v125 = v13->default_input_handler;
        v126 = "invalid";
        if (v125)
        {
          v127 = v125->identifier->name;
          if (v127)
          {
            v126 = v127;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v126;
        v108 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_221;
      }

      v117 = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v104 = uu[0];
      v118 = os_log_type_enabled(v103, uu[0]);
      if (!v117)
      {
        if (!v118)
        {
          goto LABEL_222;
        }

        v131 = v13->default_input_handler;
        v132 = "invalid";
        if (v131)
        {
          v133 = v131->identifier->name;
          if (v133)
          {
            v132 = v133;
          }
        }

        *buf = 136446466;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v132;
        v108 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
        goto LABEL_221;
      }

      if (v118)
      {
        v119 = v13->default_input_handler;
        v120 = "invalid";
        if (v119)
        {
          v121 = v119->identifier->name;
          if (v121)
          {
            v120 = v121;
          }
        }

        *buf = 136446722;
        v140 = "nw_protocol_http_connect_connected";
        v141 = 2082;
        v142 = v120;
        v143 = 2082;
        v144 = v117;
        _os_log_impl(&dword_181A37000, v103, v104, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v117);
    }

LABEL_222:
    if (v102)
    {
      v43 = v102;
      goto LABEL_63;
    }

    return;
  }

  v3 = a1->default_input_handler;
  if (v3)
  {
    v4 = v3->callbacks;
    if (v4)
    {
      v5 = v4->connected;
      if (v5)
      {
        v5(a1->default_input_handler);
        return;
      }
    }
  }

  v48 = a1;
  v49 = __nwlog_obj();
  v50 = v48->default_input_handler;
  v51 = "invalid";
  if (v50)
  {
    v52 = v50->identifier->name;
    if (v52)
    {
      v51 = v52;
    }
  }

  *buf = 136446466;
  v140 = "nw_protocol_http_connect_connected";
  v141 = 2082;
  v142 = v51;
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
  uu[0] = 16;
  LOBYTE(v147) = 0;
  if (!__nwlog_fault(v32, uu, &v147))
  {
    goto LABEL_61;
  }

  if (uu[0] == 17)
  {
    v53 = __nwlog_obj();
    v54 = uu[0];
    if (os_log_type_enabled(v53, uu[0]))
    {
      v55 = v48->default_input_handler;
      v56 = "invalid";
      if (v55)
      {
        v57 = v55->identifier->name;
        if (v57)
        {
          v56 = v57;
        }
      }

      *buf = 136446466;
      v140 = "nw_protocol_http_connect_connected";
      v141 = 2082;
      v142 = v56;
      v35 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_174:
      v40 = v53;
      v41 = v54;
      v42 = 22;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (v147 != 1)
  {
    v53 = __nwlog_obj();
    v54 = uu[0];
    if (os_log_type_enabled(v53, uu[0]))
    {
      v83 = v48->default_input_handler;
      v84 = "invalid";
      if (v83)
      {
        v85 = v83->identifier->name;
        if (v85)
        {
          v84 = v85;
        }
      }

      *buf = 136446466;
      v140 = "nw_protocol_http_connect_connected";
      v141 = 2082;
      v142 = v84;
      v35 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_174;
    }

    goto LABEL_61;
  }

  backtrace_string = __nw_create_backtrace_string();
  v53 = __nwlog_obj();
  v54 = uu[0];
  v72 = os_log_type_enabled(v53, uu[0]);
  if (backtrace_string)
  {
    if (!v72)
    {
      goto LABEL_136;
    }

    v73 = v48->default_input_handler;
    v74 = "invalid";
    if (v73)
    {
      v75 = v73->identifier->name;
      if (v75)
      {
        v74 = v75;
      }
    }

    *buf = 136446722;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = v74;
    v143 = 2082;
    v144 = backtrace_string;
    v76 = "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s";
    v77 = v53;
    v78 = v54;
    v79 = 32;
    goto LABEL_135;
  }

  if (v72)
  {
    v109 = v48->default_input_handler;
    v110 = "invalid";
    if (v109)
    {
      v111 = v109->identifier->name;
      if (v111)
      {
        v110 = v111;
      }
    }

    *buf = 136446466;
    v140 = "nw_protocol_http_connect_connected";
    v141 = 2082;
    v142 = v110;
    v35 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
    goto LABEL_174;
  }

LABEL_61:
  if (v32)
  {
LABEL_62:
    v43 = v32;
LABEL_63:
    free(v43);
  }
}

uint64_t nw_http_connect_send_request(uint64_t a1, CFTypeRef cf)
{
  v183 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 368) & 0x80) == 0)
  {
    if (gLogDatapath == 1)
    {
      v138 = cf;
      v139 = __nwlog_obj();
      v140 = os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG);
      cf = v138;
      if (v140)
      {
        v141 = " ";
        v142 = (a1 + 284);
        *&buf[4] = "nw_http_connect_send_request";
        *buf = 136446722;
        if (!a1)
        {
          v141 = "";
          v142 = "";
        }

        *&buf[12] = 2082;
        *&buf[14] = v142;
        *&buf[22] = 2080;
        v181 = v141;
        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        cf = v138;
      }
    }

    if (!a1)
    {
      v133 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_request";
      v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s called with null http_connect", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v171[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v134, type, v171))
      {
        goto LABEL_331;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (!os_log_type_enabled(v135, type[0]))
        {
          goto LABEL_331;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v137 = "%{public}s called with null http_connect";
      }

      else if (v171[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = type[0];
        v144 = os_log_type_enabled(v135, type[0]);
        if (backtrace_string)
        {
          if (v144)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connect_send_request";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v135, v136, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_331;
        }

        if (!v144)
        {
LABEL_331:
          if (v134)
          {
            free(v134);
          }

          return 0;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v137 = "%{public}s called with null http_connect, no backtrace";
      }

      else
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (!os_log_type_enabled(v135, type[0]))
        {
          goto LABEL_331;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_send_request";
        v137 = "%{public}s called with null http_connect, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0xCu);
      goto LABEL_331;
    }
  }

  if (cf)
  {
    Request = CFRetain(cf);
    goto LABEL_7;
  }

  if ((*(a1 + 368) & 0x80) == 0 && gLogDatapath == 1)
  {
    v153 = __nwlog_obj();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  v27 = nw_endpoint_get_type(*(a1 + 144));
  if (v27 == nw_endpoint_type_address)
  {
    v29 = nw_endpoint_copy_address_string(*(a1 + 144));
    hostname = 0;
  }

  else
  {
    if (v27 != nw_endpoint_type_host)
    {
      if ((*(a1 + 368) & 0x80) == 0)
      {
        v48 = v27;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 1024;
          *(&v182 + 2) = v48;
          v50 = "%{public}s %{public}s%sUnsupported endpoint type: %d";
          v51 = v49;
          v52 = 38;
LABEL_84:
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
        }
      }

LABEL_85:
      nw_http_connect_fail(a1, 22);
      if ((*(a1 + 368) & 0x80) != 0)
      {
        return 0;
      }

LABEL_224:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v111 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to create request message", buf, 0x20u);
        return 0;
      }

      return 0;
    }

    hostname = nw_endpoint_get_hostname(*(a1 + 144));
    v29 = 0;
  }

  v39 = nw_endpoint_copy_port_string(*(a1 + 144));
  if (!v39)
  {
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v50 = "%{public}s %{public}s%sCannot connect without port";
        v51 = v59;
        v52 = 32;
        goto LABEL_84;
      }
    }

    goto LABEL_85;
  }

  v40 = v39;
  v41 = *MEMORY[0x1E695E480];
  v42 = "";
  if (v29)
  {
    v42 = v29;
  }

  if (hostname)
  {
    v43 = hostname;
  }

  else
  {
    v43 = v42;
  }

  v44 = CFStringCreateWithFormat(v41, 0, @"%s:%s", v43, v39);
  if (!v44)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_191;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LODWORD(v161) = 32;
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sCFStringCreateWithFormat failed", buf, v161);
    type[0] = OS_LOG_TYPE_ERROR;
    v171[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v62, type, v171))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_189;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed";
        goto LABEL_188;
      }

      if (v171[0] != OS_LOG_TYPE_INFO)
      {
        v63 = __nwlog_obj();
        v64 = type[0];
        if (!os_log_type_enabled(v63, type[0]))
        {
          goto LABEL_189;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed, backtrace limit exceeded";
        goto LABEL_188;
      }

      v72 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v64 = type[0];
      v73 = os_log_type_enabled(v63, type[0]);
      if (v72)
      {
        if (v73)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 2082;
          *(&v182 + 2) = v72;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s %{public}s%sCFStringCreateWithFormat failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v72);
        goto LABEL_189;
      }

      if (v73)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v65 = "%{public}s %{public}s%sCFStringCreateWithFormat failed, no backtrace";
LABEL_188:
        _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0x20u);
      }
    }

LABEL_189:
    if (v62)
    {
      free(v62);
    }

LABEL_191:
    if (!v29)
    {
LABEL_223:
      free(v40);
      if ((*(a1 + 368) & 0x80) != 0)
      {
        return 0;
      }

      goto LABEL_224;
    }

LABEL_222:
    free(v29);
    goto LABEL_223;
  }

  v45 = v44;
  v46 = CFURLCreateWithString(v41, v44, 0);
  if (!v46)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_220;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LODWORD(v161) = 32;
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sCFURLCreateWithString failed", buf, v161);
    type[0] = OS_LOG_TYPE_ERROR;
    v171[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, type, v171))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (!os_log_type_enabled(v69, type[0]))
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed";
LABEL_217:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x20u);
        goto LABEL_218;
      }

      if (v171[0] != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (!os_log_type_enabled(v69, type[0]))
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed, backtrace limit exceeded";
        goto LABEL_217;
      }

      v74 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v75 = os_log_type_enabled(v69, type[0]);
      if (!v74)
      {
        if (!v75)
        {
          goto LABEL_218;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v71 = "%{public}s %{public}s%sCFURLCreateWithString failed, no backtrace";
        goto LABEL_217;
      }

      if (v75)
      {
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 2082;
        *(&v182 + 2) = v74;
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s %{public}s%sCFURLCreateWithString failed, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v74);
    }

LABEL_218:
    if (v68)
    {
LABEL_219:
      free(v68);
    }

LABEL_220:
    v110 = v45;
    goto LABEL_221;
  }

  v47 = v46;
  Request = CFHTTPMessageCreateRequest(v41, @"CONNECT", v46, @"HTTP/1.1");
  CFRelease(v47);
  if (!Request)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_220;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LODWORD(v161) = 32;
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed", buf, v161);
    type[0] = OS_LOG_TYPE_ERROR;
    v171[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v68, type, v171))
    {
      goto LABEL_218;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed";
    }

    else if (v171[0] == OS_LOG_TYPE_INFO)
    {
      v85 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v86 = os_log_type_enabled(v69, type[0]);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 2082;
          *(&v182 + 2) = v85;
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v85);
        if (!v68)
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }

      if (!v86)
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, no backtrace";
    }

    else
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_218;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_create_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      v71 = "%{public}s %{public}s%sCFHTTPMessageCreateRequest failed, backtrace limit exceeded";
    }

    goto LABEL_217;
  }

  if (strcmp(v40, "443"))
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v45);
    goto LABEL_139;
  }

  v76 = CFStringCreateWithCString(v41, v43, 0x600u);
  if (!v76)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
LABEL_274:
      CFRelease(v45);
      v110 = Request;
      goto LABEL_221;
    }

    v95 = __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LODWORD(v161) = 32;
    v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v95, 16, "%{public}s %{public}s%sCFStringCreateWithCString failed", buf, v161);
    type[0] = OS_LOG_TYPE_ERROR;
    v171[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v96, type, v171))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v97 = __nwlog_obj();
        v98 = type[0];
        if (!os_log_type_enabled(v97, type[0]))
        {
          goto LABEL_272;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v99 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
        goto LABEL_271;
      }

      if (v171[0] != OS_LOG_TYPE_INFO)
      {
        v97 = __nwlog_obj();
        v98 = type[0];
        if (!os_log_type_enabled(v97, type[0]))
        {
          goto LABEL_272;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v99 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
        goto LABEL_271;
      }

      v165 = Request;
      v105 = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = type[0];
      v106 = os_log_type_enabled(v97, type[0]);
      if (v105)
      {
        if (v106)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_create_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 2082;
          *(&v182 + 2) = v105;
          _os_log_impl(&dword_181A37000, v97, v98, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v105);
        Request = v165;
        goto LABEL_272;
      }

      Request = v165;
      if (v106)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        v99 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
LABEL_271:
        _os_log_impl(&dword_181A37000, v97, v98, v99, buf, 0x20u);
      }
    }

LABEL_272:
    if (v96)
    {
      free(v96);
    }

    goto LABEL_274;
  }

  v77 = v76;
  CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v76);
  CFRelease(v77);
LABEL_139:
  CFHTTPMessageSetHeaderFieldValue(Request, @"Connection", @"keep-alive");
  CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"keep-alive");
  v78 = *(a1 + 184);
  if (v78)
  {
    v79 = v78;
    *type = 0;
    v167 = type;
    v168 = 0x2020000000;
    v169 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_proxy_options_get_http_proxy_authorization_header_block_invoke;
    v181 = &unk_1E6A3A858;
    *&v182 = type;
    nw_protocol_options_access_handle(v79, buf);
    v80 = *(v167 + 24);
    _Block_object_dispose(type, 8);

    if (v80)
    {
      v81 = CFStringCreateWithCString(v41, v80, 0x8000100u);
      if (v81)
      {
        v82 = v81;
        CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Authorization", v81);
        CFRelease(v82);
        goto LABEL_235;
      }

      if ((*(a1 + 368) & 0x80) == 0)
      {
        v164 = Request;
        v100 = __nwlog_obj();
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LODWORD(v161) = 32;
        v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s %{public}s%sCFStringCreateWithCString failed", buf, v161);
        type[0] = OS_LOG_TYPE_ERROR;
        v171[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v101, type, v171))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v102 = __nwlog_obj();
            v103 = type[0];
            if (os_log_type_enabled(v102, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v181 = " ";
              v104 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
LABEL_230:
              v112 = v102;
LABEL_231:
              _os_log_impl(&dword_181A37000, v112, v103, v104, buf, 0x20u);
            }
          }

          else if (v171[0] == OS_LOG_TYPE_INFO)
          {
            v107 = __nw_create_backtrace_string();
            v108 = __nwlog_obj();
            v103 = type[0];
            log = v108;
            v109 = os_log_type_enabled(v108, type[0]);
            if (v107)
            {
              if (v109)
              {
                *buf = 136446978;
                *&buf[4] = "nw_http_connect_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 284;
                *&buf[22] = 2080;
                v181 = " ";
                LOWORD(v182) = 2082;
                *(&v182 + 2) = v107;
                _os_log_impl(&dword_181A37000, log, v103, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v107);
              goto LABEL_232;
            }

            if (v109)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v181 = " ";
              v104 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
              v112 = log;
              goto LABEL_231;
            }
          }

          else
          {
            v102 = __nwlog_obj();
            v103 = type[0];
            if (os_log_type_enabled(v102, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_http_connect_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 284;
              *&buf[22] = 2080;
              v181 = " ";
              v104 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
              goto LABEL_230;
            }
          }
        }

LABEL_232:
        if (v101)
        {
          free(v101);
        }

        Request = v164;
      }
    }
  }

LABEL_235:
  CFRelease(v45);
  v113 = *(a1 + 216);
  if (v113)
  {
    CFRelease(v113);
    *(a1 + 216) = 0;
  }

  v114 = *(a1 + 192);
  if (v114)
  {
    CFRelease(v114);
    *(a1 + 192) = 0;
  }

  v115 = *(a1 + 208);
  if (v115)
  {
    CFRelease(v115);
    *(a1 + 208) = 0;
  }

  v116 = *(a1 + 160);
  if (!v116 || (v117 = os_retain(v116)) == 0)
  {
    v118 = *(a1 + 152);
    if (v118)
    {
      v119 = os_retain(v118);
      if (v119)
      {
        v117 = v119;
        v120 = nw_endpoint_copy_parent_endpoint(v119);
        if (v120)
        {
          v121 = v120;
          do
          {
            os_release(v117);
            v117 = v121;
            v121 = _nw_endpoint_copy_parent_endpoint(v117);
          }

          while (v121);
        }

        goto LABEL_248;
      }
    }

    if ((*(a1 + 368) & 0x80) == 0)
    {
      v128 = __nwlog_obj();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_create_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sunable to derive the correct proxy url", buf, 0x20u);
      }
    }

    v110 = Request;
LABEL_221:
    CFRelease(v110);
    if (!v29)
    {
      goto LABEL_223;
    }

    goto LABEL_222;
  }

LABEL_248:
  v122 = v117;
  v123 = _nw_endpoint_get_type(v122);

  if (v123 == 2)
  {
    if ((*(a1 + 368) & 0x100) != 0)
    {
      v124 = "https";
    }

    else
    {
      v124 = "http";
    }

    v125 = nw_endpoint_get_hostname(v122);
    port = nw_endpoint_get_port(v122);
    v127 = CFStringCreateWithFormat(v41, 0, @"%s://%s:%d/", v124, v125, port);
    goto LABEL_263;
  }

  if (nw_endpoint_get_type(v122) == nw_endpoint_type_address)
  {
    v129 = nw_endpoint_copy_address_string(v122);
    if (v129)
    {
      v130 = v129;
      if ((*(a1 + 368) & 0x100) != 0)
      {
        v131 = "https";
      }

      else
      {
        v131 = "http";
      }

      v132 = nw_endpoint_get_port(v122);
      v127 = CFStringCreateWithFormat(v41, 0, @"%s://%s:%d/", v131, v130, v132);
      free(v130);
LABEL_263:
      os_release(v122);
      if (v127)
      {
        *(a1 + 216) = CFURLCreateWithString(v41, v127, 0);
        CFRelease(v127);
      }

      goto LABEL_266;
    }
  }

  os_release(v122);
LABEL_266:
  *(a1 + 192) = CFRetain(Request);
  if (v29)
  {
    free(v29);
  }

  free(v40);
LABEL_7:
  v4 = &qword_1ED411000;
  if ((*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      LOWORD(v182) = 2048;
      *(&v182 + 2) = Request;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSending http_message %p", buf, 0x2Au);
    }
  }

  v6 = CFHTTPMessageCopySerializedMessage(Request);
  if (!v6)
  {
    if ((*(a1 + 368) & 0x80) != 0)
    {
LABEL_128:
      if (Request)
      {
        CFRelease(Request);
      }

      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = a1 + 284;
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_send_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LODWORD(v161) = 32;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed", buf, v161);
    type[0] = OS_LOG_TYPE_ERROR;
    v171[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v31, type, v171))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_126;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v181 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed";
        goto LABEL_125;
      }

      if (v171[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_126;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v181 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, backtrace limit exceeded";
        goto LABEL_125;
      }

      v53 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v33 = type[0];
      v54 = os_log_type_enabled(gLogObj, type[0]);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http_connect_send_request";
          *&buf[12] = 2082;
          *&buf[14] = v30;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 2082;
          *(&v182 + 2) = v53;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v53);
        goto LABEL_126;
      }

      if (v54)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_send_request";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v181 = " ";
        v34 = "%{public}s %{public}s%sCFHTTPMessageCopySerializedMessage failed, no backtrace";
LABEL_125:
        _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x20u);
      }
    }

LABEL_126:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_128;
  }

  v7 = v6;
  v8 = *(a1 + 200);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 200) = 0;
  }

  BytePtr = CFDataGetBytePtr(v7);
  Length = CFDataGetLength(v7);
  if (!BytePtr)
  {
    v145 = v7;
    v146 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    LODWORD(v161) = 12;
    v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null buffer", buf, v161);
    v171[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v178) = 0;
    if (!__nwlog_fault(v147, v171, &v178))
    {
      goto LABEL_342;
    }

    if (v171[0] == OS_LOG_TYPE_FAULT)
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null buffer";
      goto LABEL_341;
    }

    if (v178 != 1)
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_341;
    }

    v154 = __nw_create_backtrace_string();
    v148 = __nwlog_obj();
    v149 = v171[0];
    v155 = os_log_type_enabled(v148, v171[0]);
    if (!v154)
    {
      if (!v155)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_341;
    }

    if (v155)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v154;
      v156 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_314:
      _os_log_impl(&dword_181A37000, v148, v149, v156, buf, 0x16u);
    }

LABEL_315:
    free(v154);
    if (!v147)
    {
LABEL_344:
      v7 = v145;
      if ((*(a1 + 368) & 0x80) != 0)
      {
        goto LABEL_151;
      }

      goto LABEL_149;
    }

LABEL_343:
    free(v147);
    goto LABEL_344;
  }

  v11 = Length;
  if (!Length)
  {
    v145 = v7;
    v151 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    LODWORD(v161) = 12;
    v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v151, 16, "%{public}s called with null length", buf, v161);
    v171[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v178) = 0;
    if (!__nwlog_fault(v147, v171, &v178))
    {
      goto LABEL_342;
    }

    if (v171[0] == OS_LOG_TYPE_FAULT)
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null length";
      goto LABEL_341;
    }

    if (v178 != 1)
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null length, backtrace limit exceeded";
      goto LABEL_341;
    }

    v154 = __nw_create_backtrace_string();
    v148 = __nwlog_obj();
    v149 = v171[0];
    v157 = os_log_type_enabled(v148, v171[0]);
    if (!v154)
    {
      if (!v157)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null length, no backtrace";
      goto LABEL_341;
    }

    if (v157)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v154;
      v156 = "%{public}s called with null length, dumping backtrace:%{public}s";
      goto LABEL_314;
    }

    goto LABEL_315;
  }

  v178 = 0;
  v179 = &v178;
  v176 = 0;
  v177 = &v176;
  v12 = *(a1 + 56);
  if (!v12)
  {
    v145 = v7;
    v152 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connect_send_bytes";
    LODWORD(v161) = 12;
    v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v152, 16, "%{public}s called with null output_handler", buf, v161);
    v171[0] = OS_LOG_TYPE_ERROR;
    v175 = 0;
    if (!__nwlog_fault(v147, v171, &v175))
    {
      goto LABEL_342;
    }

    if (v171[0] == OS_LOG_TYPE_FAULT)
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null output_handler";
    }

    else if (v175 == 1)
    {
      v158 = __nw_create_backtrace_string();
      v148 = __nwlog_obj();
      v149 = v171[0];
      v159 = os_log_type_enabled(v148, v171[0]);
      if (v158)
      {
        if (v159)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connect_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = v158;
          _os_log_impl(&dword_181A37000, v148, v149, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v158);
LABEL_342:
        if (!v147)
        {
          goto LABEL_344;
        }

        goto LABEL_343;
      }

      if (!v159)
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v148 = __nwlog_obj();
      v149 = v171[0];
      if (!os_log_type_enabled(v148, v171[0]))
      {
        goto LABEL_342;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_connect_send_bytes";
      v150 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

LABEL_341:
    _os_log_impl(&dword_181A37000, v148, v149, v150, buf, 0xCu);
    goto LABEL_342;
  }

  v13 = (*(*(v12 + 24) + 88))(*(a1 + 56), a1 + 24, Length, Length, 0xFFFFFFFFLL, &v178);
  v14 = v13;
  v15 = v178;
  if (!v178 || !v13)
  {
    v4 = &qword_1ED411000;
    if (!v13 || (*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_148;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http_connect_send_bytes";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LOWORD(v182) = 1024;
    *(&v182 + 2) = v14;
    LODWORD(v161) = 38;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty", buf, v161);
    v171[0] = OS_LOG_TYPE_ERROR;
    v175 = 0;
    if (__nwlog_fault(v35, v171, &v175))
    {
      if (v171[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = v171[0];
        if (!os_log_type_enabled(gLogObj, v171[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty";
        goto LABEL_145;
      }

      if (v175 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = v171[0];
        if (!os_log_type_enabled(gLogObj, v171[0]))
        {
          goto LABEL_146;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, backtrace limit exceeded";
        goto LABEL_145;
      }

      v60 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = v171[0];
      v61 = os_log_type_enabled(gLogObj, v171[0]);
      if (v60)
      {
        if (v61)
        {
          *buf = 136447234;
          *&buf[4] = "nw_http_connect_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 284;
          *&buf[22] = 2080;
          v181 = " ";
          LOWORD(v182) = 1024;
          *(&v182 + 2) = v14;
          WORD3(v182) = 2082;
          *(&v182 + 1) = v60;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v60);
        v4 = &qword_1ED411000;
        goto LABEL_146;
      }

      v4 = &qword_1ED411000;
      if (v61)
      {
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v14;
        v38 = "%{public}s %{public}s%sOutput handler reported %u frames to write, but array is empty, no backtrace";
LABEL_145:
        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x26u);
      }
    }

LABEL_146:
    if (v35)
    {
      free(v35);
    }

LABEL_148:
    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_151;
    }

LABEL_149:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v83 = v4[275];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to send http connect request", buf, 0x20u);
    }

LABEL_151:
    v84 = 0;
    if (!Request)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  v163 = Request;
  while (1)
  {
    v16 = *(v15 + 32);
    if (v16 || *(v15 + 40))
    {
      v17 = *(v15 + 112);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = 0;
      v17 = *(v15 + 112);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if ((*(v15 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v15, *(v15 + 88)))
    {
      LODWORD(v17) = 0;
LABEL_29:
      v19 = 0;
      goto LABEL_30;
    }

    LODWORD(v17) = *(v15 + 52);
    v18 = *(v15 + 56);
    if (v17)
    {
      LODWORD(v17) = v17 - (v18 + *(v15 + 60));
    }

    v19 = (*(v15 + 112) + v18);
LABEL_30:
    v20 = v17 >= v11 ? v11 : v17;
    memcpy(v19, BytePtr, v20);
    if (!nw_frame_claim(v15, v21, v20, 0))
    {
      break;
    }

    nw_frame_collapse(v15);
    nw_frame_unclaim(v15, v22, v20, 0);
    v23 = *(v15 + 32);
    v24 = *(v15 + 40);
    v25 = (v23 + 40);
    if (!v23)
    {
      v25 = &v179;
    }

    *v25 = v24;
    *v24 = v23;
    v26 = v177;
    *(v15 + 32) = 0;
    *(v15 + 40) = v26;
    *v26 = v15;
    v177 = (v15 + 32);
    if (v16)
    {
      BytePtr += v20;
      v15 = v16;
      v11 -= v20;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_165;
  }

  if ((*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http_connect_send_bytes";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 284;
    *&buf[22] = 2080;
    v181 = " ";
    LOWORD(v182) = 1024;
    *(&v182 + 2) = v20;
    LODWORD(v161) = 38;
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%sClaiming frame with %u bytes failed", buf, v161);
    v171[0] = OS_LOG_TYPE_ERROR;
    v175 = 0;
    if (!__nwlog_fault(v55, v171, &v175))
    {
      goto LABEL_163;
    }

    if (v171[0] != OS_LOG_TYPE_FAULT)
    {
      if (v175 == 1)
      {
        v66 = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v57 = v171[0];
        v67 = os_log_type_enabled(v56, v171[0]);
        if (v66)
        {
          if (v67)
          {
            *buf = 136447234;
            *&buf[4] = "nw_http_connect_send_bytes";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 284;
            *&buf[22] = 2080;
            v181 = " ";
            LOWORD(v182) = 1024;
            *(&v182 + 2) = v20;
            WORD3(v182) = 2082;
            *(&v182 + 1) = v66;
            _os_log_impl(&dword_181A37000, v56, v57, "%{public}s %{public}s%sClaiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v66);
          goto LABEL_163;
        }

        if (!v67)
        {
          goto LABEL_163;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v20;
        v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed, no backtrace";
      }

      else
      {
        v56 = __nwlog_obj();
        v57 = v171[0];
        if (!os_log_type_enabled(v56, v171[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v20;
        v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed, backtrace limit exceeded";
      }

LABEL_162:
      _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0x26u);
      goto LABEL_163;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v56 = gLogObj;
    v57 = v171[0];
    if (os_log_type_enabled(gLogObj, v171[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connect_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      LOWORD(v182) = 1024;
      *(&v182 + 2) = v20;
      v58 = "%{public}s %{public}s%sClaiming frame with %u bytes failed";
      goto LABEL_162;
    }

LABEL_163:
    if (v55)
    {
      free(v55);
    }
  }

LABEL_165:
  (*(*(v12 + 24) + 96))(v12, &v176);
  Request = v163;
  if (v178)
  {
    *v171 = 0;
    v172 = v171;
    v173 = 0x2000000000;
    v174 = 0;
    *type = MEMORY[0x1E69E9820];
    v167 = 0x40000000;
    v168 = ___ZL26nw_http_connect_send_bytesP24nw_protocol_http_connectPKhj_block_invoke;
    v169 = &unk_1E6A31EC8;
    v170 = v171;
    do
    {
      v87 = v178;
      if (!v178)
      {
        break;
      }

      v88 = *(v178 + 32);
      v89 = *(v178 + 40);
      v90 = (v88 + 40);
      if (!v88)
      {
        v90 = &v179;
      }

      *v90 = v89;
      *v89 = v88;
      *(v87 + 32) = 0;
      *(v87 + 40) = 0;
    }

    while (((v168)(type) & 1) != 0);
    if ((*(a1 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v92 = *(v172 + 6);
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 284;
        *&buf[22] = 2080;
        v181 = " ";
        LOWORD(v182) = 1024;
        *(&v182 + 2) = v92;
        _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to use %u frames, marking as failed", buf, 0x26u);
      }
    }

    _Block_object_dispose(v171, 8);
  }

  v93 = *(a1 + 168);
  if ((!v93 || *(v93 + 132) != 4) && (*(a1 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v94 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 284;
      *&buf[22] = 2080;
      v181 = " ";
      _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sSent http connect request to proxy", buf, 0x20u);
    }
  }

  *(a1 + 368) |= 8u;
  v84 = 1;
  if (v163)
  {
LABEL_152:
    CFRelease(Request);
  }

LABEL_153:
  CFRelease(v7);
  return v84;
}