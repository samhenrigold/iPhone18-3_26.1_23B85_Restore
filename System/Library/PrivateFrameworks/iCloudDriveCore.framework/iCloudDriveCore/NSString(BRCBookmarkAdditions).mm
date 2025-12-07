@interface NSString(BRCBookmarkAdditions)
+ (id)bookmarkDataWithDocumentID:()BRCBookmarkAdditions serverZone:;
+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZone:;
+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneMangledID:saltAccountDSID:;
+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneName:ownerName:accountDSID:salted:;
+ (id)itemResolutionStringWithDocumentID:()BRCBookmarkAdditions;
+ (id)unsaltedBookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneMangledID:;
- (uint64_t)parseBookmarkDataWithAccountSession:()BRCBookmarkAdditions docID:itemID:mangledID:unsaltedBookmarkData:error:;
- (uint64_t)parseUnsaltedBookmarkDataWithItemID:()BRCBookmarkAdditions mangledID:error:;
@end

@implementation NSString(BRCBookmarkAdditions)

+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneMangledID:saltAccountDSID:
{
  v8 = a3;
  v9 = a5;
  v10 = [self unsaltedBookmarkDataWithItemResolutionString:v8 serverZoneMangledID:a4];
  if (v9)
  {
    v11 = [v8 brc_SHA1WithSalt:v9];
    v12 = [v10 stringByAppendingPathComponent:v11];
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NSString(BRCBookmarkAdditions) bookmarkDataWithItemResolutionString:v13 serverZoneMangledID:v14 saltAccountDSID:?];
    }

    v12 = v10;
  }

  return v12;
}

+ (id)unsaltedBookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneMangledID:
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  aliasTargetContainerString = [a4 aliasTargetContainerString];
  v8 = [v5 stringWithFormat:@"%@/%@", aliasTargetContainerString, v6];

  return v8;
}

+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZone:
{
  v6 = a4;
  v7 = a3;
  mangledID = [v6 mangledID];
  session = [v6 session];

  accountFacade = [session accountFacade];
  accountDSID = [accountFacade accountDSID];
  v12 = [self bookmarkDataWithItemResolutionString:v7 serverZoneMangledID:mangledID saltAccountDSID:accountDSID];

  return v12;
}

+ (id)itemResolutionStringWithDocumentID:()BRCBookmarkAdditions
{
  stringValue = [a3 stringValue];
  v4 = [@"docID:" stringByAppendingString:stringValue];

  return v4;
}

+ (id)bookmarkDataWithDocumentID:()BRCBookmarkAdditions serverZone:
{
  v6 = a4;
  v7 = [self itemResolutionStringWithDocumentID:a3];
  v8 = [self bookmarkDataWithItemResolutionString:v7 serverZone:v6];

  return v8;
}

