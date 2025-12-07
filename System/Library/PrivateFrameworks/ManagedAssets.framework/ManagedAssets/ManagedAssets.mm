uint64_t MASetFrameworkProfileLogger()
{
  _log = os_log_create(kManagedAssetLogSubsystem, "Framework-Profile");

  return MEMORY[0x2821F96F8]();
}

void sub_25808A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25808A760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25808A9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25808AC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25808AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25808B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25808B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25808BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25808BEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25808CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25808D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_25808DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 200), 8);
  _Block_object_dispose((v35 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_25808E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v46 - 240), 8);
  _Block_object_dispose((v46 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_25808ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t MAVerifySerializedAssetBlob(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (!v3 || (v7 = v4, v4 <= 0xF))
  {
    v15 = @"v2 asset blob is nil or too small";
    v16 = 23;
LABEL_16:
    createManagedAssetError("MAVerifySerializedAssetBlob", v16, -20103, 0, 0, v15, v5, v6, v18);
    goto LABEL_17;
  }

  v8 = [v3 bytes];
  if (*v8 != 2)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 29, -20103, 0, 0, @"corrupted v2 asset blob (common hdr type: %u)", v5, v6, *v8);
LABEL_17:
    *a2 = v14 = 0;
    goto LABEL_18;
  }

  if (*(v8 + 2) != 2)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 33, -20103, 0, 0, @"corrupted v2 asset blob (hdr version: %u)", v5, v6, *(v8 + 2));
    goto LABEL_17;
  }

  if ((*(v8 + 1) + 1) >= 4)
  {
    v18 = *(v8 + 1);
    v15 = @"corrupted v2 asset blob (profile type: %llu)";
    v16 = 44;
    goto LABEL_16;
  }

  v9 = *(v8 + 3);
  v10 = 8 * v9 + 16;
  if (*(v8 + 3))
  {
    v11 = (v8 + 20);
    do
    {
      v12 = v10 + *(v11 - 1);
      v13 = *v11;
      v11 += 2;
      v10 = v12 + v13;
      --v9;
    }

    while (v9);
  }

  if (v7 != v10)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 56, -20103, 0, 0, @"v2 asset blob size mismatches (actual: %lu, expected: %lu)", v5, v6, v7);
    goto LABEL_17;
  }

  v14 = 1;
LABEL_18:

  return v14;
}

id MAConsturctAssetBlob(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = 8 * [v7 count] + 16;
  if (v10 > a1)
  {
    createManagedAssetError("MAConsturctAssetBlob", 71, -20102, 0, 0, @"allocated buffer (size: %lu) is too small", v8, v9, a1);
LABEL_5:
    *a4 = v13 = 0;
    goto LABEL_16;
  }

  if ([v7 count] >= 0x10000)
  {
    createManagedAssetError("MAConsturctAssetBlob", 76, -20102, 0, 0, @"too many assets to be encoded, limit is %u", v11, v12, 0xFFFFLL);
    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CBEB28] dataWithLength:a1];
  v17 = v14;
  if (v14)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = [v14 mutableBytes];
    v18 = v36[3];
    *v18 = 2;
    *(v18 + 4) = 2;
    *(v18 + 6) = [v7 count];
    *(v18 + 8) = a2;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = v10;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v36[3] += v10;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __MAConsturctAssetBlob_block_invoke;
    v24[3] = &unk_27985EEF0;
    v24[4] = &v25;
    v24[5] = &v35;
    v24[6] = &v31;
    v24[7] = v18;
    [v7 enumerateObjectsUsingBlock:v24];
    v21 = v26[5];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      if (v32[3] == a1)
      {
        v13 = v17;
LABEL_14:
        _Block_object_dispose(&v25, 8);

        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        goto LABEL_15;
      }

      v22 = createManagedAssetError("MAConsturctAssetBlob", 155, -20102, 0, 0, @"buffered blob size (%lu) mismathces expected size (%lu)", v19, v20, a1);
    }

    v13 = 0;
    *a4 = v22;
    goto LABEL_14;
  }

  createManagedAssetError("MAConsturctAssetBlob", 82, -20102, 0, 0, @"failed to allocate data buffer with size %lu", v15, v16, a1);
  *a4 = v13 = 0;
