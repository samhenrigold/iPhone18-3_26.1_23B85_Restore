uint64_t _boot_ephemeral_enforceable(const char **a1, uint64_t *a2)
{
  v4 = a2[2];
  result = odometer_policy_get_chip_property(a1, v4);
  if (!result)
  {
    v9 = *a2;
    name = chip_get_name(a2[2]);
    v16 = *a1;
    v8 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: chip has no property for policy", name, v16);
    return v8;
  }

  if (*(v4 + 208))
  {
    if (manifest_get_restore_info(a2[1]))
    {
      v6 = *a2;
      v14 = chip_get_name(a2[2]);
      v15 = *a1;
      v7 = "odometer[%s:%s]: boot object has restore info";
    }

    else if (*(a2 + 480))
    {
      if (*(a2 + 432))
      {
        v11 = odometer_enforce_property(a2, a1, *(v4 + 208), a2 + 190);
        v6 = *a2;
        v12 = chip_get_name(a2[2]);
        if (!v11)
        {
          expert_log(v6, 1uLL, "odometer[%s:%s]: policy is enforceable", v12, *a1);
          return 0;
        }

        v14 = v12;
        v15 = *a1;
        v7 = "odometer[%s:%s]: switch constraint not satisfied";
      }

      else
      {
        v6 = *a2;
        v14 = chip_get_name(a2[2]);
        v15 = *a1;
        v7 = "odometer[%s:%s]: no manifest constraint for policy selection";
      }
    }

    else
    {
      v6 = *a2;
      v14 = chip_get_name(a2[2]);
      v15 = *a1;
      v7 = "odometer[%s:%s]: manifest has no constraint for policy";
    }

    v8 = 1;
    expert_log(v6, 1uLL, v7, v14, v15);
    return v8;
  }

  if (v4 < v4 + 264)
  {
    v13 = chip_get_name(v4);
    __panic_npx("panic: illegal chip configuration: %s", v13);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_ephemeral_enforce(const char **a1, uint64_t *a2)
{
  v25[3] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, a2[2]);
  if (!*(a2 + 480))
  {
    __panic_npx("panic: optional not set");
  }

  v6 = chip_property;
  v7 = a2[2];
  v8 = *(a2 + 218);
  memset(v25, 0, 24);
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  live_nonce = odometer_query_live_nonce(a2, a1, v8, v25);
  if (live_nonce)
  {
    v10 = live_nonce;
    v11 = *a2;
    name = chip_get_name(a2[2]);
    expert_log(v11, 0, "odometer[%s:%s]: failed to query nonce: %d", name, *a1, v10);
  }

  else
  {
    v13 = expert_entangle_nonce(v4, v7, v8, v25, v24);
    if (v13)
    {
      v10 = v13;
      v14 = *a2;
      chip_get_name(a2[2]);
      expert_log(v14, 0, "odometer[%s:%s]: failed to entangle nonce: %d");
    }

    else
    {
      odometer_compute_nonce_hash(v4, v7, v24, v23);
      if (!property_constrain_digest(v6, v4, (a2 + 110), v23, v15, v16, v17, v18))
      {
        v21 = *a2;
        v22 = chip_get_name(a2[2]);
        expert_log(v21, 1uLL, "odometer[%s:%s]: manifest is current", v22, *a1);
        return 0;
      }

      v10 = *(a1 + 6);
      v19 = *a2;
      chip_get_name(a2[2]);
      expert_log(v19, 0, "odometer[%s:%s]: anti-replay violation: %d");
    }
  }

  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

void __panic_npx(const char *a1, ...)
{
  va_start(va, a1);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v3, va);
  vsnprintf(__str, 0x800uLL, a1, va);
  _os_crash();
  __break(1u);
}

unint64_t darwin_read_iokit_node(io_registry_entry_t a1, const char *a2, void *a3, size_t *a4)
{
  v7 = *a4;
  v8 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  CFProperty = IORegistryEntryCreateCFProperty(a1, v8, 0, 0);
  if (!CFProperty)
  {
    v14 = 2;
LABEL_10:
    CFRelease(v9);
    return v14;
  }

  v11 = CFProperty;
  v12 = CFGetTypeID(CFProperty);
  if (v12 != CFDataGetTypeID())
  {
    v14 = 96;
    goto LABEL_9;
  }

  Length = CFDataGetLength(v11);
  if (HIDWORD(Length))
  {
    v14 = 34;
LABEL_9:
    CFRelease(v11);
    goto LABEL_10;
  }

  v16 = Length;
  if (v7 < Length)
  {
    v14 = 84;
    goto LABEL_9;
  }

  result = CFDataGetBytePtr(v11);
  if (result <= result + v7 && v16 <= *a4)
  {
    result = memcpy(a3, result, v16);
    if (v16 <= *a4)
    {
      v14 = 0;
      *a4 = v16;
      goto LABEL_9;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t darwin_read_iokit_BOOL(io_registry_entry_t a1, const char *a2, BOOL *a3)
{
  v8 = 0;
  v7 = 4;
  result = darwin_read_iokit_node(a1, a2, &v8, &v7);
  v6 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", a2, result);
    }

    v6 = v8 != 0;
  }

  *a3 = v6;
  return result;
}

unint64_t darwin_read_iokit_u32(io_registry_entry_t a1, const char *a2, _DWORD *a3)
{
  v8 = 0;
  v7 = 4;
  result = darwin_read_iokit_node(a1, a2, &v8, &v7);
  v6 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", a2, result);
    }

    v6 = v8;
  }

  *a3 = v6;
  return result;
}

unint64_t darwin_read_iokit_u64(io_registry_entry_t a1, const char *a2, void *a3)
{
  v7 = 8;
  v8 = 0;
  result = darwin_read_iokit_node(a1, a2, &v8, &v7);
  v6 = 0;
  if (result != 2)
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", a2, result);
    }

    v6 = v8;
  }

  *a3 = v6;
  return result;
}

size_t darwin_read_iokit_cstr(io_registry_entry_t a1, const char *a2, char *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  *__source = 0u;
  v8 = 0u;
  v6 = 64;
  result = darwin_read_iokit_node(a1, a2, __source, &v6);
  if (result == 2)
  {
    *a3 = 0;
  }

  else
  {
    if (result)
    {
      __panic_npx("panic: failed to read property: %s: %d", a2, result);
    }

    return strlcpy(a3, __source, 0x40uLL);
  }

  return result;
}

uint64_t _null_enforceable(const char **a1, uint64_t *a2)
{
  v3 = *a2;
  name = chip_get_name(a2[2]);
  expert_log(v3, 1uLL, "odometer[%s:%s]: policy is enforceable", name, *a1);
  return 0;
}

void _prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  memset(v9, 0, sizeof(v9));
  __n = 0;
  memset(v8, 0, sizeof(v8));
  nonce_digest = image4_environment_callout_query_nonce_digest(v4, v9, &__n);
  if (nonce_digest)
  {
    if (nonce_digest != 45)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", nonce_digest);
    }
  }

  else if (__n > 0x40)
  {
    __break(0x5519u);
  }

  else
  {
    digest_init(v8, v9, __n);
    odometer_prepare_nonce_hash(a2, v8);
  }
}

uint64_t _chain_future_enforceable(const char **a1, uint64_t *a2)
{
  if (odometer_policy_get_chip_property(a1, a2[2]))
  {
    v4 = *(a2 + 264);
    v5 = *a2;
    name = chip_get_name(a2[2]);
    v7 = *a1;
    if (v4)
    {
      expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", name, v7);
      return 0;
    }

    else
    {
      v8 = 1;
      expert_log(v5, 1uLL, "odometer[%s:%s]: no caller-supplied boot manifest hash", name, v7);
    }
  }

  else
  {
    v9 = *a2;
    v10 = chip_get_name(a2[2]);
    v12 = *a1;
    v8 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: chip has no property for policy", v10, v12);
  }

  return v8;
}

uint64_t _chain_future_enforce(const char **a1, uint64_t *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  chip_property = odometer_policy_get_chip_property(a1, v6);
  memset(v19, 0, sizeof(v19));
  if (!*(a2 + 264))
  {
    __panic_npx("panic: optional not set");
  }

  v8 = chip_property;
  manifest_measure(v5, v6, v19);
  if (property_constrain_digest(v8, v4, v19, (a2 + 56), v9, v10, v11, v12))
  {
    v13 = *(a1 + 6);
    v14 = *a2;
    name = chip_get_name(a2[2]);
    expert_log(v14, 0, "odometer[%s:%s]: boot chain integrity violation: %d", name, *a1, v13);
    if (v13 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v13);
    }
  }

  else
  {
    v16 = *a2;
    v17 = chip_get_name(a2[2]);
    expert_log(v16, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v17, *a1);
    return 0;
  }

  return v13;
}

char *property_get_from_identifier(char *result)
{
  v1 = &property_get_from_identifier_p_map[result];
  if (v1 < &_property_stng && v1 >= property_get_from_identifier_p_map)
  {
    return *v1;
  }

  __break(0x5519u);
  return result;
}

unint64_t image4_environment_get_secure_boot(uint64_t a1)
{
  v4 = 0;
  result = *(a1 + 40);
  if (result >= 5)
  {
    __panic_npx("panic: invalid secure boot level: actual = %llu, expected <= %llu", result, 4);
  }

  if (result == 4)
  {
    secure_boot = expert_get_secure_boot(*(a1 + 8), &v4);
    if (secure_boot)
    {
      __panic_npx("panic: failed to get secure boot level: %d", secure_boot);
    }

    return v4;
  }

  return result;
}

unint64_t image4_environment_get_nonce_domain(uint64_t a1)
{
  v2 = *(a1 + 8);
  v5 = 0;
  result = *(a1 + 48);
  if (result == -1)
  {
    result = image4_coprocessor_select(*(a1 + 16), 0, a1);
    if (!result)
    {
      __panic_npx("panic: could not resolve chip for environment");
    }

    v4 = *(result + 200);
    if (v4)
    {
      if (result >= result + 264)
      {
        __break(0x5519u);
      }

      else if (expert_query_property_uint32(v2, result, v4, &v5))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t image4_environment_callout_query_boot_nonce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    return v4(a1, a2, a3, *(a1 + 64));
  }

  else
  {
    return 45;
  }
}

uint64_t image4_environment_callout_query_nonce_digest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    return v4(a1, a2, a3, *(a1 + 64));
  }

  else
  {
    return 45;
  }
}

uint64_t _image4_environment_init(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 == 0xFFFF)
  {
    __panic_npx("panic: null coprocessor handle", a2, 0xFFFFLL, a4);
  }

  if (a3 >= 0xC)
  {
    __panic_npx("panic: invalid coprocessor handle: actual = %llu, expected < %u", a3, 12);
  }

  if (a4)
  {
    __panic_npx("panic: unsupported struct version: actual = %hu, expected <= %u", a4, 0);
  }

  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = generic_expert_current();
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  *(a1 + 48) = -1;
  *(a1 + 24) = a3;
  return a1;
}

uint64_t image4_environment_new(uint64_t a1, unint64_t a2)
{
  v4 = generic_expert_current();
  result = _expert_alloc_type(v4, &_image4_type_environment);
  if (result)
  {
    result = _image4_environment_init(result, a1, a2, 0);
    *(result + 32) = &_image4_type_environment;
  }

  return result;
}

uint64_t image4_environment_set_secure_boot(uint64_t result, unint64_t a2)
{
  if (a2 > 3)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "secure_boot", a2);
  }

  *(result + 40) = a2;
  return result;
}

uint64_t image4_environment_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

int64_t image4_environment_identify(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = generic_expert_current();
  v17[0] = _property_filter_expert;
  v17[1] = 0;
  v17[2] = -1;
  v3 = image4_coprocessor_select(*(a1 + 16), 0, a1);
  if (!v3)
  {
    __panic_npx("panic: could not resolve chip for environment");
  }

  v4 = v3;
  result = property_iterator_next(v17);
  if (result)
  {
    v6 = result;
    memset(v16, 170, sizeof(v16));
    do
    {
      v18 = 0;
      v21 = v16[3];
      v22 = v16[2];
      v23 = v16[1];
      v24 = v16[0];
      *__s = xmmword_298EF77C0;
      v20 = unk_298EF77D0;
      v25 = 0xAAAAAAAAAAAAAAAALL;
      constraint = chip_get_constraint(v4, v6, 0);
      v8 = image4_identifier_init(&v18, constraint);
      if (constraint != *(v4 + 200) || *(a1 + 48) == -1)
      {
        v9 = **(constraint + 40);
        if (v9 <= 1)
        {
          if (v9)
          {
            if (v9 != 1)
            {
LABEL_38:
              __panic_npx("panic: version property iterated during identification: p = %s, fourcc = %s", *constraint, (constraint + 28));
            }

            if (expert_query_property_uint32(v2, v4, constraint, __s))
            {
              goto LABEL_36;
            }
          }

          else if (expert_query_property_BOOL(v2, v4, constraint, __s))
          {
            goto LABEL_36;
          }
        }

        else
        {
          switch(v9)
          {
            case 2:
              if (expert_query_property_uint64(v2, v4, constraint, __s))
              {
                goto LABEL_36;
              }

              break;
            case 3:
              goto LABEL_36;
            case 4:
              if (expert_query_property_version(v2, v4, constraint, __s))
              {
                goto LABEL_36;
              }

              break;
            default:
              goto LABEL_38;
          }
        }
      }

      else
      {
        *__s = *(a1 + 48);
      }

      v10 = *(a1 + 56);
      if (v10)
      {
        v11 = **(*v8 + 40);
        if (v11 <= 1)
        {
          if (!v11)
          {
            v15 = v10[3];
            if (v15)
            {
              v15(a1, v8, __s[0], *(a1 + 64));
            }

            goto LABEL_36;
          }

          if (v11 != 1)
          {
            goto LABEL_39;
          }

          v12 = v10[4];
          if (!v12)
          {
            goto LABEL_36;
          }

          v13 = *__s;
          goto LABEL_35;
        }

        if (v11 == 2)
        {
          v12 = v10[4];
          if (v12)
          {
            v13 = *__s;
LABEL_35:
            v12(a1, v8, v13, *(a1 + 64));
          }
        }

        else
        {
          if (v11 != 4)
          {
LABEL_39:
            __panic_npx("panic: unreachable case: %s = 0x%llx", "id4->id_p->p_type->pt_switchable", v11);
          }

          v14 = v10[5];
          if (v14)
          {
            result = strlen(__s);
            if (result < 1)
            {
              __break(0x5519u);
              return result;
            }

            v14(a1, v8, __s, v23 + 1, *(a1 + 64));
          }
        }
      }

LABEL_36:
      result = property_iterator_next(v17);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t image4_environment_get_digest_info(uint64_t a1)
{
  v1 = image4_coprocessor_select(*(a1 + 16), 0, a1);
  if (!v1)
  {
    __panic_npx("panic: could not resolve chip for environment");
  }

  v2 = *(v1 + 48);

  return v2();
}

uint64_t *image4_environment_destroy(uint64_t *result)
{
  if (*result)
  {
    return _expert_dealloc_type(*(*result + 8), *(*result + 32), result);
  }

  return result;
}

uint64_t _BootPolicyClosureComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4, *v9);
  }

  ccdigest();
  return 0;
}

void __panic_npx_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: digest buffer overflow: actual = %lu, expected >= %lu", va);
  _os_crash();
  __break(1u);
}

uint64_t _BootPolicyClosureComputeDigest_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4, *v9);
  }

  ccdigest();
  return 0;
}

void _prepare_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v13[0] = 0;
  v13[1] = 0;
  v8 = 0;
  __n = 0;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v13, &__n);
  if (!boot_nonce)
  {
    if (__n <= 0x10)
    {
      nonce_init(v12, v13, __n);
      odometer_prepare_nonce(a2, v12);
      return;
    }

    goto LABEL_12;
  }

  if (boot_nonce != 45)
  {
    expert_log(v5, 0, "failed to get boot nonce from callback: %d");
    return;
  }

  nonce_digest = image4_environment_callout_query_nonce_digest(v4, v11, &v8);
  if (nonce_digest != 45)
  {
    if (!nonce_digest)
    {
      if (v8 <= 0x40)
      {
        digest_init(v10, v11, v8);
        odometer_prepare_nonce_hash(a2, v10);
        return;
      }

LABEL_12:
      __break(0x5519u);
      return;
    }

    expert_log(v5, 0, "failed to get nonce digest from callback: %d");
  }
}

uint64_t _extract_payload_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 528);
  memset(&v12[3], 0, 32);
  if (v7)
  {
    v8 = a3 + 528;
  }

  else
  {
    v8 = 0;
  }

  memset(&v12[1], 0, 32);
  if (v7)
  {
    v9 = a3 + 72;
  }

  else
  {
    v9 = 0;
  }

  v12[0] = 0uLL;
  v10 = manifest_measure(a3, a2, v12);
  *a5 = *(*(a2 + 48))(v10);
  if (v9 + 456 > v8)
  {
    __break(0x5519u);
  }

  return v9 + 328;
}

void *nonce_init(void *a1, const void *a2, size_t __n)
{
  if (__n >= 0x11)
  {
    __panic_npx("panic: nonce too large: actual = %lu, expected <= %ld", __n, 16);
  }

  memcpy(a1, a2, __n);
  a1[2] = __n;
  return a1;
}

void *nonce_init_copy(void *result, void *a2)
{
  v2 = a2[2];
  if (v2 < 0x11)
  {
    return nonce_init(result, a2, v2);
  }

  __break(0x5519u);
  return result;
}

uint64_t nonce_compare(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 == a2[2])
  {
    return memcmp(a1, a2, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t nonce_compare_buff(void *a1, const void *a2, size_t a3)
{
  if (a1[2] == a3)
  {
    return memcmp(a1, a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *nonce_copy_out(void *__src, void *__dst, size_t *a3)
{
  v4 = *a3;
  v5 = __src[2];
  if (v4 < v5)
  {
LABEL_6:
    __panic_npx("panic: nonce length overflow: actual = %lu, expected >= %lu", v4, v5);
  }

  if (v5 > 0x10 || (result = memcpy(__dst, __src, v5), v4 = __src[2], v4 > *a3))
  {
    __break(0x5519u);
    goto LABEL_6;
  }

  *a3 = v4;
  return result;
}

void *nonce_init_uint64(void *result, unint64_t a2)
{
  *result = bswap64(a2);
  result[2] = 8;
  return result;
}

unint64_t nonce_get_uint64(unint64_t *a1)
{
  v1 = a1[2];
  if (v1 >= 9)
  {
    __panic_npx("panic: nonce cannot fit into 64-bit integer: actual = %lu, expected <= %lu", v1, 8);
  }

  return bswap64(*a1);
}

unint64_t nonce_print_cstr(unint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  strcpy(v17, "0123456789abcdef");
  v2 = (result + 16);
  v3 = *(result + 16);
  if (v3 > 0x21)
  {
LABEL_34:
    __panic_npx("panic: bogus nonce length: actual = %lu, expected <= %lu", v3, 33);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (!*v2)
  {
    goto LABEL_31;
  }

  v3 = 0;
  v4 = a2 + 33;
  v5 = a2;
  do
  {
    v6 = (result + v3);
    v7 = result + v3 < v2 && v6 >= result;
    if (!v7 || ((v8 = *v6, v9 = (v17 | (v8 >> 4)), v9 < &v17[17]) ? (v10 = v9 < v17) : (v10 = 1), v10 || ((*v5 = *v9, v11 = v5 + 1, v12 = (v17 | v8 & 0xF), v12 < &v17[17]) ? (v13 = v12 < v17) : (v13 = 1), !v13 ? (v14 = v11 >= v4) : (v14 = 1), !v14 ? (v15 = v11 >= a2) : (v15 = 0), !v15 || ((*v11 = *v12, v5 = v11 + 1, v5 < v4) ? (v16 = v5 >= a2) : (v16 = 0), !v16))))
    {
      __break(0x5519u);
      goto LABEL_34;
    }

    *v5 = 0;
    ++v3;
  }

  while (v3 < *v2);
  if (!*v2)
  {
LABEL_31:
    strcpy(a2, "null");
  }

  return result;
}

unint64_t sprintdgst_npx(unint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x29EDCA608];
  strcpy(v20, "0123456789abcdef");
  if (a3 > 0x40)
  {
    goto LABEL_28;
  }

  *(result + 128) = 0;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if (a3)
  {
    v8 = result + 129;
    v9 = result;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = (v20 | (v11 >> 4));
      if (v12 >= &v20[17] || v12 < v20)
      {
        break;
      }

      *v9 = *v12;
      v14 = v9 + 1;
      v15 = (v20 | v10 & 0xF);
      v16 = v15 >= &v20[17] || v15 < v20;
      v17 = v16 || v14 >= v8;
      if (v17 || v14 < result)
      {
        break;
      }

      *v14 = *v15;
      v9 = v14 + 1;
      if (v9 >= v8 || v9 < result)
      {
        break;
      }

      *v9 = 0;
      if (!--a3)
      {
        return result;
      }
    }

    __break(0x5519u);
LABEL_28:
    __panic_npx_1(result, a2, a3, a4, a5, a6, a7, a8, a3);
  }

  strcpy(result, "null");
  return result;
}

void __panic_npx_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: bogus digest length: %lu", va);
  _os_crash();
  __break(1u);
}

uint64_t _chain_pivot_enforceable(const char **a1, uint64_t *a2)
{
  if (odometer_policy_get_chip_property(a1, a2[2]))
  {
    v4 = *(a2 + 216);
    v5 = *a2;
    name = chip_get_name(a2[2]);
    v7 = *a1;
    if (v4)
    {
      expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", name, v7);
      return 0;
    }

    else
    {
      v8 = 1;
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no pivot constraint", name, v7);
    }
  }

  else
  {
    v9 = *a2;
    v10 = chip_get_name(a2[2]);
    v12 = *a1;
    v8 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: chip has no property for policy", v10, v12);
  }

  return v8;
}

uint64_t _chain_pivot_enforce(const char **a1, uint64_t *a2)
{
  chip_property = odometer_policy_get_chip_property(a1, a2[2]);
  if (*(a2 + 216))
  {
    v5 = (a2 + 41);
  }

  else
  {
    v5 = 0;
  }

  v6 = odometer_enforce_property(a2, a1, chip_property, v5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  if (v6 == 2)
  {
    if (!odometer_check_fuse(a2, &_odometer_cylinder_production_status))
    {
      v8 = "odometer[%s:%s]: development silicon; not enforcing policy";
      goto LABEL_12;
    }

    if (odometer_check_fuse(a2, &_odometer_cylinder_internal_use))
    {
      v8 = "odometer[%s:%s]: internal unit; not enforcing policy";
LABEL_12:
      v19 = *a2;
      name = chip_get_name(a2[2]);
      expert_log(v19, 1uLL, v8, name, *a1);
LABEL_13:
      v21 = *a2;
      v22 = chip_get_name(a2[2]);
      expert_log(v21, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", v22, *a1);
      return 0;
    }
  }

  v9 = *a2;
  v10 = chip_get_name(a2[2]);
  v11 = expert_log(v9, 0, "odometer[%s:%s]: boot chain integrity violation: %d", v10, *a1, v7);
  if (v7 >= 0x6B)
  {
    __panic_npx_2(v11, v12, v13, v14, v15, v16, v17, v18, v7);
  }

  return v7;
}

void __panic_npx_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: error not set to valid posix code: %d", va);
  _os_crash();
  __break(1u);
}

uint64_t expert_map(void *a1)
{
  v1 = a1[1];
  if (v1 <= 0x11F)
  {
    __panic_npx("panic: insufficient memory for expert: actual = %lu, expected >= %lu", v1, 288);
  }

  return *a1;
}

uint64_t _expert_assert(uint64_t result, unsigned int a2, const char *a3)
{
  v5 = *(result + 8);
  if (v5 != a2)
  {
    v10 = v3;
    v11 = v4;
    v9 = 0;
    v8 = bswap32(v5);
    v7 = 0;
    v6 = bswap32(a2);
    __panic_npx("panic: unexpected expert: op = %s, actual = %s, expected = %s", a3, &v8, &v6);
  }

  return result;
}

char *expert_log_level_cstr_lower(unint64_t a1)
{
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "lvl", a1);
  }

  return off_29EEFE100[a1];
}

char *expert_log_level_cstr_upper(unint64_t a1)
{
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "lvl", a1);
  }

  return off_29EEFE120[a1];
}

