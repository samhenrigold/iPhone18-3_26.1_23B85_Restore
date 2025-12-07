@interface OSALegacyXform
+ (id)rollSchemaForward:(id)forward;
+ (id)transformURL:(id)l template:(id)template options:(id)options;
- (BOOL)prepareTemplate:(id)template forLogType:(id)type error:(id *)error;
- (BOOL)transformJSON:(id)n header:(id)header error:(id *)error streamingBlock:(id)block;
- (BOOL)transformLines:(id)lines withDefinitions:(id)definitions body:(id)body header:(id)header error:(id *)error streamingBlock:(id)block;
- (OSALegacyXform)init;
- (id)_getValueForKey:(id)key fromBody:(id)body orHeader:(id)header;
- (id)_hexDump:(id)dump offset:(int)offset indicator:(BOOL)indicator;
- (id)formatArm32ThreadState:(id)state index:(int)index;
- (id)formatArm64ThreadState:(id)state index:(int)index;
- (id)formatCallstacks:(id)callstacks withImages:(id)images macosStyle:(BOOL)style;
- (id)formatFrame:(id)frame withImages:(id)images macosStyle:(BOOL)style;
- (id)formatImages:(id)images macosStyle:(BOOL)style;
- (id)formatInstructionState:(id)state index:(int)index;
- (id)formatLastBranchState:(id)state index:(int)index withImages:(id)images;
- (id)formatLastException:(id)exception withImages:(id)images;
- (id)formatX86ThreadState:(id)state index:(int)index;
@end

@implementation OSALegacyXform

- (OSALegacyXform)init
{
  v6.receiver = self;
  v6.super_class = OSALegacyXform;
  v2 = [(OSALegacyXform *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    templates = v2->_templates;
    v2->_templates = v3;
  }

  return v2;
}

- (BOOL)prepareTemplate:(id)template forLogType:(id)type error:(id *)error
{
  typeCopy = type;
  v8 = [template componentsSeparatedByString:@"\n"];
  [(NSMutableDictionary *)self->_templates setValue:v8 forKey:typeCopy];

  return 0;
}

- (id)formatFrame:(id)frame withImages:(id)images macosStyle:(BOOL)style
{
  v50 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  imagesCopy = images;
  v9 = [frameCopy objectForKeyedSubscript:@"imageIndex"];
  v10 = v9;
  if (v9)
  {
    v11 = [imagesCopy objectAtIndexedSubscript:{objc_msgSend(v9, "intValue")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectForKeyedSubscript:@"name"];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"???";
  }

  if ([(__CFString *)v13 length]< 0x1F)
  {
    v16 = [(__CFString *)v13 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
  }

  else
  {
    if (style)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = [(__CFString *)v13 substringFromIndex:[(__CFString *)v13 length]- 27];
    v16 = [v14 stringWithFormat:@"...%@", v15];

    v13 = v15;
  }

  v13 = v16;
LABEL_12:
  v17 = [v11 objectForKeyedSubscript:@"base"];
  unsignedLongLongValue = [v17 unsignedLongLongValue];

  v19 = [frameCopy objectForKeyedSubscript:@"imageOffset"];
  unsignedLongLongValue2 = [v19 unsignedLongLongValue];

  v21 = unsignedLongLongValue + unsignedLongLongValue2;
  if ([frameCopy count] < 3)
  {
    if (unsignedLongLongValue && unsignedLongLongValue2)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p + %llu", unsignedLongLongValue, unsignedLongLongValue2];
    }

    else
    {
      if (!unsignedLongLongValue)
      {
        v21 = unsignedLongLongValue2;
      }

      v23 = @"???";
    }
  }

  else
  {
    v46 = [frameCopy objectForKeyedSubscript:@"symbol"];
    v22 = [frameCopy objectForKeyedSubscript:@"symbolLocation"];
    v47 = unsignedLongLongValue + unsignedLongLongValue2;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue2 = [v22 unsignedLongLongValue];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v22;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** ignoring non-numeric symbolLocation: '%@'", buf, 0xCu);
      }
    }

    v45 = imagesCopy;
    v24 = [frameCopy objectForKeyedSubscript:@"sourceFile"];
    v25 = [frameCopy objectForKeyedSubscript:@"sourceLine"];
    v26 = v25;
    v43 = v22;
    v44 = v11;
    v27 = &stru_1F2411100;
    if (v24 && v25)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@:%@)", v24, v25];
    }

    v28 = [frameCopy objectForKeyedSubscript:@"inline"];
    v29 = v28;
    v30 = v46;
    if (v46)
    {
      v31 = MEMORY[0x1E696AEC0];
      bOOLValue = [v28 BOOLValue];
      v33 = @" [inlined]";
      if (!bOOLValue)
      {
        v33 = &stru_1F2411100;
      }

      v23 = [v31 stringWithFormat:@"%@ + %llu%@%@", v46, unsignedLongLongValue2, v27, v33, v43];
    }

    else
    {
      if (unsignedLongLongValue && unsignedLongLongValue2)
      {
        v34 = MEMORY[0x1E696AEC0];
        bOOLValue2 = [v28 BOOLValue];
        v36 = @" [inlined]";
        if (!bOOLValue2)
        {
          v36 = &stru_1F2411100;
        }

        v23 = [v34 stringWithFormat:@"%p + %llu%@%@", v47 - unsignedLongLongValue2, unsignedLongLongValue2, v27, v36, v43];
      }

      else
      {
        v37 = v47;
        if (!unsignedLongLongValue)
        {
          v37 = unsignedLongLongValue2;
        }

        v47 = v37;
        v23 = @"???";
      }

      v38 = [frameCopy objectForKeyedSubscript:@"region"];
      v39 = v38;
      if (v38)
      {
        v40 = v38;

        v13 = v40;
      }

      v30 = 0;
    }

    imagesCopy = v45;
    v21 = v47;
    v11 = v44;
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t%18p %@", v13, v21, v23];

  return v41;
}

- (id)formatCallstacks:(id)callstacks withImages:(id)images macosStyle:(BOOL)style
{
  styleCopy = style;
  v89 = *MEMORY[0x1E69E9840];
  callstacksCopy = callstacks;
  imagesCopy = images;
  array = [MEMORY[0x1E695DF70] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = callstacksCopy;
  v62 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v62)
  {
    v8 = -1;
    v61 = *v84;
    v9 = 0x1E696A000uLL;
    v67 = imagesCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v84 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * v10);
        v12 = (v8 + 1);
        v13 = [v11 objectForKeyedSubscript:@"name"];
        v14 = [v11 objectForKeyedSubscript:@"queue"];
        v15 = v14;
        v65 = v10;
        v66 = v12;
        if (styleCopy)
        {
          v16 = *(v9 + 3776);
          v17 = [v11 objectForKeyedSubscript:@"triggered"];
          v18 = @" Crashed";
          if (!v17)
          {
            v18 = &stru_1F2411100;
          }

          v19 = @": ";
          if (!(v13 | v15))
          {
            v19 = &stru_1F2411100;
          }

          if (v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = &stru_1F2411100;
          }

          v21 = @" Dispatch queue: ";
          if (v15)
          {
            v22 = v15;
          }

          else
          {
            v21 = &stru_1F2411100;
            v22 = &stru_1F2411100;
          }

          [v16 stringWithFormat:@"Thread %d%@:%@%@%@%@", v12, v18, v19, v20, v21, v22];
        }

        else
        {
          if (v13 | v14)
          {
            if (v13)
            {
              v23 = v13;
            }

            else
            {
              v23 = &stru_1F2411100;
            }

            v24 = @" Dispatch queue: ";
            if (v14)
            {
              v25 = v14;
            }

            else
            {
              v24 = &stru_1F2411100;
              v25 = &stru_1F2411100;
            }

            v56 = v24;
            v57 = v25;
            v26 = [*(v9 + 3776) stringWithFormat:@"Thread %d name:  %@%@%@", v12, v23];
            [array addObject:v26];
          }

          v27 = *(v9 + 3776);
          v17 = [v11 objectForKeyedSubscript:@"triggered"];
          v28 = @" Crashed";
          if (!v17)
          {
            v28 = &stru_1F2411100;
          }

          [v27 stringWithFormat:@"Thread %d%@:", v12, v28, v56, v57, v58, v59];
        }
        v29 = ;
        v63 = v15;
        v64 = v13;
        [array addObject:v29];

        v30 = [v11 objectForKeyedSubscript:@"originalLength"];
        unsignedIntValue = [v30 unsignedIntValue];

        v32 = [*(v9 + 3776) stringWithFormat:@"%u", unsignedIntValue];
        v33 = [v32 length];

        if (v33 <= 3)
        {
          v34 = 3;
        }

        else
        {
          v34 = v33;
        }

        v73 = v34;
        v78 = [v11 objectForKeyedSubscript:@"recursionInfoArray"];
        v68 = [v78 count];
        v35 = [v11 objectForKeyedSubscript:@"frames"];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v70 = v35;
        v76 = [v35 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (!v76)
        {
          v36 = 0;
          v38 = 0;
          goto LABEL_60;
        }

        v69 = 0;
        v36 = 0;
        depth = 0;
        v38 = 0;
        v77 = 0;
        v72 = *v80;
        v39 = -1;
        do
        {
          v40 = 0;
          do
          {
            if (*v80 != v72)
            {
              objc_enumerationMutation(v70);
            }

            v41 = *(*(&v79 + 1) + 8 * v40);
            if (!v78 || v36)
            {
              v43 = v38;
            }

            else if (v69 >= v68)
            {
              v43 = v38;
              v36 = 0;
            }

            else
            {
              v42 = [v78 objectAtIndexedSubscript:v69];
              v36 = [objc_alloc(MEMORY[0x1E69D4F30]) initWithDictionary:v42];
              depth = [v36 depth];
              v43 = [v42 objectForKeyedSubscript:@"keyFrame"];
            }

            v44 = MEMORY[0x1E696AEC0];
            v56 = [(OSALegacyXform *)self formatFrame:v41 withImages:imagesCopy macosStyle:styleCopy];
            v45 = [v44 stringWithFormat:@"%-*u %@", v73, (v77 + v39 + 1)];
            [array addObject:v45];

            if (!depth)
            {
              goto LABEL_46;
            }

            v46 = [v41 objectForKeyedSubscript:@"inline"];
            if (v46)
            {

LABEL_46:
              v38 = v43;
              goto LABEL_47;
            }

            v38 = v43;
            v47 = [v43 objectForKeyedSubscript:@"imageIndex"];
            v48 = [v41 objectForKeyedSubscript:@"imageIndex"];
            if ([v47 isEqual:v48])
            {
              v49 = [v43 objectForKeyedSubscript:@"imageOffset"];
              v50 = [v41 objectForKeyedSubscript:@"imageOffset"];
              v51 = [v49 isEqual:v50];

              if (!v51)
              {
                imagesCopy = v67;
                goto LABEL_46;
              }

              v38 = v43;
              if (depth == [v36 depth] - 2)
              {
                coldestElided = [v36 coldestElided];
                v77 = v77 + coldestElided - [v36 hottestElided] + 1;
                depth = 3;
                imagesCopy = v67;
              }

              else
              {
                --depth;
                imagesCopy = v67;
                if (!depth)
                {
                  ++v69;

                  v36 = 0;
                }
              }
            }

            else
            {
            }

LABEL_47:
            ++v40;
            ++v39;
          }

          while (v76 != v40);
          v53 = [v70 countByEnumeratingWithState:&v79 objects:v87 count:16];
          v76 = v53;
        }

        while (v53);
LABEL_60:
        [array addObject:&stru_1F2411100];

        v8 = v66;
        v10 = v65 + 1;
        v9 = 0x1E696A000;
      }

      while (v65 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v62);
  }

  v54 = [array componentsJoinedByString:@"\n"];

  return v54;
}

