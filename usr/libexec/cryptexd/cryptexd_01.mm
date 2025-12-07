CFIndex codex_bootstrap_launch_agents_to_session(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = "[anonymous]";
    }

    v20 = 136446210;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: Waiting to search the codex for LaunchAgents", &v20, 0xCu);
  }

  *__error() = v7;
  dispatch_group_wait(*(a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = "[anonymous]";
    }

    v20 = 136446466;
    v21 = v13;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: Searching the codex for LaunchAgents - have uid of: %u.", &v20, 0x12u);
  }

  v14 = 0;
  *__error() = v11;
  while (1)
  {
    v15 = *(a1 + 144 + 8 * v14);
    if (v15)
    {
      break;
    }

LABEL_15:
    if (++v14 == 37)
    {
      return 0;
    }
  }

  while (1)
  {
    v16 = quire_attach_launch_agents(v15 - 80, v4, a3);
    if (v16)
    {
      break;
    }

    v15 = *(v15 + 8);
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  v18 = v16;
  TopLevelPosixError = _CFErrorGetTopLevelPosixError(v16);
  CFRelease(v18);
  return TopLevelPosixError;
}

int *codex_unbootstrap_launch_agents_from_session(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a1 + 56);
  v6 = *__error();
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v13 = 136446466;
    v14 = v8;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: Searching the codex for LaunchAgents - have uid of: %u.", &v13, 0x12u);
  }

  result = __error();
  v10 = 0;
  *result = v6;
  v11 = a1 + 144;
  do
  {
    for (i = *(v11 + 8 * v10); i; i = *(i + 8))
    {
      result = quire_detach_launch_agents(i - 80, v3);
    }

    ++v10;
  }

  while (v10 != 37);
  return result;
}

uint64_t codex_install_cryptex(void *a1, void *a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = a3;
  v5[5] = os_retain(a2);

  return cryptex_async_f();
}

void _codex_install_cryptex_continue(void **a1)
{
  v2 = *a1;
  v3 = a1[4];
  if ((*(*a1 + 80) & 4) != 0)
  {
    v5 = *(v2 + 9);
    if (v5)
    {
      if (os_log_type_enabled(*(v2 + 9), OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = *(v2 + 7);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      *v12 = 136446466;
      *&v12[4] = v7;
      *&v12[12] = 1024;
      *&v12[14] = 58;
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "%{public}s: codex is locked down; refusing cryptex installation %{darwin.errno}d", COERCE_DOUBLE(136446466), v12, 18, *v12, *&v12[8]);
    }

    else
    {
      v9 = *(v2 + 7);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *v12 = 136446466;
      *&v12[4] = v9;
      *&v12[12] = 1024;
      *&v12[14] = 58;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: codex is locked down; refusing cryptex installation %{darwin.errno}d", COERCE_DOUBLE(136446466), v12, 18, *v12, *&v12[8]);
    }

    v10 = v8;
    Error = createError("_codex_install_cryptex_continue", "codex.c", 2959, "com.apple.security.cryptex.posix", 58, 0, v8);
    free(v10);
    a1[2] = Error;
    (*(v3 + 48))(v2, 0, Error, v3);
    v4 = 0;
  }

  else
  {
    v4 = protex_create(a1[5], v2, 0);
    cryptex_set_target_object();
    protex_stage(v4, v3, _protex_stage_install_callback);
  }

  os_release(a1[5]);
  ctx_destroy(a1);
  if (v4)
  {
    os_release(v4);
  }
}

uint64_t codex_mount(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ctx_new(a1, 0x48uLL);
  a2[6] = 1;
  v8[4] = os_retain(a2);
  v8[5] = 0;
  v8[7] = a4;
  v8[8] = a5;
  v8[6] = 0;

  return cryptex_async_f();
}

void _codex_mount_continue(uint64_t *a1)
{
  v2 = *a1;
  if (cryptex_core_is_cryptex1())
  {
    a1[5] = protex_create(a1[4], v2, 1);
    cryptex_set_target_object();
    v3 = a1[5];

    protex_stage(v3, a1, _codex_mount_continue2);
  }

  else
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v6 = *(v2 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      *v11 = 136446466;
      *&v11[4] = v6;
      *&v11[12] = 1024;
      *&v11[14] = 22;
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v4, 16, "%{public}s: Cryptex1 format is required to mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v11, 18, *v11, *&v11[8]);
    }

    else
    {
      v8 = *(v2 + 56);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      *v11 = 136446466;
      *&v11[4] = v8;
      *&v11[12] = 1024;
      *&v11[14] = 22;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex1 format is required to mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v11, 18, *v11, *&v11[8]);
    }

    v9 = v7;
    Error = createError("_codex_mount_continue", "codex.c", 3123, "com.apple.security.cryptex.posix", 22, 0, v7);
    free(v9);
    if (Error)
    {
      a1[2] = Error;
      cryptex_target_async_f();
    }
  }
}

uint64_t codex_unmount(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ctx_new(a1, 0xD8uLL);
  v10 = *(a3 + 112);
  *(v9 + 8) = *(a3 + 96);
  *(v9 + 9) = v10;
  *(v9 + 10) = *(a3 + 128);
  v9[22] = *(a3 + 144);
  v9[23] = a2;
  v11 = *(a3 + 48);
  *(v9 + 4) = *(a3 + 32);
  *(v9 + 5) = v11;
  v12 = *(a3 + 80);
  *(v9 + 6) = *(a3 + 64);
  *(v9 + 7) = v12;
  v13 = *(a3 + 16);
  *(v9 + 2) = *a3;
  *(v9 + 3) = v13;
  v9[25] = a4;
  v9[26] = a5;
  v9[24] = 0;

  return cryptex_async_f();
}

void _codex_unmount_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[23];
  v4 = codex_copy_quire(*a1, a1[4], a1[6]);
  if (v4)
  {
    if (cryptex_core_is_cryptex1())
    {
      cryptex1_properties = cryptex_core_get_cryptex1_properties();
      if (cryptex1_properties && (*(cryptex1_properties + 64) & 1) != 0)
      {
        a1[24] = os_retain(v4);
        codex_unbootstrap(v2, v4, v3 & 1 | 4, a1, _codex_unmount_continue2);
LABEL_43:
        os_release(v4);
        return;
      }

      v16 = *(v2 + 72);
      if (v16)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = *(v2 + 56);
        if (!v18)
        {
          v18 = "[anonymous]";
        }

        *v29 = 136446466;
        *&v29[4] = v18;
        *&v29[12] = 1024;
        *&v29[14] = 22;
        v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: This cryptex was not mounted via cryptex_mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8]);
      }

      else
      {
        v27 = *(v2 + 56);
        if (!v27)
        {
          v27 = "[anonymous]";
        }

        *v29 = 136446466;
        *&v29[4] = v27;
        *&v29[12] = 1024;
        *&v29[14] = 22;
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: This cryptex was not mounted via cryptex_mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8]);
      }

      v23 = v19;
      v24 = 3249;
    }

    else
    {
      v12 = *(v2 + 72);
      if (v12)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v14 = *(v2 + 56);
        if (!v14)
        {
          v14 = "[anonymous]";
        }

        *v29 = 136446466;
        *&v29[4] = v14;
        *&v29[12] = 1024;
        *&v29[14] = 22;
        v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: Cryptex1 format is required to unmount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8]);
      }

      else
      {
        v26 = *(v2 + 56);
        if (!v26)
        {
          v26 = "[anonymous]";
        }

        *v29 = 136446466;
        *&v29[4] = v26;
        *&v29[12] = 1024;
        *&v29[14] = 22;
        v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex1 format is required to unmount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v29, 18, *v29, *&v29[8]);
      }

      v23 = v15;
      v24 = 3242;
    }

    v25 = 22;
  }

  else
  {
    v6 = *(v2 + 72);
    if (v6)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v8 = "[anonymous]";
      if (*(v2 + 56))
      {
        v8 = *(v2 + 56);
      }

      v9 = a1[4];
      v10 = *a1[6];
      *v29 = 136446978;
      *&v29[4] = v8;
      *&v29[12] = 2080;
      *&v29[14] = v9;
      *&v29[22] = 2080;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = 2;
      v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 16, "%{public}s: No quire with name '%s' and version '%s' %{darwin.errno}d", v29, 38, *v29, *&v29[8], v10, v30);
    }

    else
    {
      v20 = *(v2 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      v21 = a1[4];
      v22 = *a1[6];
      *v29 = 136446978;
      *&v29[4] = v20;
      *&v29[12] = 2080;
      *&v29[14] = v21;
      *&v29[22] = 2080;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = 2;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: No quire with name '%s' and version '%s' %{darwin.errno}d", v29, 38, *v29, *&v29[8], v22, v30);
    }

    v23 = v11;
    v24 = 3236;
    v25 = 2;
  }

  Error = createError("_codex_unmount_continue", "codex.c", v24, "com.apple.security.cryptex.posix", v25, 0, v23);
  free(v23);
  if (Error)
  {
    a1[2] = Error;
    cryptex_target_async_f();
  }

  if (v4)
  {
    goto LABEL_43;
  }
}

void codex_uninstall(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = ctx_new(a1, 0x50uLL);
  v8[5] = os_retain(a2);
  v8[7] = a3;
  v8[8] = a4;
  v8[6] = _codex_activate(a1, "uninstall");
  v9 = a1[12];

  dispatch_async_f(v9, v8, _codex_uninstall_continue);
}

uint64_t _codex_uninstall_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  bzero(v35, 0x400uLL);
  dispatch_assert_queue_V2(*(v2 + 96));
  if ((*(v3 + 176) & 0x10) != 0)
  {
    v8 = *(v2 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v2 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *v34 = 136446466;
      *&v34[4] = v10;
      *&v34[12] = 1024;
      *&v34[14] = 45;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Uninstall is unsupported for this cryptex. %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
    }

    else
    {
      v19 = *(v2 + 56);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      *v34 = 136446466;
      *&v34[4] = v19;
      *&v34[12] = 1024;
      *&v34[14] = 45;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Uninstall is unsupported for this cryptex. %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
    }

    v20 = v11;
    v21 = 1366;
    v22 = 45;
  }

  else if (*(v3 + 480))
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v6 = *(v2 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      *v34 = 136446466;
      *&v34[4] = v6;
      *&v34[12] = 1024;
      *&v34[14] = 16;
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v4, 16, "%{public}s: Uninstall is unsupported for this cryptex (active dependents currently installed). %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
    }

    else
    {
      v23 = *(v2 + 56);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *v34 = 136446466;
      *&v34[4] = v23;
      *&v34[12] = 1024;
      *&v34[14] = 16;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Uninstall is unsupported for this cryptex (active dependents currently installed). %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
    }

    v20 = v7;
    v21 = 1373;
    v22 = 16;
  }

  else
  {
    if (!cryptex_core_get_asset())
    {
      _codex_uninstall_continue_cold_1();
    }

    v12 = realpath_np();
    if (v12)
    {
      v13 = v12;
      v14 = v12;
      v15 = *(v2 + 72);
      if (v15)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v17 = *(v2 + 56);
        if (!v17)
        {
          v17 = "[anonymous]";
        }

        *v34 = 136446466;
        *&v34[4] = v17;
        *&v34[12] = 1024;
        *&v34[14] = v13;
        v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "%{public}s: realpath_np %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
      }

      else
      {
        v30 = *(v2 + 56);
        if (!v30)
        {
          v30 = "[anonymous]";
        }

        *v34 = 136446466;
        *&v34[4] = v30;
        *&v34[12] = 1024;
        *&v34[14] = v12;
        v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: realpath_np %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
      }

      v20 = v18;
      v21 = 1385;
    }

    else
    {
      v24 = _rmrfdir(v35);
      if ((v24 & 0xFFFFFFFD) == 0)
      {
        a1[2] = 0;
        return cryptex_async_f();
      }

      v25 = v24;
      v14 = v24;
      v26 = *(v2 + 72);
      if (v26)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v28 = *(v2 + 56);
        if (!v28)
        {
          v28 = "[anonymous]";
        }

        *v34 = 136446466;
        *&v34[4] = v28;
        *&v34[12] = 1024;
        *&v34[14] = v25;
        v29 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v26, 16, "%{public}s: Failed to delete cryptex root dir. %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
      }

      else
      {
        v31 = *(v2 + 56);
        if (!v31)
        {
          v31 = "[anonymous]";
        }

        *v34 = 136446466;
        *&v34[4] = v31;
        *&v34[12] = 1024;
        *&v34[14] = v24;
        v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to delete cryptex root dir. %{darwin.errno}d", COERCE_DOUBLE(136446466), v34, 18, *v34, *&v34[8]);
      }

      v20 = v29;
      v21 = 1392;
    }

    v22 = v14;
  }

  Error = createError("_codex_uninstall_continue", "codex.c", v21, "com.apple.security.cryptex.posix", v22, 0, v20);
  free(v20);
  a1[2] = Error;
  if (Error)
  {
    return cryptex_target_async_f();
  }

  return cryptex_async_f();
}

uint64_t codex_bootstrap(dispatch_group_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  daemon_assert_main_queue();
  v8 = ctx_new(a1, 0x48uLL);
  v8[4] = os_retain(a2);
  v8[7] = a3;
  v8[8] = a4;
  v8[6] = _codex_activate(a1, "bootstrap");
  dispatch_group_enter(a1[14]);

  return cryptex_async_f();
}

void _codex_bootstrap_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (hash_lookup_node(*a1 + 448, v3 + 112))
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v6 = *(v2 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      LODWORD(v13) = 136446210;
      *(&v13 + 4) = v6;
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v4, 16, "%{public}s: Cryptex with the same name is still bootstrapped.", COERCE_DOUBLE(136446210), &v13, 12, v13);
    }

    else
    {
      v10 = *(v2 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(v13) = 136446210;
      *(&v13 + 4) = v10;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex with the same name is still bootstrapped.", COERCE_DOUBLE(136446210), &v13, 12, v13);
    }

    v11 = v7;
    Error = createError("_codex_bootstrap_continue", "codex.c", 1644, "com.apple.security.cryptex", 17, 0, v7);
    free(v11);
    if (Error)
    {
      a1[2] = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {
    v8 = *(v2 + 1412);
    v9 = *(v2 + 1416);

    quire_mount(v3, v8, v9, a1, _codex_bootstrap_continue2);
  }
}

uint64_t codex_unbootstrap(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  daemon_assert_main_queue();
  v10 = *(a1 + 56);
  v11 = *__error();
  v12 = *(a1 + 72);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = "[anonymous]";
    if (v10)
    {
      v13 = v10;
    }

    v16 = 136446210;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: codex_unbootstrap occurring.", &v16, 0xCu);
  }

  *__error() = v11;
  v14 = ctx_new(a1, 0x48uLL);
  v14[4] = os_retain(a2);
  v14[5] = a3;
  v14[7] = a4;
  v14[8] = a5;
  v14[6] = _codex_activate(a1, "unbootstrap");
  return quire_unbootstrap(a2, *(a1 + 1436), (a3 >> 1) & 1, v14, _codex_unbootstrap_continue);
}

void *_codex_unbootstrap_continue(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[5];
  daemon_assert_main_queue();
  v9 = _rmrfdirat(*(v7 + 1424), *(a1 + 208));
  if ((v9 & 0xFFFFFFFD) != 0)
  {
    v10 = v9;
    v11 = v9;
    v12 = *(a1 + 72);
    if (v12)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a1 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v14;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: Failed to remove boot session state directory. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    else
    {
      v20 = *(a1 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v20;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to remove boot session state directory. %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    v21 = v15;
    v22 = "com.apple.security.cryptex.posix";
    v23 = 1481;
    v24 = v11;
    goto LABEL_52;
  }

  if (*(v7 + 56))
  {
    v16 = *(v7 + 56);
  }

  else
  {
    v16 = "[anonymous]";
  }

  v17 = *__error();
  v18 = *(v7 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 208);
      *buf = 136446722;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      v52 = a3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: quire unbootstrap: %s: %@", buf, 0x20u);
    }

    *__error() = v17;
    a4[2] = CFRetain(a3);
    if ((_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 18) & 1) == 0)
    {
      return cryptex_target_async_f();
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 208);
      *buf = 136446466;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: quire unbootstrap: %s [no error]", buf, 0x16u);
    }

    *__error() = v17;
    a4[2] = 0;
  }

  if ((*(a1 + 176) & 0x10) != 0 && (v8 & 2) == 0)
  {
    v26 = *(a1 + 72);
    if (v26)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v28 = *(a1 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v28;
      v29 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v26, 16, "%{public}s: Disallow unbootstrap of system quire.", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    else
    {
      v35 = *(a1 + 56);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v35;
      v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Disallow unbootstrap of system quire.", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    v21 = v29;
    v22 = "com.apple.security.cryptex";
    v23 = 1503;
LABEL_51:
    v24 = 4;
LABEL_52:
    Error = createError("_codex_unbootstrap_continue", "codex.c", v23, v22, v24, 0, v21);
    free(v21);
    a4[2] = Error;
    return cryptex_target_async_f();
  }

  if (*(a1 + 480))
  {
    v30 = *(a1 + 72);
    if (v30)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v32 = *(a1 + 56);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v32;
      v33 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 16, "%{public}s: Disallow unbootstrap of quire with active dependent quires.", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    else
    {
      v36 = *(a1 + 56);
      if (!v36)
      {
        v36 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v36;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Disallow unbootstrap of quire with active dependent quires.", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    v21 = v33;
    v22 = "com.apple.security.cryptex";
    v23 = 1514;
    goto LABEL_51;
  }

  if (v8)
  {
    v39 = *(v7 + 56);
    v40 = *__error();
    v41 = *(v7 + 72);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      if (v39)
      {
        v42 = v39;
      }

      else
      {
        v42 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%{public}s: will force unmount", buf, 0xCu);
    }

    *__error() = v40;
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  if ((v8 & 4) != 0)
  {
    v43 = *(v7 + 56);
    v44 = *__error();
    v45 = *(v7 + 72);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%{public}s: unmount failure will not result in a quire husk", buf, 0xCu);
    }

    *__error() = v44;
    v34 |= 2uLL;
  }

  v47 = *(v7 + 56);
  v48 = *__error();
  v49 = *(v7 + 72);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    if (v47)
    {
      v50 = v47;
    }

    else
    {
      v50 = "[anonymous]";
    }

    *buf = 136446210;
    *&buf[4] = v50;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_unbootstrap_continue progressing to quire unmount", buf, 0xCu);
  }

  *__error() = v48;
  return quire_unmount(a1, v34, a4, _codex_unbootstrap_continue2);
}

void *codex_copy_quire(uint64_t a1, char *a2, uint64_t a3)
{
  daemon_assert_main_queue();
  v6 = hash_lookup_cstr(a1 + 144, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a3)
  {
    if (cryptex_version_compare())
    {
      return 0;
    }
  }

  return os_retain((v7 - 80));
}

uint64_t codex_barrier(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ctx_new(a1, 0x40uLL);
  v6[6] = a2;
  v6[7] = a3;
  v6[5] = _codex_activate(a1, "barrier");

  return cryptex_async_f();
}

void _codex_barrier_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  daemon_assert_main_queue();
  v4 = *(v2 + 56);
  v5 = *__error();
  v6 = *(v2 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = 136446210;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: enqueuing barrier", &v8, 0xCu);
  }

  *__error() = v5;
  a1[4] = 0;
  **(v2 + 1384) = a1;
  *(v2 + 1384) = a1 + 4;
  _codex_deactivate(v2, v3);
}

uint64_t codex_lockdown(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = a2;
  v5[5] = a3;

  return cryptex_async_f();
}

void _codex_lockdown_continue(_DWORD *a1)
{
  v2 = *a1;
  v3 = os_retain(_system);
  *(v2 + 80) |= 4uLL;
  if (v2 == v3)
  {
    v4 = cryptex_signature_seal();
    if (v4)
    {
      v5 = *(v2 + 56);
      v6 = *__error();
      v7 = *(v2 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = "[anonymous]";
        if (v5)
        {
          v8 = v5;
        }

        v9 = 136446466;
        v10 = v8;
        v11 = 1024;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to seal hash slot: %{darwin.errno}d", &v9, 0x12u);
      }

      *__error() = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v4;
  dispatch_async_f(*(v2 + 96), a1, _codex_lockdown_continue2);
  if (v3)
  {
    os_release(v3);
  }
}

void codex_list_installed(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x48uLL);
  v5[7] = a2;
  v5[8] = a3;
  v5[5] = xpc_array_create(0, 0);
  main_queue = daemon_get_main_queue();

  dispatch_async_f(main_queue, v5, _codex_list_installed_continue);
}

uint64_t codex_installed_cryptex_apply(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = result + 144;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    if (v5)
    {
      break;
    }

LABEL_5:
    if (v3++ >= 0x24)
    {
      return result;
    }
  }

  while (1)
  {
    result = (*(a2 + 16))(a2, v5 - 80);
    if ((result & 1) == 0)
    {
      return result;
    }

    v5 = *(v5 + 8);
    if (!v5)
    {
      goto LABEL_5;
    }
  }
}

void _codex_import_initial_done(uint64_t a1)
{
  object = daemon_copy();
  v2 = (a1 + 120);
  v3 = *(a1 + 120);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 48);
      v5 = *(a1 + 56);
      v6 = *__error();
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = "[anonymous]";
        if (v5)
        {
          v8 = v5;
        }

        *buf = 136446210;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: uncorking import", buf, 0xCu);
      }

      *__error() = v6;
      v9 = *v2;
      if (*v2 == v3)
      {
        v13 = *(v9 + 32);
        *v2 = v13;
        v12 = a1 + 120;
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        do
        {
          v10 = v9;
          v9 = *(v9 + 32);
        }

        while (v9 != v3);
        v11 = *(v9 + 32);
        *(v10 + 32) = v11;
        v12 = v10 + 32;
        if (v11)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 128) = v12;
