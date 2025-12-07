uint64_t io_catalog_send_data(unsigned int a1, int a2, uint64_t a3, int a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = a3;
  v11 = 16777472;
  v12 = a4;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a2;
  v15 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB1400000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(&v8);
  }

  return v6;
}

uint64_t io_catalog_terminate(unsigned int a1, int a2, char *src)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 140);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v10[0]) = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 12, src, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 12, src, 128);
  }

  DWORD1(v10[0]) = 0;
  DWORD2(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 44;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1500000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_catalog_get_data(unsigned int a1, int a2, void *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v13 = 0;
  v12 = 0;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  *&v7.msgh_bits = 0x2400001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB1600000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v7);
  }

  return v5;
}

uint64_t io_catalog_get_gen_count(unsigned int a1, _DWORD *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1700000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_catalog_module_loaded(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *reply_port = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 128);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v8 = 0xB1800000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v5;
}

uint64_t io_catalog_reset(unsigned int a1, unsigned int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1900000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_service_request_probe(unsigned int a1, unsigned int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1A00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_name_in_plane(unsigned int a1, const char *a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1B00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_service_match_property_table(unsigned int a1, const char *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1C00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_connect_get_notification_semaphore(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v11 = 0;
  v10 = 0;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  *&v7.msgh_bits = 0x2400001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB2400000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
    }

    else
    {
      v4 = 4294966995;
      mach_msg_destroy(&v7);
    }
  }

  else
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  return v4;
}

uint64_t io_registry_entry_get_location_in_plane(unsigned int a1, const char *a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2600000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_registry_entry_get_property_recursively(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = 0;
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
  memset(v27, 0, sizeof(v27));
  *reply_port = 0u;
  *(&v27[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(&v27[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v27[1] + 8, a2, 128);
  }

  LODWORD(v27[1]) = 0;
  DWORD1(v27[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x1EEE9AC40])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v27[0] = 0xB2700000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v27[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v27[0]) == 2955)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v27[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v27[1]) == 1)
          {
            v24 = DWORD2(v27[1]);
            if (DWORD2(v27[1]) == DWORD1(v28))
            {
              v22 = 0;
              *a5 = *(v27 + 12);
              *a6 = v24;
              return v22;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v27[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v27[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      return v22;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

  return v22;
}

uint64_t io_service_get_state(unsigned int a1, void *a2, _DWORD *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *&v8.msgh_bits = 0x1800001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB2800000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
    }

    else
    {
      v5 = 4294966995;
      mach_msg_destroy(&v8);
    }
  }

  else
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  return v5;
}

uint64_t io_service_get_matching_services_ool(unsigned int a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v9 = 1;
  v10 = a2;
  v11 = 0x1000000;
  v12 = a3;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a3;
  v15 = 0;
  *&v8.msgh_bits = 0x3880001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB2900000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(&v8);
  }

  return v6;
}

uint64_t io_service_match_property_table_ool(unsigned int a1, uint64_t a2, int a3, int *a4, _DWORD *a5)
{
  v9 = 1;
  v10 = a2;
  v11 = 0x1000000;
  v12 = a3;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a3;
  *&v8.msgh_bits = 0x3880001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB2A00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(&v8);
  }

  return v6;
}

uint64_t io_object_get_superclass(unsigned int a1, const char *a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2C00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_object_get_bundle_identifier(unsigned int a1, const char *a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2D00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_service_add_notification(unsigned int a1, const char *a2, const char *a3, int a4, const void *a5, unsigned int a6, int *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  memset(v28, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = 1;
  v26 = a4;
  DWORD1(v27) = 1310720;
  *(&v27 + 1) = *MEMORY[0x1E69E99E0];
  v12 = &reply_port - 128;
  if (MEMORY[0x1EEE9AC40])
  {
    v13 = mig_strncpy_zerofill(v28 + 8, a2, 128);
    LODWORD(v28[0]) = 0;
    DWORD1(v28[0]) = v13;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy_zerofill(v15 + 192, a3, 512);
  }

  else
  {
    v17 = mig_strncpy(v28 + 8, a2, 128);
    LODWORD(v28[0]) = 0;
    DWORD1(v28[0]) = v17;
    v14 = (v17 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy(v15 + 192, a3, 512);
  }

  *(v15 + 46) = 0;
  *(v15 + 47) = v16;
  if (a6 > 8)
  {
    return 4294966989;
  }

  v19 = (v16 + 3) & 0xFFFFFFFC;
  v20 = &v15[v19];
  memcpy(v20 + 196, a5, 8 * a6);
  *(v20 + 48) = a6;
  v21 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v14 + 8 * a6 + v19 + 68;
  *&reply_port.msgh_remote_port = __PAIR64__(v21, a1);
  *&reply_port.msgh_voucher_port = 0xB3400000000;
  v22 = mach_msg2_internal();
  v18 = v22;
  if ((v22 - 268435458) <= 0xE && ((1 << (v22 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v22)
    {
      if (reply_port.msgh_id == 71)
      {
        v18 = 4294966988;
      }

      else if (reply_port.msgh_id == 2968)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v18 = 4294966996;
          if (v25 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v27) << 16 == 1114112)
          {
            v18 = 0;
            *a7 = v26;
            return v18;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v18 = 4294966996;
          if (v27)
          {
            if (reply_port.msgh_remote_port)
            {
              v18 = 4294966996;
            }

            else
            {
              v18 = v27;
            }
          }
        }

        else
        {
          v18 = 4294966996;
        }
      }

      else
      {
        v18 = 4294966995;
      }

      mach_msg_destroy(&reply_port);
      return v18;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  return v18;
}

uint64_t io_service_add_notification_ool(unsigned int a1, const char *a2, uint64_t a3, int a4, int a5, const void *a6, unsigned int a7, _DWORD *a8, _DWORD *a9)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  memset(&reply_port, 0, sizeof(reply_port));
  v24 = 2;
  v25 = a3;
  v26 = 0x1000000;
  v27 = a4;
  v28 = a5;
  DWORD1(v29) = 1310720;
  *(&v29 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v14 = mig_strncpy_zerofill(v30 + 8, a2, 128);
  }

  else
  {
    v14 = mig_strncpy(v30 + 8, a2, 128);
  }

  LODWORD(v30[0]) = 0;
  DWORD1(v30[0]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  v16 = &reply_port + v15;
  *(v30 + v15 + 8) = a4;
  if (a7 > 8)
  {
    return 4294966989;
  }

  v18 = v16 - 128;
  memcpy(v16 + 80, a6, 8 * a7);
  *(v18 + 51) = a7;
  v19 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v15 + 8 * a7 + 80;
  *&reply_port.msgh_remote_port = __PAIR64__(v19, a1);
  *&reply_port.msgh_voucher_port = 0xB3600000000;
  v20 = mach_msg2_internal();
  v17 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (reply_port.msgh_id == 71)
      {
        v17 = 4294966988;
      }

      else if (reply_port.msgh_id == 2970)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v17 = 4294966996;
          if (v24 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v26) << 16 == 1114112)
          {
            v17 = 0;
            v21 = v25;
            *a8 = v29;
            *a9 = v21;
            return v17;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v17 = 4294966996;
          if (HIDWORD(v25))
          {
            if (reply_port.msgh_remote_port)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = HIDWORD(v25);
            }
          }
        }

        else
        {
          v17 = 4294966996;
        }
      }

      else
      {
        v17 = 4294966995;
      }

      mach_msg_destroy(&reply_port);
      return v17;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  return v17;
}

uint64_t io_service_get_matching_service(unsigned int a1, const char *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB3900000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_service_get_matching_service_ool(unsigned int a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v9 = 1;
  v10 = a2;
  v11 = 0x1000000;
  v12 = a3;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a3;
  v15 = 0;
  *&v8.msgh_bits = 0x3880001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB3A00000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(&v8);
  }

  return v6;
}

uint64_t io_service_get_authorization_id(unsigned int a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3B00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_service_set_authorization_id(unsigned int a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3C00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_properties_bin(unsigned int a1, void *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB3E00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
    }

    else
    {
      v4 = 4294966995;
      mach_msg_destroy(&v7);
    }
  }

  else
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  return v4;
}

uint64_t io_registry_entry_get_property_bin(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = 0;
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
  memset(v27, 0, sizeof(v27));
  *reply_port = 0u;
  *(&v27[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(&v27[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v27[1] + 8, a2, 128);
  }

  LODWORD(v27[1]) = 0;
  DWORD1(v27[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x1EEE9AC40])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v27[0] = 0xB3F00000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v27[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v27[0]) == 2979)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v27[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v27[1]) == 1)
          {
            v24 = DWORD2(v27[1]);
            if (DWORD2(v27[1]) == DWORD1(v28))
            {
              v22 = 0;
              *a5 = *(v27 + 12);
              *a6 = v24;
              return v22;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v27[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v27[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      return v22;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

  return v22;
}

uint64_t io_service_match_property_table_bin(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x1E69E99E0];
  if (v3 > 0x1000)
  {
    return 4294966989;
  }

  v5 = v3;
  v6 = v2;
  __memcpy_chk();
  LODWORD(v11) = v5;
  reply_port[0] = 5395;
  reply_port[1] = ((v5 + 3) & 0x3FFC) + 36;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v6);
  *&v10 = 0xB4200000000;
  v7 = mach_msg2_internal();
  v4 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v7)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v4;
}

uint64_t io_registry_entry_get_path_ool(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, v2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, v2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v3);
  *&v9 = 0xB4500000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t io_registry_entry_from_path_ool(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v2;
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *&v24[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v21 = 1;
  v22 = v11;
  v23 = 0x1000000;
  *v24 = v8;
  *&v24[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v12 = mig_strncpy_zerofill(&v24[20], v3, 4096);
  }

  else
  {
    v12 = mig_strncpy(&v24[20], v3, 4096);
  }

  *&v24[12] = 0;
  *&v24[16] = v12;
  v13 = (v12 + 3) & 0xFFFFFFFC;
  v14 = v13 + 64;
  *&v24[v13 + 20] = v9;
  v15 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v14;
  *&reply_port.msgh_remote_port = __PAIR64__(v15, v10);
  *&reply_port.msgh_voucher_port = 0xB4600000000;
  v16 = mach_msg2_internal();
  v17 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v16)
    {
      if (reply_port.msgh_id == 71)
      {
        v17 = 4294966988;
      }

      else if (reply_port.msgh_id == 2986)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v17 = 4294966996;
          if (v21 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v23) << 16 == 1114112)
          {
            v17 = 0;
            v18 = v22;
            *v7 = *&v24[8];
            *v5 = v18;
            return v17;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v17 = 4294966996;
          if (HIDWORD(v22))
          {
            if (reply_port.msgh_remote_port)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = HIDWORD(v22);
            }
          }
        }

        else
        {
          v17 = 4294966996;
        }
      }

      else
      {
        v17 = 4294966995;
      }

      mach_msg_destroy(&reply_port);
      return v17;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  return v17;
}

uint64_t io_device_tree_entry_exists_with_name(unsigned int a1, const char *a2, _DWORD *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB4700000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

uint64_t DisplayID::checksum(DisplayID *this, unint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 1;
    do
    {
      v4 = *this;
      this = (this + 1);
      v2 += v4;
      v5 = v3++;
    }

    while (v5 < a2);
  }

  return v2;
}

const char *IOAVCommandString(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9C40[a1 - 1];
  }
}

const char *IOAVEventLogEventTypeString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9CD0[a1];
  }
}

const char *IOAVAudioFormatString(unsigned int a1)
{
  if (a1 > 0x14)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9D20[a1];
  }
}

uint64_t IOAVAudioSampleSizeEnum(int a1)
{
  if (a1 == 20)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 24)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 16)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t IOAVAudioSampleSizeScalar(int a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return (4 * (a1 - 1) + 16);
  }
}

uint64_t IOAVAudioSampleRateEnum(int a1)
{
  if (a1 > 255999)
  {
    if (a1 <= 705599)
    {
      if (a1 > 383999)
      {
        if (a1 == 384000)
        {
          return 12;
        }

        if (a1 == 512000)
        {
          return 13;
        }
      }

      else
      {
        if (a1 == 256000)
        {
          return 10;
        }

        if (a1 == 352800)
        {
          return 11;
        }
      }
    }

    else if (a1 < 1024000)
    {
      if (a1 == 705600)
      {
        return 14;
      }

      if (a1 == 768000)
      {
        return 15;
      }
    }

    else
    {
      switch(a1)
      {
        case 1024000:
          return 16;
        case 1411200:
          return 17;
        case 1536000:
          return 18;
      }
    }
  }

  else if (a1 <= 88199)
  {
    if (a1 > 47999)
    {
      if (a1 == 48000)
      {
        return 3;
      }

      if (a1 == 64000)
      {
        return 4;
      }
    }

    else
    {
      if (a1 == 32000)
      {
        return 1;
      }

      if (a1 == 44100)
      {
        return 2;
      }
    }
  }

  else if (a1 <= 127999)
  {
    if (a1 == 88200)
    {
      return 5;
    }

    if (a1 == 96000)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 128000:
        return 7;
      case 176400:
        return 8;
      case 192000:
        return 9;
    }
  }

  return 0;
}

uint64_t IOAVAudioSampleRateScalar(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return IOAVAudioSampleRateScalar::s_scalar_rates[a1];
  }
}

uint64_t IOAVAudioLinkSampleRateForFormat(int a1, int a2)
{
  if ((a1 - 16) >= 5)
  {
    if ((a1 - 13) <= 2)
    {
      return (4 * a2);
    }

    else
    {
      return a2;
    }
  }

  else
  {
    v2 = IOAVAudioSampleRateEnum(a2) - 2;
    if (v2 > 7)
    {
      return 0;
    }

    else
    {
      return dword_19724D6EC[v2];
    }
  }
}

uint64_t IOAVHDMIAudioClockRegenerationDataForLink(_DWORD *a1, uint64_t a2)
{
  v3 = IOAVAudioSampleRateEnum(*(a2 + 12));
  v4 = a1[27];
  if (!v4)
  {
    v5 = a1[18];
    v6 = (a1[19] * a1[11] * a1[24]) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (a1[10] & 1);
  }

  v7 = 0;
  v8 = &IOAVHDMIAudioClockRegenerationDataForLink::s_acr_table + 16 * v3;
  while (a1[2] != IOAVHDMIAudioClockRegenerationDataForLink::s_depth_table[v7])
  {
    ++v7;
    v8 += 4320;
    if (v7 == 4)
    {
      return 0;
    }
  }

  if ((v7 & 0xFFFFFFFC) != 0)
  {
    return 0;
  }

  for (i = 0; i != 14; ++i)
  {
    if (v4 == IOAVHDMIAudioClockRegenerationDataForLink::s_pixel_clock_table[i])
    {
      break;
    }
  }

  return *&v8[288 * i - 16];
}

uint64_t IOAVVideoTimingGetPixelClock(int *a1, unsigned int *a2)
{
  result = a1[17];
  if (!result)
  {
    v4 = *a1;
    v5 = a1[8];
    v6 = (a1[9] * a1[1] * a1[14]) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    result = v6 >> (v4 & 1);
  }

  if (a2)
  {
    *a2 = result / 0xC8;
  }

  return result;
}

const char *IOAVAudioSpeakerString(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9DC8[a1];
  }
}

__n128 IOAVAudioGetChannelLayoutData(unsigned int a1, __n128 *a2)
{
  if (a1 <= 0x31)
  {
    v2 = (&IOAVAudioGetChannelLayoutData::sChannelMap + 40 * a1);
    *a2 = *v2;
    result = v2[1];
    a2[1] = result;
    a2[2].n128_u64[0] = v2[2].n128_u64[0];
  }

  return result;
}

uint64_t IOAVAudioGetChannelAllocationDefault(int a1)
{
  if ((a1 - 9) >= 0xFFFFFFF9)
  {
    return dword_197243214[a1 - 2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t IOAVAudioGetChannelAllocation(void *__s2)
{
  v2 = 0;
  for (i = &IOAVAudioGetChannelLayoutData::sChannelMap; ; i = (i + 40))
  {
    v4 = i[1];
    v6[0] = *i;
    v6[1] = v4;
    v7 = *(i + 4);
    if (!memcmp(v6, __s2, 0x28uLL))
    {
      break;
    }

    if (++v2 == 50)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t IOAVAudioLinkGetHDMIAudioPacketType(unsigned int *a1)
{
  v1 = *a1;
  v2 = *a1 > 0x14 || ((1 << *a1) & 0x1FF5FC) == 0;
  if (!v2 && a1[2] * a1[3] * a1[1] > 0x5DC000)
  {
    return 1;
  }

  if (v1 == 9)
  {
    return 3;
  }

  return 4 * (v1 == 11);
}

uint64_t IOAVAudioLinkGetMaxStreamChannelCount(int *a1)
{
  v1 = *a1;
  if ((*a1 - 13) < 8)
  {
    return 8;
  }

  if (v1 == 1)
  {
    return a1[1];
  }

  if (v1 == 2)
  {
    return 6;
  }

  return 0;
}

uint64_t IOAVAudioLinkGetMaxStreamSampleRate(_DWORD *a1)
{
  v1 = a1[3];
  if ((*a1 - 13) >= 8)
  {
    return v1;
  }

  else
  {
    return v1 >> 2;
  }
}

const char *IOAVVideoAspectRatioString(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9E58[a1 - 1];
  }
}

const char *IOAVVideoLinkModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9EE0[a1];
  }
}

uint64_t IOAVVideoColorBitDepth(int a1)
{
  if ((a1 - 6) > 0xA)
  {
    return 1;
  }

  else
  {
    return dword_19724D70C[a1 - 6];
  }
}

uint64_t IOAVVideoColorBitDepthScalar(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_19724D738[a1];
  }
}

BOOL IOAVVideoColorBitDepthIsSupported(unsigned int a1, int a2)
{
  v2 = a1 < 6;
  if (a2 != 1)
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return a1 < 5;
  }
}

const char *IOAVVideoAxisString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Vertical";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Horizontal";
  }
}

const char *IOAVVideoPixelEncodingString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F00[a1];
  }
}

const char *IOAVVideoColorDynamicRangeString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Limited";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Full";
  }
}

const char *IOAVVideoColorEOTFString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F78[a1];
  }
}

const char *IOAVVideoColorimetryString(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F98[a1];
  }
}

BOOL IOAVVideoColorimetryIsValid(unsigned int a1, int a2, int a3)
{
  if (a1 <= 9 && ((1 << a1) & 0x2C0) != 0 && a3 < 2)
  {
    return 0;
  }

  if (a2 <= 5)
  {
    if ((a2 - 1) < 3)
    {
      return a1 < 8;
    }

    v5 = 0x4102u >> a1;
    if (a1 >= 0xF)
    {
      LOBYTE(v5) = 0;
    }

    v4 = a1 - 9 < 8;
    if (a2)
    {
      v4 = 0;
    }

    if ((a2 - 4) < 2)
    {
      return v5;
    }
  }

  else
  {
    if ((a2 - 8) < 4)
    {
      return a1 == 7;
    }

    if ((a2 - 6) < 2)
    {
      return a1 < 8;
    }

    v4 = a1 == 9;
    if (a2 != 12)
    {
      return 0;
    }
  }

  return v4;
}

