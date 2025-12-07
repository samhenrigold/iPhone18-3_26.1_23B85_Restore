void *sub_247F3E384(void *a1, compression_algorithm a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == COMPRESSION_LZ4)
  {
    v5 = 16;
  }

  else
  {
    if (a2 != COMPRESSION_LZFSE)
    {
      sub_247F59AB0();
    }

    v5 = 8;
  }

  v6 = &v3[v5];
  v7 = compression_encode_scratch_buffer_size(a2);
  v8 = atomic_load(v6);
  v9 = v8;
  atomic_compare_exchange_strong(v6, &v9, 0);
  if (v9 != v8 || v9 == 0)
  {
    v9 = malloc_type_malloc(v7, 0xAE3FDE6BuLL);
  }

  return v9;
}

void sub_247F3E418(void *a1, int a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    if (a2 == 256)
    {
      v6 = 16;
    }

    else
    {
      if (a2 != 2049)
      {
        sub_247F59ADC();
      }

      v6 = 8;
    }

    v7 = 0;
    atomic_compare_exchange_strong(&v5[v6], &v7, a3);
    if (v7)
    {
      v8 = v5;
      free(a3);
      v5 = v8;
    }
  }
}

void sub_247F3E984(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 8);
  objc_exception_rethrow();
}

void sub_247F3EA40(uint64_t a1)
{
  if ((*(*(a1 + 32) + 36) & 0xC) == 0)
  {
    v3 = MEMORY[0x24C1C0D80](*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }
}

void sub_247F3EB5C(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 36) & 0xC) == 0)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v3 = a1[6];
      v4 = 1;
    }

    v5 = v3;
    v6 = *(v1 + 8);
    *(v1 + 8) = v5;

    *(a1[4] + 36) = *(a1[4] + 36) & 0xFC | v4;
  }
}

void sub_247F3ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F3ECC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F3ECD8(uint64_t a1)
{
  if ((*(*(a1 + 32) + 36) & 8) == 0)
  {
    v2 = dispatch_semaphore_create(0);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247F3EE54;
    v12[3] = &unk_278EEE640;
    v12[4] = *(a1 + 40);
    v5 = MEMORY[0x24C1C0D80](v12);
    v6 = *(*(a1 + 32) + 24);
    v7 = v5;
    v8 = v7;
    if (v7 && v6)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_247F3EEB4;
      v13[3] = &unk_278EEE690;
      v14 = v6;
      v15 = v8;
      v9 = MEMORY[0x24C1C0D80](v13);
    }

    else
    {
      if (v6)
      {
        v7 = v6;
      }

      v9 = MEMORY[0x24C1C0D80](v7);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = v9;
  }
}

uint64_t sub_247F3EEB4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_247F3F054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_247F3F070(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend__validateDispatch_(WeakRetained, v5, v3);

  return v6;
}

void sub_247F3F880(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_error(v3, v4, v5);
  if (kDTXInterruptionMessage == v3)
  {
    v9 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Channel disconnected";
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v18, &v17, 1);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"DTXProxyChannel", 1, v10);

    v8 = v12;
  }

  v13 = objc_msgSend__allowedClassesForReturnValues(*(a1 + 32), v6, v7);
  v15 = objc_msgSend_objectWithAllowedClasses_(v3, v14, v13);

  objc_msgSend_invokeCompletionWithReturnValue_error_(*(a1 + 40), v16, v15, v8);
}

void sub_247F3FE4C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x8000uLL, 0x1000040B0612BB1uLL);
  p_msgh_bits = &v2->msgh_bits;
  v4 = *(*(a1 + 32) + 48);
  if (v4 + 1 < 2 || mach_msg(v2, 258, 0, 0x8000u, v4, 1u, 0))
  {
    free(p_msgh_bits);
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F3FF94;
    block[3] = &unk_278EEE708;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = p_msgh_bits[6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_247F3FF9C;
    v10[3] = &unk_278EEE728;
    v10[4] = p_msgh_bits;
    objc_msgSend_received_ofLength_destructor_(v8, v5, (p_msgh_bits + 7), v9, v10);
  }
}

void sub_247F3FFA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F40020;
  block[3] = &unk_278EEE708;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_247F400FC(void *a1)
{
  v5 = a1;
  v1 = dispatch_queue_create("DTXMachTransport input queue", 0);
  v2 = v5[7];
  v5[7] = v1;

  v3 = dispatch_queue_create("DTXMachTransport output queue", 0);
  v4 = v5[8];
  v5[8] = v3;

  v5[13] = malloc_type_malloc(0x8000uLL, 0x1000040B0612BB1uLL);
}

uint64_t sub_247F40868(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 48);
  if (v3 + 1 >= 2)
  {
    result = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 1u, -1);
    *(*(v1 + 32) + 48) = 0;
    v2 = *(v1 + 32);
  }

  v4 = *(v2 + 52);
  if (v4 + 1 >= 2)
  {
    result = mach_port_deallocate(*MEMORY[0x277D85F48], v4);
    *(*(v1 + 32) + 52) = 0;
  }

  return result;
}

uint64_t sub_247F40A44(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 48);
  if (v3 + 1 >= 2)
  {
    result = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 1u, -1);
    *(*(v1 + 32) + 48) = 0;
    v2 = *(v1 + 32);
  }

  v4 = *(v2 + 52);
  if (v4 + 1 >= 2)
  {
    result = mach_port_deallocate(*MEMORY[0x277D85F48], v4);
    *(*(v1 + 32) + 52) = 0;
  }

  return result;
}

uint64_t sub_247F40BCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F40BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F40C68;
  v3[3] = &unk_278EEE668;
  v4 = v1;
  dispatch_sync(v2, v3);
}

uint64_t sub_247F40C68(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 52) + 1) >= 2 && (*(v1 + 48) + 1) >= 2)
  {
    v2 = result;
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = *(*(v2 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    xpc_dictionary_set_mach_send();
    result = xpc_dictionary_set_mach_recv();
    *(*(v2 + 32) + 48) = 0;
  }

  return result;
}

void sub_247F40FC4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

void sub_247F4102C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F410CC;
  block[3] = &unk_278EEE708;
  block[4] = v2;
  dispatch_sync(v4, block);
}

void sub_247F410CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = 0;
  }
}

void sub_247F415FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F4161C(uint64_t a1)
{
  close(*(a1 + 32));
  v2 = *(a1 + 36);

  return close(v2);
}

uint64_t sub_247F41A54(uint64_t a1)
{
  close(*(a1 + 32));
  v2 = *(a1 + 36);

  return close(v2);
}

uint64_t sub_247F41C04(mach_port_name_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = sub_247F42778;
  v16 = &unk_278EEE7F0;
  v18 = &v19;
  v4 = v3;
  v17 = v4;
  v5 = v14;
  v24 = 0u;
  memset(msg, 0, sizeof(msg));
  if (mach_msg(msg, 2, 0, 0x30u, a1, 0, 0) || *&msg[20] == 70)
  {
    (v15)(v5, 0, 4, 0);
  }

  else
  {
    v6 = 0;
    v7 = 4;
    if (HIDWORD(v24) + *&msg[4] == 48)
    {
      v8 = 0;
      if (*&msg[24] == 1)
      {
        if (HIBYTE(DWORD1(v24)) || ((v9 = DWORD1(v24) & 0xFF0000, (DWORD1(v24) - 1441792) < 0xFFFB0000) ? (v10 = v9 == 0x100000) : (v10 = 1), v10 && (*msg & 0x80000000) == 0))
        {
          v6 = 0;
          v8 = 0;
        }

        else
        {
          v11 = 4 * ((DWORD1(v24) - 1441792) < 0xFFFB0000);
          if (v9 == 0x100000)
          {
            v11 = 1;
          }

          if (*msg >= 0)
          {
            v7 = 6;
          }

          else
          {
            v7 = v11;
          }

          v6 = *&msg[28];
          v8 = *&msg[8];
        }
      }
    }

    else
    {
      v8 = 0;
    }

    (v15)(v5, v6, v7, v8);
    mach_msg_destroy(msg);
  }

  v12 = *(v20 + 6);
  _Block_object_dispose(&v19, 8);

  return v12;
}

void sub_247F41DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F41DFC(uint64_t a1, uint64_t a2)
{
  result = sub_247F41E34(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_247F41E34(int a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = pipe(v18);
  result = 0xFFFFFFFFLL;
  if (!v4 && (v18[0] & 0x80000000) == 0)
  {
    if (v18[1] < 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (fileport_makeport())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = getprogname();
        v7 = getpid();
        v8 = __error();
        v9 = strerror(*v8);
        v10 = *__error();
        *buf = 136315906;
        *&buf[4] = v6;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v7;
        WORD3(v28) = 2080;
        *(&v28 + 1) = v9;
        LOWORD(v29[0]) = 1024;
        *(v29 + 2) = v10;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s(%d) [error]: '_send_fd' failed: %s (%d)\n", buf, 0x22u);
      }

      goto LABEL_12;
    }

    *(&v28 + 4) = 0;
    HIDWORD(v28) = 1;
    *&v29[1] = 0x13000000000000;
    *&buf[8] = a1;
    LODWORD(v28) = a2;
    *buf = 0x2880001413;
    v29[0] = 0;
    v11 = mach_msg_send(buf);
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = getprogname();
        v14 = getpid();
        v15 = mach_error_string(v12);
        *v19 = 136315906;
        v20 = v13;
        v21 = 1024;
        v22 = v14;
        v23 = 2080;
        v24 = v15;
        v25 = 1024;
        v26 = v12;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", v19, 0x22u);
      }

      mach_port_deallocate(*MEMORY[0x277D85F48], 0);
      goto LABEL_12;
    }

    mach_port_deallocate(*MEMORY[0x277D85F48], 0);
    v16 = v18[0];
    if ((v18[0] & 0x80000000) == 0)
    {
      v17 = fcntl(v18[0], 3);
      if ((v17 & 4) == 0)
      {
        fcntl(v16, 4, v17 | 4u);
LABEL_19:
        if ((v18[0] & 0x80000000) == 0 && fcntl(v18[0], 2, 1) != -1)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (v17 != -1)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    close(v18[0]);
    v18[0] = -1;
LABEL_13:
    close(v18[1]);
    return v18[0];
  }

  return result;
}

uint64_t sub_247F420C4(uint64_t a1)
{
  close(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(a1 + 40);

  return close(v2);
}

void sub_247F424C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_247F424F4(uint64_t a1, mach_port_name_t a2)
{
  v4 = sub_247F41E34(*(a1 + 40), a2);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v6 = sub_247F41C04(a2, 0);
    if ((v6 & 0x80000000) != 0)
    {

      close(v5);
    }

    else
    {
      v7 = v6;
      v8 = [DTXFileDescriptorTransport alloc];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_247F425EC;
      v13[3] = &unk_278EEE728;
      v14 = v5;
      v15 = v7;
      v10 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v8, v9, v5, v7, v13);
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

uint64_t sub_247F425EC(uint64_t a1)
{
  close(*(a1 + 32));
  v2 = *(a1 + 36);

  return close(v2);
}

uint64_t sub_247F426CC(uint64_t result, int a2, unsigned int *a3, _DWORD *a4)
{
  v4 = result;
  if (a2 != 2)
  {
    goto LABEL_13;
  }

  result = *a3;
  if ((result + 1) < 2 || *a4 || a3[1] + 1 < 2 || a4[1])
  {
    goto LABEL_13;
  }

  v5 = fileport_makefd();
  result = fileport_makefd();
  if (v5 < 0)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((result & 0x80000000) == 0)
    {
      v6 = *(v4 + 48);
      **(v4 + 40) = v5;
      *v6 = result;
      return result;
    }

    LODWORD(result) = v5;
  }

  result = close(result);
LABEL_13:
  *(*(*(v4 + 32) + 8) + 24) = 5;
  return result;
}

uint64_t sub_247F42778(uint64_t result, uint64_t a2, int a3)
{
  if ((a2 + 1) >= 2 && a3 == 0)
  {
    v4 = result;
    result = fileport_makefd();
    *(*(*(v4 + 40) + 8) + 24) = result;
    v5 = *(*(v4 + 40) + 8);
    v6 = *(v5 + 24);
    if ((v6 & 0x80000000) == 0)
    {
      result = fcntl(*(v5 + 24), 3);
      if ((result & 4) != 0)
      {
        if (result == -1)
        {
          result = close(*(*(*(v4 + 40) + 8) + 24));
          *(*(*(v4 + 40) + 8) + 24) = -1;
        }
      }

      else
      {
        result = fcntl(v6, 4, result | 4);
      }
    }

    if ((*(*(*(v4 + 40) + 8) + 24) & 0x80000000) == 0)
    {
      result = *(v4 + 32);
      if (result)
      {
        v7 = *(result + 16);

        return v7();
      }
    }
  }

  return result;
}

void sub_247F42878(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = dispatch_get_global_queue(0, 0);
  v7 = a3;
  source = dispatch_source_create(MEMORY[0x277D85D10], v5, 1uLL, v6);

  dispatch_source_set_event_handler(source, v7);
  dispatch_activate(source);
  (*(*(a1 + 32) + 16))();
  dispatch_source_cancel(source);
}

void sub_247F42940(uint64_t a1)
{
  v1 = 0;
  v20 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong((*(*(a1 + 32) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = *(a1 + 40);
    if (v3 + 1 >= 2)
    {
      v4 = MEMORY[0x277D85F48];
      v5 = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 1u, -1);
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315906;
          v13 = getprogname();
          v14 = 1024;
          v15 = getpid();
          v16 = 2080;
          v17 = mach_error_string(v6);
          v18 = 1024;
          v19 = v6;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_mod_refs' failed: %s (%d)\n", &v12, 0x22u);
        }
      }

      v7 = mach_port_deallocate(*v4, *(a1 + 40));
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v9 = getprogname();
          v10 = getpid();
          v11 = mach_error_string(v8);
          v12 = 136315906;
          v13 = v9;
          v14 = 1024;
          v15 = v10;
          v16 = 2080;
          v17 = v11;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_deallocate' failed: %s (%d)\n", &v12, 0x22u);
        }
      }
    }
  }
}

void sub_247F42BE0(_DWORD *a1)
{
  a1[10] = 2;
  v1 = a1;
  v2 = dispatch_queue_create("transport handler guard", 0);
  v3 = *(v1 + 2);
  *(v1 + 2) = v2;

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v18 = objc_msgSend_stringWithFormat_(v4, v6, @"transport incoming serializer queue (%@)", v5);
  v7 = v18;
  v10 = objc_msgSend_UTF8String(v18, v8, v9);
  v11 = dispatch_queue_create(v10, 0);
  dispatch_suspend(v11);
  v12 = *(v1 + 1);
  *(v1 + 1) = v11;
  v13 = v11;

  v14 = objc_opt_new();
  objc_msgSend_suspendLimits(v14, v15, v16);
  v17 = *(v1 + 3);
  *(v1 + 3) = v14;
}

void sub_247F42E04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dataReceivedHandler(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
  }

  free(*(a1 + 40));
}

void sub_247F43068(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_dataReceivedHandler(*(a1 + 32), a2, a3);
  if (v7)
  {
    (*(v7 + 2))(v7, *(a1 + 48), *(a1 + 56));
    if (!*(a1 + 56))
    {
      objc_msgSend_setDataReceivedHandler_(*(a1 + 32), v4, 0);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    objc_msgSend_releaseSize_(*(*(a1 + 32) + 24), v4, v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_247F431A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 44) & 1) == 0)
  {
    *(v1 + 44) = 1;
    dispatch_resume(*(*(a1 + 32) + 8));
  }
}

void sub_247F4336C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (v5)
  {
    *(v4 + 32) = 0;
  }

  else if (*(a1 + 40) && (*(v4 + 44) & 1) == 0)
  {
    *(v4 + 44) = 1;
    objc_msgSend_resumeLimits(*(*(a1 + 32) + 24), a2, a3);
    dispatch_resume(*(*(a1 + 32) + 8));
  }

  v6 = *(a1 + 32);
  if (v6[44] == 1 && objc_msgSend_status(v6, a2, a3) == 3)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }

  else
  {
    v9 = MEMORY[0x24C1C0D80](*(a1 + 40));
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;
  }
}

