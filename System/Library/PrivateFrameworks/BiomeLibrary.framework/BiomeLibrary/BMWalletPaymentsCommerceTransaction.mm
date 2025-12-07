@interface BMWalletPaymentsCommerceTransaction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTransaction)initWithAmount:(id)amount transactionDate:(id)date transactionID:(id)d currencyCode:(id)code transactionDescription:(id)description timeZone:(id)zone account:(id)account merchant:(id)self0 transactionSource:(int)self1 accountType:(int)self2 transactionStatus:(int)self3 transactionType:(int)self4;
- (BMWalletPaymentsCommerceTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)transactionDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTransaction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    amount = [(BMWalletPaymentsCommerceTransaction *)self amount];
    amount2 = [v5 amount];
    v8 = amount2;
    if (amount == amount2)
    {
    }

    else
    {
      amount3 = [(BMWalletPaymentsCommerceTransaction *)self amount];
      amount4 = [v5 amount];
      v11 = [amount3 isEqual:amount4];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    transactionDate = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
    transactionDate2 = [v5 transactionDate];
    v15 = transactionDate2;
    if (transactionDate == transactionDate2)
    {
    }

    else
    {
      transactionDate3 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
      transactionDate4 = [v5 transactionDate];
      v18 = [transactionDate3 isEqual:transactionDate4];

      if (!v18)
      {
        goto LABEL_39;
      }
    }

    transactionID = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
    transactionID2 = [v5 transactionID];
    v21 = transactionID2;
    if (transactionID == transactionID2)
    {
    }

    else
    {
      transactionID3 = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
      transactionID4 = [v5 transactionID];
      v24 = [transactionID3 isEqual:transactionID4];

      if (!v24)
      {
        goto LABEL_39;
      }
    }

    currencyCode = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
    currencyCode2 = [v5 currencyCode];
    v27 = currencyCode2;
    if (currencyCode == currencyCode2)
    {
    }

    else
    {
      currencyCode3 = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
      currencyCode4 = [v5 currencyCode];
      v30 = [currencyCode3 isEqual:currencyCode4];

      if (!v30)
      {
        goto LABEL_39;
      }
    }

    transactionDescription = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
    transactionDescription2 = [v5 transactionDescription];
    v33 = transactionDescription2;
    if (transactionDescription == transactionDescription2)
    {
    }

    else
    {
      transactionDescription3 = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
      transactionDescription4 = [v5 transactionDescription];
      v36 = [transactionDescription3 isEqual:transactionDescription4];

      if (!v36)
      {
        goto LABEL_39;
      }
    }

    timeZone = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
    timeZone2 = [v5 timeZone];
    v39 = timeZone2;
    if (timeZone == timeZone2)
    {
    }

    else
    {
      timeZone3 = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
      timeZone4 = [v5 timeZone];
      v42 = [timeZone3 isEqual:timeZone4];

      if (!v42)
      {
        goto LABEL_39;
      }
    }

    account = [(BMWalletPaymentsCommerceTransaction *)self account];
    account2 = [v5 account];
    v45 = account2;
    if (account == account2)
    {
    }

    else
    {
      account3 = [(BMWalletPaymentsCommerceTransaction *)self account];
      account4 = [v5 account];
      v48 = [account3 isEqual:account4];

      if (!v48)
      {
        goto LABEL_39;
      }
    }

    merchant = [(BMWalletPaymentsCommerceTransaction *)self merchant];
    merchant2 = [v5 merchant];
    v51 = merchant2;
    if (merchant == merchant2)
    {
    }

    else
    {
      merchant3 = [(BMWalletPaymentsCommerceTransaction *)self merchant];
      merchant4 = [v5 merchant];
      v54 = [merchant3 isEqual:merchant4];

      if (!v54)
      {
        goto LABEL_39;
      }
    }

    transactionSource = [(BMWalletPaymentsCommerceTransaction *)self transactionSource];
    if (transactionSource == [v5 transactionSource])
    {
      accountType = [(BMWalletPaymentsCommerceTransaction *)self accountType];
      if (accountType == [v5 accountType])
      {
        transactionStatus = [(BMWalletPaymentsCommerceTransaction *)self transactionStatus];
        if (transactionStatus == [v5 transactionStatus])
        {
          transactionType = [(BMWalletPaymentsCommerceTransaction *)self transactionType];
          v12 = transactionType == [v5 transactionType];
LABEL_40:

          goto LABEL_41;
        }
      }
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:

  return v12;
}

- (NSDate)transactionDate
{
  if (self->_hasRaw_transactionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_transactionDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v43[12] = *MEMORY[0x1E69E9840];
  amount = [(BMWalletPaymentsCommerceTransaction *)self amount];
  transactionDate = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
  if (transactionDate)
  {
    v5 = MEMORY[0x1E696AD98];
    transactionDate2 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
    [transactionDate2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  transactionID = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
  currencyCode = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
  transactionDescription = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
  timeZone = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
  account = [(BMWalletPaymentsCommerceTransaction *)self account];
  jsonDictionary = [account jsonDictionary];

  merchant = [(BMWalletPaymentsCommerceTransaction *)self merchant];
  jsonDictionary2 = [merchant jsonDictionary];

  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionSource](self, "transactionSource")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction accountType](self, "accountType")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionStatus](self, "transactionStatus")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionType](self, "transactionType")}];
  v42[0] = @"amount";
  null = amount;
  if (!amount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null;
  v43[0] = null;
  v42[1] = @"transactionDate";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null2;
  v43[1] = null2;
  v42[2] = @"transactionID";
  null3 = transactionID;
  if (!transactionID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null3;
  v43[2] = null3;
  v42[3] = @"currencyCode";
  null4 = currencyCode;
  if (!currencyCode)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null4;
  v43[3] = null4;
  v42[4] = @"transactionDescription";
  null5 = transactionDescription;
  if (!transactionDescription)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = amount;
  v43[4] = null5;
  v42[5] = @"timeZone";
  null6 = timeZone;
  if (!timeZone)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v43[5] = null6;
  v42[6] = @"account";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = transactionID;
  v43[6] = null7;
  v42[7] = @"merchant";
  null8 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43[7] = null8;
  v42[8] = @"transactionSource";
  null9 = v37;
  if (!v37)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null5;
  v43[8] = null9;
  v42[9] = @"accountType";
  null10 = v36;
  if (!v36)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v42[10] = @"transactionStatus";
  null11 = v12;
  if (!v12)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = null11;
  v42[11] = @"transactionType";
  null12 = v13;
  if (!v13)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v43[11] = null12;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:12];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!jsonDictionary2)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!timeZone)
  {
  }

  if (transactionDescription)
  {
    if (currencyCode)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (currencyCode)
    {
LABEL_42:
      if (v33)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }
  }

  if (v33)
  {
LABEL_43:
    if (v34)
    {
      goto LABEL_44;
    }

LABEL_53:

    if (v35)
    {
      goto LABEL_45;
    }

    goto LABEL_54;
  }

