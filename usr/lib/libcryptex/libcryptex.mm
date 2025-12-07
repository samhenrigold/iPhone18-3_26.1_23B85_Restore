SimpleSession *simple_session_create(uint64_t a1)
{
  v2 = [SimpleSession alloc];

  return [(SimpleSession *)v2 initWithFlags:a1];
}

uint64_t simple_session_set_homedir_size(void *a1, uint64_t a2, CFErrorRef *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = [v5 session];
  v7 = session_set_homedir_size(v6, a2);

  if (v7)
  {
    v9 = _simple_session_log(v8);

    if (v9)
    {
      v11 = _simple_session_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v27 = 67109120;
      v28 = v7;
      v24 = 8;
      v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_2986C0000, v11, 16, "Unable to set simple session homedir size %{darwin.errno}d", &v27, v24);
    }

    else
    {
      v27 = 67109120;
      v28 = v7;
      v26 = 8;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unable to set simple session homedir size %{darwin.errno}d", &v27, v26);
    }

    Error = createError("simple_session_set_homedir_size", "simple_session.m", 73, "com.apple.security.cryptex.posix", v7, 0, v13);
    free(v13);
    if (a3 && Error)
    {
      v16 = _simple_session_log(v15);

      if (v16)
      {
        v18 = _simple_session_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        LOWORD(v27) = 0;
        LODWORD(v25) = 2;
        v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_2986C0000, v18, 16, "Simple Session Homedir Setup Failed", &v27, v25);
      }

      else
      {
        LOWORD(v27) = 0;
        LODWORD(v25) = 2;
        v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Simple Session Homedir Setup Failed", &v27, v25);
      }

      v22 = createError("simple_session_set_homedir_size", "simple_session.m", 78, "com.apple.security.cryptex", 14, Error, v20);
      free(v20);
      *a3 = v22;
      goto LABEL_19;
    }

    if (Error)
    {
LABEL_19:
      CFRelease(Error);
      v21 = 0;
      goto LABEL_20;
    }
  }

  v21 = 1;
LABEL_20:

  return v21;
}

void sub_2986C1658(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

id _simple_session_log(uint64_t a1)
{
  if (_simple_session_log_onceToken != -1)
  {
    _simple_session_log_cold_1();
  }

  v2 = _simple_session_log_trampoline_log;

  return v2;
}

uint64_t simple_session_add_session_environment(void *a1, void *a2, CFErrorRef *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v7 = [v5 session];
  v8 = session_add_session_environment(v7, v6);

  if (v8)
  {
    v10 = _simple_session_log(v9);

    if (v10)
    {
      v12 = _simple_session_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v28 = 67109120;
      v29 = v8;
      v25 = 8;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986C0000, v12, 16, "Unable to add simple session enviroment %{darwin.errno}d", &v28, v25);
    }

    else
    {
      v28 = 67109120;
      v29 = v8;
      v27 = 8;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unable to add simple session enviroment %{darwin.errno}d", &v28, v27);
    }

    Error = createError("simple_session_add_session_environment", "simple_session.m", 91, "com.apple.security.cryptex.posix", v8, 0, v14);
    free(v14);
    if (a3 && Error)
    {
      v17 = _simple_session_log(v16);

      if (v17)
      {
        v19 = _simple_session_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        LOWORD(v28) = 0;
        LODWORD(v26) = 2;
        v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "Simple Session Enviorment Setup Failed", &v28, v26);
      }

      else
      {
        LOWORD(v28) = 0;
        LODWORD(v26) = 2;
        v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Simple Session Enviorment Setup Failed", &v28, v26);
      }

      v23 = createError("simple_session_add_session_environment", "simple_session.m", 96, "com.apple.security.cryptex", 14, Error, v21);
      free(v21);
      *a3 = v23;
      goto LABEL_19;
    }

    if (Error)
    {
LABEL_19:
      CFRelease(Error);
      v22 = 0;
      goto LABEL_20;
    }
  }

  v22 = 1;
LABEL_20:

  return v22;
}

void sub_2986C19B0(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t simple_session_activate(void *a1, CFErrorRef *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = [v3 session];
  v5 = session_activate(v4);

  if (v5)
  {
    v7 = _simple_session_log(v6);

    if (v7)
    {
      v9 = _simple_session_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v35 = 67109120;
      v36 = v5;
      v30 = 8;
      v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986C0000, v9, 16, "Unable to activate simple session %{darwin.errno}d", &v35, v30);
    }

    else
    {
      v35 = 67109120;
      v36 = v5;
      v33 = 8;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unable to activate simple session %{darwin.errno}d", &v35, v33);
    }

    Error = createError("simple_session_activate", "simple_session.m", 110, "com.apple.security.cryptex.posix", v5, 0, v11);
  }

  else
  {
    v12 = [v3 session];
    v13 = session_start(v12);

    if (!v13)
    {
      goto LABEL_25;
    }

    v15 = _simple_session_log(v14);

    if (v15)
    {
      v17 = _simple_session_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v35 = 67109120;
      v36 = v13;
      v32 = 8;
      v11 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986C0000, v17, 16, "Unable to start simple session %{darwin.errno}d", &v35, v32);
    }

    else
    {
      v35 = 67109120;
      v36 = v13;
      v34 = 8;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unable to start simple session %{darwin.errno}d", &v35, v34);
    }

    Error = createError("simple_session_activate", "simple_session.m", 117, "com.apple.security.cryptex.posix", v13, 0, v11);
  }

  v20 = Error;
  free(v11);
  if (a2 && v20)
  {
    v22 = _simple_session_log(v21);

    if (v22)
    {
      v24 = _simple_session_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      LOWORD(v35) = 0;
      LODWORD(v31) = 2;
      v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_2986C0000, v24, 16, "Simple Session Activate Failed", &v35, v31);
    }

    else
    {
      LOWORD(v35) = 0;
      LODWORD(v31) = 2;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Simple Session Activate Failed", &v35, v31);
    }

    v28 = createError("simple_session_activate", "simple_session.m", 124, "com.apple.security.cryptex", 14, v20, v26);
    free(v26);
    *a2 = v28;
    goto LABEL_28;
  }

  if (v20)
  {
LABEL_28:
    CFRelease(v20);
    v27 = 0;
    goto LABEL_29;
  }

LABEL_25:
  v27 = 1;
LABEL_29:

  return v27;
}

uint64_t simple_session_stop(void *a1, CFErrorRef *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = [v3 session];
  v5 = session_stop(v4);

  if (v5)
  {
    v7 = _simple_session_log(v6);

    if (v7)
    {
      v9 = _simple_session_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v25 = 67109120;
      v26 = v5;
      v22 = 8;
      v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_2986C0000, v9, 16, "Unable to stop session %{darwin.errno}d", &v25, v22);
    }

    else
    {
      v25 = 67109120;
      v26 = v5;
      v24 = 8;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Unable to stop session %{darwin.errno}d", &v25, v24);
    }

    Error = createError("simple_session_stop", "simple_session.m", 139, "com.apple.security.cryptex.posix", v5, 0, v11);
    free(v11);
    if (a2 && Error)
    {
      v14 = _simple_session_log(v13);

      if (v14)
      {
        v16 = _simple_session_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        LOWORD(v25) = 0;
        LODWORD(v23) = 2;
        v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986C0000, v16, 16, "Simple Session Halt Failed", &v25, v23);
      }

      else
      {
        LOWORD(v25) = 0;
        LODWORD(v23) = 2;
        v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Simple Session Halt Failed", &v25, v23);
      }

      v20 = createError("simple_session_stop", "simple_session.m", 146, "com.apple.security.cryptex", 14, Error, v18);
      free(v18);
      *a2 = v20;
      goto LABEL_19;
    }

    if (Error)
    {
LABEL_19:
      CFRelease(Error);
      v19 = 0;
      goto LABEL_20;
    }
  }

  v19 = 1;
LABEL_20:

  return v19;
}

void sub_2986C20D8(_Unwind_Exception *a1)
{
  free(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

char *simple_session_copy_homedir(void *a1)
{
  v1 = [a1 session];
  homedir = session_get_homedir(v1);
  v3 = strdup(homedir);

  return v3;
}

uint64_t simple_session_get_uuid(void *a1, unsigned __int8 *a2)
{
  v3 = [a1 session];
  uuid = session_get_uuid(v3, a2);

  return uuid;
}

uint64_t simple_session_get_uid(void *a1)
{
  v1 = [a1 session];
  uid = session_get_uid(v1);

  return uid;
}

char *simple_session_copy_name(void *a1)
{
  v1 = [a1 session];
  name = session_get_name(v1);
  v3 = strdup(name);

  return v3;
}

uint64_t ___simple_session_log_block_invoke()
{
  _simple_session_log_trampoline_log = os_log_create("com.apple.libcryptex", "simple_session_spi");

  return MEMORY[0x2A1C71028]();
}

CFErrorRef img4_chip_instance_from_xpc(void *a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = v3;
  v43[0] = 0;
  *(v43 + 6) = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v42, 0, 19);
  if (!v3)
  {
    LOWORD(v35) = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid chip instance XPC object.", &v35, 2);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 94, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v3, "img4_chip_omit", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_omit";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 98, "com.apple.security.cryptex", 11, 0, v5);
LABEL_23:
    v11 = Error;
    free(v5);
    goto LABEL_24;
  }

  v7 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cepo", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v8 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_bord", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v9 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_chip", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v10 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_sdom", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v33 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_ecid", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_ecid";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 103, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v13 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cpro", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_cpro";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v14);
LABEL_79:
    v19 = v15;
    free(v14);
    v11 = v19;
    goto LABEL_24;
  }

  v16 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_cpro";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_csec", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_csec";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v17 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_csec";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_epro", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_epro";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v32 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_epro";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esec", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_esec";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v31 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_esec";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_iuou", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_iuou";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v30 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_iuou";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_rsch", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_rsch";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v29 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_rsch";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_euou", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_euou";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v28 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_euou";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esdm", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_esdm";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v27 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_esdm";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fpgt", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_fpgt";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v26 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_fpgt";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fchp", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_fchp";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v25 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_fchp";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_type", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_type";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v24 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_type";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_styp", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_styp";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v23 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_styp";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_clas", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_clas";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Missing key: %s", &v35);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v18 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_clas";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Invalid value (%llu) for key: %s", &v35, 22);
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v20 = v39;
  *(a2 + 77) = v40;
  v21 = v42[0];
  *(a2 + 93) = v41;
  *(a2 + 109) = v21;
  *a2 = 6;
  *(a2 + 2) = v43[0];
  *(a2 + 8) = *(v43 + 6);
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 28) = v9;
  *(a2 + 32) = v10;
  *(a2 + 36) = v33;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16 & 1;
  *(a2 + 49) = v17 & 1;
  *(a2 + 50) = v32 & 1;
  *(a2 + 51) = v31 & 1;
  *(a2 + 52) = v30 & 1;
  *(a2 + 53) = v29 & 1;
  *(a2 + 54) = v28 & 1;
  *(a2 + 56) = v27;
  *(a2 + 60) = v26 & 1;
  v22 = *(v42 + 15);
  *(a2 + 61) = v20;
  *(a2 + 124) = v22;
  *(a2 + 128) = v25;
  *(a2 + 132) = v24;
  *(a2 + 136) = v23;
  *(a2 + 140) = v18;
  v11 = 0;
LABEL_24:

  return v11;
}

uint64_t _IORegistryExchangeWithFirstChildOfClass(io_object_t *a1, const char *a2)
{
  object = 0;
  v2 = 2;
  if (a1 && a2)
  {
    if (!MEMORY[0x29C28E480](*a1, "IOService", &object))
    {
      v6 = IOIteratorNext(object);
      if (v6)
      {
        v7 = v6;
        while (!IOObjectConformsTo(v7, a2))
        {
          IOObjectRelease(v7);
          v7 = IOIteratorNext(object);
          if (!v7)
          {
            v2 = 2;
            goto LABEL_4;
          }
        }

        IOObjectRelease(*a1);
        v2 = 0;
        *a1 = v7;
      }
    }

LABEL_4:
    if (object)
    {
      IOObjectRelease(object);
    }
  }

  return v2;
}

uint64_t _cryptex_install_core(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v4 = _g;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 32;
  if (a2)
  {
    if (_cryptex_attr_get_persistence(a2) >= 3)
    {
      v6 = a1[2];
      v7 = *__error();
      v8 = a1[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "[anonymous]";
        if (v6)
        {
          v9 = v6;
        }

        *buf = 136446210;
        v33 = v9;
        _os_log_impl(&dword_2986C0000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Installing as ephemeral", buf, 0xCu);
      }

      *__error() = v7;
    }

    _cryptex_attr_get_nonce_persistence(a2);
  }

  if (!cryptex_core_get_image_asset())
  {
    v10 = a1[2];
    v11 = *__error();
    v12 = a1[4];
    v13 = 22;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = "[anonymous]";
      if (v10)
      {
        v14 = v10;
      }

      *buf = 136446466;
      v33 = v14;
      v34 = 1024;
      LODWORD(v35) = 22;
      v15 = "%{public}s: cryptex doesn't contain image asset: %{darwin.errno}d";
      goto LABEL_22;
    }

LABEL_23:
    v18 = 0;
    v19 = 0;
    goto LABEL_41;
  }

  if (!cryptex_core_get_tc_asset())
  {
    v16 = a1[2];
    v11 = *__error();
    v12 = a1[4];
    v13 = 22;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = "[anonymous]";
      if (v16)
      {
        v17 = v16;
      }

      *buf = 136446466;
      v33 = v17;
      v34 = 1024;
      LODWORD(v35) = 22;
      v15 = "%{public}s: cryptex doesn't contain trust cache: %{darwin.errno}d";
LABEL_22:
      _os_log_impl(&dword_2986C0000, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  cryptex_core_get_info_asset();
  cryptex_core_get_volumehash_asset();
  cryptex_core_get_asset();
  cryptex_core_get_asset();
  v19 = xpc_dictionary_create(0, 0, 0);
  result = MEMORY[0x29C28F4F0]();
  if (result != MEMORY[0x29EDCAA00])
  {
    __break(1u);
    return result;
  }

  v18 = _cryptex_copy_connected_actor(v4, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_install_pack();
  v21 = cryptex_actor_trap();
  if (v21)
  {
    v13 = v21;
    v22 = v18[2];
    v11 = *__error();
    v23 = v18[4];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = "[anonymous]";
      if (v22)
      {
        v24 = v22;
      }

      *buf = 136446466;
      v33 = v24;
      v34 = 1024;
      LODWORD(v35) = v13;
      v25 = "%{public}s: install rpc: %{darwin.errno}d";
LABEL_35:
      _os_log_impl(&dword_2986C0000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
    }
  }

  else
  {
    v26 = codex_install_reply_unpack();
    if (!v26)
    {
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      __strlcpy_chk();
      v29 = v18[2];
      v11 = *__error();
      v30 = v18[4];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = "[anonymous]";
        if (v29)
        {
          v31 = v29;
        }

        *buf = 136446722;
        v33 = v31;
        v34 = 2080;
        v35 = 0;
        v36 = 2080;
        v37 = 0;
        _os_log_impl(&dword_2986C0000, v30, OS_LOG_TYPE_DEBUG, "%{public}s: installed cryptex: name = %s, mount path = %s", buf, 0x20u);
      }

      v13 = 0;
      goto LABEL_41;
    }

    v13 = v26;
    v27 = v18[2];
    v11 = *__error();
    v23 = v18[4];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = "[anonymous]";
      if (v27)
      {
        v28 = v27;
      }

      *buf = 136446466;
      v33 = v28;
      v34 = 1024;
      LODWORD(v35) = v13;
      v25 = "%{public}s: bad reply from daemon: %{darwin.errno}d";
      goto LABEL_35;
    }
  }

LABEL_41:
  *__error() = v11;
  rpc_destroy(&v38);
  rpc_destroy(v61);
  if (v19)
  {
    os_release(v19);
  }

  if (v18)
  {
    os_release(v18);
  }

  return v13;
}

uint64_t _cryptex_copy_list_lossy(void *a1, void *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = 0;
  v4 = cryptex_actor_create();
  v5 = v4[4];
  v6 = hdi_copy_mounted(&v33, &v32, v5);
  if (v6)
  {
    v7 = v6;
    v8 = v4[2];
    v9 = *__error();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 136446466;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_impl(&dword_2986C0000, v5, OS_LOG_TYPE_ERROR, "%{public}s: copy attached dmgs: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v9;
LABEL_37:
    os_release(v4);
    v28 = v7;
    goto LABEL_38;
  }

  v11 = v32;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v12 = malloc_type_calloc(v11, 0xE10uLL, 0x8A375538uLL);
      if (v12)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v12 = malloc_type_calloc(v11, 0xE10uLL, 0x8709206FuLL);
    if (!v12)
    {
      _cryptex_copy_list_lossy_cold_1(v38, buf);
    }
  }

  v13 = v12;
  v30 = a1;
  v31 = a2;
  if (v32)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v33 + 3582 * v14;
      bzero(buf, 0xE10uLL);
      *__src = 0u;
      *v36 = 0u;
      v17 = v4[2];
      v18 = *__error();
      v19 = v4[4];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v38 = 136446466;
        v20 = "[anonymous]";
        if (v17)
        {
          v20 = v17;
        }

        v39 = v20;
        v40 = 2080;
        v41 = v16;
        _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: mount: %s", v38, 0x16u);
      }

      *__error() = v18;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v21 = strdup(v16);
          if (v21)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v21 = strdup(v16);
        if (!v21)
        {
          _cryptex_copy_list_lossy_cold_2(v16, v34, v38);
        }
      }

      v22 = v21;
      v23 = cryptex_core_parse_hdiid();
      v24 = *__error();
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v23)
      {
        if (v25)
        {
          *v38 = 136446466;
          v26 = "[anonymous]";
          if (v17)
          {
            v26 = v17;
          }

          v39 = v26;
          v40 = 2080;
          v41 = v16;
          _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: not a cryptex: %s", v38, 0x16u);
        }

        *__error() = v24;
      }

      else
      {
        if (v25)
        {
          *v38 = 136446466;
          v27 = "[anonymous]";
          if (v17)
          {
            v27 = v17;
          }

          v39 = v27;
          v40 = 2080;
          v41 = v16;
          _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: found cryptex: %s", v38, 0x16u);
        }

        *__error() = v24;
        strncpy(&buf[8], __src[1], 0xFFuLL);
        strncpy(&buf[263], v36[0], 0xFFuLL);
        strncpy(&buf[518], v16 + 510, 0x400uLL);
        strncpy(&buf[1542], v16 + 1534, 0x400uLL);
        strncpy(&buf[2566], v16 + 2558, 0x400uLL);
        memcpy(&v13[3600 * v15++], buf, 0xE10uLL);
      }

      free(v22);
      ++v14;
    }

    while (v14 < v32);
  }

  else
  {
    v15 = 0;
  }

  v7 = 0;
  v28 = 0;
  *v30 = v13;
  *v31 = v15;
  if (v4)
  {
    goto LABEL_37;
  }

LABEL_38:
  free(v33);
  return v28;
}

uint64_t _cryptex_copy_list(void *a1, size_t *a2)
{
  v96 = *MEMORY[0x29EDCA608];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 32;
  v4 = _cryptex_copy_connected_actor(_g, MEMORY[0x29EDC9680]);
  _cryptex_actor_init_invoke_u64();
  codex_list_pack();
  v5 = cryptex_actor_trap();
  if (v5)
  {
    v6 = v5;
    v7 = v4[2];
    v8 = *__error();
    v9 = v4[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      *buf = 136446466;
      v89 = v10;
      v90 = 1024;
      LODWORD(v91) = v6;
      v11 = "%{public}s: list rpc: %{darwin.errno}d";
LABEL_11:
      _os_log_impl(&dword_2986C0000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = codex_list_reply_unpack();
  if (v12)
  {
    v6 = v12;
    v13 = v4[2];
    v8 = *__error();
    v9 = v4[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = "[anonymous]";
      if (v13)
      {
        v14 = v13;
      }

      *buf = 136446466;
      v89 = v14;
      v90 = 1024;
      LODWORD(v91) = v6;
      v11 = "%{public}s: bad reply from daemon: %{darwin.errno}d";
      goto LABEL_11;
    }

LABEL_12:
    *__error() = v8;
    goto LABEL_13;
  }

  v55 = a1;
  v56 = a2;
  count = xpc_array_get_count(0);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v17 = malloc_type_calloc(count, 0xE10uLL, 0x8A375538uLL);
      if (v17)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v17 = malloc_type_calloc(count, 0xE10uLL, 0x8709206FuLL);
    if (!v17)
    {
      _cryptex_copy_list_lossy_cold_1(v62, buf);
    }
  }

  v18 = v17;
  if (!count)
  {
LABEL_51:
    v6 = 0;
    *v55 = v18;
    *v56 = count;
    v18 = 0;
    goto LABEL_68;
  }

  v19 = 0;
  v6 = 0;
  v20 = 0;
  v59 = count;
  while (1)
  {
    value = xpc_array_get_value(0, v20);
    v22 = value;
    if (!value || MEMORY[0x29C28F4F0](value) != MEMORY[0x29EDCA9E0])
    {
      v44 = v4[2];
      v45 = *__error();
      v46 = v4[4];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v47 = "[anonymous]";
        if (v44)
        {
          v47 = v44;
        }

        v89 = v47;
        v90 = 2048;
        v91 = v20;
        v92 = 2112;
        v93 = v22;
        v94 = 1024;
        v95 = 72;
        v48 = "%{public}s: bad reply from daemon: i = %lu, entry = %@: %{darwin.errno}d";
        goto LABEL_60;
      }

LABEL_61:
      *__error() = v45;
      goto LABEL_67;
    }

    v23 = _xpc_plist_value_copy(&_codex_list_name, v22);
    if (!v23)
    {
      v49 = v4[2];
      v45 = *__error();
      v46 = v4[4];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v50 = "[anonymous]";
        if (v49)
        {
          v50 = v49;
        }

        v89 = v50;
        v90 = 2048;
        v91 = v20;
        v92 = 2112;
        v93 = 0;
        v94 = 1024;
        v95 = 72;
        v48 = "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d";
LABEL_60:
        _os_log_impl(&dword_2986C0000, v46, OS_LOG_TYPE_ERROR, v48, buf, 0x26u);
        goto LABEL_61;
      }

      goto LABEL_61;
    }

    v24 = v23;
    v25 = _xpc_plist_value_copy(&_codex_list_version, v22);
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v27 = _xpc_plist_value_copy(&_codex_list_devpath, v22);
    if (v27)
    {
      v28 = v27;
      xstring = _xpc_plist_value_copy(&_codex_list_subdevpath, v22);
      if (xstring)
      {
        v29 = _xpc_plist_value_copy(&_codex_list_mntpath, v22);
        v60 = v29 != 0;
        if (v29)
        {
          v30 = v29;
          v57 = _xpc_plist_value_copy(&_codex_list_error, v22);
          v58 = xpc_int64_get_value(v57);
          *&v18[v19] = 0;
          xpc_string_get_string_ptr(v24);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v26);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v28);
          __strlcpy_chk();
          xpc_string_get_string_ptr(xstring);
          __strlcpy_chk();
          xpc_string_get_string_ptr(v30);
          __strlcpy_chk();
          *&v18[v19 + 3592] = v58;
          if (v57)
          {
            os_release(v57);
          }

          os_release(v30);
        }

        else
        {
          v40 = v4[2];
          v41 = *__error();
          v42 = v4[4];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v43 = "[anonymous]";
            if (v40)
            {
              v43 = v40;
            }

            v89 = v43;
            v90 = 2048;
            v91 = v20;
            v92 = 2112;
            v93 = 0;
            v94 = 1024;
            v95 = 72;
            _os_log_impl(&dword_2986C0000, v42, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
          }

          *__error() = v41;
          v6 = 72;
        }

        os_release(xstring);
      }

      else
      {
        v36 = v4[2];
        v37 = *__error();
        v38 = v4[4];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v39 = "[anonymous]";
          if (v36)
          {
            v39 = v36;
          }

          v89 = v39;
          v90 = 2048;
          v91 = v20;
          v92 = 2112;
          v93 = 0;
          v94 = 1024;
          v95 = 72;
          _os_log_impl(&dword_2986C0000, v38, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
        }

        v60 = 0;
        *__error() = v37;
        v6 = 72;
      }

      count = v59;
      os_release(v28);
      v35 = v60;
    }

    else
    {
      v31 = v4[2];
      v32 = *__error();
      v33 = v4[4];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v34 = "[anonymous]";
        if (v31)
        {
          v34 = v31;
        }

        v89 = v34;
        v90 = 2048;
        v91 = v20;
        v92 = 2112;
        v93 = 0;
        v94 = 1024;
        v95 = 72;
        _os_log_impl(&dword_2986C0000, v33, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
      }

      v35 = 0;
      *__error() = v32;
      v6 = 72;
      count = v59;
    }

    os_release(v26);
    os_release(v24);
    if (!v35)
    {
      goto LABEL_68;
    }

    ++v20;
    v19 += 3600;
    if (count == v20)
    {
      goto LABEL_51;
    }
  }

  v51 = v4[2];
  v52 = *__error();
  v53 = v4[4];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v54 = "[anonymous]";
    if (v51)
    {
      v54 = v51;
    }

    v89 = v54;
    v90 = 2048;
    v91 = v20;
    v92 = 2112;
    v93 = 0;
    v94 = 1024;
    v95 = 72;
    _os_log_impl(&dword_2986C0000, v53, OS_LOG_TYPE_ERROR, "%{public}s: bad reply from daemon: i = %lu, list = %@: %{darwin.errno}d", buf, 0x26u);
  }

  *__error() = v52;
  os_release(v24);
