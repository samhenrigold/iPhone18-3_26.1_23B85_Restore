@interface CNPropertyNameForResult
@end

@implementation CNPropertyNameForResult

void ___CNPropertyNameForResult_block_invoke()
{
  v12[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBD980];
  v1 = *MEMORY[0x277D04050];
  v11[0] = *MEMORY[0x277D04180];
  v11[1] = v1;
  v2 = *MEMORY[0x277CBD948];
  v12[0] = v0;
  v12[1] = v2;
  v3 = *MEMORY[0x277CBD968];
  v4 = *MEMORY[0x277D04178];
  v11[2] = *MEMORY[0x277D041D0];
  v11[3] = v4;
  v5 = *MEMORY[0x277CBD978];
  v12[2] = v3;
  v12[3] = v5;
  v6 = *MEMORY[0x277CBD950];
  v7 = *MEMORY[0x277D04068];
  v11[4] = *MEMORY[0x277D04098];
  v11[5] = v7;
  v12[4] = v6;
  v12[5] = &stru_282C1E0A8;
  v8 = *MEMORY[0x277D04150];
  v11[6] = *MEMORY[0x277D04058];
  v11[7] = v8;
  v12[6] = &stru_282C1E0A8;
  v12[7] = &stru_282C1E0A8;
  v11[8] = *MEMORY[0x277D04128];
  v12[8] = &stru_282C1E0A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v10 = _MergedGlobals_7;
  _MergedGlobals_7 = v9;
}

@end