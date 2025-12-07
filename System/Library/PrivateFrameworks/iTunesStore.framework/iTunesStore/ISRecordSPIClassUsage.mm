@interface ISRecordSPIClassUsage
@end

@implementation ISRecordSPIClassUsage

id ____ISRecordSPIClassUsage_block_invoke(uint64_t a1)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = v3;
  v5 = @"No Class";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v8 = __ISCurrentProcessName(v7);
  v9 = v8;
  v10 = @"No Client";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = NSStringFromSelector(*(a1 + 40));
  v13 = v12;
  v14 = @"No Selector";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  if (*(a1 + 48))
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v18 = [v17 lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@:%i", v18, *(a1 + 56)];
  }

  else
  {
    v19 = @"No Location";
  }

  v22[0] = @"Client";
  v22[1] = @"Class";
  v23[0] = v11;
  v23[1] = v6;
  v22[2] = @"Selector";
  v22[3] = @"Location";
  v23[2] = v15;
  v23[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  return v20;
}

@end