uint64_t sub_247F43544(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x24C1C0D80](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_247F43578(uint64_t a1)
{
  v2 = MEMORY[0x24C1C0D80](*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

double DTXPrimitiveArrayCreate()
{
  v0 = malloc_type_realloc(0, 0x200uLL, 0x1000040451B5BE8uLL);
  *&result = 496;
  *v0 = xmmword_247F5C930;
  return result;
}

void DTXPrimitiveArrayDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

unint64_t *DTXPrimitiveArrayCreateWithTypesAndValues(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v10 = malloc_type_realloc(0, 0x200uLL, 0x1000040451B5BE8uLL);
  *v10 = xmmword_247F5C930;
  return sub_247F43770(v10, 0, a1, &a9);
}

unint64_t *sub_247F43770(unint64_t *a1, unsigned int a2, int a3, const char **a4)
{
  v19 = a4;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = -1;
  }

  if (a3)
  {
    v6 = 0;
    while (1)
    {
      if (a3 <= 5)
      {
        if (a3 == 1)
        {
          v14 = v19++;
          v15 = *v14;
          v10 = strlen(*v14) + 1;
          v7 = a1;
          v8 = 1;
          v9 = v15;
        }

        else
        {
          if (a3 != 3)
          {
            goto LABEL_19;
          }

          v11 = v19++;
          LODWORD(v18) = *v11;
          v9 = &v18;
          v7 = a1;
          v8 = 3;
          v10 = 4;
        }
      }

      else
      {
        switch(a3)
        {
          case 6:
            v12 = v19++;
            v18 = *v12;
            v9 = &v18;
            v7 = a1;
            v8 = 6;
            break;
          case 9:
            v13 = v19++;
            v18 = *v13;
            v9 = &v18;
            v7 = a1;
            v8 = 9;
            break;
          case 10:
            v7 = a1;
            v8 = 10;
            v9 = 0;
            v10 = 0;
            goto LABEL_18;
          default:
            goto LABEL_19;
        }

        v10 = 8;
      }

LABEL_18:
      a1 = sub_247F43960(v7, v8, v9, v10);
      ++v6;
LABEL_19:
      v16 = v19++;
      if (v6 < v5)
      {
        a3 = *v16;
        if (*v16)
        {
          continue;
        }
      }

      return a1;
    }
  }

  return a1;
}

unint64_t *DTXPrimitiveArrayAppendValues(unint64_t *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if (result)
  {
    v9 = result;
    if (!*result)
    {
      result = sub_247F43770(*result, 0, a2, &a9);
      *v9 = result;
    }
  }

  return result;
}

unint64_t *DTXPrimitiveArrayAppendBuffer(unint64_t *result, void *__src, size_t __n)
{
  if (result)
  {
    v3 = result;
    if (!*result)
    {
      result = sub_247F43960(0, 2, __src, __n);
      *v3 = result;
    }
  }

  return result;
}

unint64_t *sub_247F43960(unint64_t *ptr, int a2, void *__src, size_t __n)
{
  v4 = __n;
  v7 = ptr;
  v8 = a2 - 1;
  if (ptr)
  {
    v9 = __n;
    v10 = ptr[1];
    v11 = __n + 4 * (v8 < 2) + v10 + 4;
    if (*ptr >= v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    v9 = __n;
    v11 = __n + 4 * (v8 < 2) + 4;
  }

  v12 = (v11 + 527) & 0xFFFFFFFFFFFFFE00;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 256;
  }

  v7 = malloc_type_realloc(ptr, v13, 0x1000040451B5BE8uLL);
  *v7 = v13 - 16;
  v7[1] = v10;
LABEL_9:
  v14 = (v7 + v10 + 16);
  *v14 = a2;
  v15 = (v14 + 1);
  if (v8 <= 1)
  {
    v14[1] = v4;
    v15 = (v14 + 2);
  }

  if (v4)
  {
    memcpy(v15, __src, v9);
    v15 += v9;
  }

  v7[1] = v15 - (v7 + 2);
  return v7;
}

CFDataRef _createObjectFromPrimitiveType(int a1, char *cStr, CFIndex length)
{
  result = 0;
  if (a1 > 3)
  {
    if ((a1 - 5) >= 4)
    {
      if (a1 == 4)
      {
        valuePtr[1] = v3;
        valuePtr[2] = v4;
        valuePtr[0] = *cStr;
        return CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      }

      if (a1 != 9)
      {
        return result;
      }

      v8 = kCFNumberDoubleType;
    }

    else
    {
      v8 = kCFNumberSInt64Type;
    }

    goto LABEL_11;
  }

  switch(a1)
  {
    case 1:

      return CFStringCreateWithCString(0, cStr, 0x8000100u);
    case 2:

      return CFDataCreate(0, cStr, length);
    case 3:
      v8 = kCFNumberSInt32Type;
LABEL_11:

      return CFNumberCreate(0, v8, cStr);
    default:
      return result;
  }
}

CFArrayRef CFArrayCreateWithDTXPrimitiveArray(uint64_t a1)
{
  v2 = sub_247F43CC4(a1);
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0;
    v13 = 32;
    v3 = malloc_type_malloc(8 * v2, 0x80040B8603338uLL);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = sub_247F43F44;
    v9[3] = &unk_278EEE8E0;
    v9[4] = &v10;
    v9[5] = v3;
    sub_247F43D74(a1, v9);
    v4 = *(v11 + 6);
    v5 = CFArrayCreate(0, v3, v4, MEMORY[0x277CBF128]);
    *(v11 + 6) = 0;
    if (v4)
    {
      for (i = 0; i < v4; *(v11 + 6) = i)
      {
        CFRelease(v3[i]);
        i = *(v11 + 6) + 1;
      }
    }

    free(v3);
    _Block_object_dispose(&v10, 8);
    return v5;
  }

  else
  {
    v8 = MEMORY[0x277CBF128];

    return CFArrayCreate(0, 0, 0, v8);
  }
}

uint64_t sub_247F43CC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_247F445A0;
  v3[3] = &unk_278EEE958;
  v3[4] = &v4;
  sub_247F43D74(a1, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_247F43D74(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 8))
    {
      v4 = 0;
      v5 = a1 + 16;
      do
      {
        v6 = *(v4 + v5);
        v7 = v4 + 4;
        if ((v6 - 1) > 1)
        {
          if (v6 > 9 || ((1 << v6) & 0x340) == 0)
          {
            v8 = 4 * (v6 != 10);
            if (a2)
            {
LABEL_6:
              if (v8)
              {
                if (v6 != 1)
                {
                  v9 = (v7 + v5);
                  if (((v7 + v5) & 7) != 0)
                  {
                    if (v8 >= 0x101)
                    {
                      v10 = v8;
                      v11 = malloc_type_malloc(v8, 0xD30D2256uLL);
                      goto LABEL_18;
                    }

LABEL_17:
                    v10 = v8;
                    MEMORY[0x28223BE20](a1);
                    v11 = v14 - ((v8 + 15) & 0x1FFFFFFF0);
                    bzero(v11, v8);
LABEL_18:
                    memcpy(v11, v9, v10);
LABEL_20:
                    if (v11)
                    {
                      v13 = v11;
                    }

                    else
                    {
                      v13 = (v7 + v5);
                    }

                    a1 = (*(a2 + 16))(a2, v6, v13, v8);
                    if (v8 >= 0x101)
                    {
                      if (v11)
                      {
                        free(v11);
                      }
                    }

                    goto LABEL_28;
                  }
                }
              }

LABEL_19:
              v11 = 0;
              goto LABEL_20;
            }
          }

          else
          {
            if (a2)
            {
              v9 = (v7 + v5);
              v8 = 8;
              if (((v7 + v5) & 7) != 0)
              {
                goto LABEL_17;
              }

              goto LABEL_19;
            }

            LODWORD(v8) = 8;
          }
        }

        else
        {
          v8 = *(v7 + v5);
          v7 = v4 + 8;
          if (a2)
          {
            goto LABEL_6;
          }
        }

LABEL_28:
        v4 = v7 + v8;
      }

      while (v4 < *(v2 + 8));
    }
  }
}

CFDataRef sub_247F43F44(uint64_t a1, int a2, char *cStr, CFIndex length)
{
  result = _createObjectFromPrimitiveType(a2, cStr, length);
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + 1;
    *(v6 + 8 * v8) = result;
  }

  return result;
}

CFDictionaryRef CFDictionaryCreateWithDTXPrimitiveDictionary(const __CFDictionary *a1)
{
  v1 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = sub_247F43CC4(a1);
    if (v2 >= 2)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 0;
      v3 = 8 * (v2 >> 1);
      MEMORY[0x28223BE20](v2);
      v4 = (v3 + 15) & 0x7FFFFFFF0;
      if (v3 >= 0x200)
      {
        v5 = 512;
      }

      else
      {
        v5 = v3;
      }

      bzero(v10 - v4, v5);
      MEMORY[0x28223BE20](v6);
      bzero(v10 - v4, v5);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = sub_247F4425C;
      v10[3] = &unk_278EEE908;
      v10[4] = &v11;
      v10[5] = v10 - v4;
      v10[6] = v10 - v4;
      _DTXPrimitiveDictionaryEnumerate(v1, v10);
      v7 = *(v12 + 6);
      v1 = CFDictionaryCreate(0, (v10 - v4), (v10 - v4), v7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v12 + 6) = 0;
      if (v7)
      {
        for (i = 0; i < v7; *(v12 + 6) = i)
        {
          CFRelease(*(&v10[i] - v4));
          CFRelease(*(&v10[*(v12 + 6)] - v4));
          i = *(v12 + 6) + 1;
        }
      }

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void _DTXPrimitiveDictionaryEnumerate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x2000000000;
      v5[3] = 0;
      v3[0] = 0;
      v3[1] = v3;
      v3[2] = 0x2000000000;
      v4 = 0;
      v2[0] = MEMORY[0x277D85DD0];
      v2[1] = 0x40000000;
      v2[2] = sub_247F4447C;
      v2[3] = &unk_278EEE930;
      v2[4] = a2;
      v2[5] = v3;
      v2[6] = v5;
      sub_247F43D74(a1, v2);
      _Block_object_dispose(v3, 8);
      _Block_object_dispose(v5, 8);
    }
  }
}

CFDataRef sub_247F4425C(CFDataRef result, const char *a2, int a3, char *a4, CFIndex a5)
{
  if (a2)
  {
    if (*a2)
    {
      v8 = result;
      *(*(result + 5) + 8 * *(*(*(result + 4) + 8) + 24)) = CFStringCreateWithCString(0, a2, 0x8000100u);
      result = _createObjectFromPrimitiveType(a3, a4, a5);
      *(*(v8 + 6) + 8 * (*(*(*(v8 + 4) + 8) + 24))++) = result;
    }
  }

  return result;
}

double DTXPrimitiveDictionaryCreate()
{
  v0 = malloc_type_realloc(0, 0x200uLL, 0x1000040451B5BE8uLL);
  *&result = 496;
  *v0 = xmmword_247F5C930;
  return result;
}

void DTXPrimitiveDictionaryDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

unint64_t *DTXPrimitiveDictionaryAddPrimitivePair(unint64_t *result, char *__s, int a3, ...)
{
  va_start(va, a3);
  if (result)
  {
    if (a3)
    {
      v4 = result;
      if (*result)
      {
        v6 = *result;
        if (__s)
        {
          v7 = strlen(__s) + 1;
          v8 = v6;
          v9 = 1;
          v10 = __s;
        }

        else
        {
          v8 = *result;
          v9 = 10;
          v10 = 0;
          v7 = 0;
        }

        v11 = sub_247F43960(v8, v9, v10, v7);
        *v4 = v11;
        result = sub_247F43770(v11, 1u, a3, va);
        *v4 = result;
      }
    }
  }

  return result;
}

unint64_t **DTXPrimitiveDictionaryAddBufferPair(unint64_t **result, char *__s, void *a3, size_t a4)
{
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (*result)
    {
      if (__s)
      {
        v9 = strlen(__s) + 1;
        v10 = v5;
        v11 = 1;
        v12 = __s;
      }

      else
      {
        v10 = *result;
        v11 = 10;
        v12 = 0;
        v9 = 0;
      }

      v13 = sub_247F43960(v10, v11, v12, v9);
      *v4 = v13;
      result = sub_247F43960(v13, 2, a3, a4);
      *v4 = result;
    }
  }

  return result;
}

void *sub_247F4447C(void *result, int a2, uint64_t a3)
{
  v3 = result;
  if (*(*(result[5] + 8) + 24))
  {
    result = (*(result[4] + 16))();
  }

  else
  {
    if (a2 != 1)
    {
      a3 = 0;
    }

    *(*(result[6] + 8) + 24) = a3;
  }

  ++*(*(v3[5] + 8) + 24);
  return result;
}

uint64_t DTXPrimitiveArrayGetSerialized(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 8) + 16;
    }
  }

  return result;
}

void *DTXPrimitiveArrayReferencingSerialized(void *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!result || a2 < 0x10 || result[1] + 16 != a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "DTXPrimitiveArrayReferencingSerialized: unexpected bytes at %p of length %u, returning NULL\n", result, a2);
    return 0;
  }

  return result;
}

uint64_t DTXPrimitiveDictionaryGetSerialized(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 8) + 16;
    }
  }

  return result;
}

intptr_t sub_247F44770(intptr_t result)
{
  *(*(result + 32) + 8) = *(result + 40);
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    v2 = result;
    do
    {
      result = dispatch_semaphore_signal(*(v1 + 56));
      --*(*(v2 + 32) + 32);
      v1 = *(v2 + 32);
    }

    while (*(v1 + 32));
  }

  return result;
}

intptr_t sub_247F448FC(intptr_t result)
{
  *(*(result + 32) + 16) = *(result + 40);
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    v2 = result;
    do
    {
      result = dispatch_semaphore_signal(*(v1 + 56));
      --*(*(v2 + 32) + 32);
      v1 = *(v2 + 32);
    }

    while (*(v1 + 32));
  }

  return result;
}

void *sub_247F44A78(void *result)
{
  v1 = result[4];
  if (*(v1 + 40))
  {
    v2 = result[7];
    v3 = *(v1 + 24);
LABEL_9:
    *(v1 + 24) = v3 + v2;
    ++*(result[4] + 36);
    v6 = result[4];
    v7 = *(v6 + 36);
    if (!v7)
    {
      *(v6 + 36) = 1;
      v7 = *(result[4] + 36);
    }

    *(*(result[5] + 8) + 24) = v7;
    goto LABEL_12;
  }

  v3 = *(v1 + 24);
  v2 = result[7];
  v4 = *(v1 + 8);
  if (v2 >= v4)
  {
    v5 = *(v1 + 8);
  }

  else
  {
    v5 = result[7];
  }

  if (v5 + v3 <= v4)
  {
    goto LABEL_9;
  }

  if (v2 <= *(v1 + 16))
  {
    ++*(v1 + 32);
    return result;
  }

LABEL_12:
  *(*(result[6] + 8) + 24) = 0;
  return result;
}

intptr_t sub_247F44C18(intptr_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = *(v1 + 24);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  *(v1 + 24) = v5;
  v6 = *(result + 32);
  if (*(v6 + 32))
  {
    v7 = result;
    do
    {
      result = dispatch_semaphore_signal(*(v6 + 56));
      --*(*(v7 + 32) + 32);
      v6 = *(v7 + 32);
    }

    while (*(v6 + 32));
  }

  return result;
}

intptr_t sub_247F44CF0(intptr_t result)
{
  ++*(*(result + 32) + 40);
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    v2 = result;
    do
    {
      result = dispatch_semaphore_signal(*(v1 + 56));
      --*(*(v2 + 32) + 32);
      v1 = *(v2 + 32);
    }

    while (*(v1 + 32));
  }

  return result;
}

uint64_t sub_247F45514(uint64_t a1)
{
  sub_247F45554();
  v3 = qword_2814DB5B0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return objc_msgSend_setObject_forKey_(v3, v2, v4, v5);
}

void sub_247F45554()
{
  if ((byte_27EE80D44 & 1) == 0)
  {
    v0 = objc_opt_class();
    ImageName = class_getImageName(v0);
    v2 = objc_opt_class();
    sub_247F45920(ImageName, sel_schemes, v2, &unk_285A12300);
    byte_27EE80D44 = 1;
  }
}

