@interface WRSignpostTracker
- ($9113E22C387CB8549570940FFDE4B24C)statsWithEventEndNs:(SEL)ns;
- (BOOL)exceededDiagnosticThreshold;
- (NSArray)emits;
- (NSArray)incompleteIntervalStarts;
- (NSArray)intervals;
- (NSDictionary)environment;
- (id)debugDescription;
- (id)diagnosticsExceedingThresholdsWithEventStartNs:(id)ns eventEndNs:(const char *)endNs;
- (id)encodedDict;
- (id)initWithEncodedDict:(void *)dict signpost:(uint64_t *)signpost error:;
- (id)initWithSignpost:individuationIdentifier:;
- (int)count;
- (unint64_t)totalDurationNanoseconds;
@end

@implementation WRSignpostTracker

- ($9113E22C387CB8549570940FFDE4B24C)statsWithEventEndNs:(SEL)ns
{
  v5 = retstr;
  v103 = *MEMORY[0x277D85DE8];
  *&retstr->var0.var1 = 0u;
  p_var1 = &retstr->var0.var1;
  retstr->var1.var5 = 0;
  *&retstr->var1.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var5 = 0u;
  *&retstr->var0.var3 = 0u;
  intervals = [(WRSignpostTracker *)self intervals];
  v6 = [intervals count];
  incompleteIntervalStarts = [(WRSignpostTracker *)self incompleteIntervalStarts];
  v7 = [incompleteIntervalStarts count];
  emits = [(WRSignpostTracker *)self emits];
  v9 = [emits count];
  v85 = v7;
  v10 = v7 + v6;
  v5->var0.var0 = v9 + v7 + v6;
  v72 = v6;
  v5->var1.var0 = v9 + v6;
  v66 = &v5->var1;
  if (!v9)
  {
    v12 = 0;
    v15 = -1;
    v14 = -1;
    if (!v10)
    {
      goto LABEL_57;
    }

    goto LABEL_13;
  }

  v11 = v9;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  v15 = -1;
  do
  {
    v16 = [emits objectAtIndexedSubscript:v13];
    machContTimeNs = [v16 machContTimeNs];
    if (v14 >= machContTimeNs)
    {
      v14 = machContTimeNs;
    }

    if (v15 >= machContTimeNs)
    {
      v15 = machContTimeNs;
    }

    if (v12 <= machContTimeNs)
    {
      v12 = machContTimeNs;
    }

    ++v13;
  }

  while (v11 != v13);
  if (v10)
  {
LABEL_13:
    v67 = emits;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v69 = v5;
    selfCopy = self;
    v18 = v72;
    if (v72)
    {
      v81 = 0;
      v80 = 0;
      v79 = 0;
      v19 = 0;
      v86 = 0;
      __ptr = 0;
      v20 = 0;
      v83 = 0;
      v21 = 16;
      do
      {
        v22 = [intervals objectAtIndexedSubscript:v20];
        start = [v22 start];
        machContTimeNs2 = [start machContTimeNs];

        v25 = [v22 end];
        machContTimeNs3 = [v25 machContTimeNs];

        v27 = machContTimeNs3 - machContTimeNs2;
        v28 = reallocf(__ptr, v21 & 0xFFFFFFFF0);
        v29 = &v28[16 * v20];
        *v29 = machContTimeNs2;
        v29[1] = machContTimeNs3;
        v30 = v86;
        if (v86 <= machContTimeNs3 - machContTimeNs2)
        {
          v30 = machContTimeNs3 - machContTimeNs2;
        }

        v86 = v30;
        __ptr = v28;
        if (v85)
        {
          v79 = reallocf(v79, 16 * (v83 + 1));
          v31 = &v79[16 * v83];
          *v31 = machContTimeNs2;
          v31[1] = machContTimeNs3;
          v32 = v80;
          if (v80 <= v27)
          {
            v32 = machContTimeNs3 - machContTimeNs2;
          }

          v80 = v32;
          v81 += v27;
          ++v83;
        }

        ++v20;
        v19 += v27;
        if (v14 >= machContTimeNs2)
        {
          v14 = machContTimeNs2;
        }

        if (v15 >= machContTimeNs2)
        {
          v15 = machContTimeNs2;
        }

        if (v12 <= machContTimeNs3)
        {
          v12 = machContTimeNs3;
        }

        v21 += 16;
      }

      while (v72 != v20);
      v33 = v86;
      v92 = __ptr;
      v34 = v20;
      v5 = v69;
      v69->var0.var2 = v19;
      v69->var0.var3 = v86;
      v90 = v79;
      v69->var1.var2 = v81;
      v69->var1.var3 = v80;
      v18 = v83;
    }

    else
    {
      v19 = 0;
      v33 = 0;
      __ptr = 0;
      v34 = 0;
    }

    LODWORD(v91) = v34;
    LODWORD(v89) = v18;
    if (v85)
    {
      v35 = 0;
      v36 = a4;
      v37 = a4;
      v82 = v34;
      v84 = v34;
      do
      {
        v38 = [incompleteIntervalStarts objectAtIndexedSubscript:v35];
        machContTimeNs4 = [v38 machContTimeNs];
        v40 = machContTimeNs4;
        v87 = v33;
        if (v36)
        {
          v41 = v36 > machContTimeNs4;
          v36 -= machContTimeNs4;
          if (!v41)
          {
            signpost = [(WRSignpostTracker *)selfCopy signpost];
            individuationFieldName = [signpost individuationFieldName];

            signpost2 = [(WRSignpostTracker *)selfCopy signpost];
            v45 = signpost2;
            if (individuationFieldName)
            {
              [signpost2 individuationFieldName];

              [(WRSignpostTracker *)selfCopy individuationIdentifier];
              signpost3 = [(WRSignpostTracker *)selfCopy signpost];
              [signpost3 name];

              v47 = __error();
              v48 = *v47;
              v49 = _wrlog(v47);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                signpost4 = [(WRSignpostTracker *)selfCopy signpost];
                name = [signpost4 name];
                signpost5 = [(WRSignpostTracker *)selfCopy signpost];
                individuationFieldName2 = [signpost5 individuationFieldName];
                individuationIdentifier = [(WRSignpostTracker *)selfCopy individuationIdentifier];
                *buf = 138544386;
                v94 = @"<workflow>";
                v95 = 2114;
                v96 = name;
                v97 = 2114;
                v98 = *&individuationFieldName2;
                v99 = 2112;
                v100 = individuationIdentifier;
                v101 = 2048;
                v102 = (v40 - v37) / 1000000000.0;
                _os_log_error_impl(&dword_2746E5000, v49, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Interval start after event end (%.3f later)", buf, 0x34u);
              }
            }

            else
            {
              [signpost2 name];

              v50 = __error();
              v48 = *v50;
              v49 = _wrlog(v50);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                signpost6 = [(WRSignpostTracker *)selfCopy signpost];
                name2 = [signpost6 name];
                *buf = 138543874;
                v94 = @"<workflow>";
                v95 = 2114;
                v96 = name2;
                v97 = 2048;
                v98 = (v40 - v37) / 1000000000.0;
                _os_log_error_impl(&dword_2746E5000, v49, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: Interval start after event end (%.3f later)", buf, 0x20u);
              }
            }

            v36 = 0;
            *__error() = v48;
          }
        }

        __ptr = reallocf(__ptr, 16 * (v82 + v35 + 1));
        v51 = &__ptr[16 * (v82 + v35)];
        *v51 = v40;
        v51[1] = v36 + v40;
        v33 = v87;
        if (v87 <= v36)
        {
          v33 = v36;
        }

        v19 += v36;
        if (v14 >= v40)
        {
          v14 = v40;
        }

        ++v35;
        v36 = a4;
      }

      while (v85 != v35);
      v92 = __ptr;
      v34 = v84 + v35;
      v5 = v69;
      v69->var0.var2 = v19;
      v69->var0.var3 = v33;
    }

    LODWORD(v91) = v34;
    WRRangesSortAndCoalesce(&v91);
    v53 = v91;
    v54 = v92;
    emits = v67;
    if (v91)
    {
      v55 = *p_var1;
      v56 = v92 + 1;
      do
      {
        v55 += *v56 - *(v56 - 1);
        v56 += 2;
        --v53;
      }

      while (v53);
      *p_var1 = v55;
    }

    free(v54);
    if (v85)
    {
      WRRangesSortAndCoalesce(&v89);
      v57 = v89;
      if (v89)
      {
        var1 = v5->var1.var1;
        v59 = v90 + 8;
        do
        {
          var1 += *v59 - *(v59 - 1);
          v59 += 2;
          --v57;
        }

        while (v57);
        v5->var1.var1 = var1;
      }
    }

    else
    {
      v60 = *&v5->var0.var2;
      *&v66->var0 = *&v5->var0.var0;
      *&v66->var2 = v60;
      *&v66->var4 = *&v5->var0.var4;
    }

    free(v90);
  }

LABEL_57:
  if (v14 == -1)
  {
    v61 = 0;
  }

  else
  {
    v61 = v14;
  }

  v5->var0.var4 = v61;
  v5->var0.var5 = v12;
  if (v15 == -1)
  {
    v62 = 0;
  }

  else
  {
    v62 = v15;
  }

  v5->var1.var4 = v62;
  v5->var1.var5 = v12;

  return result;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(WRSignpost *)self->_signpost debugDescription];
  v5 = [v3 initWithFormat:@"Tracker for %@", v4];

  return v5;
}

