void sub_276A57664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276A57694(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(a2 + v6) == 10)
      {
        sub_276A5782C(a1, (a2 + v7), v6++ - v7 + 1);
        *(a1 + 20) = 1;
        v7 = v6;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 != a3);
  }

  return sub_276A5782C(a1, (a2 + v7), a3 - v7);
}

uint64_t sub_276A57744(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  sub_276A4D46C((a1 + 24), "");
  *(a1 + 48) = a3;
  std::string::resize((a1 + 24), 2 * a3, 32);
  return a1;
}

void sub_276A577A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276A577C0(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    (*(**a1 + 24))();
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_276A5782C(uint64_t result, char *a2, int a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(result + 21) & 1) == 0)
    {
      v4 = a3;
      if (*(result + 20) != 1 || ((*(result + 20) = 0, v6 = *(result + 47), v6 < 0) ? (v7 = *(result + 24), v6 = *(result + 32)) : (v7 = (result + 24)), result = sub_276A5782C(result, v7, v6), (*(v3 + 21) & 1) == 0))
      {
        v8 = *(v3 + 4);
        v9 = v3[1];
        if (v8 >= v4)
        {
LABEL_11:
          result = memcpy(v9, a2, v4);
          v3[1] += v4;
          *(v3 + 4) -= v4;
        }

        else
        {
          while (1)
          {
            memcpy(v9, a2, v8);
            v10 = *(v3 + 4);
            __dst = 0;
            result = (*(**v3 + 16))(*v3, &__dst, v3 + 2);
            *(v3 + 21) = result ^ 1;
            if ((result & 1) == 0)
            {
              break;
            }

            v4 -= v10;
            a2 += v10;
            v9 = __dst;
            v3[1] = __dst;
            v8 = *(v3 + 4);
            if (v4 <= v8)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_276A57954(google::protobuf::UnknownFieldSet *a1)
{
  v2 = *a1;
  if (v2 != *(a1 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(a1);
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 1) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_276A579A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A579A4(a1, *a2);
    sub_276A579A4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_276A579F8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a2 + 24) + 4 * v3);
      if (v3)
      {
        v7 = v5;
        do
        {
          v6 *= 10;
          --v7;
        }

        while (v7 > 1);
      }

      v4 += v6;
      ++v3;
      ++v5;
    }

    while (v3 != v2);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v8)
    {
      v10 = v4 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    v13 = *(a2 + 24);
    do
    {
      v14 = result[1];
      if (v4 == v14)
      {
        if (*(result + 8) == v2)
        {
          if (v2 < 1)
          {
            return result;
          }

          v15 = result[5];
          v16 = v13;
          v17 = v2;
          while (1)
          {
            v19 = *v15++;
            v18 = v19;
            v20 = *v16++;
            if (v18 != v20)
            {
              break;
            }

            if (!--v17)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_276A57B30(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2769BAFA4(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_276A57C60(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_276A57D14(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_276A57DE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D811D0]);
  v10 = objc_msgSend_initForStreamWritingURL_error_(v8, v9, v6, 0);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = v10 != 0;
  if (v10)
  {
    v11 = dispatch_semaphore_create(0);
    v12 = [TSPComponentWriteChannelAdapter alloc];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = sub_276A58028;
    v32 = &unk_27A6E4E10;
    v34 = &v35;
    v13 = v11;
    v33 = v13;
    v17 = objc_msgSend_initWithChannel_handler_(v12, v14, v10, &v29);
    *(v36 + 24) = v17 != 0;
    if (v17)
    {
      v18 = [TSPCryptoComponentWriteChannel alloc];
      v22 = objc_msgSend_initWithWriteChannel_encryptionInfo_(v18, v19, v17, v7, v29, v30, v31, v32);
      *(v36 + 24) = v22 != 0;
      if (v22)
      {
        v23 = objc_msgSend_tsp_dispatchData(a1, v20, v21);
        objc_msgSend_writeData_(v22, v24, v23);

        dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
        objc_msgSend_close(v22, v25, v26);
      }
    }

    objc_msgSend_close(v17, v15, v16, v29, v30, v31, v32);

    v27 = *(v36 + 24);
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(&v35, 8);

  return v27 & 1;
}

void sub_276A57FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v20 = v17;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A58028(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  v7 = v6;
  dispatch_semaphore_signal(*(a1 + 32));
  v6 = v7;
LABEL_5:
}

id sub_276A58090(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_276A581E0;
  v17 = sub_276A581F0;
  v18 = 0;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v5 = v14[5];
    v14[5] = v4;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276A581F8;
    v12[3] = &unk_27A6E4E38;
    v12[4] = &v13;
    objc_msgSend_readWithHandlerAndWait_(v3, v6, v12);
    objc_msgSend_close(v3, v7, v8);
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void sub_276A581BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A581E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A581F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else if (v10)
  {
    objc_msgSend_tsp_appendDispatchData_(*(*(*(a1 + 32) + 8) + 40), v6, v10);
  }
}

id sub_276A58298(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D811D0]);
  v9 = objc_msgSend_initForReadingURL_error_(v7, v8, v5, 0);
  if (v9)
  {
    v10 = [TSPCryptoTranscodeReadChannel alloc];
    Channel_decryptionInfo_encryptionInfo = objc_msgSend_initWithReadChannel_decryptionInfo_encryptionInfo_(v10, v11, v9, v6, 0);
    v14 = objc_msgSend_tsp_dataWithTranscoder_(MEMORY[0x277CBEA90], v13, Channel_decryptionInfo_encryptionInfo);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_276A58388(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [TSPMemoryReadChannel alloc];
  v7 = objc_msgSend_initWithNSData_(v5, v6, a1);
  if (v7)
  {
    v8 = [TSPCryptoTranscodeReadChannel alloc];
    Channel_decryptionInfo_encryptionInfo = objc_msgSend_initWithReadChannel_decryptionInfo_encryptionInfo_(v8, v9, v7, v4, 0);
    v12 = objc_msgSend_tsp_dataWithTranscoder_(MEMORY[0x277CBEA90], v11, Channel_decryptionInfo_encryptionInfo);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_276A5845C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [TSPMemoryReadChannel alloc];
  v7 = objc_msgSend_initWithNSData_(v5, v6, a1);
  if (v7)
  {
    v8 = [TSPCryptoTranscodeReadChannel alloc];
    Channel_decryptionInfo_encryptionInfo = objc_msgSend_initWithReadChannel_decryptionInfo_encryptionInfo_(v8, v9, v7, 0, v4);
    v12 = objc_msgSend_tsp_dataWithTranscoder_(MEMORY[0x277CBEA90], v11, Channel_decryptionInfo_encryptionInfo);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_276A58538(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_276A581E0;
  v21 = sub_276A581F0;
  v5 = MEMORY[0x277D85CC8];
  v6 = MEMORY[0x277D85CC8];
  v22 = v5;
  v7 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A586C0;
  v13[3] = &unk_27A6E4E60;
  v13[4] = a1;
  v14 = v7;
  v15 = v4;
  v16 = &v17;
  v8 = v4;
  v9 = v7;
  objc_msgSend_enumerateByteRangesUsingBlock_(a1, v10, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_276A58688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_276A586C0(uint64_t a1, const void *a2, uint64_t a3, size_t a4)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_276A581E0;
  v15[4] = sub_276A581F0;
  v16 = *(a1 + 32);
  v8 = *(a1 + 40);
  destructor[0] = MEMORY[0x277D85DD0];
  destructor[1] = 3221225472;
  destructor[2] = sub_276A58834;
  destructor[3] = &unk_27A6E4468;
  destructor[4] = v15;
  v9 = dispatch_data_create(a2, a4, v8, destructor);
  concat = dispatch_data_create_concat(*(*(*(a1 + 56) + 8) + 40), v9);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = concat;

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, a3, a2, a4);
  }

  _Block_object_dispose(v15, 8);
}

void sub_276A58810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276A58834(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_276A58854(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = a4;
  if (a3)
  {
    v17 = 0;
    v9 = objc_msgSend_length(a1, v6, v7);
    if (v9 > a3)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (!v9)
        {
          goto LABEL_20;
        }

        v13 = objc_autoreleasePoolPush();
        if (v9 >= a3)
        {
          v14 = a3;
          objc_msgSend_subdataWithRange_(a1, v12, v10, a3);
        }

        else
        {
          v14 = v9;
          objc_msgSend_subdataWithRange_(a1, v12, v10, v9);
        }
        v15 = ;
        if (v15)
        {
          v8[2](v8, v15, v11++, &v17);
          if ((v17 & 1) == 0)
          {
            v10 += v14;
            v9 -= v14;
            v16 = 1;
            goto LABEL_14;
          }
        }

        else
        {
          if (*MEMORY[0x277D81408] == -1)
          {
            v16 = 0;
            goto LABEL_14;
          }

          sub_276BD4DD4();
        }

        v16 = 0;
LABEL_14:

        objc_autoreleasePoolPop(v13);
        if ((v16 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    v8[2](v8, a1, 0, &v17);
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD4DFC();
  }

LABEL_20:
}

void sub_276A589D0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A58A14()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A58CA4(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (!v4)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", "[TSPComponentWriteChannelAdapter writeData:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSData_TSPersistence.mm", 265);
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPComponentWriteChannelAdapter writeData:]_block_invoke");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSData_TSPersistence.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 265, 1, "Already closed");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A58DF0;
  v13[3] = &unk_27A6E3B68;
  v13[4] = v3;
  return objc_msgSend_writeData_handler_(v4, v2, v5, v13);
}

void sub_276A58DF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, a3, v8);
  }

  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 8));
  }
}

void sub_276A59230(id *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      v5 = objc_msgSend_domain(v4, a2, a3);
      isEqualToString = objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x277D81440]);

      if (isEqualToString)
      {
        v10 = objc_msgSend_code(*a1, v8, v9);
        switch(v10)
        {
          case 0:
            v12 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
            goto LABEL_10;
          case 1:
            v12 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
            goto LABEL_10;
          case 2:
            v12 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v11, 3);
LABEL_10:
            *a1 = v12;
            return;
        }

        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSPConvertError(NSError *__autoreleasing *)");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 684, 0, "Bad error code");

        v20 = MEMORY[0x277D81150];

        objc_msgSend_logBacktraceThrottled(v20, v18, v19);
      }
    }
  }
}

void sub_276A59D68()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void *sub_276A5B668(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_276A5BAB8(uint64_t a1, const char *a2)
{
  if (*(a1 + 40) == 11)
  {
    objc_msgSend_tsu_fileReadCorruptedFileErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  }

  else
  {
    objc_msgSend_tsu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  }
  v3 = ;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_276A5C760(uint64_t a1, sqlite3_blob *a2)
{
  *a1 = &unk_2885C4410;
  v3 = a1 + 8;
  *(a1 + 8) = &unk_2885C4450;
  *(a1 + 16) = a2;
  *(a1 + 24) = sqlite3_blob_bytes(a2);
  *(a1 + 28) = 0;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(a1 + 32, v3, -1);
  return a1;
}

void *sub_276A5C7F8(void *a1)
{
  *a1 = &unk_2885C4410;
  v2 = a1 + 1;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 4));
  sub_276A5C8E0(v2);
  return a1;
}

void sub_276A5C84C(void *a1)
{
  *a1 = &unk_2885C4410;
  v1 = a1 + 1;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 4));
  sub_276A5C8E0(v1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A5C8E0(uint64_t a1)
{
  *a1 = &unk_2885C4450;
  sqlite3_blob_close(*(a1 + 8));
  return a1;
}

void sub_276A5C92C(uint64_t a1)
{
  sub_276A5C8E0(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A5C964(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) - v4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (sqlite3_blob_read(*(a1 + 8), a2, v6, v4))
  {
    return 0;
  }

  *(a1 + 20) += v6;
  return v6;
}

uint64_t sub_276A5C9BC(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  LODWORD(v3) = *(a1 + 16) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v3;
  }

  *(a1 + 20) = v3 + v2;
  return v3;
}

void sub_276A5CD18(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(*(*(a1 + 32) + 56), a2, a3))
  {
    sub_276BD4EC0();
  }

  v4 = *(a1 + 32);
  if (*(v4 + 80))
  {
    sub_276BD4F64();
  }

  if (*(v4 + 72) == 1)
  {
    sub_276BD5008();
  }

  objc_storeStrong((v4 + 64), *(a1 + 40));
  *(*(a1 + 32) + 72) = 1;
}

void sub_276A5CE94(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 17));
  if ((v1 & 1) == 0)
  {
    v3 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
    v6 = objc_msgSend_count(*(*(a1 + 32) + 40), v4, v5);
    v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
    v9 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
    v12 = objc_msgSend_count(*(*(a1 + 32) + 48), v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(v16 + 40);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_276A5D0DC;
    v45[3] = &unk_27A6E4F50;
    v45[4] = v16;
    v46 = v15;
    v47 = v8;
    v48 = v14;
    v49 = *(a1 + 48);
    objc_msgSend_enumerateReferencesUsingBlock_(v17, v18, v45);
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(v20 + 80);
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = sub_276A5D490;
    v39 = &unk_27A6E4F50;
    v40 = v20;
    v41 = v19;
    v42 = *(a1 + 48);
    v43 = v8;
    v44 = v14;
    objc_msgSend_enumerateDataReferencesUsingBlock_(v21, v22, &v36);
    objc_storeStrong((*(a1 + 32) + 40), v8);
    objc_storeStrong((*(a1 + 32) + 48), v14);
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
    v23 = *(a1 + 32);
    v24 = *(v23 + 88);
    *(v23 + 88) = 0;

    v27 = *(a1 + 32);
    if (*(v27 + 72) == 1)
    {
      if (objc_msgSend_count(*(v27 + 56), v25, v26, v36, v37, v38, v39, v40, v41))
      {
        sub_276BD5160();
      }

      v30 = *(*(a1 + 32) + 64);
      if (!v30)
      {
        v30 = *(a1 + 56);
      }

      v31 = objc_msgSend_mutableCopy(v30, v28, v29);
      v32 = *(a1 + 32);
      v33 = *(v32 + 56);
      *(v32 + 56) = v31;

      v34 = *(a1 + 32);
      v35 = *(v34 + 64);
      *(v34 + 64) = 0;

      *(*(a1 + 32) + 72) = 0;
      v27 = *(a1 + 32);
    }

    objc_msgSend_p_recalculateDataInDocumentWithAllDataIdentifiers_(v27, v25, *(a1 + 56), v36, v37, v38, v39, v40);
  }
}

uint64_t sub_276A5D0DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 80);
  v6 = a3;
  v8 = objc_msgSend_allReferencesFromDataIdentifier_(v5, v7, a2);
  v10 = objc_msgSend_allReferencesFromDataIdentifier_(*(a1 + 40), v9, a2);
  v12 = objc_msgSend_allReferencesFromIdentifier_(*(*(a1 + 32) + 88), v11, a2);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A5D1F4;
  v15[3] = &unk_27A6E4F28;
  v15[4] = v10;
  v15[5] = v12;
  v18 = a2;
  v15[6] = v8;
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  objc_msgSend_enumerateIdentifiersUsingBlock_(v6, v13, v15);

  return 1;
}

uint64_t sub_276A5D1F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_msgSend_countForIdentifier_default_(v6, a2, a2, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (objc_msgSend_countForIdentifier_default_(*(a1 + 40), a2, a2, 0) == a3)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && a3 >= 1)
    {
      v9 = *(a1 + 72);
      if (v9)
      {
        if ((objc_msgSend_wasObjectPersistedWithIdentifier_(v9, v8, a2) & 1) == 0)
        {
          v11 = objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 56), v10, *(a1 + 80), a2, a3);
          if (v11 != objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 64), v12, a2, *(a1 + 80), a3))
          {
            sub_276BD52A8();
          }

          if (v11 != a3)
          {
            v14 = MEMORY[0x277D81150];
            v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDataReferenceMap setPersistedDataReferenceMap:allDataIdentifiers:persistedObjectProvider:]_block_invoke_3");
            v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 152, 0, "Object identifier %llu has unexpected reference count to data %llu.", a2, *(a1 + 80));
LABEL_21:

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
          }
        }
      }
    }
  }

  else
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7;
    }

    if (v19 < 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPDataReferenceMap setPersistedDataReferenceMap:allDataIdentifiers:persistedObjectProvider:]_block_invoke_3");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 129, 0, "Object identifier %llu persisted negative references to data %llu.", a2, *(a1 + 80));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    v28 = objc_msgSend_countForIdentifier_default_(*(a1 + 48), v8, a2, 0) + a3;
    v29 = v28 - v19;
    if (v28 != v19)
    {
      v30 = objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 56), v27, *(a1 + 80), a2, v29);
      if (v30 != objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 64), v31, a2, *(a1 + 80), v29))
      {
        sub_276BD5204();
      }

      if (v28 < 0)
      {
        v33 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSPDataReferenceMap setPersistedDataReferenceMap:allDataIdentifiers:persistedObjectProvider:]_block_invoke_3");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v35, v15, v17, 142, 0, "Object identifier %llu removed reference from data %llu that does not exist.", a2, *(a1 + 80));
        goto LABEL_21;
      }
    }
  }

  return 1;
}

uint64_t sub_276A5D490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_allReferencesFromIdentifier_(*(*(a1 + 32) + 40), v6, a2);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_276A5D6A8;
  v26[4] = sub_276A5D6B8;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_276A5D6A8;
  v22[4] = sub_276A5D6B8;
  v23 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A5D6C0;
  v12[3] = &unk_27A6E4F78;
  v12[4] = v7;
  v17 = v28;
  v18 = v26;
  v13 = *(a1 + 40);
  v21 = a2;
  v8 = *(a1 + 48);
  v19 = v24;
  v20 = v22;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 56);
  objc_msgSend_enumerateIdentifiersUsingBlock_(v5, v10, v12);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
  return 1;
}

