@interface CCWalletExtractedOrderContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletExtractedOrderContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletExtractedOrderContent)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderEmails:(id)emails orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)self0 payment:(id)self1 orderUpdateDate:(id)self2 trackedOrderIdentifier:(id)self3 orderStatus:(unsigned int)self4 earliestEmailDateSent:(id)self5 orderStatusUpdateDate:(id)self6 error:(id *)self7;
- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer;
- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant;
- (CCWalletPaymentsCommerceTrackedOrderPayment)payment;
- (NSArray)orderEmails;
- (NSArray)shippingFulfillments;
- (NSDate)earliestEmailDateSent;
- (NSDate)orderStatusUpdateDate;
- (NSDate)orderUpdateDate;
- (NSString)orderDate;
- (NSString)orderIdentifier;
- (NSString)orderNumber;
- (NSString)orderTypeIdentifier;
- (NSString)trackedOrderIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletExtractedOrderContent

- (CCWalletExtractedOrderContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v122 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v119 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"orderTypeIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"orderIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"orderNumber"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"orderEmails"];
    if (v12)
    {
      v13 = v12;
      v101 = v10;
      objc_opt_class();
      v118 = v8;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v15 = v8;

      if ((v14 & 1) == 0)
      {
        CCSetError();
        v36 = 0;
        v16 = v13;
        v10 = v101;
LABEL_77:

        v8 = v15;
        goto LABEL_78;
      }

      v92 = v9;
      errorCopy = error;
      v100 = v11;
      v16 = objc_opt_new();
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v114 objects:v121 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v115;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v115 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v114 + 1) + 8 * i);
            v23 = [CCWalletExtractedOrderContentExtractedEmail alloc];
            v113 = 0;
            v24 = [(CCWalletExtractedOrderContentExtractedEmail *)v23 initWithJSONDictionary:v22 error:&v113];
            v25 = v113;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v35 = v25;
              CCSetError();

              v36 = 0;
              v16 = v17;
              v9 = v92;
              v10 = v101;
              goto LABEL_76;
            }

            [v16 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v114 objects:v121 count:16];
        }

        while (v19);
      }

      v11 = v100;
      v9 = v92;
      error = errorCopy;
      v10 = v101;
    }

    else
    {
      v16 = 0;
      v15 = v8;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"orderDate"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
    v100 = v11;
    if (v28)
    {
      selfCopy = self;
      v29 = v9;
      v30 = v27;
      v112 = 0;
      v31 = v28;
      v32 = [[CCWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithJSONDictionary:v28 error:&v112];
      v33 = v112;
      v34 = v33;
      if (!v32 || v33)
      {
        CCSetError();

        v36 = 0;
        v58 = v31;
        v27 = v30;
        v9 = v29;
        self = selfCopy;
        goto LABEL_75;
      }

      v91 = v32;
      v27 = v30;
      v9 = v29;
      self = selfCopy;
    }

    else
    {
      v91 = 0;
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"shippingFulfillments"];
    if (v37)
    {
      v38 = v37;
      v102 = v10;
      objc_opt_class();
      v111 = v15;
      v39 = CCValidateIsInstanceOfExpectedClass();
      v40 = v15;

      if ((v39 & 1) == 0)
      {
        CCSetError();
        v36 = 0;
        v15 = v40;
        v34 = v38;
        v10 = v102;
        v58 = v91;
        goto LABEL_75;
      }

      v88 = v27;
      v90 = v40;
      v93 = v9;
      errorCopy2 = error;
      v34 = objc_opt_new();
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v41 = v38;
      v42 = [v41 countByEnumeratingWithState:&v107 objects:v120 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v108;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v108 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v107 + 1) + 8 * j);
            v47 = [CCWalletExtractedOrderContentShippingFulfillment alloc];
            v106 = 0;
            v48 = [(CCWalletExtractedOrderContentShippingFulfillment *)v47 initWithJSONDictionary:v46 error:&v106];
            v49 = v106;
            if (v48)
            {
              v50 = v49 == 0;
            }

            else
            {
              v50 = 0;
            }

            if (!v50)
            {
              v57 = v49;
              CCSetError();

              v36 = 0;
              v34 = v41;
              v27 = v88;
              v15 = v90;
              v58 = v91;
              v9 = v93;
              v10 = v102;
              goto LABEL_75;
            }

            [v34 addObject:v48];
          }

          v43 = [v41 countByEnumeratingWithState:&v107 objects:v120 count:16];
        }

        while (v43);
      }

      error = errorCopy2;
      v9 = v93;
      v10 = v102;
    }

    else
    {
      v34 = 0;
      v90 = v15;
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"customer"];
    v58 = v91;
    v89 = v27;
    if (v51)
    {
      v105 = 0;
      v52 = [[CCWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithJSONDictionary:v51 error:&v105];
      v53 = v105;
      v103 = v52;
      if (!v52 || v53)
      {
        v94 = v51;
        v99 = v53;
        CCSetError();
        v36 = 0;
        v27 = v89;
        v15 = v90;
        goto LABEL_74;
      }

      v51 = v52;
      v27 = v89;
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"payment"];
    v94 = v51;
    if (v54)
    {
      v104 = 0;
      v99 = v54;
      v55 = [[CCWalletPaymentsCommerceTrackedOrderPayment alloc] initWithJSONDictionary:v54 error:&v104];
      v56 = v104;
      if (!v55 || v56)
      {
        v103 = v56;
        CCSetError();

        v36 = 0;
        v15 = v90;
        v58 = v91;
        goto LABEL_74;
      }

      errorCopy4 = error;

      v99 = v55;
    }

    else
    {
      errorCopy4 = error;
      v99 = 0;
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"orderUpdateDate"];
    if (!v59)
    {
      v103 = 0;
LABEL_58:
      v86 = [dictionaryCopy objectForKeyedSubscript:@"trackedOrderIdentifier"];
      v66 = [dictionaryCopy objectForKeyedSubscript:@"orderStatus"];
      v67 = v66;
      if (v66)
      {
        unsignedIntegerValue = [v66 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0;
      }

      v68 = [dictionaryCopy objectForKeyedSubscript:@"earliestEmailDateSent"];
      v82 = v67;
      if (v68)
      {
        objc_opt_class();
        v87 = v68;
        v69 = CCValidateIsInstanceOfExpectedClass();
        v83 = v90;

        if ((v69 & 1) == 0)
        {
          v15 = v83;
          CCSetError();
          v36 = 0;
          v58 = v91;
LABEL_73:

          goto LABEL_74;
        }

        v70 = objc_alloc(MEMORY[0x1E695DF00]);
        [v87 doubleValue];
        v68 = [v70 initWithTimeIntervalSinceReferenceDate:?];

        v90 = v83;
      }

      v71 = [dictionaryCopy objectForKeyedSubscript:@"orderStatusUpdateDate"];
      v87 = v68;
      if (v71)
      {
        v72 = v71;
        objc_opt_class();
        v84 = CCValidateIsInstanceOfExpectedClass();
        v73 = v90;

        if ((v84 & 1) == 0)
        {
          v15 = v73;
          CCSetError();
          v81 = v72;
          v36 = 0;
          v58 = v91;
          goto LABEL_72;
        }

        v85 = v73;
        v74 = objc_alloc(MEMORY[0x1E695DF00]);
        [v72 doubleValue];
        v75 = [v74 initWithTimeIntervalSinceReferenceDate:?];

        v81 = v75;
        v76 = errorCopy4;
        v68 = v87;
      }

      else
      {
        v81 = 0;
        v85 = v90;
        v76 = errorCopy4;
      }

      v79 = v68;
      LODWORD(v78) = unsignedIntegerValue;
      v58 = v91;
      v36 = [[CCWalletExtractedOrderContent alloc] initWithOrderTypeIdentifier:v9 orderIdentifier:v10 orderNumber:v100 orderEmails:v16 orderDate:v27 merchant:v91 shippingFulfillments:v34 customer:v51 payment:v99 orderUpdateDate:v103 trackedOrderIdentifier:v86 orderStatus:v78 earliestEmailDateSent:v79 orderStatusUpdateDate:v81 error:v76];
      v15 = v85;
LABEL_72:

      goto LABEL_73;
    }

    v60 = v59;
    v61 = v10;
    objc_opt_class();
    v62 = CCValidateIsInstanceOfExpectedClass();
    v63 = v90;

    if (v62)
    {
      v64 = objc_alloc(MEMORY[0x1E695DF00]);
      [v60 doubleValue];
      v65 = [v64 initWithTimeIntervalSinceReferenceDate:?];

      v103 = v65;
      v90 = v63;
      v10 = v61;
      v27 = v89;
      goto LABEL_58;
    }

    v103 = v60;
    CCSetError();
    v36 = 0;
    v15 = v63;
    v10 = v61;
    v27 = v89;
    v58 = v91;
LABEL_74:

LABEL_75:
LABEL_76:
    v11 = v100;
    goto LABEL_77;
  }

  CCSetError();
  v36 = 0;
LABEL_78:

  return v36;
}

