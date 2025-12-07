@interface BMWalletPaymentsCommerceExtractedOrder
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceExtractedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceExtractedOrder)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderEmails:(id)emails orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)self0 payment:(id)self1 isTrackedInWallet:(id)self2 orderUpdateDate:(id)self3 trackedOrderIdentifier:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSDate)orderUpdateDate;
- (NSString)description;
- (id)_orderEmailsJSONArray;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceExtractedOrder

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    orderTypeIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
    orderTypeIdentifier2 = [v5 orderTypeIdentifier];
    v8 = orderTypeIdentifier2;
    if (orderTypeIdentifier == orderTypeIdentifier2)
    {
    }

    else
    {
      orderTypeIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
      orderTypeIdentifier4 = [v5 orderTypeIdentifier];
      v11 = [orderTypeIdentifier3 isEqual:orderTypeIdentifier4];

      if (!v11)
      {
        goto LABEL_46;
      }
    }

    orderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
    orderIdentifier2 = [v5 orderIdentifier];
    v15 = orderIdentifier2;
    if (orderIdentifier == orderIdentifier2)
    {
    }

    else
    {
      orderIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
      orderIdentifier4 = [v5 orderIdentifier];
      v18 = [orderIdentifier3 isEqual:orderIdentifier4];

      if (!v18)
      {
        goto LABEL_46;
      }
    }

    orderNumber = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
    orderNumber2 = [v5 orderNumber];
    v21 = orderNumber2;
    if (orderNumber == orderNumber2)
    {
    }

    else
    {
      orderNumber3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
      orderNumber4 = [v5 orderNumber];
      v24 = [orderNumber3 isEqual:orderNumber4];

      if (!v24)
      {
        goto LABEL_46;
      }
    }

    orderEmails = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
    orderEmails2 = [v5 orderEmails];
    v27 = orderEmails2;
    if (orderEmails == orderEmails2)
    {
    }

    else
    {
      orderEmails3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
      orderEmails4 = [v5 orderEmails];
      v30 = [orderEmails3 isEqual:orderEmails4];

      if (!v30)
      {
        goto LABEL_46;
      }
    }

    orderDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
    orderDate2 = [v5 orderDate];
    v33 = orderDate2;
    if (orderDate == orderDate2)
    {
    }

    else
    {
      orderDate3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
      orderDate4 = [v5 orderDate];
      v36 = [orderDate3 isEqual:orderDate4];

      if (!v36)
      {
        goto LABEL_46;
      }
    }

    merchant = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
    merchant2 = [v5 merchant];
    v39 = merchant2;
    if (merchant == merchant2)
    {
    }

    else
    {
      merchant3 = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
      merchant4 = [v5 merchant];
      v42 = [merchant3 isEqual:merchant4];

      if (!v42)
      {
        goto LABEL_46;
      }
    }

    shippingFulfillments = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
    shippingFulfillments2 = [v5 shippingFulfillments];
    v45 = shippingFulfillments2;
    if (shippingFulfillments == shippingFulfillments2)
    {
    }

    else
    {
      shippingFulfillments3 = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
      shippingFulfillments4 = [v5 shippingFulfillments];
      v48 = [shippingFulfillments3 isEqual:shippingFulfillments4];

      if (!v48)
      {
        goto LABEL_46;
      }
    }

    customer = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
    customer2 = [v5 customer];
    v51 = customer2;
    if (customer == customer2)
    {
    }

    else
    {
      customer3 = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
      customer4 = [v5 customer];
      v54 = [customer3 isEqual:customer4];

      if (!v54)
      {
        goto LABEL_46;
      }
    }

    payment = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
    payment2 = [v5 payment];
    v57 = payment2;
    if (payment == payment2)
    {
    }

    else
    {
      payment3 = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
      payment4 = [v5 payment];
      v60 = [payment3 isEqual:payment4];

      if (!v60)
      {
        goto LABEL_46;
      }
    }

    if (-[BMWalletPaymentsCommerceExtractedOrder hasIsTrackedInWallet](self, "hasIsTrackedInWallet") || [v5 hasIsTrackedInWallet])
    {
      if (![(BMWalletPaymentsCommerceExtractedOrder *)self hasIsTrackedInWallet])
      {
        goto LABEL_46;
      }

      if (![v5 hasIsTrackedInWallet])
      {
        goto LABEL_46;
      }

      isTrackedInWallet = [(BMWalletPaymentsCommerceExtractedOrder *)self isTrackedInWallet];
      if (isTrackedInWallet != [v5 isTrackedInWallet])
      {
        goto LABEL_46;
      }
    }

    orderUpdateDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
    orderUpdateDate2 = [v5 orderUpdateDate];
    v64 = orderUpdateDate2;
    if (orderUpdateDate == orderUpdateDate2)
    {
    }

    else
    {
      orderUpdateDate3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
      orderUpdateDate4 = [v5 orderUpdateDate];
      v67 = [orderUpdateDate3 isEqual:orderUpdateDate4];

      if (!v67)
      {
LABEL_46:
        v12 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    trackedOrderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
    trackedOrderIdentifier2 = [v5 trackedOrderIdentifier];
    if (trackedOrderIdentifier == trackedOrderIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      trackedOrderIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
      trackedOrderIdentifier4 = [v5 trackedOrderIdentifier];
      v12 = [trackedOrderIdentifier3 isEqual:trackedOrderIdentifier4];
    }

    goto LABEL_47;
  }

  v12 = 0;
LABEL_48:

  return v12;
}

