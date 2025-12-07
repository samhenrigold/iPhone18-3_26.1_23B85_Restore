@interface HDSyncAnchorEntity
@end

@implementation HDSyncAnchorEntity

void __117__HDSyncAnchorEntity_HealthDiagnosticExtension__hde_reportSyncAnchorsForSyncProvenance_diagnosticOperation_database___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32[7] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (a6 | a5 | a7 | a8 | a10)
  {
    v31 = [MEMORY[0x277D108D8] identifierWithSchema:a3 entity:a4];
    v26 = *(a1 + 32);
    v30 = [v31 description];
    v32[0] = v30;
    v29 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v28 = [v29 stringValue];
    v32[1] = v28;
    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v16 = [v27 stringValue];
    v32[2] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
    v18 = [v17 stringValue];
    v32[3] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:a7];
    v20 = [v19 stringValue];
    v32[4] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:a8];
    v22 = [v21 stringValue];
    v32[5] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:a10];
    v24 = [v23 stringValue];
    v32[6] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:7];
    [v26 appendRow:v25];
  }
}

@end