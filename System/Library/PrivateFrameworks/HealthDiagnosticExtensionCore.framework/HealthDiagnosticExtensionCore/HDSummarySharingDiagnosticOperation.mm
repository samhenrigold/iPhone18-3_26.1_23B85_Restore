@interface HDSummarySharingDiagnosticOperation
- (void)_reportDiagnosticsForProfileIdentifier:(id)identifier;
- (void)_reportHeaderWithProfileIdentifiers:(id)identifiers;
- (void)_reportInvitationsForPrimaryProfile;
- (void)_reportProfileInformationForProfileIdentifier:(id)identifier;
- (void)_reportSharedSummariesForProfileIdentifier:(id)identifier committedTransactions:(BOOL)transactions;
- (void)run;
@end

@implementation HDSummarySharingDiagnosticOperation

- (void)run
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [objc_alloc(MEMORY[0x277CCD7D0]) initWithHealthStore:v3];
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__HDSummarySharingDiagnosticOperation_run__block_invoke;
  v16[3] = &unk_2796C0D98;
  v16[4] = self;
  v18 = &v19;
  v6 = v5;
  v17 = v6;
  [v4 fetchAllProfilesWithCompletion:v16];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch profiles"];
  }

  [(HDSummarySharingDiagnosticOperation *)self _reportHeaderWithProfileIdentifiers:v20[5]];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = v20[5];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v25 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(HDSummarySharingDiagnosticOperation *)self _reportDiagnosticsForProfileIdentifier:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v25 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v19, 8);
}

void __42__HDSummarySharingDiagnosticOperation_run__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    [*(a1 + 32) appendFormat:@"Error listing profiles: %@", a3];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reportHeaderWithProfileIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  [(HDDiagnosticOperation *)self appendString:@"Active invitations:"];
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCDA78]) initWithHealthStore:v6];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__HDSummarySharingDiagnosticOperation__reportHeaderWithProfileIdentifiers___block_invoke;
  v23[3] = &unk_2796C0DC0;
  v8 = v7;
  v24 = v8;
  selfCopy = self;
  v9 = v5;
  v26 = v9;
  [v8 fetchSharingEntriesWithCompletion:v23];
  v10 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch active invitations"];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendString:@"Summary Sharing profiles:"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (!v12)
  {

LABEL_15:
    [(HDDiagnosticOperation *)self appendString:@"No Summary Sharing profiles"];
    goto LABEL_16;
  }

  v13 = v12;
  v18 = v6;
  v14 = 0;
  v15 = *v20;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v19 + 1) + 8 * i);
      if ([v17 type] == 2)
      {
        [(HDDiagnosticOperation *)self appendFormat:@"%@", v17];
        v14 = 1;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  }

  while (v13);

  v6 = v18;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
}

intptr_t __75__HDSummarySharingDiagnosticOperation__reportHeaderWithProfileIdentifiers___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    [*(a1 + 40) appendFormat:@"Error fetching active invitations: %@", a3];
    return dispatch_semaphore_signal(*(a1 + 48));
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) sharingEntries];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {

LABEL_17:
    [*(a1 + 40) appendString:@"There are no active summary sharing invitations"];
    return dispatch_semaphore_signal(*(a1 + 48));
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      if (![v10 type] && (!objc_msgSend(v10, "status") || objc_msgSend(v10, "status") == 1))
      {
        v11 = *(a1 + 40);
        v12 = _HKSummarySharingEntryToDiagnosticsString(v10);
        [v11 appendString:v12];

        v7 = 1;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);

  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_reportDiagnosticsForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendString:@"    ****"];
  [(HDDiagnosticOperation *)self appendFormat:@"    **** %@", identifierCopy];
  [(HDDiagnosticOperation *)self appendString:@"    ****"];
  [(HDDiagnosticOperation *)self appendNewline];
  if ([identifierCopy type] == 1)
  {
    [(HDDiagnosticOperation *)self appendSeparator];
    [(HDSummarySharingDiagnosticOperation *)self _reportInvitationsForPrimaryProfile];
  }

  else
  {
    [(HDSummarySharingDiagnosticOperation *)self _reportProfileInformationForProfileIdentifier:identifierCopy];
  }

  [(HDDiagnosticOperation *)self appendSeparator];
  [(HDSummarySharingDiagnosticOperation *)self _reportSharedSummariesForProfileIdentifier:identifierCopy committedTransactions:1];
  [(HDSummarySharingDiagnosticOperation *)self _reportSharedSummariesForProfileIdentifier:identifierCopy committedTransactions:0];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
}