void sub_247F45920(char *a1, const char *a2, objc_class *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v7 = sub_247F4D208(a1);
  outCount = 0;
  v8 = objc_copyClassNamesForImage(v7, &outCount);
  v9 = qword_2814DB5E8;
  if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
  {
    v10 = "<nil image?>";
    if (v7)
    {
      v10 = v7;
    }

    *buf = 136315394;
    v35 = v10;
    v36 = 1024;
    v37 = outCount;
    _os_log_impl(&dword_247F3D000, v9, OS_LOG_TYPE_DEBUG, "scanning image %s (%u classes)", buf, 0x12u);
  }

  if (outCount)
  {
    v11 = 0;
    v12 = "<nil className>";
    v13 = "checking class %s";
    v31 = a2;
    do
    {
      v14 = qword_2814DB5E8;
      if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
      {
        v15 = v8[v11];
        if (!v15)
        {
          v15 = v12;
        }

        *buf = 136315138;
        v35 = v15;
        _os_log_impl(&dword_247F3D000, v14, OS_LOG_TYPE_DEBUG, v13, buf, 0xCu);
      }

      v16 = v8[v11];
      if (!v16)
      {
        goto LABEL_30;
      }

      Class = objc_getClass(v16);
      ClassMethod = class_getClassMethod(Class, a2);
      if (!ClassMethod)
      {
        goto LABEL_30;
      }

      v19 = ClassMethod;
      v20 = Class != 0;
      if (Class && Class != a3)
      {
        Superclass = Class;
        do
        {
          Superclass = class_getSuperclass(Superclass);
          v20 = Superclass != 0;
        }

        while (Superclass && Superclass != a3);
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      v22 = v13;
      v23 = v12;
      *buf = 0;
      v24 = object_getClass(Class);
      v25 = class_copyMethodList(v24, buf);
      v26 = v25;
      v27 = *buf;
      v28 = v25;
      if (*buf)
      {
        while (*v28 != v19)
        {
          ++v28;
          if (!--v27)
          {
            goto LABEL_28;
          }
        }

        v29 = qword_2814DB5E8;
        if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_DEBUG))
        {
          *v32 = 0;
          _os_log_impl(&dword_247F3D000, v29, OS_LOG_TYPE_DEBUG, "selector matched for class, calling block", v32, 2u);
        }

        v30[2](v30, Class);
      }

      else if (!v25)
      {
        goto LABEL_29;
      }

LABEL_28:
      free(v26);
LABEL_29:
      v12 = v23;
      v13 = v22;
      a2 = v31;
LABEL_30:
      ++v11;
    }

    while (v11 < outCount);
  }

  if (v8)
  {
    free(v8);
  }
}

void *sub_247F45BD8(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = objc_msgSend_automaticallyRegistersCapabilities(a2, a2, a3);
  if (result)
  {
    v6 = qword_2814DB5E8;
    if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_INFO))
    {
      v8 = v6;
      v9 = NSStringFromClass(a2);
      v10 = v9;
      v13 = 136315138;
      v14 = objc_msgSend_UTF8String(v10, v11, v12);
      _os_log_impl(&dword_247F3D000, v8, OS_LOG_TYPE_INFO, "registering capabilities: %s", &v13, 0xCu);
    }

    return objc_msgSend_registerCapabilities_(a2, v7, *(a1 + 32));
  }

  return result;
}

uint64_t sub_247F45CC4(uint64_t a1, objc_class *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = qword_2814DB5E8;
  if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
    v7 = NSStringFromClass(a2);
    v8 = v7;
    v12 = 136315138;
    v13 = objc_msgSend_UTF8String(v8, v9, v10);
    _os_log_impl(&dword_247F3D000, v6, OS_LOG_TYPE_INFO, "registering capabilities: %s", &v12, 0xCu);
  }

  return objc_msgSend_registerCapabilities_(a2, v5, *(a1 + 32));
}

void sub_247F46004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F468C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F468E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F468F8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v7 = objc_msgSend_cost(v3, v5, v6);
  objc_msgSend_forceAcquireSize_(v4, v8, v7);
  v9 = a1[4];
  v10 = a1[5];
  v11 = *(v10 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F469CC;
  v13[3] = &unk_278EEEA48;
  v16 = a1[6];
  v13[4] = v10;
  v14 = v3;
  v15 = v9;
  v12 = v3;
  dispatch_async(v11, v13);
}

uint64_t sub_247F469CC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 56) + 8) + 40) == *(*(a1 + 32) + 160))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);

    return MEMORY[0x2821F9670](v9, sel__routeMessage_, v8);
  }

  else
  {
    v4 = *(a1 + 48);
    v6 = objc_msgSend_cost(*(a1 + 40), a2, a3);

    return objc_msgSend_releaseSize_(v4, v5, v6);
  }
}

void sub_247F47150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F47170(uint64_t a1, const char *a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dataReceivedHandler(*(*(a1 + 32) + 32), a2, a3);

  if (v4)
  {
    v6 = @"Unable to publish capabilities after connection has been resumed.";
LABEL_3:
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
    goto LABEL_4;
  }

  v25 = *(a1 + 64);
  if (v25 <= 0)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"Invalid version number for capability %@: %ld not in one-sided range [0, INT_MAX."), *(a1 + 40), v25);
    goto LABEL_3;
  }

  v47 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 104), v5, *(a1 + 40));
  v27 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 112), v26, *(a1 + 40));
  v8 = v47;
  if (!v47)
  {
LABEL_4:

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = qword_2814DB5E8;
      if (os_log_type_enabled(qword_2814DB5E8, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = v9;
        LODWORD(v11) = objc_msgSend_atomicConnectionNumber(v11, v13, v14);
        v15 = *(a1 + 40);
        v16 = *(a1 + 64);
        v17 = NSStringFromClass(*(a1 + 56));
        v18 = v17;
        v19 = @"none";
        *buf = 67109890;
        v49 = v11;
        if (v17)
        {
          v19 = v17;
        }

        v50 = 2114;
        v51 = v15;
        v52 = 1024;
        v53 = v16;
        v54 = 2114;
        v55 = v19;
        _os_log_impl(&dword_247F3D000, v12, OS_LOG_TYPE_INFO, "x%d %{public}@ v%u (%{public}@)", buf, 0x22u);
      }

      v20 = *(*(a1 + 32) + 104);
      v21 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, *(a1 + 64));
      objc_msgSend_setObject_forKey_(v20, v22, v21, *(a1 + 40));

      v24 = *(a1 + 56);
      if (v24)
      {
        objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 112), v23, v24, *(a1 + 40));
      }
    }

    return;
  }

  v29 = v27;
  v30 = objc_msgSend_intValue(v47, v47, v28);
  v33 = *(a1 + 64);
  if (v30 != v33 && v29 == *(a1 + 56))
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = *(a1 + 40);
    v46 = objc_msgSend_integerValue(v47, v31, v32);
    objc_msgSend_stringWithFormat_(v40, v42, @"Version mismatch for capability %@ with service class %@: %ld vs. %ld.", v41, v29, v33, v46);
    goto LABEL_21;
  }

  if (objc_msgSend_intValue(v47, v31, v32) == *(a1 + 64) && v29 != *(a1 + 56))
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = *(a1 + 40);
    v38 = objc_msgSend_integerValue(v47, v34, v35);
    objc_msgSend_stringWithFormat_(v36, v39, @"Class mismatch for capability %@ with version %ld: %@ vs. %@.", v37, v38, v29, *(a1 + 56));
    v43 = LABEL_21:;
    v44 = *(*(a1 + 48) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;
  }

  if (objc_msgSend_intValue(v47, v34, v35) <= *(a1 + 64))
  {
    v8 = v47;
    goto LABEL_4;
  }
}

void sub_247F47574(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 104), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_247F476DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F476F4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, a3);
  v7 = 0.0;
  atomic_compare_exchange_strong((*(*(a1 + 48) + 8) + 24), &v7, *&v6);
  if (v7 == 0.0)
  {
    v8 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    v9 = *(*(a1 + 32) + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F4784C;
    block[3] = &unk_278EEE980;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    dispatch_after(v8, v9, block);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = v6 - v7;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, v11);
    objc_msgSend_invokeCompletionWithReturnValue_error_(v10, v12, v13, 0);
  }
}

void sub_247F4784C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, a3, *(a1 + 40));
  objc_msgSend_invokeCompletionWithReturnValue_error_(v3, v4, v5, 0);
}

void sub_247F479BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_247F479D4(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_doubleValue(a2, a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

void sub_247F47B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_247F47B1C(void *result, const char *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[4];
  if (!*(v4 + 120))
  {
    result = objc_msgSend_supportedDirections(*(v4 + 32), a2, a3);
    if (result == 2)
    {
      v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
      v8 = v3[4];
      v9 = *(v8 + 120);
      *(v8 + 120) = v7;

      result = dispatch_semaphore_signal(*(v3[4] + 152));
    }
  }

  *(*(v3[5] + 8) + 24) = *(v3[4] + 120) == 0;
  return result;
}

void sub_247F47CDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dataReceivedHandler(*(*(a1 + 32) + 32), a2, a3);

  if (v4)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v5, @"DTXConnectionException", @"Unable to register capability override blocks after connection has been resumed.");
  }

  v6 = *(*(a1 + 32) + 128);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = v7;

    v6 = *(*(a1 + 32) + 128);
  }

  v11 = MEMORY[0x24C1C0D80](*(a1 + 40));
  objc_msgSend_addObject_(v6, v10, v11);
}

void sub_247F47EAC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (objc_msgSend_intValue(a3, v5, v6) == 0x80000000)
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v8);
  }
}

void sub_247F47FC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 184) == 1)
  {
    v5 = objc_msgSend_description(*(a1 + 32), a2, a3);
    sub_247F48190("resuming", v4, 0, v5);

    v4 = *(a1 + 32);
  }

  v6 = objc_msgSend_dataReceivedHandler(*(v4 + 32), a2, a3);
  if (v6)
  {
  }

  else
  {
    v9 = *(a1 + 32);
    if (*(v9 + 72))
    {
      if ((objc_msgSend_supportedDirections(*(v9 + 32), v7, v8) & 0xFFFFFFFE) == 2)
      {
        v11 = *(*(a1 + 32) + 104);
        v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, 1);
        objc_msgSend_setObject_forKey_(v11, v13, v12, @"com.apple.private.DTXConnection");

        objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 104), v14, &unk_285A15D88, @"com.apple.private.DTXBlockCompression");
        v16 = objc_msgSend_messageWithSelector_objectArguments_(DTXMessage, v15, sel__notifyOfPublishedCapabilities_, *(*(a1 + 32) + 104), 0);
        objc_msgSend_sendControlAsync_replyHandler_(*(a1 + 32), v17, v16, 0);
      }

      v18 = *(*(a1 + 32) + 160);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_247F483AC;
      v22[3] = &unk_278EEEB60;
      v23 = v18;
      v19 = *(*(a1 + 32) + 32);
      v20 = v18;
      objc_msgSend_setDataReceivedHandler_(v19, v21, v22);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 24));
  dispatch_resume(*(*(a1 + 32) + 48));
}

void sub_247F48190(const char *a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_autoreleasePoolPush();
  if (!v9)
  {
    v9 = objc_msgSend_description(kDTXInterruptionMessage, v10, v11);
  }

  v13 = objc_msgSend_channelCode(v8, v10, v11);
  v16 = v13;
  if (v13 >= 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = -v13;
  }

  v18 = objc_msgSend_atomicConnectionNumber(v7, v14, v15);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v19, v20);
  v22 = v21;
  v23 = qword_2814DB5B8;
  if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_INFO))
  {
    v24 = v22 - *&qword_2814DB5F0;
    if (v16 >= 0)
    {
      v25 = "";
    }

    else
    {
      v25 = "f";
    }

    v26 = v9;
    v27 = v23;
    *buf = 134219266;
    v38 = v24;
    v39 = 1024;
    v40 = v18;
    v41 = 2080;
    v42 = a1;
    v43 = 1024;
    v44 = v17;
    v45 = 2080;
    v46 = v25;
    v47 = 2080;
    v48 = objc_msgSend_UTF8String(v9, v28, v29);
    _os_log_impl(&dword_247F3D000, v27, OS_LOG_TYPE_INFO, "%3.6f x%d %8s [c%d%s]: %s\n", buf, 0x36u);
  }

  v30 = qword_27EE80D30;
  if (qword_27EE80D30)
  {
    v31 = v22 - *&qword_2814DB5F0;
    if (v16)
    {
      v32 = "f";
    }

    else
    {
      v32 = "";
    }

    v33 = v9;
    v36 = objc_msgSend_UTF8String(v33, v34, v35);
    fprintf(v30, "%3.6f x%d %8s [c%d%s]: %s\n", v31, v18, a1, v17, v32, v36);
  }

  objc_autoreleasePoolPop(v12);
}

void sub_247F48464(uint64_t a1)
{
  v2 = MEMORY[0x24C1C0D80](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;
}

void sub_247F485BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[9];
  if (!v5)
  {
    v25 = *(a1 + 40);
    if (!v25)
    {
      return;
    }

    v26 = v4[22];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_247F487EC;
    v32[3] = &unk_278EEEB88;
    v33 = v25;
    objc_msgSend__scheduleBlock_(v26, v27, v32);
    v24 = v33;
    goto LABEL_8;
  }

  if (!v4[15])
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], a2, a3);
    objc_msgSend__notifyOfPublishedCapabilities_(v4, v7, v6);

    v4 = *(a1 + 32);
    v5 = v4[9];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_247F48800;
  v31[3] = &unk_278EEEBB0;
  v31[4] = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, a2, v31);
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_247F48810;
  v30[3] = &unk_278EEEBB0;
  v30[4] = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v10, v30);
  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  *(v11 + 72) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 80);
  *(v13 + 80) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 192);
  *(v15 + 192) = 0;

  v17 = *(a1 + 32);
  v18 = *(v17 + 96);
  *(v17 + 96) = 0;

  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  if (v21)
  {
    v23 = *(v22 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F48868;
    block[3] = &unk_278EEE5F0;
    block[4] = v22;
    v29 = v21;
    dispatch_async(v23, block);
    v24 = v29;
LABEL_8:

    return;
  }

  objc_msgSend_disconnect(*(v22 + 32), v19, v20);
}

void sub_247F48810(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  objc_msgSend_resume(v7, v4, v5);
  objc_msgSend__scheduleMessage_toChannel_(*(a1 + 32), v6, 0, v7);
}

void sub_247F48868(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F488F8;
  v5[3] = &unk_278EEEC00;
  v5[4] = v2;
  v6 = v1;
  objc_msgSend_serializedDisconnect_(v3, v4, v5);
}

void sub_247F488F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F489B0;
  block[3] = &unk_278EEEBD8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_247F489B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_parsingComplete(*(*(a1 + 32) + 160), a2, a3);
  v5 = *(a1 + 40);
  v6 = v4;
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (object_getClass(v5) != MEMORY[0x277D86468])
    {
      sub_247F59DC8();
    }

    v8 = v6;
    v11 = objc_msgSend_bytes(v8, v9, v10);
    v14 = objc_msgSend_length(v6, v12, v13);
    xpc_dictionary_set_data(v5, "__DTXTransport_preflightdata", v11, v14);
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 160);
  *(v15 + 160) = 0;

  v17 = *(*(a1 + 32) + 176);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_247F48AFC;
  v19[3] = &unk_278EEE890;
  v21 = *(a1 + 48);
  v20 = *(a1 + 40);
  objc_msgSend__scheduleBlock_(v17, v18, v19);
}

void sub_247F49054(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_fragmentsForLength_(*(*(a1 + 32) + 168), v4, *(a1 + 64));
  v7 = *(*(a1 + 32) + 16);
  if (*(a1 + 96) == 1)
  {
    dispatch_suspend(*(*(a1 + 32) + 16));
    v8 = *(*(a1 + 32) + 24);

    v7 = v8;
  }

  if (*(a1 + 97) == 1)
  {
    v9 = MEMORY[0x24C1C0D80](v3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F49348;
    block[3] = &unk_278EEE5F0;
    block[4] = *(a1 + 32);
    v37 = v9;
    v10 = v9;
    dispatch_async(v7, block);
  }

  if (*(a1 + 40) == kDTXBarrierMessage || !objc_msgSend__addHandler_forMessage_channel_(*(a1 + 32), v6, v3, *(a1 + 80), *(a1 + 48)) || (v11 = *(a1 + 40), v11 == qword_2814DB5F8))
  {
    if (*(a1 + 96) == 1)
    {
      dispatch_resume(*(*(a1 + 32) + 16));
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      objc_msgSend_releaseSize_(*(*(a1 + 32) + 136), v6, v17);
    }
  }

  else
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_247F493B4;
    v32 = sub_247F493E0;
    v33 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_247F493E8;
    v18[3] = &unk_278EEEC50;
    v18[4] = *(a1 + 32);
    v12 = v11;
    v25 = *(a1 + 80);
    v19 = v12;
    v22 = v34;
    v23 = &v28;
    v26 = v5;
    v27 = *(a1 + 96);
    v24 = *(a1 + 72);
    v20 = *(a1 + 56);
    v13 = v7;
    v21 = v13;
    v14 = MEMORY[0x24C1C0D80](v18);
    v15 = v29[5];
    v29[5] = v14;

    if (*(a1 + 56))
    {
      v16 = 1;
    }

    else
    {
      v16 = v5;
    }

    for (; v16; --v16)
    {
      dispatch_async(v13, v29[5]);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v34, 8);
  }
}

