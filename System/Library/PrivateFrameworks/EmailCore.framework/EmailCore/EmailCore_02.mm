uint64_t gssapi_common_mech_dispose(gss_name_t *a1, uint64_t a2)
{
  sasl_gss_free_context_contents(a1);
  v4 = *(a2 + 64);

  return v4(a1);
}

uint64_t gssapi_common_mech_free(uint64_t a1, uint64_t a2)
{
  result = gss_mutex;
  if (gss_mutex)
  {
    result = (*(a2 + 96))();
    gss_mutex = 0;
  }

  return result;
}

uint64_t sasl_gss_free_context_contents(uint64_t input_name)
{
  if (input_name)
  {
    v1 = input_name;
    if (!*(input_name + 208) || (input_name = (*(*(input_name + 80) + 80))(), !input_name))
    {
      minor_status = -1431655766;
      if (*(v1 + 24))
      {
        gss_delete_sec_context(&minor_status, (v1 + 24), 0);
        *(v1 + 24) = 0;
      }

      if (*(v1 + 32))
      {
        gss_release_name(&minor_status, (v1 + 32));
        *(v1 + 32) = 0;
      }

      if (*(v1 + 40))
      {
        gss_release_name(&minor_status, (v1 + 40));
        *(v1 + 40) = 0;
      }

      if (*(v1 + 48))
      {
        gss_release_cred(&minor_status, (v1 + 48));
        *(v1 + 48) = 0;
      }

      if (*(v1 + 56))
      {
        gss_release_cred(&minor_status, (v1 + 56));
        *(v1 + 56) = 0;
      }

      if (*(v1 + 176))
      {
        (*(*(v1 + 80) + 64))();
        *(v1 + 176) = 0;
      }

      if (*(v1 + 128))
      {
        (*(*(v1 + 80) + 64))();
        *(v1 + 128) = 0;
      }

      if (*(v1 + 136))
      {
        (*(*(v1 + 80) + 64))();
        *(v1 + 136) = 0;
      }

      if (*(v1 + 144))
      {
        (*(*(v1 + 80) + 64))();
        *(v1 + 144) = 0;
      }

      v2 = *(v1 + 168);
      if (v2)
      {
        if (*v2)
        {
          (*(*(v1 + 80) + 64))(*v2);
          v2 = *(v1 + 168);
        }

        (*(*(v1 + 80) + 64))(v2);
        *(v1 + 168) = 0;
      }

      _plug_decode_free((v1 + 88));
      if (*(v1 + 192))
      {
        (*(*(v1 + 80) + 64))();
        *(v1 + 192) = 0;
      }

      input_name = *(v1 + 208);
      if (input_name)
      {
        input_name = (*(*(v1 + 80) + 88))();
        if (!input_name)
        {
          input_name = (*(*(v1 + 80) + 96))(*(v1 + 208));
          *(v1 + 208) = 0;
        }
      }
    }
  }

  return input_name;
}

