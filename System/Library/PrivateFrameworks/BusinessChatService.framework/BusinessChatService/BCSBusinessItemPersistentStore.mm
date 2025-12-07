@interface BCSBusinessItemPersistentStore
- (BCSPersistentBusinessItemObject)_executeFetchPersistentBusinessItemObjectSQLQuery:(void *)query;
- (BOOL)_executeDeleteBusinessItemSQLQuery:(void *)query;
- (BOOL)deleteBusinessItem:(id)item;
- (BOOL)deleteBusinessItemWithBizID:(id)d;
- (BOOL)deleteBusinessItemWithPhoneNumber:(id)number;
- (BOOL)insertOrReplaceBusinessItem:(id)item withTTL:(double)l;
- (BOOL)updateLastRetrievedDateForBusinessItem:(id)item;
- (BOOL)updateTTL:(double)l forBusinessItem:(id)item;
- (id)databasePath;
- (id)fetchPersistentBusinessItemObjectWithBizID:(id)d;
- (id)fetchPersistentBusinessItemObjectWithPhoneNumber:(id)number;
@end

@implementation BCSBusinessItemPersistentStore

- (id)databasePath
{
  if (self)
  {
    if (![_databasePath_databasePath_0 length])
    {
      v3 = +[BCSPathProvider sharedInstance];
      documentsURL = [v3 documentsURL];
      path = [documentsURL path];

      v6 = [path stringByAppendingPathComponent:@"business_items.db"];
      v7 = _databasePath_databasePath_0;
      _databasePath_databasePath_0 = v6;
    }

    self = _databasePath_databasePath_0;
    v2 = vars8;
  }

  return self;
}