LABEL_67:
  v6 = 72;
LABEL_68:
  free(v18);
LABEL_13:
  rpc_destroy(&v63);
  rpc_destroy(v86);
  if (v4)
  {
    os_release(v4);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v8, v9, 80, a5, v10, 16, a8);
}

void _cryptex_signing_service_dealloc(uint64_t a1)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v3 = a1 + 288;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3 + 40 * v2;
    close_drop_optional_np();
    v7 = *(v6 + 8);
    if (v7 != -1 && munmap(v7, *(v6 + 16)) == -1)
    {
      _cryptex_signing_service_dealloc_cold_1(&v10, v11);
    }

    free(*(v6 + 32));
    v4 = 0;
    *(v6 + 32) = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  free(*(a1 + 48));
  *(a1 + 48) = 0;
  v8 = *(a1 + 280);
  if (v8)
  {
    dispatch_release(v8);
  }

  img4_buff_dealloc();
  v9 = *(a1 + 56);
  if (v9)
  {
    os_release(v9);
  }

  object_proto_destroy(a1 + 16);
}

uint64_t cryptex_signing_service_create(uint64_t a1)
{
  v2 = _cryptex_signing_service_alloc(368);
  *(v2 + 56) = 0;
  *(v2 + 40) = a1;
  v3 = img4_chip_select_personalized_ap();
  v4 = MEMORY[0x29EDC96E0];
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  *(v2 + 80) = ccsha384_di();
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 280) = dispatch_semaphore_create(0);
  *(v2 + 316) = -1;
  *(v2 + 296) = -1;
  *(v2 + 356) = -1;
  *(v2 + 336) = -1;
  object_proto_init(v2 + 16, "com.apple.security.libcryptex", "signing-service");
  return v2;
}

CFErrorRef cryptex_signing_service_set_cryptex_core(uint64_t a1, void *object)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = os_retain(object);
  *(a1 + 56) = v3;
  v4 = v3[21];
  if (v4 && (*(v4 + 40) & 1) != 0)
  {
    cryptex_signing_service_set_tss_url(a1, "https://diavlo.apple.com:443");
  }

  nonce_domain = cryptex_core_get_nonce_domain();
  v6 = nonce_domain;
  if (nonce_domain || !*(a1 + 72))
  {
    v7 = nonce_domain;
    v8 = *(a1 + 32);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *buf = 136446466;
      v29 = v10;
      v30 = 1024;
      LODWORD(v31) = v6;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "%{public}s: failed to get nonce domain from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446466;
      v29 = v18;
      v30 = 1024;
      LODWORD(v31) = nonce_domain;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get nonce domain from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v19 = v11;
    v20 = 382;
    goto LABEL_25;
  }

  v12 = cryptex_core_copy_nonce_domain_desc();
  if (v12)
  {
    v13 = v12;
    v7 = v12;
    v14 = *(a1 + 32);
    if (v14)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v16 = *(a1 + 16);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446466;
      v29 = v16;
      v30 = 1024;
      LODWORD(v31) = v13;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_2986C0000, v14, 16, "%{public}s: failed to get nonce domain description from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v27 = *(a1 + 16);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446466;
      v29 = v27;
      v30 = 1024;
      LODWORD(v31) = v12;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get nonce domain description from core %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v19 = v17;
    v20 = 389;
LABEL_25:
    Error = createError("cryptex_signing_service_set_cryptex_core", "signing_service.c", v20, "com.apple.security.cryptex.posix", v7, 0, v19);
    free(v19);
    goto LABEL_26;
  }

  v23 = *(a1 + 16);
  v24 = *__error();
  v25 = *(a1 + 32);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = "[anonymous]";
    if (v23)
    {
      v26 = v23;
    }

    *buf = 136446466;
    v29 = v26;
    v30 = 2080;
    v31 = 0;
    _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_DEBUG, "%{public}s: signing with nonce from %s", buf, 0x16u);
  }

  Error = 0;
  *__error() = v24;
LABEL_26:
  free(0);
  return Error;
}

char *cryptex_signing_service_set_tss_url(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  free(*(a1 + 48));
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      cryptex_signing_service_set_tss_url_cold_1(a2, &v5, v6);
    }
  }

  *(a1 + 48) = result;
  return result;
}

uint64_t cryptex_signing_service_set_image(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40 * *(a2 + 40);
  v4 = *(v3 + 316);
  *(v3 + 288) = a2;
  result = _xferfd_unguarded(a3);
  *(v3 + 316) = result;
  if ((v4 & 0x80000000) == 0)
  {
    result = close(v4);
    if (result == -1)
    {
      cryptex_signing_service_set_image_cold_1(&v6, v7);
    }
  }

  return result;
}

void cryptex_signing_service_set_image_bytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 40 * *(a2 + 40);
  v7 = *(v6 + 320);
  v8 = memdup2_np();
  *(v6 + 288) = a2;
  *(v6 + 320) = v8;
  *(v6 + 304) = a4;
  *(v6 + 312) = a4;

  free(v7);
}

void *cryptex_signing_service_set_sso_ticket(void *a1, const void *a2, size_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v6 = malloc_type_malloc(a3, 0x5C008F58uLL);
      if (v6)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v6 = malloc_type_malloc(a3, 0x2F48DA65uLL);
    if (!v6)
    {
      cryptex_signing_service_set_sso_ticket_cold_1(&v8, v9, a3);
    }
  }

  a1[12] = v6;
  a1[13] = a3;
  a1[14] = _cryptex_signing_service_buff_dealloc;
  result = memcpy(v6, a2, a3);
  a1[15] = a1 + 11;
  a1[5] &= ~1uLL;
  return result;
}

CFErrorRef cryptex_signing_service_sign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = *MEMORY[0x29EDCA608];
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v94 = 0x3000000000;
  v4 = *(a1 + 56);
  if (!v4 || (v5 = *(v4 + 168)) == 0)
  {
    v21 = *(a1 + 16);
    v22 = *__error();
    v23 = *(a1 + 32);
    v24 = 1;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = "[anonymous]";
      if (v21)
      {
        v25 = v21;
      }

      *buf = 136446466;
      *&buf[4] = v25;
      *&buf[12] = 1024;
      *&buf[14] = 1;
      v26 = "%{public}s: caller did not provide chip instance: %{darwin.errno}d";
      goto LABEL_21;
    }

LABEL_22:
    *__error() = v22;
    v27 = v24;
    v28 = *(a1 + 32);
    if (v28)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(a1 + 16);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_2986C0000, v28, 16, "%{public}s: failed to instantiate chip %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v32 = *(a1 + 16);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v32;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to instantiate chip %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v33 = v31;
    Error = createError("cryptex_signing_service_sign", "signing_service.c", 571, "com.apple.security.cryptex.posix", v27, 0, v31);
    free(v33);
    MEMORY[0x29C28E9F0](0);
    return Error;
  }

  v6 = *(v5 + 192);
  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  v9 = *__error();
  v10 = *(a1 + 32);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v11)
    {
      v35 = "[anonymous]";
      if (v8)
      {
        v35 = v8;
      }

      *buf = 136446210;
      *&buf[4] = v35;
      _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip environment", buf, 0xCu);
    }

    *__error() = v9;
    *(a1 + 64) = *(*(*(a1 + 56) + 168) + 1160);
    v36 = img4_chip_instantiate();
    if (!v36)
    {
      *(a1 + 272) = a1 + 128;
      goto LABEL_9;
    }

    v24 = v36;
    v37 = *(a1 + 16);
    v22 = *__error();
    v23 = *(a1 + 32);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v38 = "[anonymous]";
      if (v37)
      {
        v38 = v37;
      }

      *buf = 136446466;
      *&buf[4] = v38;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v26 = "%{public}s: failed to instantiate chip: %{darwin.errno}d";
LABEL_21:
      _os_log_impl(&dword_2986C0000, v23, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v11)
  {
    v12 = "[anonymous]";
    if (v8)
    {
      v12 = v8;
    }

    *buf = 136446210;
    *&buf[4] = v12;
    _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: using caller-provided chip instance", buf, 0xCu);
  }

  *__error() = v9;
  *(a1 + 272) = *(*(*(a1 + 56) + 168) + 192);
LABEL_9:
  cryptex_core_is_cryptex1();
  v13 = cryptex_tss_create();
  v14 = img4_nonce_domain_copy_nonce();
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = *(a1 + 32);
    if (v17)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v19 = *v7;
      if (!*v7)
      {
        v19 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v19;
      *&buf[12] = 1024;
      *&buf[14] = v15;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986C0000, v17, 16, "%{public}s: failed to copy nonce %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v43 = *v7;
      if (!*v7)
      {
        v43 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v43;
      *&buf[12] = 1024;
      *&buf[14] = v14;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to copy nonce %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v44 = v20;
    v45 = 587;
    goto LABEL_55;
  }

  if (*(a1 + 48))
  {
    cryptex_tss_set_url();
  }

  if (*(a1 + 120))
  {
    cryptex_tss_set_data();
  }

  if (cryptex_core_is_cryptex1())
  {
    v39 = *(a1 + 56);
    if (v39)
    {
      if (*(v39 + 216))
      {
        v40 = CFNumberCreate(0, kCFNumberLongType, (*(a1 + 272) + 32));
        v41 = CFNumberCreate(0, kCFNumberLongLongType, (*(a1 + 272) + 40));
        v42 = _AMAuthInstallCryptex1CopyUDID(v40, v41);
        CFDataGetBytePtr(v42);
        CFDataGetLength(v42);
        cryptex_tss_set_data();
        cryptex_tss_set_u32();
        cryptex_tss_set_u32();
        cryptex_tss_set_u32();
        cryptex_tss_set_u32();
        cryptex_tss_set_BOOL();
        cryptex_tss_set_dgst();
        cryptex_tss_set_u32();
        cryptex_tss_set_string();
        cryptex_tss_set_string();
        if (*(*(*(a1 + 56) + 216) + 65) == 1)
        {
          cryptex_tss_set_BOOL();
        }

        else
        {
          _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(a1, v13);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        goto LABEL_58;
      }

      v73 = *(a1 + 16);
      v63 = *__error();
      v64 = *(a1 + 32);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v74 = "[anonymous]";
        if (v73)
        {
          v74 = v73;
        }

        *buf = 136446466;
        *&buf[4] = v74;
        *&buf[12] = 1024;
        *&buf[14] = 22;
        v66 = "%{public}s: Invalid core Cryptex1 properties.: %{darwin.errno}d";
LABEL_98:
        _os_log_impl(&dword_2986C0000, v64, OS_LOG_TYPE_ERROR, v66, buf, 0x12u);
      }
    }

    else
    {
      v62 = *(a1 + 16);
      v63 = *__error();
      v64 = *(a1 + 32);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = "[anonymous]";
        if (v62)
        {
          v65 = v62;
        }

        *buf = 136446466;
        *&buf[4] = v65;
        *&buf[12] = 1024;
        *&buf[14] = 22;
        v66 = "%{public}s: Invalid cryptex core.: %{darwin.errno}d";
        goto LABEL_98;
      }
    }

    *__error() = v63;
    v75 = *(a1 + 32);
    if (v75)
    {
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v77 = *v7;
      if (!*v7)
      {
        v77 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v77;
      *&buf[12] = 1024;
      *&buf[14] = 22;
      v78 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_2986C0000, v75, 16, "%{public}s: Failed to populate chip params. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v79 = *v7;
      if (!*v7)
      {
        v79 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v79;
      *&buf[12] = 1024;
      *&buf[14] = 22;
      v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to populate chip params. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v44 = v78;
    v45 = 606;
    v46 = 22;
    goto LABEL_56;
  }

  v89 = 0u;
  memset(buf, 0, sizeof(buf));
  *&v90 = 0x3000000000;
  _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(a1, v13);
  cryptex_tss_set_u64();
  cryptex_tss_set_BOOL();
  cryptex_tss_set_dgst();
  cryptex_tss_set_dgst();
LABEL_58:
  if ((*(a1 + 40) & 2) != 0)
  {
    cryptex_tss_set_BOOL();
  }

  v47 = MEMORY[0x29EDC9678];
  v48 = 64;
  while (1)
  {
    v49 = *(*(a1 + 56) + v48);
    v89 = 0u;
    v90 = 0u;
    memset(buf, 0, sizeof(buf));
    if (!v49)
    {
      v56 = *(a1 + 16);
      v57 = *__error();
      v58 = *(a1 + 32);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = "[anonymous]";
        if (v56)
        {
          v59 = v56;
        }

        v60 = *(*v47 + 40);
        *v82 = 136446466;
        v83 = v59;
        v84 = 2080;
        v85 = v60;
        _os_log_impl(&dword_2986C0000, v58, OS_LOG_TYPE_DEBUG, "%{public}s: no asset of type: %s", v82, 0x16u);
      }

      *__error() = v57;
      goto LABEL_75;
    }

    if ((**(v49 + 8) & 0x14) == 0)
    {
      break;
    }

LABEL_75:
    v47 += 8;
    v48 += 8;
    if (v48 == 160)
    {
      if (cryptex_core_get_info_asset())
      {
        cryptex_tss_set_info_from_file();
      }

      cryptex_tss_set_im4m_array();
      cryptex_tss_submit();
      Error = 0;
      goto LABEL_79;
    }
  }

  v50 = *(a1 + 16);
  v51 = *__error();
  v52 = *(a1 + 32);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v53 = "[anonymous]";
    if (v50)
    {
      v53 = v50;
    }

    v54 = *(*(v49 + 8) + 40);
    *v82 = 136446466;
    v83 = v53;
    v84 = 2080;
    v85 = v54;
    _os_log_impl(&dword_2986C0000, v52, OS_LOG_TYPE_DEBUG, "%{public}s: stamping asset: %s", v82, 0x16u);
  }

  *__error() = v51;
  generic_digest = cryptex_asset_create_generic_digest();
  if (!generic_digest)
  {
    cryptex_tss_set_object_dgst();
    if (*(*(a1 + 56) + 176) != MEMORY[0x29EDC9638])
    {
      cryptex_tss_set_object_BOOL();
      cryptex_tss_set_object_BOOL();
      cryptex_tss_set_object_BOOL();
    }

    goto LABEL_75;
  }

  v67 = generic_digest;
  v16 = generic_digest;
  v68 = *(a1 + 32);
  if (v68)
  {
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v70 = *v7;
    if (!*v7)
    {
      v70 = "[anonymous]";
    }

    v71 = *(*(v49 + 8) + 40);
    *v82 = 136446722;
    v83 = v70;
    v84 = 2080;
    v85 = v71;
    v86 = 1024;
    v87 = v67;
    v72 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &dword_2986C0000, v68, 16, "%{public}s: failed to get digest for asset %s %{darwin.errno}d", v82, 28);
  }

  else
  {
    v80 = *v7;
    if (!*v7)
    {
      v80 = "[anonymous]";
    }

    v81 = *(*(v49 + 8) + 40);
    *v82 = 136446722;
    v83 = v80;
    v84 = 2080;
    v85 = v81;
    v86 = 1024;
    v87 = generic_digest;
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to get digest for asset %s %{darwin.errno}d", v82, 28);
  }

  v44 = v72;
  v45 = 644;
LABEL_55:
  v46 = v16;
LABEL_56:
  Error = createError("cryptex_signing_service_sign", "signing_service.c", v45, "com.apple.security.cryptex.posix", v46, 0, v44);
  free(v44);
LABEL_79:
  MEMORY[0x29C28E9F0](v13);
  if (v13)
  {
    os_release(v13);
  }

  return Error;
}

CFIndex cryptex_signing_service_trust(uint64_t a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0x3000000000;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v58 = 0x3000000000;
  v2 = img4_chip_instantiate();
  if (v2)
  {
    TopLevelPosixError = v2;
    v4 = *(a1 + 16);
    v5 = *__error();
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = TopLevelPosixError;
      _os_log_impl(&dword_2986C0000, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to instantiate chip: %{darwin.errno}d", buf, 0x12u);
    }

    v8 = __error();
    v9 = 0;
    goto LABEL_46;
  }

  *(a1 + 272) = a1 + 128;
  v9 = cryptex_tss_create();
  if (*(a1 + 72))
  {
    v10 = img4_nonce_domain_copy_nonce();
    if (v10)
    {
      TopLevelPosixError = v10;
      v11 = *(a1 + 16);
      v5 = *__error();
      v12 = *(a1 + 32);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "[anonymous]";
        if (v11)
        {
          v13 = v11;
        }

        *buf = 136446466;
        *&buf[4] = v13;
        *&buf[12] = 1024;
        *&buf[14] = TopLevelPosixError;
        v14 = "%{public}s: failed to copy nonce: %{darwin.errno}d";
        v15 = buf;
        v16 = v12;
        v17 = 18;
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else
  {
    cryptex_tss_set_BOOL();
  }

  if (*(a1 + 48))
  {
    cryptex_tss_set_url();
  }

  if (*(a1 + 120))
  {
    cryptex_tss_set_data();
  }

  cryptex_tss_set_u32();
  cryptex_tss_set_u32();
  cryptex_tss_set_u32();
  cryptex_tss_set_u64();
  cryptex_tss_set_BOOL();
  cryptex_tss_set_BOOL();
  if ((*(*(a1 + 272) + 17) & 0x10) == 0)
  {
    cryptex_tss_set_u32();
  }

  cryptex_tss_set_dgst();
  cryptex_tss_set_dgst();
  cryptex_tss_set_BOOL();
  MEMORY[0x29C28E9F0](v9);
  v18 = 0;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = _image_specs[v18];
    v22 = a1 + 288 + 40 * v18;
    v53 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((*(v22 + 28) & 0x80000000) != 0)
    {
      v30 = *(v22 + 32);
      v31 = *(a1 + 16);
      v24 = *__error();
      v32 = *(a1 + 32);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
      if (!v30)
      {
        if (v33)
        {
          v38 = *v21;
          v39 = "[anonymous]";
          if (v31)
          {
            v39 = v31;
          }

          *v46 = 136446466;
          v47 = v39;
          v48 = 2080;
          v49 = v38;
          _os_log_impl(&dword_2986C0000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: object not present: %s", v46, 0x16u);
        }

        *__error() = v24;
        goto LABEL_33;
      }

      v27 = _cryptex_signing_service_read_buff;
      if (v33)
      {
        v34 = *v21;
        v35 = "[anonymous]";
        if (v31)
        {
          v35 = v31;
        }

        *v46 = 136446466;
        v47 = v35;
        v48 = 2080;
        v49 = v34;
        _os_log_impl(&dword_2986C0000, v32, OS_LOG_TYPE_DEBUG, "%{public}s: object is a buffer: %s", v46, 0x16u);
        v27 = _cryptex_signing_service_read_buff;
      }
    }

    else
    {
      v23 = *(a1 + 16);
      v24 = *__error();
      v25 = *(a1 + 32);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      v27 = _cryptex_signing_service_read_fd;
      if (v26)
      {
        v28 = *v21;
        v29 = "[anonymous]";
        if (v23)
        {
          v29 = v23;
        }

        *v46 = 136446466;
        v47 = v29;
        v48 = 2080;
        v49 = v28;
        _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_DEBUG, "%{public}s: object is a fd: %s", v46, 0x16u);
        v27 = _cryptex_signing_service_read_fd;
      }
    }

    v36 = v27;
    *__error() = v24;
    v37 = v36(a1, v22, buf);
    if (v37)
    {
      break;
    }

    cryptex_tss_set_object_dgst();
    cryptex_tss_set_object_BOOL();
    cryptex_tss_set_object_BOOL();
    cryptex_tss_set_object_BOOL();
LABEL_33:
    v19 = 0;
    v18 = 1;
    if ((v20 & 1) == 0)
    {
      v40 = ctx_new(a1, 0x20uLL);
      cryptex_tss_submit();
      dispatch_semaphore_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
      TopLevelPosixError = _CFErrorGetTopLevelPosixError(v40[2]);
      goto LABEL_47;
    }
  }

  TopLevelPosixError = v37;
  v41 = *(a1 + 16);
  v5 = *__error();
  v42 = *(a1 + 32);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = "[anonymous]";
    if (v41)
    {
      v43 = v41;
    }

    v44 = **v22;
    *v46 = 136446722;
    v47 = v43;
    v48 = 2080;
    v49 = v44;
    v50 = 1024;
    v51 = TopLevelPosixError;
    v14 = "%{public}s: failed to compute digest: %s: %{darwin.errno}d";
    v15 = v46;
    v16 = v42;
    v17 = 28;
LABEL_44:
    _os_log_impl(&dword_2986C0000, v16, OS_LOG_TYPE_ERROR, v14, v15, v17);
  }

LABEL_45:
  v8 = __error();
LABEL_46:
  v40 = 0;
  *v8 = v5;
LABEL_47:
  MEMORY[0x29C28E9F0](v9);
  ctx_destroy(v40);
  if (v9)
  {
    os_release(v9);
  }

  return TopLevelPosixError;
}