uint64_t sasl_gss_seterror_(uint64_t result, OM_uint32 a2, OM_uint32 a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  status_string.length = 0xAAAAAAAAAAAAAAAALL;
  status_string.value = 0xAAAAAAAAAAAAAAAALL;
  __dst = 0;
  v17 = 0;
  strcpy(__src, "GSSAPI Error: ");
  if (!result)
  {
    return result;
  }

  v7 = result;
  minor_status = -1431655766;
  message_content = -1431655766;
  result = _plug_buf_alloc(result, &__dst, &v17, 0x100u);
  if (result)
  {
    return result;
  }

  strcpy(__dst, __src);
  message_content = 0;
  v8 = 15;
  do
  {
    result = (*(v7 + 80))(gss_mutex);
    if (result)
    {
      return result;
    }

    v9 = gss_display_status(&minor_status, a2, 1, 0, &message_content, &status_string);
    result = (*(v7 + 88))(gss_mutex);
    if (result)
    {
      return result;
    }

    if (v9 >= 0x10000)
    {
      v13 = *(v7 + 8);
      if (a4)
      {
        v14 = *(v7 + 256);
        v15 = "GSSAPI Failure: (could not get major error message)";
LABEL_28:
        v16 = 2;
      }

      else
      {
        v14 = *(v7 + 264);
        v15 = "GSSAPI Failure (could not get major error message)";
LABEL_30:
        v16 = 0;
      }

      v14(v13, v16, v15);
      return (*(v7 + 64))(__dst);
    }

    v8 += status_string.length;
    if (_plug_buf_alloc(v7, &__dst, &v17, v8))
    {
      return (*(v7 + 64))(__dst);
    }

    strncat(__dst, status_string.value, status_string.length);
    result = (*(v7 + 80))(gss_mutex);
    if (!result)
    {
      gss_release_buffer(&minor_status, &status_string);
      result = (*(v7 + 88))(gss_mutex);
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  while (message_content);
  v10 = v8 + 2;
  if (_plug_buf_alloc(v7, &__dst, &v17, v8 + 2))
  {
    return (*(v7 + 64))(__dst);
  }

  strcat(__dst, " (");
  message_content = 0;
  while (1)
  {
    result = (*(v7 + 80))(gss_mutex);
    if (result)
    {
      return result;
    }

    v11 = gss_display_status(&minor_status, a3, 2, 0, &message_content, &status_string);
    result = (*(v7 + 88))(gss_mutex);
    if (result)
    {
      return result;
    }

    if (v11 >= 0x10000)
    {
      v13 = *(v7 + 8);
      if (a4)
      {
        v14 = *(v7 + 256);
        v15 = "GSSAPI Failure: (could not get minor error message)";
        goto LABEL_28;
      }

      v14 = *(v7 + 264);
      v15 = "GSSAPI Failure (could not get minor error message)";
      goto LABEL_30;
    }

    v10 += status_string.length;
    if (_plug_buf_alloc(v7, &__dst, &v17, v10))
    {
      return (*(v7 + 64))(__dst);
    }

    strncat(__dst, status_string.value, status_string.length);
    result = (*(v7 + 80))(gss_mutex);
    if (result)
    {
      return result;
    }

    gss_release_buffer(&minor_status, &status_string);
    result = (*(v7 + 88))(gss_mutex);
    if (result)
    {
      return result;
    }

    if (!message_content)
    {
      if (!_plug_buf_alloc(v7, &__dst, &v17, v10 + 1))
      {
        *&__dst[strlen(__dst)] = 41;
        if (v10 != strlen(__dst))
        {
          sasl_gss_seterror__cold_1();
        }

        v12 = 256;
        if (!a4)
        {
          v12 = 264;
        }

        (*(v7 + v12))(*(v7 + 8), 2 * (a4 != 0), "%s");
      }

      return (*(v7 + 64))(__dst);
    }
  }
}

uint64_t gssapi_decode(uint64_t a1, char *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  result = _plug_decode(a1 + 88, a2, a3, (a1 + 136), (a1 + 156), a5, gssapi_decode_packet, a1);
  *a4 = *(a1 + 136);
  return result;
}

uint64_t gssapi_wrap_sizes(uint64_t a1, uint64_t a2)
{
  *max_input_size = 0;
  result = gss_wrap_size_limit(&max_input_size[1], *(a1 + 24), 1, 0, *(a2 + 32), max_input_size);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = max_input_size[0];
  v5 = *(a2 + 32);
  if (max_input_size[0] > v5)
  {
    v4 = 2 * v5 - max_input_size[0];
  }

  *(a2 + 32) = v4;
  return result;
}

uint64_t sasl_gss_encode(uint64_t a1, unint64_t *a2, unsigned int a3, void *a4, _DWORD *a5, int a6)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (!a4)
  {
    return 4294967289;
  }

  if (a3 < 2)
  {
    v12 = a2[1];
    v17 = *a2;
    LODWORD(v18) = v12;
    v11 = &v17;
  }

  else
  {
    result = _plug_iovec_to_buf(*(a1 + 80), a2, a3, (a1 + 168));
    if (result)
    {
      return result;
    }

    v11 = *(a1 + 168);
  }

  if (*a1 != 4)
  {
    return 4294967290;
  }

  v13 = *v11;
  input_message_buffer.length = *(v11 + 2);
  input_message_buffer.value = v13;
  output_message_buffer.length = 0;
  output_message_buffer.value = 0;
  if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  minor_status = -1431655766;
  v14 = gss_wrap(&minor_status, *(a1 + 24), a6, 0, &input_message_buffer, 0, &output_message_buffer);
  if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  if (v14 >= 0x10000)
  {
    sasl_gss_seterror_(*(a1 + 80), v14, minor_status, 0);
    if (output_message_buffer.value && !(*(*(a1 + 80) + 80))(*(a1 + 208)))
    {
      gss_release_buffer(&minor_status, &output_message_buffer);
      (*(*(a1 + 80) + 88))(*(a1 + 208));
    }

    return 0xFFFFFFFFLL;
  }

  if (!output_message_buffer.value)
  {
    goto LABEL_24;
  }

  v15 = _plug_buf_alloc(*(a1 + 80), (a1 + 128), (a1 + 152), LODWORD(output_message_buffer.length) + 4);
  if (!v15)
  {
    **(a1 + 128) = bswap32(output_message_buffer.length);
    memcpy((*(a1 + 128) + 4), output_message_buffer.value, output_message_buffer.length);
LABEL_24:
    if (a5)
    {
      *a5 = LODWORD(output_message_buffer.length) + 4;
    }

    *a4 = *(a1 + 128);
    if (output_message_buffer.value)
    {
      if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
      {
        return 0xFFFFFFFFLL;
      }

      gss_release_buffer(&minor_status, &output_message_buffer);
      if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  v16 = v15;
  if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  gss_release_buffer(&minor_status, &output_message_buffer);
  if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v16;
  }
}

uint64_t gssapi_decode_packet(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  if (*a1 != 4)
  {
    (*(*(a1 + 80) + 264))(*(*(a1 + 80) + 8), 0, "GSSAPI Failure", a4, a5);
    return 4294967290;
  }

  input_message_buffer.length = a3;
  input_message_buffer.value = a2;
  output_message_buffer.length = 0;
  output_message_buffer.value = 0;
  if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  minor_status = -1431655766;
  v8 = gss_unwrap(&minor_status, *(a1 + 24), &input_message_buffer, &output_message_buffer, 0, 0);
  if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 >= 0x10000)
  {
    sasl_gss_seterror_(*(a1 + 80), v8, minor_status, 0);
    if (output_message_buffer.value && !(*(*(a1 + 80) + 80))(*(a1 + 208)))
    {
      gss_release_buffer(&minor_status, &output_message_buffer);
      (*(*(a1 + 80) + 88))(*(a1 + 208));
    }

    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    *a5 = output_message_buffer.length;
  }

  if (!output_message_buffer.value)
  {
    return 0;
  }

  if (!a4 || !a5)
  {
LABEL_22:
    if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
    {
      return 0xFFFFFFFFLL;
    }

    gss_release_buffer(&minor_status, &output_message_buffer);
    if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v10 = _plug_buf_alloc(*(a1 + 80), (a1 + 144), (a1 + 160), *a5);
  if (!v10)
  {
    v12 = *(a1 + 144);
    *a4 = v12;
    memcpy(v12, output_message_buffer.value, *a5);
    goto LABEL_22;
  }

  v11 = v10;
  if ((*(*(a1 + 80) + 80))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  gss_release_buffer(&minor_status, &output_message_buffer);
  if ((*(*(a1 + 80) + 88))(*(a1 + 208)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v11;
  }
}

uint64_t gssapi_client_mech_new(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 24);
  v7 = (*(v6 + 40))(216);
  if (v7)
  {
    v8 = v7;
    *(v7 + 208) = 0;
    *(v7 + 176) = 0u;
    *(v7 + 192) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    *(v7 + 80) = v6;
    v9 = (*(v6 + 72))();
    *(v8 + 208) = v9;
    if (v9)
    {
      result = 0;
      *v8 = 1;
      *(v8 + 8) = a1;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 16) = *(a2 + 180) & 0x10;
      *a3 = v8;
      return result;
    }

    (*(v6 + 64))(v8);
  }

  (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 1639);
  return 4294967294;
}

uint64_t gssapi_client_mech_step(_DWORD *a1, const char **a2, void *a3, unsigned int a4, uint64_t **a5, void *a6, unsigned int *a7, uint64_t a8)
{
  minor_status = 0;
  input_name_buffer.length = 0xAAAAAAAAAAAAAAAALL;
  input_name_buffer.value = 0xAAAAAAAAAAAAAAAALL;
  ret_flags = 0;
  output_message_buffer.length = 0xAAAAAAAAAAAAAAAALL;
  output_message_buffer.value = 0;
  input_message_buffer.length = 0;
  input_message_buffer.value = 0;
  v16 = a2[15];
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  (*(a2[3] + 32))(*(a2[3] + 1), 5, "GSSAPI client step %d", *a1);
  if (*a1 != 2)
  {
    if (*a1 != 1)
    {
      (*(a2[3] + 32))(*(a2[3] + 1), 1, "Invalid GSSAPI client step %d\n", *a1);
      return 0xFFFFFFFFLL;
    }

    v60 = a8;
    v17 = a1 + 50;
    if (!*(a1 + 25))
    {
      simple = _plug_get_simple(a2[3], 16385, 0, a1 + 25, a5);
      if ((simple & 0xFFFFFFFD) != 0)
      {
        sasl_gss_free_context_contents(a1);
        return simple;
      }

      if (a5 && *a5)
      {
        (*(a2[3] + 8))();
        *a5 = 0;
      }

      if (simple == 2)
      {
        prompts = _plug_make_prompts(a2[3], a5, "Please enter your authorization name", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        if (prompts)
        {
          return prompts;
        }

        else
        {
          return 2;
        }
      }
    }

    if (*(a1 + 5))
    {
LABEL_9:
      if (a4)
      {
        input_token = &input_message_buffer;
      }

      else
      {
        input_token = 0;
      }

      if (a4)
      {
        input_message_buffer.length = a4;
        input_message_buffer.value = a3;
      }

      else if (*(a1 + 3))
      {
        if ((*(a2[3] + 10))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        gss_delete_sec_context(&minor_status, a1 + 3, 0);
        if ((*(a2[3] + 11))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 3) = 0;
      }

      v19 = *(a2 + 21);
      v20 = *(a2 + 28);
      v21 = *(a2 + 23);
      if ((*(a2[3] + 10))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      v22 = v19 - v20 <= 1 ? 42 : 58;
      v23 = v19 <= v20 ? 10 : v22;
      inited = gss_init_sec_context(&minor_status, v16, a1 + 3, *(a1 + 5), *(a1 + 1), v23 & 0xFFFFFFFE | (v21 >> 5) & 1, 0, 0, input_token, 0, &output_message_buffer, &ret_flags, 0);
      if ((*(a2[3] + 11))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      if (inited < 0x10000)
      {
        v25 = ret_flags;
        if ((ret_flags & 0x20) != 0)
        {
          if ((ret_flags & 0x10) != 0)
          {
            v26 = 7;
          }

          else
          {
            v26 = 3;
          }
        }

        else
        {
          v26 = 1;
        }

        *(a1 + 72) = v26;
        if ((v25 ^ (v21 >> 5)))
        {
          (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 3, "GSSAPI warning: no credentials were passed");
        }

        if (a7)
        {
          *a7 = output_message_buffer.length;
        }

        if (output_message_buffer.value)
        {
          if (a6 && a7)
          {
            v48 = _plug_buf_alloc(*(a1 + 10), a1 + 22, a1 + 46, *a7);
            if (v48)
            {
              goto LABEL_83;
            }

            memcpy(*(a1 + 22), output_message_buffer.value, *a7);
            *a6 = *(a1 + 22);
          }

          if ((*(a2[3] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          gss_release_buffer(&minor_status, &output_message_buffer);
          if ((*(a2[3] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }
        }

        if (inited)
        {
          return 1;
        }

        if ((*(a2[3] + 10))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        v37 = gss_inquire_context(&minor_status, *(a1 + 3), a1 + 4, 0, 0, 0, 0, 0, 0);
        if ((*(a2[3] + 11))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        if (v37 < 0x10000)
        {
          input_name_buffer.length = 0;
          if ((*(a2[3] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          v52 = gss_display_name(&minor_status, *(a1 + 4), &input_name_buffer, 0);
          if ((*(a2[3] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          if (v52 < 0x10000)
          {
            if (*v17 && **v17)
            {
              simple = (a2[19])(*(a2[3] + 1));
              if (simple)
              {
                goto LABEL_168;
              }

              v53 = 1;
            }

            else
            {
              v53 = 3;
            }

            simple = (a2[19])(*(a2[3] + 1), input_name_buffer.value, 0, v53, v60);
LABEL_168:
            if ((*(a2[3] + 10))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_buffer(&minor_status, &input_name_buffer);
            if ((*(a2[3] + 11))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            if (simple)
            {
              return simple;
            }

            if (a1[4])
            {
              simple = 0;
              *a1 = 4;
              *v60 = 1;
              return simple;
            }

            *a1 = 2;
            return 1;
          }

          if (input_name_buffer.value)
          {
            if ((*(a2[3] + 10))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_buffer(&minor_status, &input_name_buffer);
            if ((*(a2[3] + 11))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }
          }

          (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure");
LABEL_48:
          sasl_gss_free_context_contents(a1);
          return 0xFFFFFFFFLL;
        }

LABEL_42:
        sasl_gss_seterror_(*(a1 + 10), v37, minor_status, 0);
        goto LABEL_48;
      }

      v40 = *(a1 + 10);
      v41 = minor_status;
      v42 = inited;
      goto LABEL_158;
    }

    v32 = a2[1];
    if (!v32 || (v33 = strlen(v32)) == 0)
    {
      (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: no serverFQDN");
      goto LABEL_48;
    }

    v34 = v33;
    v35 = strlen(*a2);
    input_name_buffer.length = v34 + v35 + 1;
    v36 = (*(a2[3] + 5))(v34 + v35 + 2);
    input_name_buffer.value = v36;
    if (v36)
    {
      sprintf(v36, "%s@%s", *a2, a2[1]);
      if ((*(a2[3] + 10))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      v37 = gss_import_name(&minor_status, &input_name_buffer, MEMORY[0x277CCAEF8], a1 + 5);
      if ((*(a2[3] + 11))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      (*(a2[3] + 8))(input_name_buffer.value);
      input_name_buffer.value = 0;
      if (v37 >= 0x10000)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

LABEL_138:
    sasl_gss_free_context_contents(a1);
    return 4294967294;
  }

  v27 = *(a2 + 28);
  input_message_buffer.length = a4;
  input_message_buffer.value = a3;
  if ((*(a2[3] + 10))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = gss_unwrap(&minor_status, *(a1 + 3), &input_message_buffer, &output_message_buffer, 0, 0);
  if ((*(a2[3] + 11))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 >= 0x10000)
  {
LABEL_157:
    v40 = *(a1 + 10);
    v41 = minor_status;
    v42 = v28;
LABEL_158:
    sasl_gss_seterror_(v40, v42, v41, 0);
    if (!output_message_buffer.value)
    {
      goto LABEL_48;
    }

LABEL_159:
    if ((*(a2[3] + 10))(*(a1 + 26)))
    {
      return 0xFFFFFFFFLL;
    }

    gss_release_buffer(&minor_status, &output_message_buffer);
    if ((*(a2[3] + 11))(*(a1 + 26)))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_48;
  }

  if (output_message_buffer.length != 4)
  {
    if (output_message_buffer.length >= 4)
    {
      v39 = "token too long";
    }

    else
    {
      v39 = "token too short";
    }

    (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, v39);
    goto LABEL_159;
  }

  v29 = *(a2 + 20);
  if (v29 > v27 + 56)
  {
    return 4294967281;
  }

  v43 = *(a2 + 21);
  if (v29 > v43)
  {
    return 4294967289;
  }

  if (v29 >= v27)
  {
    v44 = v29 - v27;
  }

  else
  {
    v44 = 0;
  }

  value = output_message_buffer.value;
  v46 = *output_message_buffer.value;
  if ((a1[18] & 4) != 0)
  {
    v50 = v43 - v27;
    if (v43 < v27)
    {
      v50 = 0;
    }

    if (v44 <= 0x38 && v50 >= 0x38 && (*output_message_buffer.value & 4) != 0)
    {
      v61 = 0xAAAAAAAAAAAAAAAALL;
      *(a8 + 48) = gssapi_privacy_encode;
      *(a8 + 64) = gssapi_decode;
      *(a8 + 36) = 56;
      if ((v46 & 2) != 0 && ((*(a2[3] + 4))(*(a2[3] + 3), "GSSAPI", "ad_compat", &v61, 0), v61))
      {
        v51 = *v61;
        v47 = 4;
        if (v51 > 0x73)
        {
          if (v51 != 116 && v51 != 121)
          {
            goto LABEL_123;
          }
        }

        else if (v51 != 49 && (v51 != 111 || v61[1] != 110))
        {
          goto LABEL_123;
        }

        v47 = 6;
      }

      else
      {
        v47 = 4;
      }

LABEL_123:
      value = output_message_buffer.value;
      goto LABEL_124;
    }
  }

  if ((a1[18] & 2) != 0 && v44 <= 1 && v43 > v27 && (*output_message_buffer.value & 2) != 0)
  {
    *(a8 + 48) = gssapi_integrity_encode;
    *(a8 + 64) = gssapi_decode;
    *(a8 + 36) = 1;
    v47 = 2;
  }

  else
  {
    if ((a1[18] & 1) == 0 || v29 > v27 || (*output_message_buffer.value & 1) == 0)
    {
      sasl_gss_free_context_contents(a1);
      return 4294967281;
    }

    *(a8 + 48) = 0;
    *(a8 + 64) = 0;
    v47 = 1;
    *(a8 + 36) = 0;
  }

LABEL_124:
  *(a8 + 32) = (value[1] << 16) | (value[2] << 8) | value[3];
  if ((*(a2[3] + 10))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  gss_release_buffer(&minor_status, &output_message_buffer);
  if ((*(a2[3] + 11))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a8 + 36) && gssapi_wrap_sizes(a1, a8))
  {
    goto LABEL_48;
  }

  v54 = *(a1 + 25);
  if (v54 && *v54)
  {
    v55 = strlen(*(a8 + 8));
  }

  else
  {
    v55 = 0;
  }

  input_message_buffer.length = v55 + 4;
  v56 = (*(a2[3] + 5))(input_message_buffer.length + 1);
  input_message_buffer.value = v56;
  if (!v56)
  {
    goto LABEL_138;
  }

  if (v55)
  {
    memcpy((v56 + 4), *(a8 + 8), v55);
  }

  if (v47 < 2)
  {
    LOBYTE(v58) = 0;
    *(input_message_buffer.value + 1) = 0;
    *(input_message_buffer.value + 2) = 0;
  }

  else
  {
    v57 = *(a2 + 22);
    if (HIBYTE(v57))
    {
      LOBYTE(v58) = -1;
      *(input_message_buffer.value + 1) = -1;
      *(input_message_buffer.value + 2) = -1;
    }

    else
    {
      *(input_message_buffer.value + 1) = BYTE2(v57);
      *(input_message_buffer.value + 2) = BYTE1(*(a2 + 22));
      v58 = *(a2 + 22);
    }
  }

  *(input_message_buffer.value + 3) = v58;
  *input_message_buffer.value = v47;
  if ((*(a2[3] + 10))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = gss_wrap(&minor_status, *(a1 + 3), 0, 0, &input_message_buffer, 0, &output_message_buffer);
  if ((*(a2[3] + 11))(*(a1 + 26)))
  {
    return 0xFFFFFFFFLL;
  }

  (*(a2[3] + 8))(input_message_buffer.value);
  input_message_buffer.value = 0;
  if (v28 >= 0x10000)
  {
    goto LABEL_157;
  }

  if (a7)
  {
    *a7 = output_message_buffer.length;
  }

  if (output_message_buffer.value)
  {
    if (a6 && a7)
    {
      v48 = _plug_buf_alloc(*(a1 + 10), a1 + 22, a1 + 46, *a7);
      if (v48)
      {
LABEL_83:
        v49 = v48;
        if (!(*(a2[3] + 10))(*(a1 + 26)))
        {
          gss_release_buffer(&minor_status, &output_message_buffer);
          if ((*(a2[3] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v49;
          }
        }

        return 0xFFFFFFFFLL;
      }

      memcpy(*(a1 + 22), output_message_buffer.value, *a7);
      *a6 = *(a1 + 22);
    }

    if ((*(a2[3] + 10))(*(a1 + 26)))
    {
      return 0xFFFFFFFFLL;
    }

    gss_release_buffer(&minor_status, &output_message_buffer);
    if ((*(a2[3] + 11))(*(a1 + 26)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a1 = 4;
  *a8 = 1;
  if (*(a2 + 22) >= 0xFFFFFFu)
  {
    v59 = 0xFFFFFF;
  }

  else
  {
    v59 = *(a2 + 22);
  }

  _plug_decode_init((a1 + 22), *(a1 + 10), v59);
  return 0;
}

uint64_t login_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &login_server_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "LOGIN version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t login_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &login_client_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "Version mismatch in LOGIN", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t login_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*(*(a2 + 80) + 40))(24);
  if (v7)
  {
    v8 = v7;
    result = 0;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    *v8 = 1;
    *a5 = v8;
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 77);
    return 4294967294;
  }

  return result;
}

uint64_t login_server_mech_step(int *a1, uint64_t a2, const char *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  *a5 = 0;
  *a6 = 0;
  if (!a1)
  {
    return 4294967291;
  }

  v13 = *a1;
  if (*a1 != 3)
  {
    if (v13 != 2)
    {
      if (v13 != 1)
      {
        (*(*(a2 + 80) + 256))(0, 1, "Invalid LOGIN server step %d\n", *a1);
        return 0xFFFFFFFFLL;
      }

      *a1 = 2;
      if (!a4)
      {
        *a6 = 9;
        *a5 = "Username:";
        return 1;
      }
    }

    v14 = *(a2 + 80);
    if (a4 >= 0x401)
    {
      (*(v14 + 264))(*(v14 + 8), 0, "username too long (>1024 characters)");
      return 4294967291;
    }

    v17 = (*(v14 + 40))(a4 + 17);
    *(a1 + 1) = v17;
    if (v17)
    {
      strncpy(v17, a3, a4);
      a1[4] = a4;
      *(*(a1 + 1) + a4) = 0;
      *a6 = 9;
      *a5 = "Password:";
      *a1 = 3;
      return 1;
    }

    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 139);
    return 4294967294;
  }

  v15 = *(a2 + 80);
  if (a4 >= 0x401)
  {
    (*(v15 + 264))(*(v15 + 8), 0, "clientinlen is > 1024 characters in LOGIN plugin");
    return 4294967291;
  }

  v19 = a4;
  v20 = (*(v15 + 40))(a4 + 17);
  v25 = v20;
  if (!v20)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 171);
    return 4294967294;
  }

  v21 = v20;
  v22 = v20 + 8;
  strncpy((v20 + 8), a3, v19);
  *(v22 + v19) = 0;
  *v21 = v19;
  v23 = (*(a2 + 144))(*(*(a2 + 80) + 8), *(a1 + 1), a1[4], 7, a7);
  if (v23)
  {
    return v23;
  }

  v16 = (*(*(a2 + 80) + 200))(*(*(a2 + 80) + 8), *(a7 + 16), *(a7 + 28), v22, *v21);
  _plug_free_secret(*(a2 + 80), &v25);
  if (!v16)
  {
    *a5 = 0;
    *a6 = 0;
    *a7 = 1;
    *(a7 + 136) = 0;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0;
  }

  return v16;
}

uint64_t login_server_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8))
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t login_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(24);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v6[1] = 0;
    v6[2] = 0;
    *v6 = 0;
    *v6 = 1;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 294);
    return 4294967294;
  }

  return result;
}

uint64_t login_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void ***a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v19 = 0;
  if (!a6)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 322);
    return 4294967289;
  }

  if (*a1 == 2)
  {
    if (!a3)
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Server didn't issue challenge for PASSWORD", a4);
      return 4294967291;
    }

    v15 = (a1 + 8);
    if (*(a1 + 8))
    {
      LODWORD(password) = 0;
    }

    else
    {
      password = _plug_get_password(*(a2 + 24), (a1 + 8), (a1 + 16), a5);
      if ((password & 0xFFFFFFFD) != 0)
      {
        return password;
      }
    }

    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (password == 2)
    {
      prompts = _plug_make_prompts(*(a2 + 24), a5, 0, 0, 0, 0, "Please enter your password", 0, 0, 0, 0, 0, 0, 0);
      goto LABEL_27;
    }

    v17 = *v15;
    if (*v15)
    {
      if (a7)
      {
        *a7 = *v17;
      }

      password = 0;
      *a6 = v17 + 1;
      *a8 = 1;
      *(a8 + 136) = 0;
      *(a8 + 32) = 0u;
      *(a8 + 48) = 0u;
      *(a8 + 64) = 0;
      return password;
    }

    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/login.c near line %d", 425);
    return 4294967289;
  }

  if (*a1 != 1)
  {
    (*(*(a2 + 24) + 256))(0, 1, "Invalid LOGIN client step %d\n", *a1);
    if (a7)
    {
      *a7 = 0;
    }

    *a6 = 0;
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 80) > *(a2 + 112))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of LOGIN plugin", a4);
    return 4294967281;
  }

  if (!a3)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Server didn't issue challenge for USERNAME", a4);
    return 4294967291;
  }

  if (*(a8 + 8))
  {
    LODWORD(password) = 0;
  }

  else
  {
    password = _plug_get_simple(*(a2 + 24), 16386, 1, &v19, a5);
    if ((password & 0xFFFFFFFD) != 0)
    {
      return password;
    }
  }

  if (a5 && *a5)
  {
    (*(*(a2 + 24) + 64))();
    *a5 = 0;
  }

  if (password == 2)
  {
    prompts = _plug_make_prompts(*(a2 + 24), a5, 0, 0, "Please enter your authentication name", 0, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_27:
    if (prompts)
    {
      return prompts;
    }

    else
    {
      return 2;
    }
  }

  password = (*(a2 + 152))(*(*(a2 + 24) + 8), v19, 0, 3, a8);
  if (!password)
  {
    if (a7)
    {
      *a7 = *(a8 + 28);
    }

    *a6 = *(a8 + 16);
    *a1 = 2;
    return 1;
  }

  return password;
}

uint64_t login_client_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 16))
    {
      _plug_free_secret(a2, (result + 8));
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

void _sasl_MD5Update(MD5_CTX *a1, const unsigned __int8 *a2, unsigned int a3)
{
  v6 = (a1->count[0] >> 3) & 0x3F;
  *a1->count += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    v9 = -v7;
    v10 = v6 + 24;
    v11 = a2;
    do
    {
      v12 = *v11++;
      *(a1->state + v10++) = v12;
    }

    while (!__CFADD__(v9++, 1));
    MD5Transform(a1, a1->buffer);
    v14 = v6 ^ 0x7F;
    if (v14 >= a3)
    {
      v8 = 0;
    }

    else
    {
      do
      {
        MD5Transform(a1, &a2[v14 - 63]);
        v14 += 64;
      }

      while (v14 < a3);
      v8 = 0;
      v7 = v14 - 63;
    }
  }

  else
  {
    v7 = 0;
    v8 = v6;
  }

  v15 = a3 - v7;
  if (a3 != v7)
  {
    v16 = &a1->buffer[v8];
    v17 = &a2[v7];
    do
    {
      v18 = *v17++;
      *v16++ = v18;
      --v15;
    }

    while (v15);
  }
}

void _sasl_MD5Final(unsigned __int8 a1[16], MD5_CTX *a2)
{
  v4 = 0;
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    *(v10 + v4 * 4) = a2->count[v4];
    ++v4;
  }

  while (v4 != 2);
  v5 = (a2->count[0] >> 3) & 0x3F;
  if (v5 >= 0x38)
  {
    v6 = 120;
  }

  else
  {
    v6 = 56;
  }

  _sasl_MD5Update(a2, PADDING, v6 - v5);
  _sasl_MD5Update(a2, v10, 8u);
  v7 = 0;
  v8 = a1 + 1;
  do
  {
    v9 = &a2->state[v7];
    *(v8 - 1) = *v9;
    v8[1] = *(v9 + 1);
    v8[2] = *(v9 + 3);
    ++v7;
    v8 += 4;
  }

  while (v7 != 4);

  MD5_memset(a2, 0, 0x58uLL);
}

void _sasl_hmac_md5_init(HMAC_MD5_CTX *hmac, const unsigned __int8 *key, int key_len)
{
  v3 = key;
  v18 = *MEMORY[0x277D85DE8];
  memset(v12, 170, sizeof(v12));
  if (key_len >= 65)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__dst.buffer[48] = v5;
    *&__dst.buffer[32] = v5;
    *&__dst.buffer[16] = v5;
    *__dst.buffer = v5;
    *__dst.count = 0;
    *__dst.state = xmmword_22D0EEF50;
    _sasl_MD5Update(&__dst, key, key_len);
    v3 = v12;
    _sasl_MD5Final(v12, &__dst);
    memset(&__dst, 0, 65);
    *v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    key_len = 16;
    v17 = 0;
LABEL_4:
    v6 = key_len;
    memcpy(&__dst, v3, key_len);
    memcpy(v13, v3, v6);
    goto LABEL_5;
  }

  memset(&__dst, 0, 65);
  *v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  if (key_len)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = 0;
  v8.i64[0] = 0x3636363636363636;
  v8.i64[1] = 0x3636363636363636;
  v9.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v9.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *&__dst.state[v7] = veorq_s8(*&__dst.state[v7], v8);
    *&v13[v7 * 4] = veorq_s8(*&v13[v7 * 4], v9);
    v7 += 4;
  }

  while (v7 != 16);
  *hmac->ictx.count = 0;
  *hmac->ictx.state = xmmword_22D0EEF50;
  _sasl_MD5Update(&hmac->ictx, &__dst, 0x40u);
  *hmac->octx.state = xmmword_22D0EEF50;
  p_octx = &hmac->octx;
  *p_octx->count = 0;
  _sasl_MD5Update(p_octx, v13, 0x40u);
}

void _sasl_hmac_md5_precalc(HMAC_MD5_STATE *hmac, const unsigned __int8 *key, int key_len)
{
  v7 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6.octx.buffer[32] = v4;
  *&v6.octx.buffer[48] = v4;
  *v6.octx.buffer = v4;
  *&v6.octx.buffer[16] = v4;
  *&v6.ictx.buffer[56] = v4;
  *&v6.octx.state[2] = v4;
  *&v6.ictx.buffer[24] = v4;
  *&v6.ictx.buffer[40] = v4;
  *v6.ictx.count = v4;
  *&v6.ictx.buffer[8] = v4;
  *v6.ictx.state = v4;
  _sasl_hmac_md5_init(&v6, key, key_len);
  v5 = vrev32q_s8(*v6.octx.state);
  *hmac->istate = vrev32q_s8(*v6.ictx.state);
  *hmac->ostate = v5;
}

void _sasl_hmac_md5_import(HMAC_MD5_CTX *hmac, HMAC_MD5_STATE *state)
{
  *&hmac->octx.buffer[32] = 0u;
  *&hmac->octx.buffer[48] = 0u;
  *hmac->octx.buffer = 0u;
  *&hmac->octx.buffer[16] = 0u;
  *&hmac->ictx.buffer[56] = 0u;
  *&hmac->octx.state[2] = 0u;
  *&hmac->ictx.buffer[24] = 0u;
  *&hmac->ictx.buffer[40] = 0u;
  *hmac->ictx.count = 0u;
  *&hmac->ictx.buffer[8] = 0u;
  ostate = state->ostate;
  v3 = 4;
  v4 = hmac;
  *hmac->ictx.state = 0u;
  do
  {
    v4->ictx.state[0] = bswap32(*(ostate - 4));
    v5 = *ostate++;
    v4->octx.state[0] = bswap32(v5);
    v4 = (v4 + 4);
    --v3;
  }

  while (v3);
  hmac->octx.count[0] = 512;
  hmac->ictx.count[0] = 512;
}

void _sasl_hmac_md5_final(unsigned __int8 digest[16], HMAC_MD5_CTX *hmac)
{
  _sasl_MD5Final(digest, &hmac->ictx);
  _sasl_MD5Update(&hmac->octx, digest, 0x10u);

  _sasl_MD5Final(digest, &hmac->octx);
}

void _sasl_hmac_md5(const unsigned __int8 *text, int text_len, const unsigned __int8 *key, int key_len, unsigned __int8 digest[16])
{
  v6 = key;
  v22 = *MEMORY[0x277D85DE8];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v21.buffer[48] = v9;
  *&v21.buffer[32] = v9;
  *&v21.buffer[16] = v9;
  *v21.buffer = v9;
  memset(v15, 170, sizeof(v15));
  if (key_len >= 65)
  {
    *&__dst.buffer[48] = v9;
    *&__dst.buffer[32] = v9;
    *&__dst.buffer[16] = v9;
    *__dst.buffer = v9;
    *__dst.count = 0;
    *__dst.state = xmmword_22D0EEF50;
    _sasl_MD5Update(&__dst, key, key_len);
    v6 = v15;
    _sasl_MD5Final(v15, &__dst);
    memset(&__dst, 0, 65);
    *v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    key_len = 16;
    v20 = 0;
LABEL_4:
    v10 = key_len;
    memcpy(&__dst, v6, key_len);
    memcpy(v16, v6, v10);
    goto LABEL_5;
  }

  memset(&__dst, 0, 65);
  *v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  if (key_len)
  {
    goto LABEL_4;
  }

LABEL_5:
  v11 = 0;
  v12.i64[0] = 0x3636363636363636;
  v12.i64[1] = 0x3636363636363636;
  v13.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v13.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *&__dst.state[v11] = veorq_s8(*&__dst.state[v11], v12);
    *&v16[v11 * 4] = veorq_s8(*&v16[v11 * 4], v13);
    v11 += 4;
  }

  while (v11 != 16);
  *v21.count = 0;
  *v21.state = xmmword_22D0EEF50;
  _sasl_MD5Update(&v21, &__dst, 0x40u);
  _sasl_MD5Update(&v21, text, text_len);
  _sasl_MD5Final(digest, &v21);
  *v21.count = 0;
  *v21.state = xmmword_22D0EEF50;
  _sasl_MD5Update(&v21, v16, 0x40u);
  _sasl_MD5Update(&v21, digest, 0x10u);
  _sasl_MD5Final(digest, &v21);
}

int8x16_t MD5Transform(_DWORD *a1, const char *a2)
{
  v95 = vld4q_s8(a2);
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = vmovl_u8(*v95.val[0].i8);
  v6 = vmovl_u16(*v5.i8);
  v7 = vmovl_high_u8(v95.val[0]);
  v8 = vmovl_high_u8(v95.val[1]);
  v9 = vmovl_u8(*v95.val[1].i8);
  v10 = vorrq_s8(vshll_high_n_u16(v8, 8uLL), vmovl_high_u16(v7));
  v11 = vorrq_s8(vshll_n_u16(*v8.i8, 8uLL), vmovl_u16(*v7.i8));
  v12 = vorrq_s8(vshll_high_n_u16(v9, 8uLL), vmovl_high_u16(v5));
  v13 = vorrq_s8(vshll_n_u16(*v9.i8, 8uLL), v6);
  _Q3 = vmovl_u8(*v95.val[2].i8);
  _Q4 = vmovl_high_u8(v95.val[2]);
  __asm { SHLL2           V5.4S, V4.8H, #0x10 }

  v21 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V3.8H, #0x10 }

  v23 = vorrq_s8(v13, vshll_n_s16(*_Q3.i8, 0x10uLL));
  v24 = vorrq_s8(v11, v21);
  v25 = vmovl_high_u8(v95.val[3]);
  v26 = vmovl_u8(*v95.val[3].i8);
  v27 = vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v26.i8), 0x18uLL));
  HIDWORD(v28) = *a1 + (v3 & ~v2 | v4 & v2) + v27.i32[0] - 680876936;
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 25) + v2;
  HIDWORD(v28) = v3 + v27.i32[1] - 389564586 + (v29 & v2 | v4 & ~v29);
  LODWORD(v28) = HIDWORD(v28);
  v30 = (v28 >> 20) + v29;
  HIDWORD(v28) = v4 + v27.i32[2] + 606105819 + (v30 & v29 | v2 & ~v30);
  LODWORD(v28) = HIDWORD(v28);
  v31 = vorrq_s8(vorrq_s8(v12, _Q4), vshlq_n_s32(vmovl_high_u16(v26), 0x18uLL));
  v32 = (v28 >> 15) + v30;
  HIDWORD(v28) = v2 + v27.i32[3] - 1044525330 + (v32 & v30 | v29 & ~v32);
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v31.i32[0] + v29 - 176418897 + (v33 & v32 | v30 & ~v33);
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v31.i32[1] + v30 + 1200080426 + (v34 & v33 | v32 & ~v34);
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v31.i32[2] + v32 - 1473231341 + (v35 & v34 | v33 & ~v35);
  LODWORD(v28) = HIDWORD(v28);
  v36 = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v37 = (v28 >> 15) + v35;
  HIDWORD(v28) = v31.i32[3] + v33 - 45705983 + (v37 & v35 | v34 & ~v37);
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 10) + v37;
  HIDWORD(v28) = v36.i32[0] + v34 + 1770035416 + (v38 & v37 | v35 & ~v38);
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 25) + v38;
  HIDWORD(v28) = v36.i32[1] + v35 - 1958414417 + (v39 & v38 | v37 & ~v39);
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 20) + v39;
  HIDWORD(v28) = v36.i32[2] + v37 - 42063 + (v40 & v39 | v38 & ~v40);
  LODWORD(v28) = HIDWORD(v28);
  result = vorrq_s8(vorrq_s8(v10, _Q5), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  v42 = (v28 >> 15) + v40;
  HIDWORD(v28) = v36.i32[3] + v38 - 1990404162 + (v42 & v40 | v39 & ~v42);
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 10) + v42;
  HIDWORD(v28) = result.i32[0] + v39 + 1804603682 + (v43 & v42 | v40 & ~v43);
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 25) + v43;
  HIDWORD(v28) = result.i32[1] + v40 - 40341101 + (v44 & v43 | v42 & ~v44);
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 20) + v44;
  HIDWORD(v28) = result.i32[2] + v42 - 1502002290 + (v45 & v44 | v43 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 15) + v45;
  HIDWORD(v28) = result.i32[3] + v43 + 1236535329 + (v46 & v45 | v44 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 10) + v46;
  HIDWORD(v28) = v27.i32[1] + v44 - 165796510 + (v47 & v45 | v46 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 27) + v47;
  HIDWORD(v28) = v31.i32[2] + v45 - 1069501632 + (v48 & v46 | v47 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 23) + v48;
  HIDWORD(v28) = v36.i32[3] + v46 + 643717713 + (v49 & v47 | v48 & ~v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 18) + v49;
  HIDWORD(v28) = v27.i32[0] + v47 - 373897302 + (v50 & v48 | v49 & ~v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 12) + v50;
  HIDWORD(v28) = v31.i32[1] + v48 - 701558691 + (v51 & v49 | v50 & ~v49);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 27) + v51;
  HIDWORD(v28) = v36.i32[2] + v49 + 38016083 + (v52 & v50 | v51 & ~v50);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 23) + v52;
  HIDWORD(v28) = result.i32[3] + v50 - 660478335 + (v53 & v51 | v52 & ~v51);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 18) + v53;
  HIDWORD(v28) = v31.i32[0] + v51 - 405537848 + (v54 & v52 | v53 & ~v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 12) + v54;
  HIDWORD(v28) = v36.i32[1] + v52 + 568446438 + (v55 & v53 | v54 & ~v53);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v55;
  HIDWORD(v28) = result.i32[2] + v53 - 1019803690 + (v56 & v54 | v55 & ~v54);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v27.i32[3] + v54 - 187363961 + (v57 & v55 | v56 & ~v55);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v36.i32[0] + v55 + 1163531501 + (v58 & v56 | v57 & ~v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = (v28 >> 12) + v58;
  HIDWORD(v28) = result.i32[1] + v56 - 1444681467 + (v59 & v57 | v58 & ~v57);
  LODWORD(v28) = HIDWORD(v28);
  v60 = (v28 >> 27) + v59;
  HIDWORD(v28) = v27.i32[2] + v57 - 51403784 + (v60 & v58 | v59 & ~v58);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 23) + v60;
  HIDWORD(v28) = v31.i32[3] + v58 + 1735328473 + (v61 & v59 | v60 & ~v59);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 18) + v61;
  HIDWORD(v28) = result.i32[0] + v59 - 1926607734 + (v62 & v60 | v61 & ~v60);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 12) + v62;
  HIDWORD(v28) = v31.i32[1] + v60 - 378558 + (v63 ^ v62 ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 28) + v63;
  HIDWORD(v28) = v36.i32[0] + v61 - 2022574463 + (v63 ^ v62 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 21) + v64;
  HIDWORD(v28) = v36.i32[3] + v62 + 1839030562 + (v64 ^ v63 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 16) + v65;
  HIDWORD(v28) = result.i32[2] + v63 - 35309556 + (v65 ^ v64 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 9) + v66;
  HIDWORD(v28) = v27.i32[1] + v64 - 1530992060 + (v66 ^ v65 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 28) + v67;
  HIDWORD(v28) = v31.i32[0] + v65 + 1272893353 + (v67 ^ v66 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 21) + v68;
  HIDWORD(v28) = v31.i32[3] + v66 - 155497632 + (v68 ^ v67 ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 16) + v69;
  HIDWORD(v28) = v36.i32[2] + v67 - 1094730640 + (v69 ^ v68 ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 9) + v70;
  HIDWORD(v28) = result.i32[1] + v68 + 681279174 + (v70 ^ v69 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 28) + v71;
  HIDWORD(v28) = v27.i32[0] + v69 - 358537222 + (v71 ^ v70 ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 21) + v72;
  HIDWORD(v28) = v27.i32[3] + v70 - 722521979 + (v72 ^ v71 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 16) + v73;
  HIDWORD(v28) = v31.i32[2] + v71 + 76029189 + (v73 ^ v72 ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 9) + v74;
  HIDWORD(v28) = v36.i32[1] + v72 - 640364487 + (v74 ^ v73 ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 28) + v75;
  HIDWORD(v28) = result.i32[0] + v73 - 421815835 + (v75 ^ v74 ^ v76);
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 21) + v76;
  HIDWORD(v28) = result.i32[3] + v74 + 530742520 + (v76 ^ v75 ^ v77);
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 16) + v77;
  HIDWORD(v28) = v27.i32[2] + v75 - 995338651 + (v77 ^ v76 ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 9) + v78;
  HIDWORD(v28) = v27.i32[0] + v76 - 198630844 + ((v79 | ~v77) ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 26) + v79;
  HIDWORD(v28) = v31.i32[3] + v77 + 1126891415 + ((v80 | ~v78) ^ v79);
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 22) + v80;
  HIDWORD(v28) = result.i32[2] + v78 - 1416354905 + ((v81 | ~v79) ^ v80);
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 17) + v81;
  HIDWORD(v28) = v31.i32[1] + v79 - 57434055 + ((v82 | ~v80) ^ v81);
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 11) + v82;
  HIDWORD(v28) = result.i32[0] + v80 + 1700485571 + ((v83 | ~v81) ^ v82);
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 26) + v83;
  HIDWORD(v28) = v27.i32[3] + v81 - 1894986606 + ((v84 | ~v82) ^ v83);
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 22) + v84;
  HIDWORD(v28) = v36.i32[2] + v82 - 1051523 + ((v85 | ~v83) ^ v84);
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v85;
  HIDWORD(v28) = v27.i32[1] + v83 - 2054922799 + ((v86 | ~v84) ^ v85);
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v36.i32[0] + v84 + 1873313359 + ((v87 | ~v85) ^ v86);
  LODWORD(v28) = HIDWORD(v28);
  v88 = (v28 >> 26) + v87;
  HIDWORD(v28) = result.i32[3] + v85 - 30611744 + ((v88 | ~v86) ^ v87);
  LODWORD(v28) = HIDWORD(v28);
  v89 = (v28 >> 22) + v88;
  HIDWORD(v28) = v31.i32[2] + v86 - 1560198380 + ((v89 | ~v87) ^ v88);
  LODWORD(v28) = HIDWORD(v28);
  v90 = (v28 >> 17) + v89;
  HIDWORD(v28) = result.i32[1] + v87 + 1309151649 + ((v90 | ~v88) ^ v89);
  LODWORD(v28) = HIDWORD(v28);
  v91 = (v28 >> 11) + v90;
  HIDWORD(v28) = v31.i32[0] + v88 - 145523070 + ((v91 | ~v89) ^ v90);
  LODWORD(v28) = HIDWORD(v28);
  v92 = (v28 >> 26) + v91;
  HIDWORD(v28) = v36.i32[3] + v89 - 1120210379 + ((v92 | ~v90) ^ v91);
  LODWORD(v28) = HIDWORD(v28);
  v93 = (v28 >> 22) + v92;
  HIDWORD(v28) = v27.i32[2] + v90 + 718787259 + ((v93 | ~v91) ^ v92);
  LODWORD(v28) = HIDWORD(v28);
  v94 = (v28 >> 17) + v93;
  HIDWORD(v28) = v36.i32[1] + v91 - 343485551 + ((v94 | ~v92) ^ v93);
  LODWORD(v28) = HIDWORD(v28);
  *a1 += v92;
  a1[1] = v94 + v2 + (v28 >> 11);
  a1[2] = v94 + v4;
  a1[3] = v93 + v3;
  return result;
}

