uint64_t x509_get_basic_constraints(unsigned __int8 **a1, unsigned __int8 *a2, int *a3, int *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  tag = -110;
  v5 = 0;
  *a3 = 0;
  *v7 = 0;
  tag = mbedtls_asn1_get_tag(v10, v9, &v5, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  if (*v10 == v9)
  {
    return 0;
  }

  else
  {
    tag = mbedtls_asn1_get_BOOL(v10, v9, v8);
    if (tag)
    {
      if (tag == -98)
      {
        tag = mbedtls_asn1_get_int(v10, v9, v8);
      }

      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      if (*v8)
      {
        *v8 = 1;
      }
    }

    if (*v10 == v9)
    {
      return 0;
    }

    else
    {
      tag = mbedtls_asn1_get_int(v10, v9, v7);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      if (*v10 == v9)
      {
        if (*v7 == 0x7FFFFFFF)
        {
          return mbedtls_error_add(-9472, -100);
        }

        else
        {
          ++*v7;
          return 0;
        }
      }

      else
      {
        return mbedtls_error_add(-9472, -102);
      }
    }
  }
}

uint64_t x509_get_ext_key_usage(_BYTE **a1, _BYTE *a2, uint64_t a3)
{
  sequence_of = mbedtls_asn1_get_sequence_of(a1, a2, a3, 6u);
  if (sequence_of)
  {
    return mbedtls_error_add(-9472, sequence_of);
  }

  else if (*(a3 + 16))
  {
    return 0;
  }

  else
  {
    return mbedtls_error_add(-9472, -100);
  }
}

uint64_t x509_get_subject_key_id(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 4);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else
  {
    *(v6 + 8) = v4;
    *v6 = 4;
    *(v6 + 16) = *v8;
    *v8 += v4;
    if (*v8 == v7)
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-9472, -102);
    }
  }
}

uint64_t x509_get_authority_key_id(unsigned __int8 **a1, unint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  if (&(*v8)[v4] != v7)
  {
    return mbedtls_error_add(-9472, -102);
  }

  tag = mbedtls_asn1_get_tag(v8, v7, &v4, 128);
  if (tag)
  {
    if (tag != -98)
    {
      return mbedtls_error_add(-9472, tag);
    }
  }

  else
  {
    *(v6 + 8) = v4;
    *(v6 + 16) = *v8;
    *v6 = 4;
    *v8 += v4;
  }

  if (*v8 < v7)
  {
    tag = mbedtls_asn1_get_tag(v8, v7, &v4, 161);
    if (tag)
    {
      return mbedtls_error_add(-9472, tag);
    }

    tag = mbedtls_x509_get_subject_alt_name_ext(v8, &(*v8)[v4], v6 + 24);
    if (tag)
    {
      return tag;
    }

    tag = mbedtls_asn1_get_tag(v8, v7, &v4, 130);
    if (tag)
    {
      return mbedtls_error_add(-9472, tag);
    }

    *(v6 + 64) = v4;
    *(v6 + 72) = *v8;
    *(v6 + 56) = 2;
    *v8 += v4;
  }

  if (*v8 == v7)
  {
    return 0;
  }

  else
  {
    return -9574;
  }
}

uint64_t x509_get_certificate_policies(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  tag = 0;
  v10 = 0;
  v9 = 0;
  v8 = a3;
  tag = mbedtls_asn1_get_tag(a1, a2, &v9, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else
  {
    if (&(*v14)[v9] != v13 || !v9)
    {
      return mbedtls_error_add(-9472, -102);
    }

    while (*v14 < v13)
    {
      tag = mbedtls_asn1_get_tag(v14, v13, &v9, 48);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      v5 = &(*v14)[v9];
      tag = mbedtls_asn1_get_tag(v14, v5, &v9, 6);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      __n = v9;
      __s2 = *v14;
      v4 = 1;
      if (v9 == 4)
      {
        v4 = memcmp(&unk_10044AF65, __s2, 4uLL) != 0;
      }

      if (v4)
      {
        v10 = -8320;
      }

      if (*(v8 + 16))
      {
        if (*(v8 + 24))
        {
          return -9472;
        }

        *(v8 + 24) = mbedtls_calloc(1, 32);
        if (!*(v8 + 24))
        {
          return mbedtls_error_add(-9472, -106);
        }

        v8 = *(v8 + 24);
      }

      *v8 = 6;
      *(v8 + 16) = __s2;
      *(v8 + 8) = __n;
      *v14 += v9;
      if (*v14 < v5)
      {
        tag = mbedtls_asn1_get_tag(v14, v5, &v9, 48);
        if (tag)
        {
          return mbedtls_error_add(-9472, tag);
        }

        *v14 += v9;
      }

      if (*v14 != v5)
      {
        return mbedtls_error_add(-9472, -102);
      }
    }

    *(v8 + 24) = 0;
    if (*v14 == v13)
    {
      return v10;
    }

    else
    {
      return mbedtls_error_add(-9472, -102);
    }
  }
}

uint64_t x509_crt_verify_chain_reset(uint64_t result)
{
  for (i = 0; i < 0xA; ++i)
  {
    *(result + 16 * i) = 0;
    *(result + 16 * i + 8) = -1;
  }

  *(result + 160) = 0;
  return result;
}

unint64_t x509_crt_verify_name(uint64_t a1, char *a2, _DWORD *a3)
{
  result = strlen(a2);
  v5 = result;
  if ((*(a1 + 640) & 0x20) != 0)
  {
    result = x509_crt_check_san(a1 + 448, a2, result);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    for (i = a1 + 224; i; i = *(i + 48))
    {
      v4 = 1;
      if (*(i + 8) == 3)
      {
        result = memcmp("U\x04\x03", *(i + 16), *(i + 8));
        v4 = result != 0;
      }

      if (!v4)
      {
        result = x509_crt_check_cn(i + 24, a2, v5);
        if (!result)
        {
          return result;
        }
      }
    }
  }

  *a3 |= 4u;
  return result;
}

uint64_t x509_profile_check_pk_alg(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 4) & (1 << (a2 - 1))) != 0)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t x509_profile_check_key(uint64_t a1, unsigned int **a2)
{
  type = mbedtls_pk_get_type(a2);
  if (type == 1 || type == 6)
  {
    if (mbedtls_pk_get_bitlen(a2) >= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else if (type == 4 || type == 2 || type == 3)
  {
    ec_group_id = mbedtls_pk_get_ec_group_id(a2);
    if (ec_group_id)
    {
      if ((*(a1 + 8) & (1 << (ec_group_id - 1))) != 0)
      {
        return 0;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t x509_crt_verify_chain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  parent = -110;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v12 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v16 = a1;
  v11 = 0;
  v14 = 0;
  v13 = 0;
  while (1)
  {
    v17 = v21 + 16 * *(v21 + 160);
    *v17 = v16;
    *(v17 + 8) = 0;
    ++*(v21 + 160);
    v18 = (v17 + 8);
    if (v13)
    {
      return 0;
    }

    if (x509_profile_check_md_alg(v22, *(v16 + 720)))
    {
      *v18 |= 0x4000u;
    }

    if (x509_profile_check_pk_alg(v22, *(v16 + 724)))
    {
      *v18 |= 0x8000u;
    }

    if (*(v21 + 160) == 1 && !x509_crt_check_ee_locally_trusted(v16, v26))
    {
      return 0;
    }

    v10 = v26;
    parent = x509_crt_find_parent(v16, v26, &v15, &v14, &v12, *(v21 + 160) - 1, v11, v20, v9);
    if (!v15)
    {
      *v18 |= 8u;
      return 0;
    }

    if (*(v21 + 160) != 1 && !x509_name_cmp(v16 + 160, v16 + 224))
    {
      ++v11;
    }

    if (!v14 && *(v21 + 160) > 8u)
    {
      break;
    }

    if (!v12)
    {
      *v18 |= 8u;
    }

    if (x509_profile_check_key(v22, (v15 + 360)))
    {
      *v18 |= 0x10000u;
    }

    v16 = v15;
    v15 = 0;
    v13 = v14;
    v12 = 0;
  }

  return -12288;
}

uint64_t x509_crt_merge_flags_with_cb(_DWORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void, int *), uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = -110;
  i = 0;
  v6 = 0;
  for (i = *(a2 + 160); i; --i)
  {
    v5 = v11 + 16 * (i - 1);
    v6 = *(v5 + 8);
    if (v10)
    {
      v8 = v10(v9, *v5, (i - 1), &v6);
      if (v8)
      {
        return v8;
      }
    }

    *v12 |= v6;
  }

  return 0;
}

uint64_t x509_crt_check_san(uint64_t a1, char *a2, unint64_t a3)
{
  v7 = 0;
  v6 = 0;
  for (i = a1; i; i = *(i + 24))
  {
    v4 = *i & 0x1F;
    switch(v4)
    {
      case 2:
        if (!x509_crt_check_cn(i, a2, a3))
        {
          return 0;
        }

        break;
      case 6:
        v6 = 1;
        break;
      case 7:
        v7 = 1;
        break;
    }
  }

  if (!v7 || x509_crt_check_san_ip(a1, a2))
  {
    if (!v6 || x509_crt_check_san_uri(a1, a2, a3))
    {
      return -1;
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

uint64_t x509_crt_check_cn(uint64_t a1, const char *a2, unint64_t a3)
{
  if (*(a1 + 8) != a3 || x509_memcasecmp(a2, *(a1 + 16), a3))
  {
    if (x509_check_wildcard(a2, a1))
    {
      return -1;
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

uint64_t x509_crt_check_san_ip(uint64_t a1, char *a2)
{
  __n = mbedtls_x509_crt_parse_cn_inet_pton(a2, __s2);
  if (__n)
  {
    for (i = a1; i; i = *(i + 24))
    {
      if ((*i & 0x1F) == 7 && *(i + 8) == __n && !memcmp(*(i + 16), __s2, __n))
      {
        return 0;
      }
    }

    return -1;
  }

  else
  {
    return -1;
  }
}

uint64_t x509_crt_check_san_uri(uint64_t a1, const void *a2, size_t a3)
{
  while (a1)
  {
    if ((*a1 & 0x1F) == 6 && *(a1 + 8) == a3 && !memcmp(*(a1 + 16), a2, a3))
    {
      return 0;
    }

    a1 = *(a1 + 24);
  }

  return -1;
}

uint64_t x509_memcasecmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i < a3; ++i)
  {
    v4 = *(a1 + i) ^ *(a2 + i);
    if (v4 && (v4 != 32 || (*(a1 + i) < 0x61u || *(a1 + i) > 0x7Au) && (*(a1 + i) < 0x41u || *(a1 + i) > 0x5Au)))
    {
      return -1;
    }
  }

  return 0;
}

uint64_t x509_check_wildcard(const char *a1, uint64_t a2)
{
  v4 = 0;
  v3 = strlen(a1);
  if (*(a2 + 8) >= 3uLL && **(a2 + 16) == 42 && *(*(a2 + 16) + 1) == 46)
  {
    for (i = 0; i < v3; ++i)
    {
      if (a1[i] == 46)
      {
        v4 = i;
        break;
      }
    }

    if (v4)
    {
      if (v3 - v4 != *(a2 + 8) - 1 || x509_memcasecmp(*(a2 + 16) + 1, &a1[v4], *(a2 + 8) - 1))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t x509_profile_check_md_alg(_DWORD *a1, int a2)
{
  if (a2)
  {
    if ((*a1 & (1 << (a2 - 1))) != 0)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t x509_crt_check_ee_locally_trusted(uint64_t a1, uint64_t a2)
{
  if (x509_name_cmp(a1 + 160, a1 + 224))
  {
    return -1;
  }

  else
  {
    for (i = a2; i; i = *(i + 736))
    {
      if (*(a1 + 16) == *(i + 16) && !memcmp(*(a1 + 24), *(i + 24), *(a1 + 16)))
      {
        return 0;
      }
    }

    return -1;
  }
}

uint64_t x509_crt_find_parent(uint64_t a1, uint64_t a2, void *a3, int *a4, _BOOL4 *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  for (*a4 = 1; ; *a4 = 0)
  {
    v10 = *a4 ? a2 : *(a1 + 736);
    x509_crt_find_parent_in(a1, v10, a3, a5, *a4, a6, a7, a8);
    if (*a3 || !*a4)
    {
      break;
    }
  }

  if (!*a3)
  {
    *a4 = 0;
    *a5 = 0;
  }

  return 0;
}

uint64_t x509_name_cmp(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v3 = 1;
    if (!a1)
    {
      v3 = a2 != 0;
    }

    if (!v3)
    {
      break;
    }

    if (!a1 || !a2)
    {
      return -1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || memcmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
    {
      return -1;
    }

    if (x509_string_cmp(a1 + 24, a2 + 24))
    {
      return -1;
    }

    if (*(a1 + 56) != *(a2 + 56))
    {
      return -1;
    }

    a1 = *(a1 + 48);
    a2 = *(a2 + 48);
  }

  return 0;
}

uint64_t x509_crt_find_parent_in(uint64_t a1, uint64_t a2, void *a3, _BOOL4 *a4, int a5, int a6, int a7, uint64_t a8)
{
  while (a2)
  {
    if (!x509_crt_check_parent(a1, a2, a5) && (*(a2 + 648) <= 0 || *(a2 + 648) >= (a6 + 1 - a7)))
    {
      v9 = x509_crt_check_signature(a1, a2) == 0;
      if (!a5 || v9)
      {
        *a3 = a2;
        *a4 = v9;
        break;
      }
    }

    a2 = *(a2 + 736);
  }

  if (!a2)
  {
    *a3 = 0;
    *a4 = 0;
  }

  return 0;
}

uint64_t x509_crt_check_parent(uint64_t a1, uint64_t a2, int a3)
{
  if (x509_name_cmp(a1 + 160, a2 + 224))
  {
    return -1;
  }

  else
  {
    v4 = 1;
    if (a3)
    {
      v4 = *(a2 + 56) >= 3;
    }

    if (!v4 || *(a2 + 644))
    {
      if (v4 && mbedtls_x509_crt_check_key_usage(a2, 4))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -1;
    }
  }
}

uint64_t x509_crt_check_signature(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_md_info_from_type(*(a1 + 720));
  size = mbedtls_md_get_size(v3);
  if (mbedtls_md(v3, *(a1 + 48), *(a1 + 40), v8))
  {
    return -1;
  }

  else if (mbedtls_pk_can_do(a2 + 360, *(a1 + 724)))
  {
    return mbedtls_pk_verify_ext(*(a1 + 724), *(a1 + 728), (a2 + 360), *(a1 + 720), v8, size, *(a1 + 712), *(a1 + 704));
  }

  else
  {
    return -1;
  }
}

uint64_t x509_string_cmp(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && !memcmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
  {
    return 0;
  }

  else if ((*a1 == 12 || *a1 == 19) && (*a2 == 12 || *a2 == 19) && *(a1 + 8) == *(a2 + 8) && !x509_memcasecmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

ot::Cli::Interpreter *ot::Cli::Interpreter::Interpreter(ot::Cli::Interpreter *this, ot::Instance *a2, int (*a3)(void *, const char *, char *), void *a4)
{
  ot::Cli::OutputImplementer::OutputImplementer(this, a3, a4);
  ot::Cli::Utils::Utils(this + 2, a2, this);
  *(this + 56) = 0;
  *(this + 57) = 0;
  ot::TimerMilliContext::TimerMilliContext((this + 64), a2, ot::Cli::Interpreter::HandleTimer, this);
  ot::Cli::Dataset::Dataset(this + 12, a2, this);
  ot::Cli::NetworkData::NetworkData(this + 112, a2, this);
  ot::Cli::UdpExample::UdpExample(this + 136, a2, this);
  ot::Cli::Dataset::Dataset(this + 29, a2, this);
  ot::Cli::Dataset::Dataset(this + 31, a2, this);
  ot::Cli::Coap::Coap(this + 264, a2, this);
  ot::Cli::Dataset::Dataset(this + 48, a2, this);
  ot::Cli::Dataset::Dataset(this + 50, a2, this);
  ot::Cli::Dataset::Dataset(this + 52, a2, this);
  ot::Cli::Dataset::Dataset(this + 54, a2, this);
  ot::Cli::LinkMetrics::LinkMetrics(this + 456, a2, this);
  ot::Cli::PingSender::PingSender(this + 504, a2, this);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((this + 16));
  otThreadSetDiscoveryRequestCallback(InstancePtr, ot::Cli::Interpreter::HandleDiscoveryRequest, this);
  v5 = ot::Cli::Utils::GetInstancePtr((this + 16));
  otDiagSetOutputCallback(v5, ot::Cli::Interpreter::HandleDiagOutput, this);
  ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(this + 4);
  v6 = ot::Cli::Utils::GetInstancePtr((this + 16));
  otDiagSetOutputCallback(v6, ot::Cli::Interpreter::HandleDiagOutput, this);
  ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(this + 4);
  ot::Cli::Interpreter::OutputPrompt(this);
  return this;
}

{
  ot::Cli::Interpreter::Interpreter(this, a2, a3, a4);
  return this;
}

void *ot::Cli::Utils::Utils(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

ot::TimerMilliContext *ot::TimerMilliContext::TimerMilliContext(ot::TimerMilliContext *this, ot::Instance *a2, void (*a3)(ot::Timer *), void *a4)
{
  ot::TimerMilliContext::TimerMilliContext(this, a2, a3, a4);
  return this;
}

{
  ot::TimerMilli::TimerMilli(this, a2, a3);
  result = this;
  *(this + 3) = a4;
  return result;
}

void *ot::Cli::Dataset::Dataset(void *a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Dataset::Dataset(a1, a2, a3);
  return a1;
}

{
  ot::Cli::Utils::Utils(a1, a2, a3);
  return a1;
}

void *ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(result);
}

void ot::Cli::Interpreter::OutputPrompt(ot::Cli::Interpreter *this)
{
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
  ot::Cli::Utils::OutputFormat((this + 16), "%s", "> ");
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
}

void ot::Cli::Interpreter::OutputResult(_BYTE *result, int a2)
{
  if (result[57])
  {
    if (a2)
    {
      v2 = otThreadErrorToString(a2);
      ot::Cli::Utils::OutputLine((result + 16), "Error %u: %s", a2, v2);
    }
  }

  else
  {
    if ((result[56] & 1) == 0)
    {
      __assert_rtn("OutputResult", "cli.cpp", 201, "mCommandIsPending");
    }

    if (a2 != 36)
    {
      if (a2)
      {
        v3 = otThreadErrorToString(a2);
        ot::Cli::Utils::OutputLine((result + 16), "Error %u: %s", a2, v3);
      }

      ot::Cli::Utils::OutputLine((result + 16), "Done");
      result[56] = 0;
      ot::TimerMilli::Stop((result + 64));
      ot::Cli::Interpreter::OutputPrompt(result);
    }
  }
}

uint64_t ot::Cli::Interpreter::Process<1714215925ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  memset(__b, 0, sizeof(__b));
  ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v2);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  ArgsLength = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, v3);
  return otDiagProcessCmd(InstancePtr, ArgsLength, __b);
}

uint64_t ot::Cli::Interpreter::Process<30363746172521848ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    VersionString = otGetVersionString();
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", VersionString);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "api"))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", 431);
  }

  else
  {
    return 35;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<492159295119ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otInstanceReset(InstancePtr);
  }

  return 35;
}

void ot::Cli::Interpreter::ProcessLine(ot::Cli::Interpreter *this, ot *a2, unsigned __int16 a3, unsigned __int8 a4)
{
  v6 = 0;
  if (!a2)
  {
    __assert_rtn("ProcessLine", "cli.cpp", 322, "aBuf != nullptr");
  }

  if ((*(this + 57) & 1) == 0)
  {
    if (*(this + 56))
    {
      ot::Utils::CmdLineParser::Arg::Clear(v8);
      goto LABEL_17;
    }

    *(this + 56) = 1;
    if (ot::StringLength(a2, 0x280) > 639)
    {
      v6 = 6;
      goto LABEL_17;
    }
  }

  v6 = ot::Utils::CmdLineParser::ParseCmd(a2, v8, 0x20);
  if (!v6)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v8))
    {
      *(this + 56) = 0;
    }

    else if (*(this + 57) & 1) == 0 && (ot::Cli::Utils::LogInput((this + 16), v8), InstancePtr = ot::Cli::Utils::GetInstancePtr((this + 16)), (otDiagIsEnabled(InstancePtr)) && ot::Utils::CmdLineParser::Arg::operator!=(v8, "diag") && ot::Utils::CmdLineParser::Arg::operator!=(v8, "factoryreset"))
    {
      ot::Cli::Utils::OutputLine((this + 16), "under diagnostics mode, execute 'diag stop' before running any other commands.");
      v6 = 13;
    }

    else
    {
      v6 = ot::Cli::Interpreter::ProcessCommand(this, v8);
    }
  }

LABEL_17:
  if (!v6 && ot::Utils::CmdLineParser::Arg::IsEmpty(v8))
  {
    if ((*(this + 56) & 1) == 0)
    {
      ot::Cli::Interpreter::OutputPrompt(this);
    }
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(this, v6);
  }
}

void *ot::Utils::CmdLineParser::Arg::Clear(void *this)
{
  *this = 0;
  return this;
}

{
  return ot::Utils::CmdLineParser::Arg::Clear(this);
}

void ot::Cli::Utils::LogInput(ot::Cli::Utils *this, const ot::Utils::CmdLineParser::Arg *a2)
{
  ;
}

{
  ot::Cli::Utils::LogInput(this, a2);
}

BOOL ot::Utils::CmdLineParser::Arg::operator!=(const char **a1, const char *a2)
{
  return !ot::Utils::CmdLineParser::Arg::operator==(a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::operator!=(a1, a2);
}

uint64_t ot::Cli::Interpreter::ProcessCommand(ot::Cli::Interpreter *this, const char **a2)
{
  v18 = this;
  v17 = a2;
  v16 = 0;
  CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  v15 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(&CString, &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
  if (v15)
  {
    v9 = *(v15 + 1);
    v6 = *(v15 + 2);
    v10 = (this + (v6 >> 1));
    if (v6)
    {
      return (*(*v10 + v9))(v10, v17 + 1);
    }

    else
    {
      return v9(v10, v17 + 1);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>((this + 16), &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands);
    for (i = this + 32; i != this + 56; i += 24)
    {
      for (j = 0; j < i[8]; ++j)
      {
        ot::Cli::Utils::OutputLine((this + 16), "%s", *(*i + 16 * j));
      }
    }
  }

  else
  {
    return ot::Cli::Interpreter::ProcessUserCommands(this, v17);
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::ProcessUserCommands(ot::Cli::Interpreter *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v11 = 35;
  v10 = this + 32;
  v9 = this + 56;
  while (v10 != v9)
  {
    for (i = 0; i < v10[8]; ++i)
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(a2, *(*v10 + 16 * i)))
      {
        memset(__b, 0, sizeof(__b));
        ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v2);
        v6 = *(*v10 + 16 * i + 8);
        v7 = *(v10 + 2);
        ArgsLength = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, v3);
        v11 = v6(v7, (ArgsLength - 1), &__b[8]);
        break;
      }
    }

    v10 += 24;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::SetUserCommands(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = 1;
  for (i = a1 + 32; i != a1 + 56; i += 24)
  {
    if (!*i)
    {
      *i = a2;
      *(i + 8) = a3;
      *(i + 16) = a4;
      return 0;
    }
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<24833ull>(uint64_t a1, const char **a2)
{
  v15 = a1;
  v14 = a2;
  Id = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "port"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UdpPort = otBorderAgentGetUdpPort(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "%hu", UdpPort);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "state"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    State = otBorderAgentGetState(v4);
    v6 = ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(State, ot::Cli::Interpreter::Process<24833ull>(ot::Utils::CmdLineParser::Arg *)::kStateStrings, "unknown");
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v6);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "id"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v14 + 1)))
    {
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Id = otBorderAgentGetId(v8, v16);
      if (!Id)
      {
        ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v16);
      }
    }

    else
    {
      v12 = 16;
      Id = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14 + 1, &v12, v16, v7);
      if (!Id)
      {
        if (v12 == 16)
        {
          v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otBorderAgentSetId(v9, v16);
        }

        else
        {
          return 7;
        }
      }
    }
  }

  else
  {
    return 35;
  }

  return Id;
}

uint64_t ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine(a1, a2, 0x10u);
}

{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString(ot::Utils::CmdLineParser **this, char *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  return ot::Utils::CmdLineParser::ParseAsHexString(*this, a2, a3, a4);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(this, a2, a3, a4);
}

uint64_t ot::Cli::Utils::ProcessGetSet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned int (*a4)(uint64_t, uint64_t))
{
  v6 = ot::Cli::Utils::ProcessGet<char const*>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<char const*>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<char const*>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<6337360ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "iid"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v12 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      FixedDuaInterfaceIdentifier = otThreadGetFixedDuaInterfaceIdentifier(InstancePtr);
      if (FixedDuaInterfaceIdentifier)
      {
        ot::Cli::Utils::OutputBytesLine<(unsigned char)8>((a1 + 16), FixedDuaInterfaceIdentifier);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v12 + 1, "clear"))
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetFixedDuaInterfaceIdentifier(v5, 0);
    }

    else
    {
      v11 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v12 + 1, v9, v3, v4);
      if (!v11)
      {
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        return otThreadSetFixedDuaInterfaceIdentifier(v6, v9);
      }
    }
  }

  else
  {
    return 35;
  }

  return v11;
}