uint64_t sub_247F49348(uint64_t a1, const char *a2)
{
  objc_msgSend_transmit_ofLength_(*(*(a1 + 32) + 32), a2, 0, 0);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_247F493B4(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x24C1C0D80](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_247F493E8(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 168);
  v6 = *(*(*(a1 + 64) + 8) + 24);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_247F49540;
  v14[3] = &unk_278EEEC28;
  v14[4] = v4;
  objc_msgSend_transmitMessage_routingInfo_fragment_transmitter_(v5, a2, v3, *(a1 + 88), *(a1 + 96), v6, v14);
  if (++*(*(*(a1 + 64) + 8) + 24) == *(a1 + 104))
  {
    if ((*(a1 + 100) & 1) != 0 || *(a1 + 92) || objc_msgSend_isBarrier(*(a1 + 40), v7, v8))
    {
      objc_msgSend_transmit_ofLength_(*(*(a1 + 32) + 32), v7, 0, 0);
    }

    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    if (*(a1 + 108) == 1)
    {
      dispatch_resume(*(*(a1 + 32) + 16));
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      objc_msgSend_releaseSize_(*(*(a1 + 32) + 136), v11, v12);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      dispatch_semaphore_signal(v13);
    }
  }

  else if (*(a1 + 48))
  {
    dispatch_async(*(a1 + 56), *(*(*(a1 + 72) + 8) + 40));
  }
}

void *sub_247F49540(uint64_t a1, const char *a2, unsigned int a3)
{
  result = objc_msgSend_transmit_ofLength_(*(*(a1 + 32) + 32), a2, a2, a3);
  if (result != a3)
  {
    v8 = *(*(a1 + 32) + 32);

    return objc_msgSend_disconnect(v8, v6, v7);
  }

  return result;
}

void sub_247F495A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    sub_247F59DF4();
  }

  v5 = v4;
  v6 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_247F468E0;
  v16 = sub_247F468F0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247F4D3A0;
  v9[3] = &unk_278EEEEF0;
  v11 = &v12;
  v7 = v6;
  v10 = v7;
  v8 = MEMORY[0x24C1C0D80](v9);
  (v5)[2](v5, v8);
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v3)
  {
    v3[2](v3, v13[5]);
  }

  _Block_object_dispose(&v12, 8);
}

void sub_247F496F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F49888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F498A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 72);
  if (v4)
  {
    a3 = *(a1 + 72);
    if (a3)
    {
      v5 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, a3);
      v7 = objc_msgSend_objectForKey_(v4, v6, v5);

      if (v7 != *(a1 + 40))
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v8 = *(a1 + 32);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v9 = *(v8 + 88);
    v15 = MEMORY[0x24C1C0D80](*(a1 + 56));
    objc_msgSend_setObject_forKey_(v9, v10, v15, *(a1 + 48));
  }

  else
  {
    if (*(v8 + 184) == 1)
    {
      v11 = *(a1 + 40);
      v12 = sub_247F499FC(*(a1 + 76), a2, a3);
      sub_247F48190(" handler", v8, v11, v12);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 56);

    objc_msgSend__scheduleMessage_tracker_withHandler_(v13, a2, 0, 0, v14);
  }
}

id sub_247F499FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_message(DTXMessage, a2, a3);
  objc_msgSend_setErrorStatus_(v4, v5, 2);
  objc_msgSend_setIdentifier_(v4, v6, a1);
  objc_msgSend__makeImmutable(kDTXInterruptionMessage, v7, v8);
  v11 = objc_msgSend_description(v4, v9, v10);

  return v11;
}

void sub_247F4A0F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_newReply(a2, a2, a3);
  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(*(a1 + 32), v4, v5, *(a1 + 40), 2, 0, 0);
}

void sub_247F4A150(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = MEMORY[0x24C1C0D80](a3);
  v8 = objc_msgSend_unsignedLongLongValue(v17, v6, v7);
  if (objc_msgSend_channelCode(*(a1 + 32), v9, v10) == HIDWORD(v8))
  {
    objc_msgSend_removeObjectForKey_(*(a1 + 40), v11, v17);
    v14 = *(a1 + 48);
    if (v14[184] == 1)
    {
      v15 = *(a1 + 32);
      v16 = sub_247F499FC(v8, v12, v13);
      sub_247F48190(" handler", v14, v15, v16);
    }

    objc_msgSend__scheduleMessage_tracker_withHandler_(*(a1 + 32), v12, *(a1 + 56), 0, v5);
  }
}

void sub_247F4A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247F4A48C(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(v3 + 64);
  *(v3 + 64) = v4 + 1;
  *(*(a1[6] + 8) + 24) = v4;
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *(*(a1[6] + 8) + 24));
  v5 = [DTXChannel alloc];
  v7 = objc_msgSend_initWithConnection_channelIdentifier_label_(v5, v6, a1[4], *(*(a1[6] + 8) + 24), a1[5]);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  objc_msgSend_setObject_forKey_(*(a1[4] + 72), v10, *(*(a1[7] + 8) + 40), v11);
}

void *sub_247F4A554(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  result = objc_msgSend_errorStatus(a2, a2, a3);
  if (result)
  {
    v5 = qword_2814DB5B8;
    if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
    {
      v8 = @"nil";
      v9 = *(a1 + 40);
      if (*(a1 + 32))
      {
        v8 = *(a1 + 32);
      }

      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_247F3D000, v5, OS_LOG_TYPE_ERROR, "Connection peer refused channel request for %{public}@; channel canceled %@", &v10, 0x16u);
    }

    return objc_msgSend_cancel(*(a1 + 40), v6, v7);
  }

  return result;
}

void sub_247F4A7C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = objc_msgSend_channelCode(*(a1 + 32), a2, a3);
  v14 = objc_msgSend_numberWithInt_(v4, v6, v5);
  v8 = objc_msgSend_objectForKey_(*(*(a1 + 40) + 80), v7, v14);
  v11 = v8;
  if (v8)
  {
    if (*(a1 + 32) != v8)
    {
      sub_247F59E20();
    }

    objc_msgSend_resume(v8, v9, v10);
    v12 = 80;
  }

  else
  {
    v12 = 72;
  }

  objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + v12), v9, v14);
  objc_msgSend__scheduleMessage_toChannel_(*(a1 + 40), v13, 0, *(a1 + 32));
}

void sub_247F4AD5C(uint64_t a1)
{
  v2 = [DTXProxyChannel alloc];
  v3 = *(a1 + 32);
  v6 = objc_msgSend_peerProtocol(*(*(*(a1 + 40) + 8) + 40), v4, v5);
  v9 = objc_msgSend_publishedProtocol(*(*(*(a1 + 40) + 8) + 40), v7, v8);
  v14 = objc_msgSend_initWithChannel_remoteProtocol_localProtocol_(v2, v10, v3, v6, v9);

  v13 = objc_msgSend_handlerBlock(*(*(*(a1 + 40) + 8) + 40), v11, v12);
  (v13)[2](v13, v14);
}

uint64_t sub_247F4AE34(void *a1, const char *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = objc_msgSend_objectForKey_(*(a1[6] + 112), a2, v3);
  v6 = *(v4 + 16);

  return v6(v4, v2, v3, v5);
}

void sub_247F4B1A4(void *a1, uint64_t a2)
{
  v6 = a1;
  if (objc_msgSend_compressionTypeHint(v6, v3, v4) == 1)
  {
    objc_msgSend_setCompressionTypeHint_(v6, v5, a2);
  }
}

void sub_247F4B774(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [DTXProxyRequestHandler alloc];
  v4 = objc_msgSend_initWithPublishedProtocol_publishedProtocolName_peerProtocol_peerProtocolName_handlerBlock_(v2, v3, a1[4], a1[5], a1[6], a1[7], a1[9]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1[8] + 96);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_msgSend_matchesPublishedProtocolName_peerProtocolName_(*(*(&v13 + 1) + 8 * v11), v8, a1[5], a1[7], v13))
        {
          objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v8, @"DTXConnectionException", @"Proxy handler already exists for protocol pair specified.");
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  objc_msgSend_addObject_(*(a1[8] + 96), v12, v4);
}

uint64_t sub_247F4BF4C(uint64_t a1, const char *a2)
{
  objc_msgSend_setIsCanceled_(*(a1 + 32), a2, 1);
  objc_msgSend_setMessageHandler_(*(a1 + 32), v3, 0);
  v5 = *(a1 + 32);

  return objc_msgSend_setDispatchTarget_(v5, v4, 0);
}

void sub_247F4BF9C(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v34 = 0u;
  v35 = 0u;
  v5 = *(a1 + 32);
  if (v5 && (objc_msgSend__callbackSnapshot(v5, v2, v3), *(&v34 + 1)))
  {
    v6 = pthread_getspecific(qword_2814DB5E0);
    pthread_setspecific(qword_2814DB5E0, *(a1 + 32));
    v8 = v34;
    if (v34)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3254779904;
      v29 = sub_247F4C234;
      v30 = &unk_285A122D0;
      v31 = *(a1 + 40);
      sub_247F4C254(v33, &v34);
      v32 = *(a1 + 32);
      dispatch_sync(v8, &v27);
      sub_247F4C2B0(v33);
    }

    else
    {
      objc_msgSend_invokeWithTarget_replyChannel_validator_(*(a1 + 40), v7, *(&v34 + 1), *(a1 + 32), *(&v35 + 1));
    }

    pthread_setspecific(qword_2814DB5E0, v6);
  }

  else if (objc_msgSend_expectsReply(*(a1 + 40), v2, v3) && (objc_msgSend_isCanceled(*(a1 + 32), v9, v10) & 1) == 0)
  {
    v11 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v9, @"DTXMissingDispatchTargetException", @"Unable to invoke message - channel has no dispatch target", 0);
    v12 = *(a1 + 40);
    v13 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v16 = objc_msgSend_description(v11, v14, v15);
    v37[0] = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v37, &v36, 1);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v19, @"DTXConnection", 1, v18);
    v22 = objc_msgSend_newReplyWithError_(v12, v21, v20);

    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(*(a1 + 48), v23, v22, *(a1 + 32), 2, 0, 0);
  }

  v24 = *(a1 + 56);
  v25 = objc_msgSend_cost(*(a1 + 40), v9, v10, v27, v28, v29, v30);
  objc_msgSend_releaseSize_(v24, v26, v25);
  sub_247F4C2B0(&v34);
  objc_autoreleasePoolPop(v4);
}

void sub_247F4C20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_247F4C2B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_247F4C254(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  a1[2] = MEMORY[0x24C1C0D80](*(a2 + 16));
  result = MEMORY[0x24C1C0D80](*(a2 + 24));
  a1[3] = result;
  return result;
}

void sub_247F4C2B0(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_247F4C2FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend__callbackSnapshot(v4, a2, a3, v21);
  }

  v5 = pthread_getspecific(qword_2814DB5E0);
  pthread_setspecific(qword_2814DB5E0, *(a1 + 32));
  v8 = *(a1 + 56);
  if (v8)
  {
    isCanceled = objc_msgSend_isCanceled(*(a1 + 32), v6, v7);
    v10 = (a1 + 40);
    if (isCanceled)
    {
      v10 = &kDTXInterruptionMessage;
    }

    goto LABEL_9;
  }

  v8 = v22;
  if (v22)
  {
    v10 = (a1 + 40);
LABEL_9:
    (*(v8 + 16))(v8, *v10);
    goto LABEL_10;
  }

  if (objc_msgSend_tracer(*(*(a1 + 32) + 24), v6, v7))
  {
    v18 = *(a1 + 32);
    v19 = v18[3];
    v20 = objc_msgSend_description(*(a1 + 40), v16, v17);
    sub_247F48190("dropped message (no message handler)", v19, v18, v20);
  }

LABEL_10:
  pthread_setspecific(qword_2814DB5E0, v5);
  v11 = *(a1 + 48);
  v14 = objc_msgSend_cost(*(a1 + 40), v12, v13);
  objc_msgSend_releaseSize_(v11, v15, v14);
  sub_247F4C2B0(&v21);
}

void sub_247F4C514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  sub_247F4C2B0(v13 + 48);
  _Unwind_Resume(a1);
}

void *sub_247F4C534(void *result, void *a2)
{
  v2 = a2[6];
  a2[6] = 0;
  result[6] = v2;
  v3 = a2[7];
  a2[7] = 0;
  result[7] = v3;
  v4 = a2[8];
  a2[8] = 0;
  result[8] = v4;
  v5 = a2[9];
  a2[9] = 0;
  result[9] = v5;
  return result;
}

void sub_247F4C570(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(a1 + 10);
  v3[2](v3, &v4[14]);

  os_unfair_lock_unlock(a1 + 10);
}

void sub_247F4C5F8(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = MEMORY[0x24C1C0D80](*(a2 + 16));
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  v6 = MEMORY[0x24C1C0D80](*(a2 + 24));
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
}

void sub_247F4C764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F4C77C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 16))
  {
    v14 = MEMORY[0x24C1C0D80]();
    if (objc_msgSend_isCanceled(*(a1 + 32), v4, v5))
    {
      v7 = v14;
      if (v14)
      {
        objc_msgSend__scheduleMessage_tracker_withHandler_(*(a1 + 32), v6, 0, 0, v14);
        v7 = v14;
      }

      v14 = 0;
    }

    if (*(a2 + 16))
    {
      objc_msgSend__scheduleMessage_tracker_withHandler_(*(a1 + 32), v6, 0, 0);
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x24C1C0D80](v8);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = MEMORY[0x24C1C0D80](v14);
    v13 = *(a2 + 16);
    *(a2 + 16) = v12;
  }
}

void sub_247F4C99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F4C9B4(uint64_t a1, id *a2, uint64_t a3)
{
  isCanceled = objc_msgSend_isCanceled(*(a1 + 32), a2, a3);
  v6 = isCanceled;
  if (isCanceled)
  {
    v7 = a2[1];
LABEL_4:
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    objc_storeStrong(a2 + 1, v8);
    goto LABEL_8;
  }

  v7 = a2[1];
  if (*(a1 + 40) != v7)
  {
    goto LABEL_4;
  }

LABEL_8:
  v9 = *(a1 + 48);

  objc_storeStrong(a2, v9);
}

void sub_247F4CAE4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x24C1C0D80](*(a1 + 32));
  v4 = *(a2 + 24);
  *(a2 + 24) = v3;
}

void sub_247F4CCE8(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = qword_2814DB5B8;
  if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138543618;
    v8 = v6;
    v9 = 2082;
    Name = sel_getName(a2);
    _os_log_impl(&dword_247F3D000, v4, OS_LOG_TYPE_ERROR, "Warning: called [%{public}@ %{public}s] with NULL replyHandler!\nThe caller will not block synchronously on this call as there is no handler to wait for.", &v7, 0x16u);
  }
}

void sub_247F4CE00(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v14 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(v9, v12, v14, v10, 0, a4, v11))
  {
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(v9, v13, v14, v10, 1, a4, v11);
  }
}

void sub_247F4D04C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_schemes(a2, a2, a3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v31, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v22;
    *&v8 = 138543874;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKey_(qword_2814DB5B0, v7, v12, v20);
        if (v13)
        {
          v15 = v13;
          v16 = qword_2814DB5B8;
          if (os_log_type_enabled(qword_2814DB5B8, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            Name = class_getName(v15);
            v19 = class_getName(a2);
            *buf = v20;
            v26 = v12;
            v27 = 2082;
            v28 = Name;
            v29 = 2082;
            v30 = v19;
            _os_log_impl(&dword_247F3D000, v17, OS_LOG_TYPE_ERROR, "Warning: duplicate registration of scheme %{public}@ - claims made by both %{public}s and %{public}s transports.", buf, 0x20u);
          }
        }

        else
        {
          objc_msgSend_setObject_forKey_(qword_2814DB5B0, v14, a2, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v21, v31, 16);
    }

    while (v9);
  }
}

char *sub_247F4D208(char *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = strrchr(a1, 47);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = _dyld_image_count();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    image_name = _dyld_get_image_name(v6);
    v8 = strrchr(image_name, 47);
    if (v8)
    {
      if (!strcmp(v3, v8))
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      goto LABEL_7;
    }
  }

  if (!image_name)
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = a1;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "couldn't find dyld's real path for loaded image %s", &v10, 0xCu);
    }

    return 0;
  }

  return image_name;
}

void sub_247F4D31C(uint64_t a1)
{
  sub_247F45554();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_objectForKey_(qword_2814DB5B0, v2, v3);
    v6 = *(a1 + 40);
    v5 = a1 + 40;
    *(*(v6 + 8) + 24) = v4;
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = a1 + 40;
    *(*(v7 + 8) + 24) = 0;
  }

  if (!*(*(*v5 + 8) + 24))
  {
    *(*(*v5 + 8) + 24) = objc_opt_class();
  }
}