void *MD5_memset(void *result, int a2, size_t __len)
{
  if (__len)
  {
    return memset(result, a2, __len);
  }

  return result;
}

uint64_t ntlm_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &ntlm_server_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "NTLM version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t ntlm_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &ntlm_client_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "NTLM version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t ntlm_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __b[129] = *MEMORY[0x277D85DE8];
  v7 = (*(*(a2 + 80) + 40))(32);
  if (!v7)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/ntlm.c near line %d", 1353);
    return 4294967294;
  }

  v8 = v7;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v44 = -1431655766;
  (*(*(a2 + 80) + 32))(*(*(a2 + 80) + 24), "NTLM", "ntlm_server", &v45, &v44);
  if (!v45)
  {
    v10 = -1;
    goto LABEL_59;
  }

  __s = 0xAAAAAAAAAAAAAAAALL;
  if (_plug_strdup(*(a2 + 80), v45, &__s, 0))
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/ntlm.c near line %d", 1365);
    return 4294967294;
  }

  v41 = v8;
  v42 = a5;
  if (v44)
  {
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D85DE0];
    while (1)
    {
      v14 = __s;
      v15 = __s[v11];
      if ((v15 & 0x80000000) != 0)
      {
        break;
      }

      if ((*(v13 + 4 * v15 + 60) & 0x4000) == 0)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (++v11 >= v44)
      {
        v16 = v12;
        goto LABEL_18;
      }
    }

    if (__maskrune(__s[v11], 0x4000uLL))
    {
      goto LABEL_13;
    }