- (BOOL)insertOrReplaceBusinessItem:(id)item withTTL:(double)l
{
  v53 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  [(BCSBusinessItemPersistentStore *)self deleteBusinessItem:itemCopy];
  v7 = itemCopy;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v8 = MEMORY[0x277CCAAB0];
  messagingOpenHours = [v7 messagingOpenHours];
  v10 = [v8 archivedDataWithRootObject:messagingOpenHours requiringSecureCoding:1 error:0];

  v11 = MEMORY[0x277CCAAB0];
  callingOpenHours = [v7 callingOpenHours];
  v13 = [v11 archivedDataWithRootObject:callingOpenHours requiringSecureCoding:1 error:0];

  v14 = MEMORY[0x277CCAAB0];
  callToActions = [v7 callToActions];
  v16 = [v14 archivedDataWithRootObject:callToActions requiringSecureCoding:1 error:0];

  v17 = MEMORY[0x277CCAAB0];
  visibilityItems = [v7 visibilityItems];
  v19 = [v17 archivedDataWithRootObject:visibilityItems requiringSecureCoding:1 error:0];

  if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""insert into business_items (biz_id phone_number], -1, &ppStmt, 0)
  {
    goto LABEL_7;
  }

  v20 = ppStmt;
  bizID = [v7 bizID];
  v22 = 1;
  sqlite3_bind_text(v20, 1, [bizID UTF8String], -1, 0);

  v23 = ppStmt;
  phoneNumber = [v7 phoneNumber];
  sqlite3_bind_text(v23, 2, [phoneNumber UTF8String], -1, 0);

  v25 = ppStmt;
  name = [v7 name];
  sqlite3_bind_text(v25, 3, [name UTF8String], -1, 0);

  sqlite3_bind_int64(ppStmt, 4, [v7 phoneHash]);
  v27 = ppStmt;
  squareLogoURL = [v7 squareLogoURL];
  absoluteString = [squareLogoURL absoluteString];
  sqlite3_bind_text(v27, 5, [absoluteString UTF8String], -1, 0);

  v30 = ppStmt;
  wideLogoURL = [v7 wideLogoURL];
  absoluteString2 = [wideLogoURL absoluteString];
  sqlite3_bind_text(v30, 6, [absoluteString2 UTF8String], -1, 0);

  sqlite3_bind_int(ppStmt, 7, [v7 tintColor]);
  sqlite3_bind_int(ppStmt, 8, [v7 backgroundColor]);
  sqlite3_bind_blob(ppStmt, 9, [v16 bytes], objc_msgSend(v16, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(ppStmt, 10, [v7 isVerified]);
  sqlite3_bind_blob(ppStmt, 11, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_blob(ppStmt, 12, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v33 = ppStmt;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  sqlite3_bind_int(v33, 13, v35);

  v36 = ppStmt;
  date2 = [MEMORY[0x277CBEAA8] date];
  v38 = [date2 dateByAddingTimeInterval:l];
  [v38 timeIntervalSince1970];
  sqlite3_bind_double(v36, 14, v39);

  v40 = ppStmt;
  intentID = [v7 intentID];
  sqlite3_bind_text(v40, 15, [intentID UTF8String], -1, 0);

  v42 = ppStmt;
  groupID = [v7 groupID];
  sqlite3_bind_text(v42, 16, [groupID UTF8String], -1, 0);

  sqlite3_bind_blob(ppStmt, 17, [v19 bytes], objc_msgSend(v19, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v44 = sqlite3_step(ppStmt);
  sqlite3_finalize(ppStmt);
  if (v44 != 101)
  {
    v45 = ABSLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
      *buf = 134218242;
      v50 = v44;
      v51 = 2080;
      v52 = v47;
      _os_log_error_impl(&dword_242072000, v45, OS_LOG_TYPE_ERROR, "Error while finalizing insert business item %lu %s", buf, 0x16u);
    }

LABEL_7:
    v22 = 0;
  }

  [(BCSPersistentStore *)self endBatch];

  [(BCSPersistentStore *)self endBatch];
  return v22;
}

- (BOOL)updateTTL:(double)l forBusinessItem:(id)item
{
  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v7 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:l];
  [v8 timeIntervalSince1970];
  v10 = v9;
  bizID = [itemCopy bizID];
  v12 = [bizID length];
  selfCopy = self;
  if (v12)
  {
    bizID2 = [itemCopy bizID];
  }

  else
  {
    bizID2 = &stru_28544C2A0;
  }

  phoneNumber = [itemCopy phoneNumber];
  v15 = [phoneNumber length];
  if (v15)
  {
    phoneNumber2 = [itemCopy phoneNumber];
  }

  else
  {
    phoneNumber2 = &stru_28544C2A0;
  }

  v17 = [v7 stringWithFormat:@"UPDATE business_items SET time_to_live_date = %u WHERE biz_id = %@ OR phone_number = %@", v10, bizID2, phoneNumber2];
  uTF8String = [v17 UTF8String];

  if (v15)
  {
  }

  if (v12)
  {
  }

  if (sqlite3_prepare_v2([(BCSPersistentStore *)selfCopy openedDatabase], uTF8String, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 101)
  {
    v19 = 0;
  }

  else
  {
    sqlite3_finalize(ppStmt);
    v19 = 1;
  }

  [(BCSPersistentStore *)selfCopy endBatch];

  return v19;
}

- (BOOL)updateLastRetrievedDateForBusinessItem:(id)item
{
  v4 = MEMORY[0x277CBEAA8];
  itemCopy = item;
  date = [v4 date];
  v7 = itemCopy;
  if (self)
  {
    v8 = date;
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    v9 = MEMORY[0x277CCACA8];
    [v8 timeIntervalSince1970];
    v11 = v10;

    bizID = [v7 bizID];
    v13 = [bizID length];
    v22 = date;
    if (v13)
    {
      bizID2 = [v7 bizID];
    }

    else
    {
      bizID2 = &stru_28544C2A0;
    }

    phoneNumber = [v7 phoneNumber];
    v16 = [phoneNumber length];
    if (v16)
    {
      phoneNumber2 = [v7 phoneNumber];
    }

    else
    {
      phoneNumber2 = &stru_28544C2A0;
    }

    v18 = [v9 stringWithFormat:@"UPDATE business_items SET last_retrieved_date = %u WHERE biz_id = %@ OR phone_number = %@", v11, bizID2, phoneNumber2];
    uTF8String = [v18 UTF8String];

    if (v16)
    {
    }

    date = v22;
    if (v13)
    {
    }

    if (sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 101)
    {
      v20 = 0;
    }

    else
    {
      sqlite3_finalize(ppStmt);
      v20 = 1;
    }

    [(BCSPersistentStore *)self endBatch];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)fetchPersistentBusinessItemObjectWithBizID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from business_items where biz_id=%@", d];
  uTF8String = [v4 UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeFetchPersistentBusinessItemObjectSQLQuery:uTF8String];
}

- (BCSPersistentBusinessItemObject)_executeFetchPersistentBusinessItemObjectSQLQuery:(void *)query
{
  v93 = *MEMORY[0x277D85DE8];
  if (query)
  {
    [query beginBatch];
    ppStmt = 0;
    if (sqlite3_prepare_v2([query openedDatabase], a2, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
    {
      v5 = 0;
    }

    else
    {
      if (sqlite3_column_text(ppStmt, 1))
      {
        v4 = objc_alloc(MEMORY[0x277CCACA8]);
        v83 = [v4 initWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      }

      else
      {
        v83 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 2))
      {
        v7 = objc_alloc(MEMORY[0x277CCACA8]);
        v82 = [v7 initWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
      }

      else
      {
        v82 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 3))
      {
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        v81 = [v8 initWithUTF8String:{sqlite3_column_text(ppStmt, 3)}];
      }

      else
      {
        v81 = &stru_28544C2A0;
      }

      v74 = sqlite3_column_int64(ppStmt, 4);
      v9 = sqlite3_column_text(ppStmt, 5);
      v10 = MEMORY[0x277CBEBC0];
      if (v9)
      {
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        v12 = [v11 initWithUTF8String:{sqlite3_column_text(ppStmt, 5)}];
        v80 = [v10 URLWithString:v12];
      }

      else
      {
        v80 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28544C2A0];
      }

      v13 = sqlite3_column_text(ppStmt, 6);
      v14 = MEMORY[0x277CBEBC0];
      if (v13)
      {
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v16 = [v15 initWithUTF8String:{sqlite3_column_text(ppStmt, 6)}];
        v79 = [v14 URLWithString:v16];
      }

      else
      {
        v79 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28544C2A0];
      }

      v66 = sqlite3_column_int(ppStmt, 7);
      v17 = sqlite3_column_int(ppStmt, 8);
      v75 = sqlite3_column_int(ppStmt, 10);
      v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_int(ppStmt, 13)}];
      v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(ppStmt, 14)}];
      if (sqlite3_column_text(ppStmt, 15))
      {
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v78 = [v18 initWithUTF8String:{sqlite3_column_text(ppStmt, 15)}];
      }

      else
      {
        v78 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 16))
      {
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v68 = [v19 initWithUTF8String:{sqlite3_column_text(ppStmt, 16)}];
      }

      else
      {
        v68 = &stru_28544C2A0;
      }

      v20 = sqlite3_column_blob(ppStmt, 9);
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:{sqlite3_column_bytes(ppStmt, 9)}];
      v22 = MEMORY[0x277CCAAC8];
      v23 = MEMORY[0x277CBEB98];
      v24 = objc_opt_class();
      v25 = [v23 setWithObjects:{v24, NSClassFromString(&cfstr_Bcscalltoactio.isa), 0}];
      v87 = 0;
      v73 = v21;
      v72 = [v22 unarchivedObjectOfClasses:v25 fromData:v21 error:&v87];
      v26 = v87;

      if (v26)
      {
        v27 = ABSLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v58 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v90 = v26;
          v91 = 2080;
          v92 = v58;
          _os_log_error_impl(&dword_242072000, v27, OS_LOG_TYPE_ERROR, "error while unarchiving BCSCallToActionItem %lu %s", buf, 0x16u);
        }
      }

      v71 = v26;
      v28 = sqlite3_column_blob(ppStmt, 11);
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:{sqlite3_column_bytes(ppStmt, 11)}];
      v30 = MEMORY[0x277CCAAC8];
      v31 = MEMORY[0x277CBEB98];
      v32 = NSClassFromString(&cfstr_Bcsopenhours.isa);
      v33 = objc_opt_class();
      v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
      v86 = 0;
      v70 = v29;
      v65 = [v30 unarchivedObjectOfClasses:v34 fromData:v29 error:&v86];
      v35 = v86;

      if (v35)
      {
        v36 = ABSLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v59 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v90 = v35;
          v91 = 2080;
          v92 = v59;
          _os_log_error_impl(&dword_242072000, v36, OS_LOG_TYPE_ERROR, "error while unarchiving BCSOpenHours %lu %s", buf, 0x16u);
        }
      }

      v69 = v35;
      v37 = sqlite3_column_blob(ppStmt, 12);
      v38 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:{sqlite3_column_bytes(ppStmt, 12)}];
      v39 = MEMORY[0x277CCAAC8];
      v40 = MEMORY[0x277CBEB98];
      v41 = NSClassFromString(&cfstr_Bcsopenhours.isa);
      v42 = objc_opt_class();
      v43 = [v40 setWithObjects:{v41, v42, objc_opt_class(), 0}];
      v85 = 0;
      v44 = [v39 unarchivedObjectOfClasses:v43 fromData:v38 error:&v85];
      v45 = v85;

      if (v45)
      {
        v46 = ABSLogCommon();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v60 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v90 = v45;
          v91 = 2080;
          v92 = v60;
          _os_log_error_impl(&dword_242072000, v46, OS_LOG_TYPE_ERROR, "error while unarchiving BCSOpenHours %lu %s", buf, 0x16u);
        }
      }

      v63 = v66;
      v64 = v45;
      v47 = sqlite3_column_blob(ppStmt, 17);
      v48 = [MEMORY[0x277CBEA90] dataWithBytes:v47 length:{sqlite3_column_bytes(ppStmt, 17)}];
      v49 = MEMORY[0x277CCAAC8];
      v50 = MEMORY[0x277CBEB98];
      v51 = NSClassFromString(&cfstr_Bcsvisibilityi.isa);
      v52 = objc_opt_class();
      v53 = [v50 setWithObjects:{v51, v52, objc_opt_class(), 0}];
      v84 = 0;
      v67 = v48;
      v54 = [v49 unarchivedObjectOfClasses:v53 fromData:v48 error:&v84];
      v55 = v84;

      if (v55)
      {
        v56 = ABSLogCommon();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v61 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v90 = v55;
          v91 = 2080;
          v92 = v61;
          _os_log_error_impl(&dword_242072000, v56, OS_LOG_TYPE_ERROR, "error while unarchiving BCSVisibilityItem %lu %s", buf, 0x16u);
        }
      }

      sqlite3_finalize(ppStmt);
      LOBYTE(v62) = v75 == 1;
      v57 = [[BCSBusinessItem alloc] initWithBizID:v83 phoneNumber:v82 name:v81 phoneHash:v74 squareLogoURL:v80 wideLogoURL:v79 tintColor:v63 backgroundColor:v17 callToActions:v72 messagingOpenHours:v65 callingOpenHours:v44 isVerified:v62 intentID:v78 groupID:v68 visibilityItems:v54];
      v5 = [[BCSPersistentBusinessItemObject alloc] initWithBusinessItem:v57 lastRetrievedDate:v77 TTLDate:v76];
    }

    [query endBatch];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchPersistentBusinessItemObjectWithPhoneNumber:(id)number
{
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from business_items where phone_number=%@", number];
  uTF8String = [number UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeFetchPersistentBusinessItemObjectSQLQuery:uTF8String];
}