LABEL_10:
      *(v3 + 32) = -1;
      dispatch_group_leave(v4);
      v3 = *v2;
    }

    while (*v2);
  }

  v14 = object[37];
  if (v14)
  {
    v15 = object + 37;
    do
    {
      v16 = *v14;
      v17 = codex_copy_quire(a1, v14 + 8, 0);
      if (!v17)
      {
        v18 = *(a1 + 56);
        v19 = *__error();
        v20 = *(a1 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v21 = "[anonymous]";
          if (v18)
          {
            v21 = v18;
          }

          v30 = v21;
          v31 = 2080;
          v32 = v14 + 8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: lingering forerunner: %s", buf, 0x16u);
        }

        *__error() = v19;
      }

      v22 = *(a1 + 56);
      v23 = *__error();
      v24 = *(a1 + 72);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        v30 = v25;
        v31 = 2080;
        v32 = v14 + 8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: removing forerunner: %s", buf, 0x16u);
      }

      *__error() = v23;
      v26 = *v15;
      if (*v15 == v14)
      {
        v27 = (object + 37);
      }

      else
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26 != v14);
      }

      *v27 = *v26;
      free(v14);
      if (v17)
      {
        os_release(v17);
      }

      v14 = v16;
    }

    while (v16);
  }

  upgrade_lock_resume();
  dispatch_async_f(*(a1 + 96), 0, _codex_unset_initial_keepalive);
  *(a1 + 80) |= 2uLL;
  if (object)
  {
    os_release(object);
  }
}

uint64_t _codex_import_initial_prep(uint64_t a1, void *a2)
{
  v3 = dup_np();
  v4 = fdopendir(v3);
  for (i = readdir(v4); i; i = readdir(v4))
  {
    d_name = i->d_name;
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      v7 = *(a1 + 56);
      v8 = *__error();
      v9 = *(a1 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v10 = "[anonymous]";
        if (v7)
        {
          v10 = v7;
        }

        v38 = v10;
        v39 = 2080;
        v40 = d_name;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: importing pre-existing cryptex: %s", buf, 0x16u);
      }

      *__error() = v8;
      v11 = openat(v3, d_name, 1048832);
      if (v11 < 0)
      {
        v29 = *__error();
        v30 = *(a1 + 56);
        v31 = *__error();
        v32 = *(a1 + 72);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v33 = "[anonymous]";
          if (v30)
          {
            v33 = v30;
          }

          v38 = v33;
          v39 = 2080;
          v40 = d_name;
          v41 = 1024;
          v42 = v29;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s: failed to open cryptex: %s: %{darwin.errno}d", buf, 0x1Cu);
        }

        *__error() = v31;
        if (v11 != -1 && close(v11) == -1)
        {
LABEL_41:
          daemon_init_cold_13(v36, buf);
        }
      }

      else
      {
        v12 = cryptex_core_create();
        v13 = cryptex_core_set_assets_from_directory();
        if (v13)
        {
          v14 = v13;
          v15 = *(a1 + 56);
          v16 = *__error();
          v17 = *(a1 + 72);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v18 = "[anonymous]";
            if (v15)
            {
              v18 = v15;
            }

            v38 = v18;
            v39 = 2080;
            v40 = d_name;
            v41 = 1024;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: failed to create core from directory: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v16;
          if (v14 == 2)
          {
            v19 = *(a1 + 56);
            v20 = *__error();
            v21 = *(a1 + 72);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              v22 = "[anonymous]";
              if (v19)
              {
                v22 = v19;
              }

              v38 = v22;
              v39 = 2080;
              v40 = d_name;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%{public}s: removing broken cryptex: %s", buf, 0x16u);
            }

            *__error() = v20;
            v23 = _rmrfdirat(v3, d_name);
            if (v23)
            {
              v24 = v23;
              v25 = *(a1 + 56);
              v26 = *__error();
              v27 = *(a1 + 72);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v28 = "[anonymous]";
                if (v25)
                {
                  v28 = v25;
                }

                v38 = v28;
                v39 = 2080;
                v40 = d_name;
                v41 = 1024;
                v42 = v24;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: failed to remove core directory: %s: %{darwin.errno}d", buf, 0x1Cu);
              }

              *__error() = v26;
            }
          }
        }

        else
        {
          cryptex_core_set_nonce_persistence();
          dispatch_group_enter(*(a1 + 104));
          v34 = ctx_new(a1, 0xA0uLL);
          v34[18] = _codex_import_initial_continue;
          _codex_import_core_impl(a1, v12, v34);
        }

        if (close(v11) == -1)
        {
          goto LABEL_41;
        }

        if (v12)
        {
          os_release(v12);
        }
      }
    }
  }

  result = closedir(v4);
  if (result == -1)
  {
    view_iterate_resource_cold_2(v36, buf);
  }

  return result;
}

void _codex_unset_initial_keepalive()
{
  v0 = daemon_copy();
  v1 = openat(v0[23], "init", 2560, 438);
  if ((v1 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v2 = *__error();
  if (v2)
  {
    v3 = v2 == 17;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    _codex_unset_initial_keepalive_cold_2(&v5, v6);
  }

  v4 = *(v0 + 41);
  if (v4)
  {
    os_release(v4);
  }

  *(v0 + 41) = 0;
  if (v1 != -1 && close(v1) == -1)
  {
    daemon_init_cold_13(&v5, v6);
  }

  os_release(v0);
}

void _codex_import_initial_continue(uint64_t a1, void *a2, void *a3, const void *a4)
{
  if (a4)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(a1 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: cryptex is no longer valid", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    else
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446210;
      *&buf[4] = v17;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: cryptex is no longer valid", COERCE_DOUBLE(136446210), buf, 12, *buf, *&buf[8]);
    }

    v18 = v10;
    Error = createError("_codex_import_initial_continue", "codex.c", 1900, "com.apple.security.cryptex", 15, a4, v10);
    free(v18);
    v20 = ctx_new(a1, 0x28uLL);
    v20[4] = os_retain(a2);
    dispatch_async_f(*(a1 + 96), v20, _codex_cleanup_stale_continue);
    if (Error)
    {
      CFRelease(Error);
    }
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = *__error();
    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = "[anonymous]";
      v16 = a3[26];
      if (v12)
      {
        v15 = v12;
      }

      *buf = 136446466;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s: imported: %s [no error]", buf, 0x16u);
    }

    *__error() = v13;
    codex_bootstrap(a1, a3, 0, _codex_import_initial_continue2);
  }
}

void _codex_import_core_impl(uint64_t a1, void *a2, void *a3)
{
  v6 = daemon_copy();
  daemon_assert_main_queue();
  v7 = dispatch_group_create();
  dispatch_set_context(v7, a3);
  a3[5] = os_retain(a2);
  a3[6] = v7;
  v8 = a2[21];
  asset = cryptex_core_get_asset();
  if (os_variant_allows_internal_security_policies() && v8 && (*(v8 + 40) & 4) != 0 || asset && ((memset(&v41, 0, sizeof(v41)), !fstat(*(asset + 16), &v41)) ? (v10 = v41.st_size == 0) : (v10 = 0), v10 && os_variant_allows_internal_security_policies()))
  {
    a2[5] |= 1uLL;
  }

  dispatch_group_enter(v7);
  os_variant_allows_internal_security_policies();
  v11 = cryptex_magister_create();
  cryptex_set_target_object();
  image_asset = cryptex_core_get_image_asset();
  v13 = cryptex_asset_evaluate();
  if (v13)
  {
    v33 = v13;
    v36 = 0;
    memset(&v41, 0, 80);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v35 = *(*(image_asset + 8) + 40);
    v37 = 136315394;
    v38 = v35;
    v39 = 1024;
    v40 = v33;
    _os_log_send_and_compose_impl(v34, &v36, &v41, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: asset not valid on this configuration: %s: %{darwin.errno}d", &v37, 18);
    _os_crash_msg();
    __break(1u);
  }

  info_asset = cryptex_core_get_info_asset();
  v15 = info_asset;
  if ((*(v11[11] + 40) & 1) == 0)
  {
    if (cryptex_core_image_authapfs_enabled())
    {
      v16 = *(a1 + 56);
      v17 = *__error();
      v18 = *(a1 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = "[anonymous]";
        if (v16)
        {
          v19 = v16;
        }

        v41.st_dev = 136446210;
        *&v41.st_mode = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: AuthAPFS enabled, skip up-front dmg authentication.", &v41, 0xCu);
      }

      *__error() = v17;
      if (v15)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

LABEL_27:
    dispatch_group_enter(v7);
    cryptex_magister_authenticate_f();
    if (v15)
    {
LABEL_20:
      dispatch_group_enter(v7);
      cryptex_magister_authenticate_f();
LABEL_33:
      dispatch_group_enter(v7);
      cryptex_magister_record_property();
      goto LABEL_34;
    }

LABEL_28:
    v24 = *(a1 + 56);
    v25 = *__error();
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = "[anonymous]";
      v28 = _cryptex_asset_type_c411[5];
      if (v24)
      {
        v27 = v24;
      }

      v41.st_dev = 136446466;
      *&v41.st_mode = v27;
      WORD2(v41.st_ino) = 2080;
      *(&v41.st_ino + 6) = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}s: will use adhoc %s, skip authenticating it", &v41, 0x16u);
    }

    *__error() = v25;
    goto LABEL_33;
  }

  if (info_asset)
  {
    file = _read_file(*(info_asset + 16), a3 + 10);
    if (file)
    {
      v21 = file;
      v36 = 0;
      memset(&v41, 0, 80);
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v23 = *(*(v15 + 8) + 40);
      v37 = 136315394;
      v38 = v23;
      v39 = 1024;
      v40 = v21;
      _os_log_send_and_compose_impl(v22, &v36, &v41, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: Failed to read unauth %s asset: %{darwin.errno}d", &v37, 18);
      _os_crash_msg();
      __break(1u);
      goto LABEL_27;
    }
  }

LABEL_34:
  if ((*(a1 + 80) & 2) == 0 && a3[19])
  {
    v29 = *(a1 + 56);
    v30 = *__error();
    v31 = *(a1 + 72);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = "[anonymous]";
      if (v29)
      {
        v32 = v29;
      }

      v41.st_dev = 136446210;
      *&v41.st_mode = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}s: corking import", &v41, 0xCu);
    }

    *__error() = v30;
    a3[4] = 0;
    **(a1 + 128) = a3;
    *(a1 + 128) = a3 + 4;
    dispatch_group_enter(v7);
  }

  a3[17] = _codex_activate(a1, "import");
  dispatch_group_notify_f(v7, *(a1 + 32), a3, _codex_import_core_continue);
  dispatch_group_leave(v7);
  cryptex_activate();
  if (v7)
  {
    os_release(v7);
  }

  os_release(v11);
  if (v6)
  {
    os_release(v6);
  }
}

void _codex_authenticate_dmg_notify(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v8 = *a5;
  v9 = a5[6];
  if (*(*a5 + 56))
  {
    v10 = *(*a5 + 56);
  }

  else
  {
    v10 = "[anonymous]";
  }

  v11 = *__error();
  v12 = *(v8 + 72);
  if (a4)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 40);
      v13 = *(a2 + 48);
      v19 = 136446978;
      v20 = v10;
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = v14;
      v25 = 2112;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: %s (%s) authentication: %@", &v19, 0x2Au);
    }

    *__error() = v11;
    v15 = CFRetain(a4);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 40);
      v16 = *(a2 + 48);
      v19 = 136446722;
      v20 = v10;
      v21 = 2080;
      v22 = v16;
      v23 = 2080;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: %s (%s) authentication [no error]", &v19, 0x20u);
    }

    v18 = __error();
    v15 = 0;
    *v18 = v11;
  }

  a5[8] = v15;
  dispatch_group_leave(v9);
}

void _codex_authenticate_info_notify(uint64_t a1, uint64_t a2, __n128 *a3, const void *a4, __n128 *a5)
{
  v9 = a5->n128_u64[0];
  v10 = a5[3].n128_u64[0];
  if (*(a5->n128_u64[0] + 56))
  {
    v11 = *(a5->n128_u64[0] + 56);
  }

  else
  {
    v11 = "[anonymous]";
  }

  v12 = *__error();
  v13 = *(v9 + 72);
  if (a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 40);
      v16 = 136446722;
      v17 = v11;
      v18 = 2080;
      v19 = v14;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s: %s authentication: %@", &v16, 0x20u);
    }

    *__error() = v12;
    a5[4].n128_u64[1] = CFRetain(a4);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 40);
      v16 = 136446466;
      v17 = v11;
      v18 = 2080;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: %s authentication [no error]", &v16, 0x16u);
    }

    *__error() = v12;
    a5[4].n128_u64[1] = 0;
    buff_xfer(a5 + 5, a3);
  }

  dispatch_group_leave(v10);
}

void _codex_manifest_check_data_only(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v6 = a4[6];
  if (!a2)
  {
    v8 = *(a4[5] + 16);
    v9 = *__error();
    v10 = *(a4[5] + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446210;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}s: im4m missing DataOnly property", buf, 0xCu);
    }

    *__error() = v9;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  __memcpy_chk();
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = CFRetain(a3);
LABEL_10:
  a4[7] = v7;
  dispatch_group_leave(v6);
}

void _codex_import_core_continue(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1[2].n128_u64[1];
  v5 = a1[3].n128_u64[1];
  v4 = a1[4].n128_u64[0];
  v6 = a1[4].n128_u64[1];
  v174 = 0;
  memset(v173, 0, sizeof(v173));
  v172 = 0;
  v171 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  *xdict = 0u;
  context = a1[9].n128_u64[1];
  v162 = 0;
  v161 = 0;
  daemon_assert_main_queue();
  buff_xfer(v173, a1 + 5);
  v159 = v6;
  if (v4)
  {
    v7 = *(v2 + 72);
    if (v7)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(v2 + 56);
      v10 = *(v3[22] + 40);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v9;
      v179 = 2080;
      v180 = v10;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: _codex_import_core_continue failed with invalid asset: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    else
    {
      v16 = "[anonymous]";
      if (*(v2 + 56))
      {
        v16 = *(v2 + 56);
      }

      v17 = *(v3[22] + 40);
      buf = 136446466;
      v178 = v16;
      v179 = 2080;
      v180 = v17;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _codex_import_core_continue failed with invalid asset: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    v18 = v11;
    v19 = "com.apple.security.cryptex";
    v20 = 641;
    v21 = 14;
    v22 = v4;
LABEL_34:
    Error = createError("_codex_import_core_continue", "codex.c", v20, v19, v21, v22, v18);
    free(v18);
    v33 = 0;
    v34 = 0;
    v157 = 0;
LABEL_35:
    v35 = 0;
    goto LABEL_36;
  }

  if (v5)
  {
    v12 = *(v2 + 72);
    if (v12)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(v2 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      buf = 136446210;
      v178 = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: _codex_import_core_continue failed to check 'data' property on manifest", COERCE_DOUBLE(136446210), &buf, 12);
    }

    else
    {
      v30 = *(v2 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      buf = 136446210;
      v178 = v30;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _codex_import_core_continue failed to check 'data' property on manifest", COERCE_DOUBLE(136446210), &buf, 12);
    }

    v18 = v15;
    v19 = "com.apple.security.cryptex";
    v20 = 650;
    v21 = 14;
    v22 = v5;
    goto LABEL_34;
  }

  info_asset = cryptex_core_get_info_asset();
  if (!info_asset)
  {
    v39 = *(v2 + 56);
    v40 = *__error();
    v41 = *(v2 + 72);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = "[anonymous]";
      if (v39)
      {
        v42 = v39;
      }

      buf = 136446210;
      v178 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%{public}s: no Info.plist found in core, generating adhoc one", &buf, 0xCu);
    }

    *__error() = v40;
    identifier = cryptex_core_generate_identifier();
    version = cryptex_core_generate_version();
    v155 = identifier;
    v45 = xpc_string_create(identifier);
    v158 = version;
    v46 = xpc_string_create(version);
    keys = *off_100072CF8;
    values[0] = v45;
    values[1] = v46;
    v47 = xpc_dictionary_create(&keys, values, 2uLL);
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_DEBUG))
    {
      v153 = v47;
      v151 = xpc_copy_description(v47);
      v48 = *(v2 + 56);
      log = *__error();
      v49 = *(v2 + 72);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = "[anonymous]";
        if (v48)
        {
          v50 = v48;
        }

        buf = 136446466;
        v178 = v50;
        v179 = 2080;
        v180 = v151;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%{public}s: generated Info.plist: %s", &buf, 0x16u);
      }

      *__error() = log;
      free(v151);
      v47 = v153;
    }

    if (v46)
    {
      os_release(v46);
    }

    v5 = 0;
    if (v45)
    {
      os_release(v45);
    }

    free(v158);
    v51 = 0;
    goto LABEL_76;
  }

  if (v6)
  {
    v24 = info_asset;
    v25 = *(v2 + 72);
    if (v25)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = *(v2 + 56);
      v28 = *(*(v24 + 8) + 40);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v27;
      v179 = 2080;
      v180 = v28;
      v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v25, 16, "%{public}s: _codex_import_core_continue failed with invalid asset: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    else
    {
      v67 = "[anonymous]";
      if (*(v2 + 56))
      {
        v67 = *(v2 + 56);
      }

      v68 = *(*(info_asset + 8) + 40);
      buf = 136446466;
      v178 = v67;
      v179 = 2080;
      v180 = v68;
      v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _codex_import_core_continue failed with invalid asset: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    v69 = v29;
    Error = createError("_codex_import_core_continue", "codex.c", 661, "com.apple.security.cryptex", 14, v6, v29);
    free(v69);
    v33 = 0;
    v34 = 0;
    v157 = 0;
    v35 = 0;
    v5 = 0;
    goto LABEL_36;
  }

  v58 = xpc_create_from_plist();
  if (!v58)
  {
    v70 = *(v2 + 72);
    v5 = 0;
    if (v70)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v71 = 3;
      }

      else
      {
        v71 = 2;
      }

      v72 = *(v2 + 56);
      if (!v72)
      {
        v72 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v72;
      v179 = 1024;
      LODWORD(v180) = 212;
      v73 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &_mh_execute_header, v70, 16, "%{public}s: invalid Info.plist %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
    }

    else
    {
      v82 = *(v2 + 56);
      if (!v82)
      {
        v82 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v82;
      v179 = 1024;
      LODWORD(v180) = 212;
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: invalid Info.plist %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
    }

    v18 = v73;
    v19 = "com.apple.security.cryptex.posix";
    v20 = 669;
    v21 = 212;
    v22 = 0;
    goto LABEL_34;
  }

  v51 = v58;
  v5 = 0;
  if (xpc_get_type(v58) != &_xpc_type_dictionary)
  {
    v59 = xpc_copy_description(v51);
    v60 = v59;
    v61 = *(v2 + 72);
    v157 = v51;
    if (v61)
    {
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
      v63 = *(v2 + 56);
      if (v62)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      buf = 136446722;
      if (v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = "[anonymous]";
      }

      v178 = v65;
      v179 = 2080;
      v180 = v60;
      v181 = 1024;
      LODWORD(v182) = 212;
      v66 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &_mh_execute_header, v61, 16, "%{public}s: Info.plist invalid root type: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &buf, 28);
    }

    else
    {
      v78 = "[anonymous]";
      if (*(v2 + 56))
      {
        v78 = *(v2 + 56);
      }

      buf = 136446722;
      v178 = v78;
      v179 = 2080;
      v180 = v59;
      v181 = 1024;
      LODWORD(v182) = 212;
      v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Info.plist invalid root type: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), &buf, 28);
    }

    v79 = v66;
    v80 = 679;
    v81 = 212;
    goto LABEL_158;
  }

  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_DEBUG))
  {
    v155 = xpc_copy_description(v51);
    v74 = *(v2 + 56);
    v75 = *__error();
    v76 = *(v2 + 72);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v77 = "[anonymous]";
      if (v74)
      {
        v77 = v74;
      }

      buf = 136446466;
      v178 = v77;
      v179 = 2080;
      v180 = v155;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%{public}s: importing Info.plist: %s", &buf, 0x16u);
    }

    *__error() = v75;
    v47 = v51;
    v5 = 0;
LABEL_76:
    free(v155);
    goto LABEL_77;
  }

  v47 = v51;