const char *IOAVLocationString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Embedded";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "External";
  }
}

const char *IOAVLinkTypeString(int a1)
{
  v1 = "Unknown";
  if (!a1)
  {
    v1 = "Audio";
  }

  if (a1 == 1)
  {
    return "Video";
  }

  else
  {
    return v1;
  }
}

const char *IOAVLinkSourceString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA020[a1];
  }
}

const char *IOAVInfoFrameTypeString(int a1)
{
  if ((a1 ^ 0x80u) > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA048[a1 ^ 0x80u];
  }
}

const char *IOAVElementTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA088[a1];
  }
}

const char *IOAVVideoTimingStandardString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA0B0[a1];
  }
}

const char *IOAVVideoScanInformationString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA0D8[a1];
  }
}

const char *IOAVStandardTypeString(int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVStandardTypeString::sStrings[a1];
  }
}

const char *IOAVVideoTimingTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return IOAVVideoTimingTypeString::sStrings[a1];
  }
}

const char *IOAVTransportString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Other";
  }

  else
  {
    return IOAVTransportString::sStrings[a1];
  }
}

const char *IOAVProtectionStatusString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVProtectionStatusString::sStrings[a1];
  }
}

const char *IOAVEncryptionStatusString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVEncryptionStatusString::sStrings[a1];
  }
}

const char *IOAVContentProtectionTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVContentProtectionTypeString::sStrings[a1 & 3];
  }
}

const char *IOAVContentProtectionProtocolString(unint64_t a1)
{
  v1 = "Unknown";
  if (HIDWORD(a1) == 2)
  {
    v1 = "HDCP2";
  }

  if (HIDWORD(a1) == 1)
  {
    v1 = "HDCP1";
  }

  v2 = "Unknown";
  if (a1 == 2)
  {
    v2 = "DPCP";
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "None";
  }
}

uint64_t IOAVGetVideoTimingData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (IOAVGetCEAVideoTimingData(a1, a2, a3, a4, a5) || (__IOAVGetStandardVideoTimingData(1, v9, v8, v7, v6, a5, 1) & 1) != 0 || (__IOAVGetStandardVideoTimingData(3, v9, v8, v7, v6, a5, 1) & 1) != 0)
  {
    return 1;
  }

  return __IOAVGetStandardVideoTimingData(2, v9, v8, v7, v6, a5, 1);
}

BOOL IOAVGetCEAVideoTimingData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = IOAVGetCEAVideoShortID(a1, a2, a3, a4);
  if (v6 <= 0xCF && (v7 = &IOAVGetVideoTimingTable::sCEATimingData[5 * v6], *a5 = *v7, *(a5 + 16) = v7[1], *(a5 + 32) = v7[2], *(a5 + 48) = v7[3], *(a5 + 64) = v7[4], *(a5 + 4)) && *(a5 + 36))
  {
    return *(a5 + 56) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVGetVideoTimingTable(unsigned int a1, _DWORD *a2)
{
  if (a1 > 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = dword_19724D750[a1];
    result = *(&off_1E74AA0F8 + a1);
  }

  *a2 = v2;
  return result;
}

BOOL IOAVVideoTimingIsVideoOptimized(uint64_t a1)
{
  v1 = (*(a1 + 56) + 0x8000) % 392823;
  v3 = v1 - 0x8000;
  v2 = v1 - 0x8000 < 0;
  v4 = 0x8000 - v1;
  if (!v2)
  {
    v4 = v3;
  }

  return v4 < 0x28F;
}

uint64_t IOAVVideoTimingVideoOptimizedDelta(uint64_t a1)
{
  v1 = *(a1 + 56) + 0x8000;
  v2 = 0x8000 - v1 % 392823;
  if (v1 % 392823 - 0x8000 >= 0)
  {
    v2 = v1 % 392823 - 0x8000;
  }

  v3 = v1 % 393216;
  v5 = v3 - 0x8000;
  v4 = v3 - 0x8000 < 0;
  v6 = 0x8000 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  if (v2 >= v6)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t IOAVGetVideoTimingDataByID(int a1, unsigned int a2, __int128 *a3)
{
  if (a1 == 1)
  {
    v5 = &IOAVGetVideoTimingTable::sDMTTimingData;
    v6 = 89;
  }

  else
  {
    if (a1 != 4)
    {
      return 0;
    }

    v5 = IOAVGetVideoTimingTable::sCEATimingData;
    v6 = 208;
  }

  if (v6 <= a2)
  {
    return 0;
  }

  bzero(v9, 0x50uLL);
  v7 = &v5[5 * a2];
  result = memcmp(v9, v7, 0x50uLL);
  if (result)
  {
    a3[1] = v7[1];
    a3[2] = v7[2];
    a3[3] = v7[3];
    a3[4] = v7[4];
    *a3 = *v7;
    return 1;
  }

  return result;
}

uint64_t __IOAVGetStandardVideoTimingData(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = 0;
      v14 = 57;
      v15 = 1;
      v16 = &IOAVGetVideoTimingTable::sNonstandardDetailedTimingData;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v13 = 0;
      v14 = 89;
      v15 = 1;
      v16 = &IOAVGetVideoTimingTable::sDMTTimingData;
      goto LABEL_13;
    }

LABEL_12:
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v13 = 0;
    v14 = 50;
    v15 = 1;
    v16 = &IOAVGetVideoTimingTable::sGTFTimingData;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v13 = 0;
    v14 = 114;
    v15 = 1;
    v16 = &IOAVGetVideoTimingTable::sCVTTimingData;
    goto LABEL_13;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = 208;
  v15 = 1;
  v16 = IOAVGetVideoTimingTable::sCEATimingData;
LABEL_13:
  result = 0;
  if (a7 && a4 && a3 && a2 && (v13 & 1) == 0)
  {
    if (v15)
    {
      v18 = (a4 + 0x8000) & 0xFFFF0000;
      if (v14 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14;
      }

      while (((*v16 ^ a5) & 1) != 0 || *(v16 + 2) != a2 || *(v16 + 10) != a3 || *(v16 + 14) != v18 || a7 != -1 && IOAVVideoTimingGetBlankingStyle(v16) != a7)
      {
        v16 += 5;
        if (!--v19)
        {
          return 0;
        }
      }

      v20 = v16[1];
      v21 = v16[2];
      v22 = v16[4];
      *(a6 + 48) = v16[3];
      v23 = *v16;
      *(a6 + 64) = v22;
      *(a6 + 16) = v20;
      *(a6 + 32) = v21;
      *a6 = v23;
      *(a6 + 56) = a4;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAVVideoTimingGetBlankingStyle(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 60);
  if ((v1 != 0) == (v2 != 0))
  {
    return 1;
  }

  v3 = *(a1 + 44);
  if (!v1)
  {
    v5 = v3 & 0xFFF8;
    return v2 && v5 == 0;
  }

  if (v2)
  {
    return 0;
  }

  if (v3 < 3)
  {
    return 1;
  }

  if (v3 != 3 && v3 < 8)
  {
    return 2;
  }

  if (v3 != 8)
  {
    return 0;
  }

  return 3;
}

BOOL IOAVGetCEAVideoTimingDataWithShortID(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  v3 = &IOAVGetVideoTimingTable::sCEATimingData[5 * a1];
  *a3 = *v3;
  *(a3 + 16) = v3[1];
  *(a3 + 32) = v3[2];
  *(a3 + 48) = v3[3];
  *(a3 + 64) = v3[4];
  if (!*(a3 + 4) || !*(a3 + 36))
  {
    return 0;
  }

  v4 = *(a3 + 56);
  result = v4 != 0;
  if (v4 && a2)
  {
    v6 = v4 + 0x8000;
    v7 = 0x8000 - v6 % 392823;
    if (v6 % 392823 - 0x8000 >= 0)
    {
      v7 = v6 % 392823 - 0x8000;
    }

    if (v7 <= 0x28E)
    {
      *(a3 + 56) = v6 & 0xFFFF0000;
      *(a3 + 68) = ((1001 * *(a3 + 68) + 500) * 0x4189374BC6A7F0uLL) >> 64;
    }

    return 1;
  }

  return result;
}

uint64_t IOAVGetCEAVideoShortID(int a1, int a2, int a3, int a4)
{
  v4 = 0;
  v13 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  DWORD1(v13) = a1;
  DWORD1(v15) = a2;
  *&v16[4] = a3;
  v12 = a4;
  v5 = 17;
  v14 = 0u;
  v6 = ((a1 << 16) << 16) / (a2 << 16);
  v7 = IOAVVideoActiveFormatAspectRatio::arRef;
  do
  {
    v8 = *v7;
    v7 += 2;
    v9 = v8 - v6;
    if (v8 - v6 < 0)
    {
      v9 = -v9;
    }

    v10 = IOAVVideoActiveFormatAspectRatio::arRef[2 * v5] - v6;
    if (v10 < 0)
    {
      v10 = v6 - IOAVVideoActiveFormatAspectRatio::arRef[2 * v5];
    }

    if (v9 < v10)
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 18);
  *&v16[20] = IOAVVideoActiveFormatAspectRatio::arRef[2 * v5 + 1];
  return __IOAVGetCEAVideoShortIDWithData(&v12, 1);
}

uint64_t __IOAVGetCEAVideoShortIDWithData(_DWORD *__s2, int a2)
{
  v4 = 0;
  v5 = IOAVGetVideoTimingTable::sCEATimingData;
  do
  {
    v6 = v5[3];
    v10 = v5[2];
    v11 = v6;
    v7 = v5[1];
    v9[0] = *v5;
    v9[1] = v7;
    v12 = v5[4];
    if (DWORD1(v9[0]) && DWORD1(v10) && DWORD2(v11))
    {
      if (a2)
      {
        if (((LODWORD(v9[0]) ^ *__s2) & 1) == 0 && __s2[18] == DWORD2(v12) && __s2[2] == DWORD2(v9[0]) && __s2[10] == DWORD2(v10) && ((DWORD2(v11) + 0x8000) ^ (__s2[14] + 0x8000)) < 0x10000)
        {
          return v4;
        }
      }

      else if (!memcmp(v9, __s2, 0x50uLL))
      {
        return v4;
      }
    }

    ++v4;
    v5 += 5;
  }

  while (v4 != 208);
  return 0;
}

uint64_t IOAVVideoActiveFormatAspectRatio(int a1)
{
  v1 = 0;
  v2 = 17;
  v3 = IOAVVideoActiveFormatAspectRatio::arRef;
  do
  {
    v4 = *v3;
    v3 += 2;
    v5 = v4 - a1;
    if (v4 - a1 < 0)
    {
      v5 = -v5;
    }

    v6 = IOAVVideoActiveFormatAspectRatio::arRef[2 * v2] - a1;
    if (v6 < 0)
    {
      v6 = a1 - IOAVVideoActiveFormatAspectRatio::arRef[2 * v2];
    }

    if (v5 < v6)
    {
      v2 = v1;
    }

    ++v1;
  }

  while (v1 != 18);
  return IOAVVideoActiveFormatAspectRatio::arRef[2 * v2 + 1];
}

BOOL IOAVTransportSupportsRGBOnly(int a1)
{
  if (a1)
  {
    v1 = a1 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t IOAVVideoTimingGetITSource(uint64_t a1)
{
  v1 = &dword_19724D418;
  v2 = 49;
  while (*(a1 + 40) != *(v1 - 1) || *(a1 + 8) != *(v1 - 2))
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t IOAVInfoFrameGetChecksum(__int32 *a1, uint8x8_t a2)
{
  a2.i32[0] = *a1;
  v3 = vmovl_u8(a2).u64[0];
  return (vaddv_s16(v3) + DisplayID::checksum((a1 + 1), v3.u16[2]));
}

uint64_t IOAVGetSPDInfoFrame@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 3) = 0;
  *(a2 + 24) = 0;
  *(a2 + 19) = 0;
  *a2 = 387;
  *(a2 + 2) = 25;
  *(a2 + 4) = *a1;
  *(a2 + 12) = *(a1 + 8);
  *(a2 + 28) = *(a1 + 24);
  result = DisplayID::checksum((a2 + 4), 0x19uLL);
  *(a2 + 3) = 99 - result;
  return result;
}

uint64_t IOAVVideoTimingGetActivePixelClock(_DWORD *a1)
{
  v1 = a1[8];
  v2 = (a1[10] * a1[2] * a1[14]) >> 16;
  if (v1)
  {
    LODWORD(v2) = v2 / (v1 + 1);
  }

  return v2 >> (*a1 & 1);
}

uint64_t IOAVVideoColorBitsPerPixel(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 4);
  if (v4 <= 0xE)
  {
    if (((1 << v4) & 0x67F0) != 0)
    {
      return 24;
    }

    if (((1 << v4) & 0x1808) != 0)
    {
      return (3 * *a1);
    }

    if (v4 == 2)
    {
      return (2 * *a1);
    }
  }

  if (!v4)
  {
    return (3 * *a1);
  }

  if (v4 != 1)
  {
    __IOAVAbort(a1, a2, a3, a4);
  }

  return (3 * *a1) >> 1;
}

uint64_t IOAVVideoColorMinimumBitsPerPixelDSC(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 0xC)
  {
    return 0xFFFFLL;
  }

  else
  {
    return word_19724D764[v1];
  }
}

uint64_t IOAVDSCModeForPixelEncoding(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_19724D780[a1];
  }
}

uint64_t IOAVDSCCapabilitiesGetMaxSlicesPerLine(uint64_t a1)
{
  if (*(a1 + 10))
  {
    return IOAVDSCSlicesPerLineScalar(__clz(*(a1 + 10)) ^ 0x1F);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVDSCSlicesPerLineScalar(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return byte_19724D7B4[a1];
  }
}

uint64_t IOAVDSCCapabilitiesGetPeakPixelRateForMode(uint64_t a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + qword_19724D7C0[a2 - 1]);
  }
}

BOOL IOAVVideoLinkIsDolbyVision(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = v1 & 0xFFFFFFFE;
  v3 = v1 - 8;
  return v2 == 4 || v3 < 5;
}

unint64_t IOAVHDMICharacterRate(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 108);
  if (!v4)
  {
    v5 = *(a1 + 72);
    v6 = (*(a1 + 76) * *(a1 + 44) * *(a1 + 96)) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (*(a1 + 40) & 1);
  }

  v7 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v7;
  return IOAVVideoColorBitsPerPixel(v9, a2, a3, a4) * v4 / 0x18;
}

uint64_t IOAVHDMIClockRate(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v5 = IOAVHDMICharacterRate(a1, a2, a3, a4);
  if (v5 <= 0x1443FD00)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  return v5 / v6;
}

unint64_t IOAVVideoLinkBandwidth(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 108);
  if (!v4)
  {
    v5 = *(a1 + 72);
    v6 = (*(a1 + 76) * *(a1 + 44) * *(a1 + 96)) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (*(a1 + 40) & 1);
  }

  v7 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v7;
  return IOAVVideoColorBitsPerPixel(v9, a2, a3, a4) * v4;
}

uint64_t IOAVHDMIFRLBitRateScalar(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_19724D7E0[a1];
  }
}

const char *IOAVHDMIFRLRateString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "? Gbps (Unknown FRL rate)";
  }

  else
  {
    return off_1E74AA120[a1];
  }
}

const char *IODPCommandString(int a1)
{
  if (a1 == 32)
  {
    return "TrainLink";
  }

  if (a1 == 33)
  {
    return "RetrainLink";
  }

  return IOAVCommandString(a1);
}

const char *IODPEventLogEventTypeString(unsigned int a1)
{
  if (a1 == 32)
  {
    return "Link Training Command";
  }

  else
  {
    return IOAVEventLogEventTypeString(a1);
  }
}

const char *IODPTrainingPatternName(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA170[a1];
  }
}

const char *IODPQualityPatternName(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA1B0[a1];
  }
}

uint64_t IODPTrainingPatternLength(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_19724D830[a1 - 1];
  }
}

uint64_t IODPLinkSymbolRate(unsigned int a1)
{
  v1 = 27000000 * a1;
  if (a1 == 29)
  {
    v1 = 799200000;
  }

  if (a1 == 21)
  {
    return 568800000;
  }

  else
  {
    return v1;
  }
}

unint64_t IODPLinkSymbolClockForLinkBitRate(unint64_t a1)
{
  if (a1 == 10000000000 || a1 == 20000000000 || a1 == 13500000000)
  {
    return a1 >> 5;
  }

  else
  {
    return a1 / 0xA;
  }
}

uint64_t IODPLinkRateScalar(unsigned int a1)
{
  if (a1 <= 128)
  {
    if (a1 == 21)
    {
      return 5688000000;
    }

    if (a1 == 29)
    {
      return 7992000000;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x81u:
        return 10000000000;
      case 0x84u:
        return 13500000000;
      case 0x82u:
        return 20000000000;
    }
  }

  return 270000000 * a1;
}

uint64_t IODPLinkRateEnum(unint64_t a1)
{
  if (a1 <= 0x2540BE3FFLL)
  {
    if (a1 == 5688000000)
    {
      LOBYTE(v1) = 21;
      return v1;
    }

    if (a1 == 7992000000)
    {
      LOBYTE(v1) = 29;
      return v1;
    }

    return ((((a1 / 0xA + 13500000) * 0x13E254E465D72C1BuLL) >> 64) >> 21);
  }

  if (a1 == 10000000000)
  {
    LOBYTE(v1) = -127;
    return v1;
  }

  if (a1 == 13500000000)
  {
    LOBYTE(v1) = -124;
    return v1;
  }

  if (a1 != 20000000000)
  {
    return ((((a1 / 0xA + 13500000) * 0x13E254E465D72C1BuLL) >> 64) >> 21);
  }

  LOBYTE(v1) = -126;
  return v1;
}