- (NSDate)orderUpdateDate
{
  if (self->_hasRaw_orderUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderUpdateDate];
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
  v46[12] = *MEMORY[0x1E69E9840];
  orderTypeIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
  orderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
  orderNumber = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
  _orderEmailsJSONArray = [(BMWalletPaymentsCommerceExtractedOrder *)self _orderEmailsJSONArray];
  orderDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
  jsonDictionary = [merchant jsonDictionary];

  _shippingFulfillmentsJSONArray = [(BMWalletPaymentsCommerceExtractedOrder *)self _shippingFulfillmentsJSONArray];
  customer = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
  jsonDictionary2 = [customer jsonDictionary];

  payment = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
  jsonDictionary3 = [payment jsonDictionary];

  if ([(BMWalletPaymentsCommerceExtractedOrder *)self hasIsTrackedInWallet])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceExtractedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  }

  else
  {
    v40 = 0;
  }

  orderUpdateDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
  if (orderUpdateDate)
  {
    v12 = MEMORY[0x1E696AD98];
    orderUpdateDate2 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
    [orderUpdateDate2 timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  trackedOrderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
  v45[0] = @"orderTypeIdentifier";
  null = orderTypeIdentifier;
  if (!orderTypeIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v46[0] = null;
  v45[1] = @"orderIdentifier";
  null2 = orderIdentifier;
  if (!orderIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v46[1] = null2;
  v45[2] = @"orderNumber";
  null3 = orderNumber;
  if (!orderNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v46[2] = null3;
  v45[3] = @"orderEmails";
  null4 = _orderEmailsJSONArray;
  if (!_orderEmailsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = orderTypeIdentifier;
  v31 = null4;
  v46[3] = null4;
  v45[4] = @"orderDate";
  null5 = orderDate;
  if (!orderDate)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = orderIdentifier;
  v30 = null5;
  v46[4] = null5;
  v45[5] = @"merchant";
  null6 = jsonDictionary;
  if (!jsonDictionary)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = orderNumber;
  v46[5] = null6;
  v45[6] = @"shippingFulfillments";
  null7 = _shippingFulfillmentsJSONArray;
  if (!_shippingFulfillmentsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = _orderEmailsJSONArray;
  v46[6] = null7;
  v45[7] = @"customer";
  null8 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = orderDate;
  v46[7] = null8;
  v45[8] = @"payment";
  null9 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = null9;
  v45[9] = @"isTrackedInWallet";
  null10 = v40;
  if (!v40)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = null10;
  v45[10] = @"orderUpdateDate";
  null11 = v14;
  if (!v14)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v46[10] = null11;
  v45[11] = @"trackedOrderIdentifier";
  null12 = trackedOrderIdentifier;
  if (!trackedOrderIdentifier)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v46[11] = null12;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:12];
  if (trackedOrderIdentifier)
  {
    if (v14)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v40)
  {
  }

  if (!jsonDictionary3)
  {
  }

  if (!jsonDictionary2)
  {
  }

  if (!_shippingFulfillmentsJSONArray)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!v24)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (v37)
    {
LABEL_47:
      if (v38)
      {
        goto LABEL_48;
      }

LABEL_56:

      if (v39)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }
  }

  if (!v38)
  {
    goto LABEL_56;
  }

LABEL_48:
  if (v39)
  {
    goto LABEL_49;
  }

LABEL_57:

LABEL_49:

  return v35;
}

- (id)_shippingFulfillmentsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  shippingFulfillments = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
  v5 = [shippingFulfillments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(shippingFulfillments);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [shippingFulfillments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_orderEmailsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  orderEmails = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
  v5 = [orderEmails countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(orderEmails);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [orderEmails countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMWalletPaymentsCommerceExtractedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v211[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"orderTypeIdentifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"orderIdentifier"];
    v161 = v8;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v160 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v160 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"orderNumber"];
      v158 = v6;
      selfCopy = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v156 = 0;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"orderEmails"];
        null = [MEMORY[0x1E695DFB0] null];
        v13 = [v11 isEqual:null];

        v155 = dictionaryCopy;
        v157 = v10;
        if (v13)
        {

          v11 = 0;
          goto LABEL_16;
        }

        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
LABEL_16:
          v163 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v11 = v11;
          v14 = [v11 countByEnumeratingWithState:&v174 objects:v203 count:16];
          v154 = v7;
          if (v14)
          {
            v15 = v14;
            v16 = *v175;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v175 != v16)
                {
                  objc_enumerationMutation(v11);
                }

                v18 = *(*(&v174 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  errorCopy2 = error;
                  if (error)
                  {
                    v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v46 = *MEMORY[0x1E698F240];
                    v201 = *MEMORY[0x1E696A578];
                    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"orderEmails"];
                    v202 = v19;
                    v47 = MEMORY[0x1E695DF20];
                    v48 = &v202;
                    v49 = &v201;
                    goto LABEL_48;
                  }

LABEL_55:
                  v31 = 0;
                  v56 = v11;
                  v7 = v154;
                  errorCopy5 = v160;
                  v10 = v157;
LABEL_121:

                  v37 = v156;
                  goto LABEL_123;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  errorCopy2 = error;
                  if (!error)
                  {
                    goto LABEL_55;
                  }

                  v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v46 = *MEMORY[0x1E698F240];
                  v199 = *MEMORY[0x1E696A578];
                  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"orderEmails"];
                  v200 = v19;
                  v47 = MEMORY[0x1E695DF20];
                  v48 = &v200;
                  v49 = &v199;
LABEL_48:
                  v23 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
                  v50 = [v45 initWithDomain:v46 code:2 userInfo:v23];
                  v31 = 0;
                  *errorCopy2 = v50;
LABEL_52:
                  v152 = v11;
                  v7 = v154;
                  errorCopy5 = v160;
                  v10 = v157;
                  goto LABEL_119;
                }

                v19 = v18;
                v20 = [BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc];
                v173 = 0;
                v21 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)v20 initWithJSONDictionary:v19 error:&v173];
                v22 = v173;
                if (v22)
                {
                  v23 = v22;
                  if (error)
                  {
                    v51 = v22;
                    *error = v23;
                  }

                  v31 = 0;
                  goto LABEL_52;
                }

                [v163 addObject:v21];
              }

              v15 = [v11 countByEnumeratingWithState:&v174 objects:v203 count:16];
              v7 = v154;
            }

            while (v15);
          }

          v19 = [dictionaryCopy objectForKeyedSubscript:@"orderDate"];
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = *MEMORY[0x1E698F240];
                v197 = *MEMORY[0x1E696A578];
                v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
                v198 = v74;
                v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                v80 = [v77 initWithDomain:v78 code:2 userInfo:v79];
                v152 = 0;
                v31 = 0;
                *error = v80;
                errorCopy5 = v160;
                goto LABEL_118;
              }

              v56 = 0;
              v31 = 0;
              errorCopy5 = v160;
              goto LABEL_120;
            }

            v152 = v19;
          }

          else
          {
            v152 = 0;
          }

          v23 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
          if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v150 = 0;