LABEL_12:
    v14[v12++] = v15;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_18:
  __s[v16] = 0;
  v17 = __s;
  do
  {
    while (1)
    {
LABEL_19:
      while (1)
      {
        v45 = v17;
        v18 = strchr(v17, 44);
        if (v18)
        {
          *v18 = 0;
          v19 = v45;
          v17 = v18 + 1;
        }

        else
        {
          v19 = v17;
          v17 = 0;
        }

        v20 = *(a2 + 80);
        v21 = *(a2 + 16);
        v48 = 0;
        memset(__b, 170, 0x401uLL);
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v58[0] = v22;
        v58[1] = v22;
        v57 = -21846;
        v56[0] = v22;
        v56[1] = v22;
        v55 = -21846;
        v54[0] = v22;
        v54[1] = v22;
        v52 = 0;
        v50 = 0;
        v51 = 0u;
        memset(&v49, 0, sizeof(v49));
        v49.ai_socktype = 1;
        v49.ai_flags = 2;
        v23 = getaddrinfo(v19, "139", &v49, &v48);
        if (!v23)
        {
          break;
        }

        v24 = *(v20 + 256);
        v25 = gai_strerror(v23);
        v24(0, 1, "NTLM: getaddrinfo %s/%s: %s", v19, "139", v25);
        if (!v17)
        {
          goto LABEL_57;
        }
      }

      v26 = v48;
      ai_family = v48->ai_family;
      if (ai_family == 2 || ai_family == 30)
      {
        break;
      }

      ai_canonname = v48->ai_canonname;
      if (!ai_canonname)
      {
        ai_canonname = v19;
      }

      (*(v20 + 256))(0, 1, "NTLM: no IP address info for %s", ai_canonname);
      freeaddrinfo(v48);
      if (!v17)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v28 = socket(v26->ai_family, v26->ai_socktype, v26->ai_protocol);
      if ((v28 & 0x80000000) == 0)
      {
        break;
      }

LABEL_37:
      v26 = v26->ai_next;
      if (!v26)
      {
        if (getnameinfo(v48->ai_addr, v48->ai_addrlen, 0, 0, v58, 0x20u, 8))
        {
          *&v58[0] = 0x6E776F6E6B6E75;
        }

        v34 = v48->ai_canonname;
        if (!v34)
        {
          v34 = v19;
        }

        (*(v20 + 256))(0, 1, "NTLM: couldn't connect to %s/%s", v34, v58);
        freeaddrinfo(v48);
LABEL_43:
        if (v17)
        {
          goto LABEL_19;
        }

        goto LABEL_57;
      }
    }

    v10 = v28;
    if (connect(v28, v26->ai_addr, v26->ai_addrlen) < 0)
    {
      v29 = *__error();
      close(v10);
      if (v26->ai_family == 30)
      {
        v30 = 42;
      }

      else
      {
        v30 = 10;
      }

      if (getnameinfo(v26->ai_addr, v26->ai_addrlen, __b, 0x401u, v58, 0x20u, v30))
      {
        __b[0] = 0x6E776F6E6B6E75;
        *&v58[0] = 0x6E776F6E6B6E75;
      }

      error_message = _plug_get_error_message(v20, v29);
      v32 = error_message;
      v33 = v48->ai_canonname;
      if (!v33)
      {
        v33 = v19;
      }

      (*(v20 + 256))(0, 3, "NTLM: connect %s[%s]/%s: %s", v33, __b, v58, error_message);
      (*(v20 + 64))(v32);
      goto LABEL_37;
    }

    freeaddrinfo(v48);
    v47 = 1140850817;
    make_netbios_name(v19, v56);
    make_netbios_name(v21, v54);
    v50.iov_base = &v47;
    v50.iov_len = 4;
    *&v51 = v56;
    *(&v51 + 1) = 34;
    v52 = v54;
    v53 = 34;
    if (retry_writev(v10, &v50, 3) == -1)
    {
      (*(v20 + 256))(0, 1, "NTLM: error sending NetBIOS session request");
      close(v10);
      goto LABEL_43;
    }

    v36 = retry_read(v10, &v47, 4u);
    v37 = v47;
    v47 = bswap32(v47);
    if (v36 != -1 && v37 == 130)
    {
      v40 = 1;
      goto LABEL_58;
    }

    v46 = -113;
    retry_read(v10, &v46, 1u);
    v38 = v46 ^ 0x80;
    v39 = "Unspecified error";
    if (v38 <= 3)
    {
      v39 = off_27874D6B0[v38];
    }

    (*(v20 + 256))(0, 1, "NTLM: negative NetBIOS session response: %s", v39);
    close(v10);
  }

  while (v17);
LABEL_57:
  v40 = 0;
  v10 = -1;
LABEL_58:
  (*(*(a2 + 80) + 64))(__s);
  v8 = v41;
  a5 = v42;
  if (!v40)
  {
    return 4294967272;
  }

LABEL_59:
  result = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *v8 = 1;
  *(v8 + 28) = v10;
  *a5 = v8;
  return result;
}

uint64_t ntlm_server_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int *a6, uint64_t a7)
{
  v83 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *a6 = 0;
  if (!a1)
  {
    return 4294967291;
  }

  v10 = a4;
  (*(*(a2 + 80) + 256))(0, 5, "NTLM server step %d\n", *a1);
  if (*a1 == 2)
  {
    v70 = 0uLL;
    v68 = 0;
    v69 = 0;
    if (!a3 || v10 < 0x34 || *a3 != 0x5053534D4C544ELL || (*(a3 + 8) | (*(a3 + 9) << 8) | (*(a3 + 10) << 16) | (*(a3 + 11) << 24)) != 3)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "client didn't issue valid NTLM response");
      return 4294967291;
    }

    v66 = -1431655766;
    v67 = -1431655766;
    v64 = -1431655766;
    v65 = -1431655766;
    v19 = unload_buffer(*(a2 + 80), (a3 + 12), &v70 + 1, &v67, 0, a3, v10);
    v63 = v19;
    if (v19)
    {
      goto LABEL_23;
    }

    v19 = unload_buffer(*(a2 + 80), (a3 + 20), &v70, &v66, 0, a3, v10);
    if (v19)
    {
      goto LABEL_23;
    }

    v19 = unload_buffer(*(a2 + 80), (a3 + 28), &v69, &v65, *(a1 + 4) & 1, a3, v10);
    if (v19)
    {
      goto LABEL_23;
    }

    v19 = unload_buffer(*(a2 + 80), (a3 + 36), &v68, &v64, *(a1 + 4) & 1, a3, v10);
    if (v19)
    {
      goto LABEL_23;
    }

    v31 = v70;
    if (v70 == 0 || *(&v70 + 1) && v67 < 0x18 || (v66 <= 0x17 ? (v33 = v70 == 0) : (v33 = 1), !v33 || (v34 = v68) == 0))
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "client issued incorrect/nonexistent responses");
      v20 = 4294967291;
      goto LABEL_24;
    }

    (*(*(a2 + 80) + 256))(0, 5, "client user: %s", v68);
    v35 = v69;
    if (v69)
    {
      (*(*(a2 + 80) + 256))(0, 5, "client domain: %s", v69);
    }

    if (*(a1 + 28) != -1)
    {
      v36 = smb_session_setup(*(a2 + 80), a1, v34, v35, *(&v31 + 1), v67, v31, v66);
      if (!v36)
      {
        v19 = (*(a2 + 144))(*(*(a2 + 80) + 8), v34, v64, 3, a7);
        if (v19)
        {
LABEL_23:
          v20 = v19;
          goto LABEL_24;
        }

        goto LABEL_82;
      }

      goto LABEL_94;
    }

    *&v78[0] = "*userPassword";
    *(&v78[0] + 1) = 0;
    v38.iov_base = 0xAAAAAAAAAAAAAAAALL;
    v38.iov_len = 0xAAAAAAAAAAAAAAAALL;
    v72 = v38;
    v73 = v38;
    v71 = v38;
    memset(v79, 170, 21);
    memset(dataOut, 170, 24);
    v36 = (*(*(a2 + 80) + 296))(*(a2 + 152), v78);
    if (v36 || (v36 = (*(a2 + 144))(*(*(a2 + 80) + 8), v34, v64, 3, a7), v36))
    {
LABEL_94:
      v39 = v36;
      goto LABEL_95;
    }

    if (((*(*(a2 + 80) + 312))(*(a2 + 152), v78, &v71) & 0x80000000) != 0 || !v71.iov_base || !v71.iov_len)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "no secret in database");
      if (*(a2 + 136))
      {
        v39 = 4294967279;
      }

      else
      {
        v39 = 4294967276;
      }

      goto LABEL_95;
    }

    v40 = strlen(*v71.iov_len);
    v41 = *(a2 + 80);
    if (!v40)
    {
      (*(v41 + 264))(*(v41 + 8), 0, "empty secret");
      v39 = 0xFFFFFFFFLL;
      goto LABEL_95;
    }

    v42 = v40;
    v43 = (*(v41 + 40))(v40 + 16);
    v62 = v43;
    if (!v43)
    {
      v39 = 4294967294;
      goto LABEL_95;
    }

    v44 = v43;
    *v43 = v42;
    strncpy((v43 + 8), *v71.iov_len, v42 + 1);
    (*(*(a2 + 80) + 360))(*(a2 + 152), *&v78[0]);
    v63 = 0;
    if (v31 && v66 >= 0x19)
    {
      (*(*(a2 + 80) + 256))(0, 5, "calculating NTv2 response");
      V2(dataOut, v44, v34, v35, (a1 + 8), (v31 + 16), v66 - 16, *(a2 + 80), (a1 + 16), (a1 + 24), &v63);
      if (*v31 != *&dataOut[0] || *(v31 + 8) != *(&dataOut[0] + 1))
      {
        v46 = "incorrect NTLMv2 response";
LABEL_131:
        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, v46);
        _plug_free_secret(*(a2 + 80), &v62);
        v39 = 4294967283;
        goto LABEL_95;
      }
    }

    else if (v31)
    {
      (*(*(a2 + 80) + 256))(0, 5, "calculating NT response");
      P16_nt(v79, v44, *(a2 + 80), (a1 + 16), (a1 + 24), &v63);
      v79[20] = 0;
      *&v79[16] = 0;
      E(dataOut, v79, 0x15u, (a1 + 8));
      if (*v31 != *&dataOut[0] || *(v31 + 8) != *(&dataOut[0] + 1) || *(v31 + 16) != *&dataOut[1])
      {
        v46 = "incorrect NTLM response";
        goto LABEL_131;
      }
    }

    else if (*(&v31 + 1))
    {
      (*(*(a2 + 80) + 256))(0, 5, "calculating LMv2 response");
      V2(dataOut, v44, v34, v35, (a1 + 8), (*(&v31 + 1) + 16), v67 - 16, *(a2 + 80), (a1 + 16), (a1 + 24), &v63);
      if (**(&v31 + 1) != *&dataOut[0] || *(*(&v31 + 1) + 8) != *(&dataOut[0] + 1))
      {
        (*(*(a2 + 80) + 256))(0, 5, "calculating LM response");
        P16_lm(v79, v44, v56, v57, v58, &v63);
        v79[20] = 0;
        *&v79[16] = 0;
        E(dataOut, v79, 0x15u, (a1 + 8));
        v59 = **(&v31 + 1) == *&dataOut[0] && *(*(&v31 + 1) + 8) == *(&dataOut[0] + 1);
        if (!v59 || *(*(&v31 + 1) + 16) != *&dataOut[1])
        {
          v46 = "incorrect LMv1/v2 response";
          goto LABEL_131;
        }
      }
    }

    v61 = v63;
    _plug_free_secret(*(a2 + 80), &v62);
    v39 = v61;
    if (!v61)
    {
LABEL_82:
      v20 = 0;
      *a7 = 1;
      *(a7 + 136) = 0;
      *(a7 + 32) = 0u;
      *(a7 + 48) = 0u;
      *(a7 + 64) = 0;
      goto LABEL_24;
    }

LABEL_95:
    v20 = v39;
LABEL_24:
    if (*(&v70 + 1))
    {
      (*(*(a2 + 80) + 64))();
    }

    if (v70)
    {
      (*(*(a2 + 80) + 64))();
    }

    if (v69)
    {
      (*(*(a2 + 80) + 64))();
    }

    v21 = v68;
    if (v68)
    {
      goto LABEL_59;
    }

    return v20;
  }

  if (*a1 != 1)
  {
    (*(*(a2 + 80) + 256))(0, 1, "Invalid NTLM server step %d\n", *a1);
    return 0xFFFFFFFFLL;
  }

  *(&v70 + 1) = 0;
  if (!a3 || v10 < 0x10 || *a3 != 0x5053534D4C544ELL || (*(a3 + 8) | (*(a3 + 9) << 8) | (*(a3 + 10) << 16) | (*(a3 + 11) << 24)) != 1)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "client didn't issue valid NTLM request");
    return 4294967291;
  }

  v14 = *(a3 + 12) | (*(a3 + 13) << 8) | (*(a3 + 14) << 16) | (*(a3 + 15) << 24);
  *(a1 + 4) = v14;
  (*(*(a2 + 80) + 256))(0, 5, "client flags: %x", v14);
  v15 = *(a1 + 4);
  if (v15)
  {
    v16 = 65533;
  }

  else
  {
    v16 = 0xFFFF;
  }

  *(a1 + 4) = v16 & v15;
  if (*(a1 + 28) == -1)
  {
    if ((v15 & 4) != 0)
    {
      v20 = _plug_strdup(*(a2 + 80), *(a2 + 16), &v70 + 1, 0);
      if (v20)
      {
        return v20;
      }

      *(a1 + 4) |= 0x20000u;
    }

    (*(*(a2 + 80) + 184))(*(*(a2 + 80) + 16), a1 + 8, 8);
    v23 = *(&v70 + 1);
    v24 = *(a1 + 4);
  }

  else
  {
    v17 = *(a2 + 80);
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78[0] = v18;
    v78[1] = v18;
    LOBYTE(v68) = 0;
    memset(dataOut, 0, sizeof(dataOut));
    v82 = 0;
    BYTE4(dataOut[0]) = 114;
    getpid();
    HIWORD(dataOut[1]) = 0;
    LOWORD(dataOut[1]) = 0;
    load_smb_header(v78, dataOut);
    v71.iov_base = &v70;
    v71.iov_len = 4;
    v72.iov_base = v78;
    v72.iov_len = 32;
    v73.iov_base = &v68;
    v73.iov_len = 1;
    v74 = &v69;
    v75 = 2;
    v76 = "\x02NT LM 0.12";
    v77 = 12;
    LODWORD(v70) = 788529152;
    LOWORD(v69) = 12;
    if (retry_writev(*(a1 + 28), &v71, 5) == -1)
    {
      (*(v17 + 256))(0, 1, "NTLM: error sending NEGPROT request");
      goto LABEL_46;
    }

    if (retry_read(*(a1 + 28), &v70, 4u) <= 3)
    {
      (*(v17 + 256))(0, 1, "NTLM: error reading NEGPROT response length");
LABEL_46:
      v20 = 0xFFFFFFFFLL;
      goto LABEL_58;
    }

    v27 = v70;
    v28 = bswap32(v70);
    if (_plug_buf_alloc(v17, (a1 + 16), (a1 + 24), v28))
    {
      (*(v17 + 264))(*(v17 + 8), 0, "cannot allocate NTLM NEGPROT response buffer");
      goto LABEL_49;
    }

    if (retry_read(*(a1 + 28), *(a1 + 16), v28) < v28)
    {
      (*(v17 + 256))(0, 1, "NTLM: error reading NEGPROT response");
      goto LABEL_46;
    }

    if (v28 <= 0x1F)
    {
      (*(v17 + 256))(0, 1, "NTLM: not enough data for NEGPROT response header");
      goto LABEL_46;
    }

    v32 = *(a1 + 16);
    unload_smb_header(v32, dataOut);
    if (LODWORD(dataOut[0]) != 1112364031 || BYTE4(dataOut[0]) != 114 || DWORD2(dataOut[0]) || (SBYTE12(dataOut[0]) & 0x80000000) == 0)
    {
      (*(v17 + 256))(0, 1, "NTLM: error in NEGPROT response header: %u", DWORD2(dataOut[0]));
      goto LABEL_46;
    }

    if (v27 == 0x20000000)
    {
      (*(v17 + 256))(0, 1, "NTLM: not enough data for NEGPROT response wordcount");
      goto LABEL_46;
    }

    LOBYTE(v68) = *(v32 + 32);
    if (v68 != 17)
    {
      (*(v17 + 256))(0, 1, "NTLM: incorrect NEGPROT wordcount for NT LM 0.12");
      goto LABEL_46;
    }

    v80 = -1431655766;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v79 = v37;
    *&v79[16] = v37;
    unload_negprot_resp(v32 + 33, v79);
    if (*v79 || (v79[2] & 0xB) != 3 || (*&v79[20] & 0x80000000) != 0 || BYTE2(v80) != 8)
    {
      (*(v17 + 256))(0, 1, "NTLM: error in NEGPROT response parameters");
      goto LABEL_46;
    }

    if (v28 - 67 <= 1)
    {
      (*(v17 + 256))(0, 1, "NTLM: not enough data for NEGPROT response bytecount");
      goto LABEL_46;
    }

    v47 = *(v32 + 67);
    if (v28 - 69 != v47)
    {
      (*(v17 + 256))(0, 1, "NTLM: incorrect bytecount for NEGPROT response data");
      goto LABEL_46;
    }

    *(a1 + 8) = *(v32 + 69);
    v24 = *(a1 + 4);
    if ((v24 & 4) != 0)
    {
      v48 = (v47 - 8);
      v49 = (*(v17 + 40))(v48);
      *(&v70 + 1) = v49;
      if (!v49)
      {
        (*(v17 + 264))(*(v17 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/ntlm.c near line %d");
        goto LABEL_49;
      }

      v23 = v49;
      memcpy(v49, (v32 + 77), v48);
      if (v48)
      {
        v50 = v23;
        v51 = v23;
        do
        {
          v52 = *v50;
          v50 += 2;
          *v51++ = v52 & 0x7F;
          LODWORD(v48) = v48 - 1;
        }

        while (v48);
      }

      v24 = *(a1 + 4) | 0x10000;
      *(a1 + 4) = v24;
    }

    else
    {
      v23 = 0;
    }
  }

  v25 = *(a2 + 80);
  v26 = 48;
  LODWORD(v71.iov_base) = 48;
  if (v23)
  {
    v26 = 2 * strlen(v23) + 48;
  }

  *a6 = v26;
  if (_plug_buf_alloc(v25, (a1 + 16), (a1 + 24), v26))
  {
    (*(v25 + 264))(*(v25 + 8), 0, "cannot allocate NTLM challenge");
LABEL_49:
    v20 = 4294967294;
    goto LABEL_58;
  }

  v29 = *(a1 + 16);
  bzero(v29, *a6);
  *v29 = 0x5053534D4C544ELL;
  *(v29 + 2) = 2;
  ucase(v23, 0);
  if (v23)
  {
    v30 = strlen(v23);
  }

  else
  {
    v30 = 0;
  }

  load_buffer(v29 + 12, v23, v30, v24 & 1, v29, &v71);
  *(v29 + 5) = v24;
  v29[3] = *(a1 + 8);
  *a5 = *(a1 + 16);
  *a1 = 2;
  v20 = 1;
LABEL_58:
  v21 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
LABEL_59:
    (*(*(a2 + 80) + 64))(v21);
  }

  return v20;
}