LABEL_52:

  if (!v34)
  {
    goto LABEL_53;
  }

LABEL_44:
  if (v35)
  {
    goto LABEL_45;
  }

LABEL_54:

LABEL_45:

  return v32;
}

- (BMWalletPaymentsCommerceTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v176[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"amount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v149 = 0;
LABEL_4:
    v150 = [dictionaryCopy objectForKeyedSubscript:@"transactionDate"];
    if (v150 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        errorCopy = error;
        v11 = v150;
        v12 = [v9 alloc];
        [v11 doubleValue];
        v14 = v13;

        error = errorCopy;
        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v8 = [v20 dateFromString:v150];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v8 = 0;
            v19 = 0;
            goto LABEL_124;
          }

          errorCopy2 = error;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v173 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"transactionDate"];
          v174 = v37;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
          v84 = v82;
          v21 = v83;
          v8 = 0;
          v19 = 0;
          *errorCopy2 = [v81 initWithDomain:v84 code:2 userInfo:v83];
          goto LABEL_123;
        }

        v15 = v150;
      }

      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

LABEL_16:
    v21 = [dictionaryCopy objectForKeyedSubscript:@"transactionID"];
    selfCopy = self;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v19 = 0;
LABEL_123:

          goto LABEL_124;
        }

        errorCopy3 = error;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v21;
        v41 = *MEMORY[0x1E698F240];
        v171 = *MEMORY[0x1E696A578];
        v147 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionID"];
        v172 = v147;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        v43 = v41;
        v21 = v40;
        v37 = 0;
        v19 = 0;
        *errorCopy3 = [v39 initWithDomain:v43 code:2 userInfo:v42];
        goto LABEL_122;
      }

      v22 = v8;
      v146 = v21;
    }

    else
    {
      v22 = v8;
      v146 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"currencyCode"];
    v145 = v23;
    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v147 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v147 = v24;