LABEL_32:
            v24 = [dictionaryCopy objectForKeyedSubscript:@"shippingFulfillments"];
            null2 = [MEMORY[0x1E695DFB0] null];
            v26 = [v24 isEqual:null2];

            if (v26)
            {

              v24 = 0;
            }

            else if (v24)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                obj = v24;
                if (error)
                {
                  v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v94 = *MEMORY[0x1E698F240];
                  v193 = *MEMORY[0x1E696A578];
                  v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
                  v194 = v153;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                  v96 = v93;
                  v66 = v95;
                  v31 = 0;
                  *error = [v96 initWithDomain:v94 code:2 userInfo:v95];
                  errorCopy5 = v160;
                  goto LABEL_115;
                }

                v31 = 0;
                errorCopy5 = v160;
                goto LABEL_116;
              }
            }

            v153 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
            v168 = 0u;
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            obj = v24;
            v57 = [obj countByEnumeratingWithState:&v168 objects:v192 count:16];
            if (!v57)
            {
              goto LABEL_68;
            }

            v58 = v57;
            v59 = *v169;
LABEL_60:
            v60 = 0;
            while (1)
            {
              if (*v169 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v61 = *(*(&v168 + 1) + 8 * v60);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                errorCopy4 = error;
                if (error)
                {
                  v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v86 = *MEMORY[0x1E698F240];
                  v188 = *MEMORY[0x1E696A578];
                  v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
                  v189 = v62;
                  v87 = MEMORY[0x1E695DF20];
                  v88 = &v189;
                  v89 = &v188;
                  goto LABEL_108;
                }

                goto LABEL_129;
              }

              v62 = v61;
              v63 = [BMWalletPaymentsCommerceExtractedOrderShippingFulfillment alloc];
              v167 = 0;
              v64 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)v63 initWithJSONDictionary:v62 error:&v167];
              v65 = v167;
              if (v65)
              {
                v67 = v65;
                v10 = v157;
                if (error)
                {
                  v91 = v65;
                  *error = v67;
                }

                v31 = 0;
                v66 = obj;
                dictionaryCopy = v155;
LABEL_113:
                errorCopy5 = v160;
                goto LABEL_114;
              }

              [v153 addObject:v64];

              if (v58 == ++v60)
              {
                v58 = [obj countByEnumeratingWithState:&v168 objects:v192 count:16];
                v10 = v157;
                if (v58)
                {
                  goto LABEL_60;
                }

LABEL_68:

                dictionaryCopy = v155;
                v66 = [v155 objectForKeyedSubscript:@"customer"];
                if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v62 = 0;
LABEL_71:
                  v67 = [v155 objectForKeyedSubscript:@"payment"];
                  if (!v67 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v149 = 0;
LABEL_74:
                    v68 = [v155 objectForKeyedSubscript:@"isTrackedInWallet"];
                    v142 = v68;
                    if (v68)
                    {
                      v69 = v68;
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v146 = v69;
                          goto LABEL_77;
                        }

                        if (error)
                        {
                          v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v148 = *MEMORY[0x1E698F240];
                          v182 = *MEMORY[0x1E696A578];
                          v117 = v66;
                          v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v134 = objc_opt_class();
                          v119 = v118;
                          v66 = v117;
                          v143 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v134, @"isTrackedInWallet"];
                          v183 = v143;
                          v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
                          v120 = [v116 initWithDomain:v148 code:2 userInfo:?];
                          v146 = 0;
                          v31 = 0;
                          *error = v120;
                          errorCopy5 = v160;
                          goto LABEL_86;
                        }

                        v146 = 0;
                        v31 = 0;
                        errorCopy5 = v160;
                        goto LABEL_87;
                      }
                    }

                    v146 = 0;