void sub_276A5D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A5D6A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_276A5D6C0(uint64_t a1, const char *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (!v6 || objc_msgSend_countForIdentifier_default_(v6, a2, a2, 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
    {
      v7 = objc_msgSend_allReferencesFromDataIdentifier_(*(a1 + 40), a2, *(a1 + 112));
      v8 = *(*(a1 + 88) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    v10 = *(*(*(a1 + 88) + 8) + 40);
    if ((!v10 || objc_msgSend_countForIdentifier_default_(v10, a2, a2, 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend_wasObjectPersistedWithIdentifier_(*(a1 + 48), a2, a2) & 1) == 0)
    {
      if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
      {
        v12 = objc_msgSend_allReferencesFromIdentifier_(*(*(a1 + 56) + 88), v11, *(a1 + 112));
        v13 = *(*(a1 + 104) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        *(*(*(a1 + 96) + 8) + 24) = 1;
      }

      v15 = *(*(*(a1 + 104) + 8) + 40);
      if (v15 && objc_msgSend_countForIdentifier_default_(v15, v11, a2, 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDataReferenceMap setPersistedDataReferenceMap:allDataIdentifiers:persistedObjectProvider:]_block_invoke");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 204, 0, "Object identifier %llu has unexpected reference count override to data %llu.", a2, *(a1 + 112));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }

      v23 = objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 64), v11, *(a1 + 112), a2, a3);
      if (v23 != objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1 + 72), v24, a2, *(a1 + 112), a3))
      {
        sub_276BD534C();
      }

      if (v23 != a3)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPDataReferenceMap setPersistedDataReferenceMap:allDataIdentifiers:persistedObjectProvider:]_block_invoke");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 210, 0, "Object identifier %llu has unexpected reference count to data %llu.", a2, *(a1 + 112));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      }
    }
  }

  return 1;
}

void sub_276A5DAA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = atomic_load((*(a1 + 32) + 17));
  if ((v3 & 1) == 0)
  {
    v5 = objc_msgSend_objectToDataReferenceMap(*(a1 + 40), a2, a3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_276A5DB58;
    v9[3] = &unk_27A6E4FF0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v10 = v6;
    v11 = v7;
    objc_msgSend_enumerateReferencesUsingBlock_(v5, v8, v9);
  }
}

uint64_t sub_276A5DB58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_tsp_objectForIdentifier_(*(a1 + 32), v6, a2);
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend_tsp_identifier(v7, v8, v9);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276A5DC9C;
    v21[3] = &unk_27A6E4FC8;
    v21[4] = *(a1 + 40);
    v21[5] = v11;
    objc_msgSend_enumerateIdentifiersUsingBlock_(v5, v12, v21);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPDataReferenceMap appendComponentDataReferenceMap:forUnarchivedObjects:]_block_invoke_2");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 259, 0, "invalid nil value for '%{public}s'", "unarchivedObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  return 1;
}

void sub_276A5DDD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = atomic_load((*(a1 + 32) + 17));
  if ((v4 & 1) == 0)
  {
    v6 = objc_msgSend_makeReferenceMap(*(*(a1 + 32) + 40), a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }
}

void *sub_276A5DF54(void *result, const char *a2)
{
  v2 = atomic_load((result[4] + 17));
  if (v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 56);
  v5 = result[4];
  if (v4 != 1)
  {
    v15 = 0;
LABEL_8:
    result = objc_msgSend_p_objectIdentifier_didAddReferenceToDataIdentifier_increment_isObjectPersisted_(v5, a2, v3[5], v3[6], 1, v15 & 1);
    goto LABEL_9;
  }

  if (*(v5 + 80) && *(v5 + 72) != 1)
  {
    v15 = 1;
    goto LABEL_8;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap objectIdentifier:didAddReferenceToDataIdentifier:isObjectPersisted:]_block_invoke");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 297, 0, "Persisted data reference map needs to be set before calling this method for a persisted object.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  result = objc_msgSend_p_objectIdentifier_didAddReferenceToDataIdentifier_increment_isObjectPersisted_(v3[4], v13, v3[5], v3[6], 1, v3[7] & 1);
LABEL_9:
  if (result)
  {
    result = objc_msgSend_containsIndex_(*(v3[4] + 56), v14, v3[6]);
    if ((result & 1) == 0)
    {
      result = objc_msgSend_p_isObjectIdentifierInDocument_(v3[4], v16, v3[5]);
      if (result)
      {
        objc_msgSend_addIndex_(*(v3[4] + 56), v17, v3[6]);
        v20 = v3[4];

        return objc_msgSend_p_notifyDataInDocumentUpdated(v20, v18, v19);
      }
    }
  }

  return result;
}

void *sub_276A5E1CC(void *result, const char *a2)
{
  v2 = atomic_load((result[4] + 17));
  if (v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 56);
  v5 = result[4];
  if (v4 != 1)
  {
    v15 = 0;
LABEL_8:
    result = objc_msgSend_p_objectIdentifier_willRemoveReferenceToDataIdentifier_isObjectPersisted_(v5, a2, v3[5], v3[6], v15 & 1);
    goto LABEL_9;
  }

  if (*(v5 + 80) && *(v5 + 72) != 1)
  {
    v15 = 1;
    goto LABEL_8;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap objectIdentifier:willRemoveReferenceToDataIdentifier:isObjectPersisted:]_block_invoke");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 321, 0, "Persisted data reference map needs to be set before calling this method for a persisted object.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  result = objc_msgSend_p_objectIdentifier_willRemoveReferenceToDataIdentifier_isObjectPersisted_(v3[4], v13, v3[5], v3[6], v3[7] & 1);
LABEL_9:
  if (result)
  {
    result = objc_msgSend_containsIndex_(*(v3[4] + 56), v14, v3[6]);
    if (result)
    {
      result = objc_msgSend_p_isDataInDocument_(v3[4], v16, v3[6]);
      if ((result & 1) == 0)
      {
        objc_msgSend_removeIndex_(*(v3[4] + 56), v17, v3[6]);
        v20 = v3[4];

        return objc_msgSend_p_notifyDataInDocumentUpdated(v20, v18, v19);
      }
    }
  }

  return result;
}

void sub_276A5E450(uint64_t a1, const char *a2)
{
  v2 = atomic_load((*(a1 + 32) + 17));
  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if ((v4[72] & 1) == 0)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = objc_msgSend_p_allReferencesFromObjectIdentifier_(v4, a2, v5);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = sub_276A5E5D0;
        v12[3] = &unk_27A6E5068;
        v12[4] = *(a1 + 32);
        v12[5] = &v13;
        objc_msgSend_enumerateIdentifiersUsingBlock_(v6, v7, v12);
      }

      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = objc_msgSend_p_allReferencesFromObjectIdentifier_(*(a1 + 32), a2, v8);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = sub_276A5E638;
        v11[3] = &unk_27A6E5068;
        v11[4] = *(a1 + 32);
        v11[5] = &v13;
        objc_msgSend_enumerateIdentifiersUsingBlock_(v9, v10, v11);
      }

      if (*(v14 + 24) == 1)
      {
        objc_msgSend_p_notifyDataInDocumentUpdated(*(a1 + 32), a2, v8);
      }

      _Block_object_dispose(&v13, 8);
    }
  }
}

uint64_t sub_276A5E5D0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 >= 1 && (objc_msgSend_containsIndex_(*(*(a1 + 32) + 56), a2, a2) & 1) == 0)
  {
    objc_msgSend_addIndex_(*(*(a1 + 32) + 56), v5, a2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t sub_276A5E638(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 >= 1 && objc_msgSend_containsIndex_(*(*(a1 + 32) + 56), a2, a2) && (objc_msgSend_p_isDataInDocument_(*(a1 + 32), v5, a2) & 1) == 0)
  {
    objc_msgSend_removeIndex_(*(*(a1 + 32) + 56), v6, a2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

void *sub_276A5E77C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_identifier(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  if (*(v6 + 72) == 1)
  {
    result = *(v6 + 64);
    if (!result)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      return result;
    }
  }

  else
  {
    result = *(v6 + 56);
  }

  result = objc_msgSend_containsIndex_(result, v4, v5);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_276A5EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A5EA6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_identifier(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_p_allReferencesFromDataIdentifier_(v4, v6, v5);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t sub_276A5EAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v6 = [TSPLazyReferenceFromDataToObject alloc];
    v8 = objc_msgSend_initWithDelegate_identifier_referenceCount_(v6, v7, *(a1 + 32), a2, a3);
    objc_msgSend_addObject_(*(a1 + 40), v9, v8);
  }

  return 1;
}

void sub_276A5ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_276A5ED60(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 72);
  v2 = 56;
  if (*(*(a1[5] + 8) + 24))
  {
    v2 = 64;
  }

  v8 = *(a1[4] + v2);
  v5 = objc_msgSend_copy(v8, v3, v4);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_276A5EDEC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a2);
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

void *sub_276A5F154(uint64_t a1, const char *a2)
{
  result = objc_msgSend_p_isDataInDocument_(*(a1 + 32), a2, a2);
  if (result)
  {
    v6 = *(a1 + 40);

    return objc_msgSend_addIndex_(v6, v5, a2);
  }

  return result;
}

void sub_276A5F4F4(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 17));
  if ((v2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    objc_msgSend_dataInDocumentDidChangeForDataReferenceMap_(WeakRetained, v4, *(a1 + 32));
  }
}

uint64_t sub_276A5F8F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276A5F970(a1, (i + 2));
  }

  return a1;
}

uint64_t *sub_276A5F970(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a2 + 24) + 4 * v3);
      if (v3)
      {
        v7 = v5;
        do
        {
          v6 *= 10;
          --v7;
        }

        while (v7 > 1);
      }

      v4 += v6;
      ++v3;
      ++v5;
    }

    while (v3 != v2);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_30;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v8)
    {
      v10 = v4 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_30:
    sub_276A5FC20();
  }

  while (1)
  {
    v13 = result[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_30;
    }

LABEL_29:
    result = *result;
    if (!result)
    {
      goto LABEL_30;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_29;
  }

  if (v2 >= 1)
  {
    v14 = result[5];
    v15 = *(a2 + 24);
    v16 = *(a2 + 16);
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      v19 = *v15++;
      if (v17 != v19)
      {
        break;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

void sub_276A5FBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2769B0EC4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A5FCB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2769B0EC4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A5FCCC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a2 + 24) + 4 * v3);
      if (v3)
      {
        v7 = v5;
        do
        {
          v6 *= 10;
          --v7;
        }

        while (v7 > 1);
      }

      v4 += v6;
      ++v3;
      ++v5;
    }

    while (v3 != v2);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_30;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v8)
    {
      v10 = v4 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_30:
    sub_276A5FF7C();
  }

  while (1)
  {
    v13 = result[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_30;
    }

LABEL_29:
    result = *result;
    if (!result)
    {
      goto LABEL_30;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_29;
  }

  if (v2 >= 1)
  {
    v14 = result[5];
    v15 = *(a2 + 24);
    v16 = *(a2 + 16);
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      v19 = *v15++;
      if (v17 != v19)
      {
        break;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

void sub_276A5FF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2769B0EC4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A6000C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2769B0EC4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_276A60800(uint64_t a1, int a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_removeObjectModifyDelegate_(WeakRetained, v10, *(a1 + 40));

  if (a2)
  {
    v13 = objc_msgSend_dataReferences(v7, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v14, @"TSPObjecSerialization_DataSerializationTest");
    if (v15)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v13;
      v16 = v13;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v32, v36, 16);
      if (v18)
      {
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v32 + 1) + 8 * i);
            if (v15[2](v15, v21))
            {
              objc_msgSend_appendData_completion_(*(a1 + 56), v22, v21, 0);
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, &v32, v36, 16);
        }

        while (v18);
      }

      v13 = v28;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_276A60AE4;
    v29[3] = &unk_27A6E51D0;
    v23 = *(a1 + 56);
    v31 = *(a1 + 64);
    v24 = v13;
    v30 = v24;
    objc_msgSend_finishEncodingWithCompletion_(v23, v25, v29);
  }

  else
  {
    v26 = *(a1 + 64);
    v27 = v8;
    if (!v8)
    {
      v27 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
    }

    (*(v26 + 16))(v26, 0, 0, v27);
    if (!v8)
    {
    }
  }
}

void sub_276A60AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 40);
  v7 = objc_msgSend_tsp_dataFromDispatchData_(MEMORY[0x277CBEA90], v6, a2);
  if (a2)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  (*(v5 + 16))(v5, v7, v8, v9);
}

uint64_t sub_276A61470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A61488(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 16), a2, *(a1 + 40));
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = objc_msgSend_digestString(*(a1 + 56), v6, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 24), v9, *(a1 + 40));
    isEqualToString = objc_msgSend_isEqualToString_(v8, v11, v10);

    if ((isEqualToString & 1) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDataBookmarkContext makeBookmarkDataForData:filename:options:error:]_block_invoke");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataBookmarkContext.mm");
      v19 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 24), v18, *(a1 + 40));
      v22 = objc_msgSend_digestString(*(a1 + 56), v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v23, v15, v17, 84, 0, "Existing bookmark has digest (%@) instead of expected (%@)", v19, v22);

      v26 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v26, v24, v25);
    }
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v27 = objc_msgSend_URL(*(*(a1 + 32) + 8), v6, v7);
    v29 = objc_msgSend_URLByAppendingPathComponent_(v27, v28, *(a1 + 40));
    v30 = *(*(a1 + 64) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    if (objc_msgSend_isEncryptedDataStorate_(*(a1 + 32), v32, *(a1 + 48)) & 1) == 0 && (objc_opt_respondsToSelector())
    {
      v34 = *(a1 + 48);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_276A617BC;
      v41[3] = &unk_27A6E5220;
      v41[4] = &v43;
      v42 = *(a1 + 64);
      objc_msgSend_performReadOnBookmarkDataSourceURLWithAccessor_(v34, v33, v41);
    }

    if ((v44[3] & 1) != 0 || (v35 = objc_msgSend_writeStorage_toURL_error_(TSPData, v33, *(a1 + 48), *(*(*(a1 + 64) + 8) + 40), *(a1 + 72)), *(v44 + 24) = v35, v35))
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 16), v33, *(*(*(a1 + 64) + 8) + 40), *(a1 + 40));
      v38 = objc_msgSend_digestString(*(a1 + 56), v36, v37);
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 24), v39, v38, *(a1 + 40));
    }

    else
    {
      v40 = *(*(a1 + 64) + 8);
      v38 = *(v40 + 40);
      *(v40 + 40) = 0;
    }

    _Block_object_dispose(&v43, 8);
  }
}

void sub_276A61758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A617BC(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    *(*(a1[4] + 8) + 24) = objc_msgSend_linkOrCloneItemAtURL_toURL_canLink_error_(TSPFileManager, v3, v3, *(*(a1[5] + 8) + 40), 1, a1[6]);
    v3 = v4;
  }
}

void sub_276A619CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose((v23 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_276A61A00(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 16);
  v7 = objc_msgSend_filename(*(a1 + 40), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v7);
  *(*(*(a1 + 48) + 8) + 24) = v6 == 0;
}

void sub_276A61A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v32 = 0;
    v6 = *MEMORY[0x277CBEA08];
    v31 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v3, v4, &v32, v6, &v31);
    v8 = v32;
    v11 = v31;
    if (ResourceValue_forKey_error)
    {
      v12 = objc_msgSend_URL(*(*(a1 + 32) + 8), v9, v10);
      v29 = 0;
      v30 = 0;
      v14 = objc_msgSend_getResourceValue_forKey_error_(v12, v13, &v30, v6, &v29);
      v15 = v30;
      v16 = v29;

      if (v8)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 != 1 || v15 == 0;
      if (v19 || !objc_msgSend_isEqual_(v8, v17, v15))
      {
        v11 = v16;
      }

      else
      {
        v28 = 0;
        v21 = *MEMORY[0x277CBEA48];
        v27 = 0;
        v22 = objc_msgSend_getResourceValue_forKey_error_(v5, v20, &v28, v21, &v27);
        v23 = v28;
        v11 = v27;

        if (v23)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        if (v26 == 1 && objc_msgSend_BOOLValue(v23, v24, v25))
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }
}

void sub_276A62000(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = objc_msgSend_count(*(*(a1 + 32) + 32), v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v8 = objc_alloc_init(_TtC13TSPersistence23TSPMutableIdentifierSet);
  v9 = *(*(a1 + 32) + 32);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_276A622DC;
  v38[3] = &unk_27A6E5270;
  v39 = *(a1 + 40);
  v10 = v7;
  v40 = v10;
  v11 = v8;
  v41 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, v38);
  v13 = objc_alloc(MEMORY[0x277CBEB58]);
  v16 = objc_msgSend_count(*(*(a1 + 32) + 48), v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = *(*(a1 + 32) + 48);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v42, 16);
  if (v22)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v34 + 1) + 8 * i);
        objc_msgSend_objectLocationForUUID_(*(a1 + 40), v21, v25, v34);
        if (!v21)
        {
          objc_msgSend_addObject_(v18, 0, v25);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v34, v42, 16);
    }

    while (v22);
  }

  v27 = a1 + 32;
  v26 = *(a1 + 32);
  v28 = *(v26 + 32);
  *(v26 + 32) = v10;
  v29 = v10;

  v30 = *(*(a1 + 32) + 40);
  *(*v27 + 40) = v11;
  v31 = v11;

  v32 = *(*(a1 + 32) + 48);
  *(*v27 + 48) = v18;
  v33 = v18;

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
}

void sub_276A622DC(id *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  objc_msgSend_objectLocationForUUID_(a1[4], v6, v16);
  v8 = v7;
  v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v9);
  if (v12 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_msgSend_tsp_identifier(v5, v10, v11);
  }

  if (v8 != v13)
  {
    objc_msgSend_setObject_forKeyedSubscript_(a1[5], v14, v5, v16);
    if (v8)
    {
      objc_msgSend_setCount_forIdentifier_(a1[6], v15, -1, v8);
    }

    if (v13)
    {
      objc_msgSend_setCount_forIdentifier_(a1[6], v15, 1, v13);
    }
  }
}

