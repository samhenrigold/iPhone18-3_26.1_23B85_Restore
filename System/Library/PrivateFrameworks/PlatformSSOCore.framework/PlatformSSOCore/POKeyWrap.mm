@interface POKeyWrap
- (POKeyWrap)init;
- (id)unwrapBlob:(id)blob;
- (id)wrapBlob:(id)blob;
@end

@implementation POKeyWrap

- (POKeyWrap)init
{
  v3.receiver = self;
  v3.super_class = POKeyWrap;
  return [(POKeyWrap *)&v3 init];
}

- (id)wrapBlob:(id)blob
{
  v50 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  if ([blobCopy length] < 0xFFFFFF80)
  {
    v5 = [blobCopy length];
    v6 = *MEMORY[0x277CDC540];
    if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, bytes) && !SecRandomCopyBytes(v6, 0x10uLL, &v48))
    {
      HIDWORD(v46) = 128;
      v8 = aks_wrap_key(bytes, 32, 13, -1, __src, &v46 + 4, 0, v7, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v8)
      {
        v9 = v8;
        memset_s(bytes, 0, 32, 0x20uLL);
        v42 = MEMORY[0x277D85DD0];
        v43 = 3221225472;
        v44 = __22__POKeyWrap_wrapBlob___block_invoke_2;
        v45 = &__block_descriptor_36_e14___NSError_8__0l;
        LODWORD(v46) = v9;
        v10 = __22__POKeyWrap_wrapBlob___block_invoke_2(&v42);
      }

      else
      {
        v11 = HIDWORD(v46);
        if (HIDWORD(v46) < 0x81)
        {
          v13 = HIDWORD(v46) + 20 + v5;
          v14 = __CFADD__(HIDWORD(v46) + 20, v5);
          v15 = v13 + 16;
          v16 = v13 >= 0xFFFFFFFFFFFFFFF0;
          if (v14 || v16)
          {
            memset_s(bytes, 0, 32, 0x20uLL);
            v22 = __22__POKeyWrap_wrapBlob___block_invoke_11();
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v15];
            v18 = v17;
            if (!v17)
            {
              memset_s(bytes, 0, 32, 0x20uLL);
              v23 = __22__POKeyWrap_wrapBlob___block_invoke_18();
              goto LABEL_26;
            }

            mutableBytes = [v17 mutableBytes];
            *mutableBytes = v11;
            if (v11)
            {
              v20 = mutableBytes + 1;
              memcpy(mutableBytes + 1, __src, v11);
              *(v20 + v11) = v48;
              if ([blobCopy bytes] || !v5)
              {
                [blobCopy bytes];
                v25 = CCCryptorGCMOneshotEncrypt();
                memset_s(bytes, 0, 32, 0x20uLL);
                if (!v25)
                {
                  goto LABEL_26;
                }

                v32 = MEMORY[0x277D85DD0];
                v33 = 3221225472;
                v34 = __22__POKeyWrap_wrapBlob___block_invoke_36;
                v35 = &__block_descriptor_36_e14___NSError_8__0l;
                LODWORD(v36) = v25;
                v26 = __22__POKeyWrap_wrapBlob___block_invoke_36(&v32);
              }

              else
              {
                memset_s(bytes, 0, 32, 0x20uLL);
                v21 = __22__POKeyWrap_wrapBlob___block_invoke_30();
              }
            }

            else
            {
              memset_s(bytes, 0, 32, 0x20uLL);
              v24 = __22__POKeyWrap_wrapBlob___block_invoke_24();
            }
          }
        }

        else
        {
          memset_s(bytes, 0, 32, 0x20uLL);
          v37 = MEMORY[0x277D85DD0];
          v38 = 3221225472;
          v39 = __22__POKeyWrap_wrapBlob___block_invoke_7;
          v40 = &__block_descriptor_36_e14___NSError_8__0l;
          LODWORD(v41) = HIDWORD(v46);
          v12 = __22__POKeyWrap_wrapBlob___block_invoke_7(&v37);
        }
      }
    }
  }

  else
  {
    v4 = __22__POKeyWrap_wrapBlob___block_invoke();
  }

  v18 = 0;
LABEL_26:

  return v18;
}

id __22__POKeyWrap_wrapBlob___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Input blob too large for wrapping"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_2(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Error with wrap key size"];
  v2 = PO_LOG_POKeyWrap(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

id __22__POKeyWrap_wrapBlob___block_invoke_7(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Wrapped key size exceeds maximum allowed size"];
  v2 = PO_LOG_POKeyWrap(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

id __22__POKeyWrap_wrapBlob___block_invoke_11()
{
  v0 = [POError errorWithCode:-1001 description:@"Integer overflow in blob size calculation"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_18()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to allocate memory for wrapped blob"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_24()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid wrapped key size of 0"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_30()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid input blob with null bytes but non-zero length"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_36(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Crypto error wrapping key"];
  v2 = PO_LOG_POKeyWrap(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (id)unwrapBlob:(id)blob
{
  v28 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v4 = [blobCopy length];
  bytes = [blobCopy bytes];

  if (v4 <= 0xF)
  {
    v6 = __24__POKeyWrap_unwrapBlob___block_invoke();
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
  {
    v7 = __24__POKeyWrap_unwrapBlob___block_invoke_51();
    goto LABEL_13;
  }

  v10 = *bytes;
  v9 = bytes + 1;
  v8 = v10;
  v11 = v4 - 20 - v10;
  if (v4 - 20 < v10)
  {
    v12 = __24__POKeyWrap_unwrapBlob___block_invoke_57();
    goto LABEL_13;
  }

  v26 = 32;
  v13 = aks_unwrap_key(v9, v8, 13, -1, __s, &v26);
  if (v13)
  {
    v14 = v13;
    memset_s(__s, 0, 32, 0x20uLL);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __24__POKeyWrap_unwrapBlob___block_invoke_63;
    v24[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v25 = v14;
    v15 = __24__POKeyWrap_unwrapBlob___block_invoke_63(v24);
    goto LABEL_13;
  }

  if (v26 != 32)
  {
    memset_s(__s, 0, 32, 0x20uLL);
    v17 = __24__POKeyWrap_unwrapBlob___block_invoke_67();
    goto LABEL_13;
  }

  if (v11 <= 0xF)
  {
    memset_s(__s, 0, 32, 0x20uLL);
    v16 = __24__POKeyWrap_unwrapBlob___block_invoke_73();
    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CBEB28] dataWithLength:v11 - 16];
  [v18 mutableBytes];
  v20 = CCCryptorGCMOneshotDecrypt();
  memset_s(__s, 0, 32, 0x20uLL);
  if (v20)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __24__POKeyWrap_unwrapBlob___block_invoke_79;
    v22[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v23 = v20;
    v21 = __24__POKeyWrap_unwrapBlob___block_invoke_79(v22);
  }

LABEL_14:

  return v18;
}

id __24__POKeyWrap_unwrapBlob___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key tag size"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_51()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key size data"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_57()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with wrap key data"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_63(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Error with unwrapping key"];
  v2 = PO_LOG_POKeyWrap(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_67()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key size"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_73()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap data size"];
  v1 = PO_LOG_POKeyWrap(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_79(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Crypto error unwrapping key"];
  v2 = PO_LOG_POKeyWrap(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

void __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

@end