LABEL_15:

LABEL_16:

  return v13;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __MAConsturctAssetBlob_block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!([v7 assetDataLen] >> 32))
  {
    v10 = [v7 assetMetaData];
    v11 = [v10 length];

    if (v11 < 0x3E9)
    {
      v15 = [v7 assetMetaData];
      v16 = [v7 assetDataLen];
      v17 = [v7 assetData];

      if (v17)
      {
        memcpy(*(*(a1[5] + 8) + 24), [v15 bytes], objc_msgSend(v15, "length"));
        *(*(a1[5] + 8) + 24) += [v15 length];
        v18 = *(*(a1[5] + 8) + 24);
        v19 = [v7 assetData];
        v20 = [v19 bytes];
        v21 = [v7 assetData];
        memcpy(v18, v20, [v21 length]);

        v22 = [v7 assetData];
        *(*(a1[5] + 8) + 24) += [v22 length];

        v23 = 0;
      }

      else
      {
        v25 = [v7 assetFileHandle];

        if (v25)
        {
          v23 = [v7 assetFileHandle];
        }

        else
        {
          v26 = [v7 sandboxToken];
          v27 = [v7 assetDataPath];
          v28 = *(a1[4] + 8);
          obj = *(v28 + 40);
          v23 = MAOpenFileWithSandboxToken(v26, v27, &obj);
          objc_storeStrong((v28 + 40), obj);
        }

        if (*(*(a1[4] + 8) + 40) || ([v23 seekToFileOffset:0], v29 = *(a1[5] + 8), v30 = objc_msgSend(v23, "fileDescriptor"), v31 = *(a1[4] + 8), v39 = *(v31 + 40), v34 = MAReadMetaDataAndAssetData((v29 + 24), v32, v15, v30, v16, v33, &v39), objc_storeStrong((v31 + 40), v39), (v34 & 1) == 0))
        {
          *a4 = 1;
        }

        if (v23)
        {
          v35 = *(a1[4] + 8);
          v38 = *(v35 + 40);
          v36 = MACloseFileHandleHelper(v23, &v38);
          objc_storeStrong((v35 + 40), v38);
          if ((v36 & 1) == 0)
          {
            *a4 = 1;
            goto LABEL_7;
          }
        }
      }

      *(a1[7] + 8 * a3 + 16) = [v15 length];
      *(a1[7] + 8 * a3 + 20) = [v7 assetDataLen];
      v24 = [v15 length];
      *(*(a1[6] + 8) + 24) += [v7 assetDataLen] + v24;
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = createManagedAssetError("MAConsturctAssetBlob_block_invoke", 100, -20102, 0, 0, @"either metadata or asset data is too big", v8, v9, v37);
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  *a4 = 1;
LABEL_8:
}

id MAOpenFileWithSandboxToken(void *a1, void *a2, void *a3)
{
  v5 = a2;
  [a1 cStringUsingEncoding:4];
  if (sandbox_extension_consume() == -1)
  {
    v15 = *__error();
    createManagedAssetError("MAOpenFileWithSandboxToken", 168, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v11, v12, v15);
  }

  else
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 isReadableFileAtPath:v5];

    if (v7)
    {
      v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v5];
      goto LABEL_7;
    }

    createManagedAssetError("MAOpenFileWithSandboxToken", 172, -20013, 0, 0, @"cannot request the file/directory since client is unsandboxed.", v8, v9, v14);
  }

  *a3 = v10 = 0;
LABEL_7:
  sandbox_reference_release();

  return v10;
}