LABEL_77:
  v157 = v51;
  if (!context)
  {
    v52 = daemon_copy();
    v53 = v52;
    v54 = v52[37];
    if (!v54)
    {
      goto LABEL_131;
    }

    v154 = v47;
    v156 = v52;
    v55 = v52 + 37;
    while (1)
    {
      v56 = *v54;
      v57 = v3[20];
      *&keys = 0;
      cryptex_core_parse_info_asset();
      if (!memcmp((v57 + 112), v54 + 3335, 0x30uLL) && _streq_optional(keys, v54 + 8))
      {
        break;
      }

      free(keys);
      v54 = v56;
      if (!v56)
      {
        v53 = v156;
        goto LABEL_130;
      }
    }

    v83 = *(v2 + 56);
    v152 = *__error();
    loga = *(v2 + 72);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
    {
      v84 = "[anonymous]";
      buf = 136446722;
      if (v83)
      {
        v84 = v83;
      }

      v178 = v84;
      v179 = 2080;
      v180 = v54 + 8;
      v181 = 2080;
      v182 = v54 + 3383;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "%{public}s: found forerunner; will carry on the legacy: name = %s, hash = %s", &buf, 0x20u);
    }

    *__error() = v152;
    v85 = *v55;
    if (*v55 == v54)
    {
      v53 = v156;
    }

    else
    {
      v53 = v156;
      do
      {
        v55 = v85;
        v85 = *v85;
      }

      while (v85 != v54);
    }

    *v55 = *v85;
    *v54 = -1;
    free(keys);
LABEL_130:
    v47 = v154;
    if (v53)
    {
LABEL_131:
      os_release(v53);
    }

    v162 = v54;
    v5 = 0;
  }

  v86 = v3[27];
  if (v86)
  {
    LOBYTE(v86) = *(v86 + 64);
  }

  attr = quire_make_attr(v47, &v162, &v163, v86 & 1);
  if (attr)
  {
    v88 = attr;
    v89 = xpc_copy_description(v47);
    v60 = v89;
    v90 = v88;
    v91 = *(v2 + 72);
    if (v91)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v92 = 3;
      }

      else
      {
        v92 = 2;
      }

      v93 = *(v2 + 56);
      buf = 136446722;
      if (!v93)
      {
        v93 = "[anonymous]";
      }

      v178 = v93;
      v179 = 2080;
      v180 = v60;
      v181 = 1024;
      LODWORD(v182) = v88;
      v94 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &_mh_execute_header, v91, 16, "%{public}s: Info.plist invalid contents: %s %{darwin.errno}d", &buf, 28);
    }

    else
    {
      v100 = *(v2 + 56);
      if (!v100)
      {
        v100 = "[anonymous]";
      }

      buf = 136446722;
      v178 = v100;
      v179 = 2080;
      v180 = v89;
      v181 = 1024;
      LODWORD(v182) = v88;
      v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Info.plist invalid contents: %s %{darwin.errno}d", &buf, 28);
    }

    v79 = v94;
    v80 = 713;
LABEL_157:
    v81 = v90;
LABEL_158:
    Error = createError("_codex_import_core_continue", "codex.c", v80, "com.apple.security.cryptex.posix", v81, 0, v79);
    free(v79);
LABEL_159:
    v101 = v60;
LABEL_160:
    free(v101);
    v33 = 0;
LABEL_175:
    v34 = 0;
    goto LABEL_35;
  }

  v95 = codex_copy_quire(v2, v163, 0);
  if (v95)
  {
    v33 = v95;
    if (context)
    {
      context[5] = os_retain(v95);
    }

    v96 = *(v2 + 72);
    if (v96)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v98 = *(v2 + 56);
      if (!v98)
      {
        v98 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v98;
      v179 = 2080;
      v180 = v163;
      v99 = _os_log_send_and_compose_impl(v97, 0, 0, 0, &_mh_execute_header, v96, 16, "%{public}s: cryptex already exists: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    else
    {
      v109 = *(v2 + 56);
      if (!v109)
      {
        v109 = "[anonymous]";
      }

      buf = 136446466;
      v178 = v109;
      v179 = 2080;
      v180 = v163;
      v99 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: cryptex already exists: %s", COERCE_DOUBLE(136446466), &buf, 22);
    }

    v110 = v99;
    Error = createError("_codex_import_core_continue", "codex.c", 725, "com.apple.security.cryptex", 17, 0, v99);
    free(v110);
    goto LABEL_175;
  }

  if (xpc_dictionary_get_array(xdict[1], "Dependencies"))
  {
    if (!context)
    {
      v125 = *(v2 + 72);
      if (v125)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v126 = 3;
        }

        else
        {
          v126 = 2;
        }

        v127 = *(v2 + 56);
        if (!v127)
        {
          v127 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v127;
        v179 = 1024;
        LODWORD(v180) = 45;
        v128 = _os_log_send_and_compose_impl(v126, 0, 0, 0, &_mh_execute_header, v125, 16, "%{public}s: unable to install cryptex with dependencies without UID from codex_install_state %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
      }

      else
      {
        v130 = *(v2 + 56);
        if (!v130)
        {
          v130 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v130;
        v179 = 1024;
        LODWORD(v180) = 45;
        v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: unable to install cryptex with dependencies without UID from codex_install_state %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
      }

      v60 = v128;
      v131 = "com.apple.security.cryptex.posix";
      v132 = 737;
      v133 = 45;
      goto LABEL_209;
    }

    v102 = quire_attr_populate_dependencies(&v163, *(context + 18));
    if (v102)
    {
      v103 = v102;
      v104 = xpc_copy_description(v47);
      v60 = v104;
      v90 = v103;
      v105 = *(v2 + 72);
      if (v105)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        v107 = *(v2 + 56);
        buf = 136446722;
        if (!v107)
        {
          v107 = "[anonymous]";
        }

        v178 = v107;
        v179 = 2080;
        v180 = v60;
        v181 = 1024;
        LODWORD(v182) = v103;
        v108 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &_mh_execute_header, v105, 16, "%{public}s: Failed to satisfy dependencies from Info.plist: %s %{darwin.errno}d", &buf, 28);
      }

      else
      {
        v129 = *(v2 + 56);
        if (!v129)
        {
          v129 = "[anonymous]";
        }

        buf = 136446722;
        v178 = v129;
        v179 = 2080;
        v180 = v104;
        v181 = 1024;
        LODWORD(v182) = v103;
        v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to satisfy dependencies from Info.plist: %s %{darwin.errno}d", &buf, 28);
      }

      v79 = v108;
      v80 = 749;
      goto LABEL_157;
    }
  }

  if (xpc_dictionary_get_array(xdict[1], "LimitInstallToApps"))
  {
    v111 = quire_attr_enforce_install_limits(&v163);
    if (v111)
    {
      v35 = v111;
      v112 = xpc_copy_description(v47);
      v113 = v112;
      v114 = *(v2 + 72);
      if (v114)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v115 = 3;
        }

        else
        {
          v115 = 2;
        }

        v116 = *(v2 + 56);
        buf = 136446722;
        if (!v116)
        {
          v116 = "[anonymous]";
        }

        v178 = v116;
        v179 = 2082;
        v180 = v163;
        v181 = 2080;
        v182 = v113;
        v117 = _os_log_send_and_compose_impl(v115, 0, 0, 0, &_mh_execute_header, v114, 16, "%{public}s: Installing cryptex %{public}s is disallowed because it violates install limits in secure config.plist: %s", &buf, 32);
      }

      else
      {
        v134 = *(v2 + 56);
        if (!v134)
        {
          v134 = "[anonymous]";
        }

        buf = 136446722;
        v178 = v134;
        v179 = 2082;
        v180 = v163;
        v181 = 2080;
        v182 = v112;
        v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Installing cryptex %{public}s is disallowed because it violates install limits in secure config.plist: %s", &buf, 32);
      }

      v135 = v117;
      Error = createError("_codex_import_core_continue", "codex.c", 764, "com.apple.security.cryptex", 15, 0, v117);
      free(v135);
      free(v113);
      v33 = 0;
      v34 = 0;
      goto LABEL_36;
    }
  }

  if (v172 == 1)
  {
    v118 = developer_mode_get(&v161);
    if (v118)
    {
      v119 = v118;
      v120 = v118;
      v121 = *(v2 + 72);
      if (v121)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        v123 = *(v2 + 56);
        if (!v123)
        {
          v123 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v123;
        v179 = 1024;
        LODWORD(v180) = v119;
        v124 = _os_log_send_and_compose_impl(v122, 0, 0, 0, &_mh_execute_header, v121, 16, "%{public}s: Failed to read developer mode status %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
      }

      else
      {
        v137 = *(v2 + 56);
        if (!v137)
        {
          v137 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v137;
        v179 = 1024;
        LODWORD(v180) = v118;
        v124 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to read developer mode status %{darwin.errno}d", COERCE_DOUBLE(136446466), &buf, 18);
      }

      v138 = v124;
      Error = createError("_codex_import_core_continue", "codex.c", 774, "com.apple.security.cryptex.posix", v120, 0, v124);
      v101 = v138;
      goto LABEL_160;
    }

    if (!v161)
    {
      v139 = *(v2 + 72);
      if (v139)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        v141 = *(v2 + 56);
        if (!v141)
        {
          v141 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v141;
        v179 = 2082;
        v180 = v163;
        v142 = _os_log_send_and_compose_impl(v140, 0, 0, 0, &_mh_execute_header, v139, 16, "%{public}s: Installing cryptex %{public}s is disallowed because developer mode is not enabled.", COERCE_DOUBLE(136446466), &buf, 22);
      }

      else
      {
        v147 = *(v2 + 56);
        if (!v147)
        {
          v147 = "[anonymous]";
        }

        buf = 136446466;
        v178 = v147;
        v179 = 2082;
        v180 = v163;
        v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Installing cryptex %{public}s is disallowed because developer mode is not enabled.", COERCE_DOUBLE(136446466), &buf, 22);
      }

      v60 = v142;
      v131 = "com.apple.security.cryptex";
      v132 = 780;
      v133 = 20;
      goto LABEL_209;
    }
  }

  v136 = xpc_dictionary_get_BOOL(xdict[1], "NoCode");
  if (cryptex_core_is_cryptex1() && (v3[5] & 1) == 0 && ((v136 ^ ((v3[5] & 4) == 0)) & 1) == 0)
  {
    v143 = *(v2 + 72);
    if (v143)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      v145 = *(v2 + 56);
      if (!v145)
      {
        v145 = "[anonymous]";
      }

      buf = 136446210;
      v178 = v145;
      v146 = _os_log_send_and_compose_impl(v144, 0, 0, 0, &_mh_execute_header, v143, 16, "%{public}s: Cryptex info plist 'NoCode' setting mismatches the 'data' entitlement in the personalization ticket.", COERCE_DOUBLE(136446210), &buf, 12);
    }

    else
    {
      v148 = *(v2 + 56);
      if (!v148)
      {
        v148 = "[anonymous]";
      }

      buf = 136446210;
      v178 = v148;
      v146 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex info plist 'NoCode' setting mismatches the 'data' entitlement in the personalization ticket.", COERCE_DOUBLE(136446210), &buf, 12);
    }

    v60 = v146;
    v131 = "com.apple.security.cryptex";
    v132 = 802;
    v133 = 11;
LABEL_209:
    Error = createError("_codex_import_core_continue", "codex.c", v132, v131, v133, 0, v60);
    goto LABEL_159;
  }

  if (v136 || (v3[5] & 4) != 0)
  {
    quire_attr_disallow_code(&v163);
  }

  v34 = quire_create(v2, v3, &v163, 4);
  cryptex_set_target_object();
  cryptex_activate();
  _codex_insert_installed(v2, v34);
  if (!context)
  {
    v33 = 0;
    Error = 0;
    goto LABEL_35;
  }

  v33 = 0;
  Error = 0;
  v35 = 0;
  context[5] = os_retain(v34);
LABEL_36:
  buff_destroy(v173, v32);
  quire_destroy_attr(&v163);
  v36 = a1[2].n128_u64[1];
  v38 = a1[8].n128_u64[1];
  v37 = a1[9].n128_u64[0];
  if (v37)
  {
    v37(v2, a1[2].n128_u64[1], v34, Error);
  }

  _codex_deactivate(v2, v38);
  ctx_destroy(a1);
  if (v36)
  {
    os_release(v36);
  }

  if (context)
  {
    if (Error)
    {
      context[2] = CFRetain(Error);
      cryptex_target_async_f();
    }

    else
    {
      dispatch_async_f(*(v2 + 96), context, _codex_install_continue4);
    }
  }

  free(v162);
  if (v33)
  {
    os_release(v33);
  }

  if (v34)
  {
    os_release(v34);
  }

  if (v157)
  {
    os_release(v157);
  }

  if (Error)
  {
    CFRelease(Error);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t _codex_insert_installed(uint64_t a1, void *a2)
{
  if (a2[26])
  {
    v4 = a2[26];
  }

  else
  {
    v4 = "unknown quire";
  }

  v5 = *(a1 + 56);
  v6 = *__error();
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    v9 = a2[26];
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: added cryptex: %s", buf, 0x16u);
  }

  *__error() = v6;
  hash_insert(a1 + 144, (a2 + 10));
  os_retain(a2);
  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x8709206FuLL);
  if (!v10)
  {
    _codex_insert_installed_cold_2(v15, buf);
  }

  v11 = v10;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v12 = strdup(v4);
      if (v12)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v12 = strdup(v4);
    if (!v12)
    {
      _codex_insert_installed_cold_1(v4, v15, buf);
    }
  }

  v13 = v12;
  *(v11 + 32) = v12;
  *(v11 + 40) = os_transaction_create();
  hash_node_init_cstr(v11, v13);
  return hash_insert(a1 + 1056, v11);
}

uint64_t _codex_install_continue4(void *a1)
{
  v2 = *a1;
  v3 = a1[5];
  v4 = *(a1[4] + 112);
  v5 = *(v3 + 208);
  dispatch_assert_queue_V2(*(*a1 + 96));
  v6 = *(v2 + 56);
  v7 = *__error();
  v8 = *(v2 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    *buf = 136446722;
    if (v6)
    {
      v9 = v6;
    }

    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    *&buf[22] = 2080;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: renaming: src = %s, dst = %s", buf, 0x20u);
  }

  *__error() = v7;
  v10 = 1420;
  if (*(*(v3 + 200) + 48) > 1uLL)
  {
    v10 = 1404;
  }

  if (renameat(*(v2 + 1400), v4, *(v2 + v10), v5))
  {
    v11 = *__error();
    v12 = v11;
    v13 = *(v2 + 72);
    if (v13)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = *(v2 + 56);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v15;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v13, 16, "%{public}s: renameat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    else
    {
      v23 = *(v2 + 56);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v23;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: renameat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    v24 = v16;
    v25 = 1152;
LABEL_32:
    Error = createError("_codex_install_continue4", "codex.c", v25, "com.apple.security.cryptex.posix", v12, 0, v24);
    free(v24);
    goto LABEL_33;
  }

  v17 = _codex_broadcast_event(v3, 2);
  if (v17)
  {
    v18 = v17;
    v12 = v17;
    v19 = *(v2 + 72);
    if (v19)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v21 = *(v2 + 56);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v21;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}s: broadcast install event %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    else
    {
      v27 = *(v2 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446466;
      *&buf[4] = v27;
      *&buf[12] = 1024;
      *&buf[14] = v17;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: broadcast install event %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18, *buf, *&buf[8]);
    }

    v24 = v22;
    v25 = 1159;
    goto LABEL_32;
  }

  Error = 0;
LABEL_33:
  a1[2] = Error;
  return cryptex_async_f();
}

void _codex_deactivate(uint64_t a1, void *a2)
{
  daemon_assert_main_queue();
  --*(a1 + 1368);
  v4 = os_transaction_copy_description();
  v5 = *(a1 + 56);
  v6 = *__error();
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    v9 = *(a1 + 1368);
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446978;
    v29 = v8;
    v30 = 2080;
    v31 = v4;
    v32 = 1024;
    v33 = v9 + 1;
    v34 = 1024;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: de-activation: %s: %u -> %u", buf, 0x22u);
  }

  *__error() = v6;
  os_release(a2);
  v10 = *(a1 + 1368);
  v27 = v4;
  if (v10)
  {
    if (v10 == -1)
    {
      _codex_activate_cold_1();
    }

    goto LABEL_26;
  }

  v11 = *(a1 + 56);
  v12 = *__error();
  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = "[anonymous]";
    if (v11)
    {
      v14 = v11;
    }

    *buf = 136446210;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: quiesced", buf, 0xCu);
  }

  *__error() = v12;
  v15 = *(a1 + 1376);
  if (v15)
  {
    v16 = (a1 + 1376);
    do
    {
      v17 = *(v15 + 48);
      v18 = *(a1 + 56);
      v19 = *__error();
      v20 = *(a1 + 72);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = "[anonymous]";
        if (v18)
        {
          v21 = v18;
        }

        *buf = 136446210;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s: dispatching barrier", buf, 0xCu);
      }

      *__error() = v19;
      (*(v15 + 56))(a1, v17);
      v22 = *(a1 + 1376);
      if (v22 == v15)
      {
        v26 = *(v22 + 32);
        *v16 = v26;
        v25 = a1 + 1376;
        if (v26)
        {
          goto LABEL_22;
        }
      }

      else
      {
        do
        {
          v23 = v22;
          v22 = *(v22 + 32);
        }

        while (v22 != v15);
        v24 = *(v22 + 32);
        *(v23 + 32) = v24;
        v25 = v23 + 32;
        if (v24)
        {
          goto LABEL_22;
        }
      }

      *(a1 + 1384) = v25;
LABEL_22:
      *(v15 + 32) = -1;
      ctx_destroy(v15);
      v15 = *v16;
    }

    while (*v16);
  }

LABEL_26:
  free(v27);
}

uint64_t _codex_broadcast_event(uint64_t a1, uint64_t a2)
{
  v4 = event_server_copy_system(a1);
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  v6 = MutableForCFTypes;
  v7 = *(a1 + 224);
  if (v7)
  {
    _CFDictionarySetString(MutableForCFTypes, @"Version", *v7);
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    _CFDictionarySetString(v6, @"Identifier", v8);
  }

  else
  {
    v8 = "name-unknown";
  }

  v9 = event_server_broadcast(v4, a2, v8, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    os_release(v4);
  }

  return v9;
}

uint64_t _codex_install_continue5(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[5];
  v3 = a1[2];
  daemon_assert_main_queue();
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *__error();
    v6 = *(v1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      v9 = 136446466;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: installation failed; cleaning up quire: %@", &v9, 0x16u);
    }

    *__error() = v5;
    _codex_remove_installed(v1, v2);
  }

  return cryptex_target_async_f();
}

void _codex_remove_installed(uint64_t a1, void *a2)
{
  v4 = a2[26];
  if (v4)
  {
    v5 = hash_lookup_cstr(a1 + 1056, v4);
    if (v5)
    {
      v6 = v5;
      hash_remove(a1 + 1056, v5);
      free(v6[4]);
      v6[4] = 0;
      os_release(v6[5]);
      free(v6);
    }
  }

  v7 = *(a1 + 56);
  v8 = *__error();
  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    v11 = a2[26];
    if (v7)
    {
      v10 = v7;
    }

    v12 = 136446466;
    v13 = v10;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: removed cryptex: %s", &v12, 0x16u);
  }

  *__error() = v8;
  hash_remove(a1 + 144, (a2 + 10));
  os_release(a2);
}

void _codex_import_initial_continue2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  daemon_assert_main_queue();
  if (*(a1 + 56))
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = "[anonymous]";
  }

  v7 = *__error();
  v8 = *(a1 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 208);
      v15 = 136446722;
      v16 = v6;
      v17 = 2080;
      v18 = v9;
      v19 = 2112;
      v20 = a3;
      v10 = "%{public}s: initial cryptex bootstrap: %s: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a2 + 208);
    v15 = 136446466;
    v16 = v6;
    v17 = 2080;
    v18 = v14;
    v10 = "%{public}s: initial cryptex bootstrap: %s [no error]";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 22;
    goto LABEL_9;
  }

  *__error() = v7;
  dispatch_group_leave(*(a1 + 104));
}

void _codex_cleanup_stale_continue(uint64_t *a1)
{
  v1 = *a1;
  bzero(v30, 0x400uLL);
  if (!cryptex_core_get_asset())
  {
    _codex_cleanup_stale_continue_cold_1();
  }

  v2 = realpath_np();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 56);
    v5 = *__error();
    v6 = *(v1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = "[anonymous]";
      }

      v24 = 136446466;
      v25 = v7;
      v26 = 1024;
      LODWORD(v27) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: realpath: %{darwin.errno}d", &v24, 0x12u);
    }

    *__error() = v5;
    v8 = "[anonymous]";
    goto LABEL_9;
  }

  v8 = basename(v30);
  if (_rmrfdir(v30))
  {
    v3 = *__error();
    v17 = *(v1 + 56);
    v18 = *__error();
    v19 = *(v1 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = "[anonymous]";
      }

      v24 = 136446466;
      v25 = v20;
      v26 = 1024;
      LODWORD(v27) = v3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: rmrfdir: %{darwin.errno}d", &v24, 0x12u);
    }

    *__error() = v18;
    if (v3)
    {
LABEL_9:
      v9 = *(v1 + 56);
      v10 = *__error();
      v11 = *(v1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if (v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = "[anonymous]";
        }

        v24 = 136446722;
        v25 = v12;
        v26 = 2080;
        v27 = v8;
        v28 = 1024;
        v29 = v3;
        v13 = "%{public}s: uninstall stale cryptex: %s: %{darwin.errno}d";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 28;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, &v24, v16);
        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  v21 = *(v1 + 56);
  v10 = *__error();
  v22 = *(v1 + 72);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = "[anonymous]";
    }

    v24 = 136446466;
    v25 = v23;
    v26 = 2080;
    v27 = v8;
    v13 = "%{public}s: uninstall stale cryptex: %s: success";
    v14 = v22;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 22;
    goto LABEL_26;
  }

