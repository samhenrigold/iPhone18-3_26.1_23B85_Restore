id nwswifttls_copy_definition(uint64_t a1)
{
  if (nwswifttls_copy_definition_onceToken != -1)
  {
    nwswifttls_copy_definition_cold_1();
  }

  v2 = nwswifttls_copy_definition_definition;

  return v2;
}

id nwswifttlsrecord_copy_definition()
{
  if (nwswifttlsrecord_copy_definition_onceToken != -1)
  {
    nwswifttlsrecord_copy_definition_cold_1();
  }

  v1 = nwswifttlsrecord_copy_definition_definition;

  return v1;
}

char *nwswifttls_copy_options(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10F0040BA95764DuLL);
    v5 = v4;
    if (v4)
    {
      nwswifttls_copy_options_contents(v4, a2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *nwswifttls_copy_options_contents(char *result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(a2 + 144);
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = *(v3 + 18);
      *(v3 + 18) = v5;
    }

    v7 = *(a2 + 152);
    if (v7)
    {
      objc_storeStrong(v3 + 19, v7);
    }

    v8 = *(a2 + 160);
    if (v8)
    {
      v9 = _Block_copy(v8);
      v10 = *(v3 + 20);
      *(v3 + 20) = v9;
    }

    v11 = *(a2 + 168);
    if (v11)
    {
      objc_storeStrong(v3 + 21, v11);
    }

    v12 = *(a2 + 176);
    if (v12)
    {
      v13 = _Block_copy(v12);
      v14 = *(v3 + 22);
      *(v3 + 22) = v13;
    }

    v15 = *(a2 + 184);
    if (v15)
    {
      objc_storeStrong(v3 + 23, v15);
    }

    v16 = *(a2 + 336);
    if (v16)
    {
      v17 = _Block_copy(v16);
      v18 = *(v3 + 42);
      *(v3 + 42) = v17;
    }

    v19 = *(a2 + 280);
    if (v19)
    {
      *(v3 + 35) = CFArrayCreateCopy(*MEMORY[0x1E695E480], v19);
    }

    v20 = *(a2 + 48);
    if (v20)
    {
      v21 = xpc_copy(v20);
      v22 = *(v3 + 6);
      *(v3 + 6) = v21;
    }

    v23 = *(a2 + 40);
    if (v23)
    {
      v24 = xpc_copy(v23);
      v25 = *(v3 + 5);
      *(v3 + 5) = v24;
    }

    v26 = *(a2 + 232);
    if (v26)
    {
      v27 = xpc_copy(v26);
      v28 = *(v3 + 29);
      *(v3 + 29) = v27;
    }

    v29 = *(a2 + 136);
    if (v29)
    {
      objc_storeStrong(v3 + 17, v29);
    }

    *(v3 + 369) = *(v3 + 369) & 0xFF7FFFFF | (((*(a2 + 369) >> 23) & 1) << 23);
    v30 = *(a2 + 192);
    if (v30)
    {
      objc_storeStrong(v3 + 24, v30);
    }

    v31 = *(a2 + 8);
    if (v31)
    {
      *(v3 + 1) = strdup(v31);
    }

    if (*(a2 + 304))
    {
      v3[304] = *(a2 + 304);
    }

    if (*(a2 + 305))
    {
      v3[305] = *(a2 + 305);
    }

    *(v3 + 167) = *(a2 + 334);
    v32 = *(a2 + 56);
    if (v32)
    {
      objc_storeStrong(v3 + 7, v32);
    }

    v33 = *(a2 + 384);
    if (v33)
    {
      *(v3 + 48) = CFRetain(v33);
    }

    if (*(a2 + 408))
    {
      v3[408] |= 1u;
    }

    v34 = *(a2 + 392);
    if (v34)
    {
      *(v3 + 49) = CFRetain(v34);
    }

    v35 = *(a2 + 400);
    if (v35)
    {
      objc_storeStrong(v3 + 50, v35);
    }

    result = *(a2 + 72);
    if (result)
    {
      *(v3 + 9) = xpc_copy(result);

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

nw_protocol *nwswifttls_create()
{
  v0 = objc_alloc_init(NWConcrete_nwswifttls);
  v1 = v0;
  if (v0)
  {
    p_protocol = &v0->protocol;
    v0->protocol.identifier = &g_nwswifttls_identifier;
    v0->protocol.callbacks = &g_nwswifttls_callbacks;
    v3 = v0;
    v3->protocol.handle = v3;
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
  }

  else
  {
    p_protocol = 0;
  }

  return p_protocol;
}

uint64_t nwswifttls_add_input_handler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = 0;
      if (!a2 || *(a1 + 48))
      {
        goto LABEL_12;
      }

      v6 = *(a2 + 24);
      if (v6)
      {
        v7 = *(v6 + 112);
        if (v7)
        {
          v8 = v7(a2);
          if (v8 && (v9 = nw_parameters_copy_protocol_options_legacy(), v10 = *(v4 + 9), *(v4 + 9) = v9, v10, *(v4 + 9)))
          {
            v11 = nw_protocol_copy_swift_tls_definition();
            v12 = MEMORY[0x1B274E490]();
            v13 = *(v4 + 10);
            *(v4 + 10) = v12;

            uuid_copy(v4 + 8, a2);
            *(a2 + 32) = v4 + 8;
            *(a1 + 48) = a2;
            v5 = 1;
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_12;
        }
      }
    }

    v5 = 0;
LABEL_12:

    return v5;
  }

  return 0;
}

void nwswifttls_connected(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_45;
    }

    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_45;
    }

    v6 = *(v5 + 24);
    if (!v6)
    {
      goto LABEL_45;
    }

    v7 = *(v6 + 40);
    if (!v7)
    {
      goto LABEL_45;
    }

    v7(*(a1 + 48), a2);
    if (*(a1 + 32) != a2)
    {
      goto LABEL_45;
    }

    if (*(v4 + 287) == 1)
    {
      (*(*(v5 + 24) + 40))(v5, a1);
LABEL_45:

      return;
    }

    if (*(v4 + 286))
    {
      goto LABEL_45;
    }

    *(v4 + 286) = 1;
    v4[40] = 0;
    v8 = (*(*(*(a1 + 48) + 24) + 112))();
    *(v4 + 64) = nwswifttls_get_transport_protocol(v8);
    if (os_variant_allows_internal_security_policies() && nw_parameters_get_enable_tls_keylog())
    {
      *(v4 + 282) = 1;
    }

    if (nw_parameters_get_server_mode())
    {
      *(v4 + 304) = 1;
      if (nwswifttls_configure_with_sec_protocol_options(a1))
      {
        v9 = v4[31];
        v10 = v4[42];
        if (v10 && v4[43])
        {
          v11 = _Block_copy(v10);
          v12 = v4[43];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nwswifttls_connected_block_invoke;
          aBlock[3] = &unk_1E7B2E540;
          v13 = v4;
          v53 = v13;
          v54 = v12;
          v55 = v11;
          v14 = v11;
          v15 = v12;
          v16 = _Block_copy(aBlock);
          v17 = [_TtC10nwswifttls20STLSServerHandshaker alloc];
          LOBYTE(v50) = *(v13 + 224);
          v18 = [(STLSServerHandshaker *)v17 init:v13[34] serverKey:v13[39] quicTransportParameters:v9 alpn:v13[33] EPSKs:v13[41] rawEPSKsEnabled:*(v13 + 352) epskSelectionBlock:v16 enableEarlyData:v50];
          v19 = v13[37];
          v13[37] = v18;
        }

        else
        {
          v26 = v4[45];
          v27 = [_TtC10nwswifttls20STLSServerHandshaker alloc];
          v28 = v4[34];
          if (v26)
          {
            v29 = [(STLSServerHandshaker *)v27 init:v28 quicTransportParameters:v9 alpn:v4[33] pakeContext:v4[45] pakeClientIdentity:v4[46] pakeServerIdentity:v4[47] pakePasswordVerifier:v4[48]];
          }

          else
          {
            LOBYTE(v50) = *(v4 + 224);
            v29 = [(STLSServerHandshaker *)v27 init:v28 serverKey:v4[39] quicTransportParameters:v9 alpn:v4[33] EPSKs:v4[41] rawEPSKsEnabled:*(v4 + 352) epskSelectionBlock:0 enableEarlyData:v50];
          }

          v42 = v4[37];
          v4[37] = v29;
        }

        v43 = v4[41];
        v4[41] = 0;

        v44 = v4[42];
        v4[42] = 0;

        v45 = v4[43];
        v4[43] = 0;

        v46 = v4[31];
        v4[31] = 0;

        v47 = v4[33];
        v4[33] = 0;

        v48 = v4[39];
        if (v48)
        {
          CFRelease(v48);
        }

        v4[39] = 0;
        if (!v4[37])
        {
          nwswifttls_disconnect(a1);
        }

LABEL_43:
      }
    }

    else
    {
      *(v4 + 304) = 0;
      if (nwswifttls_configure_with_sec_protocol_options(a1))
      {
        v9 = v4[29];
        v20 = v4[31];
        if (*(v4 + 280) || *(v4 + 281))
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v4 + 280)];
          [v21 addObject:v22];

          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v4 + 281)];
          [v21 addObject:v23];
        }

        else
        {
          v21 = 0;
        }

        v24 = v4[41];
        if (v24)
        {
          v25 = [v24 objectAtIndexedSubscript:0];
        }

        else
        {
          v25 = 0;
        }

        v30 = v4[45];
        v31 = [_TtC10nwswifttls20STLSClientHandshaker alloc];
        if (v30)
        {
          v32 = [(STLSClientHandshaker *)v31 init:v4[34] quicTransportParameters:v20 alpn:v4[33] sessionState:v9 ticketRequest:v21 pakeContext:v4[45] pakeClientIdentity:v4[46] pakeServerIdentity:v4[47] pakeClientPasswordVerifier:v4[48]];
        }

        else
        {
          BYTE1(v51) = *(v4 + 224);
          LOBYTE(v51) = *(v4 + 352);
          LOWORD(v49) = *(v4 + 142);
          v32 = [(STLSClientHandshaker *)v31 init:v4[30] serverName:v4[34] quicTransportParameters:v20 alpn:v4[33] sessionState:v9 ticketRequest:v21 keyExchangeGroup:v49 externalPreSharedKey:v25 rawEPSKsEnabled:v51 enableEarlyData:?];
        }

        v33 = v4[37];
        v4[37] = v32;

        v34 = v4[41];
        v4[41] = 0;

        v35 = v4[30];
        v4[30] = 0;

        v36 = v4[31];
        v4[31] = 0;

        v37 = v4[33];
        v4[33] = 0;

        v38 = v4[34];
        v4[34] = 0;

        v39 = v4[37];
        if (v39)
        {
          v40 = [v39 startHandshake];
          v41 = v40;
          if (v40)
          {
            nwswifttls_add_message(v4, 0, [v40 bytes], objc_msgSend(v40, "length"));
            nwswifttls_send_messages(v4, 0);
            nwswifttls_update_encryption_secrets(v4);
          }

          else
          {
            nwswifttls_disconnect(a1);
          }
        }

        else
        {
          nwswifttls_disconnect(a1);
        }

        goto LABEL_43;
      }
    }

    goto LABEL_45;
  }
}

uint64_t nwswifttls_get_transport_protocol(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = nw_protocol_stack_copy_original_proxied_transport_protocol();
  if (v2 || (v2 = nw_protocol_stack_copy_transport_protocol(v1)) != 0)
  {
    v3 = v2;
    v4 = nw_protocol_options_copy_definition(v2);
    if (v4)
    {
      v5 = nw_protocol_copy_quic_connection_definition();
      if (MEMORY[0x1B274E290](v4, v5))
      {
      }

      else
      {
        v7 = nw_protocol_copy_quic_stream_definition();
        v8 = MEMORY[0x1B274E290](v4, v7);

        if ((v8 & 1) == 0)
        {
          v9 = nw_protocol_copy_tcp_definition();
          v6 = MEMORY[0x1B274E290](v4, v9);

          goto LABEL_11;
        }
      }

      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

uint64_t nwswifttls_configure_with_sec_protocol_options(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 40);
    v3 = v2;
    if (v2)
    {
      v5 = v2;
      v1 = nw_protocol_options_access_handle();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t __nwswifttls_configure_with_sec_protocol_options_block_invoke(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 336);
  if (!result)
  {
    return result;
  }

  *(*(a1 + 32) + 88) = (*(result + 16))(result, 0);
  *(*(a1 + 32) + 96) = (*(*(a2 + 336) + 16))();
  *(*(a1 + 32) + 104) = (*(*(a2 + 336) + 16))();
  *(*(a1 + 32) + 112) = (*(*(a2 + 336) + 16))();
  v5 = _Block_copy(*(a2 + 144));
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = v5;

  v8 = _Block_copy(*(a2 + 160));
  v9 = *(a1 + 32);
  v10 = *(v9 + 192);
  *(v9 + 192) = v8;

  objc_storeStrong((*(a1 + 32) + 200), *(a2 + 168));
  v11 = _Block_copy(*(a2 + 176));
  v12 = *(a1 + 32);
  v13 = *(v12 + 208);
  *(v12 + 208) = v11;

  objc_storeStrong((*(a1 + 32) + 216), *(a2 + 184));
  if ((nwswifttls_configure_server_raw_public_key_certificate(*(a1 + 32), a2) & 1) == 0)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 240);
    *(v14 + 240) = 0;
  }

  objc_storeStrong((*(a1 + 32) + 248), *(a2 + 136));
  if (!nwswifttls_configure_application_protocols(*(a1 + 32), a2))
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 264);
    *(v16 + 264) = 0;
  }

  if (!nwswifttls_configure_server_name(*(a1 + 32), a2, *(a1 + 40)))
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 272);
    *(v18 + 272) = 0;
  }

  v20 = *(a1 + 32);
  if ((*(v20 + 304) & 1) == 0)
  {
    *(v20 + 280) = *(a2 + 304);
    *(*(a1 + 32) + 281) = *(a2 + 305);
    v20 = *(a1 + 32);
  }

  *(v20 + 284) = 24;
  if (*(a2 + 334) == 2)
  {
    *(*(a1 + 32) + 284) = 4588;
  }

  v21 = *(a2 + 232);
  if (v21)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nwswifttls_configure_with_sec_protocol_options_block_invoke_2;
    applier[3] = &unk_1E7B2E690;
    v61 = *(a1 + 32);
    xpc_array_apply(v21, applier);
  }

  if (*(a2 + 56))
  {
    v22 = sec_identity_copy_type();
    if (v22 == 2)
    {
      v24 = *(a1 + 32);
      if (v24[304] == 1 && (*(a2 + 384) || *(a2 + 392)))
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_1();
        return 0;
      }

      if ((nwswifttls_configure_pake(v24, a2) & 1) == 0)
      {
        v25 = *(a1 + 32);
        v26 = *(v25 + 360);
        *(v25 + 360) = 0;

        v27 = *(a1 + 32);
        v28 = *(v27 + 368);
        *(v27 + 368) = 0;

        v29 = *(a1 + 32);
        v30 = *(v29 + 376);
        *(v29 + 376) = 0;

        v31 = *(a1 + 32);
        v32 = *(v31 + 384);
        *(v31 + 384) = 0;

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_2();
        }
      }
    }

    else
    {
      if (v22 != 1)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_3();
        return 0;
      }

      if (*(*(a1 + 32) + 304) == 1)
      {
        v23 = sec_identity_copy_ref(*(a2 + 56));
        privateKeyRef = 0;
        if (SecIdentityCopyPrivateKey(v23, &privateKeyRef))
        {
          if (v23)
          {
            CFRelease(v23);
          }

          return 0;
        }

        *(*(a1 + 32) + 312) = privateKeyRef;
        if (v23)
        {
          CFRelease(v23);
        }
      }
    }
  }

  v33 = a2 + 369;
  if ((*(a2 + 371) & 0x80) != 0 && !*(a2 + 384))
  {
    objc_storeStrong((*(a1 + 32) + 232), *(a2 + 192));
    *(*(a1 + 32) + 224) = (*v33 & 0x800000) != 0;
  }

  if (*(a2 + 384))
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = *(a1 + 32);
    v36 = *(v35 + 328);
    *(v35 + 328) = v34;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = *(a2 + 384);
    v37 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v56;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v56 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v55 + 1) + 8 * i);
          v42 = a1;
          v43 = *(*(a1 + 32) + 328);
          v44 = [SwiftTLSExternalPreSharedKey alloc];
          v45 = [v41 external_identity];
          v46 = [v41 epsk];
          v47 = [v41 context];
          v48 = [(SecExternalPreSharedKey *)v44 initWithExternalIdentity:v45];
          v49 = v43;
          a1 = v42;
          [v49 addObject:v48];
        }

        v38 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v38);
    }

    v33 = a2 + 369;
    if ((*(a2 + 371) & 0x80) != 0)
    {
      *(*(a1 + 32) + 224) = 1;
    }
  }

  *(*(a1 + 32) + 352) = *(a2 + 408) & 1;
  if (*(*(a1 + 32) + 304) != 1)
  {
    return 1;
  }

  v50 = *(a2 + 392);
  if (!v50 || !*(a2 + 400))
  {
    return 1;
  }

  v51 = _Block_copy(v50);
  v52 = *(a1 + 32);
  v53 = *(v52 + 336);
  *(v52 + 336) = v51;

  objc_storeStrong((*(a1 + 32) + 344), *(a2 + 400));
  result = 1;
  if ((*(v33 + 2) & 0x80) != 0)
  {
    *(*(a1 + 32) + 224) = 1;
  }

  return result;
}