uint64_t _expert_alloc_type(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  if (!type_get_size(a2))
  {
    __panic_npx("panic: type not available");
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t _expert_dealloc_type(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = *(result + 72);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      result = v5();
    }
  }

  *a3 = 0;
  return result;
}

uint64_t expert_alloc_data(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t expert_dealloc_data(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(result + 88);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = v5();
    *a3 = 0;
  }

  return result;
}

uint64_t expert_dump(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v39[0] = _property_filter_expert;
  v39[1] = 0;
  v39[2] = -1;
  v38 = 0;
  v51 = 0;
  v50 = 0;
  memset(v52, 0, sizeof(v52));
  (*(a1 + 240))();
  (*(a1 + 240))(a1);
  if ((*(a1 + 120))(a1, &v38))
  {
    v38 = 3;
  }

  else
  {
    v2 = v38;
    if (v38 >= 3)
    {
      if (v38 != 3)
      {
        __panic_npx("panic: unreachable case: %s = 0x%llx", "sb", v38);
      }

      v2 = 3;
    }

    snprintf(__str, 0x20uLL, "0x%llx", v2);
  }

  v3 = bswap32(*(a1 + 8));
  v49 = 0;
  *__str = v3;
  v4 = "n/a";
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = "n/a";
  }

  expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "expert", v5);
  expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "expert magic", __str);
  expert_log(a1, 1uLL, "%s %-36s : 0x%x", "  🔥🌸 ", "bounds safety", 1);
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", "", "debug level", 3);
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", "", "diagnostic level", 0);
  expert_log(a1, 1uLL, "%6s  %-36s : 0x%llx", "", "secure boot", v38);
  v6 = v38;
  (*(a1 + 240))(a1);
  v7 = (*(a1 + 128))(a1, v6);
  name = chip_get_name(v7);
  if (name)
  {
    v9 = name;
  }

  else
  {
    v9 = "n/a";
  }

  expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "boot chip", v9);
  (*(a1 + 240))(a1);
  v10 = *(a1 + 104);
  if (v10)
  {
    v11 = v10(a1);
    if (v11 >= 7)
    {
      goto LABEL_55;
    }

    v4 = off_29EEFE140[v11];
  }

  expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "exception level", v4);
  (*(a1 + 240))(a1);
  v12 = *(a1 + 112);
  if (v12)
  {
    v11 = v12(a1);
    if (v11 < 7)
    {
      v13 = off_29EEFE140[v11];
      goto LABEL_21;
    }

LABEL_55:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "lvl", v11);
  }

  v13 = "GL2";
LABEL_21:
  expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "unprivileged limit", v13);
  v14 = property_iterator_next(v39);
  if (v14)
  {
    v15 = v14;
    do
    {
      v16 = v15 + 13;
      memset(v64, 0, sizeof(v64));
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      qmemcpy(__dst, "n/a", sizeof(__dst));
      LOBYTE(v55[0]) = 0;
      LODWORD(v56[0]) = 0;
      *v53 = 0;
      memset(v47, 0, sizeof(v47));
      v46 = 0x3E800000000;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *__source = 0u;
      v41 = 0u;
      v17 = *v15[5];
      if (v17 <= 1)
      {
        if (!v17)
        {
          if (v15 >= v16)
          {
            goto LABEL_53;
          }

          if (expert_query_property_BOOL(a1, v7, v15, v55))
          {
            goto LABEL_44;
          }

LABEL_43:
          snprintf(__dst, 0x81uLL, "%#x");
          goto LABEL_44;
        }

        if (v17 != 1)
        {
          goto LABEL_54;
        }

        if (v15 >= v16)
        {
LABEL_53:
          __break(0x5519u);
LABEL_54:
          __panic_npx("panic: unreachable case: %s = 0x%llx", "pi->p_type->pt_switchable", v17);
        }

        if (!expert_query_property_uint32(a1, v7, v15, v56))
        {
          goto LABEL_43;
        }
      }

      else
      {
        switch(v17)
        {
          case 2:
            if (v15 >= v16)
            {
              goto LABEL_53;
            }

            if (!expert_query_property_uint64(a1, v7, v15, v53))
            {
              snprintf(__dst, 0x81uLL, "%#llx");
            }

            break;
          case 3:
            if (v15 >= v16)
            {
              goto LABEL_53;
            }

            if (!expert_query_property_digest(a1, v7, v15, v47))
            {
              digest_print_cstr(v47, __dst, v18, v19, v20, v21, v22, v23);
            }

            break;
          case 4:
            if (v15 >= v16)
            {
              goto LABEL_53;
            }

            if (!expert_query_property_version(a1, v7, v15, __source))
            {
              version_copyout(__source, __dst);
            }

            break;
          default:
            goto LABEL_54;
        }
      }

LABEL_44:
      expert_log(a1, 1uLL, "%6s  %-36s : %s", v15 + 28, *v15, __dst);
      v15 = property_iterator_next(v39);
    }

    while (v15);
  }

  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *__source = 0u;
  *(v47 + 11) = 0;
  BYTE4(v47[0]) = 0;
  *(v47 + 5) = 0;
  *(v47 + 7) = 0;
  *(&v47[1] + 9) = 0;
  *(&v47[1] + 3) = 0;
  strcpy(v47, "n/a");
  *&v53[11] = 0;
  v53[4] = 0;
  *&v53[5] = 0;
  *&v53[7] = 0;
  *(v54 + 6) = 0;
  v54[0] = 0;
  strcpy(v53, "n/a");
  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  qmemcpy(__dst, "n/a", sizeof(__dst));
  (*(a1 + 240))(a1);
  if (!(*(a1 + 144))(a1, 0, 0, v56))
  {
    nonce_print_cstr(v56, v47);
    (*(a1 + 240))(a1);
    if (!(*(a1 + 152))(a1, 0, 0, v56, v55))
    {
      nonce_print_cstr(v55, v53);
      (*(a1 + 240))(a1);
      v24 = (*(a1 + 128))(a1, 0);
      odometer_compute_nonce_hash(a1, v24, v55, __source);
      digest_print_cstr(__source, __dst, v25, v26, v27, v28, v29, v30);
    }
  }

  expert_log(a1, 2uLL, "%6s  %-36s : %s", "", "boot nonce", v47);
  expert_log(a1, 2uLL, "%6s  %-36s : %s", "", "entangled boot nonce", v53);
  expert_log(a1, 2uLL, "%6s  %-36s : %s", "", "boot nonce hash", __dst);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *__source = 0u;
  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  qmemcpy(__dst, "n/a", sizeof(__dst));
  if (!expert_query_property_digest(a1, 0, &_property_bmfh, __source))
  {
    digest_print_cstr(__source, __dst, v31, v32, v33, v34, v35, v36);
  }

  result = expert_log(a1, 1uLL, "%6s  %-36s : %s", "", "boot manifest hash", __dst);
  if (*(a1 + 56))
  {
    expert_log(a1, 1uLL, "%s %-36s", "", "expert state");
    return (*(a1 + 56))(a1, 1);
  }

  return result;
}

uint64_t expert_get_secure_boot(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 120);

  return v4(a1, a2);
}

uint64_t expert_log(uint64_t a1, unint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (a2 >= 3)
  {
    if (a2 != 3)
    {
      __panic_npx("panic: unreachable case: %s = 0x%llx", "level", a2);
    }
  }

  else
  {
    (*(a1 + 240))(a1);
  }

  return (*(a1 + 48))(a1, a2, a3, va);
}

uint64_t expert_query_chip(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 128);

  return v4(a1, a2);
}

uint64_t expert_get_exception_level(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t expert_get_unprivileged_limit(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 6;
  }

  return v2(a1);
}

uint64_t expert_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", (a3 + 28), *v8, *a1);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v9 = (*(v8 + 200))(v8, a2, a3, &v20);
  v10 = v9;
  if (v9 > 18)
  {
    if (v9 != 45 && v9 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", *a3, v9);
    goto LABEL_12;
  }

  if (v9)
  {
    if (v9 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d");
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%x");
LABEL_13:
  v12 = *(a3 + 88);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v21 = v20;
  v13 = *(a3 + 48);
  if (v13 == &_property_constraint_un)
  {
    v14 = "unconstrain";
  }

  else
  {
    v14 = "absence";
  }

  if (v13 == &_property_constraint_un)
  {
    v15 = _expert_post_process_unconstrain_BOOL;
  }

  else
  {
    v15 = v12;
  }

  if (v10 != 2)
  {
    if (v10)
    {
      goto LABEL_25;
    }

    v15 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%x", v20);
    v14 = "post-process";
  }

  if (v15)
  {
    v16 = v15(a3, a2, &v21);
    if (v16)
    {
      v17 = v16;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", (a3 + 28), v14, v16);
      v10 = v17;
      goto LABEL_26;
    }

    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%x], error = [%d => %d]", (a3 + 28), *(*(a3 + 40) + 8), v14, __str, v21, v10, 0);
    v18 = v21;
LABEL_30:
    v10 = 0;
    *a4 = v18;
    return v10;
  }

LABEL_25:
  if (!v10)
  {
    v18 = v20;
    goto LABEL_30;
  }

LABEL_26:
  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

uint64_t expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", (a3 + 28), *v8, *a1);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v9 = (*(v8 + 208))(v8, a2, a3, &v20);
  v10 = v9;
  if (v9 > 18)
  {
    if (v9 != 45 && v9 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", *a3, v9);
    goto LABEL_12;
  }

  if (v9)
  {
    if (v9 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d");
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%x");
LABEL_13:
  v12 = *(a3 + 88);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v21 = v20;
  v13 = *(a3 + 48);
  if (v13 == &_property_constraint_un)
  {
    v14 = "unconstrain";
  }

  else
  {
    v14 = "absence";
  }

  if (v13 == &_property_constraint_un)
  {
    v15 = _expert_post_process_unconstrain_uint32;
  }

  else
  {
    v15 = v12;
  }

  if (v10 != 2)
  {
    if (v10)
    {
      goto LABEL_25;
    }

    v15 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%x", v20);
    v14 = "post-process";
  }

  if (v15)
  {
    v16 = v15(a3, a2, &v21);
    if (v16)
    {
      v17 = v16;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", (a3 + 28), v14, v16);
      v10 = v17;
      goto LABEL_26;
    }

    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%x], error = [%d => %d]", (a3 + 28), *(*(a3 + 40) + 8), v14, __str, v21, v10, 0);
    v18 = v21;
LABEL_30:
    v10 = 0;
    *a4 = v18;
    return v10;
  }

LABEL_25:
  if (!v10)
  {
    v18 = v20;
    goto LABEL_30;
  }

LABEL_26:
  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

uint64_t expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", (a3 + 28), *v8, *a1);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v9 = (*(v8 + 216))(v8, a2, a3, &v20);
  v10 = v9;
  if (v9 > 18)
  {
    if (v9 != 45 && v9 != 19)
    {
      goto LABEL_5;
    }

LABEL_11:
    expert_log(a1, 2uLL, "property not present: %s: %d", *a3, v9);
    goto LABEL_12;
  }

  if (v9)
  {
    if (v9 != 2)
    {
LABEL_5:
      expert_log(a1, 0, "failed to query property: %s: %d");
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  expert_log(a1, 2uLL, "queried property: %s => 0x%llx");
LABEL_13:
  v12 = *(a3 + 88);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  qmemcpy(__str, "n/a", sizeof(__str));
  v21 = v20;
  v13 = *(a3 + 48);
  if (v13 == &_property_constraint_un)
  {
    v14 = "unconstrain";
  }

  else
  {
    v14 = "absence";
  }

  if (v13 == &_property_constraint_un)
  {
    v15 = _expert_post_process_unconstrain_uint64;
  }

  else
  {
    v15 = v12;
  }

  if (v10 != 2)
  {
    if (v10)
    {
      goto LABEL_25;
    }

    v15 = *(a3 + 96);
    snprintf(__str, 0x40uLL, "0x%llx", v20);
    v14 = "post-process";
  }

  if (v15)
  {
    v16 = v15(a3, a2, &v21);
    if (v16)
    {
      v17 = v16;
      expert_log(a1, 1uLL, "transform not applied: p = %s, kind = %s: %d", (a3 + 28), v14, v16);
      v10 = v17;
      goto LABEL_26;
    }

    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => 0x%llx], error = [%d => %d]", (a3 + 28), *(*(a3 + 40) + 8), v14, __str, v21, v10, 0);
    v18 = v21;
LABEL_30:
    v10 = 0;
    *a4 = v18;
    return v10;
  }

LABEL_25:
  if (!v10)
  {
    v18 = v20;
    goto LABEL_30;
  }

LABEL_26:
  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

uint64_t expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", (a3 + 28), *v8, *a1);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v9 = (*(v8 + 224))(v8, a2, a3, v26);
  v16 = v9;
  if (v9 > 18)
  {
    if (v9 != 45 && v9 != 19)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_9:
    digest_print_cstr(v26, v24, v10, v11, v12, v13, v14, v15);
    expert_log(a1, 2uLL, "queried property: %s => %s");
    goto LABEL_10;
  }

  if (v9 == 2)
  {
LABEL_8:
    expert_log(a1, 2uLL, "property not present: %s: %d", *a3, v9);
    goto LABEL_9;
  }

LABEL_16:
  expert_log(a1, 0, "failed to query property: %s: %d");
LABEL_10:
  memset(v37, 0, sizeof(v37));
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  qmemcpy(v30, "n/a", sizeof(v30));
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  if (v16 == 2)
  {
    if (*(a3 + 48) != &_property_constraint_un)
    {
      return 2;
    }

    memset(v29, 0, sizeof(v29));
    digest_print_cstr(v26, v27, v17, v18, v19, v20, v21, v22);
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => %s], error = [%d => %d]", (a3 + 28), *(*(a3 + 40) + 8), "unconstrained absence", v30, v27, 2, 0);
    digest_copy(v26, v29);
LABEL_18:
    digest_copy(a4, v26);
    return 0;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  if (v16 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v16);
  }

  return v16;
}

uint64_t expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v13 = 0x3E800000000;
  memset(v12, 0, sizeof(v12));
  (*(a1 + 240))();
  _expert_query_resolve_debug(a1, a2, a3);
  v8 = chip_select_property_expert(a2, a3, a1);
  expert_log(a1, 2uLL, "selected property expert: property = %s, selected = %s, base = %s", (a3 + 28), *v8, *a1);
  if (v8 >= v8 + 288)
  {
    __break(0x5519u);
  }

  v9 = (*(v8 + 232))(v8, a2, a3, v12);
  v10 = v9;
  if (v9 > 18)
  {
    if (v9 != 45 && v9 != 19)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_9:
    expert_log(a1, 2uLL, "queried property: %s => %s");
    goto LABEL_10;
  }

  if (v9 == 2)
  {
LABEL_8:
    expert_log(a1, 2uLL, "property not present: %s: %d", *a3, v9);
    goto LABEL_9;
  }

LABEL_16:
  expert_log(a1, 0, "failed to query property: %s: %d");
LABEL_10:
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  qmemcpy(v16, "n/a", sizeof(v16));
  if (v10 == 2)
  {
    if (*(a3 + 48) != &_property_constraint_un)
    {
      return 2;
    }

    v15 = 0x3E800000000;
    memset(v14, 0, sizeof(v14));
    expert_log(a1, 2uLL, "applied transform: p = %s, type = %s, xf kind = %s, value = [%s => %s], error = [%d => %d]", (a3 + 28), *(*(a3 + 40) + 8), "unconstrained absence", v16, v14, 2, 0);
    version_copy(v12, v14);
LABEL_18:
    version_copy(a4, v12);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

uint64_t expert_get_image4_certificate_type(uint64_t a1, unsigned int *a2)
{
  v7 = 0;
  (*(a1 + 240))();
  v4 = (*(a1 + 208))(a1, 0, &_property_i4ct, &v7);
  if (v4)
  {
    expert_log(a1, 1uLL, "[non-fatal] failed to query prop: %s: %d", "image4 certificate type", v4);
    v5 = 0;
  }

  else
  {
    v5 = v7;
    if (v7 > 1)
    {
      expert_log(a1, 0, "unsupported image4-cert-type: %u", v7);
      return 45;
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t expert_get_digest_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 240))();
  if (!a2)
  {
    (*(a1 + 240))(a1);
    a2 = (*(a1 + 128))(a1, 0);
  }

  v6 = *(a1 + 96);

  return v6(a1, a2, a3);
}

uint64_t expert_query_chip_boot(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  v4 = *(a1 + 136);

  return v4(a1, a2);
}

uint64_t expert_query_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  v8 = *(a1 + 144);

  return v8(a1, a2, a3, a4);
}

uint64_t expert_entangle_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a1 + 240))();
  v10 = *(a1 + 152);

  return v10(a1, a2, a3, a4, a5);
}

uint64_t expert_read_boot_manifest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  v8 = *(a1 + 160);

  return v8(a1, a2, a3, a4);
}

uint64_t expert_query_trust_store(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a1 + 240))();
  v10 = *(a1 + 168);

  return v10(a1, a2, a3, a4, a5);
}

uint64_t expert_read_storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v9 = *(a1 + 176);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

uint64_t expert_runtime_boot(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 248);

  return v2(a1);
}

uint64_t expert_write_storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v9 = *(a1 + 184);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

uint64_t expert_sync_storage(uint64_t a1, uint64_t a2)
{
  (*(a1 + 240))();
  result = (*(a1 + 248))(a1);
  if (!result)
  {
    v5 = *(a1 + 192);

    return v5(a1, a2);
  }

  return result;
}

uint64_t _expert_query_resolve_debug(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    result = chip_expert(a2);
    if (result)
    {
      name = chip_get_name(a2);
      return expert_log(v5, 2uLL, "querying property with chip expert resolution: p = %s, chip = %s, chip type = 0x%llx, chip expert authority >= 0x%llx", (a3 + 28), name, *(a2 + 16), *(a3 + 80));
    }
  }

  return result;
}

uint64_t expert_read_random(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 240))();
  v6 = *(a1 + 256);

  return v6(a1, a2, a3);
}

uint64_t expert_syscall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 264))
  {
    return 78;
  }

  (*(a1 + 240))();
  v12 = *(a1 + 264);

  return v12(a1, a2, a3, a4, a5, a6);
}

unint64_t expert_unlock(unint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (result >= result + 288)
    {
      __break(0x5519u);
    }

    else
    {
      result = (*(result + 280))();
      *a1 = 0;
    }
  }

  return result;
}

uint64_t expert_get_boot_nonce_hash(uint64_t a1, uint64_t a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  memset(v6, 0, 24);
  memset(v5, 0, sizeof(v5));
  (*(a1 + 240))();
  result = (*(a1 + 144))(a1, 0, 0, v6);
  if (!result)
  {
    (*(a1 + 240))(a1);
    result = (*(a1 + 152))(a1, 0, 0, v6, v5);
    if (!result)
    {
      odometer_compute_nonce_hash(a1, 0, v5, a2);
      return 0;
    }
  }

  return result;
}

BOOL expert_compute_data_only(uint64_t a1)
{
  (*(a1 + 240))();
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  (*(a1 + 240))(a1);
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 6;
  }

  return v3 < v5;
}

uint64_t expert_compute_udid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  result = expert_query_property_uint32(a1, a2, &_property_CHIP, &v7 + 1);
  if (result || (result = expert_query_property_uint64(a1, a2, &_property_ECID, &v8), result))
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", result);
    }
  }

  else
  {
    LODWORD(v7) = 0;
    HIDWORD(v7) = bswap32(HIDWORD(v7));
    v8 = bswap64(v8);
    digest_init(a3, &v7, 0x10uLL);
    return 0;
  }

  return result;
}

uint64_t expert_compute_eieiou(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = expert_compute_eieiou_ps[v6];
    v11 = 0;
    result = expert_query_property_BOOL(a1, a2, v8, &v11);
    if (result > 0x2D || ((1 << result) & 0x200000000005) == 0)
    {
      break;
    }

    v7 += v11;
    if (++v6 == 3)
    {
      result = 0;
      *a3 = v7;
      return result;
    }
  }

  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", result);
  }

  return result;
}

uint64_t expert_compute_eieiou_BOOL(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = 0;
  result = expert_compute_eieiou(a1, a2, &v5);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", result);
    }
  }

  else
  {
    *a3 = v5 != 0;
  }

  return result;
}

uint64_t _boot_precomp_enforceable(const char **a1, uint64_t a2)
{
  if (!odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v8 = *a2;
    name = chip_get_name(*(a2 + 16));
    v13 = *a1;
    v7 = 1;
    expert_log(v8, 1uLL, "odometer[%s:%s]: chip has no property for policy", name, v13);
    return v7;
  }

  if (!*(a2 + 144))
  {
    v5 = *a2;
    v12 = chip_get_name(*(a2 + 16));
    v14 = *a1;
    v10 = "odometer[%s:%s]: manifest has no constraint for policy";
LABEL_8:
    v7 = 1;
    expert_log(v5, 1uLL, v10, v12, v14);
    return v7;
  }

  v4 = *(a2 + 232);
  v5 = *a2;
  v6 = chip_get_name(*(a2 + 16));
  if (!v4)
  {
    v12 = v6;
    v14 = *a1;
    v10 = "odometer[%s:%s]: no caller-supplied nonce hash";
    goto LABEL_8;
  }

  expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", v6, *a1);
  return 0;
}

uint64_t _boot_precomp_enforce(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (*(a2 + 232))
  {
    v10 = a2 + 152;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 144))
  {
    v11 = a2 + 64;
  }

  else
  {
    v11 = 0;
  }

  if (property_constrain_digest(chip_property, v4, v11, v10, v6, v7, v8, v9))
  {
    v12 = *(a1 + 24);
    v13 = *a2;
    name = chip_get_name(*(a2 + 16));
    v15 = expert_log(v13, 0, "odometer[%s:%s]: anti-replay violation: %d", name, *a1, v12);
    if (v12 >= 0x6B)
    {
      __panic_npx_2(v15, v16, v17, v18, v19, v20, v21, v22, v12);
    }
  }

  else
  {
    v23 = *a2;
    v24 = chip_get_name(*(a2 + 16));
    expert_log(v23, 1uLL, "odometer[%s]: manifest is current", v24);
    return 0;
  }

  return v12;
}