- (id)formatImages:(id)images macosStyle:(BOOL)style
{
  styleCopy = style;
  v47 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  v38 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = imagesCopy;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v39)
  {
    v37 = *v43;
    v34 = styleCopy;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"uuid"];
        v9 = v8;
        if (!styleCopy)
        {
          v10 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F2411100];

          v9 = v10;
        }

        v41 = [v7 objectForKeyedSubscript:@"base"];
        unsignedLongLongValue = [v41 unsignedLongLongValue];
        v12 = [v7 objectForKeyedSubscript:@"size"];
        v40 = unsignedLongLongValue + [v12 unsignedLongLongValue] - 1;

        v13 = [v7 objectForKeyedSubscript:@"name"];
        v14 = [v7 objectForKeyedSubscript:@"arch"];
        v15 = [v7 objectForKeyedSubscript:@"path"];
        v16 = v15;
        if (styleCopy)
        {
          v17 = [v7 objectForKeyedSubscript:@"CFBundleIdentifier"];
          if ([v17 length])
          {
            v18 = v17;

            v13 = v18;
          }

          v19 = [v7 objectForKeyedSubscript:@"CFBundleShortVersionString"];
          if (![(__CFString *)v19 length])
          {

            v19 = @"*";
          }

          v20 = MEMORY[0x1E696AEC0];
          if (v13)
          {
            v21 = 0;
            v22 = v13;
          }

          else if (v16)
          {
            [(__CFString *)v16 lastPathComponent];
            v33 = v21 = 1;
            v22 = v33;
          }

          else
          {
            v21 = 0;
            v22 = @"???";
          }

          v26 = @"???";
          if (v16)
          {
            v26 = v16;
          }

          v27 = [v20 stringWithFormat:@"%18p - %18p %@ (%@) <%@> %@", unsignedLongLongValue, v40, v22, v19, v9, v26];
          [v38 addObject:v27];

          if (v21)
          {
          }

          styleCopy = v34;
LABEL_33:

          goto LABEL_34;
        }

        v23 = MEMORY[0x1E696AEC0];
        if (v13)
        {
          v24 = 0;
          v25 = v13;
        }

        else if (v15)
        {
          [(__CFString *)v15 lastPathComponent];
          v36 = v24 = 1;
          v25 = v36;
        }

        else
        {
          v24 = 0;
          v25 = @"???";
        }

        v28 = @"unknown-arch";
        if (v14)
        {
          v28 = v14;
        }

        v29 = @"???";
        if (v16)
        {
          v29 = v16;
        }

        v30 = [v23 stringWithFormat:@"%18p - %18p %@ %@  <%@> %@", unsignedLongLongValue, v40, v25, v28, v9, v29];
        [v38 addObject:v30];

        v17 = v36;
        if (v24)
        {
          goto LABEL_33;
        }

LABEL_34:
      }

      v39 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v39);
  }

  v31 = [v38 componentsJoinedByString:@"\n"];

  return v31;
}

- (id)formatArm32ThreadState:(id)state index:(int)index
{
  v50 = *&index;
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:@"r"];
  v48 = MEMORY[0x1E696AEC0];
  v59 = [v5 objectAtIndexedSubscript:0];
  v58 = [v59 objectForKeyedSubscript:@"value"];
  unsignedIntValue = [v58 unsignedIntValue];
  v57 = [v5 objectAtIndexedSubscript:1];
  v56 = [v57 objectForKeyedSubscript:@"value"];
  unsignedIntValue2 = [v56 unsignedIntValue];
  v55 = [v5 objectAtIndexedSubscript:2];
  v54 = [v55 objectForKeyedSubscript:@"value"];
  unsignedIntValue3 = [v54 unsignedIntValue];
  v53 = [v5 objectAtIndexedSubscript:3];
  v52 = [v53 objectForKeyedSubscript:@"value"];
  unsignedIntValue4 = [v52 unsignedIntValue];
  v51 = [v5 objectAtIndexedSubscript:4];
  v49 = [v51 objectForKeyedSubscript:@"value"];
  unsignedIntValue5 = [v49 unsignedIntValue];
  v47 = [v5 objectAtIndexedSubscript:5];
  v46 = [v47 objectForKeyedSubscript:@"value"];
  unsignedIntValue6 = [v46 unsignedIntValue];
  v44 = [v5 objectAtIndexedSubscript:6];
  v43 = [v44 objectForKeyedSubscript:@"value"];
  unsignedIntValue7 = [v43 unsignedIntValue];
  v41 = [v5 objectAtIndexedSubscript:7];
  v39 = [v41 objectForKeyedSubscript:@"value"];
  unsignedIntValue8 = [v39 unsignedIntValue];
  v38 = [v5 objectAtIndexedSubscript:8];
  v36 = [v38 objectForKeyedSubscript:@"value"];
  unsignedIntValue9 = [v36 unsignedIntValue];
  v34 = [v5 objectAtIndexedSubscript:9];
  v33 = [v34 objectForKeyedSubscript:@"value"];
  unsignedIntValue10 = [v33 unsignedIntValue];
  v31 = [v5 objectAtIndexedSubscript:10];
  v29 = [v31 objectForKeyedSubscript:@"value"];
  unsignedIntValue11 = [v29 unsignedIntValue];
  v28 = [v5 objectAtIndexedSubscript:11];
  v26 = [v28 objectForKeyedSubscript:@"value"];
  unsignedIntValue12 = [v26 unsignedIntValue];
  v24 = [stateCopy objectForKeyedSubscript:@"ip"];
  v23 = [v24 objectForKeyedSubscript:@"value"];
  unsignedIntValue13 = [v23 unsignedIntValue];
  v21 = [stateCopy objectForKeyedSubscript:@"sp"];
  v20 = [v21 objectForKeyedSubscript:@"value"];
  unsignedIntValue14 = [v20 unsignedIntValue];
  v18 = [stateCopy objectForKeyedSubscript:@"lr"];
  v7 = [v18 objectForKeyedSubscript:@"value"];
  unsignedIntValue15 = [v7 unsignedIntValue];
  v9 = [stateCopy objectForKeyedSubscript:@"pc"];
  v10 = [v9 objectForKeyedSubscript:@"value"];
  unsignedIntValue16 = [v10 unsignedIntValue];
  v12 = [stateCopy objectForKeyedSubscript:@"cpsr"];

  v13 = [v12 objectForKeyedSubscript:@"value"];
  v14 = [v48 stringWithFormat:@"Thread %d crashed with ARM Thread State (32-bit):\n    r0: 0x%08x    r1: 0x%08x      r2: 0x%08x      r3: 0x%08x\n    r4: 0x%08x    r5: 0x%08x      r6: 0x%08x      r7: 0x%08x\n    r8: 0x%08x    r9: 0x%08x     r10: 0x%08x     r11: 0x%08x\n    ip: 0x%08x    sp: 0x%08x      lr: 0x%08x      pc: 0x%08x\n  cpsr: 0x%08x", v50, unsignedIntValue, unsignedIntValue2, unsignedIntValue3, unsignedIntValue4, unsignedIntValue5, unsignedIntValue6, unsignedIntValue7, unsignedIntValue8, unsignedIntValue9, unsignedIntValue10, unsignedIntValue11, unsignedIntValue12, unsignedIntValue13, unsignedIntValue14, unsignedIntValue15, unsignedIntValue16, objc_msgSend(v13, "unsignedIntValue")];

  return v14;
}