- (uint64_t)parseUnsaltedBookmarkDataWithItemID:()BRCBookmarkAdditions mangledID:error:
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = [self componentsSeparatedByString:@"/"];
  if ([v9 count] == 2)
  {
    v10 = objc_alloc(MEMORY[0x277CFAE60]);
    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = [v10 initWithAliasTargetContainerString:v11];

    if (v12)
    {
      v13 = [BRCItemID alloc];
      v14 = [v9 objectAtIndexedSubscript:1];
      v15 = [(BRCItemID *)v13 initWithUUIDString:v14];

      if (v15)
      {
        if (a4)
        {
          objc_storeStrong(a4, v12);
        }

        if (a3)
        {
          objc_storeStrong(a3, v15);
        }

        v16 = 1;
        goto LABEL_27;
      }

      v23 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:self];
      if (v23)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, 0x90u))
        {
          v30 = "(passed to caller)";
          v31 = 136315906;
          v32 = "[NSString(BRCBookmarkAdditions) parseUnsaltedBookmarkDataWithItemID:mangledID:error:]";
          v33 = 2080;
          if (!a5)
          {
            v30 = "(ignored by caller)";
          }

          v34 = v30;
          v35 = 2112;
          v36 = v23;
          v37 = 2112;
          v38 = v24;
          _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", &v31, 0x2Au);
        }
      }

      if (a5)
      {
        v26 = v23;
        *a5 = v23;
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:self];
      if (v15)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          v29 = "(passed to caller)";
          v31 = 136315906;
          v32 = "[NSString(BRCBookmarkAdditions) parseUnsaltedBookmarkDataWithItemID:mangledID:error:]";
          v33 = 2080;
          if (!a5)
          {
            v29 = "(ignored by caller)";
          }

          v34 = v29;
          v35 = 2112;
          v36 = v15;
          v37 = 2112;
          v38 = v20;
          _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", &v31, 0x2Au);
        }
      }

      if (a5)
      {
        v22 = v15;
        v16 = 0;
        *a5 = v15;
LABEL_27:

        goto LABEL_28;
      }
    }

    v16 = 0;
    goto LABEL_27;
  }

  v12 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:self];
  if (v12)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v28 = "(passed to caller)";
      v31 = 136315906;
      v32 = "[NSString(BRCBookmarkAdditions) parseUnsaltedBookmarkDataWithItemID:mangledID:error:]";
      v33 = 2080;
      if (!a5)
      {
        v28 = "(ignored by caller)";
      }

      v34 = v28;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", &v31, 0x2Au);
    }
  }

  if (a5)
  {
    v19 = v12;
    v16 = 0;
    *a5 = v12;
  }

  else
  {
    v16 = 0;
  }

LABEL_28:

  return v16;
}

- (uint64_t)parseBookmarkDataWithAccountSession:()BRCBookmarkAdditions docID:itemID:mangledID:unsaltedBookmarkData:error:
{
  v74 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = [self componentsSeparatedByString:@"/"];
  if ([v15 count] == 3)
  {
    v63 = a4;
    v59 = a8;
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v15 objectAtIndexedSubscript:1];
    v60 = v15;
    [v15 objectAtIndexedSubscript:2];
    v19 = v18 = v14;
    v20 = v16;
    v21 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAliasTargetContainerString:v16];
    v64 = v18;
    accountFacade = [v18 accountFacade];
    accountDSID = [accountFacade accountDSID];

    v24 = v17;
    v62 = accountDSID;
    v25 = [v17 brc_SHA1WithSalt:accountDSID];
    v65 = v19;
    v61 = v25;
    if (([v19 isEqualToString:v25] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"BRGetFileNameFromServerInfoBlob") & 1) == 0)
    {
      v42 = v17;
      v43 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, 0x90u))
      {
        *buf = 138413058;
        v67 = v19;
        v68 = 2112;
        v69 = v25;
        v70 = 2112;
        selfCopy = self;
        v72 = 2112;
        v73 = v43;
        _os_log_error_impl(&dword_223E7A000, v44, 0x90u, "[ERROR] checksum from bookmark %@ is not equal to expected checksum %@ for %@%@", buf, 0x2Au);
      }

      v26 = v21;
      v27 = v20;
      if (v59)
      {
        [MEMORY[0x277CCA9B8] brc_errorAccountMismatch];
        *v59 = v40 = 0;
      }

      else
      {
        v40 = 0;
      }

      v24 = v42;
      goto LABEL_41;
    }

    v26 = v21;
    v27 = v20;
    if (!(v63 | a5))
    {
      goto LABEL_34;
    }

    v28 = [v17 componentsSeparatedByString:@":"];
    v58 = v17;
    if ([v28 count] == 2 && objc_msgSend(v17, "hasPrefix:", @"docID:"))
    {
      v29 = v59;
      if (a5)
      {
        v30 = *a5;
        *a5 = 0;
      }

      v31 = v63;
      if (!v63)
      {
        goto LABEL_29;
      }

      v32 = MEMORY[0x277CCABB0];
      dbRowID2 = [v28 objectAtIndexedSubscript:1];
      v34 = [v32 numberWithInteger:{objc_msgSend(dbRowID2, "integerValue")}];
      dbRowID = *v63;
      *v63 = v34;
    }

    else
    {
      v57 = v28;
      if ([v26 isShared])
      {
        v41 = [v64 sharedClientZoneByMangledID:v26];
        dbRowID = [v41 dbRowID];
        dbRowID2 = 0;
      }

      else
      {
        v41 = [v64 appLibraryByMangledID:v26];
        dbRowID2 = [v41 dbRowID];
        dbRowID = 0;
      }

      v31 = v63;

      if (a5)
      {
        v45 = [[BRCItemID alloc] initWithString:v58 libraryRowID:dbRowID2 sharedZoneRowID:dbRowID];
        v46 = *a5;
        *a5 = v45;
      }

      v28 = v57;
      if (v63)
      {
        v47 = *v63;
        *v63 = 0;
      }
    }

    v29 = v59;