uint64_t _boot_sideload_enforceable(const char **a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = odometer_policy_get_chip_property(a1, v4);
  if (!result)
  {
    v11 = *a2;
    name = chip_get_name(*(a2 + 16));
    v14 = *a1;
    v10 = 1;
    expert_log(v11, 1uLL, "odometer[%s:%s]: chip has no property for policy", name, v14);
    return v10;
  }

  if (!*(v4 + 160))
  {
    v6 = *(a2 + 144);
    v7 = *a2;
    v8 = chip_get_name(*(a2 + 16));
    v9 = *a1;
    if (v6)
    {
      expert_log(v7, 1uLL, "odometer[%s:%s]: policy is enforceable", v8, v9);
      return 0;
    }

    else
    {
      v10 = 1;
      expert_log(v7, 1uLL, "odometer[%s:%s]: manifest has no constraint for policy", v8, v9);
    }

    return v10;
  }

  if (v4 < v4 + 264)
  {
    v13 = chip_get_name(v4);
    __panic_npx("panic: illegal chip definition: anti-reply and sideload policies defined: %s", v13);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_sideload_enforce(const char **a1, uint64_t a2)
{
  v24[13] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set");
  }

  v6 = chip_property;
  if (*(a2 + 232))
  {
    v7 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v7, 1uLL, "odometer[%s:%s]: using caller-provided nonce hash", name, *a1);
    if (property_constrain_digest(v6, v4, a2 + 64, a2 + 152, v9, v10, v11, v12))
    {
      v13 = *(a1 + 6);
      v14 = *a2;
      v15 = chip_get_name(*(a2 + 16));
      expert_log(v14, 0, "odometer[%s:%s]: anti-replay violation: %d", v15, *a1, v13);
      goto LABEL_7;
    }

LABEL_9:
    v21 = *a2;
    v22 = chip_get_name(*(a2 + 16));
    expert_log(v21, 1uLL, "odometer[%s:%s]: manifest is current", v22, *a1);
    return 0;
  }

  *v24 = xmmword_298EF7980;
  memset(&v24[2], 170, 88);
  digest_copy(v24, a2 + 64);
  v16 = *a2;
  v17 = chip_get_name(*(a2 + 16));
  expert_log(v16, 1uLL, "odometer[%s:%s]: enforcing nonce hash directly", v17, *a1);
  v18 = odometer_enforce_property(a2, a1, v6, v24);
  if (!v18)
  {
    goto LABEL_9;
  }

  v13 = v18;
  v19 = *a2;
  v20 = chip_get_name(*(a2 + 16));
  expert_log(v19, 0, "odometer[%s:%s]: anti-replay violation: %d", v20, *a1, v13);
LABEL_7:
  if (v13 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v13);
  }

  return v13;
}

uint64_t image4_trust_evaluate_leaf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 744))
  {
LABEL_23:
    __panic_npx("panic: optional not set", a2, a3);
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 1320);
  v8 = (a1 + 752);
  if (*(a1 + 1320))
  {
    v9 = a1 + 752;
  }

  else
  {
    v9 = 0;
  }

  v18[1] = a3;
  v19[0] = _image4_trust_property_callback_BOOL;
  v19[1] = _image4_trust_property_callback_integer;
  v19[2] = _image4_trust_property_callback_data;
  v19[3] = _image4_trust_violation;
  memset(&v19[4], 0, 24);
  v18[0] = a1;
  expert_log(a2, 2uLL, "performing leaf trust evaluation: coprocessor = %s, handle = %llx, evaluation type = %s", **(v6 + 16), *(v6 + 24), *v5);
  if (v6 >= v6 + 72)
  {
    goto LABEL_22;
  }

  v10 = image4_environment_resolve(v6);
  if (!v10)
  {
    v15 = 45;
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", **(v6 + 16), *(v6 + 24), 45);
    return v15;
  }

  v11 = v10;
  if (v7)
  {
    v12 = payload_parse(v8);
    if (v12)
    {
      v13 = v12;
      if (v12 != 92 && v12 != 33)
      {
        expert_log(a2, 0, "failed to parse payload: %d");
        goto LABEL_19;
      }

      expert_log(a2, 1uLL, "treating payload as non-Image4 wrapped");
    }
  }

  if (v5 >= v5 + 6)
  {
LABEL_22:
    __break(0x5519u);
    goto LABEL_23;
  }

  image4_trust_evaluation_prepare_manifest_callbacks(v5, v19);
  manifest_set_callbacks(a1 + 152, v18, v19);
  v14 = manifest_parse(a1 + 152);
  if (!v14)
  {
    v16 = img4_runtime_alloc(v5);
    v15 = manifest_impose((a1 + 152), v11, v9, v16);
    if (!v15)
    {
      _image4_trust_post_properties(a1);
      return v15;
    }

    goto LABEL_20;
  }

  v13 = v14;
  expert_log(a2, 0, "failed to parse manifest: %d");
LABEL_19:
  v15 = v13;
LABEL_20:
  if (v15 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v15);
  }

  return v15;
}

uint64_t _image4_trust_property_callback_BOOL(uint64_t *a1, const char *a2, uint64_t a3, char a4, uint64_t *a5)
{
  result = _image4_trust_find_record(*a5, a3, 1, *a2);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no BOOLean record for tag: %s", a2 + 4);
  }

  **(result + 24) = a4;
  v9 = *(result + 40);
  if (v9)
  {
    *v9 = *(result + 24);
  }

  return result;
}

uint64_t _image4_trust_property_callback_integer(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = _image4_trust_find_record(*a5, a3, 2, *a2);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no integer record for tag: %s", a2 + 4);
  }

  **(result + 24) = a4;
  v9 = *(result + 40);
  if (v9)
  {
    *v9 = *(result + 24);
  }

  return result;
}

uint64_t _image4_trust_property_callback_data(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  result = _image4_trust_find_record(*a6, a3, 4, *a2);
  if (!result)
  {
    return expert_log(*a1, 2uLL, "no data record for tag: %s", a2 + 4);
  }

  if (a4 && !a5)
  {
    __break(0x5519u);
  }

  else
  {
    **(result + 24) = a4;
    **(result + 32) = a5;
  }

  return result;
}

void _image4_trust_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*(*a4 + 8))
  {
    if (*(v4 + 1320))
    {
      v5 = (*(v4 + 760) + 4);
    }

    else
    {
      v5 = "n/a";
    }

    name = chip_get_name(a2);
    __panic_npx("panic: critical trust evaluation failure: chip = %s, p = %s, payload = %s", name, (a3 + 28), v5);
  }
}

uint64_t _image4_trust_post_properties(uint64_t a1)
{
  v2 = a1 + 1912;
  v13 = a1 + 1384;
  v3 = 4;
  v4 = 1;
  do
  {
    v14 = v4;
    if (!*(a1 + 744))
    {
      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    expert_log(v5, 2uLL, "posting properties for container: 0x%x", v3);
    v6 = qword_298EF7A10[v3];
    Img4DecodeGetQueryForContainer(v3);
    v7 = v13;
    v8 = 12;
    do
    {
      if (v7 > v2)
      {
        __break(0x5519u);
LABEL_15:
        __panic_npx("panic: optional not set");
      }

      v9 = *(v7 - 48);
      v10 = *(v7 - 32);
      v16 = 0;
      v15 = 0;
      result = fourcc_init(&v15, v10);
      if (*(v7 - 40) == v6)
      {
        if (v3 == 4)
        {
          v12 = 0;
        }

        else
        {
          if (!*(a1 + 1320))
          {
            goto LABEL_11;
          }

          v12 = *(a1 + 856);
        }

        expert_log(v5, 2uLL, "posting property callback: container = %x, type = %x, tag = %s", v3, v9, &v15 + 4);
        result = manifest_post_property_callback(a1 + 152, v3, v12, v9, &v15);
      }

LABEL_11:
      v7 += 48;
      --v8;
    }

    while (v8);
    v4 = 0;
    v3 = 5;
  }

  while ((v14 & 1) != 0);
  return result;
}

uint64_t image4_trust_evaluate_audit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 744))
  {
LABEL_21:
    __panic_npx("panic: optional not set", a2, a3);
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 1320);
  v8 = (a1 + 752);
  if (*(a1 + 1320))
  {
    v9 = a1 + 752;
  }

  else
  {
    v9 = 0;
  }

  v18[1] = a3;
  v19[0] = _image4_trust_property_callback_BOOL;
  v19[1] = _image4_trust_property_callback_integer;
  v19[2] = _image4_trust_property_callback_data;
  v19[3] = _image4_trust_violation;
  v19[4] = 0;
  v19[5] = _image4_trust_override_decode;
  v19[6] = _image4_trust_audit;
  v18[0] = a1;
  expert_log(a2, 2uLL, "performing audit trust evaluation: coprocessor = %s, handle = %llx, secure boot level = %llx, evaluation type = %s", **(v6 + 16), *(v6 + 24), *(v6 + 40), *v5);
  if (v6 >= v6 + 72)
  {
LABEL_20:
    __break(0x5519u);
    goto LABEL_21;
  }

  v10 = image4_environment_resolve(v6);
  if (!v10)
  {
    v16 = 45;
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", **(v6 + 16), *(v6 + 24), 45);
    return v16;
  }

  v11 = v10;
  if (!v7 || (v12 = payload_parse(v8), !v12))
  {
LABEL_11:
    if (v5 < v5 + 6)
    {
      image4_trust_evaluation_prepare_manifest_callbacks(v5, v19);
      manifest_set_callbacks(a1 + 152, v18, v19);
      v14 = manifest_parse(a1 + 152);
      if (v14)
      {
        v15 = v14;
        expert_log(a2, 0, "failed to parse manifest: %d", v14);
        v16 = v15;
      }

      else
      {
        v16 = manifest_audit((a1 + 152), v11, v9);
        if (!v16)
        {
          _image4_trust_post_properties(a1);
          expert_log(a2, 1uLL, "forcing failure after audit completion: %d", 0);
          return 35;
        }
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v13 = v12;
  if (v12 == 92)
  {
    expert_log(a2, 1uLL, "treating payload as non-Image4 wrapped");
    goto LABEL_11;
  }

  expert_log(a2, 0, "failed to parse payload: %d", v12);
  v16 = v13;
LABEL_18:
  if (v16 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v16);
  }

  return v16;
}

unint64_t image4_trust_evaluate_boot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 744))
  {
LABEL_12:
    __panic_npx("panic: optional not set", a2, a3);
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13[1] = a3;
  v14[0] = _image4_trust_property_callback_BOOL;
  v14[1] = _image4_trust_property_callback_integer;
  v14[2] = _image4_trust_property_callback_data;
  v14[3] = _image4_trust_violation;
  memset(&v14[4], 0, 24);
  v13[0] = a1;
  expert_log(a2, 2uLL, "performing boot trust evaluation: coprocessor = %s, type = %s", **(v6 + 16), *v5);
  if (v6 >= v6 + 72)
  {
    goto LABEL_11;
  }

  v7 = image4_environment_resolve(v6);
  if (!v7)
  {
    v9 = 45;
    expert_log(a2, 0, "booter environment not supported: %s: %d", **(v6 + 16), 45);
    return v9;
  }

  if (v5 >= v5 + 6)
  {
LABEL_11:
    __break(0x5519u);
    goto LABEL_12;
  }

  v8 = v7;
  image4_trust_evaluation_prepare_manifest_callbacks(v5, v14);
  manifest_set_callbacks(a1 + 152, v13, v14);
  v9 = boot_expert_boot_manifest(a2, v8, (a1 + 152));
  if (v9)
  {
    name = chip_get_name(v8);
    expert_log(a2, 0, "manifest boot failed: %s: %d", name, v9);
    if (v9 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v9);
    }
  }

  else
  {
    _image4_trust_post_properties(a1);
    v11 = chip_get_name(v8);
    expert_log(a2, 1uLL, "manifest boot succeeded: %s", v11);
    expert_dump(a2);
  }

  return v9;
}

uint64_t image4_trust_evaluate_normalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 744))
  {
LABEL_17:
    __panic_npx("panic: optional not set", a2, a3);
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v20[1] = a3;
  v21[0] = _image4_trust_property_callback_BOOL;
  v21[1] = _image4_trust_property_callback_integer;
  v21[2] = _image4_trust_property_callback_data;
  v21[3] = _image4_trust_violation;
  memset(&v21[4], 0, 24);
  v20[0] = a1;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  expert_log(a2, 2uLL, "performing normalization trust evaluation: coprocessor = %s, handle = %llx, evaluation type = %s", **(v6 + 16), *(v6 + 24), *v5);
  if (v6 >= v6 + 72)
  {
    goto LABEL_16;
  }

  v7 = image4_environment_resolve(v6);
  if (!v7)
  {
    v10 = 45;
    expert_log(a2, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", **(v6 + 16), *(v6 + 24), 45);
LABEL_8:
    v22 = &v16;
    buff_destroy(&v22);
    return v10;
  }

  if (v5 >= v5 + 6)
  {
LABEL_16:
    __break(0x5519u);
    goto LABEL_17;
  }

  v8 = v7;
  image4_trust_evaluation_prepare_manifest_callbacks(v5, v21);
  manifest_set_callbacks(a1 + 152, v20, v21);
  v9 = manifest_parse(a1 + 152);
  if (v9)
  {
    v10 = v9;
    expert_log(a2, 0, "failed to parse manifest: %d", v9);
    goto LABEL_11;
  }

  v11 = closure_init(v19, (a1 + 152), v8);
  _closure_set_unique_tags(v11, "HCNBOPECDICEDIDUhcncylpenonsfunsnvrs", 9);
  v12 = closure_compute(v11, &v16, 0);
  if (!v12)
  {
    if (*(a2 + 8) == 1651470196)
    {
      boot_expert_boot_closure(a2, v11, &v16);
    }

    v10 = 0;
    *(a1 + 728) = v18;
    v15 = v17;
    *(a1 + 696) = v16;
    *(a1 + 712) = v15;
    *(a1 + 736) = 1;
    *&v17 = &_buff_destructor_null;
    goto LABEL_8;
  }

  v13 = v12;
  expert_log(a2, 0, "failed to compute closure: %d", v12);
  v10 = v13;
LABEL_11:
  v22 = &v16;
  buff_destroy(&v22);
  if (v10 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v10);
  }

  return v10;
}

void image4_trust_new_buff(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v3 > v3 + v4)
  {
    __break(0x5519u);
  }

  else
  {
    image4_trust_new(a1, a2, v3, v4, 0);
  }
}

void image4_trust_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _expert_alloc_type(*(a1 + 8), &_image4_type_trust);
  if (v10)
  {
    _image4_trust_init(v10, a1, a2, a3, a4, a5, 1u);
    *(v11 + 40) = &_image4_type_trust;
  }
}

void _image4_trust_init(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a7;
  v8 = *(a2 + 8);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (a7 >= 2)
  {
    __panic_npx("panic: unsupported struct version: actual = %hu, expected <= %u", a7, 1);
  }

  bzero(a1, 0x788uLL);
  *a1 = v7;
  *(a1 + 1) = a6;
  *(a1 + 2) = v8;
  *(a1 + 3) = a2;
  *(a1 + 4) = a3;
  *(a1 + 7) = 0;
  if (a1 + 964 < a1)
  {
    __break(0x5519u);
  }

  else
  {
    _image4_trust_add_link(a1, a1);
    inited = buff_init_wrap(v15, a4, a5);
    manifest_init((a1 + 76), v8, &inited);
    a1[372] = 1;
  }
}

uint64_t _image4_trust_add_link(uint64_t result, uint64_t a2)
{
  v2 = *(result + 144);
  if (v2 > 4)
  {
    __panic_npx("panic: trust chain length exceeded: %lu", 5);
  }

  v3 = result + 16 * v2;
  *(result + 144) = v2 + 1;
  if (v3 + 80 > (result + 144))
  {
    __break(0x5519u);
  }

  else
  {
    *(v3 + 64) = *(result + 56);
    *(v3 + 72) = a2;
    *(result + 56) = v3 + 64;
  }

  return result;
}

uint64_t image4_trust_set_payload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v13 = 0;
  v12 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  fourcc_init(&v12, a2);
  inited = buff_init_wrap(v9, a3, a4);
  result = payload_init(a1 + 752, v7, &v12, &inited);
  *(a1 + 1320) = 1;
  return result;
}

uint64_t image4_trust_set_booter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 8) != *(a2 + 32))
  {
    __panic_npx("panic: trust chaining not supported for evaluation: %s", *v3);
  }

  return _image4_trust_add_link(a1, a2);
}

uint64_t image4_trust_set_result_buffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*result)
  {
    __panic_npx("panic: operation not supported on this structure version: actual = %hu, expected >= %hu", 0, 1);
  }

  *(result + 1912) = a2;
  *(result + 1920) = a3;
  return result;
}

uint64_t image4_trust_record_property_BOOL(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(result + 1328);
  if (v7 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, v5, v6);
  }

  v8 = result + 48 * v7;
  if (v8 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v9 = v8 + 1336;
    *(v9 + 8) = a2;
    *v9 = 1;
    *(v9 + 16) = a3;
    *(result + 1328) = v7 + 1;
    *(v9 + 24) = a4;
    *(v9 + 40) = a5;
  }

  return result;
}

uint64_t image4_trust_record_property_integer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(result + 1328);
  if (v7 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, v5, v6);
  }

  v8 = result + 48 * v7;
  if (v8 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v9 = v8 + 1336;
    *(v9 + 8) = a2;
    *v9 = 2;
    *(v9 + 16) = a3;
    *(result + 1328) = v7 + 1;
    *(v9 + 24) = a4;
    *(v9 + 40) = a5;
  }

  return result;
}

uint64_t image4_trust_record_property_data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(result + 1328);
  if (v7 > 0xB)
  {
    __panic_npx("panic: no more property record slots", a2, a3, a4, a5, v5, v6);
  }

  v8 = result + 48 * v7;
  if (v8 + 1384 > (result + 1912))
  {
    __break(0x5519u);
  }

  else
  {
    v9 = v8 + 1336;
    *(v9 + 8) = a2;
    *v9 = 4;
    *(v9 + 16) = a3;
    *(result + 1328) = v7 + 1;
    *(v9 + 24) = a4;
    *(v9 + 32) = a5;
    *(v9 + 40) = 0;
  }

  return result;
}

void *image4_trust_evaluate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8, v66);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  bzero(&v63, 0xEE0uLL);
  v62 = v15;
  v35[0] = "boot";
  v35[1] = 0xAAAAAAAA626F6F74;
  v35[2] = &v62;
  v35[3] = &v62;
  v35[4] = _boot_expert_init;
  v35[5] = _boot_expert_boot;
  v35[6] = _boot_expert_logv;
  v35[7] = _boot_expert_dump;
  v36 = 0u;
  v37 = 0u;
  v39 = 0;
  v40 = 0;
  v38 = _boot_expert_get_digest_info;
  v41 = _boot_expert_get_secure_boot;
  v42 = _boot_expert_query_chip;
  v43 = _boot_expert_query_chip_boot;
  v44 = _boot_expert_query_nonce;
  v45 = _boot_expert_entangle_nonce;
  v46 = _boot_expert_read_boot_manifest;
  v47 = _boot_expert_query_trust_store;
  v48 = _boot_expert_read_storage;
  v49 = _boot_expert_write_storage;
  v50 = _boot_expert_sync_storage;
  v51 = _boot_expert_query_property_BOOL;
  v52 = _boot_expert_query_property_uint32;
  v53 = _boot_expert_query_property_uint64;
  v54 = _boot_expert_query_property_digest;
  v55 = _boot_expert_query_property_version;
  v56 = _boot_expert_init_once;
  v57 = _boot_expert_boot_once;
  v58 = _boot_expert_read_random;
  v59 = _boot_expert_syscall;
  v60 = _boot_expert_lock;
  v61 = _boot_expert_unlock;
  v16 = image4_environment_resolve(v14);
  if (v16)
  {
    if (*(v13 + 144) > 1uLL)
    {
      v15 = v35;
    }

    v17 = *(v13 + 56);
    if (v17)
    {
      v18 = 1;
      while (1)
      {
        v19 = v17[1];
        v20 = *(v19 + 32);
        if (v15 == v35)
        {
          if (!*(v19 + 744))
          {
            goto LABEL_38;
          }

          v21 = *(v19 + 1320);
          *(v19 + 152) = v15;
          if (v21)
          {
            *(v19 + 752) = v15;
          }
        }

        if (v19 >= v19 + 1928)
        {
          goto LABEL_37;
        }

        v22 = (*(v20 + 40))();
        if (v22)
        {
          break;
        }

        v17 = *v17;
        ++v18;
        if (!v17)
        {
          v23 = 0;
          goto LABEL_17;
        }
      }

      v23 = v22;
      expert_log(v15, 0, "trust evaluation failed: coprocessor = %s, sequence number = %lu, chain length = %lu: %d", **(v14 + 16), v18, *(v13 + 144), v22);
    }

    else
    {
      v23 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v23 = 45;
    expert_log(v15, 0, "environment not supported: coprocessor = %s, handle = %llx: %d", **(v14 + 16), *(v14 + 24), 45);
  }

LABEL_17:
  v24 = *(v13 + 32);
  if (*(v13 + 744))
  {
    v25 = v13 + 152;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v13 + 1320);
  v64 = 0;
  v65[0] = 0;
  if (v23)
  {
    v27 = 0;
    v28 = 0;
    v29 = v23;
    goto LABEL_35;
  }

  if (v26)
  {
    v30 = v13 + 752;
  }

  else
  {
    v30 = 0;
  }

  v31 = image4_trust_evaluation_get_result(v24, v16, v25, v30, v65);
  v28 = v65[0];
  if (v31 > v31 + v65[0])
  {
    goto LABEL_37;
  }

  v27 = v31;
  v32 = v25 + 544;
  if (!*(v25 + 584))
  {
    v32 = 0;
  }

  v64 = v32;
  *(v25 + 584) = 0;
  if (!v31 || (v33 = *(v13 + 1912)) == 0)
  {
    v29 = 0;
    goto LABEL_35;
  }

  if (*(v13 + 1920) < v28)
  {
    v27 = 0;
    v28 = 0;
    v29 = 7;
    goto LABEL_35;
  }

  memcpy(v33, v27, v28);
  if (v28 > *(v13 + 1920))
  {
LABEL_37:
    __break(0x5519u);
LABEL_38:
    __panic_npx("panic: optional not set");
  }

  v29 = 0;
  v27 = *(v13 + 1912);
LABEL_35:
  v10(v13, v27, v28, v29, v12);
  result = buff_destroy(&v64);
  if (v23 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v23);
  }

  return result;
}

uint64_t *image4_trust_destroy(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (!*(v1 + 744))
    {
      __panic_npx("panic: optional not set");
    }

    v2 = result;
    v3 = *(v1 + 16);
    if (*(v1 + 1320))
    {
      v4 = v1 + 752;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = v1 + 152;
    manifest_destroy(&v6);
    payload_destroy(&v5);
    return _expert_dealloc_type(v3, *(v1 + 40), v2);
  }

  return result;
}

uint64_t _image4_trust_find_record(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_20;
      }

      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

LABEL_11:
    v5 = a1 + 1336;
    v6 = 12;
    while (v5 + 48 <= (a1 + 1912))
    {
      if (*(v5 + 16) == a4 && *(v5 + 8) == v4 && *v5 == a3)
      {
        return v5;
      }

      v5 += 48;
      if (!--v6)
      {
        return 0;
      }
    }

    __break(0x5519u);
LABEL_20:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p_where", a2);
  }

  if (a2 - 2 >= 2)
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      if (a2 != 5)
      {
        goto LABEL_20;
      }

      v4 = 4;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t image4_identifier_get_constraint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(*a1 + 48);
  if (v10 >= 9)
  {
    __panic_npx_3(a1, a2, a3, a4, a5, a6, a7, a8, "id4->id_p->p_constraint->pc_code", v10, v8, v9);
  }

  return qword_298EF7A40[v10];
}

