@interface BMWalletPaymentsCommerceOrderEmailShippingRecipient
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address address:(id)a6 givenName:(id)givenName familyName:(id)familyName;
- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceOrderEmailShippingRecipient

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    fullName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
    fullName2 = [v5 fullName];
    v8 = fullName2;
    if (fullName == fullName2)
    {
    }

    else
    {
      fullName3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
      fullName4 = [v5 fullName];
      v11 = [fullName3 isEqual:fullName4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    phoneNumber = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
    phoneNumber2 = [v5 phoneNumber];
    v15 = phoneNumber2;
    if (phoneNumber == phoneNumber2)
    {
    }

    else
    {
      phoneNumber3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
      phoneNumber4 = [v5 phoneNumber];
      v18 = [phoneNumber3 isEqual:phoneNumber4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    emailAddress = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
    emailAddress2 = [v5 emailAddress];
    v21 = emailAddress2;
    if (emailAddress == emailAddress2)
    {
    }

    else
    {
      emailAddress3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
      emailAddress4 = [v5 emailAddress];
      v24 = [emailAddress3 isEqual:emailAddress4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    address = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
    address2 = [v5 address];
    v27 = address2;
    if (address == address2)
    {
    }

    else
    {
      address3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
      address4 = [v5 address];
      v30 = [address3 isEqual:address4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    givenName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
    givenName2 = [v5 givenName];
    v33 = givenName2;
    if (givenName == givenName2)
    {
    }

    else
    {
      givenName3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
      givenName4 = [v5 givenName];
      v36 = [givenName3 isEqual:givenName4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    familyName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
    familyName2 = [v5 familyName];
    if (familyName == familyName2)
    {
      v12 = 1;
    }

    else
    {
      familyName3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
      familyName4 = [v5 familyName];
      v12 = [familyName3 isEqual:familyName4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  fullName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
  phoneNumber = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
  emailAddress = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
  address = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
  jsonDictionary = [address jsonDictionary];

  givenName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
  familyName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
  v23[0] = @"fullName";
  null = fullName;
  if (!fullName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v22 = phoneNumber;
  v24[0] = null;
  v23[1] = @"phoneNumber";
  null2 = phoneNumber;
  if (!phoneNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"emailAddress";
  null3 = emailAddress;
  if (!emailAddress)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v23[3] = @"address";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = fullName;
  v24[3] = null4;
  v23[4] = @"givenName";
  null5 = givenName;
  if (!givenName)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"familyName";
  null6 = familyName;
  if (!familyName)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (familyName)
  {
    if (givenName)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (givenName)
    {
LABEL_15:
      if (jsonDictionary)
      {
        goto LABEL_16;
      }

LABEL_24:

      if (emailAddress)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  if (!jsonDictionary)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (emailAddress)
  {
    goto LABEL_17;
  }

LABEL_25:

LABEL_17:
  if (v22)
  {
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_19;
    }
  }

LABEL_19:

  return v17;
}

- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"fullName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
    v54 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v23 = 0;
          v16 = 0;
          goto LABEL_55;
        }

        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = v8;
        v28 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumber"];
        v67 = v29;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v30 = v28;
        v8 = v27;
        v23 = 0;
        v16 = 0;
        *errorCopy = [v26 initWithDomain:v30 code:2 userInfo:v10];
        v11 = v29;
        goto LABEL_54;
      }

      v55 = v9;
    }

    else
    {
      v55 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"emailAddress"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v16 = 0;
          goto LABEL_53;
        }

        errorCopy2 = error;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = v8;
        v34 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emailAddress"];
        v65 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v35 = v34;
        v8 = v33;
        v16 = 0;
        *errorCopy2 = [v32 initWithDomain:v35 code:2 userInfo:v18];
        v11 = 0;
        goto LABEL_51;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    v50 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          goto LABEL_52;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = v8;
        v37 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"address"];
        v63 = v18;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v39 = v37;
        v8 = v53;
        *error = [v36 initWithDomain:v39 code:2 userInfo:v38];

        v16 = 0;
        v17 = v12;
LABEL_51:

        v12 = v17;
LABEL_52:

        self = selfCopy;
LABEL_53:
        v23 = v55;
LABEL_54:

        v7 = v54;
        goto LABEL_55;
      }

      v17 = v12;
      v57 = 0;
      v18 = [[BMWalletPaymentsCommerceOrderEmailAddress alloc] initWithJSONDictionary:v17 error:&v57];
      v19 = v57;
      if (v19)
      {
        if (error)
        {
          v19 = v19;
          *error = v19;
        }

        v16 = 0;
        goto LABEL_51;
      }

      v51 = v18;
    }

    else
    {
      v51 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
    v52 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v14 = 0;
          v16 = 0;
          goto LABEL_50;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"givenName"];
        errorCopy4 = error;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy4 forKeys:&v60 count:1];
        v43 = [v40 initWithDomain:v41 code:2 userInfo:v15];
        v14 = 0;
        v16 = 0;
        *errorCopy3 = v43;
        goto LABEL_48;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      error = 0;
LABEL_19:
      v16 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)selfCopy initWithFullName:v52 phoneNumber:v55 emailAddress:v11 address:v51 givenName:v14 familyName:error];
      selfCopy = v16;
LABEL_49:

LABEL_50:
      v17 = v12;
      v18 = v51;
      v8 = v52;
      goto LABEL_51;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      error = v15;
      goto LABEL_19;
    }

    if (error)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v58 = *MEMORY[0x1E696A578];
      errorCopy5 = error;
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"familyName"];
      v59 = v45;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *errorCopy5 = [v49 initWithDomain:v48 code:2 userInfo:v46];

      error = 0;
    }

    v16 = 0;
LABEL_48:
    v11 = v50;
    goto LABEL_49;
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
    goto LABEL_56;
  }

  errorCopy6 = error;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v68 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullName"];
  v69[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *errorCopy6 = v24;
LABEL_55:

LABEL_56:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_fullName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_emailAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_address)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailAddress *)self->_address writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceOrderEmailShippingRecipient;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
        goto LABEL_37;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 != 4)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 56;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_31:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_36;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }

        goto LABEL_35;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v18 = [[BMWalletPaymentsCommerceOrderEmailAddress alloc] initByReadFrom:fromCopy];
      if (!v18)
      {
        goto LABEL_38;
      }

      address = v5->_address;
      v5->_address = v18;

      PBReaderRecallMark();