- (id)initWithEncodedDict:(void *)dict signpost:(uint64_t *)signpost error:
{
  v79 = *MEMORY[0x277D85DE8];
  v54 = a2;
  dictCopy = dict;
  if (!self)
  {
    v20 = 0;
    goto LABEL_65;
  }

  v75 = 0;
  if (signpost)
  {
    *signpost = 0;
  }

  else
  {
    signpost = &v75;
  }

  v74.receiver = self;
  v74.super_class = WRSignpostTracker;
  v7 = objc_msgSendSuper2(&v74, sel_init);
  v15 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 2, dict);
    v16 = DictGetString(v54, @"st_individuation_identifier", signpost);
    v17 = v15[3];
    v15[3] = v16;

    if (!v15[3] && *signpost)
    {
      goto LABEL_13;
    }

    v52 = DictGetDict(v54, @"st_environment", signpost);
    if (!v52 && *signpost)
    {
      goto LABEL_18;
    }

    if ([v52 count])
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy_;
      v72 = __Block_byref_object_dispose_;
      v73 = 0;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __56__WRSignpostTracker_initWithEncodedDict_signpost_error___block_invoke;
      v67[3] = &unk_279EE3268;
      v67[4] = &v68;
      [v52 enumerateKeysAndObjectsUsingBlock:v67];
      v18 = v69[5];
      if (v18)
      {
        v19 = v18;
        *signpost = v18;
      }

      else
      {
        v21 = [v52 mutableCopy];
        v22 = v15[4];
        v15[4] = v21;
      }

      _Block_object_dispose(&v68, 8);

      if (v18)
      {
LABEL_18:
        v20 = 0;
LABEL_63:

        goto LABEL_64;
      }
    }

    v23 = objc_opt_class();
    v50 = DictGetArrayOfClass(v54, @"st_intervals", v23, signpost);
    if (!v50 && *signpost)
    {
      v20 = 0;
LABEL_62:

      goto LABEL_63;
    }

    if ([v50 count])
    {
      v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v50, "count")}];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = v50;
      v25 = [v24 countByEnumeratingWithState:&v63 objects:v78 count:16];
      if (v25)
      {
        v26 = *v64;
LABEL_23:
        v27 = 0;
        while (1)
        {
          if (*v64 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [[WRIntervalAndThreads alloc] initWithEncodedDict:signpost error:?];
          v29 = v28;
          if (!v28)
          {
            goto LABEL_59;
          }

          [(WRIntervalAndThreads *)v28 insertIntoSortedArray:v53];

          if (v25 == ++v27)
          {
            v25 = [v24 countByEnumeratingWithState:&v63 objects:v78 count:16];
            if (v25)
            {
              goto LABEL_23;
            }

            break;
          }
        }
      }

      v30 = v15[5];
      v15[5] = v53;
    }

    v31 = objc_opt_class();
    v53 = DictGetArrayOfClass(v54, @"st_emits", v31, signpost);
    if (!v53 && *signpost)
    {
      v20 = 0;
LABEL_61:

      goto LABEL_62;
    }

    if ([v53 count])
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v53, "count")}];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v32 = v53;
      v33 = [v32 countByEnumeratingWithState:&v59 objects:v77 count:16];
      if (v33)
      {
        v34 = *v60;
        while (2)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v60 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = [[WRTimestampAndThread alloc] initWithEncodedDict:signpost error:?];
            v37 = v36;
            if (!v36)
            {

              v20 = 0;
              v53 = v32;
              goto LABEL_60;
            }

            [(WRTimestampAndThread *)v36 insertIntoSortedArray:v24];
          }

          v33 = [v32 countByEnumeratingWithState:&v59 objects:v77 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v38 = v15[6];
      v15[6] = v24;
    }

    v39 = objc_opt_class();
    v40 = DictGetArrayOfClass(v54, @"st_incomplete_interval_starts", v39, signpost);
    v24 = v40;
    if (v40 || !*signpost)
    {
      if ([v40 count])
      {
        v41 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v42 = v24;
        v43 = [v42 countByEnumeratingWithState:&v55 objects:v76 count:16];
        if (v43)
        {
          v44 = *v56;
          while (2)
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v56 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = [[WRTimestampAndThread alloc] initWithEncodedDict:signpost error:?];
              v47 = v46;
              if (!v46)
              {

                v20 = 0;
                v24 = v42;
                goto LABEL_60;
              }

              [(WRTimestampAndThread *)v46 insertIntoSortedArray:v41];
            }

            v43 = [v42 countByEnumeratingWithState:&v55 objects:v76 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        v48 = v15[7];
        v15[7] = v41;
      }

      v20 = v15;
      goto LABEL_60;
    }

LABEL_59:
    v20 = 0;
LABEL_60:

    goto LABEL_61;
  }

  [(WRSignpostTracker *)signpost initWithEncodedDict:v8 signpost:v9 error:v10, v11, v12, v13, v14];