uint64_t MAReadMetaDataAndAssetData(void **a1, uint64_t a2, void *a3, int a4, unint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  memcpy(*a1, [v11 bytes], objc_msgSend(v11, "length"));
  *a1 = *a1 + [v11 length];
  v14 = 0;
  if (a5)
  {
    while (1)
    {
      while (1)
      {
        v15 = read(a4, *a1 + v14, 0x10000uLL);
        if (v15 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_11;
        }
      }

      if (!v15)
      {
        goto LABEL_8;
      }

      if (v15 < 0)
      {
        break;
      }

      v14 += v15;
      if (v14 >= a5)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v20 = *__error();
    createManagedAssetError("MAReadMetaDataAndAssetData", 212, -20101, 0, 0, @"fail to perform read IO, errno = %d", v17, v18, v20);
    goto LABEL_12;
  }

LABEL_8:
  if (v14 != a5)
  {
    createManagedAssetError("MAReadMetaDataAndAssetData", 220, -20101, 0, 0, @"expected asset data size %lu, the actual size: %lu", v12, v13, a5);
LABEL_12:
    *a7 = v16 = 0;
    goto LABEL_13;
  }

  *a1 = *a1 + a5;
  v16 = 1;
LABEL_13:

  return v16;
}

uint64_t MACloseFileHandleHelper(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && ![v3 closeAndReturnError:a2])
  {
    v5 = 0;
  }

  else
  {

    v4 = 0;
    v5 = 1;
  }

  return v5;
}

ssize_t MAWriteDataUsingFileDescriptor(ssize_t result, int __fd, unint64_t a3, ssize_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a3)
  {
    v12 = 0;
    while (2)
    {
      if (a3 - v12 >= 0x10000)
      {
        v13 = 0x10000;
      }

      else
      {
        v13 = a3 - v12;
      }

      while (1)
      {
        result = write(__fd, (*v10 + v12), v13);
        if (result != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_17;
        }
      }

      if (!result)
      {
        break;
      }

      if (result < 0)
      {
LABEL_17:
        v16 = *__error();
        createManagedAssetError("MAWriteDataUsingFileDescriptor", 246, -20101, 0, 0, @"fail to perform write IO, errno = %d", v14, v15, v16);
        goto LABEL_18;
      }

      v12 += result;
      if (v12 < a3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 == a3)
  {
    *v10 += a3;
  }

  else
  {
    createManagedAssetError("MAWriteDataUsingFileDescriptor", 253, -20103, 0, 0, @"expected asset data size %lu, the actual size: %lu", a7, a8, a3);
    result = LABEL_18:;
    *a4 = result;
  }

  return result;
}

uint64_t MASetFramework3DAnchorLogger()
{
  _log_0 = os_log_create(kManagedAssetLogSubsystem, "Framework-3DAnchorPersist");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2580920AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258093BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580942BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580946E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258094B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258094F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580952E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id OUTLINED_FUNCTION_11(uint64_t a1, void *a2)
{

  return a2;
}

uint64_t MASetFrameworkKVStoreLogger()
{
  _log_1 = os_log_create(kManagedAssetLogSubsystem, "Framework-KVStore");

  return MEMORY[0x2821F96F8]();
}

id createFieldsArray(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 name];
        v19[0] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "type")}];
        v19[1] = v9;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "options")}];
        v19[2] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = [v2 copy];

  return v12;
}

void sub_258095F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id convertUpdateInput(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count") + 1}];
  v2 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v33 + 1) + 8 * i) allKeys];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v20 = v2;
  v9 = [v2 allObjects];
  [v23 addObject:v9];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v24)
  {
    v22 = *v30;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * j);
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = v9;
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [v11 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * k)];
              if (!v18)
              {
                v18 = [MEMORY[0x277CBEB68] null];
              }

              [v12 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v15);
        }

        [v23 addObject:v12];
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v24);
  }

  return v23;
}

