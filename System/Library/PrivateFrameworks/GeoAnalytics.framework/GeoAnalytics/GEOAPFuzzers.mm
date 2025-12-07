@interface GEOAPFuzzers
+ (double)fuzzTime:(double)time bySeconds:(unsigned int)seconds;
+ (id)saltedHashWithSalt:(unint64_t)salt value:(id)value;
+ (id)twoDecimalLocation:(id)location;
+ (unint64_t)bucketNavDurationTime:(unint64_t)time;
+ (unsigned)bucket1800:(unsigned int)bucket1800;
+ (unsigned)bucket21:(unsigned int)bucket21;
+ (unsigned)fuzzDailyCount:(unsigned int)count forDailyUsageType:(unsigned int)type;
+ (unsigned)fuzzMonthlyCount:(unsigned int)count forDailyUsageType:(unsigned int)type;
+ (unsigned)max11:(unsigned int)max11;
+ (unsigned)max2:(unsigned int)max2;
+ (unsigned)max6:(unsigned int)max6;
@end

@implementation GEOAPFuzzers

+ (unsigned)fuzzMonthlyCount:(unsigned int)count forDailyUsageType:(unsigned int)type
{
  if (type - 191 > 6)
  {
    if (type == 83)
    {
      return [GEOAPFuzzers max2:*&count];
    }

    return count;
  }

  else
  {
    if (((1 << (type + 65)) & 0x79) != 0)
    {
      return [GEOAPFuzzers max2:*&count];
    }

    return [GEOAPFuzzers max1:*&count];
  }
}

+ (unsigned)fuzzDailyCount:(unsigned int)count forDailyUsageType:(unsigned int)type
{
  switch(type)
  {
    case 0x14u:
    case 0x16u:
    case 0x17u:
    case 0x1Bu:
    case 0x20u:
    case 0x22u:
    case 0x30u:
    case 0x33u:
    case 0x36u:
    case 0x4Cu:
    case 0x61u:
    case 0x62u:
    case 0x65u:
    case 0x66u:
    case 0x72u:
    case 0x73u:
    case 0x74u:
    case 0x81u:
    case 0x92u:
    case 0xB7u:
    case 0xB8u:
    case 0xB9u:
    case 0xBAu:
    case 0xBBu:
    case 0xBCu:
    case 0xBDu:
    case 0xC9u:
    case 0xCAu:
    case 0xCBu:
    case 0xCDu:
    case 0xD7u:
    case 0xD8u:
    case 0xE1u:
    case 0xE3u:
    case 0xE4u:
    case 0xE5u:
    case 0xE6u:
    case 0xE7u:
    case 0xE8u:
    case 0xE9u:
    case 0xEAu:
    case 0xEBu:
    case 0xECu:
    case 0xEDu:
    case 0xFAu:
    case 0xFBu:
    case 0xFCu:
    case 0xFDu:
    case 0xFEu:
    case 0xFFu:
    case 0x100u:
    case 0x101u:
    case 0x102u:
    case 0x103u:
    case 0x104u:
    case 0x105u:
    case 0x106u:
    case 0x107u:
    case 0x108u:
    case 0x109u:
    case 0x10Au:
    case 0x10Bu:
    case 0x10Cu:
    case 0x10Eu:
    case 0x10Fu:
    case 0x110u:
    case 0x111u:
    case 0x112u:
      result = [GEOAPFuzzers max1:*&count];
      break;
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Fu:
    case 0x21u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x31u:
    case 0x32u:
    case 0x35u:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x46u:
    case 0x47u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Du:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x68u:
    case 0x6Du:
    case 0x6Eu:
    case 0x6Fu:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
    case 0x94u:
    case 0xA7u:
    case 0xA8u:
    case 0xA9u:
    case 0xAAu:
    case 0xABu:
    case 0xACu:
    case 0xADu:
    case 0xAEu:
    case 0xB1u:
    case 0xB2u:
    case 0xB3u:
    case 0xB4u:
    case 0xB5u:
    case 0xB6u:
    case 0xC7u:
    case 0xC8u:
    case 0xD0u:
    case 0xD2u:
    case 0xD4u:
    case 0xD5u:
    case 0xD6u:
    case 0xD9u:
    case 0xDAu:
    case 0xDBu:
    case 0xDCu:
    case 0xDDu:
    case 0xDEu:
    case 0xDFu:
    case 0xE0u:
    case 0xE2u:
    case 0xF4u:
    case 0xF7u:
    case 0x10Du:
      result = [GEOAPFuzzers max6:*&count];
      break;
    case 0x2Du:
    case 0x3Cu:
    case 0x69u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0xEFu:
    case 0xF0u:
    case 0xF2u:
    case 0xF3u:
    case 0xF8u:
    case 0xF9u:
      goto LABEL_8;
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
      result = [GEOAPFuzzers max11:*&count];
      break;
    case 0x97u:
    case 0xA6u:
      result = [GEOAPFuzzers bucket1800:*&count];
      break;
    case 0xF5u:
    case 0xF6u:
      result = [GEOAPFuzzers bucket21:*&count];
      break;
    default:
      count = 1;
LABEL_8:
      result = count;
      break;
  }

  return result;
}

