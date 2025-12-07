@interface TCCDEventFilter
- (BOOL)matches:(id)matches;
- (TCCDEventFilter)initWithCriteria:(id)criteria;
@end

@implementation TCCDEventFilter

- (TCCDEventFilter)initWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v44.receiver = self;
  v44.super_class = TCCDEventFilter;
  v5 = [(TCCDEventFilter *)&v44 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = tcc_events_log(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100038248(v6);
    }

LABEL_32:

    v27 = 0;
    goto LABEL_33;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v6;
  v35 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v35)
  {
    goto LABEL_24;
  }

  v9 = *v41;
  p_superclass = TCCDAuthorizationRightState.superclass;
  v32 = v6;
  v33 = criteriaCopy;
  v34 = v8;
  v31 = *v41;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v41 != v9)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();
      if ((v13 & 1) == 0)
      {
        v30 = tcc_events_log(v13);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1000382CC(v12);
        }

        goto LABEL_38;
      }

      currentPlatform = [p_superclass + 149 currentPlatform];
      v15 = [currentPlatform serviceByName:v12];

      if (!v15)
      {
        v30 = tcc_events_log(v16);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10003846C(v12, v30);
        }

LABEL_38:

        v6 = v32;
        criteriaCopy = v33;
        goto LABEL_32;
      }

      v17 = [v8 objectForKeyedSubscript:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();
        if ((v18 & 1) == 0)
        {
          v19 = tcc_events_log(v18);
          v6 = v32;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100038350(v17);
          }

LABEL_31:

          criteriaCopy = v33;
          goto LABEL_32;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v37;
          while (2)
          {
            v23 = 0;
            do
            {
              if (*v37 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v36 + 1) + 8 * v23);
              objc_opt_class();
              v25 = objc_opt_isKindOfClass();
              if ((v25 & 1) == 0)
              {
                v28 = tcc_events_log(v25);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_1000383D4(v24);
                }

                v6 = v32;
                v8 = v34;
                goto LABEL_31;
              }

              v23 = v23 + 1;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v8 = v34;
        v9 = v31;
        p_superclass = (TCCDAuthorizationRightState + 8);
      }

      v11 = v11 + 1;
    }

    while (v11 != v35);
    criteriaCopy = v33;
    v35 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_24:

  servicesToSubjects = v5->_servicesToSubjects;
  v5->_servicesToSubjects = v8;

LABEL_25:
  v27 = v5;
LABEL_33:

  return v27;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  if ([(NSDictionary *)self->_servicesToSubjects count])
  {
    servicesToSubjects = self->_servicesToSubjects;
    service = [matchesCopy service];
    name = [service name];
    v8 = [(NSDictionary *)servicesToSubjects objectForKeyedSubscript:name];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(matchesCopy, "subjectIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, (v10))
    {
      v11 = 1;
    }

    else
    {
      v12 = [(NSDictionary *)self->_servicesToSubjects objectForKeyedSubscript:@"kTCCServiceAll"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue])
      {
        v11 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          subjectIdentifier = [matchesCopy subjectIdentifier];
          v11 = [v12 containsObject:subjectIdentifier];
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end