uint64_t _cryptex_signing_service_read_fd(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(&v24, 0, sizeof(v24));
  MEMORY[0x2A1C7C4A8]();
  bzero(&v22 - v6, v7);
  if (**(a1 + 80) >= 0x31uLL)
  {
    _cryptex_signing_service_read_fd_cold_2(&v23, buf);
  }

  if (fstat(*(a2 + 7), &v24))
  {
    v8 = *__error();
    v9 = *(a1 + 16);
    v10 = *__error();
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      v13 = **a2;
      *buf = 136446722;
      v26 = v12;
      v27 = 2080;
      v28 = v13;
      v29 = 1024;
      v30 = v8;
      v14 = "%{public}s: failed to stat object: %s: %{darwin.errno}d";
LABEL_7:
      _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x1Cu);
    }
  }

  else
  {
    st_size = v24.st_size;
    if (v24.st_size < 0)
    {
      _cryptex_signing_service_read_fd_cold_1();
    }

    v16 = mmap(0, v24.st_size, 1, 1, *(a2 + 7), 0);
    if (v16 != -1)
    {
      v17 = v16;
      ccdigest_init();
      ccdigest_update();
      (*(*(a1 + 80) + 56))();
      v8 = 0;
      *(a3 + 8) = **(a1 + 80);
      a2[1] = v17;
      a2[2] = st_size;
      *(a2 + 6) = st_size;
      return v8;
    }

    v8 = *__error();
    v19 = *(a1 + 16);
    v10 = *__error();
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = "[anonymous]";
      if (v19)
      {
        v20 = v19;
      }

      v21 = **a2;
      *buf = 136446722;
      v26 = v20;
      v27 = 2080;
      v28 = v21;
      v29 = 1024;
      v30 = v8;
      v14 = "%{public}s: failed to map asset into memory: %s: %{darwin.errno}d";
      goto LABEL_7;
    }
  }

  *__error() = v10;
  return v8;
}

uint64_t _cryptex_signing_service_read_buff(void *a1, uint64_t **a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x29EDCA608];
  v36 = 0;
  v35 = 0;
  MEMORY[0x2A1C7C4A8]();
  bzero(&v34[-v6 - 8], v7);
  v8 = *(a2 + 5);
  v9 = a1[2];
  v10 = *__error();
  v11 = a1[4];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = "[anonymous]";
      v13 = a2[2];
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446978;
      v38 = v12;
      v39 = 2048;
      *v40 = v13;
      *&v40[8] = 1024;
      LODWORD(v41[0]) = -1;
      WORD2(v41[0]) = 1024;
      *(v41 + 6) = 34;
      _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_ERROR, "%{public}s: payload too large: actual = %lu, expected <= %u: %{darwin.errno}d", buf, 0x22u);
    }

    *__error() = v10;
    v14 = 34;
    goto LABEL_31;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = "[anonymous]";
    if (v9)
    {
      v15 = v9;
    }

    v16 = (*a2)[2];
    v17 = a2[2];
    *buf = 136446722;
    v38 = v15;
    v39 = 2080;
    *v40 = v16;
    *&v40[8] = 2048;
    v41[0] = v17;
    _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: wrapping object: 4cc = %s, length = %lu", buf, 0x20u);
  }

  *__error() = v10;
  Payload = Img4EncodeCreatePayload();
  v19 = Payload;
  if (Payload > 102)
  {
    if (Payload != 103)
    {
      if (Payload == 104)
      {
        v14 = 14;
        goto LABEL_26;
      }

      if (Payload == 105)
      {
        v14 = 78;
        goto LABEL_26;
      }
    }

LABEL_20:
    v14 = 104;
    goto LABEL_26;
  }

  if (Payload != 100)
  {
    if (Payload == 101)
    {
      v14 = 22;
      goto LABEL_26;
    }

    if (Payload == 102)
    {
      v14 = 12;
LABEL_26:
      v23 = a1[2];
      v24 = *__error();
      v25 = a1[4];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = "[anonymous]";
        *buf = 136446722;
        if (v23)
        {
          v26 = v23;
        }

        v38 = v26;
        v39 = 1024;
        *v40 = v19;
        *&v40[4] = 1024;
        *&v40[6] = v14;
        _os_log_impl(&dword_2986C0000, v25, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap object: %d: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v24;
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v20 = mmap(0, v35, 3, 4098, -1, 0);
  if (v20 == -1)
  {
    v14 = *__error();
    v28 = a1[2];
    v29 = *__error();
    v30 = a1[4];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = "[anonymous]";
      if (v28)
      {
        v31 = v28;
      }

      v32 = **a2;
      *buf = 136446722;
      v38 = v31;
      v39 = 2080;
      *v40 = v32;
      *&v40[8] = 1024;
      LODWORD(v41[0]) = v14;
      _os_log_impl(&dword_2986C0000, v30, OS_LOG_TYPE_ERROR, "%{public}s: failed to map anonymous buffer for object: %s: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v29;
  }

  else
  {
    v21 = v20;
    memcpy(v20, v36, v35);
    ccdigest_init();
    if (*a1[10] >= 0x31uLL)
    {
      _cryptex_signing_service_read_fd_cold_2(v34, buf);
    }

    ccdigest_update();
    (*(a1[10] + 56))();
    v14 = 0;
    *(a3 + 8) = *a1[10];
    v22 = v35;
    a2[1] = v21;
    a2[2] = v22;
    *(a2 + 6) = v22;
  }

LABEL_31:
  free(v36);
  return v14;
}

intptr_t _cryptex_signing_service_trust_continue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4 = a4;
  v54 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  if (a3)
  {
    v7 = *(v5 + 32);
    if (v7)
    {
      if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(v5 + 16);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *v52 = 136446210;
      *&v52[4] = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_2986C0000, v7, 16, "%{public}s: tss request failed", COERCE_DOUBLE(136446210), v52, 12);
    }

    else
    {
      v23 = *(v5 + 16);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *v52 = 136446210;
      *&v52[4] = v23;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: tss request failed", COERCE_DOUBLE(136446210), v52, 12);
    }

    v24 = v10;
    v25 = "com.apple.security.cryptex";
    v26 = 280;
    v27 = 5;
    v28 = a3;
LABEL_25:
    Error = createError("_cryptex_signing_service_trust_continue", "signing_service.c", v26, v25, v27, v28, v24);
    free(v24);
    goto LABEL_49;
  }

  if (!MEMORY[0x2A1C7B548])
  {
    v29 = *(v5 + 32);
    if (v29)
    {
      if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v31 = *(v5 + 16);
      if (!v31)
      {
        v31 = "[anonymous]";
      }

      *v52 = 136446466;
      *&v52[4] = v31;
      *&v52[12] = 1024;
      *&v52[14] = 78;
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986C0000, v29, 16, "%{public}s: trust object execution not available %{darwin.errno}d", COERCE_DOUBLE(136446466), v52, 18);
    }

    else
    {
      v40 = *(v5 + 16);
      if (!v40)
      {
        v40 = "[anonymous]";
      }

      *v52 = 136446466;
      *&v52[4] = v40;
      *&v52[12] = 1024;
      *&v52[14] = 78;
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: trust object execution not available %{darwin.errno}d", COERCE_DOUBLE(136446466), v52, 18);
    }

    v24 = v32;
    v25 = "com.apple.security.cryptex.posix";
    v26 = 287;
    v27 = 78;
    v28 = 0;
    goto LABEL_25;
  }

  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = (v5 + 288 + 40 * v11);
    v14 = *v13;
    *v52 = 0;
    *&v52[8] = v13[1];
    v15 = v12;
    *&v52[16] = v13[2];
    v53 = 0;
    if (v14)
    {
      if (v14[4])
      {
        break;
      }
    }

LABEL_19:
    v12 = 0;
    v11 = 1;
    if ((v15 & 1) == 0)
    {
      Error = 0;
      goto LABEL_48;
    }
  }

  v16 = img4_runtime_execute_object();
  if (!v16)
  {
    v17 = *(v5 + 16);
    v18 = *__error();
    v19 = *(v5 + 32);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = "[anonymous]";
      if (v17)
      {
        v20 = v17;
      }

      v21 = **v13;
      *buf = 136446466;
      v47 = v20;
      v48 = 2080;
      v49 = v21;
      _os_log_impl(&dword_2986C0000, v19, OS_LOG_TYPE_DEBUG, "%{public}s: executed object: %s", buf, 0x16u);
    }

    *__error() = v18;
    goto LABEL_19;
  }

  v33 = v16;
  v34 = v16;
  v35 = *(v5 + 32);
  if (v35)
  {
    if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v37 = *(v5 + 16);
    if (!v37)
    {
      v37 = "[anonymous]";
    }

    v38 = **v13;
    *buf = 136446722;
    v47 = v37;
    v48 = 2080;
    v49 = v38;
    v50 = 1024;
    v51 = v33;
    v39 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_2986C0000, v35, 16, "%{public}s: failed to execute object on host: %s %{darwin.errno}d", buf, 28);
  }

  else
  {
    v41 = *(v5 + 16);
    if (!v41)
    {
      v41 = "[anonymous]";
    }

    v42 = **v13;
    *buf = 136446722;
    v47 = v41;
    v48 = 2080;
    v49 = v42;
    v50 = 1024;
    v51 = v16;
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to execute object on host: %s %{darwin.errno}d", buf, 28);
  }

  v43 = v39;
  Error = createError("_cryptex_signing_service_trust_continue", "signing_service.c", 319, "com.apple.security.cryptex.posix", v34, 0, v39);
  free(v43);
LABEL_48:
  v4 = a4;
LABEL_49:
  v4[2] = Error;
  return dispatch_semaphore_signal(*(v5 + 280));
}

double _cryptex_signing_service_populate_ap_board_chip_sdom_cpro(uint64_t a1, uint64_t a2)
{
  cryptex_tss_set_u32();
  cryptex_tss_set_u32();
  cryptex_tss_set_u32();

  cryptex_tss_set_BOOL();
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, v8, 80, a5, v9, 16, a8);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t _hdi_copy_device_nodes(NSObject *a1, io_object_t object, const char **a3, void *a4, void *a5)
{
  v8 = object;
  v52 = *MEMORY[0x29EDCA608];
  if (IOObjectRetain(object))
  {
    _hdi_copy_device_nodes_cold_1(v50, buf);
  }

  entry = v8;
  if (IOObjectRetain(v8))
  {
    _hdi_copy_device_nodes_cold_1(v50, buf);
  }

  objecta = v8;
  if (_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainerScheme") || _IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSMedia"))
  {
    v10 = "hfs";
  }

  else
  {
    v10 = "hfs";
    if (!_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSContainer") && !_IORegistryExchangeWithFirstChildOfClass(&objecta, "AppleAPFSVolume"))
    {
      v10 = "apfs";
      v8 = objecta;
    }
  }

  v11 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"BSD Name", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty || (v13 = CFProperty, v14 = CFGetTypeID(CFProperty), v14 != CFStringGetTypeID()))
  {
    _hdi_copy_device_nodes_cold_6();
  }

  v42 = v10;
  v44 = a3;
  v45 = a5;
  v15 = *__error();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "subdevice node = %@", buf, 0xCu);
  }

  v43 = v13;
  v16 = __error();
  v47 = 0;
  v17 = MEMORY[0x29EDB8F00];
  *v16 = v15;
  v18 = *v17;
  v19 = @"Whole";
  v46 = v11;
  do
  {
    v20 = IORegistryEntryCreateCFProperty(entry, v19, v11, 0);
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = *__error();
    v25 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v23 == v18)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "found whole disk node", buf, 2u);
      }

      *__error() = v24;
      v32 = IORegistryEntryCreateCFProperty(entry, @"BSD Name", v11, 0);
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          v35 = v33;
        }

        else
        {
          v35 = 0;
        }

        if (!a4)
        {
LABEL_57:
          _hdi_copy_device_nodes_cold_5();
        }
      }

      else
      {
        v35 = 0;
        if (!a4)
        {
          goto LABEL_57;
        }
      }

      v40 = *__error();
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v35;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "devnode = %@", buf, 0xCu);
      }

      v47 = v35;
      v30 = 0;
      v31 = 0;
      *__error() = v40;
      v26 = entry;
    }

    else
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "not whole disk node", buf, 2u);
      }

      *__error() = v24;
      v26 = entry;
      ParentEntry = IORegistryEntryGetParentEntry(entry, "IOService", &entry);
      if (ParentEntry)
      {
        v28 = ParentEntry;
        if (ParentEntry == -536870208)
        {
          v29 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_DEBUG, "found root node, stopping", buf, 2u);
          }

          v30 = 0;
          *__error() = v29;
          v31 = 2;
        }

        else
        {
          v36 = v18;
          v37 = v19;
          v38 = a4;
          v39 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v28;
            _os_log_impl(&dword_2986C0000, a1, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", buf, 8u);
          }

          v30 = 0;
          *__error() = v39;
          v31 = 83;
          a4 = v38;
          v19 = v37;
          v18 = v36;
          v11 = v46;
        }
      }

      else
      {
        v31 = 35;
        v30 = 1;
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v26 && IOObjectRelease(v26))
    {
      _hdi_copy_device_nodes_cold_3(v50, buf);
    }
  }

  while ((v30 & 1) != 0);
  if (v23 == v18)
  {
    if (v44)
    {
      *v44 = v42;
    }

    *a4 = v47;
    *v45 = v43;
  }

  if (objecta && IOObjectRelease(objecta))
  {
    _hdi_copy_device_nodes_cold_3(v50, buf);
  }

  return v31;
}

uint64_t hdi_copy_mounted(void *a1, void *a2, NSObject *a3)
{
  v48 = *MEMORY[0x29EDCA608];
  notification = 0;
  v6 = getfsstat(0, 0, 2);
  if ((v6 & 0x80000000) != 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v45) = v10;
      _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
    v13 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = v6;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = malloc_type_calloc(v8, 0x878uLL, 0x8A375538uLL);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = malloc_type_calloc(v8, 0x878uLL, 0x8709206FuLL);
    if (!v9)
    {
      hdi_copy_mounted_cold_1(v43, buf);
    }
  }

  v13 = v9;
  if (getfsstat(v9, 2168 * v7, 2) < 0)
  {
    v10 = *__error();
    v11 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v45) = v10;
      _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
    }

    v12 = __error();
LABEL_16:
    v15 = 0;
    *v12 = v11;
    goto LABEL_59;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8A375538uLL);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = malloc_type_calloc(v8, 0xDFEuLL, 0x8709206FuLL);
    if (!v14)
    {
      hdi_copy_mounted_cold_2(v43, buf);
    }
  }

  v15 = v14;
  v16 = IONotificationPortCreate(0);
  if (!v16)
  {
    hdi_copy_mounted_cold_7();
  }

  v17 = v16;
  v18 = IOServiceMatching("IOMedia");
  v19 = IOServiceAddMatchingNotification(v17, "IOServiceMatched", v18, 0, 0, &notification);
  if (!v19)
  {
    v35 = a1;
    v36 = a2;
    v37 = 0;
    v34 = v8;
    while (1)
    {
      v22 = IOIteratorNext(notification);
      if (!v22)
      {
        v10 = 0;
        *v35 = v15;
        *v36 = v37;
        v15 = 0;
        goto LABEL_58;
      }

      v23 = v22;
      v38 = 0;
      cf = 0;
      memset(v43, 0, 255);
      memset(v42, 0, 255);
      memset(v41, 0, 255);
      v24 = IORegistryEntrySearchCFProperty(v22, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v24 && !IOObjectConformsTo(v23, "AppleAPFSVolume") && !IOObjectConformsTo(v23, "AppleAPFSMedia") && !IOObjectConformsTo(v23, "AppleAPFSContainerScheme") && !IOObjectConformsTo(v23, "AppleAPFSContainer"))
      {
        v25 = *__error();
        if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v24;
          _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_DEBUG, "found property: %@", buf, 0xCu);
        }

        *__error() = v25;
        v26 = _hdi_copy_device_nodes(a3, v23, 0, &cf, &v38);
        v27 = *__error();
        if (v26)
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v45) = v26;
            _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", buf, 8u);
          }

          *__error() = v27;
        }

        else
        {
          if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v45 = cf;
            v46 = 2112;
            v47 = v38;
            _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_DEBUG, "found dev nodes: dev = %@, sub = %@", buf, 0x16u);
          }

          *__error() = v27;
          if (!_CFStringGetUTF8String(v24, v43, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          if (!_CFStringGetUTF8String(cf, v42, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          v33 = a3;
          v28 = v38;
          if (!_CFStringGetUTF8String(v38, v41, 255))
          {
            hdi_copy_mounted_cold_3();
          }

          f_mntfromname = v13->f_mntfromname;
          v30 = v34;
          if (!v7)
          {
            a3 = v33;
            goto LABEL_49;
          }

          while (1)
          {
            bzero(buf, 0x400uLL);
            snprintf(buf, 0x400uLL, "%s%s", "/dev/", v41);
            if (!strcmp(f_mntfromname, buf))
            {
              break;
            }

            f_mntfromname += 2168;
            if (!--v30)
            {
              goto LABEL_47;
            }
          }

          v31 = &v15[3582 * v37];
          __strlcpy_chk();
          snprintf(v31 + 510, 0x400uLL, "%s%s", "/dev/", v42);
          snprintf(v31 + 1534, 0x400uLL, "%s%s", "/dev/", v41);
          strlcpy(v31 + 2558, f_mntfromname - 1024, 0x400uLL);
          ++v37;
LABEL_47:
          a3 = v33;
        }
      }

      v28 = v38;
LABEL_49:
      if (v28)
      {
        CFRelease(v28);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (IOObjectRelease(v23))
      {
        _hdi_copy_device_nodes_cold_3(v43, buf);
      }
    }
  }

  v20 = v19;
  *__error() = 83;
  v21 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v45) = v20;
    _os_log_impl(&dword_2986C0000, a3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
  }

  *__error() = v21;
  v10 = 0xFFFFFFFFLL;
LABEL_58:
  IONotificationPortDestroy(v17);
LABEL_59:
  if (notification && IOObjectRelease(notification))
  {
    _hdi_copy_device_nodes_cold_3(v43, buf);
  }

  free(v15);
  free(v13);
  return v10;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_10()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t cryptex_event_mask_ext_to_int(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v18[0] = &unk_2A1F01238;
  v18[1] = &unk_2A1F01250;
  v19[0] = &unk_2A1F01238;
  v19[1] = &unk_2A1F01250;
  v18[2] = &unk_2A1F01268;
  v18[3] = &unk_2A1F01280;
  v19[2] = &unk_2A1F01268;
  v19[3] = &unk_2A1F01280;
  v18[4] = &unk_2A1F01298;
  v19[4] = &unk_2A1F01298;
  obj = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 unsignedLongLongValue] & a1) != 0)
        {
          v16[0] = &unk_2A1F01238;
          v16[1] = &unk_2A1F01250;
          v17[0] = &unk_2A1F01238;
          v17[1] = &unk_2A1F01250;
          v16[2] = &unk_2A1F01268;
          v16[3] = &unk_2A1F01280;
          v17[2] = &unk_2A1F01268;
          v17[3] = &unk_2A1F01280;
          v16[4] = &unk_2A1F01298;
          v17[4] = &unk_2A1F01298;
          v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
          v9 = [v8 objectForKeyedSubscript:v7];
          v4 |= [v9 unsignedLongLongValue];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t cryptex_event_type_int_to_ext(uint64_t a1)
{
  v12[5] = *MEMORY[0x29EDCA608];
  v11[0] = &unk_2A1F01238;
  v11[1] = &unk_2A1F01250;
  v12[0] = &unk_2A1F01238;
  v12[1] = &unk_2A1F01250;
  v11[2] = &unk_2A1F01268;
  v11[3] = &unk_2A1F01280;
  v12[2] = &unk_2A1F01268;
  v12[3] = &unk_2A1F01280;
  v11[4] = &unk_2A1F01298;
  v12[4] = &unk_2A1F01298;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a1];
  v4 = [v2 allKeysForObject:v3];

  if ([v4 count] >= 2)
  {
    cryptex_event_type_int_to_ext_cold_1(&v9, v10);
  }

  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedLongLongValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

CryptexEventSubscriber *cryptex_event_subscribe_with_name(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, CFErrorRef *a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v11 = a4;
  v12 = a5;
  if (!a1)
  {
    v21 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    LOWORD(v31) = 0;
    v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_2986C0000, v21, 16, "Invalid name.", &v31, 2);
    Error = createError("cryptex_event_subscribe_with_name", "event.m", 275, "com.apple.security.cryptex", 3, 0, v23);
LABEL_25:
    v28 = Error;
    free(v23);
    v15 = 0;
LABEL_26:
    v29 = v28 != 0;
    if (!a6)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v13 = [CryptexEventSubscriber alloc];
  v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  v15 = [(CryptexEventSubscriber *)v13 initWithFlags:a3 name:v14];

  if (!v15)
  {
    v25 = [0 log];

    if (v25)
    {
      v26 = [0 log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      LOWORD(v31) = 0;
      v23 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_2986C0000, v26, 16, "Failed to create subscriber", &v31, 2);
    }

    else
    {
      LOWORD(v31) = 0;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to create subscriber", &v31, 2);
    }

    Error = createError("cryptex_event_subscribe_with_name", "event.m", 283, "com.apple.security.cryptex", 3, 0, v23);
    goto LABEL_25;
  }

  v16 = [(CryptexEventSubscriber *)v15 registerForEvents:a2 onQueue:v11 withCompletion:v12];
  if (!v16)
  {
    v28 = 0;
    goto LABEL_26;
  }

  v17 = [(CryptexEventSubscriber *)v15 log];

  if (v17)
  {
    v18 = [(CryptexEventSubscriber *)v15 log];
    v31 = 136315650;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v32 = a1;
    v33 = 2048;
    v34 = a2;
    v35 = 2112;
    v36 = v16;
    v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_2986C0000, v18, 16, "Failed to register subscriber '%s' for events with mask '0x%llx': %@", &v31, 32);
  }

  else
  {
    v31 = 136315650;
    v32 = a1;
    v33 = 2048;
    v34 = a2;
    v35 = 2112;
    v36 = v16;
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "Failed to register subscriber '%s' for events with mask '0x%llx': %@", &v31, 32);
  }

  v28 = createError("cryptex_event_subscribe_with_name", "event.m", 293, "com.apple.security.cryptex", 3, v16, v20);
  free(v20);

  if (v28)
  {
    [(CryptexEventSubscriber *)v15 cancel];

    v15 = 0;
    v29 = 1;
    if (a6)
    {
LABEL_27:
      if (v29)
      {
        v28 = v28;
        *a6 = v28;
      }
    }
  }