LABEL_77:
                    v70 = [v155 objectForKeyedSubscript:@"orderUpdateDate"];
                    v141 = v70;
                    if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v143 = 0;
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v140 = v66;
                      v105 = MEMORY[0x1E695DF00];
                      v106 = v71;
                      v107 = [v105 alloc];
                      [v106 doubleValue];
                      v109 = v108;

                      v110 = v107;
                      v66 = v140;
                      v143 = [v110 initWithTimeIntervalSinceReferenceDate:v109];
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v121 = v66;
                      v122 = objc_alloc_init(MEMORY[0x1E696AC80]);
                      v143 = [v122 dateFromString:v71];

                      v66 = v121;
LABEL_169:
                      v10 = v157;
LABEL_80:
                      v72 = [v155 objectForKeyedSubscript:@"trackedOrderIdentifier"];
                      v139 = v72;
                      if (!v72)
                      {
LABEL_83:
                        errorCopy5 = v160;
                        goto LABEL_84;
                      }

                      v73 = v72;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v72 = 0;
                        goto LABEL_83;
                      }

                      objc_opt_class();
                      errorCopy5 = v160;
                      if (objc_opt_isKindOfClass())
                      {
                        v72 = v73;
                        v10 = v157;
LABEL_84:
                        v137 = v72;
                        v31 = [(BMWalletPaymentsCommerceExtractedOrder *)selfCopy initWithOrderTypeIdentifier:v154 orderIdentifier:errorCopy5 orderNumber:v156 orderEmails:v163 orderDate:v152 merchant:v150 shippingFulfillments:v153 customer:v62 payment:v149 isTrackedInWallet:v146 orderUpdateDate:v143 trackedOrderIdentifier:v72];
                        selfCopy = v31;
LABEL_85:

LABEL_86:
LABEL_87:

LABEL_88:
LABEL_114:

LABEL_115:
LABEL_116:

                        v74 = v23;
LABEL_117:
                        v79 = v150;
LABEL_118:

                        v23 = v74;
                        v7 = v154;
                        goto LABEL_119;
                      }

                      if (error)
                      {
                        v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v136 = *MEMORY[0x1E698F240];
                        v178 = *MEMORY[0x1E696A578];
                        v123 = v66;
                        v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackedOrderIdentifier"];
                        v179 = v124;
                        v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
                        *error = [v138 initWithDomain:v136 code:2 userInfo:v125];

                        v66 = v123;
                      }

                      v137 = 0;
                      v31 = 0;
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v143 = v71;
                        goto LABEL_169;
                      }

                      if (!error)
                      {
                        v143 = 0;
                        v31 = 0;
                        errorCopy5 = v160;
                        v10 = v157;
                        goto LABEL_86;
                      }

                      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v145 = *MEMORY[0x1E698F240];
                      v180 = *MEMORY[0x1E696A578];
                      v127 = v66;
                      v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v135 = objc_opt_class();
                      v129 = v128;
                      v66 = v127;
                      v137 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v135, @"orderUpdateDate"];
                      v181 = v137;
                      v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
                      v130 = [v126 initWithDomain:v145 code:2 userInfo:?];
                      v143 = 0;
                      v31 = 0;
                      *error = v130;
                      errorCopy5 = v160;
                    }

                    v10 = v157;
                    goto LABEL_85;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v99 = v67;
                    v100 = [BMWalletPaymentsCommerceTrackedOrderPayment alloc];
                    v165 = 0;
                    v149 = [(BMWalletPaymentsCommerceTrackedOrderPayment *)v100 initWithJSONDictionary:v99 error:&v165];
                    v101 = v165;
                    if (!v101)
                    {

                      v10 = v157;
                      goto LABEL_74;
                    }

                    v146 = v99;
                    v10 = v157;
                    if (error)
                    {
                      v101 = v101;
                      *error = v101;
                    }

                    v31 = 0;
                    errorCopy5 = v160;
                    goto LABEL_88;
                  }

                  if (error)
                  {
                    v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v144 = *MEMORY[0x1E698F240];
                    v184 = *MEMORY[0x1E696A578];
                    v111 = v66;
                    v112 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v133 = objc_opt_class();
                    v113 = v112;
                    v66 = v111;
                    v149 = [v113 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v133, @"payment"];
                    v185 = v149;
                    v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                    v115 = v147;
                    v146 = v114;
                    v31 = 0;
                    *error = [v115 initWithDomain:v144 code:2 userInfo:?];
                    errorCopy5 = v160;
                    v10 = v157;
                    goto LABEL_88;
                  }

                  v31 = 0;