uint64_t ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine(a1, a2, 8u);
}

{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(ot::Utils::CmdLineParser **a1, char *a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(a1, a2, 8u, a4);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<13711823289570935762ull>(uint64_t a1, const char **a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageGetBufferInfo(InstancePtr, v11);
    ot::Cli::Utils::OutputLine((a1 + 16), "total: %u", v11[0]);
    ot::Cli::Utils::OutputLine((a1 + 16), "free: %u", v11[1]);
    ot::Cli::Utils::OutputLine((a1 + 16), "max-used: %u", v11[2]);
    for (i = &ot::Cli::Interpreter::Process<13711823289570935762ull>(ot::Utils::CmdLineParser::Arg *)::kBufferInfoNames; i != ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableTitles; i += 2)
    {
      v6 = i[1];
      v7 = *(v11 + *i);
      v8 = *(&v11[1] + *i);
      v3 = ot::ToUlong(*(&v11[2] + *i));
      ot::Cli::Utils::OutputLine((a1 + 16), "%s: %u %u %lu", v6, v7, v8, v3);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v13, "reset"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageResetBufferInfo(v4);
  }

  else
  {
    return 7;
  }

  return v12;
}

uint64_t ot::Cli::Interpreter::Process<11512677311266953430ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  CcaEnergyDetectThreshold = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CcaEnergyDetectThreshold = otPlatRadioGetCcaEnergyDetectThreshold(InstancePtr, &v7);
    if (!CcaEnergyDetectThreshold)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d dBm", v7);
    }
  }

  else
  {
    CcaEnergyDetectThreshold = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!CcaEnergyDetectThreshold)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otPlatRadioSetCcaEnergyDetectThreshold(v4, v7);
    }
  }

  return CcaEnergyDetectThreshold;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsInt8(ot::Utils::CmdLineParser **this, signed __int8 *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsInt8(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsInt8(this, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<29803101196888419ull>(uint64_t a1, const char **a2)
{
  v33 = a1;
  v32 = a2;
  v31 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "supported"))
  {
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    SupportedChannelMask = otPlatRadioGetSupportedChannelMask();
    v3 = ot::ToUlong(SupportedChannelMask);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%lx", v3);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v32, "preferred"))
  {
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PreferredChannelMask = otPlatRadioGetPreferredChannelMask();
    v5 = ot::ToUlong(PreferredChannelMask);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%lx", v5);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v32, "manager"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v32 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RequestedChannel = otChannelManagerGetRequestedChannel(InstancePtr);
      ot::Cli::Utils::OutputLine((a1 + 16), "channel: %u", RequestedChannel);
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      AutoChannelSelectionEnabled = otChannelManagerGetAutoChannelSelectionEnabled(v8);
      ot::Cli::Utils::OutputLine((a1 + 16), "auto: %d", AutoChannelSelectionEnabled & 1);
      v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otChannelManagerGetAutoChannelSelectionEnabled(v10))
      {
        v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        SupportedChannels = otChannelManagerGetSupportedChannels(v11);
        ot::Mac::ChannelMask::ChannelMask(v30, SupportedChannels);
        v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        FavoredChannels = otChannelManagerGetFavoredChannels(v13);
        ot::Mac::ChannelMask::ChannelMask(v29, FavoredChannels);
        v15 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        Delay = otChannelManagerGetDelay(v15);
        ot::Cli::Utils::OutputLine((a1 + 16), "delay: %u", Delay);
        v17 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        AutoChannelSelectionInterval = otChannelManagerGetAutoChannelSelectionInterval(v17);
        v19 = ot::ToUlong(AutoChannelSelectionInterval);
        ot::Cli::Utils::OutputLine((a1 + 16), "interval: %lu", v19);
        v20 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        CcaFailureRateThreshold = otChannelManagerGetCcaFailureRateThreshold(v20);
        ot::Cli::Utils::OutputLine((a1 + 16), "cca threshold: 0x%04x", CcaFailureRateThreshold);
        ot::Mac::ChannelMask::ToString(v30, v35);
        v22 = ot::String<(unsigned short)45>::AsCString(v35);
        ot::Cli::Utils::OutputLine((a1 + 16), "supported: %s", v22);
        ot::Mac::ChannelMask::ToString(v29, v34);
        v23 = ot::String<(unsigned short)45>::AsCString(v34);
        ot::Cli::Utils::OutputLine((a1 + 16), "favored: %s", v23);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "change"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), v32 + 2, otChannelManagerRequestChannelChange);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "auto"))
    {
      v28 = 0;
      v31 = ot::Utils::CmdLineParser::Arg::ParseAsBool(v32 + 2, &v28, v24);
      if (!v31)
      {
        v25 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otChannelManagerSetAutoChannelSelectionEnabled(v25, v28);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "delay"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (v32 + 2), otChannelManagerGetDelay, otChannelManagerSetDelay);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "interval"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetAutoChannelSelectionInterval);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "supported"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetSupportedChannels);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "favored"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetFavoredChannels);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "threshold"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v32 + 2, otChannelManagerSetCcaFailureRateThreshold);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), v32, otLinkGetChannel, otLinkSetChannel);
  }

  return v31;
}

uint64_t ot::String<(unsigned short)45>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)45>::AsCString(a1);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned short>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned short>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned char>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned char>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<424622705244ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v21 = a1;
  v20 = a2;
  ChildInfoById = 0;
  v18 = 0;
  v17 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v17 || ot::Utils::CmdLineParser::Arg::operator==(v20, "list"))
  {
    if (v17)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)14>((a1 + 16), ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableTitles, ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableColumnWidths);
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxAllowedChildren = otThreadGetMaxAllowedChildren(InstancePtr);
    for (i = 0; i < MaxAllowedChildren; ++i)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetChildInfoByIndex(v4, i, v22) && (v37 & 8) == 0)
      {
        if (v17)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %3u ", v26);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v25);
          v5 = ot::ToUlong(v23);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %10lu ", v5);
          v6 = ot::ToUlong(v24);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %10lu ", v6);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v28);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %4u ", v27);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", v37 & 1);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 2) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 4) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%3u", v32);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %1d ", (v37 & 0x10) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v30);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v31);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
          ot::Cli::Utils::OutputExtAddress((a1 + 16), v22);
          ot::Cli::Utils::OutputLine((a1 + 16), " |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", v26);
        }
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    ChildInfoById = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v20, &v18, v2);
    if (!ChildInfoById)
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      ChildInfoById = otThreadGetChildInfoById(v7, v18, v22);
      if (!ChildInfoById)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "Child ID: %u", v26);
        ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %04x", v25);
        ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
        ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v22);
        v16 = v16 & 0xFE | v37 & 1;
        v16 = v16 & 0xFD | (2 * ((v37 & 2) != 0));
        v16 = v16 & 0xFB | (4 * ((v37 & 2) != 0));
        v8 = ot::Cli::Utils::LinkModeToString(&v16, v15);
        ot::Cli::Utils::OutputLine((a1 + 16), "Mode: %s", v8);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Synchronized: %d ", (v37 & 0x10) != 0);
        ot::Cli::Utils::OutputLine((a1 + 16), "Net Data: %u", v27);
        v9 = ot::ToUlong(v23);
        ot::Cli::Utils::OutputLine((a1 + 16), "Timeout: %lu", v9);
        v10 = ot::ToUlong(v24);
        ot::Cli::Utils::OutputLine((a1 + 16), "Age: %lu", v10);
        ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v28);
        ot::Cli::Utils::OutputLine((a1 + 16), "RSSI: %d", v29);
        ot::Cli::Utils::OutputLine((a1 + 16), "Supervision Interval: %d", v31);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Channel:%d", v33);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Timeout:%d", v34);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Period:%d", v35);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Phase:%d", v36);
      }
    }
  }

  return ChildInfoById;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)14>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0xEu, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)14>(a1, a2, a3);
}

ot::Cli::Utils *ot::Cli::Utils::OutputExtAddress(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytes<(unsigned char)8>(a1, a2);
}

{
  return ot::Cli::Utils::OutputExtAddress(a1, a2);
}

uint64_t ot::Cli::Utils::OutputExtAddressLine(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, a2);
}

{
  return ot::Cli::Utils::OutputExtAddressLine(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<30907139684939619ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v25 = a1;
  v24 = a2;
  v23 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxAllowedChildren = otThreadGetMaxAllowedChildren(InstancePtr);
    for (i = 0; i < MaxAllowedChildren; ++i)
    {
      v20 = 0;
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetChildInfoByIndex(v3, i, v28) && (v30 & 8) == 0)
      {
        v20 = 0;
        while (1)
        {
          v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          if (otThreadGetChildNextIp6Address(v4, i, &v20, v19))
          {
            break;
          }

          ot::Cli::Utils::OutputFormat((a1 + 16), "%04x: ", v29);
          ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v19);
        }
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v24, "max"))
  {
    return ot::Cli::Utils::ProcessGet<unsigned char>((a1 + 16), (v24 + 8), otThreadGetMaxChildIpAddresses);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v24, "extaddr"))
  {
    v18 = 0;
    v17 = 0;
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v16 = otThreadGetMaxAllowedChildren(v5);
    v23 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v24 + 1, v27, v6, v7);
    if (!v23)
    {
      for (j = 0; j < v16; ++j)
      {
        v14 = 0;
        v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        if (!otThreadGetChildInfoByIndex(v8, j, v26) && (v26[52] & 8) == 0)
        {
          v18 = 0;
          for (k = 0; k < 8; ++k)
          {
            if (v27[k] == v26[k])
            {
              ++v18;
            }
          }

          if (v18 == 8)
          {
            v17 = 1;
            v14 = 0;
            while (1)
            {
              v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
              if (otThreadGetChildNextIp6Address(v9, j, &v14, v13))
              {
                break;
              }

              ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v13);
            }
          }
        }
      }

      if ((v17 & 1) == 0)
      {
        return 7;
      }
    }
  }

  else
  {
    return 35;
  }

  return v23;
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<unsigned char>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<8059602322220575993ull>(uint64_t a1, const char **a2)
{
  v7 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "checktimeout"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otChildSupervisionGetCheckTimeout, otChildSupervisionSetCheckTimeout);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "interval"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otChildSupervisionGetInterval, otChildSupervisionSetInterval);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "failcounter"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v3 = otChildSupervisionGetCheckFailureCounter(InstancePtr);
      ot::Cli::Utils::OutputLine((a1 + 16), "%u", v3);
      return 0;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset"))
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otChildSupervisionResetCheckFailureCounter(v4);
      return 0;
    }
  }

  return v7;
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned int>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned int>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<1996360929ull>(uint64_t a1, const char **a2)
{
  v17 = a1;
  v16 = a2;
  CoexMetrics = 0;
  if (ot::Cli::Utils::ProcessEnableDisable((a1 + 16), a2, otPlatRadioIsCoexEnabled, otPlatRadioSetCoexEnabled))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v16, "metrics"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      CoexMetrics = otPlatRadioGetCoexMetrics(InstancePtr, v13);
      if (!CoexMetrics)
      {
        v3 = "true";
        if ((v14 & 1) == 0)
        {
          v3 = "false";
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "Stopped: %s", v3);
        v4 = ot::ToUlong(v13[0]);
        ot::Cli::Utils::OutputLine((a1 + 16), "Grant Glitch: %lu", v4);
        ot::Cli::Utils::OutputLine((a1 + 16), "Transmit metrics");
        for (i = &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kTxMetricNames; i != &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kRxMetricNames; i += 16)
        {
          v9 = *(i + 1);
          v5 = ot::ToUlong(*(v13 + *i));
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v9, v5);
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "Receive metrics");
        for (j = &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kRxMetricNames; j != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTxCounterNames; j += 16)
        {
          v8 = *(j + 1);
          v6 = ot::ToUlong(*(v13 + *j));
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v8, v6);
        }
      }
    }

    else
    {
      return 7;
    }
  }

  return CoexMetrics;
}

uint64_t ot::Cli::Interpreter::Process<8094126837366616329ull>(uint64_t a1, const char **a2)
{
  v33 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "ip");
    ot::Cli::Utils::OutputLine((a1 + 16), "mac");
    ot::Cli::Utils::OutputLine((a1 + 16), "mle");
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "mac"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Counters = otLinkGetCounters(InstancePtr);
      v3 = ot::ToUlong(*Counters);
      ot::Cli::Utils::OutputLine((a1 + 16), "TxTotal: %lu", v3);
      for (i = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTxCounterNames; i != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kRxCounterNames; i += 2)
      {
        v21 = i[1];
        v4 = ot::ToUlong(*(Counters + *i));
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v21, v4);
      }

      v5 = ot::ToUlong(Counters[24]);
      ot::Cli::Utils::OutputLine((a1 + 16), "RxTotal: %lu", v5);
      for (j = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kRxCounterNames; j != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; j += 2)
      {
        v20 = j[1];
        v6 = ot::ToUlong(*(Counters + *j));
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v20, v6);
      }

      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxMinCslError: %ld", Counters[41]);
      if (Counters[43])
      {
        v19 = *(Counters + 22) / Counters[43];
      }

      else
      {
        v19 = 0;
      }

      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxAvgCslError: %ld", v19);
      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxMaxCslError: %ld", Counters[42]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otLinkResetCounters(v7);
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetMleLinkLossCounters(v8);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "bbr"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      BbrCounters = otThreadGetBbrCounters(v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "Primary state count: %d", *BbrCounters);
      ot::Cli::Utils::OutputLine((a1 + 16), "Secondary state count: %d", BbrCounters[2]);
      ot::Cli::Utils::OutputLine((a1 + 16), "Disabled state count: %d", BbrCounters[1]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetBbrCounters(v10);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "mle"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MleCounters = otThreadGetMleCounters(v11);
      v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MleLinkLossCounters = otThreadGetMleLinkLossCounters(v12);
      for (k = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; k != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTimeCounterNames; k += 2)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%s: %u", k[1], *&(*k)[MleCounters]);
      }

      for (m = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTimeCounterNames; m != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; m += 2)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "Time %s Milli: ", m[1]);
        ot::Cli::Utils::OutputUint64Line((a1 + 16), *&(*m)[MleCounters]);
      }

      ot::Cli::Utils::OutputFormat((a1 + 16), "Time Tracked Milli: ");
      ot::Cli::Utils::OutputUint64Line((a1 + 16), *(MleCounters + 56));
      ot::Cli::Utils::OutputLine((a1 + 16), "Child Link Loss: %d", *MleLinkLossCounters);
      ot::Cli::Utils::OutputLine((a1 + 16), "Router Link Loss: %d", MleLinkLossCounters[1]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetMleCounters(v13);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "ip"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v14 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Ip6Counters = otThreadGetIp6Counters(v14);
      for (n = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; n != ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles; n += 2)
      {
        v18 = n[1];
        v15 = ot::ToUlong(*&(*n)[Ip6Counters]);
        ot::Cli::Utils::OutputLine((a1 + 16), "%s: %lu", v18, v15);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v16 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetIp6Counters(v16);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v33;
}

uint64_t ot::Cli::Interpreter::Process<7052124ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v16 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslChannel = otLinkGetCslChannel(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "channel: %u", CslChannel);
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslPeriod = otLinkGetCslPeriod(v4);
    v6 = ot::ToUlong(CslPeriod);
    ot::Cli::Utils::OutputLine((a1 + 16), "period: %luus", v6);
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslTimeout = otLinkGetCslTimeout(v7);
    v9 = ot::ToUlong(CslTimeout);
    ot::Cli::Utils::OutputLine((a1 + 16), "timeout: %lus", v9);
    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslRequestAhead = otLinkGetCslRequestAhead(v10);
    ot::Cli::Utils::OutputLine((a1 + 16), "RequestAhead: %u", CslRequestAhead);
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslUncertainty = otPlatRadioGetCslUncertainty();
    ot::Cli::Utils::OutputLine((a1 + 16), "Uncertainity: %u", CslUncertainty);
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslAccuracy = otPlatRadioGetCslAccuracy();
    ot::Cli::Utils::OutputLine((a1 + 16), "Accuracy: %u", CslAccuracy);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "channel"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), a2 + 1, otLinkSetCslChannel);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "period"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), a2 + 1, otLinkSetCslPeriod);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "timeout"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), a2 + 1, otLinkSetCslTimeout);
  }

  else if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "debug"))
  {
    return 7;
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::Process<7441274ull>(uint64_t a1, const char **a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "attach"))
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v21 + 2)))
    {
      return 7;
    }

    else
    {
      v20 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v21 + 1, v23, v2, v3);
      if (!v20)
      {
        v20 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v21 + 2, &v19, v4);
        if (!v20)
        {
          if (ot::Utils::CmdLineParser::Arg::IsEmpty((v21 + 3)))
          {
            InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            v18 = otThreadWedWakeUpPattern(InstancePtr);
            ot::Cli::Utils::OutputLine((a1 + 16), "Set wakeupPattern as %d", v18);
          }

          else
          {
            v20 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v21 + 3, &v18, v5);
            if (v20)
            {
              return v20;
            }
          }

          v20 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v21 + 4, &v17, v7);
          if (!v20)
          {
            v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otThreadAttachCslPeripheral(v8, v23, v19, v18, 3, v17);
          }
        }
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "configure"))
  {
    v16 = 11;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v21 + 1)) || (v20 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v21 + 1, &v16, v9)) == 0)
    {
      v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadConfigureWOR(v10, 0xEA60u, v16);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "detach"))
  {
    v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadDetachEnhCslPeer(v11);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "state"))
  {
    v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otThreadIsEnhCslPeerLinked(v12))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "linked");
    }

    else
    {
      v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadIsEnhCslPeerLinking(v13))
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "linking");
      }

      else
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "disabled");
      }
    }
  }

  else
  {
    return 7;
  }

  return v20;
}