void __panic_npx_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: unreachable case: %s = 0x%llx", va);
  _os_crash();
  __break(1u);
}

size_t _darwin_el0_init(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  memcpy(__dst, "IODeviceTree:/chosen", sizeof(__dst));
  memcpy(path, "IODeviceTree:/product", sizeof(path));
  memcpy(v25, "IODeviceTree:/chosen/manifest-properties", sizeof(v25));
  memcpy(v24, "IODeviceTree:/chosen/asmb", sizeof(v24));
  v20 = 64;
  v21 = 64;
  memset(v23, 0, sizeof(v23));
  v22[0] = 0;
  v22[1] = 0;
  *v2 = os_log_create("com.apple.security.libimage4", "darwin-user");
  v3 = IORegistryEntryFromPath(0, __dst);
  *(v2 + 12) = v3;
  if (!v3)
  {
LABEL_33:
    __panic_npx("panic: failed to get chosen node");
  }

  v4 = IORegistryEntryFromPath(0, path);
  *(v2 + 16) = v4;
  if (!v4)
  {
    __panic_npx("panic: failed to get product node");
  }

  v5 = IORegistryEntryFromPath(0, v25);
  *(v2 + 20) = v5;
  if (!v5)
  {
    __panic_npx("panic: failed to get manifest properties");
  }

  v6 = IORegistryEntryFromPath(0, v24);
  *(v2 + 24) = v6;
  if (!v6)
  {
    expert_log(a1, 3uLL, "no asmb");
  }

  v7 = v2 + 304;
  v8 = IOServiceMatching("AppleImage4");
  MatchingService = IOServiceGetMatchingService(0, v8);
  if (MatchingService)
  {
    if (v2 >= v7)
    {
LABEL_32:
      __break(0x5519u);
      goto LABEL_33;
    }

    if (IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, (v2 + 28)))
    {
      expert_log(a1, 3uLL, "IOServiceOpen: %d");
    }

    else
    {
      expert_log(a1, 3uLL, "IOServiceOpen: success");
    }
  }

  else
  {
    expert_log(a1, 3uLL, "IOServiceGetMatchingService failed");
  }

  if (v2 >= v7)
  {
    goto LABEL_32;
  }

  if ((sysctlbyname("kern.osreleasetype", (v2 + 144), &v21, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v10 = *__error();
  if (v10 != 2)
  {
    if (v10)
    {
      v11 = __error();
      expert_log(a1, 3uLL, "sysctlbyname[kern.osreleasetype]: %d", *v11);
    }

    else
    {
      *(v2 + 208) = 1;
    }
  }

  if ((sysctlbyname("kern.bootsessionuuid", v23, &v20, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v12 = *__error();
  if (v12 != 2)
  {
    if (v12)
    {
      v14 = __error();
      expert_log(a1, 3uLL, "sysctlbyname[kern.bootsessionuuid]: %d", *v14);
    }

    else
    {
      v13 = darwin_uuid_parse(v23, v22);
      if (v13)
      {
        expert_log(a1, 3uLL, "failed to parse boot session uuid: %s: %d", v23, v13);
        return dylib_expert_state_init(v2 + 32);
      }

      digest_init(v2 + 216, v22, 0x10uLL);
      *(v2 + 296) = 1;
    }
  }

  v15 = getenv("IMAGE4_LOG_FD");
  if (v15)
  {
    v16 = v15;
    *__error() = 0;
    v17 = strtol(v16, 0, 0);
    if (*__error())
    {
      __panic_npx("panic: invalid log file descriptor");
    }

    if (v17 >= getdtablesize())
    {
      v19 = getdtablesize();
      __panic_npx("panic: invalid log file descriptor: actual = %ld, expected <= %d", v17, v19);
    }

    *(v2 + 8) = v17;
  }

  return dylib_expert_state_init(v2 + 32);
}

uint64_t _darwin_el0_logv(uint64_t a1, unint64_t a2, char *a3, va_list a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v5 = *(a1 + 16);
  if ((*(v5 + 32) & 1) == 0 && !*(v5 + 48))
  {
    if ((*(v5 + 8) & 0x80000000) == 0)
    {
      memset(v9, 0, sizeof(v9));
      if (vasprintf(v9, a3, v10) < 0)
      {
        _darwin_el0_logv_cold_1(&v11, v12);
      }

      v7 = *(v5 + 8);
      v8 = getprogname();
      dprintf(v7, "%s: %s\n", v8, v9[0]);
      free(v9[0]);
    }

    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 3)
      {
        return os_log_with_args();
      }
    }

    else if (a2 <= 1)
    {
      return os_log_with_args();
    }

    __panic_npx("panic: unreachable case: %s = 0x%llx", "lvl", a2);
  }

  return dylib_restoreos_logv(a2, a3, a4);
}

uint64_t _darwin_el0_dump(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 16);
  v11 = *(v10 + 208);
  v12 = *(v10 + 296);
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  qmemcpy(v15, "n/a", sizeof(v15));
  if (v12)
  {
    digest_print_cstr(v10 + 216, v15, a3, a4, a5, a6, a7, a8);
  }

  if (v11)
  {
    v13 = (v10 + 144);
  }

  else
  {
    v13 = "n/a";
  }

  expert_log(a1, a2, "%6s  %-36s : 0x%llx", "", "asmb", *(v10 + 24) != 0);
  expert_log(a1, a2, "%6s  %-36s : 0x%llx", "", "kmod connection", *(v10 + 28));
  expert_log(a1, a2, "%6s  %-36s : %s", "", "release type", v13);
  return expert_log(a1, a2, "%6s  %-36s : %s", "", "boot uuid", v15);
}

void *_darwin_el0_alloc_type(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  handle = type_get_handle(a2);
  size = type_get_size(a2);
  if (!handle)
  {
    return 0;
  }

  v5 = size;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v5, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v5, 0x8709206FuLL);
    if (!result)
    {
      _darwin_el0_alloc_type_cold_1(&v7, v8);
    }
  }

  if (v5 < 1)
  {
    __break(0x5519u);
    return 0;
  }

  return result;
}

void *_darwin_el0_alloc_data(uint64_t a1, int64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!result)
    {
      _darwin_el0_alloc_type_cold_1(&v4, v5);
    }
  }

  if (a2 < 1)
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _darwin_el0_get_secure_boot(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 16) + 24);
  v7 = 0;
  if (v4)
  {
    darwin_read_iokit_u32(v4, "lp-smb0", &v7 + 1);
    darwin_read_iokit_u32(v4, "lp-smb1", &v7);
    v5 = (v7 + HIDWORD(v7));
    expert_log(a1, 2uLL, "secure boot state: smb0 = %#x, smb1 = %#x, secure boot = %#x", HIDWORD(v7), v7, v7 + HIDWORD(v7));
    if (v5 >= 3)
    {
      __panic_npx("panic: invalid secure boot state: %#x", v5);
    }
  }

  else
  {
    v5 = 0;
  }

  expert_log(a1, 2uLL, "returning secure boot state: %#llx", v5);
  *a2 = v5;
  return 0;
}

uint64_t _darwin_el0_query_chip(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 16) + 12);
  v12[1] = _img4_chip_ap_reduced;
  v12[2] = _img4_chip_ap_reduced;
  v12[3] = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v5;
  v11[3] = v5;
  v11[0] = v5;
  v11[1] = v5;
  v10 = 0;
  v9 = 0;
  darwin_read_iokit_cstr(v4, "crypto-hash-method", v11);
  expert_log(a1, 2uLL, "crypto method: %s", v11);
  if (LODWORD(v11[0]) == 828467315)
  {
    v6 = 0;
  }

  else
  {
    if (*&v11[0] != 0x3438332D32616873)
    {
      __panic_npx("panic: non-sensical crypto hash method: %s", v11);
    }

    v6 = _img4_chip_ap_sha2_384;
  }

  v12[0] = v6;
  darwin_read_iokit_BOOL(v4, "use-ddi-secure-boot", &v10 + 1);
  if (HIBYTE(v10) == 1)
  {
    expert_log(a1, 2uLL, "%s: %#x", "use-ddi-secure-boot", HIBYTE(v10));
    v12[0] = _img4_chip_ap_vma2;
  }

  darwin_read_iokit_BOOL(v4, "allow-ecid-mismatch", &v10);
  if (v10 == 1)
  {
    expert_log(a1, 2uLL, "%s: %#x", "allow-ecid-mismatch", v10);
    v12[0] = _img4_chip_ap_vma2_clone;
  }

  darwin_read_iokit_BOOL(v4, "uses-avp-root-ca", &v9);
  if (v9)
  {
    expert_log(a1, 2uLL, "%s: %#x", "uses-avp-root-ca", v9);
    v12[0] = _chip_vma3;
  }

  v7 = &v12[a2];
  if (v7 >= &v13 || v7 < v12)
  {
    __break(0x5519u);
  }

  return *v7;
}

void _darwin_el0_query_trust_store(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 24);
  v20 = 0x4000;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  if (a2)
  {
    *&v23[0] = v18;
    buff_destroy(v23);
    return;
  }

  v9 = malloc_type_malloc(0x4000uLL, 0x2F48DA65uLL);
  if (!v9)
  {
    _darwin_el0_query_trust_store_cold_1(&v22, v23);
  }

  v21 = v9;
  buff_init_xfer(v18, &v21, 0x4000, &_buff_destructor_free, 0);
  os_unfair_lock_lock((v5 + 92));
  v10 = (v5 + 136);
  v11 = (v5 + 96);
  if (*(v5 + 136))
  {
    goto LABEL_5;
  }

  v16 = darwin_syscall_image_copy_active(a1, 0, v18, &v20);
  if (!v16)
  {
    v17 = v18;
    if (v5 >= v5 + 304)
    {
      goto LABEL_18;
    }

    v11 = buff_xfer((v5 + 96), &v17);
    *v10 = 1;
    v10 = v11 + 5;
LABEL_5:
    v12 = *v11;
    v13 = v11[1];
    if (v11 + 5 <= v10 && v12 <= *v11 + v13)
    {
      v15 = 0;
      *a4 = v12;
      *a5 = v13;
      goto LABEL_12;
    }

LABEL_18:
    __break(0x5519u);
    return;
  }

  v15 = v16;
  expert_log(a1, 0, "failed to copy active cryptex0 root: %d", v16);
LABEL_12:
  os_unfair_lock_assert_owner((v5 + 92));
  os_unfair_lock_unlock((v5 + 92));
  *&v23[0] = v18;
  buff_destroy(v23);
  if (v15 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v15);
  }
}

unint64_t _darwin_el0_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v6 = *(*(a1 + 16) + 12);
  v14 = 0;
  v13 = 4;
  v7 = *(a3 + 16);
  if (v7 <= 11)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v8 = 0;
        v9 = "certificate-production-status";
        goto LABEL_26;
      }

      if (v7 == 6)
      {
        v8 = 0;
        v9 = "certificate-security-mode";
        goto LABEL_26;
      }
    }

    else
    {
      switch(v7)
      {
        case 7:
          v8 = 0;
          v9 = "effective-production-status-ap";
          goto LABEL_26;
        case 8:
          v8 = 0;
          v9 = "effective-security-mode-ap";
          goto LABEL_26;
        case 11:
          v9 = "mix-n-match-prevention-status";
          v8 = 1;
          goto LABEL_26;
      }
    }

LABEL_34:
    __panic_npx("panic: illegal %s property: %s", *(*(a3 + 40) + 8), *a3);
  }

  if (v7 > 14)
  {
    switch(v7)
    {
      case 15:
        v8 = 0;
        v9 = "factory-prerelease-global-trust";
        goto LABEL_26;
      case 18:
        v8 = 0;
        v9 = "research-enabled";
        goto LABEL_26;
      case 32:
        v10 = expert_compute_data_only(a1);
        goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v7 == 12)
  {
    result = expert_compute_eieiou(a1, a2, &v14);
    if (result)
    {
      goto LABEL_27;
    }

    v10 = v14;
    goto LABEL_31;
  }

  v8 = 0;
  if (v7 == 13)
  {
    v9 = "internal-use-only-unit";
  }

  else
  {
    v9 = "engineering-use-only-unit";
  }

LABEL_26:
  result = darwin_read_iokit_node(v6, v9, &v14, &v13);
  if (!result)
  {
    v10 = v14;
    if (v8)
    {
      v12 = !v14;
LABEL_32:
      result = 0;
      *a4 = v12;
      return result;
    }

LABEL_31:
    v12 = v10;
    goto LABEL_32;
  }

LABEL_27:
  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", result);
  }

  return result;
}

unint64_t _darwin_el0_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v9 = 4;
  v5 = *(a3 + 16);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = "board-id";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_25;
        }

        v7 = "chip-id";
      }
    }

    else
    {
      v7 = "chip-epoch";
    }

LABEL_18:
    v8 = 12;
    goto LABEL_19;
  }

  if (v5 > 0x21)
  {
LABEL_14:
    if (v5 == 3)
    {
      v7 = "security-domain";
      goto LABEL_18;
    }

    if (v5 == 19)
    {
      v7 = "esdm-fuses";
      goto LABEL_18;
    }

LABEL_25:
    __panic_npx("panic: illegal %s property: %s", *(*(a3 + 40) + 8), *a3);
  }

  if (((1 << v5) & 0x21700000) != 0)
  {
    return 45;
  }

  if (v5 != 23)
  {
    if (v5 == 33)
    {
      v7 = "image4-cert-type";
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v7 = "cryptex1-product-class";
  v8 = 16;
LABEL_19:
  result = darwin_read_iokit_node(*(*(a1 + 16) + v8), v7, &v10, &v9);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", result);
    }
  }

  else
  {
    *a4 = v10;
  }

  return result;
}

unint64_t _darwin_el0_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = 8;
  v10 = 0;
  v5 = *(a3 + 16);
  if (v5 == 4)
  {
    v6 = "unique-chip-id";
    v7 = 12;
  }

  else
  {
    if (v5 != 27)
    {
      __panic_npx("panic: illegal %s property: %s", *(*(a3 + 40) + 8), *a3);
    }

    v6 = "lp-stng";
    v7 = 24;
  }

  result = darwin_read_iokit_node(*(*(a1 + 16) + v7), v6, &v10, &v9);
  if (result)
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", result);
    }
  }

  else
  {
    *a4 = v10;
  }

  return result;
}

unint64_t _darwin_el0_query_property_digest(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 16);
  v8 = *(v7 + 12);
  memset(v21, 0, sizeof(v21));
  __n = 64;
  v18[0] = 0;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, 38);
  v16 = 38;
  v18[1] = 0;
  v9 = *(a3 + 16);
  if (v9 <= 24)
  {
    if (v9 != 9)
    {
      if (v9 != 10)
      {
        if (v9 != 16)
        {
          goto LABEL_35;
        }

        result = darwin_read_iokit_node(v8, "apfs-preboot-uuid", v19, &v16);
        if (result)
        {
          goto LABEL_21;
        }

        result = darwin_uuid_parse(v19, v18);
        if (result)
        {
          goto LABEL_21;
        }

        v12 = v18;
        v13 = 16;
        goto LABEL_29;
      }

      v14 = "boot-manifest-hash";
      goto LABEL_20;
    }

    v10 = expert_compute_udid(a1, a2, v20);
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_30:
    digest_copy(a4, v20);
    return 0;
  }

  if (v9 > 27)
  {
    if (v9 == 28)
    {
      v15 = darwin_copy_kcinstall_nonce_hash(a1, a2);
      if (v15)
      {
        v10 = v15;
        if (v15 == 96)
        {
          result = darwin_syscall_nonce_copy_hash(a1, a2, -1, v21, &__n);
          if (result)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }

        expert_log(a1, 0, "failed to copy kcinstall nonce hash: %d", v15);
        if (v10)
        {
LABEL_22:
          if (v10 >= 0x6B)
          {
            __panic_npx("panic: error not set to valid posix code: %d", v10);
          }

          return v10;
        }
      }
    }

    else
    {
      if (v9 != 30)
      {
        goto LABEL_35;
      }

      if (!*(v7 + 296))
      {
        return 2;
      }

      digest_copy(v20, v7 + 216);
    }

    goto LABEL_30;
  }

  if (v9 != 25)
  {
    if (v9 == 26)
    {
      return 45;
    }

LABEL_35:
    __panic_npx("panic: illegal %s property: %s", *(*(a3 + 40) + 8), *a3);
  }

  v8 = *(v7 + 24);
  v14 = "lp-spih";
LABEL_20:
  result = darwin_read_iokit_node(v8, v14, v21, &__n);
  if (result)
  {
LABEL_21:
    v10 = result;
    goto LABEL_22;
  }

LABEL_27:
  v13 = __n;
  if (__n <= 0x40)
  {
    v12 = v21;
LABEL_29:
    digest_init(v20, v12, v13);
    goto LABEL_30;
  }

  __break(0x5519u);
  return result;
}

uint64_t _darwin_el0_query_property_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(v11, 0, 64);
  v8 = 64;
  v10 = 0x3E800000000;
  memset(v9, 0, sizeof(v9));
  if (*(a3 + 16) != 17)
  {
    __panic_npx("panic: illegal %s property: %s", *(*(a3 + 40) + 8), *a3);
  }

  boot_manifest = expert_read_boot_manifest(a1, "love", v11, &v8);
  v6 = boot_manifest;
  if (boot_manifest)
  {
    if (boot_manifest >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", boot_manifest);
    }
  }

  else
  {
    version_init(v9, v11, v8);
    version_copy(a4, v9);
  }

  return v6;
}

uint64_t _darwin_el0_init_once(uint64_t result)
{
  v1 = result;
  v2 = 0;
  if (_darwin_el0_init_once_once != -1)
  {
    return _darwin_el0_init_once_cold_1(&v1, &v2, result);
  }

  return result;
}

uint64_t _darwin_el0_boot_once(uint64_t a1)
{
  if (_darwin_el0_boot_once_once != -1)
  {
    _darwin_el0_boot_once_cold_1();
  }

  return *(*(a1 + 16) + 88);
}

uint64_t _darwin_el0_syscall(uint64_t a1, uint64_t a2, void *a3, size_t a4, void *a5, size_t *a6)
{
  v14 = *a2;
  v15 = *a6;
  result = expert_log(a1, 2uLL, "syscall: %s", v14);
  if (v15 > *a6)
  {
    __break(0x5519u);
  }

  else
  {
    if (!sysctl((a2 + 12), *(a2 + 32), a5, &v15, a3, a4))
    {
      return 0;
    }

    v13 = *__error();
    dylib_expert_record_trap_error(a1, a2, "sysctl", v13);
    if (v13 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v13);
    }

    return v13;
  }

  return result;
}

uint64_t _darwin_el0_init_once_tramp(uint64_t *a1)
{
  v1 = *a1;
  a1[1] = generic_expert();

  return dylib_init(v1);
}

uint64_t _darwin_el0_boot_once_tramp(uint64_t a1)
{
  result = expert_boot(a1);
  *(*(a1 + 24) + 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
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

void _prepare_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v9[0] = 0;
  v9[1] = 0;
  __n = 0;
  memset(v8, 0, sizeof(v8));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v9, &__n);
  if (boot_nonce)
  {
    if (boot_nonce != 45)
    {
      expert_log(v5, 0, "failed to get nonce digest from callback: %d", boot_nonce);
    }
  }

  else if (__n > 0x10)
  {
    __break(0x5519u);
  }

  else
  {
    nonce_init(v8, v9, __n);
    odometer_prepare_nonce(a2, v8);
  }
}

uint64_t _extract_payload_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  payload_get_decoded_bytes(a4, v7);
  result = *&v7[0];
  *a5 = *(&v7[0] + 1);
  return result;
}