uint64_t type metadata accessor for PeerCertificateBundle.Bundle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __nwswifttls_copy_definition_block_invoke()
{
  if (nwswifttls_identifier_onceToken != -1)
  {
    nwswifttls_identifier_cold_1();
  }

  v0 = nw_protocol_definition_create_with_identifier();
  v1 = nwswifttls_copy_definition_definition;
  nwswifttls_copy_definition_definition = v0;

  nw_protocol_definition_set_options_allocator();
  nw_protocol_definition_set_options_equality_check();
  nw_protocol_definition_set_options_comparator();
  v2 = nwswifttls_copy_definition_definition;

  return MEMORY[0x1EEDD42F0](v2, nwswifttls_allocate_metadata, nwswifttls_deallocate_metadata);
}

const __CFArray *nwswifttls_configure_server_raw_public_key_certificate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 280);
      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = v3[30];
        v3[30] = v5;

        if (v3[30])
        {
          if (CFArrayGetCount(v4))
          {
            v7 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
              if (ValueAtIndex)
              {
                [v3[30] addObject:ValueAtIndex];
              }

              ++v7;
            }

            while (v7 < CFArrayGetCount(v4));
          }

          v4 = ([v3[30] count] != 0);
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_1B25F7CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HandshakeState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

BOOL nwswifttls_configure_application_protocols(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (!*(a2 + 48) || (v5 = MEMORY[0x1B274EDF0](), v6 = MEMORY[0x1E69E9E50], v5 != MEMORY[0x1E69E9E50]))
    {
      v4 = 0;
      goto LABEL_23;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(v3 + 33);
    *(v3 + 33) = v7;

    if (!xpc_array_get_count(*(a2 + 48)))
    {
LABEL_22:
      v4 = [*(v3 + 33) count] != 0;
      goto LABEL_23;
    }

    v9 = 0;
    while (1)
    {
      v10 = xpc_array_get_value(*(a2 + 48), v9);
      if (MEMORY[0x1B274EDF0]() == v6)
      {
        uint64 = xpc_array_get_uint64(v10, 1uLL);
        v14 = *(v3 + 64);
        if (v14)
        {
          v15 = uint64 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && v14 != uint64)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = 0;
      }

      else
      {
        v11 = *(a2 + 48);
        v12 = v9;
      }

      string = xpc_array_get_string(v11, v12);
      if (string)
      {
        v18 = *(v3 + 33);
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        [v18 addObject:v19];
      }

LABEL_21:

      if (++v9 >= xpc_array_get_count(*(a2 + 48)))
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:

  return v4;
}

BOOL nwswifttls_configure_server_name(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2 && *(a2 + 8))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a2 + 8) encoding:4];
      v8 = v6[34];
      v6[34] = v7;
      v9 = 1;
    }

    else
    {
      v8 = v5;
      if (a3 && ((*(*(*(a3 + 48) + 24) + 136))(), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = nw_endpoint_copy_proxy_original_endpoint();
        v13 = v12;
        if (v12)
        {
          v14 = v12;

          v11 = v14;
        }

        v24 = 0;
        endpoint_name = nwswifttls_get_endpoint_name(v11, &v24);
        v16 = v11;
        v17 = nw_endpoint_copy_parent_endpoint();
        v18 = v16;
        if (v17)
        {
          v19 = v17;
          v20 = v16;
          do
          {
            v18 = v19;

            v19 = nw_endpoint_copy_parent_endpoint();
            v20 = v18;
          }

          while (v19);
        }

        if (nw_endpoint_get_type(v18) == (nw_endpoint_type_url|nw_endpoint_type_address))
        {
          if (v24 == 1)
          {
            free(endpoint_name);
          }

          endpoint_name = nwswifttls_get_endpoint_name(v18, &v24);
        }

        v9 = endpoint_name != 0;
        if (endpoint_name)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:endpoint_name encoding:4];
          v22 = v8[34];
          v8[34] = v21;

          if (v24 == 1)
          {
            free(endpoint_name);
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

char *nwswifttls_get_endpoint_name(void *a1, _BYTE *a2)
{
  v3 = a1;
  *a2 = 0;
  type = nw_endpoint_get_type(v3);
  parent_endpoint_domain = 0;
  if (type > nw_endpoint_type_host)
  {
    if (type == nw_endpoint_type_bonjour_service)
    {
      bonjour_fullname = nw_endpoint_get_bonjour_fullname();
      goto LABEL_11;
    }

    if (type == (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      bonjour_fullname = nw_endpoint_get_srv_name();
      goto LABEL_11;
    }
  }

  else if (type == nw_endpoint_type_address)
  {
    parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
    if (!parent_endpoint_domain)
    {
      parent_endpoint_domain = nw_endpoint_copy_address_string(v3);
      *a2 = 1;
    }
  }

  else if (type == nw_endpoint_type_host)
  {
    bonjour_fullname = nw_endpoint_get_hostname(v3);
LABEL_11:
    parent_endpoint_domain = bonjour_fullname;
  }

  return parent_endpoint_domain;
}

uint64_t __nwswifttls_configure_with_sec_protocol_options_block_invoke_2(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v5 = value;
  if (value != 4588 && value != 29)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 284) = v5;
  return result;
}

void *STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, void *a8, char a9, char a10, __int128 *a11)
{
  v12 = v11;
  v187 = a5;
  v188 = a8;
  v170 = a7;
  v180 = a1;
  v181 = a6;
  v190 = a4;
  v191 = a3;
  v189 = a2;
  v184 = a11;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v177 = v151 - v14;
  v15 = type metadata accessor for SymmetricKey();
  v163 = *(v15 - 8);
  v164 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v162 = v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v157 = v151 - v18;
  v158 = type metadata accessor for EPSK(0);
  v19 = MEMORY[0x1EEE9AC00](v158);
  v159 = (v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v155 = (v151 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = (v151 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v160 = v151 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v156 = v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v167 = v151 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v161 = v151 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v166 = v151 - v33;
  v165 = type metadata accessor for P256.Signing.PublicKey();
  v169 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v168 = v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NSFastEnumerationIterator();
  v36 = *(v35 - 8);
  v178 = v35;
  v179 = v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = v151 - v40;
  v42 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v43 = type metadata accessor for HandshakeStateMachine(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v182 = v42;
  v171 = v43;
  v172 = v44 + 56;
  v173 = v45;
  (v45)(&v12[v42], 1, 1);
  v46 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v47 = type metadata accessor for PartialHandshakeResult(0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v183 = v46;
  v175 = v49;
  v176 = v47;
  v174 = v48 + 56;
  (v49)(&v12[v46], 1, 1);
  v50 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v51 = type metadata accessor for EncryptionLevel(0);
  v52 = *(*(v51 - 8) + 56);
  v52(&v12[v50], 1, 1, v51);
  v53 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v52(&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v51);
  *&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v54 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  v186 = v12;
  *&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v55 = v189;
  if (v189 && v191 && v190)
  {
    v56 = v180;
    if (v180)
    {
      v57 = v189;
      v58 = v191;
      v59 = v190;
      v60 = v56;
    }

    else
    {
      type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      v67 = v55;
      v68 = v191;
      v69 = v190;
      v60 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    }

    v70 = v56;
    v152 = v60;
    v153 = v70;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v204 + 1))
    {
      v151[1] = v169 + 32;
      v180 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v203, &v196);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v204 + 1))
          {
            goto LABEL_23;
          }
        }

        v71 = *v193;
        v196 = *v193;
        outlined copy of Data._Representation(v193[0], v193[1]);
        lazy protocol witness table accessor for type Data and conformance Data();
        P256.Signing.PublicKey.init<A>(derRepresentation:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180[2] + 1, 1, v180, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
        }

        v73 = v180[2];
        v72 = v180[3];
        if (v73 >= v72 >> 1)
        {
          v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v180, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
        }

        outlined consume of Data._Representation(v71, *(&v71 + 1));
        v74 = v180;
        v180[2] = v73 + 1;
        (*(v169 + 32))(v74 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v73, v168, v165);
        NSFastEnumerationIterator.next()();
      }

      while (*(&v204 + 1));
    }

    else
    {
      v180 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:
    v75 = *(v179 + 8);
    v179 += 8;
    (v75)(v41, v178);
    if (v181)
    {
      if (*(v181 + 16) == 2)
      {
        LODWORD(v169) = *(v181 + 32);

        LODWORD(v181) = 0;
        goto LABEL_28;
      }
    }

    LODWORD(v169) = 0;
    LODWORD(v181) = 1;
LABEL_28:
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v204 + 1))
    {
      v76 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v203, &v196);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v204 + 1))
          {
            goto LABEL_40;
          }
        }

        v77 = *v193;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
        }

        v80 = *(v76 + 2);
        v79 = *(v76 + 3);
        if (v80 >= v79 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v76);
        }

        *(v76 + 2) = v80 + 1;
        *&v76[16 * v80 + 32] = v77;
        NSFastEnumerationIterator.next()();
        v75 = v168;
      }

      while (*(&v204 + 1));
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

LABEL_40:
    (v75)(v39, v178);
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    v84 = v191;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
    v191 = v84;

    v88 = v87 >> 62;
    if ((v87 >> 62) > 1)
    {
      v89 = 0;
      if (v88 == 2)
      {
        v89 = *(v85 + 16);
      }
    }

    else if (v88)
    {
      v89 = v85;
    }

    else
    {
      v89 = 0;
    }

    HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v81, v83, v180, v85, v87, v89, v76, v169 | (v181 << 16), v195, v170 & 0x1FFFF, a10 & 1, a9 & 1);
    v90 = v187;
    if (v187)
    {
      v91 = v187;
      v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
      outlined init with copy of HandshakeStateMachine.Configuration(v195, &v203);
      v95 = v166;
      _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v92, v94, v195, v192, v166);
      v96 = v190;
      v97 = v191;
      v98 = v188;

      v106 = v189;
      outlined destroy of HandshakeStateMachine.Configuration(v195);

      v173(v95, 0, 1, v171);
      v107 = v186;
      v108 = v182;
      swift_beginAccess();
      v109 = v107 + v108;
      v110 = v95;
LABEL_80:
      outlined assign with take of PartialHandshakeResult?(v110, v109, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      goto LABEL_81;
    }

    v96 = v190;
    v97 = v191;
    v98 = v188;
    if (!v188)
    {
      v111 = v184;
      v112 = v184[5];
      v200 = v184[4];
      v201 = v112;
      v202[0] = v184[6];
      *(v202 + 9) = *(v184 + 105);
      v113 = v184[1];
      v196 = *v184;
      v197 = v113;
      v114 = v184[3];
      v198 = v184[2];
      v199 = v114;
      if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v196) == 1)
      {
        v115 = v167;
        HandshakeStateMachine.init(configuration:)(v195, v167);

        v106 = v189;
      }

      else
      {
        v207 = v200;
        v208 = v201;
        v209[0] = v202[0];
        *(v209 + 9) = *(v202 + 9);
        v203 = v196;
        v204 = v197;
        v205 = v198;
        v206 = v199;
        outlined init with copy of Any?(v111, v193, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        outlined init with copy of HandshakeStateMachine.Configuration(v195, v193);
        outlined init with copy of Any?(v111, v193, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v115 = v156;
        _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v203, v195, v192, v156);

        v106 = v189;
        outlined destroy of HandshakeStateMachine.Configuration(v195);
        outlined destroy of P256.Signing.PrivateKey?(v111, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      }

      v173(v115, 0, 1, v171);
      v107 = v186;
      v116 = v182;
      swift_beginAccess();
      outlined assign with take of PartialHandshakeResult?(v115, v107 + v116, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      goto LABEL_82;
    }

    v99 = v188;
    v100 = [v99 external_identity];
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = v103 >> 62;
    v105 = 0;
    if (a9)
    {
      if ((v103 >> 62) > 1)
      {
        if (v104 == 2)
        {
          v105 = *(v101 + 16);
        }
      }

      else if (v104)
      {
        v105 = v101;
      }

      v117 = [v99 epsk];

      v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      *&v203 = v118;
      *(&v203 + 1) = v120;
      v121 = v157;
      SymmetricKey.init<A>(data:)();
      if (SymmetricKey.bitCount.getter() <= 127)
      {
        v203 = xmmword_1B26C5EE0;
        LOBYTE(v204) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v101, v103);
        (*(v163 + 8))(v121, v164);
LABEL_75:
        v96 = v190;
        v97 = v191;
        v98 = v188;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v141 = type metadata accessor for Logger();
        __swift_project_value_buffer(v141, logger);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_1B25F5000, v142, v143, "Failed to use provided EPSK", v144, 2u);
          MEMORY[0x1B274ECF0](v144, -1, -1);
        }

        v145 = v167;
        HandshakeStateMachine.init(configuration:)(v195, v167);

        v106 = v189;
        v173(v145, 0, 1, v171);
        v107 = v186;
        v146 = v182;
        swift_beginAccess();
        v109 = v107 + v146;
        v110 = v145;
        goto LABEL_80;
      }

      v127 = 0;
      v130 = 0;
      v132 = v154;
      *v154 = v101;
      v133 = v132;
      v129 = 0xF000000000000000;
    }

    else
    {
      if ((v103 >> 62) > 1)
      {
        if (v104 == 2)
        {
          v105 = *(v101 + 16);
        }
      }

      else if (v104)
      {
        v105 = v101;
      }

      v122 = [v99 epsk];
      v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;

      *&v203 = v123;
      *(&v203 + 1) = v125;
      SymmetricKey.init<A>(data:)();
      v126 = [v99 context];

      v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = v128;

      v130 = 0;
      v131 = v129 >> 62;
      if ((v129 >> 62) > 1)
      {
        if (v131 == 2)
        {
          v130 = *(v127 + 16);
        }
      }

      else if (v131)
      {
        v130 = v127;
      }

      v121 = v162;
      if (SymmetricKey.bitCount.getter() <= 127)
      {
        v203 = xmmword_1B26C5EE0;
        LOBYTE(v204) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v127, v129);
        outlined consume of Data._Representation(v101, v103);
        (*(v163 + 8))(v121, v164);
        v90 = v187;
        goto LABEL_75;
      }

      v134 = v155;
      *v155 = v101;
      v133 = v134;
    }

    v135 = v121;
    *(v133 + 8) = v103;
    *(v133 + 16) = v105;
    v136 = v158;
    (*(v163 + 32))(v133 + *(v158 + 20), v135, v164);
    v137 = (v133 + *(v136 + 24));
    *v137 = v127;
    v137[1] = v129;
    v137[2] = v130;
    v138 = v160;
    outlined init with take of HandshakeStateMachine(v133, v160, type metadata accessor for EPSK);
    v139 = v159;
    outlined init with copy of HandshakeStateMachine(v138, v159, type metadata accessor for EPSK);
    outlined init with copy of HandshakeStateMachine.Configuration(v195, &v203);
    v140 = v161;
    _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v139, v195, v192, v161);
    outlined destroy of ExportedAuthenticator(v138, type metadata accessor for EPSK);
    v97 = v191;

    v106 = v189;
    outlined destroy of HandshakeStateMachine.Configuration(v195);
    v96 = v190;

    v173(v140, 0, 1, v171);
    v107 = v186;
    v150 = v182;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v140, v107 + v150, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
    v90 = v187;
    v98 = v188;
