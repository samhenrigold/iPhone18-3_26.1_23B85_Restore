@interface CAEvent
+ (id)eventWithName:(id)name fields:(id)fields;
- (BOOL)isValidPayload:(id)payload;
- (BOOL)sendPayload:(id)payload;
- (CAEvent)initWithName:(id)name fields:(id)fields;
- (id)createPayloadFromDictionary:(id)dictionary;
@end

@implementation CAEvent

- (CAEvent)initWithName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  v14.receiver = self;
  v14.super_class = CAEvent;
  v9 = [(CAEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [fieldsCopy copy];
    fields = v10->_fields;
    v10->_fields = v11;
  }

  return v10;
}

+ (id)eventWithName:(id)name fields:(id)fields
{
  fieldsCopy = fields;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy fields:fieldsCopy];

  return v8;
}

- (id)createPayloadFromDictionary:(id)dictionary
{
  PayloadFromDictionary = createPayloadFromDictionary(self->_fields, dictionary);

  return PayloadFromDictionary;
}

- (BOOL)isValidPayload:(id)payload
{
  payloadCopy = payload;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  v5 = self->_fields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v6)
  {
    v9 = 1;
    goto LABEL_22;
  }

  v7 = v6;
  v8 = *v55;
  v9 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v55 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v54 + 1) + 8 * v10);
      name = [v11 name];
      v13 = [payloadCopy objectForKeyedSubscript:name];

      if (!v13)
      {
        v18 = LogIOAnalytics(v14, v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          name = selfCopy->_name;
          name2 = [v11 name];
          *buf = 138412546;
          v61 = name;
          v62 = 2112;
          v63 = name2;
          v21 = v18;
          v22 = "[%@] missing field. (%@)";
          v23 = 22;
          goto LABEL_18;
        }

LABEL_13:

        goto LABEL_14;
      }

      if (v9)
      {
        v16 = [v11 isValidValue:v13];
        if (v16)
        {
          v9 = 1;
          goto LABEL_15;
        }

        v18 = LogIOAnalytics(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = selfCopy->_name;
          name2 = [v11 name];
          *buf = 138412802;
          v61 = v24;
          v62 = 2112;
          v63 = name2;
          v64 = 2112;
          v65 = v13;
          v21 = v18;
          v22 = "[%@] invalid value for field. (%@, %@)";
          v23 = 32;
LABEL_18:
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
        }

        goto LABEL_13;
      }

LABEL_14:
      v9 = 0;
LABEL_15:

      v10 = v10 + 1;
    }

    while (v7 != v10);
    v25 = [(NSArray *)v5 countByEnumeratingWithState:&v54 objects:v66 count:16];
    v7 = v25;
  }

  while (v25);
LABEL_22:

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = payloadCopy;
  v26 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v26)
  {
    v28 = v26;
    v44 = *v51;
    *&v27 = 138412546;
    v42 = v27;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v31 = selfCopy->_fields;
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v47;
LABEL_29:
          v35 = 0;
          while (1)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v31);
            }

            name3 = [*(*(&v46 + 1) + 8 * v35) name];
            v37 = [v30 isEqual:name3];

            if (v37)
            {
              break;
            }

            if (v33 == ++v35)
            {
              v33 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v33)
              {
                goto LABEL_29;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:

          v31 = LogIOAnalytics(v38, v39);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v40 = selfCopy->_name;
            *buf = v42;
            v61 = v40;
            v62 = 2112;
            v63 = v30;
            _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "[%@] extra field found! (%@)", buf, 0x16u);
          }

          v9 = 0;
        }
      }

      v28 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v28);
  }

  return v9 & 1;
}

- (BOOL)sendPayload:(id)payload
{
  payloadCopy = payload;
  if (!payloadCopy)
  {
    v10 = LogIOAnalytics(0, v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAEvent sendPayload:];
    }

    goto LABEL_10;
  }

  v6 = [(CAEvent *)self isValidPayload:payloadCopy];
  v7 = v6;
  v9 = LogIOAnalytics(v6, v8);
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAEvent sendPayload:];
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CAEvent sendPayload:];
  }

  AnalyticsSendEvent();
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)sendPayload:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "[%@] dropping invalid payload: %@", v2, 0x16u);
}

- (void)sendPayload:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "[%@] sending event: %@", v2, 0x16u);
}

- (void)sendPayload:.cold.3()
{
  OUTLINED_FUNCTION_0_5();
  v2 = 0;
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "[%@] dropping invalid payload: (%@)", v1, 0x16u);
}

@end