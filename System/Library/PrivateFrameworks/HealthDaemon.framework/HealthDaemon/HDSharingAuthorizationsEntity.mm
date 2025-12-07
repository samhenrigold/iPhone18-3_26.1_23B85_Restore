@interface HDSharingAuthorizationsEntity
+ (BOOL)addSharingAuthorizations:(id)authorizations forRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (BOOL)deleteAllMarkedSharingAuthorizationsWithTransaction:(id)transaction error:(id *)error;
+ (BOOL)insertOrReplaceWithRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations databaseTransaction:(id)transaction error:(id *)error;
+ (BOOL)markSharingAuthorizationsForDeletion:(id)deletion recipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (id)_predicateForSharingAuthorizations:(uint64_t)authorizations;
+ (id)recipientIdentifiersForSharingAuthorization:(id)authorization databaseTransaction:(id)transaction error:(id *)error;
+ (id)sharingAuthorizationsForRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction includeMarkedForDeletion:(BOOL)deletion error:(id *)error;
+ (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
+ (uint64_t)_deleteSharingAuthorizations:(void *)authorizations recipientIdentifier:(void *)identifier databaseTransaction:(uint64_t)transaction error:;
+ (void)_sharingAuthorizationsForRecipientIdentifier:(uint64_t)identifier databaseTransaction:(void *)transaction predicate:(void *)predicate error:(uint64_t)error;
@end

@implementation HDSharingAuthorizationsEntity

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"recipient";
  v4[1] = @"authorization_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (BOOL)insertOrReplaceWithRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations databaseTransaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  authorizationsCopy = authorizations;
  transactionCopy = transaction;
  v26 = 0;
  v13 = [self sharingAuthorizationsForRecipientIdentifier:identifierCopy databaseTransaction:transactionCopy error:&v26];
  v14 = v26;
  v15 = v14;
  if (!v13)
  {
    v15 = v14;
    if (v15)
    {
      if (error)
      {
        v20 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_18;
  }

  if ([v13 count])
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __120__HDSharingAuthorizationsEntity_insertOrReplaceWithRecipientIdentifier_sharingAuthorizations_databaseTransaction_error___block_invoke;
    v24[3] = &unk_278613BA8;
    v25 = authorizationsCopy;
    v16 = [v13 hk_filter:v24];
    if (![v16 count])
    {
LABEL_6:

      goto LABEL_7;
    }

    v23 = v15;
    v17 = [self deleteSharingAuthorizations:v16 recipientIdentifier:identifierCopy databaseTransaction:transactionCopy error:&v23];
    v18 = v23;

    if (v17)
    {
      v15 = v18;
      goto LABEL_6;
    }

    v15 = v18;
    if (v15)
    {
      if (error)
      {
        v21 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

LABEL_7:
  v19 = [self addSharingAuthorizations:authorizationsCopy forRecipientIdentifier:identifierCopy databaseTransaction:transactionCopy error:error];
LABEL_19:

  return v19;
}

+ (BOOL)addSharingAuthorizations:(id)authorizations forRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  authorizationsCopy = authorizations;
  identifierCopy = identifier;
  v13 = [transaction databaseForEntityClass:self];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = authorizationsCopy;
  v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    while (2)
    {
      v6 = 0;
      v18 = v16;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v30 + 1) + 8 * v6);
        v29 = v18;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __107__HDSharingAuthorizationsEntity_addSharingAuthorizations_forRecipientIdentifier_databaseTransaction_error___block_invoke;
        v26[3] = &unk_278613038;
        v27 = identifierCopy;
        v28 = v19;
        v20 = [v13 executeSQL:@"INSERT OR IGNORE INTO sharing_authorizations (recipient error:authorization_identifier bindingHandler:display_name enumerationHandler:{display_subtitle) VALUES (?, ?, ?, ?)", &v29, v26, 0}];
        v16 = v29;

        if ((v20 & 1) == 0)
        {
          v21 = v16;
          v22 = v21;
          LOBYTE(v6) = v21 == 0;
          if (v21)
          {
            if (error)
            {
              v23 = v21;
              *error = v22;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_16;
        }

        ++v6;
        v18 = v16;
      }

      while (v15 != v6);
      v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

LABEL_16:
  }

  else
  {
    v20 = 1;
  }

  return (v6 | v20) & 1;
}

void __107__HDSharingAuthorizationsEntity_addSharingAuthorizations_forRecipientIdentifier_databaseTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = HDStringRepresentationForRecipientIdentifier();
  HDSQLiteBindStringToStatement();

  v5 = [*(a1 + 40) authorizationIdentifier];
  HDSQLiteBindStringToStatement();

  v6 = [*(a1 + 40) displayName];

  if (v6)
  {
    v7 = [*(a1 + 40) displayName];
    HDSQLiteBindStringToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v8 = [*(a1 + 40) displaySubtitle];

  if (v8)
  {
    v9 = [*(a1 + 40) displaySubtitle];
    HDSQLiteBindStringToStatement();
  }

  else
  {

    sqlite3_bind_null(a2, 4);
  }
}

+ (id)sharingAuthorizationsForRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction includeMarkedForDeletion:(BOOL)deletion error:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  transactionCopy = transaction;
  v12 = MEMORY[0x277D10B18];
  v13 = HDStringRepresentationForRecipientIdentifier();
  v14 = [v12 predicateWithProperty:@"recipient" equalToValue:v13];

  if (!deletion)
  {
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC28]];
    v16 = MEMORY[0x277D10B20];
    v21[0] = v14;
    v21[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v18 = [v16 predicateMatchingAllPredicates:v17];

    v14 = v18;
  }

  v19 = [HDSharingAuthorizationsEntity _sharingAuthorizationsForRecipientIdentifier:self databaseTransaction:transactionCopy predicate:v14 error:error];

  return v19;
}