LABEL_27:
  *__error() = v10;
  dispatch_group_leave(*(v1 + 104));
}

void _codex_install_continue2(void *a1)
{
  v2 = *a1;
  dispatch_assert_queue_V2(*(*a1 + 96));
  if (cryptex_core_get_asset())
  {
    v3 = *(v2 + 56);
    v4 = *__error();
    v5 = *(v2 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = "[anonymous]";
      if (v3)
      {
        v6 = v3;
      }

      *buf = 136446210;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s: pre-canned manifest", buf, 0xCu);
    }

    *__error() = v4;
    a1[2] = 0;
    goto LABEL_7;
  }

  v7 = *(v2 + 56);
  v8 = *__error();
  v9 = *(v2 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    *buf = 136446210;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: writing im4m to disk", buf, 0xCu);
  }

  *__error() = v8;
  asset = cryptex_core_get_asset();
  v12 = openat(*(asset + 16), *(&_cryptex_asset_type_im4m + 5), 513, 438);
  if (v12 < 0)
  {
    v24 = *__error();
    v25 = *(v2 + 72);
    if (v25)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = *(v2 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v27;
      v40 = 1024;
      v41 = v24;
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v25, 16, "%{public}s: openat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v32 = *(v2 + 56);
      if (!v32)
      {
        v32 = "[anonymous]";
      }

      *buf = 136446466;
      v39 = v32;
      v40 = 1024;
      v41 = v24;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: openat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v33 = v28;
    Error = createError("_codex_install_continue2", "codex.c", 1208, "com.apple.security.cryptex.posix", v24, 0, v28);
    free(v33);
LABEL_44:
    if (v12 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_DEBUG))
  {
    bzero(buf, 0x400uLL);
    if (!realpath_np())
    {
      v13 = *(v2 + 56);
      v14 = *__error();
      v15 = *(v2 + 72);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = "[anonymous]";
        if (v13)
        {
          v16 = v13;
        }

        *v34 = 136446466;
        v35 = v16;
        v36 = 2080;
        v37 = buf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: im4m path: %s", v34, 0x16u);
      }

      *__error() = v14;
    }
  }

  v17 = cryptex_signature_write();
  v18 = v17;
  if (!v17)
  {
    cryptex_asset_new();
    cryptex_core_set_asset();
    Error = 0;
    goto LABEL_44;
  }

  v19 = v17;
  v20 = *(v2 + 72);
  if (v20)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v22 = *(v2 + 56);
    if (!v22)
    {
      v22 = "[anonymous]";
    }

    *buf = 136446466;
    v39 = v22;
    v40 = 1024;
    v41 = v18;
    v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 16, "%{public}s: write im4m failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
  }

  else
  {
    v30 = *(v2 + 56);
    if (!v30)
    {
      v30 = "[anonymous]";
    }

    *buf = 136446466;
    v39 = v30;
    v40 = 1024;
    v41 = v17;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: write im4m failed %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
  }

  v31 = v23;
  Error = createError("_codex_install_continue2", "codex.c", 1226, "com.apple.security.cryptex.posix", v19, 0, v23);
  free(v31);
LABEL_45:
  if (close(v12) == -1)
  {
    daemon_init_cold_13(v34, buf);
  }

LABEL_46:
  a1[2] = Error;
  if (!Error)
  {
LABEL_7:
    cryptex_async_f();
    return;
  }

  cryptex_target_async_f();
}

void _codex_install_continue3(void **a1)
{
  v2 = *a1;
  v3 = a1[4];
  daemon_assert_main_queue();
  v4 = *(v3 + 104);
  v5 = ctx_new(v2, 0xA0uLL);
  v5[19] = a1;

  _codex_import_core_impl(v2, v4, v5);
}

void _protex_stage_install_callback(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  if (a3)
  {
    v8 = a3;
    v9 = *(v6 + 72);
    if (v9)
    {
      if (os_log_type_enabled(*(v6 + 72), OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(v6 + 56);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *v17 = 136446466;
      *&v17[4] = v11;
      *&v17[12] = 1024;
      *&v17[14] = a3;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "%{public}s: staging failed %{darwin.errno}d", COERCE_DOUBLE(136446466), v17, 18, *v17, *&v17[8]);
    }

    else
    {
      v13 = *(v6 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *v17 = 136446466;
      *&v17[4] = v13;
      *&v17[12] = 1024;
      *&v17[14] = a3;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: staging failed %{darwin.errno}d", COERCE_DOUBLE(136446466), v17, 18, *v17, *&v17[8]);
    }

    v14 = v12;
    Error = createError("_protex_stage_install_callback", "codex.c", 2936, "com.apple.security.cryptex.posix", v8, 0, v12);
    free(v14);
    a4[2] = Error;
  }

  else if (!v6)
  {
    return;
  }

  v16 = a4[6];
  if (v16)
  {
    codex_install(v6, a1, 0, *(a4 + 14), a4, v16);
  }
}

void _codex_mount_continue2(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (a3)
  {
    v7 = a3;
    v8 = *(v5 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v5 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *v16 = 136446466;
      *&v16[4] = v10;
      *&v16[12] = 1024;
      *&v16[14] = a3;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Failed to stage protex %{darwin.errno}d", COERCE_DOUBLE(136446466), v16, 18, *v16, *&v16[8]);
    }

    else
    {
      v13 = *(v5 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      *v16 = 136446466;
      *&v16[4] = v13;
      *&v16[12] = 1024;
      *&v16[14] = a3;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to stage protex %{darwin.errno}d", COERCE_DOUBLE(136446466), v16, 18, *v16, *&v16[8]);
    }

    v14 = v11;
    Error = createError("_codex_mount_continue2", "codex.c", 3096, "com.apple.security.cryptex.posix", v7, 0, v11);
    free(v14);
    if (Error)
    {
      a4[2] = Error;
      cryptex_target_async_f();
    }
  }

  else
  {
    v12 = *(*(a1 + 104) + 216);
    if (v12)
    {
      *(v12 + 64) = 1;
    }

    cryptex_async_f();
  }
}

void _codex_mount_callback(void **a1)
{
  v2 = a1[2];
  v3 = a1[6];
  (a1[8])(*a1, a1[6], a1[2], a1[7]);
  os_release(a1[4]);
  os_release(a1[5]);
  ctx_destroy(a1);
  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void _codex_mount_continue3(uint64_t *a1)
{
  v2 = *a1;
  if ((*(cryptex_core_get_asset() + 16) & 0x80000000) != 0)
  {
    v4 = *__error();
    v5 = *(v2 + 72);
    if (v5)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      if (*(v2 + 56))
      {
        v7 = *(v2 + 56);
      }

      else
      {
        v7 = "[anonymous]";
      }

      v8 = *__error();
      *v14 = 136446466;
      *&v14[4] = v7;
      *&v14[12] = 1024;
      *&v14[14] = v8;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "%{public}s: Failed to open cryptex directory %{darwin.errno}d", v14, 18, *v14, *&v14[8]);
    }

    else
    {
      if (*(v2 + 56))
      {
        v10 = *(v2 + 56);
      }

      else
      {
        v10 = "[anonymous]";
      }

      v11 = *__error();
      *v14 = 136446466;
      *&v14[4] = v10;
      *&v14[12] = 1024;
      *&v14[14] = v11;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to open cryptex directory %{darwin.errno}d", v14, 18, *v14, *&v14[8]);
    }

    v12 = v9;
    Error = createError("_codex_mount_continue3", "codex.c", 3073, "com.apple.security.cryptex.posix", v4, 0, v9);
    free(v12);
    if (Error)
    {
      a1[2] = Error;
      cryptex_target_async_f();
    }
  }

  else
  {
    v3 = a1[5];

    codex_install(v2, v3, 0, 0, a1, _codex_mount_continue4);
  }
}

void _codex_mount_continue4(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  if (a3 && (_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 17) & 1) == 0)
  {
    v12 = *(a1 + 72);
    if (v12)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = *(a1 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *v30 = 136446210;
      *&v30[4] = v14;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: Failed to install cryptex for mounting.", COERCE_DOUBLE(136446210), v30, 12, *v30, *&v30[8]);
    }

    else
    {
      v20 = *(a1 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *v30 = 136446210;
      *&v30[4] = v20;
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to install cryptex for mounting.", COERCE_DOUBLE(136446210), v30, 12, *v30, *&v30[8]);
    }

    v21 = v15;
    v22 = "com.apple.security.cryptex";
    v23 = 3034;
    v24 = 14;
    v25 = a3;
LABEL_37:
    Error = createError("_codex_mount_continue4", "codex.c", v23, v22, v24, v25, v21);
    free(v21);
    if (!Error)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    v16 = *(a1 + 72);
    if (v16)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = *(a1 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *v30 = 136446466;
      *&v30[4] = v18;
      *&v30[12] = 1024;
      *&v30[14] = 2;
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: Invalid quire to mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v30, 18, *v30, *&v30[8]);
    }

    else
    {
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *v30 = 136446466;
      *&v30[4] = v26;
      *&v30[12] = 1024;
      *&v30[14] = 2;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Invalid quire to mount. %{darwin.errno}d", COERCE_DOUBLE(136446466), v30, 18, *v30, *&v30[8]);
    }

    v21 = v19;
    v22 = "com.apple.security.cryptex.posix";
    v23 = 3040;
    v24 = 2;
    v25 = 0;
    goto LABEL_37;
  }

  if (_CFErrorHasDomainAndCode(a3, @"com.apple.security.cryptex", 17))
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      *v30 = 136446210;
      *&v30[4] = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Cryptex already mounted", COERCE_DOUBLE(136446210), v30, 12, *v30, *&v30[8]);
    }

    else
    {
      v28 = *(a1 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }

      *v30 = 136446210;
      *&v30[4] = v28;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex already mounted", COERCE_DOUBLE(136446210), v30, 12, *v30, *&v30[8]);
    }

    v29 = v11;
    Error = createError("_codex_mount_continue4", "codex.c", 3047, "com.apple.security.cryptex", 1, 0, v11);
    free(v29);
    *(a4 + 48) = os_retain(a2);
    if (!Error)
    {
      return;
    }

LABEL_38:
    *(a4 + 16) = Error;
    cryptex_target_async_f();
    return;
  }

  codex_bootstrap(a1, a2, a4, _codex_mount_continue5);
}

void _codex_mount_continue5(uint64_t a1, void *object, const void *a3, uint64_t a4)
{
  *(a4 + 48) = os_retain(object);
  if (!a3)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR) ? 3 : 2;
    v9 = *(a1 + 56);
    if (!v9)
    {
      v9 = "[anonymous]";
    }

    LODWORD(v14) = 136446210;
    *(&v14 + 4) = v9;
    v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: Failed to bootstrap quire.", COERCE_DOUBLE(136446210), &v14, 12, v14);
  }

  else
  {
    v11 = *(a1 + 56);
    if (!v11)
    {
      v11 = "[anonymous]";
    }

    LODWORD(v14) = 136446210;
    *(&v14 + 4) = v11;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap quire.", COERCE_DOUBLE(136446210), &v14, 12, v14);
  }

  v12 = v10;
  Error = createError("_codex_mount_continue5", "codex.c", 3015, "com.apple.security.cryptex", 14, a3, v10);
  free(v12);
  if (Error)
  {
    *(a4 + 16) = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
  }

  else
  {
LABEL_14:
    *(a4 + 16) = 0;
    cryptex_target_async_f();
  }
}

void _codex_unmount_continue2(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  daemon_assert_main_queue();
  if (a3)
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(v15) = 136446210;
      *(&v15 + 4) = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Failed to unmount quire", COERCE_DOUBLE(136446210), &v15, 12, v15);
    }

    else
    {
      v12 = *(a1 + 56);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      LODWORD(v15) = 136446210;
      *(&v15 + 4) = v12;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to unmount quire", COERCE_DOUBLE(136446210), &v15, 12, v15);
    }

    v13 = v11;
    Error = createError("_codex_unmount_continue2", "codex.c", 3204, "com.apple.security.cryptex", 2, a3, v11);
    free(v13);
    if (Error)
    {
      *(a4 + 16) = CFRetain(Error);
      cryptex_target_async_f();
      CFRelease(Error);
    }
  }

  else
  {

    codex_uninstall(a1, a2, a4, _codex_unmount_continue3);
  }
}

void _codex_unmount_callback(void **a1)
{
  v2 = a1[2];
  v3 = a1[24];
  (a1[26])(*a1, a1[24], a1[2], a1[25]);
  quire_destroy_attr((a1 + 4));
  ctx_destroy(a1);
  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _codex_unmount_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(a1 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      LODWORD(v15) = 136446210;
      *(&v15 + 4) = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: Failed to uninstall quire.", COERCE_DOUBLE(136446210), &v15, 12, v15);
    }

    else
    {
      v11 = *(a1 + 56);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      LODWORD(v15) = 136446210;
      *(&v15 + 4) = v11;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to uninstall quire.", COERCE_DOUBLE(136446210), &v15, 12, v15);
    }

    v12 = v10;
    Error = createError("_codex_unmount_continue3", "codex.c", 3179, "com.apple.security.cryptex", 2, a3, v10);
    free(v12);
    if (Error)
    {
      *(a4 + 16) = Error;
    }
  }

  return cryptex_target_async_f();
}

void _codex_uninstall_callback(void *a1)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v4 = *(a1 + 2);
  v5 = *(a1 + 7);
  daemon_assert_main_queue();
  (*(a1 + 8))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 6));
  *(a1 + 6) = 0;
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    os_release(v3);
  }
}

uint64_t _codex_uninstall_continue2(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  daemon_assert_main_queue();
  _codex_remove_installed(v2, v3);
  v4 = _codex_broadcast_event(v3, 4);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    v7 = *(v2 + 72);
    if (v7)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = *(v2 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      *v15 = 136446466;
      *&v15[4] = v9;
      *&v15[12] = 1024;
      *&v15[14] = v5;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "%{public}s: broadcast uninstall event %{darwin.errno}d", COERCE_DOUBLE(136446466), v15, 18, *v15, *&v15[8]);
    }

    else
    {
      v11 = *(v2 + 56);
      if (!v11)
      {
        v11 = "[anonymous]";
      }

      *v15 = 136446466;
      *&v15[4] = v11;
      *&v15[12] = 1024;
      *&v15[14] = v4;
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: broadcast uninstall event %{darwin.errno}d", COERCE_DOUBLE(136446466), v15, 18, *v15, *&v15[8]);
    }

    v12 = v10;
    Error = createError("_codex_uninstall_continue2", "codex.c", 1341, "com.apple.security.cryptex.posix", v6, 0, v10);
    free(v12);
    a1[2] = Error;
  }

  return cryptex_target_async_f();
}

void _codex_bootstrap_continue2(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  HIDWORD(v25) = -1;
  v7 = *a4;
  daemon_assert_main_queue();
  v8 = *(v7 + 56);
  v9 = *__error();
  v10 = *(v7 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    v12 = *(a1 + 208);
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: quire mount: %s [no error]", buf, 0x16u);
  }

  *__error() = v9;
  if (a3)
  {
    Error = CFRetain(a3);
    if (!Error)
    {
      return;
    }

LABEL_26:
    a4[2] = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
    return;
  }

  v14 = *(*(a1 + 200) + 216);
  if (v14)
  {
    if (*(v14 + 64))
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = _opendirat(*(v7 + 1424), *(a1 + 208), 512, 0, &v25 + 1);
  if (!v16)
  {
    quire_bootstrap(a1, *(v7 + 1436), SHIDWORD(v25), v15, a4, _codex_bootstrap_continue3);
    return;
  }

  v17 = v16;
  v18 = v16;
  v19 = *(a1 + 72);
  if (v19)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v21 = *(a1 + 56);
    if (!v21)
    {
      v21 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v21;
    *&buf[12] = 1024;
    *&buf[14] = v17;
    LODWORD(v25) = 18;
    v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}s: _opendirat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v25, *buf, *&buf[8]);
  }

  else
  {
    v23 = *(a1 + 56);
    if (!v23)
    {
      v23 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v23;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    LODWORD(v25) = 18;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _opendirat %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, v25, *buf, *&buf[8]);
  }

  v24 = v22;
  Error = createError("_codex_bootstrap_continue2", "codex.c", 1618, "com.apple.security.cryptex.posix", v18, 0, v22);
  free(v24);
  if (Error)
  {
    goto LABEL_26;
  }
}

void _codex_bootstrap_callback(void *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 2);
  v5 = *(a1 + 7);
  daemon_assert_main_queue();
  (*(a1 + 8))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 6));
  *(a1 + 6) = 0;
  dispatch_group_leave(*(v2 + 112));
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    os_release(v3);
  }
}

uint64_t _codex_bootstrap_continue3(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v7 = *a4;
  daemon_assert_main_queue();
  v8 = *(v7 + 56);
  v9 = *__error();
  v10 = *(v7 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = "[anonymous]";
    }

    v12 = *(a1 + 208);
    v34 = 136446466;
    v35 = v11;
    v36 = 2080;
    *v37 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: quire bootstrap: %s", &v34, 0x16u);
  }

  *__error() = v9;
  if (!a3)
  {
    v13 = *(v7 + 56);
    v14 = *__error();
    v15 = *(v7 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = "[anonymous]";
      }

      v34 = 136446210;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_bootstrap_continue3 bootstrap succeeded", &v34, 0xCu);
    }

    *__error() = v14;
    v17 = *(v7 + 56);
    v18 = *__error();
    v19 = *(v7 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = "[anonymous]";
      }

      v21 = *(a1 + 208);
      v34 = 136446466;
      v35 = v20;
      v36 = 2080;
      *v37 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s: activated cryptex: %s", &v34, 0x16u);
    }

    *__error() = v18;
    v22 = *(v7 + 56);
    v23 = *__error();
    v24 = *(v7 + 72);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = "[anonymous]";
      }

      v26 = *(a1 + 188);
      v27 = *(a1 + 392);
      v34 = 136446722;
      v35 = v25;
      v36 = 1024;
      *v37 = v26;
      *&v37[4] = 1024;
      *&v37[6] = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: UID: %d\tFD: %d", &v34, 0x18u);
    }

    *__error() = v23;
    hash_insert(v7 + 448, a1 + 112);
    os_retain(a1);
  }

  v28 = *(v7 + 56);
  v29 = *__error();
  v30 = *(v7 + 72);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if (v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = "[anonymous]";
    }

    v34 = 136446210;
    v35 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s: _codex_bootstrap_continue3 occured", &v34, 0xCu);
  }

  *__error() = v29;
  if (a3)
  {
    v32 = CFRetain(a3);
  }

  else
  {
    v32 = 0;
  }

  a4[2] = v32;
  return cryptex_target_async_f();
}

void _codex_unbootstrap_callback(void *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 2);
  v5 = *(a1 + 7);
  daemon_assert_main_queue();
  if (hash_lookup_node(v2 + 448, (v3 + 14)))
  {
    v6 = *(v2 + 56);
    v7 = *__error();
    v8 = *(v2 + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = "[anonymous]";
      v10 = v3[26];
      if (v6)
      {
        v9 = v6;
      }

      v11 = 136446466;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: deactivated cryptex: %s", &v11, 0x16u);
    }

    *__error() = v7;
    hash_remove(v2 + 448, (v3 + 14));
    os_release(v3);
  }

  (*(a1 + 8))(v2, v3, v4, v5);
  _codex_deactivate(v2, *(a1 + 6));
  *(a1 + 6) = 0;
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    os_release(v3);
  }
}

void _codex_unbootstrap_continue2(uint64_t a1, uint64_t *a2, const void *a3, void *a4)
{
  v7 = *a4;
  v8 = a4[2];
  v9 = *a2;
  daemon_assert_main_queue();
  if (v7[7])
  {
    v10 = v7[7];
  }

  else
  {
    v10 = "[anonymous]";
  }

  v11 = *__error();
  v12 = v7[9];
  if (a3)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136446466;
    v28 = v10;
    v29 = 2112;
    v30 = a3;
    v13 = "%{public}s: unmount: %@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 136446210;
    v28 = v10;
    v13 = "%{public}s: unmount [no error]";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 12;
  }

  _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
LABEL_10:
  *__error() = v11;
  if (v7[7])
  {
    v17 = v7[7];
  }

  else
  {
    v17 = "[anonymous]";
  }

  v18 = *__error();
  v19 = v7[9];
  if (v8)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v28 = v17;
    v29 = 2112;
    v30 = v8;
    v20 = "%{public}s: forwarded unbootstrap: %@";
    v21 = v19;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v28 = v17;
    v20 = "%{public}s: forwarded unbootstrap [no error]";
    v21 = v19;
    v22 = OS_LOG_TYPE_DEBUG;
    v23 = 12;
  }

  _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
