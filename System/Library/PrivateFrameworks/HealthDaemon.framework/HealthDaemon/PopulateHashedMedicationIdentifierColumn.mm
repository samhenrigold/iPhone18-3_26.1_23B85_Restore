@interface PopulateHashedMedicationIdentifierColumn
@end

@implementation PopulateHashedMedicationIdentifierColumn

void ___PopulateHashedMedicationIdentifierColumn_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCD660]) initWithSemanticIdentifierString:*(a1 + 32)];
  v2 = [v3 underlyingIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();
}

@end