+ (void)_sharingAuthorizationsForRecipientIdentifier:(uint64_t)identifier databaseTransaction:(void *)transaction predicate:(void *)predicate error:(uint64_t)error
{
  v19[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  transactionCopy = transaction;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [transactionCopy databaseForEntityClass:v8];

  v11 = [v8 queryWithDatabase:v10 predicate:predicateCopy];

  v19[0] = @"authorization_identifier";
  v19[1] = @"display_name";
  v19[2] = @"display_subtitle";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __114__HDSharingAuthorizationsEntity__sharingAuthorizationsForRecipientIdentifier_databaseTransaction_predicate_error___block_invoke;
  v17[3] = &unk_27861E4C0;
  v18 = v9;
  v13 = v9;
  if ([v11 enumerateProperties:v12 error:error enumerationHandler:v17])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  identifierCopy = identifier;
  v11 = HDStringRepresentationForRecipientIdentifier();
  v12 = [v8 predicateWithProperty:@"recipient" equalToValue:v11];

  v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC38]];
  v14 = MEMORY[0x277D10B20];
  v19[0] = v12;
  v19[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v16 = [v14 predicateMatchingAllPredicates:v15];

  v17 = [HDSharingAuthorizationsEntity _sharingAuthorizationsForRecipientIdentifier:self databaseTransaction:transactionCopy predicate:v16 error:error];

  return v17;
}