uint64_t img4_chip_init_from_buff(uint64_t a1, unint64_t a2)
{
  result = img4_runtime_get_expert(_img4_runtime_default);
  if (a2 == 384)
  {
    v5 = result;
    v6 = _expert_alloc_type(result, &_image4_type_custom_chip);
    if (!v6)
    {
      goto LABEL_8;
    }

    a1 = v6;
    *(v6 + 720) = v5;
    return a1;
  }

  if (a2)
  {
    *(a1 + 720) = 0;
    if (a2 <= 0x2D7)
    {
LABEL_8:
      __panic_npx("panic: object overflows buffer: object = chip, length = %lu, required = %lu", a2, 728);
    }

    return a1;
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_select_cryptex1_boot()
{
  result = img4_chip_select_effective_ap();
  v1 = *(result + 104);
  if (v1)
  {
    return *v1;
  }

  if (result < result + 264)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_select_cryptex1_preboot()
{
  result = img4_chip_select_effective_ap();
  v1 = *(result + 104);
  if (v1)
  {
    return *(v1 + 16);
  }

  if (result < result + 264)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_get_cryptex1_boot(unint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    return *v1;
  }

  if (result + 264 >= result)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", name);
  }

  __break(0x5519u);
  return result;
}

unint64_t img4_chip_get_cryptex1_boot_proposal(unint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    return *(v1 + 8);
  }

  if (result + 264 >= result)
  {
    name = chip_get_name(result);
    __panic_npx("panic: no cryptex1 guests for %s", name);
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_chip_instantiate(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(_img4_runtime_default);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = 0u;
  v10 = 0u;
  result = expert_runtime_boot(expert);
  if (result || (result = chip_instance_instantiate(&v9, expert, a1), result))
  {
    if (result >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", result);
    }
  }

  else
  {
    *(a2 + 8) = a1;
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 40) = v11;
    *(a2 + 48) = DWORD2(v11);
    img4_dgst_init_from_digest(a2 + 64, v12);
    v6 = 0;
    *(a2 + 128) = v13;
    *(a2 + 52) = BYTE12(v14);
    *(a2 + 54) = BYTE13(v14);
    *(a2 + 60) = BYTE14(v14);
    *(a2 + 56) = DWORD2(v14);
    *(a2 + 53) = HIBYTE(v14);
    do
    {
      v7 = __omit_map[v6];
      if (v7)
      {
        v8 = property_find_from_expert(v6);
        if (!v8 || (v8[9] & *(&v9 + 1)) == 0)
        {
          *(a2 + 16) |= v7;
        }
      }

      v6 = (v6 + 1);
    }

    while (v6 != 35);
    return 0;
  }

  return result;
}

uint64_t img4_chip_custom(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  memset(&v18[8], 0, 120);
  v16 = v2;
  v17 = *(a1 + 24);
  *v18 = *(a1 + 40);
  *&v18[8] = *(a1 + 48);
  v3 = *(a1 + 72);
  if (v3 >= 0x31)
  {
    goto LABEL_10;
  }

  v6 = a2 + 264;
  v7 = a2 + 720;
  digest_init(&v18[16], (a1 + 80), v3);
  v8 = 0;
  *&v18[96] = *(a1 + 128);
  v18[124] = *(a1 + 52);
  v18[125] = *(a1 + 54);
  v18[126] = *(a1 + 60);
  *&v18[120] = *(a1 + 56);
  v18[127] = *(a1 + 53);
  do
  {
    v9 = __omit_map[v8];
    if (v9)
    {
      v10 = property_find_from_expert(v8);
      if (v10)
      {
        if ((*(a1 + 16) & v9) == 0)
        {
          *(&v16 + 1) |= v10[9];
        }
      }
    }

    v8 = (v8 + 1);
  }

  while (v8 != 35);
  memcpy(a2, v2, 0x108uLL);
  *(a2 + 16) = 3;
  if (v6 >= v7)
  {
LABEL_10:
    __break(0x5519u);
  }

  *(a2 + 264) = "custom chip";
  *(a2 + 272) = 1667787120;
  *(a2 + 280) = a2 + 712;
  *(a2 + 288) = a2 + 712;
  *(a2 + 296) = _chip_expert_init;
  *(a2 + 304) = _chip_expert_boot;
  *(a2 + 312) = _chip_expert_logv;
  *(a2 + 320) = _chip_expert_dump;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = _chip_expert_get_digest_info;
  *(a2 + 384) = _chip_expert_get_secure_boot;
  *(a2 + 392) = _chip_expert_query_chip;
  *(a2 + 400) = _chip_expert_query_chip_boot;
  *(a2 + 408) = _chip_expert_query_nonce;
  *(a2 + 416) = _chip_expert_entangle_nonce;
  *(a2 + 424) = _chip_expert_read_boot_manifest;
  *(a2 + 432) = _chip_expert_query_trust_store;
  *(a2 + 440) = _chip_expert_read_storage;
  *(a2 + 448) = _chip_expert_write_storage;
  *(a2 + 456) = _chip_expert_sync_storage;
  *(a2 + 464) = _chip_expert_query_property_BOOL;
  *(a2 + 472) = _chip_expert_query_property_uint32;
  *(a2 + 480) = _chip_expert_query_property_uint64;
  *(a2 + 488) = _chip_expert_query_property_digest;
  *(a2 + 496) = _chip_expert_query_property_version;
  *(a2 + 504) = _chip_expert_init_once;
  *(a2 + 512) = _chip_expert_boot_once;
  *(a2 + 520) = _chip_expert_read_random;
  *(a2 + 528) = _chip_expert_syscall;
  *(a2 + 536) = _chip_expert_lock;
  *(a2 + 544) = _chip_expert_unlock;
  *(a2 + 552) = v16;
  *(a2 + 568) = v17;
  v11 = *&v18[48];
  *(a2 + 616) = *&v18[32];
  *(a2 + 632) = v11;
  v12 = *&v18[16];
  *(a2 + 584) = *v18;
  *(a2 + 600) = v12;
  v13 = *&v18[112];
  *(a2 + 680) = *&v18[96];
  *(a2 + 696) = v13;
  v14 = *&v18[80];
  *(a2 + 648) = *&v18[64];
  *(a2 + 664) = v14;
  *(a2 + 712) = a2 + 552;
  *(a2 + 112) = v6;
  return a2;
}

uint64_t img4_chip_select_personalized_ap()
{
  v0 = generic_expert_specialist();

  return expert_query_chip(v0, 0);
}

uint64_t img4_chip_select_effective_ap()
{
  v0 = generic_expert_specialist();
  v3 = 0;
  if (expert_get_secure_boot(v0, &v3))
  {
    v1 = 0;
    v3 = 0;
  }

  else
  {
    v1 = v3;
  }

  return expert_query_chip(v0, v1);
}

void *img4_buff_dealloc(void *result)
{
  if (result)
  {
    v1 = result[3];
    if (v1)
    {
      if (result[2])
      {
        v2 = 1;
      }

      else
      {
        v2 = result[1] == 0;
      }

      if (v2)
      {
        return v1(&_img4_runtime_default);
      }

      else
      {
        __break(0x5519u);
      }
    }
  }

  return result;
}

void *img4_runtime_find_object_spec(int a1)
{
  v1 = &_img4_runtime_object_spec_local_policy;
  if (a1 != 1819307884)
  {
    v1 = 0;
  }

  if (a1 == 1634756974)
  {
    return &_img4_runtime_object_spec_supplemental_root;
  }

  else
  {
    return v1;
  }
}

uint64_t img4_buff_init_from_buff(uint64_t result, void *a2)
{
  *result = 0;
  v2 = a2[1];
  if (*a2 > (*a2 + v2))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = *a2;
    *(result + 16) = v2;
    *(result + 24) = 0;
  }

  return result;
}

__n128 img4_buff_steal(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  *(a2 + 24) = 0;
  return result;
}

uint64_t img4_buff_dealloc_internal(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = v2[3];
    if (v3)
    {
      if (v2[2])
      {
        v5 = 1;
      }

      else
      {
        v5 = v2[1] == 0;
      }

      if (v5)
      {
        a1 = v3(a1);
        *a2 = 0;
      }

      else
      {
        __break(0x5519u);
      }
    }
  }

  return a1;
}

uint64_t img4_nonce_init_from_digest(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 52) = 48;
  digest_copy_out32(a2, (a1 + 2), (a1 + 52));
  return a1;
}

uint64_t digest_init_from_img4_dgst(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0x31)
  {
    return digest_init(result, (a2 + 16), v2);
  }

  __break(0x5519u);
  return result;
}

uint64_t digest_init_from_img4_nonce(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 52);
  if (v2 < 0x31)
  {
    return digest_init(result, (a2 + 2), v2);
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_dgst_init_from_digest(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 48;
  digest_copy_out(a2, (a1 + 16), (a1 + 8));
  return a1;
}

void *_darwin_runtime_alloc(uint64_t a1, int64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!result)
    {
      _darwin_runtime_alloc_cold_1(&v4, v5);
    }
  }

  if (a2 < 1)
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _darwin_runtime_execute_object(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = dylib_expert();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = 2;
  v17 = *a2;
  memset(v18, 170, sizeof(v18));
  v11 = 2;
  v12 = v17;
  v13 = 0;
  v15 = 0;
  v14 = 0;
  v10 = 33;
  buff_init_from_img4_buff(v21, a3);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  buff_init_from_img4_buff(v19, v8);
  v18[0] = *&v21[0];
  LODWORD(v18[1]) = buff_get_length_uint32(v21);
  *(&v18[1] + 4) = *&v19[0];
  HIDWORD(v18[2]) = buff_get_length_uint32(v19);
  result = dylib_expert_call_method(v7, 0xDuLL, &v16, 0x21uLL, &v11, &v10);
  if (result >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", result);
  }

  return result;
}

uint64_t _darwin_runtime_copy_object(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = dylib_expert();
  v20 = 1;
  v8 = *a2;
  v21 = *a2;
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a3 + 8) == 0;
  }

  if (!v10)
  {
    __break(0x5519u);
    goto LABEL_13;
  }

  v22 = *(a3 + 8);
  if (HIDWORD(v9))
  {
LABEL_13:
    __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", "payload->i4b_len", v9, 0xFFFFFFFFLL);
  }

  v11 = v7;
  v23 = v9;
  v16 = 1;
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v15 = 21;
  v12 = expert_runtime_boot(v7);
  if (v12)
  {
    v13 = v12;
    expert_log(v11, 3uLL, "failed to boot expert for syscall: %d", v12);
  }

  else
  {
    v13 = dylib_expert_call_method(v11, 0xFuLL, &v20, 0x15uLL, &v16, &v15);
    if (!v13)
    {
      *a4 = v19;
      return v13;
    }
  }

  if (v13 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v13);
  }

  return v13;
}

uint64_t darwin_copy_kcinstall_nonce_hash(uint64_t a1, char *a2)
{
  if (a2 != _chip_ap_kcinstall)
  {
    return 96;
  }

  __break(0x5519u);
  return result;
}

uint64_t *chip_bin_find_entry(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1;
  v6 = 24;
  while (1)
  {
    v7 = *v5;
    if (!*v5)
    {
      return 0;
    }

    if (*(a2 + 16) == 3)
    {
      v8 = strcmp(*(a2 + 8), *(v7 + 8));
      if (v7 == a2 || v8 == 0)
      {
        return v5;
      }

      goto LABEL_11;
    }

    if (v7 == a2)
    {
      return &a1[3 * v4];
    }

LABEL_11:
    ++v4;
    v5 += 3;
    if (!--v6)
    {
      return 0;
    }
  }
}

_DWORD *chip_bin_find_by_fourcc(uint64_t a1, int a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    if (!v3 || *v3 == a2)
    {
      break;
    }

    v2 += 24;
    if (v2 == 576)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t chip_bin_find_by_name(uint64_t a1, char *__s2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + v4);
    if (!v5 || !strcmp(*(v5 + 8), __s2))
    {
      break;
    }

    v4 += 24;
    if (v4 == 576)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t chip_bin_find_by_handle(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = 24;
  while (1)
  {
    result = *(v2 - 1);
    if (!result || *v2 == a2)
    {
      break;
    }

    v2 += 3;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t chip_bin_check(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (chip_bin_find_entry(a1, a2))
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t *_chip_bin_get_data(uint64_t *a1, uint64_t a2)
{
  result = chip_bin_find_entry(a1, a2);
  if (result)
  {
    return result[2];
  }

  return result;
}

uint64_t _manifest_impose_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4))
{
  v66 = *MEMORY[0x29EDCA608];
  v61[0] = a1;
  v61[1] = a2;
  v61[2] = a3;
  v61[3] = a4;
  v62 = 0;
  v63 = 0;
  v61[4] = a5;
  v64 = _manifest_evaluate_trust_payload;
  v65 = 0xAAAAAAAAFFFFFFFFLL;
  v59 = 0;
  v60 = 0;
  v8 = *a1;
  v9 = a1[1];
  if (a3)
  {
    v10 = (*(a3 + 8) + 4);
    v11 = "payload";
  }

  else
  {
    v64 = _manifest_evaluate_trust_manifest;
    v10 = "n/a";
    v11 = "manifest";
  }

  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = alloc_preference;
  }

  if (v13 == 1)
  {
    goto LABEL_11;
  }

  if (v13 != 2)
  {
    goto LABEL_53;
  }

  v14 = _expert_alloc_type(v8, &_image4_type_decode_context);
  if (!v14)
  {
LABEL_11:
    size = type_get_size(&_image4_type_decode_context);
    v25 = MEMORY[0x2A1C7C4A8](size, v18, v19, v20, v21, v22, v23, v24, v59);
    v15 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v25 >= 0x31)
    {
      v26 = v25 - 48;
    }

    else
    {
      v26 = 0;
    }

    memset(v15 + 48, 170, v26);
    *v15 = 0u;
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    v16 = "stack";
  }

  else
  {
    v15 = v14;
    v59 = v14;
    v16 = "heap";
  }

  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  expert_log(*a1, 1uLL, "decode context allocated on %s", v16);
  v27 = chip_select_decode(a2);
  v62 = v27;
  if (!v27)
  {
    v50 = *a1;
    v49 = 82;
    expert_log(v50, 0, "chip environment not booted: %s: %d", *(a2 + 8), 82);
    goto LABEL_49;
  }

  if (v9)
  {
    v28 = *(v9 + 40);
    if (v28)
    {
      v29 = v28(a1, v27, a1[2]);
      if (v29)
      {
        v62 = v29;
        *v15 = v29;
      }
    }
  }

  v30 = _type_get_alloc_preference(&_image4_type_odometer);
  if (v30 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  if (v31 == 1)
  {
    goto LABEL_27;
  }

  if (v31 != 2)
  {
LABEL_53:
    __panic_npx("panic: unreachable case: %s = 0x%llx");
  }

  v32 = _expert_alloc_type(v8, &_image4_type_odometer);
  if (v32)
  {
    v33 = v32;
    v60 = v32;
    v34 = "heap";
    goto LABEL_31;
  }

LABEL_27:
  v35 = type_get_size(&_image4_type_odometer);
  v43 = MEMORY[0x2A1C7C4A8](v35, v36, v37, v38, v39, v40, v41, v42, v59);
  v33 = &v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v43 >= 0x3D1)
  {
    v44 = v43 - 976;
  }

  else
  {
    v44 = 0;
  }

  memset(v33 + 976, 170, v44);
  bzero(v33, 0x3D0uLL);
  v34 = "stack";
LABEL_31:
  expert_log(*a1, 1uLL, "odometer allocated on %s", v34);
  odometer_init(v33, *a1, a1, a2);
  v46 = v45;
  v63 = v45;
  v47 = odometer_prepare(v45);
  if (v47)
  {
    v48 = v47;
    expert_log(*a1, 0, "failed to prepare anti-replay: %d", v47);
    v49 = v48;
    goto LABEL_49;
  }

  if (v9 && *(v9 + 32))
  {
    expert_log(*a1, 2uLL, "calling out to manifest prepare function");
    (*(v9 + 32))(a1, v46, a1[2]);
  }

  *(v15 + 5) = v61;
  v51 = *a1;
  if (*a5 == _manifest_validate_property)
  {
    v52 = "validation";
  }

  else
  {
    if (*a5 != _manifest_audit_property)
    {
      __panic_npx("panic: unreachable");
    }

    v52 = "audit";
  }

  name = chip_get_name(a2);
  v54 = *(a2 + 112);
  if (v54)
  {
    v55 = *v54;
  }

  else
  {
    v55 = "n/a";
  }

  expert_log(v51, 1uLL, "performing trust evaluation: type = %s %s, chip = %s, chip type = 0x%llx, chip expert = %s, payload = %s", v11, v52, name, *(a2 + 16), v55, v10);
  if (v64(a1, v61, v15))
  {
    v56 = v65;
    expert_log(*a1, 0, "trust evaluation failed: %d");
LABEL_48:
    v49 = v56;
    goto LABEL_49;
  }

  v56 = odometer_enforce(v63);
  v57 = *a1;
  if (v56)
  {
    expert_log(v57, 0, "manifest replay denied: %d");
    goto LABEL_48;
  }

  expert_log(v57, 2uLL, "trust evaluation succeeded; manifest is live");
  v49 = 0;
LABEL_49:
  _expert_dealloc_type(v8, &_image4_type_decode_context, &v59);
  _expert_dealloc_type(v8, &_image4_type_odometer, &v60);
  if (v49 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d");
  }

  return v49;
}

uint64_t _manifest_evaluate_trust_payload(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set", a2, a3);
  }

  v5 = Img4DecodePerformTrustEvaluatationWithCallbacks(**(a2[2] + 8), a1 + 72, a2[4], a2[5], a3);
  v6 = *a1;
  if (v5)
  {
    expert_log(v6, 0, "Img4DecodePerformTrustEvaluationWithCallbacks: %d");
  }

  else
  {
    expert_log(v6, 2uLL, "trust evaluation succeeded for payload: %s");
  }

  _manifest_record_trust_evaluation_error(a1, v5, a3);
  return v5;
}

uint64_t _manifest_evaluate_trust_manifest(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set", a2, a3);
  }

  v6 = Img4DecodePerformManifestTrustEvaluationWithCallbacks(a1 + 72, a2[4], a2[5], a3);
  if (v6)
  {
    expert_log(*a1, 0, "Img4DecodePerformManifestTrustEvaluationWithCallbacks: %d");
  }

  else
  {
    v7 = a2[2];
    if (v7)
    {
      v10 = *(v7 + 8) + 4;
      v8 = "manifest trust evaluation succeeded: %s";
    }

    else
    {
      v8 = "manifest trust evaluation succeeded";
    }

    expert_log(*a1, 2uLL, v8, v10);
  }

  _manifest_record_trust_evaluation_error(a1, v6, a3);
  return v6;
}

uint64_t manifest_init(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x218uLL);
  buff_xfer((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_init_borrow(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x210uLL);
  *(a1 + 536) = a3;
  buff_borrow((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_init_wrap(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    a2 = generic_expert_specialist();
  }

  *a1 = a2;
  bzero((a1 + 8), 0x218uLL);
  buff_init_alias((a1 + 24), a3);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t manifest_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

unint64_t manifest_parse(uint64_t a1)
{
  v2 = a1 + 64;
  if (*(a1 + 64))
  {
    v3 = (a1 + 24);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = *v3;
  v5 = v3[1];
  if ((v3 + 5) > v2 || result > *v3 + v5)
  {
    __break(0x5519u);
  }

  else
  {
    Img4DecodeInitAsManifest(result, v5, a1 + 72);
    if (v7)
    {
      v8 = v7;
      v9 = posixdr(v7);
      expert_log(*a1, 0, "Img4DecodeInitAsManifest: %d", v8);
      if (v9 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v9);
      }
    }

    else
    {
      v9 = 0;
      *(a1 + 528) = 1;
    }

    return v9;
  }

  return result;
}

uint64_t manifest_get_restore_info(uint64_t a1)
{
  if (!*(a1 + 528))
  {
    __panic_npx("panic: optional not set");
  }

  v1 = a1 + 72;
  v4 = 0;
  v2 = Img4DecodeRestoreInfoExists(a1 + 72, &v4);
  if (v2)
  {
    __panic_npx("panic: Img4DecodeRestoreInfoExists: %d", v2);
  }

  if (v4)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *manifest_get_bytes(uint64_t a1, void *a2)
{
  if (*(a1 + 528))
  {
    v3 = a1 + 72;
  }

  else
  {
    v3 = 0;
  }

  v7 = 0;
  v6 = 0;
  Manifest = Img4DecodeGetManifest(v3, &v6, &v7);
  if (Manifest)
  {
    __panic_npx("panic: Img4DecodeGetManifest: %d", Manifest);
  }

  return buff_init_wrap(a2, v6, v7);
}

uint64_t manifest_impose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = _manifest_validate_property;
  return _manifest_impose_internal(a1, a2, a3, a4, v5);
}

uint64_t _manifest_validate_property(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 7)
  {
    __panic_npx("panic: bogus property container input: actual = %u, expected < %u", a3, 7);
  }

  if (a3 == 1)
  {

    return _manifest_validate_property_object(a1, a2, a3, a4);
  }

  else
  {
    if (a3)
    {
      __panic_npx("panic: unreachable", a2);
    }

    return _manifest_validate_property_manifest(a1, a2, 0, a4);
  }
}

uint64_t manifest_property_callback(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[1];
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  if (v5)
  {
    v7 = a3;
    fourcc_init(&v29, a3);
    v14 = a4[2];
    switch(v14)
    {
      case 4:
        if (!*(v5 + 16))
        {
          v16 = *a1;
          v17 = "no data property callback";
          goto LABEL_21;
        }

        PropertyData = Img4DecodeGetPropertyData(a4, v7, &v25, &v26);
        v16 = *a1;
        if (!PropertyData)
        {
          expert_log(v16, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v length = 0x%x", &v29 + 4, a2, "octet string", v26);
          return (*(v5 + 16))(a1, &v29, a2, v25, v26, a1[2]);
        }

        v23 = &v29 + 4;
        v24 = PropertyData;
        v17 = "Img4DecodeGetPropertyData: %s: %d";
        break;
      case 2:
        if (!*(v5 + 8))
        {
          v16 = *a1;
          v17 = "no integer property callback";
          goto LABEL_21;
        }

        PropertyInteger64 = Img4DecodeGetPropertyInteger64(a4, v7, &v27, v9, v10, v11, v12, v13);
        v16 = *a1;
        if (!PropertyInteger64)
        {
          expert_log(v16, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%llx", &v29 + 4, a2, "integer", v27);
          return (*(v5 + 8))(a1, &v29, a2, v27, a1[2]);
        }

        v23 = &v29 + 4;
        v24 = PropertyInteger64;
        v17 = "Img4DecodeGetPropertyInteger64: %s: %d";
        break;
      case 1:
        if (*v5)
        {
          PropertyBoolean = Img4DecodeGetPropertyBoolean(a4, v7, &v28);
          v16 = *a1;
          if (!PropertyBoolean)
          {
            expert_log(v16, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%x", &v29 + 4, a2, "BOOL", v28);
            return (*v5)(a1, &v29, a2, v28, a1[2]);
          }

          v23 = &v29 + 4;
          v24 = PropertyBoolean;
          v17 = "Img4DecodeGetPropertyBoolean: %s: %d";
          break;
        }

        v16 = *a1;
        v17 = "no BOOLean property callback";
LABEL_21:
        v22 = 2;
        return expert_log(v16, v22, v17, v23, v24);
      default:
        __panic_npx("panic: unreachable case: %s = 0x%llx", "i4p->type", v14);
    }

    v22 = 0;
    return expert_log(v16, v22, v17, v23, v24);
  }

  v18 = *a1;

  return expert_log(v18, 2uLL, "no callbacks present", a4);
}

uint64_t manifest_post_property_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  v7 = *a5;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  if (v6)
  {
    v10 = a3;
    if (!a3)
    {
      if (!*(a1 + 528))
      {
        __panic_npx("panic: optional not set");
      }

      v10 = a1 + 72;
    }

    QueryForContainer = Img4DecodeGetQueryForContainer(a2);
    if (!QueryForContainer)
    {
      __panic_npx("panic: unsupported container for posting: %u", a2);
    }

    v13 = QueryForContainer;
    v14 = Img4DecodeContainerExists(QueryForContainer, v10, &v30);
    if (v14)
    {
      v15 = *a1;
      v23 = *v13;
      v24 = v14;
      v16 = "failed to check for %s: %d";
LABEL_8:
      v17 = v15;
LABEL_21:
      v22 = 0;
      return expert_log(v17, v22, v16, v23, v24, v25, v26);
    }

    if ((v30 & 1) == 0)
    {
      v17 = *a1;
      v23 = *v13;
      v16 = "%s does not exist";
      goto LABEL_21;
    }

    v20 = v13 + 6;
    switch(a4)
    {
      case 4:
        if (v13 < v20)
        {
          PropertyData = Img4DecodeQueryPropertyData(v13, v10, v7, &v27, &v28);
          if (!PropertyData)
          {
            if (*(v6 + 16))
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v length = %lu", a5 + 4, a2, "data", v28);
              (*(v6 + 16))(a1, a5, a2, v27, v28, *(a1 + 16));
            }

            goto LABEL_34;
          }

          goto LABEL_29;
        }

        break;
      case 2:
        if (v13 < v20)
        {
          PropertyData = Img4DecodeQueryPropertyInteger64(v13, v10, v7, &v29);
          if (!PropertyData)
          {
            if (*(v6 + 8))
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%llx", a5 + 4, a2, "integer", v29);
              (*(v6 + 8))(a1, a5, a2, v29, *(a1 + 16));
            }

            goto LABEL_34;
          }

LABEL_29:
          v15 = *a1;
          if (PropertyData != 1)
          {
            v25 = (a5 + 4);
            v26 = PropertyData;
            v23 = *v13;
            v24 = a4;
            v16 = "failed to decode property: container = %s, type = %x, p = %s: %d";
            goto LABEL_8;
          }

          v24 = a4;
          v25 = (a5 + 4);
          v23 = *v13;
          v16 = "property does not exist: container = %s, type = %x, p = %s";
          v17 = *a1;
LABEL_35:
          v22 = 2;
          return expert_log(v17, v22, v16, v23, v24, v25, v26);
        }

        break;
      case 1:
        if (v13 < v20)
        {
          PropertyData = Img4DecodeQueryPropertyBool(v13, v10, v7, &v30);
          if (!PropertyData)
          {
            if (*v6)
            {
              expert_log(*a1, 2uLL, "property callback: tag = %s, type = %d, asn1 type = %s, v = 0x%x", a5 + 4, a2, "BOOL", v30);
              (*v6)(a1, a5, a2, v30, *(a1 + 16));
            }

LABEL_34:
            v17 = *a1;
            v24 = a4;
            v25 = (a5 + 4);
            v23 = *v13;
            v16 = "posted property: container = %s, type = %x, p = %s";
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        break;
      default:
        goto LABEL_39;
    }

    __break(0x5519u);
LABEL_39:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "asn1type", a4);
  }

  v18 = *a1;

  return expert_log(v18, 2uLL, "no callbacks present", a4);
}

uint64_t manifest_audit(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = _manifest_audit_property;
  return _manifest_impose_internal(a1, a2, a3, 0, v4);
}

uint64_t _manifest_audit_property(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 7)
  {
    __panic_npx("panic: bogus property container input: actual = %u, expected < %u", a3, 7);
  }

  v4 = **(a4 + 40);
  if (a3 == 1)
  {
    v5 = _manifest_validate_property_object(a1, a2, a3, a4);
    if (!v5)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = _manifest_validate_property_manifest(a1, a2, 0, a4);
    if (v5)
    {
LABEL_5:
      expert_log(*v4, 1uLL, "auditing manifest; ignoring validation result: %d", v5);
    }
  }

  return 0;
}

uint64_t manifest_measure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  memset(v27, 0, sizeof(v27));
  if (*(a1 + 528))
  {
    v6 = a1 + 72;
  }

  else
  {
    v6 = 0;
  }

  v26 = 0;
  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = alloc_preference;
  }

  if (v8 == 1)
  {
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx");
  }

  v9 = _expert_alloc_type(v5, &_image4_type_decode_context);
  if (!v9)
  {
LABEL_11:
    size = type_get_size(&_image4_type_decode_context);
    v19 = MEMORY[0x2A1C7C4A8](size, v12, v13, v14, v15, v16, v17, v18, v25);
    v10 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v19 >= 0x31)
    {
      v20 = v19 - 48;
    }

    else
    {
      v20 = 0;
    }

    memset(v10 + 3, 170, v20);
    *v10 = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
  }

  else
  {
    v10 = v9;
    v26 = v9;
  }

  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v21 = chip_select_decode(a2);
  if (!v21)
  {
    __panic_npx("panic: no decode implementation available for chip: %s");
  }

  v22 = v21[4];
  v23 = *v22;
  if (*v22 > 0x40)
  {
    __break(0x5519u);
LABEL_21:
    __panic_npx("panic: Img4DecodeCopyManifestDigest: %d");
  }

  if (Img4DecodeCopyManifestDigest(v6, v27, *v22, v21))
  {
    goto LABEL_21;
  }

  _expert_dealloc_type(v5, &_image4_type_decode_context, &v26);
  return digest_init(a3, v27, v23);
}