BOOL IODPDriveSettingsEqual(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if (*(a1 + 4) == *(a2 + 4))
    {
      v3 = 0;
      v4 = (a2 + 16);
      v5 = (a1 + 16);
      v6 = 1;
      do
      {
        if (*(v5 - 2) != *(v4 - 2))
        {
          break;
        }

        v3 = v6 >= a3;
        if (a3 == v6)
        {
          break;
        }

        v8 = *v4;
        v4 += 3;
        v7 = v8;
        v9 = *v5;
        v5 += 3;
        ++v6;
      }

      while (v9 == v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t IODPDriveSettingsAreValid(unint64_t a1, unsigned int a2)
{
  if (SHIDWORD(a1) <= 3 && a2 <= 3)
  {
    v3 = IODPDriveSettingsAreValid::sValidAdjustments[4 * HIDWORD(a1) + a2];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t IODPConstrainedDriveSettings(unint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a1);
  if (SHIDWORD(a1) >= 3)
  {
    LODWORD(v2) = 3;
  }

  if (a2 >= 3)
  {
    a2 = 3;
  }

  else
  {
    a2 = a2;
  }

  result = (a1 | (v2 << 32)) + 0x100000000;
  v4 = 4 * v2;
  do
  {
    result -= 0x100000000;
    if (!v4)
    {
      break;
    }

    v5 = IODPDriveSettingsAreValid::sValidAdjustments[a2 + v4];
    v4 -= 4;
  }

  while ((v5 & 1) == 0);
  return result;
}

uint64_t IODPConstrainDriveSettings(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = result + 12 * v2;
      LODWORD(v5) = *(v4 + 8);
      v6 = HIDWORD(*v4);
      if (v6 >= 3)
      {
        LODWORD(v6) = 3;
      }

      if (v5 >= 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = v5;
      }

      v7 = (*v4 | (v6 << 32)) + 0x100000000;
      v8 = 4 * v6;
      do
      {
        v7 -= 0x100000000;
        if (!v8)
        {
          break;
        }

        v9 = IODPDriveSettingsAreValid::sValidAdjustments[v5 + v8];
        v8 -= 4;
      }

      while ((v9 & 1) == 0);
      *v4 = v7;
      *(v4 + 8) = v5;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t IODPUnifiedDriveSettings(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = 0;
    v4 = (a1 + 4);
    do
    {
      v5 = *v4;
      v4 = (v4 + 12);
      v3 = vmax_s32(v5, v3);
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3.i32[0] >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v3.u32[0];
  }

  if (v3.i32[1] >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v3.u32[1];
  }

  result = (v6 << 32) + 0x100000000;
  v9 = 4 * v6;
  do
  {
    result -= 0x100000000;
    if (!v9)
    {
      break;
    }

    v10 = IODPDriveSettingsAreValid::sValidAdjustments[v7 + v9];
    v9 -= 4;
  }

  while ((v10 & 1) == 0);
  return result;
}

unint64_t IODPStreamClockHz(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 568800000;
  v4 = 27000000 * a1;
  if (a1 == 29)
  {
    v4 = 799200000;
  }

  if (a1 != 21)
  {
    v3 = v4;
  }

  return v3 * a2 / a3;
}

unint64_t IODPCalculateM(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    return 10 * a2 * a3 / result;
  }

  return result;
}

unint64_t IODPLinkBandwidth(unsigned int a1, unint64_t a2)
{
  if (a2 == 10000000000 || a2 == 20000000000 || a2 == 13500000000)
  {
    return 1568768 * a2 * a1 / 0x18C063;
  }

  else
  {
    return 8 * a1 * (a2 / 0xA);
  }
}

unint64_t IODPVideoBandwidth(uint64_t a1)
{
  PixelClock = IOAVVideoTimingGetPixelClock((a1 + 40), 0);
  if (*(a1 + 1))
  {
    v6 = *(a1 + 124);
  }

  else
  {
    v7 = *(a1 + 24);
    v9[0] = *(a1 + 8);
    v9[1] = v7;
    v6 = 16 * IOAVVideoColorBitsPerPixel(v9, v2, v3, v4);
  }

  return (v6 * PixelClock + 15) >> 4;
}

uint64_t IODPVideoLinkMainStreamAttributeData@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, BOOL *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = 0;
  v15 = *(a1 + 8);
  *a6 = 0;
  v16 = *(a1 + 12);
  if (v16 <= 6)
  {
    if (v16 <= 3)
    {
      if (v16)
      {
        if (v16 != 2)
        {
          if (v16 != 3)
          {
            goto LABEL_42;
          }

          goto LABEL_28;
        }

LABEL_12:
        v17 = *(a1 + 20);
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 4;
            goto LABEL_42;
          }

          if (v17 == 3)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 5;
            goto LABEL_42;
          }
        }

        else
        {
          if (!v17)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 6;
            goto LABEL_42;
          }

          if (v17 == 1)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 7;
            goto LABEL_42;
          }
        }

        goto LABEL_41;
      }

LABEL_19:
      v18 = *(a1 + 20);
      if (v18 > 12)
      {
        if ((v18 - 14) < 2)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 14;
          goto LABEL_42;
        }

        if (v18 == 13)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 3;
          goto LABEL_42;
        }

        if (v18 != 16)
        {
LABEL_41:
          v14 = 0;
          *a6 = 1;
          goto LABEL_42;
        }
      }

      else if (v18 != 10)
      {
        if (v18 == 11)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 13;
          goto LABEL_42;
        }

        if (v18 == 12)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 12;
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v14 = 2 * (*(a1 + 16) == 1);
      goto LABEL_42;
    }

    if (v16 != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v16 > 9)
  {
    if (v16 != 10)
    {
      if (v16 == 11)
      {
LABEL_28:
        v19 = *(a1 + 20);
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 8;
            goto LABEL_42;
          }

          if (v19 == 3)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 9;
            goto LABEL_42;
          }
        }

        else
        {
          if (!v19)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 10;
            goto LABEL_42;
          }

          if (v19 == 1)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 11;
            goto LABEL_42;
          }
        }

        goto LABEL_41;
      }

      if (v16 != 12)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

LABEL_24:
    v14 = 0;
    v15 = 8;
    goto LABEL_42;
  }

  if ((v16 - 8) < 2)
  {
    goto LABEL_12;
  }

  if (v16 == 7)
  {
    goto LABEL_24;
  }

LABEL_42:
  result = IOAVVideoColorBitDepth(v15);
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = (*(a1 + 76) & 1) == 0;
    if (!a5)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_48;
    }
  }

  if (*a6)
  {
    v22 |= 0x40u;
  }

LABEL_48:
  v23 = *(a1 + 80);
  v24 = *(a1 + 84);
  v25 = *(a1 + 44) | (*(a1 + 76) >> (v21 & 1) << 16) | (*(a1 + 56) << 32) | (*(a1 + 88) << 48);
  *a7 = *a7 & 0xFF000000FF000000 | a2 & 0xFFFFFF | ((a3 & 0xFFFFFF) << 32);
  *(a7 + 8) = v25;
  *(a7 + 16) = (*(a1 + 68) == 0) | (2 * (*(a1 + 52) & 0x7FFFu)) | ((*(a1 + 100) == 0) << 16) | (v24 << 17) | (*(a1 + 48) << 32) | (v23 << 48);
  *(a7 + 24) = (v14 >> 1) & 6 | a4 & 0xE7 | (8 * ((v14 & 2) != 0)) & 0xEF | (16 * (v14 & 1)) | (32 * result) | (v22 << 8);
  return result;
}

__n128 IODPInfoFrameSDP@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2 | 0x80;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 1) = v3;
  *(a3 + 3) = 4 * a1;
  *(a3 + 32) = 0;
  if (a1 >= 19)
  {
    v4 = 29;
  }

  else
  {
    v4 = 27;
  }

  *(a3 + 2) = v4;
  if (a1 == 19)
  {
    *(a3 + 4) = *(a2 + 1);
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  v6 = a3 + v5;
  *v6 = *(a2 + 4);
  result = *(a2 + 16);
  *(v6 + 12) = result;
  return result;
}

