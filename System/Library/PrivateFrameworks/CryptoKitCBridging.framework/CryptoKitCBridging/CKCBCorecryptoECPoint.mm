@interface CKCBCorecryptoECPoint
- (BOOL)isEqual:(id)equal;
- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)p;
- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)key;
- (id)add:(id)add corecryptoError:(int *)error;
- (id)initFromPublicKeyBytes:(id)bytes inGroup:(ccec_cp *)group compressed:(BOOL)compressed corecryptoError:(int *)error;
- (id)initPoint:(ccec_affine_point *)point onGroup:(ccec_cp *)group;
- (id)multiply:(id)multiply corecryptoError:(int *)error;
- (id)serializedPublicKey:(BOOL)key;
- (id)sub:(id)sub corecryptoError:(int *)error;
- (void)dealloc;
@end

@implementation CKCBCorecryptoECPoint

- (id)initPoint:(ccec_affine_point *)point onGroup:(ccec_cp *)group
{
  v7.receiver = self;
  v7.super_class = CKCBCorecryptoECPoint;
  result = [(CKCBCorecryptoECPoint *)&v7 init];
  if (result)
  {
    *(result + 1) = group;
    *(result + 2) = point;
  }

  return result;
}

- (id)initFromPublicKeyBytes:(id)bytes inGroup:(ccec_cp *)group compressed:(BOOL)compressed corecryptoError:(int *)error
{
  compressedCopy = compressed;
  v19[1] = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  v12 = MEMORY[0x28223BE20](bytesCopy, v10, v11);
  v14 = v19 - v13;
  [v12 length];
  [bytesCopy bytes];
  if (compressedCopy)
  {
    v15 = ccec_compressed_x962_import_pub();
  }

  else
  {
    v15 = ccec_raw_import_pub();
  }

  *error = v15;
  if (v15)
  {
    cc_clear();
    selfCopy = 0;
  }

  else
  {
    v17 = [(CKCBCorecryptoECPoint *)self initWithPublicKey:v14];
    cc_clear();
    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (CKCBCorecryptoECPoint)initWithGeneratorForCP:(ccec_cp *)p
{
  v5 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:?];
  v6 = malloc_type_malloc(v5, 0xF1E2E41FuLL);
  v7 = p + 16 * p->var0 + 8 * p->var0;
  bzero(v6, v5);
  memcpy(v6, v7 + 32, 16 * p->var0);

  return [(CKCBCorecryptoECPoint *)self initPoint:v6 onGroup:p];
}

- (CKCBCorecryptoECPoint)initWithPublicKey:(ccec_pub_ctx *)key
{
  v4 = &key->var1[1];
  var0 = key->var0;
  v6 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:key->var0];
  v7 = malloc_type_malloc(v6, 0x6A29DF8AuLL);
  memcpy(v7, v4, v6);
  cc_clear();

  return [(CKCBCorecryptoECPoint *)self initPoint:v7 onGroup:var0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group == [equalCopy group])
  {
    [(CKCBCorecryptoECPoint *)self group];
    [(CKCBCorecryptoECPoint *)self point];
    [equalCopy point];
    v6 = ccn_cmp() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serializedPublicKey:(BOOL)key
{
  v15[1] = *MEMORY[0x277D85DE8];
  group = self->_group;
  v6 = cczp_bitlen();
  v9 = (v6 + 7) >> 3;
  if (key)
  {
    MEMORY[0x28223BE20](v6, v7, v8);
    *(v15 - v10) = group;
    memcpy(&v15[2] - v10, self->_point, 2 * v9);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:ccec_compressed_x962_export_pub_size()];
    [v11 mutableBytes];
    v12 = ccec_compressed_x962_export_pub();
    cc_clear();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v9];
    [v13 mutableBytes];
    ccn_write_uint_padded_ct();
    [v13 mutableBytes];
    ccn_write_uint_padded_ct();
  }

  return v13;
}

- (id)add:(id)add corecryptoError:(int *)error
{
  addCopy = add;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [addCopy group] || (v8 = ccrng(), *error))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v14 = MEMORY[0x28223BE20](v8, v9, v10);
  MEMORY[0x28223BE20](v14, v15, v16);
  [(CKCBCorecryptoECPoint *)self point];
  v17 = ccec_projectify();
  *error = v17;
  if (v17 || ([addCopy point], v18 = ccec_projectify(), (*error = v18) != 0))
  {
    cc_clear();
LABEL_10:
    cc_clear();
LABEL_11:
    v11 = 0;
    goto LABEL_4;
  }

  *error = ccec_full_add();
  cc_clear();
  if (*error)
  {
    goto LABEL_10;
  }

  v19 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  cc_clear();
  if (*error)
  {
    free(v19);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v19 onGroup:group];
LABEL_4:

  return v11;
}

- (id)sub:(id)sub corecryptoError:(int *)error
{
  subCopy = sub;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [subCopy group] || (v8 = ccrng(), *error))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v14 = MEMORY[0x28223BE20](v8, v9, v10);
  MEMORY[0x28223BE20](v14, v15, v16);
  [(CKCBCorecryptoECPoint *)self point];
  v17 = ccec_projectify();
  *error = v17;
  if (v17 || ([subCopy point], v18 = ccec_projectify(), (*error = v18) != 0))
  {
    cc_clear();
LABEL_10:
    cc_clear();
LABEL_11:
    v11 = 0;
    goto LABEL_4;
  }

  *error = ccec_full_sub();
  cc_clear();
  if (*error)
  {
    goto LABEL_10;
  }

  v19 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  cc_clear();
  if (*error)
  {
    free(v19);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v19 onGroup:group];
LABEL_4:

  return v11;
}

- (id)multiply:(id)multiply corecryptoError:(int *)error
{
  multiplyCopy = multiply;
  group = [(CKCBCorecryptoECPoint *)self group];
  if (group != [multiplyCopy group] || (v8 = ccrng(), *error))
  {
    v11 = 0;
    goto LABEL_4;
  }

  group = self->_group;
  v14 = MEMORY[0x28223BE20](v8, v9, v10);
  MEMORY[0x28223BE20](v14, v15, v16);
  [(CKCBCorecryptoECPoint *)self point];
  v17 = ccec_projectify();
  *error = v17;
  if (v17)
  {
    cc_clear();
LABEL_10:
    cc_clear();
LABEL_11:
    v11 = 0;
    goto LABEL_4;
  }

  [multiplyCopy corecryptoScalar];
  *error = ccec_mult_blinded();
  cc_clear();
  if (*error)
  {
    goto LABEL_10;
  }

  v18 = malloc_type_malloc([(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:group], 0x100004000313F17uLL);
  *error = ccec_affinify();
  cc_clear();
  if (*error)
  {
    free(v18);
    goto LABEL_11;
  }

  v11 = [[CKCBCorecryptoECPoint alloc] initPoint:v18 onGroup:group];
LABEL_4:

  return v11;
}

- (void)dealloc
{
  if (self->_point)
  {
    v3 = [(CKCBCorecryptoECPoint *)self pointAllocationSizeForGroup:[(CKCBCorecryptoECPoint *)self group]];
    memset_s(self->_point, v3, 0, v3);
    free(self->_point);
  }

  v4.receiver = self;
  v4.super_class = CKCBCorecryptoECPoint;
  [(CKCBCorecryptoECPoint *)&v4 dealloc];
}

@end