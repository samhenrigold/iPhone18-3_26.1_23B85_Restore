@interface MTRFabricInfo
- (MTRFabricInfo)initWithFabricTable:(const void *)table fabricInfo:(const void *)info;
@end

@implementation MTRFabricInfo

- (MTRFabricInfo)initWithFabricTable:(const void *)table fabricInfo:(const void *)info
{
  v34[9] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MTRFabricInfo;
  v6 = [(MTRFabricInfo *)&v28 init];
  if (!v6)
  {
    goto LABEL_11;
  }

  v33 = &unk_284BB9138;
  if (sub_2394A7848(info, &v33))
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(info + 137);
      v9 = sub_2393C9138();
      *buf = 67109378;
      v30 = v8;
      v31 = 2080;
      v32 = v9;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch root public key for fabric index %x: %s", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v10 = *(info + 137);
      v11 = sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to fetch root public key for fabric index %x: %s", v10, v11);
    }

    goto LABEL_11;
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:65];
  v13 = *(v6 + 1);
  *(v6 + 1) = v12;

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(info + 69)];
  v15 = *(v6 + 2);
  *(v6 + 2) = v14;

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(info + 1)];
  v17 = *(v6 + 3);
  *(v6 + 3) = v16;

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*info];
  v19 = *(v6 + 4);
  *(v6 + 4) = v18;

  v20 = sub_239283EA0(info);
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v20 length:v21 encoding:4];
  v23 = *(v6 + 5);
  *(v6 + 5) = v22;

  if (!sub_239283EE8(v6 + 6, v6 + 7, table, *(info + 137), sub_2394A7BFC, 0, "root") || !sub_239283EE8(v6 + 8, v6 + 9, table, *(info + 137), sub_2394A8274, 0, "intermediate") || !sub_239283EE8(v6 + 10, v6 + 11, table, *(info + 137), sub_2394A847C, 0, "operational"))
  {
LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(info + 137)];
  v25 = *(v6 + 12);
  *(v6 + 12) = v24;

  v26 = v6;
LABEL_12:

  return v26;
}

@end