uint64_t sub_276A62618(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_identifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectIdentifierForUUID_(*(a1 + 40), v5, *(a1 + 48));
  v8 = v6;
  if ((*(a1 + 64) & 1) == 0 && v6 && (objc_msgSend_shouldSuppressAssertionForObjectUUID_(*(a1 + 40), v7, *(a1 + 48)) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObjectUUIDMap objectWasAddedToDocument:options:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *(a1 + 32);
    v18 = objc_msgSend_UUIDString(*(a1 + 48), v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v19, v10, v12, 137, 0, "Object [%{public}@-%llu: %p] with UUID %{public}@ is already in the document.", v14, v4, v15, v18);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21);
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 40) + 32), v7, *(a1 + 32), *(a1 + 48));
  if (v8 != v4)
  {
    if (v8)
    {
      v23 = objc_msgSend_setCount_forIdentifier_(*(*(a1 + 40) + 40), v22, -1, v8);
      v24 = v23 != -1;
      if (!v4)
      {
        if (v23 == -1)
        {
          goto LABEL_15;
        }

LABEL_14:
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
        objc_msgSend_objectUUIDMap_didUpdateWithObjectIdentifierAddedToDocument_objectIdentifierRemovedFromDocument_(WeakRetained, v26, *(a1 + 40), v4, v8);

        goto LABEL_15;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      v24 = 0;
    }

    if (objc_msgSend_setCount_forIdentifier_(*(*(a1 + 40) + 40), v22, 1, v4) != 1 || v24)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v27 = *(a1 + 48);
  v28 = *(*(a1 + 40) + 48);
  if ((*(a1 + 56) & 2) != 0)
  {

    return objc_msgSend_addObject_(v28, v22, v27);
  }

  else
  {

    return objc_msgSend_removeObject_(v28, v22, v27);
  }
}

uint64_t sub_276A62924(id *a1, const char *a2)
{
  v3 = objc_msgSend_objectIdentifierForUUID_(a1[4], a2, a1[5]);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 4), v7, v6, a1[5]);

  if (v3)
  {
    if (objc_msgSend_setCount_forIdentifier_(*(a1[4] + 5), v8, -1, v3) != -1)
    {
      WeakRetained = objc_loadWeakRetained(a1[4] + 2);
      objc_msgSend_objectUUIDMap_didUpdateWithObjectIdentifierAddedToDocument_objectIdentifierRemovedFromDocument_(WeakRetained, v11, a1[4], 0, v3);
    }
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPObjectUUIDMap objectWillBeRemovedFromDocument:]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v20 = objc_msgSend_tsp_identifier(a1[6], v18, v19);
    v21 = a1[6];
    v24 = objc_msgSend_UUIDString(a1[5], v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v13, v15, 186, 0, "Object [%{public}@-%llu: %p] with UUID %{public}@ is already not in the document.", v17, v20, v21, v24);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
  }

  v28 = a1[5];
  v29 = *(a1[4] + 6);

  return objc_msgSend_removeObject_(v29, v9, v28);
}

void sub_276A62D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A62D5C(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 32), a2, a1[5]);
  *(*(a1[6] + 8) + 24) = v3 != 0;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_msgSend_objectLocationForUUID_(*(a1[4] + 56), v4, a1[5]);
    *(*(a1[6] + 8) + 24) = v5 != 0;
  }
}

void *sub_276A62E84(void *a1, const char *a2)
{
  result = objc_msgSend_countForIdentifier_default_(*(a1[4] + 40), a2, a1[6], 0x7FFFFFFFFFFFFFFFLL);
  if (result != -1)
  {
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = objc_msgSend_isObjectIdentifierInDocument_(*(a1[4] + 56), v4, a1[6]);
      *(*(a1[5] + 8) + 24) = result;
    }

    else
    {
      if (result != 1)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected count for object identifier %llu.", "[TSPObjectUUIDMap isObjectIdentifierInDocument:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm", 241, a1[6]);
        v5 = MEMORY[0x277D81150];
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectUUIDMap isObjectIdentifierInDocument:]_block_invoke");
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 241, 1, "Unexpected count for object identifier %llu.", a1[6]);

        TSUCrashBreakpoint();
        abort();
      }

      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_276A630C4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276A63140;
  v4[3] = &unk_27A6E52C0;
  v5 = *(a1 + 40);
  return objc_msgSend_enumerateIdentifiersUsingBlock_(v2, a2, v4);
}

uint64_t sub_276A63140(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v5 = objc_msgSend_countForIdentifier_default_(*(*(a1 + 32) + 40), a2, a2, 0x7FFFFFFFFFFFFFFFLL);
  if (v5 == -1)
  {
    return 1;
  }

  if (v5 != 1)
  {
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected count for object identifier %llu.", "[TSPObjectUUIDMap isAnyObjectIdentifierInDocument:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm", 274, a2);
      v8 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPObjectUUIDMap isAnyObjectIdentifierInDocument:]_block_invoke_2");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 274, 1, "Unexpected count for object identifier %llu.", a2);

      TSUCrashBreakpoint();
      abort();
    }

    if (!objc_msgSend_isObjectIdentifierInDocument_(*(*(a1 + 32) + 56), v6, a2))
    {
      return 1;
    }
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_276A635E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A6366C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_276A63684(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_276A63694(void *a1, const char *a2)
{
  v23 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 32), a2, a1[5]);
  if (v23)
  {
    v5 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4);

    if (v23 == v5)
    {
      goto LABEL_8;
    }

    objc_opt_class();
    v6 = TSUDynamicCast();
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v11 = *(*(a1[6] + 8) + 40);
    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPObjectUUIDMap objectWithUUID:onlyIfLoaded:validateNewObjects:identifier:]_block_invoke");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 307, 0, "invalid nil value for '%{public}s'", "object");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      v11 = *(*(a1[6] + 8) + 40);
    }

    v19 = objc_msgSend_tsp_identifier(v11, v9, v10);
  }

  else
  {
    v20 = objc_msgSend_objectLocationForUUID_(*(a1[4] + 56), v3, a1[5]);
    v21 = *(a1[8] + 8);
    *(v21 + 48) = v20;
    *(v21 + 56) = v22;
    v19 = *(*(a1[8] + 8) + 56);
  }

  *(*(a1[7] + 8) + 24) = v19;
LABEL_8:
}

void sub_276A63934(id *a1, const char *a2)
{
  v26 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 4), a2, a1[5]);
  if (v26)
  {
    objc_msgSend_removeObjectForKey_(*(a1[4] + 4), v3, a1[5]);
    if (a1[6])
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 4), v3, v26);
    }
  }

  if (objc_msgSend_shouldSuppressAssertionForObjectUUID_(a1[4], v3, a1[5]))
  {
    objc_msgSend_removeObject_(*(a1[4] + 6), v4, a1[5]);
    v5 = a1[6];
    if (v5)
    {
      objc_msgSend_addObject_(*(a1[4] + 6), v4, v5);
    }
  }

  objc_msgSend_objectLocationForUUID_(*(a1[4] + 7), v4, a1[5]);
  if (v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectUUIDMap object:didChangeUUIDToValue:fromValue:]_block_invoke");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
    v13 = objc_msgSend_UUIDString(a1[5], v11, v12);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_tsp_identifier(a1[7], v16, v17);
    v19 = a1[7];
    v22 = objc_msgSend_UUIDString(a1[6], v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v23, v8, v10, 361, 0, "Object UUID %{public}@ belongs to the persisted object [%{public}@-%llu: %p]. Updating it to UUID %{public}@ will not work.", v13, v15, v18, v19, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }
}

void sub_276A63ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v19 = v14;

  _Unwind_Resume(a1);
}

void sub_276A63E6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_totalUnitCount(*(a1 + 32), v9, v10);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 32), v12, v11);
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v14, v7, v8);
  }
}

void sub_276A64138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v30 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A64190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A641A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276A64434(uint64_t a1, const char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v60 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
  v3 = objc_alloc(MEMORY[0x277D81318]);
  v4 = *(a1 + 32);
  v73 = 0;
  v6 = objc_msgSend_initForSavingToURL_error_(v3, v5, v4, &v73);
  v7 = v73;
  v59 = v6;
  v58 = objc_msgSend_writeURL(v6, v8, v9);
  v57 = objc_msgSend_URLByAppendingPathComponent_(v58, v10, @"Object.iwa");
  v62 = objc_msgSend_URLByAppendingPathComponent_(v58, v11, @"Resources");
  if (!*(a1 + 40))
  {
    if (!v7)
    {
      v7 = objc_msgSend_tsu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
    }

    if (*MEMORY[0x277D814B8] == -1)
    {
      v51 = 0;
      v52 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v6, v12, 0, 0, 0);
      goto LABEL_33;
    }

    sub_276BD55D8();
    v51 = 0;
    goto LABEL_32;
  }

  v72 = v7;
  v13 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v60, v12, v58, 1, 0, &v72);
  v14 = v72;

  if ((v13 & 1) == 0)
  {
    if (*MEMORY[0x277D814B8] != -1)
    {
      sub_276BD5538();
    }

    v51 = 0;
    v7 = v14;
    goto LABEL_32;
  }

  v71 = v14;
  v16 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v60, v15, v62, 1, 0, &v71);
  v17 = v71;

  if ((v16 & 1) == 0)
  {
    if (*MEMORY[0x277D814B8] != -1)
    {
      sub_276BD5560();
    }

    v51 = 0;
    v7 = v17;
LABEL_32:
    v52 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v59, v15, 0, 0, 0);
    goto LABEL_33;
  }

  v18 = *(a1 + 40);
  v70 = v17;
  v19 = objc_msgSend_writeToURL_options_error_(v18, v15, v57, 0, &v70);
  v7 = v70;

  if ((v19 & 1) == 0 && *MEMORY[0x277D814B8] != -1)
  {
    sub_276BD5588();
  }

  v22 = objc_msgSend_completedUnitCount(*(a1 + 48), v20, v21);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 48), v23, v22 + 1);
  if (v19)
  {
    v25 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 56), v24, @"TSPObjecSerialization_DataSerializationTest");
    if (v25)
    {
      v61 = v25;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = *(a1 + 64);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v66, v74, 16);
      if (v28)
      {
        v29 = *v67;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v67 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v66 + 1) + 8 * i);
            if ((v61)[2](v61, v31))
            {
              v34 = objc_msgSend_filename(v31, v32, v33);
              v35 = v29;
              v38 = objc_msgSend_identifier(v31, v36, v37);
              v40 = objc_msgSend_resourceNameForFilename_identifier_(TSPData, v39, v34, v38);

              v42 = objc_msgSend_URLByAppendingPathComponent_(v62, v41, v40);
              v65 = v7;
              v44 = objc_msgSend_writeToURL_error_(v31, v43, v42, &v65);
              v45 = v65;

              if ((v44 & 1) == 0 && objc_msgSend_isReadable(v31, v46, v47))
              {
                if (*MEMORY[0x277D814B8] != -1)
                {
                  sub_276BD55B0();
                }

                v51 = 0;
                v7 = v45;
                goto LABEL_32;
              }

              v7 = v45;
              v29 = v35;
            }

            v48 = objc_msgSend_completedUnitCount(*(a1 + 48), v32, v33);
            objc_msgSend_setCompletedUnitCount_(*(a1 + 48), v49, v48 + 1);
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v66, v74, 16);
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v6 = v59;
    }

    v64 = v7;
    v51 = 1;
    v52 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v6, v26, 1, 0, &v64);
  }

  else
  {
    v51 = 0;
    v52 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v6, v24, 0, 0, 0);
  }

LABEL_33:
  v53 = v52;
  if (v51)
  {
    v54 = v64;

    v7 = v54;
  }

  if (v53 && *MEMORY[0x277D814B8] != -1)
  {
    sub_276BD5600();
  }

  v55 = *(a1 + 72);
  if (v55)
  {
    (*(v55 + 16))(v55, v53, *(a1 + 64), v7);
  }
}

void sub_276A64A20()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64A64()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64AA8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64AEC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64B30()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64B74()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18)
{
  v23 = v22;

  _Unwind_Resume(a1);
}

void sub_276A64D94()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A64DD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v10 = v8;
  if (v15)
  {
    v12 = objc_msgSend_tsp_writeObjectNSDataRepresentation_andData_toURL_options_completion_(*(a1 + 32), v9, v15, v7, *(a1 + 40), *(a1 + 48), *(a1 + 64));
    if (v12)
    {
      objc_msgSend_addChild_withPendingUnitCount_(*(a1 + 56), v11, v12, 1);
    }

    v13 = v10;
  }

  else
  {
    v13 = v8;
    if (!v8)
    {
      v13 = objc_msgSend_tsu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v9, 0);
    }

    if (*MEMORY[0x277D814B8] != -1)
    {
      sub_276BD563C();
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v7, v13);
    }
  }
}

void sub_276A64F24()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A651D0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_URLByAppendingPathComponent_(*(a1 + 32), a2, @"Object.iwa");
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v35 = 0;
  v6 = objc_msgSend_initWithContentsOfURL_options_error_(v4, v5, v3, 0, &v35);
  v9 = v35;
  if (!v6 && *MEMORY[0x277D814B8] != -1)
  {
    sub_276BD5650();
  }

  v10 = objc_msgSend_completedUnitCount(*(a1 + 40), v7, v8);
  objc_msgSend_setCompletedUnitCount_(*(a1 + 40), v11, v10 + 1);
  if (v6)
  {
    v12 = [TSPObjectSerializationReadAssistant alloc];
    v14 = objc_msgSend_initWithContext_(v12, v13, *(a1 + 48));
    objc_msgSend_setIsCrossDocumentPaste_(v14, v15, *(a1 + 72));
    objc_msgSend_setIsCrossAppPaste_(v14, v16, *(a1 + 73));
    if (!v14)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "+[TSPObject(TSPSerialization) tsp_deserializeFromURL:options:context:isCrossDocumentPaste:isCrossAppPaste:completion:]_block_invoke");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Serialization.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 225, 0, "invalid nil value for '%{public}s'", "readAssistant");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 56);
    v34 = v9;
    v27 = objc_msgSend_decodeObjectWithData_packageURL_options_error_(v14, v17, v6, v25, v26, &v34);
    v28 = v34;

    if (v27)
    {

      v31 = objc_msgSend_completedUnitCount(*(a1 + 40), v29, v30);
      objc_msgSend_setCompletedUnitCount_(*(a1 + 40), v32, v31 + 1);
    }

    else
    {
      if (*MEMORY[0x277D814B8] != -1)
      {
        sub_276BD5678();
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = v9;
  }

  v33 = *(a1 + 64);
  if (v33)
  {
    (*(v33 + 16))(v33, v27, v28);
  }
}

void sub_276A6545C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A654A0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

void sub_276A65590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TSP::Reference::~Reference(va);
  _Unwind_Resume(a1);
}

void sub_276A65D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A65DE8;
  v9[3] = &unk_27A6E4E90;
  v10 = v6;
  v7 = v6;
  objc_msgSend_addOperationWithBlock_(a4, v8, v9);
}

void sub_276A66020(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Stream has already closed", "[TSPMemoryComponentWriteChannel writeData:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryComponentWriteChannel.mm", 40);
    v9 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPMemoryComponentWriteChannel writeData:]_block_invoke");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 40, 1, "Stream has already closed");

    TSUCrashBreakpoint();
    abort();
  }

  v3 = *(v1 + 16);
  v4 = *(a1 + 40);
  if (v3)
  {
    concat = dispatch_data_create_concat(v3, v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = concat;
  }

  else
  {
    v8 = v4;
    v7 = *(v1 + 16);
    *(v1 + 16) = v8;
  }
}

uint64_t sub_276A66320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A66338(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMemoryComponentWriteChannel serializedData]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 66, 0, "Stream should be closed before calling -serializedData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v3 = *(a1 + 32);
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x277D85CC8];
  }

  v13 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v13, v12);
}

id sub_276A6680C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeNumberArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A66A30(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeNumberArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_276A66EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v17)
  {
  }

  _Unwind_Resume(a1);
}

TSPCryptoReadChannel *sub_276A673E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [TSPCryptoReadChannel alloc];
  v10 = objc_msgSend_cryptoKey(*(a1 + 32), v8, v9);
  Channel_decryptionKey_blockInfos = objc_msgSend_initWithReadChannel_decryptionKey_blockInfos_(v7, v11, v5, v10, v6);

  return Channel_decryptionKey_blockInfos;
}

void sub_276A67700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A67728(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_newCGDataProviderForReadChannel_length_(MEMORY[0x277D811F0], v3, v3, *(a1 + 40));
    v3 = v4;
  }
}

void sub_276A678D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A678F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A67908(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = objc_msgSend_dataFromReadChannel_(TSPReadChannelUtils, v3, v9);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_msgSend_close(v9, v7, v8);
}

void sub_276A67B34(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

uint64_t sub_276A6850C(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

id *sub_276A686EC(id *result, const char *a2, uint64_t a3)
{
  if ((*(a3 + 8) & 1) == 0)
  {
    return objc_msgSend_addReferenceFromObjectIdentifier_toObjectIdentifier_(result[4], a2, result[5], a2);
  }

  return result;
}

void sub_276A68AF0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  v18 = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      if (a2 != 2)
      {
        (*(v5 + 2))(v5, *(a1 + 16), &v18);
      }
    }

    else
    {
      v9 = sub_276A6A128(a1, v6);
      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = v9;
        v12 = 0;
        v13 = 0;
        v14 = 8 * v10 - 8;
        v15 = 1;
        do
        {
          v16 = *v11;
          if (*v11 != v13)
          {
            if (((a2 == 2) & v15) != 0)
            {
              v15 = 0;
            }

            else
            {
              (v7)[2](v7, *v11, &v18);
              if (a2 == 1)
              {
                break;
              }

              v15 = 0;
              v12 = v18;
            }

            v13 = v16;
          }

          if (v12)
          {
            break;
          }

          ++v11;
          v17 = v14;
          v14 -= 8;
        }

        while (v17);
      }
    }
  }
}

void sub_276A68C1C(id *a1, const char *a2)
{
  v4 = objc_msgSend_objectForIdentifier_(a1[4], a2, a2);
  if (v4 || (objc_msgSend_objectForIdentifier_(a1[5], v5, a2), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v4;
    objc_msgSend_addObject_(a1[6], v11, v11);
  }

  else
  {
    v6 = a1[6];
    v7 = objc_alloc(MEMORY[0x277CCABB0]);
    v9 = objc_msgSend_initWithLongLong_(v7, v8, a2);
    objc_msgSend_addObject_(v6, v10, v9);

    v11 = 0;
  }
}

void sub_276A6994C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A699A8(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v27 = a2;
  if (*(a1 + 72) != a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = sub_2769ABC64((*(a1 + 32) + 64), &v27);
    if (v6)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = NSStringFromClass(v6[3]);
      v11 = objc_msgSend_stringWithFormat_(v8, v10, @"[%@-%llu]", v9, v27);
      v13 = objc_msgSend_tsp_stringByAppendingObjectPathComponent_(v11, v12, *(a1 + 40));
    }

    else
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"[?-%llu]", v27);
      v13 = objc_msgSend_tsp_stringByAppendingObjectPathComponent_(v9, v14, *(a1 + 40));
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 48);
    v16 = objc_alloc(MEMORY[0x277CCABB0]);
    v18 = objc_msgSend_initWithLongLong_(v16, v17, v27);
    LODWORD(v15) = objc_msgSend_containsObject_(v15, v19, v18);

    if (v15)
    {
      if (*(a1 + 88) == 1 || *(a1 + 80))
      {
        if (v27 == 1 || v27 == 3)
        {
          objc_msgSend_addObject_(*(a1 + 56), v20, v13);
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          v22 = sub_2769ABC64((*(a1 + 32) + 24), &v27);
          v24 = *(a1 + 56);
          if (v22)
          {
            v25 = objc_msgSend_tsp_stringByAppendingObjectPathComponent_(@"...|", v23, v13);
            objc_msgSend_addObject_(v24, v26, v25);
          }

          else
          {
            objc_msgSend_addObject_(*(a1 + 56), v23, v13);
          }

          objc_autoreleasePoolPop(v21);
        }

        --*(*(*(a1 + 64) + 8) + 24);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = objc_msgSend_visitObjectWithIdentifier_level_mode_limit_pathSuffix_visitedObjectIdentifiers_updatingParentObjectPaths_(*(a1 + 32), v20, v27, *(a1 + 80) + 1, *(a1 + 88), *(*(*(a1 + 64) + 8) + 24), v13, *(a1 + 48), *(a1 + 56));
    }

    *a3 = *(*(*(a1 + 64) + 8) + 24) == 0;
  }
}