LABEL_19:
  *__error() = v18;
  if (v9)
  {
    v24 = v7[12];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 0x40000000;
    v26[2] = ___codex_unbootstrap_continue2_block_invoke;
    v26[3] = &__block_descriptor_tmp_2;
    v26[4] = v9;
    v26[5] = v7;
    dispatch_async(v24, v26);
    *a2 = 0;
  }

  if (a3)
  {
    v25 = CFRetain(a3);
  }

  else
  {
    v25 = 0;
  }

  a4[2] = v25;
  cryptex_target_async_f();
  if (v8)
  {
    CFRelease(v8);
  }
}

void ___codex_unbootstrap_continue2_block_invoke(uint64_t a1)
{
  **(a1 + 32) = *(*(a1 + 40) + 136);
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 136) = v2;
  v3 = *(a1 + 40);
  bzero(__str, 0x400uLL);
  bzero(v22, 0x400uLL);
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    ___codex_unbootstrap_continue2_block_invoke_cold_1(&v15, buf);
  }

  if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_DEBUG))
  {
    v4 = realpath_np();
    if (v4)
    {
      v5 = v4;
      v6 = strerror(v4);
      snprintf(__str, 0x400uLL, "[%d: %s]", v5, v6);
    }

    if ((*(v2 + 8) & 0x80000000) != 0)
    {
      strcpy(v22, "[none]");
    }

    else
    {
      v7 = realpath_np();
      if (v7)
      {
        v8 = v7;
        v9 = strerror(v7);
        snprintf(v22, 0x400uLL, "[%d: %s]", v8, v9);
      }
    }

    v10 = *(v3 + 56);
    v11 = *__error();
    v12 = *(v3 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "[anonymous]";
      *buf = 136446722;
      if (v10)
      {
        v13 = v10;
      }

      v17 = v13;
      v18 = 2080;
      v19 = __str;
      v20 = 2080;
      v21 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: claimed quire husk: dev = %s, mnt = %s", buf, 0x20u);
    }

    *__error() = v11;
    v3 = *(a1 + 40);
  }

  v14 = *(v3 + 96);
  *__str = _NSConcreteStackBlock;
  v24 = 0x40000000;
  v25 = ___codex_schedule_husk_cleanup_block_invoke;
  v26 = &__block_descriptor_tmp_74;
  v27 = v3;
  dispatch_async(v14, __str);
}

void _codex_schedule_husk_cleanup_onq(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 96));
  v4 = *(a1 + 1360);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 1360));
    *(a1 + 1360) = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___codex_schedule_husk_cleanup_onq_block_invoke;
  block[3] = &__block_descriptor_tmp_75;
  block[4] = a1;
  v14 = a2;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 96));
  v7 = dispatch_time(0, 1000000000 << a2);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v6, v5);
  os_retain(a1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = ___codex_schedule_husk_cleanup_onq_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_76;
  handler[4] = a1;
  dispatch_source_set_cancel_handler(v6, handler);
  dispatch_resume(v6);
  v8 = *(a1 + 56);
  v9 = *__error();
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v16 = v11;
    v17 = 1024;
    v18 = 1 << a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}s: scheduled background husk cleanup in %d seconds", buf, 0x12u);
  }

  *__error() = v9;
  *(a1 + 1360) = v6;
  if (v5)
  {
    os_release(v5);
  }
}

int *___codex_schedule_husk_cleanup_onq_block_invoke(uint64_t a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 96));
  dispatch_source_cancel(*(*(v1 + 32) + 1360));
  dispatch_release(*(*(v1 + 32) + 1360));
  *(*(v1 + 32) + 1360) = 0;
  v2 = *(v1 + 32);
  LODWORD(v1) = *(v1 + 40);
  dispatch_assert_queue_V2(*(v2 + 96));
  v44 = v1 + 1;
  v3 = *(v2 + 56);
  v4 = *__error();
  v5 = *(v2 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446466;
    v46 = v6;
    v47 = 1024;
    v48 = v44;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s: begin background husk cleanup, attempt #%d", buf, 0x12u);
  }

  *__error() = v4;
  v7 = (v2 + 136);
  v8 = *(v2 + 136);
  if (!v8)
  {
    goto LABEL_46;
  }

  do
  {
    while (1)
    {
      v9 = v8;
      v8 = *v8;
      if ((v9[1] & 0x80000000) == 0)
      {
        v10 = _unmountat(v9 + 2, 0);
        v11 = *(v2 + 56);
        v12 = *__error();
        v13 = *(v2 + 72);
        if (v10)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v14 = "[anonymous]";
            if (v11)
            {
              v14 = v11;
            }

            v46 = v14;
            v47 = 1024;
            v48 = v10;
            v15 = v13;
            v16 = "%{public}s: husk cleanup: unmount: %{darwin.errno}d";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
            goto LABEL_24;
          }

          goto LABEL_24;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = "[anonymous]";
          if (v11)
          {
            v17 = v11;
          }

          *buf = 136446210;
          v46 = v17;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: husk cleanup: unmount: success", buf, 0xCu);
        }

        *__error() = v12;
      }

      v18 = *(v9 + 3);
      *(v9 + 2) = -1;
      if (v18 < 0)
      {
        break;
      }

      v19 = hdi_detach(v9 + 3, *(v2 + 72));
      v20 = *(v2 + 56);
      v12 = *__error();
      v21 = *(v2 + 72);
      if (!v19)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = "[anonymous]";
          if (v20)
          {
            v23 = v20;
          }

          *buf = 136446210;
          v46 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: husk cleanup: detach: success", buf, 0xCu);
        }

        *__error() = v12;
        break;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v22 = "[anonymous]";
        if (v20)
        {
          v22 = v20;
        }

        v46 = v22;
        v47 = 1024;
        v48 = v19;
        v15 = v21;
        v16 = "%{public}s: husk cleanup: detach: %{darwin.errno}d";
        goto LABEL_23;
      }

LABEL_24:
      *__error() = v12;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    *(v9 + 3) = -1;
    v24 = *v7;
    if (*v7 == v9)
    {
      v25 = (v2 + 136);
    }

    else
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 != v9);
    }

    *v25 = *v24;
    free(v9);
  }

  while (v8);
LABEL_36:
  if (!*v7)
  {
LABEL_46:
    v37 = *(v2 + 56);
    v31 = *__error();
    v38 = *(v2 + 72);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    v39 = "[anonymous]";
    if (v37)
    {
      v39 = v37;
    }

    *buf = 136446210;
    v46 = v39;
    v34 = "%{public}s: All husks cleaned up.";
    v35 = v38;
    v36 = OS_LOG_TYPE_DEBUG;
LABEL_54:
    _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, 0xCu);
    goto LABEL_55;
  }

  v26 = *(v2 + 56);
  v27 = *__error();
  v28 = *(v2 + 72);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = "[anonymous]";
    if (v26)
    {
      v29 = v26;
    }

    *buf = 136446210;
    v46 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: Some husks failed cleanup.", buf, 0xCu);
  }

  *__error() = v27;
  if (v44 > 0xB)
  {
    v40 = *(v2 + 56);
    v31 = *__error();
    v41 = *(v2 + 72);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v42 = "[anonymous]";
    if (v40)
    {
      v42 = v40;
    }

    *buf = 136446210;
    v46 = v42;
    v34 = "%{public}s: Too many failed attempts, not rescheduling.";
    v35 = v41;
    v36 = OS_LOG_TYPE_ERROR;
    goto LABEL_54;
  }

  _codex_schedule_husk_cleanup_onq(v2, v44);
  v30 = *(v2 + 56);
  v31 = *__error();
  v32 = *(v2 + 72);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = "[anonymous]";
    if (v30)
    {
      v33 = v30;
    }

    *buf = 136446210;
    v46 = v33;
    v34 = "%{public}s: Rescheduling cleanup.";
    v35 = v32;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_54;
  }

LABEL_55:
  result = __error();
  *result = v31;
  return result;
}

uint64_t _codex_lockdown_continue2(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v19 = -1;
  if (v3)
  {
    v4 = *(v2 + 56);
    v5 = *__error();
    v6 = *(v2 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446466;
    v22 = v7;
    v23 = 1024;
    v24 = v3;
    v8 = "%{public}s: failed to lock down codex: %{darwin.errno}d";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_19;
  }

  v9 = codex_openat(v2, &_codex_state_run, "lockdown", 2560, 438, &v19);
  v3 = v9;
  if ((v9 - 23) < 2)
  {
    v13 = *(v2 + 56);
    v5 = *__error();
    v6 = *(v2 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = "[anonymous]";
    if (v13)
    {
      v14 = v13;
    }

    *buf = 136446466;
    v22 = v14;
    v23 = 1024;
    v24 = v3;
    v8 = "%{public}s: failed to write lockdown state cookie: %{darwin.errno}d";
    goto LABEL_18;
  }

  if (v9 == 17)
  {
    v16 = *(v2 + 56);
    v5 = *__error();
    v17 = *(v2 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = "[anonymous]";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 136446210;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: codex already locked down", buf, 0xCu);
    }

    v3 = 37;
  }

  else
  {
    if (v9)
    {
      _codex_lockdown_continue2_cold_2(&v20, buf);
    }

    v10 = *(v2 + 56);
    v5 = *__error();
    v11 = *(v2 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 136446210;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: wrote lockdown state cookie", buf, 0xCu);
    }

    v3 = 0;
  }

LABEL_19:
  *__error() = v5;
  *(a1 + 8) = v3;
  cryptex_target_async_f();
  result = v19;
  if (v19 != -1)
  {
    result = close(v19);
    if (result == -1)
    {
      daemon_init_cold_13(&v20, buf);
    }
  }

  return result;
}

void _codex_lockdown_continue3(void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[4];
  daemon_assert_main_queue();
  (a1[5])(v2, v3, v4);

  ctx_destroy(a1);
}

void _codex_list_installed_continue2(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  for (i = 0; i != 37; ++i)
  {
    for (j = *(a1 + 144 + 8 * i); j; j = *(j + 8))
    {
      v8 = ctx_new((j - 80), 0x48uLL);
      v8[4] = os_retain(v5);
      v8[5] = os_retain(v4);
      dispatch_group_enter(v5);
      cryptex_async_f();
    }
  }

  dispatch_group_notify_f(v5, *(a1 + 32), a2, _codex_list_installed_callback_0);
  dispatch_group_leave(v5);
  if (v5)
  {

    os_release(v5);
  }
}

void _codex_list_installed_quire_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = xpc_array_create(0, 0);
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 208));
  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, **(v2 + 224));
  if (*(v2 + 408))
  {
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "[not mounted]");
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "[not mounted]");
    v4 = v3;
    v5 = "[not mounted]";
  }

  else
  {
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 424));
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, *(v2 + 432));
    v5 = *(v2 + 416);
    v4 = v3;
  }

  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
  TopLevelPosixError = _CFErrorGetTopLevelPosixError(*(v2 + 408));
  xpc_array_set_int64(v3, 0xFFFFFFFFFFFFFFFFLL, TopLevelPosixError);
  a1[6] = v3;
  main_queue = daemon_get_main_queue();

  dispatch_async_f(main_queue, a1, _codex_list_installed_quire_continue2);
}

void _codex_list_installed_callback_0(unsigned int *a1)
{
  (*(a1 + 8))(*a1, a1[2], *(a1 + 5), *(a1 + 7));
  xpc_release(*(a1 + 5));

  ctx_destroy(a1);
}

void _codex_list_installed_quire_continue2(void **a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  xpc_array_append_value(v3, v4);
  dispatch_group_leave(v2);
  ctx_destroy(a1);
  if (v4)
  {
    os_release(v4);
  }

  if (v3)
  {
    os_release(v3);
  }

  if (v2)
  {

    os_release(v2);
  }
}

void sub_1000265A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t collation_map_add(void *a1)
{
  v1 = a1;
  quire_get_user(v1);
  v2 = [CollationMap addEntryForUser:0 fromQuire:v1];

  return v2;
}

uint64_t collation_map_remove(void *a1)
{
  v1 = a1;
  quire_get_user(v1);
  mntpath = quire_get_mntpath(v1);

  return [CollationMap removeEntryForUser:0 withValue:mntpath];
}

id collation_map_get_endpoint_for_user(uint64_t a1)
{
  v2 = +[CollationMap getMap];
  v3 = [v2 coll_map];

  v4 = [NSNumber numberWithUnsignedInt:a1];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = [v3 objectForKeyedSubscript:&off_100074F30];
  }

  v6 = [v5 createEndpoint];

  return v6;
}

BOOL collation_map_lookup_cryptex_with_attributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = cryptex_version_new();
  }

  else
  {
    v4 = 0;
  }

  v5 = [CollationMap lookupEntryForUser:0 withBundleID:a2 minVersion:v4];
  cryptex_version_destroy();
  return v5;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

void sub_remote_xpc_message_recv(void *a1)
{
  v1 = a1;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
}

void __sub_remote_xpc_message_recv_block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v6 = __error();
    v4 = *v6;
    v5 = _remote_service_log(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      string = xpc_dictionary_get_string(v2, _xpc_error_key_description);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received error from client: %s", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  if (xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    v3 = __error();
    v4 = *v3;
    v5 = _remote_service_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Malformed message from client", &v11, 2u);
    }

LABEL_8:

    *__error() = v4;
    goto LABEL_12;
  }

  v7 = xpc_copy_description(v2);
  v8 = __error();
  v9 = *v8;
  v10 = _remote_service_log(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    string = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "remote service msg recv: %s", &v11, 0xCu);
  }

  *__error() = v9;
  _sub_remote_service_demux(v2);
  free(v7);
LABEL_12:
}

id _remote_service_log(uint64_t a1)
{
  if (_remote_service_log_onceToken != -1)
  {
    _remote_service_log_cold_1();
  }

  v2 = _remote_service_log_osl;

  return v2;
}

void _sub_remote_service_demux(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_value(v1, "routine");
  v3 = v2;
  if (!v2)
  {
    v7 = __error();
    v5 = *v7;
    v6 = _remote_service_log(v7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Malformed message from client: no routine key found", buf, 2u);
    }

    goto LABEL_8;
  }

  if (xpc_get_type(v2) != &_xpc_type_string)
  {
    v4 = __error();
    v5 = *v4;
    v6 = _remote_service_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Malformed message from client: routine is not a string", buf, 2u);
    }

LABEL_8:

    *__error() = v5;
    reply = _xpc_create_reply(v1, 0, 22);
LABEL_9:
    v9 = reply;
    goto LABEL_10;
  }

  string_ptr = xpc_string_get_string_ptr(v3);
  if (!strcmp(string_ptr, "get-nonce"))
  {
    v14 = v1;
    *&v233 = 0;
    v232 = 0u;
    memset(buf, 0, sizeof(buf));
    v161 = 0;
    argv = _xpc_request_get_argv(v14, &v161);
    v16 = v161;
    v17 = v16;
    if (argv)
    {
      v18 = _remote_service_log(v16);

      if (v18)
      {
        v20 = _remote_service_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        *block = 67109120;
        *&block[4] = argv;
        v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 16, "failed to get argv from request %{darwin.errno}d", block, 8);
      }

      else
      {
        *block = 67109120;
        *&block[4] = argv;
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to get argv from request %{darwin.errno}d", block, 8);
      }

      Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 110, "com.apple.security.cryptex.posix", argv, 0, v22);
      free(v22);
      reply_with_cferr = _xpc_create_reply_with_cferr(v14, 0, Error);
      goto LABEL_63;
    }

    if (_xpc_dictionary_key_with_type_exists(v16, "nonce-domain", &_xpc_type_uint64))
    {
      uint64 = xpc_dictionary_get_uint64(v17, "nonce-domain");
      if (!_img4_get_nonce_domain_from_index(uint64))
      {
        v41 = _remote_service_log(0);

        if (v41)
        {
          v43 = _remote_service_log(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          *block = 134217984;
          *&block[4] = uint64;
          v45 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v43, 16, "nonce domain doesn't exist for index: %llu", block);
        }

        else
        {
          *block = 134217984;
          *&block[4] = uint64;
          v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "nonce domain doesn't exist for index: %llu", block);
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 126, "com.apple.security.cryptex", 10, 0, v45);
        free(v45);
        reply_with_cferr = _xpc_create_reply_with_cferr(v14, 0, Error);
        goto LABEL_63;
      }
    }

    else
    {
      v69 = _xpc_dictionary_key_with_type_exists(v17, "nonce-domain-handle", &_xpc_type_uint64);
      if (!v69)
      {
        v85 = _remote_service_log(v69);

        if (v85)
        {
          v87 = _remote_service_log(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v88 = 3;
          }

          else
          {
            v88 = 2;
          }

          *block = 136315394;
          *&block[4] = "nonce-domain";
          *&block[12] = 2080;
          *&block[14] = "nonce-domain-handle";
          v89 = _os_log_send_and_compose_impl(v88, 0, 0, 0, &_mh_execute_header, v87, 16, "required key missing or with wrong type: %s or %s", block, 22);
        }

        else
        {
          *block = 136315394;
          *&block[4] = "nonce-domain";
          *&block[12] = 2080;
          *&block[14] = "nonce-domain-handle";
          v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "required key missing or with wrong type: %s or %s", block, 22);
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 151, "com.apple.security.cryptex", 11, 0, v89);
        free(v89);
        reply_with_cferr = _xpc_create_reply_with_cferr(v14, 0, Error);
        goto LABEL_63;
      }

      v70 = xpc_dictionary_get_uint64(v17, "nonce-domain-handle");
      if (!img4_nonce_domain_get_from_handle())
      {
        v125 = _remote_service_log(0);

        if (v125)
        {
          v127 = _remote_service_log(v126);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = 3;
          }

          else
          {
            v128 = 2;
          }

          *block = 67109120;
          *&block[4] = v70;
          v129 = _os_log_send_and_compose_impl(v128, 0, 0, 0, &_mh_execute_header, v127, 16, "nonce domain doesn't exist for handle: %u", block);
        }

        else
        {
          *block = 67109120;
          *&block[4] = v70;
          v129 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "nonce domain doesn't exist for handle: %u", block);
        }

        Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 141, "com.apple.security.cryptex", 10, 0, v129);
        free(v129);
        reply_with_cferr = _xpc_create_reply_with_cferr(v14, 0, Error);
        goto LABEL_63;
      }
    }

    v71 = img4_nonce_domain_copy_nonce();
    v72 = v71;
    if (!v71)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_data(empty, "nonce", buf, 0x38uLL);
      v9 = _xpc_create_reply_with_cferr(v14, empty, 0);

LABEL_65:
      goto LABEL_10;
    }

    v73 = _remote_service_log(v71);

    if (v73)
    {
      v75 = _remote_service_log(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *block = 67109120;
      *&block[4] = v72;
      v77 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &_mh_execute_header, v75, 16, "copy nonce failed %{darwin.errno}d", block, 8);
    }

    else
    {
      *block = 67109120;
      *&block[4] = v72;
      v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "copy nonce failed %{darwin.errno}d", block, 8);
    }

    Error = createError("_remote_service_get_nonce", "sub_remote_service.m", 161, "com.apple.security.cryptex.posix", v72, 0, v77);
    free(v77);
    reply_with_cferr = _xpc_create_reply_with_cferr(v14, 0, Error);