- (id)jsonDictionary
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_orderTypeIdentifier)
  {
    orderTypeIdentifier = [(CCWalletExtractedOrderContent *)self orderTypeIdentifier];
    [v3 setObject:orderTypeIdentifier forKeyedSubscript:@"orderTypeIdentifier"];
  }

  if (self->_orderIdentifier)
  {
    orderIdentifier = [(CCWalletExtractedOrderContent *)self orderIdentifier];
    [v3 setObject:orderIdentifier forKeyedSubscript:@"orderIdentifier"];
  }

  if (self->_orderNumber)
  {
    orderNumber = [(CCWalletExtractedOrderContent *)self orderNumber];
    [v3 setObject:orderNumber forKeyedSubscript:@"orderNumber"];
  }

  if (self->_orderEmails)
  {
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    orderEmails = [(CCWalletExtractedOrderContent *)self orderEmails];
    v9 = [orderEmails countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(orderEmails);
          }

          jsonDictionary = [*(*(&v39 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary];
        }

        v10 = [orderEmails countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"orderEmails"];
  }

  if (self->_orderDate)
  {
    orderDate = [(CCWalletExtractedOrderContent *)self orderDate];
    [v3 setObject:orderDate forKeyedSubscript:@"orderDate"];
  }

  if (self->_merchant)
  {
    merchant = [(CCWalletExtractedOrderContent *)self merchant];
    jsonDictionary2 = [merchant jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"merchant"];
  }

  if (self->_shippingFulfillments)
  {
    v17 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    shippingFulfillments = [(CCWalletExtractedOrderContent *)self shippingFulfillments];
    v19 = [shippingFulfillments countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(shippingFulfillments);
          }

          jsonDictionary3 = [*(*(&v35 + 1) + 8 * j) jsonDictionary];
          [v17 addObject:jsonDictionary3];
        }

        v20 = [shippingFulfillments countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"shippingFulfillments"];
  }

  if (self->_customer)
  {
    customer = [(CCWalletExtractedOrderContent *)self customer];
    jsonDictionary4 = [customer jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"customer"];
  }

  if (self->_payment)
  {
    payment = [(CCWalletExtractedOrderContent *)self payment];
    jsonDictionary5 = [payment jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"payment"];
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderUpdateDate];
    [v3 setObject:v28 forKeyedSubscript:@"orderUpdateDate"];
  }

  if (self->_trackedOrderIdentifier)
  {
    trackedOrderIdentifier = [(CCWalletExtractedOrderContent *)self trackedOrderIdentifier];
    [v3 setObject:trackedOrderIdentifier forKeyedSubscript:@"trackedOrderIdentifier"];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContent orderStatus](self, "orderStatus")}];
  [v3 setObject:v30 forKeyedSubscript:@"orderStatus"];

  if (self->_hasRaw_earliestEmailDateSent)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_earliestEmailDateSent];
    [v3 setObject:v31 forKeyedSubscript:@"earliestEmailDateSent"];
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderStatusUpdateDate];
    [v3 setObject:v32 forKeyedSubscript:@"orderStatusUpdateDate"];
  }

  v33 = [v3 copy];

  return v33;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_orderTypeIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7953 stringValue:self->_orderTypeIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_orderIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7954 stringValue:self->_orderIdentifier];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_orderNumber)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7955 stringValue:self->_orderNumber];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_orderEmails)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7956 repeatedSubMessageValue:self->_orderEmails];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_orderDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7969 stringValue:self->_orderDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_merchant)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7970 subMessageValue:self->_merchant];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_shippingFulfillments)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7973 repeatedSubMessageValue:self->_shippingFulfillments];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_customer)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7996 subMessageValue:self->_customer];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_payment)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8006 subMessageValue:self->_payment];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8017 doubleValue:self->_raw_orderUpdateDate];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_trackedOrderIdentifier)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8018 stringValue:self->_trackedOrderIdentifier];
    blockCopy[2](blockCopy, v15);
  }

  v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8031 enumValue:self->_orderStatus];
  blockCopy[2](blockCopy, v16);

  if (self->_hasRaw_earliestEmailDateSent)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8034 doubleValue:self->_raw_earliestEmailDateSent];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8036 doubleValue:self->_raw_orderStatusUpdateDate];
    blockCopy[2](blockCopy, v18);
  }
}