void *manifest_destroy(void *result)
{
  v1 = *result;
  if (*result)
  {
    if (!*(v1 + 64))
    {
      __panic_npx("panic: optional not set");
    }

    v2 = result;
    v6 = (v1 + 24);
    v3 = *(v1 + 536);
    if (v3)
    {
      buff_return(v3, &v6);
    }

    v4 = v1 + 544;
    if (!*(v1 + 584))
    {
      v4 = 0;
    }

    v5 = v4;
    buff_destroy(&v5);
    *(v1 + 64) = 0;
    result = buff_destroy(&v6);
    *v2 = 0;
  }

  return result;
}

uint64_t *_manifest_record_trust_evaluation_error(uint64_t *result, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a3 + 40);
    v7 = *(v6 + 64);
    if (v7 == -1)
    {
      expert_log(*result, 1uLL, "certificate trust evaluation failed");
      v7 = 80;
      *(v6 + 64) = 80;
    }

    return expert_log(*v5, 0, "trust evaluation: dr = %d, ct = 0x%x, error = %d", a2, *(a3 + 32), v7);
  }

  return result;
}

uint64_t _manifest_validate_property_manifest(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = *(v6 + 48);
  v8 = *v6;
  v9 = *(v6 + 8);
  v18 = 0;
  v17 = 0;
  v10 = fourcc_init(&v17, a1);
  result = expert_log(*v8, 1uLL, "manifest property: %s", (v10 + 4));
  if (v10 >= v10 + 12)
  {
    goto LABEL_17;
  }

  v12 = v8 + 74;
  result = property_find_from_fourcc(v10, 0);
  if (!result)
  {
    if (v8 < v12)
    {
      _manifest_audit_pseudo_callback(v8, v10, a3);
      result = expert_log(*v8, 1uLL, "unrecognized manifest property: %s");
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v13 = result;
  result = odometer_update(v7, result, a2);
  if (!result)
  {
    if (v8 < v12)
    {
      v14 = v8[1];
      if (v14)
      {
        v15 = *(v14 + 48);
        if (v15)
        {
          v15(v8, v13, 2, 0, 0, v8[2]);
        }
      }

      result = expert_log(*v8, 1uLL, "anti-replay property consumed by odometer: %s");
      goto LABEL_14;
    }

LABEL_17:
    __break(0x5519u);
    return result;
  }

  if (v8 >= v12)
  {
    goto LABEL_17;
  }

  result = _manifest_impose_property(v8, v13, v9, a2, v6);
  if (result)
  {
    *(v6 + 64) = result;
    expert_log(*v8, 0, "property failed to impose on environment: %s: %d", (v10 + 4), result);
    return 3;
  }

LABEL_14:
  if (v8 >= v12)
  {
    goto LABEL_17;
  }

  manifest_property_callback(v8, a3, a1, a2);
  return 0;
}

uint64_t _manifest_validate_property_object(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  v14 = 0;
  v13 = 0;
  v10 = fourcc_init(&v13, a1);
  result = expert_log(*v8, 1uLL, "object property: %s", (v10 + 4));
  if (v10 >= v10 + 12)
  {
    goto LABEL_11;
  }

  v12 = v8 + 74;
  result = property_find_from_fourcc(v10, 1);
  if (!result)
  {
    if (v8 < v12)
    {
      _manifest_audit_pseudo_callback(v8, v10, a3);
      result = expert_log(*v8, 1uLL, "unrecognized object property: %s", (v10 + 4));
      goto LABEL_8;
    }

LABEL_11:
    __break(0x5519u);
    return result;
  }

  if (v8 >= v12)
  {
    goto LABEL_11;
  }

  result = _manifest_impose_property(v8, result, v9, a2, v7);
  if (result)
  {
    *(v7 + 64) = result;
    expert_log(*v8, 0, "object property failed to impose on environment: %d", result);
    return 3;
  }

LABEL_8:
  if (v8 >= v12)
  {
    goto LABEL_11;
  }

  manifest_property_callback(v8, a3, a1, a2);
  return 0;
}

uint64_t _manifest_audit_pseudo_callback(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(result + 8);
  v6[0] = a2 + 4;
  v6[1] = 0;
  v4 = *a2;
  v6[2] = 34;
  v6[3] = v4;
  v7 = *(a2 + 2);
  v8 = &_property_type_BOOL;
  v9 = &_property_constraint_na;
  v10 = a3;
  v11 = xmmword_298EF8590;
  v13 = 0;
  v14 = 0;
  v12 = 4;
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      return v5(result, v6, 3, 0, 0, *(result + 16));
    }
  }

  return result;
}

uint64_t _manifest_impose_property(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  digest = chip_get_digest(a3);
  v43[0] = xmmword_298EF85A0;
  memset(&v43[1], 170, 88);
  __n_4[0] = xmmword_298EF85A0;
  memset(&__n_4[1], 170, 88);
  v12 = *(a2 + 24);
  __n = 0;
  *v40 = 0;
  constraint = chip_get_constraint(a3, a2, *(a5 + 24));
  if (constraint != a2)
  {
    expert_log(*a1, 1uLL, "chip has custom constraint for property: %s", (a2 + 28));
  }

  v14 = *(constraint + 56);
  if (v14)
  {
    if (v14 == 6)
    {
      v15 = 0;
LABEL_53:
      v29 = 1;
LABEL_54:
      v36 = a1[1];
      if (v36)
      {
        v37 = *(v36 + 48);
        if (v37)
        {
          v37(a1, constraint, v29, v43, __n_4, a1[2]);
        }
      }

      if (v15 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v15);
      }

      return v15;
    }

    if (v14 != 1)
    {
      v39 = "p->p_container";
      goto LABEL_61;
    }

    v15 = 85;
    v16 = "object";
  }

  else
  {
    v15 = 13;
    v16 = "manifest";
  }

  if (property_imposable(constraint, a3))
  {
    v14 = **(constraint + 40);
    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          PropertyInteger = Img4DecodeGetPropertyInteger(a4, v12, v43, v17, v18, v19, v20, v21);
          if (PropertyInteger)
          {
            v15 = posixdr(PropertyInteger);
            expert_log(*a1, 0, "Img4DecodeGetPropertyInteger: %d");
            goto LABEL_30;
          }

          property_uint32 = expert_query_property_uint32(v10, a3, constraint, __n_4);
          if (!property_uint32)
          {
            if (!property_constrain_uint32(constraint, v10, v43, __n_4))
            {
              goto LABEL_34;
            }

            goto LABEL_49;
          }

LABEL_47:
          v15 = property_uint32;
          goto LABEL_50;
        }

        goto LABEL_62;
      }

      PropertyBoolean = Img4DecodeGetPropertyBoolean(a4, v12, v43);
      if (PropertyBoolean)
      {
        v15 = posixdr(PropertyBoolean);
        expert_log(*a1, 0, "Img4DecodeGetPropertyBoolean: %d");
LABEL_30:
        if (!v15)
        {
          goto LABEL_53;
        }

LABEL_50:
        v34 = a1[1];
        if (v34)
        {
          v35 = *(v34 + 24);
          if (v35)
          {
            v35(a1, a3, constraint, a1[2]);
          }
        }

        goto LABEL_53;
      }

      property_uint32 = expert_query_property_BOOL(v10, a3, constraint, __n_4);
      if (property_uint32)
      {
        goto LABEL_47;
      }

      if (property_constrain_BOOL(constraint, v10, v43, __n_4))
      {
        goto LABEL_49;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          PropertyInteger64 = Img4DecodeGetPropertyInteger64(a4, v12, v43, v17, v18, v19, v20, v21);
          if (PropertyInteger64)
          {
            v15 = posixdr(PropertyInteger64);
            expert_log(*a1, 0, "Img4DecodeGetPropertyInteger64: %d");
            goto LABEL_30;
          }

          property_uint32 = expert_query_property_uint64(v10, a3, constraint, __n_4);
          if (property_uint32)
          {
            goto LABEL_47;
          }

          if (property_constrain_uint64(constraint, v10, v43, __n_4))
          {
            goto LABEL_49;
          }

          break;
        case 3:
          PropertyData = Img4DecodeGetPropertyData(a4, v12, v40, &__n);
          if (PropertyData)
          {
LABEL_27:
            v15 = posixdr(PropertyData);
            expert_log(*a1, 0, "Img4DecodeGetPropertyData: %d");
            goto LABEL_30;
          }

          digest_init(v43, *v40, __n);
          if (property_equal(constraint, digest))
          {
            expert_log(*a1, 1uLL, "imposing object digest");
            payload_measure(*(a5 + 16), a3, __n_4);
          }

          else
          {
            property_uint32 = expert_query_property_digest(v10, a3, constraint, __n_4);
            if (property_uint32)
            {
              goto LABEL_47;
            }
          }

          if (property_constrain_digest(constraint, v10, v43, __n_4, v30, v31, v32, v33))
          {
            goto LABEL_49;
          }

          break;
        case 4:
          PropertyData = Img4DecodeGetPropertyData(a4, v12, v40, &__n);
          if (PropertyData)
          {
            goto LABEL_27;
          }

          version_init(v43, *v40, __n);
          property_uint32 = expert_query_property_version(v10, a3, constraint, __n_4);
          if (!property_uint32)
          {
            if (!property_constrain_version(constraint, v10, v43, __n_4))
            {
              break;
            }

LABEL_49:
            expert_log(*a1, 0, "%s constraint violated: property = %s, type = %s: %d", v16, (constraint + 28), *(*(constraint + 40) + 8), v15);
            goto LABEL_50;
          }

          goto LABEL_47;
        default:
LABEL_62:
          v39 = "p->p_type->pt_switchable";
LABEL_61:
          __panic_npx("panic: unreachable case: %s = 0x%llx", v39, v14);
      }
    }

LABEL_34:
    expert_log(*a1, 2uLL, "%s constraint satisfied: property = %s, type = %s", v16, (constraint + 28), *(*(constraint + 40) + 8));
    v15 = 0;
    v29 = 0;
    goto LABEL_54;
  }

  expert_log(*a1, 1uLL, "%s property not imposable on chip: %s", v16, (constraint + 28));
  v23 = a1[1];
  if (v23)
  {
    v24 = *(v23 + 48);
    if (v24)
    {
      v24(a1, constraint, 3, 0, 0, a1[2]);
    }
  }

  return 0;
}

void *img4_firmware_new(char *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  expert = img4_runtime_get_expert(a1);
  v11 = _expert_alloc_type(expert, &_image4_type_firmware);
  v12 = v11;
  if (v11)
  {
    img4_firmware_init(v11, a1, a2, a3, a4, a5);
    v12[2] = &_image4_type_firmware;
  }

  return v12;
}

__n128 img4_firmware_init(void *a1, char *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  expert = img4_runtime_get_expert(a2);
  v19 = 0;
  v18 = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  bzero(a1, 0x508uLL);
  *a1 = a6;
  a1[1] = a2;
  a1[2] = 0;
  a1[6] = 0;
  a1[78] = 0;
  img4_buff_steal(a1 + 153, a5);
  inited = buff_init_wrap(v16, *(a5 + 8), *(a5 + 16));
  fourcc_init(&v18, v8);
  a1[6] = payload_init((a1 + 7), expert, &v18, &inited);
  v13 = a3[1].n128_u64[0];
  result = *a3;
  *(a1 + 3) = *a3;
  a1[5] = v13;
  return result;
}

void img4_firmware_init_from_buff(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x507)
  {
    __panic_npx("panic: object overflows buffer: object = firmware, length = %lu, required = %lu", a2, 1288);
  }
}

void img4_firmware_init_sentinel(void *a1, uint64_t a2, uint64_t a3)
{
  bzero(a1, 0x508uLL);
  *a1 = a3;
  a1[1] = a2;
  a1[2] = 0;
  a1[6] = 0;
  a1[78] = 0;
}

uint64_t img4_firmware_attach_manifest(uint64_t a1, uint64_t a2)
{
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  img4_buff_steal((a1 + 1256), a2);
  inited = buff_init_wrap(v7, *(a2 + 8), *(a2 + 16));
  result = manifest_init(a1 + 632, expert, &inited);
  *(a1 + 624) = result;
  return result;
}

uint64_t img4_firmware_select_chip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  if ((*a1 & 4) == 0)
  {
    v7 = "cannot select chip with first-stage boots";
LABEL_5:
    v8 = expert;
    v9 = 0;
LABEL_14:
    expert_log(v8, v9, v7, v26);
    return 0;
  }

  v10 = *(a1 + 624);
  if (v10)
  {
    v11 = v10 + 64;
    if (*(v10 + 64))
    {
      v12 = (v10 + 24);
      goto LABEL_12;
    }

LABEL_36:
    __panic_npx("panic: optional not set");
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    v7 = "no manifest with which to select chip";
    goto LABEL_5;
  }

  v11 = v13 + 88;
  if (!*(v13 + 88))
  {
    goto LABEL_36;
  }

  v12 = (v13 + 48);
LABEL_12:
  result = expert_runtime_boot(expert);
  if (result)
  {
    v26 = result;
    v7 = "failed to boot expert for chip selection: %d";
    v8 = expert;
    v9 = 3;
    goto LABEL_14;
  }

  if (v12 < v11 && (v12 + 5) <= v11)
  {
    result = *v12;
    v16 = v12[1];
    if (*v12 <= (*v12 + v16))
    {
      Img4DecodeInitAsManifest(result, v16, v28);
      if (v17)
      {
        v26 = v17;
        v7 = "Img4DecodeInitAsManifest: %d";
        goto LABEL_5;
      }

      if (!a3)
      {
        return 0;
      }

      v18 = 0;
      while (1)
      {
        v15 = *(a2 + 8 * v18);
        v27[0] = _img4_firmware_select_chip_callback;
        v27[1] = 0;
        v27[2] = 0;
        name = chip_get_name(v15);
        result = expert_log(expert, 1uLL, "trying chip: %s", name);
        if (*(v15 + 32))
        {
          break;
        }

        if (v15 >= v15 + 264)
        {
          goto LABEL_37;
        }

        v24 = chip_get_name(v15);
        expert_log(expert, 0, "chip has no static decode implementation: %s", v24);
LABEL_32:
        v15 = 0;
        if (++v18 == a3)
        {
          return v15;
        }
      }

      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = v21;
        v23 = *(*(v15 + 32) + 8 * v20);
        expert_log(expert, 1uLL, "trying i4ct: %u", v20);
        result = Img4DecodePerformManifestTrustEvaluationWithCallbacks(v28, v27, v23, 0);
        if (!result)
        {
          break;
        }

        expert_log(expert, 1uLL, "Img4DecodePerformManifestTrustEvaluationWithCallbacks: %d", result);
        v21 = 0;
        v20 = 1;
        if ((v22 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (v15 < v15 + 264)
      {
        v25 = chip_get_name(v15);
        expert_log(expert, 2uLL, "manifest matches chip: %s, i4ct: %u", v25, v20);
        return v15;
      }
    }
  }

LABEL_37:
  __break(0x5519u);
  return result;
}

uint64_t img4_firmware_execute(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 624);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = img4_firmware_evaluate(a1, a2, a3);
  v8 = result;
  if (result || !*(v5 + 88))
  {
    v9 = 0;
  }

  else
  {
    if (v5 >= v5 + 568)
    {
      __break(0x5519u);
      return result;
    }

    v9 = img4_image_init(v10, v5, v6, *a1);
  }

  result = (*(a1 + 32))(a1, v9, v8, *(a1 + 40));
  if (a2[2] == 3 && a2[14] == a2 + 33)
  {
    result = a2[90];
    if (result)
    {
      v12 = a2;
      result = _expert_dealloc_type(result, &_image4_type_custom_chip, &v12);
    }
  }

  if (v8 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v8);
  }

  return result;
}

unint64_t img4_firmware_evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[14] = *MEMORY[0x29EDCA608];
  expert = img4_runtime_get_expert(*(a1 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v17 = 0;
  v18[0] = a1;
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0;
  v14 = _img4_firmware_prepare;
  v18[1] = a2;
  memset(&v18[2], 0, 88);
  v18[13] = 0xAAAAAAAAFFFFFFFFLL;
  if (!expert)
  {
    __panic_npx("panic: failed to resolve expert for runtime");
  }

  v7 = *(a1 + 48);
  if (!v7 || (*a1 & 2) != 0 || (v8 = payload_parse_relax(v7), !v8))
  {
    inited = *(a1 + 624);
    if (inited)
    {
      v10 = 1;
    }

    else
    {
      v11 = *(a1 + 48);
      if (!*(v11 + 88))
      {
        __panic_npx("panic: optional not set");
      }

      inited = manifest_init_borrow(a1 + 632, expert, (v11 + 48));
      v17 = inited;
      v10 = inited == 0;
    }

    manifest_set_callbacks(inited, v18, v13);
    if (a3)
    {
      digest_init_from_img4_nonce(&v18[3], a3);
      v18[2] = &v18[3];
    }

    if (manifest_parse(inited))
    {
      v8 = 79;
      if (v10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v8 = manifest_impose(inited, a2, *(a1 + 48), 0);
    if (!v10)
    {
LABEL_15:
      manifest_destroy(&v17);
    }
  }

LABEL_16:
  if (v8 == 85)
  {
    return 8;
  }

  if (v8 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v8);
  }

  return v8;
}

void _img4_firmware_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  expert = img4_runtime_get_expert(*(*a3 + 8));
  if (!expert)
  {
    expert = generic_expert_specialist();
  }

  v7 = *(a3 + 8);
  v8 = *v5;
  if ((*v5 & 4) != 0)
  {
    if (v5 < v5 + 161)
    {
      v10 = v5[1];
      v11 = img4_runtime_get_expert(v10);
      if (!v11)
      {
        v11 = generic_expert_specialist();
      }

      LOBYTE(v21[0]) = 0;
      if (img4_runtime_check_custom_BOOL(v10))
      {
        expert_log(v11, 2uLL, "querying custom runtime for mix-n-match policy");
        if (img4_runtime_get_identifier_BOOL(v10))
        {
          expert_log(v11, 0, "failed to query mix-n-match identifier: %d");
        }

        else
        {
          expert_log(v11, 2uLL, "preparing mix-n-match policy: 0x%x", LOBYTE(v21[0]));
          odometer_prepare_mixn_match(a2, v21[0]);
        }
      }

      else
      {
        expert_log(v11, 2uLL, "stock runtime; not querying for mix-n-match policy");
      }

      v12 = v5[1];
      v13 = img4_runtime_get_expert(v12);
      if (!v13)
      {
        v13 = generic_expert_specialist();
      }

      memset(v24, 0, sizeof(v24));
      memset(v23, 0, sizeof(v23));
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      if (img4_runtime_check_custom_digest(v12))
      {
        expert_log(v13, 2uLL, "querying custom runtime for boot manifest hash");
        if (img4_runtime_get_identifier_digest(v12))
        {
          expert_log(v13, 0, "failed to query manifest hash identifier: %d");
        }

        else
        {
          digest_init_from_img4_dgst(v23, v24);
          digest_print_cstr(v23, v21, v15, v16, v17, v18, v19, v20);
          expert_log(v13, 2uLL, "preparing custom boot manifest hash: %s", v21);
          *&v14 = odometer_prepare_notarized_manifest_hash(a2, v23).n128_u64[0];
        }
      }

      else
      {
        expert_log(v13, 2uLL, "stock runtime; not querying for boot manifest hash");
      }

      expert_log(expert, 2uLL, "forcing sideload anti-replay policy due to subsequent stage firmware evaluation", v14);
      odometer_prepare_sideload_mixn_match(a2);
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  if (*(a3 + 16))
  {
    expert_log(expert, 2uLL, "prepared custom nonce hash");
    odometer_prepare_nonce_hash(a2, *(a3 + 16));
    v8 = *v5;
  }

  if ((v8 & 8) != 0)
  {
    expert_log(expert, 2uLL, "forcing sideload anti-replay policy");
    odometer_prepare_sideload_mixn_match(a2);
  }

  if (v7[3] != 1 || v7[2] != 1)
  {
    goto LABEL_30;
  }

  if (v7 >= v7 + 33)
  {
LABEL_36:
    __break(0x5519u);
    return;
  }

  name = chip_get_name(v7);
  expert_log(expert, 1uLL, "%s: simulating chip boot for reduced-security virtual chip policy", name);
  odometer_prepare_mixn_match(a2, 1);
LABEL_30:
  if (!v5[6] && (*v5 & 0x20) == 0)
  {
    expert_log(expert, 2uLL, "manifest-only evaluation; permitting replay");
    odometer_prepare_mixn_match(a2, 1);
  }

  if (!v7[25])
  {
    odometer_prepare_mix_n_match_god_mode(a2);
  }

  *(a3 + 104) = 0;
}

unint64_t **img4_firmware_destroy(unint64_t **result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = v1[1];
    expert = img4_runtime_get_expert(v3);
    v5 = v1 + 157;
    v6 = v1 + 153;
    manifest_destroy(v1 + 78);
    payload_destroy(v1 + 6);
    img4_buff_dealloc_internal(v3, &v6);
    img4_buff_dealloc_internal(v3, &v5);
    return _expert_dealloc_type(expert, v1[2], v2);
  }

  return result;
}

uint64_t _property_filter_constraint(uint64_t a1)
{
  if (*(a1 + 48) == &_property_constraint_na)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _property_filter_anti_replay(uint64_t a1)
{
  if (*(a1 + 48) == &_property_constraint_rp)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _property_filter_manifest(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _property_filter_object(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _property_filter_expert(uint64_t a1)
{
  if (*(a1 + 16) == 34)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

char **property_iterator_next(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 + 1;
  if (v1 == 38)
  {
    return 0;
  }

  if (v1 <= -2)
  {
    __panic_npx("panic: iteration underflow: idx = 0x%lx, %ld", v1 + 1, v1 + 1);
  }

  if (v2 >= 0x28)
  {
    __panic_npx("panic: iteration overflow: idx = 0x%lx, %lu", v1 + 1, v1 + 1);
  }

  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = _property_filter_all;
  }

  while (1)
  {
    v3 = __all[v2];
    if (!(v5)(v3))
    {
      break;
    }

    v6 = v2 + 1;
    if (v2++ >= 0x26)
    {
      goto LABEL_13;
    }
  }

  v6 = v2;
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  v2 = v6;
LABEL_14:
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  return v3;
}

uint64_t property_iterator_reset(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = -1;
  return result;
}

double Img4DecodeInitAsPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Img4DecodeInit(a1, a2, a3);
  if (v7 == 2)
  {

    return Img4DecodeInitPayload(a1, a2, a3);
  }

  return result;
}

void Img4DecodeInitAsManifest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Img4DecodeInit(a1, a2, a3);
  if (v6 == 2)
  {

    Img4DecodeInitManifest(a1, a2, a3);
  }
}

uint64_t Img4DecodeGetQueryForContainer(unsigned int a1)
{
  if (a1 >= 6)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "pc", a1);
  }

  return qword_29EEFF040[a1];
}

uint64_t Img4DecodeQueryPropertyBool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 16))(a3);
  v8 = *(a1 + 24);

  return v8(a2, v7, a4);
}

