@interface BRCloudDocsHelper
+ (id)queryFastPathsForPrimaryPersona:(id)persona;
- (id)queryPathsForPersona:(id)persona withError:(id *)error;
@end

@implementation BRCloudDocsHelper

+ (id)queryFastPathsForPrimaryPersona:(id)persona
{
  v16[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  if (([personaCopy isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (objc_msgSend(currentPersona, "isDataSeparatedPersona") & 1) == 0 && (objc_msgSend(currentPersona, "userPersonaUniqueString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", personaCopy), v11, v12))
  {
    fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
    br_realpathURL = [fp_homeDirectory br_realpathURL];

    if (br_realpathURL)
    {
      fp_lmdURL = [MEMORY[0x1E695DFF8] fp_lmdURL];
      br_realpathURL2 = [fp_lmdURL br_realpathURL];

      v14 = 0;
      v10 = 0;
      if ([MEMORY[0x1E695DFF8] br_isURL:br_realpathURL2 syncRootOwnedByICloudDrive:&v14 withError:0])
      {
        if (br_realpathURL2 && (v14 & 1) != 0)
        {
          v10 = objc_opt_new();
          [v10 setObject:br_realpathURL forKeyedSubscript:@"home"];
          [v10 setObject:br_realpathURL2 forKeyedSubscript:@"Mobile Documents"];
        }

        else
        {
          v15 = @"home";
          v16[0] = br_realpathURL;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)queryPathsForPersona:(id)persona withError:(id *)error
{
  v4 = brc_bread_crumbs("[BRCloudDocsHelper queryPathsForPersona:withError:]", 82);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCloudDocsHelper queryPathsForPersona:v4 withError:v5];
  }

  return 0;
}

- (void)queryPathsForPersona:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: you should subclass%@", &v2, 0xCu);
}

@end