void sub_247F4D3A0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_247F4D400(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isEqualToString_(v1, v2, @"*") & 1) != 0 || !objc_msgSend_length(v1, v3, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

uint64_t sub_247F4D6FC(uint64_t a1)
{
  *&v6.sa_len = 0;
  *&v6.sa_data[6] = 0;
  v8 = 0;
  v7 = 0;
  v5 = 28;
  if (getsockname(a1, &v6, &v5))
  {
    sub_247F5A29C(a1, v2, v3);
  }

  return bswap32(*v6.sa_data) >> 16;
}

uint64_t sub_247F4D760(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0u;
  v9 = 128;
  v4 = accept(v2, &v10, &v9);
  v5 = *(a1 + 32);
  if (v4 == -1)
  {
    objc_msgSend_disconnect(v5, v3, v4);
  }

  else
  {
    objc_msgSend__setupChannelWithConnectedSocket_assumingOwnership_orDisconnectBlock_(v5, v3, v4, 1, 0);
  }

  return objc_msgSend__signalSocketAccepted(*(a1 + 32), v6, v7);
}

void sub_247F4D960(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2))
    {
      v3 = *(a1 + 32);
      v4 = __error();
      v5 = strerror(*v4);
      NSLog(&cfstr_ErrorClosingSo.isa, v3, v5);
    }
  }
}

id sub_247F4E2CC(uint64_t a1, const char *a2)
{
  if (!atomic_load_explicit((*(*(a1 + 32) + 48) + 48), memory_order_acquire))
  {
    v3 = 64;
    do
    {
      if (*(*(*(a1 + 32) + 48) + 44))
      {
        break;
      }

      if (v3 <= 0x40)
      {
        v4 = 64;
      }

      else
      {
        v4 = v3;
      }

      usleep(v4);
      v3 = 2 * v4;
      if (2 * v4 >= 0x20000)
      {
        v3 = 0x20000;
      }
    }

    while (!atomic_load_explicit((*(*(a1 + 32) + 48) + 48), memory_order_acquire));
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v42 = a1;
  if (!*(v6 + 48))
  {
    objc_msgSend_setStatus_(v5, a2, 1);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
  }

  v7 = *(v5 + 64);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v8 = v51;
  v51[0] = sub_247F4E664;
  v51[1] = &unk_278EEEF80;
  v51[2] = v5;
  v9 = v50;
  v10 = v9;
  if (v6)
  {
    v11 = 0;
    v12 = 52;
    if (v7)
    {
      v12 = 60;
      v13 = 64;
    }

    else
    {
      v13 = 56;
    }

    v14 = 24;
    if (v7)
    {
      v14 = 32;
    }

    v46 = v6 + *(v6 + v14) + 80;
    v47 = v9;
    v15 = 40;
    if (v7)
    {
      v15 = 44;
    }

    v16 = 28;
    if (v7)
    {
      v16 = 36;
    }

    v17 = *(v6 + v16);
    v44 = v17 >> 2;
    v45 = v17;
    v18 = -1;
    v48 = (v6 + v12);
    v43 = (v6 + v15);
    v19 = 64;
    while (1)
    {
      while (1)
      {
        v20 = atomic_load(v48);
        v21 = atomic_load((v6 + v13));
        v22 = v20 >= v21 ? 0 : v17;
        v23 = v22 + v20;
        v24 = atomic_load_explicit((v6 + 48), memory_order_acquire) | v11;
        if (v23 != v21)
        {
          break;
        }

        if (v24)
        {
          v25 = 1;
        }

        else
        {
          v25 = v18 == 0;
        }

        if (v25)
        {
          goto LABEL_60;
        }

        v26 = 1000 * v19;
        v27 = v18 >= v26;
        v28 = v18 - v26;
        if (v27)
        {
          v18 = v28;
        }

        else
        {
          v18 = 0;
        }

        v29 = atomic_load(v43);
        v30 = v8;
        if (v19 <= 0x40)
        {
          v31 = 64;
        }

        else
        {
          v31 = v19;
        }

        usleep(v31);
        v11 = 0;
        v19 = 2 * v31;
        v8 = v30;
        if (v19 > 0x20000)
        {
          v11 = 0;
          v19 = 0x20000;
          if (v29)
          {
            if (kill(v29, 0) != -1 || (v32 = __error(), v11 = 1, *v32 != 3))
            {
              v11 = 0;
            }
          }
        }
      }

      v33 = v21;
      v34 = v23 - v21;
      if ((v19 & 0xFFFE0000) != 0 || v34 > v44)
      {
        v19 = 64;
      }

      v36 = v10;
      v37 = v8;
      if (v17 - v21 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v17 - v21;
      }

      v53 = 0;
      (v51[0])(v36, v46 + v21, v38, &v53);
      v39 = v34 - v38;
      if (v39)
      {
        (v51[0])(v36, v46, v39, &v53);
      }

      else
      {
        LODWORD(v39) = v38 + v33;
      }

      v8 = v37;
      v40 = v33;
      atomic_compare_exchange_strong((v6 + v13), &v40, v39);
      if (v40 != v33 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inconsistent reader offset in shared memory! MT reception suspected...\n", buf, 2u);
      }

      v10 = v47;
      v17 = v45;
      if (v53 == 1)
      {
        break;
      }

      v11 = 0;
      v18 = -1;
      if (v24)
      {
        goto LABEL_60;
      }
    }

    atomic_store(1u, (v6 + 48));
  }

LABEL_60:

  v49.receiver = *(v42 + 32);
  v49.super_class = DTXSharedMemoryTransport;
  return objc_msgSendSuper2(&v49, sel_disconnect);
}

uint64_t sub_247F4E664(uint64_t a1, const void *a2, size_t size)
{
  v5 = size;
  v6 = malloc_type_malloc(size, 0xD90E0A9CuLL);
  memcpy(v6, a2, v5);
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F4E718;
  v10[3] = &unk_278EEE728;
  v10[4] = v6;
  return objc_msgSend_received_ofLength_destructor_(v7, v8, v6, v5, v10);
}

void sub_247F4F2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F4FD30(uint64_t result, void *a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void sub_247F5007C(void *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_247F505B8;
  v52[3] = &unk_278EEEFF0;
  v3 = a1 + 5;
  v2 = a1[5];
  v52[4] = a1[4];
  v52[5] = &v53;
  v4 = a1[6];
  v52[6] = v2;
  v52[7] = v4;
  v45 = MEMORY[0x24C1C0D80](v52);
  v5 = v54[3] >= *v3;
  v6 = v45;
  if (!v5)
  {
    do
    {
      v51 = 0;
      v7 = (v6)[2](v6, 32, &v51);
      if (!v7 || (*(a1[4] + 48) & 1) != 0)
      {
        break;
      }

      v9 = *v7;
      v10 = *(v7 + 4);
      v11 = *(v7 + 8);
      v12 = *(v7 + 10);
      v13 = *(v7 + 12);
      v14 = *(v7 + 16);
      v49 = *(v7 + 20);
      v50 = *(v7 + 28);
      if (v9 != 524114809)
      {
        v36 = MEMORY[0x277D86220];
        v37 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = getprogname();
          v39 = getpid();
          v40 = a1[5] - v54[3] + 32;
          *buf = 136315650;
          v58 = v38;
          LOWORD(v59) = 1024;
          *(&v59 + 2) = v39;
          HIWORD(v59) = 2048;
          v60 = v40;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%u]: [connection error] handling %llu bytes with unexpected protocol header; disconnecting.", buf, 0x1Cu);
        }

        *(a1[4] + 48) = 1;
        free(*(a1[4] + 8));
        *(a1[4] + 8) = 0;
        (*(*(a1[4] + 40) + 16))();
        v42 = a1[4];
        v41 = a1 + 4;
        v43 = *(v42 + 40);
        *(v42 + 40) = 0;

        v18 = *(*v41 + 32);
        *(*v41 + 32) = 0;
LABEL_21:

        v6 = v45;
        break;
      }

      if (v12 == 1)
      {
        v15 = (v6)[2](v6, v13, &v51);
        if (!v15)
        {
          break;
        }

        v17 = a1[4];
        if (v17[48])
        {
          break;
        }

        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = sub_247F506BC;
        v48[3] = &unk_278EEE728;
        v48[4] = v15;
        *buf = 524114809;
        LODWORD(v58) = v10;
        WORD2(v58) = v11;
        HIWORD(v58) = 1;
        v59 = __PAIR64__(v14, v13);
        v60 = v49;
        v61 = v50;
        objc_msgSend__messageParsedWithHeader_bytes_length_destructor_(v17, v16, buf, v15 + 32, v13, v48);
        *(a1[4] + 8) = 0;
        *(a1[4] + 16) = 0;
        *(a1[4] + 24) = 0;
      }

      else
      {
        v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v8, v14);
        if (v11)
        {
          v20 = (*(v45 + 16))(v45, v13, &v51);
          if (!v20)
          {
            goto LABEL_21;
          }

          v21 = a1[4];
          if (*(v21 + 48))
          {
            goto LABEL_21;
          }

          v22 = objc_msgSend_objectForKeyedSubscript_(*(v21 + 64), v19, v18);
          objc_msgSend_appendBytes_length_(v22, v23, v20 + 32, v13);
          if (v12 - 1 == v11)
          {
            v44 = a1[4];
            v24 = v22;
            v27 = objc_msgSend_bytes(v22, v25, v26);
            v30 = objc_msgSend_length(v22, v28, v29);
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = sub_247F506C4;
            v46[3] = &unk_278EEE708;
            v22 = v22;
            v47 = v22;
            *buf = 524114809;
            LODWORD(v58) = v10;
            WORD2(v58) = v11;
            HIWORD(v58) = v12;
            v59 = __PAIR64__(v14, v13);
            v60 = v49;
            v61 = v50;
            objc_msgSend__messageParsedWithHeader_bytes_length_destructor_(v44, v31, buf, v27, v30, v46);
            objc_msgSend_removeObjectForKey_(*(a1[4] + 64), v32, v18);
          }
        }

        else
        {
          v33 = objc_alloc(MEMORY[0x277CBEB28]);
          v22 = objc_msgSend_initWithCapacity_(v33, v34, v13);
          objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 64), v35, v22, v18);
        }

        *(a1[4] + 16) = 0;

        v6 = v45;
      }
    }

    while (v54[3] < a1[5]);
  }

  _Block_object_dispose(&v53, 8);
}

uint64_t sub_247F505B8(void *a1, unsigned int a2, unint64_t *a3)
{
  v5 = *a3 + a2;
  *a3 = v5;
  v6 = a1[4];
  if (v6[3] < v5)
  {
    v6[3] = (v5 + 127) & 0xFFFFFFFFFFFFFF80;
    *(a1[4] + 8) = malloc_type_realloc(*(a1[4] + 8), *(a1[4] + 24), 0x8BC44228uLL);
    v6 = a1[4];
    v5 = *a3;
  }

  v7 = v6[2];
  v8 = v5 - v7;
  if (v5 > v7)
  {
    v9 = *(*(a1[5] + 8) + 24);
    if (v8 >= a1[6] - v9)
    {
      v8 = a1[6] - v9;
    }

    v10 = v8;
    if (v8)
    {
      memcpy((v6[1] + v7), (a1[7] + v9), v8);
      *(a1[4] + 16) += v10;
      *(*(a1[5] + 8) + 24) += v10;
      v6 = a1[4];
      v7 = v6[2];
      v5 = *a3;
    }
  }

  if (v7 >= v5)
  {
    return v6[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F507C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F507D8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0)
  {
    *(v3 + 48) = 1;
    (*(*(*(a1 + 32) + 40) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    v3 = *(a1 + 32);
  }

  v8 = *(v3 + 8);
  if (v8)
  {
    v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, v8, *(v3 + 16));
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_247F50BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *sub_247F50BE0(void *result, uint64_t a2, unsigned int a3)
{
  if (*(*(result[5] + 8) + 24))
  {
    v3 = *(result[6] + 8);
    v4 = *(v3 + 24);
    v5 = a3;
    if (v4 < a3)
    {
      v5 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - v5;
    if (a3 != v5)
    {
      v6 = *(result[5] + 8);
      v7 = *(v6 + 24);
      if (a3 - v5 >= v7)
      {
        v8 = *(v6 + 24);
      }

      else
      {
        v8 = a3 - v5;
      }

      *(v6 + 24) = v7 - v8;
      return (*(result[4] + 16))();
    }
  }

  return result;
}

__CFString *sub_247F50EF0(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v8 = v5;
  if (kDTXInterruptionMessage == v5)
  {
    v10 = @"< DTXMessage : kDTXInterruptionMessage >";
    goto LABEL_50;
  }

  if (objc_msgSend_errorStatus(v5, v6, v7) == 2)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"< DTXMessage : i%u kDTXInterruptionMessage >", a2);
    v10 = LABEL_4:;
    goto LABEL_50;
  }

  if (kDTXBarrierMessage == v8)
  {
    v10 = @"< DTXMessage : kDTXBarrierMessage >";
    goto LABEL_50;
  }

  if (kDTXAckBarrierMessage == v8)
  {
    v10 = @"< DTXMessage : kDTXAckBarrierMessage >";
    goto LABEL_50;
  }

  v11 = "";
  if ((a3 & 0x100000000) != 0)
  {
    v12 = "e";
  }

  else
  {
    v12 = "";
  }

  if (kDTXHeartbeatMessage == v8)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"< DTXMessage : i%d.%d%s kDTXHeartbeatMessage >", a2, HIDWORD(a2), v12);
    goto LABEL_4;
  }

  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = -a3;
  }

  if (a3 < 0)
  {
    v11 = "f";
  }

  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v9, @"< DTXMessage %p : i%d.%d%s c%d%s", v8, a2, HIDWORD(a2), v12, v13, v11);
  v16 = objc_msgSend_messageType(v8, v14, v15);
  if (v16 > 4)
  {
    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        objc_msgSend_appendString_(v10, v17, @" ack barrier");
      }

      else
      {
        objc_msgSend_appendString_(v10, v17, @" primitive message");
      }

      goto LABEL_47;
    }

    if (v16 == 7)
    {
      objc_msgSend_appendString_(v10, v17, @" compressed buffer");
      goto LABEL_47;
    }

    if (v16 != 8)
    {
      goto LABEL_47;
    }

    v21 = objc_msgSend_payloadObject(v8, v17, v18);
    objc_msgSend_appendFormat_(v10, v35, @" rerouted message: %@", v21);
LABEL_40:

    goto LABEL_47;
  }

  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v39 = objc_msgSend_payloadObject(v8, v17, v18);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      objc_msgSend_appendFormat_(v10, v42, @" object:(%@*)", v41);

      v21 = objc_msgSend_payloadObject(v8, v43, v44);
      sub_247F5523C(v10, v21, 0, 1);
    }

    else
    {
      v21 = objc_msgSend_payloadObject(v8, v17, v18);
      objc_msgSend_appendFormat_(v10, v34, @" error: %@", v21);
    }

    goto LABEL_40;
  }

  if (v16 == 1)
  {
    v53 = 0;
    v36 = v8;
    objc_msgSend_getBufferWithReturnedLength_(v36, v37, &v53);
    if (v53 >> 30)
    {
      objc_msgSend_appendFormat_(v10, v38, @" buffer: %.3f GB", vcvtd_n_f64_u64(v53, 0x1EuLL));
    }

    else if (v53 < 0x100000)
    {
      if (v53 < 0x400)
      {
        objc_msgSend_appendFormat_(v10, v38, @" buffer: %lld bytes", v53);
      }

      else
      {
        objc_msgSend_appendFormat_(v10, v38, @" buffer: %.3f KB", vcvtd_n_f64_u64(v53, 0xAuLL));
      }
    }

    else
    {
      objc_msgSend_appendFormat_(v10, v38, @" buffer: %.3f MB", vcvtd_n_f64_u64(v53, 0x14uLL));
    }

    goto LABEL_47;
  }

  if (v16 == 2)
  {
    objc_msgSend_appendString_(v10, v17, @" dispatch:[");
    v21 = objc_msgSend_payloadObject(v8, v19, v20);
    v23 = objc_msgSend_componentsSeparatedByString_(v21, v22, @":");
    v26 = objc_msgSend_count(v23, v24, v25);
    v27 = malloc_type_calloc(v26, 8uLL, 0x80040B8603338uLL);
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v28 = v8[7];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_247F55114;
    v52[3] = &unk_278EEF208;
    v52[4] = &v53;
    v52[5] = v26;
    v52[6] = v27;
    sub_247F5506C(v28, v52);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_247F55194;
    v47[3] = &unk_278EEF230;
    v29 = v10;
    v48 = v29;
    v49 = &v53;
    v50 = v26;
    v51 = v27;
    objc_msgSend_enumerateObjectsUsingBlock_(v23, v30, v47);
    if (*(v54 + 6))
    {
      v31 = 0;
      do
      {
        v32 = v27[v31];
        v27[v31] = 0;

        ++v31;
      }

      while (v31 < *(v54 + 6));
    }

    free(v27);
    objc_msgSend_appendString_(v29, v33, @"]");

    _Block_object_dispose(&v53, 8);
    goto LABEL_40;
  }

LABEL_47:
  objc_msgSend_appendString_(v10, v17, @" >");
  v45 = CFDictionaryCreateWithDTXPrimitiveDictionary(v8[7]);
  if (v45)
  {
    sub_247F5523C(v10, v45, 1, 1);
  }

LABEL_50:

  return v10;
}