- (NSDate)orderStatusUpdateDate
{
  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_orderStatusUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)earliestEmailDateSent
{
  if (self->_hasRaw_earliestEmailDateSent)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_earliestEmailDateSent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)trackedOrderIdentifier
{
  v2 = [(NSString *)self->_trackedOrderIdentifier copy];

  return v2;
}

- (NSDate)orderUpdateDate
{
  if (self->_hasRaw_orderUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_orderUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CCWalletPaymentsCommerceTrackedOrderPayment)payment
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self->_payment copy];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer copy];

  return v2;
}

- (NSArray)shippingFulfillments
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_shippingFulfillments copyItems:1];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant copy];

  return v2;
}

- (NSString)orderDate
{
  v2 = [(NSString *)self->_orderDate copy];

  return v2;
}

- (NSArray)orderEmails
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_orderEmails copyItems:1];

  return v2;
}

- (NSString)orderNumber
{
  v2 = [(NSString *)self->_orderNumber copy];

  return v2;
}

- (NSString)orderIdentifier
{
  v2 = [(NSString *)self->_orderIdentifier copy];

  return v2;
}

- (NSString)orderTypeIdentifier
{
  v2 = [(NSString *)self->_orderTypeIdentifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    v9 = 0;
    v68 = 0;
LABEL_78:
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v68 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          v22 = *v10;
          if (*&v5[v22])
          {
            goto LABEL_78;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *v10;
      v23 = *&v5[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_78;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 72;
          goto LABEL_46;
        case 2u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 80;
          goto LABEL_46;
        case 3u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 88;
          goto LABEL_46;
        case 4u:
          v33 = CCPBReaderReadDataNoCopy();
          if (!v68)
          {
            v68 = objc_opt_new();
          }

          v43 = [CCWalletExtractedOrderContentExtractedEmail alloc];
          v73 = 0;
          v44 = [(CCItemMessage *)v43 initWithData:v33 error:&v73];
          v8 = v73;
          if (v8 || !v44)
          {
            goto LABEL_54;
          }

          v45 = v68;
          goto LABEL_53;
        case 5u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 104;
          goto LABEL_46;
        case 6u:
          v32 = [CCWalletPaymentsCommerceTrackedOrderMerchant alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v72 = 0;
          v34 = [(CCItemMessage *)v32 initWithData:v33 error:&v72];
          v8 = v72;
          v35 = 112;
          goto LABEL_60;
        case 7u:
          v33 = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v47 = [CCWalletExtractedOrderContentShippingFulfillment alloc];
          v71 = 0;
          v44 = [(CCItemMessage *)v47 initWithData:v33 error:&v71];
          v8 = v71;
          if (v8 || !v44)
          {
            goto LABEL_54;
          }

          v45 = v9;
LABEL_53:
          [v45 addObject:{v44, errorCopy}];
LABEL_54:

          goto LABEL_61;
        case 8u:
          v48 = [CCWalletPaymentsCommerceTrackedOrderCustomer alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v70 = 0;
          v34 = [(CCItemMessage *)v48 initWithData:v33 error:&v70];
          v8 = v70;
          v35 = 128;
          goto LABEL_60;
        case 9u:
          v52 = [CCWalletPaymentsCommerceTrackedOrderPayment alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v69 = 0;
          v34 = [(CCItemMessage *)v52 initWithData:v33 error:&v69];
          v8 = v69;
          v35 = 136;
LABEL_60:
          v53 = *(&self->super.super.isa + v35);
          *(&self->super.super.isa + v35) = v34;

          goto LABEL_61;
        case 0xBu:
          v49 = *v6;
          v50 = *&v5[v49];
          if (v50 <= 0xFFFFFFFFFFFFFFF7 && v50 + 8 <= *&v5[*v7])
          {
            v51 = *(*&v5[*v11] + v50);
            *&v5[v49] = v50 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v51 = 0.0;
          }

          v8 = 0;
          self->_raw_orderUpdateDate = v51;
          v55 = 16;
          goto LABEL_74;
        case 0xCu:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 144;
LABEL_46:
          v46 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;

          goto LABEL_47;
        case 0xDu:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          break;
        case 0xEu:
          v29 = *v6;
          v30 = *&v5[v29];
          if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v5[*v7])
          {
            v31 = *(*&v5[*v11] + v30);
            *&v5[v29] = v30 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v31 = 0.0;
          }

          v8 = 0;
          self->_raw_earliestEmailDateSent = v31;
          v55 = 32;
          goto LABEL_74;
        case 0xFu:
          v26 = *v6;
          v27 = *&v5[v26];
          if (v27 <= 0xFFFFFFFFFFFFFFF7 && v27 + 8 <= *&v5[*v7])
          {
            v28 = *(*&v5[*v11] + v27);
            *&v5[v26] = v27 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v28 = 0.0;
          }

          v8 = 0;
          self->_raw_orderStatusUpdateDate = v28;
          v55 = 48;
LABEL_74:
          *(&self->super.super.isa + v55) = 1;
          continue;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_47:
            v8 = 0;
          }

          else
          {
            v54 = objc_opt_class();
            v33 = NSStringFromClass(v54);
            v8 = CCSkipFieldErrorForMessage();
LABEL_61:
          }

          continue;
      }

      while (1)
      {
        v39 = *v6;
        v40 = *&v5[v39];
        v41 = v40 + 1;
        if (v40 == -1 || v41 > *&v5[*v7])
        {
          break;
        }

        v42 = *(*&v5[*v11] + v40);
        *&v5[v39] = v41;
        v38 |= (v42 & 0x7F) << v36;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_65;
        }

        v36 += 7;
        v20 = v37++ >= 9;
        if (v20)
        {
          LODWORD(v38) = 0;
          goto LABEL_67;
        }
      }

      *&v5[*v10] = 1;
LABEL_65:
      if (*&v5[*v10])
      {
        LODWORD(v38) = 0;
      }

LABEL_67:
      v8 = 0;
      self->_orderStatus = v38;
    }

    while (*&v5[*v6] < *&v5[*v7]);
  }

  v56 = [v68 copy];
  orderEmails = self->_orderEmails;
  self->_orderEmails = v56;

  v58 = [v9 copy];
  shippingFulfillments = self->_shippingFulfillments;
  self->_shippingFulfillments = v58;

  if (v8)
  {
    CCSetError();
    v60 = 0;
    v61 = dataCopy;
  }

  else
  {
    v61 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v60 = 0;
    }

    else
    {
      v60 = 1;
    }
  }

  return v60;
}