uint64_t Img4DecodeQueryPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 16))(a3);
  v8 = *(a1 + 32);

  return v8(a2, v7, a4);
}

uint64_t Img4DecodeQueryPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a1 + 16))(a3);
  v10 = *(a1 + 40);

  return v10(a2, v9, a4, a5);
}

uint64_t Img4DecodeIterateObjectItems(char *a1, unsigned int *a2, uint64_t (**a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  __dst[57] = *MEMORY[0x29EDCA608];
  v16[0] = 0;
  v16[1] = 0;
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  result = DERDecodeSeqContentInit(a1 + 5, v16);
  if (!result)
  {
    for (LODWORD(result) = DERDecodeSeqNext(v16, &v14); !result; LODWORD(result) = DERDecodeSeqNext(v16, &v14))
    {
      v9 = v14;
      memset(v13, 0, sizeof(v13));
      v10 = memcpy(__dst, a1, 0x1C8uLL);
      memset(v12, 170, 5);
      v11 = log_expert(v10);
      if (v9 == 1296125520)
      {
        strcpy(v12, "MANP");
        expert_log(v11, 2uLL, "found %s; skipping", v12);
      }

      else
      {
        LOBYTE(v12[1]) = 0;
        v12[0] = bswap32(v9);
        expert_log(v11, 2uLL, "found object: %s", v12);
        result = DERImg4DecodePropertyWithItem(v15, v14, 0x2000000000000011uLL, v13);
        if (result)
        {
          return result;
        }

        *a2 = v9;
        *&__dst[9] = *(&v13[1] + 8);
        result = Img4DecodeEvaluateObjectProperties(__dst, *a3, a4);
        if (result)
        {
          return result;
        }

        *a2 = 0;
      }
    }

    if (result == 1)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t Img4DecodeCheckAuthority(uint64_t a1, __int128 *a2)
{
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = _CheckAuthorityManifestPropertyCallback;
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = _CheckAuthorityEvalCertProperties;
  v6 = a2[2];
  v7 = *(a2 + 6);
  return Img4DecodePerformManifestTrustEvaluationWithCallbacks(a1, v8, &v3, 0);
}

unsigned __int8 **DERImg4DecodePrintProperty(unsigned __int8 **result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v13 = 0;
  v9 = result[5];
  if (v9 <= 0)
  {
    if (v9 != 0xA000000000000000)
    {
      if (v9 != 0xA000000000000001)
      {
        return result;
      }

      v10 = "MUST NOT EXIST";
      goto LABEL_18;
    }

    strcpy(a2, "MUST EXIST");
  }

  else
  {
    switch(v9)
    {
      case 4:
        v11 = result[3];
        if (result[4] >= 0x40)
        {
          v12 = 64;
        }

        else
        {
          v12 = result[4];
        }

        return sprintdgst_npx(a2, v11, v12, a4, a5, a6, a7, a8);
      case 2:
        result = DERParseInteger64((result + 3), &v13);
        if (result)
        {
LABEL_17:
          v10 = "decode failure";
LABEL_18:
          *a2 = *v10;
          *(a2 + 7) = *(v10 + 7);
          return result;
        }

        return snprintf(a2, 0x81uLL, "0x%llx");
      case 1:
        result = DERParseBoolean(result + 3, &v14);
        if (!result)
        {
          return snprintf(a2, 0x81uLL, "%s");
        }

        goto LABEL_17;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CTImg4GetDigestType(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 5 && !memcmp(*a1, &_oidSha1, 5uLL))
  {
    return 1;
  }

  if (v2 == 9 && !memcmp(*a1, &_oidSha224, 9uLL))
  {
    return 2;
  }

  if (v2 == 9 && !memcmp(*a1, &_oidSha256, 9uLL))
  {
    return 4;
  }

  if (v2 == 9 && !memcmp(*a1, &_oidSha384, 9uLL))
  {
    return 8;
  }

  if (v2 != 9 || memcmp(*a1, &_oidSha512, 9uLL))
  {
    __panic_npx("panic: unsupported digest type: oid len = %lu", v2);
  }

  return 16;
}

uint64_t (**CTImg4GetDecodeImplementation(const DERItem *a1))()
{
  if (a1 == &oidSha1Rsa)
  {
    return _ctImg4RsaSha1Impl;
  }

  if (a1 == &oidSha224Rsa)
  {
    return 0;
  }

  if (a1 == &oidSha256Rsa)
  {
    return _ctImg4RsaSha256Impl;
  }

  if (a1 == &oidSha384Rsa)
  {
    return _ctImg4RsaSha384Impl;
  }

  v1 = _ctImg4EcdsaSha1Impl;
  v2 = _ctImg4EcdsaSha256Impl;
  v3 = _ctImg4EcdsaSha384Impl;
  if (a1 == &oidSha512Ecdsa)
  {
    v4 = _ctImg4EcdsaSha512Impl;
  }

  else
  {
    v4 = 0;
  }

  if (a1 != &oidSha384Ecdsa)
  {
    v3 = v4;
  }

  if (a1 != &oidSha256Ecdsa)
  {
    v2 = v3;
  }

  if (a1 == &oidSha224Ecdsa)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  if (a1 != &oidSha1Ecdsa)
  {
    v1 = v5;
  }

  if (a1 == &oidSha512Rsa)
  {
    return _ctImg4RsaSha512Impl;
  }

  else
  {
    return v1;
  }
}

uint64_t _chip_decode_select_static(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  expert_log(a2, 2uLL, "%s: decode selection: static", *(a1 + 8));
  if (!*(a1 + 32))
  {
    __panic_npx("panic: illegal chip definition: no static decode implementation: %s", *(a1 + 8));
  }

  image4_certificate_type = expert_get_image4_certificate_type(a2, &v6);
  if (image4_certificate_type)
  {
    __panic_npx("panic: cannot resolve image4-cert-type: %d", image4_certificate_type);
  }

  expert_log(a2, 1uLL, "%s: using image4-cert-type: %u", *(a1 + 8), v6);
  if (v6 > 1)
  {
    __panic_npx("panic: unsupported image4-cert-type: %d", 0);
  }

  return *(*(a1 + 32) + 8 * v6);
}

uint64_t _chip_decode_select_trust_store(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  expert_log(a2, 2uLL, "%s: decode selection: trust store [0x%llx]", *(a1 + 8), *(a1 + 56));
  if (*(a1 + 32))
  {
    __panic_npx("panic: illegal chip definition: trust store cannot override static decode implementation: %s", *(a1 + 8));
  }

  if (expert_query_trust_store(a2, *(a1 + 56), a1, &v24, &v25))
  {
    expert_log(a2, 0, "%s: failed to query anchor: 0x%llx: %d");
  }

  else
  {
    result = (*(a1 + 48))();
    v13 = *(result + 24);
    v12 = *(result + 32);
    if (v12 > &v12[v13])
    {
      __break(0x5519u);
      return result;
    }

    v23[0] = *(result + 32);
    v23[1] = v13;
    sprintdgst_npx(v26, v12, v13, v7, v8, v9, v10, v11);
    expert_log(a2, 1uLL, "%s: retrieved pinned root from trust store: type = 0x%llx, length = %lu, oid = %s, oid length = %lu", *(a1 + 8), *(a1 + 56), v25, v26, v13);
    if (DERDecodeItem(v23, &v20))
    {
      expert_log(a2, 0, "%s: DERDecodeItem: %d");
    }

    else
    {
      sprintdgst_npx(v26, v21, v22, v14, v15, v16, v17, v18);
      expert_log(a2, 1uLL, "%s: finding digest algorithm for oid: %s", *(a1 + 8), v26);
      DigestType = CTImg4GetDigestType(&v21);
      if (!CTImg4CreateContext(v24, v25, DigestType, 0, a3))
      {
        return *a3;
      }

      expert_log(a2, 0, "%s: failed to parse root: %d");
    }
  }

  return 0;
}

uint64_t chip_dump(uint64_t a1, mach_header_64 *mhp, unint64_t a3)
{
  size = 0xAAAAAAAAAAAAAAAALL;
  v6 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
  v7 = &v6[_dyld_get_image_slide()];
  size = 0xAAAAAAAAAAAAAAAALL;
  v8 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
  result = _dyld_get_image_slide();
  if (v7 < &v8[result + size])
  {
    do
    {
      v10 = *v7;
      v7 += 8;
      v11 = *(*v10 + 8);
      if (!v11)
      {
        v11 = "n/a";
      }

      expert_log(a1, a3, "%6s  %-36s : %s", "", "supported chip", v11);
      size = 0xAAAAAAAAAAAAAAAALL;
      v12 = getsectdatafromheader_64(mhp, "__DATA_CONST", "__image4_chp", &size);
      result = _dyld_get_image_slide();
    }

    while (v7 < &v12[result + size]);
  }

  return result;
}

unint64_t chip_get_property_expert(uint64_t a1, uint64_t a2)
{
  v4 = chip_expert(a1);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = v4 + 288;
  v7 = chip_expert_instance(a1);
  v8 = *(a1 + 16);
  if (v8 - 2 >= 2 && v8 != 0)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    if (!chip_instance_check(v7, a2))
    {
      v6 = 0;
      v5 = 0;
    }

    v8 = *(a1 + 16);
  }

  if (v8 < *(a2 + 80))
  {
    return 0;
  }

  if (v5 && v5 >= v6)
  {
    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "chp->chp_type", v8);
  }

  return v5;
}

uint64_t chip_select_property_expert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 256))
    {
      v6 = *(a1 + 256);
    }

    else
    {
      v6 = &_property_DGST;
    }

    if (!property_equal(a2, v6))
    {
      property_expert = chip_get_property_expert(a1, a2);
      if (property_expert)
      {
        return property_expert;
      }
    }
  }

  return a3;
}

char **chip_get_digest(uint64_t a1)
{
  if (*(a1 + 256))
  {
    return *(a1 + 256);
  }

  else
  {
    return &_property_DGST;
  }
}

uint64_t chip_get_constraint(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 == 34)
  {
    return a2;
  }

  v4 = *(result + 64);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = (v4 + 8 * v3);
  if (v5 >= v4 + 272 || v5 < v4)
  {
    goto LABEL_19;
  }

  result = *v5;
  if (!*v5)
  {
LABEL_17:
    if (!a3)
    {
      return a2;
    }

    v7 = (a3 + 8 * v3);
    if (v7 >= a3 + 272 || v7 < a3)
    {
LABEL_19:
      __break(0x5519u);
      return result;
    }

    result = *v7;
    if (!*v7)
    {
      return a2;
    }
  }

  return result;
}

uint64_t chip_check_entitlement(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 120;
  while (1)
  {
    v5 = *(v4 + v3);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (property_equal(a2, v5))
    {
      break;
    }

    v3 += 8;
    if (v3 == 40)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void _prepare_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v4 = *(*a3 + 24);
  v5 = *(v4 + 8);
  v13[0] = 0;
  v13[1] = 0;
  v8 = 0;
  __n = 0;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  boot_nonce = image4_environment_callout_query_boot_nonce(v4, v13, &__n);
  if (!boot_nonce)
  {
    if (__n <= 0x10)
    {
      nonce_init(v12, v13, __n);
      odometer_prepare_nonce(a2, v12);
      return;
    }

    goto LABEL_12;
  }

  if (boot_nonce != 45)
  {
    expert_log(v5, 0, "failed to get boot nonce from callback: %d");
    return;
  }

  nonce_digest = image4_environment_callout_query_nonce_digest(v4, v11, &v8);
  if (nonce_digest != 45)
  {
    if (!nonce_digest)
    {
      if (v8 <= 0x40)
      {
        digest_init(v10, v11, v8);
        odometer_prepare_nonce_hash(a2, v10);
        return;
      }

LABEL_12:
      __break(0x5519u);
      return;
    }

    expert_log(v5, 0, "failed to get nonce digest from callback: %d");
  }
}

uint64_t _extract_payload_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 528);
  memset(&v12[3], 0, 32);
  if (v7)
  {
    v8 = a3 + 528;
  }

  else
  {
    v8 = 0;
  }

  memset(&v12[1], 0, 32);
  if (v7)
  {
    v9 = a3 + 72;
  }

  else
  {
    v9 = 0;
  }

  v12[0] = 0uLL;
  v10 = manifest_measure(a3, a2, v12);
  *a5 = *(*(a2 + 48))(v10);
  if (v9 + 456 > v8)
  {
    __break(0x5519u);
  }

  return v9 + 328;
}

void *_payload_img4_get_measured_bytes(void *result, void *a2)
{
  if (!*(result + 44))
  {
    __panic_npx("panic: optional not set", a2, v2, v3);
  }

  v5 = result[6];
  v4 = result[7];
  if (v5 > v5 + v4)
  {
    __break(0x5519u);
  }

  else
  {

    return buff_init_wrap(a2, v5, v4);
  }

  return result;
}

uint64_t payload_init(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t **a4)
{
  _payload_init(a1, a3, a2);
  buff_xfer((a1 + 48), a4);
  *(a1 + 88) = 1;
  return a1;
}

double _payload_init(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    a3 = generic_expert_specialist();
  }

  *a1 = a3;
  *(a1 + 8) = fourcc_copy(a1 + 16, a2);
  *(a1 + 32) = _payload_callbacks_bare;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t payload_init_borrow(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  _payload_init(a1, a3, a2);
  buff_borrow((a1 + 48), a4);
  *(a1 + 96) = a4;
  *(a1 + 88) = 1;
  return a1;
}

uint64_t payload_init_wrap(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  _payload_init(a1, a3, a2);
  buff_init_alias((a1 + 48), a4);
  *(a1 + 88) = 1;
  return a1;
}

uint64_t payload_set_callbacks(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

unint64_t payload_parse(uint64_t *a1)
{
  v10 = 0;
  v2 = _payload_parse_internal(a1);
  if (!v2)
  {
    PayloadType = Img4DecodeGetPayloadType((a1 + 14), &v10);
    if (!PayloadType)
    {
      v6 = a1[1];
      if (*v6 == v10)
      {
        return 0;
      }

      v7 = *a1;
      v9 = 0;
      v8 = bswap32(v10);
      expert_log(v7, 0, "%s: unexpected payload type: actual = %s, expected = %s", (v6 + 4), &v8, (v6 + 4));
      return 79;
    }

    v4 = PayloadType;
    v2 = posixdr(PayloadType);
    expert_log(*a1, 0, "%s: Img4DecodeGetPayloadType: %d", (a1[1] + 4), v4);
  }

  if (v2 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v2);
  }

  return v2;
}

unint64_t _payload_parse_internal(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    return 0;
  }

  result = *(a1 + 48);
  v3 = *(a1 + 56);
  if (result <= result + v3)
  {
    Img4DecodeInitAsPayload(result, v3, a1 + 112);
    if (v4)
    {
      v5 = v4;
      v6 = posixdr(v4);
      expert_log(*a1, 0, "%s: Img4DecodeInitAsPayload: %d", (*(a1 + 8) + 4), v5);
      if (v6 >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", v6);
      }

      return v6;
    }

    *(a1 + 104) = a1 + 112;
    if (*(a1 + 32) == _payload_callbacks_bare)
    {
      v6 = 0;
      *(a1 + 32) = _payload_callbacks_im4p;
      return v6;
    }

    return 0;
  }

  __break(0x5519u);
  return result;
}

unint64_t *payload_destroy(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    if (*(v1 + 88))
    {
      v3 = (v1 + 48);
    }

    else
    {
      v3 = 0;
    }

    v5 = v3;
    v4 = *(v1 + 96);
    if (v4)
    {
      buff_return(v4, &v5);
    }

    result = buff_destroy(&v5);
    *(v1 + 88) = 0;
    if (v1 >= v1 + 568)
    {
      __break(0x5519u);
    }

    else
    {
      result = (*(*(v1 + 32) + 16))(v1, *(v1 + 40));
      *v2 = 0;
    }
  }

  return result;
}

uint64_t _payload_im4p_measure(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = alloc_preference;
  }

  if (v8 == 1)
  {
    goto LABEL_8;
  }

  if (v8 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx");
  }

  v9 = _expert_alloc_type(v6, &_image4_type_decode_context);
  if (!v9)
  {
LABEL_8:
    size = type_get_size(&_image4_type_decode_context);
    v18 = MEMORY[0x2A1C7C4A8](size, v11, v12, v13, v14, v15, v16, v17, v26);
    v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v18 >= 0x31)
    {
      v20 = v18 - 48;
    }

    else
    {
      v20 = 0;
    }

    memset(v19 + 3, 170, v20);
    *v19 = 0u;
    v19[1] = 0u;
    v19[2] = 0u;
  }

  else
  {
    v27 = v9;
  }

  v21 = chip_select_decode(a2);
  if (!v21)
  {
    __panic_npx("panic: no decode implementation available for chip: %s");
  }

  v22 = *(v21 + 32);
  v23 = *v22;
  if (*v22 > 0x40)
  {
    __break(0x5519u);
LABEL_18:
    __panic_npx("panic: Img4DecodeCopyPayloadDigest: %d");
  }

  Img4DecodeCopyPayloadDigest(a1[13], v28, *v22, v21);
  if (v24)
  {
    goto LABEL_18;
  }

  _expert_dealloc_type(v6, &_image4_type_decode_context, &v27);
  return digest_init(a3, v28, v23);
}

void *_payload_bare_measure(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 88))
  {
    __panic_npx("panic: optional not set", a2, a3);
  }

  v5 = (*(a2 + 48))();

  return digest_init_measure(a3, v5, (a1 + 48));
}

void *_payload_bare_get_measured_bytes(void *result, void *a2)
{
  if (!*(result + 44))
  {
    __panic_npx("panic: optional not set", a2, v2, v3);
  }

  v5 = result[6];
  v4 = result[7];
  if (v5 > v5 + v4)
  {
    __break(0x5519u);
  }

  else
  {

    return buff_init_wrap(a2, v5, v4);
  }

  return result;
}

void *_payload_im4p_get_measured_bytes(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  Payload = Img4DecodeGetPayload(*(a1 + 104), &v5);
  if (Payload)
  {
    __panic_npx("panic: Img4DecodeGetPayload: %d", Payload);
  }

  return buff_init_wrap(a2, v5, v6);
}

uint64_t darwin_uuid_parse(_BYTE *a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    return 2;
  }

  *&v6[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v3;
  *v6 = v3;
  __strlcpy_chk();
  if (uuid_parse(&v5, a2))
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

uint64_t image4_auditor_post(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, __int128 *a5)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  image4_audit_event_init(v7, a2, a3, a4, a5);
  return (*(*(a1 + 80) + 8))(a1, v7, *(a1 + 88));
}

void *image4_audit_event_init(void *a1, uint64_t a2, unint64_t a3, __int128 *a4, __int128 *a5)
{
  *a1 = a2;
  v5 = *(a2 + 56);
  if (v5 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_container", v5);
  }

  a1[34] = qword_298EF88F0[v5];
  if (a3 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "mfr", a3);
  }

  a1[33] = a3;
  if (a4)
  {
    a1[1] = image4_audit_value_init((a1 + 2), a2, a4);
    a1[17] = image4_audit_value_init((a1 + 18), a2, a5);
  }

  return a1;
}

uint64_t image4_auditor_interpose_decode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 32);
  *(a1 + 16) = _AuditorComputeDigest;
  result = a1 + 16;
  *(result + 8) = _AuditorVerifyChain;
  *(result + 16) = _AuditorVerifySignature;
  *(result + 24) = _AuditorEvaluateCertificateProperties;
  *(result + 32) = v3;
  *(result - 8) = result;
  *(result + 48) = v2;
  *(result + 56) = a2;
  return result;
}

uint64_t _AuditorComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __current();
  result = (**(v10 + 72))(a1, a2, a3, a4, a5);
  if (result)
  {
    __panic_npx("panic: digest computation failed: %d", result);
  }

  return result;
}

uint64_t _AuditorVerifyChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __current();
  v17 = (*(*(v16 + 72) + 8))(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  if (v17)
  {
    _auerr(v16, v17, "certificate chain verification failed: %d", v17);
  }

  return v18;
}

uint64_t _AuditorVerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __current();
  v17 = (*(*(v16 + 72) + 16))(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  if (v17)
  {
    _auerr(v16, v17, "signature verification failed: %d", v17);
  }

  return v18;
}