LABEL_63:
    v9 = reply_with_cferr;
    if (Error)
    {
      CFRelease(Error);
    }

    goto LABEL_65;
  }

  if (strcmp(string_ptr, "roll-nonce"))
  {
    if (strcmp(string_ptr, "install"))
    {
      if (strcmp(string_ptr, "uninstall"))
      {
        if (!strcmp(string_ptr, "copy-installed"))
        {
          _remote_service_copy_installed(v1);
          goto LABEL_12;
        }

        if (!strcmp(string_ptr, "read-personalization-id"))
        {
          _remote_service_read_personalization_identifiers(v1);
          goto LABEL_12;
        }

        v11 = __error();
        v12 = *v11;
        v13 = _remote_service_log(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = string_ptr;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unsupported routine: %s", buf, 0xCu);
        }

        *__error() = v12;
        reply = _xpc_create_reply(v1, 0, 45);
        goto LABEL_9;
      }

      *block = 0;
      *&block[8] = block;
      *&block[16] = 0x3032000000;
      v221 = __Block_byref_object_copy__2;
      v222 = __Block_byref_object_dispose__2;
      v55 = v1;
      v223 = v55;
      v161 = 0;
      v162 = &v161;
      v163 = 0x3032000000;
      v164 = __Block_byref_object_copy__2;
      v165 = __Block_byref_object_dispose__2;
      v166 = 0;
      v211 = 0;
      v56 = _xpc_request_get_argv(v55, &v211);
      v57 = v211;
      v58 = v57;
      if (v56)
      {
        v59 = __error();
        v60 = *v59;
        v61 = _remote_service_log(v59);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v56;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "failed to get argv from request: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v60;
      }

      else
      {
        string = xpc_dictionary_get_string(v57, "remote-cryptex-identifier");
        v91 = xpc_dictionary_get_string(v58, "remote-cryptex-version");
        if (string)
        {
          if (v91)
          {
            v92 = cryptex_version_new();
          }

          else
          {
            v92 = 0;
          }

          v133 = codex_copy_system();
          v134 = *(v162 + 40);
          *(v162 + 40) = v133;

          v135 = daemon_get_main_queue();
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = ___remote_service_uninstall_block_invoke;
          *&buf[24] = &unk_100073460;
          *&v233 = string;
          *(&v233 + 1) = v92;
          *&v234 = 1;
          *&v232 = &v161;
          *(&v232 + 1) = block;
          dispatch_async(v135, buf);

          v62 = 0;
          goto LABEL_154;
        }

        v130 = __error();
        v131 = *v130;
        v132 = _remote_service_log(v130);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "remote-cryptex-identifier";
          *&buf[12] = 1024;
          *&buf[14] = 22;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "required key missing or with wrong type: %s: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v131;
        v56 = 22;
      }

      v62 = _xpc_create_reply(v55, 0, v56);
      _remote_service_send_reply(v62);
LABEL_154:
      _Block_object_dispose(&v161, 8);

      _Block_object_dispose(block, 8);
      goto LABEL_12;
    }

    v30 = v1;
    v173 = 0;
    v174 = &v173;
    v175 = 0x3032000000;
    v176 = __Block_byref_object_copy__2;
    v177 = __Block_byref_object_dispose__2;
    v178 = 0;
    if ((remote_service_install_request_valid() & 1) == 0)
    {
      v65 = __error();
      v66 = *v65;
      v67 = _remote_service_log(v65);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 22;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Invalid install request: %{darwin.errno}d", buf, 8u);
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v158 = 0;
      v160 = 0;
      v32 = 0;
      v157 = 0;
      *__error() = v66;
      goto LABEL_69;
    }

    v172 = 0;
    v31 = _xpc_request_get_argv(v30, &v172);
    v32 = v172;
    if (v31)
    {
      v33 = __error();
      v34 = *v33;
      v35 = _remote_service_log(v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "failed to get argv from request: %{darwin.errno}d", buf, 8u);
      }

      v36 = __error();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v158 = 0;
      v160 = 0;
      v157 = 0;
LABEL_40:
      *v36 = v34;
LABEL_70:
      v68 = _xpc_create_reply(v30, 0, v31);
      _remote_service_send_reply(v68);
LABEL_71:
      _Block_object_dispose(&v173, 8);

      goto LABEL_12;
    }

    v93 = codex_copy_system();
    v94 = v174[5];
    v174[5] = v93;

    v160 = xpc_dictionary_get_value(v32, "image");
    int64 = xpc_dictionary_get_int64(v32, "image-type-index");
    if (int64 >= 0xC)
    {
      v96 = __error();
      v97 = *v96;
      v98 = _remote_service_log(v96);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 22;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Invalid install request (image_type_index OOB): %{darwin.errno}d", buf, 8u);
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v157 = 0;
      v158 = 0;
      *__error() = v97;
LABEL_69:
      v31 = 22;
      goto LABEL_70;
    }

    v159 = xpc_dictionary_get_value(v32, "trustcache");
    v154 = xpc_dictionary_get_value(v32, "im4m");
    v152 = xpc_dictionary_get_value(v32, "info");
    v151 = xpc_dictionary_get_value(v32, "volumehash");
    v107 = xpc_dictionary_get_uint64(v32, "persistence");
    v108 = xpc_dictionary_get_uint64(v32, "nonce-persistence");
    v109 = xpc_dictionary_get_uint64(v32, "auth");
    v110 = xpc_dictionary_get_dictionary(v32, "cryptex1-properties");
    v111 = int64;
    v112 = v174[5];
    v161 = _NSConcreteStackBlock;
    v162 = 3221225472;
    v163 = ___remote_service_install_block_invoke;
    v164 = &unk_100072F50;
    v155 = v111;
    v168 = v111;
    v157 = v110;
    v165 = v157;
    v167 = &v173;
    v166 = v30;
    v169 = v109;
    v170 = v107;
    v171 = v108;
    v156 = v112;
    v160 = v160;
    v158 = v159;
    v37 = v154;
    v39 = v152;
    v38 = v151;
    v113 = &v161;
    v243 = 0u;
    memset(v244, 0, sizeof(v244));
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    memset(buf, 0, sizeof(buf));
    v219 = -1;
    v217[0] = 0;
    v217[1] = v217;
    v217[2] = 0x2020000000;
    v218 = 0;
    v211 = 0;
    v212 = &v211;
    v213 = 0x3032000000;
    v214 = __Block_byref_object_copy__2;
    v215 = __Block_byref_object_dispose__2;
    v216 = 0;
    v209[0] = 0;
    v209[1] = v209;
    v209[2] = 0x3032000000;
    v209[3] = __Block_byref_object_copy__30;
    v209[4] = __Block_byref_object_dispose__31;
    v153 = v113;
    v210 = objc_retainBlock(v113);
    v114 = _remote_service_get_queue(v210);
    dispatch_assert_queue_V2(v114);

    __snprintf_chk(buf, 0xFFuLL, 0, 0xFFuLL, "XXXXXX");
    codex_mkodtempat(v156, &_codex_state_remote_stage, buf, &v219);
    if (openat(v219, *(cryptex_asset_types[v155] + 40), 514, 438) < 0)
    {
      v31 = *__error();
      v136 = __error();
      v123 = *v136;
      v124 = _remote_service_log(v136);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *block = 67109120;
        *&block[4] = v31;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "failed to create file for image: %{darwin.errno}d", block, 8u);
      }
    }

    else
    {
      is_cryptex1 = cryptex_asset_type_is_cryptex1();
      v116 = is_cryptex1;
      if (is_cryptex1)
      {
        v117 = &_cryptex_asset_type_ginf;
      }

      else
      {
        v117 = _cryptex_asset_type_c411;
      }

      if (is_cryptex1)
      {
        v118 = &_cryptex_asset_type_gtcd;
      }

      else
      {
        v118 = &_cryptex_asset_type_ltrs;
      }

      v148 = v118;
      v149 = v117;
      v119 = &_cryptex_asset_type_roothash;
      if (is_cryptex1)
      {
        v119 = &_cryptex_asset_type_gtgv;
      }

      v150 = v119;
      v120 = (&_cryptex_asset_type_ltrs + 40);
      if (is_cryptex1)
      {
        v120 = (&_cryptex_asset_type_gtcd + 40);
      }

      if (openat(v219, *v120, 514, 438) < 0)
      {
        v31 = *__error();
        v137 = __error();
        v123 = *v137;
        v124 = _remote_service_log(v137);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v31;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "failed to create file for trust cache: %{darwin.errno}d", block, 8u);
        }
      }

      else if (openat(v219, *(&_cryptex_asset_type_im4m + 5), 514, 438) < 0)
      {
        v31 = *__error();
        v138 = __error();
        v123 = *v138;
        v124 = _remote_service_log(v138);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v31;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "failed to create file for im4m: %{darwin.errno}d", block, 8u);
        }
      }

      else if (v39 && (!v116 ? (v121 = _cryptex_asset_type_c411) : (v121 = &_cryptex_asset_type_ginf), openat(v219, v121[5], 514, 438) < 0))
      {
        v31 = *__error();
        v122 = __error();
        v123 = *v122;
        v124 = _remote_service_log(v122);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v31;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "failed to create file for info: %{darwin.errno}d", block, 8u);
        }
      }

      else
      {
        if (!v38)
        {
          goto LABEL_178;
        }

        v139 = &_cryptex_asset_type_roothash;
        if (v116)
        {
          v139 = &_cryptex_asset_type_gtgv;
        }

        if ((openat(v219, v139[5], 514, 438) & 0x80000000) == 0)
        {
LABEL_178:
          v143 = dispatch_group_create();
          v144 = v212[5];
          v212[5] = v143;

          dispatch_group_enter(v212[5]);
          dispatch_group_enter(v212[5]);
          v203 = _NSConcreteStackBlock;
          v204 = 3221225472;
          v205 = ___remote_service_install_file_recv_block_invoke;
          v206 = &unk_100072F78;
          v207 = v217;
          v208 = &v211;
          xpc_file_transfer_write_to_fd();
          dispatch_group_enter(v212[5]);
          v197 = _NSConcreteStackBlock;
          v198 = 3221225472;
          v199 = ___remote_service_install_file_recv_block_invoke_34;
          v200 = &unk_100072F78;
          v201 = v217;
          v202 = &v211;
          xpc_file_transfer_write_to_fd();
          dispatch_group_enter(v212[5]);
          v191 = _NSConcreteStackBlock;
          v192 = 3221225472;
          v193 = ___remote_service_install_file_recv_block_invoke_35;
          v194 = &unk_100072F78;
          v195 = v217;
          v196 = &v211;
          v145 = xpc_file_transfer_write_to_fd();
          if (v39)
          {
            dispatch_group_enter(v212[5]);
            v185 = _NSConcreteStackBlock;
            v186 = 3221225472;
            v187 = ___remote_service_install_file_recv_block_invoke_36;
            v188 = &unk_100072F78;
            v189 = v217;
            v190 = &v211;
            v145 = xpc_file_transfer_write_to_fd();
          }

          if (v38)
          {
            dispatch_group_enter(v212[5]);
            v179 = _NSConcreteStackBlock;
            v180 = 3221225472;
            v181 = ___remote_service_install_file_recv_block_invoke_37;
            v182 = &unk_100072F78;
            v183 = v217;
            v184 = &v211;
            v145 = xpc_file_transfer_write_to_fd();
          }

          v146 = v212[5];
          v147 = _remote_service_get_queue(v145);
          *block = _NSConcreteStackBlock;
          *&block[8] = 3221225472;
          *&block[16] = ___remote_service_install_file_recv_block_invoke_38;
          v221 = &unk_100072FA0;
          v230 = v219;
          v226 = v155;
          v227 = v148;
          v222 = v39;
          v228 = v149;
          v223 = v38;
          v224 = v209;
          v229 = v150;
          v225 = v217;
          dispatch_group_notify(v146, v147, block);

          dispatch_group_leave(v212[5]);
          v31 = 0;
          goto LABEL_173;
        }

        v31 = *__error();
        v140 = __error();
        v123 = *v140;
        v124 = _remote_service_log(v140);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          *block = 67109120;
          *&block[4] = v31;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "failed to create file for volume hash: %{darwin.errno}d", block, 8u);
        }
      }
    }

    *__error() = v123;
LABEL_173:
    _Block_object_dispose(v209, 8);

    _Block_object_dispose(&v211, 8);
    _Block_object_dispose(v217, 8);

    if (!v31)
    {
      v68 = 0;
      goto LABEL_71;
    }

    v141 = __error();
    v34 = *v141;
    v142 = _remote_service_log(v141);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "file receive failed: %{darwin.errno}d", buf, 8u);
    }

    v36 = __error();
    goto LABEL_40;
  }

  v23 = v1;
  if (!_xpc_dictionary_key_with_type_exists(v23, "nonce-domain", &_xpc_type_uint64))
  {
    v46 = _xpc_dictionary_key_with_type_exists(v23, "nonce-domain-handle", &_xpc_type_uint64);
    if (v46)
    {
      v47 = xpc_dictionary_get_uint64(v23, "nonce-domain-handle");
      if (img4_nonce_domain_get_from_handle())
      {
        goto LABEL_50;
      }

      v102 = _remote_service_log(0);

      if (v102)
      {
        v104 = _remote_service_log(v103);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        *buf = 67109120;
        *&buf[4] = v47;
        v106 = _os_log_send_and_compose_impl(v105, 0, 0, 0, &_mh_execute_header, v104, 16, "nonce domain doesn't exist for handle: %u", buf);
      }

      else
      {
        *buf = 67109120;
        *&buf[4] = v47;
        v106 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "nonce domain doesn't exist for handle: %u", buf);
      }

      v99 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 211, "com.apple.security.cryptex", 10, 0, v106);
      free(v106);
      v100 = _xpc_create_reply_with_cferr(v23, 0, v99);
    }

    else
    {
      v78 = _remote_service_log(v46);

      if (v78)
      {
        v80 = _remote_service_log(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        *buf = 136315394;
        *&buf[4] = "nonce-domain";
        *&buf[12] = 2080;
        *&buf[14] = "nonce-domain-handle";
        v82 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &_mh_execute_header, v80, 16, "required key missing or with wrong type: %s or %s", buf, 22);
      }

      else
      {
        *buf = 136315394;
        *&buf[4] = "nonce-domain";
        *&buf[12] = 2080;
        *&buf[14] = "nonce-domain-handle";
        v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "required key missing or with wrong type: %s or %s", buf, 22);
      }

      v99 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 221, "com.apple.security.cryptex", 11, 0, v82);
      free(v82);
      v100 = _xpc_create_reply_with_cferr(v23, 0, v99);
    }

LABEL_149:
    v9 = v100;
    if (v99)
    {
      CFRelease(v99);
    }

    goto LABEL_151;
  }

  v24 = xpc_dictionary_get_uint64(v23, "nonce-domain");
  if (!_img4_get_nonce_domain_from_index(v24))
  {
    v25 = _remote_service_log(0);

    if (v25)
    {
      v27 = _remote_service_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      *buf = 134217984;
      *&buf[4] = v24;
      v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "nonce domain doesn't exist for index: %llu", buf);
    }

    else
    {
      *buf = 134217984;
      *&buf[4] = v24;
      v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "nonce domain doesn't exist for index: %llu", buf);
    }

    v99 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 196, "com.apple.security.cryptex", 10, 0, v29);
    free(v29);
    v100 = _xpc_create_reply_with_cferr(v23, 0, v99);
    goto LABEL_149;
  }

LABEL_50:
  v48 = img4_nonce_domain_roll_nonce();
  if (v48)
  {
    v49 = v48;
    v50 = _remote_service_log(v48);

    if (v50)
    {
      v52 = _remote_service_log(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      *buf = 67109120;
      *&buf[4] = v49;
      v54 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, v52, 16, "roll nonce failed %{darwin.errno}d", buf, 8);
    }

    else
    {
      *buf = 67109120;
      *&buf[4] = v49;
      v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "roll nonce failed %{darwin.errno}d", buf, 8);
    }

    v99 = createError("_remote_service_roll_nonce", "sub_remote_service.m", 231, "com.apple.security.cryptex.posix", v49, 0, v54);
    free(v54);
    v100 = _xpc_create_reply_with_cferr(v23, 0, v99);
    goto LABEL_149;
  }

  v83 = xpc_dictionary_create_empty();
  v84 = _xpc_create_reply_with_cferr(v23, v83, 0);

  v9 = v84;
LABEL_151:

LABEL_10:
  if (v9)
  {
    _remote_service_send_reply(v9);
  }

LABEL_12:
}

void sub_100028D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_log_block_invoke(id a1)
{
  _remote_service_log_osl = os_log_create("com.apple.libcryptex", "remote_service");

  _objc_release_x1();
}

void _remote_service_copy_installed(void *a1)
{
  v1 = a1;
  v2 = daemon_get_main_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___remote_service_copy_installed_block_invoke;
  block[3] = &unk_100071418;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void _remote_service_read_personalization_identifiers(void *a1)
{
  v1 = a1;
  memset(v17, 0, sizeof(v17));
  LOWORD(v17[0]) = 6;
  v2 = img4_chip_instantiate();
  if (v2)
  {
    v3 = _remote_service_log(v2);

    if (v3)
    {
      v5 = _remote_service_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      *buf = 67109120;
      LODWORD(v16) = 5;
      v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 16, "Failed to initialize AppleImage4 chip instance. %{darwin.errno}d", buf, 8);
    }

    else
    {
      *buf = 67109120;
      LODWORD(v16) = 5;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to initialize AppleImage4 chip instance. %{darwin.errno}d", buf, 8);
    }

    Error = createError("_remote_service_read_personalization_identifiers", "sub_remote_service.m", 848, "com.apple.security.cryptex.posix", 5, 0, v7);
    free(v7);
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v14 = 0;
  Error = img4_chip_instance_to_xpc(v17, &v14);
  v9 = v14;
  if (Error)
  {
    v10 = __error();
    v11 = *v10;
    v12 = _remote_service_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = Error;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to encode AppleImage4 chip instance.: %@", buf, 0xCu);
    }

    *__error() = v11;
    goto LABEL_13;
  }

LABEL_14:
  reply_with_cferr = _xpc_create_reply_with_cferr(v1, v9, Error);
  _remote_service_send_reply(reply_with_cferr);
}

void _remote_service_send_reply(void *a1)
{
  v1 = a1;
  v2 = _remote_service_get_queue(v1);
  dispatch_assert_queue_V2(v2);

  v3 = xpc_copy_description(v1);
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "remote service reply: %s", &v7, 0xCu);
  }

  *__error() = v5;
  xpc_dictionary_send_reply();
  free(v3);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___remote_service_install_block_invoke(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  if (!a2)
  {
    v12 = cryptex_core_create();
    v14 = cryptex_core_set_assets_from_fds();
    if (v14)
    {
      v8 = v14;
      v15 = __error();
      v10 = *v15;
      v11 = _remote_service_log(v15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "set assets to core from fds failed: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_5;
    }

    reply = cryptex_core_cx1_properties_create_with_xpc_dictionary();
    if (reply)
    {
      cryptex_core_set_cryptex1_properties();
    }

    v16 = a1[5];
    v17 = a1[8];
    v18 = *(*(a1[6] + 8) + 40);
    v19 = v16;
    v12 = v12;
    v20 = __error();
    v21 = *v20;
    v22 = _remote_service_log(v20);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v17 == 2)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "using NO signing service", buf, 2u);
      }
    }

    else
    {
      if (v17 != 1)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "using default signing service", buf, 2u);
        }

        v24 = 0;
        *__error() = v21;
        goto LABEL_23;
      }

      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "using supplemental signing service", buf, 2u);
      }
    }

    *__error() = v21;
    v24 = cryptex_host_create();
    cryptex_core_attach_host();
LABEL_23:
    cryptex_core_set_install_persistence();
    cryptex_core_set_nonce_persistence();
    v25 = v18;
    started = pipeline_start_state_alloc(v25, 0, 0, 0, v19, _remote_service_install_cryptex_continue);
    codex_install_cryptex(v25, v12, started);

    goto LABEL_6;
  }

  v8 = a2;
  v9 = __error();
  v10 = *v9;
  v11 = _remote_service_log(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "file transfer failed: %{darwin.errno}d", buf, 8u);
  }

  v12 = 0;
LABEL_5:

  *__error() = v10;
  reply = _xpc_create_reply(a1[5], 0, v8);
  _remote_service_send_reply(reply);
LABEL_6:
}

id __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _remote_service_get_queue(uint64_t a1)
{
  if (_remote_service_get_queue_onceToken != -1)
  {
    _remote_service_get_queue_cold_1();
  }

  v2 = _remote_service_get_queue_queue;

  return v2;
}