uint64_t ot::Cli::Interpreter::Process<7419947443224800644ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Channel = otLinkWorGetChannel(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", Channel);
  }

  else
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), a2, otLinkWorSetChannel);
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<5345021259271145584ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    DelayTimerMinimal = otDatasetGetDelayTimerMinimal(InstancePtr);
    v4 = ot::ToUlong(DelayTimerMinimal / 0x3E8);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v11 + 1)))
  {
    v9 = 0;
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v5);
    if (!v10)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otDatasetSetDelayTimerMinimal(v6, 1000 * v9);
    }
  }

  else
  {
    return 7;
  }

  return v10;
}

uint64_t ot::Cli::Interpreter::Process<112553419349005ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "async"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadDetachGracefully(InstancePtr, 0, 0);
  }

  else
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v6 = otThreadDetachGracefully(v3, ot::Cli::Interpreter::HandleDetachGracefullyResult, a1);
    if (!v6)
    {
      return 36;
    }
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<8020460690342608375ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reqcallback"))
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v13 = ot::Cli::Utils::ParseEnableOrDisable(v14 + 1, &v11, v2);
    if (!v13)
    {
      if (v11)
      {
        v10 = ot::Cli::Interpreter::HandleDiscoveryRequest;
        v9 = a1;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadSetDiscoveryRequestCallback(InstancePtr, v10, v9);
    }
  }

  else
  {
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v14))
    {
      v8 = 0;
      v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v14, &v8, v4);
      if (v13)
      {
        return v13;
      }

      if (v8 >= 0x20uLL)
      {
        return 7;
      }

      v12 = 1 << v8;
    }

    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v13 = otThreadDiscover(v5, v12, 0xFFFFu, 0, 0, ot::Cli::Interpreter::HandleActiveScanResult, a1);
    if (!v13)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)7>((a1 + 16), ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles, ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableColumnWidths);
      return 36;
    }
  }

  return v13;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 7u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::OutputEidCacheEntry(uint64_t a1, uint64_t a2)
{
  ot::Cli::Utils::OutputIp6Address((a1 + 16), a2);
  ot::Cli::Utils::OutputFormat((a1 + 16), " %04x", *(a2 + 16));
  v2 = ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(*(a2 + 20), ot::Cli::Interpreter::OutputEidCacheEntry(otCacheEntryInfo const&)::kStateStrings, "unknown");
  ot::Cli::Utils::OutputFormat((a1 + 16), " %s", v2);
  ot::Cli::Utils::OutputFormat((a1 + 16), " canEvict=%d", *(a2 + 24) & 1);
  if (*(a2 + 20))
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), " timeout=%u", *(a2 + 48));
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    v3 = ot::ToUlong(*(a2 + 28));
    ot::Cli::Utils::OutputFormat((a1 + 16), " transTime=%lu eid=", v3);
    ot::Cli::Utils::OutputIp6Address((a1 + 16), a2 + 32);
  }

  if (*(a2 + 20) == 3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), " retryDelay=%u rampDown=%d", *(a2 + 50), (*(a2 + 24) & 2) != 0);
  }

  return ot::Cli::Utils::OutputNewLine((a1 + 16));
}

uint64_t ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 4u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<7109832251570096126ull>(uint64_t a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(v8);
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v9))
  {
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextCacheEntry(InstancePtr, v7, v8))
      {
        break;
      }

      ot::Cli::Interpreter::OutputEidCacheEntry(a1, v7);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v9, "clear"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadClearEidCache(v3);
  }

  else
  {
    return 7;
  }

  return v6;
}

void *ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(result);
}

uint64_t ot::Cli::Interpreter::Process<220771284311ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otLinkGetFactoryAssignedIeeeEui64(InstancePtr, v6);
    ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v6);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<31451632477498226ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ExtendedAddress = otLinkGetExtendedAddress(InstancePtr);
    ot::Cli::Utils::OutputExtAddressLine((a1 + 16), ExtendedAddress);
  }

  else
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a2, v11, v2, v3);
    if (!v9)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otLinkSetExtendedAddress(v6, v11);
    }
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<6725988ull>(uint64_t a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "level"))
  {
    IsEmpty = ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1));
    if (IsEmpty)
    {
      Level = otLoggingGetLevel(IsEmpty);
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", Level);
    }

    else
    {
      v8 = 0;
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 2)))
      {
        v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v10 + 1, &v8, v4);
        if (!v9)
        {
          return otLoggingSetLevel(v8, v5);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 7;
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<7040008844819482601ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetExtendedPanId(InstancePtr);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)8>((a1 + 16), v5);
  }

  else
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a2, v11, v2, v3);
    if (!v9)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetExtendedPanId(v6, v11);
    }
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<13321296782721747327ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v13 = a1;
  v12 = a2;
  NeighborEnhAckSolicitationEnabled = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    NeighborEnhAckSolicitationEnabled = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v12, v14, v2, v3);
    if (!NeighborEnhAckSolicitationEnabled)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v12 + 8)))
      {
        v10 = 0;
        InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        NeighborEnhAckSolicitationEnabled = otThreadGetNeighborEnhAckSolicitationEnabled(InstancePtr, v14, &v10);
        if (!NeighborEnhAckSolicitationEnabled)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%d", v10 & 1);
        }
      }

      else
      {
        v9 = 0;
        NeighborEnhAckSolicitationEnabled = ot::Utils::CmdLineParser::Arg::ParseAsBool(v12 + 1, &v9, v4);
        if (!NeighborEnhAckSolicitationEnabled)
        {
          v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otThreadSetNeighborEnhAckSolicitationEnabled(v6, v14, v9);
        }
      }
    }
  }

  return NeighborEnhAckSolicitationEnabled;
}

uint64_t ot::Cli::Interpreter::Process<7113582ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  FemLnaGain = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v10 = 0;
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    FemLnaGain = otPlatRadioGetFemLnaGain(InstancePtr, &v10);
    if (!FemLnaGain)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "LNA gain %d dBm", v10);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "lnagain"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v12 + 1)))
    {
      v9 = 0;
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      FemLnaGain = otPlatRadioGetFemLnaGain(v4, &v9);
      if (!FemLnaGain)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%d", v9);
      }
    }

    else
    {
      v8 = 0;
      FemLnaGain = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v12 + 1, &v8, v3);
      if (!FemLnaGain)
      {
        v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        return otPlatRadioSetFemLnaGain(v5, v8);
      }
    }
  }

  else
  {
    return 7;
  }

  return FemLnaGain;
}

uint64_t ot::Cli::Interpreter::Process<7250330901759102465ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otIp6IsEnabled(InstancePtr))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "up");
    }

    else
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "down");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "up"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otIp6SetEnabled(v3, 1);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "down"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otIp6SetEnabled(v4, 0);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<1543756974943056624ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = 7;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Id = otInstanceGetId(InstancePtr);
    v4 = ot::ToUlong(Id);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
    return 0;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<123339735204840ull>(uint64_t a1, const char **a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-v"))
  {
    ++v21;
    v19 = 1;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v21))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UnicastAddresses = otIp6GetUnicastAddresses(InstancePtr);
    for (i = UnicastAddresses; i; i = *(i + 24))
    {
      ot::Cli::Utils::OutputIp6Address((a1 + 16), i);
      if (v19)
      {
        v3 = ot::Cli::Utils::AddressOriginToString(*(i + 17));
        ot::Cli::Utils::OutputFormat((a1 + 16), " origin:%s plen:%u preferred:%u valid:%u", v3, *(i + 16), *(i + 18) & 1, (*(i + 18) & 2) != 0);
      }

      ot::Cli::Utils::OutputNewLine((a1 + 16));
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "add"))
  {
    v20 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v21 + 1, v15);
    if (!v20)
    {
      v15[16] = 64;
      v16 = v16 & 0xFFFE | 1;
      v16 = v16 & 0xFFFD | 2;
      v15[17] = 3;
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6AddUnicastAddress(v4, v15);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "del"))
  {
    v20 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v21 + 1, v14);
    if (!v20)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6RemoveUnicastAddress(v5, v14);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "linklocal"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetLinkLocalIp6Address(v6);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v7);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "rloc"))
  {
    v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetRloc(v8);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v9);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "mleid"))
  {
    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetMeshLocalEid(v10);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v11);
  }

  else
  {
    return 35;
  }

  return v20;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(const char **a1, uint64_t a2)
{
  return ot::Utils::CmdLineParser::ParseAsIp6Address(*a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<31451632477041015ull>(uint64_t a1, const char **a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    for (i = otIp6GetMulticastAddresses(InstancePtr); i; i = *(i + 16))
    {
      ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), i);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "add"))
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(++v15, v12);
    if (!v14)
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6SubscribeMulticastAddress(v3, v12);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "del"))
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v15 + 1, v11);
    if (!v14)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6UnsubscribeMulticastAddress(v4, v11);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "llatn"))
  {
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetLinkLocalAllThreadNodesMulticastAddress(v5);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v6);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "rlatn"))
  {
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetRealmLocalAllThreadNodesMulticastAddress(v7);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v8);
  }

  else
  {
    return 35;
  }

  return v14;
}

uint64_t ot::Cli::Interpreter::Process<14182804244553304960ull>(uint64_t a1, const char **a2)
{
  v4 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "counter"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned int>((a1 + 16), (a2 + 1), otThreadGetKeySequenceCounter, otThreadSetKeySequenceCounter);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "guardtime"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otThreadGetKeySwitchGuardTime, otThreadSetKeySwitchGuardTime);
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<5743589040336375053ull>(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  LeaderData = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  LeaderData = otThreadGetLeaderData(InstancePtr, &v6);
  if (!LeaderData)
  {
    v3 = ot::ToUlong(v6);
    ot::Cli::Utils::OutputLine((a1 + 16), "Partition ID: %lu", v3);
    ot::Cli::Utils::OutputLine((a1 + 16), "Weighting: %u", BYTE4(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Data Version: %u", BYTE5(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Stable Data Version: %u", BYTE6(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Leader Router ID: %u", HIBYTE(v6));
  }

  return LeaderData;
}

uint64_t ot::Cli::Interpreter::Process<1998604769390126437ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PartitionId = otThreadGetPartitionId(InstancePtr);
    v4 = ot::ToUlong(PartitionId);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
    return 0;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<9463712713382948648ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Mode = otPowerControlGetMode(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "Mode: %u", Mode);
  }

  else
  {
    v8 = 0;
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v10, &v8, v2);
    if (!v9)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otPowerControlSetMode(v5, v8);
    }
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<1648543237ull>(uint64_t a1, uint64_t a2)
{
  Pskc = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetPskc(InstancePtr, v16);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v16);
    return Pskc;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    Pskc = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a2, v16, v3, v4);
    if (Pskc)
    {
      return Pskc;
    }

LABEL_10:
    v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetPskc(v9, v16);
  }

  if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "-p"))
  {
    return 7;
  }

  CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
  v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  otThreadGetNetworkName(v5);
  v11 = v6;
  v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  otThreadGetExtendedPanId(v7);
  Pskc = otDatasetGeneratePskc(CString, v11, v8, v16);
  if (!Pskc)
  {
    goto LABEL_10;
  }

  return Pskc;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(ot::Utils::CmdLineParser **a1, char *a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(a1, a2, 0x10u, a4);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a1, a2, a3, a4);
}

uint64_t ot::Utils::CmdLineParser::Arg::GetCString(ot::Utils::CmdLineParser::Arg *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::Utils::CmdLineParser::Arg::GetCString(this);
}

{
  return ot::Utils::CmdLineParser::Arg::GetCString(this);
}

uint64_t ot::Cli::Interpreter::Process<7440499ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 35;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reg"))
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v11 = (v11 + 8);
    do
    {
      if (ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v11, &v13[v7]))
      {
        break;
      }

      v11 = (v11 + 8);
      ++v7;
    }

    while (v7 != 15);
    if (!ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v2))
    {
      v11 = (v11 + 8);
      v8 = 1;
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v11) && v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (v8)
      {
        v3 = otIp6RegisterMulticastListeners(InstancePtr, v13, v7, &v9, ot::Cli::Interpreter::HandleMlrRegResult, a1);
      }

      else
      {
        v3 = otIp6RegisterMulticastListeners(InstancePtr, v13, v7, 0, ot::Cli::Interpreter::HandleMlrRegResult, a1);
      }

      v10 = v3;
      if (!v3)
      {
        return 36;
      }
    }

    else
    {
      return 7;
    }
  }

  return v10;
}

void ot::Cli::Interpreter::HandleMlrRegResult(_BYTE *a1, int a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  ot::Cli::Interpreter::HandleMlrRegResult(a1, a2, a3, a4, a5);
}

{
  if (!a2)
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "status %d, %d failed", a3, a5);
    for (i = 0; i < a5; ++i)
    {
      ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), a4 + 16 * i);
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<1681249789ull>(uint64_t a1, const char **a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(&v11);
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v13))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    LinkMode = otThreadGetLinkMode(InstancePtr);
    v3 = ot::Cli::Utils::LinkModeToString(&LinkMode, v10);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v3);
  }

  else
  {
    if (ot::Utils::CmdLineParser::Arg::operator!=(v13, "-"))
    {
      for (i = ot::Utils::CmdLineParser::Arg::GetCString(v13); *i; ++i)
      {
        v6 = *i;
        switch(v6)
        {
          case 'd':
            v11 = v11 & 0xFD | 2;
            break;
          case 'n':
            v11 = v11 & 0xFB | 4;
            break;
          case 'r':
            v11 = v11 & 0xFE | 1;
            break;
          default:
            return 7;
        }
      }
    }

    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetLinkMode(v4, v11);
  }

  return v12;
}

_BYTE *ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(_BYTE *result)
{
  *result = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(result);
}

uint64_t ot::Cli::Interpreter::Process<11302599500980265950ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "[");
    ot::Cli::Utils::OutputFormat((a1 + 16), "15.4");
    ot::Cli::Utils::OutputLine((a1 + 16), "]");
  }

  else
  {
    return 35;
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<8023188516701246990ull>(uint64_t a1, const char **a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v18 = 0;
  v19 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v19 || ot::Utils::CmdLineParser::Arg::operator==(v21, "list"))
  {
    if (v19)
    {
      ot::Cli::Utils::OutputNewLine((a1 + 16));
      ot::Cli::Utils::OutputTableHeader<(unsigned char)16>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborTableColumnWidths);
    }

    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(InstancePtr, &v18, v24))
      {
        break;
      }

      if (v19)
      {
        if ((v37 & 8) != 0)
        {
          v3 = 67;
        }

        else
        {
          v3 = 82;
        }

        ot::Cli::Utils::OutputFormat((a1 + 16), "| %3c  ", v3);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v27);
        v4 = ot::ToUlong(v25);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %3lu ", v4);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %8d ", v32);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %9d ", v33);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", v37 & 1);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 2) != 0);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 4) != 0);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%3d", v28);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        ot::Cli::Utils::OutputFormat((a1 + 16), " |%3d|", v36);
        v5 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v5, "         NA |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v5, "    %7d |");
        }

        v6 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v6, "          NA |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v6, "     %7d |");
        }

        v7 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v7, "          NA |", v29);
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v7, "     %7d |", v29);
        }

        ot::Cli::Utils::OutputFormat((a1 + 16), " %d.%02d%%", v31 / 0x64, v31 % 0x64);
        ot::Cli::Utils::OutputLine((a1 + 16), "| %d.%02d%%", v30 / 0x64, v30 % 0x64);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "0x%04x ", v27);
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "linkquality"))
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)7>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kLinkQualityTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kLinkQualityTableColumnWidths);
    while (1)
    {
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(v8, &v18, v24))
      {
        break;
      }

      ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x | ", v27);
      ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
      v9 = ot::Cli::Utils::PercentageToString(v34, v17);
      ot::Cli::Utils::OutputFormat((a1 + 16), " | %9s %% ", v9);
      v10 = ot::Cli::Utils::PercentageToString(v35, v17);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %7s %% ", v10);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %7d ", v32);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %8d ", v33);
      v11 = ot::ToUlong(v25);
      ot::Cli::Utils::OutputLine((a1 + 16), "| %5lu |", v11);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "conntime"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v21 + 1, "list"))
    {
      v19 = 0;
    }

    else
    {
      v19 = 1;
      ot::Cli::Utils::OutputTableHeader<(unsigned char)4>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kConnTimeTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kConnTimeTableColumnWidths);
    }

    while (1)
    {
      v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(v12, &v18, v24))
      {
        break;
      }

      if (v19)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x | ", v27);
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        otConvertDurationInSecondsToString(v25, v23, 21);
        ot::Cli::Utils::OutputFormat((a1 + 16), " | %16s", v23);
        otConvertDurationInSecondsToString(v26, v23, 21);
        ot::Cli::Utils::OutputLine((a1 + 16), " | %16s |", v23);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "0x%04x ", v27);
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        v15 = ot::ToUlong(v25);
        v13 = ot::ToUlong(v26);
        ot::Cli::Utils::OutputLine((a1 + 16), " age:%lu conn-time:%lu", v15, v13);
      }
    }
  }

  else
  {
    return 7;
  }

  return v20;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)16>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0x10u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)16>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 4u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<31998349810021265ull>(uint64_t a1)
{
  ot::Cli::Utils::OutputTableHeader<(unsigned char)2>((a1 + 16), ot::Cli::Interpreter::Process<31998349810021265ull>(ot::Utils::CmdLineParser::Arg *)::kNetstatTableTitles, ot::Cli::Interpreter::Process<31998349810021265ull>(ot::Utils::CmdLineParser::Arg *)::kNetstatTableColumnWidths);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  for (i = otUdpGetSockets(InstancePtr); i; i = *(i + 64))
  {
    otIp6SockAddrToString(i, v5, 48);
    ot::Cli::Utils::OutputFormat((a1 + 16), "| %-47s ", v5);
    otIp6SockAddrToString(i + 18, v5, 48);
    ot::Cli::Utils::OutputLine((a1 + 16), "| %-47s |", v5);
  }

  return 0;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)2>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 2u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)2>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<27876329803337845ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v11 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otServerGetNextService(InstancePtr, &v11, v15))
      {
        break;
      }

      ot::Cli::NetworkData::OutputService((a1 + 112), v15);
    }

    return 0;
  }

  else
  {
    v10 = 0;
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v13 + 1, &v17, v2);
    if (!v12)
    {
      v10 = 252;
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v13 + 2, &v10, v19, v4);
      if (!v12)
      {
        if (v10)
        {
          v18 = v10;
          if (ot::Utils::CmdLineParser::Arg::operator==(v13, "add"))
          {
            if (ot::Utils::CmdLineParser::Arg::IsEmpty((v13 + 24)))
            {
              v21 = 0;
            }

            else
            {
              v10 = 248;
              v12 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v13 + 3, &v10, v22, v5);
              if (v12)
              {
                return v12;
              }

              if (!v10)
              {
                return 7;
              }

              v21 = v10;
            }

            v20 = v20 & 0xFE | 1;
            v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otServerAddService(v6, v16);
          }

          if (ot::Utils::CmdLineParser::Arg::operator==(v13, "remove"))
          {
            v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otServerRemoveService(v7, v17, v19, v18);
          }
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Interpreter::Process<2882870027264844783ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetNetworkKey(InstancePtr, v11);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v11);
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a2, v10, v2, v3);
    if (!v8)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetNetworkKey(v5, v10);
    }
  }

  return v8;
}