LABEL_29:

  return v15;
}

uint64_t cryptex_msm_get_string(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 16;
  v3 = a1 + 24;
  if (a2 != 3)
  {
    v3 = a1 + 32;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = a1 + 8;
  if (!a2)
  {
    v4 = a1;
  }

  if (a2 <= 1)
  {
    v2 = v4;
  }

  return *v2;
}

void cryptex_msm_destroy(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    free(*v1);
    free(v1[1]);
    free(v1[2]);
    free(v1[3]);
    free(v1[4]);
    free(v1);
    *a1 = 0;
  }
}

void cryptex_msm_array_destroy(void ***a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *v4++;
      v6 = v5;
      cryptex_msm_destroy(&v6);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t cryptex_install_4MSM(_DWORD *a1, char a2, char ***a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a2 & 1;
  v6 = cryptex_attr_create();
  cryptex_attr_set_persistence(v6, 2 * v5);
  cryptex_attr_set_nonce_persistence(v6, v5);
  bzero(v10, 0xE10uLL);
  if ((*a1 & 0x80000000) != 0 || (a1[1] & 0x80000000) != 0)
  {
    v7 = 0;
    v8 = 22;
  }

  else
  {
    v7 = cryptex_core_create();
    cryptex_asset_new_borrowed();
    cryptex_core_set_asset();
    cryptex_asset_new_borrowed();
    cryptex_core_set_asset();
    if ((a1[2] & 0x80000000) == 0)
    {
      cryptex_asset_new_borrowed();
      cryptex_core_set_asset();
    }

    if ((a1[3] & 0x80000000) == 0)
    {
      cryptex_asset_new_borrowed();
      cryptex_core_set_asset();
    }

    v8 = _cryptex_install_core(v7, v6, v10);
    if (!v8)
    {
      *a3 = _cryptex_msm_new_from_info(v10);
    }
  }

  if (v6)
  {
    os_release(v6);
  }

  if (v7)
  {
    os_release(v7);
  }

  return v8;
}

char **_cryptex_msm_new_from_info(const char *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_msm_new_from_info_cold_6(&v10, v11);
  }

  v3 = v2;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = strdup(a1 + 8);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = strdup(a1 + 8);
    if (!v4)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 8);
    }
  }

  *v3 = v4;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v5 = strdup(a1 + 263);
      if (v5)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v5 = strdup(a1 + 263);
    if (!v5)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 263);
    }
  }

  v3[1] = v5;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v6 = strdup(a1 + 518);
      if (v6)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v6 = strdup(a1 + 518);
    if (!v6)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 518);
    }
  }

  v3[2] = v6;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v7 = strdup(a1 + 1542);
      if (v7)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v7 = strdup(a1 + 1542);
    if (!v7)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 1542);
    }
  }

  v3[3] = v7;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v8 = strdup(a1 + 2566);
      if (v8)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v8 = strdup(a1 + 2566);
    if (!v8)
    {
      _cryptex_msm_new_from_info_cold_1(a1 + 2566);
    }
  }

  v3[4] = v8;
  return v3;
}

CFIndex cryptex_uninstall_4MSM(uint64_t a1)
{
  cf = 0;
  v2 = cryptex_attr_create();
  cryptex_attr_set_uninstall_flags(v2, 1);
  if (!cryptex_uninstall(a1, 0, v2, &cf))
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  TopLevelPosixError = 0;
  if (v2)
  {
LABEL_5:
    os_release(v2);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

uint64_t cryptex_copy_list_4MSM(uint64_t a1, void *a2, size_t *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v5 = _cryptex_copy_connected_actor(_g, MEMORY[0x29EDC9680]);
  if (_cryptex_copy_list(&v20, &v19))
  {
    v21 = 0;
    v22 = 0;
    v6 = _cryptex_copy_list_lossy(&v22, &v21);
    if (!v6)
    {
      v7 = v21;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v8 = malloc_type_calloc(v7, 8uLL, 0x8A375538uLL);
          if (v8)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v8 = malloc_type_calloc(v7, 8uLL, 0x8709206FuLL);
        if (!v8)
        {
          cryptex_copy_list_4MSM_cold_1(v23, v24);
        }
      }

      v15 = v8;
      if (v21)
      {
        v16 = 0;
        for (i = 0; i < v21; ++i)
        {
          v15[i] = _cryptex_msm_new_from_info(v22 + v16);
          v16 += 3600;
        }
      }

      free(v22);
      v6 = 0;
      *a3 = v21;
      *a2 = v15;
    }
  }

  else
  {
    v9 = v19;
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v10 = malloc_type_calloc(v9, 8uLL, 0x8A375538uLL);
        if (v10)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v10 = malloc_type_calloc(v9, 8uLL, 0x8709206FuLL);
      if (!v10)
      {
        cryptex_copy_list_4MSM_cold_1(v23, v24);
      }
    }

    v11 = v10;
    v12 = v19;
    if (v19)
    {
      v13 = 0;
      for (j = 0; j < v19; ++j)
      {
        v11[j] = _cryptex_msm_new_from_info(v20 + v13);
        v12 = v19;
        v13 += 3600;
      }
    }

    v6 = 0;
    *a2 = v11;
    *a3 = v12;
  }

  free(v20);
  if (v5)
  {
    os_release(v5);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v8, v9, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_4_0()
{
  *v0 = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_6(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

size_t OUTLINED_FUNCTION_8(const char *__s)
{

  return strlen(__s);
}

uint64_t session_create_from_core(uint64_t a1)
{
  v2 = _session_alloc(112);
  object_proto_init(v2 + 16, "com.apple.security.libcryptex", "cryptex.session");
  *(v2 + 88) = dispatch_queue_create("com.apple.security.libcryptex.session_handler", 0);
  *(v2 + 96) = 0;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = a1;
  *(v2 + 104) = 0;
  return v2;
}

uint64_t daemon_for_session_subsystem(_DWORD *a1)
{
  actor = cryptex_subsystem_create_actor();
  v3 = cryptex_actor_connect();
  *a1 = v3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      daemon_for_session_subsystem_cold_1();
    }

    return 0;
  }

  return actor;
}

void session_activate_endpoint(uint64_t a1)
{
  v2 = xpc_connection_create_from_endpoint(*(*(a1 + 40) + 88));
  *(a1 + 80) = v2;
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = __session_activate_endpoint_block_invoke;
  handler[3] = &__block_descriptor_tmp_10;
  handler[4] = a1;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_set_target_queue(*(a1 + 80), *(a1 + 88));
  xpc_connection_activate(*(a1 + 80));
}

void __session_activate_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C28F4F0](a2);
  if (v4 == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(a2, "object");
    int64 = xpc_dictionary_get_int64(a2, "event");
    *(*(a1 + 32) + 64) = xpc_dictionary_get_int64(a2, "reason");
    uint64 = xpc_dictionary_get_uint64(a2, "code");
    v10 = *(a1 + 32);
    *(v10 + 72) = uint64;
    if (int64 == 32)
    {
      v11 = xpc_dictionary_get_int64(a2, "error_event");
      v10 = *(a1 + 32);
      *(v10 + 104) = v11;
    }

    if (value)
    {
      v12 = cryptex_session_core_create_from_xpc();
      v10 = *(a1 + 32);
      if (v12)
      {
        v13 = v12;
        if (*(v10 + 40))
        {
          cryptex_session_core_merge();
        }

        os_release(v13);
        v10 = *(a1 + 32);
      }
    }

    v14 = *(v10 + 48);
    if (v14)
    {
      v15 = *(v10 + 56);
      if (v15 == 64 || (v15 & int64) >= 1)
      {
        v17 = *(v10 + 96);
        if (v17)
        {
          v19[0] = MEMORY[0x29EDCA5F8];
          v19[1] = 0x40000000;
          v19[2] = __session_activate_endpoint_block_invoke_2;
          v19[3] = &__block_descriptor_tmp;
          v19[4] = v10;
          v19[5] = int64;
          dispatch_sync(v17, v19);
        }

        else
        {
          v18 = *(v14 + 16);

          v18(v14, int64);
        }
      }
    }
  }

  else if (v4 == MEMORY[0x29EDCAA18] && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
    *buf = 134218242;
    v21 = v5;
    v22 = 2080;
    v23 = string;
    _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Connection %p error: %s", buf, 0x16u);
  }
}

uint64_t _CFCreateAssertImpl(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3);
  }

  return result;
}

char *_CFStringCopyUTF8String(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding <= -2)
  {
    _CFStringCopyUTF8String_cold_1();
  }

  v4 = MaximumSizeForEncoding;
  v5 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x55514AAEuLL);
  if (v5)
  {
    v6 = v5;
    CString = CFStringGetCString(a1, v5, v4 + 1, 0x8000100u);
    if (CString)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (CString)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  free(v5);
  return v8;
}

char *_CFStringGetUTF8String(const __CFString *a1, char *a2, CFIndex a3)
{
  if (a3 < 0)
  {
    _CFStringGetUTF8String_cold_1();
  }

  if (CFStringGetCString(a1, a2, a3, 0x8000100u))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable, "CFMutableDictionary");
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_29EEA76F0;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x29EDB8F68];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

CFIndex _CFErrorGetTopLevelPosixError(const void *a1)
{
  Code = a1;
  if (a1)
  {
    v2 = _CFErrorCopyTopLevelErrorWithDomain(a1, @"com.apple.security.cryptex.posix");
    v3 = v2;
    if (v2)
    {
      Domain = CFErrorGetDomain(v2);
      if (CFEqual(Domain, @"com.apple.security.cryptex.posix"))
      {
        Code = CFErrorGetCode(v3);
        goto LABEL_10;
      }
    }

    v5 = CFErrorGetDomain(Code);
    if (CFEqual(v5, @"com.apple.security.cryptex"))
    {
      v6 = CFErrorGetCode(Code);
      if (v6 <= 0x26)
      {
        Code = dword_2986E85A8[v6 & 0x3F];
        if (!v3)
        {
          return Code;
        }

        goto LABEL_10;
      }
    }

    Code = 0xFFFFFFFFLL;
    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return Code;
}

uint64_t _CFErrorHasDomainAndCode(const void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFErrorGetTypeID();
    v8 = 0;
    if (a2 && v6 == TypeID)
    {
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 0x40000000;
      v10[2] = ___CFErrorHasDomainAndCode_block_invoke;
      v10[3] = &unk_29EEA7718;
      v10[5] = a2;
      v10[6] = a3;
      v10[4] = &v11;
      _CFErrorIterUnderlying(a1, v10);
      v8 = *(v12 + 24);
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

uint64_t _cryptex_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_alloc_cold_1();
  }

  return result;
}

uint64_t _cryptex_attr_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_attr_alloc_cold_1();
  }

  return result;
}

uint64_t _cryptex_bundle_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_bundle_alloc_cold_1();
  }

  return result;
}

uint64_t _cryptex_su_preboot_bundle_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_su_preboot_bundle_alloc_cold_1();
  }

  return result;
}

uint64_t _cryptex_signing_service_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_signing_service_alloc_cold_1();
  }

  return result;
}

uint64_t _session_alloc(uint64_t a1)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _session_alloc_cold_1();
  }

  return result;
}

void *_cryptex_copy_connected_actor(uint64_t a1, void *a2)
{
  v4 = (a1 + 24 * *a2);
  os_unfair_lock_lock(v4 + 4);
  v5 = _cryptex_copy_connected_actor_locked(a1, a2);
  os_unfair_lock_unlock(v4 + 4);
  return v5;
}

void *_cryptex_copy_connected_actor_locked(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = a1 + 24 * *a2;
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  actor = v5;
  if (!v5)
  {
    actor = cryptex_subsystem_create_actor();
    *v4 = actor;
    v7 = cryptex_actor_connect();
    v8 = actor[2];
    v9 = *__error();
    v10 = actor[4];
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "[anonymous]";
        v12 = a2[2];
        if (v8)
        {
          v11 = v8;
        }

        v20 = 136446722;
        v21 = v11;
        v22 = 2080;
        v23 = v12;
        v24 = 1024;
        v25 = v7;
        v13 = "%{public}s: connect: %s: %{darwin.errno}d";
        v14 = v10;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 28;
LABEL_11:
        _os_log_impl(&dword_2986C0000, v14, v15, v13, &v20, v16);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      v18 = a2[2];
      if (v8)
      {
        v17 = v8;
      }

      v20 = 136446466;
      v21 = v17;
      v22 = 2080;
      v23 = v18;
      v13 = "%{public}s: connect: %s: success";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 22;
      goto LABEL_11;
    }

    *__error() = v9;
  }

  return actor;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v8, v9, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_2_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void _cryptex_bundle_dealloc(void *a1)
{
  close_drop_optional_np();
  close_drop_optional_np();
  v2 = a1[10];
  if (v2)
  {
    os_release(v2);
  }

  v4 = (a1 + 8);
  v3 = a1[8];
  v15 = v3;
  if (v3)
  {
    do
    {
      v5 = *v4;
      if (*v4 == v3)
      {
        v6 = (a1 + 8);
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5 != v3);
      }

      v7 = *v3;
      *v6 = *v5;
      *v3 = -1;
      _cryptex_list_elm_destroy(&v15);
      v15 = v7;
      v3 = v7;
    }

    while (v7);
  }

  v9 = (a1 + 9);
  v8 = a1[9];
  v14 = v8;
  if (v8)
  {
    do
    {
      v10 = *v9;
      if (*v9 == v8)
      {
        v12 = a1 + 9;
      }

      else
      {
        do
        {
          v11 = v10;
          v10 = v10[2];
        }

        while (v10 != v8);
        v12 = v11 + 2;
      }

      v13 = v8[2];
      *v12 = v10[2];
      v8[2] = -1;
      _cryptex_bundle_asset_destroy(&v14);
      v14 = v13;
      v8 = v13;
    }

    while (v13);
  }

  object_proto_destroy((a1 + 2));
}

void _cryptex_list_elm_destroy(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    os_release(v1[1]);
    free(v1);
    *a1 = 0;
  }
}

void _cryptex_bundle_asset_destroy(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    cryptex_asset_destroy();
    free(*v1);
    free(v1[1]);
    free(v1);
    *a1 = 0;
  }
}

uint64_t _cryptex_bundle_new_asset_from_object(int a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = _xpc_plist_value_copy(&_path, a3);
  if (v7)
  {
    v8 = v7;
    string_ptr = xpc_string_get_string_ptr(v7);
    v10 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 40);
      *buf = 136315394;
      v21 = v11;
      v22 = 2080;
      v23 = string_ptr;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s => %s", buf, 0x16u);
    }

    *__error() = v10;
    v12 = openat(a1, string_ptr, 0);
    v18 = v12;
    if (v12 < 0)
    {
      v14 = v12;
      v13 = *__error();
      v16 = *__error();
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v21) = v13;
        _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v16;
    }

    else
    {
      v13 = 0;
      *a4 = cryptex_asset_new();
      v14 = v18;
    }

    if (v14 != -1 && close(v14) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v19, buf);
    }

    os_release(v8);
  }

  else
  {
    v15 = *__error();
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "Path";
      v22 = 1024;
      LODWORD(v23) = 212;
      _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "missing property: %s: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v15;
    return 212;
  }

  return v13;
}

void *_cryptex_list_find_cryptex_elm(void *a1, uint64_t a2, const char *a3, int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (*a1)
  {
    do
    {
      v7 = v6[1];
      v8 = _cryptex_identity_copy_description(v7 + 56);
      v9 = *(v7 + 16);
      v10 = *__error();
      v11 = *(v7 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        v25 = v12;
        v26 = 2080;
        v27 = v8;
        _os_log_impl(&dword_2986C0000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: cryptex identity: %s", buf, 0x16u);
      }

      *__error() = v10;
      if (_cryptex_identity_matches_host(v7 + 56, a2))
      {
        if (a3)
        {
          if (!strcmp(a3, *(v7 + 16)))
          {
            goto LABEL_45;
          }
        }

        else if (*(v7 + 40))
        {
LABEL_45:
          free(v8);
          return v6;
        }
      }

      free(v8);
      v6 = *v6;
    }

    while (v6);
  }

  if (a4)
  {
    v13 = *a1;
    if (*a1)
    {
      v6 = 0;
      while (1)
      {
        v14 = v13[1];
        v15 = _cryptex_identity_matches_host(v14 + 56, a2);
        if (a3)
        {
          v16 = strcmp(a3, *(v14 + 16)) == 0;
          if (a2)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v16 = 0;
          if (a2)
          {
LABEL_19:
            if (*(v14 + 56))
            {
              v17 = *(v14 + 64);
              if ((v17 & 2) != 0)
              {
                v18 = (v17 >> 2) & 1;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            if (*a2)
            {
              v19 = (*(a2 + 8) & 2) == 0 || (*(a2 + 8) & 4) == 0;
            }

            else
            {
              v19 = 1;
            }

            if (_cryptex_identity_matches_host(v14 + 56, a2) || ((v19 | v18 ^ 1) & 1) == 0 && (*(v14 + 64) & 1) != 0 && _cryptex_identity_equal_cryptex1(a2, (v14 + 56)) && _cryptex_identity_equal_cryptex1_chipid(a2, (v14 + 56)) || (v18 & 1) == 0 && (*(v14 + 64)) && ((*(v14 + 40) | v16))
            {
              v20 = *__error();
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "found a generic cryptex match", buf, 2u);
              }

              *__error() = v20;
              if (v15 || v16 || v6 == 0)
              {
                v6 = v13;
              }
            }
          }
        }

        v13 = *v13;
        if (!v13)
        {
          return v6;
        }
      }
    }
  }

  return 0;
}

BOOL _cryptex_identity_matches_host(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = _cryptex_identity_equal_device(a2, a1);
      if (result)
      {
        if (!*a2 || !*a1)
        {
          return 1;
        }

        if ((*(a2 + 8) & 2) != 0 && (*(a1 + 8) & 2) != 0)
        {
          result = _cryptex_identity_equal_cryptex1(a2, a1);
          if (!result)
          {
            return result;
          }

          if (!*a2)
          {
            return 1;
          }
        }

        if (!*a1)
        {
          return 1;
        }

        if ((*(a2 + 8) & 4) == 0)
        {
          return 1;
        }

        if ((*(a1 + 8) & 4) == 0)
        {
          return 1;
        }

        result = _cryptex_identity_equal_cryptex1_chipid(a2, a1);
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

char **_cryptex_bundle_asset_new(uint64_t a1, const char *a2, const char *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x8709206FuLL);
  if (!v5)
  {
    _cryptex_bundle_asset_new_cold_3(&v11, v12);
  }

  v6 = v5;
  v7 = cryptex_asset_copy();
  v6[3] = v7;
  *(v7 + 16) = dup_np();
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v8 = strdup(a2);
      if (v8)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v8 = strdup(a2);
    if (!v8)
    {
      _cryptex_bundle_asset_new_cold_1(a2, &v11, v12);
    }
  }

  *v6 = v8;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = strdup(a3);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = strdup(a3);
    if (!v9)
    {
      _cryptex_bundle_asset_new_cold_1(a3, &v11, v12);
    }
  }

  v6[1] = v9;
  return v6;
}

void *_cryptex_list_elm_new(void *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
  if (!v2)
  {
    _cryptex_list_elm_new_cold_1(&v5, v6);
  }

  v3 = v2;
  v2[1] = os_retain(a1);
  return v3;
}

void *cryptex_bundle_create(uint64_t a1)
{
  v2 = _cryptex_bundle_alloc(88);
  v2[5] = a1;
  v2[6] = -1;
  v2[8] = 0;
  v2[9] = 0;
  object_proto_init((v2 + 2), "com.apple.security.libcryptex", "bundle");
  return v2;
}

void *cryptex_bundle_create_with_directory(uint64_t a1, uint64_t a2)
{
  v3 = _cryptex_bundle_alloc(88);
  v3[5] = a2;
  v3[6] = -1;
  v3[8] = 0;
  v3[9] = 0;
  object_proto_init((v3 + 2), "com.apple.security.libcryptex", "bundle");
  *(v3 + 12) = claimfd_np();
  return v3;
}

uint64_t cryptex_bundle_copy_cryptex2(uint64_t a1, _OWORD *a2, const char *a3, void **a4, CFTypeRef *a5)
{
  v40 = *MEMORY[0x29EDCA608];
  v10 = _cryptex_bundle_init(a1);
  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *v38 = 136446210;
      *&v38[4] = v13;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_2986C0000, v11, 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), v38, 12, *v38);
    }

    else
    {
      v23 = *(a1 + 16);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *v38 = 136446210;
      *&v38[4] = v23;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), v38, 12, *v38);
    }

    v24 = v14;
    Error = createError("cryptex_bundle_copy_cryptex2", "bundle.c", 1341, "com.apple.security.cryptex", 6, v10, v14);
    v15 = 0;
  }

  else
  {
    v15 = _cryptex_identity_copy_description(a2);
    v16 = a2[1];
    *v38 = *a2;
    *&v38[16] = v16;
    v39 = a2[2];
    cryptex_elm = _cryptex_list_find_cryptex_elm((a1 + 64), v38, a3, 1);
    if (cryptex_elm)
    {
      v18 = cryptex_elm;
      if (!cryptex_core_open())
      {
        *a4 = os_retain(v18[1]);
        free(v15);
        return 1;
      }

      v19 = *(a1 + 32);
      if (v19)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v21 = *(a1 + 16);
        if (!v21)
        {
          v21 = "[anonymous]";
        }

        *v38 = 136446210;
        *&v38[4] = v21;
        v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_2986C0000, v19, 16, "%{public}s: Failed to open all cryptex assets", COERCE_DOUBLE(136446210), v38, 12, *v38);
      }

      else
      {
        v32 = *(a1 + 16);
        if (!v32)
        {
          v32 = "[anonymous]";
        }

        *v38 = 136446210;
        *&v38[4] = v32;
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to open all cryptex assets", COERCE_DOUBLE(136446210), v38, 12, *v38);
      }

      v24 = v22;
      v33 = 1364;
      v34 = 6;
    }

    else
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v28 = *(a1 + 16);
        if (!v28)
        {
          v28 = "[anonymous]";
        }

        v29 = "default";
        *v38 = 136446722;
        *&v38[4] = v28;
        *&v38[12] = 2080;
        *&v38[14] = v15;
        if (a3)
        {
          v29 = a3;
        }

        *&v38[22] = 2080;
        *&v38[24] = v29;
        v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_2986C0000, v26, 16, "%{public}s: Failed to find identity %s with variant %s", v38, 32, *v38, *&v38[16]);
      }

      else
      {
        v35 = *(a1 + 16);
        if (!v35)
        {
          v35 = "[anonymous]";
        }

        v36 = "default";
        *v38 = 136446722;
        *&v38[4] = v35;
        *&v38[12] = 2080;
        if (a3)
        {
          v36 = a3;
        }

        *&v38[14] = v15;
        *&v38[22] = 2080;
        *&v38[24] = v36;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to find identity %s with variant %s", v38, 32, *v38, *&v38[16]);
      }

      v24 = v30;
      v33 = 1354;
      v34 = 8;
    }

    Error = createError("cryptex_bundle_copy_cryptex2", "bundle.c", v33, "com.apple.security.cryptex", v34, 0, v24);
  }

  free(v24);
  if (a5 && Error)
  {
    *a5 = CFRetain(Error);
    free(v15);
  }

  else
  {
    free(v15);
    if (!Error)
    {
      v31 = 1;
      if (!v10)
      {
        return v31;
      }

      goto LABEL_48;
    }
  }

  CFRelease(Error);
  v31 = 0;
  if (v10)
  {
LABEL_48:
    CFRelease(v10);
  }

  return v31;
}