void sub_247F51498(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    os_unfair_lock_lock(&unk_27EE80D48);
    v2[2]();
    os_unfair_lock_unlock(&unk_27EE80D48);
    v1 = v2;
  }
}

void sub_247F51504(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&unk_27EE80D48);
  objc_exception_rethrow();
}

void sub_247F51530(uint64_t a1)
{
  v1 = MEMORY[0x24C1C0D80](*(a1 + 32));
  v2 = qword_27EE80D50;
  qword_27EE80D50 = v1;
}

uint64_t sub_247F51858(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = qword_27EE80D50;
  if (qword_27EE80D50)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = objc_msgSend_length(*(*(result + 32) + 24), a2, a3);
    v7 = *(v4 + 48) * dword_2814DB5C0 / *algn_2814DB5C4;
    v8 = *(v3 + 16);
    v9 = *(v4 + 56);

    return v8(v3, v5, v6, v7, v9);
  }

  return result;
}

id sub_247F51FEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [v10 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v12, v13, v11, &a9);

  v15 = &stru_285A136E0;
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  v17 = MEMORY[0x277CCA9B8];
  v23 = *MEMORY[0x277CCA450];
  v24[0] = v16;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v24, &v23, 1);
  v21 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, @"DTXConnection", a1, v19);

  return v21;
}

void sub_247F522C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v3)
  {
    v21 = 0;
    v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v5, v3, 1, &v21);
    v8 = v21;
    if (!v7)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      v13 = &stru_285A136E0;
      if (v8)
      {
        v13 = v8;
      }

      objc_msgSend_raise_format_(v9, v12, v10, @"Unable to archive object <%@ %p> via NSSecureCoding. %@", v3, v11, v13);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v14 = v7;
  v17 = objc_msgSend_bytes(v14, v15, v16);
  v20 = objc_msgSend_length(v7, v18, v19);
  v4[2](v4, v17, v20);

  objc_autoreleasePoolPop(v6);
}

void *sub_247F52AC0(uint64_t a1, const char *a2, unsigned int a3)
{
  result = objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(*(a1 + 32), a2, a2, a3, 1, 0);
  *(*(a1 + 32) + 8) = 3;
  return result;
}

void sub_247F52B5C(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (!*(v3 + 6))
  {
    v7 = *(v3 + 3);
    if (v7)
    {
      v8 = *(v3 + 2);
      if ((v8 - 2) < 3)
      {
        v9 = objc_msgSend_bytes(v7, v4, v5);
        v12 = objc_msgSend_length(*(v3 + 3), v10, v11);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_247F55A4C;
        v23[3] = &unk_278EEF280;
        v24 = v3;
        sub_247F5561C(v9, v12, v6, v23);
        v13 = v24;
LABEL_12:

        goto LABEL_13;
      }

      if (v8 == 1)
      {
        v20 = objc_opt_class();
        if ((objc_msgSend_containsObject_(v6, v21, v20) & 1) == 0)
        {
          v13 = *(v3 + 6);
          *(v3 + 6) = 0;
          goto LABEL_12;
        }

        v19 = objc_msgSend_dataWithData_(MEMORY[0x277CBEA90], v22, *(v3 + 3));
        goto LABEL_10;
      }

      if (v8 == 6)
      {
        v14 = objc_msgSend_bytes(v7, v4, v5);
        v17 = objc_msgSend_length(*(v3 + 3), v15, v16);
        v18 = DTXPrimitiveDictionaryReferencingSerialized(v14, v17);
        v19 = CFDictionaryCreateWithDTXPrimitiveDictionary(v18);
LABEL_10:
        v13 = *(v3 + 6);
        *(v3 + 6) = v19;
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void sub_247F52F48()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v4[0] = &unk_285A12360;
  v3[1] = objc_opt_class();
  v4[1] = &unk_285A12380;
  v3[2] = objc_opt_class();
  v4[2] = &unk_285A123A0;
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v4, v3, 3);
  v2 = qword_2814DB600;
  qword_2814DB600 = v1;
}

unint64_t *sub_247F53010(int a1, unint64_t *a2, id a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_UTF8String(a3, v9, v10);
  v14 = objc_msgSend_longLongValue(v8, v12, v13);

  return DTXPrimitiveDictionaryAddPrimitivePair(a2, v11, 6, v14);
}

unint64_t *sub_247F53088(int a1, unint64_t *a2, id a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_UTF8String(a3, v9, v10);
  v12 = v8;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);

  return DTXPrimitiveDictionaryAddPrimitivePair(a2, v11, 1, v15);
}

unint64_t **sub_247F53104(int a1, unint64_t **a2, id a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_UTF8String(a3, v9, v10);
  v12 = v8;
  v15 = objc_msgSend_bytes(v12, v13, v14);
  v18 = objc_msgSend_length(v8, v16, v17);

  return DTXPrimitiveDictionaryAddBufferPair(a2, v11, v15, v18);
}

void sub_247F53198(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  Class = object_getClass(v5);
  if (Class)
  {
    Superclass = Class;
    do
    {
      v9 = objc_msgSend_objectForKeyedSubscript_(qword_2814DB600, v7, Superclass);
      v10 = v9;
      if (v9)
      {
        (*(v9 + 16))(v9, *(a1 + 32) + 56, v11, v5);
      }

      Superclass = class_getSuperclass(Superclass);
    }

    while (Superclass);
  }
}

unint64_t **sub_247F535EC(uint64_t a1, void *a2, size_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = objc_msgSend_UTF8String(v6, v7, v8);

  return DTXPrimitiveDictionaryAddBufferPair((v5 + 56), v9, a2, a3);
}

uint64_t sub_247F53D64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_2814DB608 != -1)
  {
    sub_247F5A6DC();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = qword_2814DB5A8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F55BD0;
  block[3] = &unk_278EEF320;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_247F5435C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose((v32 - 160), 8);
  if (a2 == 1)
  {
    v35 = objc_begin_catch(a1);
    v36 = MEMORY[0x277CCA9B8];
    *(v32 - 128) = *MEMORY[0x277CCA450];
    v39 = objc_msgSend_description(v35, v37, v38);
    *(v32 - 120) = v39;
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v32 - 120, v32 - 128, 1);
    v43 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v42, @"DTXMessage", 1, v41);
    v45 = objc_msgSend_newReplyWithError_(v31, v44, v43);

    objc_msgSend_sendControlAsync_replyHandler_(v30, v46, v45, 0);
    objc_end_catch();
    JUMPOUT(0x247F54310);
  }

  _Unwind_Resume(a1);
}

void sub_247F5449C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247F55E5C;
  v9[3] = &unk_278EEF370;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  _DTXPrimitiveDictionaryEnumerate(a1, v9);
}

void sub_247F54558(uint64_t a1, uint64_t a2, void *a3, const void *a4, unsigned int a5, void *a6)
{
  v10 = a3;
  v24 = v10;
  v11 = a6;
  v14 = v11;
  if (v11)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CCA5B0];
    v17 = objc_msgSend_userInfo(v11, v12, v13);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, *MEMORY[0x277CCA068]);
    objc_msgSend_raise_format_(v15, v20, v16, @"Arguments must conform to expected NSSecureCoding classes: %@", v19, v24);
  }

  v21 = *(*(*(a1 + 48) + 8) + 24);
  if (v21 < *(*(*(a1 + 56) + 8) + 24))
  {
    if (a4)
    {
      if (!*(*(*(a1 + 64) + 8) + 24))
      {
        *(*(*(a1 + 64) + 8) + 24) = CFArrayCreateMutable(0, 0, 0);
      }

      v22 = malloc_type_malloc(a5, 0x29B495FDuLL);
      memcpy(v22, a4, a5);
      CFArrayAppendValue(*(*(*(a1 + 64) + 8) + 24), v22);
      objc_msgSend_setArgument_atIndex_(*(a1 + 32), v23, v22, *(*(*(a1 + 48) + 8) + 24) + 2);
    }

    else
    {
      if (v10)
      {
        objc_msgSend_addObject_(*(a1 + 40), v12, v10);
        v21 = *(*(*(a1 + 48) + 8) + 24);
      }

      objc_msgSend_setArgument_atIndex_(*(a1 + 32), v12, &v24, v21 + 2);
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_247F54710(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a3)
  {
    v5 = objc_msgSend_newReplyWithError_(v3, a2, a3);
  }

  else
  {
    v5 = objc_msgSend_newReplyWithObject_(v3, a2, a2);
  }

  v6 = v5;
  objc_msgSend_sendControlAsync_replyHandler_(v4, v6, v6, 0);
}

uint64_t sub_247F54E04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_247F5506C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_2814DB5D0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F55584;
  v6[3] = &unk_278EEF258;
  v7 = v3;
  v5 = v3;
  sub_247F5449C(a1, v4, v6);
}

void sub_247F55114(void *a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1[4] + 8) + 24);
  if (a1[5] > v5)
  {
    v6 = v4;
    objc_storeStrong((a1[6] + 8 * v5), a2);
    v4 = v6;
    ++*(*(a1[4] + 8) + 24);
  }
}

void sub_247F55194(uint64_t a1, const char *a2, unint64_t a3)
{
  objc_msgSend_appendString_(*(a1 + 32), a2, a2);
  if (a3 + 1 < *(a1 + 48))
  {
    if (a3)
    {
      objc_msgSend_appendString_(*(a1 + 32), v5, @" ");
    }

    objc_msgSend_appendString_(*(a1 + 32), v5, @":");
    if (*(*(*(a1 + 40) + 8) + 24) > a3)
    {
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 56) + 8 * a3);

      sub_247F5523C(v6, v7, 0, 0);
    }
  }
}

void sub_247F5523C(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v9 = a2;
  if (!v9)
  {
    objc_msgSend_appendString_(v7, v8, @"nil");
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v13 = objc_msgSend_length(v10, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @"<NSData %p | %u bytes> ", v10, v13);
    if (!a3)
    {
LABEL_6:

      goto LABEL_8;
    }

    v15 = v10;
    v18 = objc_msgSend_bytes(v15, v16, v17);
    v21 = objc_msgSend_length(v10, v19, v20);
    v24 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v22, v23);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_247F55828;
    v55[3] = &unk_278EEF280;
    v56 = v7;
    sub_247F5561C(v18, v21, v24, v55);

    v25 = v56;
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = objc_msgSend_count(v9, v26, v27);
    objc_msgSend_appendFormat_(v7, v29, @"<NSArray %p | %ld objects>", v9, v28);
    if (a4)
    {
      objc_msgSend_appendString_(v7, v30, @" { ");
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_247F55920;
      v53[3] = &unk_278EEF2A8;
      v31 = v7;
      v54 = v31;
      objc_msgSend_enumerateObjectsUsingBlock_(v9, v32, v53);
      objc_msgSend_appendString_(v31, v33, @" }");
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!a4)
      {
        v48 = objc_msgSend_count(v9, v34, v35);
        objc_msgSend_appendFormat_(v7, v49, @"<NSDictionary %p | %ld key/value pairs>", v9, v48);
        goto LABEL_8;
      }

      v10 = v9;
      if (!objc_msgSend_count(v10, v36, v37))
      {
        goto LABEL_6;
      }

      objc_msgSend_appendString_(v7, v38, @" {\n");
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_247F559C4;
      v50[3] = &unk_278EEF2D0;
      v39 = v7;
      v51 = v39;
      v52 = a3;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v40, v50);
      objc_msgSend_appendString_(v39, v41, @"}");
      v25 = v51;
      goto LABEL_5;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v45 = sub_247F55884(v9, v43, v44);
    v47 = v45;
    if (isKindOfClass)
    {
      objc_msgSend_appendFormat_(v7, v46, @"%@", v45);
    }

    else
    {
      objc_msgSend_appendFormat_(v7, v46, @"[%@]", v45);
    }
  }

LABEL_8:
}

void sub_247F55584(uint64_t a1, int a2, int a3, char *cStr, CFIndex length)
{
  if (cStr)
  {
    ObjectFromPrimitiveType = _createObjectFromPrimitiveType(a2, cStr, length);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void sub_247F5561C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v10 = objc_autoreleasePoolPush();
  if (a2)
  {
    objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v9, a1, a2, 0);
    v11 = v17[0] = 0;
    v12 = v7;
    v14 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v13, v12, v11, v17);

    v15 = v17[0];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  (v8)[2](v8, v16, v15);

  objc_autoreleasePoolPop(v10);
}

void sub_247F55828(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = sub_247F55884(a2, a2, a3);
  objc_msgSend_appendFormat_(v3, v4, @"[%@]", v5);
}

id sub_247F55884(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_description(a1, a2, a3);
  if (objc_msgSend_length(v3, v4, v5) >= 0x101)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_substringToIndex_(v3, v6, 253);
    v10 = objc_msgSend_stringWithFormat_(v7, v9, @"%@...", v8);

    v3 = v10;
  }

  return v3;
}

void sub_247F55920(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 && (objc_msgSend_appendString_(*(a1 + 32), v7, @", "), v7 = v8, a3 > 4))
  {
    objc_msgSend_appendString_(*(a1 + 32), v8, @"... ");
    *a4 = 1;
  }

  else
  {
    sub_247F5523C(*(a1 + 32), v7, 0, 0);
  }
}

uint64_t sub_247F559C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  objc_msgSend_appendFormat_(v5, v7, @"    %@ : ", a2);
  sub_247F5523C(*(a1 + 32), v6, *(a1 + 40), 0);

  v9 = *(a1 + 32);

  return objc_msgSend_appendString_(v9, v8, @"\n");
}

void sub_247F55A4C(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v9 = v7;
  v10 = *(a1 + 32);
  if (v7 && *(v10 + 8) == 4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA7E8];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v12;
    v19[0] = @"Failed to deserialize message";
    v19[1] = v7;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v19, v18, 2);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v14, @"DTXMessage", 2, v13);
    v16 = *(a1 + 32);
    v17 = *(v16 + 48);
    *(v16 + 48) = v15;
  }

  else
  {
    objc_storeStrong((v10 + 48), a2);
  }
}

void sub_247F55B74()
{
  v0 = dispatch_queue_create("selector checking queue", 0);
  v1 = qword_2814DB5A8;
  qword_2814DB5A8 = v0;

  v2 = objc_opt_new();
  v3 = qword_2814DB5A0;
  qword_2814DB5A0 = v2;
}

void sub_247F55BD0(uint64_t a1)
{
  Superclass = objc_opt_class();
  v3 = NSStringFromSelector(*(a1 + 48));
  v4 = NSStringFromClass(Superclass);
  v7 = objc_msgSend_objectForKey_(qword_2814DB5A0, v5, v4);
  if (!v7)
  {
    v19 = v3;
    v8 = objc_opt_new();
    v7 = v8;
    if (Superclass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = v8;
      while (1)
      {
        v22[0] = v20;
        v22[1] = 3221225472;
        v23 = sub_247F55E04;
        v24 = &unk_278EEF2F8;
        v25 = v7;
        v10 = v22;
        outCount = 0;
        v11 = class_copyProtocolList(Superclass, &outCount);
        if (outCount)
        {
          break;
        }

LABEL_14:
        if (v11)
        {
          free(v11);
        }

        Superclass = class_getSuperclass(Superclass);
        v7 = v21;
        if (!Superclass)
        {
          goto LABEL_17;
        }
      }

      v12 = 0;
      while (1)
      {
        v13 = v11[v12];
        if (protocol_conformsToProtocol(v13, &unk_285A16C20))
        {
          v26 = 0;
          v14 = protocol_copyMethodDescriptionList(v13, 1, 1, &v26);
          v15 = v14;
          if (v26)
          {
            v16 = 0;
            v17 = v14;
            do
            {
              name = v17->name;
              ++v17;
              v23(v10, name);
              ++v16;
            }

            while (v16 < v26);
LABEL_12:
            free(v15);
            goto LABEL_13;
          }

          if (v14)
          {
            goto LABEL_12;
          }
        }

LABEL_13:

        if (++v12 >= outCount)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_17:
    objc_msgSend_setObject_forKey_(qword_2814DB5A0, v9, v7, v4, v4);
    v3 = v19;
  }

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_containsObject_(v7, v6, v3);
}

void sub_247F55E04(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 32);
  v4 = NSStringFromSelector(aSelector);
  objc_msgSend_addObject_(v2, v3, v4);
}

void sub_247F55E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (!a2)
  {
    if (a3 == 2)
    {
      v6 = a5;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_247F55F50;
      v9[3] = &unk_278EEF348;
      v7 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 2;
      sub_247F5561C(a4, v6, v7, v9);
    }

    else
    {
      v8 = *(*(a1 + 40) + 16);

      v8();
    }
  }
}

