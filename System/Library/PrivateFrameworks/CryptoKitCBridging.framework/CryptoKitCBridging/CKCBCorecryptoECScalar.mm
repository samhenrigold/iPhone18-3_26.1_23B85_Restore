@interface CKCBCorecryptoECScalar
- (BOOL)isEqual:(id)equal;
- (CKCBCorecryptoECScalar)initWithData:(id)data inGroup:(ccec_cp *)group reduction:(BOOL)reduction corecryptoError:(int *)error;
- (CKCBCorecryptoECScalar)initWithRandomScalarInGroup:(ccec_cp *)group;
- (CKCBCorecryptoECScalar)initWithScalarPointer:(unint64_t *)pointer forGroup:(ccec_cp *)group;
- (CKCBCorecryptoECScalar)initWithx963Representation:(id)representation group:(ccec_cp *)group;
- (id)add:(id)add corecryptoError:(int *)error;
- (id)inverseModOrder;
- (id)mapToCurve_SSWU_RandomOracle;
- (id)multiply:(id)multiply corecryptoError:(int *)error;
- (id)serializedBigEndianScalar;
- (id)sub:(id)sub corecryptoError:(int *)error;
- (id)x963Representation;
- (void)dealloc;
@end

@implementation CKCBCorecryptoECScalar

- (CKCBCorecryptoECScalar)initWithx963Representation:(id)representation group:(ccec_cp *)group
{
  selfCopy = self;
  v13[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](self, a2, representation);
  v7 = (v13 - v6);
  v9 = v8;
  [v9 length];
  [v9 bytes];

  if (ccec_x963_import_priv())
  {
    v10 = 0;
  }

  else
  {
    v11 = malloc_type_malloc([(CKCBCorecryptoECScalar *)selfCopy scalarAllocationSizeForGroup:group], 0xC3B76D40uLL);
    memcpy(v11, &v7[3 * **v7 + 2], [(CKCBCorecryptoECScalar *)selfCopy scalarAllocationSizeForGroup:group]);
    selfCopy = [(CKCBCorecryptoECScalar *)selfCopy initWithScalarPointer:v11 forGroup:group];
    v10 = selfCopy;
  }

  return v10;
}

- (CKCBCorecryptoECScalar)initWithScalarPointer:(unint64_t *)pointer forGroup:(ccec_cp *)group
{
  v7.receiver = self;
  v7.super_class = CKCBCorecryptoECScalar;
  result = [(CKCBCorecryptoECScalar *)&v7 init];
  if (result)
  {
    result->_group = group;
    result->_corecryptoScalar = pointer;
  }

  return result;
}

- (id)x963Representation
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(MEMORY[0x28223BE20])(self a2)];
  [(CKCBCorecryptoECScalar *)self group];
  [v3 length];
  [v3 bytes];
  v11 = ccec_raw_import_priv_only();
  if (v11)
  {
    v4 = 0;
  }

  else
  {
    v5 = [[CKCBCorecryptoECPoint alloc] initWithGeneratorForCP:self->_group];
    v6 = [(CKCBCorecryptoECPoint *)v5 multiply:self corecryptoError:&v11];
    v7 = v6;
    if (v11)
    {
      v4 = 0;
    }

    else
    {
      v8 = [v6 serializedPublicKey:0];
      [v8 length];
      [v8 bytes];
      v11 = ccec_raw_import_pub();
      if (v11)
      {
        v4 = 0;
      }

      else
      {
        v9 = [MEMORY[0x277CBEB28] dataWithLength:3 * ((cczp_bitlen() + 7) >> 3) + 1];
        [v9 mutableBytes];
        v11 = ccec_x963_export();
        if (v11)
        {
          v4 = 0;
        }

        else
        {
          v4 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v9 length:{"bytes"), objc_msgSend(v9, "length")}];
          memset_s([v9 mutableBytes], objc_msgSend(v9, "length"), 0, objc_msgSend(v9, "length"));
        }
      }
    }
  }

  return v4;
}