void *_cryptex_bundle_init(uint64_t a1)
{
  v297 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    v3 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_restore, 0, 0, (a1 + 52));
    if (v3)
    {
      Error = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        v7 = "[anonymous]";
        if (*(a1 + 16))
        {
          v7 = *(a1 + 16);
        }

        v293[0].st_dev = 136446466;
        *&v293[0].st_mode = v7;
        WORD2(v293[0].st_ino) = 2080;
        *(&v293[0].st_ino + 6) = "Restore";
        v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_2986C0000, v5, 16, "%{public}s: failed to open bundle subpath: %s", v293, 22);
      }

      else
      {
        v17 = "[anonymous]";
        if (*(a1 + 16))
        {
          v17 = *(a1 + 16);
        }

        v293[0].st_dev = 136446466;
        *&v293[0].st_mode = v17;
        WORD2(v293[0].st_ino) = 2080;
        *(&v293[0].st_ino + 6) = "Restore";
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to open bundle subpath: %s", v293, 22);
      }

      v18 = v8;
      v19 = 902;
      goto LABEL_420;
    }

    LODWORD(v292) = -1;
    v296 = 0;
    memset(v295, 0, sizeof(v295));
    v11 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_manifest, 0, 0, &v292);
    v12 = *(a1 + 32);
    v13 = &loc_2986E8000;
    if (v11)
    {
      if (v12)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v15 = "[anonymous]";
        if (*(a1 + 16))
        {
          v15 = *(a1 + 16);
        }

        v293[0].st_dev = 136446210;
        *&v293[0].st_mode = v15;
        v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_2986C0000, v12, 16, "%{public}s: Failed to open build manifest", v293, 12);
      }

      else
      {
        v33 = "[anonymous]";
        if (*(a1 + 16))
        {
          v33 = *(a1 + 16);
        }

        v293[0].st_dev = 136446210;
        *&v293[0].st_mode = v33;
        v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to open build manifest", v293, 12);
      }

      v34 = v16;
      Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 89, "com.apple.security.cryptex", 6, v11, v16);
      free(v34);
      v21 = v292;
    }

    else
    {
      v20 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG);
      v21 = v292;
      if (v20)
      {
        bzero(v293, 0x400uLL);
        if (!realpath_np())
        {
          v22 = *(a1 + 16);
          v23 = *__error();
          v24 = *(a1 + 32);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = "[anonymous]";
            if (v22)
            {
              v25 = v22;
            }

            *buf = 136446466;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = v293;
            _os_log_impl(&dword_2986C0000, v24, OS_LOG_TYPE_DEBUG, "%{public}s: reading manifest: %s", buf, 0x16u);
          }

          *__error() = v23;
        }
      }

      file = _read_file(v21, v295);
      if (file)
      {
        v27 = file;
        v28 = file;
        v29 = *(a1 + 32);
        if (v29)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          v31 = *(a1 + 16);
          if (!v31)
          {
            v31 = "[anonymous]";
          }

          v293[0].st_dev = 136446466;
          *&v293[0].st_mode = v31;
          WORD2(v293[0].st_ino) = 1024;
          *(&v293[0].st_ino + 6) = v27;
          v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986C0000, v29, 16, "%{public}s: Failed to read BuildManifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, 18);
        }

        else
        {
          v39 = *(a1 + 16);
          if (!v39)
          {
            v39 = "[anonymous]";
          }

          v293[0].st_dev = 136446466;
          *&v293[0].st_mode = v39;
          WORD2(v293[0].st_ino) = 1024;
          *(&v293[0].st_ino + 6) = file;
          v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to read BuildManifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, 18);
        }

        v40 = v32;
        Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 105, "com.apple.security.cryptex.posix", v28, 0, v32);
        v41 = v40;
      }

      else
      {
        v36 = xpc_create_from_plist();
        if (v36)
        {
          v37 = v36;
          *(a1 + 80) = xpc_retain(v36);
          buff_destroy(v295, v38);
          os_release(v37);
          Error = 0;
          goto LABEL_56;
        }

        v266 = *(a1 + 32);
        if (v266)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v267 = 3;
          }

          else
          {
            v267 = 2;
          }

          v268 = *(a1 + 16);
          if (!v268)
          {
            v268 = "[anonymous]";
          }

          v293[0].st_dev = 136446466;
          *&v293[0].st_mode = v268;
          WORD2(v293[0].st_ino) = 1024;
          *(&v293[0].st_ino + 6) = 212;
          v269 = _os_log_send_and_compose_impl(v267, 0, 0, 0, &dword_2986C0000, v266, 16, "%{public}s: Failed to parse BuildManifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, 18);
        }

        else
        {
          v278 = *(a1 + 16);
          if (!v278)
          {
            v278 = "[anonymous]";
          }

          v293[0].st_dev = 136446466;
          *&v293[0].st_mode = v278;
          WORD2(v293[0].st_ino) = 1024;
          *(&v293[0].st_ino + 6) = 212;
          v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to parse BuildManifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, 18);
        }

        v279 = v269;
        Error = createError("_cryptex_bundle_read_manifest", "bundle.c", 112, "com.apple.security.cryptex.posix", 212, 0, v269);
        v41 = v279;
      }

      free(v41);
    }

    buff_destroy(v295, v35);
LABEL_56:
    if (v21 != -1 && close(v21) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(v295, v293);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (Error)
    {
      v42 = *(a1 + 32);
      if (v42)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v44 = "[anonymous]";
        if (*(a1 + 16))
        {
          v44 = *(a1 + 16);
        }

        v293[0].st_dev = 136446210;
        *&v293[0].st_mode = v44;
        LODWORD(v280) = 12;
        v45 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_2986C0000, v42, 16, "%{public}s: read build manifest", v293, v280);
      }

      else
      {
        v261 = "[anonymous]";
        if (*(a1 + 16))
        {
          v261 = *(a1 + 16);
        }

        v293[0].st_dev = 136446210;
        *&v293[0].st_mode = v261;
        LODWORD(v280) = 12;
        v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: read build manifest", v293, v280);
      }

      v18 = v45;
      v19 = 911;
      goto LABEL_420;
    }

    v46 = _xpc_plist_value_copy(&_build_identities, *(a1 + 80));
    if (!v46)
    {
      v262 = *(a1 + 32);
      if (v262)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v263 = 3;
        }

        else
        {
          v263 = 2;
        }

        v264 = *(a1 + 16);
        if (!v264)
        {
          v264 = "[anonymous]";
        }

        v293[0].st_dev = 136446466;
        *&v293[0].st_mode = v264;
        WORD2(v293[0].st_ino) = 1024;
        *(&v293[0].st_ino + 6) = 212;
        LODWORD(v280) = 18;
        v265 = _os_log_send_and_compose_impl(v263, 0, 0, 0, &dword_2986C0000, v262, 16, "%{public}s: malformed build manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, v280);
      }

      else
      {
        v270 = *(a1 + 16);
        if (!v270)
        {
          v270 = "[anonymous]";
        }

        v293[0].st_dev = 136446466;
        *&v293[0].st_mode = v270;
        WORD2(v293[0].st_ino) = 1024;
        *(&v293[0].st_ino + 6) = 212;
        LODWORD(v280) = 18;
        v265 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: malformed build manifest %{darwin.errno}d", COERCE_DOUBLE(136446466), v293, v280);
      }

      v271 = v265;
      Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 739, "com.apple.security.cryptex.posix", 212, 0, v265);
      free(v271);
LABEL_408:
      if (!Error)
      {
        return 0;
      }

      v272 = *(a1 + 32);
      if (v272)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v273 = 3;
        }

        else
        {
          v273 = 2;
        }

        v274 = "[anonymous]";
        if (*(a1 + 16))
        {
          v274 = *(a1 + 16);
        }

        v293[0].st_dev = v13[167];
        *&v293[0].st_mode = v274;
        LODWORD(v280) = 12;
        v275 = _os_log_send_and_compose_impl(v273, 0, 0, 0, &dword_2986C0000, v272, 16, "%{public}s: find assemblies", v293, v280);
      }

      else
      {
        v276 = "[anonymous]";
        if (*(a1 + 16))
        {
          v276 = *(a1 + 16);
        }

        v293[0].st_dev = v13[167];
        *&v293[0].st_mode = v276;
        LODWORD(v280) = 12;
        v275 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: find assemblies", v293, v280);
      }

      v18 = v275;
      v19 = 920;
LABEL_420:
      empty = createError("_cryptex_bundle_init", "bundle.c", v19, "com.apple.security.cryptex", 6, Error, v18);
      free(v18);
      CFRelease(Error);
      return empty;
    }

    v47 = v46;
    if (xpc_array_get_count(v46))
    {
      Error = 0;
      v48 = 0;
      xarray = 0;
      v289 = v47;
      while (1)
      {
        *buf = 1;
        memset(&buf[8], 0, 40);
        v49 = _xpc_plist_value_copy_at(_build_identity, v47, v48);
        v50 = v49;
        v51 = *(a1 + 32);
        if (!v49)
        {
          if (v51)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v58 = 3;
            }

            else
            {
              v58 = 2;
            }

            v59 = *(a1 + 16);
            v293[0].st_dev = 136446466;
            if (!v59)
            {
              v59 = "[anonymous]";
            }

            *&v293[0].st_mode = v59;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 212;
            LODWORD(v280) = 18;
            v60 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_2986C0000, v51, 16, "%{public}s: malformed build identity %{darwin.errno}d", v293, v280);
          }

          else
          {
            v75 = *(a1 + 16);
            if (!v75)
            {
              v75 = "[anonymous]";
            }

            v293[0].st_dev = 136446466;
            *&v293[0].st_mode = v75;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 212;
            LODWORD(v280) = 18;
            v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: malformed build identity %{darwin.errno}d", v293, v280);
          }

          v72 = v60;
          v74 = 760;
          v73 = 212;
          goto LABEL_102;
        }

        v52 = _cryptex_identity_init_from_dict(v49, *(a1 + 32), buf, 1);
        if (v52)
        {
          v53 = v52;
          v54 = *(a1 + 32);
          if (v54)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v55 = 3;
            }

            else
            {
              v55 = 2;
            }

            v56 = *(a1 + 16);
            v293[0].st_dev = 136446466;
            if (!v56)
            {
              v56 = "[anonymous]";
            }

            *&v293[0].st_mode = v56;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = v53;
            LODWORD(v280) = 18;
            v57 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &dword_2986C0000, v54, 16, "%{public}s: invalid build identity %{darwin.errno}d", v293, v280);
          }

          else
          {
            v71 = *(a1 + 16);
            if (!v71)
            {
              v71 = "[anonymous]";
            }

            v293[0].st_dev = 136446466;
            *&v293[0].st_mode = v71;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = v52;
            LODWORD(v280) = 18;
            v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: invalid build identity %{darwin.errno}d", v293, v280);
          }

          v72 = v57;
          v73 = v53;
          v74 = 767;
LABEL_102:
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", v74, "com.apple.security.cryptex.posix", v73, 0, v72);
          v76 = 0;
          object = 0;
          v77 = 0;
LABEL_103:
          free(v72);
          free(v77);
          v78 = 2;
          goto LABEL_104;
        }

        v61 = _cryptex_identity_copy_description(buf);
        if (!v61)
        {
          v79 = *(a1 + 32);
          if (v79)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v80 = 3;
            }

            else
            {
              v80 = 2;
            }

            v81 = *(a1 + 16);
            v293[0].st_dev = 136446466;
            if (!v81)
            {
              v81 = "[anonymous]";
            }

            *&v293[0].st_mode = v81;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 12;
            LODWORD(v280) = 18;
            v82 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_2986C0000, v79, 16, "%{public}s: invalid cryptex identity description %{darwin.errno}d", v293, v280);
          }

          else
          {
            v121 = *(a1 + 16);
            if (!v121)
            {
              v121 = "[anonymous]";
            }

            v293[0].st_dev = 136446466;
            *&v293[0].st_mode = v121;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 12;
            LODWORD(v280) = 18;
            v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: invalid cryptex identity description %{darwin.errno}d", v293, v280);
          }

          v72 = v82;
          v74 = 775;
          v73 = 12;
          goto LABEL_102;
        }

        v62 = v61;
        v63 = _xpc_plist_value_copy(&_info, v50);
        v290 = v63;
        v288 = v62;
        if (v63)
        {
          v64 = _xpc_plist_value_copy(&_variant, v63);
          if (v64)
          {
            goto LABEL_127;
          }

          v65 = *(a1 + 16);
          v66 = *__error();
          v67 = *(a1 + 32);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v68 = "[anonymous]";
            if (v65)
            {
              v68 = v65;
            }

            v293[0].st_dev = 136446210;
            *&v293[0].st_mode = v68;
            v69 = v67;
            v70 = "%{public}s: no variant, using generic variant";
LABEL_125:
            _os_log_impl(&dword_2986C0000, v69, OS_LOG_TYPE_DEBUG, v70, v293, 0xCu);
          }
        }

        else
        {
          v83 = *(a1 + 16);
          v66 = *__error();
          v84 = *(a1 + 32);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            v85 = "[anonymous]";
            if (v83)
            {
              v85 = v83;
            }

            v293[0].st_dev = 136446210;
            *&v293[0].st_mode = v85;
            v69 = v84;
            v70 = "%{public}s: no info, using generic variant";
            goto LABEL_125;
          }
        }

        v86 = __error();
        v64 = 0;
        *v86 = v66;
LABEL_127:
        object = v64;
        v87 = *(a1 + 16);
        v88 = *__error();
        v89 = *(a1 + 32);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v293[0].st_dev = 136446722;
          v90 = "[anonymous]";
          if (v87)
          {
            v90 = v87;
          }

          *&v293[0].st_mode = v90;
          WORD2(v293[0].st_ino) = 2048;
          *(&v293[0].st_ino + 6) = v48;
          HIWORD(v293[0].st_gid) = 2080;
          *&v293[0].st_rdev = v288;
          _os_log_impl(&dword_2986C0000, v89, OS_LOG_TYPE_DEBUG, "%{public}s: identity[%lu]: %s", v293, 0x20u);
        }

        *__error() = v88;
        if (object)
        {
          string_ptr = xpc_string_get_string_ptr(object);
        }

        else
        {
          string_ptr = 0;
        }

        v92 = *(a1 + 16);
        v93 = *__error();
        v94 = *(a1 + 32);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v95 = "[anonymous]";
          if (v92)
          {
            v95 = v92;
          }

          v293[0].st_dev = 136446722;
          *&v293[0].st_mode = v95;
          v96 = "generic";
          if (string_ptr)
          {
            v96 = string_ptr;
          }

          WORD2(v293[0].st_ino) = 2048;
          *(&v293[0].st_ino + 6) = v48;
          HIWORD(v293[0].st_gid) = 2080;
          *&v293[0].st_rdev = v96;
          _os_log_impl(&dword_2986C0000, v94, OS_LOG_TYPE_DEBUG, "%{public}s: variant[%lu] = %s", v293, 0x20u);
        }

        *__error() = v93;
        *&v293[0].st_dev = *buf;
        *&v293[0].st_uid = *&buf[16];
        v293[0].st_atimespec = *&buf[32];
        if (_cryptex_list_find_cryptex_elm((a1 + 64), v293, string_ptr, 0))
        {
          v97 = *(a1 + 32);
          v76 = v290;
          if (v97)
          {
            v98 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
            v99 = *(a1 + 16);
            if (v98)
            {
              v100 = 3;
            }

            else
            {
              v100 = 2;
            }

            v293[0].st_dev = 136447234;
            if (!v99)
            {
              v99 = "[anonymous]";
            }

            *&v293[0].st_mode = v99;
            WORD2(v293[0].st_ino) = 2048;
            *(&v293[0].st_ino + 6) = v48;
            HIWORD(v293[0].st_gid) = 2080;
            *&v293[0].st_rdev = v288;
            LOWORD(v293[0].st_atimespec.tv_sec) = 2080;
            *(&v293[0].st_atimespec.tv_sec + 2) = string_ptr;
            WORD1(v293[0].st_atimespec.tv_nsec) = 1024;
            HIDWORD(v293[0].st_atimespec.tv_nsec) = 22;
            LODWORD(v280) = 48;
            v101 = v97;
            v77 = v288;
            v102 = _os_log_send_and_compose_impl(v100, 0, 0, 0, &dword_2986C0000, v101, 16, "%{public}s: duplicated cryptex found at [%lu]:\nidentity: %s\nvariant = %s %{darwin.errno}d", v293, v280);
          }

          else
          {
            v120 = *(a1 + 16);
            if (!v120)
            {
              v120 = "[anonymous]";
            }

            v293[0].st_dev = 136447234;
            *&v293[0].st_mode = v120;
            WORD2(v293[0].st_ino) = 2048;
            *(&v293[0].st_ino + 6) = v48;
            HIWORD(v293[0].st_gid) = 2080;
            v77 = v288;
            *&v293[0].st_rdev = v288;
            LOWORD(v293[0].st_atimespec.tv_sec) = 2080;
            *(&v293[0].st_atimespec.tv_sec + 2) = string_ptr;
            WORD1(v293[0].st_atimespec.tv_nsec) = 1024;
            HIDWORD(v293[0].st_atimespec.tv_nsec) = 22;
            LODWORD(v280) = 48;
            v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: duplicated cryptex found at [%lu]:\nidentity: %s\nvariant = %s %{darwin.errno}d", v293, v280);
          }

          v72 = v102;
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 804, "com.apple.security.cryptex.posix", 22, 0, v102);
          v47 = v289;
          goto LABEL_103;
        }

        v76 = v290;
        xdict = _xpc_plist_value_copy(&_manifest, v50);
        if (!xdict)
        {
          v122 = *(a1 + 32);
          if (v122)
          {
            if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
            {
              v123 = 3;
            }

            else
            {
              v123 = 2;
            }

            v124 = *(a1 + 16);
            v293[0].st_dev = 136446466;
            if (!v124)
            {
              v124 = "[anonymous]";
            }

            *&v293[0].st_mode = v124;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 212;
            LODWORD(v280) = 18;
            v125 = _os_log_send_and_compose_impl(v123, 0, 0, 0, &dword_2986C0000, v122, 16, "%{public}s: no manifest %{darwin.errno}d", v293, v280);
          }

          else
          {
            v134 = *(a1 + 16);
            if (!v134)
            {
              v134 = "[anonymous]";
            }

            v293[0].st_dev = 136446466;
            *&v293[0].st_mode = v134;
            WORD2(v293[0].st_ino) = 1024;
            *(&v293[0].st_ino + 6) = 212;
            LODWORD(v280) = 18;
            v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: no manifest %{darwin.errno}d", v293, v280);
          }

          v72 = v125;
          v77 = v288;
          v47 = v289;
          Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 812, "com.apple.security.cryptex.posix", 212, 0, v125);
          goto LABEL_103;
        }

        *&v293[0].st_dev = *buf;
        *&v293[0].st_uid = *&buf[16];
        v293[0].st_atimespec = *&buf[32];
        v286 = _cryptex_create(v293, string_ptr, string_ptr == 0);
        v103 = _xpc_plist_value_copy(&_signatures, v50);
        v283 = v103;
        if (v103)
        {
          v104 = v103;
          xarraya = xpc_array_create(0, 0);
          if (xpc_array_get_count(v104))
          {
            v47 = v289;
            if (xpc_array_get_count(v104))
            {
              v105 = 0;
              while (1)
              {
                memset(v293, 0, 144);
                string = xpc_array_get_string(v104, v105);
                v106 = openat(*(a1 + 52), string, 0);
                if (v106 < 0)
                {
                  break;
                }

                v107 = v106;
                if (fstat(v106, v293) == -1)
                {
                  v141 = *__error();
                  v142 = *(a1 + 32);
                  if (v142)
                  {
                    v143 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v144 = *(a1 + 16);
                    if (v143)
                    {
                      v145 = 3;
                    }

                    else
                    {
                      v145 = 2;
                    }

                    *v295 = 136446722;
                    if (!v144)
                    {
                      v144 = "[anonymous]";
                    }

                    *&v295[4] = v144;
                    *&v295[12] = 2080;
                    *&v295[14] = string;
                    *&v295[22] = 1024;
                    *&v295[24] = v141;
                    LODWORD(v280) = 28;
                    v146 = _os_log_send_and_compose_impl(v145, 0, 0, 0, &dword_2986C0000, v142, 16, "%{public}s: Failed to stat signature file after open %s %{darwin.errno}d", v295, v280);
                  }

                  else
                  {
                    v162 = *(a1 + 16);
                    if (!v162)
                    {
                      v162 = "[anonymous]";
                    }

                    *v295 = 136446722;
                    *&v295[4] = v162;
                    *&v295[12] = 2080;
                    *&v295[14] = string;
                    *&v295[22] = 1024;
                    *&v295[24] = v141;
                    LODWORD(v280) = 28;
                    v146 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to stat signature file after open %s %{darwin.errno}d", v295, v280);
                  }

                  v159 = v146;
                  v13 = &loc_2986E8000;
                  v160 = v141;
                  v161 = 582;
                  goto LABEL_245;
                }

                st_size = v293[0].st_size;
                if (v293[0].st_size < 0)
                {
                  _cryptex_signing_service_read_fd_cold_1();
                }

                if (HIDWORD(v293[0].st_size))
                {
                  v147 = *(a1 + 32);
                  if (v147)
                  {
                    v148 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v149 = *(a1 + 16);
                    if (v148)
                    {
                      v150 = 3;
                    }

                    else
                    {
                      v150 = 2;
                    }

                    *v295 = 136446978;
                    if (!v149)
                    {
                      v149 = "[anonymous]";
                    }

                    *&v295[4] = v149;
                    *&v295[12] = 2048;
                    *&v295[14] = st_size;
                    *&v295[22] = 1024;
                    *&v295[24] = -1;
                    *&v295[28] = 1024;
                    *&v295[30] = 34;
                    LODWORD(v280) = 34;
                    v151 = _os_log_send_and_compose_impl(v150, 0, 0, 0, &dword_2986C0000, v147, 16, "%{public}s: payload too large: actual = %lu, expected <= %u %{darwin.errno}d", v295, v280);
                  }

                  else
                  {
                    v163 = *(a1 + 16);
                    if (!v163)
                    {
                      v163 = "[anonymous]";
                    }

                    *v295 = 136446978;
                    *&v295[4] = v163;
                    *&v295[12] = 2048;
                    *&v295[14] = v293[0].st_size;
                    *&v295[22] = 1024;
                    *&v295[24] = -1;
                    *&v295[28] = 1024;
                    *&v295[30] = 34;
                    LODWORD(v280) = 34;
                    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: payload too large: actual = %lu, expected <= %u %{darwin.errno}d", v295, v280);
                  }

                  v159 = v151;
                  v13 = &loc_2986E8000;
                  v161 = 593;
                  v160 = 34;
                  goto LABEL_245;
                }

                v109 = mmap(0, v293[0].st_size, 1, 1, v107, 0);
                if (v109 == -1)
                {
                  v152 = *__error();
                  v153 = *(a1 + 32);
                  if (v153)
                  {
                    v154 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                    v155 = *(a1 + 16);
                    if (v154)
                    {
                      v156 = 3;
                    }

                    else
                    {
                      v156 = 2;
                    }

                    *v295 = 136446722;
                    if (!v155)
                    {
                      v155 = "[anonymous]";
                    }

                    *&v295[4] = v155;
                    *&v295[12] = 2080;
                    *&v295[14] = string;
                    *&v295[22] = 1024;
                    *&v295[24] = v152;
                    LODWORD(v280) = 28;
                    v157 = _os_log_send_and_compose_impl(v156, 0, 0, 0, &dword_2986C0000, v153, 16, "%{public}s: failed to map buffer for file: %s %{darwin.errno}d", v295, v280);
                  }

                  else
                  {
                    v164 = *(a1 + 16);
                    if (!v164)
                    {
                      v164 = "[anonymous]";
                    }

                    *v295 = 136446722;
                    *&v295[4] = v164;
                    *&v295[12] = 2080;
                    *&v295[14] = string;
                    *&v295[22] = 1024;
                    *&v295[24] = v152;
                    LODWORD(v280) = 28;
                    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to map buffer for file: %s %{darwin.errno}d", v295, v280);
                  }

                  v159 = v157;
                  v13 = &loc_2986E8000;
                  v160 = v152;
                  v161 = 602;
                  goto LABEL_245;
                }

                v110 = v109;
                v111 = xpc_data_create(v109, st_size);
                xpc_array_append_value(xarraya, v111);
                v112 = *(a1 + 16);
                v282 = *__error();
                v113 = *(a1 + 32);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *v295 = 136446466;
                  v114 = "[anonymous]";
                  if (v112)
                  {
                    v114 = v112;
                  }

                  *&v295[4] = v114;
                  *&v295[12] = 2080;
                  *&v295[14] = string;
                  _os_log_impl(&dword_2986C0000, v113, OS_LOG_TYPE_DEFAULT, "%{public}s: added %s to ccx_im4m_array", v295, 0x16u);
                }

                *__error() = v282;
                v47 = v289;
                if (munmap(v110, st_size) == -1)
                {
                  _cryptex_bundle_init_cold_2(&v292, v295);
                }

                v76 = v290;
                v104 = v283;
                if (v111)
                {
                  os_release(v111);
                }

                if (++v105 >= xpc_array_get_count(v283))
                {
                  goto LABEL_166;
                }
              }

              v135 = *__error();
              v136 = *(a1 + 32);
              if (v136)
              {
                v137 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
                v138 = *(a1 + 16);
                if (v137)
                {
                  v139 = 3;
                }

                else
                {
                  v139 = 2;
                }

                *v295 = 136446722;
                if (!v138)
                {
                  v138 = "[anonymous]";
                }

                *&v295[4] = v138;
                *&v295[12] = 2080;
                *&v295[14] = string;
                *&v295[22] = 1024;
                *&v295[24] = v135;
                LODWORD(v280) = 28;
                v140 = _os_log_send_and_compose_impl(v139, 0, 0, 0, &dword_2986C0000, v136, 16, "%{public}s: Failed to open signature file from BuildManifest %s %{darwin.errno}d", v295, v280);
              }

              else
              {
                v158 = *(a1 + 16);
                if (!v158)
                {
                  v158 = "[anonymous]";
                }

                *v295 = 136446722;
                *&v295[4] = v158;
                *&v295[12] = 2080;
                *&v295[14] = string;
                *&v295[22] = 1024;
                *&v295[24] = v135;
                LODWORD(v280) = 28;
                v140 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to open signature file from BuildManifest %s %{darwin.errno}d", v295, v280);
              }

              v159 = v140;
              v13 = &loc_2986E8000;
              v160 = v135;
              v161 = 574;
LABEL_245:
              v165 = createError("_cryptex_bundle_populate_signatures", "bundle.c", v161, "com.apple.security.cryptex.posix", v160, 0, v159);
              free(v159);
              *(v286[6] + 208) = 0;
              v119 = v165;
LABEL_246:
              if (xarraya)
              {
                os_release(xarraya);
              }

              if (v119)
              {
                xarray = v119;
                v166 = *(a1 + 32);
                if (v166)
                {
                  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
                  {
                    v167 = 3;
                  }

                  else
                  {
                    v167 = 2;
                  }

                  v168 = *(a1 + 16);
                  if (!v168)
                  {
                    v168 = "[anonymous]";
                  }

                  v293[0].st_dev = 136446210;
                  *&v293[0].st_mode = v168;
                  LODWORD(v280) = 12;
                  v169 = _os_log_send_and_compose_impl(v167, 0, 0, 0, &dword_2986C0000, v166, 16, "%{public}s: Failed to populate signatures from bundle", v293, v280);
                }

                else
                {
                  v202 = *(a1 + 16);
                  if (!v202)
                  {
                    v202 = "[anonymous]";
                  }

                  v293[0].st_dev = 136446210;
                  *&v293[0].st_mode = v202;
                  LODWORD(v280) = 12;
                  v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to populate signatures from bundle", v293, v280);
                }

                v203 = v169;
                Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 831, "com.apple.security.cryptex", 6, xarray, v169);
                free(v203);
LABEL_328:
                v78 = 2;
                goto LABEL_329;
              }

              goto LABEL_256;
            }