uint64_t _AuditorEvaluateCertificateProperties(void *a1)
{
  v2 = __current();
  v3 = v2;
  v34[0] = 0;
  v34[1] = 0;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  if (!a1[40])
  {
    _auerr(v2, 0, "certificate properties invalid length: actual = %lu, expected > 0", 0);
    return 3;
  }

  v4 = DERDecodeSeqInit((a1 + 39), &v33, v34);
  if (v4)
  {
    v5 = v4;
    _auerr(v3, v4, "DERDecodeSeqInit: %d", v4);
    return v5;
  }

  if (v33 != 0x2000000000000011)
  {
    _auerr(v3, 0, "bad certificate tag: actual = 0x%llx, expected = 0x%llx");
    return 2;
  }

LABEL_6:
  while (2)
  {
    v6 = DERDecodeSeqNext(v34, &v31);
    if (v6)
    {
      if (v6 != 1)
      {
        __panic_npx("panic: exited enforcement loop with bogus value: dr = %d", v6);
      }

      return 0;
    }

    v30 = 0;
    v29 = 0;
    v28 = 0uLL;
    v25 = 0;
    __s1 = 0;
    __n = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    __s2 = 0uLL;
    fourcc_init(&v29, v31);
    v7 = (a1 + 7);
    switch(v31)
    {
      case 0xE00000004D414E50:
        goto LABEL_11;
      case 0xE00000004F424A50:
        v7 = (a1 + 9);
        if (!a1[9])
        {
          v7 = (a1 + 9);
          if (!a1[10])
          {
            continue;
          }
        }

LABEL_11:
        v28 = *v7;
        v8 = DERImg4DecodeProperty(v32, v31, &v22);
        if (v8)
        {
          v5 = v8;
          _auerr(v3, v8, "DERImg4DecodeProperty: %d");
          return v5;
        }

        if (*(&v24 + 1) != 0x2000000000000011)
        {
          _auerr(v3, 0, "unexpected certificate dictionary type: actual = 0x%llx, expected = 0x%llx");
          return 2;
        }

        v9 = DERDecodeSeqContentInit(&v23 + 1, v21);
        if (v9)
        {
          v5 = v9;
          _auerr(v3, v9, "DERDecodeSeqContentInit: %d");
          return v5;
        }

        while (1)
        {
          v10 = DERDecodeSeqNext(v21, &v25);
          if (v10)
          {
            if (v10 != 1)
            {
              __panic_npx("panic: bogus exit from enforcement loop: pdr = %d", v10);
            }

            goto LABEL_6;
          }

          memset(v17, 0, sizeof(v17));
          fourcc_init(&v29, v25);
          v11 = DERImg4DecodeProperty(&__s1, v25, v19);
          if (v11)
          {
            goto LABEL_32;
          }

          v12 = *(&v20 + 1) == 0xA000000000000001;
          DERImg4DecodeContentFindItemWithTag(&v28, v25, &__s2);
          if (v13 != v12)
          {
            break;
          }

          if (*(&v20 + 1) <= 4uLL && ((1 << SBYTE8(v20)) & 0x16) != 0)
          {
            v11 = DERImg4DecodeProperty(&__s2, v25, v17);
            if (v11)
            {
LABEL_32:
              v5 = v11;
              _auerr(v3, v11, "DERImg4DecodeProperty: %s: %d");
              return v5;
            }

            if (__n == *(&__s2 + 1) && !memcmp(__s1, __s2, __n))
            {
              aupost(v3, &v29, 0, v19, v17);
            }

            else
            {
              aupost(v3, &v29, 1uLL, v19, v17);
            }
          }

          else
          {
            if ((*(&v20 + 1) + 0x6000000000000000) >= 2)
            {
              _auerr(v3, 0, "unexpected certificate property type: tag = %s, type = 0x%llx");
              return 2;
            }

            v14 = v3;
            v15 = 0;
LABEL_26:
            aupost(v14, &v29, v15, v19, 0);
          }
        }

        v14 = v3;
        v15 = 1;
        goto LABEL_26;
      case 0xE00000006D616E78:
        _auerr(v3, 0, "manx section constraints not implemented");
        return 4;
    }
  }

  _auerr(v3, 0, "unexpected section tag: %s");
  return 2;
}

uint64_t image4_audit_value_init(uint64_t result, uint64_t a2, __int128 *a3)
{
  *result = a2;
  v3 = *a3;
  v4 = a3[2];
  *(result + 32) = a3[1];
  *(result + 48) = v4;
  *(result + 16) = v3;
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  *(result + 112) = *(a3 + 12);
  *(result + 80) = v6;
  *(result + 96) = v7;
  *(result + 64) = v5;
  v8 = **(a2 + 40);
  if (v8 >= 5)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_type->pt_switchable", v8);
  }

  *(result + 8) = qword_298EF8910[v8];
  return result;
}

uint64_t image4_auditor_new(uint64_t (**a1)(void), uint64_t a2)
{
  v4 = generic_expert_specialist();
  result = _expert_alloc_type(v4, &_image4_type_auditor);
  if (result)
  {
    *(result + 80) = a1;
    *(result + 88) = a2;
    __current = *a1;
  }

  return result;
}

uint64_t *image4_auditor_destroy(uint64_t *result)
{
  if (*result)
  {
    v3 = **result;
    if (!*(v3 + 744))
    {
      __panic_npx("panic: optional not set", v1, v2);
    }

    v4 = result;
    v5 = *(v3 + 152);

    return _expert_dealloc_type(v5, &_image4_type_auditor, v4);
  }

  return result;
}

uint64_t _auerr(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  vsnprintf(__str, 0x100uLL, a3, va);
  return (*(*(a1 + 80) + 16))(a1, __str, a2);
}

uint64_t aupost(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x29EDCA608];
  v34[0] = xmmword_298EF8888;
  memset(&v34[1], 170, 88);
  v33[0] = xmmword_298EF8888;
  memset(&v33[1], 170, 88);
  v32 = 0;
  v10 = *(a4 + 40);
  if (v10 <= 0)
  {
    if (v10 == 0xA000000000000000)
    {
      v11 = &_property_constraint_ex;
    }

    else
    {
      if (v10 != 0xA000000000000001)
      {
        goto LABEL_20;
      }

      v11 = &_property_constraint_nx;
    }

LABEL_14:
    v12 = &_property_type_BOOL;
    goto LABEL_15;
  }

  if (v10 == 1)
  {
    v11 = &_property_constraint_eq;
    goto LABEL_14;
  }

  if (v10 != 2)
  {
    if (v10 == 4)
    {
      v11 = &_property_constraint_eq;
      v12 = &_property_type_digest;
LABEL_15:
      v20 = a2 + 4;
      v21 = 0;
      v15 = *a2;
      v22 = 34;
      v23 = v15;
      v24 = *(a2 + 2);
      goto LABEL_16;
    }

LABEL_20:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "constraint->type", v10);
  }

  v13 = DERParseInteger(a4 + 24, &v32);
  v20 = a2 + 4;
  v21 = 0;
  v14 = *a2;
  v22 = 34;
  v23 = v14;
  v24 = *(a2 + 2);
  v12 = &_property_type_uint32;
  if (v13)
  {
    v12 = &_property_type_uint64;
  }

  v11 = &_property_constraint_eq;
LABEL_16:
  v25 = v12;
  v26 = v11;
  v27 = 2;
  v28 = xmmword_298EF8590;
  v30 = 0;
  v31 = 0;
  v29 = 4;
  if (a5)
  {
    _property_value_init_with_DERImg4(v34, a4);
    _property_value_init_with_DERImg4(v33, a5);
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v16 = v34;
    v17 = v33;
    v18 = a3;
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v18 = a3;
    v16 = 0;
    v17 = 0;
  }

  image4_audit_event_init(&v35, &v20, v18, v16, v17);
  return (*(*(a1 + 80) + 8))(a1, &v35, *(a1 + 88));
}

uint64_t _property_value_init_with_DERImg4(void *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  result = DERParseBoolean((a2 + 24), &v7);
  if (result)
  {
    result = DERParseInteger(a2 + 24, &v6);
    if (result)
    {
      result = DERParseInteger64(a2 + 24, &v5);
      if (result)
      {
        if (a1 + 10 < a1)
        {
          __break(0x5519u);
        }

        else
        {
          return digest_init(a1, *(a2 + 24), *(a2 + 32));
        }
      }

      else
      {
        *a1 = v5;
      }
    }

    else
    {
      *a1 = v6;
    }
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t _chain_manifest_enforceable(const char **a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 320);
    v5 = *a2;
    name = chip_get_name(*(a2 + 16));
    v7 = *a1;
    if (v4)
    {
      expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", name, v7);
      return 0;
    }

    else
    {
      v8 = 1;
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no chained hash constraint", name, v7);
    }
  }

  else
  {
    v9 = *a2;
    v10 = chip_get_name(*(a2 + 16));
    v12 = *a1;
    v8 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: chip has no property for policy", v10, v12);
  }

  return v8;
}

uint64_t _chain_manifest_enforce(const char **a1, uint64_t a2)
{
  v10[13] = *MEMORY[0x29EDCA608];
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 320))
  {
    __panic_npx("panic: optional not set");
  }

  v5 = chip_property;
  *v10 = xmmword_298EF8938;
  memset(&v10[2], 170, 88);
  digest_copy(v10, a2 + 240);
  v6 = odometer_enforce_property(a2, a1, v5, v10);
  v7 = *a2;
  name = chip_get_name(*(a2 + 16));
  if (v6)
  {
    expert_log(v7, 0, "odometer[%s:%s]: boot chain integrity violation: %d", name, *a1, v6);
    if (v6 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v6);
    }
  }

  else
  {
    expert_log(v7, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", name, *a1);
  }

  return v6;
}

uint64_t image4_trust_evaluation_prepare_manifest_callbacks(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *(a2 + 32) = v2;
  }

  return result;
}

unint64_t image4_trust_evaluation_get_result(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  if (v8 || (result = (*(result + 32))(result, a2, a3, a4, &v8), v6 = v8, result > result + v8) || ((*a5 = v8, result) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t darwin_syscall_init(uint64_t a1)
{
  v2 = &__traps;
  v3 = 16;
  do
  {
    v10 = 5;
    if ((sysctlnametomib(*v2, v2 + 3, &v10) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v4 = *__error();
    if ((v4 - 1) >= 2)
    {
      if (v4)
      {
        v8 = *v2;
        v9 = __error();
        __panic_npx("panic: sysctlnametomib: %s%d", v8, *v9);
      }

      result = expert_log(a1, 3uLL, "initialized trap: %s", *v2);
      *(v2 + 8) = v10;
    }

    else
    {
      v5 = *v2;
      v6 = __error();
      result = expert_log(a1, 3uLL, "trap not present trap: %s: %d", v5, *v6);
      *(v2 + 3) = -1;
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  return result;
}

char **darwin_syscall_get(unint64_t a1)
{
  if (a1 >= 0x10)
  {
    __panic_npx("panic: invalid trap number: actual = %#llx, expected < %#llx", a1, 16);
  }

  if (LODWORD((&__traps)[5 * a1 + 4]))
  {
    return &(&__traps)[5 * a1];
  }

  else
  {
    return 0;
  }
}

uint64_t darwin_syscall_kmod_copy_abi_version(uint64_t a1, _BYTE *a2)
{
  v9 = 0;
  v8 = 1;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v5 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v4);
  }

  else
  {
    if (!dword_2A18AB3F8)
    {
      return 78;
    }

    v7 = expert_syscall(a1, &__traps, &v9 + 1, 1, &v9, &v8);
    v5 = v7;
    if (!v7)
    {
      *a2 = v9;
      return v5;
    }

    expert_log(a1, 0, "trap failed: %s: %d", __traps, v7);
  }

  if (v5 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v5);
  }

  return v5;
}

uint64_t darwin_syscall_kmod_copy_version(uint64_t a1, char *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 1;
  memset(v10, 0, sizeof(v10));
  v9 = 1;
  v8 = 513;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v5 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v4);
  }

  else
  {
    if (!dword_2A18AB420)
    {
      return 78;
    }

    v7 = expert_syscall(a1, &qword_2A18AB400, &v11, 513, &v9, &v8);
    v5 = v7;
    if (!v7)
    {
      strlcpy(a2, v10, 0x200uLL);
      return v5;
    }

    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB400, v7);
  }

  if (v5 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v5);
  }

  return v5;
}

uint64_t darwin_syscall_nonce_copy_hash(uint64_t a1, int *a2, int a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v18 = 1;
  v19 = *a2;
  v20 = a3;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v13 = 1;
  v14 = v19;
  v15 = a3;
  v12 = 77;
  v8 = expert_runtime_boot(a1);
  if (v8)
  {
    v9 = v8;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v8);
    goto LABEL_3;
  }

  if (!dword_2A18AB510)
  {
    return 78;
  }

  result = expert_syscall(a1, &qword_2A18AB4F0, &v18, 77, &v13, &v12);
  if (result)
  {
    v9 = result;
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB4F0, result);
LABEL_3:
    if (v9 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v9);
    }

    return v9;
  }

  v11 = v17;
  if (v17 <= 0x40)
  {
    memcpy(a4, v16, v17);
    v9 = 0;
    *a5 = v11;
    return v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t darwin_syscall_nonce_peek_hash(uint64_t a1, int *a2, int a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v18 = 1;
  v19 = *a2;
  v20 = a3;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v13 = 1;
  v14 = v19;
  v15 = a3;
  v12 = 77;
  v8 = expert_runtime_boot(a1);
  if (v8)
  {
    v9 = v8;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v8);
    goto LABEL_3;
  }

  if (!dword_2A18AB538)
  {
    return 78;
  }

  result = expert_syscall(a1, &qword_2A18AB518, &v18, 77, &v13, &v12);
  if (result)
  {
    v9 = result;
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB518, result);
LABEL_3:
    if (v9 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v9);
    }

    return v9;
  }

  v11 = v17;
  if (v17 <= 0x40)
  {
    memcpy(a4, v16, v17);
    v9 = 0;
    *a5 = v11;
    return v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t darwin_syscall_nonce_roll(uint64_t a1, int *a2, int a3)
{
  v12 = 1;
  v13 = *a2;
  v14 = a3;
  v9 = 1;
  v10 = v13;
  v11 = a3;
  v8 = 9;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v5 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v4);
    goto LABEL_3;
  }

  if (!dword_2A18AB560)
  {
    return 78;
  }

  v7 = expert_syscall(a1, &qword_2A18AB540, &v12, 9, &v9, &v8);
  v5 = v7;
  if (v7)
  {
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB540, v7);
LABEL_3:
    if (v5 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v5);
    }
  }

  return v5;
}

uint64_t darwin_syscall_nonce_unroll(uint64_t a1, int *a2, int a3)
{
  v12 = 1;
  v13 = *a2;
  v14 = a3;
  v9 = 1;
  v10 = v13;
  v11 = a3;
  v8 = 9;
  v4 = expert_runtime_boot(a1);
  if (v4)
  {
    v5 = v4;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v4);
    goto LABEL_3;
  }

  if (!dword_2A18AB588)
  {
    return 78;
  }

  v7 = expert_syscall(a1, &qword_2A18AB568, &v12, 9, &v9, &v8);
  v5 = v7;
  if (v7)
  {
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB568, v7);
LABEL_3:
    if (v5 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v5);
    }
  }

  return v5;
}

uint64_t darwin_syscall_nonce_generate_proposal(uint64_t a1, _DWORD *a2, int a3, void *a4, void *a5, char *a6, unint64_t *a7)
{
  v37 = *MEMORY[0x29EDCA608];
  v30 = 0u;
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v29 = 1;
  DWORD2(v30) = *a2;
  HIDWORD(v30) = a3;
  v23 = 0;
  v28 = 0;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  v22 = 1;
  v24 = DWORD2(v30);
  v25 = a3;
  v21 = 105;
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v13 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v12);
    goto LABEL_3;
  }

  if (!dword_2A18AB5B0)
  {
    return 78;
  }

  v15 = a6 != 0;
  if (a7 && a6 && *a7)
  {
    v15 = 1;
    *&v30 = 1;
  }

  v16 = expert_syscall(a1, &qword_2A18AB590, &v29, 105, &v22, &v21);
  if (!v16)
  {
    v18 = v27;
    if (v27 <= 0x40)
    {
      memcpy(a4, v26, v27);
      *a5 = v18;
      v19 = HIDWORD(v28);
      if (!HIDWORD(v28))
      {
        return 0;
      }

      v17 = *a7;
      if (*a7 <= 0xF)
      {
LABEL_24:
        __panic_npx("panic: insufficient nonce buffer length: actual = %lu, expected >= %lu", v17, 16);
      }

      v20 = a6 + 16;
      if (!v15)
      {
        v20 = 0;
      }

      if (v17 <= v20 - a6 && HIDWORD(v28) <= 0x10)
      {
        memcpy(a6, &v27 + 4, HIDWORD(v28));
        v13 = 0;
        *a7 = v19;
        return v13;
      }
    }

    __break(0x5519u);
    goto LABEL_24;
  }

  v13 = v16;
  expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB590, v16);
LABEL_3:
  if (v13 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v13);
  }

  return v13;
}

uint64_t darwin_syscall_nonce_verify(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, _OWORD *a7, unint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v27 = 1;
  v28 = a4;
  v29 = *a2;
  v30 = a3;
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v17 = 1;
  v18 = a4;
  v19 = v29;
  v20 = a3;
  v16 = 105;
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v13 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v12);
    goto LABEL_3;
  }

  if (!dword_2A18AB5D8)
  {
    return 78;
  }

  if (a6 > 0x40)
  {
    goto LABEL_16;
  }

  __memcpy_chk();
  v35[0] = a6;
  if (!a7 || !a8)
  {
    goto LABEL_12;
  }

  if (a8 <= 0xF)
  {
LABEL_17:
    __panic_npx("panic: insufficient nonce buffer length: actual = %lu, expected >= %lu", a8, 16);
  }

  if (a8 != 16)
  {
LABEL_16:
    __break(0x5519u);
    goto LABEL_17;
  }

  *&v35[1] = *a7;
  v35[5] = 16;
LABEL_12:
  v15 = expert_syscall(a1, &qword_2A18AB5B8, &v27, 105, &v17, &v16);
  v13 = v15;
  if (!v15)
  {
    return v13;
  }

  expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB5B8, v15);
LABEL_3:
  if (v13 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v13);
  }

  return v13;
}

uint64_t darwin_syscall_image_activate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18 = 2;
  v7 = *a3;
  v19 = a2;
  v20 = v7;
  length_uint32 = buff_get_length_uint32(a3);
  v22 = *a4;
  v23 = buff_get_length_uint32(a4);
  v13 = 2;
  v14 = a2;
  v15 = 0;
  v17 = 0;
  v16 = 0;
  v12 = 33;
  v8 = expert_runtime_boot(a1);
  if (v8)
  {
    v9 = v8;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v8);
    goto LABEL_3;
  }

  if (!dword_2A18AB600)
  {
    return 78;
  }

  v11 = expert_syscall(a1, &qword_2A18AB5E0, &v18, 33, &v13, &v12);
  v9 = v11;
  if (v11)
  {
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB5E0, v11);
LABEL_3:
    if (v9 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v9);
    }
  }

  return v9;
}

uint64_t darwin_syscall_image_dfu(uint64_t a1, int *a2, uint64_t *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = *a2;
  v21 = *a3;
  length_uint32 = buff_get_length_uint32(a3);
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  *(&v15 + 1) = *a2;
  v18 = 16;
  v14 = 37;
  v9 = expert_runtime_boot(a1);
  if (v9)
  {
    v10 = v9;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v9);
    goto LABEL_3;
  }

  if (!dword_2A18AB628)
  {
    return 78;
  }

  v12 = expert_syscall(a1, &qword_2A18AB608, &v19, 37, &v15, &v14);
  if (v12)
  {
    v10 = v12;
    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB608, v12);
LABEL_3:
    if (v10 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v10);
    }

    return v10;
  }

  v13 = v18;
  if (v18 >= 0x11)
  {
    __panic_npx("panic: kernel nonce overflows bounds: actual = %u, expected <= %u", v18, 16);
  }

  memcpy(a4, &v16 + 1, v18);
  v10 = 0;
  *a5 = v13;
  return v10;
}

uint64_t darwin_syscall_image_copy_active(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = 1;
  v17 = a2;
  v18 = *a3;
  length_uint32 = buff_get_length_uint32(a3);
  v12 = 1;
  v13 = a2;
  v14 = 0;
  v15 = 0;
  v11 = 21;
  v7 = expert_runtime_boot(a1);
  if (v7)
  {
    v8 = v7;
    expert_log(a1, 3uLL, "failed to boot expert for syscall: %d", v7);
  }

  else
  {
    if (!dword_2A18AB650)
    {
      return 78;
    }

    v10 = expert_syscall(a1, &qword_2A18AB630, &v16, 21, &v12, &v11);
    v8 = v10;
    if (!v10)
    {
      *a4 = v15;
      return v8;
    }

    expert_log(a1, 0, "trap failed: %s: %d", qword_2A18AB630, v10);
  }

  if (v8 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v8);
  }

  return v8;
}

uint64_t posixdr(unsigned int a1)
{
  if (a1 > 7)
  {
    return 14;
  }

  else
  {
    return dword_298EF8A40[a1];
  }
}

const char *strdr(unsigned int a1)
{
  if (a1 > 7)
  {
    return "generic error";
  }

  else
  {
    return off_29EEFF748[a1];
  }
}

const char **_chain_sideload_enforceable(const char **result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = v4 + 33;
  if (v4[24] && v4[22])
  {
    if (v4 < v5)
    {
      name = chip_get_name(a2[2]);
      __panic_npx("panic: illegal chip definition: sideload and pivot policies defined: %s", name);
    }

    goto LABEL_12;
  }

  if (v4 >= v5)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  if (odometer_policy_get_chip_property(result, a2[2]))
  {
    v6 = v4[31];
    v7 = *a2;
    v8 = chip_get_name(a2[2]);
    v9 = *v3;
    if (v6)
    {
      expert_log(v7, 1uLL, "odometer[%s:%s]: policy is enforceable", v8, v9);
      return 0;
    }

    else
    {
      v10 = 1;
      expert_log(v7, 1uLL, "odometer[%s:%s]: sideload chip has no notary", v8, v9);
    }
  }

  else
  {
    v11 = *a2;
    v12 = chip_get_name(a2[2]);
    v14 = *v3;
    v10 = 1;
    expert_log(v11, 1uLL, "odometer[%s:%s]: chip has no property for policy", v12, v14);
  }

  return v10;
}

uint64_t _chain_sideload_enforce(const char **a1, uint64_t a2)
{
  v11[13] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *v11 = xmmword_298EF8A60;
  memset(&v11[2], 170, 88);
  if (*(a2 + 440) == 1)
  {
    v6 = *a2;
    chip_get_name(v5);
    expert_log(v6, 1uLL, "odometer[%s:%s]: manifest self-entitled for mix-n-match; relaxing chain integrity policy");
    return 0;
  }

  manifest_measure(v4, v5, v11);
  v7 = odometer_enforce_property(a2, a1, &_property_bmfh, v11);
  v8 = *a2;
  name = chip_get_name(*(a2 + 16));
  if (!v7)
  {
    expert_log(v8, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain");
    return 0;
  }

  expert_log(v8, 0, "odometer[%s:%s]: boot chain integrity violation: %d", name, *a1, v7);
  if (v7 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v7);
  }

  return v7;
}

uint64_t digest_check_buff(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x40)
  {
    return 0;
  }

  else
  {
    return 84;
  }
}

uint64_t digest_init(uint64_t a1, const void *a2, size_t __n)
{
  if (__n >= 0x41)
  {
    __panic_npx("panic: digest length overflow: actual = %lu, expected <= %lu", __n, 64);
  }

  memcpy((a1 + 8), a2, __n);
  *(a1 + 72) = __n;
  return a1;
}

void *digest_init_measure(void *a1, void *a2, void *a3)
{
  if (*a2 >= 0x41uLL)
  {
    __panic_npx("panic: digest length overflow: actual = %lu, expected <= %lu", *a2, 64);
  }

  ccdigest();
  a1[9] = *a2;
  *a1 = a2;
  return a1;
}

uint64_t digest_copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2 < 0x41)
  {
    return digest_init(result, (a2 + 8), v2);
  }

  __break(0x5519u);
  return result;
}

uint64_t digest_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == *(a2 + 72))
  {
    return memcmp((a1 + 8), (a2 + 8), v2);
  }

  else
  {
    return 1;
  }
}

uint64_t digest_compare_buff(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 72) == a3)
  {
    return memcmp((a1 + 8), a2, a3);
  }

  else
  {
    return 1;
  }
}

unint64_t digest_print_cstr(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 72);
  if (v8 < 0x41)
  {
    return sprintdgst_npx(a2, (result + 8), v8, a4, a5, a6, a7, a8);
  }

  __break(0x5519u);
  return result;
}

void *digest_copy_out(uint64_t a1, void *__dst, size_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + 72);
  if (v4 < v5)
  {
LABEL_6:
    __panic_npx("panic: digest length overflow: actual = %lu, expected >= %lu", v4, v5);
  }

  if (v5 > 0x40 || (result = memcpy(__dst, (a1 + 8), v5), v4 = *a3, v8 = *(a1 + 72), v8 > *a3))
  {
    __break(0x5519u);
    goto LABEL_6;
  }

  *a3 = v8;
  return result;
}