LABEL_81:
    v111 = v184;
LABEL_82:
    v147 = v177;
    v175(v177, 1, 1, v176);
    v148 = v183;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v147, v107 + v148, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v194.receiver = v107;
    v194.super_class = ObjectType;
    v149 = objc_msgSendSuper2(&v194, sel_init);
    outlined destroy of P256.Signing.PrivateKey?(v111, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

    return v149;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, logger);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1B25F5000, v62, v63, "Cannot start the handshake with NULL parameters", v64, 2u);
    MEMORY[0x1B274ECF0](v64, -1, -1);
  }

  outlined destroy of P256.Signing.PrivateKey?(v184, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

  v65 = v186;
  outlined destroy of P256.Signing.PrivateKey?(&v186[v182], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v65[v183], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v65[v50], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v65[v53], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);

  swift_deallocPartialClassInstance();
  return 0;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

NSData_optional __swiftcall STLSClientHandshaker.startHandshake()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = type metadata accessor for EncryptionLevel(0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for PartialHandshakeResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  v18 = type metadata accessor for HandshakeStateMachine(0);
  v19 = (*(*(v18 - 8) + 48))(v1 + v17, 1, v18);
  if (v19 == 1)
  {
    goto LABEL_20;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v35, v16);
  swift_endAccess();
  outlined init with copy of HandshakeStateMachine(v16, v12, type metadata accessor for PartialHandshakeResult);
  (*(v14 + 56))(v12, 0, 1, v13);
  v21 = v1 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v12, v21, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  if ((*(v14 + 48))(v21, 1, v13))
  {
    (*(v34 + 56))(v6, 1, 1, v7);
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    goto LABEL_6;
  }

  outlined init with copy of Any?(v21 + *(v13 + 20), v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v22 = v34;
  if ((*(v34 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_5;
  }

  outlined init with take of HandshakeStateMachine(v6, v9, type metadata accessor for EncryptionLevel);
  v27 = v33;
  outlined init with take of HandshakeStateMachine(v9, v33, type metadata accessor for EncryptionLevel);
  (*(v22 + 56))(v27, 0, 1, v7);
  v28 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v27, v1 + v28, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
LABEL_6:
  v23 = v16[1];
  if (v23 >> 60 != 15)
  {
    v25 = *v16;
    v19 = v16[2];
    v26 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v20 = *(v25 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v26)
    {
      v20 = v25 >> 32;
    }

    else
    {
      v20 = BYTE6(v23);
    }

    if (v20 >= v19)
    {
      v29 = Data._Representation.subscript.getter();
      v31 = v30;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v29, v31);
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  isa = 0;
LABEL_18:
  outlined destroy of ExportedAuthenticator(v16, type metadata accessor for PartialHandshakeResult);
  v19 = isa;
LABEL_21:
  result.is_nil = v20;
  result.value.super.isa = v19;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, "jx");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary0D11OfferedEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary0D11OfferedEPSKVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15ProtocolVersionVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15ProtocolVersionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10, char a11, char a12)
{
  outlined consume of ByteBuffer?(0, 0xF000000000000000);
  v38 = BYTE2(a8) & 1;
  v37 = BYTE2(a10) & 1;
  if ((a10 & 0x10000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = a10;
  }

  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26.n128_u64[0] = a3;
  v26.n128_u64[1] = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  WORD4(v28) = a8;
  BYTE10(v28) = BYTE2(a8) & 1;
  WORD6(v28) = v20;
  BYTE14(v28) = BYTE2(a10) & 1;
  HIBYTE(v28) = a11;
  v29 = a12;
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = a5;
  v30[5] = a6;
  v30[6] = a7;
  v31 = a8;
  v32 = BYTE2(a8) & 1;
  v33 = v20;
  v34 = BYTE2(a10) & 1;
  v35 = a11;
  v36 = a12;
  outlined init with copy of HandshakeStateMachine.Configuration(&v25, v24);
  outlined destroy of HandshakeStateMachine.Configuration(v30);
  v21 = v28;
  *(a9 + 32) = v27;
  *(a9 + 48) = v21;
  *(a9 + 64) = v29;
  result = v26;
  *a9 = v25;
  *(a9 + 16) = result;
  return result;
}

void HandshakeStateMachine.init(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v36 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v35 = &v34 - v8;
  *a2 = xmmword_1B26C5EF0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v10 = type metadata accessor for HandshakeStateMachine(0);
  v11 = a2 + v10[7];
  *(v11 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v11 + 32) = &protocol witness table for SwiftTLSDefaultClock;
  v37[0] = 0;
  MEMORY[0x1B274ED00](v37, 8);
  v12 = v37[0];
  v37[0] = 0;
  MEMORY[0x1B274ED00](v37, 8);
  v13 = v37[0];
  v37[0] = 0;
  MEMORY[0x1B274ED00](v37, 8);
  v14 = v37[0];
  v37[0] = 0;
  MEMORY[0x1B274ED00](v37, 8);
  v15 = v37[0];
  v16 = (a2 + v10[8]);
  *v16 = v12;
  v16[1] = v13;
  v16[2] = v14;
  v16[3] = v15;
  v17 = a2 + v10[9];
  v18 = *(a1 + 48);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a1 + 64);
  v19 = *(a1 + 16);
  *v17 = *a1;
  *(v17 + 16) = v19;
  v20 = a2 + v10[6];
  v21 = type metadata accessor for SessionTicket(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v9, 1, 1, v21);
  v23 = type metadata accessor for PAKEClientState(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v25 = type metadata accessor for HandshakeState.IdleState(0);
  v26 = v25[5];
  v22((v20 + v26), 1, 1, v21);
  v27 = v25[8];
  v24((v20 + v27), 1, 1, v23);
  v28 = *(a1 + 48);
  *(v20 + 32) = *(a1 + 32);
  *(v20 + 48) = v28;
  *(v20 + 64) = *(a1 + 64);
  v29 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v29;
  outlined init with copy of HandshakeStateMachine.Configuration(a1, v37);
  outlined assign with take of PartialHandshakeResult?(v35, v20 + v26, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v20 + v25[7]) = MEMORY[0x1E69E7CC0];
  outlined assign with take of PartialHandshakeResult?(v36, v20 + v27, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, logger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1B25F5000, v31, v32, "client state machine initialized", v33, 2u);
    MEMORY[0x1B274ECF0](v33, -1, -1);
  }
}

uint64_t sub_1B25FA8E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SymmetricKey();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[13] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for PeerCertificateBundle(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B25FAA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 120) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SPAKE2.Prover();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B25FABF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[13] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for PeerCertificateBundle(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B25FAD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 120);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for SPAKE2.Prover();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t getEnumTagSinglePayload for PAKEClientConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void nwswifttls_input_available(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 48))
      {
        v6 = v4[11];
        if (v6 == a2 || (v6 = v4[12], v6 == a2) || (v6 = v4[13], v6 == a2) || (v6 = v4[14], v6 == a2))
        {
          if (v6)
          {
            v7 = *(v6 + 24);
            if (v7)
            {
              if (*(v7 + 88) && *(v7 + 96))
              {
                v9[0] = 0;
                v9[1] = 0;
                nw_frame_array_init();
                if ((*(*(v6 + 24) + 80))(v6, v5 + 8, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v9))
                {
                  v8 = v5;
                  nw_frame_array_foreach();
                }
              }
            }
          }
        }
      }
    }
  }
}

BOOL __nwswifttls_input_available_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:nw_frame_unclaimed_bytes() length:0];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 32);
  v6 = v4;
  v14 = 0;
  nwswifttls_get_write_encryption_level(v5, &v14);
  for (i = [v5[37] continueHandshake:v6];
  {
    v8 = [v5[37] getPeerQUICTransportParameters];
    nwswifttls_update_quic_transport_parameters(v5, v8);

    updated = nwswifttls_update_encryption_secrets(v5);
    if ((v5[38] & 1) == 0 && [v5[37] hasSessionState])
    {
      nwswifttls_update_session_state(v5);
    }

    nwswifttls_update_early_data_accepted(v5, [v5[37] getEarlyDataAccepted]);
    if (i)
    {
      nwswifttls_add_message(v5, v14, [i bytes], objc_msgSend(i, "length"));
      nwswifttls_send_messages(v5, v14);
      goto LABEL_12;
    }

    v10 = [v5[37] getErrorCode];
    if (v10)
    {
      break;
    }

    v11 = *(v5 + 304);
    if (v14)
    {
      v11 = 0;
    }

    if ((updated & v11) != 1)
    {
      goto LABEL_14;
    }

LABEL_12:
    nwswifttls_get_write_encryption_level(v5, &v14);
    v12 = [v5[37] continueHandshake:0];
  }

  nwswifttls_send_error(v5, v10);
LABEL_14:

LABEL_15:
  nw_frame_array_remove();
  nw_frame_finalize();

  return v4 != 0;
}

uint64_t nwswifttls_get_encryption_level(uint64_t a1, int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = [*(a1 + 296) getEncryptionLevelWithWrite:?];
    if (result <= 0)
    {
      if (result == -1)
      {
        return 0;
      }

      if (!result)
      {
        *a2 = 0;
        return 1;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          *a2 = 1;
          return result;
        case 2:
          v5 = 2;
          goto LABEL_13;
        case 3:
          v5 = 3;
LABEL_13:
          *a2 = v5;
          return 1;
      }
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    nwswifttls_get_encryption_level_cold_1();
    return 0;
  }

  return result;
}

Swift::Int __swiftcall STLSClientHandshaker.getEncryptionLevel(write:)(Swift::Bool write)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  if (write)
  {
    v13 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  }

  else
  {
    v13 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  }

  v14 = v1 + v13;
  swift_beginAccess();
  outlined init with copy of Any?(v14, v5, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return -1;
  }

  else
  {
    outlined init with take of HandshakeStateMachine(v5, v12, type metadata accessor for EncryptionLevel);
    outlined init with take of HandshakeStateMachine(v12, v10, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = type metadata accessor for SymmetricKey();
    (*(*(v17 - 8) + 8))(v10, v17);
    return EnumCaseMultiPayload + 1;
  }
}

