@interface NSURL(BRFinderTagAdditions)
- (BOOL)br_setTagNames:()BRFinderTagAdditions error:;
- (uint64_t)br_getTagNames:()BRFinderTagAdditions error:;
@end

@implementation NSURL(BRFinderTagAdditions)

- (uint64_t)br_getTagNames:()BRFinderTagAdditions error:
{
  v25 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E69673A8] defaultManager];
  v8 = [defaultManager itemForURL:self error:a4];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    tags = [v8 tags];
    v11 = [v9 initWithCapacity:{objc_msgSend(tags, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    tags2 = [v8 tags];
    v13 = [tags2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(tags2);
          }

          label = [*(*(&v20 + 1) + 8 * v16) label];
          [v11 addObject:label];

          ++v16;
        }

        while (v14 != v16);
        v14 = [tags2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    v18 = v11;
    *a3 = v11;
  }

  return 1;
}

- (BOOL)br_setTagNames:()BRFinderTagAdditions error:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  br_physicalURL = [self br_physicalURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__NSURL_BRFinderTagAdditions__br_setTagNames_error___block_invoke;
  v15[3] = &unk_1E7A14AD0;
  v16 = v6;
  v8 = v6;
  v9 = [br_physicalURL fp_withReadWriteAccess:v15];
  if (v9)
  {
    v10 = brc_bread_crumbs("[NSURL(BRFinderTagAdditions) br_setTagNames:error:]", 82);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      v14 = "(passed to caller)";
      *buf = 136315906;
      v18 = "[NSURL(BRFinderTagAdditions) br_setTagNames:error:]";
      v19 = 2080;
      if (!a4)
      {
        v14 = "(ignored by caller)";
      }

      v20 = v14;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_1AE2A9000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  return v9 == 0;
}

@end