LABEL_166:
            *(v286[6] + 208) = xpc_copy(xarraya);
            v115 = *(a1 + 16);
            v116 = *__error();
            v117 = *(a1 + 32);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              if (!v115)
              {
                v115 = "[anonymous]";
              }

              count = xpc_array_get_count(xarraya);
              v293[0].st_dev = 136446466;
              *&v293[0].st_mode = v115;
              WORD2(v293[0].st_ino) = 2048;
              *(&v293[0].st_ino + 6) = count;
              _os_log_impl(&dword_2986C0000, v117, OS_LOG_TYPE_DEFAULT, "%{public}s: added %lu signatures", v293, 0x16u);
            }

            v119 = 0;
            *__error() = v116;
            v13 = &loc_2986E8000;
          }

          else
          {
            v130 = *(a1 + 16);
            v131 = *__error();
            v132 = *(a1 + 32);
            v47 = v289;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              v133 = "[anonymous]";
              if (v130)
              {
                v133 = v130;
              }

              v293[0].st_dev = 136446210;
              *&v293[0].st_mode = v133;
              _os_log_impl(&dword_2986C0000, v132, OS_LOG_TYPE_DEFAULT, "%{public}s: Signatures array empty", v293, 0xCu);
            }

            v119 = 0;
            *__error() = v131;
            *(v286[6] + 208) = 0;
          }

          v76 = v290;
          goto LABEL_246;
        }

        v126 = *(a1 + 16);
        v127 = *__error();
        v128 = *(a1 + 32);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          v293[0].st_dev = 136446722;
          v129 = "[anonymous]";
          if (v126)
          {
            v129 = v126;
          }

          *&v293[0].st_mode = v129;
          WORD2(v293[0].st_ino) = 2080;
          *(&v293[0].st_ino + 6) = v288;
          HIWORD(v293[0].st_gid) = 2080;
          *&v293[0].st_rdev = string_ptr;
          _os_log_impl(&dword_2986C0000, v128, OS_LOG_TYPE_DEFAULT, "%{public}s: no Signatures found for:\nidentity: %s\nvariant = %s", v293, 0x20u);
        }

        *__error() = v127;
        *(v286[6] + 208) = 0;
        v76 = v290;
LABEL_256:
        v170 = 0;
        while (1)
        {
          v171 = *(MEMORY[0x29EDC9678] + v170);
          *v295 = 0;
          if ((*v171 & 0x10) != 0)
          {
            v181 = *(a1 + 16);
            v182 = *__error();
            v183 = *(a1 + 32);
            if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
            {
              v184 = *(v171 + 40);
              v185 = "[anonymous]";
              if (v181)
              {
                v185 = v181;
              }

              v293[0].st_dev = 136446466;
              *&v293[0].st_mode = v185;
              WORD2(v293[0].st_ino) = 2080;
              *(&v293[0].st_ino + 6) = v184;
              v186 = v183;
              v187 = "%{public}s: skipping internal asset type: %s";
LABEL_274:
              _os_log_impl(&dword_2986C0000, v186, OS_LOG_TYPE_DEBUG, v187, v293, 0x16u);
            }

LABEL_275:
            *__error() = v182;
            goto LABEL_276;
          }

          dictionary = xpc_dictionary_get_dictionary(xdict, *(v171 + 48));
          if (!dictionary)
          {
            v188 = *(a1 + 16);
            v182 = *__error();
            v189 = *(a1 + 32);
            if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
            {
              v190 = *(v171 + 48);
              v191 = "[anonymous]";
              if (v188)
              {
                v191 = v188;
              }

              v293[0].st_dev = 136446466;
              *&v293[0].st_mode = v191;
              WORD2(v293[0].st_ino) = 2080;
              *(&v293[0].st_ino + 6) = v190;
              v186 = v189;
              v187 = "%{public}s: object not present; skipping: %s";
              goto LABEL_274;
            }

            goto LABEL_275;
          }

          v173 = _xpc_plist_value_copy(&_info, dictionary);
          if (!v173)
          {
            break;
          }

          v174 = v173;
          v175 = _cryptex_bundle_new_asset_from_object(*(a1 + 52), v171, v173, v295);
          if (v175)
          {
            v209 = v175;
            v210 = *(a1 + 32);
            if (v210)
            {
              if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
              {
                v211 = 3;
              }

              else
              {
                v211 = 2;
              }

              v212 = *(a1 + 16);
              v213 = *(v171 + 40);
              if (!v212)
              {
                v212 = "[anonymous]";
              }

              v293[0].st_dev = 136446722;
              *&v293[0].st_mode = v212;
              WORD2(v293[0].st_ino) = 2080;
              *(&v293[0].st_ino + 6) = v213;
              HIWORD(v293[0].st_gid) = 1024;
              v293[0].st_rdev = v209;
              LODWORD(v280) = 28;
              v214 = _os_log_send_and_compose_impl(v211, 0, 0, 0, &dword_2986C0000, v210, 16, "%{public}s: failed to create asset: %s %{darwin.errno}d", v293, v280);
            }

            else
            {
              v228 = *(a1 + 16);
              if (!v228)
              {
                v228 = "[anonymous]";
              }

              v229 = *(v171 + 40);
              v293[0].st_dev = 136446722;
              *&v293[0].st_mode = v228;
              WORD2(v293[0].st_ino) = 2080;
              *(&v293[0].st_ino + 6) = v229;
              HIWORD(v293[0].st_gid) = 1024;
              v293[0].st_rdev = v175;
              LODWORD(v280) = 28;
              v214 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to create asset: %s %{darwin.errno}d", v293, v280);
            }

            v230 = v214;
            v227 = createError("_cryptex_bundle_populate_assets", "bundle.c", 499, "com.apple.security.cryptex.posix", v209, 0, v214);
            free(v230);
            os_release(v174);
            v47 = v289;
            goto LABEL_341;
          }

          v176 = *(a1 + 16);
          v177 = *__error();
          v178 = *(a1 + 32);
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            v179 = *(v171 + 40);
            v180 = "[anonymous]";
            if (v176)
            {
              v180 = v176;
            }

            v293[0].st_dev = 136446466;
            *&v293[0].st_mode = v180;
            WORD2(v293[0].st_ino) = 2080;
            *(&v293[0].st_ino + 6) = v179;
            _os_log_impl(&dword_2986C0000, v178, OS_LOG_TYPE_DEBUG, "%{public}s: adding asset: %s", v293, 0x16u);
          }

          *__error() = v177;
          cryptex_core_set_asset();
          os_release(v174);
LABEL_276:
          v47 = v289;
          v76 = v290;
          v170 += 8;
          if (v170 == 96)
          {
            goto LABEL_277;
          }
        }

        v204 = *(a1 + 32);
        if (v204)
        {
          v205 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
          v206 = *(a1 + 16);
          if (v205)
          {
            v207 = 3;
          }

          else
          {
            v207 = 2;
          }

          v293[0].st_dev = 136446722;
          if (!v206)
          {
            v206 = "[anonymous]";
          }

          *&v293[0].st_mode = v206;
          WORD2(v293[0].st_ino) = 2080;
          *(&v293[0].st_ino + 6) = "Info";
          HIWORD(v293[0].st_gid) = 1024;
          v293[0].st_rdev = 212;
          LODWORD(v280) = 28;
          v208 = _os_log_send_and_compose_impl(v207, 0, 0, 0, &dword_2986C0000, v204, 16, "%{public}s: asset is missing property: %s %{darwin.errno}d", v293, v280);
        }

        else
        {
          v223 = *(a1 + 16);
          if (!v223)
          {
            v223 = "[anonymous]";
          }

          v293[0].st_dev = 136446722;
          *&v293[0].st_mode = v223;
          WORD2(v293[0].st_ino) = 2080;
          *(&v293[0].st_ino + 6) = "Info";
          HIWORD(v293[0].st_gid) = 1024;
          v293[0].st_rdev = 212;
          LODWORD(v280) = 28;
          v208 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: asset is missing property: %s %{darwin.errno}d", v293, v280);
        }

        v224 = v208;
        v47 = v289;
        v225 = createError("_cryptex_bundle_populate_assets", "bundle.c", 490, "com.apple.security.cryptex.posix", 212, 0, v208);
        v226 = v224;
        v227 = v225;
        free(v226);
LABEL_341:
        if (!v227)
        {
LABEL_277:
          if (cryptex_core_get_num_assets())
          {
            v13 = &loc_2986E8000;
            if (v286[6])
            {
              v192 = cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset() != 0;
              if (cryptex_core_get_asset() || cryptex_core_get_asset() || cryptex_core_get_asset())
              {
                if (v192)
                {
                  goto LABEL_287;
                }

LABEL_356:
                v237 = v286;
                _cryptex_bundle_add_cryptex_assets(a1, v286);
                if (cryptex_core_is_cryptex1())
                {
                  v238 = _cryptex_populate_cryptex1_properties(a1, v286, v50);
                  if (v238)
                  {
                    v239 = v238;
                    v240 = *(a1 + 32);
                    if (v240)
                    {
                      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
                      {
                        v241 = 3;
                      }

                      else
                      {
                        v241 = 2;
                      }

                      v242 = *(a1 + 16);
                      v293[0].st_dev = 136446466;
                      if (!v242)
                      {
                        v242 = "[anonymous]";
                      }

                      *&v293[0].st_mode = v242;
                      WORD2(v293[0].st_ino) = 1024;
                      *(&v293[0].st_ino + 6) = v239;
                      LODWORD(v280) = 18;
                      v243 = _os_log_send_and_compose_impl(v241, 0, 0, 0, &dword_2986C0000, v240, 16, "%{public}s: Failed to populate Cryptex1 properties. %{darwin.errno}d", v293, v280);
                    }

                    else
                    {
                      v260 = *(a1 + 16);
                      if (!v260)
                      {
                        v260 = "[anonymous]";
                      }

                      v293[0].st_dev = 136446466;
                      *&v293[0].st_mode = v260;
                      WORD2(v293[0].st_ino) = 1024;
                      *(&v293[0].st_ino + 6) = v238;
                      LODWORD(v280) = 18;
                      v243 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to populate Cryptex1 properties. %{darwin.errno}d", v293, v280);
                    }

                    v220 = v243;
                    v222 = v239;
                    v221 = 865;
                    goto LABEL_327;
                  }

                  v244 = *(a1 + 16);
                  v245 = *__error();
                  v246 = *(a1 + 32);
                  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
                  {
                    v247 = "[anonymous]";
                    if (v244)
                    {
                      v247 = v244;
                    }

                    v248 = *(*(v286[6] + 216) + 40);
                    v293[0].st_dev = 136446722;
                    *&v293[0].st_mode = v247;
                    WORD2(v293[0].st_ino) = 2048;
                    *(&v293[0].st_ino + 6) = v48;
                    HIWORD(v293[0].st_gid) = 1024;
                    v293[0].st_rdev = v248;
                    _os_log_impl(&dword_2986C0000, v246, OS_LOG_TYPE_DEBUG, "%{public}s: nonce domain handle[%lu]: %u", v293, 0x1Cu);
                  }

                  *__error() = v245;
                  v249 = *(a1 + 16);
                  v250 = *__error();
                  v251 = *(a1 + 32);
                  if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
                  {
                    v252 = "[anonymous]";
                    if (v249)
                    {
                      v252 = v249;
                    }

                    v253 = *(*(v286[6] + 216) + 48);
                    v293[0].st_dev = 136446722;
                    *&v293[0].st_mode = v252;
                    WORD2(v293[0].st_ino) = 2048;
                    *(&v293[0].st_ino + 6) = v48;
                    HIWORD(v293[0].st_gid) = 2080;
                    *&v293[0].st_rdev = v253;
                    _os_log_impl(&dword_2986C0000, v251, OS_LOG_TYPE_DEBUG, "%{public}s: Cryptex1 version[%lu]: %s", v293, 0x20u);
                  }

                  *__error() = v250;
                  v254 = *(a1 + 16);
                  v255 = *__error();
                  v256 = *(a1 + 32);
                  if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
                  {
                    v257 = "[anonymous]";
                    if (v254)
                    {
                      v257 = v254;
                    }

                    v258 = *(*(v286[6] + 216) + 56);
                    v293[0].st_dev = 136446722;
                    *&v293[0].st_mode = v257;
                    WORD2(v293[0].st_ino) = 2048;
                    *(&v293[0].st_ino + 6) = v48;
                    HIWORD(v293[0].st_gid) = 2080;
                    *&v293[0].st_rdev = v258;
                    _os_log_impl(&dword_2986C0000, v256, OS_LOG_TYPE_DEBUG, "%{public}s: Cryptex1 preauth version[%lu]: %s", v293, 0x20u);
                  }

                  *__error() = v255;
                  v76 = v290;
                  v237 = v286;
                }

                v259 = _cryptex_list_elm_new(v237);
                *v259 = *(a1 + 64);
                *(a1 + 64) = v259;
                cryptex_core_close();
                v78 = 0;
                xarray = 0;
LABEL_329:
                os_release(v286);
                goto LABEL_330;
              }

              if (cryptex_core_get_asset() == 0 || !v192)
              {
                goto LABEL_356;
              }

LABEL_287:
              v193 = *(a1 + 16);
              v194 = *__error();
              v195 = *(a1 + 32);
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                v293[0].st_dev = 136446466;
                v196 = "[anonymous]";
                if (v193)
                {
                  v196 = v193;
                }

                *&v293[0].st_mode = v196;
                WORD2(v293[0].st_ino) = 1024;
                *(&v293[0].st_ino + 6) = 45;
                _os_log_impl(&dword_2986C0000, v195, OS_LOG_TYPE_ERROR, "%{public}s: Invalid bundle contents: mixed Cryptex1 and legacy assets.: %{darwin.errno}d", v293, 0x12u);
              }

              *__error() = v194;
              v197 = 45;
              v76 = v290;
            }

            else
            {
              v197 = 22;
            }

            v215 = *(a1 + 32);
            if (v215)
            {
              if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
              {
                v216 = 3;
              }

              else
              {
                v216 = 2;
              }

              v217 = *(a1 + 16);
              v293[0].st_dev = 136446466;
              if (!v217)
              {
                v217 = "[anonymous]";
              }

              *&v293[0].st_mode = v217;
              WORD2(v293[0].st_ino) = 1024;
              *(&v293[0].st_ino + 6) = v197;
              LODWORD(v280) = 18;
              v218 = _os_log_send_and_compose_impl(v216, 0, 0, 0, &dword_2986C0000, v215, 16, "%{public}s: Failed to validate cryptex assets from bundle %{darwin.errno}d", v293, v280);
            }

            else
            {
              v219 = *(a1 + 16);
              if (!v219)
              {
                v219 = "[anonymous]";
              }

              v293[0].st_dev = 136446466;
              *&v293[0].st_mode = v219;
              WORD2(v293[0].st_ino) = 1024;
              *(&v293[0].st_ino + 6) = v197;
              LODWORD(v280) = 18;
              v218 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to validate cryptex assets from bundle %{darwin.errno}d", v293, v280);
            }

            v220 = v218;
            v221 = 854;
            v222 = v197;
LABEL_327:
            Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", v221, "com.apple.security.cryptex.posix", v222, 0, v220);
            free(v220);
            xarray = 0;
            goto LABEL_328;
          }

          v198 = v286[2];
          v199 = *__error();
          v200 = v286[4];
          v13 = &loc_2986E8000;
          if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
          {
            v293[0].st_dev = 136446722;
            v201 = "[anonymous]";
            if (v198)
            {
              v201 = v198;
            }

            *&v293[0].st_mode = v201;
            WORD2(v293[0].st_ino) = 2048;
            *(&v293[0].st_ino + 6) = v48;
            HIWORD(v293[0].st_gid) = 2082;
            *&v293[0].st_rdev = v288;
            _os_log_impl(&dword_2986C0000, v200, OS_LOG_TYPE_INFO, "%{public}s: Build identity %lu (%{public}s) is not a cryptex. Skipping.", v293, 0x20u);
          }

          xarray = 0;
          *__error() = v199;
          v78 = 5;
          v76 = v290;
          goto LABEL_329;
        }

        xarray = v227;
        v231 = *(a1 + 32);
        if (v231)
        {
          if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
          {
            v232 = 3;
          }

          else
          {
            v232 = 2;
          }

          v233 = *(a1 + 16);
          if (!v233)
          {
            v233 = "[anonymous]";
          }

          v293[0].st_dev = 136446210;
          *&v293[0].st_mode = v233;
          LODWORD(v280) = 12;
          v234 = _os_log_send_and_compose_impl(v232, 0, 0, 0, &dword_2986C0000, v231, 16, "%{public}s: Failed to populate cryptex assets from bundle", v293, v280);
        }

        else
        {
          v235 = *(a1 + 16);
          if (!v235)
          {
            v235 = "[anonymous]";
          }

          v293[0].st_dev = 136446210;
          *&v293[0].st_mode = v235;
          LODWORD(v280) = 12;
          v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to populate cryptex assets from bundle", v293, v280);
        }

        v236 = v234;
        v13 = &loc_2986E8000;
        Error = createError("_cryptex_bundle_find_cryptexes", "bundle.c", 841, "com.apple.security.cryptex", 6, xarray, v234);
        free(v236);
        v78 = 2;
        if (v286)
        {
          goto LABEL_329;
        }

