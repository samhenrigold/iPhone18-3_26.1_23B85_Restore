@interface NSData(Binary)
- (unint64_t)readBinaryValueAtBit:()Binary numberOfBits:;
@end

@implementation NSData(Binary)

- (unint64_t)readBinaryValueAtBit:()Binary numberOfBits:
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 >= 0x41)
  {
    v5 = ATLLogObject(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = a4;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "The total parameter must not exceed 64 bits, got %lui", &v21, 0xCu);
    }

    return 0;
  }

  v8 = [self length];
  v9 = 8 * v8;
  if (8 * v8 < a4 + a3)
  {
    v10 = ATLLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      v22 = v9;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Bit position and total exceed capacity. bitLimit=%lui, position=%lui, total=%lui", &v21, 0x20u);
    }

    return 0;
  }

  v12 = a4 + a3 - 1;
  v13 = v12 >> 3;
  v14 = ~v12 & 7;
  v15 = exp2(a4) - 1;
  bytes = [self bytes];
  if (v13 - (a3 >> 3) == -1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = (bytes + (a3 >> 3));
    v19 = v13 - (a3 >> 3) + 1;
    do
    {
      v20 = *v18++;
      v17 = v20 | (v17 << 8);
      --v19;
    }

    while (v19);
  }

  return (v17 >> v14) & v15;
}

@end