NSData_optional __swiftcall STLSClientHandshaker.continueHandshake(_:)(NSData_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v87 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - v10;
  v90 = type metadata accessor for EncryptionLevel(0);
  v12 = *(v90 - 8);
  v13 = MEMORY[0x1EEE9AC00](v90);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v82 - v17;
  if (isa)
  {
    v19 = isa;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = 0;
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v22 = *(v20 + 16);
      }
    }

    else if (v23)
    {
      v22 = v20;
    }

    v102 = v20;
    v103 = v21;
    v104 = v22;
    v24 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
    swift_beginAccess();
    v25 = type metadata accessor for HandshakeStateMachine(0);
    v26 = (*(*(v25 - 8) + 48))(v2 + v24, 1, v25);
    if (v26 == 1)
    {
      goto LABEL_52;
    }

    HandshakeStateMachine.receivedNetworkData(_:)(&v102);
    swift_endAccess();

    outlined consume of Data._Representation(v102, v103);
  }

  v94 = v7;
  v28 = 0;
  v29 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v30 = (v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult);
  v88 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  v83 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v95 = (v12 + 56);
  v91 = (v12 + 48);
  v82 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v96 = v2;
  v89 = v11;
  v31 = v90;
  v92 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v93 = v18;
  while (1)
  {
    swift_beginAccess();
    v32 = type metadata accessor for HandshakeStateMachine(0);
    v26 = (*(*(v32 - 8) + 48))(v2 + v29, 1, v32);
    if (v26 == 1)
    {
      break;
    }

    _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(v100, v18);
    if (v28)
    {
      v63 = v100[0];
      v64 = v100[1];
      LOBYTE(v48) = v101;
      swift_endAccess();
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      v65 = swift_allocError();
      *v66 = v63;
      *(v66 + 8) = v64;
      *(v66 + 16) = v48;
      v67 = *(v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
      *(v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError) = v65;
      outlined copy of TLSError(v63, v64, v48);

      if (one-time initialization token for logger != -1)
      {
        goto LABEL_50;
      }

      goto LABEL_35;
    }

    v97 = 0;
    swift_endAccess();
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v18, v30, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v33 = type metadata accessor for PartialHandshakeResult(0);
    v34 = *(*(v33 - 1) + 48);
    if (v34(v30, 1, v33))
    {
      v98 = 0;
      v99 = 0xF000000000000000;
    }

    else
    {
      v35 = v2;
      v36 = *(v30 + v33[7]);
      v37 = *(v30 + v33[7] + 8);
      v38 = *(v30 + v33[7]);
      v98 = v38;
      v99 = v37;
      if (v37 >> 60 != 15)
      {
        v86 = v36;
        v39 = v88;
        v40 = v35;
        swift_beginAccess();
        v41 = *(v40 + v39);
        outlined copy of Data?(v38, v37);
        outlined copy of Data?(v38, v37);
        outlined copy of Data._Representation(v38, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + v39) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
          *(v40 + v88) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        v45 = v86;
        if (v44 >= v43 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
          v45 = v86;
          v41 = v62;
        }

        *(v41 + 2) = v44 + 1;
        *&v41[16 * v44 + 32] = v45;
        *(v96 + v88) = v41;
        swift_endAccess();
        outlined consume of ByteBuffer?(v98, v99);
        v11 = v89;
        v31 = v90;
      }
    }

    if (v34(v30, 1, v33))
    {
      (*v95)(v11, 1, 1, v31);
LABEL_23:
      outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      goto LABEL_24;
    }

    outlined init with copy of Any?(v30 + v33[6], v11, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    if ((*v91)(v11, 1, v31) == 1)
    {
      goto LABEL_23;
    }

    v49 = v11;
    v50 = v84;
    outlined init with take of HandshakeStateMachine(v49, v84, type metadata accessor for EncryptionLevel);
    v51 = v50;
    v52 = v87;
    v31 = v90;
    outlined init with take of HandshakeStateMachine(v51, v87, type metadata accessor for EncryptionLevel);
    (*v95)(v52, 0, 1, v31);
    v53 = v83;
    swift_beginAccess();
    v54 = v52;
    v11 = v89;
    outlined assign with take of PartialHandshakeResult?(v54, v96 + v53, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    swift_endAccess();
LABEL_24:
    v46 = v11;
    if (v34(v30, 1, v33))
    {
      v47 = v94;
      (*v95)(v94, 1, 1, v31);
    }

    else
    {
      v47 = v94;
      outlined init with copy of Any?(v30 + v33[5], v94, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if ((*v91)(v47, 1, v31) != 1)
      {
        v55 = v47;
        v56 = v85;
        outlined init with take of HandshakeStateMachine(v55, v85, type metadata accessor for EncryptionLevel);
        v57 = v56;
        v58 = v87;
        v31 = v90;
        outlined init with take of HandshakeStateMachine(v57, v87, type metadata accessor for EncryptionLevel);
        (*v95)(v58, 0, 1, v31);
        v59 = v82;
        v60 = v96;
        swift_beginAccess();
        v61 = v58;
        v11 = v89;
        outlined assign with take of PartialHandshakeResult?(v61, v60 + v59, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
        swift_endAccess();
        goto LABEL_28;
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v47, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v11 = v46;
LABEL_28:
    if (!v34(v30, 1, v33))
    {
      v48 = v30[1];
      if (v48 >> 60 != 15)
      {
        v63 = *v30;
        v75 = v30[2];
        v76 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          v77 = v98;
          if (v76 == 2)
          {
            v64 = *(v63 + 24);
            goto LABEL_46;
          }

          v64 = 0;
          if (v75 > 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v77 = v98;
          if (!v76)
          {
            v64 = BYTE6(v48);
            if (BYTE6(v48) < v75)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              swift_once();
LABEL_35:
              v68 = type metadata accessor for Logger();
              __swift_project_value_buffer(v68, logger);
              outlined copy of TLSError(v63, v64, v48);
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.error.getter();
              outlined consume of TLSError(v63, v64, v48);
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                *v71 = 138412290;
                swift_allocError();
                *v73 = v63;
                *(v73 + 8) = v64;
                *(v73 + 16) = v48;
                v74 = _swift_stdlib_bridgeErrorToNSError();
                *(v71 + 4) = v74;
                *v72 = v74;
                _os_log_impl(&dword_1B25F5000, v69, v70, "Internal error when processing the handshake: %@", v71, 0xCu);
                outlined destroy of P256.Signing.PrivateKey?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1B274ECF0](v72, -1, -1);
                MEMORY[0x1B274ECF0](v71, -1, -1);
              }

              else
              {

                outlined consume of TLSError(v63, v64, v48);
              }

LABEL_38:
              v26 = 0;
              goto LABEL_53;
            }

            goto LABEL_47;
          }

          v64 = v63 >> 32;
LABEL_46:
          outlined copy of Data._Representation(*v30, v30[1]);
          if (v64 < v75)
          {
            goto LABEL_49;
          }
        }

LABEL_47:
        v78 = Data._Representation.subscript.getter();
        v80 = v79;
        outlined consume of ByteBuffer?(v63, v48);
        v81 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v78, v80);
        outlined consume of ByteBuffer?(v77, v99);
        v26 = v81;
        goto LABEL_53;
      }
    }

    v27 = v99;
    if (v99 >> 60 == 15)
    {
      goto LABEL_38;
    }

    outlined consume of ByteBuffer?(v98, v99);
    v29 = v92;
    v18 = v93;
    v2 = v96;
    v28 = v97;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result.value.super.isa = v26;
  result.is_nil = v27;
  return result;
}

void HandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1B25F5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  HandshakeMessageParser.appendBytes(_:)(a1);
}

void HandshakeMessageParser.appendBytes(_:)(uint64_t *result)
{
  if (v1[1] >> 60 == 15)
  {
    v2 = *result;
    v3 = result[1];
    v4 = result[2];
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v5)
      {
        v7 = v6;
      }
    }

    v8 = __OFSUB__(v7, v4);
    v9 = v7 - v4;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v1;
      v11 = ByteBuffer.readSlice(length:)(v9);
      v13 = v12;
      v15 = v14;
      outlined consume of ByteBuffer?(*v10, v10[1]);
      *v10 = v11;
      v10[1] = v13;
      v10[2] = v15;
    }
  }

  else
  {

    ByteBuffer.writeBuffer(_:)(result);
  }
}

void ByteBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v2 >> 32;
    }

    else
    {
      v6 = BYTE6(v3);
    }

    if (v5)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 < v4 || v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v13 == 2)
  {
    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    outlined consume of Data._Representation(v9, v12);
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_22:
    outlined consume of Data._Representation(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return;
  }

LABEL_24:
  outlined consume of Data._Representation(v9, v11);
LABEL_25:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v4 = v3;
  v5 = v2;
  v106 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v98 - v7;
  v8 = type metadata accessor for PartialHandshakeResult(0);
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v99 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v98 - v13;
  v14 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v98 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineV11ProcessStep33_0FE61F88EEA52334A02606E049165857LLOy_AA07PartialC6ResultVGMd, &_s15SwiftTLSLibrary21HandshakeStateMachineV11ProcessStep33_0FE61F88EEA52334A02606E049165857LLOy_AA07PartialC6ResultVGMR);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v103 = &v98 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v101 = &v98 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v105 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v98 - v28;
  v29 = type metadata accessor for HandshakeState(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v114 = v31;
  v115 = v32;
  v121 = v17;
  v110 = v29;
  while (1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = __swift_project_value_buffer(v34, logger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B25F5000, v36, v37, "client attempting process step", v38, 2u);
      v39 = v38;
      v17 = v121;
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    outlined init with copy of SessionTicket(v5 + v115, v31, type metadata accessor for HandshakeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          v64 = os_log_type_enabled(v62, v63);
          v65 = v109;
          if (v64)
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_1B25F5000, v62, v63, "processHandshake called in idle state", v66, 2u);
            MEMORY[0x1B274ECF0](v66, -1, -1);
          }

          v116 = xmmword_1B26CABB0;
          v67 = 2;
          v117 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v68 = 0;
          v69 = type metadata accessor for HandshakeState;
          ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = 3;
          goto LABEL_47;
        }

        v75 = v102;
        _s15SwiftTLSLibrary21HandshakeStateMachineV21handleReadServerHello33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v118, v102);
        if (v4)
        {
          goto LABEL_40;
        }

        v54 = v107;
        v53 = v108;
        if ((*(v107 + 48))(v75, 1, v108) != 1)
        {
          v92 = v106;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v75, v106, type metadata accessor for PartialHandshakeResult);
          v61 = v92;
          v73 = 0;
          v72 = type metadata accessor for HandshakeState;
          goto LABEL_69;
        }

LABEL_55:
        v72 = type metadata accessor for HandshakeState;
LABEL_56:
        v73 = 1;
        v61 = v106;
        goto LABEL_69;
      }

      v42 = v4;
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV35handleReadServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
      if (v4)
      {
LABEL_32:
        v68 = v43;
        v67 = v44;
        goto LABEL_41;
      }

      goto LABEL_2;
    }

    v41 = v113;
    if (EnumCaseMultiPayload <= 3)
    {
      break;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v52 = v103;
        _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v118, v103);
        if (!v4)
        {
          v54 = v107;
          v53 = v108;
          if ((*(v107 + 48))(v52, 1, v108) == 1)
          {
            goto LABEL_55;
          }

          v55 = v31;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v52, v99, type metadata accessor for PartialHandshakeResult);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();
          v58 = os_log_type_enabled(v56, v57);
          v59 = v106;
          if (v58)
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_1B25F5000, v56, v57, "client completed TLS handshake", v60, 2u);
            MEMORY[0x1B274ECF0](v60, -1, -1);
          }

          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v99, v59, type metadata accessor for PartialHandshakeResult);
          v61 = v59;
LABEL_63:
          v73 = 0;
          v72 = type metadata accessor for HandshakeState;
          v31 = v55;
          goto LABEL_69;
        }
      }

      else
      {
        v55 = v31;
        v74 = v104;
        _s15SwiftTLSLibrary21HandshakeStateMachineV26handleReadNewSessionTicket33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v118, v104);
        if (!v4)
        {
          v54 = v107;
          v53 = v108;
          if ((*(v107 + 48))(v74, 1, v108) == 1)
          {
            v72 = type metadata accessor for HandshakeState;
            v73 = 1;
            v61 = v106;
            v31 = v55;
            goto LABEL_69;
          }

          v91 = v106;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v74, v106, type metadata accessor for PartialHandshakeResult);
          v61 = v91;
          goto LABEL_63;
        }
      }

LABEL_40:
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v118;
      v68 = v119;
      v67 = v120;
LABEL_41:
      v76 = type metadata accessor for HandshakeState;
LABEL_42:
      v69 = v76;
      goto LABEL_46;
    }

    v42 = v4;
    ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV33handleReadServerCertificateVerify33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
    if (v4)
    {
      goto LABEL_32;
    }

LABEL_2:
    v4 = v42;
    v33 = type metadata accessor for HandshakeState;
    v31 = v114;
    if (ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF)
    {
      v72 = type metadata accessor for HandshakeState;
      v73 = 1;
      v61 = v106;
      v54 = v107;
      v53 = v108;
      goto LABEL_69;
    }

LABEL_3:
    outlined destroy of SessionTicket(v31, v33);
    v17 = v121;
  }

  v46 = v111;
  outlined init with copy of SessionTicket(v31, v111, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  if ((*(v46 + v14[10]) & 1) != 0 || *(v46 + v14[11]) == 1)
  {
    v70 = v105;
    _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v118, v105);
    if (v4)
    {
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v118;
      v68 = v119;
      v67 = v120;
      v71 = v111;
      goto LABEL_45;
    }

    v54 = v107;
    v53 = v108;
    if ((*(v107 + 48))(v70, 1, v108) == 1)
    {
      v72 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v111, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      goto LABEL_56;
    }

    v85 = v31;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v70, v100, type metadata accessor for PartialHandshakeResult);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v106;
    if (v88)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1B25F5000, v86, v87, "client completed TLS handshake", v90, 2u);
      MEMORY[0x1B274ECF0](v90, -1, -1);
    }

    v72 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of SessionTicket(v111, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v100, v89, type metadata accessor for PartialHandshakeResult);
    v61 = v89;
    v73 = 0;
    v31 = v85;
LABEL_69:
    (*(v54 + 56))(v61, v73, 1, v53);
    return outlined destroy of SessionTicket(v31, v72);
  }

  v112 = v35;
  v47 = v31;
  outlined destroy of SessionTicket(v46, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of SessionTicket(v31, v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of Any?(&v17[v14[12]], v41, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v48 = type metadata accessor for PAKEClientState(0);
  if ((*(*(v48 - 8) + 48))(v41, 1, v48) == 1)
  {
    outlined destroy of SessionTicket(v17, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV27handleReadServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
    ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
    if (!v4)
    {
      v4 = 0;
      v33 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      if (ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF)
      {
        v72 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        v73 = 1;
        v61 = v106;
        v54 = v107;
        v53 = v108;
        v31 = v114;
        goto LABEL_69;
      }

      v31 = v114;
      goto LABEL_3;
    }

    v68 = v50;
    v67 = v51;
    v76 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_42;
  }

  outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v77 = v101;
  _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v118, v101);
  if (!v4)
  {
    v54 = v107;
    v53 = v108;
    if ((*(v107 + 48))(v77, 1, v108) == 1)
    {
      v72 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v121, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v73 = 1;
      v61 = v106;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v77, v98, type metadata accessor for PartialHandshakeResult);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v106;
      if (v95)
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1B25F5000, v93, v94, "client completed TLS handshake", v97, 2u);
        MEMORY[0x1B274ECF0](v97, -1, -1);
      }

      v72 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v121, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v98, v96, type metadata accessor for PartialHandshakeResult);
      v61 = v96;
      v73 = 0;
    }

    v31 = v47;
    goto LABEL_69;
  }

  ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v118;
  v68 = v119;
  v67 = v120;
  v71 = v121;
LABEL_45:
  outlined destroy of SessionTicket(v71, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v69 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_46:
  v65 = v109;
LABEL_47:
  outlined destroy of SessionTicket(v114, v69);
  outlined copy of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v68, v67);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  outlined consume of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v68, v67);
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    *v82 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
    *(v82 + 8) = v68;
    *(v82 + 16) = v67;
    outlined copy of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v68, v67);
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v83;
    *v81 = v83;
    _os_log_impl(&dword_1B25F5000, v78, v79, "processing message failed due to error %@", v80, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v81, -1, -1);
    MEMORY[0x1B274ECF0](v80, -1, -1);
  }

  *&v116 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
  *(&v116 + 1) = v68;
  v117 = v67;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  *v65 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
  *(v65 + 8) = v68;
  *(v65 + 16) = v67;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of HandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SessionTicket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of ByteBuffer?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(result, a2);
  }
}

uint64_t sub_1B25FD548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HandshakeState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary10ByteBufferVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1B25FD748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1B25FD81C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SessionTicket(uint64_t a1)
{
  result = type metadata singleton initialization cache for SessionTicket;
  if (!type metadata singleton initialization cache for SessionTicket)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of PartialHandshakeResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B25FD9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B25FDA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

__n128 _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKF@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1] >> 60 == 15)
  {
    _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(&v15);
  }

  else
  {
    _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v11, v13);
    if (v3)
    {
      v7 = v12;
      result.n128_u64[0] = v11;
      *a1 = v11;
      *(a1 + 16) = v7;
      return result;
    }

    v21 = v13[6];
    v22 = v13[7];
    v23 = v14;
    v17 = v13[2];
    v18 = v13[3];
    v19 = v13[4];
    v20 = v13[5];
    v15 = v13[0];
    v16 = v13[1];
  }

  v8 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v8;
  *(a2 + 128) = v23;
  v9 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v9;
  v10 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v10;
  result = v16;
  *a2 = v15;
  *(a2 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v10, v11);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
  return v8 | (v7 << 16);
}

void _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(v33, &v35);
  if (v3)
  {
    v14 = v12;
    v16 = v33[0];
    v15 = v33[1];
    v17 = v13;
    v18 = v34;
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v14;
    a1[1] = v11;
    a1[2] = v17;
    v35 = v16;
    v36 = v15;
    LOBYTE(v37) = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
LABEL_10:
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v18;
    return;
  }

  v19 = v36;
  if (v36 >> 60 == 15)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    v20 = v35;
    v21 = v19;
LABEL_7:
    outlined consume of ByteBuffer?(v20, v21);