void ___remote_service_install_file_recv_block_invoke(uint64_t a1, int a2)
{
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "image file transfer: %{darwin.errno}d", v8, 8u);
    }

    *__error() = v5;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "image file transfer [no error]", v8, 2u);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_34(uint64_t a1, int a2)
{
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "trustcache file transfer: %{darwin.errno}d", v8, 8u);
    }

    *__error() = v5;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "trustcache file transfer [no error]", v8, 2u);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_35(uint64_t a1, int a2)
{
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "im4m file transfer: %{darwin.errno}d", v8, 8u);
    }

    *__error() = v5;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "im4m file transfer [no error]", v8, 2u);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_36(uint64_t a1, int a2)
{
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "info file transfer: %{darwin.errno}d", v8, 8u);
    }

    *__error() = v5;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "info file transfer [no error]", v8, 2u);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void ___remote_service_install_file_recv_block_invoke_37(uint64_t a1, int a2)
{
  v4 = __error();
  v5 = *v4;
  v6 = _remote_service_log(v4);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "volume hash file transfer: %{darwin.errno}d", v8, 8u);
    }

    *__error() = v5;
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "volume hash file transfer [no error]", v8, 2u);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t ___remote_service_install_file_recv_block_invoke_38(uint64_t a1)
{
  v2 = openat(*(a1 + 96), *(cryptex_asset_types[*(a1 + 64)] + 40), 0, 438);
  v3 = _remote_service_log(v2);
  bzero(__str, 0x400uLL);
  memset(&v58, 0, sizeof(v58));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v2, &v58) == -1)
    {
      v8 = *__error();
      v9 = v3;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 136315650;
        v60 = "imagefd_r";
        v61 = 1024;
        v62 = v2;
        v63 = 1024;
        LODWORD(v64) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v8;
    }

    else
    {
      if (fcntl(v2, 50, __str))
      {
        v4 = __error();
        v5 = strerror(*v4);
        snprintf(__str, 0x400uLL, "[%s]", v5);
      }

      v6 = v58.st_mode >> 12;
      if (v6 == 7)
      {
        v7 = "[unknown]";
      }

      else
      {
        v7 = off_1000734F8[v6 ^ 8];
      }

      v11 = os_flagset_copy_string();
      v12 = *__error();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v60 = "imagefd_r";
        v61 = 1024;
        v62 = v2;
        v63 = 2080;
        v64 = v7;
        v65 = 2048;
        st_size = v58.st_size;
        v67 = 2080;
        v68 = v11;
        v69 = 2080;
        v70 = __str;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v12;
      free(v11);
    }
  }

  v13 = openat(*(a1 + 96), *(*(a1 + 72) + 40), 514, 438);
  v14 = _remote_service_log(v13);
  bzero(__str, 0x400uLL);
  memset(&v58, 0, sizeof(v58));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v13, &v58) == -1)
    {
      v19 = *__error();
      v20 = v14;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        *buf = 136315650;
        v60 = "tcfd_r";
        v61 = 1024;
        v62 = v13;
        v63 = 1024;
        LODWORD(v64) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v19;
    }

    else
    {
      if (fcntl(v13, 50, __str))
      {
        v15 = __error();
        v16 = strerror(*v15);
        snprintf(__str, 0x400uLL, "[%s]", v16);
      }

      v17 = v58.st_mode >> 12;
      if (v17 == 7)
      {
        v18 = "[unknown]";
      }

      else
      {
        v18 = off_1000734F8[v17 ^ 8];
      }

      v22 = os_flagset_copy_string();
      v23 = *__error();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v60 = "tcfd_r";
        v61 = 1024;
        v62 = v13;
        v63 = 2080;
        v64 = v18;
        v65 = 2048;
        st_size = v58.st_size;
        v67 = 2080;
        v68 = v22;
        v69 = 2080;
        v70 = __str;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v23;
      free(v22);
    }
  }

  v24 = openat(*(a1 + 96), *(&_cryptex_asset_type_im4m + 5), 514, 438);
  v25 = _remote_service_log(v24);
  bzero(__str, 0x400uLL);
  memset(&v58, 0, sizeof(v58));
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v24, &v58) == -1)
    {
      v30 = *__error();
      v31 = v25;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *__error();
        *buf = 136315650;
        v60 = "im4mfd_r";
        v61 = 1024;
        v62 = v24;
        v63 = 1024;
        LODWORD(v64) = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
      }

      *__error() = v30;
    }

    else
    {
      if (fcntl(v24, 50, __str))
      {
        v26 = __error();
        v27 = strerror(*v26);
        snprintf(__str, 0x400uLL, "[%s]", v27);
      }

      v28 = v58.st_mode >> 12;
      if (v28 == 7)
      {
        v29 = "[unknown]";
      }

      else
      {
        v29 = off_1000734F8[v28 ^ 8];
      }

      v33 = os_flagset_copy_string();
      v34 = *__error();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        v60 = "im4mfd_r";
        v61 = 1024;
        v62 = v24;
        v63 = 2080;
        v64 = v29;
        v65 = 2048;
        st_size = v58.st_size;
        v67 = 2080;
        v68 = v33;
        v69 = 2080;
        v70 = __str;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
      }

      *__error() = v34;
      free(v33);
    }
  }

  if (*(a1 + 32))
  {
    v35 = openat(*(a1 + 96), *(*(a1 + 80) + 40), 514, 438);
    v36 = _remote_service_log(v35);
    bzero(__str, 0x400uLL);
    memset(&v58, 0, sizeof(v58));
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      if (fstat(v35, &v58) == -1)
      {
        v41 = *__error();
        v42 = v36;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = *__error();
          *buf = 136315650;
          v60 = "infofd_r";
          v61 = 1024;
          v62 = v35;
          v63 = 1024;
          LODWORD(v64) = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
        }

        *__error() = v41;
      }

      else
      {
        if (fcntl(v35, 50, __str))
        {
          v37 = __error();
          v38 = strerror(*v37);
          snprintf(__str, 0x400uLL, "[%s]", v38);
        }

        v39 = v58.st_mode >> 12;
        if (v39 == 7)
        {
          v40 = "[unknown]";
        }

        else
        {
          v40 = off_1000734F8[v39 ^ 8];
        }

        v44 = os_flagset_copy_string();
        v45 = *__error();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          v60 = "infofd_r";
          v61 = 1024;
          v62 = v35;
          v63 = 2080;
          v64 = v40;
          v65 = 2048;
          st_size = v58.st_size;
          v67 = 2080;
          v68 = v44;
          v69 = 2080;
          v70 = __str;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
        }

        *__error() = v45;
        free(v44);
      }
    }
  }

  if (*(a1 + 40))
  {
    v46 = openat(*(a1 + 96), *(*(a1 + 88) + 40), 514, 438);
    v47 = _remote_service_log(v46);
    bzero(__str, 0x400uLL);
    memset(&v58, 0, sizeof(v58));
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      if (fstat(v46, &v58) == -1)
      {
        v52 = *__error();
        v53 = v47;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = *__error();
          *buf = 136315650;
          v60 = "volhashfd_r";
          v61 = 1024;
          v62 = v46;
          v63 = 1024;
          LODWORD(v64) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
        }

        *__error() = v52;
      }

      else
      {
        if (fcntl(v46, 50, __str))
        {
          v48 = __error();
          v49 = strerror(*v48);
          snprintf(__str, 0x400uLL, "[%s]", v49);
        }

        v50 = v58.st_mode >> 12;
        if (v50 == 7)
        {
          v51 = "[unknown]";
        }

        else
        {
          v51 = off_1000734F8[v50 ^ 8];
        }

        v55 = os_flagset_copy_string();
        v56 = *__error();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          v60 = "volhashfd_r";
          v61 = 1024;
          v62 = v46;
          v63 = 2080;
          v64 = v51;
          v65 = 2048;
          st_size = v58.st_size;
          v67 = 2080;
          v68 = v55;
          v69 = 2080;
          v70 = __str;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
        }

        *__error() = v56;
        free(v55);
      }
    }
  }

  return (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
}

void ___remote_service_get_queue_block_invoke(id a1)
{
  v3 = daemon_copy();
  v1 = daemon_get_xpc_queue(v3);
  v2 = _remote_service_get_queue_queue;
  _remote_service_get_queue_queue = v1;
}

void _remote_service_install_cryptex_continue(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = a4;
  v10 = *(a4 + 64);
  if (v9)
  {
    v11 = __error();
    v12 = *v11;
    v13 = _remote_service_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "installation failed: %@", buf, 0xCu);
    }

    v14 = __error();
    *v14 = v12;
    v15 = _remote_service_get_queue(v14);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___remote_service_install_cryptex_continue_block_invoke;
    block[3] = &unk_1000733E8;
    v17 = v10;
    v18 = v9;
    v19 = v20;
    dispatch_async(v15, block);
  }

  else
  {
    codex_bootstrap(v7, v8, a4, _remote_service_install_cryptex_continue2);
  }

  _Block_object_dispose(v20, 8);
}

void sub_10002A9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _remote_service_install_cryptex_continue2(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = a4;
  v9 = *(a4 + 64);
  v10 = v9;
  if (a3)
  {
    v11 = __error();
    v12 = *v11;
    v13 = _remote_service_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "bootstrap failed, unbootstrapping: %@", buf, 0xCu);
    }

    *__error() = v12;
    v14 = CFRetain(a3);
    *(v21[3] + 16) = v14;
    codex_unbootstrap(v7, v8, 1uLL, a4, _remote_service_install_cryptex_failure_unbootstrap_callback);
  }

  else
  {
    v15 = _remote_service_get_queue(v9);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___remote_service_install_cryptex_continue2_block_invoke;
    block[3] = &unk_1000733E8;
    v17 = v8;
    v18 = v10;
    v19 = &v20;
    dispatch_async(v15, block);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_10002ABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_install_cryptex_continue_block_invoke(void *a1)
{
  reply_with_cferr = _xpc_create_reply_with_cferr(a1[4], 0, a1[5]);
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(a1[6] + 8) + 24));
}

void _remote_service_install_cryptex_failure_unbootstrap_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v9 = __error();
  v10 = *v9;
  v11 = _remote_service_log(v9);
  v12 = v11;
  if (a3)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = a3;
      v13 = "unbootstrap: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v17, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    v13 = "unbootstrap [no error]";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 2;
    goto LABEL_6;
  }

  *__error() = v10;
  codex_uninstall(v8, v7, a4, _remote_service_install_cryptex_failure_uninstall_callback);
}

void ___remote_service_install_cryptex_continue2_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = *(a1 + 32);
  v4 = xpc_dictionary_create_empty();
  attr = quire_get_attr(v3);

  xpc_dictionary_set_string(v4, "remote-cryptex-identifier", *attr);
  xpc_dictionary_set_string(v4, "remote-cryptex-version", **(attr + 16));
  xpc_dictionary_set_value(empty, "remote-cryptex", v4);
  reply_with_cferr = _xpc_create_reply_with_cferr(*(a1 + 40), empty, 0);
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(*(a1 + 48) + 8) + 24));
}

void _remote_service_install_cryptex_failure_uninstall_callback(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = a4;
  v9 = *(a4 + 64);
  if (a3)
  {
    v10 = __error();
    v11 = *v10;
    v12 = _remote_service_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "uninstall: %@", buf, 0xCu);
    }

    v13 = __error();
    *v13 = v11;
  }

  else
  {
    v14 = __error();
    v15 = *v14;
    v16 = _remote_service_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "uninstall [no error]", buf, 2u);
    }

    v13 = __error();
    *v13 = v15;
  }

  v17 = _remote_service_get_queue(v13);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = ___remote_service_install_cryptex_failure_uninstall_callback_block_invoke;
  v19[3] = &unk_100073410;
  v20 = v9;
  v21 = v22;
  v18 = v9;
  dispatch_async(v17, v19);

  _Block_object_dispose(v22, 8);
}

void sub_10002B08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___remote_service_install_cryptex_failure_uninstall_callback_block_invoke(uint64_t a1)
{
  v2 = *(*(*(*(a1 + 40) + 8) + 24) + 16);
  reply_with_cferr = _xpc_create_reply_with_cferr(*(a1 + 32), 0, v2);
  _remote_service_send_reply(reply_with_cferr);
  pipeline_start_state_destroy((*(*(a1 + 40) + 8) + 24));

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10002B138(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___remote_service_uninstall_block_invoke(uint64_t a1)
{
  v2 = codex_copy_quire(*(*(*(a1 + 32) + 8) + 40), *(a1 + 48), *(a1 + 56));
  if (v2)
  {
    codex_unbootstrap(*(*(*(a1 + 32) + 8) + 40), v2, *(a1 + 64), *(*(*(a1 + 40) + 8) + 40), _remote_service_uninstall_continue);
  }

  else
  {
    v3 = __error();
    v4 = *v3;
    v5 = _remote_service_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      *buf = 136315394;
      v12 = v6;
      v13 = 1024;
      v14 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to find cryptex with identifier %s: %{darwin.errno}d", buf, 0x12u);
    }

    v7 = __error();
    *v7 = v4;
    v8 = _remote_service_get_queue(v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = ___remote_service_uninstall_block_invoke_74;
    v9[3] = &unk_100073438;
    v9[4] = *(a1 + 40);
    v10 = 2;
    dispatch_async(v8, v9);
  }
}

void _remote_service_uninstall_continue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = __error();
  v11 = *v10;
  v12 = _remote_service_log(v10);
  v13 = v12;
  if (a3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = a3;
      v14 = "unbootstrap: %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v18, v17);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    v14 = "unbootstrap [no error]";
    v15 = v13;
    v16 = OS_LOG_TYPE_DEBUG;
    v17 = 2;
    goto LABEL_6;
  }

  *__error() = v11;
  codex_uninstall(v9, v8, v7, _remote_service_uninstall_continue2);
}

void ___remote_service_uninstall_block_invoke_74(uint64_t a1)
{
  reply = _xpc_create_reply(*(*(*(a1 + 32) + 8) + 40), 0, *(a1 + 40));
  _remote_service_send_reply(reply);
}

void _remote_service_uninstall_continue2(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (a3)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(a3);
    v7 = __error();
    v8 = *v7;
    v9 = _remote_service_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "uninstall: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = __error();
    v8 = *v10;
    v9 = _remote_service_log(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "uninstall [no error]", buf, 2u);
    }

    TopLevelPosixError = 0;
  }

  v11 = __error();
  *v11 = v8;
  v12 = _remote_service_get_queue(v11);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = ___remote_service_uninstall_continue2_block_invoke;
  v14[3] = &unk_100073488;
  v15 = a4;
  v16 = TopLevelPosixError;
  v13 = a4;
  dispatch_async(v12, v14);
}

void ___remote_service_uninstall_continue2_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  reply = _xpc_create_reply(v2, empty, *(a1 + 40));

  _remote_service_send_reply(reply);
}

void ___remote_service_copy_installed_block_invoke(uint64_t a1)
{
  v2 = codex_copy_system();
  codex_barrier(v2, *(a1 + 32), _remote_service_list_continue);
}

void _remote_service_list_continue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = ___remote_service_list_continue_block_invoke;
  v15[3] = &unk_1000734B0;
  v16 = v5;
  v6 = xpc_array_create_empty();
  v17 = v6;
  v7 = v5;
  codex_installed_cryptex_apply(v4, v15);

  v9 = _remote_service_get_queue(v8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = ___remote_service_list_continue_block_invoke_4;
  v12[3] = &unk_1000734D8;
  v13 = v6;
  v14 = v3;
  v10 = v3;
  v11 = v6;
  dispatch_group_notify(v7, v9, v12);

  dispatch_group_leave(v7);
}

uint64_t ___remote_service_list_continue_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  cryptex_async();

  return 1;
}

void ___remote_service_list_continue_block_invoke_2(uint64_t a1)
{
  attr = quire_get_attr(*(a1 + 32));
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "remote-cryptex-identifier", *attr);
  xpc_dictionary_set_string(empty, "remote-cryptex-version", **(attr + 16));
  v4 = daemon_get_main_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___remote_service_list_continue_block_invoke_3;
  block[3] = &unk_100071FD0;
  v7 = *(a1 + 40);
  v8 = empty;
  v9 = *(a1 + 48);
  v5 = empty;
  dispatch_async(v4, block);
}

void ___remote_service_list_continue_block_invoke_3(uint64_t a1)
{
  xpc_array_append_value(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void ___remote_service_list_continue_block_invoke_4(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_value(empty, "remote-cryptex-array", *(a1 + 32));
  reply = _xpc_create_reply(*(a1 + 40), empty, 0);
  _remote_service_send_reply(reply);
}

uint64_t hdi_attach(unsigned int *a1, CFTypeRef *a2)
{
  connect = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  inputStruct = 0x1BEEFFEEDLL;
  outputStruct = 0;
  outputStructCnt = 4;
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  _CFCreateAssertImpl(MutableForCFTypes, "CFMutableDictionary");
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = _CFStringCreateFromUTF8String(v5);
    cf = 0;
  }

  else
  {
    v7 = CFUUIDCreate(0);
    _CFCreateAssertImpl(v7, "CFUUID");
    cf = v7;
    v6 = CFUUIDCreateString(0, v7);
    _CFCreateAssertImpl(v6, "CFString");
  }

  bzero(__s, 0x400uLL);
  CFDictionarySetValue(MutableForCFTypes, @"hdik-unique-identifier", v6);
  CFDictionarySetValue(MutableForCFTypes, @"autodiskmount", kCFBooleanFalse);
  if (a1[8])
  {
    bzero(__str, 0x400uLL);
    v8 = realpath_np();
    if (v8)
    {
      v9 = v8;
      v10 = *__error();
      v11 = *(a1 + 261);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v45) = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "realpath_np shdwfd: %{darwin.errno}d", buf, 8u);
      }

      v12 = 0;
      v13 = 0;
      Data = 0;
      v15 = 0;
      *__error() = v10;
      goto LABEL_17;
    }

    snprintf(__str, 0x400uLL, "%s/%s", __str, "shadow");
    v16 = *__error();
    v17 = *(a1 + 261);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v45 = __str;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "shdwpath = %s", buf, 0xCu);
    }

    *__error() = v16;
    v18 = strlen(__str);
    v13 = CFDataCreate(0, __str, v18);
    _CFCreateAssertImpl(v13, "CFData");
    CFDictionarySetValue(MutableForCFTypes, @"shadow-path", v13);
  }

  else
  {
    CFDictionarySetValue(MutableForCFTypes, @"write-protected", kCFBooleanTrue);
    v13 = 0;
  }

  v19 = realpath_np();
  if (v19)
  {
    v9 = v19;
    v20 = *__error();
    v21 = *(a1 + 261);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *__str = 67109120;
      *&__str[4] = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "realpath_np hdi_dmgfd: %{darwin.errno}d", __str, 8u);
    }

    v12 = 0;
    Data = 0;
    v15 = 0;
    *__error() = v20;
  }

  else
  {
    v23 = strlen(__s);
    v13 = CFDataCreate(0, __s, v23);
    _CFCreateAssertImpl(v13, "CFData");
    CFDictionarySetValue(MutableForCFTypes, @"image-path", v13);
    v12 = _CFNumberCreateFromInt32(*a1);
    _CFCreateAssertImpl(v12, "CFNumber");
    CFDictionarySetValue(MutableForCFTypes, @"image-fd", v12);
    v24 = *__error();
    v25 = *(a1 + 261);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *__str = 138412290;
      *&__str[4] = MutableForCFTypes;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "attach args = %@", __str, 0xCu);
    }

    *__error() = v24;
    Data = CFPropertyListCreateData(0, MutableForCFTypes, kCFPropertyListXMLFormat_v1_0, 0, 0);
    _CFCreateAssertImpl(Data, "CFData");
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    if (Length < 0)
    {
      _CFStringCopyUTF8String_cold_1();
    }

    *&v49 = BytePtr;
    *(&v49 + 1) = Length;
    v28 = IOServiceMatching("IOHDIXController");
    MatchingService = IOServiceGetMatchingService(0, v28);
    if (MatchingService)
    {
      v15 = MatchingService;
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        v30 = *__error();
        v31 = *(a1 + 261);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *__str = 67109120;
          *&__str[4] = 5;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "IOServiceOpen: %{mach.errno}x", __str, 8u);
        }

        *__error() = v30;
        v9 = 61;
      }

      else
      {
        v34 = IOConnectCallStructMethod(connect, 0, &inputStruct, 0x100uLL, &outputStruct, &outputStructCnt);
        if (v34)
        {
          v35 = v34;
          v36 = *__error();
          v37 = *(a1 + 261);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *__str = 67109120;
            *&__str[4] = v35;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "kIOHDIXControllerCreateDriveMethod: %{mach.errno}x", __str, 8u);
          }

          *__error() = v36;
          v9 = 83;
        }

        else
        {
          if (outputStructCnt != 4)
          {
            hdi_attach_cold_1(buf, __str);
          }

          v38 = *__error();
          v39 = *(a1 + 261);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *__str = 67109120;
            *&__str[4] = outputStruct;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "drive number: %d", __str, 8u);
          }

          *__error() = v38;
          v9 = 0;
          *a2 = CFRetain(v6);
        }
      }
    }

    else
    {
      v32 = *__error();
      v33 = *(a1 + 261);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315138;
        *&__str[4] = "IOHDIXController";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "could not find %s", __str, 0xCu);
      }

      v15 = 0;
      *__error() = v32;
      v9 = 78;
    }
  }

LABEL_17:
  if (connect && IOServiceClose(connect))
  {
    hdi_attach_cold_2(buf, __str);
  }

  if (v15 + 1 < 2)
  {
    if (!Data)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  mach_right_send_release();
  if (Data)
  {
LABEL_21:
    CFRelease(Data);
  }

LABEL_22:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableForCFTypes)
  {
    CFRelease(MutableForCFTypes);
  }

  return v9;
}