void *sub_276A69E2C(void *result, const char *a2)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSP::ReferenceMapInfo::AddIdentifier(TSPObjectIdentifier)");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 124, 0, "Cannot add identifier after the entry has been sorted.");

    v9 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v9, v7, v8);
  }

  else
  {
    v11 = result;
    v12 = result[1];
    if (v12 >= 2)
    {
      result[1] = v12 + 1;
      operator new();
    }

    if (v12 != 1)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSP::ReferenceMapInfo::AddIdentifier(TSPObjectIdentifier)");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 133, 0, "Unexpected empty info.");

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    if (v11[2] != a2)
    {
      ++v11[1];
      operator new();
    }
  }

  return result;
}

id sub_276A6A094(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@%@%@", a1, @"|", v4);
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;

  return v9;
}

void *sub_276A6A128(uint64_t a1, const char *a2)
{
  if (*a1 != 1)
  {
    *a1 = 1;
    if (*(a1 + 8) <= 1uLL)
    {
      v2 = MEMORY[0x277D81150];
      v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPObjectIdentifier *TSP::ReferenceMapInfo::GetSortedIdentifiers()");
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 67, 0, "Should not sort identifiers if there is only one.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
    }

    operator new[]();
  }

  return *(a1 + 16);
}

unsigned __int8 *sub_276A6A32C(unsigned __int8 *a1)
{
  if (*(a1 + 1) >= 2uLL)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    if (v2 == 1)
    {
      if (v3)
      {
        MEMORY[0x277C9F670](v3, 0x1000C4000313F17);
      }
    }

    else if (v3)
    {
      do
      {
        v4 = *(v3 + 8);
        MEMORY[0x277C9F670]();
        v3 = v4;
      }

      while (v4);
    }
  }

  return a1;
}

uint64_t sub_276A6A3B8(uint64_t a1)
{
  sub_276A6A3F4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A6A3F4(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_276A6A32C(v2 + 24);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_276A6A438(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_276A6A70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276A6A720(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276A6A720(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276A6A32C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_276A6A804(void *a1, unint64_t *a2)
{
  result = sub_2769ABC64(a1, a2);
  if (result)
  {
    sub_2769D2814(a1, result, v4);
    sub_276A6A720(v4);
    return 1;
  }

  return result;
}

void sub_276A6A8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276A6A720(va);
  _Unwind_Resume(a1);
}

void sub_276A6AECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPPackageReadCoordinator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276A6AF98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  *(v1 + 384) = 0;
}

void sub_276A6B414(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A6B518;
  block[3] = &unk_27A6E4B40;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = a2;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, block);
}

void sub_276A6B534(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    if ((objc_msgSend_ignoreVersionCheckingWhileReading(*(a1 + 40), v6, v7) & 1) == 0 && !sub_276AC0890(*(*(a1 + 32) + 216)))
    {
      if (sub_276AC087C(*(*(a1 + 32) + 216)))
      {
        objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v32, 7);
      }

      else
      {
        objc_msgSend_tsp_unsupportedVersionErrorWithUserInfo_(MEMORY[0x277CCA9B8], v32, 0);
      }
      v15 = ;
      objc_msgSend_setError_(*(a1 + 32), v56, v15);
      (*(*(a1 + 64) + 16))();
      goto LABEL_24;
    }

    objc_msgSend_postprocessMetadata_(*(a1 + 32), v9, v5);
    v12 = objc_msgSend_packageIdentifier(*(*(a1 + 32) + 184), v10, v11);
    if (v12 == 1)
    {
      v15 = objc_msgSend_documentComponent(*(a1 + 48), v13, v14);
      v18 = objc_msgSend_documentObjectContainerComponent(*(a1 + 48), v33, v34);
      v21 = objc_msgSend_documentMetadataComponent(*(a1 + 48), v35, v36);
    }

    else
    {
      if (v12 != 2)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPPackageReadCoordinator readRootObjectWithCompletionQueue:completion:]_block_invoke_3");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        v47 = objc_msgSend_packageIdentifier(*(*(a1 + 32) + 184), v45, v46);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v42, v44, 359, 0, "Unsupported package identifier: %d", v47);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
        v52 = v8;
        if (!v8)
        {
          v52 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v51, 0);
        }

        objc_msgSend_setError_(*(a1 + 32), v51, v52);
        if (!v8)
        {
        }

        v55 = *(a1 + 64);
        v15 = objc_msgSend_error(*(a1 + 32), v53, v54);
        (*(v55 + 16))(v55, 0, 0, 0, v15);
        goto LABEL_24;
      }

      v15 = objc_msgSend_supportComponent(*(a1 + 48), v13, v14);
      v18 = objc_msgSend_supportObjectContainerComponent(*(a1 + 48), v16, v17);
      v21 = objc_msgSend_supportMetadataComponent(*(a1 + 48), v19, v20);
    }

    v37 = v21;
    v38 = *(a1 + 32);
    if ((*(v38 + 209) & 1) == 0)
    {
      v39 = objc_msgSend_fileFormatVersion(v38, v22, v23);
      if (v39 < UnsafePointer())
      {
        shouldLoadAllComponentsForDocumentURL = 2;
LABEL_23:
        v57 = objc_alloc(MEMORY[0x277CBEB18]);
        v59 = objc_msgSend_initWithCapacity_(v57, v58, 2);
        objc_msgSend_tsu_addNonNilObject_(v59, v60, v18);
        objc_msgSend_tsu_addNonNilObject_(v59, v61, v37);
        v62 = *(a1 + 32);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = sub_276A6BA30;
        v65[3] = &unk_27A6E4B68;
        v65[4] = v62;
        v63 = *(a1 + 56);
        v66 = *(a1 + 64);
        objc_msgSend_p_readComponent_additionalComponents_upgradeMode_completionQueue_completion_(v62, v64, v15, v59, shouldLoadAllComponentsForDocumentURL, v63, v65);

LABEL_24:
        goto LABEL_25;
      }

      v38 = *(a1 + 32);
    }

    shouldLoadAllComponentsForDocumentURL = objc_msgSend_shouldLoadAllComponentsForDocumentURL_(*(a1 + 40), v22, *(v38 + 192));
    goto LABEL_23;
  }

  v24 = MEMORY[0x277D81150];
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackageReadCoordinator readRootObjectWithCompletionQueue:completion:]_block_invoke_3");
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 321, 0, "Could not find package metadata.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  objc_msgSend_setError_(*(a1 + 32), v31, v8);
  (*(*(a1 + 64) + 16))();
LABEL_25:
}

void sub_276A6BA30(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v13 = a5;
  if (a2 && objc_msgSend_endReading(*(a1 + 32), v11, v12))
  {
    if (objc_msgSend_timing(*(*(a1 + 32) + 440), v11, v12) == 1)
    {
      v16 = objc_msgSend_validateModel(*(*(a1 + 32) + 440), v14, v15);
      v19 = objc_msgSend_validateDataCRC(*(*(a1 + 32) + 440), v17, v18);
      v22 = objc_msgSend_validateDataDigest(*(*(a1 + 32) + 440), v20, v21);
      v25 = objc_msgSend_scanForOSLikeCorruption(*(*(a1 + 32) + 440), v23, v24);
      v26 = v16;
      if (v19)
      {
        v26 = v16 | 2;
      }

      if (v22)
      {
        v26 |= 4uLL;
      }

      if (v25)
      {
        v27 = v26 | 8;
      }

      else
      {
        v27 = v26;
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_276A6BCB4;
      v36[3] = &unk_27A6E5510;
      v28 = *(a1 + 32);
      v39 = *(a1 + 40);
      v37 = v9;
      v38 = v10;
      objc_msgSend_validateDocumentWithOptions_timing_completion_(v28, v29, v27, 1, v36);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v30 = *(a1 + 40);
    v31 = objc_msgSend_error(*(a1 + 32), v11, v12);
    v33 = v31;
    if (v31)
    {
      v34 = 0;
      v35 = v31;
    }

    else if (v13)
    {
      v34 = 0;
      v35 = v13;
    }

    else
    {
      v35 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v32, 0);
      v34 = 1;
    }

    (*(v30 + 16))(v30, 0, 0, 0, v35);
    if (v34)
    {
    }
  }
}

void sub_276A6BCB4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v10 = v6;
  if (a2)
  {
    v7 = 0;
    v8 = a1[4];
    v9 = a1[5];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = v6;
  }

  (*(a1[6] + 16))(a1[6], a2, v8, v9, v7);
}

void sub_276A6BE08(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v12, v9, v10);
  }
}

void sub_276A6C06C(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_readComponentIfNeededAsync_(*(a1 + 32), a2, *(a1 + 40)) & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPPackageReadCoordinator p_readComponent:additionalComponents:upgradeMode:completionQueue:completion:]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 445, 0, "Should not read component more than once.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(a1 + 48);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
  if (v14)
  {
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_readComponentIfNeededAsync_(*(a1 + 32), v13, *(*(&v19 + 1) + 8 * v16++), v19);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v19, v23, 16);
    }

    while (v14);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    objc_msgSend_prepareForDocumentUpgradeWithModeImpl_(*(a1 + 32), v17, v18);
  }
}

void sub_276A6C224(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if (objc_msgSend_success(*(a1 + 32), v2, v3))
  {
    v54 = a1;
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v8 = *(*(v6 - 1) + 48);
    v9 = objc_msgSend_identifier(v7, v4, v5);
    obj = objc_msgSend_tsp_objectForIdentifier_(v8, v10, v9);
    v13 = objc_msgSend_identifier(*v6, v11, v12);
    v14 = v54;
    if (v13 == 1)
    {
      objc_storeStrong((*(v54 + 32) + 176), obj);
      v14 = v54;
    }

    v15 = *(v14 + 32);
    if (*(v15 + 209) != 1)
    {
      v18 = atomic_load((v15 + 368));
      v15 = *(v14 + 32);
      if (v18 == 2)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v19 = *(v15 + 360);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v55, v59, 16);
        if (v23)
        {
          v24 = *v56;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v56 != v24)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v55 + 1) + 8 * i);
              Version = objc_msgSend_documentReadVersion(v26, v21, v22);
              if (!sub_276AC087C(Version))
              {
                v28 = objc_msgSend_componentReadVersion(v26, v21, v22);
                if (!sub_276AC087C(v28))
                {
                  v29 = *(*(v54 + 32) + 384);
                  v30 = objc_msgSend_identifier(v26, v21, v22);
                  v34 = objc_msgSend_tsp_objectForIdentifier_(v29, v31, v30);
                  if (!v34 && (objc_msgSend_canBeDropped(v26, v32, v33) & 1) == 0)
                  {
                    v36 = MEMORY[0x277D81150];
                    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSPPackageReadCoordinator p_readComponent:additionalComponents:upgradeMode:completionQueue:completion:]_block_invoke_2");
                    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
                    v42 = objc_msgSend_locator(v26, v40, v41);
                    v45 = objc_msgSend_identifier(v26, v43, v44);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v46, v37, v39, 471, 0, "Component root object should be in memory. componentToUpgrade=[%{public}@-%llu]", v42, v45);

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_msgSend_willModifyForUpgrade(v34, v49, v50);
                  }
                }
              }
            }

            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v55, v59, 16);
          }

          while (v23);
        }

        v15 = *(v54 + 32);
      }
    }

    v51 = *(v15 + 360);
    *(v15 + 360) = 0;

    (*(*(v54 + 48) + 16))();
  }

  else
  {
    v16 = *(a1 + 48);
    v17 = objc_msgSend_error(*(a1 + 32), v4, v5);
    (*(v16 + 16))(v16, 0, 0, 0, v17);
  }

  objc_autoreleasePoolPop(context);
}

void sub_276A6C7F0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_success(*(a1 + 32), a2, a3) && (objc_msgSend_incompatibleVersion(*(a1 + 40), v4, v5) & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 184);
    v9 = objc_msgSend_locator(*(a1 + 40), v6, v7);
    v12 = objc_msgSend_compressionAlgorithm(*(a1 + 40), v10, v11);
    isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(*(a1 + 40), v13, v14);
    v57 = 0;
    isStoredOutsideObjectArchive_error = objc_msgSend_newReadChannelForComponentLocator_compressionAlgorithm_isStoredOutsideObjectArchive_error_(v8, v16, v9, v12, isStoredOutsideObjectArchive, &v57);
    v18 = v57;

    if (isStoredOutsideObjectArchive_error)
    {
      v21 = [TSPComponentReader alloc];
      Channel = objc_msgSend_initWithComponent_finalizeHandlerQueue_delegate_readChannel_(v21, v22, *(a1 + 40), *(*(a1 + 32) + 200), *(a1 + 32), isStoredOutsideObjectArchive_error);
      if (Channel)
      {
        dispatch_group_enter(*(*(a1 + 32) + 280));
        dispatch_suspend(*(*(a1 + 32) + 288));
        v26 = *(*(a1 + 32) + 296);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = sub_276A6CBC8;
        v54[3] = &unk_27A6E46B8;
        v27 = *(a1 + 40);
        v29 = *(a1 + 32);
        v28 = *(a1 + 40);
        v55 = v27;
        v56 = v29;
        v30 = *(v29 + 304);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = sub_276A6CC50;
        v52[3] = &unk_27A6E55D8;
        v52[4] = v29;
        v53 = v28;
        objc_msgSend_readWithIOCompletionQueue_ioCompletion_completionQueue_completion_(Channel, v31, v26, v54, v30, v52);
      }

      else
      {
        objc_msgSend_close(isStoredOutsideObjectArchive_error, v23, v24);
        v36 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v35, 0);
        objc_msgSend_setError_(*(a1 + 32), v37, v36);

        v38 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPPackageReadCoordinator readComponentAsync:]_block_invoke");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        v45 = objc_msgSend_locator(*(a1 + 40), v43, v44);
        v48 = objc_msgSend_identifier(*(a1 + 40), v46, v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v49, v40, v42, 539, 0, "Failed to create reader for component [%{public}@-%llu]", v45, v48);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
      }
    }

    else if ((objc_msgSend_canBeDropped(*(a1 + 40), v19, v20) & 1) == 0)
    {
      v33 = objc_msgSend_tsp_ensureCorruptedDocumentErrorWithError_(MEMORY[0x277CCA9B8], v32, v18);
      objc_msgSend_setError_(*(a1 + 32), v34, v33);

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD5970();
      }
    }
  }
}

void sub_276A6CB84()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A6CBC8(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && (objc_msgSend_canBeDropped(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v5 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v4, 0);
    objc_msgSend_setError_(*(a1 + 40), v6, v5);
  }

  v7 = *(*(a1 + 40) + 288);

  dispatch_resume(v7);
}

void sub_276A6CC50(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 280);
    v13 = *(v11 + 376);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A6CD84;
    block[3] = &unk_27A6E29B0;
    block[4] = v11;
    v16 = v7;
    v17 = *(a1 + 40);
    dispatch_group_async(v12, v13, block);
  }

  else if ((objc_msgSend_canBeDropped(*(a1 + 40), v8, v9) & 1) == 0)
  {
    objc_msgSend_setError_(*(a1 + 32), v14, v10);
  }

  dispatch_group_leave(*(*(a1 + 32) + 280));
}

uint64_t sub_276A6CD84(void *a1, const char *a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = objc_msgSend_packageIdentifier(v3[23], a2, a3);

  return objc_msgSend_didReadObjects_forComponent_packageIdentifier_(v3, v6, v4, v5, v7);
}

void sub_276A6CF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A6CF7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (*(a1 + 56) == 1)
  {
    v8 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 384), v6, a2);
    v11 = v8;
    if (v8)
    {
      v12 = v8 == v7;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v14 = objc_msgSend_identifier(*(a1 + 40), v9, v10);
      if (UnsafePointer != -1)
      {
        sub_276BD5998();
      }

      objc_msgSend_setTsp_identifier_(v7, v13, 0);
      v17 = objc_msgSend_tsp_identifier(v7, v15, v16);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v20 = objc_msgSend_objectUUID(v7, v18, v19);
      v21 = v20;
      if (v20)
      {
        v23 = sub_2769DD85C(v20, 7, v14, a2);
        if (!v23)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d New object UUID should not be nil.", "[TSPPackageReadCoordinator didReadObjects:forComponent:packageIdentifier:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 619);
          v57 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSPPackageReadCoordinator didReadObjects:forComponent:packageIdentifier:]_block_invoke");
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v59, v61, 619, 1, "New object UUID should not be nil.");

          TSUCrashBreakpoint();
          abort();
        }

        objc_msgSend_setObjectUUID_updatingObjectUUIDMap_(v7, v22, v23, 0);
        v24 = *(a1 + 32);
        v25 = *(v24 + 280);
        v26 = *(v24 + 376);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_276A6D484;
        block[3] = &unk_27A6E5600;
        block[8] = a2;
        block[9] = v17;
        block[4] = v24;
        block[5] = v23;
        block[6] = v21;
        block[7] = v14;
        dispatch_group_async(v25, v26, block);
      }

      a2 = v17;
    }
  }

  else
  {
    v28 = *(a1 + 57);
    v29 = *(a1 + 40);
    v30 = *(*(a1 + 32) + 384);
    v72 = v5;
    v31 = v5;
    v71 = v29;
    v70 = v30;
    v33 = objc_msgSend_tsp_objectForIdentifier_(v70, v32, a2);
    v35 = v33;
    if (v33)
    {
      v36 = v33 == v31;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v64 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "void TSPPackageReadCoordinatorInstrumentedAssertObjectWasNotReadTwice(TSPPackageIdentifier, TSPObjectIdentifier, TSPObject *__strong, TSPComponent *__strong, NSMapTable *__strong)");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      v67 = sub_276AC69B4(v28, v38);
      v65 = objc_msgSend_tsp_component(v35, v39, v40);
      v66 = objc_msgSend_locator(v65, v41, v42);
      v63 = objc_msgSend_tsp_component(v35, v43, v44);
      v47 = objc_msgSend_identifier(v63, v45, v46);
      v50 = objc_msgSend_locator(v71, v48, v49);
      v53 = objc_msgSend_identifier(v71, v51, v52);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v54, v69, v68, 173, 0, "%{public}@ package read two objects with identifier %llu: (component:[%{public}@-%llu], object:[%@]) and (component:[%{public}@-%llu], object:[%@]).", v67, a2, v66, v47, v35, v50, v53, v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
    }

    v7 = v72;
  }

  objc_msgSend_tsp_setObject_forIdentifier_(*(*(a1 + 32) + 384), v27, v7, a2);
}