void sub_247F55F50(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v8 = v5;
  if (v5 && objc_msgSend_code(v5, v6, v7) == 4865)
  {

    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t DTXSpawnSubtaskWithError(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v139 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v17 = a6;
  if (v11 && objc_msgSend_length(v11, v15, v16))
  {
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v132 = 0;
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 0;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = posix_spawnattr_init(&v132);
    if (*(v122 + 6))
    {
      v18 = 0xFFFFFFFFLL;
LABEL_33:
      _Block_object_dispose(&v121, 8);
      _Block_object_dispose(&v125, 8);
      _Block_object_dispose(&v129, 8);
      goto LABEL_34;
    }

    v120 = 0;
    v25 = posix_spawnattr_getflags(v130 + 3, &v120);
    *(v122 + 6) |= v25;
    v26 = posix_spawnattr_setpgroup(v130 + 3, 0);
    *(v122 + 6) |= v26;
    v120 |= 0x4002u;
    v28 = objc_msgSend_objectForKeyedSubscript_(v14, v27, @"__DTX_SpawnSuspended");
    v31 = objc_msgSend_BOOLValue(v28, v29, v30);

    v32 = v120;
    if (v31)
    {
      v32 = v120 | 0x80;
      v120 |= 0x80u;
    }

    v33 = posix_spawnattr_setflags(v130 + 3, v32);
    *(v122 + 6) |= v33;
    v96 = objc_msgSend_objectForKeyedSubscript_(v14, v34, @"cpu_type");
    if (v96 && objc_msgSend_intValue(v96, v35, v36) != -1)
    {
      *buf = objc_msgSend_intValue(v96, v37, v38);
      v39 = posix_spawnattr_setbinpref_np(v130 + 3, 1uLL, buf, 0);
      *(v122 + 6) |= v39;
    }

    v40 = posix_spawn_file_actions_init(v126 + 3);
    v42 = *(v122 + 6) | v40;
    *(v122 + 6) = v42;
    if (v42)
    {
      posix_spawnattr_destroy(v130 + 3);
      if (a5)
      {
        v49 = sub_247F56868(-3, @"Failed to spawn subtask: failed to set posix spawn attributes", v43, v44, v45, v46, v47, v48, v93);
LABEL_30:
        *a5 = v49;
      }
    }

    else
    {
      v50 = objc_msgSend_objectForKeyedSubscript_(v14, v41, @"stdin_path");
      v51 = v50;
      v53 = objc_msgSend_cStringUsingEncoding_(v50, v52, 4);
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = "/dev/null";
      }

      v94 = v54;

      v56 = objc_msgSend_objectForKeyedSubscript_(v14, v55, @"stdout_path");
      v57 = v56;
      v59 = objc_msgSend_cStringUsingEncoding_(v56, v58, 4);
      if (v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = "/dev/null";
      }

      v62 = objc_msgSend_objectForKeyedSubscript_(v14, v61, @"stderr_path");
      v63 = v62;
      v65 = objc_msgSend_cStringUsingEncoding_(v62, v64, 4);
      if (v65)
      {
        v66 = v65;
      }

      else
      {
        v66 = "/dev/null";
      }

      v67 = posix_spawn_file_actions_addopen(v126 + 3, 0, v94, 0, 0);
      *(v122 + 6) |= v67;
      v68 = posix_spawn_file_actions_addopen(v126 + 3, 1, v60, 2, 0);
      *(v122 + 6) |= v68;
      v69 = posix_spawn_file_actions_addopen(v126 + 3, 2, v66, 2, 0);
      v70 = *(v122 + 6) | v69;
      *(v122 + 6) = v70;
      if (!v70)
      {
        v116 = 0;
        v117 = &v116;
        v118 = 0x2020000000;
        v119 = -1;
        *buf = 0;
        v111 = buf;
        v112 = 0x3032000000;
        v113 = sub_247F56970;
        v114 = sub_247F56980;
        v115 = 0;
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v98 = sub_247F56988;
        v99 = &unk_278EEF498;
        v100 = v12;
        v101 = v11;
        v102 = v13;
        v103 = v14;
        v105 = &v121;
        v106 = &v116;
        v107 = &v125;
        v108 = &v129;
        v104 = v17;
        v109 = buf;
        v95 = v97;
        name[0] = 0;
        v78 = MEMORY[0x277D85F48];
        v79 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, name);
        if (v79)
        {
          v80 = MEMORY[0x277D86220];
          v81 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            v82 = getprogname();
            v83 = getpid();
            v84 = mach_error_string(v79);
            *v137 = 136315906;
            *&v137[4] = v82;
            *&v137[12] = 1024;
            *&v137[14] = v83;
            *&v137[18] = 2080;
            *&v137[20] = v84;
            *&v137[28] = 1024;
            *&v137[30] = v79;
            _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_allocate' failed: %s (%d)\n", v137, 0x22u);
          }
        }

        inserted = mach_port_insert_right(*v78, name[0], name[0], 0x14u);
        if (inserted)
        {
          v86 = MEMORY[0x277D86220];
          v87 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v88 = getprogname();
            v89 = getpid();
            v90 = mach_error_string(inserted);
            *v137 = 136315906;
            *&v137[4] = v88;
            *&v137[12] = 1024;
            *&v137[14] = v89;
            *&v137[18] = 2080;
            *&v137[20] = v90;
            *&v137[28] = 1024;
            *&v137[30] = inserted;
            _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_insert_right' failed: %s (%d)\n", v137, 0x22u);
          }
        }

        v91 = name[0];
        *name = 0;
        v134 = name;
        v135 = 0x2020000000;
        v136 = 0;
        *v137 = MEMORY[0x277D85DD0];
        *&v137[8] = 3221225472;
        *&v137[16] = sub_247F58488;
        *&v137[24] = &unk_278EEE778;
        *&v137[32] = name;
        v138 = v91;
        v92 = MEMORY[0x24C1C0D80](v137);
        v98(v95, v91, v92);
        v92[2](v92);

        _Block_object_dispose(name, 8);
        if (a5)
        {
          *a5 = *(v111 + 5);
        }

        v18 = *(v117 + 6);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v116, 8);
        goto LABEL_32;
      }

      posix_spawn_file_actions_destroy(v126 + 3);
      posix_spawnattr_destroy(v130 + 3);
      if (a5)
      {
        v49 = sub_247F56868(-3, @"Failed to spawn subtask: failed to set standard streams attributes", v71, v72, v73, v74, v75, v76, v93);
        goto LABEL_30;
      }
    }

    v18 = 0xFFFFFFFFLL;
LABEL_32:

    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "empty executable path specified", buf, 2u);
  }

  if (a5)
  {
    *a5 = sub_247F56868(-1, @"Failed to spawn subtask: empty executable path specified", v19, v20, v21, v22, v23, v24, v93);
  }

  v18 = 0xFFFFFFFFLL;
LABEL_34:

  return v18;
}

void sub_247F567E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose((v42 - 208), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 240), 8);
  _Unwind_Resume(a1);
}

id sub_247F56868(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277CCA450];
  v11 = MEMORY[0x277CCACA8];
  v12 = a2;
  v13 = [v11 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, v12, &a9);

  v22[0] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v22, &v21, 1);
  v19 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v18, @"DTXSpawnSubtask", a1, v17);

  return v19;
}

uint64_t sub_247F56970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F56988(uint64_t a1, mach_port_t a2, void *a3)
{
  v139 = a2;
  v185 = *MEMORY[0x277D85DE8];
  v140 = a3;
  v6 = objc_msgSend_count(*(a1 + 32), v4, v5);
  v138 = &v138;
  MEMORY[0x28223BE20](v6);
  v9 = (&v138 - v8);
  if (v7 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v7;
  }

  bzero(&v138 - v8, v10);
  v11 = *(a1 + 40);
  v14 = objc_msgSend_UTF8String(v11, v12, v13);
  v146 = v9;
  *v9 = v14;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v142 = a1;
  v15 = *(a1 + 32);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v175, v184, 16);
  if (v19)
  {
    v20 = *v176;
    v21 = 1;
    do
    {
      v22 = 0;
      v23 = v21 << 32;
      v21 = v21;
      do
      {
        if (*v176 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v24 = objc_msgSend_description(*(*(&v175 + 1) + 8 * v22), v17, v18);
        v25 = v24;
        v28 = objc_msgSend_UTF8String(v24, v26, v27);
        v146[v21] = v28;

        ++v21;
        ++v22;
        v23 += 0x100000000;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v175, v184, 16);
    }

    while (v19);
    v29 = v23 >> 32;
  }

  else
  {
    v29 = 1;
  }

  v146[v29] = 0;
  v32 = *(v142 + 48);
  if (v32)
  {
    v145 = objc_msgSend_mutableCopy(v32, v30, v31);
  }

  else
  {
    v33 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v30, v31);
    v36 = objc_msgSend_environment(v33, v34, v35);
    v145 = objc_msgSend_mutableCopy(v36, v37, v38);
  }

  v39 = getpid();
  v41 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v40, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v42, v41, @"__DTX_SpawnParentPidKey");

  v141 = objc_msgSend_objectForKeyedSubscript_(*(v142 + 56), v43, @"__DTX_SpawnDYLDForcePlatformKey");
  if (v141)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v145, v44, v141, @"DYLD_FORCE_PLATFORM");
  }

  v46 = objc_msgSend_count(v145, v44, v45);
  MEMORY[0x28223BE20](v46);
  if (v47 >= 0x200)
  {
    v49 = 512;
  }

  else
  {
    v49 = v47;
  }

  v144 = (&v138 - v48);
  bzero(&v138 - v48, v49);
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v143 = objc_msgSend_allKeys(v145, v50, v51);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v52, &v171, v183, 16);
  if (v54)
  {
    v55 = 0;
    v56 = *v172;
    do
    {
      v57 = 0;
      v58 = v55 << 32;
      v55 = v55;
      do
      {
        if (*v172 != v56)
        {
          objc_enumerationMutation(v143);
        }

        v59 = *(*(&v171 + 1) + 8 * v57);
        v60 = MEMORY[0x277CCACA8];
        v61 = objc_msgSend_objectForKey_(v145, v53, v59);
        v63 = objc_msgSend_stringWithFormat_(v60, v62, @"%@=%@", v59, v61);
        v64 = v63;
        v67 = objc_msgSend_UTF8String(v63, v65, v66);
        v144[v55] = v67;

        ++v55;
        ++v57;
        v58 += 0x100000000;
      }

      while (v54 != v57);
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v53, &v171, v183, 16);
    }

    while (v54);
    v68 = v58 >> 32;
  }

  else
  {
    v68 = 0;
  }

  v144[v68] = 0;
  os_unfair_lock_lock(&stru_27EE80D58);
  v69 = MEMORY[0x277D85F48];
  v70 = *MEMORY[0x277D85F48];
  v170 = v139;
  v71 = mach_ports_register(v70, &v170, 1u);
  if (v71 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v72 = getprogname();
    v73 = getpid();
    v74 = mach_error_string(v71);
    LODWORD(v181[0]) = 136315906;
    *(v181 + 4) = v72;
    WORD2(v181[1]) = 1024;
    *(&v181[1] + 6) = v73;
    WORD1(v181[2]) = 2080;
    *(&v181[2] + 4) = v74;
    WORD2(v181[3]) = 1024;
    *(&v181[3] + 6) = v71;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_ports_register' failed: %s (%d)\n", v181, 0x22u);
  }

  v75 = *(*(v142 + 80) + 8);
  v76 = *(v142 + 40);
  v79 = objc_msgSend_UTF8String(v76, v77, v78);
  v80 = posix_spawn((v75 + 24), v79, (*(*(v142 + 88) + 8) + 24), (*(*(v142 + 96) + 8) + 24), v146, v144);
  *(*(*(v142 + 72) + 8) + 24) = v80;
  v81 = mach_ports_register(*v69, &v179, 0);
  if (v81 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v82 = getprogname();
    v83 = getpid();
    v84 = mach_error_string(v81);
    LODWORD(v181[0]) = 136315906;
    *(v181 + 4) = v82;
    WORD2(v181[1]) = 1024;
    *(&v181[1] + 6) = v83;
    WORD1(v181[2]) = 2080;
    *(&v181[2] + 4) = v84;
    WORD2(v181[3]) = 1024;
    *(&v181[3] + 6) = v81;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_ports_register' failed: %s (%d)\n", v181, 0x22u);
  }

  os_unfair_lock_unlock(&stru_27EE80D58);
  posix_spawn_file_actions_destroy((*(*(v142 + 88) + 8) + 24));
  posix_spawnattr_destroy((*(*(v142 + 96) + 8) + 24));
  v85 = v142;
  if (*(*(*(v142 + 72) + 8) + 24))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v88 = *(v85 + 40);
      v91 = objc_msgSend_UTF8String(v88, v89, v90);
      v92 = strerror(*(*(*(v142 + 72) + 8) + 24));
      LODWORD(v181[0]) = 136315394;
      *(v181 + 4) = v91;
      WORD2(v181[1]) = 2080;
      *(&v181[1] + 6) = v92;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to posix spawn %s: %s", v181, 0x16u);
      v85 = v142;
    }

    v93 = objc_msgSend_lastPathComponent(*(v85 + 40), v86, v87);
    strerror(*(*(*(v142 + 72) + 8) + 24));
    v100 = sub_247F56868(-2, @"Failed to posix spawn %@: %s", v94, v95, v96, v97, v98, v99, v93);
    v101 = *(*(v142 + 104) + 8);
    v102 = *(v101 + 40);
    *(v101 + 40) = v100;

    *(*(*(v142 + 80) + 8) + 24) = -1;
  }

  else
  {
    v146 = dispatch_get_global_queue(0, 0);
    v103 = dispatch_semaphore_create(0);
    v104 = dispatch_queue_create("helper process handshake queue", 0);
    v181[0] = 0;
    v181[1] = v181;
    v181[2] = 0x3032000000;
    v181[3] = sub_247F56970;
    v181[4] = sub_247F56980;
    v182 = 0;
    v168[0] = 0;
    v168[1] = v168;
    v168[2] = 0x2020000000;
    v169 = 0;
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_247F57594;
    v161[3] = &unk_278EEF3D0;
    v166 = v168;
    v165 = *(v85 + 64);
    v162 = *(v85 + 40);
    v144 = v103;
    v163 = v144;
    v167 = v181;
    v105 = v104;
    v164 = v105;
    v106 = MEMORY[0x24C1C0D80](v161);
    v107 = v142;
    v108 = dispatch_source_create(MEMORY[0x277D85D20], *(*(*(v142 + 80) + 8) + 24), 0x80000000uLL, v146);
    if (v108)
    {
      v153[0] = MEMORY[0x277D85DD0];
      v153[1] = 3221225472;
      v153[2] = sub_247F57958;
      v153[3] = &unk_278EEF3F8;
      v158 = *(v107 + 80);
      v109 = v105;
      v154 = v109;
      v110 = v106;
      v156 = v110;
      v157 = v140;
      v111 = v108;
      v155 = v111;
      dispatch_source_set_event_handler(v111, v153);
      dispatch_resume(v111);
      if (*(v107 + 64))
      {
        v113 = objc_msgSend_objectForKeyedSubscript_(*(v107 + 56), v112, @"SpawnTimeout");
        v116 = objc_msgSend_unsignedLongLongValue(v113, v114, v115);

        v149[0] = MEMORY[0x277D85DD0];
        v149[1] = 3221225472;
        v149[2] = sub_247F57A34;
        v149[3] = &unk_278EEF470;
        v152 = v139;
        v117 = v109;
        v150 = v117;
        v118 = v110;
        v151 = v118;
        dispatch_async(v146, v149);
        if (v116)
        {
          v119 = dispatch_time(0, 1000000 * v116);
        }

        else
        {
          v119 = -1;
        }

        v136 = v142;
        if (dispatch_semaphore_wait(v144, v119))
        {
          v147[0] = MEMORY[0x277D85DD0];
          v147[1] = 3221225472;
          v147[2] = sub_247F57CA4;
          v147[3] = &unk_278EEEB88;
          v148 = v118;
          dispatch_sync(v117, v147);
          v137 = *(*(*(v136 + 80) + 8) + 24);
          if (v137 >= 1)
          {
            kill(v137, 9);
          }
        }
      }

      v135 = &v154;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v122 = *(*(*(v107 + 80) + 8) + 24);
        v180[0] = 67109120;
        v180[1] = v122;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to start observing process with pid %i", v180, 8u);
      }

      v123 = objc_msgSend_lastPathComponent(*(v107 + 40), v120, v121);
      v130 = sub_247F56868(-4, @"Failed to start observing %@ (pid: %i)", v124, v125, v126, v127, v128, v129, v123);
      v131 = *(*(v107 + 104) + 8);
      v132 = *(v131 + 40);
      *(v131 + 40) = v130;

      v133 = v142;
      v134 = *(*(*(v142 + 80) + 8) + 24);
      v180[0] = 0;
      waitpid(v134, v180, 1);
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = sub_247F57940;
      v159[3] = &unk_278EEEB88;
      v160 = v106;
      dispatch_async(v105, v159);
      (*(v140 + 2))();
      v135 = &v160;
      *(*(*(v133 + 80) + 8) + 24) = -1;
    }

    _Block_object_dispose(v168, 8);
    _Block_object_dispose(v181, 8);
  }
}