- (void)_reportProfileInformationForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCD7D0]) initWithHealthStore:v6];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __85__HDSummarySharingDiagnosticOperation__reportProfileInformationForProfileIdentifier___block_invoke;
  v13 = &unk_2796C0DE8;
  selfCopy = self;
  v8 = v5;
  v15 = v8;
  [v7 fetchSharingInformationForProfileIdentifier:identifierCopy completion:&v10];

  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch profile sharing information", v10, v11, v12, v13, selfCopy];
  }
}

void __85__HDSummarySharingDiagnosticOperation__reportProfileInformationForProfileIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    [*(a1 + 32) appendFormat:@"Creation date: %@", v10];
  }

  if (v7)
  {
    v9 = @"Owner participant set";
LABEL_5:
    [*(a1 + 32) appendString:v9];
    goto LABEL_7;
  }

  if (!v8)
  {
    v9 = @"Owner participant not set";
    goto LABEL_5;
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reportInvitationsForPrimaryProfile
{
  v54 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Sharing Invitations:"];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2810000000;
  v49[3] = &unk_2515ECA67;
  v50 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCDA78]) initWithHealthStore:v6];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke;
  v41[3] = &unk_2796C0E38;
  v42 = v7;
  v22 = v6;
  v43 = v22;
  v8 = v5;
  v44 = v8;
  v48 = v49;
  v24 = v3;
  v45 = v24;
  selfCopy = self;
  v26 = v4;
  v47 = v26;
  v23 = v42;
  [v42 fetchSharingEntriesWithCompletion:v41];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v8, v9))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect invitations"];
  }

  if ([v24 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v24;
    v10 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v10)
    {
      v25 = *v38;
      do
      {
        v27 = v10;
        for (i = 0; i != v27; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = _HKSummarySharingEntryToDiagnosticsString(v12);
          [(HDDiagnosticOperation *)self appendString:v13];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = [obj objectForKeyedSubscript:v12];
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v52 count:16];
          if (v15)
          {
            v16 = *v34;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                [(HDDiagnosticOperation *)self appendFormat:@"  %@", *(*(&v33 + 1) + 8 * j), v22];
              }

              v15 = [v14 countByEnumeratingWithState:&v33 objects:v52 count:16];
            }

            while (v15);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = [v26 objectForKeyedSubscript:v12];
          v19 = [v18 countByEnumeratingWithState:&v29 objects:v51 count:16];
          if (v19)
          {
            v20 = *v30;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [(HDDiagnosticOperation *)self appendFormat:@"  %@ (delete on commit)", *(*(&v29 + 1) + 8 * k)];
              }

              v19 = [v18 countByEnumeratingWithState:&v29 objects:v51 count:16];
            }

            while (v19);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(HDDiagnosticOperation *)self appendString:@"There are no shared summary invitations in profile"];
  }

  [(HDDiagnosticOperation *)self appendNewline];

  _Block_object_dispose(v49, 8);
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [*(a1 + 32) sharingEntries];
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          if (![v9 type])
          {
            v10 = objc_alloc(MEMORY[0x277CCD988]);
            v11 = [v9 UUID];
            v12 = [v10 initForInvitationUUID:v11];

            v13 = [objc_alloc(MEMORY[0x277CCD978]) initWithHealthStore:*(a1 + 40) recipientIdentifier:v12];
            dispatch_group_enter(*(a1 + 48));
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_2;
            v21[3] = &unk_2796C0E10;
            v26 = *(a1 + 80);
            v22 = *(a1 + 56);
            v23 = v9;
            v24 = *(a1 + 64);
            v25 = *(a1 + 48);
            [v13 fetchSharingAuthorizationsWithCompletion:v21];
            dispatch_group_enter(*(a1 + 48));
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_3;
            v15[3] = &unk_2796C0E10;
            v14 = *(a1 + 72);
            v20 = *(a1 + 80);
            v16 = v14;
            v17 = v9;
            v18 = *(a1 + 64);
            v19 = *(a1 + 48);
            [v13 fetchSharingAuthorizationsMarkedForDeletionWithCompletion:v15];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [*(a1 + 64) appendFormat:@"Error fetching sharing entries for primary profile: %@", a3];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) UUID];
    v8 = [v7 UUIDString];
    [v6 appendFormat:@"Error fetching authorizations for sharing entry %@: %@", v8, v5];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) UUID];
    v8 = [v7 UUIDString];
    [v6 appendFormat:@"Error fetching authorizations marked for deletion for sharing entry %@: %@", v8, v5];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)_reportSharedSummariesForProfileIdentifier:(id)identifier committedTransactions:(BOOL)transactions
{
  transactionsCopy = transactions;
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = @"Uncommitted";
  v35 = transactionsCopy;
  if (transactionsCopy)
  {
    v7 = @"Committed";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Shared Summary %@ Transactions:", v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2810000000;
  v51[3] = &unk_2515ECA67;
  v52 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v10 setProfileIdentifier:identifierCopy];
  [v10 resume];
  v11 = @"uncommitted";
  if (transactionsCopy)
  {
    v11 = @"committed";
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277CCD958]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke;
  v44[3] = &unk_2796C0E88;
  v44[4] = self;
  v32 = v12;
  v45 = v32;
  v30 = identifierCopy;
  v46 = v30;
  group = v9;
  v47 = group;
  v50 = v51;
  v14 = v8;
  v48 = v14;
  v15 = v10;
  v49 = v15;
  v16 = [v13 initWithCommittedTransactions:v35 handler:v44];
  [v15 executeQuery:v16];
  v31 = v16;
  v17 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(group, v17))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect transaction list and summaries"];
  }

  if (![v14 count])
  {
    [(HDDiagnosticOperation *)self appendFormat:@"Found no %@ transactions", v32];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v19)
  {
    v34 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        if (v35)
        {
          metadata = [*(*(&v40 + 1) + 8 * i) metadata];
          v23 = [metadata objectForKeyedSubscript:@"HKSharedSummaryTransactionMetadataKeyDateCommitted"];

          v24 = [(HDDiagnosticOperation *)self stringFromDate:v23];
          [(HDDiagnosticOperation *)self appendFormat:@"%@ commit date=%@", v21, v24, v30, v31];
        }

        else
        {
          [(HDDiagnosticOperation *)self appendFormat:@"%@", v21];
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v25 = [v18 objectForKeyedSubscript:v21];
        v26 = [v25 countByEnumeratingWithState:&v36 objects:v53 count:16];
        v27 = v15;
        if (v26)
        {
          v28 = *v37;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v37 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [(HDDiagnosticOperation *)self appendFormat:@"  %@", *(*(&v36 + 1) + 8 * j)];
            }

            v26 = [v25 countByEnumeratingWithState:&v36 objects:v53 count:16];
          }

          while (v26);
        }

        v15 = v27;
      }

      v19 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v19);
  }

  [(HDDiagnosticOperation *)self appendNewline];
  _Block_object_dispose(v51, 8);
}

void __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [*(a1 + 32) appendFormat:@"Error querying for %@ transactions for profile %@: %@", *(a1 + 40), *(a1 + 48), v8];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        dispatch_group_enter(*(a1 + 56));
        v14 = objc_alloc(MEMORY[0x277CCD938]);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke_2;
        v18[3] = &unk_2796C0E60;
        v23 = *(a1 + 80);
        v19 = *(a1 + 64);
        v20 = v13;
        v21 = *(a1 + 32);
        v22 = *(a1 + 56);
        v15 = [v14 initWithTransaction:v13 package:0 resultsHandler:v18];
        [*(a1 + 72) executeQuery:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a3;
  v7 = a5;
  if (v11)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v11 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) UUID];
    v10 = [v9 UUIDString];
    [v8 appendFormat:@"Error querying summaries for transaction %@: %@", v10, v7];
  }

  dispatch_group_leave(*(a1 + 56));
}

@end