void sub_276A6D440()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A6D484(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 240);
  for (i = *(v2 + 248); v3 != i; ++v3)
  {
    if ((*(**v3 + 32))(*v3, a1[7], a1[8]))
    {
      (*(**v3 + 16))();
    }
  }

  operator new();
}

void sub_276A6D5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_276BD59AC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_276A6D600(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_2769BA860();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_276A73310(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_276A73358(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void sub_276A6D8D0(uint64_t a1, void *a2)
{
  v16 = a2;
  if (v16)
  {
    v5 = objc_msgSend_packageIdentifier(v16, v3, v4);
    if (v5 == objc_msgSend_packageIdentifier(*(*(a1 + 32) + 184), v6, v7))
    {
      objc_msgSend_readComponentIfNeededAsync_(*(a1 + 32), v8, v16);
    }

    else
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackageReadCoordinator readExternalReferenceComponentIfNeededAsyncForObjectIdentifier:componentIdentifier:isWeak:fromComponent:]_block_invoke_2");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 710, 0, "Package read coordinator cannot read external components.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }
}

void sub_276A6DAD4(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 160));
  v5 = objc_msgSend_componentManager(WeakRetained, v3, v4);
  v6 = *(a1 + 56);
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A6DC28;
  v11[3] = &unk_27A6E56A0;
  v15 = *(a1 + 64);
  v14 = v6;
  v13 = *(a1 + 48);
  v10 = *(a1 + 32);
  v8 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  objc_msgSend_componentForRootObjectIdentifier_queue_completion_(v5, v9, v6, v7, v11);
}

void sub_276A6DC28(uint64_t a1, void *a2)
{
  v11 = a2;
  if (!v11 && (*(a1 + 64) & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPPackageReadCoordinator prepareToReadComponentWithIdentifier:forObjectIdentifier:isWeakReference:queue:completion:]_block_invoke_2");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 725, 0, "Read coordinator doesn't know the component for root object identifier: %llu", *(a1 + 56));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(*(a1 + 32) + 280));
  dispatch_resume(*(a1 + 40));
}

void sub_276A6DF04(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v14 = a3;
  v8 = a5;
  objc_opt_class();
  v9 = TSUDynamicCast();
  v11 = v9;
  if (a2 && v9)
  {
    objc_msgSend_preprocessMetadata_(*(a1 + 32), v10, v9);
  }

  else
  {

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v12, 7);

      v11 = 0;
      v8 = v13;
    }

    else
    {
      v11 = 0;
      if (!v8)
      {
        v8 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_276A6E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A6E490(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A6E4A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276A6EF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A6F00C(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_packageIdentifier(v3, v4, v5) == *(a1 + 64))
  {
    v10 = objc_msgSend_componentObjectUUIDMap(v3, v6, v7);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = objc_msgSend_identifier(v3, v8, v9);
      objc_msgSend_setMetadata_forComponentIdentifier_(v11, v13, v10, v12);
      *(*(*(a1 + 56) + 8) + 24) += objc_msgSend_count(v10, v14, v15);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = objc_msgSend_featureInfos(v3, v8, v9, 0);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
    if (v20)
    {
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          v25 = objc_msgSend_identifier(v23, v18, v19);
          if (v25)
          {
            objc_msgSend_addObject_(*(a1 + 40), v24, v25);
            v28 = objc_msgSend_writeVersion(v23, v26, v27);
            if (sub_276AC087C(v28))
            {
              objc_msgSend_addObject_(*(a1 + 48), v29, v25);
            }
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v30, v34, 16);
      }

      while (v20);
    }
  }
}

void sub_276A6F208(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_identifier(v3, v4, v5);
  v7 = *(*(a1 + 32) + 272);
  v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v8, v6);
  LODWORD(v7) = objc_msgSend_containsObject_(v7, v10, v9);

  if (v7)
  {
    v11 = objc_opt_new();
    v14 = objc_msgSend_componentObjectUUIDMap(v3, v12, v13);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_276A6F380;
    v18[3] = &unk_27A6E5740;
    v18[4] = *(a1 + 32);
    v20 = v6;
    v15 = v11;
    v19 = v15;
    objc_msgSend_enumerateIdentifiersAndObjectUUIDsUsingBlock_(v14, v16, v18);

    objc_msgSend_setComponentObjectUUIDMap_(v3, v17, v15);
  }
}

void sub_276A6F380(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (objc_msgSend_containsObject_(*(*(a1 + 32) + 264), v5, v11))
  {
    v7 = objc_msgSend_newObjectUUIDForObjectIdentifier_(*(a1 + 32), v6, a2);
    objc_msgSend_didUpdateUUIDDuringRead_forComponentIdentifier_objectIdentifier_originalUUID_isDuplicatedUUID_delegate_(*(*(a1 + 32) + 232), v8, v7, *(a1 + 48), a2, v11, 1);

    v9 = v7;
  }

  else
  {
    v9 = v11;
  }

  v12 = v9;
  v10 = objc_msgSend_setObjectUUID_forIdentifier_(*(a1 + 40), v9, v9, a2);
}

void *sub_276A6F644(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_276A6FB50(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_packageIdentifier(v11, v3, v4);
  if (v5 == objc_msgSend_packageIdentifier(*(*(a1 + 32) + 184), v6, v7) && (objc_msgSend_incompatibleVersion(v11, v8, v9) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 40), v10, v11);
  }
}

void sub_276A70248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  _Block_object_dispose((v21 - 168), 8);

  _Block_object_dispose((v21 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_276A70330(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v2 = *(a1 + 32);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v68, v73, 16);
    if (v6)
    {
      v7 = *v69;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v69 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v68 + 1) + 8 * i);
          v10 = *(a1 + 40);
          v61[0] = objc_msgSend_identifier(v9, v4, v5);
          if (!sub_2769ABC64((v10 + 320), v61))
          {
            v11 = *(a1 + 40);
            v12 = *(v11 + 288);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_276A7086C;
            block[3] = &unk_27A6E57B8;
            block[4] = v11;
            block[5] = v9;
            v67 = *(a1 + 80);
            dispatch_async(v12, block);
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v68, v73, 16);
      }

      while (v6);
    }
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v65[3] = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_276A6E490;
  v61[4] = sub_276A6E4A0;
  v62 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = sub_276A6E490;
  v59[4] = sub_276A6E4A0;
  v60 = 0;
  v13 = *(a1 + 105);
  if (v13 == 1)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = *(a1 + 48);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v55, v72, 16);
    if (v15)
    {
      v16 = *v56;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v55 + 1) + 8 * j);
          v19 = *(a1 + 40);
          v20 = *(v19 + 288);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = sub_276A708F0;
          v44[3] = &unk_27A6E57E0;
          v44[4] = v19;
          v44[5] = v18;
          v53 = *(a1 + 96);
          v21 = *(a1 + 56);
          v54 = *(a1 + 106);
          v22 = *(a1 + 88);
          v23 = *(a1 + 64);
          v45 = v21;
          v46 = v23;
          v47 = v22;
          v48 = v65;
          v49 = v64;
          v50 = v63;
          v51 = v61;
          v52 = v59;
          dispatch_async(v20, v44);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v55, v72, 16);
      }

      while (v15);
    }

    LOBYTE(v13) = *(a1 + 105);
  }

  v25 = *(a1 + 64);
  v26 = *(a1 + 88);
  v27 = *(a1 + 104);
  v28 = *(a1 + 40);
  v29 = *(*(a1 + 40) + 288);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_276A70A9C;
  v33[3] = &unk_27A6E5808;
  v33[4] = v25;
  v42 = v27;
  v43 = v13;
  v36 = v26;
  v37 = v65;
  v38 = v64;
  v39 = v63;
  v34 = v28;
  *obja = *(a1 + 72);
  v40 = v61;
  v41 = v59;
  v30 = obja[0];
  v35 = *obja;
  dispatch_async(v29, v33);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v61, 8);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v65, 8);
}

void sub_276A707E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_276A7086C(void *a1, const char *a2)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    obj[5] = v2;
    obj[6] = v3;
    v5 = a1[4];
    v6 = a1[5];
    v7 = *(a1[7] + 8);
    obj[0] = *(v7 + 40);
    v8 = objc_msgSend_p_validateComponent_error_(v5, a2, v6, obj);
    objc_storeStrong((v7 + 40), obj[0]);
    *(*(a1[6] + 8) + 24) = v8;
  }
}

void sub_276A708F0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = objc_msgSend_p_validateData_timing_documentMetadata_scanForOSLikeCorruption_error_(v3, a2, v4, v6, v5, v7, &obj);
  objc_storeStrong((v8 + 40), obj);
  if ((v9 & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 56), v10, *(a1 + 40));
    v13 = objc_msgSend_tsp_dataCreationVersion(*(*(*(a1 + 64) + 8) + 40), v11, v12);

    if (!v13)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }

    if (objc_msgSend_tsp_isLikelyZeroBytesCorruption(*(*(*(a1 + 64) + 8) + 40), v14, v15))
    {
      ++*(*(*(a1 + 80) + 8) + 24);
    }

    if (objc_msgSend_encodedLengthIfLocal(*(a1 + 40), v16, v17) >= 0x2FAF080)
    {
      ++*(*(*(a1 + 88) + 8) + 24);
    }

    v21 = objc_msgSend_tsp_dataCreationTime(*(*(*(a1 + 64) + 8) + 40), v18, v19);
    v22 = *(*(a1 + 96) + 8);
    v23 = *(v22 + 40);
    if (v23)
    {
      v24 = objc_msgSend_earlierDate_(v23, v20, v21);
      v25 = *(*(a1 + 96) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    else
    {
      v27 = v21;
      v26 = *(v22 + 40);
      *(v22 + 40) = v27;
    }

    v29 = *(*(a1 + 104) + 8);
    v30 = *(v29 + 40);
    if (v30)
    {
      v31 = objc_msgSend_laterDate_(v30, v28, v21);
      v32 = *(*(a1 + 104) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }

    else
    {
      v34 = v21;
      v33 = *(v29 + 40);
      *(v29 + 40) = v34;
    }
  }
}

uint64_t sub_276A70A9C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 64) + 8) + 24) != 1 || objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = v6;
      v8 = *(v5 + 40);
      *(v5 + 40) = v7;
    }

    else
    {
      v9 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
      v10 = *(*(a1 + 72) + 8);
      v8 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  if (UnsafePointer != -1)
  {
    sub_276BD59E4();
  }

  v11 = *(a1 + 56);
  v12 = *(*(*(a1 + 64) + 8) + 24);
  if (objc_msgSend_count(*(a1 + 32), a2, v4))
  {
    v13 = *(a1 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(a1 + 72) + 8) + 40);
  v15 = *(v11 + 16);

  return v15(v11, v12, v13, v14);
}

void sub_276A70B98()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A70E24()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A70E68(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a4);
    }
  }
}

void sub_276A7116C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_276A71190(void *a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(a1[4] + 384), a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_276A71B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_276BD59AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A71E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_276BD59AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A726C4(uint64_t a1, void *a2)
{
  v15 = a2;
  v6 = objc_msgSend_componentRootObject(v15, v2, v3);
  if (v6)
  {
    v7 = objc_msgSend_tsp_component(v15, v4, v5);
    v10 = objc_msgSend_identifier(v7, v8, v9);
    v13 = objc_msgSend_tsp_identifier(v6, v11, v12);

    if (v10 != v13)
    {
      objc_msgSend_didLoadChildObjectFromDocumentSupport_(v6, v14, v15);
    }
  }
}

void sub_276A72884(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_packageIdentifier(v3, v4, v5);
    if (v7 != objc_msgSend_packageIdentifier(*(*(a1 + 32) + 184), v8, v9))
    {
      if (objc_msgSend_packageIdentifier(v6, v10, v11) == 1)
      {
        v13 = objc_msgSend_externalObjectForIdentifier_componentIdentifier_isReadFinished_(*(a1 + 32), v12, *(a1 + 48), *(a1 + 56), 0);
        v14 = v13;
        v15 = *(a1 + 32);
        v16 = v15[35];
        if (v13)
        {
          v17 = v15[47];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_276A72D5C;
          v30[3] = &unk_27A6E2C50;
          v30[4] = v15;
          v18 = v31;
          v19 = v13;
          v20 = *(a1 + 48);
          v31[0] = v19;
          v31[1] = v20;
          v21 = v30;
        }

        else
        {
          v17 = v15[65];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_276A72AE0;
          block[3] = &unk_27A6E5880;
          v29 = *(a1 + 48);
          block[4] = v15;
          v33[1] = v29;
          v18 = v33;
          v33[0] = v6;
          v34 = *(a1 + 64);
          v21 = block;
        }

        dispatch_group_async(v16, v17, v21);
      }

      else
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPSupportPackageReadCoordinator prepareToReadComponentWithIdentifier:forObjectIdentifier:isWeakReference:queue:completion:]_block_invoke");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1480, 0, "We only support loading external components from the document package.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      }

      v6 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_276A72AE0(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 520));
  v2 = *(a1 + 32);
  v3 = *(v2 + 280);
  v4 = *(v2 + 376);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A72BB8;
  v7[3] = &unk_27A6E5880;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[4] = v2;
  v9 = v5;
  v8 = v6;
  v10 = *(a1 + 56);
  dispatch_group_async(v3, v4, v7);
}

void sub_276A72BB8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 384), a2, *(a1 + 48));

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = *(a1 + 56);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 504);
    v9 = *(v7 + 184);
    v20 = 0;
    v21 = 0;
    isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error = objc_msgSend_readComponent_isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error_(WeakRetained, v10, v6, v5, v8, v9, 0, &v21, &v20);
    v12 = v21;
    v13 = v20;

    v16 = *(a1 + 32);
    if (isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error)
    {
      v17 = *(a1 + 40);
      v18 = objc_msgSend_packageIdentifier(v17, v14, v15);
      objc_msgSend_didReadObjects_forComponent_packageIdentifier_(v16, v19, v12, v17, v18);
    }

    else
    {
      objc_msgSend_setError_(*(a1 + 32), v14, v13);
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD5A20();
      }
    }
  }

  dispatch_resume(*(*(a1 + 32) + 520));
}

void sub_276A72D18()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A72EA8(uint64_t a1)
{
  sub_276A72FC0(a1);

  JUMPOUT(0x277C9F670);
}

void sub_276A72EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
}

void sub_276A72F24(void *a1, void *a2)
{
  v5 = a2;
  v4 = a1[4];
  if (v4)
  {
    objc_msgSend_didUpdateObjectIdentifierDuringRead_UUID_componentIdentifier_originalObjectIdentifier_originalUUID_delegate_(v5, v3, a1[2], v4, a1[1], a1[3], a1[5], 0);
  }
}

uint64_t sub_276A72FC0(uint64_t a1)
{
  *a1 = &unk_2885C46B0;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;

  return a1;
}

uint64_t sub_276A73028(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2885C4710;
  *(a1 + 8) = 0;

  return a1;
}

void sub_276A73078(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2885C4710;
  *(a1 + 8) = 0;

  JUMPOUT(0x277C9F670);
}

void sub_276A730E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

void sub_276A730F4(void *a1, void *a2)
{
  v5 = a2;
  v4 = a1[1];
  if (v4)
  {
    objc_msgSend_didUpdateObjectIdentifierDuringRead_forUUID_componentIdentifier_originalObjectIdentifier_delegate_(v5, v3, a1[3], v4, a1[2], a1[4], 0);
  }
}

void sub_276A73190(uint64_t a1)
{
  sub_276A732A8(a1);

  JUMPOUT(0x277C9F670);
}

void sub_276A731C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void sub_276A7320C(void *a1, void *a2)
{
  v5 = a2;
  v4 = a1[3];
  if (v4)
  {
    objc_msgSend_didUpdateUUIDDuringRead_forComponentIdentifier_objectIdentifier_originalUUID_isDuplicatedUUID_delegate_(v5, v3, v4, a1[1], a1[2], a1[4], 0, 0);
  }
}

uint64_t sub_276A732A8(uint64_t a1)
{
  *a1 = &unk_2885C4760;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;

  return a1;
}