uint64_t ntlm_server_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 16))
    {
      (*(a2 + 64))();
    }

    v4 = *(v3 + 28);
    if (v4 != -1)
    {
      close(v4);
    }

    v5 = *(a2 + 64);

    return v5(v3);
  }

  return result;
}

char *make_netbios_name(const char *a1, _BYTE *a2)
{
  v4 = strcspn(a1, ".");
  v5 = v4;
  if (v4 >= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = v4;
  }

  v7 = strncpy(a2 + 18, a1, v6);
  result = ucase(v7, v6);
  *a2 = 32;
  if (!v5)
  {
    v10 = 1;
LABEL_10:
    v13 = &a2[v10 + 1];
    v14 = v6 - 16;
    v10 = v10 - 2 * v6 + 32;
    do
    {
      *(v13 - 1) = 16707;
      v13 += 2;
    }

    while (!__CFADD__(v14++, 1));
    goto LABEL_13;
  }

  v9 = a2 + 2;
  v10 = (2 * v6) | 1;
  v11 = v6;
  do
  {
    *(v9 - 1) = (*result >> 4) + 65;
    v12 = *result++;
    *v9 = (v12 & 0xF) + 65;
    v9 += 2;
    --v11;
  }

  while (v11);
  if (v5 <= 0xF)
  {
    goto LABEL_10;
  }

LABEL_13:
  a2[v10] = 0;
  return result;
}

uint64_t retry_writev(int a1, iovec *a2, int a3)
{
  v6 = 0;
  do
  {
    if (!a3)
    {
      break;
    }

    p_iov_len = &a2->iov_len;
    v8 = a3;
    while (1)
    {
      while (!a2->iov_len)
      {
        ++a2;
        p_iov_len += 2;
        --v8;
        if (!--a3)
        {
          return v6;
        }
      }

      v9 = a3 >= retry_writev_iov_max ? retry_writev_iov_max : a3;
      v10 = writev(a1, a2, v9);
      if (v10 != -1)
      {
        break;
      }

      if (*__error() != 22 || retry_writev_iov_max < 11)
      {
        if (*__error() != 4)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        retry_writev_iov_max = retry_writev_iov_max >> 1;
      }
    }

    v6 = (v6 + v10);
    if (a3 < 1)
    {
      i = 0;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v13 = v10 - *p_iov_len;
        if (v10 < *p_iov_len)
        {
          break;
        }

        *p_iov_len = 0;
        p_iov_len += 2;
        v10 = v13;
        if (!--v8)
        {
          return v6;
        }
      }

      v14 = *p_iov_len - v10;
      *(p_iov_len - 1) += v10;
      *p_iov_len = v14;
    }
  }

  while (i != a3);
  return v6;
}

uint64_t retry_read(int a1, char *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  while (1)
  {
    v6 = a3;
    v7 = recv(a1, a2, a3, 0);
    if ((v7 + 1) <= 1)
    {
      break;
    }

LABEL_7:
    v5 = (v7 + v5);
    if (v6 <= v7)
    {
      return v5;
    }

    a2 += v7;
    a3 = v6 - v7;
  }

  while (*__error() == 4 || *__error() == 35)
  {
    v7 = recv(a1, a2, v6, 0);
    if ((v7 + 1) >= 2)
    {
      goto LABEL_7;
    }
  }

  return 0xFFFFFFFFLL;
}

char *ucase(char *__s, size_t a2)
{
  v2 = a2;
  if (a2 || __s && (v2 = strlen(__s)) != 0)
  {
    if (__s)
    {
      v4 = __s;
      do
      {
        if (!*v4)
        {
          break;
        }

        *v4 = __toupper(*v4);
        ++v4;
        --v2;
      }

      while (v2);
    }
  }

  return __s;
}

uint64_t load_smb_header(uint64_t result, uint64_t a2)
{
  *result = 1112364031;
  *(result + 4) = *(a2 + 4);
  *(result + 5) = *(a2 + 8);
  *(result + 7) = *(a2 + 10);
  *(result + 8) = *(a2 + 11);
  *(result + 9) = *(a2 + 12);
  *(result + 10) = *(a2 + 14);
  *(result + 11) = *(a2 + 15);
  *(result + 12) = *(a2 + 16);
  *(result + 13) = *(a2 + 17);
  v2 = *(a2 + 18);
  *(result + 22) = *(a2 + 26);
  *(result + 14) = v2;
  *(result + 24) = *(a2 + 28);
  *(result + 25) = *(a2 + 29);
  *(result + 26) = *(a2 + 30);
  *(result + 27) = *(a2 + 31);
  *(result + 28) = *(a2 + 32);
  *(result + 29) = *(a2 + 33);
  *(result + 30) = *(a2 + 34);
  *(result + 31) = *(a2 + 35);
  return result;
}

uint64_t unload_smb_header(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  *(a2 + 8) = *(result + 5);
  *(a2 + 12) = *(result + 9);
  *(a2 + 14) = *(result + 10);
  *(a2 + 16) = *(result + 12);
  v2 = *(result + 14);
  *(a2 + 26) = *(result + 22);
  *(a2 + 18) = v2;
  *(a2 + 28) = *(result + 24);
  *(a2 + 30) = *(result + 26);
  *(a2 + 32) = *(result + 28);
  *(a2 + 34) = *(result + 30);
  return result;
}

uint64_t unload_negprot_resp(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 2) = *(result + 2);
  *(a2 + 4) = *(result + 3);
  *(a2 + 6) = *(result + 5);
  *(a2 + 8) = *(result + 7);
  *(a2 + 12) = *(result + 11);
  *(a2 + 16) = *(result + 15);
  *(a2 + 20) = *(result + 19);
  *(a2 + 24) = *(result + 23);
  *(a2 + 28) = *(result + 27);
  *(a2 + 32) = *(result + 31);
  *(a2 + 34) = *(result + 33);
  return result;
}

_BYTE *load_buffer(_BYTE *result, char *a2, size_t __n, int a4, uint64_t a5, unsigned int *a6)
{
  v7 = __n;
  v8 = result;
  if (__n)
  {
    result = (a5 + *a6);
    if (a4)
    {
      v9 = __n;
      do
      {
        v10 = *a2++;
        *result = v10;
        result[1] = 0;
        result += 2;
        --v9;
      }

      while (v9);
      v7 = 2 * __n;
    }

    else
    {
      result = memcpy(result, a2, __n);
    }
  }

  *v8 = v7;
  *(v8 + 1) = v7;
  *(v8 + 2) = *a6;
  v8[6] = *(a6 + 1);
  v8[7] = *(a6 + 3);
  *a6 += v7;
  return result;
}

uint64_t unload_buffer(uint64_t a1, unsigned __int16 *a2, void *a3, unsigned int *a4, int a5, uint64_t a6, unsigned int a7)
{
  v9 = *a2;
  if (*a2)
  {
    v15 = (*(a1 + 40))((v9 + 1));
    *a3 = v15;
    if (!v15)
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/ntlm.c near line %d", 295);
      return 4294967294;
    }

    v16 = *(a2 + 1);
    if (a7 < v16 || a7 - v16 < v9)
    {
      return 4294967291;
    }

    if (a5)
    {
      v19 = v9 >> 1;
      if (v9 == 1)
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v20 = (a6 + v16);
        v21 = v9 >> 1;
        do
        {
          v22 = *v20;
          v20 += 2;
          *v15++ = v22 & 0x7F;
          --v21;
        }

        while (v21);
        LODWORD(v9) = v9 >> 1;
      }
    }

    else
    {
      memcpy(v15, (a6 + v16), v9);
      v19 = v9;
    }

    *(*a3 + v9) = 0;
  }

  else
  {
    v19 = 0;
    *a3 = 0;
  }

  result = 0;
  if (a4)
  {
    *a4 = v19;
  }

  return result;
}

void *V2(void *a1, int *a2, char *__s, const char *a4, const void *a5, const void *a6, unsigned int a7, uint64_t a8, uint64_t *a9, unsigned int *a10, int *a11)
{
  macOut[2] = *MEMORY[0x277D85DE8];
  macOut[0] = 0xAAAAAAAAAAAAAAAALL;
  macOut[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = strlen(__s);
  if (a4)
  {
    v18 = strlen(a4);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + v17;
  if (_plug_buf_alloc(a8, a9, a10, (2 * v19) | 1))
  {
    (*(a8 + 264))(*(a8 + 8), 0, "cannot allocate NTLMv2 hash");
    v20 = -2;
  }

  else
  {
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.ctx[88] = v21;
    *&ctx.ctx[92] = v21;
    *&ctx.ctx[80] = v21;
    *&ctx.ctx[84] = v21;
    *&ctx.ctx[72] = v21;
    *&ctx.ctx[76] = v21;
    *&ctx.ctx[64] = v21;
    *&ctx.ctx[68] = v21;
    *&ctx.ctx[56] = v21;
    *&ctx.ctx[60] = v21;
    *&ctx.ctx[48] = v21;
    *&ctx.ctx[52] = v21;
    *&ctx.ctx[40] = v21;
    *&ctx.ctx[44] = v21;
    *&ctx.ctx[32] = v21;
    *&ctx.ctx[36] = v21;
    *&ctx.ctx[24] = v21;
    *&ctx.ctx[28] = v21;
    *&ctx.ctx[16] = v21;
    *&ctx.ctx[20] = v21;
    *&ctx.ctx[8] = v21;
    *&ctx.ctx[12] = v21;
    *ctx.ctx = v21;
    *&ctx.ctx[4] = v21;
    P16_nt(macOut, a2, a8, a9, a10, a11);
    v22 = strcpy((*a9 + v19), __s);
    if (a4)
    {
      v22 = strcat(v22, a4);
    }

    v23 = 2 * v19;
    v24 = ucase(v22, v19);
    v25 = *a9;
    if (v19)
    {
      do
      {
        v26 = *v24++;
        *v25 = v26;
        v25[1] = 0;
        v25 += 2;
        --v19;
      }

      while (v19);
      v25 = *a9;
    }

    CCHmac(1u, macOut, 0x10uLL, v25, v23, macOut);
    CCHmacInit(&ctx, 1u, macOut, 0x10uLL);
    CCHmacUpdate(&ctx, a5, 8uLL);
    CCHmacUpdate(&ctx, a6, a7);
    CCHmacFinal(&ctx, a1);
    v20 = 0;
  }

  *a11 = v20;
  return a1;
}

unsigned __int8 *P16_nt(unsigned __int8 *a1, int *a2, uint64_t a3, uint64_t *a4, unsigned int *a5, int *a6)
{
  if (_plug_buf_alloc(a3, a4, a5, 2 * *a2))
  {
    (*(a3 + 264))(*(a3 + 8), 0, "cannot allocate P16_nt unicode buffer");
    v11 = -2;
  }

  else
  {
    v12 = *a4;
    v13 = *a2;
    if (*a2)
    {
      v14 = 8;
      do
      {
        *v12++ = *(a2 + v14++);
        --v13;
      }

      while (v13);
      v12 = *a4;
      v15 = 2 * *a2;
    }

    else
    {
      v15 = 0;
    }

    CC_MD4(v12, v15, a1);
    v11 = 0;
  }

  *a6 = v11;
  return a1;
}

char *P16_lm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0x252423402153474BLL;
  strncpy(__dst, (a2 + 8), 0xEuLL);
  for (i = 0; i != 14; ++i)
  {
    if (!__dst[i])
    {
      break;
    }

    __dst[i] = __toupper(__dst[i]);
  }

  E(a1, __dst, 0xEu, &v10);
  *a6 = 0;
  return a1;
}

uint64_t smb_session_setup(uint64_t a1, uint64_t a2, char *a3, const char *a4, uint64_t a5, __int16 a6, void *a7, __int16 a8)
{
  v67 = *MEMORY[0x277D85DE8];
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63[0] = v16;
  v63[1] = v16;
  v38 = 13;
  v37 = -21846;
  v36 = -1431655766;
  v55 = v16;
  v56 = v16;
  v53 = v16;
  v54 = v16;
  v51 = v16;
  v52 = v16;
  v50 = v16;
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, 20);
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  BYTE4(v64) = 115;
  LOWORD(v65) = 0;
  load_smb_header(v63, &v64);
  if (a5)
  {
    v17 = a6;
  }

  else
  {
    v17 = 0;
  }

  v57 = 255;
  v58 = -1;
  v59 = 0;
  if (a7)
  {
    v18 = a8;
  }

  else
  {
    v18 = 0;
  }

  v60 = v17;
  v61 = v18;
  v62 = 0;
  _plug_snprintf_os_info(__b, 514);
  snprintf(__str, 0x14uLL, "Cyrus SASL %u.%u.%u", 2, 1, 27);
  v41.iov_base = &v36;
  v41.iov_len = 4;
  v42 = v63;
  v43 = 32;
  v44 = &v38;
  v45 = 1;
  v46 = &v57;
  v47 = 26;
  v48 = &v37;
  v49 = 2;
  if (a5)
  {
    *&v50 = a5;
    *(&v50 + 1) = 24;
    v19 = 6;
    if (!a7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = 5;
  if (a7)
  {
LABEL_9:
    v20 = &v41 + v19++;
    v20->iov_base = a7;
    v20->iov_len = 24;
  }

LABEL_10:
  v21 = &v41 + v19;
  v21->iov_base = a3;
  v21->iov_len = strlen(a3) + 1;
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = "";
  }

  v23 = &v41 + v19 + 1;
  v23->iov_base = v22;
  v23->iov_len = strlen(v22) + 1;
  v24 = &v41 + v19 + 2;
  v24->iov_base = __b;
  v24->iov_len = strlen(__b) + 1;
  v25 = &v41 + v19 + 3;
  v25->iov_base = __str;
  v26 = strlen(__str);
  v27 = 0;
  v25->iov_len = v26 + 1;
  for (i = 24; i != 88; i += 16)
  {
    v27 += *(&v41.iov_base + i);
  }

  v29 = 0;
  v30 = v19 - 1;
  v31 = 88;
  do
  {
    v29 += *(&v41.iov_base + v31);
    v31 += 16;
    --v30;
  }

  while (v30);
  v36 = bswap32(v27 + v29);
  v37 = v29;
  if (retry_writev(*(a2 + 28), &v41, v19 + 4) == -1)
  {
    (*(a1 + 256))(0, 1, "NTLM: error sending SESSIONSETUP request");
    return 0xFFFFFFFFLL;
  }

  if (retry_read(*(a2 + 28), &v36, 4u) <= 3)
  {
    (*(a1 + 256))(0, 1, "NTLM: error reading SESSIONSETUP response length");
    return 0xFFFFFFFFLL;
  }

  v33 = v36;
  v34 = bswap32(v36);
  if (_plug_buf_alloc(a1, (a2 + 16), (a2 + 24), v34))
  {
    (*(a1 + 264))(*(a1 + 8), 0, "cannot allocate NTLM SESSIONSETUP response buffer");
    return 4294967294;
  }

  if (retry_read(*(a2 + 28), *(a2 + 16), v34) < v34)
  {
    (*(a1 + 256))(0, 1, "NTLM: error reading SESSIONSETUP response");
    return 0xFFFFFFFFLL;
  }

  if (v34 <= 0x1F)
  {
    (*(a1 + 256))(0, 1, "NTLM: not enough data for SESSIONSETUP response header");
    return 0xFFFFFFFFLL;
  }

  v35 = *(a2 + 16);
  unload_smb_header(v35, &v64);
  if (v64 != 1112364031 || BYTE4(v64) != 115 || (SBYTE12(v64) & 0x80000000) == 0)
  {
    (*(a1 + 256))(0, 1, "NTLM: error in SESSIONSETUP response header");
    return 0xFFFFFFFFLL;
  }

  if (DWORD2(v64))
  {
    (*(a1 + 256))(0, 1, "NTLM: auth failure: %u", DWORD2(v64));
    return 4294967283;
  }

  if (v33 == 0x20000000)
  {
    (*(a1 + 256))(0, 1, "NTLM: not enough data for SESSIONSETUP response wordcount");
    return 0xFFFFFFFFLL;
  }

  v38 = *(v35 + 32);
  if (v38 <= 2u)
  {
    (*(a1 + 256))(0, 1, "NTLM: incorrect SESSIONSETUP wordcount");
    return 0xFFFFFFFFLL;
  }

  if (*(v35 + 37))
  {
    (*(a1 + 256))(0, 1, "NTLM: authenticated as guest");
    return 4294967283;
  }

  return 0;
}

char *E(char *dataOut, uint64_t a2, unsigned int a3, void *dataIn)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = dataOut;
    v8 = 0;
    do
    {
      v9 = *(a2 + v8 + 1);
      key[0] = *(a2 + v8);
      HIDWORD(v11) = key[0];
      LODWORD(v11) = v9 << 24;
      v10 = v11 >> 25;
      v12 = *(a2 + v8 + 2);
      HIDWORD(v11) = v9;
      LODWORD(v11) = v12 << 24;
      key[1] = v10;
      key[2] = v11 >> 26;
      v13 = *(a2 + v8 + 3);
      HIDWORD(v11) = v12;
      LODWORD(v11) = v13 << 24;
      key[3] = v11 >> 27;
      v14 = *(a2 + v8 + 4);
      HIDWORD(v11) = v13;
      LODWORD(v11) = v14 << 24;
      key[4] = v11 >> 28;
      v15 = *(a2 + v8 + 5);
      HIDWORD(v11) = v14;
      LODWORD(v11) = v15 << 24;
      key[5] = v11 >> 29;
      v16 = *(a2 + v8 + 6);
      HIDWORD(v11) = v15;
      LODWORD(v11) = v16 << 24;
      key[6] = v11 >> 30;
      key[7] = 2 * v16;
      dataOut = CCCrypt(0, 1u, 2u, key, 8uLL, 0, dataIn, 8uLL, v7, 8uLL, 0);
      v7 += 8;
      v8 += 7;
    }

    while (v8 < a3);
  }

  return dataOut;
}

