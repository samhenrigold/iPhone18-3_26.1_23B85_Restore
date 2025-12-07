@interface SC
@end

@implementation SC

__CFBundle *___SC_getApplicationBundleID_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  Identifier = CFBundleGetIdentifier(result);
  _SC_getApplicationBundleID_bundleID = Identifier;
  if (Identifier)
  {
    CFRetain(Identifier);
  }

  else
  {
    v3 = CFBundleCopyExecutableURL(v1);
    if (v3)
    {
      v4 = v3;
      _SC_getApplicationBundleID_bundleID = CFURLCopyPath(v3);
      CFRelease(v4);
    }
  }

  if (!_SC_getApplicationBundleID_bundleID)
  {
    goto LABEL_10;
  }

  result = CFEqual(_SC_getApplicationBundleID_bundleID, @"/");
  if (!result)
  {
LABEL_9:
    if (_SC_getApplicationBundleID_bundleID)
    {
      return result;
    }

    goto LABEL_10;
  }

  CFRelease(_SC_getApplicationBundleID_bundleID);
  _SC_getApplicationBundleID_bundleID = 0;
LABEL_10:
  v5 = getpid();
  result = CFStringCreateWithFormat(0, 0, @"Unknown(%d)", v5);
  _SC_getApplicationBundleID_bundleID = result;
  return result;
}

char *___SC_isInstallEnvironment_block_invoke()
{
  result = getenv("__OSINSTALL_ENVIRONMENT");
  _SC_isInstallEnvironment_is_install = result != 0;
  return result;
}

uint64_t ___SC_isAppleInternal_block_invoke()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal = result;
  return result;
}

unint64_t ___SC_dlopen_block_invoke()
{
  result = dyld_process_is_restricted();
  if ((result & 1) == 0)
  {
    result = getenv("DYLD_IMAGE_SUFFIX");
    _SC_dlopen_suffix = result;
    if (result)
    {
      v1 = result;
      result = strlen(result);
      if (result < 2 || *v1 != 95)
      {
        _SC_dlopen_suffix = 0;
      }
    }
  }

  return result;
}

void ___SC_hw_model_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  *v13 = 0x200000006;
  v12 = 64;
  *cStr = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (sysctl(v13, 2u, cStr, &v12, 0, 0))
  {
    v0 = _SC_LOG_DEFAULT();
    v1 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v0, v1))
    {
      v2 = _os_log_pack_size();
      v3 = &v13[-2] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = __error();
      v5 = _os_log_pack_fill(v3, v2, *v4, &dword_1AD2AD000, "sysctl() CTL_HW/HW_MODEL failed: %s", v12);
      v6 = __error();
      v7 = strerror(*v6);
      *v5 = 136315138;
      *(v5 + 4) = v7;
      __SC_log_send(5, v0, v1, v3);
    }
  }

  else
  {
    HIBYTE(v17) = 0;
    _SC_hw_model_model = CFStringCreateWithCString(0, cStr, 0x600u);
    v8 = index(cStr, 44);
    if (v8)
    {
      *v8 = 0;
    }

    v9 = strlen(cStr);
    v11 = v9 - 1;
    for (i = v9 == 1; ; i = v11 == 0)
    {
      v12 = v11;
      if (i || (cStr[v11] - 48) > 9)
      {
        break;
      }

      cStr[v11--] = 0;
    }

    _SC_hw_model_model_trimmed = CFStringCreateWithCString(0, cStr, 0x600u);
  }
}

uint64_t ___SC_isAppleInternal_block_invoke_0()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal_0 = result;
  return result;
}

void ___SC_crash_once_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

void ___SC_crash_once_block_invoke_0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

uint64_t ___SC_isAppleInternal_block_invoke_1()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal_1 = result;
  return result;
}

void ___SC_crash_once_block_invoke_1(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

uint64_t ___SC_isAppleInternal_block_invoke_2()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal_2 = result;
  return result;
}

uint64_t ___SC_isAppleInternal_block_invoke_3()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal_3 = result;
  return result;
}

void ___SC_crash_once_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

void ___SC_crash_once_block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

void ___SC_crash_once_block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  _SC_crash(v2, v3, v4);
}

uint64_t ___SC_isAppleInternal_block_invoke_4()
{
  result = os_variant_has_internal_content();
  _SC_isAppleInternal_isInternal_4 = result;
  return result;
}

@end