- (id)formatArm64ThreadState:(id)state index:(int)index
{
  v98 = *&index;
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:@"x"];
  v96 = MEMORY[0x1E696AEC0];
  v119 = [v5 objectAtIndexedSubscript:0];
  v118 = [v119 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue = [v118 unsignedLongLongValue];
  v117 = [v5 objectAtIndexedSubscript:1];
  v116 = [v117 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue2 = [v116 unsignedLongLongValue];
  v115 = [v5 objectAtIndexedSubscript:2];
  v114 = [v115 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue3 = [v114 unsignedLongLongValue];
  v113 = [v5 objectAtIndexedSubscript:3];
  v112 = [v113 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue4 = [v112 unsignedLongLongValue];
  v111 = [v5 objectAtIndexedSubscript:4];
  v110 = [v111 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue5 = [v110 unsignedLongLongValue];
  v109 = [v5 objectAtIndexedSubscript:5];
  v108 = [v109 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue6 = [v108 unsignedLongLongValue];
  v107 = [v5 objectAtIndexedSubscript:6];
  v106 = [v107 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue7 = [v106 unsignedLongLongValue];
  v105 = [v5 objectAtIndexedSubscript:7];
  v104 = [v105 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue8 = [v104 unsignedLongLongValue];
  v103 = [v5 objectAtIndexedSubscript:8];
  v102 = [v103 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue9 = [v102 unsignedLongLongValue];
  v101 = [v5 objectAtIndexedSubscript:9];
  v100 = [v101 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue10 = [v100 unsignedLongLongValue];
  v99 = [v5 objectAtIndexedSubscript:10];
  v97 = [v99 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue11 = [v97 unsignedLongLongValue];
  v95 = [v5 objectAtIndexedSubscript:11];
  v94 = [v95 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue12 = [v94 unsignedLongLongValue];
  v92 = [v5 objectAtIndexedSubscript:12];
  v90 = [v92 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue13 = [v90 unsignedLongLongValue];
  v89 = [v5 objectAtIndexedSubscript:13];
  v87 = [v89 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue14 = [v87 unsignedLongLongValue];
  v85 = [v5 objectAtIndexedSubscript:14];
  v84 = [v85 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue15 = [v84 unsignedLongLongValue];
  v82 = [v5 objectAtIndexedSubscript:15];
  v80 = [v82 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue16 = [v80 unsignedLongLongValue];
  v79 = [v5 objectAtIndexedSubscript:16];
  v77 = [v79 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue17 = [v77 unsignedLongLongValue];
  v75 = [v5 objectAtIndexedSubscript:17];
  v74 = [v75 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue18 = [v74 unsignedLongLongValue];
  v72 = [v5 objectAtIndexedSubscript:18];
  v70 = [v72 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue19 = [v70 unsignedLongLongValue];
  v69 = [v5 objectAtIndexedSubscript:19];
  v67 = [v69 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue20 = [v67 unsignedLongLongValue];
  v65 = [v5 objectAtIndexedSubscript:20];
  v64 = [v65 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue21 = [v64 unsignedLongLongValue];
  v62 = [v5 objectAtIndexedSubscript:21];
  v60 = [v62 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue22 = [v60 unsignedLongLongValue];
  v58 = [v5 objectAtIndexedSubscript:22];
  v57 = [v58 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue23 = [v57 unsignedLongLongValue];
  v55 = [v5 objectAtIndexedSubscript:23];
  v54 = [v55 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue24 = [v54 unsignedLongLongValue];
  v52 = [v5 objectAtIndexedSubscript:24];
  v50 = [v52 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue25 = [v50 unsignedLongLongValue];
  v48 = [v5 objectAtIndexedSubscript:25];
  v47 = [v48 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue26 = [v47 unsignedLongLongValue];
  v45 = [v5 objectAtIndexedSubscript:26];
  v44 = [v45 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue27 = [v44 unsignedLongLongValue];
  v42 = [v5 objectAtIndexedSubscript:27];
  v40 = [v42 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue28 = [v40 unsignedLongLongValue];
  v38 = [v5 objectAtIndexedSubscript:28];
  v37 = [v38 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue29 = [v37 unsignedLongLongValue];
  v35 = [stateCopy objectForKeyedSubscript:@"fp"];
  v34 = [v35 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue30 = [v34 unsignedLongLongValue];
  v32 = [stateCopy objectForKeyedSubscript:@"lr"];
  v30 = [v32 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue31 = [v30 unsignedLongLongValue];
  v28 = [stateCopy objectForKeyedSubscript:@"sp"];
  v27 = [v28 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue32 = [v27 unsignedLongLongValue];
  v26 = [stateCopy objectForKeyedSubscript:@"pc"];
  v24 = [v26 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue33 = [v24 unsignedLongLongValue];
  v23 = [stateCopy objectForKeyedSubscript:@"cpsr"];
  v21 = [v23 objectForKeyedSubscript:@"value"];
  unsignedIntValue = [v21 unsignedIntValue];
  v19 = [stateCopy objectForKeyedSubscript:@"far"];
  v7 = [v19 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue34 = [v7 unsignedLongLongValue];
  v9 = [stateCopy objectForKeyedSubscript:@"esr"];
  v10 = [v9 objectForKeyedSubscript:@"value"];
  unsignedIntValue2 = [v10 unsignedIntValue];
  v12 = [stateCopy objectForKeyedSubscript:@"esr"];

  v13 = [v12 objectForKeyedSubscript:@"description"];
  v14 = [v96 stringWithFormat:@"Thread %d crashed with ARM Thread State (64-bit):\n    x0: 0x%016qx   x1: 0x%016qx   x2: 0x%016qx   x3: 0x%016qx\n    x4: 0x%016qx   x5: 0x%016qx   x6: 0x%016qx   x7: 0x%016qx\n    x8: 0x%016qx   x9: 0x%016qx  x10: 0x%016qx  x11: 0x%016qx\n   x12: 0x%016qx  x13: 0x%016qx  x14: 0x%016qx  x15: 0x%016qx\n   x16: 0x%016qx  x17: 0x%016qx  x18: 0x%016qx  x19: 0x%016qx\n   x20: 0x%016qx  x21: 0x%016qx  x22: 0x%016qx  x23: 0x%016qx\n   x24: 0x%016qx  x25: 0x%016qx  x26: 0x%016qx  x27: 0x%016qx\n   x28: 0x%016qx   fp: 0x%016llx   lr: 0x%016llx\n    sp: 0x%016llx   pc: 0x%016llx cpsr: 0x%08x\n   far: 0x%016llx  esr: 0x%08x %@", v98, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue3, unsignedLongLongValue4, unsignedLongLongValue5, unsignedLongLongValue6, unsignedLongLongValue7, unsignedLongLongValue8, unsignedLongLongValue9, unsignedLongLongValue10, unsignedLongLongValue11, unsignedLongLongValue12, unsignedLongLongValue13, unsignedLongLongValue14, unsignedLongLongValue15, unsignedLongLongValue16, unsignedLongLongValue17, unsignedLongLongValue18, unsignedLongLongValue19, unsignedLongLongValue20, unsignedLongLongValue21, unsignedLongLongValue22, unsignedLongLongValue23, unsignedLongLongValue24, unsignedLongLongValue25, unsignedLongLongValue26, unsignedLongLongValue27, unsignedLongLongValue28, unsignedLongLongValue29, unsignedLongLongValue30, unsignedLongLongValue31, unsignedLongLongValue32, unsignedLongLongValue33, unsignedIntValue, unsignedLongLongValue34, unsignedIntValue2, v13];

  return v14;
}

- (id)formatX86ThreadState:(id)state index:(int)index
{
  v80 = *&index;
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:@"rosetta"];
  v81 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 objectForKeyedSubscript:@"tmp0"];
    v82 = [v8 objectForKeyedSubscript:@"value"];
    unsignedLongLongValue = [v82 unsignedLongLongValue];
    v10 = [v6 objectForKeyedSubscript:@"tmp1"];
    v11 = [v10 objectForKeyedSubscript:@"value"];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];
    v13 = [v6 objectForKeyedSubscript:@"tmp2"];
    v14 = [v13 objectForKeyedSubscript:@"value"];
    v84 = [v7 stringWithFormat:@"\n tmp0: 0x%016qx tmp1: 0x%016qx tmp2: 0x%016qx\n", unsignedLongLongValue, unsignedLongLongValue2, objc_msgSend(v14, "unsignedLongLongValue")];
  }

  else
  {
    v15 = [stateCopy objectForKeyedSubscript:@"trap"];
    v16 = [v15 objectForKeyedSubscript:@"description"];

    v85 = MEMORY[0x1E696AEC0];
    v82 = [stateCopy objectForKeyedSubscript:@"cr2"];
    v10 = [v82 objectForKeyedSubscript:@"value"];
    unsignedLongLongValue3 = [v10 unsignedLongLongValue];
    v11 = [stateCopy objectForKeyedSubscript:@"cpu"];
    v13 = [v11 objectForKeyedSubscript:@"value"];
    intValue = [v13 intValue];
    v14 = [stateCopy objectForKeyedSubscript:@"err"];
    v17 = [v14 objectForKeyedSubscript:@"value"];
    unsignedIntValue = [v17 unsignedIntValue];
    v74 = v16;
    if (!v16)
    {
      v16 = &stru_1F2411100;
    }

    v19 = [stateCopy objectForKeyedSubscript:@"trap"];
    v20 = [v19 objectForKeyedSubscript:@"value"];
    v84 = [v85 stringWithFormat:@"  cr2: 0x%016qx\n  \nLogical CPU:     %d\nError Code:      0x%08x %@\nTrap Number:     %d\n", unsignedLongLongValue3, intValue, unsignedIntValue, v16, objc_msgSend(v20, "intValue")];

    v8 = v74;
  }

  v21 = [stateCopy objectForKeyedSubscript:@"rip"];
  v22 = [v21 objectForKeyedSubscript:@"value"];

  v79 = v22;
  if (v22)
  {
    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%016qx", objc_msgSend(v22, "unsignedLongLongValue")];
  }

  else
  {
    v83 = @"<unavailable>     ";
  }

  v65 = MEMORY[0x1E696AEC0];
  v77 = [stateCopy objectForKeyedSubscript:@"rax"];
  v75 = [v77 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue4 = [v75 unsignedLongLongValue];
  v73 = [stateCopy objectForKeyedSubscript:@"rbx"];
  v72 = [v73 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue5 = [v72 unsignedLongLongValue];
  v71 = [stateCopy objectForKeyedSubscript:@"rcx"];
  v70 = [v71 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue6 = [v70 unsignedLongLongValue];
  v69 = [stateCopy objectForKeyedSubscript:@"rdx"];
  v68 = [v69 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue7 = [v68 unsignedLongLongValue];
  v67 = [stateCopy objectForKeyedSubscript:@"rdi"];
  v66 = [v67 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue8 = [v66 unsignedLongLongValue];
  v64 = [stateCopy objectForKeyedSubscript:@"rsi"];
  v63 = [v64 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue9 = [v63 unsignedLongLongValue];
  v61 = [stateCopy objectForKeyedSubscript:@"rbp"];
  v60 = [v61 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue10 = [v60 unsignedLongLongValue];
  v58 = [stateCopy objectForKeyedSubscript:@"rsp"];
  v56 = [v58 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue11 = [v56 unsignedLongLongValue];
  v55 = [stateCopy objectForKeyedSubscript:@"r8"];
  v53 = [v55 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue12 = [v53 unsignedLongLongValue];
  v51 = [stateCopy objectForKeyedSubscript:@"r9"];
  v50 = [v51 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue13 = [v50 unsignedLongLongValue];
  v48 = [stateCopy objectForKeyedSubscript:@"r10"];
  v46 = [v48 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue14 = [v46 unsignedLongLongValue];
  v45 = [stateCopy objectForKeyedSubscript:@"r11"];
  v43 = [v45 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue15 = [v43 unsignedLongLongValue];
  v41 = [stateCopy objectForKeyedSubscript:@"r12"];
  v40 = [v41 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue16 = [v40 unsignedLongLongValue];
  v38 = [stateCopy objectForKeyedSubscript:@"r13"];
  v36 = [v38 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue17 = [v36 unsignedLongLongValue];
  v24 = [stateCopy objectForKeyedSubscript:@"r14"];
  v25 = [v24 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue18 = [v25 unsignedLongLongValue];
  v27 = [stateCopy objectForKeyedSubscript:@"r15"];
  v28 = [v27 objectForKeyedSubscript:@"value"];
  unsignedLongLongValue19 = [v28 unsignedLongLongValue];
  v30 = [stateCopy objectForKeyedSubscript:@"rflags"];
  v31 = [v30 objectForKeyedSubscript:@"value"];
  v32 = [v65 stringWithFormat:@"Thread %d crashed with X86 Thread State (64-bit):\n  rax: 0x%016qx  rbx: 0x%016qx  rcx: 0x%016qx  rdx: 0x%016qx\n  rdi: 0x%016qx  rsi: 0x%016qx  rbp: 0x%016qx  rsp: 0x%016qx\n   r8: 0x%016qx   r9: 0x%016qx  r10: 0x%016qx  r11: 0x%016qx\n  r12: 0x%016qx  r13: 0x%016qx  r14: 0x%016qx  r15: 0x%016qx\n  rip: %@  rfl: 0x%016qx%@", v80, unsignedLongLongValue4, unsignedLongLongValue5, unsignedLongLongValue6, unsignedLongLongValue7, unsignedLongLongValue8, unsignedLongLongValue9, unsignedLongLongValue10, unsignedLongLongValue11, unsignedLongLongValue12, unsignedLongLongValue13, unsignedLongLongValue14, unsignedLongLongValue15, unsignedLongLongValue16, unsignedLongLongValue17, unsignedLongLongValue18, unsignedLongLongValue19, v83, objc_msgSend(v31, "unsignedLongLongValue"), v84];

  return v32;
}

- (id)formatLastException:(id)exception withImages:(id)images
{
  v25 = *MEMORY[0x1E69E9840];
  exceptionCopy = exception;
  imagesCopy = images;
  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = exceptionCopy;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    LODWORD(v12) = -1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v12 = (v12 + 1);
        v14 = MEMORY[0x1E696AEC0];
        v15 = [(OSALegacyXform *)self formatFrame:*(*(&v20 + 1) + 8 * i) withImages:imagesCopy macosStyle:0];
        v16 = [v14 stringWithFormat:@"%-3d %@", v12, v15];
        [v8 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v8 componentsJoinedByString:@"\n"];

  return v17;
}

- (id)formatLastBranchState:(id)state index:(int)index withImages:(id)images
{
  v7 = *&index;
  stateCopy = state;
  imagesCopy = images;
  v9 = objc_opt_new();
  v10 = 0x1E696A000uLL;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %d last branch register state:", v7];
  v27 = v9;
  [v9 addObject:v11];

  if ([stateCopy count])
  {
    v12 = 0;
    v25 = stateCopy;
    do
    {
      v13 = [stateCopy objectAtIndexedSubscript:v12];
      v14 = [v13 objectAtIndexedSubscript:2];
      v15 = *(v10 + 3776);
      v30 = [v13 objectAtIndexedSubscript:0];
      v16 = [OSALegacyXform formatFrame:"formatFrame:withImages:macosStyle:" withImages:? macosStyle:?];
      v17 = [v13 objectAtIndexedSubscript:1];
      v18 = [(OSALegacyXform *)self formatFrame:v17 withImages:imagesCopy macosStyle:1];
      v19 = [v14 count];
      if (v19)
      {
        v20 = *(v10 + 3776);
        v29 = [v14 componentsJoinedByString:{@", "}];
        v5 = [v20 stringWithFormat:@"(%@)", v29];
        v21 = v5;
      }

      else
      {
        v21 = &stru_1F2411100;
      }

      v22 = [v15 stringWithFormat:@"  [%02d] (%@) -> (%@)\t%@", v12, v16, v18, v21];
      [v27 addObject:v22];

      if (v19)
      {
      }

      ++v12;
      stateCopy = v25;
      v10 = 0x1E696A000;
    }

    while ([v25 count] > v12);
  }

  v23 = [v27 componentsJoinedByString:@"\n"];

  return v23;
}

- (id)_hexDump:(id)dump offset:(int)offset indicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v25 = *MEMORY[0x1E69E9840];
  dumpCopy = dump;
  v8 = objc_opt_new();
  v23 = 0u;
  memset(v24, 0, 28);
  v21 = 0u;
  v22 = 0u;
  *__str = 0;
  if ([dumpCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [dumpCopy objectAtIndexedSubscript:v9];
      intValue = [v10 intValue];

      v12 = v9 & 0xF;
      if (v12 == 9)
      {
        BYTE9(v22) = 45;
      }

      else if ((v9 & 0xF) == 0)
      {
        strcpy(v24 + 15, "    ");
        *&v13 = 0x2020202020202020;
        *(&v13 + 1) = 0x2020202020202020;
        v23 = v13;
        v24[0] = v13;
        v21 = v13;
        v22 = v13;
      }

      if (intValue > 0x7F)
      {
        v14 = __maskrune(intValue, 0x40000uLL);
      }

      else
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * intValue + 60) & 0x40000;
      }

      if (v14)
      {
        v15 = intValue;
      }

      else
      {
        v15 = 46;
      }

      snprintf(__str, 4uLL, "%02x%c", intValue, v15);
      v16 = (3 * v12);
      *(&v21 + v16 + 2) = *__str;
      *((v12 | &v21) + 0x33) = __str[2];
      if (offset == v9)
      {
        v17 = &v21 + v16;
        v17[1] = 91;
        v17[4] = 93;
        if (indicatorCopy)
        {
          __sprintf_chk(&v24[1] + 3, 0, 9uLL, "\t<==");
        }
      }

      if (v12 == 15 || v9 == [dumpCopy count] - 1)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v21];
        [v8 addObject:v18];
      }

      ++v9;
    }

    while ([dumpCopy count] > v9);
  }

  return v8;
}

- (id)formatInstructionState:(id)state index:(int)index
{
  v4 = *&index;
  stateCopy = state;
  v7 = objc_opt_new();
  v8 = [stateCopy objectForKeyedSubscript:@"instructionStream"];
  v9 = [stateCopy objectForKeyedSubscript:@"cacheLine"];

  if (v8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %d instruction stream:", v4];
    [v7 addObject:v10];

    v11 = [v8 objectForKeyedSubscript:@"bytes"];
    v12 = [v8 objectForKeyedSubscript:@"offset"];
    v13 = -[OSALegacyXform _hexDump:offset:indicator:](self, "_hexDump:offset:indicator:", v11, [v12 intValue], 1);
    [v7 addObjectsFromArray:v13];

    if (!v9)
    {
      goto LABEL_7;
    }

    [v7 addObject:@"  Cacheline:"];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %d instruction stream (single cacheline):", v4];
    [v7 addObject:v14];
  }

  v15 = [v9 objectForKeyedSubscript:@"bytes"];
  v16 = [v9 objectForKeyedSubscript:@"offset"];
  v17 = -[OSALegacyXform _hexDump:offset:indicator:](self, "_hexDump:offset:indicator:", v15, [v16 intValue], 0);
  [v7 addObjectsFromArray:v17];

LABEL_7:
  v18 = [v7 componentsJoinedByString:@"\n"];

  return v18;
}

- (id)_getValueForKey:(id)key fromBody:(id)body orHeader:(id)header
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bodyCopy = body;
  headerCopy = header;
  if ([&unk_1F241F248 containsObject:keyCopy])
  {
    v11 = [(OSALegacyXform *)self _getValueForKey:@"faultingThread" fromBody:bodyCopy orHeader:0];
    if (!v11)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v12 = [bodyCopy objectForKeyedSubscript:@"threads"];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v11, "intValue")}];
    lastObject = v13;
    v15 = keyCopy;
  }

  else
  {
    v11 = bodyCopy;
    if ([keyCopy hasPrefix:@"metadata:"])
    {
      v16 = headerCopy;

      v17 = [keyCopy stringByReplacingOccurrencesOfString:@"metadata:" withString:&stru_1F2411100];

      v11 = v16;
      keyCopy = v17;
    }

    v18 = [keyCopy componentsSeparatedByString:@"."];
    v19 = [v18 count];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v18;
    v20 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      v28 = headerCopy;
      v29 = bodyCopy;
      while (2)
      {
        v23 = 0;
        v24 = v19 - 1;
        v19 -= v21;
        v25 = v11;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v12);
          }

          if (v24 == v23)
          {
            goto LABEL_18;
          }

          v11 = [v25 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v23)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_18:
            v11 = v25;
            headerCopy = v28;
            bodyCopy = v29;
            goto LABEL_19;
          }

          ++v23;
          v25 = v11;
        }

        while (v21 != v23);
        v21 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        headerCopy = v28;
        bodyCopy = v29;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    lastObject = [v12 lastObject];
    v13 = v11;
    v15 = lastObject;
  }

  v26 = [v13 objectForKeyedSubscript:{v15, v28, v29, v30}];

LABEL_21:

  return v26;
}

- (BOOL)transformJSON:(id)n header:(id)header error:(id *)error streamingBlock:(id)block
{
  v22[3] = *MEMORY[0x1E69E9840];
  nCopy = n;
  headerCopy = header;
  blockCopy = block;
  v13 = [headerCopy objectForKeyedSubscript:@"bug_type"];
  v14 = [(NSMutableDictionary *)self->_templates objectForKeyedSubscript:v13];
  v15 = objc_opt_new();
  if (v14)
  {
    v16 = [(OSALegacyXform *)self transformLines:v14 withDefinitions:v15 body:nCopy header:headerCopy error:error streamingBlock:blockCopy];
  }

  else
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' template not found", v13, *MEMORY[0x1E696A578]];
      v22[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v17 errorWithDomain:@"OSALegacyXform" code:1 userInfo:v19];
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)transformLines:(id)lines withDefinitions:(id)definitions body:(id)body header:(id)header error:(id *)error streamingBlock:(id)block
{
  errorCopy = error;
  v88 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  definitionsCopy = definitions;
  bodyCopy = body;
  headerCopy = header;
  blockCopy = block;
  v83 = 0;
  v50 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\$\\((([^\\)]+|[^]+" options:? error:?], 0, &v83);
  v46 = v83;
  v13 = [(OSALegacyXform *)self _getValueForKey:@"osVersion.train" fromBody:bodyCopy orHeader:headerCopy];
  v48 = [v13 hasPrefix:@"macOS"];

  v49 = [(OSALegacyXform *)self _getValueForKey:@"faultingThread" fromBody:bodyCopy orHeader:0];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = linesCopy;
  v56 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  v47 = v56 == 0;
  if (!v56)
  {
    v14 = 0;
    v57 = 0;
    v43 = obj;
LABEL_47:

    goto LABEL_50;
  }

  v57 = 0;
  v14 = 0;
  v55 = *v80;
  v52 = blockCopy + 2;
  do
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v80 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v79 + 1) + 8 * i);
      if (v14)
      {
        if (![*(*(&v79 + 1) + 8 * i) hasPrefix:@"#"]))
        {
          [v57 addObject:v16];
          continue;
        }

        [definitionsCopy setObject:v57 forKeyedSubscript:v14];

        v57 = 0;
      }

      else
      {
        if ([*(*(&v79 + 1) + 8 * i) hasPrefix:@"#("]
        {
          v14 = [v16 substringFromIndex:2];
          v17 = objc_opt_new();

          v57 = v17;
          continue;
        }

        v75 = 0;
        v76 = &v75;
        v77 = 0x2020000000;
        v78 = 0;
        v18 = [v16 rangeOfString:@"\\^\\([^\\)]+\\"" options:?], 1040);
        v20 = v18;
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v19;
          v22 = [v16 substringWithRange:{v18 + 2, v19 - 3}];
          v23 = [v22 componentsSeparatedByString:@"&"];

          v76[3] = v21 + v20;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v71 objects:v86 count:16];
          if (v25)
          {
            v26 = *v72;
            while (2)
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v72 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v71 + 1) + 8 * j);
                if ([v28 hasPrefix:@"!"])
                {
                  v29 = [v28 substringFromIndex:1];

                  v30 = 1;
                  v28 = v29;
                }

                else
                {
                  v30 = 0;
                }

                v31 = [v28 hasPrefix:{@"*", errorCopy}];
                if (v31)
                {
                  v32 = [v28 substringFromIndex:1];

                  v28 = v32;
                }

                v33 = [(OSALegacyXform *)self _getValueForKey:v28 fromBody:bodyCopy orHeader:headerCopy];
                bOOLValue = v33 != 0;
                if (v33)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = 0;
                }

                if (v35 == 1)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    bOOLValue = [v33 count] != 0;
                  }

                  else
                  {
                    bOOLValue = [v33 BOOLValue];
                  }
                }

                v36 = v30 == bOOLValue;

                if (v36)
                {
                  v41 = v24;
                  goto LABEL_39;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v71 objects:v86 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }
        }

        v37 = [v16 substringFromIndex:{v76[3], errorCopy}];
        v76[3] = 0;
        v38 = [v37 length];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __82__OSALegacyXform_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke;
        v61[3] = &unk_1E7A27E38;
        v39 = blockCopy;
        v68 = v39;
        v40 = v37;
        v62 = v40;
        v69 = &v75;
        v63 = definitionsCopy;
        selfCopy = self;
        v65 = bodyCopy;
        v66 = headerCopy;
        v70 = v48;
        v67 = v49;
        [v50 enumerateMatchesInString:v40 options:0 range:0 usingBlock:{v38, v61}];
        v41 = [v40 substringFromIndex:v76[3]];

        if ([v41 length])
        {
          (*v52)(v39, v41);
        }

        (*v52)(v39, @"\n");

        v24 = v68;
LABEL_39:

        _Block_object_dispose(&v75, 8);
      }

      v14 = 0;
    }

    v56 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  }

  while (v56);

  if (v14)
  {
    if (errorCopy)
    {
      v42 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v85 = @"template has illformed definition";
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      *errorCopy = [v42 errorWithDomain:@"OSALegacyXform" code:2 userInfo:v43];
      goto LABEL_47;
    }

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

LABEL_50:

  return v47;
}

void __82__OSALegacyXform_transformLines_withDefinitions_body_header_error_streamingBlock___block_invoke(uint64_t a1, void *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 rangeAtIndex:0];
  v6 = v5;
  v72 = v3;
  v7 = [v3 rangeAtIndex:1];
  v9 = v8;
  v10 = *(a1 + 80);
  v11 = *(*(*(a1 + 88) + 8) + 24);
  v12 = [*(a1 + 32) substringWithRange:{v11, v4 - v11}];
  (*(v10 + 16))(v10, v12);

  v69 = v9;
  v70 = v7;
  v71 = [*(a1 + 32) substringWithRange:{v7, v9}];
  [v71 componentsSeparatedByString:@"|"];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v99 = 0u;
  v13 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (!v13)
  {
    goto LABEL_79;
  }

  v14 = v13;
  v15 = *v97;
  v74 = *v97;
  while (2)
  {
    v16 = 0;
    v73 = v14;
    do
    {
      if (*v97 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v96 + 1) + 8 * v16);
      v18 = [v17 componentsSeparatedByString:@"#"];
      v79 = v16;
      if ([v18 count] == 2)
      {
        v19 = *(a1 + 40);
        v20 = [v18 objectAtIndexedSubscript:0];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (!v21)
        {
          goto LABEL_78;
        }

        v22 = *(a1 + 48);
        v23 = [v18 objectAtIndexedSubscript:1];
        v24 = [v22 _getValueForKey:v23 fromBody:*(a1 + 56) orHeader:*(a1 + 64)];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v76 = v24;
          v77 = v18;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v80 = v24;
          v25 = [v80 countByEnumeratingWithState:&v92 objects:v106 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v93;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v93 != v28)
                {
                  objc_enumerationMutation(v80);
                }

                v30 = *(*(&v92 + 1) + 8 * i);
                v32 = *(a1 + 40);
                v31 = *(a1 + 48);
                v104[0] = @"<index>";
                v33 = [MEMORY[0x1E696AD98] numberWithInt:v27];
                v104[1] = @"<item>";
                v105[0] = v33;
                v105[1] = v30;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];
                v91 = 0;
                [v31 transformLines:v21 withDefinitions:v32 body:v34 header:0 error:&v91 streamingBlock:*(a1 + 80)];
                v35 = v91;

                v27 = (v27 + 1);
              }

              v26 = [v80 countByEnumeratingWithState:&v92 objects:v106 count:16];
            }

            while (v26);
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_31:

            v6 = [*(a1 + 32) length];
            v4 = 0;
            v15 = v74;
            goto LABEL_32;
          }

          v76 = v24;
          v77 = v18;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v38 = v24;
          v39 = [v38 countByEnumeratingWithState:&v87 objects:v103 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v88;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v88 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v44 = *(a1 + 40);
                v43 = *(a1 + 48);
                v102[0] = *(*(&v87 + 1) + 8 * j);
                v101[0] = @"<key>";
                v101[1] = @"<value>";
                v45 = [v38 objectForKeyedSubscript:?];
                v102[1] = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
                v86 = 0;
                [v43 transformLines:v21 withDefinitions:v44 body:v46 header:0 error:&v86 streamingBlock:*(a1 + 80)];
                v47 = v86;
              }

              v40 = [v38 countByEnumeratingWithState:&v87 objects:v103 count:16];
            }

            while (v40);
          }
        }

        v24 = v76;

        v18 = v77;
        v14 = v73;
        goto LABEL_31;
      }

      if (([v17 hasPrefix:@""] & 1) == 0)
      {
        v37 = [*(a1 + 48) _getValueForKey:v17 fromBody:*(a1 + 56) orHeader:*(a1 + 64)];
        if (!v37)
        {
          goto LABEL_32;
        }

LABEL_35:
        if ([v17 isEqualToString:@"threads"])
        {
          v48 = *(a1 + 48);
          v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
          v50 = [v48 formatCallstacks:v37 withImages:v49 macosStyle:*(a1 + 96)];
LABEL_37:
          v51 = v50;

          goto LABEL_52;
        }

        if (![v17 isEqualToString:@"threadState"])
        {
          if ([v17 isEqualToString:@"instructionState"])
          {
            v54 = [*(a1 + 48) formatInstructionState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
          }

          else
          {
            if ([v17 isEqualToString:@"lastBranchState"])
            {
              v55 = *(a1 + 48);
              v56 = [*(a1 + 72) intValue];
              v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
              v50 = [v55 formatLastBranchState:v37 index:v56 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 isEqualToString:@"lastExceptionBacktrace"])
            {
              v58 = *(a1 + 48);
              v49 = [*(a1 + 56) objectForKeyedSubscript:@"usedImages"];
              v50 = [v58 formatLastException:v37 withImages:v49];
              goto LABEL_37;
            }

            if ([v17 hasPrefix:@"usedImages"])
            {
              v54 = [*(a1 + 48) formatImages:v37 macosStyle:*(a1 + 96)];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                (*(*(a1 + 80) + 16))();
LABEL_77:

LABEL_78:
                goto LABEL_79;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v54 = [v37 stringValue];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v57 = *(a1 + 80);
                  goto LABEL_75;
                }

                if ([v37 count])
                {
                  v59 = [v37 firstObject];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v78 = v18;
                    v61 = objc_opt_new();
                    v82 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v81 = v37;
                    v62 = [v81 countByEnumeratingWithState:&v82 objects:v100 count:16];
                    if (v62)
                    {
                      v63 = v62;
                      v64 = *v83;
                      do
                      {
                        for (k = 0; k != v63; ++k)
                        {
                          if (*v83 != v64)
                          {
                            objc_enumerationMutation(v81);
                          }

                          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%016qx", objc_msgSend(*(*(&v82 + 1) + 8 * k), "longLongValue")];
                          [v61 addObject:v66];
                        }

                        v63 = [v81 countByEnumeratingWithState:&v82 objects:v100 count:16];
                      }

                      while (v63);
                    }

                    v51 = [v61 componentsJoinedByString:{@", "}];

                    v18 = v78;
LABEL_52:
                    v57 = *(a1 + 80);
                    if (v51)
                    {
                      (*(v57 + 16))(*(a1 + 80), v51);
LABEL_76:

                      goto LABEL_77;
                    }

LABEL_75:
                    v67 = MEMORY[0x1E696AEC0];
                    v51 = [*(a1 + 32) substringWithRange:{v70, v69}];
                    v68 = [v67 stringWithFormat:@"{%@}", v51];
                    (*(v57 + 16))(v57, v68);

                    goto LABEL_76;
                  }
                }

                v54 = [v37 componentsJoinedByString:@"\n"];
              }
            }
          }

          v51 = v54;
          goto LABEL_52;
        }

        v52 = [v37 objectForKeyedSubscript:@"flavor"];
        if ([v52 isEqualToString:@"ARM_THREAD_STATE64"])
        {
          v53 = [*(a1 + 48) formatArm64ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
        }

        else if ([v52 isEqualToString:@"ARM_THREAD_STATE32"])
        {
          v53 = [*(a1 + 48) formatArm32ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
        }

        else
        {
          if (![v52 isEqualToString:@"x86_THREAD_STATE"])
          {
            v51 = 0;
            goto LABEL_51;
          }

          v53 = [*(a1 + 48) formatX86ThreadState:v37 index:{objc_msgSend(*(a1 + 72), "intValue")}];
        }

        v51 = v53;
LABEL_51:

        goto LABEL_52;
      }

      v36 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""];
      v37 = [v17 stringByTrimmingCharactersInSet:v36];

      if (v37)
      {
        goto LABEL_35;
      }

LABEL_32:

      v16 = v79 + 1;
    }

    while (v79 + 1 != v14);
    v14 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_79:

  *(*(*(a1 + 88) + 8) + 24) = v4 + v6;
}

+ (id)rollSchemaForward:(id)forward
{
  v133 = *MEMORY[0x1E69E9840];
  forwardCopy = forward;
  v61 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([A-Z_]+) options:(\\[0x[0-9a-zA-Z]\\])?(.*)$" error:{0, 0}];
  v64 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = forwardCopy;
  v67 = [obj countByEnumeratingWithState:&v115 objects:v132 count:16];
  if (v67)
  {
    v65 = *v116;
    v59 = v106;
    do
    {
      v69 = 0;
      do
      {
        if (*v116 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v71 = *(*(&v115 + 1) + 8 * v69);
        v70 = [obj objectForKeyedSubscript:v59];
        if (![v71 isEqualToString:@"asi"])
        {
          if ([v71 isEqualToString:@"termination"])
          {
            v73 = v70;
            v4 = objc_opt_new();
            v5 = [v73 objectForKeyedSubscript:@"namespace"];
            [v4 setObject:v5 forKeyedSubscript:@"namespace"];

            v6 = [v73 objectForKeyedSubscript:@"code"];
            [v4 setObject:v6 forKeyedSubscript:@"code"];

            v7 = [v73 objectForKeyedSubscript:@"flag"];
            [v4 setObject:v7 forKeyedSubscript:@"flag"];

            v8 = [v73 objectForKeyedSubscript:@"signal"];
            if (v8)
            {
              [v4 setObject:v8 forKeyedSubscript:@"indicator"];
            }

            v9 = [v73 objectForKeyedSubscript:@"description"];

            if (v9 || ([v73 objectForKeyedSubscript:@"reason"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v109 = 0;
              v110 = &v109;
              v111 = 0x3032000000;
              v112 = __Block_byref_object_copy__7;
              v113 = __Block_byref_object_dispose__7;
              v114 = 0;
              v10 = [v9 length];
              v105[0] = MEMORY[0x1E69E9820];
              v105[1] = 3221225472;
              v106[0] = __36__OSALegacyXform_rollSchemaForward___block_invoke;
              v106[1] = &unk_1E7A27E88;
              v108 = &v109;
              v11 = v9;
              v107 = v11;
              [v61 enumerateMatchesInString:v11 options:0 range:0 usingBlock:{v10, v105}];
              if (v110[5])
              {
                v12 = v110[5];
              }

              else
              {
                v12 = v11;
              }

              v13 = [v12 componentsSeparatedByString:@"|"];
              v14 = [v13 valueForKey:@"stringByTrimming"];
              [v4 setObject:v14 forKeyedSubscript:@"reasons"];

              _Block_object_dispose(&v109, 8);
            }

            v15 = [v73 objectForKeyedSubscript:@"details"];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 componentsSeparatedByString:@"|"];
              v18 = [v17 valueForKey:@"stringByTrimming"];
              [v4 setObject:v18 forKeyedSubscript:@"details"];
            }

            [v64 setObject:v4 forKeyedSubscript:v71];

LABEL_23:
            goto LABEL_24;
          }

          if ([v71 isEqualToString:@"legacyInfo"])
          {
            v73 = [v70 objectForKeyedSubscript:@"threadTriggered"];
            v19 = [v73 objectForKeyedSubscript:@"index"];
            [v64 setObject:v19 forKeyedSubscript:@"faultingThread"];

            [v64 setObject:v70 forKeyedSubscript:v71];
            goto LABEL_23;
          }

          if (![v71 isEqualToString:@"threads"])
          {
            if ([v71 isEqualToString:@"usedImages"])
            {
              v45 = v70;
              v84 = objc_opt_new();
              v82 = [obj objectForKeyedSubscript:@"legacyInfo"];
              v46 = [v82 objectForKeyedSubscript:@"imageExtraInfo"];
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v73 = v45;
              v47 = [v73 countByEnumeratingWithState:&v85 objects:v119 count:16];
              if (v47)
              {
                LODWORD(v48) = 0;
                v49 = *v86;
                do
                {
                  v50 = 0;
                  v48 = v48;
                  do
                  {
                    if (*v86 != v49)
                    {
                      objc_enumerationMutation(v73);
                    }

                    v51 = *(*(&v85 + 1) + 8 * v50);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v52 = [v46 objectAtIndexedSubscript:v48];
                      v53 = [v52 mutableCopy];

                      v54 = [v51 objectAtIndexedSubscript:0];
                      [v53 setObject:v54 forKeyedSubscript:@"uuid"];

                      v55 = [v51 objectAtIndexedSubscript:1];
                      [v53 setObject:v55 forKeyedSubscript:@"base"];

                      v56 = [v51 objectAtIndexedSubscript:2];
                      [v53 setObject:v56 forKeyedSubscript:@"source"];

                      [v84 addObject:v53];
                    }

                    ++v48;
                    ++v50;
                  }

                  while (v47 != v50);
                  v47 = [v73 countByEnumeratingWithState:&v85 objects:v119 count:16];
                }

                while (v47);
              }

              [v64 setObject:v84 forKeyedSubscript:v71];
            }

            else
            {
              v73 = [&unk_1F241F120 objectForKeyedSubscript:v71];
              if (v73)
              {
                [v64 setObject:v70 forKeyedSubscript:?];
              }

              else
              {
                [v64 setObject:v70 forKeyedSubscript:v71];
              }
            }

            goto LABEL_23;
          }

          v73 = objc_opt_new();
          v20 = v70;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v60 = v20;
          v63 = [v20 countByEnumeratingWithState:&v101 objects:v129 count:16];
          if (!v63)
          {
            goto LABEL_74;
          }

          v62 = *v102;
LABEL_29:
          v66 = 0;
          while (1)
          {
            if (*v102 != v62)
            {
              objc_enumerationMutation(v60);
            }

            v78 = *(*(&v101 + 1) + 8 * v66);
            v81 = [v78 mutableCopy];
            v83 = objc_opt_new();
            v80 = [v78 objectForKeyedSubscript:@"frames"];
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v21 = [v80 countByEnumeratingWithState:&v97 objects:v128 count:16];
            if (v21)
            {
              v22 = *v98;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v98 != v22)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v24 = *(*(&v97 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v25 = v24;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v126[0] = @"imageIndex";
                      v26 = [v24 objectAtIndexedSubscript:0];
                      v127[0] = v26;
                      v126[1] = @"imageOffset";
                      v27 = [v24 objectAtIndexedSubscript:1];
                      v127[1] = v27;
                      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
                      v25 = [v28 mutableCopy];

                      if ([v24 count] >= 3)
                      {
                        v29 = [v24 objectAtIndexedSubscript:2];
                        [v25 addEntriesFromDictionary:v29];
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  [v83 addObject:v25];
                  [v81 setObject:v83 forKeyedSubscript:@"frames"];
                }

                v21 = [v80 countByEnumeratingWithState:&v97 objects:v128 count:16];
              }

              while (v21);
            }

            v30 = [v78 objectForKeyedSubscript:@"triggered"];
            bOOLValue = [v30 BOOLValue];

            if (bOOLValue)
            {
              v32 = [obj objectForKeyedSubscript:@"threadState"];
              if (v32)
              {
                break;
              }

              v32 = [v78 objectForKeyedSubscript:@"threadState"];
              if (v32)
              {
                break;
              }
            }

LABEL_72:
            [v73 addObject:v81];

            if (++v66 == v63)
            {
              v63 = [v60 countByEnumeratingWithState:&v101 objects:v129 count:16];
              if (!v63)
              {
LABEL_74:
                [v64 setObject:v73 forKeyedSubscript:v71];

                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }

          v74 = [v32 mutableCopy];
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v77 = v32;
          v76 = [v77 countByEnumeratingWithState:&v93 objects:v125 count:16];
          if (!v76)
          {
            goto LABEL_71;
          }

          v75 = *v94;
          while (2)
          {
            v33 = 0;
LABEL_51:
            if (*v94 != v75)
            {
              objc_enumerationMutation(v77);
            }

            v79 = *(*(&v93 + 1) + 8 * v33);
            v34 = [v77 objectForKeyedSubscript:?];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v123 = @"value";
              v124 = v34;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
              goto LABEL_55;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = objc_opt_new();
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v36 = v34;
              v37 = [v36 countByEnumeratingWithState:&v89 objects:v122 count:16];
              if (v37)
              {
                v38 = *v90;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v90 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*(&v89 + 1) + 8 * j);
                    v120 = @"value";
                    v121 = v40;
                    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                    [v35 addObject:v41];
                  }

                  v37 = [v36 countByEnumeratingWithState:&v89 objects:v122 count:16];
                }

                while (v37);
              }

              v42 = [v35 count];
              if (v42 <= 28)
              {
                v43 = v42 - 29;
                do
                {
                  [v35 addObject:&unk_1F241F0F8];
                }

                while (!__CFADD__(v43++, 1));
              }

LABEL_55:
              [v74 setObject:v35 forKeyedSubscript:v79];
            }

            if (++v33 == v76)
            {
              v76 = [v77 countByEnumeratingWithState:&v93 objects:v125 count:16];
              if (!v76)
              {
LABEL_71:

                [v81 setObject:v74 forKeyedSubscript:@"threadState"];
                goto LABEL_72;
              }

              continue;
            }

            goto LABEL_51;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v130 = @"unknown";
          v131 = v70;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          [v64 setObject:v72 forKeyedSubscript:v71];
        }

LABEL_24:

        ++v69;
      }

      while (v69 != v67);
      v57 = [obj countByEnumeratingWithState:&v115 objects:v132 count:16];
      v67 = v57;
    }

    while (v57);
  }

  return v64;
}

void *__36__OSALegacyXform_rollSchemaForward___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 rangeAtIndex:3];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) substringWithRange:{result, v4}];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)transformURL:(id)l template:(id)template options:(id)options
{
  v122[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  templateCopy = template;
  optionsCopy = options;
  v10 = objc_opt_new();
  v11 = [OSALog alloc];
  path = [lCopy path];
  v113 = 0;
  v13 = [(OSALog *)v11 initWithPath:path forRouting:&stru_1F2411100 options:&unk_1F241F148 error:&v113];
  v14 = v113;

  if (!v13)
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load log '%@'", lCopy];
    v25 = [v14 augmentWithPrefix:lCopy];
    goto LABEL_86;
  }

  v106 = optionsCopy;
  lCopy = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:{fileno(-[OSALog stream](v13, "stream"))}];
  v16 = MEMORY[0x1B2702E10]([(OSALog *)v13 stream]);
  metaData = [(OSALog *)v13 metaData];
  v18 = [metaData count];

  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ips metadata not detected (%ld bytes before newline), attempting to read entire file as payload", buf, 0xCu);
    }

    v16 = 0;
  }

  v105 = templateCopy;
  [lCopy seekToFileOffset:v16];
  [lCopy availableData];
  v104 = v112[1] = v14;
  v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  bugType = v14;

  if (v19)
  {
    v103 = bugType;
    bugType = [(OSALog *)v13 bugType];
    metaData2 = [(OSALog *)v13 metaData];
    metaData3 = [(OSALog *)v13 metaData];
    v23 = [metaData3 count];

    if (v23)
    {
      v24 = metaData2;
    }

    else
    {
      v26 = objc_opt_new();
      v27 = [v19 objectForKeyedSubscript:@"bug_type"];

      [v26 setObject:v27 forKeyedSubscript:@"bug_type"];
      v28 = [v19 objectForKeyedSubscript:@"isSimulated"];
      [v26 setObject:v28 forKeyedSubscript:@"isSimulated"];

      v29 = [v19 objectForKeyedSubscript:@"isCorpse"];
      [v26 setObject:v29 forKeyedSubscript:@"isCorpse"];

      v30 = [v19 objectForKeyedSubscript:@"incident_id"];
      [v26 setObject:v30 forKeyedSubscript:@"incident_id"];

      v31 = [v19 objectForKeyedSubscript:@"os_version"];
      [v26 setObject:v31 forKeyedSubscript:@"os_version"];

      v32 = [v19 objectForKeyedSubscript:@"platform"];
      [v26 setObject:v32 forKeyedSubscript:@"platform"];

      v24 = v26;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v24 count];
        *buf = 67109120;
        *&buf[4] = v33;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "synthesizing %d items from payload as metadata", buf, 8u);
      }

      v34 = [v19 objectForKeyedSubscript:@"parsedData"];
      if (v34)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "this log appears to be from the DA grid, using parsedData section", buf, 2u);
        }

        v35 = v34;

        v19 = v35;
      }

      bugType = v27;
    }

    if (![&unk_1F241F260 containsObject:bugType])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        bugType2 = [(OSALog *)v13 bugType];
        *buf = 138412546;
        *&buf[4] = bugType2;
        *&buf[12] = 2112;
        *&buf[14] = bugType;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unsupported log type '%@' effective (%@)", buf, 0x16u);
      }

      v43 = MEMORY[0x1E696ABC0];
      v114 = *MEMORY[0x1E696A578];
      v115 = @"legacy conversion not supported for log type";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v45 = v43;
      v41 = v44;
      v25 = [v45 errorWithDomain:@"OSALegacyXform" code:6 userInfo:v44];

      goto LABEL_84;
    }

    v102 = v24;
    v36 = [v19 objectForKeyedSubscript:@"version"];
    if ([v36 intValue] >= 2)
    {
    }

    else
    {
      v37 = [v19 objectForKeyedSubscript:@"variantVersion"];
      intValue = [v37 intValue];

      if (intValue <= 1)
      {
        v39 = [OSALegacyXform rollSchemaForward:v19];

        v19 = v39;
        if (!v39)
        {
          v40 = MEMORY[0x1E696ABC0];
          v116 = *MEMORY[0x1E696A578];
          v117 = @"unsupported JSON schema version";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v25 = [v40 errorWithDomain:@"OSALegacyXform" code:4 userInfo:v19];
          v41 = v103;
LABEL_84:

          goto LABEL_85;
        }
      }
    }

    v101 = objc_alloc_init(OSALegacyXform);
    v46 = [v24 objectForKeyedSubscript:@"os_version"];
    if ([v46 hasPrefix:@"macOS"])
    {
      v47 = [v24 objectForKeyedSubscript:@"platform"];
      if (v47)
      {
        v48 = [v24 objectForKeyedSubscript:@"platform"];
        if ([v48 intValue] == 1)
        {
          v49 = 1;
        }

        else
        {
          v99 = [v24 objectForKeyedSubscript:@"platform"];
          if ([v99 intValue] == 6)
          {
            v49 = 1;
          }

          else
          {
            v96 = [v24 objectForKeyedSubscript:@"platform"];
            v49 = [v96 intValue] == 10;
          }
        }
      }

      else
      {
        v49 = 1;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = [v106 objectForKeyedSubscript:OSATransformOptionMetadata];

    if (!v50)
    {
LABEL_53:
      v58 = v105;
      if (!v105)
      {
        v59 = &legacyTemplate_109;
        if (v49)
        {
          v59 = &legacyTemplate_9;
        }

        v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v59];
        if (!v58)
        {
          v25 = [v103 augmentWithPrefix:@"Unable to locate template"];
          v105 = 0;
          v24 = v102;
LABEL_83:

          v41 = v101;
          goto LABEL_84;
        }
      }

      v100 = v10;
      v112[0] = v103;
      v105 = v58;
      [(OSALegacyXform *)v101 prepareTemplate:v58 forLogType:bugType error:v112];
      v60 = v112[0];

      v61 = objc_opt_new();
      v111 = v60;
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __48__OSALegacyXform_transformURL_template_options___block_invoke;
      v109[3] = &unk_1E7A27EB0;
      v62 = v61;
      v110 = v62;
      v63 = [(OSALegacyXform *)v101 transformJSON:v19 header:v102 error:&v111 streamingBlock:v109];
      v64 = v111;

      v103 = v62;
      if (!v63)
      {
        v25 = [v64 augmentWithPrefix:@"Unable to transform log"];
        goto LABEL_81;
      }

      v97 = v64;
      v64 = v62;
      v65 = [v106 objectForKeyedSubscript:OSATransformOptionSymbolicate];
      bOOLValue = [v65 BOOLValue];

      if (!bOOLValue)
      {
        v25 = v97;
LABEL_68:
        v74 = [v106 objectForKeyedSubscript:OSATransformOptionFullReport];
        bOOLValue2 = [v74 BOOLValue];

        if (bOOLValue2)
        {
          v76 = v64;
          v108 = 0;
          v77 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:lCopy encoding:4 error:&v108];
          v78 = v108;
          if (!v77)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [OSALegacyXform transformURL:v78 template:? options:?];
            }

            v77 = @"Unable to load full report.";
          }

          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@%@\n%@\n", @"-------------------------------------\nTranslated Report (Full Report Below)\n-------------------------------------\n", v64, @"-----------\nFull Report\n-----------\n", v77];
        }

        v79 = [v106 objectForKeyedSubscript:OSATransformOptionPersist];
        if ([v79 BOOLValue])
        {
          v80 = [v64 length];

          if (v80)
          {
            memcpy(buf, "/tmp/temp.XXXXXX", 0x400uLL);
            v81 = mkstemp(buf);
            if (v81 == -1)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                +[OSALegacyXform transformURL:template:options:];
              }

              v89 = MEMORY[0x1E696ABC0];
              v118 = *MEMORY[0x1E696A578];
              v119 = @"Error creating temporary file for symbolicated log";
              v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
              v91 = v89;
              v92 = v90;
              v85 = [v91 errorWithDomain:@"OSALegacyXform" code:8 userInfo:v90];
              v24 = v102;
            }

            else
            {
              v82 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v81 closeOnDealloc:1];
              v83 = [v64 dataUsingEncoding:4];
              v107 = 0;
              v98 = v82;
              [v82 writeData:v83 error:&v107];
              v84 = v107;

              if (v84)
              {
                v85 = [v84 augmentWithPrefix:@"failed to persist symbolicated log"];
                v25 = v84;
              }

              else
              {
                v93 = MEMORY[0x1E695DFF8];
                v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
                v94 = [v93 fileURLWithPath:v25];
                [v100 setObject:v94 forKeyedSubscript:OSATransformResultFileURL];

                v85 = 0;
              }

              v24 = v102;
              v92 = v98;
            }

            v25 = v85;
            goto LABEL_82;
          }
        }

        else
        {
        }

        [v100 setObject:v64 forKeyedSubscript:OSATransformResultReport];