LABEL_330:
        free(v288);
        if (v283)
        {
          os_release(v283);
        }

        os_release(xdict);
LABEL_104:
        if (object)
        {
          os_release(object);
        }

        if (v76)
        {
          os_release(v76);
        }

        if (v50)
        {
          os_release(v50);
        }

        if ((v78 == 5 || !v78) && ++v48 < xpc_array_get_count(v47))
        {
          continue;
        }

        os_release(v47);
        if (xarray)
        {
          CFRelease(xarray);
        }

        goto LABEL_408;
      }
    }

    v10 = v47;
LABEL_16:
    os_release(v10);
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  v9 = xpc_array_create_empty();
  xpc_dictionary_set_value(empty, "BuildIdentities", v9);
  *(a1 + 80) = xpc_retain(empty);
  if (v9)
  {
    os_release(v9);
  }

  if (empty)
  {
    v10 = empty;
    goto LABEL_16;
  }

  return empty;
}

uint64_t cryptex_bundle_copy_cryptex_for_chip2(uint64_t a1, uint64_t a2, const char *a3, void **a4, CFTypeRef *a5)
{
  v34 = *MEMORY[0x29EDCA608];
  cf = 0;
  *&v30[0] = 1;
  memset(v30 + 8, 0, 40);
  v9 = cryptex_identity_set_chip(v30, a2);
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    v12 = *(a1 + 32);
    if (v12)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a1 + 16);
      *v32 = 136446722;
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *&v32[4] = v14;
      *&v32[12] = 1024;
      *&v32[14] = v10;
      *&v32[18] = 1024;
      *&v32[20] = v10;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986C0000, v12, 16, "%{public}s: Failed to initialize cryptex identity: %{darwin.errno}d %{darwin.errno}d", v32, 24);
    }

    else
    {
      v20 = "[anonymous]";
      if (*(a1 + 16))
      {
        v20 = *(a1 + 16);
      }

      *v32 = 136446722;
      *&v32[4] = v20;
      *&v32[12] = 1024;
      *&v32[14] = v9;
      *&v32[18] = 1024;
      *&v32[20] = v9;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to initialize cryptex identity: %{darwin.errno}d %{darwin.errno}d", v32, 24);
    }

    v21 = v15;
    v22 = "com.apple.security.cryptex.posix";
    v23 = 1396;
    v24 = v11;
    v25 = 0;
  }

  else
  {
    *v32 = v30[0];
    *&v32[16] = v30[1];
    v33 = v30[2];
    if (cryptex_bundle_copy_cryptex2(a1, v32, a3, a4, &cf))
    {
      goto LABEL_30;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *v32 = 136446210;
      *&v32[4] = v18;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986C0000, v16, 16, "%{public}s: Failed to copy cryptex from bundle", COERCE_DOUBLE(136446210), v32, 12);
    }

    else
    {
      v26 = *(a1 + 16);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *v32 = 136446210;
      *&v32[4] = v26;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to copy cryptex from bundle", COERCE_DOUBLE(136446210), v32, 12);
    }

    v21 = v19;
    v25 = cf;
    v22 = "com.apple.security.cryptex";
    v23 = 1403;
    v24 = 8;
  }

  Error = createError("cryptex_bundle_copy_cryptex_for_chip2", "bundle.c", v23, v22, v24, v25, v21);
  free(v21);
  if (a5 && Error)
  {
    *a5 = CFRetain(Error);
LABEL_29:
    CFRelease(Error);
    v28 = 0;
    goto LABEL_31;
  }

  if (Error)
  {
    goto LABEL_29;
  }

LABEL_30:
  v28 = 1;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  return v28;
}

uint64_t cryptex_bundle_set_cryptex2(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v118 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 40) & 2) != 0)
  {
    v12 = *(a2 + 32);
    if (v12)
    {
      if (os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a2 + 16);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986C0000, v12, 16, "%{public}s: System cryptexes are not supported", COERCE_DOUBLE(136446210), &applier, 12);
    }

    else
    {
      v25 = *(a2 + 16);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v25;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: System cryptexes are not supported", COERCE_DOUBLE(136446210), &applier, 12);
    }

    v26 = v15;
    Error = createError("cryptex_bundle_set_cryptex2", "bundle.c", 1427, "com.apple.security.cryptex", 10, 0, v15);
    v7 = 0;
LABEL_31:
    free(v26);
    if (a3 && Error)
    {
      *a3 = CFRetain(Error);
    }

    else if (!Error)
    {
      v29 = 1;
      if (!v7)
      {
        return v29;
      }

      goto LABEL_36;
    }

    CFRelease(Error);
    v29 = 0;
    if (!v7)
    {
      return v29;
    }

LABEL_36:
    CFRelease(v7);
    return v29;
  }

  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), &applier, 12);
    }

    else
    {
      v28 = *(a1 + 16);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      LODWORD(applier) = 136446210;
      *(&applier + 4) = v28;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), &applier, 12);
    }

    v26 = v11;
    Error = createError("cryptex_bundle_set_cryptex2", "bundle.c", 1436, "com.apple.security.cryptex", 6, v7, v11);
    goto LABEL_31;
  }

  v16 = (a1 + 64);
  v17 = *(a2 + 16);
  v18 = *(a2 + 72);
  applier = *(a2 + 56);
  v109 = v18;
  v110 = *(a2 + 88);
  cryptex_elm = _cryptex_list_find_cryptex_elm((a1 + 64), &applier, v17, 0);
  v105 = a1;
  v106 = cryptex_elm;
  if (cryptex_elm)
  {
    v20 = cryptex_elm;
    v21 = cryptex_elm[1];
    value = xpc_dictionary_get_value(*(a1 + 80), "BuildIdentities");
    empty = xpc_array_create_empty();
    *&applier = MEMORY[0x29EDCA5F8];
    *(&applier + 1) = 0x40000000;
    *&v109 = ___cryptex_bundle_manifest_remove_build_identity_block_invoke;
    *(&v109 + 1) = &__block_descriptor_tmp_1;
    *&v110 = a1;
    *(&v110 + 1) = v21;
    v111 = empty;
    xpc_array_apply(value, &applier);
    xpc_dictionary_set_value(*(a1 + 80), "BuildIdentities", empty);
    if (empty)
    {
      os_release(empty);
    }

    for (i = *v16; i != v20; i = *i)
    {
      v16 = i;
    }

    *v16 = *i;
    *v20 = -1;
    _cryptex_list_elm_destroy(&v106);
  }

  v30 = *(a2 + 72);
  applier = *(a2 + 56);
  v109 = v30;
  v110 = *(a2 + 88);
  v107 = 0;
  v31 = xpc_dictionary_create_empty();
  v32 = _cryptex_identity_copy_description(&applier);
  if (BYTE8(applier))
  {
    v40 = *(a1 + 16);
    v37 = *__error();
    v41 = *(a1 + 32);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = "[anonymous]";
      if (v40)
      {
        v42 = v40;
      }

      *buf = 136446210;
      v113 = v42;
      _os_log_impl(&dword_2986C0000, v41, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding generic identity to manifest", buf, 0xCu);
    }

    v102 = 0;
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v33 = xpc_string_create_with_format("%#x", *(a2 + 72));
    v34 = xpc_string_create_with_format("%#x", *(a2 + 76));
    v35 = xpc_string_create_with_format("%#x", *(a2 + 80));
    v102 = v33;
    xpc_dictionary_set_value(v31, "ApBoardID", v33);
    v100 = v34;
    xpc_dictionary_set_value(v31, "ApChipID", v34);
    v99 = v35;
    xpc_dictionary_set_value(v31, "ApSecurityDomain", v35);
    v36 = *(a1 + 16);
    v37 = *__error();
    v38 = *(a1 + 32);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = "[anonymous]";
      if (v36)
      {
        v39 = v36;
      }

      *buf = 136446466;
      v113 = v39;
      v114 = 2080;
      v115 = v32;
      _os_log_impl(&dword_2986C0000, v38, OS_LOG_TYPE_DEBUG, "%{public}s: identity: %s", buf, 0x16u);
    }
  }

  *__error() = v37;
  v43 = *(*(a2 + 48) + 216);
  if (v43)
  {
    v44 = xpc_int64_create(*(v43 + 40));
    v45 = xpc_string_create(*(v43 + 56));
    v46 = xpc_string_create(*(v43 + 48));
    v98 = v44;
    xpc_dictionary_set_value(v31, "Cryptex1,NonceDomain", v44);
    v97 = v45;
    xpc_dictionary_set_value(v31, "Cryptex1,PreauthorizationVersion", v45);
    object = v46;
    xpc_dictionary_set_value(v31, "Cryptex1,Version", v46);
    xpc_dictionary_set_BOOL(v31, "Cryptex1,UseProductClass", *(v43 + 65));
    if ((BYTE8(applier) & 4) != 0)
    {
      v96 = xpc_string_create_with_format("%#x", *(a2 + 84));
      xpc_dictionary_set_value(v31, "Cryptex1,ChipID", v96);
      if ((BYTE8(applier) & 2) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v96 = 0;
      if ((BYTE8(applier) & 2) != 0)
      {
LABEL_53:
        v47 = xpc_int64_create(*(a2 + 92));
        v48 = xpc_int64_create(*(a2 + 88));
        v49 = xpc_string_create_with_format("%#x", *(a2 + 96));
        v94 = v48;
        xpc_dictionary_set_value(v31, "Cryptex1,Type", v48);
        v93 = v47;
        xpc_dictionary_set_value(v31, "Cryptex1,SubType", v47);
        v92 = v49;
        xpc_dictionary_set_value(v31, "Cryptex1,ProductClass", v49);
        goto LABEL_57;
      }
    }

    v93 = 0;
    v94 = 0;
    v92 = 0;
  }

  else
  {
    v96 = 0;
    v97 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v98 = 0;
    object = 0;
  }

LABEL_57:
  if (cryptex_core_get_info_asset())
  {
    cryptex_core_parse_info_asset();
    if (v107 == 1)
    {
      xpc_dictionary_set_BOOL(v31, "Cryptex1,DataOnly", 1);
    }
  }

  v103 = v31;
  v101 = v32;
  if (*(a2 + 40))
  {
    v56 = *(a1 + 16);
    v52 = *__error();
    v57 = *(a1 + 32);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v58 = "[anonymous]";
      if (v56)
      {
        v58 = v56;
      }

      *buf = 136446210;
      v113 = v58;
      _os_log_impl(&dword_2986C0000, v57, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding generic variant to manifest", buf, 0xCu);
    }

    v90 = 0;
    v91 = 0;
  }

  else
  {
    v50 = xpc_dictionary_create_empty();
    v90 = xpc_string_create(*(a2 + 16));
    xpc_dictionary_set_value(v50, "Variant", v90);
    v91 = v50;
    xpc_dictionary_set_value(v31, "Info", v50);
    v51 = *(a1 + 16);
    v52 = *__error();
    v53 = *(a1 + 32);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = "[anonymous]";
      v55 = *(a2 + 16);
      if (v51)
      {
        v54 = v51;
      }

      *buf = 136446466;
      v113 = v54;
      v114 = 2080;
      v115 = v55;
      _os_log_impl(&dword_2986C0000, v53, OS_LOG_TYPE_DEBUG, "%{public}s: variant: %s", buf, 0x16u);
    }
  }

  *__error() = v52;
  v59 = MEMORY[0x29EDC9678];
  v60 = 64;
  xdict = xpc_dictionary_create_empty();
  do
  {
    v61 = xpc_dictionary_create_empty();
    v62 = xpc_dictionary_create_empty();
    v63 = *(*(a2 + 48) + v60);
    if (!v63)
    {
      v74 = *(a2 + 16);
      v66 = *__error();
      v75 = *(a2 + 32);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v76 = "[anonymous]";
        if (v74)
        {
          v76 = v74;
        }

        v77 = *(*v59 + 40);
        *buf = 136446466;
        v113 = v76;
        v114 = 2080;
        v115 = v77;
        v78 = v75;
        v79 = "%{public}s: no asset of type: %s";
        goto LABEL_87;
      }

LABEL_88:
      *__error() = v66;
      goto LABEL_89;
    }

    v64 = **(v63 + 8);
    v65 = *(v105 + 16);
    v66 = *__error();
    v67 = *(v105 + 32);
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG);
    if ((v64 & 0x10) != 0)
    {
      if (v68)
      {
        v80 = "[anonymous]";
        if (v65)
        {
          v80 = v65;
        }

        v81 = *(*(v63 + 8) + 40);
        *buf = 136446466;
        v113 = v80;
        v114 = 2080;
        v115 = v81;
        v78 = v67;
        v79 = "%{public}s: skip adding internal asset %s";
LABEL_87:
        _os_log_impl(&dword_2986C0000, v78, OS_LOG_TYPE_DEBUG, v79, buf, 0x16u);
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    if (v68)
    {
      v69 = "[anonymous]";
      if (v65)
      {
        v69 = v65;
      }

      v70 = *(*(v63 + 8) + 40);
      v71 = *(v63 + 32);
      *buf = 136446722;
      v113 = v69;
      v114 = 2080;
      v115 = v70;
      v116 = 2080;
      v117 = v71;
      _os_log_impl(&dword_2986C0000, v67, OS_LOG_TYPE_DEBUG, "%{public}s: adding asset: type = %s, name = %s", buf, 0x20u);
    }

    *__error() = v66;
    v72 = _cryptex_bundle_default_asset_path(a2, v63);
    v73 = xpc_string_create(v72);
    xpc_dictionary_set_value(v62, "Path", v73);
    xpc_dictionary_set_value(v61, "Info", v62);
    xpc_dictionary_set_value(xdict, *(*v59 + 48), v61);
    free(v72);
    if (v73)
    {
      os_release(v73);
    }

LABEL_89:
    if (v62)
    {
      os_release(v62);
    }

    if (v61)
    {
      os_release(v61);
    }

    v59 += 8;
    v60 += 8;
  }

  while (v60 != 160);
  xpc_dictionary_set_value(v103, "Manifest", xdict);
  v82 = xpc_copy_clean_description();
  v83 = *(v105 + 16);
  v84 = *__error();
  v85 = *(v105 + 32);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    v86 = "[anonymous]";
    if (v83)
    {
      v86 = v83;
    }

    *buf = 136446466;
    v113 = v86;
    v114 = 2080;
    v115 = v82;
    _os_log_impl(&dword_2986C0000, v85, OS_LOG_TYPE_DEBUG, "%{public}s: adding build identity:\n%s", buf, 0x16u);
  }

  *__error() = v84;
  v87 = xpc_dictionary_get_value(*(v105 + 80), "BuildIdentities");
  xpc_array_append_value(v87, v103);
  free(v101);
  free(v82);
  if (object)
  {
    os_release(object);
  }

  if (v97)
  {
    os_release(v97);
  }

  if (v98)
  {
    os_release(v98);
  }

  if (v92)
  {
    os_release(v92);
  }

  if (v93)
  {
    os_release(v93);
  }

  if (v94)
  {
    os_release(v94);
  }

  if (v96)
  {
    os_release(v96);
  }

  if (v99)
  {
    os_release(v99);
  }

  if (v100)
  {
    os_release(v100);
  }

  if (v102)
  {
    os_release(v102);
  }

  if (xdict)
  {
    os_release(xdict);
  }

  if (v90)
  {
    os_release(v90);
  }

  if (v91)
  {
    os_release(v91);
  }

  if (v103)
  {
    os_release(v103);
  }

  v88 = _cryptex_list_elm_new(a2);
  *v88 = *(v105 + 64);
  *(v105 + 64) = v88;
  _cryptex_bundle_add_cryptex_assets(v105, a2);
  return 1;
}

void _cryptex_bundle_add_cryptex_assets(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x29EDC9678];
  v27 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = *(v5 + 8 * v4);
    if ((*v6 & 0x10) != 0)
    {
      v16 = a1[2];
      v17 = *__error();
      v18 = a1[4];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(v6 + 40);
        v20 = "[anonymous]";
        if (v16)
        {
          v20 = v16;
        }

        *buf = 136446466;
        v24 = v20;
        v25 = 2080;
        v26 = v19;
        _os_log_impl(&dword_2986C0000, v18, OS_LOG_TYPE_DEBUG, "%{public}s: skip adding internal asset %s", buf, 0x16u);
      }

      *__error() = v17;
    }

    else
    {
      v7 = *(*(a2 + 48) + 8 * v4 + 64);
      if (v7)
      {
        __s2 = 0;
        if (asprintf(&__s2, "__%s_%s", *(a2 + 16), *(*(v7 + 8) + 40)) < 0)
        {
          _cryptex_bundle_add_cryptex_assets_cold_1(v22, buf);
        }

        v8 = __s2;
        v9 = a1[9];
        if (v9)
        {
          while (strcmp(*v9, v8))
          {
            v9 = *(v9 + 16);
            if (!v9)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          v10 = _cryptex_bundle_default_asset_path(a2, v7);
          v11 = a1[2];
          v12 = *__error();
          v13 = a1[4];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v14 = "[anonymous]";
            if (v11)
            {
              v14 = v11;
            }

            v24 = v14;
            v25 = 2080;
            v26 = v8;
            _os_log_impl(&dword_2986C0000, v13, OS_LOG_TYPE_DEBUG, "%{public}s: adding cryptex bundle asset: %s", buf, 0x16u);
          }

          *__error() = v12;
          v15 = _cryptex_bundle_asset_new(v7, v8, v10);
          v15[2] = a1[9];
          a1[9] = v15;
          free(v10);
        }

        free(v8);
      }
    }

    ++v4;
  }

  while (v4 != 12);
}

uint64_t cryptex_bundle_write2(uint64_t a1, _DWORD *a2, CFTypeRef *a3)
{
  v90 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 48);
  v78 = *(a1 + 48);
  if ((*a2 & 0x80000000) != 0)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a1 + 16);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_2986C0000, v12, 16, "%{public}s: dirfd is invalid", COERCE_DOUBLE(136446210), v80, 12);
    }

    else
    {
      v24 = *(a1 + 16);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v24;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: dirfd is invalid", COERCE_DOUBLE(136446210), v80, 12);
    }

    v25 = v15;
    Error = createError("cryptex_bundle_write2", "bundle.c", 1480, "com.apple.security.cryptex", 11, 0, v15);
    free(v25);
    v7 = 0;
    goto LABEL_64;
  }

  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), v80, 12);
    }

    else
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v21;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), v80, 12);
    }

    v22 = v11;
    v23 = 1489;
    goto LABEL_63;
  }

  *(a1 + 48) = claimfd_np();
  v16 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_restore, 512, 493, v5 + 1);
  if (v16)
  {
    v7 = v16;
    v17 = *(a1 + 32);
    if (v17)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v19 = *(a1 + 16);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v19;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986C0000, v17, 16, "%{public}s: failed to create restore dir", COERCE_DOUBLE(136446210), v80, 12);
    }

    else
    {
      v32 = *(a1 + 16);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v32;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to create restore dir", COERCE_DOUBLE(136446210), v80, 12);
    }

    v22 = v20;
    v23 = 1500;
    goto LABEL_63;
  }

  v27 = _cryptex_bundle_write_manifest(a1);
  if (v27)
  {
    v7 = v27;
    v28 = *(a1 + 32);
    if (v28)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(a1 + 16);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v30;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_2986C0000, v28, 16, "%{public}s: failed to write bundle manifest", COERCE_DOUBLE(136446210), v80, 12);
    }

    else
    {
      v39 = *(a1 + 16);
      if (!v39)
      {
        v39 = "[anonymous]";
      }

      *v80 = 136446210;
      v81 = v39;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write bundle manifest", COERCE_DOUBLE(136446210), v80, 12);
    }

    v22 = v31;
    v23 = 1509;
    goto LABEL_63;
  }

  v33 = *(a1 + 72);
  if (!v33)
  {
LABEL_58:
    v7 = 0;
    goto LABEL_131;
  }

  bzero(v80, 0x400uLL);
  while (1)
  {
    v34 = dirname_r(*(v33 + 8), v80);
    if (!v34)
    {
      v43 = *__error();
      v44 = v43;
      v45 = *(a1 + 32);
      if (v45)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v47 = *(a1 + 16);
        if (!v47)
        {
          v47 = "[anonymous]";
        }

        v84 = 136446466;
        v85 = v47;
        v86 = 1024;
        LODWORD(v87) = v43;
        v48 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &dword_2986C0000, v45, 16, "%{public}s: dirname_r %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
      }

      else
      {
        v64 = *(a1 + 16);
        if (!v64)
        {
          v64 = "[anonymous]";
        }

        v84 = 136446466;
        v85 = v64;
        v86 = 1024;
        LODWORD(v87) = v43;
        v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: dirname_r %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
      }

      v65 = v48;
      v66 = 1089;
      goto LABEL_122;
    }

    v35 = v34;
    v36 = mkpathat_np(v5[1], v34, 0x1EDu);
    if (v36)
    {
      v37 = v36 == 17;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v59 = v36;
      v44 = v36;
      v60 = *(a1 + 32);
      if (v60)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v62 = *(a1 + 16);
        v84 = 136446722;
        if (!v62)
        {
          v62 = "[anonymous]";
        }

        v85 = v62;
        v86 = 2080;
        v87 = v35;
        v88 = 1024;
        v89 = v59;
        v63 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_2986C0000, v60, 16, "%{public}s: mkpathat_np: %s %{darwin.errno}d", &v84, 28);
      }

      else
      {
        v71 = *(a1 + 16);
        if (!v71)
        {
          v71 = "[anonymous]";
        }

        v84 = 136446722;
        v85 = v71;
        v86 = 2080;
        v87 = v35;
        v88 = 1024;
        v89 = v36;
        v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: mkpathat_np: %s %{darwin.errno}d", &v84, 28);
      }

      v65 = v63;
      v66 = 1100;