LABEL_8:
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_9:
    v35 = 0;
    v36 = 0;
    v18 = 2;
    LOBYTE(v37) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v38 = v36;
  outlined consume of Data._Representation(v12, v11);
  v31 = v35;
  v32 = v37;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(v33, &v35);
  v22 = v36;
  if (v36 >> 60 == 15)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    outlined consume of ByteBuffer?(v35, v22);
    v20 = v31;
    v21 = v38;
    goto LABEL_7;
  }

  v30 = v36;
  outlined consume of Data._Representation(v12, v11);
  v26 = v35;
  v27 = v37;
  v25 = a1[2];
  v28 = *a1;
  v29 = a1[1];
  outlined copy of Data._Representation(*a1, v29);
  v23 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l112OIglozo_AcfHIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
  if (!v23)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    outlined consume of ByteBuffer?(v26, v30);
    outlined consume of ByteBuffer?(v31, v38);
    v12 = v28;
    v11 = v29;
    v13 = v25;
    goto LABEL_8;
  }

  outlined consume of Data._Representation(v28, v29);
  *a3 = v8;
  *(a3 + 4) = v10;
  v24 = v38;
  *(a3 + 8) = v31;
  *(a3 + 16) = v24;
  *(a3 + 24) = v32;
  *(a3 + 32) = v26;
  *(a3 + 40) = v30;
  *(a3 + 48) = v27;
  *(a3 + 56) = v23;
}

void _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v4 & 0x100) != 0 || (v5 = ByteBuffer.readSlice(length:)(v4), v6 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v8 = _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(&v17);
    v10 = v9;
    v12 = v11;
    v13 = v17;
    v14 = v18;
    v15 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v16 = *(v17 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else if (v15)
    {
      v16 = v17 >> 32;
    }

    else
    {
      v16 = BYTE6(v18);
    }

    if (__OFSUB__(v16, v19))
    {
      __break(1u);
    }

    else if (v16 == v19)
    {
      outlined consume of Data._Representation(v17, v18);
      *a2 = v8;
      *(a2 + 8) = v10;
      *(a2 + 16) = v12;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v8, v10);
      outlined consume of Data._Representation(v13, v14);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }
}

uint64_t _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
LABEL_20:
      if (v9 >= result)
      {
        result = Data._Representation.subscript.getter();
        a1[2] = v9;
        return result;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 <= 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v4 & 0x10000) != 0 || (v5 = ByteBuffer.readSlice(length:)(v4), v6 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v8 = _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(&v17);
    v10 = v9;
    v12 = v11;
    v13 = v17;
    v14 = v18;
    v15 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v16 = *(v17 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else if (v15)
    {
      v16 = v17 >> 32;
    }

    else
    {
      v16 = BYTE6(v18);
    }

    if (__OFSUB__(v16, v19))
    {
      __break(1u);
    }

    else if (v16 == v19)
    {
      outlined consume of Data._Representation(v17, v18);
      *a2 = v8;
      *(a2 + 8) = v10;
      *(a2 + 16) = v12;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v8, v10);
      outlined consume of Data._Representation(v13, v14);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_nTm(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v4 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  v5 = ByteBuffer.readSlice(length:)(v4);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  v20 = v7;
  v9 = a2(&v18);
  if (v2)
  {
    v10 = v9;
    v11 = v18;
    v12 = v19;
LABEL_17:
    outlined consume of Data._Representation(v11, v12);
    return v10;
  }

  v13 = v9;
  result = v18;
  v14 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v18 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v18 >> 32;
  }

  else
  {
    v15 = BYTE6(v19);
  }

  if (!__OFSUB__(v15, v20))
  {
    if (v15 == v20)
    {
      outlined consume of Data._Representation(v18, v19);
      return v13;
    }

    v16 = v18;
    v17 = v19;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v12 = v17;
    v11 = v16;
    v10 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v45 = *a1;
  LOWORD(v64) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v46 = BYTE6(v2);
  v47 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v46;
      if (v7)
      {
        v9 = v45 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        return v8;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v45 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      return v8;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v58 = *a1;
    *(&v58 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v48 = v5;
    *&v50 = v3;
    *(&v50 + 1) = v4;
    v49 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v12 = v64;
    a1[2] = v49;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v64) = 0;
    v15 = v49 + 2;
    if (__OFADD__(v49, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v58 = v14;
    *(&v58 + 1) = v13;
    if (v15 < v49)
    {
      goto LABEL_66;
    }

    *&v50 = v49;
    *(&v50 + 1) = v49 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v18 = bswap32(v64) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v48;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v48;
      if (v27)
      {
        v26 = v24;
      }
    }

    v64 = v24;
    v65 = v25;
    v66 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v64, bswap32(v12) >> 16, 4, 0, v56, &v58);
    if (v28)
    {
      v8 = v56[0];
      v43 = v56[1];
      v38 = v57;
      v42 = v64;
      v41 = v65;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v64 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v64 >> 32;
    }

    else
    {
      v30 = BYTE6(v65);
    }

    if (__OFSUB__(v30, v66))
    {
      goto LABEL_69;
    }

    if (v30 != v66)
    {
      v38 = 2;
      v39 = v64;
      v40 = v65;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v50 = v58;
      v51 = v59;
      outlined destroy of Extension(&v50);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v49;
      *&v58 = v8;
      *(&v58 + 1) = v43;
      LOBYTE(v59) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      return v8;
    }

    outlined consume of Data._Representation(v64, v65);
    outlined consume of Data._Representation(v14, v13);
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v50 = v58;
    v51 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v47;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v51;
    *(v33 + 32) = v50;
    *(v33 + 48) = v34;
    v35 = v52;
    v36 = v53;
    v37 = v54;
    *(v33 + 112) = v55;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v64) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v49;
  return v8;
}

void _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(uint64_t *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v133 = *MEMORY[0x1E69E9840];
  if (a2 > 0x29u)
  {
    if (a2 > 0x32u)
    {
      if (a2 <= 0x39u)
      {
        if (a2 == 51)
        {
          v12 = _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKF(a3, a4 & 1);
          if (!v6)
          {
            *a6 = v12;
            *(a6 + 8) = v13;
            *(a6 + 16) = v14;
            *(a6 + 24) = v41;
            *(a6 + 80) = 64;
            return;
          }

LABEL_34:
          v28 = v14;
          goto LABEL_71;
        }

        if (a2 == 57)
        {
          v12 = _s15SwiftTLSLibrary10ByteBufferV27readQUICTransportParameters11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
          if (!v6)
          {
            *a6 = v12;
            *(a6 + 8) = v13;
            *(a6 + 16) = v14;
            *(a6 + 80) = 0x80;
            return;
          }

          goto LABEL_34;
        }

        goto LABEL_56;
      }

      if (a2 != 58)
      {
        if (a2 == 35387)
        {
          v129 = &type metadata for SwiftTLSFeatureFlags;
          v130 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
          v36 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_0(&v127);
          if (v36)
          {
            v37 = v131;
            _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF(a3, a4 & 1, v125, v131);
            if (!v6)
            {
LABEL_32:
              v38 = v37[80];
              v39 = *(v37 + 1);
              *a6 = *v37;
              *(a6 + 16) = v39;
              v40 = *(v37 + 3);
              *(a6 + 32) = *(v37 + 2);
              *(a6 + 48) = v40;
              *(a6 + 64) = *(v37 + 4);
              *(a6 + 80) = v38 & 1 | 0xC0;
              return;
            }
          }

          else
          {
            v37 = v132;
            _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF(a3, a4 & 1, v125, v132);
            if (!v6)
            {
              goto LABEL_32;
            }
          }

          v12 = v125[0];
          v13 = v125[1];
          v28 = v126;
          goto LABEL_71;
        }

LABEL_56:
        v55 = *a1;
        v56 = a1[1];
        v57 = a1[2];
        v58 = v56 >> 62;
        if ((v56 >> 62) > 1)
        {
          if (v58 == 2)
          {
            v60 = *(v55 + 24);
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v59 = BYTE6(v56);
          v60 = v55 >> 32;
          if (!v58)
          {
            v60 = v59;
          }
        }

        if (!__OFSUB__(v60, v57))
        {
          v62 = ByteBuffer.readSlice(length:)(v60 - v57);
          if (v63 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {
            *a6 = a2;
            *(a6 + 8) = v62;
            *(a6 + 16) = v63;
            *(a6 + 24) = v64;
            *(a6 + 80) = -48;
          }

          return;
        }

LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v12 = _s15SwiftTLSLibrary10ByteBufferV26readTicketRequestExtension11messageTypeAA0H0O0fG0OAA09HandshakeJ0V_tAA8TLSErrorOYKF(a3);
      if (!v6)
      {
        LOBYTE(v127) = BYTE2(v12) & 1;
        *a6 = v12;
        *(a6 + 2) = BYTE2(v12) & 1;
        *(a6 + 80) = -80;
        return;
      }

LABEL_55:
      v28 = v42;
      goto LABEL_71;
    }

    if (a2 != 42)
    {
      if (a2 == 43)
      {
        v12 = _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
        if (!v6)
        {
          LOBYTE(v127) = v13 & 1;
          *a6 = v12;
          *(a6 + 8) = v13 & 1;
          *(a6 + 80) = 32;
          return;
        }

        goto LABEL_55;
      }

      if (a2 != 45)
      {
        goto LABEL_56;
      }

      if (a3 == 1)
      {
        v23 = *a1;
        v22 = a1[1];
        v24 = a1[2];
        outlined copy of Data._Representation(*a1, v22);
        v25 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n();
        if (v6)
        {
          v28 = v27;
          v29 = *a1;
          v30 = a1[1];
          v31 = a1;
          v32 = v25;
          v33 = v26;
          outlined consume of Data._Representation(v29, v30);
          *v31 = v23;
          v31[1] = v22;
          v31[2] = v24;
          *&v127 = v32;
          *(&v127 + 1) = v33;
          v128 = v28;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v13 = v33;
          v12 = v32;
          goto LABEL_71;
        }

        if (v25)
        {
          v65 = v25;
          outlined consume of Data._Representation(v23, v22);
          *a6 = v65;
          *(a6 + 80) = -112;
          return;
        }

        outlined consume of Data._Representation(*a1, a1[1]);
        *a1 = v23;
        a1[1] = v22;
        a1[2] = v24;
LABEL_53:
        v127 = 0uLL;
        v28 = 2;
        v128 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        v12 = 0;
        v13 = 0;
        goto LABEL_71;
      }

      v45 = a3;
      v46 = 2949120;
      goto LABEL_69;
    }

    LODWORD(v43) = 0;
    v44 = 1;
    if (a3 != 8)
    {
      if (a3 == 4)
      {
        v43 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
        if ((v43 & 0x100000000) != 0)
        {
          goto LABEL_53;
        }

        v44 = 0;
      }

      else if (a3 != 1)
      {
        v45 = a3;
        v46 = 3342336;
LABEL_69:
        v61 = v46 & 0xFFFFFFFFFFFFFF00 | v45;
        goto LABEL_70;
      }
    }

    LOBYTE(v127) = v44;
    *a6 = v43;
    *(a6 + 4) = v44;
    *(a6 + 80) = 80;
    return;
  }

  if (a2 > 0xFu)
  {
    if (a2 == 16)
    {
      v12 = _s15SwiftTLSLibrary10ByteBufferV8readALPN11messageTypeAA9ExtensionO35ApplicationLayerProtocolNegotiationOAA09HandshakeH0V_tAA8TLSErrorOYKF(a3);
      v28 = v48;
      if (v6)
      {
        goto LABEL_71;
      }

      LOBYTE(v127) = v48 & 1;
      *a6 = v12;
      *(a6 + 8) = v13;
      *(a6 + 16) = v48 & 1;
      *(a6 + 80) = 48;
      return;
    }

    if (a2 != 20)
    {
      if (a2 == 41)
      {
        v12 = _s15SwiftTLSLibrary10ByteBufferV16readPreSharedKey11messageType17helloRetryRequestAA9ExtensionO0fgH0OAA09HandshakeJ0V_SbtAA8TLSErrorOYKF(a3, a4 & 1);
        v28 = v34;
        if (v6)
        {
          goto LABEL_71;
        }

        LOBYTE(v127) = v34 & 1;
        *a6 = v12;
        *(a6 + 8) = v13;
        *(a6 + 16) = v34 & 1;
        *(a6 + 80) = -96;
        return;
      }

      goto LABEL_56;
    }

    v12 = _s15SwiftTLSLibrary10ByteBufferV25readServerCertificateType07messageH0AA9ExtensionO0fgH0OAA09HandshakeH0V_tAA8TLSErrorOYKF(a3);
    if (!v6)
    {
      LOBYTE(v127) = v13 & 1;
      *a6 = v12;
      *(a6 + 8) = v13 & 1;
      *(a6 + 80) = 112;
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    v12 = _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
    v28 = v47;
    if (v6)
    {
      goto LABEL_71;
    }

    *a6 = v12;
    *(a6 + 8) = v13;
    *(a6 + 16) = v47;
    *(a6 + 80) = 0;
    return;
  }

  if (a2 == 10)
  {
    if (a3 != 8 && a3 != 1)
    {
      v61 = a3 | 0xA0000;
LABEL_70:
      v127 = v61;
      v128 = 0;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v12 = v61;
      v13 = 0;
      v28 = 0;
      goto LABEL_71;
    }

    v15 = a1;
    v49 = *a1;
    v50 = a1[1];
    v118 = a1[2];
    outlined copy of Data._Representation(*a1, v50);
    v51 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v51 & 0x10000) != 0 || (v52 = ByteBuffer.readSlice(length:)(v51), v53 >> 60 == 15))
    {
      outlined consume of Data._Representation(*v15, v15[1]);
      *v15 = v49;
      v15[1] = v50;
      goto LABEL_52;
    }

    v66 = v54;
    v115 = v15;
    v111 = v49;
    v67 = v53 >> 62;
    v68 = BYTE6(v53);
    v69 = v52 >> 32;
    v120 = BYTE6(v53);
    if ((v53 >> 62) > 1)
    {
      if (v67 == 2)
      {
        v68 = *(v52 + 24);
      }

      else
      {
        v68 = 0;
      }
    }

    else if (v67)
    {
      v68 = v52 >> 32;
    }

    v114 = v50;
    v117 = a5;
    v73 = __OFSUB__(v68, v54);
    v74 = v68 - v54;
    if (v73)
    {
      goto LABEL_153;
    }

    v75 = v52;
    v76 = v53;
    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v74 / 2) & ~((v74 + (v74 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
    v78 = v66 + 2;
    if (__OFADD__(v66, 2))
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v79 = v77;
    v80 = v76;
    v81 = v75;
    v123 = v67;
    while (1)
    {
      if (v67 > 1)
      {
        if (v67 != 2)
        {
          if (v78 >= 1)
          {
            v87 = 0;
            goto LABEL_137;
          }

          goto LABEL_106;
        }

        v82 = *(v81 + 24);
      }

      else
      {
        v82 = v120;
        if (v67)
        {
          v82 = v69;
        }
      }

      if (v82 < v78)
      {
        v87 = v120;
        if (v67)
        {
          v87 = v69;
          if (v67 == 2)
          {
            v87 = *(v81 + 24);
          }
        }

LABEL_137:
        if (!__OFSUB__(v87, v66))
        {
          if (v87 != v66)
          {
            v124 = xmmword_1B26C66C0;
            v127 = xmmword_1B26C66C0;
            v28 = 2;
            v128 = 2;
            v105 = v80;
            v106 = v81;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();

            outlined consume of Data._Representation(v106, v105);
            v107 = v115;
            outlined consume of Data._Representation(*v115, v115[1]);
            *v115 = v111;
            v115[1] = v114;
            goto LABEL_147;
          }

          outlined consume of Data._Representation(v81, v80);
          outlined consume of Data._Representation(v111, v114);
          v103 = a6;
          *a6 = v79;
          v104 = 16;
          goto LABEL_146;
        }

LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
      }

LABEL_106:
      *&v127 = v81;
      *(&v127 + 1) = v80;
      if (v78 < v66)
      {
        goto LABEL_150;
      }

      v83 = v81;
      v84 = v80;
      outlined copy of Data._Representation(v81, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
      DataProtocol.copyBytes<A>(to:from:)();
      outlined consume of Data._Representation(v127, *(&v127 + 1));
      v86 = *(v79 + 2);
      v85 = *(v79 + 3);
      if (v86 >= v85 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v79);
      }

      *(v79 + 2) = v86 + 1;
      *&v79[2 * v86 + 32] = bswap32(0) >> 16;
      v66 = v78;
      v73 = __OFADD__(v78, 2);
      v78 += 2;
      v80 = v84;
      v81 = v83;
      LODWORD(v67) = v123;
      if (v73)
      {
        goto LABEL_148;
      }
    }
  }

  if (a2 != 13)
  {
    goto LABEL_56;
  }

  if (a3 != 13 && a3 != 1)
  {
    v45 = a3;
    v46 = 851968;
    goto LABEL_69;
  }

  v15 = a1;
  v16 = *a1;
  v17 = a1[1];
  v118 = a1[2];
  outlined copy of Data._Representation(*a1, v17);
  v18 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v18 & 0x10000) != 0 || (v19 = ByteBuffer.readSlice(length:)(v18), v20 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v15, v15[1]);
    *v15 = v16;
    v15[1] = v17;
LABEL_52:
    v15[2] = v118;
    goto LABEL_53;
  }

  v70 = v21;
  v113 = v17;
  v116 = v15;
  v71 = v20 >> 62;
  v72 = BYTE6(v20);
  v122 = BYTE6(v20);
  if ((v20 >> 62) > 1)
  {
    if (v71 == 2)
    {
      v72 = *(v19 + 24);
    }

    else
    {
      v72 = 0;
    }
  }

  else if (v71)
  {
    v72 = v19 >> 32;
  }

  v121 = v19 >> 32;
  v112 = v16;
  v117 = a5;
  v73 = __OFSUB__(v72, v21);
  v88 = v72 - v21;
  if (v73)
  {
    goto LABEL_154;
  }

  v89 = v19;
  v90 = v20;
  v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v88 / 2) & ~((v88 + (v88 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v92 = v70 + 2;
  if (__OFADD__(v70, 2))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v93 = v91;
  v94 = v90;
  v95 = v89;
  while (v71 > 1)
  {
    if (v71 == 2)
    {
      v96 = *(v95 + 24);
      goto LABEL_124;
    }

    if (v92 >= 1)
    {
      v102 = 0;
      goto LABEL_142;
    }

LABEL_127:
    *&v127 = v95;
    *(&v127 + 1) = v94;
    if (v92 < v70)
    {
      goto LABEL_151;
    }

    v97 = v95;
    v98 = v94;
    v99 = v93;
    outlined copy of Data._Representation(v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v127, *(&v127 + 1));
    v93 = v99;
    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    if (v101 >= v100 >> 1)
    {
      v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99);
    }

    *(v93 + 2) = v101 + 1;
    *&v93[2 * v101 + 32] = bswap32(0) >> 16;
    v70 = v92;
    v73 = __OFADD__(v92, 2);
    v92 += 2;
    v94 = v98;
    v95 = v97;
    if (v73)
    {
      goto LABEL_149;
    }
  }

  v96 = v122;
  if (v71)
  {
    v96 = v121;
  }

LABEL_124:
  if (v96 >= v92)
  {
    goto LABEL_127;
  }

  v102 = v122;
  if (v71)
  {
    v102 = v121;
    if (v71 == 2)
    {
      v102 = *(v95 + 24);
    }
  }

LABEL_142:
  if (__OFSUB__(v102, v70))
  {
    goto LABEL_156;
  }

  v108 = v93;
  if (v102 == v70)
  {
    outlined consume of Data._Representation(v95, v94);
    outlined consume of Data._Representation(v112, v113);
    v103 = a6;
    *a6 = v108;
    v104 = 96;
LABEL_146:
    *(v103 + 80) = v104;
    return;
  }

  v124 = xmmword_1B26C66C0;
  v127 = xmmword_1B26C66C0;
  v28 = 2;
  v128 = 2;
  v109 = v94;
  v110 = v95;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  outlined consume of Data._Representation(v110, v109);
  v107 = v116;
  outlined consume of Data._Representation(*v116, v116[1]);
  *v116 = v112;
  v116[1] = v113;
LABEL_147:
  v107[2] = v118;
  v127 = v124;
  v128 = 2;
  swift_willThrowTypedImpl();
  v13 = 0;
  v12 = 1;
  a5 = v117;
LABEL_71:
  *a5 = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v28;
}

uint64_t nwswifttls_disconnect(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 40))
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        v3 = *(v2 + 24);
        if (v3)
        {
          v4 = *(v3 + 32);
          if (v4)
          {
            v4();
          }
        }
      }
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void _s15SwiftTLSLibrary21HandshakeStateMachineV26handleReadNewSessionTicket33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v4 = v2;
  v60 = a2;
  v5 = type metadata accessor for Date();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B25F5000, v9, v10, "client expecting newSessionTicket", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, v46, &v48);
  if (v3)
  {
    v16 = v46[0];
    v17 = v46[1];
    v18 = v47;
    goto LABEL_11;
  }

  v42[6] = v54;
  v42[7] = v55;
  v42[2] = v50;
  v42[3] = v51;
  v42[4] = v52;
  v42[5] = v53;
  v42[0] = v48;
  v42[1] = v49;
  v45[5] = v54;
  v45[6] = v55;
  v45[1] = v50;
  v45[2] = v51;
  v45[3] = v52;
  v45[4] = v53;
  v43 = v56;
  LOBYTE(v45[7]) = v56;
  v44 = v48;
  v45[0] = v49;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v44) != 1)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "client got message expecting new session ticket", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    v57[4] = *(&v45[4] + 8);
    v58[0] = *(&v45[5] + 8);
    *(v58 + 9) = *(&v45[6] + 1);
    v57[0] = *(v45 + 8);
    v57[1] = *(&v45[1] + 8);
    v57[2] = *(&v45[2] + 8);
    v57[3] = *(&v45[3] + 8);
    if (LOBYTE(v45[7]) > 6u)
    {
      v59[0] = *(v45 + 8);
      v59[1] = *(&v45[1] + 8);
      v59[2] = *(&v45[2] + 8);
      v59[3] = *(&v45[3] + 8);
      v32 = type metadata accessor for HandshakeStateMachine(0);
      v23 = (v4 + *(v32 + 28));
      v25 = v23[3];
      v24 = v23[4];
      v26 = __swift_project_boxed_opaque_existential_0(v23, v25);
      v27 = *(v24 + 8);
      v30[1] = v26;
      v31 = v27;
      v40 = *(&v45[4] + 8);
      v41[0] = *(&v45[5] + 8);
      *(v41 + 9) = *(&v45[6] + 1);
      v36 = *(v45 + 8);
      v37 = *(&v45[1] + 8);
      v38 = *(&v45[2] + 8);
      v39 = *(&v45[3] + 8);
      outlined init with copy of NewSessionTicket(&v36, &v35);
      v31(v25, v24);
      v28 = v60;
      _s15SwiftTLSLibrary14HandshakeStateO24receivedNewSessionTicket03newgH011currentTimeAA07PartialC6ResultVAA0fgH0V_10Foundation4DateVtAA8TLSErrorOYKF(v59, v7, v46, v60);
      (*(v33 + 8))(v7, v5);
      outlined destroy of P256.Signing.PrivateKey?(v42, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of HandshakeMessage(v45 + 8);
      v29 = type metadata accessor for PartialHandshakeResult(0);
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      return;
    }

    HandshakeStateMachine.logUnexpectedMessage(message:)(v57);
    v36 = xmmword_1B26C6430;
    v18 = 2;
    LOBYTE(v37) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v42, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v17 = 0;
    v16 = 4;
LABEL_11:
    v19 = v34;
    *v34 = v16;
    v19[1] = v17;
    *(v19 + 16) = v18;
    return;
  }