LABEL_109:
                  errorCopy5 = v160;
                  v10 = v157;
                  goto LABEL_114;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v67 = v66;
                  v97 = [BMWalletPaymentsCommerceTrackedOrderCustomer alloc];
                  v166 = 0;
                  v62 = [(BMWalletPaymentsCommerceTrackedOrderCustomer *)v97 initWithJSONDictionary:v67 error:&v166];
                  v98 = v166;
                  if (!v98)
                  {

                    v10 = v157;
                    goto LABEL_71;
                  }

                  v10 = v157;
                  if (error)
                  {
                    v98 = v98;
                    *error = v98;
                  }

                  v31 = 0;
                  v66 = v67;
                  goto LABEL_113;
                }

                if (error)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v103 = *MEMORY[0x1E698F240];
                  v186 = *MEMORY[0x1E696A578];
                  v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
                  v187 = v62;
                  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
                  v104 = [v102 initWithDomain:v103 code:2 userInfo:v67];
                  v31 = 0;
                  *error = v104;
                  goto LABEL_109;
                }

                v31 = 0;
LABEL_130:
                errorCopy5 = v160;
                v10 = v157;
                goto LABEL_115;
              }
            }

            errorCopy4 = error;
            if (error)
            {
              v85 = objc_alloc(MEMORY[0x1E696ABC0]);
              v86 = *MEMORY[0x1E698F240];
              v190 = *MEMORY[0x1E696A578];
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
              v191 = v62;
              v87 = MEMORY[0x1E695DF20];
              v88 = &v191;
              v89 = &v190;
LABEL_108:
              v67 = [v87 dictionaryWithObjects:v88 forKeys:v89 count:1];
              v90 = [v85 initWithDomain:v86 code:2 userInfo:v67];
              v31 = 0;
              *errorCopy4 = v90;
              v66 = obj;
              dictionaryCopy = v155;
              goto LABEL_109;
            }

