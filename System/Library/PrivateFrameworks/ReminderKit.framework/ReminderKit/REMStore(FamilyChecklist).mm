@interface REMStore(FamilyChecklist)
@end

@implementation REMStore(FamilyChecklist)

- (void)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:()FamilyChecklist error:.cold.1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error fetching eligibility for shared grocery list: %@", v2, v3, v4, v5);
}

- (void)sharedGroceryListForFamilyChecklistWithCommonParticipants:()FamilyChecklist error:.cold.1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error fetching existing shared grocery lists: %@", v2, v3, v4, v5);
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error fetching primary active cloudKit account for creating shared grocery list: %@", v2, v3, v4, v5);
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.2()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error saving created shared grocery list: %@", v2, v3, v4, v5);
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.3()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error creating CKShare for shared grocery list: %@", v2, v3, v4, v5);
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.4()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error creating itemProvider for shared grocery list: %@", v2, v3, v4, v5);
}

- (void)deleteSharedGroceryList:()FamilyChecklist error:.cold.1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error fetching shared grocery list for deletion: %@", v2, v3, v4, v5);
}

- (void)deleteSharedGroceryList:()FamilyChecklist error:.cold.3()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error saving deletion of shared grocery list: %@", v2, v3, v4, v5);
}

@end