LABEL_6:
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B25F5000, v12, v13, "incomplete message, waiting for more data", v14, 2u);
    MEMORY[0x1B274ECF0](v14, -1, -1);
  }

  v15 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v15 - 8) + 56))(v60, 1, 1, v15);
}

uint64_t ByteBuffer.readSlice(length:)(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          result = Data._Representation.subscript.getter();
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B25FFF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKFAgA10ByteBufferVzAIYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v133 = v8;
  v134 = v7;
  v135 = v9;
  outlined copy of Data._Representation(v8, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v11) = v10;
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v14 & 0x10000) != 0)
  {
    goto LABEL_10;
  }

  if (v13)
  {
    if (v11 == 1)
    {
      *(a2 + 24) = 1;
    }

    *a3 = xmmword_1B26C6410;
    *(a3 + 16) = 2;
    v131 = xmmword_1B26C6410;
    v132[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v15 = v8;
    v16 = v7;
    goto LABEL_8;
  }

  v17 = ByteBuffer.readSlice(length:)(v14);
  if (v18 >> 60 == 15)
  {
LABEL_10:
    outlined consume of Data._Representation(v8, v7);
    _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(&v131);
LABEL_11:
    v20 = *&v132[96];
    *(a4 + 96) = *&v132[80];
    *(a4 + 112) = v20;
    *(a4 + 128) = v132[112];
    v21 = *&v132[32];
    *(a4 + 32) = *&v132[16];
    *(a4 + 48) = v21;
    v22 = *&v132[64];
    *(a4 + 64) = *&v132[48];
    *(a4 + 80) = v22;
    v23 = *v132;
    *a4 = v131;
    *(a4 + 16) = v23;
    return;
  }

  v128 = v17;
  v129 = v18;
  v130 = v19;
  if (v11 <= 0xAu)
  {
    if (v11 > 3u)
    {
      if (v11 != 4)
      {
        if (v11 != 8)
        {
          goto LABEL_74;
        }

        v117 = v17;
        v118 = v18;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, logger);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1B25F5000, v43, v44, "encryptedExtensions", v45, 2u);
          MEMORY[0x1B274ECF0](v45, -1, -1);
        }

        outlined copy of Data._Representation(v117, v118);
        v46 = v140;
        v47 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a43TLSLibrary19EncryptedExtensionsV5bytesAcA10cd7Vz_tAA8f23OYKcfc04readD0L_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(&v128);
        v50 = v47;
        if (v46)
        {
          v51 = v48;
          v52 = v49;
          outlined consume of Data._Representation(v128, v129);
          *&v131 = v50;
          *(&v131 + 1) = v51;
          v132[0] = v52;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v117, v118);
        }

        else
        {
          if (v47)
          {
            v140 = 0;
            outlined consume of Data._Representation(v117, v118);
            *&v122 = v50;
            v29 = 2;
            goto LABEL_90;
          }

          outlined consume of Data._Representation(v128, v129);
          v131 = 0uLL;
          v52 = 2;
          v132[0] = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v117, v118);
          v51 = 0;
        }

        *a3 = v50;
        *(a3 + 8) = v51;
        *(a3 + 16) = v52;
        return;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, logger);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1B25F5000, v73, v74, "newSessionTicket", v75, 2u);
        MEMORY[0x1B274ECF0](v75, -1, -1);
      }

      v76 = v140;
      _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v139);
      if (v76)
      {
        goto LABEL_67;
      }

      v140 = 0;
      v122 = v139[0];
      v123 = v139[1];
      v124 = v139[2];
      v125 = v139[3];
      v29 = 7;
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, logger);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_1B25F5000, v25, v26, "serverHello", v27, 2u);
            MEMORY[0x1B274ECF0](v27, -1, -1);
          }

          v28 = v140;
          _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v138);
          if (!v28)
          {
            v140 = 0;
            v124 = v138[2];
            v125 = v138[3];
            v126 = v138[4];
            *v127 = v138[5];
            v29 = 1;
            v122 = v138[0];
            v123 = v138[1];
            goto LABEL_90;
          }

LABEL_67:
          v77 = v120[0];
          v78 = v120[1];
          v79 = v121;
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v128, v129);
          *a3 = v77;
          *(a3 + 8) = v78;
          *(a3 + 16) = v79;
          return;
        }

LABEL_74:
        v9 = v18;
        a4 = v17;
        if (one-time initialization token for logger == -1)
        {
LABEL_75:
          v88 = type metadata accessor for Logger();
          __swift_project_value_buffer(v88, logger);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v131 = v92;
            *v91 = 136315138;
            v93 = HandshakeType.description.getter(v11);
            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v131);

            *(v91 + 4) = v95;
            _os_log_impl(&dword_1B25F5000, v89, v90, "Unsupported handshake message: %s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v92);
            MEMORY[0x1B274ECF0](v92, -1, -1);
            MEMORY[0x1B274ECF0](v91, -1, -1);

            v8 = v133;
            v7 = v134;
            a4 = v128;
            v9 = v129;
          }

          else
          {
          }

          *a3 = xmmword_1B26C6410;
          *(a3 + 16) = 2;
          v131 = xmmword_1B26C6410;
          v132[0] = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          v15 = a4;
          v16 = v9;
          goto LABEL_8;
        }

LABEL_118:
        swift_once();
        goto LABEL_75;
      }

      *(a2 + 24) = 1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, logger);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1B25F5000, v60, v61, "clientHello", v62, 2u);
        MEMORY[0x1B274ECF0](v62, -1, -1);
      }

      v63 = v140;
      _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v136);
      if (v63)
      {
        goto LABEL_67;
      }

      v140 = 0;
      v29 = 0;
      *&v127[16] = v137;
      v126 = v136[4];
      *v127 = v136[5];
      v122 = v136[0];
      v123 = v136[1];
      v124 = v136[2];
      v125 = v136[3];
    }

LABEL_90:
    v127[24] = v29;
    v99 = v128;
    v100 = v129;
    v101 = v130;
    v102 = v129 >> 62;
    if ((v129 >> 62) > 1)
    {
      if (v102 == 2)
      {
        v103 = *(v128 + 24);
      }

      else
      {
        v103 = 0;
      }
    }

    else if (v102)
    {
      v103 = v128 >> 32;
    }

    else
    {
      v103 = BYTE6(v129);
    }

    if (__OFSUB__(v103, v130))
    {
      __break(1u);
    }

    else
    {
      if (v103 != v130)
      {
        if (one-time initialization token for logger == -1)
        {
          goto LABEL_103;
        }

        goto LABEL_116;
      }

      v104 = a1[2];
      if (!__OFSUB__(v104, v9))
      {
        v105 = ByteBuffer.readSlice(length:)(v104 - v9);
        if (v106 >> 60 != 15)
        {
          v108 = v105;
          v109 = v106;
          v110 = v107;
          outlined consume of Data._Representation(v133, v134);
          outlined consume of Data._Representation(v99, v100);
          *&v132[56] = v125;
          *&v132[72] = v126;
          *&v132[88] = *v127;
          *&v132[97] = *&v127[9];
          *&v132[8] = v122;
          *&v132[24] = v123;
          *&v132[40] = v124;
          *&v131 = v108;
          *(&v131 + 1) = v109;
          *v132 = v110;
          _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
          goto LABEL_11;
        }

        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_103:
    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, logger);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 134217984;
      swift_beginAccess();
      v115 = v129 >> 62;
      if ((v129 >> 62) > 1)
      {
        v116 = 0;
        if (v115 == 2)
        {
          v116 = *(v128 + 24);
        }
      }

      else if (v115)
      {
        v116 = v128 >> 32;
      }

      else
      {
        v116 = BYTE6(v129);
      }

      if (__OFSUB__(v116, v101))
      {
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      *(v114 + 4) = v116 - v101;
      _os_log_impl(&dword_1B25F5000, v112, v113, "ExcessBytes: %ld", v114, 0xCu);
      MEMORY[0x1B274ECF0](v114, -1, -1);
    }

    *a3 = xmmword_1B26C66C0;
    *(a3 + 16) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v122);
    outlined consume of Data._Representation(v133, v134);
    v15 = v128;
    v16 = v129;
