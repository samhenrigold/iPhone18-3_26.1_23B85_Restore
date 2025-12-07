@interface HMMTRTLVParser
+ (id)csrFromNOCSRElements:(id)elements;
+ (id)fabricIndicesFromTLV:(id)v;
+ (id)keyPairDataFromTLV:(id)v;
+ (id)logCategory;
@end

@implementation HMMTRTLVParser

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_10059 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_10059, &__block_literal_global_10060);
  }

  v3 = logCategory__hmf_once_v3_10061;

  return v3;
}

uint64_t __29__HMMTRTLVParser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_10061;
  logCategory__hmf_once_v3_10061 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)keyPairDataFromTLV:(id)v
{
  v33 = *MEMORY[0x277D85DE8];
  vCopy = v;
  bytes = [vCopy bytes];
  v6 = [vCopy length];
  if (!v6 || *bytes != 21)
  {
    goto LABEL_17;
  }

  v7 = 0;
  v27 = v6 - 1;
  v28 = bytes + 1;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v10 = ReadIntegerWithContextSpecificTag(&v28, &v27, &v24);
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      break;
    }

    if (!ReadOctetStringWithContextSpecificTag(&v28, &v27, &v26, &v25))
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v15;
      v16 = "%{public}@Unknown field in the key pair TLV struct";
      v17 = v21;
      v18 = 12;
      goto LABEL_15;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v25];

    v7 = v13;
LABEL_9:

    v8 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v11 isEqual:&unk_283EE89A0])
  {
    goto LABEL_9;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v15;
    v31 = 2112;
    v32 = v12;
    v16 = "%{public}@Unexpected key pair data version: %@";
    v17 = v21;
    v18 = 22;
LABEL_15:
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
  }

LABEL_16:

  objc_autoreleasePoolPop(v19);
LABEL_17:
  v7 = 0;
LABEL_18:

  return v7;
}

+ (id)fabricIndicesFromTLV:(id)v
{
  v36 = *MEMORY[0x277D85DE8];
  vCopy = v;
  bytes = [vCopy bytes];
  v5 = [vCopy length];
  if (v5 && *bytes == 21)
  {
    v6 = v5 - 1;
    v33 = v5 - 1;
    v34 = bytes + 1;
    for (i = 1; ; i = 0)
    {
      v8 = v6 - 2;
      if (v6 >= 2)
      {
        v9 = v34;
        if ((*v34 & 0xE0) == 0x20 && (*v34 & 0x1F) == 0x16 && v34[1] == 1)
        {
          break;
        }
      }

      if ((ReadIntegerWithContextSpecificTag(&v34, &v33, &v28) & i & 1) == 0)
      {
        goto LABEL_12;
      }

      v6 = v33;
    }

    array = [MEMORY[0x277CBEB18] array];
    if (v8 >= 1)
    {
      v14 = 0;
      v15 = v9 + 2;
      v16 = v8;
      while (1)
      {
        v17 = v15[v14];
        if (v17 > 0x1F)
        {
          break;
        }

        if (v15[v14] <= 3u)
        {
          if (v15[v14] > 1u)
          {
            if (v17 != 2)
            {
              v18 = 1;
LABEL_32:
              v19 = 8;
              goto LABEL_38;
            }

            v18 = 1;
            goto LABEL_37;
          }

          if (v15[v14])
          {
            v18 = 1;
LABEL_29:
            v19 = 2;
            goto LABEL_38;
          }

          v19 = 1;
          v18 = 1;
        }

        else
        {
          if (v15[v14] > 5u)
          {
            if (v17 != 6)
            {
              if (v17 != 7)
              {
                if (v17 != 24)
                {
                  break;
                }

                v22 = array;

                v23 = array;
                v29 = 0u;
                v30 = 0u;
                v31 = 0u;
                v32 = 0u;
                v21 = v23;
                v24 = [v21 countByEnumeratingWithState:&v29 objects:v35 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v30;
                  while (2)
                  {
                    for (j = 0; j != v25; ++j)
                    {
                      if (*v30 != v26)
                      {
                        objc_enumerationMutation(v21);
                      }

                      if (([*(*(&v29 + 1) + 8 * j) longLongValue] - 1) > 0xFD)
                      {

                        goto LABEL_41;
                      }
                    }

                    v25 = [v21 countByEnumeratingWithState:&v29 objects:v35 count:16];
                    if (v25)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v21 = v21;
                v11 = v21;
                goto LABEL_42;
              }

              v18 = 0;
              goto LABEL_32;
            }

            v18 = 0;
LABEL_37:
            v19 = 4;
            goto LABEL_38;
          }

          if (v17 != 4)
          {
            v18 = 0;
            goto LABEL_29;
          }

          v18 = 0;
          v19 = 1;
        }

LABEL_38:
        if (v16 > v19)
        {
          v20 = LittleEndianNumberFromBytes(&v15[v14 + 1], v19, v18);
          [array addObject:v20];

          v14 += v19 + 1;
          v16 = v8 - v14;
          if (v8 > v14)
          {
            continue;
          }
        }

        break;
      }
    }

    v21 = 0;
LABEL_41:
    v11 = 0;
LABEL_42:
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  return v11;
}

+ (id)csrFromNOCSRElements:(id)elements
{
  elementsCopy = elements;
  bytes = [elementsCopy bytes];
  v5 = [elementsCopy length];

  if (v5 && *bytes == 21)
  {
    v11 = v5 - 1;
    v12 = bytes + 1;
    v9 = 0;
    v10 = 0;
    v6 = ReadOctetStringWithContextSpecificTag(&v12, &v11, &v10, &v9);
    v7 = 0;
    if (v6)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end