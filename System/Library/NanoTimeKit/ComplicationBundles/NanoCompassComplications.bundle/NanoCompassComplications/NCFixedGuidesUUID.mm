@interface NCFixedGuidesUUID
+ (void)initialize;
@end

@implementation NCFixedGuidesUUID

+ (void)initialize
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = objc_msgSend_initWithUUIDString_(v2, v3, @"00000000-0000-0000-0000-000000000010");
  v5 = qword_27E1C4F20;
  qword_27E1C4F20 = v4;

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDString_(v6, v7, @"00000000-0000-0000-0000-000000000020");
  v9 = qword_27E1C4F28;
  qword_27E1C4F28 = v8;

  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = objc_msgSend_initWithUUIDString_(v10, v11, @"00000000-0000-0000-0000-000000000030");
  v13 = qword_27E1C4F30;
  qword_27E1C4F30 = v12;

  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  v16 = objc_msgSend_initWithUUIDString_(v14, v15, @"00000000-0000-0000-0000-000000000040");
  v17 = qword_27E1C4F38;
  qword_27E1C4F38 = v16;

  v18 = objc_alloc(MEMORY[0x277CCAD78]);
  v20 = objc_msgSend_initWithUUIDString_(v18, v19, @"E8B2B4D6-A7C1-4F9E-9B2A-6F7D8C9B0A1B");
  v21 = qword_27E1C4F40;
  qword_27E1C4F40 = v20;

  v22 = objc_alloc(MEMORY[0x277CCAD78]);
  v24 = objc_msgSend_initWithUUIDString_(v22, v23, @"A1B2C3D4-E5F6-4A7B-8C9D-0E1F2A3B4C5D");
  v25 = qword_27E1C4F48;
  qword_27E1C4F48 = v24;

  v26 = objc_alloc(MEMORY[0x277CCAD78]);
  v28 = objc_msgSend_initWithUUIDString_(v26, v27, @"E8A23E33-643A-4E3A-82E8-74529145A361");
  v29 = qword_27E1C4F50;
  qword_27E1C4F50 = v28;

  v30 = objc_alloc(MEMORY[0x277CCAD78]);
  v32 = objc_msgSend_initWithUUIDString_(v30, v31, @"F9B34C48-7758-4C8A-B0A2-4A2D8E6F7B89");
  v33 = qword_27E1C4F58;
  qword_27E1C4F58 = v32;

  v34 = objc_alloc(MEMORY[0x277CCAD78]);
  v36 = objc_msgSend_initWithUUIDString_(v34, v35, @"C1D9F8E7-6A9B-4F1C-9E3D-5B7A0F6E2D10");
  v37 = qword_27E1C4F60;
  qword_27E1C4F60 = v36;

  MEMORY[0x2821F96F8](v36, v37);
}

@end