uint64_t ot::Cli::Interpreter::Process<30913625955023990ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 10;
  v13 = -2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>((a1 + 16), ot::Cli::Interpreter::Process<30913625955023990ull>(ot::Utils::CmdLineParser::Arg *)::kNextHopTableTitles, ot::Cli::Interpreter::Process<30913625955023990ull>(ot::Utils::CmdLineParser::Arg *)::kNextHopTableColumnWidths);
    for (i = 0; i <= 0x3Eu; ++i)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadIsRouterIdAllocated(InstancePtr, i))
      {
        v11 = i << 10;
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otThreadGetNextHopAndPathCost(v4, v11, &v10, &v9);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %4u | ", i);
        if (v10 == 65534)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%4s | %4s |", "-", "-");
        }

        else
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%4u | %4u |", v10 >> 10, v9);
        }
      }
    }
  }

  else
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15, &v11, v2);
    if (!v12)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadGetNextHopAndPathCost(v5, v11, &v10, &v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x cost:%u", v10, v9);
    }
  }

  return v12;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 3u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<7248134557998169864ull>(uint64_t a1, const char **a2)
{
  v26 = a1;
  v25 = a2;
  ChildTable = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "topology"))
  {
    v23 &= 0xFCu;
    for (++v25; !ot::Utils::CmdLineParser::Arg::IsEmpty(v25); ++v25)
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(v25, "ip6-addrs"))
      {
        v23 = v23 & 0xFE | 1;
      }

      else
      {
        if (!ot::Utils::CmdLineParser::Arg::operator==(v25, "children"))
        {
          return 7;
        }

        v23 = v23 & 0xFD | 2;
      }
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ChildTable = otMeshDiagDiscoverTopology(InstancePtr, &v23, ot::Cli::Interpreter::HandleMeshDiagDiscoverDone, a1);
    if (!ChildTable)
    {
      return 36;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childtable"))
  {
    v22 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v22, v3);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildTable(v4, v22, ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childip6"))
  {
    v21 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v21, v5);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildrenIp6Addrs(v6, v21, ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "routerneighbortable"))
  {
    v20 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v20, v7);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryRouterNeighborTable(v8, v20, ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childtable"))
  {
    v19 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v19, v9);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildTable(v10, v19, ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childip6"))
  {
    v18 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v18, v11);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildrenIp6Addrs(v12, v18, ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "routerneighbortable"))
  {
    v17 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v17, v13);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v14 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryRouterNeighborTable(v14, v17, ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 35;
  }

  return ChildTable;
}

void ot::Cli::Interpreter::HandleMeshDiagDiscoverDone(_BYTE *a1, int a2, const unsigned __int8 *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "id:%02u rloc16:0x%04x ext-addr:", v20[10], *(v20 + 4));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), v20);
    if (*(v20 + 6) != 0xFFFF)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " ver:%u", *(v20 + 6));
    }

    if (v20[14])
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - me");
    }

    if ((v20[14] & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - parent");
    }

    if ((v20[14] & 4) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - leader");
    }

    if ((v20[14] & 8) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - br");
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
    for (i = 3; i; --i)
    {
      v18 = 0;
      v17 = v20 + 15;
      v16 = v20 + 15;
      v15 = v20 + 78;
      while (v16 != v15)
      {
        v14 = *v16;
        if (v14 == i)
        {
          v18 = 1;
          break;
        }

        ++v16;
      }

      if (v18)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), 4, "%u-links:{ ", i);
        for (j = 0; j < 0x3Fu; ++j)
        {
          if (v20[j + 15] == i)
          {
            ot::Cli::Utils::OutputFormat((a1 + 16), "%02u ", j);
          }
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "}");
      }
    }

    if (*(v20 + 10))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), 4, "ip6-addrs:");
      while (!otMeshDiagGetNextIp6Address(*(v20 + 10), v12))
      {
        ot::Cli::Utils::OutputSpaces((a1 + 16), 8);
        ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v12);
      }
    }

    if (*(v20 + 11))
    {
      v7 = 1;
      while (!otMeshDiagGetNextChildInfo(*(v20 + 11), &v9))
      {
        if (v7)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "children:");
          v7 = 0;
        }

        v4 = v9;
        v5 = v10[1];
        v3 = ot::Cli::Utils::LinkModeToString(v10, v8);
        ot::Cli::Utils::OutputFormat((a1 + 16), 8, "rloc16:0x%04x lq:%u, mode:%s", v4, v5, v3);
        if (v11)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), " - me");
        }

        if ((v11 & 2) != 0)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), " - br");
        }

        ot::Cli::Utils::OutputNewLine((a1 + 16));
      }

      if (v7)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "children: none");
      }
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, v21);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult(_BYTE *a1, int a2, uint64_t a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "rloc16:0x%04x ext-addr:", *(v17 + 2));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), (v17 + 4));
    ot::Cli::Utils::OutputLine((a1 + 16), " ver:%u", *(v17 + 12));
    v13 = ot::ToUlong(*(v17 + 16));
    v3 = ot::ToUlong(*(v17 + 20));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "timeout:%lu age:%lu supvn:%u q-msg:%u", v13, v3, *(v17 + 28), *(v17 + 38));
    v4 = "yes";
    if ((*v17 & 1) == 0)
    {
      v4 = "no";
    }

    v14 = v4;
    if ((*v17 & 2) != 0)
    {
      v12 = "ftd";
    }

    else
    {
      v12 = "mtd";
    }

    v5 = "yes";
    if ((*v17 & 4) == 0)
    {
      v5 = "no";
    }

    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rx-on:%s type:%s full-net:%s", v14, v12, v5);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rss - ave:%d last:%d margin:%d", *(v17 + 31), *(v17 + 32), *(v17 + 30));
    if ((*v17 & 0x10) != 0)
    {
      v6 = ot::Cli::Utils::PercentageToString(*(v17 + 34), v16);
      ot::Cli::Utils::OutputFormat((a1 + 16), 4, "err-rate - frame:%s%% ", v6);
      v7 = ot::Cli::Utils::PercentageToString(*(v17 + 36), v16);
      ot::Cli::Utils::OutputLine((a1 + 16), "msg:%s%% ", v7);
    }

    otConvertDurationInSecondsToString(*(v17 + 24), v20, 21);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "conn-time:%s", v20);
    v8 = "yes";
    if ((*v17 & 8) == 0)
    {
      v8 = "no";
    }

    v10 = v8;
    v11 = *(v17 + 40);
    v9 = ot::ToUlong(*(v17 + 44));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "csl - sync:%s period:%u timeout:%lu channel:%u", v10, v11, v9, *(v17 + 48));
  }

  ot::Cli::Interpreter::OutputResult(a1, v18);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult(_BYTE *a1, int a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "rloc16:0x%04x ext-addr:", *(v7 + 2));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), (v7 + 4));
    ot::Cli::Utils::OutputLine((a1 + 16), " ver:%u", *(v7 + 12));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rss - ave:%d last:%d margin:%d", *(v7 + 21), *(v7 + 22), *(v7 + 20));
    if (*v7)
    {
      v3 = ot::Cli::Utils::PercentageToString(*(v7 + 24), v6);
      ot::Cli::Utils::OutputFormat((a1 + 16), 4, "err-rate - frame:%s%% ", v3);
      v4 = ot::Cli::Utils::PercentageToString(*(v7 + 26), v6);
      ot::Cli::Utils::OutputLine((a1 + 16), "msg:%s%% ", v4);
    }

    otConvertDurationInSecondsToString(*(v7 + 16), v10, 21);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "conn-time:%s", v10);
  }

  ot::Cli::Interpreter::OutputResult(a1, v8);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs(_BYTE *a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  if (!a2 || v8 == 36)
  {
    if (v6)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "child-rloc16: 0x%04x", v7);
      while (!otMeshDiagGetNextIp6Address(v6, v5))
      {
        ot::Cli::Utils::OutputSpaces((a1 + 16), 4);
        ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v5);
      }
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, v8);
}

uint64_t ot::Cli::Interpreter::Process<424573284472ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PanId = otLinkGetPanId(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x", PanId);
  }

  else
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), a2, otLinkSetPanId);
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<125538443212822ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ParentInfo = otThreadGetParentInfo(InstancePtr, v9);
    if (!ParentInfo)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
      ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %x", v10);
      ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v11);
      ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality Out: %u", v12);
      v3 = ot::ToUlong(v13);
      ot::Cli::Utils::OutputLine((a1 + 16), "Age: %lu", v3);
      ot::Cli::Utils::OutputLine((a1 + 16), "Version: %u", v14);
      ot::Cli::Utils::OutputLine((a1 + 16), "CSL clock accuracy: %u", v15);
      ot::Cli::Utils::OutputLine((a1 + 16), "CSL uncertainty: %u", v16);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "search"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSearchForBetterParent(v4);
  }

  else
  {
    return 7;
  }

  return ParentInfo;
}

uint64_t ot::Cli::Utils::ProcessGetSet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<signed char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<signed char>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<signed char>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<14555083096433720913ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Promiscuous = 0;
    if (otLinkIsPromiscuous(InstancePtr))
    {
      ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Promiscuous = otPlatRadioGetPromiscuous();
    }

    ot::Cli::Utils::OutputEnabledDisabledStatus((a1 + 16), Promiscuous & 1);
  }

  else
  {
    v10 = 0;
    v11 = ot::Cli::Utils::ParseEnableOrDisable(v12, &v10, v2);
    if (!v11)
    {
      if ((v10 & 1) == 0)
      {
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otLinkSetPcapCallback(v4, 0, 0);
      }

      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v11 = otLinkSetPromiscuous(v5, v10 & 1);
      if (!v11 && (v10 & 1) != 0)
      {
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otLinkSetPcapCallback(v6, ot::Cli::Interpreter::HandleLinkPcapReceive, a1);
      }
    }
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::HandleLinkPcapReceive(uint64_t a1, uint64_t *a2, char a3)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  if (a3)
  {
    v4 = "TX";
  }

  else
  {
    v4 = "RX";
  }

  v11 = v4;
  v13 = 0;
  logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v8, "void ot::Cli::Interpreter::HandleLinkPcapReceive(const otRadioFrame *, BOOL)", 6638);
      _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "%s:%d: #PARISDBG", v8, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }

  ot::Cli::Utils::OutputNewLine((a1 + 16));
  while (1)
  {
    result = otLogGenerateNextHexDumpLine(&v9);
    if (result)
    {
      break;
    }

    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v12);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::Process<129830133337582ull>(uint64_t a1, const char **a2)
{
  v19 = a1;
  v18 = a2;
  v17 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v16 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otBorderRouterGetNextOnMeshPrefix(InstancePtr, &v16, v15))
      {
        break;
      }

      ot::Cli::NetworkData::OutputPrefix((a1 + 112), v15);
    }

    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (!otBackboneRouterGetState(v3))
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otBackboneRouterGetDomainPrefix(v4, v15))
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "- ");
        ot::Cli::NetworkData::OutputPrefix((a1 + 112), v15);
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "add"))
  {
    v17 = ot::Cli::Utils::ParsePrefix(v18 + 1, v14);
    if (!v17)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterAddOnMeshPrefix(v5, v14);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "remove"))
  {
    v17 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v18 + 1, v13);
    if (!v17)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterRemoveOnMeshPrefix(v6, v13);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "meshlocal"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v18 + 1)))
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MeshLocalPrefix = otThreadGetMeshLocalPrefix(v7);
      ot::Cli::Utils::OutputIp6PrefixLine((a1 + 16), MeshLocalPrefix);
    }

    else
    {
      v17 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v18 + 1, v12);
      if (!v17)
      {
        if (v12[16] == 64)
        {
          v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otThreadSetMeshLocalPrefix(v9, v12);
        }

        else
        {
          return 7;
        }
      }
    }
  }

  else
  {
    return 35;
  }

  return v17;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(ot **a1, uint64_t a2)
{
  return ot::Utils::CmdLineParser::ParseAsIp6Prefix(*a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<471083391099ull>(uint64_t a1, const char **a2)
{
  v3 = 0;
  if (ot::Cli::Utils::ProcessEnableDisable((a1 + 16), a2, otLinkSetEnabled))
  {
    return 35;
  }

  return v3;
}

uint64_t ot::Cli::Interpreter::Process<7308159ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  VersionString = otPlatRadioGetVersionString();
  if (VersionString == otGetVersionString())
  {
    return 12;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "version"))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", VersionString);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<119073513618444ull>(uint64_t a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  Region = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Region = otLinkGetRegion(InstancePtr, &v7);
    if (!Region)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%c%c", v7 >> 8, v7);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(v9) == 2)
  {
    v5 = *ot::Utils::CmdLineParser::Arg::GetCString(v9) << 8;
    v7 = *(ot::Utils::CmdLineParser::Arg::GetCString(v9) + 1) + v5;
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otLinkSetRegion(v3, v7);
  }

  else
  {
    return 7;
  }

  return Region;
}

uint64_t ot::Cli::Interpreter::Process<58431844188429ull>(uint64_t a1)
{
  v4 = (a1 + 16);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  Rloc16 = otThreadGetRloc16(InstancePtr);
  ot::Cli::Utils::OutputLine(v4, "%04x", Rloc16);
  return 0;
}

uint64_t ot::Cli::Interpreter::Process<428984388969ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v10 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otBorderRouterGetNextRoute(InstancePtr, &v10, v9))
      {
        break;
      }

      ot::Cli::NetworkData::OutputRoute((a1 + 112), v9);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "add"))
  {
    v11 = ot::Cli::Utils::ParseRoute(v12 + 1, v8);
    if (!v11)
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterAddRoute(v3, v8);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "remove"))
  {
    v11 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v12 + 1, v7);
    if (!v11)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterRemoveRoute(v4, v7);
    }
  }

  else
  {
    return 35;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::Process<123344230057719ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v13 = a1;
  v12 = a2;
  RouterInfo = 0;
  v10 = 0;
  v9 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v9 || ot::Utils::CmdLineParser::Arg::operator==(v12, "list"))
  {
    if (v9)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)9>((a1 + 16), ot::Cli::Interpreter::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterTableTitles, ot::Cli::Interpreter::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterTableColumnWidths);
    }

    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxRouterId = otThreadGetMaxRouterId();
    for (i = 0; i <= MaxRouterId; ++i)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetRouterInfo(InstancePtr, i, v14))
      {
        if (v9)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %2u ", v16);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v15);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %8u ", v17);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %9u ", v18);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v19);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %6u ", v20);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %3u ", v21);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
          ot::Cli::Utils::OutputExtAddress((a1 + 16), v14);
          ot::Cli::Utils::OutputLine((a1 + 16), " | %4d |", (v22 & 2) != 0);
        }

        else
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", i);
        }
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    RouterInfo = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v12, &v10, v2);
    if (!RouterInfo)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RouterInfo = otThreadGetRouterInfo(v4, v10, v14);
      if (!RouterInfo)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "Alloc: %d", v22 & 1);
        if (v22)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "Router ID: %u", v16);
          ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %04x", v15);
          ot::Cli::Utils::OutputLine((a1 + 16), "Next Hop: %04x", v17 << 10);
          ot::Cli::Utils::OutputLine((a1 + 16), "Link: %d", (v22 & 2) != 0);
          if ((v22 & 2) != 0)
          {
            ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
            ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v14);
            ot::Cli::Utils::OutputLine((a1 + 16), "Cost: %u", v18);
            ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v19);
            ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality Out: %u", v20);
            ot::Cli::Utils::OutputLine((a1 + 16), "Age: %u", v21);
          }
        }
      }
    }
  }

  return RouterInfo;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)9>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 9u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)9>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<9036270695828403958ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  RssiOffset = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    RssiOffset = otPlatRadioGetRssiOffset(InstancePtr, &v7);
    if (!RssiOffset)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", v7);
    }
  }

  else
  {
    RssiOffset = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!RssiOffset)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RssiOffset = otPlatRadioSetRssiOffset(v4, v7);
      if (!RssiOffset)
      {
        persist_rssi_offset(v7);
      }
    }
  }

  return RssiOffset;
}

uint64_t ot::Cli::Interpreter::Process<3745368069079870530ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  RssiOffsetPath1 = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    RssiOffsetPath1 = otPlatRadioGetRssiOffsetPath1(InstancePtr, &v7);
    if (!RssiOffsetPath1)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", v7);
    }
  }

  else
  {
    RssiOffsetPath1 = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!RssiOffsetPath1)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RssiOffsetPath1 = otPlatRadioSetRssiOffsetPath1(v4, v7);
      if (!RssiOffsetPath1)
      {
        persist_rssi_offset_path_1(v7);
      }
    }
  }

  return RssiOffsetPath1;
}

uint64_t ot::Cli::Interpreter::Process<1830284035ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v14 = a1;
  v13 = a2;
  active = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "energy"))
  {
    v9 = 1;
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(++v13))
    {
      active = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v13, &v10, v2);
      if (active)
      {
        return active;
      }

      ++v13;
    }
  }

  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v13))
  {
    v8 = 0;
    active = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v13, &v8, v3);
    if (active)
    {
      return active;
    }

    if (v8 >= 0x20uLL)
    {
      return 7;
    }

    v11 = 1 << v8;
  }

  if (v9)
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)2>((a1 + 16), ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kEnergyScanTableTitles, ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kEnergyScanTableColumnWidths);
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    active = otLinkEnergyScan(InstancePtr, v11, v10, ot::Cli::Interpreter::HandleEnergyScanResult, a1);
    if (!active)
    {
      return 36;
    }
  }

  else
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)5>((a1 + 16), ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles, ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableColumnWidths);
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    active = otLinkActiveScan(v5, v11, v10, ot::Cli::Interpreter::HandleActiveScanResult, a1);
    if (!active)
    {
      return 36;
    }
  }

  return active;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 5u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, a2, a3);
}

void ot::Cli::Interpreter::HandleActiveScanResult(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(a2 + 57) & 0x20) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %-16s ", (a2 + 8));
      ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
      ot::Cli::Utils::OutputBytes<(unsigned char)8>((a1 + 16), (a2 + 25));
      ot::Cli::Utils::OutputFormat((a1 + 16), " ");
    }

    ot::Cli::Utils::OutputFormat((a1 + 16), "| %04x | ", *(a2 + 50));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), a2);
    ot::Cli::Utils::OutputFormat((a1 + 16), " | %2u ", *(a2 + 54));
    ot::Cli::Utils::OutputFormat((a1 + 16), "| %3d ", *(a2 + 55));
    ot::Cli::Utils::OutputLine((a1 + 16), "| %3u |", *(a2 + 56));
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(a1, 0);
  }
}

ot::Cli::Utils *ot::Cli::Utils::OutputBytes<(unsigned char)8>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytes(a1, a2, 8u);
}

{
  return ot::Cli::Utils::OutputBytes<(unsigned char)8>(a1, a2);
}

void ot::Cli::Interpreter::HandleEnergyScanResult(_BYTE *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "| %2u | %4d |", *a2, a2[1]);
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(a1, 0);
  }
}

uint64_t ot::Cli::Interpreter::Process<603988223085374603ull>(uint64_t a1)
{
  v3 = (a1 + 16);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otThreadIsSingleton(InstancePtr))
  {
    ot::Cli::Utils::OutputLine(v3, "true", v3);
  }

  else
  {
    ot::Cli::Utils::OutputLine(v3, "false", v3);
  }

  return 0;
}

uint64_t ot::Cli::Interpreter::Process<428983089745ull>(uint64_t a1, const char **a2)
{
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    DeviceRole = otThreadGetDeviceRole(InstancePtr);
    v4 = otThreadDeviceRoleToString(DeviceRole);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v4);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "detached"))
  {
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeDetached(v5);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "child"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeChild(v6);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "router"))
  {
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeRouter(v7);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "leader"))
  {
    v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeLeader(v8, 1);
  }

  else
  {
    return 7;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::Process<108232213406486ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "start"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetEnabled(InstancePtr, 1);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "stop"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetEnabled(v3, 0);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "version"))
  {
    Version = otThreadGetVersion();
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", Version);
  }

  else
  {
    return 35;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<11351213666390626399ull>(uint64_t a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v15 = 0;
    v14 = 0;
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>((a1 + 16), ot::Cli::Interpreter::Process<11351213666390626399ull>(ot::Utils::CmdLineParser::Arg *)::kTimeInQueueTableTitles, ot::Cli::Interpreter::Process<11351213666390626399ull>(ot::Utils::CmdLineParser::Arg *)::kTimeInQueueTableColumnWidths);
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    TimeInQueueHistogram = otThreadGetTimeInQueueHistogram(InstancePtr, &v15, &v14);
    for (i = 0; i < v15; ++i)
    {
      v3 = ot::ToUlong(i * v14);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %4lu | ", v3);
      if (i < v15 - 1)
      {
        v4 = ot::ToUlong((i + 1) * v14 - 1);
        ot::Cli::Utils::OutputFormat((a1 + 16), "%4lu", v4);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "%4s", "inf");
      }

      v5 = ot::ToUlong(*(TimeInQueueHistogram + 4 * i));
      ot::Cli::Utils::OutputLine((a1 + 16), " | %7lu |", v5);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "max"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxTimeInQueue = otThreadGetMaxTimeInQueue(v6);
    v8 = ot::ToUlong(MaxTimeInQueue);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v8);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "reset"))
  {
    v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadResetTimeInQueueStat(v9);
  }

  else
  {
    return 7;
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::Process<7741096949622271262ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    return ot::Cli::Dataset::PrintKeychain((a1 + 96), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<31452791250048641ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  TransmitPower = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    TransmitPower = otPlatRadioGetTransmitPower(InstancePtr, &v7);
    if (!TransmitPower)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d dBm", v7);
    }
  }

  else
  {
    TransmitPower = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!TransmitPower)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      TransmitPower = otPlatRadioSetTransmitPower(v4, v7);
      if (TransmitPower)
      {
        persist_tx_power(v7);
      }
    }
  }

  return TransmitPower;
}

uint64_t ot::Cli::Interpreter::Process<437456233555ull>(_BYTE *a1)
{
  a1[57] = 1;
  for (i = ot::Cli::Interpreter::Process<437456233555ull>(ot::Utils::CmdLineParser::Arg *)::kDebugCommands; i != &ot::Cli::Interpreter::OutputNetworkDiagMacCounters(unsigned char,otNetworkDiagMacCounters const&)::kCounterNames; ++i)
  {
    strncpy(__dst, *i, 0x1DuLL);
    __dst[29] = 0;
    ot::Cli::Utils::OutputLine((a1 + 16), "$ %s", __dst);
    ot::Cli::Interpreter::ProcessLine(a1, __dst, v1, v2);
  }

  a1[57] = 0;
  return 0;
}