void sub_258096B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258097450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id convertChainedKVQueryOutput(void *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = a1;
  if ([v2 count])
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = v2;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
    v30 = v2;
    if (v5)
    {
      v6 = 0;
      v7 = *v44;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v43 + 1) + 8 * i) count];
          v10 = v9 - 1;
          if (v9 <= 0)
          {
            v10 = 0;
          }

          v6 += v10;
        }

        v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v5);
      v5 = v6;
    }

    v11 = [v3 arrayWithCapacity:v5];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v4;
    v12 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      v31 = *v40;
      v32 = v11;
      while (2)
      {
        v15 = 0;
        v33 = v13;
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v39 + 1) + 8 * v15);
          v37 = v11;
          v38 = [v16 count];
          if (v38 >= 2)
          {
            v35 = v15;
            v17 = [v16 objectAtIndexedSubscript:0];
            v18 = [v17 count];
            v19 = 1;
            while (1)
            {
              v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v18];
              v21 = [v16 objectAtIndexedSubscript:v19];
              v22 = [v21 count];
              if (v22 != v18)
              {
                break;
              }

              if (v18)
              {
                for (j = 0; j != v18; ++j)
                {
                  v26 = [v21 objectAtIndexedSubscript:j];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v27 = [v17 objectAtIndexedSubscript:j];
                    [v20 setObject:v26 forKeyedSubscript:v27];
                  }
                }
              }

              if ([v20 count])
              {
                [v37 addObject:v20];
              }

              if (++v19 == v38)
              {
                goto LABEL_30;
              }
            }

            *a2 = createManagedAssetError("convertKVQueryOutput", 335, -20000, 0, 0, @"invalid response from masd, the value count %lu doens't match the key count %lu", v23, v24, v22);

LABEL_30:
            v14 = v31;
            v11 = v32;
            v13 = v33;
            v15 = v35;
          }

          if (*a2)
          {

            v28 = 0;
            goto LABEL_36;
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v28 = v11;
LABEL_36:

    v2 = v30;
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  return v28;
}

void sub_258098140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258098A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2580992A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2580995FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t MASetFrameworkFileAPILogger()
{
  _log_2 = os_log_create(kManagedAssetLogSubsystem, "Framework-FileAPI");

  return MEMORY[0x2821F96F8]();
}

void sub_25809A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25809AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25809B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25809CAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MASetFrameworkDebuggingAPILogger()
{
  _log_3 = os_log_create(kManagedAssetLogSubsystem, "Framework-DebuggingAPI");

  return MEMORY[0x2821F96F8]();
}

void sub_25809CF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25809D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25809D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809D6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t MASDConvertAssetTypeToString(uint64_t a1)
{
  if (MASDConvertAssetTypeToString_onceToken != -1)
  {
    MASDConvertAssetTypeToString_cold_1();
  }

  v2 = _mapAssetTypeEnumToStr;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __MASDConvertAssetTypeToString_block_invoke()
{
  v3[31] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286942558;
  v2[1] = &unk_286942570;
  v3[0] = @"kGazeEnrollmentData";
  v3[1] = @"kGazeCoordinateData";
  v2[2] = &unk_286942588;
  v2[3] = &unk_2869425A0;
  v3[2] = @"kHandEnrollmentData";
  v3[3] = @"kHandTrackingData";
  v2[4] = &unk_2869425B8;
  v2[5] = &unk_2869425D0;
  v3[4] = @"kFaceEnrollmentData";
  v3[5] = @"kFaceTrackingData";
  v2[6] = &unk_2869425E8;
  v2[7] = &unk_286942600;
  v3[6] = @"kAvatarEnrollmentData";
  v3[7] = @"kHairEnrollmentData";
  v2[8] = &unk_286942618;
  v2[9] = &unk_286942630;
  v3[8] = @"kEarEnrollmentData";
  v3[9] = @"kAvatarLatents";
  v2[10] = &unk_286942648;
  v2[11] = &unk_286942660;
  v3[10] = @"kFaceLatents";
  v3[11] = @"kHairLatents";
  v2[12] = &unk_286942678;
  v2[13] = &unk_286942690;
  v3[12] = @"kEyesLatents";
  v3[13] = @"kBodyTrackingData";
  v2[14] = &unk_2869426A8;
  v2[15] = &unk_2869426C0;
  v3[14] = @"kClothesData";
  v3[15] = @"kHRTFData";
  v2[16] = &unk_2869426D8;
  v2[17] = &unk_2869426F0;
  v3[16] = @"kSpatialAudioData";
  v3[17] = @"kRoomReconstructedData";
  v2[18] = &unk_286942708;
  v2[19] = &unk_286942720;
  v3[18] = @"kRoomCreatedData";
  v3[19] = @"kGuardianData";
  v2[20] = &unk_286942738;
  v2[21] = &unk_286942750;
  v3[20] = @"kBodyEnrollmentData";
  v3[21] = @"kCorePrescriptionData";
  v2[22] = &unk_286942768;
  v2[23] = &unk_286942780;
  v3[22] = @"kFineGrainedHandEnrollmentData";
  v3[23] = @"kTestIOSOnlyData";
  v2[24] = &unk_286942798;
  v2[25] = &unk_2869427B0;
  v3[24] = @"kTestUnrestrictedData";
  v3[25] = @"kSyntheticGazeEnrollmentData";
  v2[26] = &unk_2869427C8;
  v2[27] = &unk_2869427E0;
  v3[26] = @"kDisplayAdjustmentData";
  v3[27] = @"kTestServerAttestation";
  v2[28] = &unk_2869427F8;
  v2[29] = &unk_286942810;
  v3[28] = @"kTestDeviceAttestationOnly";
  v3[29] = @"kTestCloudSyncAsset";
  v2[30] = &unk_286942828;
  v3[30] = @"kMAAnyAssets";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:31];
  v1 = _mapAssetTypeEnumToStr;
  _mapAssetTypeEnumToStr = v0;
}

