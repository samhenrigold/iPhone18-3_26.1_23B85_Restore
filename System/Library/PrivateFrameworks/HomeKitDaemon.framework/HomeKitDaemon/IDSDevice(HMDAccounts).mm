@interface IDSDevice(HMDAccounts)
- (HMDDeviceCapabilities)hmd_capabilities;
- (id)hmd_handlesForService:()HMDAccounts;
- (id)hmd_productInfo;
- (id)hmd_version;
@end

@implementation IDSDevice(HMDAccounts)

- (id)hmd_handlesForService:()HMDAccounts
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  uniqueIDOverride = [self uniqueIDOverride];
  v8 = [v6 initWithUUIDString:uniqueIDOverride];

  if (v8)
  {
    v9 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v8];
    if (v9)
    {
      v10 = [[HMDDeviceHandle alloc] initWithInternal:v9];
      [v5 addObject:v10];
    }

    pushToken = [self pushToken];
    hmd_preferredHandle = [v4 hmd_preferredHandle];
    if (pushToken && ([pushToken hmf_isZeroed] & 1) == 0 && hmd_preferredHandle)
    {
      v13 = [[_HMDGlobalDeviceHandle alloc] initWithPushToken:pushToken accountHandle:hmd_preferredHandle];
      if (!v13)
      {
LABEL_12:

        v16 = objc_msgSend_copy(v5);
        goto LABEL_16;
      }

      v14 = [[HMDDeviceHandle alloc] initWithInternal:v13];
    }

    else
    {
      v15 = IDSCopyIDForDevice();
      v13 = [v15 mutableCopy];

      [(_HMDGlobalDeviceHandle *)v13 replaceOccurrencesOfString:@"self-token" withString:@"token" options:1 range:0, [(_HMDGlobalDeviceHandle *)v13 length]];
      v14 = [HMDDeviceHandle deviceHandleForDestination:v13];
      if (!v14)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [v5 addObject:v14];
    goto LABEL_11;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v16 = MEMORY[0x277CBEBF8];
LABEL_16:

  return v16;
}

- (HMDDeviceCapabilities)hmd_capabilities
{
  v2 = [HMDDeviceCapabilities alloc];
  hmd_productInfo = [self hmd_productInfo];
  v4 = [(HMDDeviceCapabilities *)v2 initWithProductInfo:hmd_productInfo];

  return v4;
}

- (id)hmd_version
{
  hmd_productInfo = [self hmd_productInfo];
  objc_msgSend_operatingSystemVersion(self);
  productPlatform = [hmd_productInfo productPlatform];
  if (productPlatform <= 2)
  {
    if (productPlatform != 1)
    {
      if (productPlatform != 2)
      {
        goto LABEL_125;
      }

      if ([hmd_productInfo productClass] == 4)
      {
        v9 = 0uLL;
        if (!HMFOperatingSystemVersionCompare())
        {
          goto LABEL_77;
        }
      }

      v10 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
LABEL_55:
        v4 = [HMDHomeKitVersion version1:v10];
        goto LABEL_126;
      }

      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_77;
      }

      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_77;
      }

      v11 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v11 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v11 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_130;
      }

      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_130;
      }

      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_130;
      }

      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_130;
      }

      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_137;
      }

      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_137;
      }

      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_137;
      }

      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_137;
      }

      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_149;
      }

      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
LABEL_73:
        v4 = [HMDHomeKitVersion version7_0:v16];
        goto LABEL_126;
      }

      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_149;
      }

      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_149;
      }

      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_149;
      }

      v17 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_141;
      }

      v17 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_141;
      }

      v17 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_141;
      }

      v18 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_143;
      }

      v18 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_143;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_155;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_208;
      }

      v8 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v8 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v8 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v21 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v21 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v21 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v21 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                goto LABEL_123;
              }
            }
          }
        }
      }

LABEL_118:
      v4 = [HMDHomeKitVersion version12:v21];
      goto LABEL_126;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v15 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v17 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_141;
          }

          v17 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_141;
          }

          v17 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_141;
          }

          v18 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_143;
          }

          v18 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_143;
          }

          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_208;
          }

          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_208;
          }

          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_155;
          }

          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_208;
          }

          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_208;
          }

          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_208;
          }

          v8 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v8 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v8 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v21 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v21 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v21 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v21 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  v21 = 0uLL;
                  if (HMFOperatingSystemVersionCompare() != 1)
                  {
                    goto LABEL_123;
                  }
                }
              }
            }
          }

          goto LABEL_118;
        }
      }
    }