LABEL_81:
        v24 = v102;
LABEL_82:

        v10 = v100;
        goto LABEL_83;
      }

      v95 = [v64 dataUsingEncoding:4];
      v67 = symbolicateSpeedTracer(v95, v106);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = [v67 objectForKeyedSubscript:OSATransformResultRadars];
        [v100 setObject:v68 forKeyedSubscript:OSATransformResultRadars];

        v69 = [v67 objectForKeyedSubscript:OSATransformResultTracerURL];
        [v100 setObject:v69 forKeyedSubscript:OSATransformResultTracerURL];

        v25 = [v67 objectForKeyedSubscript:OSATransformResultError];

        v70 = [v67 objectForKeyedSubscript:OSATransformResultReport];
        v71 = v70;
        if (!v70)
        {
          goto LABEL_67;
        }

        v71 = v70;
        v72 = v64;
        v64 = v71;
      }

      else
      {
        v73 = MEMORY[0x1E696ABC0];
        v121 = *MEMORY[0x1E696A578];
        v122[0] = @"No speedtracer results";
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
        v25 = [v73 errorWithDomain:@"OSALegacyTransform" code:1 userInfo:v71];
        v72 = v97;
      }

LABEL_67:
      goto LABEL_68;
    }

    v51 = [v102 mutableCopy];
    v52 = [MEMORY[0x1E695DFD8] setWithObjects:{@"308", @"309", @"409", @"509", 0}];
    v53 = [v52 containsObject:bugType];

    if (v53)
    {
      if (v49)
      {
        v54 = @"9";
      }

      else
      {
        v54 = @"109";
      }

      v55 = 0x1E696A000;
    }

    else
    {
      v55 = 0x1E696A000uLL;
      if ([bugType isEqualToString:@"385"])
      {
        v54 = @"185";
      }

      else
      {
        if (![bugType isEqualToString:@"327"])
        {
LABEL_50:
          v56 = [*(v55 + 3248) dataWithJSONObject:v51 options:0 error:0];
          if (v56)
          {
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v56 encoding:4];
            [v10 setObject:v57 forKeyedSubscript:OSATransformResultMetadata];
          }

          goto LABEL_53;
        }

        v54 = @"227";
      }
    }

    [v51 setObject:v54 forKeyedSubscript:@"bug_type"];
    goto LABEL_50;
  }

  v25 = [bugType augmentWithPrefix:@"Unable to read JSON"];
LABEL_85:

  v14 = v104;
  templateCopy = v105;
  optionsCopy = v106;
LABEL_86:

  if (v25)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v25 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [v10 setObject:v25 forKeyedSubscript:OSATransformResultError];
  }

  return v10;
}

+ (void)transformURL:(void *)a1 template:options:.cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error loading full report: %{public}@", &v2, 0xCu);
}

@end