LABEL_122:
      v7 = createError("_cryptex_bundle_write_assets", "bundle.c", v66, "com.apple.security.cryptex.posix", v44, 0, v65);
      free(v65);
      goto LABEL_123;
    }

    v38 = openat(v5[1], *(v33 + 8), 514, 438);
    if (v38 < 0)
    {
      v49 = *__error();
      v50 = *(a1 + 32);
      if (v50)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v52 = *(a1 + 16);
        if (!v52)
        {
          v52 = "[anonymous]";
        }

        v84 = 136446466;
        v85 = v52;
        v86 = 1024;
        LODWORD(v87) = v49;
        v53 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_2986C0000, v50, 16, "%{public}s: openat %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
      }

      else
      {
        v67 = *(a1 + 16);
        if (!v67)
        {
          v67 = "[anonymous]";
        }

        v84 = 136446466;
        v85 = v67;
        v86 = 1024;
        LODWORD(v87) = v49;
        v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: openat %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
      }

      v68 = v53;
      v7 = createError("_cryptex_bundle_write_assets", "bundle.c", 1109, "com.apple.security.cryptex.posix", v49, 0, v53);
      free(v68);
      if (v38 != -1)
      {
        goto LABEL_116;
      }

      goto LABEL_123;
    }

    if (lseek(*(*(v33 + 24) + 16), 0, 0) == -1)
    {
      cryptex_bundle_write2_cold_2(v79, &v84);
    }

    if (fcopyfile(*(*(v33 + 24) + 16), v38, 0, 0xFu) < 0)
    {
      break;
    }

    if (close(v38) == -1)
    {
      goto LABEL_117;
    }

    v33 = *(v33 + 16);
    if (!v33)
    {
      goto LABEL_58;
    }
  }

  v54 = *__error();
  v55 = *(a1 + 32);
  if (v55)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v57 = *(a1 + 16);
    if (!v57)
    {
      v57 = "[anonymous]";
    }

    v84 = 136446466;
    v85 = v57;
    v86 = 1024;
    LODWORD(v87) = v54;
    v58 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_2986C0000, v55, 16, "%{public}s: fcopyfile %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
  }

  else
  {
    v69 = *(a1 + 16);
    if (!v69)
    {
      v69 = "[anonymous]";
    }

    v84 = 136446466;
    v85 = v69;
    v86 = 1024;
    LODWORD(v87) = v54;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: fcopyfile %{darwin.errno}d", COERCE_DOUBLE(136446466), &v84, 18);
  }

  v70 = v58;
  v7 = createError("_cryptex_bundle_write_assets", "bundle.c", 1121, "com.apple.security.cryptex.posix", v54, 0, v58);
  free(v70);
LABEL_116:
  if (close(v38) == -1)
  {
LABEL_117:
    _cryptex_bundle_new_asset_from_object_cold_1(v79, &v84);
  }

LABEL_123:
  if (!v7)
  {
LABEL_131:
    Error = 0;
    goto LABEL_64;
  }

  v72 = *(a1 + 32);
  if (v72)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v74 = *(a1 + 16);
    if (!v74)
    {
      v74 = "[anonymous]";
    }

    *v80 = 136446466;
    v81 = v74;
    v82 = 1024;
    v83 = -1;
    LODWORD(v77) = 18;
    v75 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &dword_2986C0000, v72, 16, "%{public}s: bundle assets write failed, the output assets might be corrupted or incomplete: %{darwin.errno}d", COERCE_DOUBLE(136446466), v80, v77);
  }

  else
  {
    v76 = *(a1 + 16);
    if (!v76)
    {
      v76 = "[anonymous]";
    }

    *v80 = 136446466;
    v81 = v76;
    v82 = 1024;
    v83 = -1;
    LODWORD(v77) = 18;
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: bundle assets write failed, the output assets might be corrupted or incomplete: %{darwin.errno}d", COERCE_DOUBLE(136446466), v80, v77);
  }

  v22 = v75;
  v23 = 1520;
LABEL_63:
  Error = createError("cryptex_bundle_write2", "bundle.c", v23, "com.apple.security.cryptex", 7, v7, v22);
  free(v22);
LABEL_64:
  v40 = v78;
  if (*v5 != v78)
  {
    close_drop_np();
    close_drop_optional_np();
    v40 = v78;
  }

  *v5 = v40;
  if (a3 && Error)
  {
    *a3 = CFRetain(Error);
    goto LABEL_70;
  }

  if (Error)
  {
LABEL_70:
    CFRelease(Error);
    v41 = 0;
    if (v7)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v41 = 1;
    if (v7)
    {
LABEL_71:
      CFRelease(v7);
    }
  }

  return v41;
}

CFErrorRef _cryptex_bundle_open(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + *(a2 + 8));
  if (v6 < 0)
  {
    _cryptex_bundle_open_cold_1(&v37, &v38);
  }

  v10 = ((*a2 & 1) << 20) | a3;
  if ((a3 & 0x200) == 0 || (v10 & 0x100000) == 0)
  {
    goto LABEL_9;
  }

  v11 = mkdirat(v6, *(a2 + 16), a4);
  if ((v11 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v12 = *__error();
  if (!v12 || v12 == 17)
  {
    v10 &= ~0x200u;
LABEL_9:
    v13 = openat(v6, *(a2 + 16), v10, a4);
    v36 = v13;
    if (v13 < 0)
    {
      v15 = v13;
      v16 = *__error();
      v17 = *(a1 + 32);
      if (v17)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        if (*(a1 + 16))
        {
          v19 = *(a1 + 16);
        }

        else
        {
          v19 = "[anonymous]";
        }

        v20 = *(a2 + 16);
        v21 = *__error();
        v38 = 136446722;
        v39 = v19;
        v40 = 2080;
        v41 = v20;
        v42 = 1024;
        v43 = v21;
        v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_2986C0000, v17, 16, "%{public}s: Failed to open %s %{darwin.errno}d", &v38, 28);
      }

      else
      {
        if (*(a1 + 16))
        {
          v28 = *(a1 + 16);
        }

        else
        {
          v28 = "[anonymous]";
        }

        v29 = *(a2 + 16);
        v30 = *__error();
        v38 = 136446722;
        v39 = v28;
        v40 = 2080;
        v41 = v29;
        v42 = 1024;
        v43 = v30;
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to open %s %{darwin.errno}d", &v38, 28);
      }

      v31 = v22;
      Error = createError("_cryptex_bundle_open", "bundle.c", 1228, "com.apple.security.cryptex.posix", v16, 0, v22);
      free(v31);
    }

    else
    {
      Error = 0;
      *a5 = claimfd_np();
      v15 = v36;
    }

    if (v15 != -1 && close(v15) == -1)
    {
      _cryptex_bundle_new_asset_from_object_cold_1(&v37, &v38);
    }

    return Error;
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v25 = *(a1 + 16);
    v26 = *(a2 + 16);
    v38 = 136446722;
    if (!v25)
    {
      v25 = "[anonymous]";
    }

    v39 = v25;
    v40 = 2080;
    v41 = v26;
    v42 = 1024;
    v43 = v11;
    v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_2986C0000, v23, 16, "%{public}s: Failed to mkdir %s %{darwin.errno}d", &v38, 28);
  }

  else
  {
    v32 = *(a1 + 16);
    if (!v32)
    {
      v32 = "[anonymous]";
    }

    v33 = *(a2 + 16);
    v38 = 136446722;
    v39 = v32;
    v40 = 2080;
    v41 = v33;
    v42 = 1024;
    v43 = v11;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to mkdir %s %{darwin.errno}d", &v38, 28);
  }

  v34 = v27;
  Error = createError("_cryptex_bundle_open", "bundle.c", 1218, "com.apple.security.cryptex.posix", v11, 0, v27);
  free(v34);
  return Error;
}

CFErrorRef _cryptex_bundle_write_manifest(uint64_t a1)
{
  v60 = *MEMORY[0x29EDCA608];
  error = 0;
  __fd = -1;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v2)
  {
    v12 = xpc_copy_debug_description();
    v13 = v12;
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v16 = *(a1 + 16);
      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v52 = 136446722;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = "[anonymous]";
      }

      v53 = v18;
      v54 = 2080;
      v55 = v13;
      v56 = 1024;
      v57 = 214;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986C0000, v14, 16, "%{public}s: failed to create plist from manifest object: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v52, 28);
    }

    else
    {
      v33 = "[anonymous]";
      if (*(a1 + 16))
      {
        v33 = *(a1 + 16);
      }

      v52 = 136446722;
      v53 = v33;
      v54 = 2080;
      v55 = v12;
      v56 = 1024;
      v57 = 214;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to create plist from manifest object: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v52, 28);
    }

    v34 = v19;
    v35 = createError("_cryptex_bundle_write_manifest", "bundle.c", 373, "com.apple.security.cryptex.posix", 214, 0, v19);
    free(v34);
    free(v13);
    goto LABEL_51;
  }

  v3 = CFPropertyListCreateData(0, v2, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (!v3)
  {
    v20 = CFErrorCopyFailureReason(error);
    v21 = v20;
    if (v20)
    {
      v22 = _CFStringCopyUTF8String(v20);
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = "unknown failure";
    }

    v39 = *(a1 + 32);
    if (v39)
    {
      v40 = os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR);
      v41 = *(a1 + 16);
      if (v40)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v52 = 136446722;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = "[anonymous]";
      }

      v53 = v43;
      v54 = 2080;
      v55 = v23;
      v56 = 1024;
      v57 = 222;
      v44 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_2986C0000, v39, 16, "%{public}s: property list creation failed: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v52, 28);
    }

    else
    {
      v45 = "[anonymous]";
      if (*(a1 + 16))
      {
        v45 = *(a1 + 16);
      }

      v52 = 136446722;
      v53 = v45;
      v54 = 2080;
      v55 = v23;
      v56 = 1024;
      v57 = 222;
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: property list creation failed: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &v52, 28);
    }

    v46 = v44;
    v35 = createError("_cryptex_bundle_write_manifest", "bundle.c", 393, "com.apple.security.cryptex.posix", 222, 0, v44);
    free(v46);
    free(v22);
    if (v21)
    {
      CFRelease(v21);
    }

LABEL_51:
    buff_destroy(v58, v36);
    v4 = 0;
    v7 = 0;
    goto LABEL_59;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v4);
  buff_init_signed(v58, 0, 0, BytePtr, Length);
  v7 = _cryptex_bundle_open(a1, &_cryptex_bundle_object_manifest, 513, 438, &__fd);
  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v52 = 136446210;
      v53 = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "%{public}s: failed to create manifest file", COERCE_DOUBLE(136446210), &v52, 12);
    }

    else
    {
      v37 = *(a1 + 16);
      if (!v37)
      {
        v37 = "[anonymous]";
      }

      v52 = 136446210;
      v53 = v37;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to create manifest file", COERCE_DOUBLE(136446210), &v52, 12);
    }

    v38 = v11;
    v35 = createError("_cryptex_bundle_write_manifest", "bundle.c", 406, "com.apple.security.cryptex", 6, v7, v11);
    free(v38);
    v24 = __fd;
  }

  else
  {
    v24 = __fd;
    v25 = _write_file(__fd, v58);
    if (v25)
    {
      v27 = v25;
      v28 = v25;
      v29 = *(a1 + 32);
      if (v29)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v31 = *(a1 + 16);
        if (!v31)
        {
          v31 = "[anonymous]";
        }

        v52 = 136446466;
        v53 = v31;
        v54 = 1024;
        LODWORD(v55) = v27;
        v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_2986C0000, v29, 16, "%{public}s: failed to write manifest file %{darwin.errno}d", COERCE_DOUBLE(136446466), &v52, 18);
      }

      else
      {
        v47 = *(a1 + 16);
        if (!v47)
        {
          v47 = "[anonymous]";
        }

        v52 = 136446466;
        v53 = v47;
        v54 = 1024;
        LODWORD(v55) = v25;
        v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write manifest file %{darwin.errno}d", COERCE_DOUBLE(136446466), &v52, 18);
      }

      v48 = v32;
      v35 = createError("_cryptex_bundle_write_manifest", "bundle.c", 413, "com.apple.security.cryptex.posix", v28, 0, v32);
      free(v48);
    }

    else
    {
      v35 = 0;
    }
  }

  buff_destroy(v58, v26);
  if (v24 != -1 && close(v24) == -1)
  {
    _cryptex_bundle_new_asset_from_object_cold_1(&v52, v58);
  }

LABEL_59:
  if (error)
  {
    CFRelease(error);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v35;
}

uint64_t cryptex_bundle_copy_build_manifest2(uint64_t a1, xpc_object_t *a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = _cryptex_bundle_init(a1);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 16);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(v17) = 136446210;
      *(&v17 + 4) = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_2986C0000, v8, 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), &v17, 12, v17);
    }

    else
    {
      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      LODWORD(v17) = 136446210;
      *(&v17 + 4) = v13;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Failed to initialize bundle", COERCE_DOUBLE(136446210), &v17, 12, v17);
    }

    v14 = v11;
    Error = createError("cryptex_bundle_copy_build_manifest2", "bundle.c", 1552, "com.apple.security.cryptex", 6, v7, v11);
    free(v14);
    if (a3 && Error)
    {
      *a3 = CFRetain(Error);
    }

    else if (!Error)
    {
      v12 = 1;
      goto LABEL_18;
    }

    CFRelease(Error);
    v12 = 0;
LABEL_18:
    CFRelease(v7);
    return v12;
  }

  *a2 = xpc_retain(*(a1 + 80));
  return 1;
}

uint64_t cryptex_bundle_update_build_manifest2(uint64_t a1, void *a2, int a3, CFTypeRef *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 80);
  if (v6)
  {
    if (v6 != a2)
    {
      xpc_release(v6);
      *(a1 + 80) = a2;
    }

    if (!a3)
    {
      return 1;
    }

    v9 = _cryptex_bundle_write_manifest(a1);
    if (!v9)
    {
      return 1;
    }

    v10 = v9;
    v11 = *(a1 + 32);
    if (v11)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      LODWORD(v25) = 136446210;
      *(&v25 + 4) = v13;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_2986C0000, v11, 16, "%{public}s: failed to write bundle manifest", COERCE_DOUBLE(136446210), &v25, 12, v25);
    }

    else
    {
      v23 = *(a1 + 16);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      LODWORD(v25) = 136446210;
      *(&v25 + 4) = v23;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: failed to write bundle manifest", COERCE_DOUBLE(136446210), &v25, 12, v25);
    }

    v21 = v14;
    Error = createError("cryptex_bundle_update_build_manifest2", "bundle.c", 1595, "com.apple.security.cryptex", 7, v10, v14);
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      LODWORD(v25) = 136446210;
      *(&v25 + 4) = v18;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_2986C0000, v16, 16, "%{public}s: Bundle has no manifest", COERCE_DOUBLE(136446210), &v25, 12, v25);
    }

    else
    {
      v20 = *(a1 + 16);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      LODWORD(v25) = 136446210;
      *(&v25 + 4) = v20;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "%{public}s: Bundle has no manifest", COERCE_DOUBLE(136446210), &v25, 12, v25);
    }

    v21 = v19;
    Error = createError("cryptex_bundle_update_build_manifest2", "bundle.c", 1580, "com.apple.security.cryptex", 6, 0, v19);
    v10 = 0;
  }

  free(v21);
  if (a4 && Error)
  {
    *a4 = CFRetain(Error);
  }

  else if (!Error)
  {
    v15 = 1;
    if (!v10)
    {
      return v15;
    }

    goto LABEL_34;
  }

  CFRelease(Error);
  v15 = 0;
  if (v10)
  {
LABEL_34:
    CFRelease(v10);
  }

  return v15;
}

CFIndex cryptex_bundle_copy_cryptex(uint64_t a1, _OWORD *a2, const char *a3, void **a4)
{
  v8 = 0;
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = a2[2];
  if (cryptex_bundle_copy_cryptex2(a1, v7, a3, a4, &v8))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v8);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_copy_cryptex_for_chip(uint64_t a1, uint64_t a2, const char *a3, void **a4)
{
  cf = 0;
  if (cryptex_bundle_copy_cryptex_for_chip2(a1, a2, a3, a4, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_set_cryptex(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (cryptex_bundle_set_cryptex2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_write(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  if (cryptex_bundle_write2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_copy_build_manifest(uint64_t a1, xpc_object_t *a2)
{
  cf = 0;
  if (cryptex_bundle_copy_build_manifest2(a1, a2, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

CFIndex cryptex_bundle_update_build_manifest(uint64_t a1, void *a2, int a3)
{
  cf = 0;
  if (cryptex_bundle_update_build_manifest2(a1, a2, a3, &cf))
  {
    TopLevelPosixError = 0;
  }

  else
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return TopLevelPosixError;
}

uint64_t _cryptex_populate_cryptex1_properties(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v6 = _xpc_plist_value_copy(&_cryptex1_nonce_domain, a3);
  if (v6)
  {
    v7 = v6;
    if (xpc_int64_get_value(v6) >> 32)
    {
      v8 = *(a1 + 16);
      v9 = *__error();
      v10 = *(a1 + 32);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "[anonymous]";
        if (v8)
        {
          v11 = v8;
        }

        *buf = 136446722;
        v58 = v11;
        v59 = 2080;
        v60 = "Cryptex1,NonceDomain";
        v61 = 1024;
        v62 = 84;
        _os_log_impl(&dword_2986C0000, v10, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v9;
      v12 = 84;
      goto LABEL_64;
    }

    v17 = _xpc_plist_value_copy(&_cryptex1_version, a3);
    if (!v17)
    {
      v25 = *(a1 + 16);
      v26 = *__error();
      v27 = *(a1 + 32);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = "[anonymous]";
        if (v25)
        {
          v28 = v25;
        }

        *buf = 136446722;
        v58 = v28;
        v59 = 2080;
        v60 = "Cryptex1,Version";
        v61 = 1024;
        v62 = 22;
        _os_log_impl(&dword_2986C0000, v27, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v26;
      v12 = 22;
      goto LABEL_64;
    }

    v18 = v17;
    if (!xpc_string_get_string_ptr(v17))
    {
      v29 = *(a1 + 16);
      v30 = *__error();
      v31 = *(a1 + 32);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = "[anonymous]";
        if (v29)
        {
          v32 = v29;
        }

        *buf = 136446722;
        v58 = v32;
        v59 = 2080;
        v60 = "Cryptex1,Version";
        v61 = 1024;
        v62 = 22;
        _os_log_impl(&dword_2986C0000, v31, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v30;
      v12 = 22;
      goto LABEL_63;
    }

    v19 = _xpc_plist_value_copy(&_cryptex1_styp, a3);
    object = v19;
    if (v19)
    {
      if (xpc_int64_get_value(v19) >> 32)
      {
        v20 = *(a1 + 16);
        v21 = *__error();
        v22 = *(a1 + 32);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = "[anonymous]";
          if (v20)
          {
            v23 = v20;
          }

          *buf = 136446722;
          v58 = v23;
          v59 = 2080;
          v60 = "Cryptex1,SubType";
          v61 = 1024;
          v62 = 22;
          _os_log_impl(&dword_2986C0000, v22, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v21;
        v12 = 22;
        v24 = object;
LABEL_62:
        os_release(v24);
LABEL_63:
        os_release(v18);
LABEL_64:
        os_release(v7);
        return v12;
      }
    }

    else
    {
      v33 = *(a1 + 16);
      v34 = *__error();
      v35 = *(a1 + 32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = "[anonymous]";
        if (v33)
        {
          v36 = v33;
        }

        *buf = 136446466;
        v58 = v36;
        v59 = 1024;
        LODWORD(v60) = 0;
        _os_log_impl(&dword_2986C0000, v35, OS_LOG_TYPE_INFO, "%{public}s: Assuming default SubType: %u", buf, 0x12u);
      }

      *__error() = v34;
    }

    v37 = _xpc_plist_value_copy(&_cryptex1_preauthorization_version, a3);
    if (v37)
    {
      v38 = v37;
      if (xpc_string_get_string_ptr(v37))
      {
        v39 = _xpc_plist_value_copy(&_cryptex1_use_product_class, a3);
        v40 = v39;
        if (v39)
        {
          xpc_BOOL_get_value(v39);
        }

        v49 = cryptex_core_cx1_properties_create();
        if (v49)
        {
          v50 = v49;
          cryptex_core_set_cryptex1_properties();
          os_release(v50);
          v12 = 0;
        }

        else
        {
          v51 = a2[2];
          v52 = *__error();
          v53 = a2[4];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = "[anonymous]";
            if (v51)
            {
              v54 = v51;
            }

            *buf = 136446466;
            v58 = v54;
            v59 = 1024;
            LODWORD(v60) = 12;
            _os_log_impl(&dword_2986C0000, v53, OS_LOG_TYPE_ERROR, "%{public}s: Failed to create Cryptex1 properties.: %{darwin.errno}d", buf, 0x12u);
          }

          *__error() = v52;
          v12 = 12;
        }

        if (v40)
        {
          os_release(v40);
        }
      }

      else
      {
        v45 = *(a1 + 16);
        v46 = *__error();
        v47 = *(a1 + 32);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = "[anonymous]";
          if (v45)
          {
            v48 = v45;
          }

          *buf = 136446722;
          v58 = v48;
          v59 = 2080;
          v60 = "Cryptex1,PreauthorizationVersion";
          v61 = 1024;
          v62 = 22;
          _os_log_impl(&dword_2986C0000, v47, OS_LOG_TYPE_ERROR, "%{public}s: Manifest value is invalid at key: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v46;
        v12 = 22;
      }

      os_release(v38);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *__error();
      v43 = *(a1 + 32);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = "[anonymous]";
        if (v41)
        {
          v44 = v41;
        }

        *buf = 136446722;
        v58 = v44;
        v59 = 2080;
        v60 = "Cryptex1,PreauthorizationVersion";
        v61 = 1024;
        v62 = 22;
        _os_log_impl(&dword_2986C0000, v43, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
      }

      *__error() = v42;
      v12 = 22;
    }

    v24 = object;
    if (!object)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v13 = *(a1 + 16);
  v14 = *__error();
  v15 = *(a1 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = "[anonymous]";
    if (v13)
    {
      v16 = v13;
    }

    *buf = 136446722;
    v58 = v16;
    v59 = 2080;
    v60 = "Cryptex1,NonceDomain";
    v61 = 1024;
    v62 = 22;
    _os_log_impl(&dword_2986C0000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Manifest missing required key: %s: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v14;
  return 22;
}