LABEL_36:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_37;
      }
    }

    switch(v15)
    {
      case 1:
        v16 = PBReaderReadString();
        v17 = 24;
        break;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      default:
        goto LABEL_31;
    }

LABEL_35:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_36;
  }

LABEL_37:
  if ([fromCopy hasError])
  {
LABEL_38:
    v22 = 0;
  }

  else
  {
LABEL_39:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fullName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
  phoneNumber = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
  emailAddress = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
  address = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
  givenName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
  familyName = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
  v10 = [v3 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailShippingRecipient with fullName: %@, phoneNumber: %@, emailAddress: %@, address: %@, givenName: %@, familyName: %@", fullName, phoneNumber, emailAddress, address, givenName, familyName];

  return v10;
}

- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address address:(id)a6 givenName:(id)givenName familyName:(id)familyName
{
  nameCopy = name;
  numberCopy = number;
  addressCopy = address;
  v15 = a6;
  givenNameCopy = givenName;
  familyNameCopy = familyName;
  v23.receiver = self;
  v23.super_class = BMWalletPaymentsCommerceOrderEmailShippingRecipient;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_fullName, name);
    objc_storeStrong(&v18->_phoneNumber, number);
    objc_storeStrong(&v18->_emailAddress, address);
    objc_storeStrong(&v18->_address, a6);
    objc_storeStrong(&v18->_givenName, givenName);
    objc_storeStrong(&v18->_familyName, familyName);
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullName" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumber" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailAddress" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"givenName" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familyName" number:6 type:13 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"phoneNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emailAddress" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"address_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_406_92404];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"givenName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familyName" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __62__BMWalletPaymentsCommerceOrderEmailShippingRecipient_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 address];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
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

    v8 = [[BMWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end