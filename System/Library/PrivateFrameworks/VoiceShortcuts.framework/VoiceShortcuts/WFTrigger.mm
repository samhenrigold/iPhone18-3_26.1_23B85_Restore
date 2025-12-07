@interface WFTrigger
@end

@implementation WFTrigger

void __51__WFTrigger_PowerLog__powerLogEventKindForTrigger___block_invoke()
{
  v43[20] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v41 = NSStringFromClass(v0);
  v42[0] = v41;
  v43[0] = &unk_2845ECF78;
  v1 = objc_opt_class();
  v40 = NSStringFromClass(v1);
  v42[1] = v40;
  v43[1] = &unk_2845ECF90;
  v2 = objc_opt_class();
  v39 = NSStringFromClass(v2);
  v42[2] = v39;
  v43[2] = &unk_2845ECFA8;
  v3 = objc_opt_class();
  v38 = NSStringFromClass(v3);
  v42[3] = v38;
  v43[3] = &unk_2845ECFC0;
  v4 = objc_opt_class();
  v37 = NSStringFromClass(v4);
  v42[4] = v37;
  v43[4] = &unk_2845ECFD8;
  v5 = objc_opt_class();
  v36 = NSStringFromClass(v5);
  v42[5] = v36;
  v43[5] = &unk_2845ECFF0;
  v6 = objc_opt_class();
  v35 = NSStringFromClass(v6);
  v42[6] = v35;
  v43[6] = &unk_2845ED008;
  v7 = objc_opt_class();
  v34 = NSStringFromClass(v7);
  v42[7] = v34;
  v43[7] = &unk_2845ED020;
  v8 = objc_opt_class();
  v33 = NSStringFromClass(v8);
  v42[8] = v33;
  v43[8] = &unk_2845ED038;
  v9 = objc_opt_class();
  v32 = NSStringFromClass(v9);
  v42[9] = v32;
  v43[9] = &unk_2845ED050;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v42[10] = v11;
  v43[10] = &unk_2845ED068;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v42[11] = v13;
  v43[11] = &unk_2845ED080;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v42[12] = v15;
  v43[12] = &unk_2845ED098;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v42[13] = v17;
  v43[13] = &unk_2845ED0B0;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v42[14] = v19;
  v43[14] = &unk_2845ED0C8;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v42[15] = v21;
  v43[15] = &unk_2845ED0E0;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v42[16] = v23;
  v43[16] = &unk_2845ED0F8;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v42[17] = v25;
  v43[17] = &unk_2845ED110;
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v42[18] = v27;
  v43[18] = &unk_2845ED128;
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v42[19] = v29;
  v43[19] = &unk_2845ED140;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:20];
  v31 = powerLogEventKindForTrigger__eventKinds;
  powerLogEventKindForTrigger__eventKinds = v30;
}

@end