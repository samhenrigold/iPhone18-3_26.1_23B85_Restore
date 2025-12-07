@interface HAPDataValueTransformer
+ (Class)expectedTransformedClassForFormat:(unint64_t)format;
+ (void)initialize;
- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error;
- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error;
@end

@implementation HAPDataValueTransformer

- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy)
  {
    v34.receiver = self;
    v34.super_class = HAPDataValueTransformer;
    v9 = [(HAPValueTransformer *)&v34 reverseTransformedValue:valueCopy format:format error:error];
    v10 = [valueCopy isEqual:v9];

    if (!v10)
    {
      v18 = 0;
      goto LABEL_54;
    }
  }

  if ([HAPDataValueTransformer isValidFormat:format])
  {
    v11 = valueCopy;
    v12 = v11;
    if (format <= 5)
    {
      if (format > 2)
      {
        if (format == 3)
        {
          if ([v11 length] == 4)
          {
            bytes = [v12 bytes];
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*bytes];
            goto LABEL_46;
          }
        }

        else if (format == 4)
        {
          if ([v11 length] == 8)
          {
            bytes2 = [v12 bytes];
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*bytes2];
            goto LABEL_46;
          }
        }

        else if ([v11 length] == 1)
        {
          bytes3 = [v12 bytes];
          v14 = [MEMORY[0x277CCABB0] numberWithChar:*bytes3];
          goto LABEL_46;
        }

        if (![v12 length])
        {
          goto LABEL_52;
        }

LABEL_47:
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = HAPCharacteristicFormatToString(format);
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
          *buf = 138543874;
          v36 = v30;
          v37 = 2112;
          formatCopy = v31;
          v39 = 2112;
          v40 = v32;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] Invalid format/data length (%@/%@) combination.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
          *error = v18 = 0;
        }

        else
        {
LABEL_52:
          v18 = 0;
        }

        goto LABEL_53;
      }

      if (format == 1)
      {
        if ([v11 length] == 1)
        {
          bytes4 = [v12 bytes];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*bytes4];
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (format == 2)
      {
        if ([v11 length] == 2)
        {
          bytes5 = [v12 bytes];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*bytes5];
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (format <= 8)
      {
        if (format == 6)
        {
          if ([v11 length] == 2)
          {
            bytes6 = [v12 bytes];
            v14 = [MEMORY[0x277CCABB0] numberWithShort:*bytes6];
            goto LABEL_46;
          }
        }

        else if (format == 7)
        {
          if ([v11 length] == 4)
          {
            bytes7 = [v12 bytes];
            v14 = [MEMORY[0x277CCABB0] numberWithInt:*bytes7];
            goto LABEL_46;
          }
        }

        else if ([v11 length] == 8)
        {
          bytes8 = [v12 bytes];
          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*bytes8];
LABEL_46:
          v18 = v14;
LABEL_53:

          goto LABEL_54;
        }

        goto LABEL_47;
      }

      switch(format)
      {
        case 0xBuLL:
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
          goto LABEL_46;
        case 0xAuLL:
          if ([v11 length] == 4)
          {
            LODWORD(v25) = *[v12 bytes];
            v14 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
            goto LABEL_46;
          }

          goto LABEL_47;
        case 9uLL:
          if ([v11 length] == 1)
          {
            if (*[v12 bytes] == 1)
            {
              v20 = MEMORY[0x277CBEC38];
            }

            else
            {
              v20 = MEMORY[0x277CBEC28];
            }

            v14 = v20;
            goto LABEL_46;
          }

          goto LABEL_47;
      }
    }

    if ((format & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      v14 = v11;
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v17;
    v37 = 2048;
    formatCopy = format;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPDataValueTransformer] Invalid format '%tu', returning value unchanged", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v18 = valueCopy;
LABEL_54:

  return v18;
}

- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    if ([HAPDataValueTransformer isValidFormat:format])
    {
      data = [MEMORY[0x277CBEA90] data];
LABEL_11:
      v12 = data;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v36.receiver = self;
  v36.super_class = HAPDataValueTransformer;
  v9 = [(HAPValueTransformer *)&v36 transformedValue:valueCopy format:format error:error];
  v10 = [valueCopy isEqual:v9];

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![HAPDataValueTransformer isValidFormat:format])
  {
LABEL_9:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_10:
      data = valueCopy;
      goto LABEL_11;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = HAPCharacteristicFormatToString(format);
    v15 = [v13 stringWithFormat:@"Invalid format type '%@' for value of class '%@'", v14, objc_opt_class()];

    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v18;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43[0] = v15;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      *error = [v19 errorWithDomain:@"HAPErrorDomain" code:-6717 userInfo:v20];
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  switch(format)
  {
    case 1uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA94E8] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9500) == -1)
      {
        goto LABEL_63;
      }

      unsignedCharValue = [v22 unsignedCharValue];
      goto LABEL_46;
    case 2uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9518] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9500) == -1)
      {
        goto LABEL_63;
      }

      unsignedShortValue = [v22 unsignedShortValue];
      goto LABEL_55;
    case 3uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9530] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9500) == -1)
      {
        goto LABEL_63;
      }

      unsignedIntValue = [v22 unsignedIntValue];
      goto LABEL_60;
    case 4uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9548] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9500) == -1)
      {
        goto LABEL_63;
      }

      unsignedLongLongValue = [v22 unsignedLongLongValue];
      goto LABEL_41;
    case 5uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9428] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9440) == -1)
      {
        goto LABEL_63;
      }

      unsignedCharValue = [v22 charValue];
LABEL_46:
      buf[0] = unsignedCharValue;
      v27 = MEMORY[0x277CBEA90];
      v28 = 1;
      goto LABEL_62;
    case 6uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9458] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9470) == -1)
      {
        goto LABEL_63;
      }

      unsignedShortValue = [v22 shortValue];
LABEL_55:
      *buf = unsignedShortValue;
      v27 = MEMORY[0x277CBEA90];
      v28 = 2;
      goto LABEL_62;
    case 7uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9488] == 1 || objc_msgSend(v22, "compare:", &unk_283EA94A0) == -1)
      {
        goto LABEL_63;
      }

      unsignedIntValue = [v22 intValue];
LABEL_60:
      *buf = unsignedIntValue;
      goto LABEL_61;
    case 8uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA94B8] == 1 || objc_msgSend(v22, "compare:", &unk_283EA94D0) == -1)
      {
        goto LABEL_63;
      }

      unsignedLongLongValue = [v22 longLongValue];
LABEL_41:
      *buf = unsignedLongLongValue;
      v27 = MEMORY[0x277CBEA90];
      v28 = 8;
      goto LABEL_62;
    case 9uLL:
      buf[0] = 0;
      if ([valueCopy isEqual:MEMORY[0x277CBEC28]])
      {
        goto LABEL_74;
      }

      if (![valueCopy isEqual:MEMORY[0x277CBEC38]])
      {
        goto LABEL_17;
      }

      buf[0] = 1;
LABEL_74:
      data = [MEMORY[0x277CBEA90] dataWithBytes:buf length:1];
      goto LABEL_11;
    case 0xAuLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v22 = valueCopy;
      if ([v22 compare:&unk_283EA9AE8] == 1 || objc_msgSend(v22, "compare:", &unk_283EA9AF8) == -1)
      {
LABEL_63:
        v12 = 0;
      }

      else
      {
        [v22 floatValue];
        *buf = v24;
LABEL_61:
        v27 = MEMORY[0x277CBEA90];
        v28 = 4;
LABEL_62:
        v12 = [v27 dataWithBytes:buf length:v28];
      }

      break;
    case 0xBuLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      data = [valueCopy dataUsingEncoding:4];
      goto LABEL_11;
    case 0xCuLL:
    case 0xDuLL:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      goto LABEL_67;
    default:
LABEL_67:
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = HAPCharacteristicFormatToString(format);
        v34 = objc_opt_class();
        *buf = 138543874;
        *&buf[4] = v32;
        v38 = 2112;
        v39 = v33;
        v40 = 2112;
        v41 = v34;
        v35 = v34;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] Invalid format/class (%@/%@) combination.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      if (!error)
      {
        goto LABEL_17;
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
      *error = v12 = 0;
      break;
  }

LABEL_18:

  return v12;
}

+ (void)initialize
{
  if (!defaultDataValueTransformer)
  {
    defaultDataValueTransformer = objc_alloc_init(HAPDataValueTransformer);

    MEMORY[0x2821F96F8]();
  }
}

+ (Class)expectedTransformedClassForFormat:(unint64_t)format
{
  if (format - 1 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end