@interface CRPreflightUtils
+ (BOOL)_hasSameKey:(id)key this:(id)this other:(id)other;
+ (id)_mergeActivationLocks:(id)locks;
+ (id)activationResults:(id)results;
+ (id)parseChallengeObject:(id)object withHandler:(id)handler;
+ (id)spcResults:(id)results;
@end

@implementation CRPreflightUtils

+ (id)spcResults:(id)results
{
  v159 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (resultsCopy)
  {
    v4 = +[CRFDRDeviceController sharedSingleton];
    getHandlerForDevice = [v4 getHandlerForDevice];

    if (getHandlerForDevice)
    {
      v6 = MEMORY[0x1E695DFA8];
      [resultsCopy objectForKeyedSubscript:@"passComponents"];
      v8 = v7 = resultsCopy;
      v9 = [v6 setWithArray:v8];

      v10 = MEMORY[0x1E695DFA8];
      v11 = [v7 objectForKeyedSubscript:@"failComponents"];
      v12 = [v10 setWithArray:v11];

      v13 = MEMORY[0x1E695DFA8];
      v14 = [v7 objectForKeyedSubscript:@"lockComponents"];
      v15 = [v13 setWithArray:v14];

      v16 = MEMORY[0x1E695DFA8];
      v17 = [v7 objectForKeyedSubscript:@"unauthComponents"];
      v18 = [v16 setWithArray:v17];

      v19 = MEMORY[0x1E695DFA8];
      v20 = [v7 objectForKeyedSubscript:@"lostComponents"];
      v115 = [v19 setWithArray:v20];

      v21 = MEMORY[0x1E695DFA8];
      v22 = [v7 objectForKeyedSubscript:@"deniedComponents"];
      v113 = [v21 setWithArray:v22];

      v23 = MEMORY[0x1E695DFA8];
      v108 = v7;
      v24 = [v7 objectForKeyedSubscript:@"sealedComponents"];
      v111 = [v23 setWithArray:v24];

      [v12 minusSet:v9];
      v122 = objc_opt_new();
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      obj = v9;
      v25 = [obj countByEnumeratingWithState:&v148 objects:v158 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v149;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v149 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v148 + 1) + 8 * i);
            dataKey = [v29 dataKey];
            dataIdentifier = [v29 dataIdentifier];
            v32 = [getHandlerForDevice spcWithComponent:dataKey withIdentifier:dataIdentifier];

            if (v32)
            {
              [v122 addObject:v32];
            }
          }

          v26 = [obj countByEnumeratingWithState:&v148 objects:v158 count:16];
        }

        while (v26);
      }

      v123 = objc_opt_new();
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v33 = v12;
      v34 = [v33 countByEnumeratingWithState:&v144 objects:v157 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v145;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v145 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v144 + 1) + 8 * j);
            dataKey2 = [v38 dataKey];
            dataIdentifier2 = [v38 dataIdentifier];
            v41 = [getHandlerForDevice spcWithComponent:dataKey2 withIdentifier:dataIdentifier2];

            if (v41)
            {
              [v123 addObject:v41];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v144 objects:v157 count:16];
        }

        while (v35);
      }

      v121 = objc_opt_new();
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v118 = v15;
      v42 = [v118 countByEnumeratingWithState:&v140 objects:v156 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v141;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v141 != v44)
            {
              objc_enumerationMutation(v118);
            }

            v46 = *(*(&v140 + 1) + 8 * k);
            dataKey3 = [v46 dataKey];
            dataIdentifier3 = [v46 dataIdentifier];
            v49 = [getHandlerForDevice spcWithComponent:dataKey3 withIdentifier:dataIdentifier3];

            if (v49)
            {
              [v121 addObject:v49];
            }
          }

          v43 = [v118 countByEnumeratingWithState:&v140 objects:v156 count:16];
        }

        while (v43);
      }

      v50 = objc_opt_new();
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v117 = v18;
      v51 = [v117 countByEnumeratingWithState:&v136 objects:v155 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v137;
        do
        {
          for (m = 0; m != v52; ++m)
          {
            if (*v137 != v53)
            {
              objc_enumerationMutation(v117);
            }

            v55 = *(*(&v136 + 1) + 8 * m);
            dataKey4 = [v55 dataKey];
            dataIdentifier4 = [v55 dataIdentifier];
            v58 = [getHandlerForDevice spcWithComponent:dataKey4 withIdentifier:dataIdentifier4];

            if (v58)
            {
              [v50 addObject:v58];
            }
          }

          v52 = [v117 countByEnumeratingWithState:&v136 objects:v155 count:16];
        }

        while (v52);
      }

      v120 = objc_opt_new();
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v116 = v115;
      v59 = [v116 countByEnumeratingWithState:&v132 objects:v154 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v133;
        do
        {
          for (n = 0; n != v60; ++n)
          {
            if (*v133 != v61)
            {
              objc_enumerationMutation(v116);
            }

            v63 = *(*(&v132 + 1) + 8 * n);
            dataKey5 = [v63 dataKey];
            dataIdentifier5 = [v63 dataIdentifier];
            v66 = [getHandlerForDevice spcWithComponent:dataKey5 withIdentifier:dataIdentifier5];

            if (v66)
            {
              [v120 addObject:v66];
            }
          }

          v60 = [v116 countByEnumeratingWithState:&v132 objects:v154 count:16];
        }

        while (v60);
      }

      v106 = v50;

      v67 = objc_opt_new();
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v114 = v113;
      v68 = [v114 countByEnumeratingWithState:&v128 objects:v153 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v129;
        do
        {
          for (ii = 0; ii != v69; ++ii)
          {
            if (*v129 != v70)
            {
              objc_enumerationMutation(v114);
            }

            v72 = *(*(&v128 + 1) + 8 * ii);
            dataKey6 = [v72 dataKey];
            dataIdentifier6 = [v72 dataIdentifier];
            v75 = [getHandlerForDevice spcWithComponent:dataKey6 withIdentifier:dataIdentifier6];

            if (v75)
            {
              [v67 addObject:v75];
            }
          }

          v69 = [v114 countByEnumeratingWithState:&v128 objects:v153 count:16];
        }

        while (v69);
      }

      v109 = v67;
      v107 = v33;

      v110 = objc_opt_new();
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v112 = v111;
      v76 = [v112 countByEnumeratingWithState:&v124 objects:v152 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v125;
        do
        {
          for (jj = 0; jj != v77; ++jj)
          {
            if (*v125 != v78)
            {
              objc_enumerationMutation(v112);
            }

            v80 = *(*(&v124 + 1) + 8 * jj);
            dataKey7 = [v80 dataKey];
            v82 = [dataKey7 isEqual:@"MSRk"];

            if (!v82)
            {
              goto LABEL_66;
            }

            dataKey8 = [v80 dataKey];
            v84 = [CRFDRUtils findUnsealedDataWithKey:dataKey8 error:0];

            if (v84 && [v84 count])
            {

LABEL_66:
              dataKey9 = [v80 dataKey];
              dataIdentifier7 = [v80 dataIdentifier];
              v84 = [getHandlerForDevice spcWithComponent:dataKey9 withIdentifier:dataIdentifier7];

              if (v84)
              {
                [v110 addObject:v84];
              }

              goto LABEL_71;
            }

            dataKey10 = [v80 dataKey];
            dataIdentifier8 = [v80 dataIdentifier];
            v89 = [getHandlerForDevice spcWithComponent:dataKey10 withIdentifier:dataIdentifier8];

            if (v89)
            {
              [v123 addObject:v89];
            }

LABEL_71:
          }

          v77 = [v112 countByEnumeratingWithState:&v124 objects:v152 count:16];
        }

        while (v77);
      }

      [v110 minusSet:v122];
      [v110 minusSet:v121];
      [v110 minusSet:v106];
      [v110 minusSet:v123];
      [v110 minusSet:v120];
      [v110 minusSet:v109];
      [v122 minusSet:v121];
      [v122 minusSet:v106];
      [v122 minusSet:v123];
      [v122 minusSet:v120];
      [v122 minusSet:v109];
      [v121 minusSet:v106];
      [v121 minusSet:v123];
      [v121 minusSet:v120];
      [v121 minusSet:v109];
      [v106 minusSet:v123];
      [v106 minusSet:v120];
      [v106 minusSet:v109];
      [v123 minusSet:v120];
      [v123 minusSet:v109];
      [v120 minusSet:v109];
      v90 = handleForCategory(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v91 = handleForCategory(0);
      resultsCopy = v108;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v92 = handleForCategory(0);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v93 = handleForCategory(0);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v94 = handleForCategory(0);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v95 = handleForCategory(0);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v96 = handleForCategory(0);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        +[CRPreflightUtils spcResults:];
      }

      v97 = objc_opt_new();
      allObjects = [v110 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects2 = [v122 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects3 = [v121 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects4 = [v106 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects5 = [v123 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects6 = [v120 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);

      allObjects7 = [v109 allObjects];
      objc_msgSend_setObject_forKeyedSubscript_(v97);
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  return v97;
}

+ (id)activationResults:(id)results
{
  v25 = *MEMORY[0x1E69E9840];
  if (results)
  {
    v4 = [results objectForKeyedSubscript:@"Challenges"];
    if (v4)
    {
      v5 = +[CRFDRDeviceController sharedSingleton];
      getHandlerForDevice = [v5 getHandlerForDevice];

      if (getHandlerForDevice)
      {
        array = [MEMORY[0x1E695DF70] array];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = v4;
        v8 = v4;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [self parseChallengeObject:*(*(&v20 + 1) + 8 * v12) withHandler:getHandlerForDevice];
              if (v13)
              {
                [array addObject:v13];
              }

              else
              {
                v14 = handleForCategory(0);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  [(CRPreflightUtils *)&buf activationResults:v19, v14];
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v10);
        }

        v15 = [self _mergeActivationLocks:array];
        v4 = v17;
      }

      else
      {
        array = handleForCategory(0);
        if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
        {
          +[CRPreflightUtils activationResults:];
        }

        v15 = 0;
      }
    }

    else
    {
      getHandlerForDevice = handleForCategory(0);
      if (os_log_type_enabled(getHandlerForDevice, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils activationResults:];
      }

      v15 = 0;
    }
  }

  else
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils activationResults:];
    }

    v15 = 0;
  }

  return v15;
}