LABEL_29:
    if (a5 && v31 && !*a5 && !*v31)
    {
      v51 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"bookmarkData" value:self];
      if (v51)
      {
        v52 = brc_bread_crumbs();
        v53 = brc_default_log();
        if (os_log_type_enabled(v53, 0x90u))
        {
          v56 = "(passed to caller)";
          *buf = 136315906;
          v67 = "[NSString(BRCBookmarkAdditions) parseBookmarkDataWithAccountSession:docID:itemID:mangledID:unsaltedBookmarkData:error:]";
          v68 = 2080;
          if (!v59)
          {
            v56 = "(ignored by caller)";
          }

          v69 = v56;
          v70 = 2112;
          selfCopy = v51;
          v72 = 2112;
          v73 = v52;
          _os_log_error_impl(&dword_223E7A000, v53, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        v29 = v59;
      }

      if (v29)
      {
        v54 = v51;
        *v29 = v51;
      }

      v40 = 0;
      v24 = v58;
      goto LABEL_41;
    }

    v24 = v58;
LABEL_34:
    if (a6)
    {
      objc_storeStrong(a6, v26);
    }

    if (a7)
    {
      v48 = [v27 stringByAppendingPathComponent:v24];
      v49 = *a7;
      *a7 = v48;
    }

    v40 = 1;
LABEL_41:

    v14 = v64;
    v15 = v60;
    goto LABEL_42;
  }

  v27 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"bookmarkData" value:self];
  if (v27)
  {
    v36 = a8;
    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, 0x90u))
    {
      v55 = "(passed to caller)";
      *buf = 136315906;
      v67 = "[NSString(BRCBookmarkAdditions) parseBookmarkDataWithAccountSession:docID:itemID:mangledID:unsaltedBookmarkData:error:]";
      v68 = 2080;
      if (!v36)
      {
        v55 = "(ignored by caller)";
      }

      v69 = v55;
      v70 = 2112;
      selfCopy = v27;
      v72 = 2112;
      v73 = v37;
      _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    a8 = v36;
  }

  if (a8)
  {
    v39 = v27;
    v40 = 0;
    *a8 = v27;
  }

  else
  {
    v40 = 0;
  }

LABEL_42:

  return v40;
}

+ (id)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneName:ownerName:accountDSID:salted:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@/%@", v12, v13, v11];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v12, v11, v20];
  }
  v15 = ;
  v16 = v15;
  if (a7)
  {
    v17 = [v11 brc_SHA1WithSalt:v14];
    v18 = [v16 stringByAppendingPathComponent:v17];
  }

  else
  {
    v18 = v15;
  }

  return v18;
}

+ (void)bookmarkDataWithItemResolutionString:()BRCBookmarkAdditions serverZoneMangledID:saltAccountDSID:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: should have an accountID to salt with%@", &v2, 0xCu);
}

@end