LABEL_129:
            v31 = 0;
            v66 = obj;
            dictionaryCopy = v155;
            goto LABEL_130;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v23;
            v75 = [BMWalletPaymentsCommerceTrackedOrderMerchant alloc];
            v172 = 0;
            v150 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)v75 initWithJSONDictionary:v74 error:&v172];
            v76 = v172;
            if (v76)
            {
              errorCopy5 = v160;
              if (error)
              {
                v76 = v76;
                *error = v76;
              }

              v31 = 0;
              goto LABEL_117;
            }

            goto LABEL_32;
          }

          if (error)
          {
            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = *MEMORY[0x1E698F240];
            v195 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
            v196 = v79;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
            *error = [v81 initWithDomain:v82 code:2 userInfo:v83];

            v31 = 0;
            v74 = v23;
            errorCopy5 = v160;
            goto LABEL_118;
          }

          v31 = 0;
          v7 = v154;
          errorCopy5 = v160;
LABEL_119:

          v56 = v152;
LABEL_120:

          goto LABEL_121;
        }

        if (error)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v204 = *MEMORY[0x1E696A578];
          v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"orderEmails"];
          v205 = v163;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
          v55 = v53;
          v56 = v54;
          v31 = 0;
          *error = [v52 initWithDomain:v55 code:2 userInfo:v54];
          errorCopy5 = v160;
          goto LABEL_121;
        }

        v31 = 0;
        errorCopy5 = v160;
        v37 = v156;
LABEL_123:

        v6 = v158;
        self = selfCopy;
        goto LABEL_124;
      }

      v27 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v156 = v10;
        goto LABEL_10;
      }

      if (error)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v206 = *MEMORY[0x1E696A578];
        v40 = v7;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v132 = objc_opt_class();
        v42 = v41;
        v7 = v40;
        v10 = v27;
        v11 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v132, @"orderNumber"];
        v207 = v11;
        v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
        v43 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v37 = 0;
        v31 = 0;
        *error = v43;
        errorCopy5 = v160;

        goto LABEL_123;
      }

      v37 = 0;
      v31 = 0;
      errorCopy5 = v160;
LABEL_124:

      goto LABEL_125;
    }

    errorCopy5 = error;
    if (error)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v208 = *MEMORY[0x1E696A578];
      v34 = v7;
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      v131 = objc_opt_class();
      v36 = v35;
      v7 = v34;
      v37 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v131, @"orderIdentifier"];
      v209 = v37;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
      errorCopy5 = 0;
      v31 = 0;
      *error = [v32 initWithDomain:v33 code:2 userInfo:v10];
      goto LABEL_124;
    }

    v31 = 0;
