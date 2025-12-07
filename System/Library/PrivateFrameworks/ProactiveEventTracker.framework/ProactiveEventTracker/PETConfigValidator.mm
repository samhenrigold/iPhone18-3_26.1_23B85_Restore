@interface PETConfigValidator
+ (BOOL)_groupConfigIsValid:(id)valid;
+ (BOOL)_messageConfigIsValid:(id)valid;
+ (BOOL)configIsValid:(id)valid;
@end

@implementation PETConfigValidator

+ (BOOL)_messageConfigIsValid:(id)valid
{
  v51 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"device_sampling"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of device sampling!", buf, 2u);
    }

    v28 = 0;
  }

  else
  {
    v5 = [validCopy objectForKeyedSubscript:@"device_sampling_seed"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of seed device sampling!", buf, 2u);
      }

      v28 = 0;
    }

    else
    {
      v6 = [validCopy objectForKeyedSubscript:@"message_sampling"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message sampling!", buf, 2u);
        }

        v28 = 0;
      }

      else
      {
        v7 = [validCopy objectForKeyedSubscript:@"sig_figs"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sig figs!", buf, 2u);
          }

          v28 = 0;
        }

        else
        {
          v8 = [validCopy objectForKeyedSubscript:@"aggregated"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of aggregated!", buf, 2u);
            }

            v28 = 0;
          }

          else
          {
            v9 = [validCopy objectForKeyedSubscript:@"field_whitelist"];
            if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of field whitelist!", buf, 2u);
              }

              v28 = 0;
            }

            else
            {
              v32 = v8;
              v33 = v7;
              v34 = v9;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v10 = v9;
              v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v44;
                while (2)
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v44 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of field in field whitelist!", buf, 2u);
                      }

                      v28 = 0;
                      v15 = v10;
                      goto LABEL_62;
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
                  if (v12)
                  {
                    continue;
                  }

                  break;
                }
              }

              v15 = [validCopy objectForKeyedSubscript:@"hist_buckets"];
              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of histogram buckets!", buf, 2u);
                }

                v28 = 0;
LABEL_62:
                v8 = v32;
                v7 = v33;
              }

              else
              {
                v30 = v6;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v15 = v15;
                v16 = [v15 countByEnumeratingWithState:&v39 objects:v49 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v40;
                  while (2)
                  {
                    v19 = v15;
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v40 != v18)
                      {
                        objc_enumerationMutation(v19);
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of bucket in histogram buckets!", buf, 2u);
                        }

                        v28 = 0;
                        v15 = v19;
                        v21 = v19;
                        goto LABEL_69;
                      }
                    }

                    v15 = v19;
                    v17 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
                    if (v17)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v21 = [validCopy objectForKeyedSubscript:@"nested_fields"];
                if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of nested fields!", buf, 2u);
                  }

                  v28 = 0;
LABEL_69:
                  v8 = v32;
                  v7 = v33;
                  v6 = v30;
                }

                else
                {
                  v35 = 0u;
                  v36 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  obj = v21;
                  v22 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v36;
                    v6 = v30;
                    while (2)
                    {
                      for (k = 0; k != v23; ++k)
                      {
                        if (*v36 != v24)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v26 = *(*(&v35 + 1) + 8 * k);
                        if (![v26 integerValue])
                        {
                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected value of field string in nested fields!", buf, 2u);
                          }

                          goto LABEL_82;
                        }

                        v27 = [obj objectForKeyedSubscript:v26];
                        if (v27)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected value of message name in nested fields!", buf, 2u);
                            }

LABEL_82:
                            v28 = 0;
                            goto LABEL_83;
                          }
                        }
                      }

                      v23 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
                      v28 = 1;
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v28 = 1;
                    v6 = v30;
                  }

LABEL_83:
                  v21 = obj;

                  v8 = v32;
                  v7 = v33;
                }
              }

              v9 = v34;
            }
          }
        }
      }
    }
  }

  return v28;
}

+ (BOOL)_groupConfigIsValid:(id)valid
{
  v29 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"device_sampling"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group device sampling!", buf, 2u);
    }

    v17 = 0;
  }

  else
  {
    v5 = [validCopy objectForKeyedSubscript:@"device_sampling_seed"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group seed device sampling!", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      v6 = [validCopy objectForKeyedSubscript:@"message_sampling"];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of group message sampling!", buf, 2u);
        }

        v17 = 0;
      }

      else
      {
        v7 = [validCopy objectForKeyedSubscript:@"sampling_limit"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sampling limit!", buf, 2u);
          }

          v17 = 0;
        }

        else
        {
          v8 = [validCopy objectForKeyedSubscript:@"sig_figs"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of sig_figs!", buf, 2u);
            }

            v17 = 0;
          }

          else
          {
            v9 = [validCopy objectForKeyedSubscript:@"aggregated"];
            if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of aggregated!", buf, 2u);
              }

              v17 = 0;
            }

            else
            {
              v10 = [validCopy objectForKeyedSubscript:@"message_whitelist"];
              if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message whitelist!", buf, 2u);
                }

                v17 = 0;
              }

              else
              {
                v21 = v9;
                v22 = v8;
                v25 = 0u;
                v26 = 0u;
                v23 = 0u;
                v24 = 0u;
                v20 = v10;
                allValues = [v10 allValues];
                v12 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v24;
                  v19 = v7;
                  while (2)
                  {
                    for (i = 0; i != v13; ++i)
                    {
                      if (*v24 != v14)
                      {
                        objc_enumerationMutation(allValues);
                      }

                      v16 = *(*(&v23 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v7 = v19;
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message config!", buf, 2u);
                        }

                        v17 = 0;
                        goto LABEL_51;
                      }

                      if (![objc_opt_class() _messageConfigIsValid:v16])
                      {
                        v17 = 0;
                        v7 = v19;
                        goto LABEL_51;
                      }
                    }

                    v13 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
                    v17 = 1;
                    v7 = v19;
                    if (v13)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v17 = 1;
                }

LABEL_51:

                v9 = v21;
                v8 = v22;
                v10 = v20;
              }
            }
          }
        }
      }
    }
  }

  return v17;
}

+ (BOOL)configIsValid:(id)valid
{
  v25 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v15 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "unexpected type of config version!";
LABEL_24:
    _os_log_error_impl(&dword_1DF726000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_16;
  }

  v6 = [validCopy objectForKeyedSubscript:@"message_groups"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "unexpected type of message groups configuration!";
    goto LABEL_24;
  }

  v8 = [validCopy objectForKeyedSubscript:@"message_groups"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [v8 allValues];
  v10 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unexpected type of message group configuration!", buf, 2u);
          }

LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }

        if (![objc_opt_class() _groupConfigIsValid:v14])
        {
          goto LABEL_20;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
      v15 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_21:

LABEL_22:
  return v15;
}

@end