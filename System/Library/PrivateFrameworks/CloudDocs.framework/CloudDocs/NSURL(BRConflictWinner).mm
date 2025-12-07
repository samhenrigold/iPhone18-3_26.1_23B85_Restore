@interface NSURL(BRConflictWinner)
- (id)br_lastEditorName;
- (uint64_t)br_addFakeConflictLoserFromItemAtURL:()BRConflictWinner lastEditorDeviceName:error:;
@end

@implementation NSURL(BRConflictWinner)

- (id)br_lastEditorName
{
  br_lastEditorNameComponents = [self br_lastEditorNameComponents];
  br_formattedName = [br_lastEditorNameComponents br_formattedName];

  return br_formattedName;
}

- (uint64_t)br_addFakeConflictLoserFromItemAtURL:()BRConflictWinner lastEditorDeviceName:error:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:{sel_br_addFakeConflictLoserFromItemAtURL_lastEditorDeviceName_error_, a4}];
  if (v6)
  {
    v7 = brc_bread_crumbs("[NSURL(BRConflictWinner) br_addFakeConflictLoserFromItemAtURL:lastEditorDeviceName:error:]", 93);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v11 = "(passed to caller)";
      v12 = 136315906;
      v13 = "[NSURL(BRConflictWinner) br_addFakeConflictLoserFromItemAtURL:lastEditorDeviceName:error:]";
      v14 = 2080;
      if (!a5)
      {
        v11 = "(ignored by caller)";
      }

      v15 = v11;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", &v12, 0x2Au);
    }
  }

  if (a5)
  {
    v9 = v6;
    *a5 = v6;
  }

  return 0;
}

@end