uint64_t hdi_find_attached(uint64_t a1, const void *a2, const char **a3, char *a4, char *a5)
{
  notification = 0;
  v33 = 0;
  cf = 0;
  v10 = IONotificationPortCreate(0);
  if (!v10)
  {
    hdi_find_attached_cold_4();
  }

  v11 = v10;
  v12 = IOServiceMatching("IOMedia");
  v13 = IOServiceAddMatchingNotification(v11, "IOServiceMatched", v12, 0, 0, &notification);
  v14 = *__error();
  v15 = *(a1 + 2088);
  if (v13)
  {
    if (os_log_type_enabled(*(a1 + 2088), OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
    }

    *__error() = v14;
    IONotificationPortDestroy(v11);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v31 = a3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "looking for drive: %@", buf, 0xCu);
    }

    v32 = 2;
    *__error() = v14;
    do
    {
      v17 = IOIteratorNext(notification);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v51 = 0u;
      memset(v52, 0, sizeof(v52));
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v39 = 0u;
      v19 = IORegistryEntrySearchCFProperty(v17, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v19)
      {
        v20 = v19;
        v21 = *__error();
        v22 = *(a1 + 2088);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *v36 = 138412290;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "found property: %@", v36, 0xCu);
        }

        *__error() = v21;
        if (!CFEqual(a2, v20) || IOObjectConformsTo(v18, "AppleAPFSVolume") || IOObjectConformsTo(v18, "AppleAPFSMedia") || IOObjectConformsTo(v18, "AppleAPFSContainerScheme") || IOObjectConformsTo(v18, "AppleAPFSContainer"))
        {
          v23 = 0;
        }

        else
        {
          v24 = _hdi_copy_device_nodes(*(a1 + 2088), v18, v31, &cf, &v33);
          if (v24)
          {
            v32 = v24;
            v25 = *__error();
            v26 = *(a1 + 2088);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v36 = 67109120;
              LODWORD(v37) = v32;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", v36, 8u);
            }

            v23 = 0;
            *__error() = v25;
          }

          else
          {
            UTF8String = _CFStringGetUTF8String(cf, buf, 255);
            if (!UTF8String)
            {
              hdi_find_attached_cold_1();
            }

            snprintf(a4, 0x400uLL, "%s%s", "/dev/", UTF8String);
            v28 = _CFStringGetUTF8String(v33, buf, 255);
            if (!v28)
            {
              hdi_find_attached_cold_1();
            }

            snprintf(a5, 0x400uLL, "%s%s", "/dev/", v28);
            v32 = 0;
            v23 = 1;
          }
        }

        CFRelease(v20);
      }

      else
      {
        v23 = 0;
      }

      if (IOObjectRelease(v18))
      {
        hdi_find_attached_cold_3(v36, buf);
      }
    }

    while (!v23);
    v29 = v33;
    IONotificationPortDestroy(v11);
    if (v29)
    {
      CFRelease(v29);
    }

    v16 = v32;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t _hdi_copy_device_nodes(NSObject *a1, io_object_t object, const char **a3, void *a4, void *a5)
{
  v8 = object;
  if (IOObjectRetain(object))
  {
    _hdi_copy_device_nodes_cold_1(v47, buf);
  }

  entry = v8;
  if (IOObjectRetain(v8))
  {
    _hdi_copy_device_nodes_cold_1(v47, buf);
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

  v11 = kCFAllocatorDefault;
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"BSD Name", kCFAllocatorDefault, 0);
  if (!CFProperty || (v13 = CFProperty, v14 = CFGetTypeID(CFProperty), v14 != CFStringGetTypeID()))
  {
    _hdi_copy_device_nodes_cold_6();
  }

  v40 = v10;
  v42 = a3;
  v43 = a5;
  v15 = *__error();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "subdevice node = %@", buf, 0xCu);
  }

  v41 = v13;
  v44 = 0;
  *__error() = v15;
  v16 = kCFBooleanTrue;
  v17 = @"Whole";
  do
  {
    v18 = IORegistryEntryCreateCFProperty(entry, v17, v11, 0);
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFBooleanGetTypeID())
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *__error();
    v23 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v21 == v16)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "found whole disk node", buf, 2u);
      }

      *__error() = v22;
      v30 = IORegistryEntryCreateCFProperty(entry, @"BSD Name", v11, 0);
      if (v30)
      {
        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFStringGetTypeID())
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        if (!a4)
        {
LABEL_57:
          _hdi_copy_device_nodes_cold_5();
        }
      }

      else
      {
        v33 = 0;
        if (!a4)
        {
          goto LABEL_57;
        }
      }

      v38 = *__error();
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "devnode = %@", buf, 0xCu);
      }

      v44 = v33;
      v28 = 0;
      v29 = 0;
      *__error() = v38;
      v24 = entry;
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "not whole disk node", buf, 2u);
      }

      *__error() = v22;
      v24 = entry;
      ParentEntry = IORegistryEntryGetParentEntry(entry, "IOService", &entry);
      if (ParentEntry)
      {
        v26 = ParentEntry;
        if (ParentEntry == -536870208)
        {
          v27 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "found root node, stopping", buf, 2u);
          }

          v28 = 0;
          *__error() = v27;
          v29 = 2;
        }

        else
        {
          v34 = v16;
          v35 = v17;
          v36 = a4;
          v37 = *__error();
          if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", buf, 8u);
          }

          v28 = 0;
          *__error() = v37;
          v29 = 83;
          a4 = v36;
          v17 = v35;
          v16 = v34;
          v11 = kCFAllocatorDefault;
        }
      }

      else
      {
        v29 = 35;
        v28 = 1;
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v24 && IOObjectRelease(v24))
    {
      hdi_find_attached_cold_3(v47, buf);
    }
  }

  while ((v28 & 1) != 0);
  if (v21 == v16)
  {
    if (v42)
    {
      *v42 = v40;
    }

    *a4 = v44;
    *v43 = v41;
  }

  if (objecta && IOObjectRelease(objecta))
  {
    hdi_find_attached_cold_3(v47, buf);
  }

  return v29;
}

uint64_t hdi_mount(unsigned int *a1, int a2, uint64_t a3)
{
  v6 = *a1;
  v7 = os_log_create("com.apple.libcryptex", "hdi");
  v8 = v7;
  if (!*(a3 + 2088))
  {
    *(a3 + 2088) = v7;
  }

  if ((*a3 & 0x80000000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v9 = _hdi_mount_slow(a3);
    v10 = *__error();
    v11 = *(a3 + 2088);
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "hdi_mount_slow: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v10;
      goto LABEL_122;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a3 + 1057;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "attached as: %s", buf, 0xCu);
    }

    *__error() = v10;
    v12 = *(a3 + 4);
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    v14 = *__error();
    v20 = *(a3 + 2088);
    v9 = 22;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *buf = 67109120;
    *&buf[4] = 22;
    v17 = "FS type not specified: %{darwin.errno}d";
LABEL_114:
    v18 = v20;
    v19 = 8;
LABEL_115:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_116:
    *__error() = v14;
    if ((v12 & 0x80000000) == 0)
    {
      if (ioctl(v12, 0x20006415uLL))
      {
        v71 = *__error();
        v72 = *(a3 + 2088);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = *__error();
          *buf = 67109120;
          *&buf[4] = v73;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "failed to clean up device: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v71;
      }

      *(a3 + 33) = 0;
      *(a3 + 1057) = 0;
      *(a3 + 4) = -1;
    }

    goto LABEL_122;
  }

  if (!strcmp(*(a3 + 24), "hfs"))
  {
    v91 = v6;
    v93 = v12;
    bzero(v104, 0x400uLL);
    v98 = 511;
    v95 = a3 + 1057;
    v96 = getuid();
    v97 = getgid();
    v99 = xmmword_1000593C0;
    v100 = 0;
    v21 = *__error();
    v22 = *(a3 + 2088);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a3 + 1057;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "mounting device = %s", buf, 0xCu);
    }

    *__error() = v21;
    if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_DEBUG) && !realpath_np())
    {
      v23 = *__error();
      v24 = *(a3 + 2088);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = v104;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "mount point = %s", buf, 0xCu);
      }

      *__error() = v23;
    }

    if (gettimeofday(0, &v99) == -1)
    {
      hdi_mount_cold_5(&__buf, buf);
    }

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
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(&__buf, 0, sizeof(__buf));
    v25 = open((a3 + 1057), 4);
    v26 = v25;
    v12 = v93;
    if (v25 < 0)
    {
      v9 = *__error();
      goto LABEL_106;
    }

    if (pread(v25, &__buf, 0x200uLL, 1024) < 162)
    {
      v9 = 96;
LABEL_107:
      if (close(v26) == -1)
      {
        daemon_init_cold_13(&v154, buf);
      }

LABEL_108:
      v69 = *__error();
      v70 = *(a3 + 2088);
      if (v9)
      {
        if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "could not get encoding: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v69;
      }

      else
      {
        v75 = a2 | 0x100001;
        if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_DEBUG))
        {
          v76 = *(a3 + 24);
          *buf = 136315650;
          *&buf[4] = v76;
          *&buf[12] = 1024;
          *&buf[14] = v91;
          *&buf[18] = 1024;
          *&buf[20] = v75;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "mount args: fs = %s, fd = %d, flags = %#x", buf, 0x18u);
        }

        *__error() = v69;
        v77 = *(a3 + 2088);
        bzero(buf, 0x400uLL);
        memset(&__buf, 0, sizeof(__buf));
        v42 = v91;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          if (fstat(v91, &__buf) == -1)
          {
            v82 = *__error();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v83 = *__error();
              v154.vfc_reserved1 = 136315650;
              *v154.vfc_name = "mntfd";
              *&v154.vfc_name[8] = 1024;
              *&v154.vfc_name[10] = v91;
              *&v154.vfc_name[14] = 1024;
              v154.vfc_typenum = v83;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", &v154, 0x18u);
            }

            *__error() = v82;
          }

          else
          {
            if (fcntl(v91, 50, buf))
            {
              v78 = __error();
              v79 = strerror(*v78);
              snprintf(buf, 0x400uLL, "[%s]", v79);
            }

            v80 = __buf.st_mode >> 12;
            if (v80 == 7)
            {
              v81 = "[unknown]";
            }

            else
            {
              v81 = off_100073970[v80 ^ 8];
            }

            v84 = os_flagset_copy_string();
            v85 = *__error();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              v154.vfc_reserved1 = 136316418;
              *v154.vfc_name = "mntfd";
              *&v154.vfc_name[8] = 1024;
              *&v154.vfc_name[10] = v91;
              *&v154.vfc_name[14] = 2080;
              *&v154.vfc_typenum = v81;
              LOWORD(v154.vfc_flags) = 2048;
              *(&v154.vfc_flags + 2) = __buf.st_size;
              HIWORD(v154.vfc_reserved3) = 2080;
              v155 = v84;
              v156 = 2080;
              v157 = buf;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", &v154, 0x3Au);
            }

            *__error() = v85;
            free(v84);
            v42 = v91;
          }
        }

        if (!fmount("hfs", v42, v75, &v95))
        {
          goto LABEL_146;
        }

        v9 = *__error();
        v86 = *__error();
        v87 = *(a3 + 2088);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", buf, 8u);
        }

        *__error() = v86;
        v12 = v93;
        if (!v9)
        {
          goto LABEL_146;
        }
      }

      v14 = *__error();
      v20 = *(a3 + 2088);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_116;
      }

      *buf = 67109120;
      *&buf[4] = v9;
      v17 = "mount hfs failed: %{darwin.errno}d";
      goto LABEL_114;
    }

    v37 = bswap32(LOWORD(__buf.st_dev));
    v38 = HIWORD(v37);
    LOWORD(__buf.st_dev) = HIWORD(v37);
    LOWORD(__buf.st_lspare) = bswap32(LOWORD(__buf.st_lspare)) >> 16;
    v39 = bswap32(HIDWORD(__buf.st_blocks));
    HIDWORD(__buf.st_blocks) = v39;
    if (v38 != 18475 && v38 != 18520)
    {
      v47 = *__error();
      v48 = *(a3 + 2088);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = LOWORD(__buf.st_dev);
        *&buf[8] = 1024;
        *&buf[10] = LOWORD(__buf.st_lspare);
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "filesystem unsupported or corrupt: drSigWord = %#hx, drEmbedSigWord = %#hx", buf, 0xEu);
      }

      *__error() = v47;
      v9 = 92;
      goto LABEL_107;
    }

    if (v39 >> 8 == 6647395)
    {
      v40 = v39;
      goto LABEL_97;
    }

    v131 = 1;
    *v130 = 3;
    memset(&v154, 0, sizeof(v154));
    v103 = -1;
    v102 = 4;
    if (getvfsbyname("hfs", &v154) == -1)
    {
      hdi_mount_cold_5(v101, buf);
    }

    v130[1] = v154.vfc_typenum;
    if ((sysctl(v130, 3u, &v103, &v102, 0, 0) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v43 = *__error();
    if (v43 && v43 != 45 && *__error())
    {
      hdi_mount_cold_1(v101, buf);
    }

    v40 = v103;
    if ((v103 + 1) > 1)
    {
LABEL_97:
      if (v40 == 4)
      {
LABEL_98:
        v9 = 0;
        HIDWORD(v98) = v40;
      }

      else
      {
        v64 = -1;
        v65 = &qword_1000593F8;
        while (v64 != 36)
        {
          v66 = *v65;
          v65 += 3;
          ++v64;
          if (v66 == v40)
          {
            if (v64 < 0x25)
            {
              goto LABEL_98;
            }

            break;
          }
        }

        v67 = *__error();
        v68 = *(a3 + 2088);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unsupported encoding: %u", buf, 8u);
        }

        *__error() = v67;
        v9 = 79;
        v12 = v93;
      }

LABEL_106:
      if (v26 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

    bzero(buf, 0x400uLL);
    v44 = getpwuid(0);
    if (!v44)
    {
      hdi_mount_cold_4(v130, &v154);
    }

    snprintf(buf, 0x400uLL, "%s/%s", v44->pw_dir, "/.CFUserTextEncoding");
    v45 = open(buf, 0);
    if ((v45 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v90 = 0;
    v46 = *__error();
    if (v46 > 3)
    {
      if (v46 != 4 && v46 != 13)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (!v46)
      {
LABEL_80:
        v54 = read(v45, buf, 0x400uLL);
        if (v54)
        {
          v88 = v45;
          if (v54 < 0)
          {
            v59 = *__error();
            v60 = *(a3 + 2088);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = *__error();
              v154.vfc_reserved1 = 67109120;
              *v154.vfc_name = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "error reading encoding file: %{darwin.errno}d", &v154, 8u);
            }

            v90 = 0;
            *__error() = v59;
          }

          else
          {
            buf[v54] = 0;
            v55 = *__error();
            v56 = *(a3 + 2088);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v154.vfc_reserved1 = 136315138;
              *v154.vfc_name = buf;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "read encoding: %s", &v154, 0xCu);
            }

            *__error() = v55;
            v90 = strtol(buf, 0, 0);
          }

          v45 = v88;
        }

        else
        {
          v57 = *__error();
          v58 = *(a3 + 2088);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v154.vfc_reserved1) = 0;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "encoding file empty", &v154, 2u);
          }

          v90 = 0;
          *__error() = v57;
        }

        goto LABEL_92;
      }

      if (v46 != 2)
      {
LABEL_79:
        if (*__error())
        {
          hdi_mount_cold_1(v130, &v154);
        }

        goto LABEL_80;
      }
    }

LABEL_92:
    v62 = *__error();
    v63 = *(a3 + 2088);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      v154.vfc_reserved1 = 67109120;
      *v154.vfc_name = v90;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "returning encoding: %u", &v154, 8u);
    }

    *__error() = v62;
    if (v45 != -1 && close(v45) == -1)
    {
      daemon_init_cold_13(v130, &v154);
    }

    v12 = v93;
    v40 = v90;
    goto LABEL_97;
  }

  if (strcmp(v13, "apfs"))
  {
    v14 = *__error();
    v15 = *(a3 + 2088);
    v9 = 22;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    v16 = *(a3 + 24);
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = 22;
    v17 = "Invalid FS type: %s: %{darwin.errno}d";
    v18 = v15;
    v19 = 18;
    goto LABEL_115;
  }

  v27 = v6;
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  *&buf[12] = 0u;
  v28 = *(a3 + 2108);
  v29 = *(a3 + 2100);
  v92 = *(a3 + 2104);
  v89 = *(a3 + 2112);
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  memset(&__buf, 0, 56);
  if (*(a3 + 32))
  {
    v30 = 0x100000;
  }

  else
  {
    v30 = 1048577;
  }

  v31 = v30 | a2;
  *buf = a3 + 1057;
  v152 = getuid();
  v153 = getgid();
  *&buf[16] = 1;
  *&buf[8] = v31;
  if (*(a3 + 2096) == 1)
  {
    file = _read_file(v28, v104);
    if (file)
    {
      v9 = file;
      v33 = *__error();
      v34 = *(a3 + 2088);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v154.vfc_reserved1 = 67109120;
        *v154.vfc_name = v9;
        v35 = "Failed to read im4m.: %{darwin.errno}d";
        v36 = v34;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v35, &v154, 8u);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    v9 = _read_file(v29, &__buf);
    v33 = *__error();
    v41 = *(a3 + 2088);
    if (v9)
    {
      if (os_log_type_enabled(*(a3 + 2088), OS_LOG_TYPE_ERROR))
      {
        v154.vfc_reserved1 = 67109120;
        *v154.vfc_name = v9;
        v35 = "Failed to read root volume hash.: %{darwin.errno}d";
        v36 = v41;
        goto LABEL_45;
      }

LABEL_46:
      v42 = v27;
LABEL_72:
      *__error() = v33;
      goto LABEL_74;
    }

    v94 = v12;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v154.vfc_reserved1 = 134217984;
      *v154.vfc_name = *(&v104[0] + 1);
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "im4m len: %lu", &v154, 0xCu);
    }

    *__error() = v33;
    v49 = *__error();
    v50 = *(a3 + 2088);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v154.vfc_reserved1 = 134217984;
      *v154.vfc_name = __buf.st_ino;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "im4p len: %lu", &v154, 0xCu);
    }

    *__error() = v49;
    *&buf[16] = 8;
    v12 = v94;
    v151 = __PAIR64__(v89, v92);
    v150 = v104[0];
    v149 = *&__buf.st_dev;
  }

  v42 = v27;
  if (fmount("apfs", v27, v31, buf))
  {
    v9 = *__error();
    v33 = *__error();
    v52 = *(a3 + 2088);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v154.vfc_reserved1 = 67109120;
      *v154.vfc_name = v9;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", &v154, 8u);
    }

    goto LABEL_72;
  }

  v9 = 0;
LABEL_74:
  buff_destroy(v104, v51);
  buff_destroy(&__buf, v53);
  if (v9)
  {
    v14 = *__error();
    v20 = *(a3 + 2088);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v17 = "mount apfs failed: %{darwin.errno}d";
    goto LABEL_114;
  }

LABEL_146:
  if (close(v42) == -1)
  {
    hdi_mount_cold_7(v104, buf);
  }

  v9 = 0;
  *a1 = -1;
LABEL_122:
  if (*(a3 + 2088) == v8)
  {
    *(a3 + 2088) = 0;
  }

  if (v8)
  {
    os_release(v8);
  }

  return v9;
}

uint64_t _hdi_mount_slow(uint64_t a1)
{
  cf = 0;
  bzero(v18, 0x400uLL);
  v2 = hdi_attach(a1, &cf);
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    v5 = *(a1 + 2088);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "attach failed: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v4;
    v6 = cf;
    if (!cf)
    {
      return v3;
    }

LABEL_13:
    CFRelease(v6);
    return v3;
  }

  v6 = cf;
  attached = hdi_find_attached(a1, cf, (a1 + 24), v18, (a1 + 1057));
  if (attached)
  {
    v3 = attached;
    v8 = *__error();
    v9 = *(a1 + 2088);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "could not find attached media: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = open(v18, 0);
    *(a1 + 4) = v10;
    if ((v10 & 0x80000000) == 0)
    {
      __strlcpy_chk();
      v3 = 0;
      if (!v6)
      {
        return v3;
      }

      goto LABEL_13;
    }

    v12 = *__error();
    v13 = *(a1 + 2088);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "open: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v3 = *__error();
    if (v6)
    {
      goto LABEL_13;
    }
  }

  return v3;
}

uint64_t hdi_copy_mounted(void *a1, void *a2, NSObject *a3)
{
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
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
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
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "getfsstat: %{darwin.errno}d", buf, 8u);
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
    hdi_find_attached_cold_4();
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
          _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "found property: %@", buf, 0xCu);
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
            _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", buf, 8u);
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
            _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "found dev nodes: dev = %@, sub = %@", buf, 0x16u);
          }

          *__error() = v27;
          if (!_CFStringGetUTF8String(v24, v43, 255))
          {
            hdi_find_attached_cold_1();
          }

          if (!_CFStringGetUTF8String(cf, v42, 255))
          {
            hdi_find_attached_cold_1();
          }

          v33 = a3;
          v28 = v38;
          if (!_CFStringGetUTF8String(v38, v41, 255))
          {
            hdi_find_attached_cold_1();
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
        hdi_find_attached_cold_3(v43, buf);
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
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification: %{mach.errno}x", buf, 8u);
  }

  *__error() = v21;
  v10 = 0xFFFFFFFFLL;
LABEL_58:
  IONotificationPortDestroy(v17);
LABEL_59:
  if (notification && IOObjectRelease(notification))
  {
    hdi_find_attached_cold_3(v43, buf);
  }

  free(v15);
  free(v13);
  return v10;
}

uint64_t hdi_detach(unsigned int *a1, NSObject *a2)
{
  v4 = *a1;
  v15 = *a1;
  bzero(v20, 0x400uLL);
  v5 = realpath_np();
  v6 = *__error();
  if (!v5)
  {
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = v20;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "detaching: path = %s, fd = %d", buf, 0x12u);
    }

    *__error() = v6;
    v8 = 5;
    while (1)
    {
      if ((ioctl(v4, 0x20006415uLL, 0) & 0x80000000) == 0)
      {
        *__error() = 0;
      }

      v9 = *__error();
      v6 = *__error();
      if (v9 != 9)
      {
        break;
      }

      if ((v15 & 0x80000000) == 0)
      {
        close_drop_np();
      }

      v15 = open(v20, 0);
      v10 = *__error();
      v11 = os_log_type_enabled(a2, OS_LOG_TYPE_INFO);
      if (v15 < 0)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "got EBADF and disk is gone, detach succeeded", buf, 2u);
        }

        LODWORD(v6) = v10;
LABEL_29:
        *__error() = v6;
        goto LABEL_30;
      }

      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "got EBADF but disk still present, retrying detach", buf, 2u);
      }

      *__error() = v10;
      v4 = v15;
      *a1 = v15;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    if (!v9)
    {
      if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "detach succeeded", buf, 2u);
      }

      goto LABEL_29;
    }

LABEL_22:
    if (v6)
    {
      v12 = *__error();
      if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v17) = v6;
        _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ioctl: DKIOCEJECT: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v6;
    }

LABEL_30:
    v13 = *__error();
    if (os_log_type_enabled(a2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Finished quire detach.", buf, 2u);
    }

    *__error() = v13;
    goto LABEL_33;
  }

  v7 = *__error();
  if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v17) = v6;
    _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "realpath_np: %{darwin.errno}d", buf, 8u);
  }

  *__error() = v7;
  if (!v6)
  {
LABEL_33:
    close_drop_np();
    return 0;
  }

  return v6;
}