@interface NSUUID(CoordinationCore)
- (uint64_t)co_compare:()CoordinationCore;
@end

@implementation NSUUID(CoordinationCore)

- (uint64_t)co_compare:()CoordinationCore
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  [self getUUIDBytes:v11];
  [v4 getUUIDBytes:v10];
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = *(v11 + v5);
    v8 = *(v10 + v5);
    if (v7 < v8)
    {
      break;
    }

    if (v7 > v8)
    {
      goto LABEL_7;
    }

    if (++v5 == 16)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

@end