- (CKCBCorecryptoECScalar)initWithRandomScalarInGroup:(ccec_cp *)group
{
  v9.receiver = self;
  v9.super_class = CKCBCorecryptoECScalar;
  v4 = [(CKCBCorecryptoECScalar *)&v9 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->_group = group;
  ccrng();
  v6 = malloc_type_malloc([(CKCBCorecryptoECScalar *)v5 scalarAllocationSizeForGroup:group], 0xC5B608F0uLL);
  if (!ccec_generate_scalar_fips_retry())
  {
    v5->_corecryptoScalar = v6;
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  free(v6);
  v7 = 0;
LABEL_8:

  return v7;
}

- (CKCBCorecryptoECScalar)initWithData:(id)data inGroup:(ccec_cp *)group reduction:(BOOL)reduction corecryptoError:(int *)error
{
  dataCopy = data;
  cczp_n();
  v10 = [(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:group];
  v11 = malloc_type_malloc(2 * v10, 0x33CF7ACuLL);
  v12 = malloc_type_malloc(v10, 0x99A30F8EuLL);
  [dataCopy length];
  [dataCopy bytes];

  uint = ccn_read_uint();
  *error = uint;
  if (uint)
  {
    free(v11);
  }

  else
  {
    *error = cczp_mod();
    free(v11);
    if (!*error)
    {
      self = [(CKCBCorecryptoECScalar *)self initWithScalarPointer:v12 forGroup:group];
      selfCopy = self;
      goto LABEL_5;
    }
  }

  free(v12);
  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (id)serializedBigEndianScalar
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:{-[CKCBCorecryptoECScalar scalarAllocationSizeForGroup:](self, "scalarAllocationSizeForGroup:", -[CKCBCorecryptoECScalar group](self, "group"))}];
  [v2 length];
  [v2 mutableBytes];
  if ((ccn_write_uint_padded_ct() & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v2 length:{"bytes"), objc_msgSend(v2, "length")}];
  }

  memset_s([v2 mutableBytes], objc_msgSend(v2, "length"), 0, objc_msgSend(v2, "length"));

  return v3;
}

- (id)mapToCurve_SSWU_RandomOracle
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = (MEMORY[0x28223BE20])(self, a2);
  v5 = v9 - v4;
  v6 = *(v3 + 8);
  if ((v6 == MEMORY[0x24C1BBEF0]() || v6 == MEMORY[0x24C1BBF00]() || v6 == ccec_cp_521()) && ([(CKCBCorecryptoECScalar *)self corecryptoScalar], !map_to_curve_sswu()))
  {
    v7 = [[CKCBCorecryptoECPoint alloc] initWithPublicKey:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)add:(id)add corecryptoError:(int *)error
{
  addCopy = add;
  v7 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0xE16E4793uLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [addCopy corecryptoScalar];

  v8 = cczp_add();
  *error = v8;
  if (v8)
  {
    free(v7);
    v9 = 0;
  }

  else
  {
    v9 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v7 forGroup:self->_group];
  }

  return v9;
}

- (id)sub:(id)sub corecryptoError:(int *)error
{
  subCopy = sub;
  group = [(CKCBCorecryptoECScalar *)self group];
  if (group != [subCopy group])
  {
    goto LABEL_4;
  }

  v8 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0x8DB8D423uLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [subCopy corecryptoScalar];
  v9 = cczp_sub();
  *error = v9;
  if (v9)
  {
    free(v8);
LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v8 forGroup:self->_group];
LABEL_5:

  return v10;
}

- (id)multiply:(id)multiply corecryptoError:(int *)error
{
  multiplyCopy = multiply;
  group = [(CKCBCorecryptoECScalar *)self group];
  if (group != [multiplyCopy group])
  {
    goto LABEL_4;
  }

  v8 = cczp_n();
  v9 = malloc_type_malloc(8 * v8, 0x3FBFD56EuLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  [multiplyCopy corecryptoScalar];
  v10 = cczp_mul();
  *error = v10;
  if (v10)
  {
    free(v9);
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  v11 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v9 forGroup:self->_group];
LABEL_5:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  group = [(CKCBCorecryptoECScalar *)self group];
  if (group == [equalCopy group])
  {
    [equalCopy corecryptoScalar];
    v6 = ccn_cmp() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)inverseModOrder
{
  v3 = malloc_type_malloc([(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]], 0xA3772DBEuLL);
  [(CKCBCorecryptoECScalar *)self corecryptoScalar];
  if (cczp_inv())
  {
    free(v3);
    v4 = 0;
  }

  else
  {
    v4 = [[CKCBCorecryptoECScalar alloc] initWithScalarPointer:v3 forGroup:self->_group];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_corecryptoScalar)
  {
    v3 = [(CKCBCorecryptoECScalar *)self scalarAllocationSizeForGroup:[(CKCBCorecryptoECScalar *)self group]];
    memset_s(self->_corecryptoScalar, v3, 0, v3);
    free(self->_corecryptoScalar);
  }

  v4.receiver = self;
  v4.super_class = CKCBCorecryptoECScalar;
  [(CKCBCorecryptoECScalar *)&v4 dealloc];
}

@end