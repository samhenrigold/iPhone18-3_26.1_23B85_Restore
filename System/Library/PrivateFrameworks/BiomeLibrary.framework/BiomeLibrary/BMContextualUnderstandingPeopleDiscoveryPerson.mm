@interface BMContextualUnderstandingPeopleDiscoveryPerson
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithContactID:(id)d identifier:(id)identifier name:(id)name flags:(id)flags activityLevel:(id)level proximity:(id)proximity;
- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextualUnderstandingPeopleDiscoveryPerson

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contactID = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
    contactID2 = [v5 contactID];
    v8 = contactID2;
    if (contactID == contactID2)
    {
    }

    else
    {
      contactID3 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
      contactID4 = [v5 contactID];
      v11 = [contactID3 isEqual:contactID4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    identifier = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
    identifier2 = [v5 identifier];
    v15 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
      identifier4 = [v5 identifier];
      v18 = [identifier3 isEqual:identifier4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    name = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
    name2 = [v5 name];
    v21 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
      name4 = [v5 name];
      v24 = [name3 isEqual:name4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasFlags](self, "hasFlags") && ![v5 hasFlags] || -[BMContextualUnderstandingPeopleDiscoveryPerson hasFlags](self, "hasFlags") && objc_msgSend(v5, "hasFlags") && (v25 = -[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags"), v25 == objc_msgSend(v5, "flags")))
    {
      if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasActivityLevel](self, "hasActivityLevel") && ![v5 hasActivityLevel] || -[BMContextualUnderstandingPeopleDiscoveryPerson hasActivityLevel](self, "hasActivityLevel") && objc_msgSend(v5, "hasActivityLevel") && (v26 = -[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel"), v26 == objc_msgSend(v5, "activityLevel")))
      {
        if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasProximity](self, "hasProximity") && ![v5 hasProximity])
        {
          v12 = 1;
          goto LABEL_31;
        }

        if (-[BMContextualUnderstandingPeopleDiscoveryPerson hasProximity](self, "hasProximity") && [v5 hasProximity])
        {
          proximity = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self proximity];
          v12 = proximity == [v5 proximity];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v22[6] = *MEMORY[0x1E69E9840];
  contactID = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
  identifier = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
  name = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasFlags])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasActivityLevel])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasProximity])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson proximity](self, "proximity")}];
  }

  else
  {
    v8 = 0;
  }

  v21[0] = @"contactID";
  null = contactID;
  if (!contactID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v19 = identifier;
  v22[0] = null;
  v21[1] = @"identifier";
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v21[2] = @"name";
  null3 = name;
  if (!name)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = contactID;
  v22[2] = null3;
  v21[3] = @"flags";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21[4] = @"activityLevel";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v21[5] = @"proximity";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{6, v17}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_33:

    if (v6)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_24:
  if (v6)
  {
    goto LABEL_25;
  }

LABEL_34:

LABEL_25:
  if (!name)
  {
  }

  if (v19)
  {
    if (v20)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v20)
    {
      goto LABEL_29;
    }
  }

LABEL_29:

  return v15;
}

- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"contactID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v23 = v7;
        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v26 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v67 = v27;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v28 = v25;
        v8 = v24;
        v7 = v23;
        v29 = v26;
        error = v27;
        v21 = 0;
        v17 = 0;
        *errorCopy = [v28 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v56 = v9;
    }

    else
    {
      v56 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v21 = v56;
          goto LABEL_49;
        }

        v30 = v7;
        v31 = v8;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v33 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v65 = v55;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v34 = v32;
        v8 = v31;
        v7 = v30;
        v35 = [v34 initWithDomain:v33 code:2 userInfo:v11];
        error = 0;
        v17 = 0;
        *errorCopy2 = v35;
        v21 = v56;
LABEL_48:

        self = selfCopy;