LABEL_22:
      v25 = [dictionaryCopy objectForKeyedSubscript:@"transactionDescription"];
      v144 = v25;
      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v142 = 0;
LABEL_25:
        [dictionaryCopy objectForKeyedSubscript:@"timeZone"];
        v27 = v8 = v22;
        if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v143 = 0;
              v19 = 0;
              v42 = v145;
              v37 = v146;
LABEL_119:
              error = v142;
              goto LABEL_120;
            }

            errorCopy4 = error;
            v138 = v21;
            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v165 = *MEMORY[0x1E696A578];
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"timeZone"];
            v166 = v35;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
            v69 = v66;
            v21 = v138;
            v140 = v68;
            v143 = 0;
            v19 = 0;
            *errorCopy4 = [v69 initWithDomain:v67 code:2 userInfo:?];
            v37 = v146;
            goto LABEL_63;
          }

          v143 = v27;
        }

        else
        {
          v143 = 0;
        }

        v28 = [dictionaryCopy objectForKeyedSubscript:@"account"];
        v139 = v27;
        v135 = v28;
        if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v140 = 0;
LABEL_31:
          v30 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
          v130 = v30;
          if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v19 = 0;
                v42 = v145;
                v37 = v146;
                goto LABEL_116;
              }

              errorCopy5 = error;
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v133 = *MEMORY[0x1E698F240];
              v161 = *MEMORY[0x1E696A578];
              v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
              v162 = v134;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              v19 = 0;
              *errorCopy5 = [v76 initWithDomain:v133 code:2 userInfo:v57];
              v42 = v145;
              v37 = v146;
LABEL_115:

LABEL_116:
              v35 = v135;
              goto LABEL_117;
            }

            v54 = v31;
            v55 = [BMWalletPaymentsCommerceTransactionMerchant alloc];
            v151 = 0;
            v134 = [(BMWalletPaymentsCommerceTransactionMerchant *)v55 initWithJSONDictionary:v54 error:&v151];
            v56 = v151;
            if (v56)
            {
              v132 = v54;
              if (error)
              {
                v56 = v56;
                *error = v56;
              }

              v19 = 0;
              v42 = v145;
              v37 = v146;
              v57 = v132;
              goto LABEL_115;
            }
          }

          else
          {
            v134 = 0;
          }

          v32 = [dictionaryCopy objectForKeyedSubscript:@"transactionSource"];
          v136 = v21;
          v127 = v32;
          if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            errorCopy6 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v131 = v33;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v57 = 0;
                  v19 = 0;
                  v27 = v139;
                  v42 = v145;
                  v37 = v146;
                  goto LABEL_114;
                }

                v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                v109 = *MEMORY[0x1E698F240];
                v159 = *MEMORY[0x1E696A578];
                v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionSource"];
                v160 = v129;
                v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
                v110 = [v108 initWithDomain:v109 code:2 userInfo:?];
                v57 = 0;
                v19 = 0;
                *errorCopy6 = v110;
                v27 = v139;
                v42 = v145;
                v37 = v146;