LABEL_125:

    goto LABEL_126;
  }

  if (error)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v210 = *MEMORY[0x1E696A578];
    errorCopy5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderTypeIdentifier"];
    v211[0] = errorCopy5;
    v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v211 forKeys:&v210 count:1];
    v7 = 0;
    v31 = 0;
    *error = [v28 initWithDomain:v29 code:2 userInfo:?];
    goto LABEL_125;
  }

  v7 = 0;
  v31 = 0;
LABEL_126:

  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceExtractedOrder *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_orderTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderNumber)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_orderEmails;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_orderDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchant)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_shippingFulfillments;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_customer)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderPayment *)self->_payment writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsTrackedInWallet)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_trackedOrderIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMWalletPaymentsCommerceExtractedOrder;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v47) & 0x7F) << v9;
        if ((LOBYTE(v47) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 6)
      {
        if (v17 > 9)
        {
          switch(v17)
          {
            case 0xA:
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v5->_hasIsTrackedInWallet = 1;
              while (1)
              {
                LOBYTE(v47) = 0;
                v29 = [fromCopy position] + 1;
                if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
                {
                  data2 = [fromCopy data];
                  [data2 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v28 |= (LOBYTE(v47) & 0x7F) << v26;
                if ((LOBYTE(v47) & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v15 = v27++ >= 9;
                if (v15)
                {
                  LOBYTE(v32) = 0;
                  goto LABEL_73;
                }
              }

              v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_73:
              v5->_isTrackedInWallet = v32;
              goto LABEL_65;
            case 0xB:
              v5->_hasRaw_orderUpdateDate = 1;
              v47 = 0.0;
              v36 = [fromCopy position] + 8;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 8, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v5->_raw_orderUpdateDate = v47;
              goto LABEL_65;
            case 0xC:
              v18 = PBReaderReadString();
              v19 = 112;
              goto LABEL_64;
          }
        }

        else
        {
          switch(v17)
          {
            case 7:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark() || (v22 = [[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment alloc] initByReadFrom:fromCopy]) == 0)
              {
LABEL_80:

                goto LABEL_77;
              }

              v23 = v22;
              v24 = v7;
              goto LABEL_48;
            case 8:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_80;
              }

              v20 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initByReadFrom:fromCopy];
              if (!v20)
              {
                goto LABEL_80;
              }

              v21 = 96;
              goto LABEL_62;
            case 9:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_80;
              }

              v20 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:fromCopy];
              if (!v20)
              {
                goto LABEL_80;
              }

              v21 = 104;
              goto LABEL_62;
          }
        }
      }

      else if (v17 > 3)
      {
        switch(v17)
        {
          case 4:
            v47 = 0.0;
            v48 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_80;
            }

            v25 = [[BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc] initByReadFrom:fromCopy];
            if (!v25)
            {
              goto LABEL_80;
            }

            v23 = v25;
            v24 = v6;
LABEL_48:
            [v24 addObject:v23];
            PBReaderRecallMark();

            goto LABEL_65;
          case 5:
            v18 = PBReaderReadString();
            v19 = 72;
            goto LABEL_64;
          case 6:
            v47 = 0.0;
            v48 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_80;
            }

            v20 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:fromCopy];
            if (!v20)
            {
              goto LABEL_80;
            }

            v21 = 80;
LABEL_62:
            v33 = *(&v5->super.super.isa + v21);
            *(&v5->super.super.isa + v21) = v20;

            PBReaderRecallMark();
            goto LABEL_65;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v18 = PBReaderReadString();
            v19 = 40;
            goto LABEL_64;
          case 2:
            v18 = PBReaderReadString();
            v19 = 48;
            goto LABEL_64;
          case 3:
            v18 = PBReaderReadString();
            v19 = 56;