+ (id)parseChallengeObject:(id)object withHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v7 = [objectCopy objectForKeyedSubscript:@"Type"];

  if (!v7)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils parseChallengeObject:withHandler:];
    }

    goto LABEL_17;
  }

  v8 = [objectCopy objectForKeyedSubscript:@"Properties"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v9 = [v8 objectForKeyedSubscript:@"activation"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_17;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = [objectCopy objectForKeyedSubscript:@"Type"];
  v12 = [v9 objectForKeyedSubscript:@"status"];
  v13 = [v9 objectForKeyedSubscript:@"fmipUrl"];
  v14 = [v9 objectForKeyedSubscript:@"activationToken"];
  v21 = v14;
  if (v12)
  {
    v15 = v14;
    [dictionary setObject:v12 forKey:@"status"];
    if (v11)
    {
      [dictionary setObject:v11 forKey:@"type"];
      v16 = [handlerCopy spcWithComponent:v11 withIdentifier:0];
      if (v16)
      {
        [dictionary setObject:v16 forKey:@"spc"];
        if (v15)
        {
          [dictionary setObject:v15 forKey:@"token"];
        }

        if (v13)
        {
          [dictionary setObject:v13 forKey:@"endpoint"];
        }

        v17 = v13;
        v18 = dictionary;
        goto LABEL_29;
      }

      v17 = v13;
      v20 = handleForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils parseChallengeObject:withHandler:];
      }
    }

    else
    {
      v17 = v13;
      v16 = handleForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRPreflightUtils parseChallengeObject:withHandler:];
      }
    }
  }

  else
  {
    v17 = v13;
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRPreflightUtils parseChallengeObject:withHandler:];
    }
  }

  v18 = 0;