uint64_t ot::Cli::Interpreter::Process<807264858141456911ull>(uint64_t a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "add"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v10 + 1, otIp6AddUnsecurePort);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "remove"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v10 + 1, "all"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otIp6RemoveAllUnsecurePorts(InstancePtr);
    }

    else
    {
      return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v10 + 1, otIp6RemoveUnsecurePort);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "get"))
  {
    UnsecurePorts = 0;
    v7 = 0;
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UnsecurePorts = otIp6GetUnsecurePorts(v3, &v7);
    if (UnsecurePorts)
    {
      for (i = 0; i < v7; ++i)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", *(UnsecurePorts + 2 * i));
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    return 35;
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<109361222780952ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otInstanceGetUptimeAsString(InstancePtr, v9, 24);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v9);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "ms"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Uptime = otInstanceGetUptime(v3);
    ot::Cli::Utils::OutputUint64Line((a1 + 16), Uptime);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<6462319ull>(uint64_t a1, const char **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "altshortaddr"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    AlternateShortAddress = otLinkGetAlternateShortAddress(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x", AlternateShortAddress);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "retries"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "direct"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), (a2 + 2), otLinkGetMaxFrameRetriesDirect, otLinkSetMaxFrameRetriesDirect);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "indirect"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), (a2 + 2), otLinkGetMaxFrameRetriesIndirect, otLinkSetMaxFrameRetriesIndirect);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 35;
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<1433029466759137599ull>(uint64_t a1, const char **a2)
{
  v38 = a1;
  v37 = a2;
  v36 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  BufferStats = otMessageGetBufferStats(InstancePtr);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:dn200100](v33);
  if (ot::Utils::CmdLineParser::Arg::operator==(v37, "enable"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageSetIsBufferStatsEnabled(v3, 1);
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is enabled");
    goto LABEL_32;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v37, "disable"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageSetIsBufferStatsEnabled(v4, 0);
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is disabled");
    goto LABEL_32;
  }

  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v37))
  {
    if (!ot::Utils::CmdLineParser::Arg::operator==(v37, "reset"))
    {
      v36 = 7;
      goto LABEL_32;
    }

    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otMessageGetIsBufferStatsEnabled(v10))
    {
      v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otMessageResetBufferStats(v11);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if ((otMessageGetIsBufferStatsEnabled(v5) & 1) == 0)
  {
LABEL_26:
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is disabled");
    goto LABEL_32;
  }

  for (i = 0; i < 0x100u; ++i)
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    BufferAt = otMessageGetBufferAt(v6, i);
    std::string::basic_string[abi:dn200100]<0>(&v30, "");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:dn200100](v33, &v30);
    std::string::~string(&v30);
    v18 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, "Buf");
    v29 = std::setw[abi:dn200100](3);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v18, &v29);
    v28 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v18, &v28);
    std::ostream::operator<<();
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, ":");
    std::ostream::operator<<();
    if ((*(BufferStats + 76 * i + 8) & 1) == 1)
    {
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, " (A), ");
    }

    else
    {
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, " (D), ");
    }

    v16 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, "#A:");
    v27 = std::setw[abi:dn200100](10);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v16, &v27);
    v26 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v16, &v26);
    std::ostream::operator<<();
    v17 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, ", #D:");
    v25 = std::setw[abi:dn200100](10);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v17, &v25);
    v24 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v17, &v24);
    std::ostream::operator<<();
    if (*(BufferStats + 76 * i + 9))
    {
      v7 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, ", LastAllocTimestamp: ");
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v7, (BufferStats + 76 * i + 9));
    }

    if (*(BufferStats + 76 * i + 41))
    {
      v8 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v34, ", LastDeallocTimestamp: ");
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v8, (BufferStats + 76 * i + 41));
    }

    logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v15 = type;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:dn200100]();
        std::string::c_str[abi:dn200100](&v20);
        __os_log_helper_16_2_1_8_32(v40, v9);
        _os_log_impl(&_mh_execute_header, log, v15, "%s", v40, 0xCu);
        std::string::~string(&v20);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v39, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
    }
  }

LABEL_32:
  v13 = v36;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v33);
  return v13;
}

void (__cdecl ***std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:dn200100](void (__cdecl ***a1)(std::ios_base *__hidden this)))(std::ios_base *__hidden this)
{
  std::ios::basic_ios[abi:dn200100](a1 + 16);
  std::stringbuf::basic_stringbuf[abi:dn200100]((a1 + 3), 24);
  return a1;
}

uint64_t ot::Cli::Interpreter::Process<17671613907470187241ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  bzero(v9, 0xC00uLL);
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "tx") || ot::Utils::CmdLineParser::Arg::operator==(a2, "rx"))
  {
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      Length = ot::Utils::CmdLineParser::Arg::GetLength(a2 + 1);
      CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 1));
      v2 = ot::Utils::CmdLineParser::Arg::operator==(a2, "tx");
      v7 = otPlatDecodeSpinel(CString, Length / 2, v9, &v10, v2);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%s", v9);
      }
    }
  }

  else
  {
    return 35;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<4003642666868174351ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otLinkGetFragmentSize(InstancePtr, &v7);
    ot::Cli::Utils::OutputLine((a1 + 16), "Fragment Size =  %d\n", v7);
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7, v2);
    if (!v8)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otLinkSetFragmentSize(v4, v7);
    }
  }

  return v8;
}

uint64_t ot::Cli::Interpreter::Process<26788442918280547ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorAntenna((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorAntenna((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<123344279411948ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorPower((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorPower((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<25344ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorCC((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorCC((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<1682160129ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorCore((a1 + 432), a2);
  }

  else
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "Core cannot be set");
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<1863446782ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorPCAP((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorPCAP((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<8515342280977991932ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetPriority((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetPriority((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<1847388913ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetGPIO((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetGPIO((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<28154531598088808ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetBackOff((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetBackOff((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<123386246804248ull>(uint64_t a1, const char **a2)
{
  v4 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "name"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorName);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "model"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorModel);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "swversion"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorSwVersion);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "appurl"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorAppUrl);
  }

  return v4;
}

uint64_t ot::Cli::Utils::ProcessGet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<char const*>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<char const*>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<5255620471931187573ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v9 = 0;
  v11 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a2 + 1, v10);
  if (!v11)
  {
    for (i = (v12 + 2); !ot::Utils::CmdLineParser::Arg::IsEmpty(i); ++i)
    {
      if (v9 >= 0x23uLL)
      {
        return 7;
      }

      v3 = v9++;
      v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(i, &v14[v3], v2);
      if (v11)
      {
        return v11;
      }
    }

    if (ot::Utils::CmdLineParser::Arg::operator==(v12, "get"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v11 = otThreadSendDiagnosticGet(InstancePtr, v10, v14, v9, ot::Cli::Interpreter::HandleDiagnosticGetResponse, a1);
      if (!v11)
      {
        ot::Cli::Interpreter::SetCommandTimeout(a1, 0x1388u);
        return 36;
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "reset"))
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadSendDiagnosticReset(v5, v10, v14, v9);
      IgnoreError();
    }

    else
    {
      return 35;
    }
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::SetCommandTimeout(ot::Cli::Interpreter *this, unsigned int a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    __assert_rtn("SetCommandTimeout", "cli.cpp", 9560, "mCommandIsPending");
  }

  return ot::TimerMilli::Start((this + 64), a2);
}

uint64_t ot::Cli::Interpreter::HandleDiagnosticGetResponse(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v18 = result;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v8 = result;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!a2)
  {
    ot::Cli::Utils::OutputFormat((result + 16), "DIAG_GET.rsp/ans from ");
    ot::Cli::Utils::OutputIp6Address((v8 + 16), v15 + 16);
    ot::Cli::Utils::OutputFormat((v8 + 16), ": ");
    Length = otMessageGetLength(v16);
    v12 = Length - otMessageGetOffset(v16);
    while (v12)
    {
      v14 = ot::Min<unsigned short>(v12, 0x10u);
      Offset = otMessageGetOffset(v16);
      otMessageRead(v16, Offset + v13, v21, v14);
      ot::Cli::Utils::OutputBytes((v8 + 16), v21, v14);
      v12 -= v14;
      v13 += v14;
    }

    ot::Cli::Utils::OutputNewLine((v8 + 16));
    while (1)
    {
      result = otThreadGetNextDiagnosticTlv(v16, &v11, v19);
      if (result)
      {
        break;
      }

      switch(v19[0])
      {
        case 0:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Ext Address: ");
          ot::Cli::Utils::OutputExtAddressLine((v8 + 16), v20);
          break;
        case 1:
          ot::Cli::Utils::OutputLine((v8 + 16), "Rloc16: 0x%04x", LOWORD(v20[0]));
          break;
        case 2:
          ot::Cli::Utils::OutputLine((v8 + 16), "Mode:");
          ot::Cli::Interpreter::OutputMode(v8, 4u, v20);
          break;
        case 3:
          v5 = ot::ToUlong(LODWORD(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "Timeout: %lu", v5);
          break;
        case 4:
          ot::Cli::Utils::OutputLine((v8 + 16), "Connectivity:");
          ot::Cli::Interpreter::OutputConnectivity(v8, 4u, v20);
          break;
        case 5:
          ot::Cli::Utils::OutputLine((v8 + 16), "Route:");
          ot::Cli::Interpreter::OutputRoute(v8, 4u, v20);
          break;
        case 6:
          ot::Cli::Utils::OutputLine((v8 + 16), "Leader Data:");
          ot::Cli::Interpreter::OutputLeaderData(v8, 4u, v20);
          break;
        case 7:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Network Data: ");
          ot::Cli::Utils::OutputBytesLine((v8 + 16), v20 + 1, LOBYTE(v20[0]));
          break;
        case 8:
          ot::Cli::Utils::OutputLine((v8 + 16), "IP6 Address List:");
          for (i = 0; i < LOBYTE(v20[0]); ++i)
          {
            ot::Cli::Utils::OutputFormat((v8 + 16), 4, "- ");
            ot::Cli::Utils::OutputIp6AddressLine((v8 + 16), &v20[2 * i] + 1);
          }

          break;
        case 9:
          ot::Cli::Utils::OutputLine((v8 + 16), "MAC Counters:");
          ot::Cli::Interpreter::OutputNetworkDiagMacCounters(v8, 4u, v20);
          break;
        case 0xE:
          ot::Cli::Utils::OutputLine((v8 + 16), "Battery Level: %u%%", LOBYTE(v20[0]));
          break;
        case 0xF:
          ot::Cli::Utils::OutputLine((v8 + 16), "Supply Voltage: %umV", LOWORD(v20[0]));
          break;
        case 0x10:
          ot::Cli::Utils::OutputLine((v8 + 16), "Child Table:");
          for (j = 0; j < LOBYTE(v20[0]); ++j)
          {
            ot::Cli::Utils::OutputFormat((v8 + 16), 4, "- ");
            ot::Cli::Interpreter::OutputChildTableEntry(v8, 6u, v20 + 2 * j + 1);
          }

          break;
        case 0x11:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Channel Pages: '");
          ot::Cli::Utils::OutputBytes((v8 + 16), v20 + 1, LOBYTE(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "'");
          break;
        case 0x13:
          v6 = ot::ToUlong(LODWORD(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "Max Child Timeout: %lu", v6);
          break;
        case 0x17:
          ot::Cli::Utils::OutputFormat((v8 + 16), "EUI64: ");
          ot::Cli::Utils::OutputExtAddressLine((v8 + 16), v20);
          break;
        case 0x19:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor Name: %s", v20);
          break;
        case 0x1A:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor Model: %s", v20);
          break;
        case 0x1B:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor SW Version: %s", v20);
          break;
        case 0x1C:
          ot::Cli::Utils::OutputLine((v8 + 16), "Thread Stack Version: %s", v20);
          break;
        case 0x22:
          ot::Cli::Utils::OutputLine((v8 + 16), "MLE Counters:");
          ot::Cli::Interpreter::OutputNetworkDiagMleCounters(v8, 4u, v20);
          break;
        case 0x23:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor App URL: %s", v20);
          break;
        default:
          continue;
      }
    }
  }

  return result;
}

uint64_t ot::Min<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<unsigned short>(a1, a2);
}

uint64_t ot::Cli::Interpreter::OutputMode(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "RxOnWhenIdle: %d", *a3 & 1);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "DeviceType: %d", (*a3 & 2) != 0);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "NetworkData: %d", (*a3 & 4) != 0);
}

uint64_t ot::Cli::Interpreter::OutputConnectivity(uint64_t a1, unsigned __int8 a2, char *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "ParentPriority: %d", *a3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality3: %u", a3[1]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality2: %u", a3[2]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality1: %u", a3[3]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LeaderCost: %u", a3[4]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "IdSequence: %u", a3[5]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "ActiveRouters: %u", a3[6]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "SedBufferSize: %u", *(a3 + 4));
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "SedDatagramCount: %u", a3[10]);
}

uint64_t ot::Cli::Interpreter::OutputRoute(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "IdSequence: %u", *a3);
  result = ot::Cli::Utils::OutputLine((a1 + 16), a2, "RouteData:");
  v8 = a2 + 4;
  for (i = 0; i < a3[1]; ++i)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), v8, "- ");
    result = ot::Cli::Interpreter::OutputRouteData(a1, v8 + 2, &a3[2 * i + 2]);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputLeaderData(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  v5 = a2;
  v3 = ot::ToUlong(*a3);
  ot::Cli::Utils::OutputLine((a1 + 16), v5, "PartitionId: 0x%08lx", v3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Weighting: %u", a3[4]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "DataVersion: %u", a3[5]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "StableDataVersion: %u", a3[6]);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "LeaderRouterId: 0x%02x", a3[7]);
}

uint64_t ot::Cli::Interpreter::OutputNetworkDiagMacCounters(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v5 = result;
  for (i = &ot::Cli::Interpreter::OutputNetworkDiagMacCounters(unsigned char,otNetworkDiagMacCounters const&)::kCounterNames; i != &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kCounterNames; i += 2)
  {
    v4 = i[1];
    v3 = ot::ToUlong(*(a3 + *i));
    result = ot::Cli::Utils::OutputLine((v5 + 16), a2, "%s: %lu", v4, v3);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputNetworkDiagMleCounters(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v3 = result;
  for (i = &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kCounterNames; i != &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kTimeCounterNames; i += 2)
  {
    result = ot::Cli::Utils::OutputLine((v3 + 16), a2, "%s: %u", i[1], *&(*i)[a3]);
  }

  for (j = &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kTimeCounterNames; j != &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands; j += 2)
  {
    ot::Cli::Utils::OutputFormat((v3 + 16), "%s: ", j[1]);
    result = ot::Cli::Utils::OutputUint64Line((v3 + 16), *&(*j)[a3]);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputChildTableEntry(uint64_t a1, unsigned __int8 a2, unsigned __int16 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), "ChildId: 0x%04x", *a3 >> 7);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Timeout: %u", *a3 & 0x1F);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Link Quality: %u", (*a3 >> 5) & 3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Mode:");
  return ot::Cli::Interpreter::OutputMode(a1, a2 + 4, a3 + 2);
}

uint64_t ot::Cli::Interpreter::OutputRouteData(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), "RouteId: 0x%02x", *a3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQualityOut: %u", a3[1] & 3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQualityIn: %u", (a3[1] >> 2) & 3);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "RouteCost: %u", a3[1] >> 4);
}

ot::Cli::Interpreter *ot::Cli::Interpreter::Initialize(ot::Instance *a1, int (*a2)(void *, const char *, char *), void *a3)
{
  result = ot::Cli::Interpreter::Interpreter(&ot::Cli::sInterpreterRaw, a1, a2, a3);
  ot::Cli::Interpreter::sInterpreter = &ot::Cli::sInterpreterRaw;
  return result;
}

void ot::Cli::OutputImplementer::SetEmittingCommandOutput(ot::Cli::OutputImplementer *this)
{
  ;
}

{
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
}

uint64_t ot::TimerMilliContext::GetContext(ot::TimerMilliContext *this)
{
  return *(this + 3);
}

{
  return ot::TimerMilliContext::GetContext(this);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x79, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(a1, a2, a3, a4, a5, a6);
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 363;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>(result, a2);
}

uint64_t ot::Cli::Interpreter::GetInterpreter(ot::Cli::Interpreter *this)
{
  if (!ot::Cli::Interpreter::sInterpreter)
  {
    __assert_rtn("GetInterpreter", "cli.hpp", 171, "sInterpreter != nullptr");
  }

  return ot::Cli::Interpreter::sInterpreter;
}

{
  return ot::Cli::Interpreter::GetInterpreter(this);
}

uint64_t otCliOutputFormat(ot::Cli::Interpreter *a1, ...)
{
  va_start(va, a1);
  Interpreter = ot::Cli::Interpreter::GetInterpreter(a1);
  return ot::Cli::Utils::OutputFormatV((Interpreter + 16), a1, va);
}

void otCliAppendResult(ot::Cli::Interpreter *a1)
{
  v2 = a1;
  Interpreter = ot::Cli::Interpreter::GetInterpreter(a1);
  ot::Cli::Interpreter::OutputResult(Interpreter, v2);
}

void otCliPlatLogv(ot::Cli::Interpreter *a1, uint64_t a2, const char *a3, char *a4)
{
  IsInitialized = ot::Cli::Interpreter::IsInitialized(a1);
  if (IsInitialized)
  {
    Interpreter = ot::Cli::Interpreter::GetInterpreter(IsInitialized);
    ot::Cli::OutputImplementer::SetEmittingCommandOutput(Interpreter);
    v7 = ot::Cli::Interpreter::GetInterpreter(v6);
    v8 = ot::Cli::Utils::OutputFormatV((v7 + 16), a3, a4);
    v9 = ot::Cli::Interpreter::GetInterpreter(v8);
    v10 = ot::Cli::Utils::OutputNewLine((v9 + 16));
    v11 = ot::Cli::Interpreter::GetInterpreter(v10);
    ot::Cli::OutputImplementer::SetEmittingCommandOutput(v11);
  }
}

BOOL ot::Cli::Interpreter::IsInitialized(ot::Cli::Interpreter *this)
{
  return ot::Cli::Interpreter::sInterpreter != 0;
}

{
  return ot::Cli::Interpreter::IsInitialized(this);
}

ot::Timer *ot::Timer::Timer(ot::Timer *this, ot::Instance *a2, void (*a3)(ot::Timer *))
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 2) = this;
  return result;
}

uint64_t std::stringbuf::~stringbuf(uint64_t a1)
{
  std::stringbuf::~stringbuf(a1);
  return a1;
}

{
  std::string::~string((a1 + 64));
  std::streambuf::~streambuf();
  return a1;
}

uint64_t ot::Cli::Utils::ProcessSet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, unsigned int (*a3)(uint64_t, uint64_t))
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(a2, &v7);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 8)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return v5(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<char const*>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(ot::Utils::CmdLineParser::Arg *a1, void *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a1))
  {
    return 7;
  }

  else
  {
    *a2 = ot::Utils::CmdLineParser::Arg::GetCString(a1);
    return 0;
  }
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString(ot::Utils::CmdLineParser **this, char *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  return ot::Utils::CmdLineParser::ParseAsHexString(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(this, a2, a3, a4);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint8(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<unsigned short>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned short>()
{
  return "%u";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned short>();
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint32(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint16(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned char>()
{
  return "%u";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned char>();
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v7 = ot::Cli::Utils::FormatStringFor<unsigned int>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    v5 = ot::ToUlong(v4);
    ot::Cli::Utils::OutputLine(a1, v7, v5);
  }

  else
  {
    return 7;
  }

  return v9;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned int>()
{
  return "%lu";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned int>();
}

uint64_t ot::Cli::Utils::ProcessGet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<signed char>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<signed char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessSet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<signed char>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<signed char>()
{
  return "%d";
}

{
  return ot::Cli::Utils::FormatStringFor<signed char>();
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(ot::Utils::CmdLineParser **a1, signed __int8 *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsInt8(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(a1, a2, a3);
}

void (__cdecl ***std::ios::basic_ios[abi:dn200100](void (__cdecl ***a1)(std::ios_base *__hidden this)))(std::ios_base *__hidden this)
{
  std::ios_base::ios_base[abi:dn200100](a1);
  result = a1;
  return result;
}

void *std::iostream::basic_iostream[abi:dn200100](void *a1, void *a2, void *a3)
{
  std::istream::basic_istream[abi:dn200100](a1, a2 + 1, a3);
  std::ostream::basic_ostream[abi:dn200100](a1 + 2, a2 + 3);
  result = a1;
  *a1 = *a2;
  *(a1 + *(*a1 - 24)) = a2[5];
  a1[2] = a2[6];
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:dn200100](uint64_t a1, int a2)
{
  std::stringbuf::basic_stringbuf[abi:dn200100](a1, a2);
  return a1;
}

{
  std::streambuf::basic_streambuf();
  std::string::basic_string[abi:dn200100]((a1 + 64));
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:dn200100](a1);
  return a1;
}

void (__cdecl ***std::ios_base::ios_base[abi:dn200100](void (__cdecl ***result)(std::ios_base *__hidden this)))(std::ios_base *__hidden this)
{
  result[6] = 0;
  return result;
}

void *std::istream::basic_istream[abi:dn200100](void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + *(*a1 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:dn200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *std::ostream::basic_ostream[abi:dn200100](void *result, void *a2)
{
  *result = *a2;
  *(result + *(*result - 24)) = a2[1];
  return result;
}

uint64_t std::ios::init[abi:dn200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  return std::_SentinelValueFill<std::char_traits<char>>::__init[abi:dn200100](&a1[1].__fmtflags_);
}

uint64_t std::_SentinelValueFill<std::char_traits<char>>::__init[abi:dn200100](_DWORD *a1)
{
  result = std::char_traits<char>::eof[abi:dn200100]();
  *a1 = result;
  return result;
}

void std::stringbuf::__init_buf_ptrs[abi:dn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  std::string::data[abi:dn200100]((a1 + 64));
  v6 = v1;
  v5 = std::string::size[abi:dn200100](a1 + 64);
  if ((*(a1 + 96) & 8) != 0)
  {
    *(a1 + 88) = v6 + v5;
    std::streambuf::setg[abi:dn200100](a1, v6, v6, *(a1 + 88));
  }

  if ((*(a1 + 96) & 0x10) != 0)
  {
    *(a1 + 88) = v6 + v5;
    v2 = std::string::capacity[abi:dn200100](a1 + 64);
    std::string::resize[abi:dn200100]((a1 + 64), v2);
    v3 = std::string::size[abi:dn200100](a1 + 64);
    std::streambuf::setp[abi:dn200100](a1, v6, v6 + v3);
    if ((*(a1 + 96) & 3) != 0)
    {
      while (v5 > 0x7FFFFFFF)
      {
        std::streambuf::pbump[abi:dn200100](a1, 0x7FFFFFFF);
        v5 -= 0x7FFFFFFFLL;
      }

      if (v5)
      {
        std::streambuf::pbump[abi:dn200100](a1, v5);
      }
    }
  }
}

void std::streambuf::setg[abi:dn200100](void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a3))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:271: assertion std::__is_valid_range(__gbeg, __gnext) failed: [gbeg, gnext) must be a valid range\n");
  }

  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:272: assertion std::__is_valid_range(__gbeg, __gend) failed: [gbeg, gend) must be a valid range\n");
  }

  if (!std::__is_valid_range[abi:dn200100]<char>(a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:273: assertion std::__is_valid_range(__gnext, __gend) failed: [gnext, gend) must be a valid range\n");
  }

  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
}

uint64_t std::string::capacity[abi:dn200100](uint64_t a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v2 = std::string::__get_long_cap[abi:dn200100](a1);
  }

  else
  {
    v2 = 23;
  }

  return v2 - 1;
}

void std::streambuf::setp[abi:dn200100](void *a1, uint64_t a2, uint64_t a3)
{
  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a3))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:289: assertion std::__is_valid_range(__pbeg, __pend) failed: [pbeg, pend) must be a valid range\n");
  }

  a1[6] = a2;
  a1[5] = a2;
  a1[7] = a3;
}

BOOL std::__is_valid_range[abi:dn200100]<char>(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  return !std::__less<void,void>::operator()[abi:dn200100]<char const*,char const*>(&v3, &v4, &v5);
}

void *std::__put_character_sequence[abi:dn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  std::ostream::sentry::sentry();
  if (std::ostream::sentry::operator BOOL[abi:dn200100](v12))
  {
    std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](&v10, v15);
    v9 = v14;
    if ((std::ios_base::flags[abi:dn200100](v15 + *(*v15 - 24)) & 0xB0) == 0x20)
    {
      v8 = v14 + v13;
    }

    else
    {
      v8 = v14;
    }

    v6 = v14 + v13;
    v7 = (v15 + *(*v15 - 24));
    v3 = std::ios::fill[abi:dn200100](v7);
    v11 = std::__pad_and_output[abi:dn200100]<char,std::char_traits<char>>(v10, v9, v8, v6, v7, v3);
    if (std::ostreambuf_iterator<char>::failed[abi:dn200100](&v11))
    {
      std::ios::setstate[abi:dn200100]((v15 + *(*v15 - 24)), 5);
    }
  }

  v5 = v15;
  std::ostream::sentry::~sentry();
  return v5;
}

uint64_t std::__pad_and_output[abi:dn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::value_type a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  if (!a1)
  {
    return 0;
  }

  v15 = v18 - v20;
  v14 = std::ios_base::width[abi:dn200100](v17);
  if (v14 <= v18 - v20)
  {
    v14 = 0;
  }

  else
  {
    v14 -= v15;
  }

  v13 = v19 - v20;
  if (v19 - v20 > 0 && std::streambuf::sputn[abi:dn200100](v21, v20, v13) != v13)
  {
    return 0;
  }

  if (v14 <= 0 || ((std::string::basic_string[abi:dn200100](&v12, v14, v16), v10 = v21, std::string::data[abi:dn200100](&v12), v7 = std::streambuf::sputn[abi:dn200100](v10, v6, v14), v7 == v14) ? (v11 = 0) : (v21 = 0, v22 = 0, v11 = 1), std::string::~string(&v12), !v11))
  {
    v13 = v18 - v19;
    if (v18 - v19 <= 0 || (v8 = std::streambuf::sputn[abi:dn200100](v21, v19, v13), v8 == v13))
    {
      std::ios_base::width[abi:dn200100](v17, 0);
      return v21;
    }

    else
    {
      v21 = 0;
      return 0;
    }
  }

  return v22;
}

uint64_t *std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](uint64_t *a1, void *a2)
{
  std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](a1, a2);
  return a1;
}

{
  v2 = std::ios::rdbuf[abi:dn200100](a2 + *(*a2 - 24));
  result = a1;
  *a1 = v2;
  return result;
}

uint64_t std::ios::fill[abi:dn200100](const std::ios_base *a1)
{
  if (!std::_SentinelValueFill<std::char_traits<char>>::__is_set[abi:dn200100](&a1[1].__fmtflags_))
  {
    v1 = std::ios::widen[abi:dn200100](a1, 32);
    ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, v1);
  }

  return std::_SentinelValueFill<std::char_traits<char>>::__get[abi:dn200100](&a1[1].__fmtflags_);
}

std::string *std::string::basic_string[abi:dn200100](std::string *a1, std::string::size_type a2, std::string::value_type a3)
{
  std::string::basic_string[abi:dn200100](a1, a2, a3);
  return a1;
}

{
  std::allocator<char>::allocator[abi:dn200100](a1);
  std::string::__init(a1, a2, a3);
  return a1;
}

uint64_t std::ios_base::width[abi:dn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  return v3;
}

uint64_t std::ios::widen[abi:dn200100](const std::ios_base *a1, char a2)
{
  v7 = a1;
  v6 = a2;
  std::ios_base::getloc(a1);
  v2 = std::use_facet[abi:dn200100]<std::ctype<char>>(&v5);
  v4 = std::ctype<char>::widen[abi:dn200100](v2, v6);
  std::locale::~locale(&v5);
  return v4;
}

uint64_t std::ios::fill[abi:dn200100](const std::ios_base *a1, char a2)
{
  if (!std::_SentinelValueFill<std::char_traits<char>>::__is_set[abi:dn200100](&a1[1].__fmtflags_))
  {
    v2 = std::ios::widen[abi:dn200100](a1, 32);
    ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, v2);
  }

  v5 = std::_SentinelValueFill<std::char_traits<char>>::__get[abi:dn200100](&a1[1].__fmtflags_);
  ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, a2);
  return v5;
}

const char *ot::Cli::Utils::FormatStringFor<char const*>()
{
  return "%s";
}

{
  return ot::Cli::Utils::FormatStringFor<char const*>();
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(a1, a2);
}

uint64_t ot::Cli::Coap::Coap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  ot::Cli::Utils::ClearAllBytes<otCoapResource>((a1 + 40));
  ot::Cli::Utils::ClearAllBytes<char [32]>((a1 + 72));
  strncpy((a1 + 104), "0", 0x10uLL);
  result = a1;
  *(a1 + 119) = 0;
  return result;
}

{
  ot::Cli::Coap::Coap(a1, a2, a3);
  return a1;
}

double ot::Cli::Utils::ClearAllBytes<otCoapResource>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCoapResource>(a1);
}

double ot::Cli::Utils::ClearAllBytes<char [32]>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<char [32]>(a1);
}

uint64_t ot::Cli::Coap::PrintPayload(ot::Cli::Utils *a1, uint64_t a2)
{
  v7 = 0;
  Length = otMessageGetLength(a2);
  v6 = Length - otMessageGetOffset(a2);
  if (v6)
  {
    ot::Cli::Utils::OutputFormat(a1, " with payload: ");
    while (v6)
    {
      v8 = ot::Min<unsigned short>(v6, 0x10u);
      Offset = otMessageGetOffset(a2);
      otMessageRead(a2, Offset + v7, v10, v8);
      ot::Cli::Utils::OutputBytes(a1, v10, v8);
      v6 -= v8;
      v7 += v8;
    }
  }

  return ot::Cli::Utils::OutputNewLine(a1);
}

uint64_t ot::Cli::Coap::Process<7108473799409246994ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    if (*(a1 + 40))
    {
      ot::Cli::Utils::OutputLine(a1, "%s", *(a1 + 40));
    }

    else
    {
      ot::Cli::Utils::OutputLine(a1, "%s", "");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(a2) < 32)
  {
    *(a1 + 40) = a1 + 72;
    *(a1 + 56) = a1;
    *(a1 + 48) = ot::Cli::Coap::HandleRequest;
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    strncpy((a1 + 72), CString, 0x1FuLL);
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    otCoapAddResource(InstancePtr, a1 + 40);
  }

  else
  {
    return 7;
  }

  return v6;
}

void ot::Cli::Coap::HandleRequest(char *a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Coap::HandleRequest(a1, a2, a3);
}

{
  inited = 0;
  v11 = 0;
  v10 = 0;
  ot::Cli::Utils::OutputFormat(a1, "coap request from ");
  ot::Cli::Utils::OutputIp6Address(a1, a3 + 16);
  ot::Cli::Utils::OutputFormat(a1, " ");
  Code = otCoapMessageGetCode(a2);
  switch(Code)
  {
    case 1:
      ot::Cli::Utils::OutputFormat(a1, "GET");
      break;
    case 2:
      ot::Cli::Utils::OutputFormat(a1, "POST");
      break;
    case 3:
      ot::Cli::Utils::OutputFormat(a1, "PUT");
      break;
    case 4:
      ot::Cli::Utils::OutputFormat(a1, "DELETE");
      break;
    default:
      ot::Cli::Utils::OutputLine(a1, "Undefined");
      inited = 6;
      goto LABEL_22;
  }

  ot::Cli::Coap::PrintPayload(a1, a2);
  if (!otCoapMessageGetType(a2) || otCoapMessageGetCode(a2) == 1)
  {
    if (otCoapMessageGetCode(a2) == 1)
    {
      v10 = 69;
    }

    else
    {
      v10 = 68;
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v11 = otCoapNewMessage(InstancePtr, 0);
    if (v11)
    {
      inited = otCoapMessageInitResponse(v11, a2, 2u, v10);
      if (!inited)
      {
        if (v10 != 69 || (inited = otCoapMessageSetPayloadMarker(v11)) == 0 && (v4 = strlen(a1 + 104), (inited = otMessageAppend(v11, a1 + 104, v4)) == 0))
        {
          v7 = ot::Cli::Utils::GetInstancePtr(a1);
          ResponseTxParameters = ot::Cli::Coap::GetResponseTxParameters(a1);
          inited = otCoapSendResponseWithParameters(v7, v11, a3, ResponseTxParameters);
        }
      }
    }

    else
    {
      inited = 3;
    }
  }

LABEL_22:
  if (inited)
  {
    if (v11)
    {
      v6 = otThreadErrorToString(inited);
      ot::Cli::Utils::OutputLine(a1, "coap send response error %d: %s", inited, v6);
      otMessageFree(v11);
    }
  }

  else if (v10 >= 64)
  {
    ot::Cli::Utils::OutputLine(a1, "coap response sent");
  }
}

uint64_t ot::Cli::Coap::Process<7568770ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine(a1, "%s", (a1 + 104));
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(a2) < 0x10uLL)
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    strncpy((a1 + 104), CString, 0x10uLL);
    *(a1 + 119) = 0;
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Coap::Process<1864361470ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otCoapRemoveResource(InstancePtr, a1 + 40);
  v2 = ot::Cli::Utils::GetInstancePtr(a1);
  return otCoapStop(v2);
}

uint64_t ot::Cli::Coap::Process<16542423019117308726ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "request"))
  {
    v10 = a1 + 20;
    v11 = a1 + 16;
  }

  else
  {
    if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "response"))
    {
      return 7;
    }

    v10 = a1 + 28;
    v11 = a1 + 17;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    goto LABEL_16;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==((a2 + 8), "default"))
  {
    *v11 = 1;
LABEL_16:
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    ot::Cli::Utils::OutputLine(a1, "Transmission parameters for %s:", CString);
    if (*v11)
    {
      ot::Cli::Utils::OutputLine(a1, "default");
    }

    else
    {
      v7 = ot::ToUlong(*v10);
      ot::Cli::Utils::OutputLine(a1, "ACK_TIMEOUT=%lu ms, ACK_RANDOM_FACTOR=%u/%u, MAX_RETRANSMIT=%u", v7, v10[4], v10[5], v10[6]);
    }

    return v12;
  }

  v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32((a2 + 8), v10, v2);
  if (!v12)
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 16), v10 + 4, v3);
    if (!v12)
    {
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 24), v10 + 5, v4);
      if (!v12)
      {
        v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 32), v10 + 6, v5);
        if (!v12)
        {
          if (v10[4] <= v10[5])
          {
            return 7;
          }

          *v11 = 0;
          goto LABEL_16;
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Coap::ProcessRequest(ot::Cli::Utils *a1, const char **a2, unsigned int a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  appended = 0;
  v23 = 0;
  Length = 0;
  v18 = 0;
  *__dst = *"test";
  v29 = xmmword_10044AFC9;
  v17 = 1;
  appended = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a2, &v16);
  if (!appended)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 1)))
    {
      appended = 7;
      goto LABEL_25;
    }

    if (ot::Utils::CmdLineParser::Arg::GetLength(v26 + 1) >= 0x20uLL)
    {
      appended = 7;
      goto LABEL_25;
    }

    CString = ot::Utils::CmdLineParser::Arg::GetCString((v26 + 1));
    strcpy(__dst, CString);
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 2)) && ot::Utils::CmdLineParser::Arg::operator==(v26 + 2, "con"))
    {
      v17 = 0;
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v23 = otCoapNewMessage(InstancePtr, 0);
    if (!v23)
    {
      appended = 3;
      goto LABEL_25;
    }

    otCoapMessageInit(v23, v17, v25);
    otCoapMessageGenerateToken(v23, 2u);
    v18 = ot::StringFind(__dst, 0x3F);
    if (v18)
    {
      v5 = v18;
      v18 = (v18 + 1);
      *v5 = 0;
      appended = otCoapMessageAppendUriPathOptions(v23, __dst);
      if (appended)
      {
        goto LABEL_25;
      }

      appended = otCoapMessageAppendUriQueryOptions(v23, v18);
      if (appended)
      {
        goto LABEL_25;
      }
    }

    else
    {
      appended = otCoapMessageAppendUriPathOptions(v23, __dst);
      if (appended)
      {
        goto LABEL_25;
      }
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 3)) || (Length = ot::Utils::CmdLineParser::Arg::GetLength(v26 + 3)) == 0 || (appended = otCoapMessageSetPayloadMarker(v23)) == 0)
    {
      if (!Length || (v14 = v23, v6 = ot::Utils::CmdLineParser::Arg::GetCString((v26 + 3)), (appended = otMessageAppend(v14, v6, Length)) == 0))
      {
        ot::Cli::Utils::ClearAllBytes<otMessageInfo>(v20);
        v21 = v16;
        v22 = 5683;
        if (v17 && v25 != 1)
        {
          v11 = ot::Cli::Utils::GetInstancePtr(a1);
          v10 = v23;
          ResponseTxParameters = ot::Cli::Coap::GetResponseTxParameters(a1);
          appended = otCoapSendRequestWithParameters(v11, v10, v20, 0, 0, ResponseTxParameters);
        }

        else
        {
          v13 = ot::Cli::Utils::GetInstancePtr(a1);
          v12 = v23;
          RequestTxParameters = ot::Cli::Coap::GetRequestTxParameters(a1);
          appended = otCoapSendRequestWithParameters(v13, v12, v20, ot::Cli::Coap::HandleResponse, a1, RequestTxParameters);
        }
      }
    }
  }