_DWORD *IODPVideoLinkVideoStreamConfigurationSDP@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0u;
  *(a2 + 4) = 0u;
  v3 = result[3];
  v2 = result[4];
  *a2 = 319096576;
  v4 = result[2];
  v5 = 0;
  v6 = -127;
  v7 = 1;
  switch(v3)
  {
    case 0:
    case 12:
      v11 = result[5];
      if (v11 <= 11)
      {
        switch(v11)
        {
          case 9:
            v9 = 6;
            goto LABEL_60;
          case 10:
            goto LABEL_61;
          case 11:
            v9 = 2;
            goto LABEL_60;
        }

        goto LABEL_50;
      }

      if ((v11 - 14) < 2)
      {
        v9 = 4;
        goto LABEL_60;
      }

      if (v11 != 13)
      {
        if (v11 == 12)
        {
          v9 = 1;
          goto LABEL_60;
        }

LABEL_50:
        v9 = 5;
        goto LABEL_60;
      }

      v9 = 3;
LABEL_60:
      *(a2 + 20) = v9;
LABEL_61:
      v6 = 0x80;
      if (v4 <= 9u)
      {
        if (v4 == 8)
        {
          v6 = -127;
          v7 = 1;
        }

        else
        {
          if (v4 != 9)
          {
            goto LABEL_74;
          }

          v6 = -123;
          v7 = 5;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x10u:
            v6 = -124;
            v7 = 4;
            break;
          case 0xCu:
            v6 = -125;
            v7 = 3;
            break;
          case 0xAu:
            v6 = -126;
            v7 = 2;
            break;
          default:
            goto LABEL_74;
        }
      }

      v5 = v2;
LABEL_73:
      *(a2 + 21) = v7;
      v2 = v5;
LABEL_74:
      if (v2 == 1)
      {
        *(a2 + 21) = v6;
      }

      return result;
    case 1:
      *(a2 + 20) = 48;
      v12 = result[5];
      if (v12 <= 3)
      {
        switch(v12)
        {
          case 1:
            v9 = 49;
            break;
          case 2:
            v9 = 50;
            break;
          case 3:
            v9 = 51;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v9 = 54;
        }

        else
        {
          if (v12 != 7)
          {
            goto LABEL_61;
          }

          v9 = 55;
        }
      }

      else if (v12 == 4)
      {
        v9 = 52;
      }

      else
      {
        v9 = 53;
      }

      goto LABEL_60;
    case 2:
    case 4:
    case 6:
    case 8:
    case 9:
    case 13:
    case 14:
      *(a2 + 20) = 32;
      v8 = result[5];
      if (v8 <= 3)
      {
        switch(v8)
        {
          case 1:
            v9 = 33;
            break;
          case 2:
            v9 = 34;
            break;
          case 3:
            v9 = 35;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v8 > 5)
      {
        if (v8 == 6)
        {
          v9 = 38;
        }

        else
        {
          if (v8 != 7)
          {
            goto LABEL_61;
          }

          v9 = 39;
        }
      }

      else if (v8 == 4)
      {
        v9 = 36;
      }

      else
      {
        v9 = 37;
      }

      goto LABEL_60;
    case 3:
    case 11:
      *(a2 + 20) = 16;
      v10 = result[5];
      if (v10 <= 3)
      {
        switch(v10)
        {
          case 1:
            v9 = 17;
            break;
          case 2:
            v9 = 18;
            break;
          case 3:
            v9 = 19;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v10 > 5)
      {
        if (v10 == 6)
        {
          v9 = 22;
        }

        else
        {
          if (v10 != 7)
          {
            goto LABEL_61;
          }

          v9 = 23;
        }
      }

      else if (v10 == 4)
      {
        v9 = 20;
      }

      else
      {
        v9 = 21;
      }

      goto LABEL_60;
    case 5:
    case 7:
    case 10:
      goto LABEL_73;
    default:
      goto LABEL_61;
  }
}

uint64_t IODPCompareLinkTrainingData(uint64_t a1, uint64_t a2)
{
  v2 = 10000000000;
  v3 = 5688000000;
  v4 = *(a1 + 12);
  if (v4 <= 0x80)
  {
    v5 = 5688000000;
    if (v4 == 21)
    {
      goto LABEL_11;
    }

    if (v4 == 29)
    {
      v5 = 7992000000;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 10000000000;
    switch(v4)
    {
      case 0x81u:
        goto LABEL_11;
      case 0x84u:
        v5 = 13500000000;
        goto LABEL_11;
      case 0x82u:
        v5 = 20000000000;
        goto LABEL_11;
    }
  }

  v5 = 270000000 * *(a1 + 12);
LABEL_11:
  v6 = *(a2 + 12);
  if (v6 > 0x80)
  {
    switch(v6)
    {
      case 0x81u:
        goto LABEL_22;
      case 0x84u:
        v2 = 13500000000;
        goto LABEL_22;
      case 0x82u:
        v2 = 20000000000;
        goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v6 != 21)
  {
    if (v6 != 29)
    {
LABEL_20:
      v3 = 270000000 * *(a2 + 12);
      goto LABEL_21;
    }

    v3 = 7992000000;
  }

LABEL_21:
  v2 = v3;
LABEL_22:
  v7 = v5 * *(a1 + 8);
  v8 = v2 * *(a2 + 8);
  v9 = v7 > v8;
  if (v7 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

const char *IODPDeviceTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Sink";
  }

  else
  {
    return IODPDeviceTypeString::sStrings[a1];
  }
}

uint64_t IOCircularDataQueueEnqueue(uint64_t a1, const void *a2, size_t a3)
{
  v3 = 3758097090;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (a3 && a2)
      {
        v6 = *(a1 + 16);
        if (*v5 != *(a1 + 24))
        {
          return 3758097105;
        }

        if (*(a1 + 48) >= a3)
        {
          v7 = *(a1 + 36);
          if (!v7)
          {
            return 3758097095;
          }

          v8 = *(a1 + 32);
          v9 = *(a1 + 44);
          _X4 = v5[2];
          v11 = v5[3];
          __dmb(9u);
          if (v11 < 0)
          {
            return 3758097109;
          }

          v12 = _X4 + 1;
          if (_X4 == -2)
          {
            return 3758097128;
          }

          if (((v11 * v7) & 0x8000000000000000) == 0)
          {
            v13 = (v5 + v11 * v7 + 32);
            if (v13 < (v5 + v8))
            {
              _X7 = v11;
              __asm { CASPAL          X6, X7, X4, X5, [X9] }

              if (_X6 == _X4)
              {
                v20 = (v11 + 1) % v9;
                v21 = v11 & 0x3FFFFFFF00000000 | a3;
                __dmb(0xBu);
                *v13 = v12;
                *(v5 + v11 * v7 + 40) = v21 | 0x8000000000000000;
                *(v5 + v11 * v7 + 48) = *(a1 + 24);
                memcpy(v5 + v11 * v7 + 64, a2, a3);
                __dmb(0xBu);
                *v13 = v12;
                v13[1] = v21;
                __dmb(0xBu);
                *(v6 + 16) = v12;
                *(v6 + 24) = v11 & 0x7FFFFFFF00000000 | v20;
                if (**(a1 + 16) == *(a1 + 24))
                {
                  return 0;
                }

                else
                {
                  return 3758097105;
                }
              }

              return 3758097109;
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t IOCircularDataQueueIsCurrentDataValid()
{
  result = OUTLINED_FUNCTION_2_1();
  if (!v1)
  {
    return result;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    return result;
  }

  if (*v3 != *(v1 + 24))
  {
    return (v2 + 15);
  }

  if (*(v1 + 4) < *(v1 + 44))
  {
    v4 = v3[3];
    __dmb(9u);
    if ((v4 & 0x4000000000000000) != 0)
    {
      return (v2 + 19);
    }

    v5 = HIDWORD(v4) & 0x3FFFFFFF;
    if (v5 != *v1)
    {
      return (v2 + 41);
    }

    v6 = *(v1 + 36);
    v7 = *(v1 + 4);
    if (((v7 * v6) & 0x8000000000000000) == 0)
    {
      v8 = (v3 + v7 * v6 + 32);
      if (v8 < (v3 + *(v1 + 32)))
      {
        if (v8[2] == *(v1 + 24))
        {
          v11 = v8;
          v9 = *v8;
          v10 = v11[1];
          __dmb(9u);
          result = (v2 + 38);
          if ((v10 & 0x8000000000000000) == 0 && (HIDWORD(v10) & 0x3FFFFFFF) == v5)
          {
            if (*(v1 + 8) == v9)
            {
              v12 = v2 + 15;
              if (**(v1 + 16) == *(v1 + 24))
              {
                return 0;
              }

              else
              {
                return v12;
              }
            }

            else
            {
              return (v2 + 38);
            }
          }

          return result;
        }

        return (v2 + 15);
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueSetCursorLatest(uint64_t a1)
{
  v1 = 3758097090;
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*v2 != *(a1 + 24))
      {
        return 3758097105;
      }

      v3 = *(a1 + 32);
      v4 = *(a1 + 36);
      v5 = v2[2];
      v6 = v2[3];
      __dmb(9u);
      if ((v6 & 0x4000000000000000) != 0)
      {
        return 3758097109;
      }

      if (v5 == -1)
      {
        return 3758097127;
      }

      v7 = v6;
      if (!v6)
      {
        v7 = *(a1 + 44);
      }

      v8 = v7 - 1;
      v1 = 3758097131;
      if (((v4 * v8) & 0x8000000000000000) == 0)
      {
        v9 = (v2 + v4 * v8 + 32);
        if (v9 < (v2 + v3))
        {
          if (v9[2] == *(a1 + 24))
          {
            v10 = HIDWORD(v6) & 0x3FFFFFFF;
            v12 = *v9;
            v11 = v9[1];
            __dmb(9u);
            if ((HIDWORD(v11) & 0x3FFFFFFF) != v10)
            {
              return 3758097131;
            }

            v1 = 0;
            *a1 = v10;
            *(a1 + 4) = v8;
            *(a1 + 8) = v12;
            return v1;
          }

          return 3758097105;
        }
      }
    }
  }

  return v1;
}

uint64_t _getLatestInQueueMemInternal(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = OUTLINED_FUNCTION_2_1();
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = v7;
  if (!v7)
  {
    return result;
  }

  v10 = v6;
  if (!v6)
  {
    return result;
  }

  v11 = *(a1 + 16);
  if (*v8 != *(a1 + 24))
  {
    return (result + 15);
  }

  v12 = *(a1 + 36);
  v27 = *v7;
  v28 = v8 + 4;
  v13 = v8 + *(a1 + 32);
  v14 = -5;
  while (1)
  {
    *v9 = 0;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    __dmb(9u);
    if ((v15 & 0x4000000000000000) != 0)
    {
      return OUTLINED_FUNCTION_2_1() + 19;
    }

    if (v16 == -1)
    {
      return OUTLINED_FUNCTION_2_1() + 37;
    }

    v17 = v15;
    if (!v15)
    {
      v17 = *(a1 + 44);
    }

    v18 = v17 - 1;
    if (((v12 * v18) & 0x8000000000000000) != 0)
    {
      return OUTLINED_FUNCTION_2_1();
    }

    v19 = v28 + v12 * v18;
    if (v19 >= v13)
    {
      return OUTLINED_FUNCTION_2_1();
    }

    if (*(v19 + 2) != *(a1 + 24))
    {
      goto LABEL_32;
    }

    v20 = *v19;
    v21 = *(v19 + 1);
    __dmb(9u);
    if (v16 != v20)
    {
      goto LABEL_24;
    }

    if (v21 < 0)
    {
      goto LABEL_24;
    }

    v22 = HIDWORD(v15) & 0x3FFFFFFF;
    if ((HIDWORD(v21) & 0x3FFFFFFF) != v22)
    {
      goto LABEL_24;
    }

    *a1 = v22;
    *(a1 + 4) = v18;
    *(a1 + 8) = v20;
    if (*(a1 + 36) < v21)
    {
      return OUTLINED_FUNCTION_2_1() + 38;
    }

    *v9 = v21;
    if ((a4 & 1) == 0)
    {
      break;
    }

    if (v21 > v27)
    {
      return OUTLINED_FUNCTION_2_1() + 38;
    }

    memcpy(*v10, v19 + 32, v21);
    v23 = *v19;
    v24 = *(v19 + 1);
    __dmb(9u);
    if (v21 == v24 && v20 == v23)
    {
      goto LABEL_28;
    }

    *v9 = 0;
LABEL_24:
    if (__CFADD__(v14++, 1))
    {
      return OUTLINED_FUNCTION_2_1() + 20;
    }
  }

  *v10 = v19 + 32;
LABEL_28:
  if (**(a1 + 16) == *(a1 + 24))
  {
    return 0;
  }

LABEL_32:
  LODWORD(result) = OUTLINED_FUNCTION_2_1();
  return (result + 15);
}

uint64_t _getNextInQueueMemInternal()
{
  OUTLINED_FUNCTION_1();
  result = (v1 - 38);
  if (v4)
  {
    v6 = v3;
    if (v3)
    {
      if (v2)
      {
        *v3 = 0;
        if (*v4 != *(v0 + 24))
        {
          return (v1 - 23);
        }

        if (*(v0 + 4) >= *(v0 + 44))
        {
          return (v1 + 3);
        }

        v7 = *(v0 + 32);
        v8 = *(v0 + 36);
        v9 = v4[2];
        v10 = v4[3];
        __dmb(9u);
        if ((v10 & 0x4000000000000000) != 0)
        {
          return (v1 - 19);
        }

        v11 = HIDWORD(v10) & 0x3FFFFFFF;
        v12 = (v1 + 3);
        if (*v0 != v11)
        {
          return v12;
        }

        v13 = *(v0 + 8);
        if (v9 < v13)
        {
          return v12;
        }

        v12 = (v1 - 1);
        if (v9 == -1 || v13 == v9 || (v10 & 0x8000000000000000) != 0 && v13 + 1 == v9)
        {
          return v12;
        }

        v14 = (*(v0 + 4) + 1) % *(v0 + 44);
        if (((v8 * v14) & 0x8000000000000000) == 0)
        {
          v15 = (v4 + v8 * v14 + 32);
          if (v15 < (v4 + v7))
          {
            if (*(v4 + v8 * v14 + 48) != *(v0 + 24))
            {
              return (v1 - 23);
            }

            v16 = *v15;
            v17 = *(v4 + v8 * v14 + 40);
            __dmb(9u);
            if ((HIDWORD(v17) & 0x3FFFFFFF) == v11)
            {
              if (v17 < 0)
              {
                return OUTLINED_FUNCTION_3();
              }

              if (*(v0 + 8) + 1 != v16)
              {
                return OUTLINED_FUNCTION_3();
              }

              OUTLINED_FUNCTION_4();
              if (!v21)
              {
                return OUTLINED_FUNCTION_3();
              }

              *v6 = v17;
              if (v19)
              {
                if (v17 > v20)
                {
                  return OUTLINED_FUNCTION_3();
                }

                memcpy(*v18, v15 + 4, v17);
                OUTLINED_FUNCTION_0_1();
                v23 = v23 && v16 == v22;
                if (!v23)
                {
                  *v6 = 0;
                  return v1;
                }
              }

              else
              {
                *v18 = v15 + 4;
              }

              if (**(v0 + 16) == *(v0 + 24))
              {
                return 0;
              }

              return (v1 - 23);
            }

            return (v1 + 3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _getPrevInQueueMemInternal()
{
  OUTLINED_FUNCTION_1();
  result = (v1 - 38);
  if (v4)
  {
    v6 = v3;
    if (v3)
    {
      if (v2)
      {
        *v3 = 0;
        if (*v4 != *(v0 + 24))
        {
          return (v1 - 23);
        }

        if (*(v0 + 4) >= *(v0 + 44))
        {
          return (v1 + 3);
        }

        v7 = *(v0 + 32);
        v8 = *(v0 + 36);
        v10 = v4[2];
        v9 = v4[3];
        __dmb(9u);
        if ((v9 & 0x4000000000000000) != 0)
        {
          return (v1 - 19);
        }

        v11 = HIDWORD(v9) & 0x3FFFFFFF;
        if (*v0 != v11 || v10 < *(v0 + 8))
        {
          return (v1 + 3);
        }

        if (v10 == -1)
        {
          return (v1 - 1);
        }

        v12 = *(v0 + 4);
        if (!v12)
        {
          v12 = *(v0 + 44);
        }

        v13 = v12 - 1;
        if (((v8 * v13) & 0x8000000000000000) == 0)
        {
          v14 = (v4 + v8 * v13 + 32);
          if (v14 < (v4 + v7))
          {
            v15 = *v14;
            v16 = *(v4 + v8 * v13 + 40);
            __dmb(9u);
            if (v16 < 0)
            {
              return OUTLINED_FUNCTION_3();
            }

            v17 = v15 <= *(v0 + 8) && (HIDWORD(v16) & 0x3FFFFFFF) == v11;
            if (!v17)
            {
              return OUTLINED_FUNCTION_3();
            }

            if (*(v4 + v8 * v13 + 48) == *(v0 + 24))
            {
              OUTLINED_FUNCTION_4();
              if (!v21)
              {
                return OUTLINED_FUNCTION_3();
              }

              *v6 = v16;
              if (v19)
              {
                if (v16 > v20)
                {
                  return OUTLINED_FUNCTION_3();
                }

                memcpy(*v18, v14 + 4, v16);
                OUTLINED_FUNCTION_0_1();
                if (!v17 || v15 != v22)
                {
                  *v6 = 0;
                  return v1;
                }
              }

              else
              {
                *v18 = v14 + 4;
              }

              if (**(v0 + 16) == *(v0 + 24))
              {
                return 0;
              }
            }

            return (v1 - 23);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _getCurrentInQueueMemInternal(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = *(a1 + 16);
  result = 3758097090;
  if (!v5 || !a3 || !a2)
  {
    return result;
  }

  *a3 = 0;
  if (*v5 != *(a1 + 24))
  {
    return 3758097105;
  }

  if (*(a1 + 4) >= *(a1 + 44))
  {
    return 3758097131;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  v11 = v5[2];
  v10 = v5[3];
  __dmb(9u);
  if ((v10 & 0x4000000000000000) != 0)
  {
    return 3758097109;
  }

  v12 = HIDWORD(v10) & 0x3FFFFFFF;
  if (*a1 != v12 || v11 < *(a1 + 8))
  {
    return 3758097131;
  }

  if (v11 == -1)
  {
    return 3758097127;
  }

  v13 = *(a1 + 4);
  if (((v13 * v9) & 0x8000000000000000) != 0)
  {
    return result;
  }

  v14 = (v5 + v13 * v9 + 32);
  if (v14 >= (v5 + v8))
  {
    return result;
  }

  if (*(v5 + v13 * v9 + 48) != *(a1 + 24))
  {
    return 3758097105;
  }

  v15 = *v14;
  v16 = *(v5 + v13 * v9 + 40);
  __dmb(9u);
  if ((HIDWORD(v16) & 0x3FFFFFFF) != v12)
  {
    return 3758097131;
  }

  if (v16 < 0 || *(a1 + 8) != v15 || *(a1 + 36) < v16)
  {
    return OUTLINED_FUNCTION_3();
  }

  *a3 = v16;
  if (a4)
  {
    result = OUTLINED_FUNCTION_3();
    if (v18 > v19)
    {
      return result;
    }

    memcpy(*v17, v14 + 4, v18);
    OUTLINED_FUNCTION_0_1();
    v21 = v21 && v15 == v20;
    if (!v21)
    {
      *a3 = 0;
      return 3758097109;
    }
  }

  else
  {
    *a2 = v5 + v13 * v9 + 64;
  }

  if (**(a1 + 16) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return 3758097105;
  }
}

io_service_t *IODPHDMIControllerPortCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IODPHDMIControllerPort"))
  {
    return 0;
  }

  if (!__kIODPHDMIControllerPortTypeID)
  {
    pthread_once(&__portTypeInit, __IODPHDMIControllerPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = v2;
    IOObjectRetain(v2);
    v5 = IOServiceOpen(v4[4], *MEMORY[0x1E69E9A60], 0x44504844u, v4 + 5);
    if (v5)
    {
      printf("failed to open io_service_t err=0x%x", v5);
    }

    else if (!getPortProperty(v4[4], v4 + 6, v4 + 7, 0))
    {
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t IODPHDMIControllerGetPCONStatus(uint64_t a1, BOOL *a2)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 2u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    v4 = outputCnt == 1;
  }

  if (v4)
  {
    *a2 = output[0] != 0;
  }

  return result;
}

__CFDictionary *IOHIDServiceConnectionCacheCopyDebugInfo(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && CFDictionaryGetCount(v2))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v4 = MutableCopy;
  if (MutableCopy)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      CFDictionarySetValue(MutableCopy, @"ReportInterval", v5);
    }

    if (!CFDictionaryGetCount(v4))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t IOHIDSessionFilterCreate(const __CFAllocator *a1, CFBundleRef bundle, const __CFUUID *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  Identifier = CFBundleGetIdentifier(bundle);
  CStringPtr = CFStringGetCStringPtr(Identifier, 0x8000100u);
  v8 = _IOHIDLog(CStringPtr, v7);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315138;
    v28 = CStringPtr;
    OUTLINED_FUNCTION_1_1(&dword_197195000, v9, v10, v11, "CreateSessionFilter", "%s", buf);
  }

  Private = __IOHIDSessionFilterCreatePrivate(a1);
  v14 = Private;
  if (!Private)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v15 = *MEMORY[0x1E695E4A8];
  v16 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  Private = CFPlugInInstanceCreate(a1, a3, v16);
  v17 = Private;
  if (!Private)
  {
LABEL_23:
    v24 = 0;
    goto LABEL_15;
  }

  v18 = *(*Private + 8);
  v19 = CFUUIDGetConstantUUIDWithBytes(v15, 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu);
  v20 = CFUUIDGetUUIDBytes(v19);
  if (v18(v17, *&v20.byte0, *&v20.byte8, v14 + 24))
  {
    *(v14 + 24) = 0;
  }

  v21 = *(*v17 + 8);
  v22 = CFUUIDGetConstantUUIDWithBytes(v15, 0x3Du, 0xC3u, 0x5Au, 0xA6u, 0xD3u, 0x5Cu, 0x44u, 0x5Bu, 0x9Au, 0x59u, 0xCAu, 3u, 0xDAu, 0x40u, 0x8Bu, 0x97u);
  v23 = CFUUIDGetUUIDBytes(v22);
  Private = v21(v17, *&v23.byte0, *&v23.byte8, v14 + 16);
  if (Private)
  {
    *(v14 + 16) = 0;
  }

  else if (*(v14 + 16))
  {
    goto LABEL_12;
  }

  if (!*(v14 + 24))
  {
    goto LABEL_23;
  }

LABEL_12:
  *(v14 + 40) = Identifier;
  if (Identifier)
  {
    CFRetain(Identifier);
  }

  *(v14 + 48) = 1;
  Private = CFRetain(v14);
  v24 = Private;
LABEL_15:
  v25 = _IOHIDLog(Private, v13);
  if (os_signpost_enabled(v25))
  {
    *buf = 136315138;
    v28 = CStringPtr;
    _os_signpost_emit_with_name_impl(&dword_197195000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateSessionFilter", "%s", buf, 0xCu);
  }

  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v24;
}

uint64_t __IOHIDSessionFilterCreatePrivate(const __CFAllocator *a1)
{
  if (!__kIOHIDSessionFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit, __IOHIDSessionFilterRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = CFUUIDCreate(a1);
  }

  return v3;
}

uint64_t IOHIDSessionFilterCreateWithClass(const __CFAllocator *a1, objc_class *a2, uint64_t a3, char a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = _IOHIDLog(a1, a2);
  if (os_signpost_enabled(v8))
  {
    v38 = 136315138;
    Name = class_getName(a2);
    OUTLINED_FUNCTION_1_1(&dword_197195000, v9, v10, v11, "CreateSessionFilterClass", "%s", &v38);
  }

  sel_getUid("alloc");
  v12 = OUTLINED_FUNCTION_0_3();
  Private = [v12 v13];
  v16 = Private;
  if (!Private)
  {
    goto LABEL_30;
  }

  if (![Private getUid("initWithSession:a3")])
  {
    v35 = _IOHIDLogCategory(0);
    Private = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (Private)
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_197195000, v35, OS_LOG_TYPE_ERROR, "IOHIDSessionFilterCreateWithClass Failed to initialize filter", &v38, 2u);
    }

    v16 = 0;
    goto LABEL_30;
  }

  if (!objc_getProtocol("HIDSessionFilter"))
  {
    v36 = _IOHIDLogCategory(0);
    Private = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (!Private)
    {
LABEL_30:
      v19 = 0;
      goto LABEL_31;
    }

    LOWORD(v38) = 0;
    v37 = "IOHIDSessionFilterCreateWithClass Failed to find HIDSessionFilter protocol";
LABEL_33:
    _os_log_error_impl(&dword_197195000, v36, OS_LOG_TYPE_ERROR, v37, &v38, 2u);
    goto LABEL_30;
  }

  v17 = OUTLINED_FUNCTION_0_3();
  if (!class_conformsToProtocol(v17, v18))
  {
    v36 = _IOHIDLogCategory(0);
    Private = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (!Private)
    {
      goto LABEL_30;
    }

    LOWORD(v38) = 0;
    v37 = "IOHIDSessionFilterCreateWithClass class does not conform to SessionFilter protocol";
    goto LABEL_33;
  }

  Private = __IOHIDSessionFilterCreatePrivate(a1);
  v19 = Private;
  if (!Private)
  {
LABEL_31:
    v30 = 1;
    goto LABEL_17;
  }

  *(Private + 56) = v16;
  *(Private + 64) = sel_getUid("propertyForKey:");
  *(v19 + 72) = sel_getUid("setProperty:forKey:");
  *(v19 + 80) = sel_getUid("filterEvent:forService:");
  *(v19 + 88) = sel_getUid("activate");
  v20 = CFGetAllocator(v19);
  ClassName = object_getClassName(*(v19 + 56));
  *(v19 + 40) = CFStringCreateWithCString(v20, ClassName, 0);
  sel_getUid("cancel");
  v22 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v22, v23))
  {
    *(v19 + 96) = sel_getUid("cancel");
  }

  sel_getUid("serviceNotification:added:");
  v24 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v24, v25))
  {
    *(v19 + 104) = sel_getUid("serviceNotification:added:");
  }

  sel_getUid("setDispatchQueue:");
  v26 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v26, v27))
  {
    *(v19 + 112) = sel_getUid("setDispatchQueue:");
  }

  sel_getUid("filterEvent:toConnection:fromService:");
  v28 = OUTLINED_FUNCTION_0_3();
  Private = class_respondsToSelector(v28, v29);
  if (Private)
  {
    Private = sel_getUid("filterEvent:toConnection:fromService:");
    *(v19 + 120) = Private;
  }

  v30 = 0;
  *(v19 + 48) = a4;
LABEL_17:
  v31 = _IOHIDLog(Private, v15);
  if (os_signpost_enabled(v31))
  {
    v32 = class_getName(a2);
    v38 = 136315138;
    Name = v32;
    _os_signpost_emit_with_name_impl(&dword_197195000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateSessionFilterClass", "%s", &v38, 0xCu);
  }

  v33 = v30 ^ 1;
  if (!v16)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    CFRelease(v16);
  }

  return v19;
}

void IOHIDSessionFilterUnscheduleFromDispatchQueue(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 128);
  if (v2 == a2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(*v4 + 112);
      if (v5)
      {
        v5();
        v2 = *(a1 + 128);
      }
    }

    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 128) = 0;
    }
  }
}

void IOHIDSessionFilterGetPropertyForClient_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "%@ is not serializable", &v2, 0xCu);
}

void IOHIDCopyHIDParameterFromEventSystem_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = -536870184;
  _os_log_error_impl(&dword_197195000, log, OS_LOG_TYPE_ERROR, "Fail to get parameter with status 0x%x", v1, 8u);
}

void IOHIDSetHIDParameterToEventSystem_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "Fail to set parameter with status 0x%x", v2, 8u);
}

IOHIDAccessType IOHIDCheckAccess(IOHIDRequestType requestType)
{
  if (qword_1ED446AB0 != -1)
  {
    dispatch_once(&qword_1ED446AB0, &__block_literal_global_20);
  }

  result = kIOHIDAccessTypeUnknown;
  if (qword_1ED446AA8 && _MergedGlobals_1)
  {
    if (requestType)
    {
      if (requestType != kIOHIDRequestTypeListenEvent)
      {
        return result;
      }

      v3 = @"kTCCServiceListenEvent";
    }

    else
    {
      v3 = @"kTCCServicePostEvent";
    }

    v4 = (_MergedGlobals_1)(v3, 0);
    if (v4 == 1)
    {
      v5 = kIOHIDAccessTypeDenied;
    }

    else
    {
      v5 = kIOHIDAccessTypeUnknown;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL IOHIDRequestAccess(IOHIDRequestType requestType)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (qword_1ED446AB0 != -1)
  {
    dispatch_once(&qword_1ED446AB0, &__block_literal_global_20);
  }

  if (qword_1ED446AA8 && off_1ED446AA0)
  {
    if (requestType)
    {
      if (requestType != kIOHIDRequestTypeListenEvent)
      {
        goto LABEL_11;
      }

      v2 = @"kTCCServiceListenEvent";
    }

    else
    {
      v2 = @"kTCCServicePostEvent";
    }

    v3 = dispatch_semaphore_create(0);
    v8[3] = v3;
    if (v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __IOHIDRequestAccess_block_invoke;
      v6[3] = &unk_1E74A79D8;
      v6[4] = &v11;
      v6[5] = &v7;
      off_1ED446AA0(v2, 0, v6);
      dispatch_semaphore_wait(v8[3], 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8[3]);
    }
  }

LABEL_11:
  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void IOHIDSetCursorEnable_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOHIDSetCursorBounds_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOHIDSetOnScreenCursorBounds_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _IOHIDSetFixedMouseLocation_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_197195000, v0, OS_LOG_TYPE_DEBUG, "Set fixed mouse location failed:0x%x", v1, 8u);
}

void IOHIDSetStateForSelector_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOHIDSetStateForSelector_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOHIDSetModifierLockState_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __IOPSCopyExternalPowerAdapterDetails_block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Event handler is called %@\n", &v1, 0xCu);
}

void __IOPSGaugingMitigationGetState_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __IOPSSetBatteryDateOfFirstUse_block_invoke_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Event handler is called %@\n", v0, 0xCu);
}

void IOPMLogWakeProgress_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v2 = 1024;
  v3 = v0;
  _os_log_debug_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Wake progress from %d. data: 0x%x\n", v1, 0xEu);
}

void __IOPMConnectionCreate_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _connectionCreate_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _connectionCreate_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

io_connect_t *IOAVControlInterfaceCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IOAVControlInterface"))
  {
    return 0;
  }

  if (!__kIOAVControlInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit, __IOAVControlInterfaceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVControlInterfaceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

__CFString *IOHIDDeviceCopyDescription(io_object_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(name, 0, sizeof(name));
  v2 = a1[2];
  if (v2)
  {
    if (IOObjectRetain(a1[2]))
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (Mutable)
  {
    IORegistryEntryGetName(v3, name);
    if (!name[0])
    {
      IOObjectGetClass(v3, name);
    }

    v19 = v3;
    v6 = CFGetAllocator(a1);
    v7 = CFGetAllocator(a1);
    v8 = CFStringCreateWithFormat(v6, 0, @"<IOHIDDevice %p [%p]  'ClassName=%s'", a1, v7, name);
    if (v8)
    {
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
    }

    v9 = 0;
    while (1)
    {
      v10 = __debugKeys[v9];
      Property = IOHIDDeviceGetProperty(a1, v10);
      if (Property)
      {
        break;
      }

LABEL_20:
      if (++v9 == 12)
      {
        CFStringAppend(Mutable, @">");
        v3 = v19;
        goto LABEL_22;
      }
    }

    v12 = Property;
    v13 = CFGetTypeID(Property);
    if (v13 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v14 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v14, 0, @" %@=%d", v10, valuePtr);
    }

    else
    {
      v16 = CFGetTypeID(v12);
      if (v16 != CFStringGetTypeID())
      {
        goto LABEL_18;
      }

      v17 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v17, 0, @" %@=%@", v10, v12);
    }

    v8 = v15;
LABEL_18:
    if (v8)
    {
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
    }

    goto LABEL_20;
  }

LABEL_22:
  if (v3)
  {
    IOObjectRelease(v3);
  }

  return Mutable;
}

BOOL __IOHIDDeviceCallbackBaseDataIsEqual(CFDataRef theData, const __CFData *a2)
{
  if (theData == a2)
  {
    return 1;
  }

  result = 0;
  if (theData)
  {
    if (a2)
    {
      BytePtr = CFDataGetBytePtr(theData);
      v6 = CFDataGetBytePtr(a2);
      result = 0;
      if (BytePtr)
      {
        if (v6)
        {
          return *BytePtr == *v6;
        }
      }
    }
  }

  return result;
}

void IOHIDDeviceSetDispatchQueue(IOHIDDeviceRef device, dispatch_queue_t queue)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  __IOHIDDeviceSetupAsyncSupport(device);
  bzero(__str, 0x100uLL);
  label = dispatch_queue_get_label(queue);
  v5 = "";
  if (label)
  {
    v5 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDDeviceRef:0x%llx", v5, *(device + 2));
  v6 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  *(device + 26) = v6;
  if (v6)
  {
    CFRetain(device);
    handler[5] = MEMORY[0x1E69E9820];
    handler[6] = 0x40000000;
    handler[7] = __IOHIDDeviceSetDispatchQueue_block_invoke;
    handler[8] = &__block_descriptor_tmp_26;
    handler[9] = device;
    v7 = dispatch_mach_create();
    *(device + 27) = v7;
    if (v7)
    {
      v8 = *(device + 30);
      if (v8)
      {
        IOHIDQueueSetDispatchQueue(v8, *(device + 26));
        CFRetain(device);
        v9 = *(device + 30);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = __IOHIDDeviceSetDispatchQueue_block_invoke_2;
        handler[3] = &__block_descriptor_tmp_27;
        handler[4] = device;
        IOHIDQueueSetCancelHandler(v9, handler);
      }
    }

    else
    {
      CFRelease(device);
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __IOHIDDeviceRegisterInputReportCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[0] = a6;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a1;
  CFRetain(a1);
  os_unfair_recursive_lock_lock_with_options();
  if (!a1[38])
  {
    a1[38] = CFSetCreateMutable(0, 0, &__callbackBaseSetCallbacks);
  }

  os_unfair_recursive_lock_unlock();
  if (a1[38])
  {
    v11 = CFGetAllocator(a1);
    v12 = CFDataCreate(v11, v16, 32);
    if (v12)
    {
      v13 = v12;
      os_unfair_recursive_lock_lock_with_options();
      v14 = a1[38];
      if (a4 | a5)
      {
        CFSetAddValue(v14, v13);
        os_unfair_recursive_lock_unlock();
        v15 = a1[4];
        if (v15)
        {
          (*(*v15 + 120))(a1[3], a2, a3, __IOHIDDeviceInputReportWithTimeStampCallback, a1, 0);
        }

        else
        {
          (*(*a1[3] + 96))(a1[3], a2, a3, __IOHIDDeviceInputReportCallback, a1, 0);
        }
      }

      else
      {
        CFSetRemoveValue(v14, v13);
        os_unfair_recursive_lock_unlock();
      }

      CFRelease(v13);
    }
  }

  CFRelease(a1);
}

void _IOHIDDeviceReleasePrivate_cold_1(void *a1, _OWORD *a2, unsigned int *a3)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  if (v4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  OUTLINED_FUNCTION_0_4(v8, v5, v6, v7, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void IOHIDDeviceCreate_cold_2(uint64_t a1, void *a2)
{
  v3 = a1;
  v6 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLog(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_error_impl(&dword_197195000, v4, OS_LOG_TYPE_ERROR, "IOObjectRetain:0x%x", v5, 8u);
  }

  *a2 = 0;
}

void IOHIDDeviceCreate_cold_3(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLog(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67109376;
    v6[1] = v2;
    v7 = 2048;
    v8 = v5;
    _os_log_error_impl(&dword_197195000, v4, OS_LOG_TYPE_ERROR, "IOCreatePlugInInterfaceForService:0x%x for serviceID:%#llx", v6, 0x12u);
  }
}

void IOHIDDeviceCreate_cold_4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v5 = *MEMORY[0x1E69E9840];
  v3 = _IOHIDLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_error_impl(&dword_197195000, v3, OS_LOG_TYPE_ERROR, "QueryInterface(kIOHIDDeviceDeviceInterfaceID):0x%x", v4, 8u);
  }
}

uint64_t IOHIDDeviceCreate_cold_5(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  if (*a2)
  {
    return (*(**a2 + 24))(*a1);
  }

  return result;
}

void IOHIDDeviceSetProperty_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    if (*MEMORY[0x1E695E4D0] == a2)
    {
      IOHIDQueueStop(v2);
    }

    else
    {
      IOHIDQueueStart(v2);
    }
  }
}

void __IOHIDDeviceSetupAsyncSupport_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void __IOHIDDeviceSetupAsyncSupport_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_0_4(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void IOHIDDeviceSetCancelHandler_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

io_service_t *IODPPortCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IODPPort"))
  {
    return 0;
  }

  if (!__kIODPPortTypeID)
  {
    pthread_once(&__portTypeInit_0, __IODPPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    *(Instance + 4) = 0;
    Instance[4] = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(v4[4], *MEMORY[0x1E69E9A60], 0x44505054u, v4 + 5) || getPortProperty(v4[4], v4 + 6, v4 + 7, v4 + 8))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t IODPPortGetVirtual(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_0_5(a1);
  result = OUTLINED_FUNCTION_1_4(v3, 1u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t IODPPortGetAVRoot(uint64_t a1, CFStringRef *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v6 = OUTLINED_FUNCTION_0_5(a1);
  v13 = OUTLINED_FUNCTION_1_4(v6, 2u, v7, v8, v9, v10, v11, v12, v18, v19);
  if (v13)
  {
    return v13;
  }

  v14 = 3758097086;
  v15 = IORegistryEntryIDMatching(0xFFFFFFFFFFFFFFFFLL);
  if (v15)
  {
    MatchingService = IOServiceGetMatchingService(0, v15);
    if (MatchingService)
    {
      v14 = 0;
      *a2 = IORegistryEntryCopyPath(MatchingService, "IODeviceTree");
      *a4 = -1;
    }

    else
    {
      return 3758097088;
    }
  }

  return v14;
}

void _IOHIDObjectRetainCount_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void _IOHIDObjectRetainCount_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

IOReturn IOHIDManagerOpen(IOHIDManagerRef manager, IOOptionBits options)
{
  if (!*(manager + 144) && (*(manager + 144) = 1, *(manager + 37) = options, *(manager + 4)))
  {
    return __ApplyToDevices(manager);
  }

  else
  {
    return 0;
  }
}

IOReturn IOHIDManagerClose(IOHIDManagerRef manager, IOOptionBits options)
{
  v4 = *(manager + 10);
  if (v4)
  {
    IOHIDManagerUnscheduleFromRunLoop(manager, v4, *(manager + 11));
  }

  if (*(manager + 144))
  {
    v5 = 0;
    *(manager + 144) = 0;
    *(manager + 37) = options;
    if (*(manager + 4))
    {
      v5 = __ApplyToDevices(manager);
    }
  }

  else
  {
    v5 = -536870195;
  }

  if ((*(manager + 38) & 5) == 1)
  {
    __IOHIDManagerSaveProperties();
  }

  return v5;
}

uint64_t __IOHIDManagerSaveProperties()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1(v2);
  if (*(v0 + 156))
  {
    v3 = *(v0 + 56);
    if (v3)
    {
      __IOHIDPropertySaveToKeyWithSpecialKeys(v3, @"com.apple.iohidmanager", 0, v1);
      *(v0 + 156) = 0;
    }
  }

  if (*(v0 + 32))
  {
    v4 = CFGetAllocator(v0);
    Copy = CFSetCreateCopy(v4, *(v0 + 32));
    if (Copy)
    {
      v6 = Copy;
      CFSetApplyFunction(Copy, __IOHIDSaveDeviceSet, v1);
      CFRelease(v6);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

Boolean IOHIDManagerSetProperty(IOHIDManagerRef manager, CFStringRef key, CFTypeRef value)
{
  v11[0] = key;
  v11[1] = value;
  OUTLINED_FUNCTION_3_1(manager);
  Mutable = *(manager + 7);
  if (!Mutable)
  {
    v7 = CFGetAllocator(manager);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(manager + 7) = Mutable;
    if (!Mutable)
    {
      os_unfair_recursive_lock_unlock();
      return 0;
    }
  }

  *(manager + 156) = 1;
  CFDictionarySetValue(Mutable, key, value);
  if (!*(manager + 4))
  {
    os_unfair_recursive_lock_unlock();
    return 1;
  }

  v8 = CFGetAllocator(manager);
  Copy = CFSetCreateCopy(v8, *(manager + 4));
  os_unfair_recursive_lock_unlock();
  if (!Copy)
  {
    return 0;
  }

  CFSetApplyFunction(Copy, __IOHIDApplyPropertyToDeviceSet, v11);
  CFRelease(Copy);
  return 1;
}

void __IOHIDManagerDeviceApplier()
{
  OUTLINED_FUNCTION_2_3();
  v3 = *v2;
  if ((*(*v2 + 152) & 8) != 0)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (v1[8])
  {
    v4 = IOHIDDeviceOpen(v0, *(v3 + 148));
    v5 = *(*v1 + 136);
    if (v5)
    {
      CFDictionarySetValue(v5, v0, v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v1 + 2);
  if ((v6 & 2) != 0)
  {
    v4 = IOHIDDeviceClose(v0, *(*v1 + 148));
    v6 = *(v1 + 2);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_8;
  }

  IOHIDDeviceSetInputValueMatchingMultiple(v0, *(*v1 + 240));
  v6 = *(v1 + 2);
  if ((v6 & 0x10) != 0)
  {
LABEL_9:
    IOHIDDeviceRegisterInputValueCallback(v0, *(*v1 + 176), *(*v1 + 168));
    v6 = *(v1 + 2);
  }

LABEL_10:
  if ((v6 & 0x1020) != 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    Mutable = *(*v1 + 64);
    if (!Mutable)
    {
      v8 = CFGetAllocator(*v1);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(*v1 + 64) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, v0);
    if (!Value)
    {
      Property = IOHIDDeviceGetProperty(v0, @"MaxInputReportSize");
      valuePtr = 64;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberCFIndexType, &valuePtr);
      }

      v11 = CFGetAllocator(*v1);
      v12 = CFDataCreateMutable(v11, valuePtr);
      Value = v12;
      if (v12)
      {
        CFDataSetLength(v12, valuePtr);
        CFDictionarySetValue(*(*v1 + 64), v0, Value);
        CFRelease(Value);
      }
    }

    os_unfair_recursive_lock_unlock();
    v13 = *(v1 + 2);
    MutableBytePtr = CFDataGetMutableBytePtr(Value);
    Length = CFDataGetLength(Value);
    v16 = *v1;
    v17 = *(*v1 + 184);
    if ((v13 & 0x20) != 0)
    {
      IOHIDDeviceRegisterInputReportCallback(v0, MutableBytePtr, Length, *(v16 + 24), v17);
    }

    else
    {
      IOHIDDeviceRegisterInputReportWithTimeStampCallback(v0, MutableBytePtr, Length, *(v16 + 25), v17);
    }
  }

  v18 = *(v1 + 2);
  if ((v18 & 0x40) != 0)
  {
    IOHIDDeviceScheduleWithRunLoop(v0, *(*v1 + 80), *(*v1 + 88));
    v18 = *(v1 + 2);
    if ((v18 & 0x80) == 0)
    {
LABEL_26:
      if ((v18 & 0x100) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_26;
  }

  IOHIDDeviceUnscheduleFromRunLoop(v0, *(*v1 + 80), *(*v1 + 88));
  v18 = *(v1 + 2);
  if ((v18 & 0x100) == 0)
  {
LABEL_27:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  IOHIDDeviceSetDispatchQueue(v0, *(v3 + 96));
  v18 = *(v1 + 2);
  if ((v18 & 0x200) == 0)
  {
LABEL_28:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    IOHIDDeviceActivate(v0);
    if ((*(v1 + 2) & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_42:
  ++*(v3 + 112);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ____IOHIDManagerDeviceApplier_block_invoke;
  v21[3] = &__block_descriptor_tmp_18_1;
  v21[4] = v3;
  IOHIDDeviceSetCancelHandler(v0, v21);
  v18 = *(v1 + 2);
  if ((v18 & 0x400) != 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  if ((v18 & 0x800) != 0)
  {
LABEL_30:
    IOHIDDeviceCancel(v0);
  }

LABEL_31:
  if (!*(v1 + 3) && v4)
  {
    *(v1 + 3) = v4;
  }

LABEL_34:
  if ((v1[8] & 4) != 0)
  {
    v19 = *v1;
    v20 = *(*v1 + 136);
    if (v20)
    {
      v4 = CFDictionaryGetValue(v20, v0);
      v19 = *v1;
    }

    v19[27](v19[26], v4, v19, v0);
  }
}

uint64_t __IOHIDManagerInitialEnumCallback(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 216);
  os_unfair_recursive_lock_unlock();
  if (v2)
  {
    os_unfair_recursive_lock_lock_with_options();
    OUTLINED_FUNCTION_0_6();
    CFSetApplyFunction(v3, v4, v5);
    os_unfair_recursive_lock_unlock();
  }

  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a1 + 128);
  if (v6)
  {
    CFRunLoopSourceInvalidate(v6);
    CFRelease(*(a1 + 128));
    *(a1 + 128) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 136) = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

void IOHIDManagerUnscheduleFromRunLoop_cold_1(uint64_t a1, CFSetRef *a2, void *a3)
{
  os_unfair_recursive_lock_unlock();
  __ApplyToDevices(a2);
  os_unfair_recursive_lock_lock_with_options();
  v5 = a2[5];
  if (v5)
  {
    CFSetRemoveAllValues(v5);
  }

  v6 = a2[6];
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  v7 = a2[16];
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    CFRelease(a2[16]);
    a2[16] = 0;
  }

  *a3 = 0;
  a3[1] = 0;
}

void __IOHIDManagerSetDeviceMatching_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification:0x%x", v2, 8u);
}

void IOHIDManagerSetDispatchQueue_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void IOHIDManagerSetCancelHandler_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

uint64_t IOHIDManagerActivate_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  os_unfair_recursive_lock_lock_with_options();
  os_unfair_recursive_lock_unlock();
  __ApplyToDevices(v0);
  os_unfair_recursive_lock_lock_with_options();
  v2 = v0[9];
  if (v2)
  {
    IONotificationPortSetDispatchQueue(v2, *v1);
  }

  return os_unfair_recursive_lock_unlock();
}

void __IOHIDManagerExtRelease_cold_1(void *a1, _OWORD *a2, unsigned int *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void IOHIDQueueScheduleWithRunLoop_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_3(v2, v3, v4, v5, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

__CFRunLoopSource *__IOHIDQueueSetupAsyncSupport_cold_2(__CFRunLoopSource *result, CFRunLoopSourceContext *a2, __CFRunLoopSource **a3, BOOL *a4)
{
  if (*(result + 5))
  {
    v8 = 1;
  }

  else
  {
    v7 = result;
    result = (*(**(result + 3) + 32))(*(result + 3), a3);
    v8 = 0;
    if (!result)
    {
      result = *a3;
      if (*a3)
      {
        *(v7 + 5) = result;
        CFRunLoopSourceGetContext(result, a2);
        result = memcpy(v7 + 48, a2, 0x48uLL);
        v9 = *(v7 + 7);
        *(v7 + 15) = v9;
        v8 = v9 != 0;
      }
    }
  }

  *a4 = v8;
  return result;
}

dispatch_queue_t IOHIDQueueSetDispatchQueue_cold_1(NSObject *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x100uLL);
  label = dispatch_queue_get_label(a1);
  v7 = "";
  if (label)
  {
    v7 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDQueueRef", v7);
  result = dispatch_queue_create_with_target_V2(__str, 0, a1);
  a2[18] = result;
  if (result)
  {
    _IOHIDObjectInternalRetain(a2);
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 0x40000000;
    a3[2] = __IOHIDQueueSetDispatchQueue_block_invoke;
    a3[3] = &__block_descriptor_tmp_11;
    a3[4] = a2;
    result = dispatch_mach_create();
    a2[19] = result;
    if (!result)
    {
      return _IOHIDObjectInternalRelease(a2);
    }
  }

  return result;
}

void IOHIDQueueSetCancelHandler_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_3(v2, v3, v4, v5, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

BOOL _IOHIDEventEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24) && (v4 = *(a1 + 96), v5 = *v4, v6 = *(a2 + 96), v5 == *v6))
    {
      return memcmp(v4, v6, v5) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *__IOHIDEventEventCopyDebugDescWithIndentLevel(uint64_t a1)
{
  v3 = *(*(a1 + 96) + 4);
  if (v3 > 0x2B)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26();
  Name = IOHIDEventTypeGetName(v3);
  v5 = __descriptorCallbacks[v3];
  Latency = IOHIDEventGetLatency(v2, 1000);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    if (v1)
    {
      v8 = @"-----------------------------------------------------------------------\n";
    }

    else
    {
      v8 = @"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
    }

    v9 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v9, v10, v8);
    if (!v1)
    {
      v32 = *(v2 + 16);
      v33 = (*(v2 + 32) & 0x80) != 0 ? *(v2 + 8) : IOHIDEventGetTimeStamp(v2);
      v65 = v33;
      v34 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v34, v35, v36, "Timestamp:", v65);
      v37 = (*(v2 + 32) & 0x80) != 0 ? "Continuous" : "Absolute";
      v66 = v37;
      v38 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v38, v39, v40, "Timestamp type:", v66);
      v41 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v41, v42, v43, "Total Latency:", Latency);
      if (v32 >> 33)
      {
        _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"%c[1m", 27);
        v44 = OUTLINED_FUNCTION_4_0();
        _IOHIDStringAppendIndendationAndFormat(v44, v45, v46, "SenderID:", v32);
        _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"%c[0m", 27, v67);
      }

      else
      {
        v47 = OUTLINED_FUNCTION_4_0();
        _IOHIDStringAppendIndendationAndFormat(v47, v48, v49, "SenderID:", v32);
      }

      v68 = (*(*(v2 + 96) + 8) >> 4) & 1;
      v50 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v50, v51, v52, "BuiltIn:", v68);
      if (*(v2 + 40))
      {
        if (*(v2 + 88))
        {
          v69 = *(v2 + 88);
          v53 = OUTLINED_FUNCTION_4_0();
          _IOHIDStringAppendIndendationAndFormat(v53, v54, v55, "AttributeDataLength:", v69);
          v56 = OUTLINED_FUNCTION_4_0();
          _IOHIDStringAppendIndendationAndFormat(v56, v57, v58, "AttributeData:");
          if (*(v2 + 88) >= 1)
          {
            v59 = 0;
            do
            {
              v62 = *(*(v2 + 40) + v59);
              v60 = OUTLINED_FUNCTION_4_0();
              _IOHIDStringAppendIndendationAndFormat(v60, v61, @"%02x ", v62);
              ++v59;
            }

            while (v59 < *(v2 + 88));
          }

          _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"\n");
        }
      }
    }

    if (*(*(v2 + 96) + 8))
    {
      v11 = "Absolute";
    }

    else
    {
      v11 = "Relative";
    }

    v63 = v11;
    v12 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v12, v13, v14, "ValueType:", v63);
    v15 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "EventType:", Name);
    v64 = *(*(v2 + 96) + 8);
    v18 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v18, v19, v20, "Flags:", v64);
    if (((0x10004400001uLL >> v3) & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_24();
      v5(v21);
    }

    if (*(v2 + 72))
    {
      v22 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v22, v23, v24, "ChildEvents:");
      Count = CFArrayGetCount(*(v2 + 72));
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 72), i);
          if (ValueAtIndex)
          {
            v29 = __IOHIDEventEventCopyDebugDescWithIndentLevel(ValueAtIndex);
            if (v29)
            {
              v30 = v29;
              CFStringAppend(Mutable, v29);
              CFRelease(v30);
            }
          }
        }
      }
    }

    _IOHIDStringAppendIndendationAndFormat(Mutable, v1, v8);
  }

  return Mutable;
}

