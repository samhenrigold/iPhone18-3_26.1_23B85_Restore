@interface HDUserDomainConceptDiagnosticOperation
- (BOOL)_enumerateUDCTableInDatabase:(id)database appendToFormatter:(id)formatter error:(id *)error;
- (void)_logAndAndAppendFormat:(id)format;
- (void)_reportCountsForUDCTableRowsInDatabase:(id)database;
- (void)_reportUDCTableInDatabase:(id)database;
- (void)_reportUserDomainConcepts;
- (void)_reportUserDomainConceptsForDatabase:(id)database;
@end

@implementation HDUserDomainConceptDiagnosticOperation

- (void)_reportUserDomainConcepts
{
  healthDirectoryURL = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v3 = [healthDirectoryURL URLByAppendingPathComponent:@"healthdb_secure.sqlite" isDirectory:0];
  v4 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v3];
  if (v4)
  {
    [(HDUserDomainConceptDiagnosticOperation *)self _reportUserDomainConceptsForDatabase:v4];
  }

  else
  {
    path = [v3 path];
    [(HDDiagnosticOperation *)self appendFormat:@"Unable to open %@ \n", path];
  }

  [v4 close];
}

- (void)_reportUserDomainConceptsForDatabase:(id)database
{
  databaseCopy = database;
  [(HDUserDomainConceptDiagnosticOperation *)self _reportCountsForUDCTableRowsInDatabase:databaseCopy];
  [(HDUserDomainConceptDiagnosticOperation *)self _reportUDCTableInDatabase:databaseCopy];
}

- (void)_reportCountsForUDCTableRowsInDatabase:(id)database
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  [(HDDiagnosticOperation *)self appendString:@"User Domains Concept Table Counts"];
  [(HDDiagnosticOperation *)self appendNewline];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:13];
  [(HDDiagnosticOperation *)self reportCountsForDatabase:databaseCopy entityClasses:v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  [(HDDiagnosticOperation *)self appendNewline];
}

- (void)_reportUDCTableInDatabase:(id)database
{
  databaseCopy = database;
  [(HDDiagnosticOperation *)self appendString:@"User Domains Concepts"];
  [(HDDiagnosticOperation *)self appendSeparator];
  v5 = objc_alloc(MEMORY[0x277CCDA90]);
  v6 = +[HDUserDomainConceptDiagnosticOperation _udcTableColumnTitles];
  v7 = [v5 initWithColumnTitles:v6];

  v11 = 0;
  LOBYTE(v6) = [(HDUserDomainConceptDiagnosticOperation *)self _enumerateUDCTableInDatabase:databaseCopy appendToFormatter:v7 error:&v11];

  v8 = v11;
  v9 = v8;
  if (v6)
  {
    formattedTable = [v7 formattedTable];
    [(HDDiagnosticOperation *)self appendString:formattedTable];

    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendStrongSeparator];
    [(HDDiagnosticOperation *)self appendNewline];
  }

  else
  {
    [(HDUserDomainConceptDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to enumerate UDC table rows: %@", v8];
  }
}

- (BOOL)_enumerateUDCTableInDatabase:(id)database appendToFormatter:(id)formatter error:(id *)error
{
  formatterCopy = formatter;
  v8 = MEMORY[0x277CCACA8];
  databaseCopy = database;
  v10 = [v8 stringWithFormat:@"SELECT * FROM user_domain_concepts ORDER BY udc_id LIMIT 500"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__HDUserDomainConceptDiagnosticOperation__enumerateUDCTableInDatabase_appendToFormatter_error___block_invoke;
  v13[3] = &unk_2796C0D00;
  v14 = formatterCopy;
  v11 = formatterCopy;
  LOBYTE(error) = [databaseCopy executeSQL:v10 error:error bindingHandler:0 enumerationHandler:v13];

  return error;
}

uint64_t __95__HDUserDomainConceptDiagnosticOperation__enumerateUDCTableInDatabase_appendToFormatter_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v35[14] = *MEMORY[0x277D85DE8];
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = HDSQLiteColumnWithNameAsDate();
  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v32 = [v33 stringValue];
  v35[0] = v32;
  v31 = HDSQLiteColumnWithNameAsUUID();
  v30 = [v31 UUIDString];
  v35[1] = v30;
  v4 = HDSQLiteColumnWithNameAsString();
  v29 = v4;
  v5 = &stru_2863876A0;
  if (v4)
  {
    v5 = v4;
  }

  v35[2] = v5;
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v26 = [v27 stringValue];
  v35[3] = v26;
  HDSQLiteColumnWithNameAsBoolean();
  v24 = HKStringFromBool();
  v35[4] = v24;
  v28 = v2;
  v23 = HKDiagnosticStringFromDate();
  v35[5] = v23;
  v6 = MEMORY[0x277CCABB0];
  [v2 timeIntervalSinceReferenceDate];
  v22 = [v6 numberWithDouble:?];
  v21 = [v22 stringValue];
  v35[6] = v21;
  v25 = v3;
  v20 = HKDiagnosticStringFromDate();
  v35[7] = v20;
  v7 = MEMORY[0x277CCABB0];
  [v3 timeIntervalSinceReferenceDate];
  v19 = [v7 numberWithDouble:?];
  v8 = [v19 stringValue];
  v35[8] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v10 = [v9 stringValue];
  v35[9] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = [v11 stringValue];
  v35[10] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v14 = [v13 stringValue];
  v35[11] = v14;
  v15 = HDSQLiteColumnWithNameAsString();
  v35[12] = v15;
  HDSQLiteColumnWithNameIsNull();
  v16 = HKStringFromBool();
  v35[13] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:14];

  [*(a1 + 32) appendRow:v17];
  return 1;
}

- (void)_logAndAndAppendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(HDDiagnosticOperation *)self log:@"%@", v6];
  [(HDDiagnosticOperation *)self appendFormat:@"%@", v6];
}

@end