void sub_247F57560(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 360), 8);
  _Block_object_dispose((v1 + 560), 8);
  _Unwind_Resume(a1);
}

void sub_247F57594(uint64_t a1, mach_port_t a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 64) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    if (*(a1 + 56))
    {
      v7 = objc_autoreleasePoolPush();
      (*(*(a1 + 56) + 16))();
      if (a2 - 1 > 0xFFFFFFFD || (a3 - 1) >= 0xFFFFFFFE || mach_port_mod_refs(*MEMORY[0x277D85F48], a2, 0, 1))
      {
        dispatch_semaphore_signal(*(a1 + 40));
      }

      else
      {
        v8 = dispatch_source_create(MEMORY[0x277D85D10], a2, 1uLL, *(a1 + 48));
        v9 = *(*(a1 + 72) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = *(*(*(a1 + 72) + 8) + 40);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_247F578F8;
        v17[3] = &unk_278EEEF38;
        v18 = *(a1 + 40);
        v19 = a2;
        dispatch_source_set_event_handler(v11, v17);
        dispatch_activate(*(*(*(a1 + 72) + 8) + 40));
        v12 = getpid();
        v20.msgh_remote_port = a2;
        v20.msgh_local_port = 0;
        *&v20.msgh_bits = 0x2000000013;
        *&v20.msgh_voucher_port = 0;
        v21 = v12;
        v13 = mach_msg_send(&v20);
        if (v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v14 = getprogname();
            v15 = getpid();
            v16 = mach_error_string(v13);
            *buf = 136315906;
            v23 = v14;
            v24 = 1024;
            v25 = v15;
            v26 = 2080;
            v27 = v16;
            v28 = 1024;
            v29 = v13;
            _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", buf, 0x22u);
          }
        }
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void sub_247F577EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(a1);
      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v19 + 32);
        v26 = objc_msgSend_UTF8String(v23, v24, v25);
        v29 = objc_msgSend_description(v20, v27, v28);
        v30 = v29;
        v33 = objc_msgSend_UTF8String(v30, v31, v32);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = v26;
        WORD6(buf) = 2080;
        *(&buf + 14) = v33;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTXSpawnSubtask handshake block failed for %s: %s", &buf, 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x247F57644);
    }

    objc_begin_catch(a1);
    dispatch_semaphore_signal(*(v19 + 40));
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_247F578F8(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *MEMORY[0x277D85F48];
  v3 = *(a1 + 40);

  return mach_port_deallocate(v2, v3);
}

void sub_247F57958(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 24);
  v9 = 0;
  waitpid(v2, &v9, 1);
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F57A1C;
  v7[3] = &unk_278EEEB88;
  v8 = *(a1 + 48);
  dispatch_async(v3, v7);
  (*(*(a1 + 56) + 16))(*(a1 + 56), v4, v5, v6);
  dispatch_source_cancel(*(a1 + 40));
}

void sub_247F57A34(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = sub_247F57BEC;
  v10 = &unk_278EEF448;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v3 = v8;
  v15 = 0u;
  memset(msg, 0, sizeof(msg));
  if (mach_msg(msg, 2, 0, 0x30u, v2, 0, 0) || *&msg[20] == 70)
  {
    v9(v3, 0, 4, 0);
  }

  else
  {
    if (HIDWORD(v15) + *&msg[4] == 48 && *&msg[24] == 1 && !HIBYTE(DWORD1(v15)) && ((v4 = DWORD1(v15) & 0xFF0000, (DWORD1(v15) - 1441792) < 0xFFFB0000) ? (v5 = v4 == 0x100000) : (v5 = 1), !v5 || (*msg & 0x80000000) != 0))
    {
      v6 = 4 * ((DWORD1(v15) - 1441792) < 0xFFFB0000);
      if (v4 == 0x100000)
      {
        v6 = 1;
      }

      if (*msg >= 0)
      {
        v7 = 6;
      }

      else
      {
        v7 = v6;
      }

      v9(v3, *&msg[28], v7, *&msg[8]);
    }

    else
    {
      v9(v3, 0, 4, 0);
    }

    mach_msg_destroy(msg);
  }
}

void sub_247F57BEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247F57C8C;
  v8[3] = &unk_278EEF420;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = a4;
  v11 = v7;
  dispatch_sync(v6, v8);
}

void DTXSubtaskCheckin(void *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_UTF8String(@"__DTX_SpawnParentPidKey", v3, v4);
  v6 = getenv(v5);
  if (v6)
  {
    v7 = atoi(v6);
    if (v7 != getppid())
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      memset(buf, 0, sizeof(buf));
      v41[0] = 648;
      *v44 = 0xE00000001;
      LODWORD(v45) = 1;
      HIDWORD(v45) = getpid();
      if (sysctl(v44, 4u, buf, v41, 0, 0) || !v41[0] || (*&buf[32] & 0x800) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else if (getppid())
  {
    goto LABEL_23;
  }

  init_port_set = 0;
  init_port_setCnt = 0;
  v10 = mach_ports_lookup(*MEMORY[0x277D85F48], &init_port_set, &init_port_setCnt);
  if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = getprogname();
    v12 = getpid();
    v13 = mach_error_string(v10);
    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 2080;
    *&buf[20] = v13;
    *&buf[28] = 1024;
    *&buf[30] = v10;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_ports_lookup' failed: %s (%d)\n", buf, 0x22u);
  }

  if (init_port_setCnt && (v14 = *init_port_set, *init_port_set + 1 >= 2))
  {
    mig_deallocate(init_port_set, 4 * init_port_setCnt);
    v29 = mach_ports_register(*MEMORY[0x277D85F48], &v43, 0);
    if (v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30 = getprogname();
      v31 = getpid();
      v32 = mach_error_string(v29);
      *buf = 136315906;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2080;
      *&buf[20] = v32;
      *&buf[28] = 1024;
      *&buf[30] = v29;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_ports_register' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mach_ports_lookup failed: received no ports or an invalid port", buf, 2u);
    }

    v14 = 0;
  }

  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = sub_247F582D0;
  v36 = &unk_278EEF4C0;
  v38 = v14;
  v37 = v1;
  v15 = &v33;
  *v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = sub_247F5865C;
  v47 = &unk_278EEE818;
  v49 = v14;
  v16 = v15;
  v48 = v16;
  v17 = v44;
  LODWORD(v41[0]) = 0;
  v18 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, v41);
  if (v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = getprogname();
    v20 = getpid();
    v21 = mach_error_string(v18);
    *buf = 136315906;
    *&buf[4] = v19;
    *&buf[12] = 1024;
    *&buf[14] = v20;
    *&buf[18] = 2080;
    *&buf[20] = v21;
    *&buf[28] = 1024;
    *&buf[30] = v18;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_allocate' failed: %s (%d)\n", buf, 0x22u);
  }

  inserted = mach_port_insert_right(*MEMORY[0x277D85F48], v41[0], v41[0], 0x14u);
  if (inserted && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = getprogname();
    v24 = getpid();
    v25 = mach_error_string(inserted);
    *buf = 136315906;
    *&buf[4] = v23;
    *&buf[12] = 1024;
    *&buf[14] = v24;
    *&buf[18] = 2080;
    *&buf[20] = v25;
    *&buf[28] = 1024;
    *&buf[30] = inserted;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_insert_right' failed: %s (%d)\n", buf, 0x22u);
  }

  v26 = LODWORD(v41[0]);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_247F58488;
  *&buf[24] = &unk_278EEE778;
  *&buf[32] = v41;
  *&buf[40] = v26;
  v27 = MEMORY[0x24C1C0D80](buf);
  v46(v17, v26, v27);
  v27[2](v27);

  _Block_object_dispose(v41, 8);
  mach_port_deallocate(*MEMORY[0x277D85F48], v14);

LABEL_23:
  v28 = objc_msgSend_UTF8String(@"__DTX_SpawnParentPidKey", v8, v9, v33, v34, v35, v36);
  unsetenv(v28);
  objc_autoreleasePoolPop(v2);
}

void sub_247F582B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F582D0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  *&v12 = 0;
  *(&v12 + 1) = 1;
  v13 = 0x13000000000000;
  name[2] = v4;
  name[3] = a2;
  *name = 0x2880001413;
  v5 = mach_msg_send(name);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = getprogname();
      v8 = getpid();
      v9 = mach_error_string(v6);
      *buf = 136315906;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2080;
      v19 = v9;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 40), a2);
  }

  v13 = 0;
  *name = 0u;
  v12 = 0u;
  if (!mach_msg(name, 2, 0, 0x28u, a2, 0, 0) && DWORD1(v12) != 70)
  {
    if ((name[0] & 0x80000000) != 0)
    {
      mach_msg_destroy(name);
    }

    else if (HIDWORD(v13) + name[1] == 40)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], name[2]);
    }
  }
}

void sub_247F58488(uint64_t a1)
{
  v1 = 0;
  v20 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong((*(*(a1 + 32) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = *(a1 + 40);
    if (v3 + 1 >= 2)
    {
      v4 = MEMORY[0x277D85F48];
      v5 = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 1u, -1);
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315906;
          v13 = getprogname();
          v14 = 1024;
          v15 = getpid();
          v16 = 2080;
          v17 = mach_error_string(v6);
          v18 = 1024;
          v19 = v6;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_mod_refs' failed: %s (%d)\n", &v12, 0x22u);
        }
      }

      v7 = mach_port_deallocate(*v4, *(a1 + 40));
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v9 = getprogname();
          v10 = getpid();
          v11 = mach_error_string(v8);
          v12 = 136315906;
          v13 = v9;
          v14 = 1024;
          v15 = v10;
          v16 = 2080;
          v17 = v11;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_deallocate' failed: %s (%d)\n", &v12, 0x22u);
        }
      }
    }
  }
}

void sub_247F5865C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = dispatch_get_global_queue(0, 0);
  v7 = a3;
  source = dispatch_source_create(MEMORY[0x277D85D10], v5, 1uLL, v6);

  dispatch_source_set_event_handler(source, v7);
  dispatch_activate(source);
  (*(*(a1 + 32) + 16))();
  dispatch_source_cancel(source);
}

void sub_247F58778(_DWORD *a1)
{
  a1[12] = -1;
  a1[13] = -1;
  v5 = a1;
  v1 = dispatch_queue_create("transport input queue", 0);
  v2 = *(v5 + 7);
  *(v5 + 7) = v1;

  v3 = dispatch_queue_create("transport output queue", 0);
  v4 = *(v5 + 8);
  *(v5 + 8) = v3;

  v5[18] = -1;
}

uint64_t sub_247F589C0(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  v9 = objc_msgSend_UTF8String(v6, v7, v8);
  v10 = 420;
  if ((a2 & 0x200) == 0)
  {
    v10 = 0;
  }

  v11 = open(v9, a2, v10);
  if ((v11 & 0x80000000) != 0)
  {
    if (a3)
    {
      __error();
      *a3 = _NSErrorWithFilePathErrnoAndVariant();
    }

    else
    {
      v12 = __error();
      NSLog(&cfstr_ErrorOpeningPa.isa, v5, *v12);
    }
  }

  return v11;
}

void sub_247F58A78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0 && close(v2))
  {
    v3 = *(a1 + 32);
    v4 = __error();
    v5 = strerror(*v4);
    NSLog(&cfstr_ErrorClosingIn.isa, v3, v5);
  }

  v6 = *(a1 + 36);
  if ((v6 & 0x80000000) == 0 && v6 != *(a1 + 32))
  {
    if (close(v6))
    {
      v7 = *(a1 + 36);
      v8 = __error();
      v9 = strerror(*v8);
      NSLog(&cfstr_ErrorClosingOu.isa, v7, v9);
    }
  }
}

void sub_247F58CD0(uint64_t a1)
{
  v2 = malloc_type_malloc(0x4000uLL, 0xC5E36EA2uLL);
  do
  {
    while (1)
    {
      v3 = read(*(a1 + 40), v2, 0x4000uLL);
      if (v3 < 0)
      {
        break;
      }

      v5 = v3;
      if (!v3)
      {
        goto LABEL_9;
      }

      v6 = *(a1 + 32);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_247F58E40;
      v10[3] = &unk_278EEE728;
      v10[4] = v2;
      objc_msgSend_received_ofLength_destructor_(v6, v4, v2, v5, v10);
      v2 = malloc_type_malloc(0x4000uLL, 0xA530237EuLL);
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    free(v2);
    return;
  }

LABEL_9:
  free(v2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247F58E48;
  v9[3] = &unk_278EEE708;
  v9[4] = v7;
  dispatch_async(v8, v9);
}

uint64_t sub_247F5912C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  result = *(a1 + 36);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

uint64_t sub_247F592D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F592EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F59370;
  v3[3] = &unk_278EEE668;
  v4 = v1;
  dispatch_sync(v2, v3);
}

void sub_247F59370(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 0x80000000) == 0 && (*(v1 + 52) & 0x80000000) == 0)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    xpc_dictionary_set_fd(*(*(*(a1 + 40) + 8) + 40), "_inFD", *(*(a1 + 32) + 48));
    v6 = *(*(a1 + 32) + 52);
    v7 = *(*(*(a1 + 40) + 8) + 40);

    xpc_dictionary_set_fd(v7, "_outFD", v6);
  }
}

uint64_t sub_247F595C4(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F59690;
  block[3] = &unk_278EEF4E8;
  block[4] = v1;
  block[5] = &v8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  dispatch_sync(v2, block);
  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

ssize_t sub_247F59690(uint64_t a1)
{
  result = *(*(a1 + 32) + 52);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    if (*(a1 + 64))
    {
      abort();
    }

    result = 0;
    goto LABEL_10;
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  result = write(result, (v3 + v4), *(a1 + 64) - v4);
  if (result != -1)
  {
LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) += result;
    return result;
  }

  result = __error();
  if (*result != 4)
  {
    result = __error();
    if (*result != 35)
    {
      result = objc_msgSend_disconnect(*(a1 + 32), v5, v6);
LABEL_7:
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  return result;
}

void sub_247F59854(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

void sub_247F598BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F59938;
  block[3] = &unk_278EEE708;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_247F59938(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;

    v2 = *(a1 + 32);
  }

  *(v2 + 52) = -1;
  *(*(a1 + 32) + 48) = -1;
}

void sub_247F59B08(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXTransport.m", 134, @"Invalid parameter not satisfying: %@", @"transportCallback != nil");
}

void sub_247F59B84()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"publishedProtocol != NULL");
}

void sub_247F59BF8()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"publishedProtocolName != nil");
}

void sub_247F59C6C()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"(peerProtocol == NULL) == (peerProtocolName == nil)");
}

void sub_247F59CE0()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"handlerBlock != NULL");
}

void sub_247F59D54()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"transportCallback != nil");
}

void sub_247F59E4C()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"publishedProtocol != NULL");
}

void sub_247F59EC0()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"publishedProtocolName != nil");
}

void sub_247F59F34()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"(peerProtocol == NULL) == (peerProtocolName == nil)");
}

void sub_247F59FA8()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"handler != NULL");
}

void sub_247F5A01C()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"remoteProtocol != NULL");
}

void sub_247F5A090()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"remoteProtocolName != nil");
}

void sub_247F5A104()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"(exportedInterface == NULL) == (exportedInterfaceName == nil)");
}

void sub_247F5A178()
{
  sub_247F4D480();
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1);
  sub_247F4D474();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"connection");
}

void sub_247F5A29C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "int _getPortOfSocketFileDescriptor(int)");
  v7 = __error();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v8, v6, @"DTXSocketTransport.m", 23, @"socket port could not be determined for %u (%u)", a1, *v7);
}

void sub_247F5A35C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXSocketTransport.m", 134, @"Invalid parameter not satisfying: %@", @"socketFileDescriptor >= 0");
}

void sub_247F5A3D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXMessageProtocols.m", 236, @"Invalid parameter not satisfying: %@", @"message");
}

void sub_247F5A480(int *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v5[0] = 67109376;
    v5[1] = v4;
    v6 = 2048;
    v7 = a2;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "invalid compression type %d specified for compatibility version %ld", v5, 0x12u);
  }

  __assert_rtn("[DTXMessage compressWithCompressor:usingType:forCompatibilityWithVersion:]", "DTXMessage.m", 471, "false && unexpected _compressionType, unsupported by compatibility version 1 --- logic error in compression selection");
}

void sub_247F5A554(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXMessage.m", 541, @"Invalid parameter not satisfying: %@", @"selector");
}

void sub_247F5A5D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXMessage.m", 554, @"Invalid parameter not satisfying: %@", @"selector");
}

void sub_247F5A64C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"DTXMessage.m", 564, @"Invalid parameter not satisfying: %@", @"selector");
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}