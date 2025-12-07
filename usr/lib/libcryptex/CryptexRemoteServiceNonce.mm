@interface CryptexRemoteServiceNonce
- (CryptexRemoteServiceNonce)initWithNonce:(const _img4_nonce *)nonce;
- (void)dealloc;
@end

@implementation CryptexRemoteServiceNonce

- (CryptexRemoteServiceNonce)initWithNonce:(const _img4_nonce *)nonce
{
  v11 = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = CryptexRemoteServiceNonce;
  v4 = [(CryptexRemoteServiceNonce *)&v8 init];
  v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x8709206FuLL);
  if (!v5)
  {
    [(CryptexRemoteServiceNonce *)&v9 initWithNonce:v10];
  }

  v4->_nonce = v5;
  v6 = *&nonce->var1[14];
  *&v5->var0 = *&nonce->var0;
  *&v5->var1[14] = v6;
  *&v5->var1[30] = *&nonce->var1[30];
  *&v5->var1[46] = *&nonce->var1[46];
  return v4;
}

- (void)dealloc
{
  if ([(CryptexRemoteServiceNonce *)self nonce])
  {
    free(self->_nonce);
    self->_nonce = 0;
  }

  v3.receiver = self;
  v3.super_class = CryptexRemoteServiceNonce;
  [(CryptexRemoteServiceNonce *)&v3 dealloc];
}

- (void)initWithNonce:(void *)a1 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

@end