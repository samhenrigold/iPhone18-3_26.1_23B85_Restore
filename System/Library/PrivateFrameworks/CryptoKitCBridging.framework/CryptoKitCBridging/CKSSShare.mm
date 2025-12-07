@interface CKSSShare
- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params share:(ccss_shamir_share *)share;
- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params x:(unsigned int)x y:(id)y;
- (id)y;
- (unsigned)x;
- (void)dealloc;
@end

@implementation CKSSShare

- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params x:(unsigned int)x y:(id)y
{
  yCopy = y;
  v11.receiver = self;
  v11.super_class = CKSSShare;
  v7 = [(CKSSShare *)&v11 init];
  if (v7 && (v8 = ccss_sizeof_share(), v7->_share_size = v8, v7->_share = malloc_type_malloc(v8, 0xDDFD590CuLL), ccss_shamir_share_init(), [yCopy bytes], objc_msgSend(yCopy, "length"), ccss_shamir_share_import()))
  {
    free(v7->_share);
    printf("Failed on import with share import");
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params share:(ccss_shamir_share *)share
{
  v9.receiver = self;
  v9.super_class = CKSSShare;
  v5 = [(CKSSShare *)&v9 init];
  if (v5)
  {
    v6 = ccss_sizeof_share();
    v5->_share_size = v6;
    v7 = malloc_type_malloc(v6, 0xB12A3E84uLL);
    v5->_share = v7;
    memcpy(v7, share, v5->_share_size);
  }

  return v5;
}

- (unsigned)x
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:ccss_shamir_share_sizeof_y()];
  [v2 mutableBytes];
  [v2 length];
  ccss_shamir_share_export();

  return 0;
}

- (id)y
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:ccss_shamir_share_sizeof_y()];
  [v2 mutableBytes];
  [v2 length];
  if (ccss_shamir_share_export())
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)dealloc
{
  cc_clear();
  free(self->_share);
  v3.receiver = self;
  v3.super_class = CKSSShare;
  [(CKSSShare *)&v3 dealloc];
}

@end