uint64_t ntlm_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(24);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v6[1] = 0;
    v6[2] = 0;
    *v6 = 0;
    *v6 = 1;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/ntlm.c near line %d", 1880);
    return 4294967294;
  }

  return result;
}

uint64_t ntlm_client_mech_step(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t **a5, void *a6, unsigned int *a7, uint64_t a8)
{
  v45[3] = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *a7 = 0;
  (*(*(a2 + 24) + 256))(0, 5, "NTLM client step %d\n", *a1);
  if (*a1 != 2)
  {
    if (*a1 == 1)
    {
      v16 = *(a2 + 80);
      v17 = *(a2 + 112);
      v18 = *(a2 + 24);
      if (v16 <= v17)
      {
        *a7 = 32;
        if (_plug_buf_alloc(v18, a1 + 1, a1 + 4, 0x20u))
        {
          (*(v18 + 264))(*(v18 + 8), 0, "cannot allocate NTLM request");
          return 4294967294;
        }

        else
        {
          v26 = *(a1 + 1);
          bzero(v26, *a7);
          *v26 = 0x5053534D4C544ELL;
          *(v26 + 2) = 1;
          *(v26 + 6) = 519;
          *(v26 + 14) = 0;
          *(v26 + 9) = 0;
          *(v26 + 20) = 32;
          *(v26 + 21) = 0;
          *(v26 + 6) = 0;
          *(v26 + 7) = 32;
          *a6 = *(a1 + 1);
          *a1 = 2;
          return 1;
        }
      }

      else
      {
        (*(v18 + 264))(*(v18 + 8), 0, "SSF requested of NTLM plugin");
        return 4294967281;
      }
    }

    else
    {
      (*(*(a2 + 24) + 256))(0, 1, "Invalid NTLM client step %d\n", *a1);
      return 0xFFFFFFFFLL;
    }
  }

  *v42 = 0;
  v43 = 0;
  v40 = 0;
  memset(v45, 170, 21);
  memset(dataOut, 170, sizeof(dataOut));
  if (!a3 || a4 < 0x20 || *a3 != 0x5053534D4C544ELL || (*(a3 + 8) | (*(a3 + 9) << 8) | (*(a3 + 10) << 16) | (*(a3 + 11) << 24)) != 2)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "server didn't issue valid NTLM challenge");
    return 4294967291;
  }

  v41 = -1431655766;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a8 + 16))
  {
    v20 = 0;
  }

  else
  {
    simple = _plug_get_simple(*(a2 + 24), 16386, 1, &v43, a5);
    v20 = simple;
    password = simple;
    if ((simple & 0xFFFFFFFD) != 0)
    {
      return password;
    }
  }

  password = _plug_get_password(*(a2 + 24), v42, &v41, a5);
  if ((password & 0xFFFFFFFD) == 0)
  {
    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (v20 == 2 || password == 2)
    {
      if (v20 == 2)
      {
        v29 = "Please enter your authentication name";
      }

      else
      {
        v29 = 0;
      }

      if (password == 2)
      {
        v30 = "Please enter your password";
      }

      else
      {
        v30 = 0;
      }

      prompts = _plug_make_prompts(*(a2 + 24), a5, 0, 0, v29, 0, v30, 0, 0, 0, 0, 0, 0, 0);
      if (!prompts)
      {
        return 2;
      }
    }

    else
    {
      prompts = (*(a2 + 152))(*(*(a2 + 24) + 8), v43, 0, 3, a8);
      if (!prompts)
      {
        v22 = *(a3 + 20);
        v23 = v22 | (*(a3 + 21) << 8);
        (*(*(a2 + 24) + 256))(0, 5, "server flags: %x", (*(a3 + 22) << 16) | (*(a3 + 23) << 24) | v23);
        v24 = unload_buffer(*(a2 + 24), (a3 + 12), &v40, 0, v22 & 1, a3, a4);
        v39 = v24;
        v25 = v40;
        if (v24)
        {
          password = v24;
LABEL_55:
          if (v25)
          {
            (*(*(a2 + 24) + 64))(v25);
          }

          goto LABEL_36;
        }

        (*(*(a2 + 24) + 256))(0, 5, "server domain: %s", v40);
        (*(*(a2 + 24) + 32))(*(*(a2 + 24) + 24), "NTLM", "ntlm_v2", &v38, 0);
        if (!v38)
        {
          goto LABEL_48;
        }

        v31 = *v38;
        if (v31 > 0x73)
        {
          if (v31 != 116 && v31 != 121)
          {
            goto LABEL_48;
          }
        }

        else if (v31 != 49 && (v31 != 111 || v38[1] != 110))
        {
LABEL_48:
          v32 = *(*(a2 + 24) + 256);
          if ((v23 & 0x200) != 0)
          {
            v32(0, 5, "calculating NT response");
            P16_nt(v45, *v42, *(a2 + 24), a1 + 1, a1 + 4, &v39);
            BYTE4(v45[2]) = 0;
            LODWORD(v45[2]) = 0;
            v36 = dataOut;
            E(dataOut, v45, 0x15u, (a3 + 24));
            v37 = 0;
            goto LABEL_52;
          }

          v32(0, 5, "calculating LM response");
          P16_lm(v45, *v42, v33, v34, v35, &v39);
          BYTE4(v45[2]) = 0;
          LODWORD(v45[2]) = 0;
          v37 = dataOut;
          E(dataOut, v45, 0x15u, (a3 + 24));
LABEL_50:
          v36 = 0;
LABEL_52:
          password = v39;
          if (!v39)
          {
            password = create_response_0(*(a2 + 24), a1 + 1, a1 + 4, v37, v36, v25, *(a8 + 16), v23, a7);
            if (!password)
            {
              *a6 = *(a1 + 1);
              *a8 = 1;
              *(a8 + 136) = 0;
              *(a8 + 32) = 0u;
              *(a8 + 48) = 0u;
              *(a8 + 64) = 0;
            }
          }

          goto LABEL_55;
        }

        (*(*(a2 + 24) + 256))(0, 5, "calculating LMv2 response");
        (*(*(a2 + 24) + 184))(*(*(a2 + 24) + 16), &dataOut[2], 8);
        v37 = dataOut;
        V2(dataOut, *v42, *(a8 + 16), v25, (a3 + 24), &dataOut[2], 8u, *(a2 + 24), a1 + 1, a1 + 4, &v39);
        goto LABEL_50;
      }
    }

    password = prompts;
LABEL_36:
    if (v41)
    {
      _plug_free_secret(*(a2 + 24), v42);
    }
  }

  return password;
}

uint64_t ntlm_client_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8))
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t create_response_0(uint64_t a1, void **a2, unsigned int *a3, char *a4, char *a5, char *__s, char *a7, __int16 a8, unsigned int *a9)
{
  v32 = 64;
  if (a4 | a5)
  {
    if (__s)
    {
      v17 = strlen(__s);
    }

    else
    {
      v17 = 0;
    }

    v31 = a8;
    v19 = a8 & 1;
    if (a7)
    {
      v20 = strlen(a7);
    }

    else
    {
      v20 = 0;
    }

    if (a4)
    {
      v21 = 88;
    }

    else
    {
      v21 = 64;
    }

    if (a5)
    {
      v22 = v21 + ((v20 + v17) << v19) + 24;
    }

    else
    {
      v22 = v21 + ((v20 + v17) << v19);
    }

    *a9 = v22;
    if (_plug_buf_alloc(a1, a2, a3, v22))
    {
      (*(a1 + 264))(*(a1 + 8), 0, "cannot allocate NTLM response");
      return 4294967294;
    }

    else
    {
      v23 = *a2;
      bzero(*a2, *a9);
      *v23 = 0x5053534D4C544ELL;
      v23[2] = 3;
      if (a4)
      {
        v24 = 24;
      }

      else
      {
        v24 = 0;
      }

      load_buffer(v23 + 12, a4, v24, 0, v23, &v32);
      if (a5)
      {
        v25 = 24;
      }

      else
      {
        v25 = 0;
      }

      load_buffer(v23 + 20, a5, v25, 0, v23, &v32);
      ucase(__s, 0);
      if (__s)
      {
        v26 = strlen(__s);
      }

      else
      {
        v26 = 0;
      }

      load_buffer(v23 + 28, __s, v26, v19, v23, &v32);
      if (a7)
      {
        v27 = strlen(a7);
      }

      else
      {
        v27 = 0;
      }

      load_buffer(v23 + 36, a7, v27, v19, v23, &v32);
      result = 0;
      v23[11] = 0;
      v28 = v32;
      *(v23 + 48) = v32;
      v29 = v28 >> 8;
      *(v23 + 49) = BYTE1(v28);
      v30 = HIWORD(v28);
      *(v23 + 50) = BYTE2(v28);
      *(v23 + 56) = v28;
      v28 >>= 24;
      *(v23 + 51) = v28;
      v23[13] = 0;
      *(v23 + 57) = v29;
      *(v23 + 58) = v30;
      *(v23 + 59) = v28;
      *(v23 + 30) = v31;
      *(v23 + 31) = 0;
    }
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "need at least one NT/LM response");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t oauthbearer_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a4 = &oauthbearer_client_plugins;
    *a5 = 2;
    *a3 = 4;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "OAUTHBEARER version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t oauthbearer_client_mech_new(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*(a2 + 24) + 40))(32);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 12) = 1;
    *(v6 + 16) = 0;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/oauthbearer.c near line %d", 72);
    return 4294967294;
  }

  return result;
}

uint64_t oauthbearer_client_mech_step(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, uint64_t **a5, char **a6, _DWORD *a7, uint64_t a8)
{
  *a6 = 0;
  *a7 = 0;
  (*(*(a2 + 24) + 256))(0, 5, "OAUTHBEARER client step %d\n", *(a1 + 12));
  v16 = *(a1 + 12);
  if (v16 != 2)
  {
    if (v16 != 1)
    {
      v18 = *(*(a2 + 24) + 256);
      v19 = "Invalid OAUTHBEARER client step %d\n";
      v20 = 0;
      v21 = 1;
LABEL_8:
      v18(v20, v21, v19);
      return 0xFFFFFFFFLL;
    }

    *a6 = 0;
    *a7 = 0;
    if (*(a2 + 80) > *(a2 + 112))
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of OAUTHBEARER plugin");
      return 4294967281;
    }

    v23 = (a8 + 8);
    if (*(a8 + 8))
    {
      v24 = 0;
    }

    else
    {
      v24 = _plug_get_simple(*(a2 + 24), 16385, 0, (a8 + 8), a5) == 2;
    }

    if (*(a1 + 24))
    {
      LODWORD(simple) = 0;
    }

    else
    {
      simple = _plug_get_simple(*(a2 + 24), 18948, 1, (a1 + 24), a5);
      if ((simple & 0xFFFFFFFD) != 0)
      {
        return simple;
      }
    }

    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (((simple != 2) & ~v24) == 0)
    {
      v25 = (*(*(a2 + 24) + 40))(144);
      *a5 = v25;
      if (v25)
      {
        *(v25 + 7) = 0u;
        *(v25 + 8) = 0u;
        *(v25 + 5) = 0u;
        *(v25 + 6) = 0u;
        *(v25 + 3) = 0u;
        *(v25 + 4) = 0u;
        *(v25 + 1) = 0u;
        *(v25 + 2) = 0u;
        *v25 = 0u;
        if (v24)
        {
          v26 = *a5;
          *v26 = 16385;
          v26[1] = "Authorization Name";
          (*a5)[2] = "Please enter your authentication name";
          v27 = 1;
        }

        else
        {
          v27 = 0;
        }

        if (simple == 2)
        {
          v31 = (16 * v27) | (32 * v27);
          v32 = (*a5 + v31);
          *v32 = 18948;
          v32[1] = "OAUTH2 Bearer Token";
          *(*a5 + v31 + 16) = "Please enter your access token";
          LODWORD(v27) = v27 + 1;
        }

        (*a5)[6 * v27] = 0;
        return 2;
      }

      else
      {
        (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/oauthbearer.c near line %d", 163);
        return 4294967294;
      }
    }

    v36 = 0;
    __dst = 0;
    if ((*(a1 + 16) & 1) == 0)
    {
      sasl_getprop(*(*(a2 + 24) + 8), 13, &__dst);
    }

    if (sasl_getprop(*(*(a2 + 24) + 8), 9, &v36))
    {
      v28 = 0;
    }

    else
    {
      v29 = strchr(v36, 59);
      if (!v29)
      {
        v33 = *(a2 + 24);
        v18 = *(v33 + 264);
        v20 = *(v33 + 8);
        v19 = "failed to split SASL_IPREMOTEPORT";
LABEL_49:
        v21 = 0;
        goto LABEL_8;
      }

      v28 = atoi(v29 + 1);
    }

    if (*v23 && **v23)
    {
      simple = (*(a2 + 152))(*(*(a2 + 24) + 8));
      if (simple)
      {
        return simple;
      }

      if (__dst)
      {
        if (*__dst && v28)
        {
          asprintf(a6, "%s=%s%s\x01host=%s\x01port=%d\x01auth=Bearer %s\x01\x01");
LABEL_60:
          v34 = *a6;
          v35 = strlen(v34);
          *a7 = v35;
          *a1 = v34;
          *(a1 + 8) = v35;
          *(a8 + 136) = 0;
          *(a8 + 32) = 0u;
          *(a8 + 48) = 0u;
          *(a8 + 64) = 0;
          simple = 1;
          *(a1 + 12) = 2;
          return simple;
        }

        if (*__dst)
        {
          asprintf(a6, "%s=%s%s\x01host=%s\x01auth=Bearer %s\x01\x01");
          goto LABEL_60;
        }
      }

      if (v28)
      {
        asprintf(a6, "%s=%s%s\x01port=%d\x01auth=Bearer %s\x01\x01");
      }

      else
      {
        asprintf(a6, "%s=%s%s\x01auth=Bearer %s\x01\x01");
      }

      goto LABEL_60;
    }

    if (!*(a1 + 16))
    {
      if (__dst)
      {
        if (*__dst && v28)
        {
          asprintf(a6, "n,\x01host=%s\x01port=%d\x01auth=Bearer %s\x01\x01");
          goto LABEL_60;
        }

        if (*__dst)
        {
          asprintf(a6, "n,\x01host=%s\x01auth=Bearer %s\x01\x01");
          goto LABEL_60;
        }
      }

      if (v28)
      {
        asprintf(a6, "n,\x01port=%d\x01auth=Bearer %s\x01\x01");
      }

      else
      {
        asprintf(a6, "n,\x01auth=Bearer %s\x01\x01");
      }

      goto LABEL_60;
    }

    v30 = *(a2 + 24);
    v18 = *(v30 + 264);
    v20 = *(v30 + 8);
    v19 = "XOAUTH2 requires user";
    goto LABEL_49;
  }

  __dst = 0;
  LODWORD(v36) = a4 + 1;
  simple = _plug_buf_alloc(*(a2 + 24), &__dst, &v36, a4 + 1);
  if (!simple)
  {
    bzero(__dst, v36);
    memcpy(__dst, a3, a4);
    sasl_seterror(*(*(a2 + 24) + 8), 0, __dst);
    *a6 = "\x01";
    *a7 = 1;
    *a8 = 1;
  }

  return simple;
}

void *oauthbearer_client_mech_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t xoauth2_client_mech_new(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*(a2 + 24) + 40))(32);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 12) = 1;
    *(v6 + 16) = 1;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/oauthbearer.c near line %d", 92);
    return 4294967294;
  }

  return result;
}