LABEL_113:

LABEL_114:
                goto LABEL_115;
              }

              v131 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionSourceFromString(v33)];
            }

            v27 = v139;
          }

          else
          {
            v131 = 0;
          }

          v77 = [dictionaryCopy objectForKeyedSubscript:@"accountType"];
          v126 = v77;
          if (v77 && (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            errorCopy7 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v129 = v78;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v129 = 0;
                  v19 = 0;
                  v27 = v139;
                  v42 = v145;
                  v37 = v146;
                  goto LABEL_112;
                }

                v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                v112 = *MEMORY[0x1E698F240];
                v157 = *MEMORY[0x1E696A578];
                v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"accountType"];
                v158 = v128;
                v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
                v114 = v111;
                v106 = v113;
                v129 = 0;
                v19 = 0;
                *errorCopy7 = [v114 initWithDomain:v112 code:2 userInfo:v113];
                v27 = v139;
                v42 = v145;
                v37 = v146;
LABEL_111:

LABEL_112:
                v57 = v131;
                goto LABEL_113;
              }

              v129 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionAccountTypeFromString(v78)];
            }

            v27 = v139;
          }

          else
          {
            v129 = 0;
          }

          v85 = [dictionaryCopy objectForKeyedSubscript:@"transactionStatus"];
          v125 = v85;
          if (v85 && (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            errorCopy8 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v86;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v128 = 0;
                  v19 = 0;
                  v42 = v145;
                  v37 = v146;
                  v27 = v139;
                  goto LABEL_110;
                }

                v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                v116 = *MEMORY[0x1E698F240];
                v155 = *MEMORY[0x1E696A578];
                v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionStatus"];
                v156 = v97;
                v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
                v117 = [v115 initWithDomain:v116 code:2 userInfo:?];
                v128 = 0;
                v19 = 0;
                *errorCopy8 = v117;
                v37 = v146;
                goto LABEL_108;
              }

              v88 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionStatusFromString(v86)];
            }

            v128 = v88;
            v27 = v139;
          }

          else
          {
            v128 = 0;
          }

          v89 = [dictionaryCopy objectForKeyedSubscript:@"transactionType"];
          v124 = v89;
          if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            errorCopy9 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v99 = v7;
              v93 = v147;
              v92 = selfCopy;
              v94 = v8;
              v95 = v149;
              v96 = v99;
              v100 = v90;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v119 = *MEMORY[0x1E698F240];
                  v153 = *MEMORY[0x1E696A578];
                  v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionType"];
                  v154 = v120;
                  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
                  *errorCopy9 = [v118 initWithDomain:v119 code:2 userInfo:v121];
                }

                v97 = 0;
                v19 = 0;
                v37 = v146;
                goto LABEL_109;
              }

              v101 = v7;
              v93 = v147;
              v92 = selfCopy;
              v94 = v8;
              v95 = v149;
              v96 = v101;
              v100 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionTypeFromString(v90)];
            }

            v97 = v100;
          }

          else
          {
            v91 = v7;
            v93 = v147;
            v92 = selfCopy;
            v94 = v8;
            v95 = v149;
            v96 = v91;
            v97 = 0;
          }

          intValue = [v131 intValue];
          intValue2 = [v129 intValue];
          intValue3 = [v128 intValue];
          v123 = __PAIR64__([v97 intValue], intValue3);
          v149 = v95;
          v105 = v95;
          v8 = v94;
          v37 = v146;
          v147 = v93;
          v19 = [(BMWalletPaymentsCommerceTransaction *)v92 initWithAmount:v105 transactionDate:v94 transactionID:v146 currencyCode:v93 transactionDescription:v142 timeZone:v143 account:v140 merchant:v134 transactionSource:__PAIR64__(intValue2 accountType:intValue) transactionStatus:v123 transactionType:?];
          selfCopy = v19;
          v7 = v96;
          v21 = v136;
