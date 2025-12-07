@interface SOSCCTryUserCredentialsAndDSID
@end

@implementation SOSCCTryUserCredentialsAndDSID

uint64_t __SOSCCTryUserCredentialsAndDSID_internal_block_invoke(void *a1)
{
  if (gSecurityd)
  {
    v1 = *(gSecurityd + 200);
    if (v1)
    {
      v2 = a1[5];
      v3 = a1[6];
      v4 = a1[7];
      v5 = a1[4];

      return v1(v5, v2, v3, v4);
    }
  }

  v7 = a1[4];
  if (!v7)
  {
    SOSErrorCreate(1045, a1[7], 0, @"user_label is nil");
    return 0;
  }

  v8 = a1[5];
  if (!v8)
  {
    SOSErrorCreate(1045, a1[7], 0, @"user_password is nil");
    return 0;
  }

  v9 = a1[7];
  if (a1[6])
  {
    v10 = a1[6];
  }

  else
  {
    v10 = &stru_1EFA8C6C8;
  }

  return label_and_password_and_dsid_to_BOOL_error_request(0x2Cu, v7, v8, v10, v9);
}

@end