LABEL_13:
  v20 = 0;
LABEL_64:

LABEL_65:
  return v20;
}

void __56__WRSignpostTracker_initWithEncodedDict_signpost_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    ClassName = object_getClassName(v18);
    object_getClassName(v7);
    v15 = WRMakeError(6, @"Invalid type in environment (%s -> %s)", v9, v10, v11, v12, v13, v14, ClassName);
    v16 = *(*(a1 + 32) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a4 = 1;
  }
}

- (unint64_t)totalDurationNanoseconds
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  intervals = [(WRSignpostTracker *)self intervals];
  v3 = [intervals countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(intervals);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 end];
        machContTimeNs = [v9 machContTimeNs];
        start = [v8 start];
        v5 += machContTimeNs - [start machContTimeNs];
      }

      v4 = [intervals countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initWithSignpost:individuationIdentifier:
{
  OUTLINED_FUNCTION_55();
  v3 = v1;
  v4 = v0;
  if (v2)
  {
    v7.receiver = v2;
    v7.super_class = WRSignpostTracker;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    v2 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, v1);
      objc_storeStrong(v2 + 3, v0);
    }
  }

  return v2;
}

- (NSArray)intervals
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  v2 = [(WRSignpostTracker *)self copy];

  return v2;
}

- (NSArray)emits
{
  if (self)
  {
    self = OUTLINED_FUNCTION_94(self, a2);
  }

  v2 = [(WRSignpostTracker *)self copy];

  return v2;
}

