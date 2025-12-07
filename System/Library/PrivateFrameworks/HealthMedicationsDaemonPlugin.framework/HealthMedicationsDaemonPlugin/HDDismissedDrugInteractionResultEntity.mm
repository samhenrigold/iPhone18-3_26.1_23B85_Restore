@interface HDDismissedDrugInteractionResultEntity
+ (BOOL)_insertDismissedDrugInteractionResult:(void *)result transaction:(uint64_t)transaction error:;
+ (BOOL)enumerateDismissedDrugInteractionResultsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertDismissedDrugInteractionResult:(id)result profile:(id)profile error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)uniquedColumns;
@end

@implementation HDDismissedDrugInteractionResultEntity

+ (id)uniquedColumns
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"interaction_identifier";
  v4[1] = @"first_drug_class_identifier";
  v4[2] = @"first_drug_class_ancestor_identifier";
  v4[3] = @"second_drug_class_identifier";
  v4[4] = @"second_drug_class_ancestor_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (BOOL)enumerateDismissedDrugInteractionResultsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v14 = +[(HDDismissedDrugInteractionResultEntity *)self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __133__HDDismissedDrugInteractionResultEntity_enumerateDismissedDrugInteractionResultsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_2796CDFB0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  LOBYTE(error) = [v13 enumerateProperties:v14 error:error enumerationHandler:v17];

  return error;
}

+ (id)_propertiesForEntity
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"interaction_identifier";
  v3[1] = @"first_drug_class_identifier";
  v3[2] = @"first_drug_class_ancestor_identifier";
  v3[3] = @"second_drug_class_identifier";
  v3[4] = @"second_drug_class_ancestor_identifier";
  v3[5] = @"creation_date";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];

  return v1;
}

uint64_t __133__HDDismissedDrugInteractionResultEntity_enumerateDismissedDrugInteractionResultsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v5 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v6 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v7 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v8 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = [objc_alloc(MEMORY[0x277D114F0]) _initWithInteractionIdentifier:v4 firstDrugClassIdentifier:v5 firstDrugClassAncestorIdentifier:v6 secondDrugClassIdentifier:v7 secondDrugClassAncestorIdentifier:v8 creationDate:v9];
  v11 = (*(*(a1 + 32) + 16))();

  return v11;
}

+ (BOOL)insertDismissedDrugInteractionResult:(id)result profile:(id)profile error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  resultCopy = result;
  v9 = [HDDismissedDrugInteractionResultInsertOperation alloc];
  v13[0] = resultCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = [(HDDismissedDrugInteractionResultInsertOperation *)v9 initWithDismissedDrugInteractionResults:v10];
  LOBYTE(error) = [(HDJournalableOperation *)v11 performOrJournalWithProfile:profileCopy error:error];

  return error;
}

+ (BOOL)_insertDismissedDrugInteractionResult:(void *)result transaction:(uint64_t)transaction error:
{
  v6 = a2;
  resultCopy = result;
  v8 = objc_opt_self();
  v9 = [resultCopy databaseForEntityClass:v8];

  v10 = +[(HDDismissedDrugInteractionResultEntity *)v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HDDismissedDrugInteractionResultEntity__insertDismissedDrugInteractionResult_transaction_error___block_invoke;
  v15[3] = &unk_2796CDFD8;
  v16 = v6;
  v11 = v6;
  v12 = [v8 insertOrReplaceEntity:1 database:v9 properties:v10 error:transaction bindingHandler:v15];
  v13 = v12 != 0;

  return v13;
}

void __98__HDDismissedDrugInteractionResultEntity__insertDismissedDrugInteractionResult_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) interactionIdentifier];
  MEMORY[0x2530843E0](a2, @"interaction_identifier", [v4 rawIdentifier]);

  v5 = [*(a1 + 32) firstDrugClassIdentifier];
  MEMORY[0x2530843E0](a2, @"first_drug_class_identifier", [v5 rawIdentifier]);

  v6 = [*(a1 + 32) firstDrugClassAncestorIdentifier];
  MEMORY[0x2530843E0](a2, @"first_drug_class_ancestor_identifier", [v6 rawIdentifier]);

  v7 = [*(a1 + 32) secondDrugClassIdentifier];
  MEMORY[0x2530843E0](a2, @"second_drug_class_identifier", [v7 rawIdentifier]);

  v8 = [*(a1 + 32) secondDrugClassAncestorIdentifier];
  MEMORY[0x2530843E0](a2, @"second_drug_class_ancestor_identifier", [v8 rawIdentifier]);

  v9 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x2530843B0](a2, @"creation_date", v9);
}

@end