@interface MSUDataAccessorSymbolicPathResolver
+ (id)resolvedSymbol:(id)symbol error:(id *)error;
+ (id)symbolicPathResolver;
- (MSUDataAccessorSymbolicPathResolver)init;
- (id)resolve:(id)resolve error:(id *)error;
- (void)dealloc;
- (void)overrideSymbol:(id)symbol resolvedPath:(id)path;
@end

@implementation MSUDataAccessorSymbolicPathResolver

- (void)dealloc
{
  overrides = self->_overrides;
  self->_overrides = 0;

  v4.receiver = self;
  v4.super_class = MSUDataAccessorSymbolicPathResolver;
  [(MSUDataAccessorSymbolicPathResolver *)&v4 dealloc];
}

+ (id)symbolicPathResolver
{
  v2 = objc_alloc_init(MSUDataAccessorSymbolicPathResolver);

  return v2;
}

+ (id)resolvedSymbol:(id)symbol error:(id *)error
{
  v52[4] = *MEMORY[0x277D85DE8];
  symbolCopy = symbol;
  if (resolvedSymbol_error__onceToken != -1)
  {
    +[MSUDataAccessorSymbolicPathResolver resolvedSymbol:error:];
  }

  v7 = resolvedSymbol_error__symbolCache;
  objc_sync_enter(v7);
  v8 = [resolvedSymbol_error__symbolCache objectForKeyedSubscript:symbolCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    goto LABEL_34;
  }

  if ([symbolCopy isEqualToString:@"ecid"])
  {
    v49 = 0;
    v12 = [MSUDataAccessor ioreg:@"IODeviceTree:/chosen/manifest-properties" property:@"ECID" error:&v49];
    v11 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length] == 8)
    {
      v13 = v12;
      bytes = [v12 bytes];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llX", *bytes];
    }

    else
    {
      v17 = MGCopyAnswer();
      v18 = v17;
      if (v17)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llX", objc_msgSend(v17, "longLongValue")];
      }

      else
      {
        v10 = 0;
      }
    }

LABEL_24:
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ([symbolCopy isEqualToString:@"boardid"])
  {
    v15 = MGCopyAnswer();
    v16 = v15;
    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([symbolCopy isEqualToString:@"chipid"])
  {
    v15 = MGCopyAnswer();
    v16 = v15;
    if (v15)
    {
LABEL_16:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X", objc_msgSend(v15, "intValue")];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if ([symbolCopy isEqualToString:@"hwmodel"])
  {
    v48 = 0;
    v10 = [MSUDataAccessor hardwareModelWithError:&v48];
    v19 = v48;
    goto LABEL_28;
  }

  if ([symbolCopy isEqualToString:@"nsih"])
  {
    v23 = +[MSUDataAccessor sharedDataAccessor];
    v47 = 0;
    v10 = [v23 copyBootManifestHashWithError:&v47];
    v11 = v47;

    goto LABEL_24;
  }

  if ([symbolCopy isEqualToString:@"volguuid"])
  {
    v46 = 0;
    v10 = [MSUDataAccessor bootUUIDWithError:&v46];
    v19 = v46;
LABEL_28:
    v11 = v19;
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if ([symbolCopy isEqualToString:@"preboot"] & 1) != 0 || (objc_msgSend(symbolCopy, "isEqualToString:", @"sourcepreboot"))
  {
    v11 = 0;
    v10 = @"/private/preboot";
    goto LABEL_25;
  }

  if ([symbolCopy isEqualToString:@"iscpreboot"] & 1) != 0 || (objc_msgSend(symbolCopy, "isEqualToString:", @"hardware"))
  {
LABEL_46:
    v11 = 0;
    if (error)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if ([symbolCopy isEqualToString:@"bootobjectspath"])
  {
    v45 = 0;
    v24 = [MSUDataAccessor ioreg:@"IODeviceTree:/chosen" property:@"boot-objects-path" error:&v45];
    v11 = v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = v24;
      v27 = [v25 stringWithUTF8String:{objc_msgSend(v24, "bytes")}];
      v10 = [@"/" stringByAppendingPathComponent:v27];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_24;
  }

  v28 = [symbolCopy isEqualToString:@"cryptex1ticketpath"];
  if (!v28)
  {
    v34 = MSUDASharedLogger(v28);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)symbolCopy resolvedSymbol:v34 error:v35, v36, v37, v38, v39, v40];
    }

    goto LABEL_46;
  }

  v29 = +[MSUDataAccessor cryptex1TicketType];
  if (!v29)
  {
    goto LABEL_46;
  }

  v44 = [self resolvedSymbol:@"preboot" error:0];
  v30 = [self resolvedSymbol:@"hwmodel" error:0];
  v31 = [self resolvedSymbol:@"ecid" error:0];
  v32 = v31;
  if (v29 == 1 && v30 && v31)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"apticket.%@.%@.im4m", v30, v31];
LABEL_65:
    v41 = v33;
    v10 = 0;
    if (v44 && v33)
    {
      v42 = MEMORY[0x277CCACA8];
      v52[0] = v44;
      v52[1] = @"cryptex1";
      v52[2] = @"current";
      v52[3] = v33;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      v10 = [v42 pathWithComponents:v43];
    }

    goto LABEL_69;
  }

  v41 = 0;
  if (v29 == 2)
  {
    v10 = 0;
    if (v30)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"apticket.%@.im4m", v30];
      goto LABEL_65;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_69:

LABEL_19:
  v11 = 0;
  if (v10)
  {
LABEL_25:
    [resolvedSymbol_error__symbolCache setObject:v10 forKeyedSubscript:symbolCopy];
    goto LABEL_34;
  }

LABEL_29:
  if (error)
  {
LABEL_30:
    v50[0] = *MEMORY[0x277CCA068];
    v50[1] = @"symbol";
    v51[0] = @"Path symbol resolution failure";
    v51[1] = symbolCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v21 = [v20 mutableCopy];

    if (v11)
    {
      [v21 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSUDAError" code:6007 userInfo:v21];
  }

LABEL_33:
  v10 = 0;
LABEL_34:

  objc_sync_exit(v7);

  return v10;
}

void __60__MSUDataAccessorSymbolicPathResolver_resolvedSymbol_error___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = resolvedSymbol_error__symbolCache;
  resolvedSymbol_error__symbolCache = v0;
}

- (MSUDataAccessorSymbolicPathResolver)init
{
  v6.receiver = self;
  v6.super_class = MSUDataAccessorSymbolicPathResolver;
  v2 = [(MSUDataAccessorSymbolicPathResolver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    overrides = v2->_overrides;
    v2->_overrides = v3;
  }

  return v2;
}

- (void)overrideSymbol:(id)symbol resolvedPath:(id)path
{
  symbolCopy = symbol;
  pathCopy = path;
  v8 = self->_overrides;
  objc_sync_enter(v8);
  overrides = self->_overrides;
  if (pathCopy)
  {
    [(NSMutableDictionary *)overrides setObject:pathCopy forKeyedSubscript:symbolCopy];
  }

  else
  {
    [(NSMutableDictionary *)overrides removeObjectForKey:symbolCopy];
  }

  objc_sync_exit(v8);
}

- (id)resolve:(id)resolve error:(id *)error
{
  v70[3] = *MEMORY[0x277D85DE8];
  resolveCopy = resolve;
  v64 = 0;
  v65[0] = &v64;
  v65[1] = 0x3032000000;
  v65[2] = __Block_byref_object_copy_;
  v65[3] = __Block_byref_object_dispose_;
  v66 = 0;
  v63 = 0;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])" options:0 error:&v63];
  v8 = v63;
  v9 = v8;
  if (v8)
  {
    v10 = MSUDASharedLogger(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v10 resolve:v11 error:v12, v13, v14, v15, v16, v17];
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA7E8];
    v69[0] = *MEMORY[0x277CCA068];
    v69[1] = v19;
    v70[0] = @"bad regex";
    v70[1] = v9;
    v69[2] = @"regex";
    v70[2] = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
    v21 = [v18 errorWithDomain:@"MSUDASymbolicPathResolverError" code:102 userInfo:v20];
    v22 = *(v65[0] + 40);
    *(v65[0] + 40) = v21;

    goto LABEL_5;
  }

  if (!v7)
  {
    v35 = MSUDASharedLogger(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v35 resolve:v36 error:v37, v38, v39, v40, v41, v42];
    }

    v43 = MEMORY[0x277CCA9B8];
    v67[0] = *MEMORY[0x277CCA068];
    v67[1] = @"regex";
    v68[0] = @"could not alloc/init regex";
    v68[1] = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v45 = [v43 errorWithDomain:@"MSUDASymbolicPathResolverError" code:101 userInfo:v44];
    v46 = *(v65[0] + 40);
    *(v65[0] + 40) = v45;