LABEL_64:
            v34 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_65:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v39 = [v6 copy];
  orderEmails = v5->_orderEmails;
  v5->_orderEmails = v39;

  v41 = [v7 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v41;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_77:
    v44 = 0;
  }

  else
  {
LABEL_78:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  orderTypeIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
  orderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
  orderNumber = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
  orderEmails = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
  orderDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
  shippingFulfillments = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
  customer = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
  payment = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceExtractedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  orderUpdateDate = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
  trackedOrderIdentifier = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceExtractedOrder with orderTypeIdentifier: %@, orderIdentifier: %@, orderNumber: %@, orderEmails: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@, isTrackedInWallet: %@, orderUpdateDate: %@, trackedOrderIdentifier: %@", orderTypeIdentifier, orderIdentifier, orderNumber, orderEmails, orderDate, merchant, shippingFulfillments, customer, payment, v10, orderUpdateDate, trackedOrderIdentifier];

  return v15;
}

- (BMWalletPaymentsCommerceExtractedOrder)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderEmails:(id)emails orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)self0 payment:(id)self1 isTrackedInWallet:(id)self2 orderUpdateDate:(id)self3 trackedOrderIdentifier:(id)self4
{
  identifierCopy = identifier;
  orderIdentifierCopy = orderIdentifier;
  orderIdentifierCopy2 = orderIdentifier;
  numberCopy = number;
  numberCopy2 = number;
  emailsCopy = emails;
  dateCopy = date;
  merchantCopy = merchant;
  fulfillmentsCopy = fulfillments;
  customerCopy = customer;
  paymentCopy = payment;
  walletCopy = wallet;
  updateDateCopy = updateDate;
  trackedOrderIdentifierCopy = trackedOrderIdentifier;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceExtractedOrder;
  v22 = [(BMEventBase *)&v38 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_orderTypeIdentifier, identifier);
    objc_storeStrong(&v22->_orderIdentifier, orderIdentifierCopy);
    objc_storeStrong(&v22->_orderNumber, numberCopy);
    objc_storeStrong(&v22->_orderEmails, emails);
    objc_storeStrong(&v22->_orderDate, date);
    objc_storeStrong(&v22->_merchant, merchant);
    objc_storeStrong(&v22->_shippingFulfillments, fulfillments);
    objc_storeStrong(&v22->_customer, customer);
    objc_storeStrong(&v22->_payment, payment);
    if (walletCopy)
    {
      v22->_hasIsTrackedInWallet = 1;
      v22->_isTrackedInWallet = [walletCopy BOOLValue];
    }

    else
    {
      v22->_hasIsTrackedInWallet = 0;
      v22->_isTrackedInWallet = 0;
    }

    if (updateDateCopy)
    {
      v22->_hasRaw_orderUpdateDate = 1;
      [updateDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_orderUpdateDate = 0;
      v23 = -1.0;
    }

    v22->_raw_orderUpdateDate = v23;
    objc_storeStrong(&v22->_trackedOrderIdentifier, trackedOrderIdentifier);
  }

  return v22;
}

+ (id)protoFields
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderTypeIdentifier" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderIdentifier" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:3 type:13 subMessageClass:0];
  v16[2] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderEmails" number:4 type:14 subMessageClass:objc_opt_class()];
  v16[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:5 type:13 subMessageClass:0];
  v16[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:6 type:14 subMessageClass:objc_opt_class()];
  v16[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:7 type:14 subMessageClass:objc_opt_class()];
  v16[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:8 type:14 subMessageClass:objc_opt_class()];
  v16[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:9 type:14 subMessageClass:objc_opt_class()];
  v16[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTrackedInWallet" number:10 type:12 subMessageClass:0];
  v16[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderUpdateDate" number:11 type:0 subMessageClass:0];
  v16[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackedOrderIdentifier" number:12 type:13 subMessageClass:0];
  v16[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v11;
}

+ (id)columns
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderTypeIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"orderEmails_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_360];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_362];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_364];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_366_98414];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_368_98415];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTrackedInWallet" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderUpdateDate" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:1];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackedOrderIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v16[0] = v15;
  v16[1] = v14;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  v16[7] = v13;
  v16[8] = v7;
  v16[9] = v8;
  v16[10] = v9;
  v16[11] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v12;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 payment];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 customer];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _shippingFulfillmentsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 merchant];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _orderEmailsJSONArray];
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

    v8 = [[BMWalletPaymentsCommerceExtractedOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end