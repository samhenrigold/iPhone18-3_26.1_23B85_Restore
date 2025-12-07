@interface CryptexRemoteServiceNonceAttr
- (CryptexRemoteServiceNonceAttr)init;
- (unint64_t)getNonceDomainIndex;
- (unsigned)ndom_handle;
- (void)getNonceDomainIndex;
@end

@implementation CryptexRemoteServiceNonceAttr

- (CryptexRemoteServiceNonceAttr)init
{
  v3.receiver = self;
  v3.super_class = CryptexRemoteServiceNonceAttr;
  result = [(CryptexRemoteServiceNonceAttr *)&v3 init];
  *&result->_image_type = xmmword_2986E8C80;
  result->_ndom_handle = -1;
  return result;
}

- (unint64_t)getNonceDomainIndex
{
  v7 = *MEMORY[0x29EDCA608];
  image_type = [(CryptexRemoteServiceNonceAttr *)self image_type];
  if (!image_type)
  {
    return 3;
  }

  if (image_type != 1)
  {
    [(CryptexRemoteServiceNonceAttr *)&v5 getNonceDomainIndex];
  }

  if ([(CryptexRemoteServiceNonceAttr *)self persistence])
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (unsigned)ndom_handle
{
  v6 = *MEMORY[0x29EDCA608];
  if ([(CryptexRemoteServiceNonceAttr *)self image_type]!= 2)
  {
    [(CryptexRemoteServiceNonceAttr *)&v4 getNonceDomainIndex];
  }

  return self->_ndom_handle;
}

- (void)getNonceDomainIndex
{
  OUTLINED_FUNCTION_2(self, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [a3 image_type];
  OUTLINED_FUNCTION_0_0(v5, self, v6, v7, &dword_2986C0000, v8, v9, "unexpected failure: Invalid image type: %llu");
  _os_crash_msg();
  __break(1u);
}

@end