- (CCWalletExtractedOrderContent)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderEmails:(id)emails orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)self0 payment:(id)self1 orderUpdateDate:(id)self2 trackedOrderIdentifier:(id)self3 orderStatus:(unsigned int)self4 earliestEmailDateSent:(id)self5 orderStatusUpdateDate:(id)self6 error:(id *)self7
{
  v94 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  orderIdentifierCopy = orderIdentifier;
  numberCopy = number;
  emailsCopy = emails;
  dateCopy = date;
  merchantCopy = merchant;
  fulfillmentsCopy = fulfillments;
  customerCopy = customer;
  paymentCopy = payment;
  updateDateCopy = updateDate;
  trackedOrderIdentifierCopy = trackedOrderIdentifier;
  sentCopy = sent;
  statusUpdateDateCopy = statusUpdateDate;
  v27 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    v91 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v29 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v39 = 0;
      selfCopy3 = self;
      goto LABEL_70;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v29 = 0;
  }

  v67 = fulfillmentsCopy;
  if (!orderIdentifierCopy)
  {
    v31 = v29;
    if (!numberCopy)
    {
      goto LABEL_8;
    }

LABEL_20:
    objc_opt_class();
    v89 = v31;
    v41 = CCValidateIsInstanceOfExpectedClass();
    v29 = v31;

    if (!v41)
    {
      goto LABEL_67;
    }

    CCPBDataWriterWriteStringField();
    if (emailsCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  v90 = v29;
  v30 = CCValidateIsInstanceOfExpectedClass();
  v31 = v29;

  if (!v30)
  {
    goto LABEL_62;
  }

  CCPBDataWriterWriteStringField();
  if (numberCopy)
  {
    goto LABEL_20;
  }

LABEL_8:
  v29 = v31;
  if (emailsCopy)
  {
LABEL_9:
    objc_opt_class();
    v88 = v29;
    v32 = CCValidateArrayValues();
    v31 = v29;

    if (!v32)
    {
      goto LABEL_62;
    }

    v65 = identifierCopy;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v33 = emailsCopy;
    v34 = [v33 countByEnumeratingWithState:&v84 objects:v93 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v85;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v85 != v36)
          {
            objc_enumerationMutation(v33);
          }

          data = [*(*(&v84 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v35 = [v33 countByEnumeratingWithState:&v84 objects:v93 count:16];
      }

      while (v35);
    }

    identifierCopy = v65;
    goto LABEL_23;
  }

LABEL_22:
  v31 = v29;
LABEL_23:
  if (dateCopy)
  {
    objc_opt_class();
    v83 = v31;
    v42 = CCValidateIsInstanceOfExpectedClass();
    v29 = v31;

    if (!v42)
    {
      goto LABEL_67;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v29 = v31;
  }

  if (merchantCopy)
  {
    objc_opt_class();
    v82 = v29;
    v43 = CCValidateIsInstanceOfExpectedClass();
    v31 = v29;

    if (!v43)
    {
      goto LABEL_62;
    }

    v64 = emailsCopy;
    data2 = [merchantCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v64 = emailsCopy;
    v31 = v29;
  }

  if (!v67)
  {
    v29 = v31;
    emailsCopy = v64;
LABEL_42:
    if (customerCopy)
    {
      objc_opt_class();
      v52 = CCValidateIsInstanceOfExpectedClass();
      v31 = v29;

      if (!v52)
      {
        goto LABEL_62;
      }

      data3 = [customerCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v31 = v29;
    }

    if (paymentCopy)
    {
      objc_opt_class();
      v54 = CCValidateIsInstanceOfExpectedClass();
      v29 = v31;

      if (!v54)
      {
        goto LABEL_67;
      }

      data4 = [paymentCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v29 = v31;
    }

    if (updateDateCopy)
    {
      objc_opt_class();
      v56 = CCValidateIsInstanceOfExpectedClass();
      v31 = v29;

      if (!v56)
      {
        goto LABEL_62;
      }

      [updateDateCopy timeIntervalSinceReferenceDate];
      CCPBDataWriterWriteDoubleField();
    }

    else
    {
      v31 = v29;
    }

    if (trackedOrderIdentifierCopy)
    {
      objc_opt_class();
      v57 = CCValidateIsInstanceOfExpectedClass();
      v29 = v31;

      if (!v57)
      {
        goto LABEL_67;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v29 = v31;
    }

    if (!status)
    {
      v31 = v29;
      goto LABEL_64;
    }

    v58 = CCValidateEnumField();
    v31 = v29;

    if (v58)
    {
      CCPBDataWriterWriteUint32Field();
LABEL_64:
      if (!sentCopy)
      {
        v29 = v31;
        goto LABEL_72;
      }

      objc_opt_class();
      v59 = CCValidateIsInstanceOfExpectedClass();
      v29 = v31;

      if (v59)
      {
        [sentCopy timeIntervalSinceReferenceDate];
        CCPBDataWriterWriteDoubleField();
LABEL_72:
        if (!statusUpdateDateCopy)
        {
LABEL_75:
          immutableData = [v27 immutableData];
          selfCopy3 = [(CCItemMessage *)self initWithData:immutableData error:error];

          v39 = selfCopy3;
          goto LABEL_69;
        }

        objc_opt_class();
        v61 = CCValidateIsInstanceOfExpectedClass();
        v62 = v29;

        if (v61)
        {
          [statusUpdateDateCopy timeIntervalSinceReferenceDate];
          CCPBDataWriterWriteDoubleField();
          v29 = v62;
          goto LABEL_75;
        }

        CCSetError();
        v39 = 0;
        v29 = v62;
LABEL_68:
        selfCopy3 = self;
LABEL_69:
        fulfillmentsCopy = v67;
        goto LABEL_70;
      }

LABEL_67:
      CCSetError();
      v39 = 0;
      goto LABEL_68;
    }

LABEL_62:
    CCSetError();
    v39 = 0;
    v29 = v31;
    goto LABEL_68;
  }

  objc_opt_class();
  v81 = v31;
  v45 = CCValidateArrayValues();
  v29 = v31;

  if (v45)
  {
    v66 = identifierCopy;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = v67;
    v47 = [v46 countByEnumeratingWithState:&v77 objects:v92 count:16];
    emailsCopy = v64;
    if (v47)
    {
      v48 = v47;
      v49 = *v78;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v78 != v49)
          {
            objc_enumerationMutation(v46);
          }

          data5 = [*(*(&v77 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v48 = [v46 countByEnumeratingWithState:&v77 objects:v92 count:16];
      }

      while (v48);
    }

    identifierCopy = v66;
    goto LABEL_42;
  }

  CCSetError();
  v39 = 0;
  selfCopy3 = self;
  fulfillmentsCopy = v67;
  emailsCopy = v64;
LABEL_70:

  return v39;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 7952) > 0x55)
  {
    return 0;
  }

  else
  {
    return off_1E73E8638[(identifier - 7952)];
  }
}

@end