void sub_276A73310(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276A73358(uint64_t a1)
{
  sub_276A73390(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276A73390(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_276A734A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276A6F644(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276A738F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPComponentReader;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_276A73AAC(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if ((a2 & 1) == 0)
  {
    objc_msgSend_setError_(*(a1 + 32), v5, v9);
  }

  objc_msgSend_close(*(*(a1 + 32) + 208), v5, v6);
  v7 = *(a1 + 32);
  v8 = *(v7 + 208);
  *(v7 + 208) = 0;

  (*(*(a1 + 40) + 16))();
}

void sub_276A750FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);

  _Block_object_dispose(&a67, 8);
  v71 = *(v69 - 160);
  *(v69 - 160) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  _Unwind_Resume(a1);
}

void sub_276A75350()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A75394()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276A75444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_276A7545C(uint64_t a1)
{
  if (*(a1 + 8) >= 1)
  {
    operator new();
  }

  return 0;
}

void sub_276A7556C(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = a3;
  if (!*(*(a1[4] + 8) + 24))
  {
    operator new();
  }

  if (objc_msgSend_count(v5, v6, v7))
  {
    if (!*(*(a1[5] + 8) + 40))
    {
      v10 = objc_opt_new();
      v11 = *(a1[5] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    memset(v28, 0, sizeof(v28));
    v13 = v5;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v28, v31, 16))
    {
      v17 = *(*(a1[4] + 8) + 24);
      objc_msgSend_fieldInfo(**(&v28[0] + 1), v15, v16);
      v29 = 1;
      sub_276A76064(v17);
    }
  }

  if (objc_msgSend_count(v26, v8, v9))
  {
    if (!*(*(a1[6] + 8) + 40))
    {
      v18 = objc_opt_new();
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    memset(v27, 0, sizeof(v27));
    v21 = v26;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v27, v30, 16))
    {
      v25 = *(*(a1[4] + 8) + 24);
      objc_msgSend_fieldInfo(**(&v27[0] + 1), v23, v24);
      v29 = 1;
      sub_276A76064(v25);
    }
  }
}

void sub_276A75AA8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A75AEC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A75C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_276A519D8(&a15);
  v20 = a16;
  a16 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(a1);
}

void sub_276A760C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276A761C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276A761C0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2769E22E8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_276A762A8(uint64_t a1)
{
  sub_276A762E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A762E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2769E22E8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_276A76328(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276A763A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276A763BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A763BC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2769DED20(v2);
    MEMORY[0x277C9F670](v3, 0x10A1C4050FA8654);
  }

  return a1;
}

void sub_276A76408(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A76440(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2769DED20(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276A76484(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C48A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276A764C4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (*(v2 + 40) + 8);
  do
  {
    v4 = *v3++;
    result = (*(v4 + 204) + result);
    --v1;
  }

  while (v1);
  return result;
}

void sub_276A769C0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A76A78;
  block[3] = &unk_27A6E5948;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_276A76A90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A76AA8(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  if (v9)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD5AD4();
    }

    if (!*(*(a1[6] + 8) + 40))
    {
      v10 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    *(*(a1[7] + 8) + 24) = 0;
  }

  if (v7)
  {
    if (*(*(a1[7] + 8) + 24))
    {
      sub_276A01048(a1[8], v7);
      v13 = a1[4];
      v14 = a1[8];
      v15 = *(a1[6] + 8);
      obj = *(v15 + 40);
      v17 = objc_msgSend_readFromStream_error_(v13, v16, v14, &obj);
      objc_storeStrong((v15 + 40), obj);
      if ((v17 & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 0;
      }
    }
  }

  if (a2)
  {
    v18 = a1[8];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    (*(a1[5] + 16))();
  }
}

void sub_276A76C2C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A76F00()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A77094()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A7748C(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  v2 = *(a2 + 56);
  v3 = *(a2 + 64);
  *(a2 + 56) = 0;
  *(result + 56) = v2;
  *(result + 64) = v3;
  v4 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v4;
  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_276A774B8(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_276A774F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v9 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  v6 = sub_276A174D4((v4 + 72), &v9, v5);

  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    *(v7 + 48) = *(v6 + 6);
    objc_storeStrong((v7 + 56), v6[4]);
    v8 = v6[6];
    *(v7 + 64) = v6[5];
    objc_storeStrong((v7 + 72), v8);
    *(v7 + 80) = *(v6 + 14);
  }
}

void sub_276A77750(uint64_t a1)
{
  sub_276A19D84(&v15);
  v2 = *(a1 + 32);
  v14 = objc_msgSend_digest(*(a1 + 40), v3, v4);
  v6 = sub_276A174D4((v2 + 72), &v14, v5);

  if (v6)
  {
    v15 = *(v6 + 6);
    objc_storeStrong(&v16, v6[4]);
    v7 = v6[6];
    v17 = v6[5];
    objc_storeStrong(&v18, v7);
    v19 = *(v6 + 14);
  }

  v8 = *(a1 + 48);
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  (*(v8 + 16))(v8, &v9);
}

uint64_t sub_276A77A18(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  sub_276A19D84(v6);
  sub_276A78AA8((v4 + 72), &v7, &v7, v6);

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_276A77F04(uint64_t a1)
{
  sub_276A78534(v3, *(a1 + 32) + 72);
  sub_276A789A8(*(a1 + 32) + 120, v3);
  return sub_276A78918(v3);
}

void sub_276A7808C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  if (v1)
  {
    while (1)
    {
      v4 = v1[2];
      v7 = v4;
      v5 = *(a1 + 32);
      v6 = *(v5 + 160);
      if (!v6)
      {
        goto LABEL_5;
      }

      if (objc_msgSend_containsObject_(v6, v3, v4))
      {
        break;
      }

LABEL_6:

      v1 = *v1;
      if (!v1)
      {
        return;
      }
    }

    v5 = *(a1 + 32);
LABEL_5:
    v9 = &v7;
    *(sub_276A7904C((v5 + 72), &v7, &unk_276C16A70, &v9, &v8) + 14) = 1;
    goto LABEL_6;
  }
}

uint64_t sub_276A78534(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276A785AC(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t **sub_276A785AC(void *a1, id *a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    sub_276A7880C();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276A787E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_276A788AC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A788AC(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_276A78918(uint64_t a1)
{
  sub_276A78954(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A78954(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_276A789A8(uint64_t a1, uint64_t *a2)
{
  sub_276A78A4C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_276A78A4C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276A78954(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **sub_276A78AA8(void *a1, id *a2, uint64_t *a3, uint64_t a4)
{
  v6 = objc_msgSend_hash(*a2, a2, a3);
  v8 = v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v14[2], v7, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v14;
}

uint64_t **sub_276A78D40(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_hash(*a2, a2, a3);
  v8 = v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_276A78FA8();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v14[2], v7, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_276A78F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_276A788AC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_276A7904C(void *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_hash(*a2, a2, a3);
  v9 = v7;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v7;
    if (v7 >= *&v10)
    {
      v13 = v7 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v7;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    sub_276A792C4();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v15[2], v8, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v15;
}

void sub_276A792A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_276A788AC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A79354(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276A788AC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_276A79370(void *a1, id **a2)
{
  *a1 = **a2;
  sub_276A19D84((a1 + 1));
  return a1;
}

__CFString *sub_276A79430(unint64_t a1, const char *a2)
{
  if (a1 < 3)
  {
    return off_27A6E5990[a1];
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *NSStringFromTSPDocumentLoadValidationTiming(TSPDocumentLoadValidationTiming)");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 33, 0, "Invalid value for TSPDocumentLoadValidationTiming: %td", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return &stru_2885C9BB8;
}

__CFString *sub_276A794F8(unint64_t a1, const char *a2)
{
  if (a1 < 5)
  {
    return off_27A6E59A8[a1];
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *NSStringFromTSPDocumentCorruptedDataFailToSaveMitigationPolicy(TSPDocumentCorruptedDataFailToSaveMitigationPolicy)");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 50, 0, "Invalid value for TSPDocumentCorruptedDataFailToSaveMitigationPolicy: %td", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return &stru_2885C9BB8;
}

__CFString *sub_276A795C0(unint64_t a1, const char *a2)
{
  if (a1 < 7)
  {
    return off_27A6E59D0[a1];
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *NSStringFromTSPDocumentCorruptedDataRemovalMitigationPolicy(TSPDocumentCorruptedDataRemovalMitigationPolicy)");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 71, 0, "Invalid value for TSPDocumentCorruptedDataRemovalMitigationPolicy: %td", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return &stru_2885C9BB8;
}

id sub_276A7A0CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeStringArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A7A30C(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeStringArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

id sub_276A7A6D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeUUIDArray;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A7A874(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeUUIDArray;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_276A7AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A7AB40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A7AB58(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v15 = [TSPDeepCopyReadAssistant alloc];
    v17 = objc_msgSend_initWithContext_objectMap_cachedMetadataObject_cachedDataMap_(v15, v16, a1[4], a1[5], v9, v11);
    v18 = a1[6];
    v22 = 0;
    v14 = objc_msgSend_decodeDeepCopySerializedData_options_error_(v17, v19, v10, v18, &v22);
    v13 = v22;
  }

  v20 = *(a1[8] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;

  (*(a1[7] + 16))();
}

void sub_276A7AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose((v42 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_276A7B06C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v24 = v9;

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
  v23 = v12;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276A7B2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD5B38();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_276A7B384()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7B47C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A7BADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!objc_msgSend_count(*(a1 + 32), v7, v8))
  {
    goto LABEL_6;
  }

  v10 = objc_msgSend_containsObject_(*(a1 + 32), v9, v5);
  v12 = objc_msgSend_containsObject_(*(a1 + 32), v11, v6);
  if (!v10 || v12)
  {
    if (!(v10 & 1 | ((v12 & 1) == 0)))
    {
      isSubsetOfSet = 1;
      goto LABEL_16;
    }

LABEL_6:
    v14 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 40) + 8), v9, v5);
    v16 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 40) + 8), v15, v6);
    v19 = objc_msgSend_count(v14, v17, v18);
    v22 = objc_msgSend_count(v16, v20, v21);
    if (v19 <= v22)
    {
      if (v19 < v22)
      {
        isSubsetOfSet = 1;
        goto LABEL_15;
      }

      if (objc_msgSend_isEqualToSet_(v14, v23, v16))
      {
        isSubsetOfSet = objc_msgSend_compare_(v5, v24, v6);
        goto LABEL_15;
      }

      if ((objc_msgSend_isSubsetOfSet_(v16, v24, v14) & 1) == 0)
      {
        isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v14, v25, v16);
        goto LABEL_15;
      }
    }

    isSubsetOfSet = -1;
LABEL_15:

    goto LABEL_16;
  }

  isSubsetOfSet = -1;
LABEL_16:

  return isSubsetOfSet;
}

uint64_t sub_276A7BCDC(uint64_t a1, const char *a2)
{
  if (a1 < 0)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPDataUploadStatus TSPDataUploadStatusValidate(const TSPDataUploadStatus)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataUploadStatus.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 21, 0, "Unexpected value of TSPDataUploadStatus %d", a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return a1;
}

uint64_t sub_276A7BDA8(unsigned int *a1, const char *a2)
{
  result = *a1;
  if (result >= 6)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPDataUploadStatus TSPDataUploadStatusFromMessage(const TSP::DataUploadStatus &)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataUploadStatus.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 59, 0, "Unexpected value of TSP::DataUploadStatus %d", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    return 0;
  }

  return result;
}

unint64_t sub_276A7BE80(unint64_t a1, const char *a2)
{
  v2 = a1;
  if (a1 >= 6)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSP::DataUploadStatus TSPDataUploadStatusToMessage(const TSPDataUploadStatus)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataUploadStatus.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 79, 0, "Unexpected value of TSPDataUploadStatus %d", v2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    return 0;
  }

  return v2;
}

void sub_276A7C488(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = qword_280A52A00;
  qword_280A52A00 = v2;
}

void sub_276A7CAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A7CB1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A7CB34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD5B74();
    }

    *(*(a1[4] + 8) + 24) = 0;
    v7 = *(a1[5] + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a4);
    }
  }

  if (v10 && *(*(a1[4] + 8) + 24) == 1)
  {
    sub_276A01048(a1[6], v10);
  }
}

void sub_276A7CC14()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7D04C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7D5C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPDatabaseReader;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_276A7D79C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  sub_276A7EEB4(v1 + 232, (a1 + 40), &v2);
}

void sub_276A7DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v18 = sub_2769BB184(v16);
  MEMORY[0x277C9F670](v18, 0x10A0C408EF24B1CLL);

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Unwind_Resume(a1);
}

void sub_276A7DE98()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7DEDC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

id sub_276A7E14C(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSPDatabaseReader;
  return objc_msgSendSuper2(&v2, sel_resolveReferences);
}

void sub_276A7E280(uint64_t a1, const char *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v41 = 11005;
  v40 = 0x2AFA00002AF9;
  v3 = *(*(a1 + 32) + 216);
  v38 = 0;
  v28 = objc_msgSend_queryObjectsWithMessageTypes_messageTypesCount_error_(v3, a2, &v40, 3, &v38);
  v4 = v38;
  v5 = v28;
  v27 = v4;
  if (v28)
  {
    v37 = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = v28;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v39, 16, v27);
    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = *v34;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = objc_msgSend_classType(v13, v8, v9);
        if (v14 == 11001)
        {
          goto LABEL_10;
        }

        if (v14 != 11002)
        {
          if (v14 != 11005)
          {
            v19 = 0;
            goto LABEL_27;
          }

LABEL_10:
          sub_276AB8748(v31, 0);
          v15 = *(*(a1 + 32) + 216);
          v30 = 0;
          v17 = objc_msgSend_parseArchive_forObject_error_(v15, v16, v31, v13, &v30);
          v19 = v30;
          if (v17)
          {
            v20 = objc_msgSend_appRelativePathForOldDataArchive_(*(a1 + 32), v18, v31);
          }

          else
          {
            v20 = 0;
          }

          sub_276AB881C(v31);
          if (v20)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }

        sub_276AB93EC(v31, 0);
        v21 = *(*(a1 + 32) + 216);
        v29 = 0;
        v23 = objc_msgSend_parseArchive_forObject_error_(v21, v22, v31, v13, &v29);
        v19 = v29;
        if (v23)
        {
          v25 = *(a1 + 32);
          if (v32)
          {
            objc_msgSend_appRelativePathForOldDataArchive_(v25, v24, v32);
          }

          else
          {
            objc_msgSend_appRelativePathForOldDataArchive_(v25, v24, &unk_2812FDA50);
          }
          v20 = ;
        }

        else
        {
          v20 = 0;
        }

        sub_276AB94B8(v31);
        if (v20)
        {
LABEL_20:
          (*(*(a1 + 40) + 16))();
          goto LABEL_28;
        }

LABEL_23:
        if (v19)
        {
          if (*MEMORY[0x277D81408] == -1)
          {
            v20 = 0;
            goto LABEL_28;
          }

          sub_276BD5C00();
        }

LABEL_27:
        v20 = 0;
LABEL_28:
        v26 = v37;

        if (v26)
        {
          goto LABEL_31;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v33, v39, 16);
      if (!v10)
      {
LABEL_31:

        goto LABEL_32;
      }
    }
  }

  if (v4 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD5C28();
LABEL_32:
    v5 = v28;
  }
}

void sub_276A7E5E4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7E628()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A7E7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x277C9F670](v8, 0x10A1C40D4912B22, a3);

  sub_276AB881C(va);
  _Unwind_Resume(a1);
}

void sub_276A7E938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C9F670](v6, 0x10A1C40D4912B22);

  sub_276AB94B8(va);
  _Unwind_Resume(a1);
}

void sub_276A7F1FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (objc_msgSend_code(v5, a2, a3) != 256)
    {
      return;
    }

    v8 = objc_msgSend_domain(*(*(a1 + 32) + 16), v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277CCA050]);

    if (!isEqualToString)
    {
      return;
    }

    v4 = *(a1 + 32);
  }

  v11 = *(a1 + 40);

  objc_storeStrong((v4 + 16), v11);
}

uint64_t sub_276A7F398(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A7F50C(uint64_t a1, const char *a2, uint64_t a3)
{
  v351 = *MEMORY[0x277D85DE8];
  v314 = objc_msgSend_packageIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_context(*(a1 + 32), v4, v5);
  v312 = objc_msgSend_ignoreReferencesToUnknownObjects(v6, v7, v8);

  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  if (v11)
  {
    v315 = 0;
    while (1)
    {
      v320 = v11[2];
      v13 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(*(a1 + 32), v9, v320, 1);
      if (!v13)
      {
        v13 = objc_msgSend_externalObjectForIdentifier_componentIdentifier_isReadFinished_(*(a1 + 32), v12, v320, v11[3], 1);
        if (v13)
        {
          objc_msgSend_didReferenceExternalObject_withIdentifier_(*(a1 + 32), v14, v13, v320);
        }
      }

      v338 = v13;
      v336 = objc_opt_class();
      v334 = objc_opt_class();
      v15 = v11[4];
      v316 = v11;
      v332 = v11[5];
      if (v15 != v332)
      {
        break;
      }

LABEL_71:

      v11 = *v316;
      if (!*v316)
      {
        v152 = a1;
        v10 = *(a1 + 32);
        goto LABEL_74;
      }
    }

    v341 = 0;
    while (1)
    {
      v16 = *(v15 + 24);
      v343 = *(v15 + 32);
      if (v336 == v334)
      {
        if (*(v15 + 17))
        {
          v22 = 0;
          v23 = v13;
          goto LABEL_61;
        }

        if (v341)
        {
          goto LABEL_60;
        }

        if (*(v15 + 16))
        {
          v22 = 0;
          v77 = (v15 + 8);
          v76 = *(v15 + 8);
          if (!v76)
          {
            v341 = 0;
            goto LABEL_68;
          }

          goto LABEL_66;
        }

        v50 = *v15;
        if (v312)
        {
          if (UnsafePointer != -1)
          {
            sub_276BD5C50();
          }

          v341 = 0;
        }

        else
        {
          v126 = MEMORY[0x277D81150];
          v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "void TSPLogObjectResolvedToUnknownFromDifferentComponent(BOOL, __unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong, TSPComponent *__strong)");
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
          if (!v16)
          {
            v16 = objc_opt_class();
          }

          v130 = NSStringFromClass(v16);
          v133 = objc_msgSend_locator(v50, v131, v132);
          v136 = objc_msgSend_identifier(v50, v134, v135);
          v139 = objc_msgSend_packageIdentifier(v50, v137, v138);
          v141 = sub_276AC69B4(v139, v140);
          v144 = objc_msgSend_lowercaseString(v141, v142, v143);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v145, v127, v129, 180, 0, "Object [%{public}@-%llu] resolved to an unknown object, referenced from component [%{public}@-%llu] in the %{public}@ package.", v130, v320, v133, v136, v144);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147);
          v148 = MEMORY[0x277CCA9B8];
          v50 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v149, 7);
          v341 = objc_msgSend_tsp_errorWithError_hints_(v148, v150, v50, &unk_2885E59F8);
        }

        goto LABEL_59;
      }

      if (!v13)
      {
        v22 = 0;
        if (*(v15 + 16))
        {
          goto LABEL_44;
        }

        v23 = 0;
        if (v341)
        {
          goto LABEL_61;
        }

        v24 = *v15;
        v25 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "void TSPLogObjectNotUnarchivedFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong, TSPComponent *__strong)");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
        if (!v16)
        {
          v16 = objc_opt_class();
        }

        v30 = NSStringFromClass(v16);
        v33 = objc_msgSend_locator(v24, v31, v32);
        v36 = objc_msgSend_identifier(v24, v34, v35);
        v39 = objc_msgSend_packageIdentifier(v24, v37, v38);
        v41 = sub_276AC69B4(v39, v40);
        v44 = objc_msgSend_lowercaseString(v41, v42, v43);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v45, v27, v29, 166, 0, "Object [%{public}@-%llu] was not unarchived, referenced from component [%{public}@-%llu] in the %{public}@ package.", v30, v320, v33, v36, v44);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
        v48 = MEMORY[0x277CCA9B8];
        v50 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v49, 0);
        v341 = objc_msgSend_tsp_errorWithError_hints_(v48, v51, v50, &unk_2885E5A28);