- (NSArray)incompleteIntervalStarts
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v2 = [(WRSignpostTracker *)self copy];

  return v2;
}

- (NSDictionary)environment
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v2 = [(WRSignpostTracker *)self copy];

  return v2;
}

- (id)diagnosticsExceedingThresholdsWithEventStartNs:(id)ns eventEndNs:(const char *)endNs
{
  nsCopy = ns;
  if (ns)
  {
    objc_msgSend_statsWithEventEndNs_(ns, endNs);
    nsCopy = 0;
  }

  return nsCopy;
}

- (id)encodedDict
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    signpost = [selfCopy signpost];
    name = [signpost name];
    v7 = [OUTLINED_FUNCTION_40() initWithObjectsAndKeys:{@"st_name", 0}];

    individuationIdentifier = [selfCopy individuationIdentifier];
    [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

    environment = [selfCopy environment];
    [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

    intervals = [selfCopy intervals];
    v11 = [intervals count];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      intervals2 = [OUTLINED_FUNCTION_43() intervals];
      [intervals2 count];
      v14 = [OUTLINED_FUNCTION_88() initWithCapacity:?];

      memset(v53, 0, sizeof(v53));
      intervals3 = [selfCopy intervals];
      v16 = [intervals3 countByEnumeratingWithState:v53 objects:v56 count:16];
      if (v16)
      {
        v1 = v16;
        do
        {
          for (i = 0; i != v1; i = i + 1)
          {
            OUTLINED_FUNCTION_91();
            if (!v18)
            {
              objc_enumerationMutation(intervals3);
            }

            [(WRIntervalAndThreads *)*(*(&v53[0] + 1) + 8 * i) encodedDict];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_90() addObject:v2];
          }

          v1 = OUTLINED_FUNCTION_100(v19, v20, v53, v56);
        }

        while (v1);
      }

      v21 = [v14 copy];
      [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];
    }

    emits = [selfCopy emits];
    v23 = [emits count];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEB18]);
      emits2 = [OUTLINED_FUNCTION_43() emits];
      [emits2 count];
      v26 = [OUTLINED_FUNCTION_88() initWithCapacity:?];

      emits3 = [OUTLINED_FUNCTION_77() emits];
      v28 = [emits3 countByEnumeratingWithState:v51 objects:v55 count:16];
      if (v28)
      {
        v1 = v28;
        do
        {
          for (j = 0; j != v1; j = j + 1)
          {
            OUTLINED_FUNCTION_91();
            if (!v18)
            {
              objc_enumerationMutation(emits3);
            }

            [(WRTimestampAndThread *)*(v52 + 8 * j) encodedDict];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_90() addObject:v2];
          }

          v1 = OUTLINED_FUNCTION_100(v30, v31, v51, v55);
        }

        while (v1);
      }

      v32 = [v26 copy];
      [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];
    }

    incompleteIntervalStarts = [selfCopy incompleteIntervalStarts];
    v34 = [incompleteIntervalStarts count];

    if (v34)
    {
      v35 = objc_alloc(MEMORY[0x277CBEB18]);
      incompleteIntervalStarts2 = [OUTLINED_FUNCTION_43() incompleteIntervalStarts];
      [incompleteIntervalStarts2 count];
      v37 = [OUTLINED_FUNCTION_88() initWithCapacity:?];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      incompleteIntervalStarts3 = [selfCopy incompleteIntervalStarts];
      v39 = [incompleteIntervalStarts3 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v48;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v48 != v41)
            {
              objc_enumerationMutation(incompleteIntervalStarts3);
            }

            [(WRTimestampAndThread *)*(*(&v47 + 1) + 8 * k) encodedDict];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_33() addObject:v1];
          }

          v40 = OUTLINED_FUNCTION_74(v43, v44, &v47, v54);
        }

        while (v40);
      }

      v45 = [v37 copy];
      [OUTLINED_FUNCTION_49() setObject:? forKeyedSubscript:?];
    }

    selfCopy = [v7 copy];
  }

  return selfCopy;
}

- (BOOL)exceededDiagnosticThreshold
{
  v2 = [WRSignpostTracker diagnosticsExceedingThresholdsWithEventStartNs:a2 eventEndNs:?];
  v3 = [v2 count] != 0;

  return v3;
}

- (int)count
{
  selfCopy = self;
  if (self)
  {
    self = OUTLINED_FUNCTION_94(self, a2);
  }

  v4 = [(WRSignpostTracker *)self count];
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [Property count] + v4;
  incompleteIntervalStarts = [(WRSignpostTracker *)selfCopy incompleteIntervalStarts];
  v8 = [incompleteIntervalStarts count];

  return v6 + v8;
}

- (id)initWithEncodedDict:(uint64_t)a3 signpost:(uint64_t)a4 error:(uint64_t)a5 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(2, @"Unable to init WRSignpostTracker", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

@end