LABEL_25:
  if (appended && v23)
  {
    otMessageFree(v23);
  }

  return appended;
}

void *ot::Cli::Utils::ClearAllBytes<otMessageInfo>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otMessageInfo>(a1);
}

uint64_t ot::Cli::Coap::GetRequestTxParameters(ot::Cli::Coap *this)
{
  if (*(this + 16))
  {
    return 0;
  }

  else
  {
    return this + 20;
  }
}

{
  return ot::Cli::Coap::GetRequestTxParameters(this);
}

uint64_t ot::Cli::Coap::GetResponseTxParameters(ot::Cli::Coap *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  else
  {
    return this + 28;
  }
}

{
  return ot::Cli::Coap::GetResponseTxParameters(this);
}

uint64_t ot::Cli::Coap::Process(ot::Cli::Coap *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(this, &ot::Cli::Coap::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(&CString, &ot::Cli::Coap::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v3, v4, v5, v6);
    if (v14)
    {
      v10 = *(v14 + 1);
      v7 = *(v14 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, v16 + 1);
      }

      else
      {
        return v10(v11, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 27;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 9, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

ot::Cli::Utils *ot::Cli::Coap::HandleResponse(ot::Cli::Utils *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a4)
  {
    v4 = otThreadErrorToString(a4);
    return ot::Cli::Utils::OutputLine(v5, "coap receive response error %d: %s", a4, v4);
  }

  else if (a3)
  {
    if (a2)
    {
      ot::Cli::Utils::OutputFormat(result, "coap response from ");
      ot::Cli::Utils::OutputIp6Address(v5, a3 + 16);
      return ot::Cli::Coap::PrintPayload(v5, a2);
    }
  }

  return result;
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(a1, a2);
}

uint64_t ot::Cli::Commissioner::Process<7108469486593286647ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(a2, &v11, a3);
  if (!v12)
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v13 + 1, &v10, v3);
    if (!v12)
    {
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v13 + 2, &v9, v4);
      if (!v12)
      {
        v12 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v13 + 3, v8);
        if (!v12)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerAnnounceBegin(InstancePtr, v11, v10, v9, v8);
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Commissioner::Process<130900079721176ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(a2, &v13, a3);
  if (!v14)
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v15 + 1, &v12, v3);
    if (!v14)
    {
      v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15 + 2, &v11, v4);
      if (!v14)
      {
        v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15 + 3, &v10, v5);
        if (!v14)
        {
          v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v15 + 4, v9);
          if (!v14)
          {
            InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
            return otCommissionerEnergyScan(InstancePtr, v13, v12, v11, v10, v9, ot::Cli::Commissioner::HandleEnergyReport, a1);
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ot::Cli::Commissioner::Process<123344129789161ull>(ot::Cli::Utils *a1, const char **a2)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  v20 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "table"))
  {
    v17 = 0;
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(a1, ot::Cli::Commissioner::Process<123344129789161ull>(ot::Utils::CmdLineParser::Arg *)::kJoinerTableTitles, ot::Cli::Commissioner::Process<123344129789161ull>(ot::Utils::CmdLineParser::Arg *)::kJoinerTableColumnWidths);
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      if (otCommissionerGetNextJoinerInfo(InstancePtr, &v17, v24))
      {
        break;
      }

      if (*v24)
      {
        if (*v24 == 1)
        {
          ot::Cli::Utils::OutputFormat(a1, "|      ");
          ot::Cli::Utils::OutputExtAddress(a1, &v25);
        }

        else if (*v24 == 2)
        {
          ot::Cli::Utils::OutputFormat(a1, "| 0x%08lx%08lx/%2u", HIDWORD(v25), v25, v26);
        }
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "| %21s", "*");
      }

      v3 = ot::ToUlong(v28);
      ot::Cli::Utils::OutputFormat(a1, " | %32s | %10lu |", v27, v3);
      ot::Cli::Utils::OutputNewLine(a1);
    }

    return 0;
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v22 + 1)))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(v18);
    if (ot::Utils::CmdLineParser::Arg::operator==(v22 + 1, "*"))
    {
      goto LABEL_19;
    }

    v21 = ot::Cli::Utils::ParseJoinerDiscerner(v22 + 1, v18);
    if (v21 == 23)
    {
      v21 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v22 + 1, v29, v4, v5);
      v20 = v29;
    }

    if (!v21)
    {
LABEL_19:
      if (ot::Utils::CmdLineParser::Arg::operator==(v22, "add"))
      {
        v16 = 120;
        if (ot::Utils::CmdLineParser::Arg::IsEmpty((v22 + 2)))
        {
          return 7;
        }

        else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v22 + 3)) || (v21 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v22 + 3, &v16, v6)) == 0)
        {
          if (v19)
          {
            v14 = ot::Cli::Utils::GetInstancePtr(a1);
            CString = ot::Utils::CmdLineParser::Arg::GetCString((v22 + 2));
            return otCommissionerAddJoinerWithDiscerner(v14, v18, CString, v16);
          }

          else
          {
            v13 = ot::Cli::Utils::GetInstancePtr(a1);
            v12 = v20;
            v8 = ot::Utils::CmdLineParser::Arg::GetCString((v22 + 2));
            return otCommissionerAddJoiner(v13, v12, v8, v16);
          }
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v22, "remove"))
      {
        if (v19)
        {
          v9 = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerRemoveJoinerWithDiscerner(v9, v18);
        }

        else
        {
          v10 = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerRemoveJoiner(v10, v20);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v21;
}

void *ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(result);
}