LABEL_8:
    outlined consume of Data._Representation(v15, v16);
    return;
  }

  if (v11 <= 0xEu)
  {
    if (v11 == 11)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, logger);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1B25F5000, v65, v66, "certificate", v67, 2u);
        MEMORY[0x1B274ECF0](v67, -1, -1);
      }

      v68 = v140;
      v69 = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
      v38 = v69;
      v39 = v70;
      v41 = v71;
      if (!v68)
      {
        v140 = 0;
        *&v122 = v69;
        *(&v122 + 1) = v70;
        v29 = 4;
        goto LABEL_61;
      }
    }

    else
    {
      if (v11 != 13)
      {
        goto LABEL_74;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1B25F5000, v31, v32, "certificateRequest", v33, 2u);
        MEMORY[0x1B274ECF0](v33, -1, -1);
      }

      v34 = v140;
      v35 = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
      v38 = v35;
      v39 = v36;
      v41 = v40;
      if (!v34)
      {
        v140 = 0;
        *&v122 = v35;
        *(&v122 + 1) = v36;
        v29 = 3;
LABEL_61:
        *&v123 = v41;
        *(&v123 + 1) = v37;
        goto LABEL_90;
      }
    }

LABEL_73:
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v128, v129);
    *a3 = v38;
    *(a3 + 8) = v39;
    *(a3 + 16) = v41;
    return;
  }

  if (v11 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, logger);
    v41 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1B25F5000, v41, v81, "certificateVerify", v82, 2u);
      MEMORY[0x1B274ECF0](v82, -1, -1);
    }

    v83 = v140;
    v84 = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
    v38 = v84;
    v39 = v85;
    LOBYTE(v41) = v86;
    if (!v83)
    {
      v140 = 0;
      LOWORD(v122) = v84;
      *(&v122 + 1) = v85;
      *&v123 = v86;
      v29 = 5;
      *(&v123 + 1) = v87;
      goto LABEL_90;
    }

    goto LABEL_73;
  }

  if (v11 != 20)
  {
    goto LABEL_74;
  }

  v8 = v19;
  v53 = v18;
  v11 = v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, logger);
  v55 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v7))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1B25F5000, v55, v7, "finished", v56, 2u);
    MEMORY[0x1B274ECF0](v56, -1, -1);
  }

  v57 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v57 == 2)
    {
      v58 = *(v11 + 24);
    }

    else
    {
      v58 = 0;
    }
  }

  else if (v57)
  {
    v58 = v11 >> 32;
  }

  else
  {
    v58 = BYTE6(v53);
  }

  if (__OFSUB__(v58, v8))
  {
    __break(1u);
    goto LABEL_118;
  }

  v96 = ByteBuffer.readSlice(length:)(v58 - v8);
  if (v97 >> 60 != 15)
  {
    *&v122 = v96;
    *(&v122 + 1) = v97;
    v29 = 6;
    *&v123 = v98;
    goto LABEL_90;
  }

LABEL_121:
  __break(1u);
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5()
{
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 32);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v10, v11);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
  return v8 | (v7 << 32);
}

uint64_t _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of SessionTicket(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of P256.Signing.PublicKey?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int specialized Array.append<A>(contentsOf:)(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = _StringGuts.copyUTF8(into:)();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

char *closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(char *a1, char *a2, char **a3)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 <= 0xFF)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  *v3 = v6;
LABEL_7:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
    *v3 = v6;
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = v7;
  return specialized Array.append<A>(contentsOf:)(v5, v4);
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized Array.append<A>(contentsOf:)(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 3) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    v7[v26] = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of HandshakeState.IdleState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V20prepareSessionTicket7message11currentTimeAA0gH0VAA03NewgH0V_10Foundation4DateVtAA8TLSErrorOYKF@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v134 = a3;
  v131 = a2;
  v122 = a4;
  v127 = type metadata accessor for Date();
  v124 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v110 - v8;
  v9 = type metadata accessor for PeerCertificateBundle(0);
  v128 = *(v9 - 8);
  v129 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v125 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v110 - v12;
  v13 = type metadata accessor for SymmetricKey();
  v133 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v110 - v17;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v20 = *(a1 + 1);
  v21 = *(a1 + 2);
  v121 = a1;
  v22 = *(a1 + 3);
  *&v132 = v4;
  v23 = v150;
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKFAF6SHA384V_Tg5(v20, v21, v22, &v145, v18);
  if (v23)
  {
    v25 = v145;
    v26 = v146;
    goto LABEL_9;
  }

  v116 = v22;
  v117 = v21;
  v118 = v20;
  v119 = v16;
  v27 = v131;
  v115 = 0;
  v120 = v18;
  v150 = v13;
  v28 = v132;
  v29 = v130;
  outlined init with copy of Any?(v132 + *(ready + 28), v130, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  if ((*(v128 + 48))(v29, 1, v129) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v29, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v132 = xmmword_1B26CACB0;
    v138 = xmmword_1B26CACB0;
    v26 = 2;
    LOBYTE(v139) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = (*(v133 + 8))(v120, v150);
LABEL_8:
    v25 = v132;
LABEL_9:
    v34 = v134;
LABEL_10:
    *v34 = v25;
    *(v34 + 16) = v26;
    return result;
  }

  v30 = ready;
  v31 = v126;
  outlined init with take of HandshakeState.IdleState(v29, v126, type metadata accessor for PeerCertificateBundle);
  v32 = v120;
  v33 = v133;
  if (*(v28 + 68) & 1) != 0 || (*(v28 + 72))
  {
    v132 = xmmword_1B26CACA0;
    v138 = xmmword_1B26CACA0;
    v26 = 2;
    LOBYTE(v139) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeState(v31, type metadata accessor for PeerCertificateBundle);
    result = (*(v33 + 8))(v32, v150);
    goto LABEL_8;
  }

  LODWORD(v129) = *(v28 + 66);
  LODWORD(v130) = *(v28 + 70);
  v113 = *(v133 + 16);
  v114 = v133 + 16;
  v113(v119, v120, v150);
  v35 = (v28 + *(v30 + 32));
  v37 = *v35;
  v36 = v35[1];
  v128 = v37;
  *&v132 = v36;
  v112 = type metadata accessor for PeerCertificateBundle;
  outlined init with copy of HandshakeState(v31, v125, type metadata accessor for PeerCertificateBundle);
  v38 = v123;
  v39 = *(v124 + 16);
  v40 = v127;
  v39(v123, v27, v127);
  v41 = v122;
  v39(v122, v38, v40);
  v42 = v121;
  if (*v121 >= 0x93A80)
  {
    v43 = 604800;
  }

  else
  {
    v43 = *v121;
  }

  v44 = type metadata accessor for SessionTicket(0);
  v45 = &v41[v44[13]];
  *&v41[v44[5]] = v43;
  *&v41[v44[6]] = v42[1];
  v149 = *(v42 + 6);
  v46 = v149;
  v148 = *(v42 + 2);
  v47 = &v41[v44[8]];
  *v47 = v148;
  v111 = v47;
  *(v47 + 2) = v46;
  v48 = &v41[v44[7]];
  v49 = v117;
  *v48 = v118;
  *(v48 + 1) = v49;
  v110 = v48;
  *(v48 + 2) = v116;
  v50 = v125;
  v51 = v44[9];
  v113(&v41[v51], v119, v150);
  *&v41[v44[11]] = v129;
  *&v41[v44[12]] = v130;
  v52 = v132;
  *v45 = v128;
  *(v45 + 1) = v52;
  v131 = v44;
  v53 = v44[14];
  outlined init with copy of HandshakeState(v50, &v41[v53], v112);
  v144 = MEMORY[0x1E69E7CD0];
  v54 = *(v42 + 7);
  v147 = v54;
  v55 = *(v54 + 16);
  if (v55)
  {
    v129 = v53;
    v130 = v51;
    v56 = v49;
    v57 = v54 + 32;
    outlined init with copy of NewSessionTicket(v42, &v138);

    outlined init with copy of ByteBuffer(&v148, &v138);
    outlined copy of Data._Representation(v118, v56);
    outlined init with copy of Any?(&v147, &v138, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
    v58 = 0;
    v59 = v55 - 1;
    v60 = 1;
    v61 = v127;
    while (1)
    {
      v62 = *(v57 + 16);
      v138 = *v57;
      v139 = v62;
      v63 = *(v57 + 32);
      v64 = *(v57 + 48);
      v65 = *(v57 + 64);
      v143 = *(v57 + 80);
      v141 = v64;
      v142 = v65;
      v140 = v63;
      v66 = 42;
      switch(v143 >> 4)
      {
        case 1:

          v66 = 10;
          break;
        case 2:
          sub_1B260EDD8(v138, BYTE8(v138) & 1);
          v66 = 43;
          break;
        case 3:
          outlined copy of Extension.ApplicationLayerProtocolNegotiation(v138, *(&v138 + 1), v139 & 1);
          v66 = 16;
          break;
        case 4:
          outlined copy of Extension.KeyShare(v138, *(&v138 + 1), v139);
          v66 = 51;
          break;
        case 5:
          break;
        case 6:

          v66 = 13;
          break;
        case 7:
          sub_1B260EDD8(v138, BYTE8(v138) & 1);
          v66 = 20;
          break;
        case 8:
          outlined copy of Data._Representation(v138, *(&v138 + 1));
          v66 = 57;
          break;
        case 9:

          v66 = 45;
          break;
        case 0xA:
          outlined copy of Extension.PreSharedKey(v138, *(&v138 + 1), v139 & 1);
          v66 = 41;
          break;
        case 0xB:
          v66 = 58;
          break;
        case 0xC:
          outlined copy of Extension.PAKE(v138, *(&v138 + 1), v139, *(&v139 + 1), v140, *(&v140 + 1), v141, *(&v141 + 1), v142, *(&v142 + 1), v143 & 1);
          v66 = 35387;
          break;
        case 0xD:
          v67 = v138;
          outlined copy of Data._Representation(*(&v138 + 1), v139);
          v66 = v67;
          break;
        default:
          outlined copy of Data?(v138, *(&v138 + 1));
          v66 = 0;
          break;
      }

      if ((specialized Set._Variant.insert(_:)(&v136, v66) & 1) == 0)
      {

        outlined destroy of P256.Signing.PrivateKey?(&v147, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, logger);
        outlined init with copy of Extension(&v138, &v136);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();
        outlined destroy of Extension(&v138);
        v76 = os_log_type_enabled(v74, v75);
        v77 = v122;
        v78 = v150;
        v79 = v124;
        v80 = v133;
        if (v76)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *&v136 = v82;
          *v81 = 136315138;
          v83 = 0;
          switch(v143 >> 4)
          {
            case 1:
              v83 = 10;
              break;
            case 2:
              v83 = 43;
              break;
            case 3:
              v83 = 16;
              break;
            case 4:
              v83 = 51;
              break;
            case 5:
              v83 = 42;
              break;
            case 6:
              v83 = 13;
              break;
            case 7:
              v83 = 20;
              break;
            case 8:
              v83 = 57;
              break;
            case 9:
              v83 = 45;
              break;
            case 0xA:
              v83 = 41;
              break;
            case 0xB:
              v83 = 58;
              break;
            case 0xC:
              v83 = -30149;
              break;
            case 0xD:
              v83 = v138;
              break;
            default:
              break;
          }

          v105 = ExtensionType.description.getter(v83);
          v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v136);

          *(v81 + 4) = v107;
          _os_log_impl(&dword_1B25F5000, v74, v75, "server offered duplicate extension of type %s on new session ticket", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          MEMORY[0x1B274ECF0](v82, -1, -1);
          MEMORY[0x1B274ECF0](v81, -1, -1);

          v80 = v133;
          v34 = v134;
          v78 = v150;
        }

        else
        {

          v34 = v134;
        }

        v108 = v123;
        v109 = v121;
        v136 = xmmword_1B26C6410;
        v137 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of NewSessionTicket(v109);
        outlined destroy of Extension(&v138);
        v102 = *(v79 + 8);
        v103 = v127;
        v102(v108, v127);
        outlined destroy of HandshakeState(v125, type metadata accessor for PeerCertificateBundle);
        v104 = *(v80 + 8);
        v104(v119, v78);
        goto LABEL_76;
      }

      if ((v143 & 0xF0) == 0x50)
      {
        v68 = v138;
        v69 = BYTE4(v138);
        if (v60 & 1) == 0 || (BYTE4(v138))
        {

          outlined destroy of P256.Signing.PrivateKey?(&v147, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          __swift_project_value_buffer(v84, logger);
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();
          v87 = os_log_type_enabled(v85, v86);
          v88 = v133;
          if (v87)
          {
            LODWORD(v128) = v60 | v69;
            v89 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            *&v136 = v131;
            *v89 = 136315394;
            if (v60)
            {
              v90 = 0xE300000000000000;
              v91 = 7104878;
            }

            else
            {
              v135 = v58;
              lazy protocol witness table accessor for type UInt32 and conformance UInt32();
              v91 = BinaryInteger.description.getter();
              v90 = v93;
            }

            v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, &v136);

            *(v89 + 4) = v94;
            *(v89 + 12) = 2080;
            v77 = v122;
            v92 = v124;
            if (v128)
            {
              v95 = 0xE300000000000000;
              v34 = v134;
              v96 = 7104878;
            }

            else
            {
              v135 = v68;
              lazy protocol witness table accessor for type UInt32 and conformance UInt32();
              v96 = BinaryInteger.description.getter();
              v95 = v97;
              v34 = v134;
            }

            v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, &v136);

            *(v89 + 14) = v98;
            _os_log_impl(&dword_1B25F5000, v85, v86, "invalid early data extension: old value %s new value %s", v89, 0x16u);
            v99 = v131;
            swift_arrayDestroy();
            MEMORY[0x1B274ECF0](v99, -1, -1);
            MEMORY[0x1B274ECF0](v89, -1, -1);

            v88 = v133;
          }

          else
          {

            v34 = v134;
            v77 = v122;
            v92 = v124;
          }

          v100 = v123;
          v101 = v121;
          v136 = xmmword_1B26C6410;
          v137 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of NewSessionTicket(v101);
          v102 = *(v92 + 8);
          v103 = v127;
          v102(v100, v127);
          outlined destroy of HandshakeState(v125, type metadata accessor for PeerCertificateBundle);
          v104 = *(v88 + 8);
          v78 = v150;
          v104(v119, v150);
LABEL_76:
          v102(v77, v103);
          outlined consume of Data._Representation(*v110, v110[1]);
          outlined consume of Data._Representation(*v111, *(v111 + 1));
          v104(&v77[v130], v78);

          outlined destroy of HandshakeState(&v77[v129], type metadata accessor for PeerCertificateBundle);
          outlined destroy of HandshakeState(v126, type metadata accessor for PeerCertificateBundle);
          result = (v104)(v120, v78);
          v25 = xmmword_1B26C6410;
          v26 = 2;
          goto LABEL_10;
        }

        v60 = 0;
        v61 = v127;
      }

      else
      {
        outlined destroy of Extension(&v138);
        v68 = v58;
      }

      if (!v59)
      {
        break;
      }

      --v59;
      v57 += 88;
      v58 = v68;
    }

    outlined destroy of NewSessionTicket(v121);
    outlined destroy of P256.Signing.PrivateKey?(&v147, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
    (*(v124 + 8))(v123, v61);
    outlined destroy of HandshakeState(v125, type metadata accessor for PeerCertificateBundle);
    v70 = *(v133 + 8);
    v71 = v150;
    v70(v119, v150);

    if (v60)
    {
      v72 = 0;
    }

    else
    {
      v72 = v68;
    }

    v41 = v122;
  }

  else
  {

    outlined init with copy of ByteBuffer(&v148, &v138);
    outlined copy of Data._Representation(v118, v49);
    (*(v124 + 8))(v123, v127);
    outlined destroy of HandshakeState(v50, type metadata accessor for PeerCertificateBundle);
    v70 = *(v133 + 8);
    v71 = v150;
    v70(v119, v150);
    v72 = 0;
  }

  *&v41[*(v131 + 40)] = v72;
  outlined destroy of HandshakeState(v126, type metadata accessor for PeerCertificateBundle);
  return (v70)(v120, v71);
}

char *specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, char **a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(v8, v4, a3);
}

