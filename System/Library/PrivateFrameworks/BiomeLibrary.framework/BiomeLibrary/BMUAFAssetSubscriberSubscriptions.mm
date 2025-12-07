@interface BMUAFAssetSubscriberSubscriptions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAssetSubscriberSubscriptions)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMUAFAssetSubscriberSubscriptions)initWithSubscriberName:(id)name subscriptions:(id)subscriptions;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_subscriptionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAssetSubscriberSubscriptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    subscriberName = [(BMUAFAssetSubscriberSubscriptions *)self subscriberName];
    subscriberName2 = [v5 subscriberName];
    v8 = subscriberName2;
    if (subscriberName == subscriberName2)
    {
    }

    else
    {
      subscriberName3 = [(BMUAFAssetSubscriberSubscriptions *)self subscriberName];
      subscriberName4 = [v5 subscriberName];
      v11 = [subscriberName3 isEqual:subscriberName4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    subscriptions = [(BMUAFAssetSubscriberSubscriptions *)self subscriptions];
    subscriptions2 = [v5 subscriptions];
    if (subscriptions == subscriptions2)
    {
      v12 = 1;
    }

    else
    {
      subscriptions3 = [(BMUAFAssetSubscriberSubscriptions *)self subscriptions];
      subscriptions4 = [v5 subscriptions];
      v12 = [subscriptions3 isEqual:subscriptions4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  subscriberName = [(BMUAFAssetSubscriberSubscriptions *)self subscriberName];
  _subscriptionsJSONArray = [(BMUAFAssetSubscriberSubscriptions *)self _subscriptionsJSONArray];
  v9[0] = @"subscriberName";
  null = subscriberName;
  if (!subscriberName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"subscriptions";
  v10[0] = null;
  null2 = _subscriptionsJSONArray;
  if (!_subscriptionsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (_subscriptionsJSONArray)
  {
    if (subscriberName)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (subscriberName)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (id)_subscriptionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscriptions = [(BMUAFAssetSubscriberSubscriptions *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMUAFAssetSubscriberSubscriptions)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v58[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"subscriberName"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = p_isa;
        v24 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subscriberName"];
        v58[0] = v9;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
        v25 = [v22 initWithDomain:v24 code:2 userInfo:v12];
        v8 = 0;
        p_isa = 0;
        *v23 = v25;
        goto LABEL_34;
      }

      v8 = 0;
      goto LABEL_36;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"subscriptions"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  v44 = v7;
  if (v11)
  {
    v40 = p_isa;
    v41 = v8;
    v42 = dictionaryCopy;
    selfCopy2 = self;

    v9 = 0;
LABEL_9:
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = v9;
    v13 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = *v47;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v47 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v46 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v42;
        self = selfCopy2;
        v7 = v44;
        v26 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"subscriptions"];
        v51 = v18;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v51;
        v31 = &v50;
        goto LABEL_28;
      }

      v18 = v17;
      v19 = [BMUAFAssetSetSubscription alloc];
      v45 = 0;
      v20 = [(BMUAFAssetSetSubscription *)v19 initWithJSONDictionary:v18 error:&v45];
      v21 = v45;
      if (v21)
      {
        v32 = v21;
        if (v40)
        {
          v34 = v21;
          *v40 = v32;
        }

        dictionaryCopy = v42;
        self = selfCopy2;
        v7 = v44;
LABEL_32:

LABEL_33:
        p_isa = 0;
        v8 = v41;
        goto LABEL_34;
      }

      [v12 addObject:v20];

      if (v14 == ++v16)
      {
        v14 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

LABEL_19:

        v8 = v41;
        self = [(BMUAFAssetSubscriberSubscriptions *)selfCopy2 initWithSubscriberName:v41 subscriptions:v12];
        p_isa = &self->super.super.isa;
        dictionaryCopy = v42;
        v7 = v44;
LABEL_34:

        goto LABEL_35;
      }
    }

    dictionaryCopy = v42;
    self = selfCopy2;
    v7 = v44;
    v26 = v40;
    if (!v40)
    {
      goto LABEL_33;
    }

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v52 = *MEMORY[0x1E696A578];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"subscriptions"];
    v53 = v18;
    v29 = MEMORY[0x1E695DF20];
    v30 = &v53;
    v31 = &v52;
LABEL_28:
    v32 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
    v33 = v28;
    v7 = v44;
    *v26 = [v27 initWithDomain:v33 code:2 userInfo:v32];
    goto LABEL_32;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = p_isa;
    v41 = v8;
    v42 = dictionaryCopy;
    selfCopy2 = self;
    goto LABEL_9;
  }

  if (p_isa)
  {
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = p_isa;
    v38 = *MEMORY[0x1E698F240];
    v55 = *MEMORY[0x1E696A578];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"subscriptions"];
    v56 = v12;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    *v37 = [v36 initWithDomain:v38 code:2 userInfo:v39];

    p_isa = 0;
    goto LABEL_34;
  }

LABEL_35:

LABEL_36:
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAssetSubscriberSubscriptions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_subscriberName)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_subscriptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v26.receiver = self;
  v26.super_class = BMUAFAssetSubscriberSubscriptions;
  v5 = [(BMEventBase *)&v26 init];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v27 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v27[0] & 0x7F) << v8;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || (v18 = [[BMUAFAssetSetSubscription alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }

        v19 = v18;
        [v6 addObject:v18];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        subscriberName = v5->_subscriberName;
        v5->_subscriberName = v16;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_28;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v21 = [v6 copy];
  subscriptions = v5->_subscriptions;
  v5->_subscriptions = v21;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_29:
    v24 = 0;
  }

  else
  {
LABEL_27:
    v24 = v5;
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  subscriberName = [(BMUAFAssetSubscriberSubscriptions *)self subscriberName];
  subscriptions = [(BMUAFAssetSubscriberSubscriptions *)self subscriptions];
  v6 = [v3 initWithFormat:@"BMUAFAssetSubscriberSubscriptions with subscriberName: %@, subscriptions: %@", subscriberName, subscriptions];

  return v6;
}

- (BMUAFAssetSubscriberSubscriptions)initWithSubscriberName:(id)name subscriptions:(id)subscriptions
{
  nameCopy = name;
  subscriptionsCopy = subscriptions;
  v11.receiver = self;
  v11.super_class = BMUAFAssetSubscriberSubscriptions;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_subscriberName, name);
    objc_storeStrong(&v9->_subscriptions, subscriptions);
  }

  return v9;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscriberName" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscriptions" number:2 type:14 subMessageClass:objc_opt_class()];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subscriberName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subscriptions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_492];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __44__BMUAFAssetSubscriberSubscriptions_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _subscriptionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMUAFAssetSubscriberSubscriptions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end