uint64_t ot::Cli::Commissioner::Process<32002607674527349ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = a1;
  v11 = a2;
  memset(&v10[1] + 1, 0, 5);
  while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v11))
  {
    if (HIBYTE(v10[1]) >= 0x20uLL)
    {
      *&v10[2] = 3;
      return *&v10[2];
    }

    if (ot::Utils::CmdLineParser::Arg::operator==(v11, "locator"))
    {
      v2 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v2] = 9;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "sessionid"))
    {
      v3 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v3] = 11;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "steeringdata"))
    {
      v4 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v4] = 8;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "joinerudpport"))
    {
      v5 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v5] = 18;
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(v11, "-x"))
      {
        *&v10[2] = 7;
        return *&v10[2];
      }

      v11 = (v11 + 8);
      v10[0] = 32 - HIBYTE(v10[1]);
      *&v10[2] = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v11, v10, &v13[HIBYTE(v10[1])], v6);
      if (*&v10[2])
      {
        return *&v10[2];
      }

      *(&v10[1] + 1) = (HIBYTE(v10[1]) + LOBYTE(v10[0]));
    }

    v11 = (v11 + 8);
  }

  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  *&v10[2] = otCommissionerSendMgmtGet(InstancePtr, v13, HIBYTE(v10[1]));
  return *&v10[2];
}

uint64_t ot::Cli::Commissioner::Process<32002658413534849ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(&v17);
    while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v14))
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(v14, "locator"))
      {
        v14 = (v14 + 8);
        v22 = v22 & 0xFE | 1;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, &v17, v2);
        if (v13)
        {
          return v13;
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "sessionid"))
      {
        v14 = (v14 + 8);
        v22 = v22 & 0xFD | 2;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, &v18, v3);
        if (v13)
        {
          return v13;
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "steeringdata"))
      {
        v14 = (v14 + 8);
        v22 = v22 & 0xFB | 4;
        v11 = 16;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14, &v11, v20, v4);
        if (v13)
        {
          return v13;
        }

        v19 = v11;
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "joinerudpport"))
      {
        v14 = (v14 + 8);
        v22 = v22 & 0xF7 | 8;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, &v21, v5);
        if (v13)
        {
          return v13;
        }
      }

      else
      {
        if (!ot::Utils::CmdLineParser::Arg::operator==(v14, "-x"))
        {
          return 7;
        }

        v14 = (v14 + 8);
        v10 = 32;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14, &v10, v16, v6);
        if (v13)
        {
          return v13;
        }

        v12 = v10;
      }

      v14 = (v14 + 8);
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otCommissionerSendMgmtSet(InstancePtr, &v17, v16, v12);
  }
}

uint64_t ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(result);
}

uint64_t ot::Cli::Commissioner::Process<424573284472ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(a2, &v9, a3);
  if (!v10)
  {
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11 + 1, &v8, v3);
    if (!v10)
    {
      v10 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v11 + 2, v7);
      if (!v10)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otCommissionerPanIdQuery(InstancePtr, v9, v8, v7, ot::Cli::Commissioner::HandlePanIdConflict, a1);
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::Commissioner::Process<7732078877527829602ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  return otCommissionerSetProvisioningUrl(InstancePtr, CString);
}

uint64_t ot::Cli::Commissioner::Process<5868095344381626993ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  SessionId = otCommissionerGetSessionId(InstancePtr);
  ot::Cli::Utils::OutputLine(a1, "%d", SessionId);
  return 0;
}

uint64_t ot::Cli::Commissioner::Process<25605ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Id = otCommissionerGetId(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%s", Id);
    return 0;
  }

  else
  {
    v6 = ot::Cli::Utils::GetInstancePtr(a1);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    return otCommissionerSetId(v6, CString);
  }
}

uint64_t ot::Cli::Utils::Stringify<otCommissionerState,(unsigned short)3>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCommissionerState,(unsigned short)3>(a1, a2, a3);
}

uint64_t ot::Cli::Commissioner::HandleJoinerEvent(ot::Cli::Utils *a1, unsigned __int16 a2, uint64_t a3, const unsigned __int8 *a4)
{
  v4 = ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(a2, ot::Cli::Commissioner::HandleJoinerEvent(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*)::kEventStrings, "unknown");
  ot::Cli::Utils::OutputFormat(a1, "Commissioner: Joiner %s ", v4);
  if (a4)
  {
    ot::Cli::Utils::OutputExtAddress(a1, a4);
  }

  return ot::Cli::Utils::OutputNewLine(a1);
}

uint64_t ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 5u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(a1, a2, a3);
}

uint64_t ot::Cli::Commissioner::Process<428983089745ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  State = otCommissionerGetState(InstancePtr);
  v3 = ot::Cli::Commissioner::StateToString(State);
  ot::Cli::Utils::OutputLine(a1, "%s", v3);
  return 0;
}

uint64_t ot::Cli::Commissioner::Process(ot::Cli::Commissioner *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(this, &ot::Cli::Commissioner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(&CString, &ot::Cli::Commissioner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 36;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xC, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Commissioner::HandleEnergyReport(ot::Cli::Commissioner *this, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v4 = ot::ToUlong(a2);
  ot::Cli::Utils::OutputFormat(this, "Energy: %08lx ", v4);
  for (i = 0; i < a4; ++i)
  {
    ot::Cli::Utils::OutputFormat(this, "%d ", a3[i]);
  }

  return ot::Cli::Utils::OutputNewLine(this);
}

uint64_t ot::Cli::Commissioner::HandlePanIdConflict(ot::Cli::Commissioner *this, unsigned __int16 a2, unsigned int a3)
{
  v5 = a2;
  v3 = ot::ToUlong(a3);
  return ot::Cli::Utils::OutputLine(this, "Conflict: %04x, %08lx", v5, v3);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(a1, a2);
}

uint64_t ot::Cli::Dataset::PrintOld(ot::Cli::Utils *a1, uint64_t a2)
{
  if (*(a2 + 121))
  {
    ot::Cli::Utils::OutputFormat(a1, "Pending Timestamp: ");
    ot::Cli::Utils::OutputUint64Line(a1, *(a2 + 16));
  }

  if (*(a2 + 120))
  {
    ot::Cli::Utils::OutputFormat(a1, "Active Timestamp: ");
    ot::Cli::Utils::OutputUint64Line(a1, *a2);
  }

  if (*(a2 + 128))
  {
    ot::Cli::Utils::OutputLine(a1, "Channel: %d", *(a2 + 90));
  }

  if (*(a2 + 131))
  {
    v2 = ot::ToUlong(*(a2 + 116));
    ot::Cli::Utils::OutputLine(a1, "Channel Mask: 0x%08lx", v2);
  }

  if (*(a2 + 126))
  {
    v3 = ot::ToUlong(*(a2 + 84));
    ot::Cli::Utils::OutputLine(a1, "Delay: %lu", v3);
  }

  if (*(a2 + 124))
  {
    ot::Cli::Utils::OutputFormat(a1, "Ext PAN ID: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, (a2 + 65));
  }

  if (*(a2 + 125))
  {
    ot::Cli::Utils::OutputFormat(a1, "Mesh Local Prefix: ");
    ot::Cli::Utils::OutputIp6PrefixLine(a1, (a2 + 73));
  }

  if (*(a2 + 122))
  {
    ot::Cli::Utils::OutputFormat(a1, "Network Key: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, (a2 + 32));
  }

  if (*(a2 + 123))
  {
    ot::Cli::Utils::OutputFormat(a1, "Network Name: ");
    ot::Cli::Utils::OutputLine(a1, "%s", (a2 + 48));
  }

  if (*(a2 + 127))
  {
    ot::Cli::Utils::OutputLine(a1, "PAN ID: 0x%04x", *(a2 + 88));
  }

  if (*(a2 + 129))
  {
    ot::Cli::Utils::OutputFormat(a1, "PSKc: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, (a2 + 94));
  }

  if (*(a2 + 130))
  {
    ot::Cli::Utils::OutputFormat(a1, "Security Policy: ");
    ot::Cli::Dataset::OutputSecurityPolicy(a1, (a2 + 110));
  }

  return 0;
}

uint64_t ot::Cli::Dataset::OutputSecurityPolicy(ot::Cli::Utils *a1, unsigned __int16 *a2)
{
  ot::Cli::Utils::OutputFormat(a1, "%u ", *a2);
  if (a2[1])
  {
    ot::Cli::Utils::OutputFormat(a1, "o");
  }

  if ((a2[1] & 2) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "n");
  }

  if ((a2[1] & 4) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "r");
  }

  if ((a2[1] & 8) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "c");
  }

  if ((a2[1] & 0x10) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "C");
  }

  if ((a2[1] & 0x20) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "e");
  }

  if ((a2[1] & 0x40) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "p");
  }

  if ((a2[1] & 0x100) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "R");
  }

  return ot::Cli::Utils::OutputLine(a1, " %u", (a2[1] >> 9) & 7);
}

char *ot::Cli::Dataset::LookupMapper(ot::Cli::Dataset *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v7[1] = this;
  v7[0] = a2;
  return ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(v7, &ot::Cli::Dataset::LookupMapper(char const*)const::kMappers, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::ParseActiveTimestamp(uint64_t a1, ot::Utils::CmdLineParser ***a2, uint64_t a3)
{
  v3 = (*a2)++;
  v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v3, a3, a3);
  if (!v5)
  {
    *(a3 + 8) = 0;
    *(a3 + 10) = 0;
  }

  return v5;
}

uint64_t ot::Cli::Dataset::ParseMeshLocalPrefix(uint64_t a1, const char ***a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v3 = (*a2)++;
  v6 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v3, &v5);
  if (!v6)
  {
    *(v7 + 73) = v5;
  }

  return v6;
}

uint64_t ot::Cli::Dataset::ParseNetworkName(uint64_t a1, ot::Utils::CmdLineParser::Arg **a2, uint64_t a3)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(*a2))
  {
    return 7;
  }

  else
  {
    v3 = *a2;
    *a2 = (*a2 + 8);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v3);
    return otNetworkNameFromString(a3 + 48, CString);
  }
}

uint64_t ot::Cli::Dataset::ParsePendingTimestamp(uint64_t a1, ot::Utils::CmdLineParser ***a2, uint64_t a3)
{
  v3 = (*a2)++;
  v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v3, (a3 + 16), a3);
  if (!v5)
  {
    *(a3 + 24) = 0;
    *(a3 + 26) = 0;
  }

  return v5;
}

uint64_t ot::Cli::Dataset::ParsePskc(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg **a2, char *a3)
{
  if (ot::Utils::CmdLineParser::Arg::operator==(*a2, "-p"))
  {
    *a2 = (*a2 + 8);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(*a2))
    {
      return 7;
    }

    else
    {
      CString = ot::Utils::CmdLineParser::Arg::GetCString(*a2);
      if (a3[123])
      {
        v12 = (a3 + 48);
      }

      else
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        otThreadGetNetworkName(InstancePtr);
        v12 = v6;
      }

      if (a3[124])
      {
        v11 = (a3 + 65);
      }

      else
      {
        v7 = ot::Cli::Utils::GetInstancePtr(a1);
        otThreadGetExtendedPanId(v7);
        v11 = v8;
      }

      Pskc = otDatasetGeneratePskc(CString, v12, v11, (a3 + 94));
      if (!Pskc)
      {
        *a2 = (*a2 + 8);
      }
    }
  }

  else
  {
    v9 = *a2;
    *a2 = (*a2 + 8);
    return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(v9, a3 + 94, v3, v4);
  }

  return Pskc;
}

char *ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xE, 0x30u, ot::BinarySearch::Compare<char const*,ot::Cli::Dataset::ComponentMapper>, a6);
}

{
  return ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::Process<7419947443224800644ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v5 = otDatasetParseTlvs(ot::Cli::Dataset::sDatasetTlvs, __b);
    if (!v5 && (__b[66] & 1) != 0)
    {
      ot::Cli::Utils::OutputLine(a1, "%d", __b[46]);
    }
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(a2, &__b[46], v2);
    if (!v5)
    {
      LOBYTE(__b[66]) = 1;
      return otDatasetUpdateTlvs(__b, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  return v5;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsUint64(ot::Utils::CmdLineParser **this, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsUint64(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint64(this, a2, a3);
}

uint64_t ot::Cli::Dataset::ParseSecurityPolicy(uint64_t a1, _DWORD *a2, ot::Utils::CmdLineParser ***a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v8 = 0;
  ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(v9);
  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(*v11, v9, v3);
  if (!v10 && !ot::Utils::CmdLineParser::Arg::IsEmpty(++*v11))
  {
    for (i = ot::Utils::CmdLineParser::Arg::GetCString(*v11); *i; ++i)
    {
      v6 = *i;
      switch(v6)
      {
        case 'C':
          v9[1] = v9[1] & 0xFFEF | 0x10;
          break;
        case 'R':
          v9[1] = v9[1] & 0xFEFF | 0x100;
          break;
        case 'c':
          v9[1] = v9[1] & 0xFFF7 | 8;
          break;
        case 'e':
          v9[1] = v9[1] & 0xFFDF | 0x20;
          break;
        case 'n':
          v9[1] = v9[1] & 0xFFFD | 2;
          break;
        case 'o':
          v9[1] = v9[1] & 0xFFFE | 1;
          break;
        case 'p':
          v9[1] = v9[1] & 0xFFBF | 0x40;
          break;
        case 'r':
          v9[1] = v9[1] & 0xFFFB | 4;
          break;
        default:
          v10 = 7;
          goto LABEL_28;
      }
    }

    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(++*v11))
    {
      v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(*v11, &v8, v4);
      if (!v10)
      {
        ++*v11;
        if (v8 <= 7u)
        {
          v9[1] = v9[1] & 0xF1FF | ((v8 & 7) << 9);
        }

        else
        {
          v10 = 7;
        }
      }
    }
  }

LABEL_28:
  if (!v10)
  {
    *v12 = *v9;
  }

  return v10;
}

uint64_t ot::Cli::Dataset::ParseTlvs(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 254;
  v6 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(a2, &v5, a3, a4);
  if (!v6)
  {
    v7[254] = v5;
  }

  return v6;
}

uint64_t ot::Cli::Dataset::ProcessCommand(ot::Cli::Dataset *this, const ot::Cli::Dataset::ComponentMapper *a2, ot::Utils::CmdLineParser::Arg *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a3))
  {
    v12 = otDatasetParseTlvs(ot::Cli::Dataset::sDatasetTlvs, v16);
    if (!v12 && (v16[*(v14 + 1) + 120] & 1) != 0)
    {
      v9 = *(v14 + 2);
      v3 = *(v14 + 3);
      v10 = (this + (v3 >> 1));
      if (v3)
      {
        (*(*v10 + v9))(v10, v16);
      }

      else
      {
        v9(v10, v16);
      }
    }
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(v16);
    v7 = *(v14 + 4);
    v4 = *(v14 + 5);
    v8 = (this + (v4 >> 1));
    if (v4)
    {
      v5 = (*(*v8 + v7))(v8, &v13, v16);
    }

    else
    {
      v5 = v7(v8, &v13, v16);
    }

    v12 = v5;
    if (!v5)
    {
      v16[*(v14 + 1) + 120] = 1;
      return otDatasetUpdateTlvs(v16, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  return v12;
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(void *a1)
{
  return memset(a1, 0, 0x88uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(a1);
}

uint64_t ot::Cli::Dataset::PrintKeychain(ot::Cli::Dataset *this, const char **a2)
{
  v4 = 0;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v6);
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-a"))
  {
    if (dskeychainRcp::FindAndGetDataSet(0, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "ACTIVE DATASET:");
      ot::Cli::Utils::OutputLine(this, "===============");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Active dataset not found");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-p"))
  {
    if (dskeychainRcp::FindAndGetDataSet(1, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "PENDING DATASET:");
      ot::Cli::Utils::OutputLine(this, "================");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Pending dataset not found");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-ap"))
  {
    if (dskeychainRcp::FindAndGetDataSet(0, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "ACTIVE DATASET:");
      ot::Cli::Utils::OutputLine(this, "===============");
      v4 = ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Active dataset not found");
    }

    ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v6);
    if (dskeychainRcp::FindAndGetDataSet(1, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "================");
      ot::Cli::Utils::OutputLine(this, "PENDING DATASET:");
      ot::Cli::Utils::OutputLine(this, "================");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "");
      ot::Cli::Utils::OutputLine(this, "Pending dataset not found");
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

void *ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a1);
}

uint64_t ot::Cli::Dataset::Print(ot::Cli::Dataset *a1, uint64_t a2)
{
  v13 = otDatasetParseTlvs(a2, v14);
  if (!v13)
  {
    for (i = ot::Cli::Dataset::Print(otOperationalDatasetTlvs &)::kTitles; i != &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands; i += 2)
    {
      v11 = ot::Cli::Dataset::LookupMapper(a1, i[1], v2, v3, v4, v5);
      if (v14[*(v11 + 1) + 120])
      {
        ot::Cli::Utils::OutputFormat(a1, "%s: ", *i);
        v8 = *(v11 + 2);
        v6 = *(v11 + 3);
        v9 = (a1 + (v6 >> 1));
        if (v6)
        {
          (*(*v9 + v8))(v9, v14);
        }

        else
        {
          v8(v9, v14);
        }
      }
    }
  }

  return v13;
}

uint64_t ot::Cli::Dataset::Process<1930295280ull>(ot::Cli::Utils *a1, const char **a2)
{
  NewNetwork = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetGetActiveTlvs(InstancePtr, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetGetPendingTlvs(v3, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "new"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr(a1);
    NewNetwork = otDatasetCreateNewNetwork(v4, v10);
    if (!NewNetwork)
    {
      otDatasetConvertToTlvs(v10, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "tlvs"))
  {
    return ot::Cli::Dataset::ParseTlvs(a1, (a2 + 1), ot::Cli::Dataset::sDatasetTlvs, v5);
  }

  return NewNetwork;
}

uint64_t ot::Cli::Dataset::Process<109399277033242ull>(ot::Cli::Utils *a1, const char **a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  ActiveTlvs = otDatasetGetActiveTlvs(InstancePtr, v7);
  if (!ActiveTlvs)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
    {
      return ot::Cli::Dataset::Print(a1, v7);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-x"))
    {
      ot::Cli::Utils::OutputBytesLine(a1, v7, v8);
    }

    else
    {
      return 7;
    }
  }

  return ActiveTlvs;
}

uint64_t ot::Cli::Dataset::Process<28438073741397367ull>(ot::Cli::Utils *a1, const char **a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  PendingTlvs = otDatasetGetPendingTlvs(InstancePtr, v7);
  if (!PendingTlvs)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
    {
      return ot::Cli::Dataset::Print(a1, v7);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-x"))
    {
      ot::Cli::Utils::OutputBytesLine(a1, v7, v8);
    }

    else
    {
      return 7;
    }
  }

  return PendingTlvs;
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(void *a1)
{
  return memset(a1, 0, 0xFFuLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(a1);
}

uint64_t ot::Cli::Dataset::Process<125517434289129ull>(ot::Cli::Utils *a1, const char **a2)
{
  v6 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSetActiveTlvs(InstancePtr, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSetPendingTlvs(v3, ot::Cli::Dataset::sDatasetTlvs);
  }

  return v6;
}

uint64_t ot::Cli::Dataset::Process<12771032504430052662ull>(ot::Cli::Dataset *a1, const char **a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(v23);
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(v21);
  v17 = (v19 + 1);
  while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v17))
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v17);
    v16 = ot::Cli::Dataset::LookupMapper(a1, CString, v3, v4, v5, v6);
    if (v16)
    {
      v17 = (v17 + 8);
      v13 = *(v16 + 4);
      v7 = *(v16 + 5);
      v14 = (a1 + (v7 >> 1));
      if (v7)
      {
        v8 = (*(*v14 + v13))(v14, &v17, v23);
      }

      else
      {
        v8 = v13(v14, &v17, v23);
      }

      v18 = v8;
      if (v8)
      {
        return v18;
      }

      v23[*(v16 + 1) + 120] = 1;
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(v17, "-x"))
      {
        return 7;
      }

      v17 = (v17 + 8);
      v18 = ot::Cli::Dataset::ParseTlvs(a1, v17, v21, v9);
      if (v18)
      {
        return v18;
      }

      v17 = (v17 + 8);
    }
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v19, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSendMgmtActiveSet(InstancePtr, v23, v21, v22, 0, 0);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v19, "pending"))
  {
    v11 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSendMgmtPendingSet(v11, v23, v21, v22, 0, 0);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Cli::Dataset::Process<12771032453691045162ull>(ot::Cli::Dataset *a1, const char **a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v17 = 0;
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(v18);
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(v22);
  for (i = (v20 + 1); !ot::Utils::CmdLineParser::Arg::IsEmpty(i); i = (i + 8))
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(i);
    v14 = ot::Cli::Dataset::LookupMapper(a1, CString, v3, v4, v5, v6);
    if (v14)
    {
      v18[*(v14 + 1)] = 1;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(i, "-x"))
    {
      i = (i + 8);
      v19 = ot::Cli::Dataset::ParseTlvs(a1, i, v22, v7);
      if (v19)
      {
        return v19;
      }
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(i, "address"))
      {
        return 7;
      }

      i = (i + 8);
      v19 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(i, v16);
      if (v19)
      {
        return v19;
      }

      v17 = 1;
    }
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v20, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    if (v17)
    {
      return otDatasetSendMgmtActiveGet(InstancePtr, v18, v22, v23, v16);
    }

    else
    {
      return otDatasetSendMgmtActiveGet(InstancePtr, v18, v22, v23, 0);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v20, "pending"))
  {
    v11 = ot::Cli::Utils::GetInstancePtr(a1);
    if (v17)
    {
      return otDatasetSendMgmtPendingGet(v11, v18, v22, v23, v16);
    }

    else
    {
      return otDatasetSendMgmtPendingGet(v11, v18, v22, v23, 0);
    }
  }

  else
  {
    return 7;
  }
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(void *result)
{
  *result = 0;
  *(result + 5) = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(result);
}

_DWORD *ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(result);
}

uint64_t ot::Cli::Dataset::Process<7568770ull>(ot::Cli::Utils *a1, const char **a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = ot::Cli::Dataset::ParseTlvs(a1, (a2 + 1), v10, a4);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return otDatasetSetActiveTlvs(InstancePtr, v10);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
    {
      v5 = ot::Cli::Utils::GetInstancePtr(a1);
      return otDatasetSetPendingTlvs(v5, v10);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

uint64_t ot::Cli::Dataset::Process<1914558731ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputBytesLine(a1, ot::Cli::Dataset::sDatasetTlvs, byte_1004E9EDE);
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Cli::Dataset::Process(ot::Cli::Dataset *this, const char **a2)
{
  v22 = this;
  v21 = a2;
  v20 = 35;
  v19 = 0;
  v18 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Dataset::Print(this, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(this, &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v21);
    v18 = ot::Cli::Dataset::LookupMapper(this, CString, v3, v4, v5, v6);
    if (v18)
    {
      return ot::Cli::Dataset::ProcessCommand(this, v18, (v21 + 1));
    }

    else
    {
      v17 = ot::Utils::CmdLineParser::Arg::GetCString(v21);
      v19 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(&v17, &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v7, v8, v9, v10);
      if (v19)
      {
        v14 = *(v19 + 1);
        v11 = *(v19 + 2);
        v15 = (this + (v11 >> 1));
        if (v11)
        {
          return (*(*v15 + v14))(v15, v21 + 1);
        }

        else
        {
          return v14(v15, v21 + 1);
        }
      }
    }
  }

  return v20;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 30;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xA, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::ComponentMapper::Compare(const char **this, const char *a2)
{
  return strcmp(a2, *this);
}

{
  return ot::Cli::Dataset::ComponentMapper::Compare(this, a2);
}

void *ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(void *a1)
{
  return memset(a1, 0, 0x88uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(a1);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(a1, a2);
}

uint64_t __cxx_global_var_init_5()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
  return __cxa_atexit(std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::~map[abi:dn200100], &ot::mMatterSubscriptionInfoMap, &_mh_execute_header);
}

uint64_t ot::Cli::History::ParseArgs(ot::Cli::History *this, const char **a2, BOOL *a3, char *a4)
{
  v8 = a2;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "list"))
  {
    v8 = (v8 + 8);
    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  if (ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, a4, v4))
  {
    *a4 = 0;
  }

  else
  {
    v8 = (v8 + 8);
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v8))
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Cli::History::Process<123339735204840ull>(ot::Cli::Utils *a1, const char **a2)
{
  v32 = a1;
  v31 = a2;
  v22 = a1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v30 = ot::Cli::History::ParseArgs(a1, a2, &v29, &v28);
  if (!v30)
  {
    if (!v29)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(v22, ot::Cli::History::Process<123339735204840ull>(ot::Utils::CmdLineParser::Arg *)::kUnicastAddrInfoTitles, ot::Cli::History::Process<123339735204840ull>(ot::Utils::CmdLineParser::Arg *)::kUnicastAddrInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v27);
    for (i = 0; ; ++i)
    {
      v21 = 1;
      if (v28)
      {
        v21 = i < v28;
      }

      if (!v21)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(v22);
      v26 = otHistoryTrackerIterateUnicastAddressHistory(InstancePtr, v27, &v25);
      if (!v26)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v25, v34, 0x15u);
      otIp6AddressToString(v26, __s, 44);
      if (v29)
      {
        v15 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v26 + 20), ot::Cli::kSimpleEventStrings, "unknown");
        v16 = *(v26 + 16);
        v8 = ot::Cli::Utils::AddressOriginToString(*(v26 + 17));
        v9 = *(v26 + 24) & 0xF;
        v10 = "yes";
        if ((*(v26 + 24) & 0x10) != 0)
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        if ((*(v26 + 24) & 0x20) != 0)
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        if ((*(v26 + 24) & 0x40) == 0)
        {
          v10 = "no";
        }

        v17 = &v14;
        ot::Cli::Utils::OutputLine(v22, "%s -> event:%s address:%s prefixlen:%d origin:%s scope:%d preferred:%s valid:%s rloc:%s", v34, v15, __s, v16, v8, v9, v11, v12, v10);
      }

      else
      {
        v19 = __s;
        v23 = strlen(__s);
        snprintf(&__s[v23], 44 - v23, "/%d", *(v26 + 16));
        v18 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v26 + 20), ot::Cli::kSimpleEventStrings, "unknown");
        v3 = ot::Cli::Utils::AddressOriginToString(*(v26 + 17));
        v4 = *(v26 + 24) & 0xF;
        if ((*(v26 + 24) & 0x10) != 0)
        {
          v5 = 89;
        }

        else
        {
          v5 = 78;
        }

        if ((*(v26 + 24) & 0x20) != 0)
        {
          v6 = 89;
        }

        else
        {
          v6 = 78;
        }

        if ((*(v26 + 24) & 0x40) != 0)
        {
          v7 = 89;
        }

        else
        {
          v7 = 78;
        }

        v20 = &v14;
        ot::Cli::Utils::OutputLine(v22, "| %20s | %-7s | %-43s | %-6s | %3d | %c | %c | %c |", v34, v18, v19, v3, v4, v5, v6, v7);
      }
    }
  }

  return v30;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 8u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(a1, a2, a3);
}