uint64_t MASDConvertAssetStringToType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (MASDConvertAssetStringToType_onceToken != -1)
    {
      MASDConvertAssetStringToType_cold_1();
    }

    v2 = [_mapAssetTypeStrToEnum objectForKey:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 unsignedIntegerValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __MASDConvertAssetStringToType_block_invoke()
{
  v0 = _mapAssetTypeStrToEnum;
  _mapAssetTypeStrToEnum = &unk_286942858;
}

id getMASHA256Hash(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
    v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MAEncryptedRemoteAssetUtilInit()
{
  _log_4 = os_log_create(kManagedAssetLogSubsystem, "MAEncryptedRemoteAssetUtil");

  return MEMORY[0x2821F96F8]();
}

uint64_t MARandomBytes(size_t count, void *bytes, void *a3)
{
  v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, bytes);
  v7 = v4;
  if (v4)
  {
    *a3 = createManagedAssetError("MARandomBytes", 27, -20302, 0, 0, @"Fail to generate random data, rc=%d", v5, v6, v4);
    v8 = _log_4;
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARandomBytes_cold_1(v7, v8);
    }
  }

  return v7;
}

id MARandomData(size_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a1];
  if (MARandomBytes(a1, [v4 mutableBytes], a2))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

id MARemoteAssetDecrypt(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a2;
  v7 = [v6 bytes];
  v8 = [v6 length];

  v11 = v8 - 32;
  if (v8 <= 0x20)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 53, -20302, 0, 0, @"not enough data to decrypt, size %lu", v9, v10, v8);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (*v7 != 1)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 61, -20302, 0, 0, @"unknown decrypt type %u", v9, v10, *v7);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      MARemoteAssetDecrypt_cold_1();
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if ((v7[2] & 2) != 0)
  {
    if (v11 <= 0x10)
    {
      *a3 = createManagedAssetError("MARemoteAssetDecrypt", 71, -20302, 0, 0, @"not enough data to decrypt, size %lu", v9, v10, v8);
      if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v11 = v8 - 48;
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v11];
  ccaes_gcm_decrypt_mode();
  [v14 mutableBytes];
  v15 = ccgcm_one_shot();
  if (v15)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 90, -20302, 0, 0, @"failed to decrypt the data ret=%d", v16, v17, v15);
    v12 = 0;
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARemoteAssetDecrypt_cold_1();
      v12 = 0;
    }
  }

  else
  {
    v12 = v14;
  }

LABEL_12:

  return v12;
}