uint64_t plain_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &plain_server_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "PLAIN version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t plain_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &plain_client_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "PLAIN version mismatch", a4, a5);
    return 4294967273;
  }

  return result;
}

uint64_t plain_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    result = 0;
    *a5 = 0;
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/plain.c near line %d", 70);
    return 4294967289;
  }

  return result;
}

uint64_t plain_server_mech_step(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
LABEL_5:
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Can only find author (no password)");
    return 4294967291;
  }

  v9 = a3;
  v10 = 0;
  while (a3[v10])
  {
    if (a4 == ++v10)
    {
      goto LABEL_5;
    }
  }

  if (v10 + 1 >= a4)
  {
LABEL_10:
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Can only find author/en (no password)");
    return 4294967291;
  }

  v11 = &a3[v10 + 1];
  while (a3[v10 + 1])
  {
    if (a4 - 1 == ++v10)
    {
      goto LABEL_10;
    }
  }

  v14 = v10 + 2;
  if (v10 + 2 >= a4)
  {
    LODWORD(v15) = v10 + 2;
  }

  else
  {
    v15 = v14;
    while (a3[v15])
    {
      if (++v15 >= a4)
      {
        LODWORD(v15) = a4;
        goto LABEL_20;
      }
    }
  }

  if (v15 != a4)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Got more data than we were expecting in the PLAIN plugin\n");
    return 4294967291;
  }

LABEL_20:
  v16 = (*(*(a2 + 80) + 40))((~v10 + v15));
  v28 = v16;
  if (v16)
  {
    v17 = v16;
    v18 = v15 - v10;
    v19 = v18 - 2;
    strncpy(v16, &v9[v14], (v18 - 2))[(v18 - 2)] = 0;
    v20 = 7;
    if (*v9)
    {
      v21 = strcmp(v9, v11);
      v22 = v21 != 0;
      if (v21)
      {
        v20 = 5;
      }

      else
      {
        v20 = 7;
      }
    }

    else
    {
      v22 = 0;
      v9 = v11;
    }

    v12 = (*(a2 + 144))(*(*(a2 + 80) + 8), v11, 0, v20, a7);
    v23 = *(a2 + 80);
    if (v12)
    {
      _plug_free_string(v23, &v28);
    }

    else
    {
      v12 = (*(v23 + 200))(*(v23 + 8), *(a7 + 16), *(a7 + 28), v17, v19);
      _plug_free_string(*(a2 + 80), &v28);
      if (v12)
      {
        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Password verification failed");
      }

      else
      {
        if (!v22)
        {
          goto LABEL_41;
        }

        v24 = (*(*(a2 + 80) + 304))(*(a2 + 152));
        if (!v24)
        {
          return 0xFFFFFFFFLL;
        }

        v25 = *v24;
        if (*v24)
        {
          v26 = v24 + 3;
          do
          {
            if (*v25 != 42 && *(v26 - 2))
            {
              (*(*(a2 + 80) + 360))(*(a2 + 152));
            }

            v27 = *v26;
            v26 += 3;
            v25 = v27;
          }

          while (v27);
        }

        v12 = (*(a2 + 144))(*(*(a2 + 80) + 8), v9, 0, 2, a7);
        if (!v12)
        {
LABEL_41:
          v12 = 0;
          *a7 = 1;
          *(a7 + 136) = 0;
          *(a7 + 32) = 0u;
          *(a7 + 48) = 0u;
          *(a7 + 64) = 0;
        }
      }
    }
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/plain.c near line %d", 139);
    return 4294967294;
  }

  return v12;
}

uint64_t plain_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(16);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0;
    v6[1] = 0;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/plain.c near line %d", 287);
    return 4294967294;
  }

  return result;
}

uint64_t plain_client_mech_step(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void **a6, int *a7, uint64_t a8)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  *a6 = 0;
  *a7 = 0;
  if (*(a2 + 80) > *(a2 + 112))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of PLAIN plugin", a4, a5);
    return 4294967281;
  }

  if (*(a8 + 16))
  {
    v15 = 0;
  }

  else
  {
    simple = _plug_get_simple(*(a2 + 24), 16386, 1, &v31, a5);
    v15 = simple;
    password = simple;
    if ((simple & 0xFFFFFFFD) != 0)
    {
      return password;
    }
  }

  if (*(a8 + 8))
  {
    v16 = 0;
  }

  else
  {
    v20 = _plug_get_simple(*(a2 + 24), 16385, 0, &v32, a5);
    v16 = v20;
    password = v20;
    if ((v20 & 0xFFFFFFFD) != 0)
    {
      return password;
    }
  }

  password = _plug_get_password(*(a2 + 24), &v30, &v29, a5);
  if ((password & 0xFFFFFFFD) == 0)
  {
    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (v15 == 2 || v16 == 2 || password == 2)
    {
      if (v16 == 2)
      {
        v21 = "Please enter your authorization name";
      }

      else
      {
        v21 = 0;
      }

      if (v15 == 2)
      {
        v22 = "Please enter your authentication name";
      }

      else
      {
        v22 = 0;
      }

      if (password == 2)
      {
        v23 = "Please enter your password";
      }

      else
      {
        v23 = 0;
      }

      prompts = _plug_make_prompts(*(a2 + 24), a5, v21, 0, v22, 0, v23, 0, 0, 0, 0, 0, 0, 0);
      if (!prompts)
      {
        return 2;
      }

      goto LABEL_33;
    }

    if (!v30)
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/plain.c near line %d", 381);
      return 4294967289;
    }

    if (v32 && *v32)
    {
      prompts = (*(a2 + 152))(*(*(a2 + 24) + 8));
      if (prompts)
      {
        goto LABEL_33;
      }

      v18 = (*(a2 + 152))(*(*(a2 + 24) + 8), v31, 0, 1, a8);
    }

    else
    {
      v18 = (*(a2 + 152))(*(*(a2 + 24) + 8), v31, 0, 3, a8);
    }

    password = v18;
    if (v18)
    {
LABEL_36:
      if (v29)
      {
        _plug_free_secret(*(a2 + 24), &v30);
      }

      return password;
    }

    if (v32 && *v32)
    {
      v25 = *(a8 + 24) + 2;
    }

    else
    {
      v25 = 2;
    }

    v26 = v25 + *(a8 + 28) + *v30;
    *a7 = v26;
    prompts = _plug_buf_alloc(*(a2 + 24), a1, a1 + 2, v26 + 1);
    if (!prompts)
    {
      bzero(*a1, (*a7 + 1));
      v27 = *a1;
      if (v32 && *v32)
      {
        memcpy(*a1, *(a8 + 8), *(a8 + 24));
        v27 += *(a8 + 24);
      }

      v28 = (v27 + 1);
      memcpy(v28, *(a8 + 16), *(a8 + 28));
      memcpy(&v28[*(a8 + 28) + 1], v30 + 1, *v30);
      password = 0;
      *a6 = *a1;
      *a8 = 1;
      *(a8 + 136) = 0;
      *(a8 + 32) = 0u;
      *(a8 + 48) = 0u;
      *(a8 + 64) = 0;
      goto LABEL_36;
    }

LABEL_33:
    password = prompts;
    goto LABEL_36;
  }

  return password;
}

void *plain_client_mech_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t _plug_iovec_to_buf(uint64_t a1, uint64_t a2, int a3, char ***a4)
{
  if (a1 && a2 && a4)
  {
    LODWORD(v7) = a3;
    v8 = *a4;
    if (!*a4)
    {
      v9 = (*(a1 + 40))(16);
      *a4 = v9;
      if (!v9)
      {
        (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 190);
        return 4294967294;
      }

      *v9 = 0;
      *(v9 + 8) = 0;
      v8 = *a4;
    }

    *(v8 + 2) = 0;
    v10 = 0;
    if (v7)
    {
      v11 = v7;
      v12 = (a2 + 8);
      do
      {
        v13 = *v12;
        v12 += 4;
        v10 += v13;
        --v11;
      }

      while (v11);
      *(v8 + 2) = v10;
    }

    if (_plug_buf_alloc(a1, v8, v8 + 3, v10))
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 205);
      return 4294967294;
    }

    bzero(*v8, *(v8 + 3));
    if (v7)
    {
      v15 = *v8;
      v7 = v7;
      v16 = (a2 + 8);
      do
      {
        memcpy(v15, *(v16 - 1), *v16);
        v17 = *v16;
        v16 += 2;
        v15 += v17;
        --v7;
      }

      while (v7);
    }

    return 0;
  }

  else
  {
    if (a1)
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 183);
    }

    return 4294967289;
  }
}

uint64_t _plug_buf_alloc(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4)
{
  if (a1 && a2 && a3)
  {
    if (*a2)
    {
      v8 = *a3;
      if (*a3 >= a4)
      {
        return 0;
      }

      do
      {
        v8 *= 2;
      }

      while (v8 < a4);
      v9 = (*(a1 + 56))();
      *a2 = v9;
      if (v9)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

      *a3 = 0;
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 246);
    }

    else
    {
      v11 = (*(a1 + 40))(a4);
      *a2 = v11;
      if (v11)
      {
        result = 0;
        *a3 = a4;
        return result;
      }

      *a3 = 0;
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 233);
    }

    return 4294967294;
  }

  else
  {
    if (a1)
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 225);
    }

    return 4294967289;
  }
}

uint64_t _plug_strdup(uint64_t a1, char *__s, char **a3, _DWORD *a4)
{
  if (a1 && __s && a3)
  {
    v8 = strlen(__s);
    v9 = v8;
    v10 = (*(a1 + 40))(v8 + 1);
    *a3 = v10;
    if (v10)
    {
      strcpy(v10, __s);
      result = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    else
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 270);
      return 4294967294;
    }
  }

  else
  {
    if (a1)
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 262);
    }

    return 4294967289;
  }

  return result;
}

uint64_t _plug_free_string(uint64_t result, const char **a2)
{
  if (result && a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = result;
      v5 = strlen(*a2);
      (*(v4 + 224))(v3, v5);
      result = (*(v4 + 64))(*a2);
      *a2 = 0;
    }
  }

  return result;
}