LABEL_108:
          v27 = v139;
LABEL_109:

          v42 = v145;
LABEL_110:
          v106 = v125;
          goto LABEL_111;
        }

        v137 = v21;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            errorCopy10 = error;
            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = *MEMORY[0x1E698F240];
            v163 = *MEMORY[0x1E696A578];
            v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"account"];
            v164 = v141;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
            *errorCopy10 = [v72 initWithDomain:v73 code:2 userInfo:v74];

            v19 = 0;
            v35 = v135;
            v21 = v137;
            v42 = v145;
            v37 = v146;
          }

          else
          {
            v19 = 0;
            v35 = v135;
            v42 = v145;
            v37 = v146;
          }

          goto LABEL_118;
        }

        errorCopy11 = error;
        v35 = v29;
        v152 = 0;
        v140 = [[BMWalletPaymentsCommerceTransactionAccount alloc] initWithJSONDictionary:v35 error:&v152];
        v36 = v152;
        if (!v36)
        {

          error = errorCopy11;
          goto LABEL_31;
        }

        v37 = v146;
        if (errorCopy11)
        {
          v36 = v36;
          *errorCopy11 = v36;
        }

        v19 = 0;
LABEL_63:
        v42 = v145;
LABEL_117:

LABEL_118:
        goto LABEL_119;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v142 = v26;
        goto LABEL_25;
      }

      if (error)
      {
        errorCopy12 = error;
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = v21;
        v61 = *MEMORY[0x1E698F240];
        v167 = *MEMORY[0x1E696A578];
        v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionDescription"];
        v168 = v143;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v63 = v61;
        v21 = v60;
        v64 = [v59 initWithDomain:v63 code:2 userInfo:v62];
        error = 0;
        v19 = 0;
        *errorCopy12 = v64;
        v42 = v145;
        v37 = v146;
        v8 = v22;
        v27 = v62;
LABEL_120:

        goto LABEL_121;
      }

      v19 = 0;
      v42 = v145;
      v37 = v146;
LABEL_84:
      v8 = v22;
LABEL_121:

      goto LABEL_122;
    }

    if (error)
    {
      errorCopy13 = error;
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = v21;
      v47 = *MEMORY[0x1E698F240];
      v169 = *MEMORY[0x1E696A578];
      v48 = objc_alloc(MEMORY[0x1E696AEC0]);
      v122 = objc_opt_class();
      v49 = v48;
      v42 = v145;
      v50 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v122, @"currencyCode"];
      v170 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
      v52 = v45;
      error = v50;
      v53 = v47;
      v21 = v46;
      v144 = v51;
      v147 = 0;
      v19 = 0;
      *errorCopy13 = [v52 initWithDomain:v53 code:2 userInfo:?];
      v37 = v146;
      goto LABEL_84;
    }

    v147 = 0;
    v19 = 0;
    v42 = v145;
    v37 = v146;
    v8 = v22;
LABEL_122:
    self = selfCopy;

    goto LABEL_123;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v149 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    errorCopy14 = error;
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E698F240];
    v175 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"amount"];
    v176[0] = v8;
    v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:&v175 count:1];
    v149 = 0;
    v19 = 0;
    *errorCopy14 = [v17 initWithDomain:v18 code:2 userInfo:?];
LABEL_124:

    goto LABEL_125;
  }

  v149 = 0;
  v19 = 0;