HIDEvent *IOHIDEventCreateKeyboardEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v9, 3, v10, v8 | 1u);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 8) = v6;
    *(eventData + 9) = v5;
    *(eventData + 5) = a5;
    *(eventData + 28) = 1;
  }

  return result;
}

HIDEvent *IOHIDEventCreateUnicodeEventWithQuality(uint64_t a1, uint64_t a2, const void *a3, size_t a4, int a5, int a6)
{
  v9 = a2;
  v10 = _IOHIDEventCreate(a1, a4 + 28, 30, a2, a6 | 1u);
  if (v10)
  {
    if (_MergedGlobals && _MergedGlobals() && off_1ED446908)
    {
      v9 = off_1ED446908(v9);
    }

    v10->_event.timeStamp = v9;
    OUTLINED_FUNCTION_16();
    if (v14)
    {
      v12 = v13;
    }

    v11[4] = a5;
    v11[5] = v12;
    v11[6] = a4;
    memmove(v11 + 7, a3, a4);
  }

  return v10;
}

HIDEvent *IOHIDEventCreateButtonEvent()
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v1, 2, v2, v3);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 12) = 256;
    *(eventData + 7) = 0;
    *(eventData + 4) = v0;
    *(eventData + 5) = 0x10000;
  }

  return result;
}

void __IOHIDEventCreateButtonEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  OUTLINED_FUNCTION_5_0();
  v11 = IOHIDEventCreate(v9, 2, v10, v8 | 1u);
  if (v11)
  {
    eventData = v11->_event.eventData;
    *(eventData + 24) = a4;
    *(eventData + 7) = a5;
    OUTLINED_FUNCTION_16();
    if (v16)
    {
      v14 = v15;
    }

    *(v13 + 16) = v5;
    *(v13 + 20) = v14;
    *(v13 + 25) = 1;
  }
}

HIDEvent *IOHIDEventCreateRelativePointerEvent(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  OUTLINED_FUNCTION_2_5();
  v10 = v9;
  v12 = v11;
  v14 = IOHIDEventCreate(v11, 17, v9, v13);
  v15 = v14;
  if (v14)
  {
    eventData = v14->_event.eventData;
    if (eventData)
    {
      v17 = OUTLINED_FUNCTION_23();
      if (v17)
      {
        *(*(v17 + 12) + 16) = v6;
      }

      v18 = OUTLINED_FUNCTION_23();
      if (v18)
      {
        *(*(v18 + 12) + 24) = v5;
      }

      v19 = OUTLINED_FUNCTION_23();
      if (v19)
      {
        *(*(v19 + 12) + 32) = v4;
      }

      *(eventData + 10) = a3;
      if (a4 != a3)
      {
        v21 = a4 ^ a3;
        do
        {
          if (v21)
          {
            __IOHIDEventCreateButtonEvent(v12, v10, *(eventData + 10), 1, a3 & 1);
            if (v23)
            {
              v24 = v23;
              IOHIDEventAppendEvent();
              CFRelease(v24);
            }
          }

          a3 >>= 1;
          v22 = v21 >= 2;
          v21 >>= 1;
        }

        while (v22);
      }
    }

    else
    {
      CFRelease(v14);
      return 0;
    }
  }

  return v15;
}

const __CFArray *IOHIDEventCreateTranslationEvent()
{
  OUTLINED_FUNCTION_2_5();
  v6 = IOHIDEventCreate(v3, 4, v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_22(v6);
    if (v8)
    {
      *(*(v8 + 12) + 16) = v2;
    }

    v9 = OUTLINED_FUNCTION_22(v7);
    if (v9)
    {
      *(*(v9 + 12) + 24) = v1;
    }

    v10 = OUTLINED_FUNCTION_22(v7);
    if (v10)
    {
      *(*(v10 + 12) + 32) = v0;
    }
  }

  return v7;
}

void __IOHIDEventCreateAxisEvent()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_18();
  if (IOHIDEventCreate(v0, v1, v2, v3))
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_13(v4);
    *(v5 + 24) = v6;
  }
}

HIDEvent *IOHIDEventCreateDeviceOrientationEventWithUsage()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 10, v2, v3);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 8) = 1;
    *(eventData + 4) = v0;
  }

  return result;
}

void IOHIDEventCreatePolarOrientationEvent()
{
  OUTLINED_FUNCTION_2_5();
  if (IOHIDEventCreate(v0, 10, v1, v2))
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_13(v3);
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
  }
}

void IOHIDEventCreateQuaternionOrientationEvent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = IOHIDEventCreate(a1, 10, a2, a3);
  if (v7)
  {
    eventData = v7->_event.eventData;
    *(eventData + 4) = vcvtd_n_s64_f64(a4, 0x10uLL);
    *(eventData + 5) = vcvtd_n_s64_f64(a5, 0x10uLL);
    OUTLINED_FUNCTION_14();
    v9[6] = v10;
    v9[7] = v11;
    v9[8] = 3;
  }
}

HIDEvent *__IOHIDEventCreateMotionEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_18();
  result = IOHIDEventCreate(v12, v13, v14, v15);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 4) = vcvtd_n_s64_f64(v8, 0x10uLL);
    *(eventData + 5) = vcvtd_n_s64_f64(v7, 0x10uLL);
    *(eventData + 6) = vcvtd_n_s64_f64(v6, 0x10uLL);
    *(eventData + 7) = a4;
    *(eventData + 8) = a5;
    *(eventData + 9) = a6;
  }

  return result;
}

HIDEvent *IOHIDEventCreateAmbientLightSensorEvent()
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v1, 12, v2, v3);
  if (result)
  {
    *(result->_event.eventData + 4) = v0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateProximtyLevelEvent()
{
  OUTLINED_FUNCTION_20();
  result = IOHIDEventCreate(v3, 14, v4, v2 | 1u);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 8) = v1;
    *(eventData + 9) = 0;
    *(eventData + 5) = v0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateTouchSensitiveButtonEvent(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v12, 42, v13, v14);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 8) = v8;
    *(eventData + 9) = v7;
    *(eventData + 3) = a1;
    *(eventData + 4) = a2;
    *(eventData + 40) = a7 != 0;
    v17 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(eventData + 3) = v17;
    *(eventData + 4) = v17;
    *(eventData + 11) = 0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateTouchSensitiveButtonEventWithRadius(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  result = IOHIDEventCreate(a1, 42, a2, a7);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 6) = a8;
    *(eventData + 7) = a9;
    *(eventData + 3) = a10;
    *(eventData + 4) = a11;
    *(eventData + 8) = a12;
    *(eventData + 9) = a13;
    *(eventData + 11) = a5;
    *(eventData + 8) = a3;
    *(eventData + 9) = a4;
    *(eventData + 40) = a6 != 0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateSwipeEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 16, v2, v3);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 7) = v0;
    *(eventData + 2) = 0;
    *(eventData + 4) = 0;
  }

  return result;
}

void __IOHIDEventCreateSwipeEventOfTypeWithFlavor()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v10 = IOHIDEventCreate(v6, v7, v8, v9);
  if (v10)
  {
    eventData = v10->_event.eventData;
    *(eventData + 7) = v5;
    *(eventData + 16) = v3;
    *(eventData + 17) = v1;
    OUTLINED_FUNCTION_17();
    if (v15)
    {
      v13 = v14;
    }

    *(v12 + 36) = v13;
    OUTLINED_FUNCTION_14();
    *(v16 + 16) = v17;
    *(v16 + 20) = v18;
  }
}

HIDEvent *IOHIDEventCreateProgressEvent(double a1)
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v3, 18, v4, v5);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 4) = v1;
    *(eventData + 5) = a1;
  }

  return result;
}

void IOHIDEventCreateBiometricEvent()
{
  OUTLINED_FUNCTION_3_2();
  if (IOHIDEventCreate(v1, 29, v2, v3))
  {
    OUTLINED_FUNCTION_16();
    if (v7)
    {
      v5 = v6;
    }

    *(v4 + 16) = v0;
    *(v4 + 20) = v5;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
  }
}

void IOHIDEventCreateAtmosphericPressureEvent(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (IOHIDEventCreate(a1, 31, a2, a4 | 1u))
  {
    OUTLINED_FUNCTION_6();
    if (v8)
    {
      v5 = v7;
    }

    *(v6 + 16) = v5;
    *(v6 + 20) = a3;
  }
}

HIDEvent *IOHIDEventCreateSymbolicHotKeyEvent()
{
  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    v5 = v3 | 0x10001u;
  }

  else
  {
    v5 = (v3 & 0xFFFEFFFE) + 1;
  }

  result = IOHIDEventCreate(v1, 24, v2, v5);
  if (result)
  {
    *(result->_event.eventData + 4) = v0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateLEDEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v9, 26, v10, v8 | 1u);
  if (result)
  {
    if (a5)
    {
      v12 = v6 == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = 1 << (v5 - 1);
    eventData = result->_event.eventData;
    if (!v12)
    {
      v13 = v6;
    }

    *(eventData + 4) = v13;
    *(eventData + 20) = v5;
    *(eventData + 6) = a5;
  }

  return result;
}

HIDEvent *IOHIDEventCreateForceEvent(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  result = IOHIDEventCreate(a1, 32, a2, a5);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 4) = a3;
    *(eventData + 5) = vcvtd_n_s64_f64(a6, 0x10uLL);
    *(eventData + 6) = a4;
    *(eventData + 7) = vcvtd_n_s64_f64(a7, 0x10uLL);
  }

  return result;
}

void IOHIDEventCreateMotionActivtyEvent()
{
  OUTLINED_FUNCTION_5_0();
  if (IOHIDEventCreate(v1, 33, v2, v3))
  {
    OUTLINED_FUNCTION_6();
    if (v7)
    {
      v4 = v6;
    }

    *(v5 + 16) = v0;
    *(v5 + 20) = v4;
  }
}

void IOHIDEventCreateMotionGestureEvent()
{
  OUTLINED_FUNCTION_5_0();
  if (IOHIDEventCreate(v1, 34, v2, v3))
  {
    OUTLINED_FUNCTION_6();
    if (v7)
    {
      v4 = v6;
    }

    *(v5 + 16) = v0;
    *(v5 + 20) = v4;
  }
}

HIDEvent *IOHIDEventCreateGameControllerEvent(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, unsigned int a20)
{
  result = IOHIDEventCreate(a1, 35, a2, a20);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 4) = a3;
    *(eventData + 5) = a4;
    *(eventData + 6) = a5;
    *(eventData + 7) = a6;
    *(eventData + 8) = a7;
    *(eventData + 9) = a8;
    *(eventData + 10) = a9;
    *(eventData + 11) = a10;
    *(eventData + 12) = a11;
    *(eventData + 13) = a12;
    *(eventData + 14) = a13;
    *(eventData + 15) = a14;
    *(eventData + 16) = a15;
    *(eventData + 17) = a16;
    *(eventData + 18) = a17;
    *(eventData + 19) = a18;
    *(eventData + 20) = a19;
  }

  return result;
}

HIDEvent *IOHIDEventCreateGenericGestureEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 39, v2, v3);
  if (result)
  {
    *(result->_event.eventData + 4) = v0;
  }

  return result;
}

HIDEvent *IOHIDEventCreateForceStageEvent(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_20();
  result = IOHIDEventCreate(v12, 41, v13, v14);
  if (result)
  {
    eventData = result->_event.eventData;
    *(eventData + 4) = v6;
    *(eventData + 20) = v5;
    *(eventData + 3) = a1;
    *(eventData + 4) = a2;
    *(eventData + 5) = a3;
    *(eventData + 6) = a4;
    *(eventData + 7) = a5;
  }

  return result;
}

HIDEvent *IOHIDEventCreateHeartRateEvent(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = IOHIDEventCreate(a1, 43, a2, a4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_15();
    if (v6)
    {
      *(*(v6 + 12) + 16) = a3;
    }

    v7 = OUTLINED_FUNCTION_15();
    if (v7)
    {
      *(*(v7 + 12) + 24) = 0x3FF0000000000000;
    }

    v8 = OUTLINED_FUNCTION_15();
    if (v8)
    {
      *(*(v8 + 12) + 32) = 0;
    }

    v9 = OUTLINED_FUNCTION_15();
    if (v9)
    {
      *(*(v9 + 12) + 36) = 0;
    }
  }

  return v5;
}

void *IOHIDEventRemoveEvent(void *result, void *a2)
{
  if (a2)
  {
    if (result[9])
    {
      v3 = a2[10];
      if (v3)
      {
        v4 = 0;
        v5 = a2[10];
        do
        {
          v6 = v5;
          if (v5 == result)
          {
            v4 = v5;
          }

          v5 = v5[10];
        }

        while (v5);
        if (v4)
        {
          v7 = *(v3 + 72);
          v9.length = CFArrayGetCount(v7);
          v9.location = 0;
          result = CFArrayGetFirstIndexOfValue(v7, v9, a2);
          if (result != -1)
          {
            a2[10] = 0;
            CFArrayRemoveValueAtIndex(*(v3 + 72), result);

            return __IOHIDEventFixTypeEventMask(v6);
          }
        }
      }
    }
  }

  return result;
}

__CFData *IOHIDEventCreateData(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26();
  Length = __IOHIDEventGetLength(v4, 1);
  if (!Length)
  {
    return 0;
  }

  v6 = Length + *(v2 + 88);
  Mutable = CFDataCreateMutable(v3, v6 + 28);
  v8 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v6 + 28);
    MutableBytePtr = CFDataGetMutableBytePtr(v8);
    v11 = 0;
    __IOHIDEventReadBytesHelper(v2, MutableBytePtr, v6 + 28, &v11, 1);
  }

  return v8;
}

uint64_t IOHIDEventGetDataLength(uint64_t a1)
{
  result = __IOHIDEventGetLength(a1, 1);
  if (result)
  {
    result += *(a1 + 88) + 28;
  }

  return result;
}

void __IOHIDEventTypeDescriptorTranslation()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_22(v2);
  v4 = OUTLINED_FUNCTION_10();
  if (v3)
  {
    v4 = *(*(v3 + 96) + 16);
  }

  v17 = v4;
  v5 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v5, v6, v7, "X:", *&v17);
  v8 = OUTLINED_FUNCTION_22(v0);
  if (v8)
  {
    v1 = *(*(v8 + 12) + 24);
  }

  v9 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v9, v10, v11, "Y:", v1);
  v12 = OUTLINED_FUNCTION_22(v0);
  if (v12)
  {
    v13 = *(*(v12 + 12) + 32);
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v14 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v14, v15, v16, "Z:", v18);
}