LABEL_59:

        goto LABEL_60;
      }

      if (objc_opt_isKindOfClass() & 1) != 0 && (!v343 || (objc_msgSend_conformsToProtocol_(v338, v17, v343)))
      {
        goto LABEL_45;
      }

      v18 = objc_opt_class();
      isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v16, v19, v18);
      if (isSubclassOfClass && objc_msgSend_allowUnarchivingObjectClass_(v16, v20, v336))
      {
LABEL_43:
        v97 = [v16 alloc];
        v22 = objc_msgSend_initWithReferencedObject_(v97, v98, v338);
LABEL_44:
        v23 = v22;
        goto LABEL_61;
      }

      v52 = *v15;
      v53 = v343;
      proto = v53;
      v330 = v52;
      if (isSubclassOfClass)
      {
        break;
      }

      obj = MEMORY[0x277D81150];
      if (v53)
      {
        v325 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
        v322 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
        v79 = v336;
        if (!v336)
        {
          v79 = objc_opt_class();
        }

        v58 = NSStringFromClass(v79);
        v80 = v16;
        if (!v16)
        {
          v80 = objc_opt_class();
        }

        v60 = NSStringFromClass(v80);
        v63 = NSStringFromProtocol(v53);
        v71 = objc_msgSend_locator(v330, v81, v82);
        v85 = objc_msgSend_identifier(v330, v83, v84);
        v88 = objc_msgSend_packageIdentifier(v330, v86, v87);
        v74 = sub_276AC69B4(v88, v89);
        v92 = objc_msgSend_lowercaseString(v74, v90, v91);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(obj, v93, v325, v322, 203, 0, "Object [%{public}@-%llu] is not subclass of %{public}@ or does not conform to %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v58, v320, v60, v63, v71, v85, v92);

        goto LABEL_39;
      }

      v326 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
      v104 = v336;
      if (!v336)
      {
        v104 = objc_opt_class();
      }

      v105 = NSStringFromClass(v104);
      v106 = v16;
      if (!v16)
      {
        v106 = objc_opt_class();
      }

      v107 = NSStringFromClass(v106);
      v110 = objc_msgSend_locator(v330, v108, v109);
      v113 = objc_msgSend_identifier(v330, v111, v112);
      v116 = objc_msgSend_packageIdentifier(v330, v114, v115);
      v118 = sub_276AC69B4(v116, v117);
      v121 = objc_msgSend_lowercaseString(v118, v119, v120);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(obj, v122, v326, v103, 205, 0, "Object [%{public}@-%llu] is not subclass of %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v105, v320, v107, v110, v113, v121);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
LABEL_40:

      if ((*(v15 + 16) & 1) == 0)
      {
        if (v314 == 2)
        {
          if (isSubclassOfClass)
          {
            goto LABEL_43;
          }

LABEL_45:
          v22 = 0;
          v23 = v338;
          goto LABEL_61;
        }

        v99 = MEMORY[0x277CCA9B8];
        v50 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v96, 0);
        v101 = objc_msgSend_tsp_errorWithError_hints_(v99, v100, v50, &unk_2885E5A10);

        v341 = v101;
        goto LABEL_59;
      }

LABEL_60:
      v22 = 0;
      v23 = 0;
LABEL_61:
      v77 = (v15 + 8);
      v76 = *(v15 + 8);
      if (v76)
      {
        if (v341)
        {
          if ((v315 & 1) == 0)
          {
            objc_msgSend_setError_(*(a1 + 32), v23, v341);
          }

          v315 = 1;
          goto LABEL_67;
        }

LABEL_66:
        v341 = 0;
        sub_276A810E4(v76);
LABEL_67:
        v151 = *v77;
        *v77 = 0;
      }

LABEL_68:

      v15 += 40;
      v13 = v338;
      if (v15 == v332)
      {

        goto LABEL_71;
      }
    }

    v55 = MEMORY[0x277D81150];
    v325 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
    v322 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    v57 = v336;
    if (!v336)
    {
      v57 = objc_opt_class();
    }

    v58 = NSStringFromClass(v57);
    v59 = v16;
    if (!v16)
    {
      v59 = objc_opt_class();
    }

    v60 = NSStringFromClass(v59);
    v63 = objc_msgSend_locator(v330, v61, v62);
    v66 = objc_msgSend_identifier(v330, v64, v65);
    v69 = objc_msgSend_packageIdentifier(v330, v67, v68);
    v71 = sub_276AC69B4(v69, v70);
    v74 = objc_msgSend_lowercaseString(v71, v72, v73);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v75, v325, v322, 201, 0, "Object [%{public}@-%llu] is not allowed by reference wrapper %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v58, v320, v60, v63, v66, v74);
LABEL_39:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95);
    goto LABEL_40;
  }

  v315 = 0;
  v152 = a1;
LABEL_74:
  sub_276A83DDC(v10 + 80);
  v153 = *(v152 + 32);
  v154 = *(v153 + 120);
  v313 = *(v153 + 128);
  if (v154 != v313)
  {
LABEL_75:
    v344 = v154;
    v155 = objc_alloc(MEMORY[0x277CBEB18]);
    v158 = objc_msgSend_count(v344[1], v156, v157);
    v160 = objc_msgSend_initWithCapacity_(v155, v159, v158);
    v161 = v344[4];
    protoa = v344[5];
    v162 = objc_opt_class();
    v331 = objc_msgSend_isSubclassOfClass_(v161, v163, v162);
    v342 = v161;
    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    obja = v344[1];
    v327 = v160;
    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v164, &v346, v350, 16);
    if (!v165)
    {
      goto LABEL_122;
    }

    v335 = *v347;
LABEL_77:
    v337 = v165;
    v168 = 0;
    while (1)
    {
      if (*v347 != v335)
      {
        objc_enumerationMutation(obja);
      }

      v169 = *(*(&v346 + 1) + 8 * v168);
      v170 = objc_msgSend_objectIdentifier(v169, v166, v167);
      v174 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(*(a1 + 32), v171, v170, 1);
      if (!v174)
      {
        v175 = *(a1 + 32);
        v176 = objc_msgSend_componentIdentifier(v169, v172, v173);
        v174 = objc_msgSend_externalObjectForIdentifier_componentIdentifier_isReadFinished_(v175, v177, v170, v176, 1);
        if (!v174)
        {
          if ((v344[3] & 1) == 0)
          {
            v253 = *v344;
            v254 = MEMORY[0x277D81150];
            v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v255, "void TSPLogObjectNotUnarchivedFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong, TSPComponent *__strong)");
            v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
            v259 = v342;
            if (!v342)
            {
              v259 = objc_opt_class();
            }

            v260 = NSStringFromClass(v259);
            v263 = objc_msgSend_locator(v253, v261, v262);
            v266 = objc_msgSend_identifier(v253, v264, v265);
            v269 = objc_msgSend_packageIdentifier(v253, v267, v268);
            v271 = sub_276AC69B4(v269, v270);
            v274 = objc_msgSend_lowercaseString(v271, v272, v273);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v254, v275, v256, v258, 166, 0, "Object [%{public}@-%llu] was not unarchived, referenced from component [%{public}@-%llu] in the %{public}@ package.", v260, v170, v263, v266, v274);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v276, v277);
            v278 = MEMORY[0x277CCA9B8];
            v174 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v279, 0);
            v252 = objc_msgSend_tsp_errorWithError_hints_(v278, v280, v174, &unk_2885E5A70);
            goto LABEL_138;
          }

          v174 = 0;
          goto LABEL_114;
        }

        objc_msgSend_didReferenceExternalObject_withIdentifier_(*(a1 + 32), v178, v174, v170);
      }

      v179 = objc_opt_class();
      if (v179 == objc_opt_class())
      {
        if ((*(v344 + 25) & 1) == 0)
        {
          if ((v344[3] & 1) == 0)
          {
            v249 = *v344;
            v251 = v249;
            if (v312)
            {
              if (UnsafePointer != -1)
              {
                sub_276BD5C64();
              }

              v252 = 0;
            }

            else
            {
              v285 = MEMORY[0x277D81150];
              v340 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v250, "void TSPLogObjectResolvedToUnknownFromDifferentComponent(BOOL, __unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong, TSPComponent *__strong)");
              v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
              v288 = v342;
              if (!v342)
              {
                v288 = objc_opt_class();
              }

              v289 = NSStringFromClass(v288);
              v292 = objc_msgSend_locator(v251, v290, v291);
              v295 = objc_msgSend_identifier(v251, v293, v294);
              v298 = objc_msgSend_packageIdentifier(v251, v296, v297);
              v300 = sub_276AC69B4(v298, v299);
              v303 = objc_msgSend_lowercaseString(v300, v301, v302);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v285, v304, v340, v287, 180, 0, "Object [%{public}@-%llu] resolved to an unknown object, referenced from component [%{public}@-%llu] in the %{public}@ package.", v289, v170, v292, v295, v303);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v305, v306);
              v307 = MEMORY[0x277CCA9B8];
              v327 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v308, 7);
              v284 = objc_msgSend_tsp_errorWithError_hints_(v307, v309, v327, &unk_2885E5A40);
LABEL_136:
              v252 = v284;
            }

LABEL_138:
            v247 = v344 + 2;
            v246 = v344[2];
            if (!v246)
            {
              v327 = 0;
              goto LABEL_148;
            }

            if (!v252)
            {
              v248 = 0;
              goto LABEL_144;
            }

            v248 = 0;
            if ((v315 & 1) == 0)
            {
              objc_msgSend_setError_(*(a1 + 32), v310, v252);
            }

            v315 = 1;
            goto LABEL_147;
          }

          goto LABEL_114;
        }

LABEL_113:
        objc_msgSend_addObject_(v327, v180, v174);
        goto LABEL_114;
      }

      if (objc_opt_isKindOfClass() & 1) != 0 && (!protoa || (objc_msgSend_conformsToProtocol_(v174, v180, protoa)))
      {
        goto LABEL_113;
      }

      if (v331 && objc_msgSend_allowUnarchivingObjectClass_(v342, v180, v179))
      {
        goto LABEL_112;
      }

      v181 = *v344;
      v182 = protoa;
      v339 = v181;
      v317 = MEMORY[0x277D81150];
      v333 = v182;
      if (v331)
      {
        break;
      }

      if (protoa)
      {
        v323 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
        v321 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v203, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
        if (!v179)
        {
          v179 = objc_opt_class();
        }

        v185 = NSStringFromClass(v179);
        v204 = v342;
        if (!v342)
        {
          v204 = objc_opt_class();
        }

        v187 = NSStringFromClass(v204);
        v190 = NSStringFromProtocol(v182);
        v198 = objc_msgSend_locator(v339, v205, v206);
        v209 = objc_msgSend_identifier(v339, v207, v208);
        v212 = objc_msgSend_packageIdentifier(v339, v210, v211);
        v201 = sub_276AC69B4(v212, v213);
        v216 = objc_msgSend_lowercaseString(v201, v214, v215);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v317, v217, v323, v321, 203, 0, "Object [%{public}@-%llu] is not subclass of %{public}@ or does not conform to %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v185, v170, v187, v190, v198, v209, v216);

        goto LABEL_108;
      }

      v324 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
      v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v224, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
      if (!v179)
      {
        v179 = objc_opt_class();
      }

      v226 = NSStringFromClass(v179);
      v227 = v342;
      if (!v342)
      {
        v227 = objc_opt_class();
      }

      v228 = NSStringFromClass(v227);
      v231 = objc_msgSend_locator(v339, v229, v230);
      v234 = objc_msgSend_identifier(v339, v232, v233);
      v237 = objc_msgSend_packageIdentifier(v339, v235, v236);
      v239 = sub_276AC69B4(v237, v238);
      v242 = objc_msgSend_lowercaseString(v239, v240, v241);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v317, v243, v324, v225, 205, 0, "Object [%{public}@-%llu] is not subclass of %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v226, v170, v228, v231, v234, v242);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v244, v245);
LABEL_109:

      if ((v344[3] & 1) == 0)
      {
        if (v314 != 2)
        {

          v281 = MEMORY[0x277CCA9B8];
          v327 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v282, 0);
          v284 = objc_msgSend_tsp_errorWithError_hints_(v281, v283, v327, &unk_2885E5A58);
          goto LABEL_136;
        }

        if (!v331)
        {
          goto LABEL_113;
        }

LABEL_112:
        v220 = [v342 alloc];
        v222 = objc_msgSend_initWithReferencedObject_(v220, v221, v174);
        objc_msgSend_addObject_(v327, v223, v222);
      }

LABEL_114:

      if (v337 == ++v168)
      {
        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v166, &v346, v350, 16);
        if (v165)
        {
          goto LABEL_77;
        }

LABEL_122:

        v247 = v344 + 2;
        v246 = v344[2];
        if (v246)
        {
          v248 = v327;
LABEL_144:
          v252 = 0;
          sub_276A810E4(v246);
LABEL_147:
          v327 = v248;
          v311 = *v247;
          *v247 = 0;
        }

        else
        {
          v252 = 0;
        }

LABEL_148:

        v154 = v344 + 6;
        if (v344 + 6 == v313)
        {
          v153 = *(a1 + 32);
          v154 = *(v153 + 120);
          goto LABEL_150;
        }

        goto LABEL_75;
      }
    }

    v323 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, "void TSPLogObjectResolvedToUnexpectedClassFromDifferentComponent(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong, TSPComponent *__strong)");
    v321 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v184, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    if (!v179)
    {
      v179 = objc_opt_class();
    }

    v185 = NSStringFromClass(v179);
    v186 = v342;
    if (!v342)
    {
      v186 = objc_opt_class();
    }

    v187 = NSStringFromClass(v186);
    v190 = objc_msgSend_locator(v339, v188, v189);
    v193 = objc_msgSend_identifier(v339, v191, v192);
    v196 = objc_msgSend_packageIdentifier(v339, v194, v195);
    v198 = sub_276AC69B4(v196, v197);
    v201 = objc_msgSend_lowercaseString(v198, v199, v200);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v317, v202, v323, v321, 201, 0, "Object [%{public}@-%llu] is not allowed by reference wrapper %{public}@, referenced from component [%{public}@-%llu] in the %{public}@ package.", v185, v170, v187, v190, v193, v201);
LABEL_108:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v218, v219);
    goto LABEL_109;
  }

LABEL_150:
  sub_276A83E38(v153 + 120, v154);
}

void sub_276A808A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2 == 1)
  {
    v35 = objc_begin_catch(a1);
    v36 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPReadCoordinatorBase resolveExternalReferences]_block_invoke");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    v43 = objc_msgSend_name(v35, v41, v42);
    v53 = objc_msgSend_reason(v35, v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v46, v38, v40, 425, 0, "Caught %{public}@ while running external reference completion handler: %{public}@");

    v47 = MEMORY[0x277CCA9B8];
    v49 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v48, 0);
    v51 = objc_msgSend_tsp_errorWithError_hints_(v47, v50, v49, &unk_2885E5A88);
    objc_msgSend_setError_(*(a32 + 32), v52, v51);

    objc_end_catch();
    JUMPOUT(0x276A8086CLL);
  }

  _Unwind_Resume(a1);
}

void sub_276A8124C(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v28, v34, 16);
  if (v5)
  {
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_setLazyReferencesDelegate_forLazyReference_(*(a1 + 32), v4, *(a1 + 40), *(*(&v28 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v28, v34, 16);
    }

    while (v5);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(*(a1 + 32) + 48);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v33, 16);
  if (v11)
  {
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_setLazyReferencesDelegate_forLazyReferenceCopy_(*(a1 + 32), v10, *(a1 + 40), *(*(&v24 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v24, v33, 16);
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(*(a1 + 32) + 56);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v20, v32, 16);
  if (v16)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v20 + 1) + 8 * v18) + 16))(*(*(&v20 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, &v20, v32, 16);
    }

    while (v16);
  }
}

void sub_276A817EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v25 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v23 = v20;

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_276A81864(void *a1, void *a2)
{
  v22 = a2;
  v7 = objc_msgSend_packageIdentifier(v22, v3, v4);
  if ((v7 - 1) <= 1u)
  {
    v8 = objc_msgSend_upgradedComponentDataReferenceMap(v22, v5, v6);
    v11 = objc_msgSend_dataCount(v8, v9, v10);
    if (v11)
    {
      v12 = [TSPComponentDataReferenceInfo alloc];
      v14 = objc_msgSend_initWithComponentDataReferenceMap_packageIdentifier_(v12, v13, v8, v7);
      v15 = a1[4];
      v18 = objc_msgSend_identifier(v22, v16, v17);
      objc_msgSend_setMetadata_forComponentIdentifier_(v15, v19, v14, v18);
      *(*(a1[5] + 8) + 24) += v11;
      *(*(a1[6] + 8) + 24) += objc_msgSend_objectCount(v8, v20, v21);
    }
  }
}

void sub_276A82D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_276A83B58(va);
  _Unwind_Resume(a1);
}

void sub_276A82ECC(uint64_t a1, const char *a2)
{
  v3 = atomic_load((*(a1 + 32) + 144));
  if (v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase reader:didFindExternalReferenceToObjectIdentifier:componentIdentifier:isWeak:allowUnknownObject:objectClass:objectProtocol:fromParentObject:completion:]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 615, 0, "Already resolved external references.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = objc_msgSend_externalReferenceInfoForObjectIdentifier_componentIdentifier_(*(a1 + 32), a2, *(a1 + 56), *(a1 + 64));
  v12 = *(a1 + 88);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v17 = a1 + 40;
  v15 = *(a1 + 40);
  v16 = *(v17 + 8);
  v18 = v13;
  v19 = v15;
  *&v24 = v18;
  v20 = _Block_copy(v16);
  *(&v24 + 1) = v20;
  v25 = v12;
  v26 = v14;
  v27 = v19;
  v21 = v11[2];
  if (v21 >= v11[3])
  {
    v23 = sub_276A8400C(v11 + 1, &v24);
    v22 = v27;
  }

  else
  {
    v22 = 0;
    v24 = 0uLL;
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = v25;
    v27 = 0;
    *(v21 + 24) = v14;
    *(v21 + 32) = v19;
    v23 = v21 + 40;
  }

  v11[2] = v23;
}

