@interface TIMecabraCandidate(TextInputCore)
+ (__CFString)displayReadingFromMecabraCandidate:()TextInputCore syllableSeparator:;
+ (id)mecabraCandidateWithCandidateRef:()TextInputCore autoconvertedCandidates:;
- (uint64_t)initWithMecabraCandidate:()TextInputCore input:cursorMovement:;
@end

@implementation TIMecabraCandidate(TextInputCore)

- (uint64_t)initWithMecabraCandidate:()TextInputCore input:cursorMovement:
{
  v8 = a4;
  v9 = MecabraCandidateGetSurface();
  if (!v8)
  {
    v8 = MecabraCandidateGetAnalysisString();
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v11 = [self initWithCandidate:v9 forInput:v8 mecabraCandidatePointerValue:v10 withFlags:FlagsForCandidate(a3) deleteCount:0 cursorMovement:a5];

  return v11;
}

+ (id)mecabraCandidateWithCandidateRef:()TextInputCore autoconvertedCandidates:
{
  v5 = a4;
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6F340]) initWithMecabraCandidate:a3 autoconvertedCandidates:v5];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:a3];
  }

  v7 = v6;

  return v7;
}

+ (__CFString)displayReadingFromMecabraCandidate:()TextInputCore syllableSeparator:
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
  {
    if (MecabraCandidateGetType() == 7)
    {
      v7 = MecabraCandidateGetSurface();
LABEL_21:
      v23 = &stru_283FDFAF8;
      goto LABEL_37;
    }

    v8 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
    v7 = [MecabraCandidateGetAnalysisString() copy];
    if (![v8 count])
    {

      goto LABEL_21;
    }

    v9 = [self convertedInputFromMecabraCandidate:a3];
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v9, "length") + (objc_msgSend(v8, "count") - 1) * objc_msgSend(v6, "length")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v38;
        v35 = v7;
        while (2)
        {
          v16 = 0;
          v17 = v14;
          do
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v37 + 1) + 8 * v16);
            if ([v11 length])
            {
              [v11 appendString:v6];
            }

            unsignedIntegerValue = [v18 unsignedIntegerValue];
            v20 = [v10 length];
            v14 = unsignedIntegerValue + v17;
            if (unsignedIntegerValue > v20 || v14 > v20)
            {

              v7 = v35;
              goto LABEL_28;
            }

            v22 = [v10 substringWithRange:{v17, unsignedIntegerValue}];
            [v11 appendString:v22];

            ++v16;
            v17 = v14;
          }

          while (v13 != v16);
          v13 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
          v7 = v35;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v14 == [v10 length])
      {
        v25 = v11;
      }

      else
      {
LABEL_28:
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel)
        {
          v26 = TIOSLogFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v28 = v7;
            v29 = MEMORY[0x277CCACA8];
            v30 = [obj valueForKey:@"stringValue"];
            v31 = [v30 componentsJoinedByString:{@", "}];
            Surface = MecabraCandidateGetSurface();
            v32 = v29;
            v7 = v28;
            v33 = [v32 stringWithFormat:@"%s Invalid syllable lengths { %@ } for '%@'/'%@'", "+[TIMecabraCandidate(TextInputCore) displayReadingFromMecabraCandidate:syllableSeparator:]", v31, Surface, v10];
            *buf = 138412290;
            v42 = v33;
            _os_log_debug_impl(&dword_22CA55000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v25 = v10;
      }

      v24 = [v25 copy];

      goto LABEL_36;
    }
  }

  v24 = &stru_283FDFAF8;
LABEL_36:
  v23 = v24;
  v7 = v23;
LABEL_37:

  return v7;
}

@end