- (BOOL)deleteBusinessItem:(id)item
{
  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  bizID = [itemCopy bizID];
  v6 = [(BCSBusinessItemPersistentStore *)self deleteBusinessItemWithBizID:bizID];

  phoneNumber = [itemCopy phoneNumber];

  LOBYTE(itemCopy) = [(BCSBusinessItemPersistentStore *)self deleteBusinessItemWithPhoneNumber:phoneNumber];
  [(BCSPersistentStore *)self endBatch];
  return (v6 | itemCopy) & 1;
}

- (BOOL)deleteBusinessItemWithBizID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from business_items where biz_id=%@", d];
  uTF8String = [v4 UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeDeleteBusinessItemSQLQuery:uTF8String];
}

- (BOOL)_executeDeleteBusinessItemSQLQuery:(void *)query
{
  if (!query)
  {
    return 0;
  }

  [query beginBatch];
  ppStmt = 0;
  if (sqlite3_prepare_v2([query openedDatabase], a2, -1, &ppStmt, 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_step(ppStmt) == 101;
  }

  [query endBatch];
  return v4;
}

- (BOOL)deleteBusinessItemWithPhoneNumber:(id)number
{
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from business_items where phone_number=%@", number];
  uTF8String = [number UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeDeleteBusinessItemSQLQuery:uTF8String];
}

@end