void sub_276A83188(uint64_t a1, const char *a2)
{
  v3 = atomic_load((*(a1 + 32) + 144));
  if (v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase reader:didFindExternalRepeatedReference:isWeak:allowUnknownObject:objectClass:objectProtocol:fromParentObject:completion:]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 633, 0, "Already resolved external references.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = *(a1 + 32);
  sub_276A83C80(&v17, *(a1 + 64), *(a1 + 40), *(a1 + 56), *(a1 + 80), *(a1 + 81), *(a1 + 72), *(a1 + 48));
  v12 = v11[16];
  if (v12 >= v11[17])
  {
    v16 = sub_276A84384(v11 + 15, &v17);
  }

  else
  {
    v13 = v17;
    v17 = 0uLL;
    *v12 = v13;
    v14 = v18;
    v18 = 0;
    *(v12 + 16) = v14;
    *(v12 + 24) = v19;
    v15 = v20;
    *(&v20 + 1) = 0;
    *(v12 + 32) = v15;
    v16 = v12 + 48;
  }

  v11[16] = v16;
}

void sub_276A8338C(uint64_t a1, const char *a2)
{
  v3 = atomic_load((*(a1 + 32) + 64));
  if (v3)
  {
    v4 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase reader:didReadLazyReference:]_block_invoke");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v7, v16, v6, 647, 0, "Already set lazy references delegate.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    v10 = *(a1 + 32);
    v17 = objc_msgSend_context(v10, v11, v12);
    objc_msgSend_setLazyReferencesDelegate_forLazyReference_(v10, v13, v17, *(a1 + 40));
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 40);

    objc_msgSend_addObject_(v15, a2, v14);
  }
}

void sub_276A83778(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A838F0;
  aBlock[3] = &unk_27A6E5BC8;
  v19 = *(a1 + 56);
  v2 = *(a1 + 32);
  *&v3 = v19;
  *(&v3 + 1) = *(a1 + 64);
  v20 = v3;
  v4 = *(a1 + 40);
  *&v5 = v2;
  *(&v5 + 1) = v4;
  v22 = v5;
  v23 = v20;
  v6 = _Block_copy(aBlock);
  v9 = v6;
  v10 = atomic_load((*(a1 + 48) + 64));
  if (v10)
  {
    (*(v6 + 2))(v6);
  }

  else
  {
    v11 = *(*(a1 + 48) + 56);
    if (!v11)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      v14 = objc_msgSend_initWithCapacity_(v12, v13, 1);
      v15 = *(a1 + 48);
      v16 = *(v15 + 56);
      *(v15 + 56) = v14;

      v11 = *(*(a1 + 48) + 56);
    }

    v17 = objc_msgSend_copy(v9, v7, v8, v20);
    objc_msgSend_addObject_(v11, v18, v17);
  }
}

void sub_276A838C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_276A83998(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = atomic_load((*(a1 + 32) + 64));
  v5 = *(a1 + 32);
  if (v4)
  {
    v9 = objc_msgSend_context(*(a1 + 32), a2, a3);
    objc_msgSend_setLazyReferencesDelegate_forLazyReferenceCopy_(v5, v6, v9, *(a1 + 40));
  }

  else
  {
    v7 = v5[6];
    v8 = *(a1 + 40);

    objc_msgSend_addObject_(v7, a2, v8);
  }
}

void sub_276A83B14()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A83B58(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276A83BAC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276A83BAC(uint64_t result, void **a2)
{
  for (i = *(result + 8); i != a2; sub_276A83C00(result, i))
  {
    i -= 5;
  }

  *(result + 8) = a2;
}

void sub_276A83C00(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t sub_276A83C80(uint64_t a1, void *a2, void *a3, const void *a4, char a5, char a6, uint64_t a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a8;
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = _Block_copy(a4);
  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = v17;
  return a1;
}

uint64_t sub_276A83D4C(uint64_t a1)
{
  sub_276A83D88(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A83D88(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 32);
      sub_276A83B58(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_276A83DDC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276A83D88(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_276A83E38(uint64_t result, void **a2)
{
  for (i = *(result + 8); i != a2; sub_276A83E8C(result, i))
  {
    i -= 6;
  }

  *(result + 8) = a2;
}

void sub_276A83E8C(uint64_t a1, void **a2)
{
  v3 = *a2;
}

void sub_276A83FBC(uint64_t a1, void ***__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 4;
    sub_276A83B58(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_276A8400C(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_2769BA860();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_276A8414C(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = 40 * v2;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v7 = v8;
  *(v7 + 16) = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a2 + 4) = 0;
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = a1[1];
  v11 = 40 * v2 + *a1 - v10;
  sub_276A841A4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_276A84304(&v16);
  return v15;
}

void sub_276A84138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_276A84304(va);
  _Unwind_Resume(a1);
}

void sub_276A8414C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276A841A4(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      v7[1] = 0;
      *a4 = v8;
      *(a4 + 16) = *(v7 + 8);
      v9 = *(v7 + 3);
      v7[4] = 0;
      *(a4 + 24) = v9;
      v7 += 5;
      a4 += 40;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_276A83C00(a1, v5);
      v5 += 5;
    }
  }

  return sub_276A84278(v11);
}

uint64_t sub_276A84278(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276A842B0(a1);
  }

  return a1;
}

void sub_276A842B0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 5;
      sub_276A83C00(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_276A84304(uint64_t a1)
{
  sub_276A8433C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276A8433C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 40;
    sub_276A83C00(v5, (v4 - 40));
  }
}

uint64_t sub_276A84384(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_2769BA860();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_276A844D0(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = 48 * v2;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v7 = v8;
  v9 = *(a2 + 2);
  *(a2 + 2) = 0;
  *(v7 + 16) = v9;
  *(v7 + 24) = *(a2 + 12);
  v10 = a2[2];
  *(a2 + 5) = 0;
  *(v7 + 32) = v10;
  *&v19 = 48 * v2 + 48;
  v11 = a1[1];
  v12 = 48 * v2 + *a1 - v11;
  sub_276A84528(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_276A84694(&v17);
  return v16;
}

void sub_276A844BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_276A84694(va);
  _Unwind_Resume(a1);
}

void sub_276A844D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276A84528(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      v7[1] = 0;
      *a4 = v8;
      v9 = v7[2];
      v7[2] = 0;
      *(a4 + 16) = v9;
      *(a4 + 24) = *(v7 + 12);
      v10 = *(v7 + 2);
      v7[5] = 0;
      *(a4 + 32) = v10;
      v7 += 6;
      a4 += 48;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_276A83E8C(a1, v5);
      v5 += 6;
    }
  }

  return sub_276A84608(v12);
}

uint64_t sub_276A84608(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276A84640(a1);
  }

  return a1;
}

void sub_276A84640(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 6;
      sub_276A83E8C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_276A84694(uint64_t a1)
{
  sub_276A846CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276A846CC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    sub_276A83E8C(v5, (v4 - 48));
  }
}

void sub_276A84714(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276A83E38(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276A8579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A857F0(uint64_t a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    if (v5 >= a5)
    {
      v7 = a5;
    }

    else
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
    }

    memcpy(*(*(*(a1 + 40) + 8) + 24), __src, v7);
    *(*(*(a1 + 40) + 8) + 24) += v7;
    *(*(*(a1 + 32) + 8) + 24) -= v7;
  }

  return 1;
}

id sub_276A859BC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_allObjects(a1, a2, a3);
  v5 = objc_msgSend_sortedArrayUsingComparator_(v3, v4, &unk_2885C4A38);

  return v5;
}

uint64_t sub_276A85A10(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_tsp_identifier(v6, v7, v8);
  objc_opt_class();
  v10 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_tsp_identifier(v10, v11, v12);
  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

id sub_276A85AB4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_allObjects(a1, a2, a3);
  v5 = objc_msgSend_sortedArrayUsingComparator_(v3, v4, &unk_2885C4A58);

  return v5;
}

uint64_t sub_276A85B08(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_digest(v6, v7, v8);

  objc_opt_class();
  v10 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_digest(v10, v11, v12);

  v15 = objc_msgSend_compare_(v9, v14, v13);
  return v15;
}

void sub_276A85E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_276A519D8(&a17);
  v22 = a18;
  a18 = 0;
  if (v22)
  {
    sub_276BD5C8C(v22);
  }

  _Unwind_Resume(a1);
}

void sub_276A86594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A865AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A865C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_progress(*(*(a1 + 32) + 48), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276A8694C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v5(v4, a2);
  v6[2]();
}

void sub_276A86B5C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276A86BA0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A86C14;
  v5[3] = &unk_27A6E5AB0;
  v5[4] = v2;
  return objc_msgSend_notifyObserversUsingBlock_(v3, a2, v5);
}

void sub_276A86C20(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A86CE4;
  v8[3] = &unk_27A6E5AD8;
  v8[4] = v4;
  v9 = v3;
  v6 = v3;
  objc_msgSend_notifyObserversUsingBlock_(v5, v7, v8);
}

void sub_276A86CF0(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276A86D6C;
  v3[3] = &unk_27A6E5C68;
  v4 = a2;
  v2 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_276A86D6C(uint64_t a1, const char *a2)
{
  if (*(a1 + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

void *sub_276A86E98(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_estimatedDownloadSize(*(*(a1 + 32) + 48), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

NSObject *sub_276A87034(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(a3, v4);

  dispatch_queue_set_specific(v5, qword_280A51898, qword_280A51898, 0);
  return v5;
}

uint64_t sub_276A870CC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(a1, a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPIsArchiverThread");
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  return v11;
}

void sub_276A87134(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276A87190(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(a1, a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPIsPerformingLegacyDocumentReferenceResolution");
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  return v11;
}

void sub_276A871F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276A87224(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tsp_currentReadCompletionInfo(a1, a2, a3);
  v6 = objc_msgSend_readCoordinator(v3, v4, v5);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_fileFormatVersion(v6, v7, v8);
    isKindOfClass = v9 != UnsafePointer();
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t sub_276A872DC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tsp_currentReadCompletionInfo(a1, a2, a3);
  v6 = objc_msgSend_readCoordinator(v3, v4, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_276A8735C(void *a1)
{
  objc_opt_class();
  v4 = objc_msgSend_currentThread(a1, v2, v3);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"TSPReadCompletionInfoForRunningFinalizeHandlers");
  v10 = TSUCheckedDynamicCast();

  return v10;
}

uint64_t sub_276A87430(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(a1, a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);

  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPHasFileAccess");
  if (objc_msgSend_BOOLValue(v8, v9, v10))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v6, v11, @"TSPIsArchiverThread");
    v12 = objc_msgSend_BOOLValue(v13, v14, v15);
  }

  return v12;
}

void sub_276A87514(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_currentThread(a1, v10, v11);
  v15 = objc_msgSend_threadDictionary(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v18, v20, v8);
  v9[2](v9);
  if (v17)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v17, v8);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v15, v19, v8);
  }
}

void sub_276A87624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_276A87BA8(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A87CAC;
  block[3] = &unk_27A6E4B40;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = a2;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, block);
}

void sub_276A87CC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_componentManager(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_documentComponent(v4, v5, v6);

  v77 = 0;
  v8 = [TSPDatabaseReader alloc];
  v11 = objc_msgSend_initWithComponent_finalizeHandlerQueue_delegate_database_databaseVersion_(v8, v9, v7, *(*(a1 + 40) + 184), *(a1 + 40), *(*(a1 + 40) + 192), *(*(a1 + 40) + 200));
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = *(*(a1 + 40) + 192);
  v76 = 0;
  v13 = objc_msgSend_lastObjectIdentifier_error_(v12, v10, &v77, &v76);
  v14 = v76;
  v15 = v14;
  if (v13)
  {
    objc_msgSend_setLastObjectIdentifier_(*(a1 + 32), v10, v77);
    v18 = objc_msgSend_dataReferenceMap(*(a1 + 32), v16, v17);
    objc_msgSend_setInitialDataIdentifiersInDocumentIndexSet_(v18, v19, 0);

    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_276A88248;
    v74 = sub_276A88258;
    v75 = 0;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_276A88260;
    v69[3] = &unk_27A6E5D08;
    v69[4] = *(a1 + 40);
    v69[5] = &v70;
    objc_msgSend_enumerateDataAppRelativePathsUsingBlock_(v11, v20, v69);
    if (v71[5])
    {
      v62 = objc_msgSend_resourceContext(*(a1 + 32), v21, v22);
      v61 = objc_msgSend_resourceRequests(v62, v23, v24);
      v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v26 = v61;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v65, v78, 16);
      if (v30)
      {
        v31 = *v66;
        do
        {
          v32 = 0;
          do
          {
            if (*v66 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = objc_msgSend_tags(*(*(&v65 + 1) + 8 * v32), v28, v29);
            objc_msgSend_unionSet_(v25, v34, v33);

            ++v32;
          }

          while (v30 != v32);
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v65, v78, 16);
        }

        while (v30);
      }

      v36 = objc_msgSend_minimumTagsWithPreferredTags_(v71[5], v35, v25);
      v39 = objc_msgSend_mutableCopy(v36, v37, v38);

      objc_msgSend_minusSet_(v39, v40, v25);
      if (objc_msgSend_count(v39, v41, v42))
      {
        v45 = objc_msgSend_sharedManager(TSPResourceRequestManager, v43, v44);
        ResourceRequestForTags_resourceContext = objc_msgSend_createResourceRequestForTags_resourceContext_(v45, v46, v39, v62);

        if (ResourceRequestForTags_resourceContext)
        {
          v49 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v48, ResourceRequestForTags_resourceContext);
          objc_msgSend_addResourceRequests_(v62, v50, v49);
        }
      }
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_276A8830C;
    v63[3] = &unk_27A6E4BE0;
    v51 = *(a1 + 40);
    v52 = *(a1 + 48);
    v63[4] = v7;
    v63[5] = v51;
    v64 = *(a1 + 56);
    objc_msgSend_readWithIOCompletionQueue_ioCompletion_completionQueue_completion_(v11, v53, 0, 0, v52, v63);

    _Block_object_dispose(&v70, 8);
    goto LABEL_23;
  }

  if (v14)
  {
    v54 = 0;
    v55 = v14;
    objc_msgSend_setError_(*(a1 + 40), v10, v14);
  }

  else
  {
LABEL_19:
    v15 = 0;
    v55 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v10, 0);
    v54 = 1;
    objc_msgSend_setError_(*(a1 + 40), v58, v55);
  }

  if (v54)
  {
  }

  v59 = *(a1 + 56);
  v60 = objc_msgSend_error(*(a1 + 40), v56, v57);
  (*(v59 + 16))(v59, 0, 0, 0, v60);

LABEL_23:
}

void sub_276A8812C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A88248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A88260(uint64_t a1, const char *a2)
{
  v8 = objc_msgSend_documentResourceInfoForAppRelativePath_(*(a1 + 32), a2, a2);
  if (v8)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_msgSend_addDocumentResourceInfo_(v4, v3, v8);
  }
}

void sub_276A8830C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a3;
  v10 = a4;
  if (a2 && (v11 = objc_msgSend_identifier(*(a1 + 32), v8, v9), a2 = 0, objc_msgSend_tsp_objectForIdentifier_(v18, v12, v11), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_storeStrong((*(a1 + 40) + 208), a3);
    objc_msgSend_setLazyReferencesDelegateToObjectContext(*(a1 + 40), v14, v15);
    v16 = v13;
  }

  else
  {
    v17 = v10;
    if (!v10)
    {
      v17 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
      a2 = v17;
    }

    objc_msgSend_setError_(*(a1 + 40), v8, v17);
    if (!v10)
    {
    }

    v16 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_276A88430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_276A88594()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A885D8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  (*(v2 + 16))(v2, 0, 0, 0);
}

void sub_276A887D8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A88B7C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A892C8()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, @"blackboard_bk.jpg", @"blackboard_bk.pdf", @"texture4.jpg", @"texture4.png", @"Invite_06_a.jpg", @"Invite_06_a.png", @"Invite_06_a4.jpg", @"Invite_06_a4.png", @"Party_01_a.jpg", @"Party_01_a.png", @"Party_01_a4.jpg", @"Party_01_a4.png", @"craft_texture.jpg", @"craft_texture.png", @"Chart Tile 1.jpg", @"Chart Tile 1.png", @"parchment_texture.jpg", @"parchment_texture.png", @"PLACEHOLDER_apple_17-cr2_1795_comp.jpg", @"PLACEHOLDER_apple_17-cr2_1795_comp.png", @"070503-CRAppleShot4_00426_-a.jpg", @"070503-CRAppleShot4_00426_-a.png", @"texture1.jpg", @"texture1.tif", @"texture2.jpg", @"texture2.tif", @"texture3.jpg", @"texture3.tif", @"tile_showcase_blue3.jpg", @"tile_showcase_blue3.tif", @"tile_showcase_purple2.jpg", @"tile_showcase_purple2.tif", @"tile_showcase_red2.jpg", @"tile_showcase_red2.tif", @"tile_showcase_blue2.jpg", @"tile_showcase_blue2.tif", @"tile_showcase_gray2.jpg", @"tile_showcase_gray2.tif", @"tile_showcase_green2.jpg", @"tile_showcase_green2.tif", @"2-1.jpg", @"2-1.tif", @"3-2.jpg", @"3-2.tif", @"5-1.jpg", @"5-1.tif", @"6-1.jpg", @"6-1.tif", @"Blue.jpg", @"Blue.tif", @"Yellow 2-1.jpg", @"Yellow 2-1.tif", @"bullet_ball-chrome.png", @"bullet_ball-chrome.tif", @"bullet_bb_round.png", @"bullet_bb_round.tif", @"bullet_Screenprint-Brush-grey.png", @"bullet_Screenprint-Brush-grey.tif", @"Invite_06_a-small.jpg", @"Invite_06_a-small.png", @"Party_01_a-small.jpg");
  v3 = qword_280A52A18;
  qword_280A52A18 = v2;
}

void sub_276A89628()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, @"tile_blackboard_yellow.jpg", @"tile_blackboard_blue.jpg", @"tile_blackboard_purple.jpg", @"tile_blackboard_red.jpg", @"tile_blackboard_green.jpg", @"tile_blackboard_orange.jpg", 0);
  v3 = qword_280A52A28;
  qword_280A52A28 = v2;
}

void sub_276A896AC()
{
  v0 = qword_280A52A38;
  qword_280A52A38 = &unk_2885E5C50;
}