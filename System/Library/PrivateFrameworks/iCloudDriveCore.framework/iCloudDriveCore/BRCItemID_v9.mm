@interface BRCItemID_v9
+ (id)newFromSqliteValue:(sqlite3_value *)value;
- (BRCItemID_v9)initWithRootObject:(RootItemObject *)object;
- (BRCItemID_v9)initWithUUID:(const char *)d;
- (BRCItemID_v9)initWithUUIDObject:(_UUIDItemObject_OLD *)object;
- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d enclosureUUID:(id)iD;
- (id)itemIDString;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation BRCItemID_v9

- (id)itemIDString
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  kind = self->_kind;
  v4 = @"root";
  if (kind > 2)
  {
    switch(kind)
    {
      case 3:
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        break;
      case 5:
        goto LABEL_16;
      case 4:
        goto LABEL_8;
      default:
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        break;
    }

    v4 = 0;
    goto LABEL_16;
  }

  if (!kind)
  {
LABEL_8:
    uuid_unparse_upper(self->_uuid, v10);
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:36 encoding:4];
    goto LABEL_16;
  }

  if (kind != 1)
  {
    v4 = @"documents";
  }

LABEL_16:

  return v4;
}

- (BRCItemID_v9)initWithUUID:(const char *)d
{
  v5.receiver = self;
  v5.super_class = BRCItemID_v9;
  result = [(BRCItemID_v9 *)&v5 init];
  if (result)
  {
    result->_kind = 0;
    *result->_uuid = *d;
  }

  return result;
}

- (BRCItemID_v9)initWithRootObject:(RootItemObject *)object
{
  v9.receiver = self;
  v9.super_class = BRCItemID_v9;
  v4 = [(BRCItemID_v9 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = object->var0;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&object->var0 + 1)];
    appLibraryRowID = v5->_appLibraryRowID;
    v5->_appLibraryRowID = v6;

    if (object->var0 - 3 <= 0xFFFFFFFD)
    {
      [BRCItemID_v9 initWithRootObject:];
    }
  }

  return v5;
}

- (BRCItemID_v9)initWithUUIDObject:(_UUIDItemObject_OLD *)object
{
  v9.receiver = self;
  v9.super_class = BRCItemID_v9;
  v4 = [(BRCItemID_v9 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = object->var0;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&object->var0 + 1)];
    appLibraryRowID = v5->_appLibraryRowID;
    v5->_appLibraryRowID = v6;

    *v5->_uuid = *(&object->var1 + 1);
    if (object->var0 - 6 <= 0xFFFFFFFD)
    {
      [BRCItemID_v9 initWithUUIDObject:];
    }
  }

  return v5;
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  *&v24[13] = *MEMORY[0x277D85DE8];
  v4 = sqlite3_value_type(value);
  if (v4 == 5)
  {
    return 0;
  }

  v5 = v4;
  if (v4 != 4)
  {
    v10 = sqlite3_value_text(value);
    v11 = sqlite3_value_bytes(value);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v11];
      v21 = 138412802;
      v22 = v19;
      v23 = 1024;
      *v24 = v5;
      v24[2] = 2112;
      *&v24[3] = v12;
      _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unmigrated? invalid BRCItemID (%@) - %d%@", &v21, 0x1Cu);
    }

    return 0;
  }

  v6 = sqlite3_value_blob(value);
  v7 = sqlite3_value_bytes(value);
  if (v7 == 16)
  {
    v8 = [BRCItemID_v9 alloc];

    return [(BRCItemID_v9 *)v8 initWithUUID:v6];
  }

  v14 = v7;
  if (v7 != 21)
  {
    if (v7 == 5)
    {
      v15 = [BRCItemID_v9 alloc];

      return [(BRCItemID_v9 *)v15 initWithRootObject:v6];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v14];
      v21 = 138412546;
      v22 = v20;
      v23 = 2112;
      *v24 = v17;
      _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid BRCItemID (%@)%@", &v21, 0x16u);
    }

    return 0;
  }

  v16 = [BRCItemID_v9 alloc];

  return [(BRCItemID_v9 *)v16 initWithUUIDObject:v6];
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  v15[3] = *MEMORY[0x277D85DE8];
  memset(v14, 0, 5);
  v15[0] = 0;
  v15[1] = 0;
  *(&v15[1] + 5) = 0;
  kind = self->_kind;
  if (kind > 2)
  {
    switch(kind)
    {
      case 3u:
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        goto LABEL_19;
      case 4u:
        LOBYTE(v15[0]) = 4;
        *(v15 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
        if (!*(v15 + 1))
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

        break;
      case 5u:
        LOBYTE(v15[0]) = 5;
        *(v15 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
        if (!*(v15 + 1))
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

        break;
      default:
LABEL_17:
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

LABEL_19:

        sqlite3_bind_null(bind, index);
        return;
    }

    *(v15 + 5) = *self->_uuid;
    v10 = v15;
    bindCopy2 = bind;
    indexCopy2 = index;
    v13 = 21;
    goto LABEL_26;
  }

  if (self->_kind)
  {
    if (kind == 1)
    {
      LOBYTE(v14[0]) = 1;
      *(v14 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v14 + 1))
      {
        [BRCItemID_v9 sqliteBind:index:];
      }

      goto LABEL_22;
    }

    if (kind == 2)
    {
      LOBYTE(v14[0]) = 2;
      *(v14 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v14 + 1))
      {
        [BRCItemID_v9 sqliteBind:index:];
      }

LABEL_22:
      v10 = v14;
      bindCopy2 = bind;
      indexCopy2 = index;
      v13 = 5;
LABEL_26:
      sqlite3_bind_blob(bindCopy2, indexCopy2, v10, v13, 0xFFFFFFFFFFFFFFFFLL);
      return;
    }

    goto LABEL_17;
  }

  sqlite3_bind_blob(bind, index, self->_uuid, 16, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d enclosureUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = BRCItemID_v9;
  v9 = [(BRCItemID_v9 *)&v18 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
LABEL_10:
    v13 = p_isa;
    goto LABEL_11;
  }

  if (!iDCopy)
  {
    v9->_kind = 1;
    goto LABEL_8;
  }

  v9->_kind = 4;
  if (_br_parseUUIDString())
  {
LABEL_8:
    objc_storeStrong(p_isa + 1, d);
    if (!dCopy || ![dCopy unsignedLongLongValue])
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"can't initialize library root with invalid library rowid %@", dCopy];
      objc_claimAutoreleasedReturnValue();
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseSchema.m", 338, uTF8String);
    }

    goto LABEL_10;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:];
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)initWithRootObject:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: object->item_code == 1 || object->item_code == 2%@", v5, v6, v7, v8);
  }
}

- (void)initWithUUIDObject:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: object->item_code == 4 || object->item_code == 5%@", v5, v6, v7, v8);
  }
}

- (void)sqliteBind:index:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: uio.app_lib_rowid%@", v5, v6, v7, v8);
  }
}

- (void)sqliteBind:index:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: uio.app_lib_rowid%@", v5, v6, v7, v8);
  }
}

- (void)sqliteBind:index:.cold.4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v5, v6, v7, v8);
  }
}

- (void)sqliteBind:index:.cold.5()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v5, v6, v7, v8);
  }
}

- (void)_initAsLibraryRootWithAppLibraryRowID:enclosureUUID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)_initAsLibraryRootWithAppLibraryRowID:enclosureUUID:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] %@%@", v3, v4, v5, v6);
}

@end