void __IOHIDEventTypeDescriptorDigitizer()
{
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 12);
  EventWithOptions = IOHIDEventGetEventWithOptions(v2, 11, 4026531840);
  if (EventWithOptions)
  {
    v5 = (*(*(EventWithOptions + 12) + 8) & 2) == 0;
  }

  else
  {
    v5 = 1;
  }

  v91 = (v3[2] >> 19) & 1;
  v6 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v6, v7, v8, "DisplayIntegrated:", v91);
  v9 = "Stylus";
  switch(v3[11])
  {
    case 0:
      break;
    case 1:
      v9 = "Puck";
      break;
    case 2:
      if (!v5)
      {
        goto LABEL_8;
      }

      v9 = "Finger";
      break;
    case 3:
LABEL_8:
      v9 = "Hand";
      break;
    default:
      v9 = "Unknown";
      break;
  }

  v92 = v9;
  v10 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v10, v11, v12, "TransducerType:", v92);
  v93 = v3[10];
  v13 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v13, v14, @"%-20.20s %d\n", "TransducerIndex:", v93);
  v94 = v3[12];
  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, @"%-20.20s %d\n", "Identity:", v94);
  v95 = v3[13];
  v17 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v17, v18, @"%-20.20s %d\n", "EventMask:", v95);
  v19 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v19, v20, v21, "Events:");
  v24 = v3[13];
  if (v24)
  {
    OUTLINED_FUNCTION_12_0(v22, v23, @"Range ");
    v24 = v3[13];
    if ((v24 & 2) == 0)
    {
LABEL_12:
      if ((v24 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_54;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0(v22, v23, @"Touch ");
  v24 = v3[13];
  if ((v24 & 4) == 0)
  {
LABEL_13:
    if ((v24 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Position ");
  v24 = v3[13];
  if ((v24 & 8) == 0)
  {
LABEL_14:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Stop ");
  v24 = v3[13];
  if ((v24 & 0x10) == 0)
  {
LABEL_15:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Peak ");
  v24 = v3[13];
  if ((v24 & 0x20) == 0)
  {
LABEL_16:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Identity ");
  v24 = v3[13];
  if ((v24 & 0x40) == 0)
  {
LABEL_17:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Attribute ");
  v24 = v3[13];
  if ((v24 & 0x80) == 0)
  {
LABEL_18:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Cancel ");
  v24 = v3[13];
  if ((v24 & 0x100) == 0)
  {
LABEL_19:
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Start ");
  v24 = v3[13];
  if ((v24 & 0x200) == 0)
  {
LABEL_20:
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Resting ");
  v24 = v3[13];
  if ((v24 & 0x400) == 0)
  {
LABEL_21:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromEdgeFlat ");
  v24 = v3[13];
  if ((v24 & 0x800) == 0)
  {
LABEL_22:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromEdgeTip ");
  v24 = v3[13];
  if ((v24 & 0x1000) == 0)
  {
LABEL_23:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromCorner ");
  v24 = v3[13];
  if ((v24 & 0x2000) == 0)
  {
LABEL_24:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipePending ");
  v24 = v3[13];
  if ((v24 & 0x4000) == 0)
  {
LABEL_25:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  OUTLINED_FUNCTION_12_0(v22, v23, @"ForcePending ");
  v24 = v3[13];
  if ((v24 & 0x8000) == 0)
  {
LABEL_26:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  OUTLINED_FUNCTION_12_0(v22, v23, @"ForceActive ");
  v24 = v3[13];
  if ((v24 & 0x20000) == 0)
  {
LABEL_27:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Tap ");
  v24 = v3[13];
  if ((v24 & 0x40000) == 0)
  {
LABEL_28:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeLocked ");
  v24 = v3[13];
  if ((v24 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeUp ");
  v24 = v3[13];
  if ((v24 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeDown ");
  v24 = v3[13];
  if ((v24 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeLeft ");
  v24 = v3[13];
  if ((v24 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeRight ");
  v24 = v3[13];
  if ((v24 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedAltitude ");
  v24 = v3[13];
  if ((v24 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedAzimuth ");
  if ((v3[13] & 0x40000000) != 0)
  {
LABEL_35:
    OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedPressure ");
  }

LABEL_36:
  v25 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v25, v26, v27);
  v96 = v3[15];
  v28 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v28, v29, @"%-20.20s %d\n", "ButtonMask:", v96);
  v97 = HIWORD(v3[2]) & 1;
  v30 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v30, v31, @"%-20.20s %d\n", "Range:", v97);
  v98 = (v3[2] >> 17) & 1;
  v32 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v32, v33, @"%-20.20s %d\n", "Touch:", v98);
  OUTLINED_FUNCTION_8_0();
  v35 = OUTLINED_FUNCTION_10();
  if (v34)
  {
    v35 = *(*(v34 + 96) + 64);
  }

  v99 = v35;
  v36 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v36, v37, v38, "Pressure:", *&v99);
  v39 = OUTLINED_FUNCTION_8_0();
  if (v39)
  {
    v1 = *(*(v39 + 12) + 72);
  }

  v40 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v40, v41, v42, "AuxiliaryPressure:", v1);
  OUTLINED_FUNCTION_8_0();
  v44 = OUTLINED_FUNCTION_10();
  if (v43)
  {
    v44 = *(*(v43 + 96) + 80);
  }

  v100 = v44;
  v45 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v45, v46, v47, "Twist:", *&v100);
  v101 = v3[36];
  v48 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v48, v49, v50, "GenerationCount:", v101);
  v102 = v3[37];
  v51 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v51, v52, @"%-20.20s %08x\n", "WillUpdateMask:", v102);
  v103 = v3[38];
  v53 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v53, v54, @"%-20.20s %08x\n", "DidUpdateMask:", v103);
  v55 = OUTLINED_FUNCTION_8_0();
  if (v55)
  {
    v1 = *(*(v55 + 12) + 16);
  }

  v56 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v56, v57, v58, "X:", v1);
  OUTLINED_FUNCTION_8_0();
  v60 = OUTLINED_FUNCTION_10();
  if (v59)
  {
    v60 = *(*(v59 + 96) + 24);
  }

  v104 = v60;
  v61 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v61, v62, v63, "Y:", *&v104);
  v64 = OUTLINED_FUNCTION_8_0();
  if (v64)
  {
    v1 = *(*(v64 + 12) + 32);
  }

  v65 = 720913;
  v66 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v66, v67, v68, "Z:", v1);
  v69 = v3[22];
  if (v69)
  {
    if (v69 == 1)
    {
      v75 = 720911;
      v70 = 720912;
      v71 = 720916;
      v112 = 720914;
      v113 = 720917;
      v114 = "MinorRadius:";
      v72 = "MajorRadius:";
      v111 = "Density:";
      v73 = "Quality:";
      v74 = "Azimuth:";
      v76 = "Altitude:";
    }

    else
    {
      if (v69 != 2)
      {
        return;
      }

      v70 = 720914;
      v71 = 720917;
      v112 = 720916;
      v113 = 720922;
      v65 = 720915;
      v114 = "Accuracy:";
      v72 = "MinorRadius:";
      v111 = "MajorRadius:";
      v73 = "Irregularity:";
      v74 = "Density:";
      v75 = 720913;
      v76 = "Quality:";
    }

    v105 = IOHIDEventGetDoubleValueWithOptions(v0, v75, 4026531840).n64_u64[0];
    v77 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v77, v78, @"%-20.20s %f\n", v76, v105);
    v106 = IOHIDEventGetDoubleValueWithOptions(v0, v70, 4026531840).n64_u64[0];
    v79 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v79, v80, @"%-20.20s %f\n", v74, v106);
    v107 = IOHIDEventGetDoubleValueWithOptions(v0, v65, 4026531840).n64_u64[0];
    v81 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v81, v82, @"%-20.20s %f\n", v73, v107);
    v108 = IOHIDEventGetDoubleValueWithOptions(v0, v112, 4026531840).n64_u64[0];
    v83 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v83, v84, @"%-20.20s %f\n", v111, v108);
    v85 = v114;
    v86 = v113;
  }

  else
  {
    v71 = 720909;
    v86 = 720910;
    v85 = "TiltY:";
    v72 = "TiltX:";
  }

  v109 = IOHIDEventGetDoubleValueWithOptions(v0, v71, 4026531840).n64_u64[0];
  v87 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v87, v88, @"%-20.20s %f\n", v72, v109);
  v110 = IOHIDEventGetDoubleValueWithOptions(v0, v86, 4026531840).n64_u64[0];
  v89 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v89, v90, @"%-20.20s %f\n", v85, v110);
}

void __IOHIDEventTypeDescriptorPointer()
{
  OUTLINED_FUNCTION_9();
  _IOHIDStringAppendIndendationAndFormat(v3, v0, @"%-20.20s 0x%08x\n", "Button Mask:", *(*(v2 + 96) + 40));
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_10();
  if (v4)
  {
    v5 = *(*(v4 + 96) + 16);
  }

  v18 = v5;
  v6 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v6, v7, v8, "X:", *&v18);
  v9 = OUTLINED_FUNCTION_21();
  if (v9)
  {
    v1 = *(*(v9 + 12) + 24);
  }

  v10 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v10, v11, v12, "Y:", v1);
  v13 = OUTLINED_FUNCTION_21();
  if (v13)
  {
    v14 = *(*(v13 + 12) + 32);
  }

  else
  {
    v14 = 0;
  }

  v19 = v14;
  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "Z:", v19);
}

void __IOHIDEventTypeDescriptorMultiAxisPointer()
{
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 96);
  _IOHIDStringAppendIndendationAndFormat(v4, v0, @"%-20.20s 0x%08x\n", "Button Mask:", *(v3 + 28));
  OUTLINED_FUNCTION_7();
  v6 = OUTLINED_FUNCTION_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_7(*(*(v5 + 96) + 16));
    if (v8)
    {
      v6 = v7;
    }
  }

  v45 = v6;
  v9 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v9, v10, v11, "X:", *&v45);
  v12 = OUTLINED_FUNCTION_7();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_0_7(*(*(v12 + 12) + 20));
    if (v8)
    {
      v1 = v13;
    }

    else
    {
      v1 = v14;
    }
  }

  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "Y:", *&v1);
  OUTLINED_FUNCTION_7();
  v19 = OUTLINED_FUNCTION_10();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_0_7(*(*(v18 + 96) + 24));
    if (v8)
    {
      v19 = v20;
    }
  }

  v46 = v19;
  v21 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v21, v22, v23, "Z:", *&v46);
  v24 = OUTLINED_FUNCTION_7();
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_0_7(*(*(v24 + 12) + 32));
    if (v8)
    {
      v1 = v25;
    }

    else
    {
      v1 = v26;
    }
  }

  v27 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v27, v28, v29, "Rx:", *&v1);
  OUTLINED_FUNCTION_7();
  v31 = OUTLINED_FUNCTION_10();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_0_7(*(*(v30 + 96) + 36));
    if (v8)
    {
      v31 = v32;
    }
  }

  v47 = v31;
  v33 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v33, v34, v35, "Ry:", *&v47);
  v36 = OUTLINED_FUNCTION_7();
  if (v36)
  {
    v38 = OUTLINED_FUNCTION_0_7(*(*(v36 + 12) + 40));
    if (v8)
    {
      v1 = v37;
    }

    else
    {
      v1 = v38;
    }
  }

  v39 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v39, v40, v41, "Rz:", *&v1);
  v48 = HIWORD(*(v3 + 8)) & 1;
  v42 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v42, v43, v44, "Repeat:", v48);
}

void IOHIDEventGetPolicy_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "unexpected policy request %llu", &v2, 0xCu);
}

__CFDictionary *__IOAVClassMatching(uint64_t a1, __CFString *a2, unsigned int a3, int a4)
{
  valuePtr = a4;
  v8 = *MEMORY[0x1E695E480];
  v9 = OUTLINED_FUNCTION_0_9();
  Mutable = CFDictionaryCreateMutable(v9, v10, v11, v12);
  if (!Mutable)
  {
    return 0;
  }

  v14 = Mutable;
  if (a3 <= 1)
  {
    v15 = IOAVLocationString(a3);
    v16 = CFStringCreateWithCString(v8, v15, 0x8000100u);
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    CFDictionarySetValue(v14, @"Location", v16);
    CFRelease(v17);
  }

  if (a4 != -1)
  {
    v18 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    CFDictionarySetValue(v14, @"Unit", v18);
    CFRelease(v19);
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v20 = CFStringFind(a2, @":", 0);
  if (v20.location == -1 || v20.location + v20.length >= CFStringGetLength(a2))
  {
    v21 = OUTLINED_FUNCTION_0_9();
    a2 = CFStringCreateWithFormat(v21, v22, v23, "IODeviceTree", a2);
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_21:
    v40 = 0;
    goto LABEL_19;
  }

  CFRetain(a2);
LABEL_13:
  v24 = OUTLINED_FUNCTION_0_9();
  v28 = CFDictionaryCreateMutable(v24, v25, v26, v27);
  if (!v28)
  {
LABEL_22:
    v39 = v14;
    v14 = 0;
    goto LABEL_18;
  }

  v29 = v28;
  CFDictionarySetValue(v28, @"IOPathMatch", a2);
  CFRelease(a2);
  CFDictionarySetValue(v14, @"IOParentMatch", v29);
  CFRelease(v29);
LABEL_15:
  v30 = OUTLINED_FUNCTION_0_9();
  v34 = CFDictionaryCreateMutable(v30, v31, v32, v33);
  if (!v34)
  {
    goto LABEL_21;
  }

  a2 = v34;
  v35 = OUTLINED_FUNCTION_0_9();
  v38 = CFStringCreateWithFormat(v35, v36, v37, a1, "UserInterfaceSupported");
  if (!v38)
  {
    goto LABEL_22;
  }

  v39 = v38;
  CFDictionarySetValue(a2, v38, *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v14, @"IOPropertyMatch", a2);
LABEL_18:
  v40 = v14;
  CFRelease(a2);
  v14 = v39;
LABEL_19:
  CFRelease(v14);
  return v40;
}

uint64_t __IOAVCopyFirstMatchingIOAVObjectOfType(uint64_t a1, uint64_t (*a2)(void, uint64_t), __CFString *a3, unsigned int a4, int a5)
{
  v6 = __IOAVClassMatching(a1, a3, a4, a5);
  MatchingService = IOServiceGetMatchingService(0, v6);
  if (!MatchingService)
  {
    return 0;
  }

  v8 = MatchingService;
  v9 = a2(*MEMORY[0x1E695E480], MatchingService);
  IOObjectRelease(v8);
  return v9;
}

uint64_t IOHIDEventSystemCreate(const __CFAllocator *a1)
{
  v107 = *MEMORY[0x1E69E9840];
  keys = 0;
  mach_absolute_time();
  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v2, v3, v4, v5, v6, v7);
  v10 = _IOHIDLog(v8, v9);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemCreate", &unk_19724ED59, buf, 2u);
  }

  v11 = IOHIDPreferencesCopyDomain(@"allocator", @"com.apple.iohid");
  if (v11)
  {
    v12 = v11;
    if (CFEqual(v11, @"default"))
    {
      a1 = *MEMORY[0x1E695E480];
    }

    CFRelease(v12);
  }

  v13 = *MEMORY[0x1E69E99F8];
  *buf = 0;
  if (!bootstrap_look_up2())
  {
    v65 = MEMORY[0x1E69E9A60];
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *buf);
    v66 = bootstrap_check_in(v13, "com.apple.iohideventsystem", buf);
    if (v66)
    {
      v68 = _IOHIDLog(v66, v67);
      Instance = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
      if (Instance)
      {
        *buf = 67109120;
        LODWORD(v106) = 0;
        _os_log_impl(&dword_197195000, v68, OS_LOG_TYPE_DEFAULT, "__bootstrap_status:0x%x", buf, 8u);
      }

      v64 = 0;
      v16 = 0;
      goto LABEL_43;
    }

    mach_port_mod_refs(*v65, *buf, 1u, -1);
  }

  if (!_MergedGlobals_2)
  {
    pthread_once(&__systemTypeInit, __IOHIDEventSystemRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v16 = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  bzero((Instance + 16), 0x1B8uLL);
  *(v16 + 160) = 0;
  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  Instance = hid_dispatch_queue_create("HID - IOService Enumeration", v17, qword_1ED446AC0, __IOHIDSystemEnumerationQueueWillExecute, __IOHIDSystemEnumerationQueueDidExecute, v16);
  *(v16 + 144) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v18 = OUTLINED_FUNCTION_2_6();
  Instance = CFDictionaryCreateMutable(v18, v19, v20, v21);
  *(v16 + 16) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v22 = OUTLINED_FUNCTION_2_6();
  Instance = CFDictionaryCreateMutable(v22, v23, v24, v25);
  *(v16 + 24) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v26 = CFGetAllocator(v16);
  Instance = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v16 + 176) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  *v100 = xmmword_1F0B910A0;
  v101 = *&off_1F0B910B0;
  *v102 = xmmword_1F0B910C0;
  v27 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v27, v28, v29);
  *(v16 + 40) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v30 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v30, v31, v32);
  *(v16 + 48) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v33 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v33, v34, v35);
  *(v16 + 56) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v36 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v36, v37, v38);
  *(v16 + 64) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v39 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v39, v40, v41);
  *(v16 + 72) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v42 = OUTLINED_FUNCTION_2_6();
  Instance = CFArrayCreateMutable(v42, v43, v44);
  *(v16 + 80) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v45 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v45, v46, v47);
  *(v16 + 424) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v48 = OUTLINED_FUNCTION_2_6();
  Instance = CFSetCreateMutable(v48, v49, v50);
  *(v16 + 432) = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  v51 = OUTLINED_FUNCTION_2_6();
  v52 = IOHIDSessionCreate(v51);
  *(v16 + 128) = v52;
  if (!v52)
  {
    v69 = _IOHIDLog(0, v53);
    Instance = OUTLINED_FUNCTION_5_1(v69);
    if (Instance)
    {
      *buf = 0;
      v75 = "IOHIDSessionCreate";
LABEL_41:
      OUTLINED_FUNCTION_4_1(&dword_197195000, v15, v70, v75, v71, v72, v73, v74, v100[0], v100[1], v101, *(&v101 + 1), v102[0], v102[1], v103, keys);
    }

LABEL_42:
    v64 = 0;
LABEL_43:
    v57 = 0;
    v56 = 0;
    goto LABEL_44;
  }

  v54 = IOHIDEventServerCreate(a1, v16);
  *(v16 + 152) = v54;
  if (!v54)
  {
    v76 = _IOHIDLog(0, v55);
    Instance = OUTLINED_FUNCTION_5_1(v76);
    if (Instance)
    {
      *buf = 0;
      v75 = "IOHIDEventServerCreate";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  __IOHIDEventSystem_debug = v16;
  Instance = IOServiceMatching("IOService");
  v56 = Instance;
  if (!Instance)
  {
    v64 = 0;
    v57 = 0;
    goto LABEL_44;
  }

  keys = @"HIDServiceSupport";
  Instance = CFDictionaryCreate(a1, &keys, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = Instance;
  if (!Instance)
  {
    goto LABEL_66;
  }

  CFDictionarySetValue(v56, @"IOPropertyMatch", Instance);
  v58 = IONotificationPortCreate(0);
  if (!v58)
  {
LABEL_64:
    *(v16 + 96) = 0;
    v94 = _IOHIDLog(v58, v59);
    Instance = OUTLINED_FUNCTION_5_1(v94);
    if (Instance)
    {
      *buf = 0;
      OUTLINED_FUNCTION_4_1(&dword_197195000, v15, v95, "__IOHIDEventSystemCreateNotification", v96, v97, v98, v99, v100[0], v100[1], v101, *(&v101 + 1), v102[0], v102[1], v103, keys);
    }

LABEL_66:
    v64 = 0;
    goto LABEL_44;
  }

  v60 = v58;
  IONotificationPortSetDispatchQueue(v58, *(v16 + 144));
  CFRetain(v56);
  if (IOServiceAddMatchingNotification(v60, "IOServiceFirstMatch", v56, __IOHIDEventSystemServicePublished, v16, (v16 + 168)))
  {
    IONotificationPortDestroy(v60);
    goto LABEL_64;
  }

  __IOHIDEventSystemServicePublished(v16, *(v16 + 168));
  *(v16 + 96) = v60;
  v61 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v16 + 144));
  *(v16 + 440) = v61;
  if (v61)
  {
    dispatch_source_set_event_handler(v61, &__block_literal_global_10);
    v62 = *(v16 + 440);
    v63 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v16 + 440));
  }

  Instance = CFRetain(v16);
  v64 = v16;
