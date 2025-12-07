@interface NSObject(HealthRecordUtils)
- (id)hd_handleExtensionComponent:()HealthRecordUtils error:;
- (id)hd_stringArrayValue;
- (id)hd_stringValue;
- (id)hd_valueForKeyPath:()HealthRecordUtils rootResource:error:;
@end

@implementation NSObject(HealthRecordUtils)

- (id)hd_stringValue
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [self copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [self description];
    }

    else if (objc_opt_respondsToSelector())
    {
      v2 = [self performSelector:sel_stringValue];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)hd_stringArrayValue
{
  v5[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [self copy];
    v5[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)hd_valueForKeyPath:()HealthRecordUtils rootResource:error:
{
  v117 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  v85 = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSObject(HealthRecordUtils) hd_valueForKeyPath:a2 rootResource:self error:?];
  }

  v82 = a5;
  v83 = v9;
  v84 = [HDHealthRecordsExtractionRule extractionRuleWithDefinition:v9 error:a5];
  v11 = v84;
  if (!v84)
  {
    keyPath = 0;
    goto LABEL_47;
  }

  selfCopy = self;
  keyPath = [v84 keyPath];
  v113 = 0;
  v14 = [HDHRExtractionRulesKeyPathParser componentsFrom:keyPath error:&v113];
  v81 = v113;
  v15 = [v14 mutableCopy];

  if (!v15)
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [NSObject(HealthRecordUtils) hd_valueForKeyPath:v84 rootResource:v81 error:v32];
    }

    v33 = v81;
    v34 = v33;
    if (v33)
    {
      if (v82)
      {
        v35 = v33;
        *v82 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_45;
  }

  if (!selfCopy)
  {
LABEL_45:
    keyPath = 0;
    goto LABEL_46;
  }

  while (1)
  {
    if (![v15 count])
    {
      v36 = [HDHealthRecordsExtractionRuleTransformer transformValue:selfCopy rootResource:v85 extractionRule:v84 error:v82];

      selfCopy = v36;
      keyPath = selfCopy;
      goto LABEL_46;
    }

    firstObject = [v15 firstObject];
    name = [firstObject name];
    [v15 removeObjectAtIndex:0];
    if ([name isEqualToString:@"@contained"])
    {
      v107 = 0;
      v108 = &v107;
      v109 = 0x3032000000;
      v110 = __Block_byref_object_copy__3;
      v111 = __Block_byref_object_dispose__3;
      v112 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __69__NSObject_HealthRecordUtils__hd_valueForKeyPath_rootResource_error___block_invoke;
        v104[3] = &unk_2796E2C58;
        v106 = &v107;
        v105 = v85;
        jSONObject = [selfCopy hk_map:v104];
        v19 = [jSONObject count];
        if (v19 != [selfCopy count])
        {
          v26 = v108[5];
          v27 = v26;
          if (v26)
          {
            if (v82)
            {
              v28 = v26;
              *v82 = v27;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          keyPath = 0;
          v22 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        v24 = (v108 + 5);
        obj = v108[5];
        v25 = [HDHealthRecordsExtractionUtilities resourceReferencedBy:selfCopy containedIn:v85 error:&obj];
        objc_storeStrong(v24, obj);
        jSONObject = [v25 JSONObject];

        if (!jSONObject)
        {
          selfCopy = 0;
          if (v108[5])
          {
            v22 = 1;
            keyPath = 0;
            goto LABEL_29;
          }

          jSONObject = 0;
        }
      }

      v22 = 6;
      selfCopy = jSONObject;
LABEL_29:
      _Block_object_dispose(&v107, 8);

      goto LABEL_33;
    }

    if ([name hasPrefix:@"@extension"])
    {
      v102 = 0;
      v20 = [selfCopy hd_handleExtensionComponent:firstObject error:&v102];
      v21 = v102;

      if (v20)
      {
        v22 = 6;
      }

      else
      {
        v29 = v21;
        v30 = v29;
        if (v29)
        {
          if (v82)
          {
            v31 = v29;
            *v82 = v30;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        keyPath = 0;
        v22 = 1;
      }

      selfCopy = v20;
LABEL_33:

      if (v22 != 6)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v23 = [selfCopy valueForKey:name];

    selfCopy = v23;
LABEL_34:
    if (!selfCopy)
    {
      goto LABEL_45;
    }
  }

  v38 = [v15 hk_map:&__block_literal_global_4];
  v76 = [v38 componentsJoinedByString:@"."];

  v80 = [v84 definitionBySubstitutingKeyPathWith:v76];
  v39 = selfCopy;
  if ([name isEqualToString:@"@all"])
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v41 = v39;
    v42 = [v41 countByEnumeratingWithState:&v98 objects:v116 count:16];
    v79 = v40;
    hd_stringValue = v41;
    if (v42)
    {
      v44 = *v99;
      hd_stringValue = v41;
      v77 = v41;
      while (2)
      {
        v45 = 0;
        v46 = hd_stringValue;
        do
        {
          if (*v99 != v44)
          {
            objc_enumerationMutation(v77);
          }

          v47 = *(*(&v98 + 1) + 8 * v45);
          v97 = 0;
          hd_stringValue = [v47 hd_valueForKeyPath:v80 rootResource:v85 error:&v97];
          v48 = v97;

          if (hd_stringValue)
          {
            [v79 addObject:hd_stringValue];
          }

          else
          {
            v49 = v48;
            if (v49)
            {
              v60 = v49;
              if (v82)
              {
                v61 = v49;
                *v82 = v60;
              }

              else
              {
                _HKLogDroppedError();
              }

              goto LABEL_95;
            }
          }

          ++v45;
          v46 = hd_stringValue;
        }

        while (v42 != v45);
        v41 = v77;
        v42 = [v77 countByEnumeratingWithState:&v98 objects:v116 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v50 = v79;
    v51 = v79;
    goto LABEL_62;
  }

  if (![name isEqualToString:@"@any"])
  {
    if (![name isEqualToString:@"@concat"])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:v82 code:3 format:{@"keypath %@ at key «%@» needs to handle array", v83, name}];
      keyPath = 0;
      hd_stringValue = v39;
      goto LABEL_107;
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v63 = v39;
    v64 = [v63 countByEnumeratingWithState:&v87 objects:v114 count:16];
    v79 = v62;
    hd_stringValue = v63;
    if (v64)
    {
      v78 = *v88;
      hd_stringValue = v63;
      v75 = v63;
      do
      {
        v65 = 0;
        v66 = hd_stringValue;
        do
        {
          if (*v88 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v67 = *(*(&v87 + 1) + 8 * v65);
          v86 = 0;
          v68 = [v67 hd_valueForKeyPath:v80 rootResource:v85 error:&v86];
          v69 = v86;
          hd_stringValue = [v68 hd_stringValue];

          if (hd_stringValue)
          {
            [v79 addObject:hd_stringValue];
          }

          else if (v69)
          {
            v72 = v69;
            v73 = v72;
            if (v82)
            {
              v74 = v72;
              *v82 = v73;
            }

            else
            {
              _HKLogDroppedError();
            }

LABEL_95:
            hd_stringValue = 0;
            keyPath = 0;
            goto LABEL_105;
          }

          ++v65;
          v66 = hd_stringValue;
        }

        while (v64 != v65);
        v63 = v75;
        v64 = [v75 countByEnumeratingWithState:&v87 objects:v114 count:16];
      }

      while (v64);
    }

    v50 = v79;
    if (![v79 count])
    {
      keyPath = 0;
      goto LABEL_106;
    }

    v51 = [v79 componentsJoinedByString:@"\n\n"];
LABEL_62:
    keyPath = v51;
    goto LABEL_106;
  }

  v96 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v50 = v39;
  v52 = [v50 countByEnumeratingWithState:&v93 objects:v115 count:16];
  if (!v52)
  {
    keyPath = 0;
    hd_stringValue = v50;
    goto LABEL_106;
  }

  v53 = *v94;
  keyPath = v50;
  v79 = v50;
  while (2)
  {
    v54 = 0;
    while (2)
    {
      v55 = v52;
      if (*v94 != v53)
      {
        objc_enumerationMutation(v79);
      }

      v56 = *(*(&v93 + 1) + 8 * v54);
      if ([v76 length])
      {
        v92 = 0;
        v57 = &v92;
        [v56 hd_valueForKeyPath:v80 rootResource:v85 error:&v92];
      }

      else
      {
        v91 = 0;
        v57 = &v91;
        [HDHealthRecordsExtractionRuleTransformer transformValue:v56 rootResource:v85 extractionRule:v84 error:&v91];
      }
      hd_stringValue = ;
      v58 = *v57;

      if (hd_stringValue)
      {
        v70 = hd_stringValue;
LABEL_104:

        keyPath = hd_stringValue;
        goto LABEL_105;
      }

      v59 = v58;
      if (v59)
      {
        v58 = v59;
        if (v82)
        {
          v71 = v59;
          *v82 = v58;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_104;
      }

      keyPath = 0;
      ++v54;
      v52 = v55;
      if (v55 != v54)
      {
        continue;
      }

      break;
    }

    v52 = [v79 countByEnumeratingWithState:&v93 objects:v115 count:16];
    keyPath = 0;
    if (v52)
    {
      continue;
    }

    break;
  }

  hd_stringValue = 0;
LABEL_105:
  v50 = v79;
LABEL_106:

LABEL_107:
  selfCopy = hd_stringValue;
LABEL_46:

  v11 = v84;
LABEL_47:

  return keyPath;
}

- (id)hd_handleExtensionComponent:()HealthRecordUtils error:
{
  v6 = a3;
  parenthesisContent = [v6 parenthesisContent];

  if (parenthesisContent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parenthesisContent2 = [v6 parenthesisContent];
      v9 = [HDFHIRExtensionProcessor extensionsForURL:parenthesisContent2 inJSONDictionary:self error:a4];

      if (v9)
      {
        v10 = [v9 hk_map:&__block_literal_global_350];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Extensions can only be found on dictionary instances, not on %@", objc_opt_class()}];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    name = [v6 name];
    [v11 hk_assignError:a4 code:3 format:{@"A valid extraction rules component has content between parenthesis, this one doesn't: %@", name}];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end