LABEL_49:

        goto LABEL_50;
      }

      v54 = v10;
    }

    else
    {
      v54 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
    v52 = v7;
    v53 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v55 = 0;
          v17 = 0;
          v21 = v56;
          error = v54;
          goto LABEL_48;
        }

        v36 = v8;
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flags"];
        v63 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v39 = v37;
        v8 = v36;
        v7 = v52;
        v40 = [v39 initWithDomain:v38 code:2 userInfo:v12];
        v55 = 0;
        v17 = 0;
        *error = v40;
        goto LABEL_57;
      }

      v55 = v11;
    }

    else
    {
      v55 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"activityLevel"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v8;
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v12;
LABEL_16:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"proximity"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        error = v54;
        v17 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)selfCopy initWithContactID:v13 identifier:v56 name:v54 flags:v55 activityLevel:v14 proximity:v16];
        selfCopy = v17;
LABEL_46:

        v8 = v13;
        v7 = v52;
LABEL_47:

        v21 = v56;
        v9 = v53;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"proximity"];
        v59 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v51 initWithDomain:v47 code:2 userInfo:v45];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      error = v54;
      goto LABEL_46;
    }

    if (error)
    {
      v13 = v8;
      errorCopy3 = error;
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activityLevel"];
      v61 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v43 = [v41 initWithDomain:v42 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *errorCopy3 = v43;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    error = v54;
    goto LABEL_47;
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
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v20 = *MEMORY[0x1E698F240];
  v68 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactID"];
  v69[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v22 = [v18 initWithDomain:v20 code:2 userInfo:v9];
  v8 = 0;
  v17 = 0;
  *errorCopy4 = v22;
LABEL_50:

LABEL_51:
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingPeopleDiscoveryPerson *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasFlags)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasActivityLevel)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasProximity)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMContextualUnderstandingPeopleDiscoveryPerson;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_74;
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
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasFlags = 1;
            while (1)
            {
              v43 = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (v43 & 0x7F) << v25;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_61;
              }
            }

            if ([fromCopy hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_61:
            v38 = 24;
            break;
          case 5:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasActivityLevel = 1;
            while (1)
            {
              v43 = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (v43 & 0x7F) << v32;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_69;
              }
            }

            if ([fromCopy hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v34;
            }

LABEL_69:
            v38 = 28;
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasProximity = 1;
            while (1)
            {
              v43 = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v43 & 0x7F) << v18;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_65;
              }
            }

            if ([fromCopy hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_65:
            v38 = 32;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_73;
            }

            goto LABEL_71;
        }

        *(&v5->super.super.isa + v38) = v24;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          default:
            goto LABEL_45;
        }

        v31 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_71:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_73:
    v40 = 0;
  }

  else
  {
LABEL_74:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  contactID = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
  identifier = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
  name = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson proximity](self, "proximity")}];
  v10 = [v3 initWithFormat:@"BMContextualUnderstandingPeopleDiscoveryPerson with contactID: %@, identifier: %@, name: %@, flags: %@, activityLevel: %@, proximity: %@", contactID, identifier, name, v7, v8, v9];

  return v10;
}

- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithContactID:(id)d identifier:(id)identifier name:(id)name flags:(id)flags activityLevel:(id)level proximity:(id)proximity
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  flagsCopy = flags;
  levelCopy = level;
  proximityCopy = proximity;
  v26.receiver = self;
  v26.super_class = BMContextualUnderstandingPeopleDiscoveryPerson;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_contactID, d);
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v20->_name, name);
    if (flagsCopy)
    {
      v20->_hasFlags = 1;
      unsignedIntValue = [flagsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasFlags = 0;
    }

    v20->_flags = unsignedIntValue;
    if (levelCopy)
    {
      v20->_hasActivityLevel = 1;
      unsignedIntValue2 = [levelCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v20->_hasActivityLevel = 0;
    }

    v20->_activityLevel = unsignedIntValue2;
    if (proximityCopy)
    {
      v20->_hasProximity = 1;
      unsignedIntValue3 = [proximityCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v20->_hasProximity = 0;
    }

    v20->_proximity = unsignedIntValue3;
  }

  return v20;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactID" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flags" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityLevel" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proximity" number:6 type:4 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flags" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityLevel" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proximity" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
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

    v8 = [[BMContextualUnderstandingPeopleDiscoveryPerson alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end