unsigned int *_plug_free_secret(unsigned int *result, void *a2)
{
  if (result && a2)
  {
    v3 = result;
    result = *a2;
    if (*a2)
    {
      (*(v3 + 28))(result + 2, *result);
      result = (*(v3 + 8))(*a2);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t _plug_get_simple(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t **a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *a4 = 0;
  if (!a5 || (v9 = *a5) == 0 || (v10 = *v9) == 0)
  {
LABEL_7:
    result = (*(a1 + 248))(*(a1 + 8), a2, &v17, &v16);
    if (a3 || result != -1)
    {
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v17 == 0;
      }

      if (v14)
      {
        return result;
      }

      result = v17(v16, a2, a4, 0);
      if (!a3 || result)
      {
        return result;
      }

      if (!*a4)
      {
        (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d");
        return 4294967289;
      }
    }

    return 0;
  }

  v11 = v9 + 6;
  while (v10 != a2)
  {
    v12 = *v11;
    v11 += 6;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v15 = *(v11 - 2);
  if (a3 && !v15)
  {
    (*(a1 + 264))(*(a1 + 8), 0, "Unexpectedly missing a prompt result in _plug_get_simple");
    return 4294967289;
  }

  result = 0;
  *a4 = v15;
  return result;
}

uint64_t _plug_get_password(uint64_t a1, size_t **a2, _DWORD *a3, const void ***a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 0;
  *a3 = 0;
  if (a4)
  {
    v6 = *a4;
    if (*a4)
    {
      v7 = *v6;
      if (*v6)
      {
        v9 = v6 + 4;
        while (v7 != 16388)
        {
          v7 = v9[2];
          v9 += 6;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        if (*v9)
        {
          v12 = (*(a1 + 40))(*(v9 + 2) + 17);
          *a2 = v12;
          if (v12)
          {
            v13 = *(v9 + 2);
            *v12 = v13;
            memcpy(v12 + 1, *v9, v13);
            result = 0;
            *(*a2 + **a2 + 8) = 0;
            *a3 = 1;
          }

          else
          {
            (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 400);
            return 4294967294;
          }

          return result;
        }

        (*(a1 + 264))(*(a1 + 8), 0, "Unexpectedly missing a prompt result in _plug_get_password");
        return 4294967289;
      }
    }
  }

LABEL_7:
  result = (*(a1 + 248))(*(a1 + 8), 16388, &v15, &v14);
  if (result)
  {
    v11 = 1;
  }

  else
  {
    v11 = v15 == 0;
  }

  if (!v11)
  {
    result = v15(*(a1 + 8), v14, 16388, a2);
    if (!result)
    {
      if (*a2)
      {
        return 0;
      }

      (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d");
      return 4294967289;
    }
  }

  return result;
}

uint64_t _plug_get_realm(uint64_t a1, uint64_t a2, void *a3, uint64_t **a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = 0;
  if (a4)
  {
    v7 = *a4;
    if (*a4)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v7 + 6;
        while (v8 != 16392)
        {
          v10 = *v9;
          v9 += 6;
          v8 = v10;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

        v13 = *(v9 - 2);
        if (v13)
        {
          result = 0;
          *a3 = v13;
          return result;
        }

        (*(a1 + 264))(*(a1 + 8), 0, "Unexpectedly missing a prompt result in _plug_get_realm");
        return 4294967289;
      }
    }
  }

LABEL_7:
  result = (*(a1 + 248))(*(a1 + 8), 16392, &v15, &v14);
  if (result)
  {
    v12 = 1;
  }

  else
  {
    v12 = v15 == 0;
  }

  if (!v12)
  {
    result = v15(v14, 16392, a2, a3);
    if (!result)
    {
      if (*a3)
      {
        return 0;
      }

      (*(a1 + 264))(*(a1 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d");
      return 4294967289;
    }
  }

  return result;
}

uint64_t _plug_make_prompts(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a3)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (a5)
  {
    ++v15;
  }

  if (a7)
  {
    ++v15;
  }

  if (a10)
  {
    ++v15;
  }

  if (a13)
  {
    ++v15;
  }

  if (v15 == 1)
  {
    (*(a1 + 264))(*(a1 + 8), 0, "make_prompts() called with no actual prompts", a4);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v22 = (48 * v15);
    v23 = (*(a1 + 40))(v22);
    if (v23)
    {
      v24 = v23;
      bzero(v23, v22);
      *a2 = v24;
      if (a3)
      {
        *v24 = 16385;
        v24[1] = "Authorization Name";
        v24[2] = a3;
        v24[3] = a4;
        v24 += 6;
      }

      if (a5)
      {
        *v24 = 16386;
        v24[1] = "Authentication Name";
        v24[2] = a5;
        v24[3] = a6;
        v24 += 6;
      }

      if (a7)
      {
        *v24 = 16388;
        v24[1] = "Password";
        v24[2] = a7;
        v24[3] = a8;
        v24 += 6;
      }

      if (a10)
      {
        *v24 = 16389;
        v24[1] = a9;
        v24[2] = a10;
        v24[3] = a11;
        v24 += 6;
      }

      if (a13)
      {
        *v24 = 16392;
        v24[1] = a12;
        v24[2] = a13;
        v24[3] = a14;
        v24 += 6;
      }

      result = 0;
      *v24 = 0u;
      *(v24 + 1) = 0u;
    }

    else
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/common/plugin_common.c near line %d", 554);
      return 4294967294;
    }
  }

  return result;
}

double _plug_decode_init(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = 4;
  *(a1 + 36) = a3;
  return result;
}

uint64_t _plug_decode(uint64_t a1, char *__src, unsigned int a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, uint64_t (*a7)(uint64_t, void, void, _DWORD *, _DWORD *), uint64_t a8)
{
  *a6 = 0;
  if (!a3)
  {
    return 0;
  }

  v13 = a3;
  memset(__n, 170, sizeof(__n));
  v29 = a1 + 16;
  for (i = *(a1 + 8); ; i = 4)
  {
    if (!i)
    {
      v23 = *(a1 + 32);
      v24 = v13;
      goto LABEL_14;
    }

    if (v13 >= i)
    {
      v17 = i;
    }

    else
    {
      v17 = v13;
    }

    memcpy((v29 - i), __src, v17);
    v18 = *(a1 + 8) - v17;
    *(a1 + 8) = v18;
    if (v18)
    {
      return 0;
    }

    v19 = *(a1 + 12);
    v20 = bswap32(v19);
    *(a1 + 16) = v20;
    if (!v19)
    {
      return 0xFFFFFFFFLL;
    }

    v21 = *(a1 + 36);
    if (v20 > v21)
    {
      break;
    }

    if (!*(a1 + 24))
    {
      v22 = (*(*a1 + 40))();
      *(a1 + 24) = v22;
      if (!v22)
      {
        return 4294967294;
      }
    }

    v23 = 0;
    v24 = v13 - v17;
    __src += v17;
    *(a1 + 32) = 0;
LABEL_14:
    v25 = *(a1 + 16) - v23;
    v26 = (*(a1 + 24) + v23);
    v13 = v24 - v25;
    if (v24 < v25)
    {
      memcpy(v26, __src, v24);
      result = 0;
      *(a1 + 32) += v24;
      return result;
    }

    memcpy(v26, __src, *(a1 + 16) - v23);
    result = a7(a8, *(a1 + 24), *(a1 + 16), &__n[1], __n);
    if (result)
    {
      return result;
    }

    result = _plug_buf_alloc(*a1, a4, a5, *a6 + __n[0] + 1);
    if (result)
    {
      return result;
    }

    __src += v25;
    memcpy((*a4 + *a6), *&__n[1], __n[0]);
    v28 = *a6 + __n[0];
    *a6 = v28;
    *(*a4 + v28) = 0;
    *(a1 + 8) = 4;
    if (!v13)
    {
      return 0;
    }
  }

  (*(*a1 + 256))(0, 1, "encoded packet size too big (%d > %d)", v20, v21);
  return 0xFFFFFFFFLL;
}

uint64_t _plug_decode_free(void *a1)
{
  result = a1[3];
  if (result)
  {
    return (*(*a1 + 64))();
  }

  return result;
}

char *_plug_get_error_message(uint64_t a1, int __errnum)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v3 = strerror(__errnum);
  if (_plug_strdup(a1, v3, &v5, 0))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t _plug_snprintf_os_info(char *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&__b, 170, sizeof(__b));
  uname(&__b);
  return snprintf(a1, a2, "%s %s", __b.sysname, __b.release);
}

int sasl_encode64(const char *in, unsigned int inlen, char *out, unsigned int outmax, unsigned int *outlen)
{
  if (!in && inlen)
  {
    return -7;
  }

  v6 = (2 * ((2863311531u * (inlen + 2)) >> 32)) & 0xFFFFFFFC;
  if (outlen)
  {
    *outlen = v6;
  }

  if (v6 >= outmax)
  {
    return -3;
  }

  if (inlen >= 3)
  {
    do
    {
      *out = basis_64[*in >> 2];
      out[1] = basis_64[(*(in + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*in & 3))];
      out[2] = basis_64[(*(in + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (in[1] & 0xF))];
      v7 = out + 4;
      out[3] = basis_64[in[2] & 0x3F];
      in += 3;
      inlen -= 3;
      out += 4;
    }

    while (inlen > 2);
    if (!inlen)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v7 = out;
  if (inlen)
  {
LABEL_13:
    *v7 = basis_64[*in >> 2];
    if (inlen == 2)
    {
      v7[1] = basis_64[(16 * (*in & 3u)) | (*(in + 1) >> 4)];
      v8 = basis_64[4 * (in[1] & 0xF)];
    }

    else
    {
      v7[1] = basis_64[16 * (*in & 3)];
      v8 = 61;
    }

    v7[2] = v8;
    v7[3] = 61;
    v7 += 4;
  }

LABEL_17:
  result = 0;
  *v7 = 0;
  return result;
}

int sasl_decode64(const char *in, unsigned int inlen, char *out, unsigned int outmax, unsigned int *outlen)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (!out)
  {
    return -1;
  }

  if (inlen)
  {
    if (*in == 13)
    {
      return -1;
    }

    if (inlen < 4)
    {
      v6 = 0;
      v5 = 1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      do
      {
        if (v7)
        {
          return -5;
        }

        for (i = 0; i != 16; i += 4)
        {
          v9 = *in++;
          *(&v18 + i) = v9;
        }

        if (v18 > 0x7F)
        {
          return -5;
        }

        v10 = *(index_64 + v18);
        if (v10 == 255)
        {
          return -5;
        }

        if (HIDWORD(v18) > 0x7F)
        {
          return -5;
        }

        v11 = *(index_64 + HIDWORD(v18));
        if (v11 == 255 || v19 != 61 && (v19 > 0x7F || *(index_64 + v19) == 255))
        {
          return -5;
        }

        if (HIDWORD(v19) != 61)
        {
          if (HIDWORD(v19) > 0x7F)
          {
            return -5;
          }

          v5 = -5;
          if (v19 == 61 || *(index_64 + HIDWORD(v19)) == 255)
          {
            return v5;
          }
        }

        v7 = v19 == 61 || HIDWORD(v19) == 61;
        *out = (v11 >> 4) | (4 * v10);
        if (v6 + 1 >= outmax)
        {
          return -3;
        }

        if (v19 == 61)
        {
          ++out;
          ++v6;
        }

        else
        {
          if (HIDWORD(v18) <= 0x7F)
          {
            v13 = 16 * *(index_64 + HIDWORD(v18));
          }

          else
          {
            v13 = -16;
          }

          if (v19 <= 0x7F)
          {
            v14 = *(index_64 + v19) >> 2;
          }

          else
          {
            LOBYTE(v14) = -1;
          }

          out[1] = v14 | v13;
          if (v6 + 2 >= outmax)
          {
            return -3;
          }

          if (HIDWORD(v19) == 61)
          {
            out += 2;
            v6 += 2;
          }

          else
          {
            if (v19 <= 0x7F)
            {
              v15 = *(index_64 + v19) << 6;
            }

            else
            {
              v15 = -64;
            }

            if (HIDWORD(v19) <= 0x7F)
            {
              v16 = *(index_64 + HIDWORD(v19));
            }

            else
            {
              v16 = -1;
            }

            out[2] = v16 | v15;
            v6 += 3;
            if (v6 >= outmax)
            {
              return -3;
            }

            out += 3;
          }
        }

        inlen -= 4;
      }

      while (inlen > 3);
      if (v7)
      {
        v5 = -5;
      }

      else
      {
        v5 = 1;
      }

      if (!inlen)
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *out = 0;
  if (outlen)
  {
    *outlen = v6;
  }

  return v5;
}

int sasl_mkchal(sasl_conn_t *conn, char *buf, unsigned int maxlen, unsigned int hostflag)
{
  if (hostflag && (v8 = *(conn + 298)) != 0)
  {
    v9 = strlen(v8) + 45;
  }

  else
  {
    v9 = 44;
  }

  if (v9 > maxlen)
  {
    return 0;
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  __buf = 0xAAAAAAAAAAAAAAAALL;
  arc4random_buf(&__buf, 8uLL);
  time(&v11);
  if (hostflag && *(conn + 298))
  {
    snprintf(buf, maxlen, "<%lu.%lu@%s>");
  }

  else
  {
    snprintf(buf, maxlen, "<%lu.%lu>");
  }

  return strlen(buf);
}

int sasl_utf8verify(const char *str, unsigned int len)
{
  if (!len)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2 - 1;
    v4 = -1;
    v5 = 1;
    do
    {
      v6 = v5;
      ++v4;
      ++v3;
      --v5;
    }

    while (((str[v2] << v4) & 0x80) != 0);
    if (v4)
    {
      break;
    }

    v3 = v2 + 1;
LABEL_13:
    v2 = v3;
    if (v3 >= len)
    {
      return 0;
    }
  }

  if (v4 != 1 && v4 <= 6)
  {
    v7 = v2 + 1;
    while (v6)
    {
      v8 = str[v7++] & 0xC0;
      ++v6;
      if (v8 != 128)
      {
        return -5;
      }
    }

    goto LABEL_13;
  }

  return -5;
}

uint64_t get_fqhostname(char *a1, int a2, int a3)
{
  v5 = a2;
  result = gethostname(a1, a2);
  if (!result)
  {
    if (strchr(a1, 46))
    {
      return 0;
    }

    v9 = 0xAAAAAAAAAAAAAAAALL;
    *&v10.ai_flags = xmmword_22D0EEF70;
    *(&v10.ai_addrlen + 1) = -1431655766;
    memset(&v10.ai_canonname, 0, 24);
    v10.ai_addrlen = 0;
    if (getaddrinfo(a1, 0, &v10, &v9))
    {
      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v7 = v9;
      if (v9)
      {
        ai_canonname = v9->ai_canonname;
        if (ai_canonname)
        {
          if (strchr(v9->ai_canonname, 46))
          {
            strncpy(a1, ai_canonname, v5);
            freeaddrinfo(v9);
            return 0;
          }
        }
      }

      freeaddrinfo(v7);
      if (!a3)
      {
        return 0;
      }

      *__error() = 96;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

int sasl_server_add_plugin(const char *plugname, sasl_server_plug_init_t *splugfunc)
{
  v16 = 0;
  v2 = -7;
  if (plugname && splugfunc)
  {
    v17 = -1431655766;
    v15 = -1431655766;
    v4 = (splugfunc)(*mechlist, 4, &v15, &v16, &v17);
    v2 = v4;
    if ((v4 + 20) > 0x15 || ((1 << (v4 + 20)) & 0x300001) == 0)
    {
      _sasl_log(0, 5, "%s_client_plug_init() failed in sasl_server_add_plugin(): %z\n", plugname, v4);
    }

    else if (v15 == 4)
    {
      if (v17 < 1)
      {
        return 0;
      }

      else
      {
        v6 = 0;
        while (1)
        {
          v7 = _sasl_allocation_utils(40);
          if (!v7)
          {
            break;
          }

          v8 = v7;
          *(v7 + 32) = 0;
          *v7 = 0u;
          *(v7 + 16) = 0u;
          *(v7 + 16) = v16;
          if (_sasl_strdup(plugname, (v7 + 8), 0))
          {
            off_280B0E738(v8);
            return -2;
          }

          *v8 = v15;
          *(v8 + 4) = v2;
          v9 = mechlist;
          v11 = (mechlist + 16);
          v10 = *(mechlist + 16);
          v12 = v16;
          if (v10 && (mech_compare(v16, *(v10 + 16)) & 0x80000000) != 0)
          {
            do
            {
              v13 = v10;
              v10 = *(v10 + 32);
            }

            while (v10 && mech_compare(v12, *(v10 + 16)) < 1);
            v11 = (v13 + 32);
          }

          *(v8 + 32) = v10;
          *v11 = v8;
          ++*(v9 + 24);
          ++v6;
          v16 = v12 + 26;
          if (v6 >= v17)
          {
            return 0;
          }
        }

        return -2;
      }
    }

    else
    {
      _sasl_log(0, 1, "version mismatch on  sasl_server_add_plugin for '%s': %d expected, but %d reported", plugname, 4, v15);
      return -23;
    }
  }

  return v2;
}

uint64_t do_authorization(uint64_t a1)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (_sasl_getcallback(a1, 32769, &v7, &v6))
  {
    v2 = 4294967282;
    sasl_seterror(a1, 0, "Internal Error %d in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/server.c near line %d", -14, 1494);
LABEL_3:
    *(a1 + 2400) = v2;
    return v2;
  }

  v3 = *(a1 + 4552);
  if (v3)
  {
    v4 = strlen(*(a1 + 4552));
  }

  else
  {
    v4 = 0;
  }

  v2 = (v7)(a1, v6, *(a1 + 2168), *(a1 + 2184), *(a1 + 2176), *(a1 + 2188), v3, v4, *(*(a1 + 4576) + 152));
  if ((v2 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  return v2;
}

uint64_t _sasl_server_mechs()
{
  if (!_sasl_server_active)
  {
    return 0;
  }

  v0 = *(mechlist + 16);
  if (v0)
  {
    v1 = 0;
    while (1)
    {
      result = _sasl_allocation_utils(16);
      if (!(v1 | result))
      {
        break;
      }

      if (!result)
      {
        v3 = *(v1 + 8);
        do
        {
          off_280B0E738(v1);
          v1 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
        return 0;
      }

      *result = **(v0 + 16);
      *(result + 8) = v1;
      v0 = *(v0 + 32);
      v1 = result;
      if (!v0)
      {
        return result;
      }
    }
  }

  return 0;
}

int sasl_checkapop(sasl_conn_t *conn, const char *challenge, unsigned int challen, const char *response, unsigned int resplen)
{
  names[2] = *MEMORY[0x277D85DE8];
  names[0] = "*userPassword";
  names[1] = 0;
  if (!_sasl_server_active)
  {
    return -12;
  }

  if (!challenge)
  {
    return 0;
  }

  if (!conn)
  {
    return -7;
  }

  if (!response)
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/server.c near line %d", 2261);
    v12 = -7;
    goto LABEL_14;
  }

  v8 = strrchr(response, 32);
  if (!v8 || (v9 = v8, strspn(v8 + 1, "0123456789abcdef") != 32))
  {
    sasl_seterror(conn, 0, "Bad Digest");
    v12 = -5;
LABEL_14:
    *(conn + 600) = v12;
    return v12;
  }

  v10 = _sasl_allocation_utils(v9 - response + 1);
  memcpy(v10, response, v9 - response);
  *(v10 + v9 - response) = 0;
  v11 = prop_request(*(*(conn + 572) + 152), names);
  if (v11)
  {
    v12 = v11;
    off_280B0E738(v10);
  }

  else
  {
    (*(*(*(conn + 572) + 80) + 360))(*(*(conn + 572) + 152), names[0]);
    v12 = _sasl_canon_user_lookup(conn, v10, v9 - response, 3, conn + 2160);
    off_280B0E738(v10);
    if (!v12)
    {
      v14 = _sasl_auxprop_verify_apop(conn, *(conn + 272), challenge, v9 + 1);
      if (v14)
      {
        v12 = v14;
        *(conn + 2168) = 0u;
      }

      else
      {
        v12 = do_authorization(conn);
      }
    }
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

  return v12;
}

void sasl_seterror(sasl_conn_t *conn, unsigned int flags, const char *fmt, ...)
{
  va_start(va, fmt);
  v3 = flags;
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  memset(v31, 170, sizeof(v31));
  if (conn)
  {
    if (!fmt)
    {
      return;
    }

    _sasl_get_errorbuf(conn, &v31[1], v31);
    v6 = strlen(fmt);
    va_copy(&v31[2], va);
    if (!v6)
    {
      v27 = 1;
      goto LABEL_44;
    }

    v7 = v6;
    v8 = 0;
    while (1)
    {
      if (fmt[v8] != 37)
      {
        if (!_buf_alloc(v31[1], v31[0], v33 + 1))
        {
          *(*v31[1] + v33) = fmt[v8];
LABEL_23:
          ++v33;
          goto LABEL_36;
        }

        return;
      }

      v36 = 0xAAAAAAAAAAAAAAAALL;
      v37 = -86;
      memset(__str, 170, 21);
      ++v8;
      v9 = 2;
      __format = 37;
      while (1)
      {
        v10 = fmt[v8];
        if (v10 > 0x68)
        {
          if (fmt[v8] > 0x72u)
          {
            if (v10 == 122)
            {
              v20 = v31[0];
              v19 = v31[1];
              v23 = v31[2]++;
              v24 = *v23;
              if (v24 == -20)
              {
                v25 = -13;
              }

              else
              {
                v25 = v24;
              }

              v22 = sasl_errstring(v25, 0, 0);
              goto LABEL_32;
            }

            if (v10 == 115)
            {
              v15 = v31[1];
              v16 = v31[2]++;
              v17 = *v16;
              v18 = v31[0];
              goto LABEL_35;
            }
          }

          else
          {
            if (v10 == 105)
            {
              goto LABEL_24;
            }

            if (v10 == 109)
            {
              v20 = v31[0];
              v19 = v31[1];
              v21 = v31[2]++;
              v22 = strerror(*v21);
LABEL_32:
              v17 = v22;
              v15 = v19;
              v18 = v20;
              goto LABEL_35;
            }
          }

          goto LABEL_18;
        }

        if (v10 == 37)
        {
          if (_buf_alloc(v31[1], v31[0], v33 + 1))
          {
            return;
          }

          *(*v31[1] + v33) = 37;
          goto LABEL_23;
        }

        if (v10 == 99)
        {
          break;
        }

        if (v10 == 100)
        {
LABEL_24:
          v13 = &__format + v9;
          *(v13 - 1) = v10;
          *v13 = 0;
          v14 = v31[2]++;
          snprintf(__str, 0x14uLL, &__format, *v14);
          goto LABEL_34;
        }

LABEL_18:
        v11 = &__format + v9;
        *(v11 - 1) = v10;
        *v11 = 0;
        if (++v8 <= v7)
        {
          v12 = v9++ - 1;
          if (v12 < 9)
          {
            continue;
          }
        }

        goto LABEL_37;
      }

      *(&__format + v9 - 1) = 99;
      v26 = v31[2]++;
      __str[0] = *v26;
      __str[1] = 0;
LABEL_34:
      v18 = v31[0];
      v15 = v31[1];
      v17 = __str;
LABEL_35:
      if (_sasl_add_string(v15, v18, &v33, v17))
      {
        return;
      }

LABEL_36:
      ++v8;
LABEL_37:
      if (v8 >= v7)
      {
        v27 = v33 + 1;
LABEL_44:
        if (!_buf_alloc(v31[1], v31[0], v27))
        {
          *(*v31[1] + v33) = 0;
          if ((v3 & 1) == 0 && !_sasl_getcallback(conn, 2, &v32, &v31[3]))
          {
            v28 = v32;
            if (v32)
            {
              v29 = v31[3];
              v30 = *(conn + 301);
LABEL_49:
              v28(v29, 2, v30);
            }
          }
        }

        return;
      }
    }
  }

  if ((flags & 1) == 0 && !_sasl_getcallback(0, 2, &v32, &v31[3]))
  {
    v28 = v32;
    if (v32)
    {
      v29 = v31[3];
      v30 = "No sasl_conn_t passed to sasl_seterror";
      goto LABEL_49;
    }
  }
}

void _stringByApplyingIDNATranslationWithRange_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22D092000, a2, OS_LOG_TYPE_ERROR, "failed to allocate buffer of size %d for IDNA conversion", v2, 8u);
}

void ___stringByApplyingIDNATranslationWithRange_block_invoke_cold_1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "failed to create UIDNA pointer, IDNA domain names will be broken: %s", buf, 0xCu);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}