uint64_t init_tailspin()
{
  v0 = is_apple_internal_setting();
  tailspin_ondisk_config = get_tailspin_ondisk_config();
  if (tailspin_ondisk_config)
  {
    v2 = strncmp("Photos", (tailspin_ondisk_config + 8361), 6uLL);
    v3 = tailspin_enabled_get();
    v4 = __error();
    v5 = *v4;
    v6 = sub_CE8(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v39 = v2 == 0;
      *&v39[4] = 1024;
      *&v39[6] = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "is Photos: %{BOOL}d, is tailspin enabled: %{BOOL}d", buf, 0xEu);
    }

    *__error() = v5;
    v7 = (v2 == 0) & (v3 ^ 1);
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = __error();
    v9 = *v8;
    v10 = sub_CE8(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Not Photos, no on-disk config", buf, 2u);
    }

    v7 = 0;
    *__error() = v9;
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
    v11 = "Didn't";
    goto LABEL_18;
  }

LABEL_11:
  bzero(buf, 0x400uLL);
  v33 = 1024;
  sysctlbyname("kern.osversion", buf, &v33, 0, 0);
  v12 = [NSString stringWithUTF8String:buf];
  v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.tailspin"];
  v14 = [v13 stringForKey:@"tailspin_configuration_last_build_reset"];
  v15 = __error();
  v16 = *v15;
  v17 = sub_CE8(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 138543618;
    v35 = v14;
    v36 = 2114;
    v37 = v12;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "last build reset: %{public}@, current build: %{public}@", v34, 0x16u);
  }

  *__error() = v16;
  if (v14 && ([v14 isEqualToString:v12] & 1) != 0)
  {
    v11 = "Didn't";
  }

  else
  {
    unlink("/var/db/tailspin_config.plist");
    [v13 setObject:v12 forKey:@"tailspin_configuration_last_build_reset"];
    v11 = "Did";
  }

LABEL_18:
  v18 = __error();
  v19 = *v18;
  v20 = sub_CE8(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *v39 = v11;
    *&v39[8] = 1024;
    v40 = v0;
    v41 = 1024;
    v42 = v7;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}s reset on-disk tailspin configuration. Apple-Internal: %{BOOL}d, Is Photos: %{BOOL}d", buf, 0x18u);
  }

  *__error() = v19;
  v21 = get_tailspin_ondisk_config();
  tailspin_profile_config = get_tailspin_profile_config();
  tailspin_tasking_config = get_tailspin_tasking_config();
  result = tailspin_enabled_get_default();
  if (!v21)
  {
    v25 = result;
    v28 = tailspin_tasking_config | tailspin_profile_config;
LABEL_35:
    v29 = v28 == 0;
    goto LABEL_36;
  }

  result = tailspin_enabled_get();
  v25 = result;
  v26 = 0;
  v27 = v21[2];
  if (v27 > 1)
  {
    if (v27 != 2)
    {
      if (v27 == 3)
      {
        if (tailspin_profile_config)
        {
          result = bcmp(v21, tailspin_profile_config, 0x2118uLL);
          if (!result)
          {
            goto LABEL_53;
          }
        }

        v26 = 1;
        goto LABEL_41;
      }

LABEL_39:
      if ((v26 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v29 = tailspin_profile_config == 0;
LABEL_36:
    v26 = !v29;
    goto LABEL_39;
  }

  if (!v27)
  {
    v28 = tailspin_profile_config | tailspin_tasking_config;
    goto LABEL_35;
  }

  if (v27 != 1)
  {
    goto LABEL_39;
  }

  v26 = 1;
  if (!tailspin_profile_config)
  {
    if (tailspin_tasking_config)
    {
      result = bcmp(tailspin_tasking_config, v21, 0x2118uLL);
      if (!result)
      {
LABEL_53:
        v26 = 0;
LABEL_40:
        if (!v25)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_41:
  v30 = __error();
  v31 = *v30;
  v32 = sub_CE8(v30);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_E0C(v32);
  }

  *__error() = v31;
  result = tailspin_poke();
  if (v26)
  {
    result = tailspin_resolve_configs();
  }

LABEL_45:
  if (v21)
  {
    result = tailspin_config_free();
  }

  if (tailspin_profile_config)
  {
    result = tailspin_config_free();
  }

  if (tailspin_tasking_config)
  {
    return tailspin_config_free();
  }

  return result;
}

id sub_CE8(uint64_t a1)
{
  if (qword_4340 != -1)
  {
    sub_E50();
  }

  v2 = qword_4338;

  return v2;
}

void sub_D2C(id a1)
{
  v1 = os_log_create("com.apple.tailspin", "library");
  v2 = qword_4338;
  qword_4338 = v1;

  v3 = qword_4338;
  if (!v3)
  {
    sub_E64();
  }
}

uint64_t sub_D8C(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  result = snprintf(byte_4348, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_4348[result], 1024 - result, a2, va);
  }

  qword_41F8 = byte_4348;
  return result;
}

void sub_E64()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
  __error();
}