LABEL_29:

LABEL_18:

  return v18;
}

+ (BOOL)_hasSameKey:(id)key this:(id)this other:(id)other
{
  keyCopy = key;
  thisCopy = this;
  otherCopy = other;
  v10 = [thisCopy objectForKeyedSubscript:keyCopy];
  if (v10)
  {
  }

  else
  {
    v11 = [otherCopy objectForKeyedSubscript:keyCopy];

    if (!v11)
    {
      LOBYTE(v12) = 1;
      goto LABEL_9;
    }
  }

  v12 = [thisCopy objectForKeyedSubscript:keyCopy];
  if (v12)
  {
    v13 = [otherCopy objectForKeyedSubscript:keyCopy];

    if (v13)
    {
      v14 = [thisCopy objectForKeyedSubscript:keyCopy];
      v15 = [otherCopy objectForKeyedSubscript:keyCopy];
      LOBYTE(v12) = [v14 isEqualToString:v15];
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

LABEL_9:

  return v12;
}

+ (id)_mergeActivationLocks:(id)locks
{
  v44 = *MEMORY[0x1E69E9840];
  locksCopy = locks;
  v29 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = locksCopy;
  v30 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v30)
  {
    v28 = *v37;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v36 + 1) + 8 * v5);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v29;
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v33;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v33 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v32 + 1) + 8 * i);
              if ([self _hasSameKey:@"token" this:v12 other:v6] && objc_msgSend(self, "_hasSameKey:this:other:", @"status", v12, v6) && objc_msgSend(self, "_hasSameKey:this:other:", @"endpoint", v12, v6))
              {
                v20 = [v12 objectForKeyedSubscript:@"spc"];
                v21 = [v6 objectForKeyedSubscript:@"spc"];
                [v20 addObject:v21];

                v22 = [v12 objectForKeyedSubscript:@"type"];
                v23 = [v6 objectForKeyedSubscript:@"type"];
                [v22 addObject:v23];

                goto LABEL_18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
        v14 = MEMORY[0x1E695DF70];
        v15 = [v6 objectForKeyedSubscript:@"spc"];
        v16 = [v14 arrayWithObject:v15];
        objc_msgSend_setObject_forKeyedSubscript_(v13);

        v17 = MEMORY[0x1E695DF70];
        v18 = [v6 objectForKeyedSubscript:@"type"];
        v19 = [v17 arrayWithObject:v18];
        objc_msgSend_setObject_forKeyedSubscript_(v13);

        [v7 addObject:v13];
        v7 = v13;
LABEL_18:

        v5 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v30);
  }

  v24 = handleForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = obj;
    _os_log_impl(&dword_1CEDC5000, v24, OS_LOG_TYPE_DEFAULT, "activation locks: %@", buf, 0xCu);
  }

  v25 = handleForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v29;
    _os_log_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEFAULT, "merged activation locks: %@", buf, 0xCu);
  }

  return v29;
}

@end