uint64_t ot::Cli::History::Process<31451632477041015ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(a1, ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kMulticastAddrInfoTitles, ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kMulticastAddrInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateMulticastAddressHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v20, 0x15u);
      otIp6AddressToString(v12, v19, 40);
      v3 = "%s -> event:%s address:%s origin:%s";
      if (!v15)
      {
        v3 = "| %20s | %-12s | %-39s | %-6s |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v12 + 20), ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kEventStrings, "unknown");
      v4 = ot::Cli::Utils::AddressOriginToString(*(v12 + 16));
      ot::Cli::Utils::OutputLine(a1, v7, v20, v6, v19, v4);
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process<8023188516701246990ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(a1, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborInfoTitles, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v6 = 1;
      if (v14)
      {
        v6 = i < v14;
      }

      if (!v6)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateNeighborHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v19, 0x15u);
      v10 = v10 & 0xFE | ((v12[11] & 4) != 0);
      v10 = v10 & 0xFD | (2 * ((v12[11] & 8) != 0));
      v10 = v10 & 0xFB | (4 * ((v12[11] & 0x10) != 0));
      ot::Cli::Utils::LinkModeToString(&v10, v9);
      if (v15)
      {
        v3 = "%s -> type:%s event:%s extaddr:";
      }

      else
      {
        v3 = "| %20s | %-6s | %-9s | ";
      }

      if ((v12[11] & 0x20) != 0)
      {
        v4 = "Child";
      }

      else
      {
        v4 = "Router";
      }

      ot::Cli::Utils::OutputFormat(a1, v3, v19, v4, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kEventString[v12[11] & 3]);
      ot::Cli::Utils::OutputExtAddress(a1, v12);
      if (v15)
      {
        ot::Cli::Utils::OutputLine(a1, " rloc16:0x%04x mode:%s rss:%d");
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, " | 0x%04x | %-4s | %7d |");
      }
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process<123344230057719ull>(ot::Cli::History *a1, const char **a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 10;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  v12 = ot::Cli::History::ParseArgs(a1, a2, &v11, &v10);
  if (!v12)
  {
    if (!v11)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, ot::Cli::History::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterInfoTitles, ot::Cli::History::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v9);
    for (i = 0; ; ++i)
    {
      v4 = 1;
      if (v10)
      {
        v4 = i < v10;
      }

      if (!v4)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v8 = otHistoryTrackerIterateRouterHistory(InstancePtr, v9, &v7);
      if (!v8)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v7, v16, 0x15u);
      if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, "%s -> event:%s router:%u(0x%04x) nexthop:");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "| %20s | %-14s | %2u (0x%04x) | ");
      }

      if (*(v8 + 1) == 63)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputFormat(a1, "%s");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(a1, "%11s");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, "%u(0x%04x)");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "%2u (0x%04x)");
      }

      if ((*(v8 + 2) & 0xF) != 0)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputFormat(a1, " old-cost:%u");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(a1, " | %3u ->");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, " old-cost:inf");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, " | inf ->");
      }

      if (*(v8 + 2) >> 4)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputLine(a1, " new-cost:%u");
        }

        else
        {
          ot::Cli::Utils::OutputLine(a1, " %3u |");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputLine(a1, " new-cost:inf");
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, " inf |");
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::History::Process<30629005309797515ull>(ot::Cli::History *a1, const char **a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  v19 = ot::Cli::History::ParseArgs(a1, a2, &v18, &v17);
  if (!v19)
  {
    if (!v18)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, ot::Cli::History::Process<30629005309797515ull>(ot::Utils::CmdLineParser::Arg *)::kNetInfoTitles, ot::Cli::History::Process<30629005309797515ull>(ot::Utils::CmdLineParser::Arg *)::kNetInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v16);
    for (i = 0; ; ++i)
    {
      v10 = 1;
      if (v17)
      {
        v10 = i < v17;
      }

      if (!v10)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v15 = otHistoryTrackerIterateNetInfoHistory(InstancePtr, v16, &v14);
      if (!v15)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v14, v22, 0x15u);
      v3 = "%s -> role:%s mode:%s rloc16:0x%04x partition-id:%lu";
      if (!v18)
      {
        v3 = "| %20s | %-8s | %-4s | 0x%04x | %12lu |";
      }

      v9 = v3;
      v6 = otThreadDeviceRoleToString(*v15);
      v7 = ot::Cli::Utils::LinkModeToString((v15 + 4), v13);
      v8 = *(v15 + 6);
      v4 = ot::ToUlong(*(v15 + 8));
      ot::Cli::Utils::OutputLine(a1, v9, v22, v6, v7, v8, v4);
    }
  }

  return v19;
}

uint64_t ot::Cli::History::ProcessRxTxHistory(ot::Cli::History *a1, char a2, const char **a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v22 = ot::Cli::History::ParseArgs(a1, a3, &v21, &v20);
  if (!v22)
  {
    if (!v21)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(a1, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableTitles, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableColumnWidths);
    }

    otHistoryTrackerInitIterator(v18);
    otHistoryTrackerInitIterator(v19);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v20)
      {
        v8 = i < v20;
      }

      if (!v8)
      {
        break;
      }

      if (v24)
      {
        if (v24 == 1)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
          v16 = otHistoryTrackerIterateTxHistory(InstancePtr, v18, &v13);
          v17 = 0;
        }

        else if (v24 == 2)
        {
          if (!v15)
          {
            v5 = ot::Cli::Utils::GetInstancePtr(a1);
            v15 = otHistoryTrackerIterateRxHistory(v5, v19, &v12);
          }

          if (!v14)
          {
            v6 = ot::Cli::Utils::GetInstancePtr(a1);
            v14 = otHistoryTrackerIterateTxHistory(v6, v18, &v11);
          }

          if (!v15 || v14 && v12 > v11)
          {
            v16 = v14;
            v13 = v11;
            v17 = 0;
            v14 = 0;
          }

          else
          {
            v16 = v15;
            v13 = v12;
            v17 = 1;
            v15 = 0;
          }
        }
      }

      else
      {
        v3 = ot::Cli::Utils::GetInstancePtr(a1);
        v16 = otHistoryTrackerIterateRxHistory(v3, v19, &v13);
        v17 = 1;
      }

      if (!v16)
      {
        break;
      }

      if (v21)
      {
        ot::Cli::History::OutputRxTxEntryListFormat(a1, v16, v13, v17 & 1);
      }

      else
      {
        if (i)
        {
          ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(a1, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableColumnWidths);
        }

        ot::Cli::History::OutputRxTxEntryTableFormat(a1, v16, v13, v17 & 1);
      }
    }
  }

  return v22;
}

uint64_t ot::Cli::Utils::Stringify<unsigned char,(unsigned short)4>(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 4u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<unsigned char,(unsigned short)4>(a1, a2, a3);
}

const char *ot::Cli::History::RadioTypeToString(uint64_t a1)
{
  v2 = "none";
  if ((*(a1 + 45) & 0x20) != 0 && (*(a1 + 45) & 0x10) != 0)
  {
    return "all";
  }

  if ((*(a1 + 45) & 0x10) != 0)
  {
    return "15.4";
  }

  if ((*(a1 + 45) & 0x20) != 0)
  {
    return "trel";
  }

  return v2;
}

const char *ot::Cli::History::MessageTypeToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v8 = otIp6ProtoToString(*(a1 + 42), a2, a3, a4, a5, a6);
  if (*(a1 + 42) == 58)
  {
    v7 = *(a1 + 43);
    switch(v7)
    {
      case 1:
        return "ICMP6(Unreach)";
      case 2:
        return "ICMP6(TooBig)";
      case 128:
        return "ICMP6(EchoReqst)";
      case 129:
        return "ICMP6(EchoReply)";
      case 133:
        return "ICMP6(RouterSol)";
      case 134:
        return "ICMP6(RouterAdv)";
      default:
        return "ICMP6(Other)";
    }
  }

  return v8;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0xAu, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(a1, a2, a3);
}

uint64_t ot::Cli::History::OutputRxTxEntryListFormat(ot::Cli::Utils *a1, unsigned __int16 *a2, unsigned int a3, char a4)
{
  otHistoryTrackerEntryAgeToString(a3, v24, 0x15u);
  ot::Cli::Utils::OutputLine(a1, "%s", v24);
  v17 = ot::Cli::History::MessageTypeToString(a2, v4, v5, v6, v7, v8);
  v18 = *a2;
  v19 = a2[20];
  v9 = "yes";
  if ((*(a2 + 45) & 1) == 0)
  {
    v9 = "no";
  }

  v20 = v9;
  v10 = ot::Cli::History::MessagePriorityToString(((*(a2 + 45) >> 2) & 3));
  ot::Cli::Utils::OutputFormat(a1, 4, "type:%s len:%u checksum:0x%04x sec:%s prio:%s ", v17, v18, v19, v20, v10);
  if (a4)
  {
    ot::Cli::Utils::OutputFormat(a1, "rss:%d", *(a2 + 44));
  }

  else
  {
    v11 = "yes";
    if ((*(a2 + 45) & 2) == 0)
    {
      v11 = "no";
    }

    ot::Cli::Utils::OutputFormat(a1, "tx-success:%s", v11);
  }

  v12 = "from";
  if ((a4 & 1) == 0)
  {
    v12 = "to";
  }

  v15 = v12;
  v16 = a2[1];
  v13 = ot::Cli::History::RadioTypeToString(a2);
  ot::Cli::Utils::OutputLine(a1, " %s:0x%04x radio:%s", v15, v16, v13);
  ot::Cli::Utils::OutputFormat(a1, 4, "src:");
  ot::Cli::Utils::OutputSockAddrLine(a1, (a2 + 2));
  ot::Cli::Utils::OutputFormat(a1, 4, "dst:");
  return ot::Cli::Utils::OutputSockAddrLine(a1, (a2 + 11));
}

uint64_t ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputTableSeparator(a1, 0xAu, a2);
}

{
  return ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(a1, a2);
}

uint64_t ot::Cli::History::OutputRxTxEntryTableFormat(ot::Cli::Utils *a1, unsigned __int16 *a2, unsigned int a3, char a4)
{
  otHistoryTrackerEntryAgeToString(a3, v21, 0x15u);
  v13 = ot::Cli::History::MessageTypeToString(a2, v4, v5, v6, v7, v8);
  v14 = *a2;
  v15 = a2[20];
  v9 = "yes";
  if ((*(a2 + 45) & 1) == 0)
  {
    v9 = "no";
  }

  v16 = v9;
  v10 = ot::Cli::History::MessagePriorityToString(((*(a2 + 45) >> 2) & 3));
  ot::Cli::Utils::OutputFormat(a1, "| %20s | %-16.16s | %5u | 0x%04x | %3s | %4s | ", "", v13, v14, v15, v16, v10);
  if (a4)
  {
    ot::Cli::Utils::OutputFormat(a1, "%4d | RX ", *(a2 + 44));
  }

  else
  {
    ot::Cli::Utils::OutputFormat(a1, " NA  |");
    if ((*(a2 + 45) & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat(a1, " TX ");
    }

    else
    {
      ot::Cli::Utils::OutputFormat(a1, "TX-F");
    }
  }

  if (a2[1] == 0xFFFF)
  {
    ot::Cli::Utils::OutputFormat(a1, "| bcast  ");
  }

  else if (a2[1] == 65534)
  {
    ot::Cli::Utils::OutputFormat(a1, "| unknwn ");
  }

  else
  {
    ot::Cli::Utils::OutputFormat(a1, "| 0x%04x ", a2[1]);
  }

  v11 = ot::Cli::History::RadioTypeToString(a2);
  ot::Cli::Utils::OutputLine(a1, "| %5.5s |", v11);
  otIp6SockAddrToString((a2 + 2), v20, 48);
  ot::Cli::Utils::OutputLine(a1, "| %20s | src: %-70s |", v21, v20);
  otIp6SockAddrToString((a2 + 11), v20, 48);
  return ot::Cli::Utils::OutputLine(a1, "| %20s | dst: %-70s |", "", v20);
}

uint64_t ot::Cli::History::Process<129830133337582ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, ot::Cli::History::Process<129830133337582ull>(ot::Utils::CmdLineParser::Arg *)::kPrefixTitles, ot::Cli::History::Process<129830133337582ull>(ot::Utils::CmdLineParser::Arg *)::kPrefixColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateOnMeshPrefixHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v22, 0x15u);
      otIp6PrefixToString(v12, v21, 45);
      ot::Cli::NetworkData::PrefixFlagsToString(v12, v19);
      v3 = "%s -> event:%s prefix:%s flags:%s pref:%s rloc16:0x%04x";
      if (!v15)
      {
        v3 = "| %20s | %-7s | %-43s | %-9s | %-4s | 0x%04x |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(*(v12 + 24), ot::Cli::kSimpleEventStrings, "unknown");
      v4 = ot::Cli::Utils::PreferenceToString(((*(v12 + 17) << 14) >> 14));
      ot::Cli::Utils::OutputLine(a1, v7, v22, v6, v21, v19, v4, *(v12 + 20));
    }
  }

  return v16;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 6u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(a1, a2, a3);
}

uint64_t ot::Cli::History::Process<428984388969ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, ot::Cli::History::Process<428984388969ull>(ot::Utils::CmdLineParser::Arg *)::kRouteTitles, ot::Cli::History::Process<428984388969ull>(ot::Utils::CmdLineParser::Arg *)::kRouteColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateExternalRouteHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v22, 0x15u);
      otIp6PrefixToString(v12, v21, 45);
      ot::Cli::NetworkData::RouteFlagsToString(v12, v19);
      v3 = "%s -> event:%s route:%s flags:%s pref:%s rloc16:0x%04x";
      if (!v15)
      {
        v3 = "| %20s | %-7s | %-43s | %-9s | %-4s | 0x%04x |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(*(v12 + 24), ot::Cli::kSimpleEventStrings, "unknown");
      v4 = ot::Cli::Utils::PreferenceToString(((*(v12 + 20) << 6) >> 6));
      ot::Cli::Utils::OutputLine(a1, v7, v22, v6, v21, v19, v4, *(v12 + 18));
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process(ot::Cli::History *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(this, &ot::Cli::History::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(&CString, &ot::Cli::History::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 30;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xA, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(a1, a2);
}

uint64_t ot::Cli::Joiner::Process<16073431636142911865ull>(ot::Cli::Utils *a1, char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 7;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Discerner = otJoinerGetDiscerner(InstancePtr);
    if (Discerner)
    {
      if (*Discerner > 0xFFFFFFFFuLL)
      {
        ot::Cli::Utils::OutputLine(a1, "0x%lx%08lx/%u", HIDWORD(*Discerner), *Discerner, *(Discerner + 8));
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, "0x%lx/%u", *Discerner, *(Discerner + 8));
      }

      return 0;
    }

    else
    {
      return 23;
    }
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(v7);
    if (ot::Utils::CmdLineParser::Arg::operator==(v10, "clear"))
    {
      v3 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetDiscerner(v3, 0);
    }

    else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)) && !ot::Cli::Utils::ParseJoinerDiscerner(v10, v7))
    {
      v4 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetDiscerner(v4, v7);
    }
  }

  return v9;
}