+ (id)saltedHashWithSalt:(unint64_t)salt value:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  data = salt;
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    *len = 64;
    [valueCopy getBytes:v23 maxLength:64 usedLength:len encoding:4 options:0 range:0 remainingRange:{objc_msgSend(valueCopy, "length"), 0}];
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 8u);
    CC_SHA256_Update(&c, v23, len[0]);
    CC_SHA256_Final(md, &c);
    v6 = 0;
    v7 = v22;
    v8.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v8.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v9.i64[0] = 0xA0A0A0A0A0A0A0A0;
    v9.i64[1] = 0xA0A0A0A0A0A0A0A0;
    v10.i64[0] = 0x3030303030303030;
    v10.i64[1] = 0x3030303030303030;
    v11.i64[0] = 0x3737373737373737;
    v11.i64[1] = 0x3737373737373737;
    v12.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v12.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    do
    {
      v13 = *&md[v6];
      v14 = vandq_s8(v13, v8);
      v15.i64[0] = 0x3030303030303030;
      v15.i64[1] = 0x3030303030303030;
      v16.i64[0] = 0x3737373737373737;
      v16.i64[1] = 0x3737373737373737;
      v27.val[0] = vbslq_s8(vcgtq_u8(v9, v13), vsraq_n_u8(v15, v13, 4uLL), vsraq_n_u8(v16, v13, 4uLL));
      v27.val[1] = vbslq_s8(vcgtq_u8(v12, v14), vorrq_s8(v14, v10), vaddq_s8(v14, v11));
      vst2q_s8(v7, v27);
      v7 += 32;
      v6 += 16;
    }

    while (v6 != 32);
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v22 length:64 encoding:4];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (unint64_t)bucketNavDurationTime:(unint64_t)time
{
  v3 = 600;
  v4 = 1010;
  v5 = 1800;
  v6 = 2669;
  if (time > 0xA6D)
  {
    v6 = 3985;
  }

  if (time >= 0x709)
  {
    v5 = v6;
  }

  if (time >= 0x3F3)
  {
    v4 = v5;
  }

  if (time >= 0x259)
  {
    v3 = v4;
  }

  if (time >= 0x126)
  {
    return v3;
  }

  else
  {
    return 293;
  }
}

+ (unsigned)bucket1800:(unsigned int)bucket1800
{
  if (bucket1800 < 7)
  {
    return 0;
  }

  if (bucket1800 < 0x1F)
  {
    return 6;
  }

  if (bucket1800 < 0x3D)
  {
    return 30;
  }

  if (bucket1800 < 0x79)
  {
    return 60;
  }

  if (bucket1800 < 0xB5)
  {
    return 120;
  }

  if (bucket1800 < 0xF1)
  {
    return 180;
  }

  if (bucket1800 < 0x12D)
  {
    return 240;
  }

  if (bucket1800 < 0x169)
  {
    return 300;
  }

  if (bucket1800 < 0x1A5)
  {
    return 360;
  }

  if (bucket1800 < 0x1E1)
  {
    return 420;
  }

  if (bucket1800 < 0x21D)
  {
    return 480;
  }

  if (bucket1800 < 0x259)
  {
    return 540;
  }

  if (bucket1800 < 0x385)
  {
    return 600;
  }

  if (bucket1800 < 0x4B1)
  {
    return 900;
  }

  if (bucket1800 < 0x5DD)
  {
    return 1200;
  }

  if (bucket1800 <= 0x708)
  {
    return 1500;
  }

  return 1800;
}

+ (unsigned)bucket21:(unsigned int)bucket21
{
  if (bucket21 >= 0x15)
  {
    v3 = 21;
  }

  else
  {
    v3 = 16;
  }

  if (bucket21 >= 0x10)
  {
    v4 = v3;
  }

  else
  {
    v4 = 11;
  }

  if (bucket21 >= 0xB)
  {
    return v4;
  }

  else
  {
    return bucket21;
  }
}

+ (unsigned)max11:(unsigned int)max11
{
  if (max11 >= 0xB)
  {
    return 11;
  }

  else
  {
    return max11;
  }
}

+ (unsigned)max6:(unsigned int)max6
{
  if (max6 >= 6)
  {
    return 6;
  }

  else
  {
    return max6;
  }
}

+ (unsigned)max2:(unsigned int)max2
{
  if (max2 >= 2)
  {
    return 2;
  }

  else
  {
    return max2;
  }
}

+ (id)twoDecimalLocation:(id)location
{
  if (location)
  {
    [location coordinate];
    GEOCoordinateWithReducedPrecision();
    v6 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v4, v5}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)fuzzTime:(double)time bySeconds:(unsigned int)seconds
{
  secondsCopy = seconds;
  v5 = time % seconds;
  if (v5)
  {
    v6 = time < 0.0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    secondsCopy = 0;
  }

  return floor(time - (secondsCopy + v5));
}

@end