LABEL_125:

  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTransaction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_amount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_transactionDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_transactionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currencyCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transactionDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_account)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTransactionAccount *)self->_account writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_merchant)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTransactionMerchant *)self->_merchant writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v51.receiver = self;
  v51.super_class = BMWalletPaymentsCommerceTransaction;
  v5 = [(BMEventBase *)&v51 init];
  if (!v5)
  {
    goto LABEL_110;
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
        LOBYTE(v52) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v52) & 0x7F) << v7;
        if ((LOBYTE(v52) & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          switch(v15)
          {
            case 0xA:
              v32 = 0;
              v33 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v34 = [fromCopy position] + 1;
                if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
                {
                  data2 = [fromCopy data];
                  [data2 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v32;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v24 = v33++ > 8;
                if (v24)
                {
                  goto LABEL_97;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v20 > 2)
              {
LABEL_97:
                LODWORD(v20) = 0;
              }

              v46 = 40;
              break;
            case 0xB:
              v41 = 0;
              v42 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v43 = [fromCopy position] + 1;
                if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v41;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v24 = v42++ > 8;
                if (v24)
                {
                  goto LABEL_101;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v20 > 2)
              {
LABEL_101:
                LODWORD(v20) = 0;
              }

              v46 = 44;
              break;
            case 0xC:
              v25 = 0;
              v26 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v27 = [fromCopy position] + 1;
                if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v25;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v24 = v26++ > 8;
                if (v24)
                {
                  goto LABEL_93;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v20 > 2)
              {
LABEL_93:
                LODWORD(v20) = 0;
              }

              v46 = 48;
              break;
            default:
LABEL_85:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_109;
              }

              goto LABEL_104;
          }

          goto LABEL_103;
        }

        switch(v15)
        {
          case 7:
            v52 = 0.0;
            v53 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_109;
            }

            v30 = [[BMWalletPaymentsCommerceTransactionAccount alloc] initByReadFrom:fromCopy];
            if (!v30)
            {
              goto LABEL_109;
            }

            v31 = 96;
            break;
          case 8:
            v52 = 0.0;
            v53 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_109;
            }

            v30 = [[BMWalletPaymentsCommerceTransactionMerchant alloc] initByReadFrom:fromCopy];
            if (!v30)
            {
              goto LABEL_109;
            }

            v31 = 104;
            break;
          case 9:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v52) & 0x7F) << v18;
              if ((LOBYTE(v52) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_89;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 3)
            {
LABEL_89:
              LODWORD(v20) = 0;
            }

            v46 = 36;
LABEL_103:
            *(&v5->super.super.isa + v46) = v20;
            goto LABEL_104;
          default:
            goto LABEL_85;
        }

        v39 = *(&v5->super.super.isa + v31);
        *(&v5->super.super.isa + v31) = v30;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 > 3)
        {
          switch(v15)
          {
            case 4:
              v16 = PBReaderReadString();
              v17 = 72;
              break;
            case 5:
              v16 = PBReaderReadString();
              v17 = 80;
              break;
            case 6:
              v16 = PBReaderReadString();
              v17 = 88;
              break;
            default:
              goto LABEL_85;
          }
        }

        else
        {
          switch(v15)
          {
            case 1:
              v16 = PBReaderReadString();
              v17 = 56;
              break;
            case 2:
              v5->_hasRaw_transactionDate = 1;
              v52 = 0.0;
              v37 = [fromCopy position] + 8;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 8, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v5->_raw_transactionDate = v52;
              goto LABEL_104;
            case 3:
              v16 = PBReaderReadString();
              v17 = 64;
              break;
            default:
              goto LABEL_85;
          }
        }

        v40 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_104:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_109:
    v49 = 0;
  }

  else
  {
LABEL_110:
    v49 = v5;
  }

  return v49;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  amount = [(BMWalletPaymentsCommerceTransaction *)self amount];
  transactionDate = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
  transactionID = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
  currencyCode = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
  transactionDescription = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
  timeZone = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
  account = [(BMWalletPaymentsCommerceTransaction *)self account];
  merchant = [(BMWalletPaymentsCommerceTransaction *)self merchant];
  v9 = BMWalletPaymentsCommerceTransactionTransactionSourceAsString([(BMWalletPaymentsCommerceTransaction *)self transactionSource]);
  v10 = BMWalletPaymentsCommerceTransactionAccountTypeAsString([(BMWalletPaymentsCommerceTransaction *)self accountType]);
  v11 = BMWalletPaymentsCommerceTransactionTransactionStatusAsString([(BMWalletPaymentsCommerceTransaction *)self transactionStatus]);
  v12 = BMWalletPaymentsCommerceTransactionTransactionTypeAsString([(BMWalletPaymentsCommerceTransaction *)self transactionType]);
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTransaction with amount: %@, transactionDate: %@, transactionID: %@, currencyCode: %@, transactionDescription: %@, timeZone: %@, account: %@, merchant: %@, transactionSource: %@, accountType: %@, transactionStatus: %@, transactionType: %@", amount, transactionDate, transactionID, currencyCode, transactionDescription, timeZone, account, merchant, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceTransaction)initWithAmount:(id)amount transactionDate:(id)date transactionID:(id)d currencyCode:(id)code transactionDescription:(id)description timeZone:(id)zone account:(id)account merchant:(id)self0 transactionSource:(int)self1 accountType:(int)self2 transactionStatus:(int)self3 transactionType:(int)self4
{
  amountCopy = amount;
  dateCopy = date;
  dCopy = d;
  codeCopy = code;
  descriptionCopy = description;
  zoneCopy = zone;
  accountCopy = account;
  merchantCopy = merchant;
  v32.receiver = self;
  v32.super_class = BMWalletPaymentsCommerceTransaction;
  v22 = [(BMEventBase *)&v32 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_amount, amount);
    if (dateCopy)
    {
      v22->_hasRaw_transactionDate = 1;
      [dateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_transactionDate = 0;
      v23 = -1.0;
    }

    v22->_raw_transactionDate = v23;
    objc_storeStrong(&v22->_transactionID, d);
    objc_storeStrong(&v22->_currencyCode, code);
    objc_storeStrong(&v22->_transactionDescription, description);
    objc_storeStrong(&v22->_timeZone, zone);
    objc_storeStrong(&v22->_account, account);
    objc_storeStrong(&v22->_merchant, merchant);
    v22->_transactionSource = source;
    v22->_accountType = type;
    v22->_transactionStatus = status;
    v22->_transactionType = transactionType;
  }

  return v22;
}

