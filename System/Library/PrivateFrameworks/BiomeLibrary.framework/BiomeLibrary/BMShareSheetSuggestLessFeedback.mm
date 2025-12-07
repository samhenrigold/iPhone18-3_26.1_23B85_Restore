@interface BMShareSheetSuggestLessFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMShareSheetSuggestLessFeedback)initWithBundleID:(id)d conversationIdentifier:(id)identifier derivedIntentIdentifier:(id)intentIdentifier handle:(id)handle contactID:(id)iD;
- (BMShareSheetSuggestLessFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMShareSheetSuggestLessFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMShareSheetSuggestLessFeedback *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMShareSheetSuggestLessFeedback *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    conversationIdentifier = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
    conversationIdentifier2 = [v5 conversationIdentifier];
    v15 = conversationIdentifier2;
    if (conversationIdentifier == conversationIdentifier2)
    {
    }

    else
    {
      conversationIdentifier3 = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
      conversationIdentifier4 = [v5 conversationIdentifier];
      v18 = [conversationIdentifier3 isEqual:conversationIdentifier4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    derivedIntentIdentifier = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
    derivedIntentIdentifier2 = [v5 derivedIntentIdentifier];
    v21 = derivedIntentIdentifier2;
    if (derivedIntentIdentifier == derivedIntentIdentifier2)
    {
    }

    else
    {
      derivedIntentIdentifier3 = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
      derivedIntentIdentifier4 = [v5 derivedIntentIdentifier];
      v24 = [derivedIntentIdentifier3 isEqual:derivedIntentIdentifier4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    handle = [(BMShareSheetSuggestLessFeedback *)self handle];
    handle2 = [v5 handle];
    v27 = handle2;
    if (handle == handle2)
    {
    }

    else
    {
      handle3 = [(BMShareSheetSuggestLessFeedback *)self handle];
      handle4 = [v5 handle];
      v30 = [handle3 isEqual:handle4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    contactID = [(BMShareSheetSuggestLessFeedback *)self contactID];
    contactID2 = [v5 contactID];
    if (contactID == contactID2)
    {
      v12 = 1;
    }

    else
    {
      contactID3 = [(BMShareSheetSuggestLessFeedback *)self contactID];
      contactID4 = [v5 contactID];
      v12 = [contactID3 isEqual:contactID4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v22[5] = *MEMORY[0x1E69E9840];
  bundleID = [(BMShareSheetSuggestLessFeedback *)self bundleID];
  conversationIdentifier = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
  derivedIntentIdentifier = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
  handle = [(BMShareSheetSuggestLessFeedback *)self handle];
  contactID = [(BMShareSheetSuggestLessFeedback *)self contactID];
  v17 = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15 = null;
  v22[0] = null;
  v18 = @"conversationIdentifier";
  null2 = conversationIdentifier;
  if (!conversationIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v19 = @"derivedIntentIdentifier";
  null3 = derivedIntentIdentifier;
  if (!derivedIntentIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v20 = @"handle";
  null4 = handle;
  if (!handle)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21 = @"contactID";
  null5 = contactID;
  if (!contactID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v17 count:{5, v15}];
  if (contactID)
  {
    if (handle)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (handle)
    {
LABEL_13:
      if (derivedIntentIdentifier)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (derivedIntentIdentifier)
  {
LABEL_14:
    if (conversationIdentifier)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (bundleID)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!conversationIdentifier)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (bundleID)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:

  return v13;
}

- (BMShareSheetSuggestLessFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"conversationIdentifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationIdentifier"];
        v45 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *errorCopy = [v21 initWithDomain:v22 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v37 = v9;
    }

    else
    {
      v37 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"derivedIntentIdentifier"];
    v34 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"derivedIntentIdentifier"];
        v43 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v35 = 0;
        v16 = 0;
        *errorCopy2 = [v24 initWithDomain:v25 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
        v8 = v34;
LABEL_19:

        goto LABEL_20;
      }

      v35 = v10;
    }

    else
    {
      v35 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"handle"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
        v41 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v27 = [v32 initWithDomain:v26 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v27;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"contactID"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactID"];
          v39 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *errorCopy3 = [v33 initWithDomain:v30 code:2 userInfo:v29];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMShareSheetSuggestLessFeedback *)selfCopy initWithBundleID:v34 conversationIdentifier:v37 derivedIntentIdentifier:v35 handle:v13 contactID:v15];
    selfCopy = v16;
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  errorCopy4 = error;
  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
  v47[0] = v37;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMShareSheetSuggestLessFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_conversationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_derivedIntentIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMShareSheetSuggestLessFeedback;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E96E10[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMShareSheetSuggestLessFeedback *)self bundleID];
  conversationIdentifier = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
  derivedIntentIdentifier = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
  handle = [(BMShareSheetSuggestLessFeedback *)self handle];
  contactID = [(BMShareSheetSuggestLessFeedback *)self contactID];
  v9 = [v3 initWithFormat:@"BMShareSheetSuggestLessFeedback with bundleID: %@, conversationIdentifier: %@, derivedIntentIdentifier: %@, handle: %@, contactID: %@", bundleID, conversationIdentifier, derivedIntentIdentifier, handle, contactID];

  return v9;
}

- (BMShareSheetSuggestLessFeedback)initWithBundleID:(id)d conversationIdentifier:(id)identifier derivedIntentIdentifier:(id)intentIdentifier handle:(id)handle contactID:(id)iD
{
  dCopy = d;
  identifierCopy = identifier;
  intentIdentifierCopy = intentIdentifier;
  handleCopy = handle;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = BMShareSheetSuggestLessFeedback;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_bundleID, d);
    objc_storeStrong(&v17->_conversationIdentifier, identifier);
    objc_storeStrong(&v17->_derivedIntentIdentifier, intentIdentifier);
    objc_storeStrong(&v17->_handle, handle);
    objc_storeStrong(&v17->_contactID, iD);
  }

  return v17;
}

+ (id)protoFields
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"derivedIntentIdentifier" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactID" number:5 type:13 subMessageClass:0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)columns
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"derivedIntentIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
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

    v8 = [[BMShareSheetSuggestLessFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end