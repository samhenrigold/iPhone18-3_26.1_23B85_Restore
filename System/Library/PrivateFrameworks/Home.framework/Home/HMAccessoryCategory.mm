@interface HMAccessoryCategory
@end

@implementation HMAccessoryCategory

void __55__HMAccessoryCategory_HFAdditions__hf_isMediaAccessory__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{*MEMORY[0x277CCE900], *MEMORY[0x277CCE878], *MEMORY[0x277CCE870], *MEMORY[0x277CCE860], *MEMORY[0x277CCE8B0], 0}];
  v2 = _MergedGlobals_287;
  _MergedGlobals_287 = v1;
}

void __77__HMAccessoryCategory_HFAdditions__hf_compatibleServiceTypesForCategoryType___block_invoke()
{
  v28[22] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277CCE8C8];
  v26 = [MEMORY[0x277CBEB98] set];
  v28[0] = v26;
  v27[1] = *MEMORY[0x277CCE8E8];
  v25 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0ED8], 0}];
  v28[1] = v25;
  v27[2] = *MEMORY[0x277CCE888];
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E30], 0}];
  v28[2] = v24;
  v27[3] = *MEMORY[0x277CCE890];
  v23 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0EB0], 0}];
  v28[3] = v23;
  v27[4] = *MEMORY[0x277CCE898];
  v22 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E40], 0}];
  v28[4] = v22;
  v27[5] = *MEMORY[0x277CCE8A8];
  v21 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E58], 0}];
  v28[5] = v21;
  v27[6] = *MEMORY[0x277CCE8C0];
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0EA0], 0}];
  v28[6] = v20;
  v27[7] = *MEMORY[0x277CCE8D0];
  v19 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0ED0], 0}];
  v28[7] = v19;
  v27[8] = *MEMORY[0x277CCE8D8];
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F00], 0}];
  v28[8] = v18;
  v27[9] = *MEMORY[0x277CCE8F0];
  v17 = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  v28[9] = v17;
  v27[10] = *MEMORY[0x277CCE910];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F08], 0}];
  v28[10] = v16;
  v27[11] = *MEMORY[0x277CCE940];
  v0 = *MEMORY[0x277CD0F30];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F30], 0}];
  v28[11] = v15;
  v27[12] = *MEMORY[0x277CCE958];
  v1 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F58], 0}];
  v28[12] = v1;
  v27[13] = *MEMORY[0x277CCE960];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F60], 0}];
  v28[13] = v2;
  v27[14] = *MEMORY[0x277CCE868];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0DD8], 0}];
  v28[14] = v3;
  v27[15] = *MEMORY[0x277CCE850];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{v0, 0}];
  v28[15] = v4;
  v27[16] = *MEMORY[0x277CCE858];
  v5 = *MEMORY[0x277CD0E68];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E68], 0}];
  v28[16] = v6;
  v27[17] = *MEMORY[0x277CCE848];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{v5, 0}];
  v28[17] = v7;
  v27[18] = *MEMORY[0x277CCE908];
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E80], 0}];
  v28[18] = v8;
  v27[19] = *MEMORY[0x277CCE8A0];
  v9 = *MEMORY[0x277CD0E48];
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E48], 0}];
  v28[19] = v10;
  v27[20] = *MEMORY[0x277CCE8F8];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{v9, 0}];
  v28[20] = v11;
  v27[21] = *MEMORY[0x277CCE920];
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F20], 0}];
  v28[21] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:22];
  v14 = qword_280E037D8;
  qword_280E037D8 = v13;
}

void __69__HMAccessoryCategory_HFAdditions__hf_standardAccessoryCategoryTypes__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCE8C8], *MEMORY[0x277CCE8E8], *MEMORY[0x277CCE888], *MEMORY[0x277CCE890], *MEMORY[0x277CCE898], *MEMORY[0x277CCE8A8], *MEMORY[0x277CCE8C0], *MEMORY[0x277CCE8D0], *MEMORY[0x277CCE8D8], *MEMORY[0x277CCE8F0], *MEMORY[0x277CCE910], *MEMORY[0x277CCE940], *MEMORY[0x277CCE958], *MEMORY[0x277CCE960], *MEMORY[0x277CCE868], *MEMORY[0x277CCE850], *MEMORY[0x277CCE858], *MEMORY[0x277CCE848], *MEMORY[0x277CCE908], *MEMORY[0x277CCE8A0], *MEMORY[0x277CCE8F8], *MEMORY[0x277CCE920], 0}];
  v1 = qword_280E037E8;
  qword_280E037E8 = v0;
}

@end