uint64_t specialized Set._Variant.insert(_:)(_WORD *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMR, &type metadata for ExtensionType);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary10PAKESchemeVGMR, &type metadata for PAKEScheme);
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 2 * (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 2 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

void ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = BYTE6(a2);
  v16[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a2);
    if (v6)
    {
      v7 = a1 >> 32;
    }
  }

  v8 = __OFSUB__(v7, a3);
  v9 = v7 - a3;
  if (v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = bswap64(v9);
  v16[3] = MEMORY[0x1E69E6290];
  v16[4] = MEMORY[0x1E6969DF8];
  v16[0] = &v15;
  v16[1] = v16;
  __swift_project_boxed_opaque_existential_0(v16, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v10 = a1 >> 32;
    }

    else
    {
      v10 = v4;
    }

    if (v6)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v10 < a3 || v10 < v11)
  {
LABEL_25:
    __break(1u);
  }

  v12 = Data._Representation.subscript.getter();
  v14 = v13;
  Data.append(_:)();
  outlined consume of Data._Representation(v12, v14);
}

unint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v45, &v47);
    v5 = __swift_project_boxed_opaque_existential_0(&v47, v48);
    MEMORY[0x1EEE9AC00](v5);
    v39 = v2;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return __swift_destroy_boxed_opaque_existential_0(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  outlined destroy of ContiguousBytes?(v45);
  result = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_8:
  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10 != 2)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v13 = v8 + 16;
  v8 = *(v8 + 16);
  v11 = *(v13 + 8);
  v12 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
  }

LABEL_18:
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_74;
  }

  if ((v11 + v7) < v11)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v14 = Data._Representation.resetBytes(in:)();
  MEMORY[0x1EEE9AC00](v14);
  v38[2] = v12;
  v38[3] = v7;
  v39 = v44;
  v15 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:), v38);
  v19 = v16;
  if (v18 != v7)
  {
    v31 = 0;
    v32 = *v2;
    v33 = v2[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v31 = *(v32 + 16);
      }
    }

    else if (v34)
    {
      v31 = v32;
    }

    v35 = __OFADD__(v31, v12);
    v36 = v31 + v12;
    if (!v35)
    {
      if (!__OFADD__(v36, v18))
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v37 = *(v32 + 24);
          }

          else
          {
            v37 = 0;
          }
        }

        else if (v34)
        {
          v37 = v32 >> 32;
        }

        else
        {
          v37 = BYTE6(v33);
        }

        if (v37 >= v36 + v18)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
        }

        goto LABEL_78;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v20 = v15;
  v21 = v17;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  *(v45 + 7) = 0;
  *&v45[0] = 0;
  if (4 * v22 != v17 >> 14)
  {
    LOBYTE(v23) = 0;
    v24 = (v15 >> 59) & 1;
    if ((v16 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v40 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v41 = v16 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = v21 & 0xC;
      v27 = v21;
      if (v26 == v25)
      {
        v27 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, v20, v19);
      }

      v28 = v27 >> 16;
      if (v27 >> 16 >= v22)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v7 = String.UTF8View._foreignCount()();
        goto LABEL_8;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        v30 = String.UTF8View._foreignSubscript(position:)();
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        *&v47 = v20;
        *(&v47 + 1) = v41;
        v30 = *(&v47 + v28);
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v29 = v40;
        if ((v20 & 0x1000000000000000) == 0)
        {
          v29 = _StringObject.sharedUTF8.getter();
        }

        v30 = *(v29 + v28);
        if (v26 != v25)
        {
LABEL_40:
          if ((v19 & 0x1000000000000000) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        }
      }

      v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, v20, v19);
      if ((v19 & 0x1000000000000000) != 0)
      {
LABEL_44:
        if (v22 <= v21 >> 16)
        {
          goto LABEL_71;
        }

        v21 = String.UTF8View._foreignIndex(after:)();
        goto LABEL_46;
      }

LABEL_41:
      v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
      *(v45 + v23) = v30;
      v23 = v23 + 1;
      if ((v23 >> 8))
      {
        goto LABEL_70;
      }

      if (v23 == 14)
      {
        *&v47 = *&v45[0];
        *(&v47 + 6) = *(v45 + 6);
        Data._Representation.append(contentsOf:)();
        LOBYTE(v23) = 0;
      }

      if (4 * v22 == v21 >> 14)
      {
        if (v23)
        {
          *&v47 = *&v45[0];
          *(&v47 + 6) = *(v45 + 6);
          Data._Representation.append(contentsOf:)();
        }
      }
    }
  }
}

uint64_t ByteBuffer.writePeerCertificateBundle(_:)(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    LOBYTE(v23) = 1;
    v26 = MEMORY[0x1E69E6290];
    v27 = MEMORY[0x1E6969DF8];
    v24 = &v23;
    v25 = (&v23 + 1);
    __swift_project_boxed_opaque_existential_0(&v24, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    return __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  (*(v3 + 32))(v5, v8, v2);
  LOBYTE(v23) = 0;
  v10 = MEMORY[0x1E69E6290];
  v11 = MEMORY[0x1E6969DF8];
  v26 = MEMORY[0x1E69E6290];
  v27 = MEMORY[0x1E6969DF8];
  v24 = &v23;
  v25 = (&v23 + 1);
  __swift_project_boxed_opaque_existential_0(&v24, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  v12 = __swift_destroy_boxed_opaque_existential_0(&v24);
  v13 = MEMORY[0x1B274D470](v12);
  v15 = v13;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_14;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
LABEL_12:
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v18) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      __break(1u);
    }

    v18 = v18;
    goto LABEL_12;
  }

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = BYTE6(v14);
LABEL_15:
  v26 = v10;
  v27 = v11;
  v23 = bswap64(v18);
  v24 = &v23;
  v25 = &v24;
  __swift_project_boxed_opaque_existential_0(&v24, v10);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  specialized ByteBuffer.writeBytes<A>(_:)(v15, v16);
  outlined consume of Data._Representation(v15, v16);
  return (*(v3 + 8))(v5, v2);
}

uint64_t outlined init with copy of PeerCertificateBundle.Bundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA384();
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA384();
  _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      type metadata accessor for SHA384();
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

double _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of X25519MLKEM768EphemeralKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GeneratedEphemeralPrivateKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of ByteBuffer?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of ByteBuffer?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV6create11clientHello15sessionToResume5epsks11useRawEPSKs11currentTimeAHyx__G05earlyoM0_AA10ByteBufferV0qR5BytestAA06ClientR0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtFZ9CryptoKit6SHA384V_Tt5g5(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v117 = a6;
  LODWORD(v124) = a5;
  v129 = a4;
  v138 = a3;
  v127 = a2;
  v113 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v113);
  v119 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for SessionTicket(0);
  v143 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v116 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SHA384();
  v137 = *(v141 - 8);
  v10 = MEMORY[0x1EEE9AC00](v141);
  v131 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v111 - v12;
  v13 = type metadata accessor for SHA384Digest();
  v142 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v111 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v135 = &v111 - v18;
  v19 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GeneralEPSK(0);
  v118 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v114 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v111 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v111 - v31;
  v33 = type metadata accessor for SymmetricKey();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v139 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v111 - v37;
  v38 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
  v134 = v13;
  v133 = v38;
  v39 = dispatch thunk of static Digest.byteCount.getter();
  if (v39 < 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v123 = a1;
  v122 = v16;
  if (v39)
  {
    v40 = v39;
    v41 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v41 + 16) = v40;
    bzero((v41 + 32), v40);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v129 + 16);
  v43 = *(v143 + 6);
  v44 = v130;
  v143 = (v143 + 48);
  v128 = v43;
  v45 = v43(v138, 1, v130);
  v121 = v33;
  v120 = v34;
  v115 = v42;
  if (v42)
  {
    if (v45 == 1)
    {
      outlined init with copy of SessionTicket(v129 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v26, type metadata accessor for GeneralEPSK);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v26, v21, type metadata accessor for PSK);
      v46 = (v34 + 16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v21;
        v48 = v119;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v47, v119, type metadata accessor for RawEPSK);
        (*v46)();
        v49 = type metadata accessor for RawEPSK;
      }

      else
      {
        v52 = v21;
        v48 = v112;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v52, v112, type metadata accessor for ImportedPSK);
        (*v46)();
        v49 = type metadata accessor for ImportedPSK;
      }

      outlined destroy of SessionTicket(v48, v49);
      if (v124)
      {
        v50 = 0x646E696220747865;
      }

      else
      {
        v50 = 0x646E696220706D69;
      }

      v51 = v130;
LABEL_18:
      *&v146 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v53 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
      v54 = v141;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v55 = v136;
      dispatch thunk of HashFunction.init()();
      v56 = v140;
      v124 = v53;
      dispatch thunk of HashFunction.finalize()();
      v119 = *(v137 + 8);
      (v119)(v55, v54);
      v57 = v134;
      v58 = dispatch thunk of static Digest.byteCount.getter();
      _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(v50, 0xEA00000000007265, v58, v139);
      v59 = v142 + 8;
      v60 = *(v142 + 8);
      v60(v56, v57);
      outlined init with copy of Any?(v138, v30, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      v61 = v128(v30, 1, v51);
      v142 = v59;
      if (v61 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v30, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);

        if (!v115)
        {
          v144 = xmmword_1B26C6130;
          v145 = 0;
          v108 = v127[5];
          v150 = v127[4];
          v151 = v108;
          v152 = *(v127 + 12);
          v109 = v127[1];
          v146 = *v127;
          v147 = v109;
          v110 = v127[3];
          v148 = v127[2];
          v149 = v110;
          specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
          v71 = 0;
LABEL_26:
          v85 = v131;
          dispatch thunk of HashFunction.init()();
          v86 = *(&v144 + 1) >> 62;
          if ((*(&v144 + 1) >> 62) > 1)
          {
            if (v86 == 2)
            {
              v87 = *(v144 + 24);
            }

            else
            {
              v87 = 0;
            }
          }

          else if (v86)
          {
            v87 = v144 >> 32;
          }

          else
          {
            v87 = BYTE14(v144);
          }

          if (v87 >= v71)
          {
            v88 = Data._Representation.subscript.getter();
            v90 = v89;
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v88, v89, v85);
            outlined consume of Data._Representation(v88, v90);
            v143 = v60;
            v91 = v141;
            dispatch thunk of HashFunction.finalize()();
            v92 = v134;
            v93 = dispatch thunk of static Digest.byteCount.getter();
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
            v95 = *(v94 + 44);
            v96 = v94;
            v138 = v94;
            v97 = v123;
            v98 = v135;
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6661727420652063, 0xEB00000000636966, v93, v123 + v95);
            v99 = dispatch thunk of static Digest.byteCount.getter();
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x616D207078652065, 0xEC00000072657473, v99, v97 + *(v96 + 48));
            v100 = v136;
            dispatch thunk of HashFunction.init()();
            v101 = v122;
            dispatch thunk of HashFunction.finalize()();
            (v119)(v100, v91);
            v102 = dispatch thunk of static Digest.byteCount.getter();
            v103 = v138;
            _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v102, v97 + *(v138 + 36));
            v104 = v143;
            v143(v101, v92);
            v104(v140, v92);
            (*(v125 + 8))(v98, v126);
            v105 = v120;
            v106 = v121;
            (*(v120 + 8))(v132, v121);
            (*(v137 + 32))(v97, v131, v91);
            (*(v105 + 32))(v97 + *(v103 + 40), v139, v106);
            v107 = v144;
            outlined copy of Data._Representation(v144, *(&v144 + 1));
            outlined consume of Data._Representation(v107, *(&v107 + 1));
            return;
          }

          goto LABEL_37;
        }

        v62 = v114;
        outlined init with copy of SessionTicket(v129 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v114, type metadata accessor for GeneralEPSK);
        v63 = GeneralEPSK.identity.getter();
        v65 = v64;
        v67 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(v139, v127, v63, v64, v66, 0);
        v69 = v68;
        v71 = v70;
        outlined consume of Data._Representation(v63, v65);
        v72 = type metadata accessor for GeneralEPSK;
        v73 = v62;
      }

      else
      {

        v74 = v116;
        _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v30, v116, type metadata accessor for SessionTicket);
        Date.timeIntervalSince(_:)();
        v76 = v75 * 1000.0;
        if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v76 <= -1.0)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v76 >= 4294967300.0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v77 = v76;
        v78 = *(v74 + *(v130 + 24));
        v79 = (v74 + *(v130 + 32));
        v80 = *v79;
        v81 = v79[1];
        v82 = v79[2];
        outlined copy of Data._Representation(*v79, v81);
        v67 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV25calculateFinalClientHello06binderO006clientS019obfuscatedTicketAge8identityAA10ByteBufferV9CryptoKit09SymmetricD0V_AA0rS0Vzs6UInt32VAA9ExtensionO09PreSharedD0O11OfferedPSKsV11PSKIdentityVtFZAP6SHA384V_Tt3g5Tf4nndn_n(v139, v127, v80, v81, v82, v78 + v77);
        v69 = v83;
        v71 = v84;
        outlined consume of Data._Representation(v80, v81);
        v72 = type metadata accessor for SessionTicket;
        v73 = v74;
      }

      outlined destroy of SessionTicket(v73, v72);
      *&v144 = v67;
      *(&v144 + 1) = v69;
      v145 = v71;
      goto LABEL_26;
    }
  }

  else if (v45 == 1)
  {
    v50 = 0x646E696220736572;
    *&v146 = v41;

    v51 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E08]);
    SymmetricKey.init<A>(data:)();
    goto LABEL_18;
  }

  outlined init with copy of Any?(v138, v32, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (v128(v32, 1, v44) != 1)
  {
    v50 = 0x646E696220736572;
    (*(v34 + 16))(v132, &v32[*(v44 + 36)], v33);
    outlined destroy of SessionTicket(v32, type metadata accessor for SessionTicket);
    v51 = v44;
    goto LABEL_18;
  }

LABEL_41:
  __break(1u);
}