LABEL_149:
    v4 = [HMDHomeKitVersion version7:v15];
    goto LABEL_126;
  }

  if (productPlatform == 3)
  {
    v10 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_55;
    }

    v9 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_77;
    }

    v9 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_77;
    }

    v11 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v11 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v11 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_130;
    }

    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_130;
    }

    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_130;
    }

    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_130;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_137;
    }

    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v15 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v15 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v17 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_141;
            }

            v17 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_141;
            }

            v17 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_141;
            }

            v18 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_143;
            }

            v18 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_143;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_155;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_208;
            }

            v8 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v8 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v8 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v21 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v21 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v21 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  v21 = 0uLL;
                  if (HMFOperatingSystemVersionCompare() != 1)
                  {
                    v21 = 0uLL;
                    if (HMFOperatingSystemVersionCompare() != 1)
                    {
                      goto LABEL_123;
                    }
                  }
                }
              }
            }

            goto LABEL_118;
          }
        }
      }
    }

    goto LABEL_149;
  }

  if (productPlatform != 4)
  {
    if (productPlatform == 5)
    {
      v8 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1 || (v8 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v8 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
      {
LABEL_87:
        v4 = [HMDHomeKitVersion version11:v8];
        goto LABEL_126;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

LABEL_123:
      v7 = 0uLL;
      v22 = 0;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        v4 = [HMDHomeKitVersion version13:0];
        goto LABEL_126;
      }
    }

LABEL_125:
    v4 = [HMDHomeKitVersion currentVersion:v7];
    goto LABEL_126;
  }

  v9 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v9 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_77:
    v4 = [HMDHomeKitVersion version2:v9];
    goto LABEL_126;
  }

  v11 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v11 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v11 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_102:
    v4 = [HMDHomeKitVersion version3:v11];
    goto LABEL_126;
  }

  v12 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v12 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v12 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v12 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_130:
    v4 = [HMDHomeKitVersion version4:v12];
    goto LABEL_126;
  }

  v13 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v13 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v13 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_85:
    v4 = [HMDHomeKitVersion version5:v13];
    goto LABEL_126;
  }

  v14 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v14 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v14 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_137:
    v4 = [HMDHomeKitVersion version6:v14];
    goto LABEL_126;
  }

  v15 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_149;
  }

  v16 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_73;
  }

  v15 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_149;
  }

  v15 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_149;
  }

  v15 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_149;
  }

  v17 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v17 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v17 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_141:
    v4 = [HMDHomeKitVersion version8:v17];
    goto LABEL_126;
  }

  v18 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v18 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_143:
    v4 = [HMDHomeKitVersion version9:v18];
    goto LABEL_126;
  }

  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_208;
  }

  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_208;
  }

  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_208;
  }

  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_208;
  }

  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
LABEL_155:
    v4 = [HMDHomeKitVersion version10_3:v20];
    goto LABEL_126;
  }

  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() != 1)
  {
    v19 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v8 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v8 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v8 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v21 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v21 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v21 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v21 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v21 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  goto LABEL_123;
                }
              }
            }
          }
        }

        goto LABEL_118;
      }
    }
  }

LABEL_208:
  v4 = [HMDHomeKitVersion version10:v19];
LABEL_126:
  v5 = v4;

  return v5;
}

- (id)hmd_productInfo
{
  v29 = *MEMORY[0x277D85DE8];
  productName = [self productName];
  v3 = HMFProductPlatformFromString();

  modelIdentifier = [self modelIdentifier];
  lowercaseString = [modelIdentifier lowercaseString];

  v6 = HMFProductClassFromString();
  if (v3)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    productName2 = [selfCopy productName];
    v23 = 138543874;
    v24 = v10;
    v25 = 2112;
    v26 = productName2;
    v27 = 2112;
    v28 = selfCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Could not determine product platform from product name '%@' for device: %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
LABEL_7:
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      modelIdentifier2 = [selfCopy2 modelIdentifier];
      v23 = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = modelIdentifier2;
      v27 = 2112;
      v28 = selfCopy2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Could not determine product class from model identifier '%@' for device: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_10:
  v17 = objc_alloc(MEMORY[0x277D0F8E8]);
  v18 = objc_alloc(MEMORY[0x277D0F8F8]);
  objc_msgSend_operatingSystemVersion(self);
  v19 = [v18 initWithOperatingSystemVersion:&v23];
  modelIdentifier3 = [self modelIdentifier];
  v21 = [v17 initWithPlatform:v3 class:v6 softwareVersion:v19 modelIdentifier:modelIdentifier3];

  return v21;
}

@end