id MARemoteAssetEncrypt(uint64_t a1, void *a2, char a3, char a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = MARandomData(0xCuLL, a6);
  if (v12)
  {
    if ((a4 & 2) == 0 || [v11 length] == 16)
    {
      v26 = [v10 bytes];
      v13 = [v10 length];
      v14 = v13 + 32;
      if ((a4 & 2) != 0)
      {
        v15 = [v11 length];
      }

      else
      {
        v15 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v15 + v14];
      v17 = [v16 mutableBytes];
      *v17 = 1;
      v17[1] = a3;
      v17[3] = 0;
      v17[2] = a4;
      if (!MARandomBytes(0xCuLL, v17 + 4, a6))
      {
        ccaes_gcm_encrypt_mode();
        v18 = ccgcm_one_shot();
        if (!v18)
        {
          if ((a4 & 2) != 0)
          {
            memcpy(&v17[v14], [v11 bytes], objc_msgSend(v11, "length"));
          }

          v21 = v16;
          goto LABEL_12;
        }

        *a6 = createManagedAssetError("MARemoteAssetEncrypt", 152, -20302, 0, 0, @"failed to encrypt the data ret=%d", v19, v20, v18);
        if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
        {
          MARemoteAssetDecrypt_cold_1();
        }
      }

      v21 = 0;
LABEL_12:

      goto LABEL_16;
    }

    v22 = [v11 length];
    *a6 = createManagedAssetError("MARemoteAssetEncrypt", 121, -20001, 0, 0, @"invalid assetIdData size %lu", v23, v24, v22);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARemoteAssetDecrypt_cold_1();
    }
  }

  v21 = 0;
LABEL_16:

  return v21;
}

uint64_t MASDSerializedAssetsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(MASDPlainAsset);
        [a1 addAssets:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MASDPlainAssetReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        a1[1] = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id createManagedAssetError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = MEMORY[0x277CCAB68];
  v17 = a6;
  v18 = [[v16 alloc] initWithFormat:v17 arguments:&a9];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = v19;
  if (v18)
  {
    [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v20 setObject:v21 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      [v20 setObject:v22 forKeyedSubscript:@"SourceLine"];
    }
  }

  if (v14)
  {
    [v20 addEntriesFromDictionary:v14];
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ManagedAsset.ErrorDomain" code:a3 userInfo:v20];

  return v23;
}

uint64_t MASDPlainAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v40 & 0x7F) << v13;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_63:
              v35 = 32;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_63;
        case 2u:
          v20 = PBReaderReadString();
          v21 = 80;
          goto LABEL_53;
        case 3u:
          v40 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v40;
          v38 = 16;
          goto LABEL_69;
        case 4u:
          v40 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v40;
          v38 = 24;
LABEL_69:
          *(a1 + v38) = v37;
          goto LABEL_54;
        case 5u:
          v20 = PBReaderReadString();
          v21 = 96;
          goto LABEL_53;
        case 6u:
          v20 = PBReaderReadString();
          v21 = 88;
          goto LABEL_53;
        case 7u:
          v20 = PBReaderReadData();
          v21 = 40;
          goto LABEL_53;
        case 8u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 112) |= 1u;
          break;
        case 9u:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_53;
        case 0xAu:
          v20 = PBReaderReadData();
          v21 = 48;
          goto LABEL_53;
        case 0xBu:
          v20 = PBReaderReadData();
          v21 = 104;
          goto LABEL_53;
        case 0xCu:
          v20 = PBReaderReadString();
          v21 = 56;
          goto LABEL_53;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 64;
LABEL_53:
          v33 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_54;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
      }

      while (1)
      {
        LOBYTE(v40) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v40 & 0x7F) << v26;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_59;
        }
      }

      v19 = [a2 hasError] ? 0 : v28;
LABEL_59:
      v35 = 8;
LABEL_64:
      *(a1 + v35) = v19;
