@interface AMDPirTest
+ (id)testPir:(id)pir;
@end

@implementation AMDPirTest

+ (id)testPir:(id)pir
{
  v24[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pir);
  v18 = 0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (![location[0] count])
  {
    [v17 setObject:@"Nothing to do" forKey:@"error"];
  }

  v16 = [location[0] objectForKey:TEST_PIR];
  if (!v16 || ((obj = v18, v10 = +[AMDJSCipherMLQueryHandler triggerPIRKVFetch:withError:](AMDJSCipherMLQueryHandler, "triggerPIRKVFetch:withError:", v16, &obj), objc_storeStrong(&v18, obj), v15 = v10, !v18) ? ([v17 setObject:v15 forKey:TEST_PIR], v13 = 0) : (v23 = @"error", v9 = objc_msgSend(v18, "localizedDescription"), v24[0] = v9, v20 = objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1), MEMORY[0x277D82BD8](v9), v13 = 1), objc_storeStrong(&v15, 0), !v13))
  {
    v3 = [location[0] objectForKey:TEST_PEC];
    v4 = v16;
    v16 = v3;
    MEMORY[0x277D82BD8](v4);
    if (!v16 || ((v11 = v18, v8 = +[AMDJSCipherMLQueryHandler triggerPECCall:withError:](AMDJSCipherMLQueryHandler, "triggerPECCall:withError:", v16, &v11), objc_storeStrong(&v18, v11), v12 = v8, !v18) ? ([v17 setObject:v12 forKey:TEST_PEC], v13 = 0) : (v21 = @"error", v7 = objc_msgSend(v18, "localizedDescription"), v22 = v7, v20 = objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1), MEMORY[0x277D82BD8](v7), v13 = 1), objc_storeStrong(&v12, 0), !v13))
    {
      v20 = MEMORY[0x277D82BE0](v17);
      v13 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v5 = v20;

  return v5;
}

@end