+ (id)protoFields
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"amount" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionDate" number:2 type:0 subMessageClass:0];
  v16[1] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionID" number:3 type:13 subMessageClass:0];
  v16[2] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currencyCode" number:4 type:13 subMessageClass:0];
  v16[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionDescription" number:5 type:13 subMessageClass:0];
  v16[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeZone" number:6 type:13 subMessageClass:0];
  v16[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"account" number:7 type:14 subMessageClass:objc_opt_class()];
  v16[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:8 type:14 subMessageClass:objc_opt_class()];
  v16[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionSource" number:9 type:4 subMessageClass:0];
  v16[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountType" number:10 type:4 subMessageClass:0];
  v16[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionStatus" number:11 type:4 subMessageClass:0];
  v16[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionType" number:12 type:4 subMessageClass:0];
  v16[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v11;
}

+ (id)columns
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"amount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currencyCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionDescription" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeZone" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"account_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_285];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_287];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionSource" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionStatus" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionType" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v16[0] = v15;
  v16[1] = v14;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  v16[7] = v7;
  v16[8] = v8;
  v16[9] = v13;
  v16[10] = v9;
  v16[11] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v12;
}

id __46__BMWalletPaymentsCommerceTransaction_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 merchant];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __46__BMWalletPaymentsCommerceTransaction_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 account];
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

    v8 = [[BMWalletPaymentsCommerceTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end