LABEL_54:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2580A4E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id reencryptRemoteAsset(void *a1, rsize_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v17 = 0;
  v9 = MARemoteAssetEncrypt(a1, v7, 0, 0, 0, &v17);
  v10 = v17;
  memset_s(a1, a2, 0, a2);
  objc_autoreleasePoolPop(v8);
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v7 length];
    v14 = [v9 length];
    *buf = 134218498;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "re-encrypt remoteAccess, size:%lu, cipher size:%lu, error:%@", buf, 0x20u);
  }

  if (v10)
  {
    v15 = v10;
    *a4 = v10;
  }

  return v9;
}

void sub_2580A5FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2580A71D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580A7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A83E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A8ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A9FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2580AA370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 144), 8);
  _Unwind_Resume(a1);
}

id decrypteRemoteAsset(void *a1, rsize_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v20 = 0;
  v9 = [v7 readDataToEndOfFileAndReturnError:&v20];
  v10 = v20;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      decrypteRemoteAsset_cold_1();
    }

    [v7 closeFile];
    v12 = 0;
  }

  else
  {
    [v7 closeFile];
    v19 = 0;
    v12 = MARemoteAssetDecrypt(a1, v9, &v19);
    v11 = v19;
  }

  memset_s(a1, a2, 0, a2);

  objc_autoreleasePoolPop(v8);
  v13 = _log_5;
  if (v11)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      decrypteRemoteAsset_cold_2();
    }

    v14 = v11;
    *a4 = v11;
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v15 = v13;
    v16 = [v12 length];
    v17 = getMASHA256Hash(v12);
    *buf = 134218242;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_258089000, v15, OS_LOG_TYPE_INFO, "decrypt remoteAccess, size:%lu, assetData digest:%@", buf, 0x16u);
  }

  return v12;
}

void sub_2580AB2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580ABD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 160), 8);
  _Unwind_Resume(a1);
}

void _handleDarwinNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a2;
  v10 = _darwinNotifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handleDarwinNotification_block_invoke;
  block[3] = &unk_27985FF20;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

void sub_2580ACF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 240), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2580AD420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580ADE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 184));
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2580AE318(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 152));
  _Block_object_dispose((v3 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2580AE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___handleDarwinNotification_block_invoke(id *a1)
{
  if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.AssetChange"])
  {
    v2 = [a1[5] objectForKeyedSubscript:@"State"];
    v3 = [v2 unsignedIntegerValue];

    v4 = [a1[5] objectForKeyedSubscript:@"Handles"];
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v21 = 0;
    v11 = [v5 unarchivedObjectOfClasses:v10 fromData:v4 error:&v21];
    v12 = v21;

    if (v12)
    {
      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
      {
        ___handleDarwinNotification_block_invoke_cold_2();
      }
    }

    else if (v11 && [v11 count])
    {
      [a1[6] didReceiveAssetChangeWith:v3 assethandles:v11];
    }

    else
    {
      v19 = _log_5;
      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
      {
        ___handleDarwinNotification_block_invoke_cold_3(v19);
      }
    }
  }

  else if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.ProfileChange"])
  {
    v13 = [a1[5] objectForKeyedSubscript:@"State"];
    v14 = [v13 unsignedIntegerValue];

    v20 = [a1[5] objectForKeyedSubscript:@"ProfileID"];
    v15 = [a1[5] objectForKeyedSubscript:@"ProfileType"];
    v16 = [v15 unsignedIntegerValue];

    [a1[6] didReceiveProfileChangeWith:v14 profile:v20 type:v16];
  }

  else if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.DaemonLaunch"])
  {
    v17 = a1[6];

    [v17 recoveryTaskWhenDaemonIsReady];
  }

  else
  {
    v18 = _log_5;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      ___handleDarwinNotification_block_invoke_cold_1(v18);
    }
  }
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id OUTLINED_FUNCTION_17(uint64_t a1, void *a2)
{

  return a2;
}

void MARandomBytes_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_258089000, a2, OS_LOG_TYPE_ERROR, "Fail to generate random data, rc=%d", v2, 8u);
}

void MARemoteAssetDecrypt_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed with %@", v2, v3, v4, v5);
}

void decrypteRemoteAsset_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}