+ (id)recipientIdentifiersForSharingAuthorization:(id)authorization databaseTransaction:(id)transaction error:(id *)error
{
  v32[2] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v9 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v11 = objc_alloc_init(v9);
  v12 = MEMORY[0x277D10B18];
  authorizationIdentifier = [authorizationCopy authorizationIdentifier];
  v14 = [v12 predicateWithProperty:@"authorization_identifier" equalToValue:authorizationIdentifier];

  displayName = [authorizationCopy displayName];

  if (displayName)
  {
    v16 = MEMORY[0x277D10B18];
    displayName2 = [authorizationCopy displayName];
    v18 = [v16 predicateWithProperty:@"display_name" equalToValue:displayName2];
  }

  else
  {
    v18 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"display_name"];
  }

  v19 = MEMORY[0x277D10B20];
  v32[0] = v14;
  v32[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v21 = [v19 predicateMatchingAllPredicates:v20];

  v22 = [transactionCopy databaseForEntityClass:self];

  v23 = [self queryWithDatabase:v22 predicate:v21];

  v31 = @"recipient";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__HDSharingAuthorizationsEntity_recipientIdentifiersForSharingAuthorization_databaseTransaction_error___block_invoke;
  v29[3] = &unk_27861E4C0;
  v30 = v11;
  v25 = v11;
  if ([v23 enumerateProperties:v24 error:error enumerationHandler:v29])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

uint64_t __103__HDSharingAuthorizationsEntity_recipientIdentifiersForSharingAuthorization_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsString();
  if (v4)
  {
    v5 = [MEMORY[0x277CCD988] sharingRecipientIdentifierFromStringRepresentation:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  return 1;
}

+ (uint64_t)_deleteSharingAuthorizations:(void *)authorizations recipientIdentifier:(void *)identifier databaseTransaction:(uint64_t)transaction error:
{
  v8 = a2;
  identifierCopy = identifier;
  authorizationsCopy = authorizations;
  v11 = objc_opt_self();
  v12 = [identifierCopy databaseForEntityClass:v11];

  v13 = MEMORY[0x277D10B18];
  v14 = HDStringRepresentationForRecipientIdentifier();

  v15 = [v13 predicateWithProperty:@"recipient" equalToValue:v14];

  if (v8)
  {
    v16 = [(HDSharingAuthorizationsEntity *)v11 _predicateForSharingAuthorizations:v8];
    if (!v16)
    {
      v19 = 1;
      goto LABEL_6;
    }

    v17 = v16;
    v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:v16];

    v15 = v18;
  }

  v19 = [v11 deleteEntitiesInDatabase:v12 predicate:v15 error:transaction];
LABEL_6:

  return v19;
}

+ (BOOL)markSharingAuthorizationsForDeletion:(id)deletion recipientIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deletionCopy = deletion;
  v12 = [transaction databaseForEntityClass:self];
  v13 = MEMORY[0x277D10B18];
  v14 = HDStringRepresentationForRecipientIdentifier();

  v15 = [v13 predicateWithProperty:@"recipient" equalToValue:v14];

  v16 = [(HDSharingAuthorizationsEntity *)self _predicateForSharingAuthorizations:deletionCopy];

  if (v16)
  {
    v17 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:v16];
    v21[0] = @"delete_on_commit";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19 = [self updateProperties:v18 predicate:v17 database:v12 error:error bindingHandler:&__block_literal_global_193];
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

+ (id)_predicateForSharingAuthorizations:(uint64_t)authorizations
{
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [v2 hk_map:&__block_literal_global_339];
    v4 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)deleteAllMarkedSharingAuthorizationsWithTransaction:(id)transaction error:(id *)error
{
  v6 = [transaction databaseForEntityClass:self];
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"delete_on_commit" equalToValue:MEMORY[0x277CBEC38]];
  LOBYTE(error) = [self deleteEntitiesInDatabase:v6 predicate:v7 error:error];

  return error;
}

id __68__HDSharingAuthorizationsEntity__predicateForSharingAuthorizations___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [a2 authorizationIdentifier];
  v4 = [v2 predicateWithProperty:@"authorization_identifier" equalToValue:v3];

  return v4;
}

uint64_t __114__HDSharingAuthorizationsEntity__sharingAuthorizationsForRecipientIdentifier_databaseTransaction_predicate_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsNonEmptyString();
  v6 = HDSQLiteColumnWithNameAsNonEmptyString();
  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CCD960]) initWithAuthorizationIdentifier:v4 displayName:v5 displaySubtitle:v6];
    [*(a1 + 32) addObject:v7];
  }

  return 1;
}

@end