LABEL_44:
  v77 = _IOHIDLog(Instance, v15);
  if (os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v77, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemCreate", &unk_19724ED59, buf, 2u);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v78, v79, v80, v81, v82, v83);
  v84 = IOHIDAnalyticsEventCreate(@"com.apple.hid.analytics.event-system", 0);
  qword_1ED446AC8 = v84;
  if (v84)
  {
    IOHIDAnalyticsEventAddField();
    IOHIDAnalyticsEventAddField();
    v84 = IOHIDAnalyticsEventActivate();
  }

  v86 = _IOHIDLog(v84, v85);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    v87 = mach_absolute_time();
    v88 = OUTLINED_FUNCTION_6_0(v87);
    *buf = 134217984;
    v106 = v88;
    _os_log_impl(&dword_197195000, v86, OS_LOG_TYPE_DEFAULT, "IOHIDEventSystemCreate:%lldus", buf, 0xCu);
  }

  v89 = mach_absolute_time();
  OUTLINED_FUNCTION_6_0(v89);
  v91 = qword_1ED446AC8;
  if (qword_1ED446AC8)
  {
    v91 = IOHIDAnalyticsEventSetIntegerValueForField();
  }

  if (!v64)
  {
    v92 = _IOHIDLog(v91, v90);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_197195000, v92, OS_LOG_TYPE_FAULT, "IOHIDEventSystemCreate error", buf, 2u);
    }
  }

  return v64;
}

uint64_t IOHIDEventSystemOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v51 = *MEMORY[0x1E69E9840];
  mach_absolute_time();
  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v10, v11, v12, v13, v14, v15);
  v18 = _IOHIDLog(v16, v17);
  if (os_signpost_enabled(v18))
  {
    LOWORD(v49) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemOpen", &unk_19724ED59, &v49, 2u);
  }

  v19 = *(a1 + 128);
  v20 = *(a1 + 152);
  *(a1 + 448) = a5 & 1;
  v21 = IOHIDSessionOpen(v19, a1, __IOHIDEventSystemEventCallback, 0);
  v23 = v21;
  if (v21)
  {
    v24 = *(a1 + 136);
    if (v24 || (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), OUTLINED_FUNCTION_0_10(), v24 = hid_dispatch_queue_create(v25, v26, v27, v28, v29, v30), (*(a1 + 136) = v24) != 0))
    {
      IOHIDEventServerScheduleWithDispatchQueue(v20, v24);
    }

    else
    {
      v48 = _IOHIDLog(0, 0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v49) = 0;
        _os_log_error_impl(&dword_197195000, v48, OS_LOG_TYPE_ERROR, "Failed to create server dipatch queue", &v49, 2u);
      }
    }

    os_unfair_recursive_lock_lock_with_options();
    *(a1 + 104) = a3;
    *(a1 + 112) = a2;
    *(a1 + 120) = a4;
    v21 = os_unfair_recursive_lock_unlock();
  }

  v31 = _IOHIDLog(v21, v22);
  if (os_signpost_enabled(v31))
  {
    LOWORD(v49) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemOpen", &unk_19724ED59, &v49, 2u);
  }

  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v32, v33, v34, v35, v36, v37);
  v40 = _IOHIDLog(v38, v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = mach_absolute_time();
    v42 = OUTLINED_FUNCTION_6_0(v41);
    v49 = 134217984;
    v50 = v42;
    _os_log_impl(&dword_197195000, v40, OS_LOG_TYPE_DEFAULT, "IOHIDEventSystemOpen:%lldus", &v49, 0xCu);
  }

  v43 = mach_absolute_time();
  OUTLINED_FUNCTION_6_0(v43);
  v45 = qword_1ED446AC8;
  if (qword_1ED446AC8)
  {
    v45 = IOHIDAnalyticsEventSetIntegerValueForField();
  }

  if (!v23)
  {
    v46 = _IOHIDLog(v45, v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v49) = 0;
      _os_log_fault_impl(&dword_197195000, v46, OS_LOG_TYPE_FAULT, "IOHIDEventSystemOpen error", &v49, 2u);
    }
  }

  return v23;
}

void _IOHIDEventSystemRegisterEventFilter(uint64_t a1, CFSetRef *a2)
{
  _IOHIDEventSystemUnregisterEventFilter(a1, a2);
  os_unfair_recursive_lock_lock_with_options();
  CFArrayAppendValue(*(a1 + 80), a2);
  v4 = *(a1 + 80);
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  CFArraySortValues(v4, v8, _IOHIDEventSystemConnectionEventFilterCompare, 0);
  os_unfair_recursive_lock_unlock();
  v5 = _IOHIDEventSystemConnectionCopyServices(a2);
  if (v5)
  {
    v6 = v5;
    CFSetApplyFunction(v5, __IOHIDEventSystemFilterEventServiceRegister, a2);

    CFRelease(v6);
  }
}

__CFDictionary *_IOHIDEventSystemCopyRecord(CFTypeRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 0;
    v4 = CFGetAllocator(a1);
    v5 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, @"Type", v5);
      CFRelease(v6);
      v7 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(Mutable, @"Services", v8);
        os_unfair_recursive_lock_lock_with_options();
        v10 = CFGetAllocator(a1[2]);
        Copy = CFDictionaryCreateCopy(v10, a1[2]);
        os_unfair_recursive_lock_unlock();
        if (Copy)
        {
          CFDictionaryApplyFunction(Copy, __CopyRecordForCientFunction, v9);
          CFRelease(Copy);
        }

        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

const __CFNumber *_IOHIDEventSystemClientServiceConformsTo(uint64_t a1, IOHIDServiceClientRef service, uint64_t a3, uint64_t a4)
{
  result = IOHIDServiceClientGetRegistryID(service);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return IOHIDEventSystemClientRegistryIDConformsTo(a1, valuePtr);
  }

  return result;
}

uint64_t IOHIDEventSystemClientRegistryIDConformsTo(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = _IOHIDCreateBinaryData(v3, v4);
    if (!v6)
    {
      v2 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    os_unfair_recursive_lock_lock_with_options();
    CFDataGetBytePtr(v7);
    Length = CFDataGetLength(v7);
    v16 = OUTLINED_FUNCTION_10_0(Length, v9, v10, v11, v12, v13, v14, v15, v27, 0);
    v17 = v16;
    if (v16 == 268435459)
    {
      if (*(v2 + 384) || *(v2 + 400))
      {
        os_unfair_recursive_lock_unlock();
        goto LABEL_8;
      }

      __IOHIDEventSystemClientTerminationCallback(v16, v2, 0);
      CFDataGetBytePtr(v7);
      v18 = CFDataGetLength(v7);
      v17 = OUTLINED_FUNCTION_10_0(v18, v19, v20, v21, v22, v23, v24, v25, v28, SHIDWORD(v28));
    }

    os_unfair_recursive_lock_unlock();
    if (!v17)
    {
      v2 = HIDWORD(v28) != 0;
      goto LABEL_12;
    }

LABEL_8:
    v2 = 0;
LABEL_12:
    CFRelease(v7);
LABEL_13:
    CFRelease(v5);
  }

  return v2;
}

CFPropertyListRef _IOHIDEventSystemClientCopyPropertiesForService(uint64_t a1, IOHIDServiceClientRef service, const void *a3)
{
  v3 = 0;
  if (!a1 || !service || !a3)
  {
    return v3;
  }

  v6 = *MEMORY[0x1E695E480];
  RegistryID = IOHIDServiceClientGetRegistryID(service);
  v8 = _IOHIDCreateBinaryData(v6, RegistryID);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  v11 = _IOHIDCreateBinaryData(v6, a3);
  if (!v11)
  {
    CFRelease(v9);
    return 0;
  }

  v12 = v11;
  BytePtr = CFDataGetBytePtr(v11);
  v14 = CFDataGetLength(v12);
  os_unfair_recursive_lock_lock_with_options();
  v15 = OUTLINED_FUNCTION_13_0();
  v20 = io_hideventsystem_copy_properties_for_service(v15, v16, Length, BytePtr, v14, v17, v18, v19);
  v21 = v20;
  if (v20 == 268435459)
  {
    if (*(a1 + 384))
    {
      v21 = 268435459;
    }

    else
    {
      v21 = 268435459;
      if (!*(a1 + 400))
      {
        __IOHIDEventSystemClientTerminationCallback(v20, a1, 0);
        v22 = OUTLINED_FUNCTION_13_0();
        v21 = io_hideventsystem_copy_properties_for_service(v22, v23, Length, BytePtr, v14, v24, v25, v26);
      }
    }
  }

  os_unfair_recursive_lock_unlock();
  if (v21)
  {
    v3 = 0;
  }

  else
  {
    v3 = _IOHIDUnserializeAndVMDealloc(0, 0);
  }

  CFRelease(v9);
  CFRelease(v12);
  return v3;
}

CFIndex IOHIDEventSystemClientUnregisterResetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  result = __IOHIDEventSystemClientFindCallback(a1, a2, a3, a4);
  if (result != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 136), result);

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t _iohideventsystem_client_dispatch_event_filter(unsigned int a1, UInt8 *a2, unsigned int a3, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, _DWORD *a8)
{
  v26 = a7;
  v27 = a6;
  *a6 = 0;
  *a7 = 0;
  v13 = IOMIGMachPortCacheCopy(a1);
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    v16 = __kIOHIDEventSystemClientTypeID;
    if (!__kIOHIDEventSystemClientTypeID)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v16 = __kIOHIDEventSystemClientTypeID;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

    v17 = _IOHIDUnserializeAndVMDealloc(a2, a3);
    if (v17)
    {
      os_unfair_recursive_lock_lock_with_options();
      Value = CFDictionaryGetValue(*(v14 + 96), v17);
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      Value = 0;
    }

    TypeID = CFDataGetTypeID();
    v20 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
    if (!v20)
    {
LABEL_18:
      if (v17)
      {
        CFRelease(v17);
      }

LABEL_20:
      CFRelease(v14);
      return 0;
    }

    v21 = v20;
    v22 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v20);
    v23 = v22;
    if (a8 && v22)
    {
      if (IOHIDEventNeedsUngroupForLegacy(v22) && (*(v14 + 449) & 1) == 0)
      {
        v24 = _IOHIDEventSystemClientUngroupAndDispatchEventFilter(v14, Value, v23, &v27, &v26);
      }

      else
      {
        v24 = _IOHIDEventSystemClientDispatchEventFilter(v14, Value, v23);
      }

      *a8 = v24;
    }

    else if (!v22)
    {
      goto LABEL_17;
    }

    CFRelease(v23);
LABEL_17:
    CFRelease(v21);
    goto LABEL_18;
  }

  return 0;
}

uint64_t _iohideventsystem_client_dispatch_client_records_changed(unsigned int a1)
{
  v3 = IOMIGMachPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = v4[40];
      if (v6)
      {
        v6(v4[42], v4, v4[43]);
      }

      else
      {
        v7 = v4[41];
        if (v7)
        {
          (*(v7 + 16))(v7, v4[42], v4, v4[43]);
        }
      }

      os_unfair_recursive_lock_unlock();
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t _iohideventsystem_client_dispatch_service_records_changed(unsigned int a1)
{
  v3 = IOMIGMachPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = v4[44];
      if (v6)
      {
        v6(v4[46], v4, v4[47]);
      }

      else
      {
        v7 = v4[45];
        if (v7)
        {
          (*(v7 + 16))(v7, v4[46], v4, v4[47]);
        }
      }

      os_unfair_recursive_lock_unlock();
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t IOHIDVirtualServiceClientRemove(__IOHIDServiceClient *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  EventSystemClient = _IOHIDVirtuaServiceClientGetEventSystemClient(a1);
  RegistryID = IOHIDServiceClientGetRegistryID(a1);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  os_unfair_recursive_lock_lock_with_options();
  if (CFDictionaryContainsKey(*(EventSystemClient + 104), valuePtr))
  {
    v4 = io_hideventsystem_remove_virtual_service(*(EventSystemClient + 32), valuePtr);
    if (v4)
    {
      v5 = v4;
      v6 = _IOHIDLogCategory(13);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v10 = v5;
        _os_log_error_impl(&dword_197195000, v6, OS_LOG_TYPE_ERROR, "io_hideventsystem_remove_virtual_service:%x", buf, 8u);
      }
    }
  }

  _IOHIDVirtualServiceClientNotification(a1, 3, 0);
  CFDictionaryRemoveValue(*(EventSystemClient + 104), valuePtr);
  return os_unfair_recursive_lock_unlock();
}

uint64_t _iohideventsystem_client_refresh(unsigned int a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = IOMIGMachPortCacheCopy(a1);
  v24 = 0;
  v23 = 0;
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v4 + 96));
      if (Copy)
      {
        v8 = Copy;
        v9 = io_hideventsystem_do_client_refresh(*(v4 + 32), &v24, &v23, v7);
        v10 = _IOHIDLogCategory(13);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_INFO, "io_hideventsystem_do_client_refresh:0x%x", buf, 8u);
        }

        if (v9)
        {
          os_unfair_recursive_lock_unlock();
          v11 = v8;
LABEL_21:
          CFRelease(v11);
          return 0;
        }

        v12 = v24;
        v13 = v23;
        TypeID = CFArrayGetTypeID();
        v15 = _IOHIDUnserializeAndVMDeallocWithTypeID(v12, v13, TypeID);
        CFDictionaryRemoveAllValues(*(v4 + 96));
        v16 = _IOHIDLogCategory(13);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            Count = CFArrayGetCount(v15);
            v19 = CFDictionaryGetCount(v8);
            *buf = 134218240;
            *&buf[4] = Count;
            *&buf[12] = 2048;
            *&buf[14] = v19;
            _os_log_impl(&dword_197195000, v16, OS_LOG_TYPE_DEFAULT, "HID Event System Client refreshed with %ld services, cached matching had %ld services", buf, 0x16u);
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ____IOHIDEventSystemClientCacheServices_block_invoke;
          v26 = &__block_descriptor_tmp_132;
          v27 = v4;
          _IOHIDCFArrayApplyBlock(v15, buf);
        }

        else if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_197195000, v16, OS_LOG_TYPE_DEFAULT, "HID Event System Client refreshed but no services returned", buf, 2u);
        }

        CFDictionaryApplyFunction(v8, __IOHIDEventSystemClientServiceReplaceCallback, *(v4 + 96));
        v20 = CFGetAllocator(v4);
        v21 = CFDictionaryCreateCopy(v20, *(v4 + 96));
        os_unfair_recursive_lock_unlock();
        __IOHIDEventSystemClientHandleServiceCacheRefresh(v4, v8, v21);
        CFRelease(v8);
        if (v15)
        {
          CFRelease(v15);
        }

        if (v21)
        {
          v11 = v21;
          goto LABEL_21;
        }
      }

      else
      {
        os_unfair_recursive_lock_unlock();
      }
    }
  }

  return 0;
}

void __IOHIDEventSystemClientInitReplyPort_cold_1()
{
  v0 = _IOHIDLogCategory(13);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientInitReplyPort_cold_2()
{
  v0 = _IOHIDLogCategory(13);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientInitReplyPort_cold_3()
{
  v0 = _IOHIDLogCategory(13);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientTerminationCallback_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void IOHIDEventSystemClient_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __IOHIDEventSystemClientRefresh_cold_1(unsigned int *a1)
{
  xpc_strerror();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __IOHIDEventSystemClientRefresh_cold_2(kern_return_t a1)
{
  bootstrap_strerror(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __IOHIDEventSystemClientRefresh_cold_3(kern_return_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v2))
  {
    bootstrap_strerror(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __IOHIDEventSystemClientRefresh_cold_4(mach_error_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v2))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __IOHIDEventSystemClientRefresh_cold_6(mach_error_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v2))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __IOHIDEventSystemClientRefresh_cold_7()
{
  v0 = _IOHIDLogCategory(13);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_3()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_5()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_6()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void IOHIDVirtualServiceClientCreateWithCallbacks_cold_2()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void IOHIDVirtualServiceClientDispatchEvent_cold_2()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_2(uint64_t a1, const void *a2, char a3)
{
  v6 = OUTLINED_FUNCTION_11_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = a1;
    _os_log_error_impl(&dword_197195000, v6, OS_LOG_TYPE_ERROR, "HIDVS (id:%llx) client does not exist", &v8, 0xCu);
  }

  CFRelease(a2);
  return a3 & 1;
}

void _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_3()
{
  v0 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_2(_DWORD *a1)
{
  *a1 = -536870212;
  v1 = _IOHIDLogCategory(13);
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_4(_DWORD *a1)
{
  v1 = OUTLINED_FUNCTION_15_0(a1);
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

uint64_t _iohideventsystem_client_dispatch_virtual_service_notification_cold_2(uint64_t a1, char a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_12(v3))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return a2 & 1;
}

void _iohideventsystem_output_event_to_virtual_service_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _iohideventsystem_output_event_to_virtual_service_cold_2(_DWORD *a1)
{
  v1 = OUTLINED_FUNCTION_15_0(a1);
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void _iohideventsystem_copy_event_from_virtual_service_cold_2()
{
  v0 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void IOHIDNotificationInvalidate_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void IOHIDNotificationInvalidate_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1_3(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

HIDEventService *_IOHIDServiceCreateVirtual(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  VirtualNoInit = __IOHIDServiceCreateVirtualNoInit(a1, a2, a3, a4, a5);
  v7 = VirtualNoInit;
  if (VirtualNoInit && !__IOHIDServiceInit(VirtualNoInit, a2))
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t __IOHIDServiceRunLoopCompatibilityThread()
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&context, 0, sizeof(context));
  v10 = 0;
  v9 = 0;
  pthread_setname_np("IOHIDService - RunLoopCompatibilityThread");
  v0 = pthread_self();
  v1 = pthread_getschedparam(v0, &v9, &v10);
  if (!v1)
  {
    v3 = _IOHIDLog(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      sched_priority = v10.sched_priority;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "IOHIDService compatibility thread running at priority %d and schedule %d.", buf, 0xEu);
    }
  }

  v4 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  if (v4)
  {
    v5 = v4;
    Current = CFRunLoopGetCurrent();
    v7 = *MEMORY[0x1E695E8E0];
    qword_1EAF1D008 = Current;
    qword_1EAF1D010 = v7;
    CFRunLoopAddSource(Current, v5, v7);
    pthread_mutex_lock(&stru_1EAF1D018);
    pthread_cond_signal(&stru_1EAF1D058);
    pthread_mutex_unlock(&stru_1EAF1D018);
    CFRunLoopRun();
    CFRunLoopRemoveSource(qword_1EAF1D008, v5, qword_1EAF1D010);
    CFRelease(v5);
  }

  return 0;
}

CFMutableDictionaryRef _IOHIDServiceCopyPropertiesForClient(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (Mutable)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___IOHIDServiceCopyPropertiesForClient_block_invoke;
    v9[3] = &__block_descriptor_tmp_64;
    v9[4] = a1;
    v9[5] = a3;
    v9[6] = Mutable;
    _IOHIDCFArrayApplyBlock(a2, v9);
    if (!CFDictionaryGetCount(v7))
    {
      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t __IOHIDServiceEventCompatibilityCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a4)
    {
      return __IOHIDServiceEventCallback(a1, a2, a3, a4);
    }
  }

  return a1;
}