LABEL_5:
    v24 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  string = [MEMORY[0x277CCAB68] string];
  v26 = v60[3];
  v27 = [resolveCopy length];
  v50 = MEMORY[0x277D85DD0];
  v51 = 3254779904;
  v52 = __53__MSUDataAccessorSymbolicPathResolver_resolve_error___block_invoke;
  v53 = &__block_descriptor_72_e8_32s40s48s56r64r_e37_v32__0__NSTextCheckingResult_8Q16_B24l;
  v57 = &v59;
  v28 = resolveCopy;
  v54 = v28;
  v29 = string;
  v55 = v29;
  selfCopy = self;
  v58 = &v64;
  [v7 enumerateMatchesInString:v28 options:0 range:v26 usingBlock:{v27, &v50}];
  v30 = [v28 length];
  v31 = v60[3];
  if (v30 != v31)
  {
    v32 = [v28 length];
    v33 = [v28 substringWithRange:{v31, v32 - v60[3]}];
    [v29 appendString:v33];
  }

  if (*(v65[0] + 40))
  {
    v34 = MSUDASharedLogger(v30);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(MSUDataAccessorSymbolicPathResolver *)v65 resolve:v29 error:v34];
    }

    v24 = 0;
  }

  else
  {
    v24 = v29;
  }

  _Block_object_dispose(&v59, 8);
  if (!error)
  {
LABEL_6:
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v23 = *(v65[0] + 40);
  *error = v23;
  if (!v24)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = MSUDASharedLogger(v23);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [(MSUDataAccessorSymbolicPathResolver *)resolveCopy resolve:v24 error:v47];
  }

LABEL_24:
  v48 = v24;

  _Block_object_dispose(&v64, 8);

  return v48;
}

void __53__MSUDataAccessorSymbolicPathResolver_resolve_error___block_invoke(uint64_t a1, id a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 range];
    v9 = *(*(*(a1 + 56) + 8) + 24);
    if (v8 != v9)
    {
      v10 = [*(a1 + 32) substringWithRange:{v9, objc_msgSend(v7, "range") - *(*(*(a1 + 56) + 8) + 24)}];
      [*(a1 + 40) appendString:v10];
    }

    v11 = *(a1 + 32);
    v12 = [v7 range];
    v14 = [v11 substringWithRange:{v12, v13}];
    if ([v7 rangeAtIndex:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v7 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v7 rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v7 rangeAtIndex:4] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v14 substringWithRange:{1, objc_msgSend(v14, "length") - 2}];
            v16 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v15];
            if (!v16)
            {
              v17 = *(*(a1 + 64) + 8);
              obj = *(v17 + 40);
              v16 = [MSUDataAccessorSymbolicPathResolver resolvedSymbol:v15 error:&obj];
              objc_storeStrong((v17 + 40), obj);
              if (*(*(*(a1 + 64) + 8) + 40))
              {
                *a4 = 1;
              }

              else if (v16)
              {
                [*(a1 + 40) appendString:v16];
              }
            }
          }

          goto LABEL_15;
        }

        v18 = *(a1 + 40);
        v19 = @"]";
      }

      else
      {
        v18 = *(a1 + 40);
        v19 = @"[";
      }
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = @"\";
    }

    [v18 appendString:v19];
LABEL_15:
    v20 = [v7 range];
    [v7 range];
    *(*(*(a1 + 56) + 8) + 24) = v21 + v20;
  }
}

+ (void)resolvedSymbol:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a2, a3, "Unknown symbol:%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resolve:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a1, a3, "bad regex:%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resolve:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22E73A000, log, OS_LOG_TYPE_ERROR, "error %@ ; discarding incomplete unresolved path: %@", &v4, 0x16u);
}

- (void)resolve:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"(\\\\\\\\)|(\\\\\\[)|(\\\\\\])|(\\[\\w+\\])";
  OUTLINED_FUNCTION_0_0(&dword_22E73A000, a1, a3, "could not alloc/init regex:%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resolve:(os_log_t)log error:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_22E73A000, log, OS_LOG_TYPE_DEBUG, "returning resolved path for symbolic path %@: %@", &v3, 0x16u);
}

@end