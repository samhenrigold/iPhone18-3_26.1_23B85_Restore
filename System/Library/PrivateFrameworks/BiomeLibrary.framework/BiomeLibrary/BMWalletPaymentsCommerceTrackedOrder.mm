@interface BMWalletPaymentsCommerceTrackedOrder
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)payment isTrackedInWallet:(id)wallet orderUpdateDate:(id)self0 trackedOrderIdentifier:(id)self1 orderStatus:(int)self2 earliestEmailDateSent:(id)self3 orderStatusUpdateDate:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSDate)earliestEmailDateSent;
- (NSDate)orderStatusUpdateDate;
- (NSDate)orderUpdateDate;
- (NSString)description;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrder

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
    orderNumber2 = [v5 orderNumber];
    v8 = orderNumber2;
    if (orderNumber == orderNumber2)
    {
    }

    else
    {
      orderNumber3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
      orderNumber4 = [v5 orderNumber];
      v11 = [orderNumber3 isEqual:orderNumber4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
    orderDate2 = [v5 orderDate];
    v15 = orderDate2;
    if (orderDate == orderDate2)
    {
    }

    else
    {
      orderDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
      orderDate4 = [v5 orderDate];
      v18 = [orderDate3 isEqual:orderDate4];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
    merchant2 = [v5 merchant];
    v21 = merchant2;
    if (merchant == merchant2)
    {
    }

    else
    {
      merchant3 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
      merchant4 = [v5 merchant];
      v24 = [merchant3 isEqual:merchant4];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
    shippingFulfillments2 = [v5 shippingFulfillments];
    v27 = shippingFulfillments2;
    if (shippingFulfillments == shippingFulfillments2)
    {
    }

    else
    {
      shippingFulfillments3 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
      shippingFulfillments4 = [v5 shippingFulfillments];
      v30 = [shippingFulfillments3 isEqual:shippingFulfillments4];

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
    customer2 = [v5 customer];
    v33 = customer2;
    if (customer == customer2)
    {
    }

    else
    {
      customer3 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
      customer4 = [v5 customer];
      v36 = [customer3 isEqual:customer4];

      if (!v36)
      {
        goto LABEL_43;
      }
    }

    payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
    payment2 = [v5 payment];
    v39 = payment2;
    if (payment == payment2)
    {
    }

    else
    {
      payment3 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
      payment4 = [v5 payment];
      v42 = [payment3 isEqual:payment4];

      if (!v42)
      {
        goto LABEL_43;
      }
    }

    if (-[BMWalletPaymentsCommerceTrackedOrder hasIsTrackedInWallet](self, "hasIsTrackedInWallet") || [v5 hasIsTrackedInWallet])
    {
      if (![(BMWalletPaymentsCommerceTrackedOrder *)self hasIsTrackedInWallet])
      {
        goto LABEL_43;
      }

      if (![v5 hasIsTrackedInWallet])
      {
        goto LABEL_43;
      }

      isTrackedInWallet = [(BMWalletPaymentsCommerceTrackedOrder *)self isTrackedInWallet];
      if (isTrackedInWallet != [v5 isTrackedInWallet])
      {
        goto LABEL_43;
      }
    }

    orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    orderUpdateDate2 = [v5 orderUpdateDate];
    v46 = orderUpdateDate2;
    if (orderUpdateDate == orderUpdateDate2)
    {
    }

    else
    {
      orderUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
      orderUpdateDate4 = [v5 orderUpdateDate];
      v49 = [orderUpdateDate3 isEqual:orderUpdateDate4];

      if (!v49)
      {
        goto LABEL_43;
      }
    }

    trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
    trackedOrderIdentifier2 = [v5 trackedOrderIdentifier];
    v52 = trackedOrderIdentifier2;
    if (trackedOrderIdentifier == trackedOrderIdentifier2)
    {
    }

    else
    {
      trackedOrderIdentifier3 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
      trackedOrderIdentifier4 = [v5 trackedOrderIdentifier];
      v55 = [trackedOrderIdentifier3 isEqual:trackedOrderIdentifier4];

      if (!v55)
      {
        goto LABEL_43;
      }
    }

    orderStatus = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus];
    if (orderStatus == [v5 orderStatus])
    {
      earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
      earliestEmailDateSent2 = [v5 earliestEmailDateSent];
      v59 = earliestEmailDateSent2;
      if (earliestEmailDateSent == earliestEmailDateSent2)
      {
      }

      else
      {
        earliestEmailDateSent3 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
        earliestEmailDateSent4 = [v5 earliestEmailDateSent];
        v62 = [earliestEmailDateSent3 isEqual:earliestEmailDateSent4];

        if (!v62)
        {
          goto LABEL_43;
        }
      }

      orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
      orderStatusUpdateDate2 = [v5 orderStatusUpdateDate];
      if (orderStatusUpdateDate == orderStatusUpdateDate2)
      {
        v12 = 1;
      }

      else
      {
        orderStatusUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
        orderStatusUpdateDate4 = [v5 orderStatusUpdateDate];
        v12 = [orderStatusUpdateDate3 isEqual:orderStatusUpdateDate4];
      }

      goto LABEL_44;
    }

LABEL_43:
    v12 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (NSDate)orderStatusUpdateDate
{
  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderStatusUpdateDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)earliestEmailDateSent
{
  if (self->_hasRaw_earliestEmailDateSent)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_earliestEmailDateSent];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v51[12] = *MEMORY[0x1E69E9840];
  orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  jsonDictionary = [merchant jsonDictionary];

  _shippingFulfillmentsJSONArray = [(BMWalletPaymentsCommerceTrackedOrder *)self _shippingFulfillmentsJSONArray];
  customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  jsonDictionary2 = [customer jsonDictionary];

  payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  jsonDictionary3 = [payment jsonDictionary];

  if ([(BMWalletPaymentsCommerceTrackedOrder *)self hasIsTrackedInWallet])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  }

  else
  {
    v47 = 0;
  }

  orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  if (orderUpdateDate)
  {
    v11 = MEMORY[0x1E696AD98];
    orderUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    [orderUpdateDate2 timeIntervalSinceReferenceDate];
    v46 = [v11 numberWithDouble:?];
  }

  else
  {
    v46 = 0;
  }

  trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTrackedOrder orderStatus](self, "orderStatus")}];
  earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  if (earliestEmailDateSent)
  {
    v14 = MEMORY[0x1E696AD98];
    earliestEmailDateSent2 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
    [earliestEmailDateSent2 timeIntervalSinceReferenceDate];
    v43 = [v14 numberWithDouble:?];
  }

  else
  {
    v43 = 0;
  }

  orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  if (orderStatusUpdateDate)
  {
    v17 = MEMORY[0x1E696AD98];
    orderStatusUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
    [orderStatusUpdateDate2 timeIntervalSinceReferenceDate];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  v50[0] = @"orderNumber";
  null = orderNumber;
  if (!orderNumber)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null;
  v51[0] = null;
  v50[1] = @"orderDate";
  null2 = orderDate;
  if (!orderDate)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null2;
  v51[1] = null2;
  v50[2] = @"merchant";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null3;
  v51[2] = null3;
  v50[3] = @"shippingFulfillments";
  null4 = _shippingFulfillmentsJSONArray;
  if (!_shippingFulfillmentsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null4;
  v51[3] = null4;
  v50[4] = @"customer";
  null5 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = orderNumber;
  v51[4] = null5;
  v50[5] = @"payment";
  null6 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = orderDate;
  v51[5] = null6;
  v50[6] = @"isTrackedInWallet";
  null7 = v47;
  if (!v47)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = jsonDictionary;
  v51[6] = null7;
  v50[7] = @"orderUpdateDate";
  null8 = v46;
  if (!v46)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = _shippingFulfillmentsJSONArray;
  v51[7] = null8;
  v50[8] = @"trackedOrderIdentifier";
  null9 = trackedOrderIdentifier;
  if (!trackedOrderIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null5;
  v51[8] = null9;
  v50[9] = @"orderStatus";
  null10 = v44;
  if (!v44)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v51[9] = null10;
  v50[10] = @"earliestEmailDateSent";
  null11 = v43;
  if (!v43)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v51[10] = null11;
  v50[11] = @"orderStatusUpdateDate";
  null12 = v19;
  if (!v19)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v51[11] = null12;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:12];
  if (!v19)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!trackedOrderIdentifier)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!jsonDictionary3)
  {
  }

  if (jsonDictionary2)
  {
    if (v28)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v28)
    {
LABEL_53:
      if (v40)
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    }
  }

  if (v40)
  {
LABEL_54:
    if (v41)
    {
      goto LABEL_55;
    }

LABEL_62:

    if (v42)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

LABEL_61:

  if (!v41)
  {
    goto LABEL_62;
  }

LABEL_55:
  if (v42)
  {
    goto LABEL_56;
  }

LABEL_63:

LABEL_56:

  return v33;
}

- (id)_shippingFulfillmentsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
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

- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v212[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"orderNumber"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v211 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
        v212[0] = v10;
        v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:&v211 count:1];
        v7 = 0;
        v20 = 0;
        *error = [v22 initWithDomain:v23 code:2 userInfo:?];
        goto LABEL_103;
      }

      v7 = 0;
      v20 = 0;
      goto LABEL_104;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"orderDate"];
  v169 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v209 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
        v210 = v18;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
        v10 = 0;
        v20 = 0;
        *error = [v24 initWithDomain:v25 code:2 userInfo:v21];
        goto LABEL_101;
      }

      v10 = 0;
      v20 = 0;
      goto LABEL_103;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
  v168 = v10;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = v11;
      if (error)
      {
        v174 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v207 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
        v208 = v21;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
        *error = [v174 initWithDomain:v27 code:2 userInfo:v28];

        v20 = 0;
        v18 = v26;
        goto LABEL_101;
      }

      v20 = 0;
      v18 = v26;
      goto LABEL_102;
    }

    v18 = v11;
    v183 = 0;
    v167 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithJSONDictionary:v18 error:&v183];
    v19 = v183;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v20 = 0;
      v21 = v167;
      goto LABEL_101;
    }

    v166 = v6;
  }

  else
  {
    v166 = v6;
    v167 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"shippingFulfillments"];
  null = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:null];

  v165 = v11;
  if (v14)
  {
    v15 = v12;
    errorCopy3 = error;
    v159 = dictionaryCopy;
    v160 = v7;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v205 = *MEMORY[0x1E696A578];
          v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
          v206 = v175;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
          v20 = 0;
          *error = [v47 initWithDomain:v48 code:2 userInfo:v38];
          goto LABEL_58;
        }

        v20 = 0;
        v21 = v167;
        goto LABEL_100;
      }

      v17 = v12;
      errorCopy3 = error;
      v159 = dictionaryCopy;
      v160 = v7;
      goto LABEL_32;
    }

    errorCopy3 = error;
    v159 = dictionaryCopy;
    v160 = v7;
  }

  v17 = 0;
LABEL_32:
  v175 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  obj = v17;
  v29 = [obj countByEnumeratingWithState:&v179 objects:v204 count:16];
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = v29;
  v31 = *v180;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v180 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v179 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v202 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
          v203 = v34;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v203;
          v44 = &v202;
LABEL_49:
          v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
          v20 = 0;
          *errorCopy3 = [v40 initWithDomain:v41 code:2 userInfo:v45];
          v12 = obj;
          v38 = obj;
          dictionaryCopy = v159;
          v7 = v160;
          goto LABEL_50;
        }

LABEL_56:
        v20 = 0;
        v12 = obj;
        v38 = obj;
        dictionaryCopy = v159;
        v7 = v160;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v200 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
          v201 = v34;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v201;
          v44 = &v200;
          goto LABEL_49;
        }

        goto LABEL_56;
      }

      v34 = v33;
      v35 = [BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc];
      v178 = 0;
      v36 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)v35 initWithJSONDictionary:v34 error:&v178];
      v37 = v178;
      if (v37)
      {
        v45 = v37;
        v7 = v160;
        v21 = v167;
        v10 = v168;
        if (errorCopy3)
        {
          v46 = v37;
          *errorCopy3 = v45;
        }

        v20 = 0;
        v12 = obj;
        v38 = obj;
        dictionaryCopy = v159;
LABEL_98:

        goto LABEL_99;
      }

      [v175 addObject:v36];
    }

    v30 = [obj countByEnumeratingWithState:&v179 objects:v204 count:16];
    v10 = v168;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_42:

  dictionaryCopy = v159;
  v38 = [v159 objectForKeyedSubscript:@"customer"];
  if (!v38)
  {
    v34 = 0;
    v7 = v160;
    v39 = errorCopy3;
    goto LABEL_60;
  }

  objc_opt_class();
  v7 = v160;
  v39 = errorCopy3;
  if (objc_opt_isKindOfClass())
  {
    v34 = 0;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v38;
    v177 = 0;
    v34 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithJSONDictionary:v45 error:&v177];
    v49 = v177;
    v12 = obj;
    if (v49)
    {
      v21 = v167;
      v10 = v168;
      if (v39)
      {
        v49 = v49;
        *v39 = v49;
      }

      v20 = 0;
      v38 = v45;
      goto LABEL_98;
    }

    v10 = v168;
LABEL_60:
    v45 = [v159 objectForKeyedSubscript:@"payment"];
    if (!v45)
    {
      v158 = 0;
      v12 = obj;
      goto LABEL_71;
    }

    objc_opt_class();
    v12 = obj;
    if (objc_opt_isKindOfClass())
    {
      v158 = 0;
LABEL_71:
      v50 = [v159 objectForKeyedSubscript:@"isTrackedInWallet"];
      v154 = v50;
      v148 = v39;
      if (v50 && (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v157 = v51;
          goto LABEL_74;
        }

        if (!v39)
        {
          v157 = 0;
          v20 = 0;
          v21 = v167;
          v64 = v154;
          goto LABEL_96;
        }

        v103 = objc_alloc(MEMORY[0x1E696ABC0]);
        v104 = v7;
        v64 = v154;
        v105 = *MEMORY[0x1E698F240];
        v194 = *MEMORY[0x1E696A578];
        v106 = v38;
        v107 = objc_alloc(MEMORY[0x1E696AEC0]);
        v141 = objc_opt_class();
        v108 = v107;
        v38 = v106;
        v156 = [v108 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v141, @"isTrackedInWallet"];
        v195 = v156;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
        v7 = v104;
        v151 = v10 = v168;
        v109 = [v103 initWithDomain:v105 code:2 userInfo:?];
        v157 = 0;
        v20 = 0;
        v148->super.super.isa = v109;
      }

      else
      {
        v157 = 0;
LABEL_74:
        v52 = [v159 objectForKeyedSubscript:@"orderUpdateDate"];
        v151 = v52;
        if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v156 = 0;
LABEL_77:
          v54 = [v159 objectForKeyedSubscript:@"trackedOrderIdentifier"];
          v150 = v54;
          if (v54 && (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v155 = v55;
              v10 = v168;
              goto LABEL_80;
            }

            if (v148)
            {
              v163 = objc_alloc(MEMORY[0x1E696ABC0]);
              v112 = *MEMORY[0x1E698F240];
              v190 = *MEMORY[0x1E696A578];
              v113 = v38;
              v114 = objc_alloc(MEMORY[0x1E696AEC0]);
              v142 = objc_opt_class();
              v115 = v114;
              v38 = v113;
              v153 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v142, @"trackedOrderIdentifier"];
              v191 = v153;
              v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
              v117 = v112;
              v64 = v154;
              v149 = v116;
              v155 = 0;
              v20 = 0;
              v148->super.super.isa = [v163 initWithDomain:v117 code:2 userInfo:?];
              v12 = obj;
              v21 = v167;
              v10 = v168;
              goto LABEL_93;
            }

            v155 = 0;
            v20 = 0;
            v21 = v167;
            v10 = v168;
            v64 = v154;
          }

          else
          {
            v155 = 0;
LABEL_80:
            v56 = [v159 objectForKeyedSubscript:@"orderStatus"];
            v149 = v56;
            if (v56 && (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v153 = v57;
                v10 = v168;
                goto LABEL_83;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v153 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString(v57)];
                v10 = v168;
                goto LABEL_83;
              }

              if (v148)
              {
                obja = objc_alloc(MEMORY[0x1E696ABC0]);
                v122 = *MEMORY[0x1E698F240];
                v188 = *MEMORY[0x1E696A578];
                v152 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"orderStatus"];
                v189 = v152;
                v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
                v124 = v122;
                v64 = v154;
                v147 = v123;
                v153 = 0;
                v20 = 0;
                v148->super.super.isa = [obja initWithDomain:v124 code:2 userInfo:?];
                v21 = v167;
                v10 = v168;
                goto LABEL_92;
              }

              v153 = 0;
              v20 = 0;
              v21 = v167;
              v10 = v168;
              v64 = v154;
            }

            else
            {
              v153 = 0;
LABEL_83:
              v58 = [v159 objectForKeyedSubscript:@"earliestEmailDateSent"];
              v147 = v58;
              if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v152 = 0;
LABEL_86:
                v60 = [v159 objectForKeyedSubscript:@"orderStatusUpdateDate"];
                v161 = v60;
                if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v62 = v7;
                  v63 = 0;
                  goto LABEL_89;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v95 = v61;
                  v62 = v7;
                  v96 = v38;
                  v97 = MEMORY[0x1E695DF00];
                  v98 = v95;
                  v99 = [v97 alloc];
                  [v98 doubleValue];
                  v101 = v100;

                  v102 = v99;
                  v38 = v96;
                  v63 = [v102 initWithTimeIntervalSinceReferenceDate:v101];
                  goto LABEL_89;
                }

                v146 = v38;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v120 = v61;
                  v62 = v7;
                  v121 = objc_alloc_init(MEMORY[0x1E696AC80]);
                  v63 = [v121 dateFromString:v120];

LABEL_158:
                  v10 = v168;
                  v38 = v146;
LABEL_89:
                  LODWORD(v144) = [v153 intValue];
                  v20 = [(BMWalletPaymentsCommerceTrackedOrder *)self initWithOrderNumber:v62 orderDate:v10 merchant:v167 shippingFulfillments:v175 customer:v34 payment:v158 isTrackedInWallet:v157 orderUpdateDate:v156 trackedOrderIdentifier:v155 orderStatus:v144 earliestEmailDateSent:v152 orderStatusUpdateDate:v63];
                  self = v20;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v125 = v61;
                    v62 = v7;
                    v63 = v125;
                    goto LABEL_158;
                  }

                  v62 = v7;
                  if (v148)
                  {
                    v136 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v137 = *MEMORY[0x1E698F240];
                    v184 = *MEMORY[0x1E696A578];
                    v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"orderStatusUpdateDate"];
                    v185 = v138;
                    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                    v148->super.super.isa = [v136 initWithDomain:v137 code:2 userInfo:v139];
                    v12 = obj;
                  }

                  v63 = 0;
                  v20 = 0;
                  v10 = v168;
                  v38 = v146;
                }

LABEL_90:

                v7 = v62;
                goto LABEL_91;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v145 = v38;
                v89 = MEMORY[0x1E695DF00];
                v90 = v59;
                v91 = [v89 alloc];
                [v90 doubleValue];
                v93 = v92;

                v94 = v91;
                v38 = v145;
                v152 = [v94 initWithTimeIntervalSinceReferenceDate:v93];
                goto LABEL_86;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v118 = v38;
                v119 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v152 = [v119 dateFromString:v59];

                v38 = v118;
LABEL_154:
                v10 = v168;
                goto LABEL_86;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v152 = v59;
                goto LABEL_154;
              }

              if (v148)
              {
                v62 = v7;
                objb = objc_alloc(MEMORY[0x1E696ABC0]);
                v132 = v38;
                v133 = *MEMORY[0x1E698F240];
                v186 = *MEMORY[0x1E696A578];
                v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"earliestEmailDateSent"];
                v187 = v63;
                v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
                v135 = v133;
                v38 = v132;
                v161 = v134;
                v152 = 0;
                v20 = 0;
                v148->super.super.isa = [objb initWithDomain:v135 code:2 userInfo:?];
                v10 = v168;
                goto LABEL_90;
              }

              v152 = 0;
              v20 = 0;
              v10 = v168;
LABEL_91:
              v21 = v167;
              v64 = v154;
LABEL_92:
            }

LABEL_93:
          }

LABEL_94:

LABEL_95:
LABEL_96:

          v65 = v157;
LABEL_97:

          goto LABEL_98;
        }

        objc_opt_class();
        v64 = v154;
        if (objc_opt_isKindOfClass())
        {
          v74 = v38;
          v75 = MEMORY[0x1E695DF00];
          v76 = v53;
          v77 = [v75 alloc];
          [v76 doubleValue];
          v79 = v78;

          v80 = v77;
          v38 = v74;
          v156 = [v80 initWithTimeIntervalSinceReferenceDate:v79];
          goto LABEL_77;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v110 = v38;
          v111 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v156 = [v111 dateFromString:v53];

          v38 = v110;
LABEL_148:
          v10 = v168;
          goto LABEL_77;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v156 = v53;
          goto LABEL_148;
        }

        v20 = v148;
        if (v148)
        {
          v164 = objc_alloc(MEMORY[0x1E696ABC0]);
          v126 = *MEMORY[0x1E698F240];
          v192 = *MEMORY[0x1E696A578];
          v127 = v38;
          v128 = objc_alloc(MEMORY[0x1E696AEC0]);
          v143 = objc_opt_class();
          v129 = v128;
          v38 = v127;
          v155 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v143, @"orderUpdateDate"];
          v193 = v155;
          v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
          v131 = v126;
          v64 = v154;
          v150 = v130;
          v156 = 0;
          v20 = 0;
          v148->super.super.isa = [v164 initWithDomain:v131 code:2 userInfo:?];
          v12 = obj;
          v21 = v167;
          v10 = v168;
          goto LABEL_94;
        }

        v156 = 0;
        v10 = v168;
      }

      v21 = v167;
      goto LABEL_95;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v39;
      v65 = v45;
      v176 = 0;
      v158 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initWithJSONDictionary:v65 error:&v176];
      v68 = v176;
      if (!v68)
      {

        v10 = v168;
        v39 = v67;
        goto LABEL_71;
      }

      v21 = v167;
      v10 = v168;
      if (v67)
      {
        v68 = v68;
        *v67 = v68;
      }

      v20 = 0;
      goto LABEL_97;
    }

    if (v39)
    {
      v162 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = v7;
      v82 = v39;
      v83 = *MEMORY[0x1E698F240];
      v196 = *MEMORY[0x1E696A578];
      v84 = v38;
      v85 = objc_alloc(MEMORY[0x1E696AEC0]);
      v140 = objc_opt_class();
      v86 = v85;
      v38 = v84;
      v158 = [v86 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v140, @"payment"];
      v197 = v158;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
      v88 = v83;
      v65 = v87;
      v7 = v81;
      v20 = 0;
      *v82 = [v162 initWithDomain:v88 code:2 userInfo:v87];
      v12 = obj;
      v21 = v167;
      v10 = v168;
      goto LABEL_97;
    }

    v20 = 0;
LABEL_50:
    v21 = v167;
    v10 = v168;
    goto LABEL_98;
  }

  v12 = obj;
  if (v39)
  {
    v69 = v38;
    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
    v71 = *MEMORY[0x1E698F240];
    v198 = *MEMORY[0x1E696A578];
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
    v199 = v34;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
    v72 = v70;
    v38 = v69;
    v73 = [v72 initWithDomain:v71 code:2 userInfo:v45];
    v20 = 0;
    *v39 = v73;
    goto LABEL_50;
  }

  v20 = 0;
LABEL_57:
  v10 = v168;
LABEL_58:
  v21 = v167;
LABEL_99:

LABEL_100:
  v18 = v165;
  v6 = v166;
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrder *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_orderNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchant)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_shippingFulfillments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v15 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v11}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_customer)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v15 = 0;
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

  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_earliestEmailDateSent)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_95;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_93;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v57) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v57 & 0x7F) << v8;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_93;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 6)
      {
        if (v16 > 9)
        {
          switch(v16)
          {
            case 0xC:
              v5->_hasRaw_orderStatusUpdateDate = 1;
              v57 = 0;
              v37 = [fromCopy position] + 8;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 8, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v46 = v57;
              v47 = 56;
              goto LABEL_91;
            case 0xB:
              v5->_hasRaw_earliestEmailDateSent = 1;
              v57 = 0;
              v43 = [fromCopy position] + 8;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 8, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v46 = v57;
              v47 = 40;
              goto LABEL_91;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v57) = 0;
                v24 = [fromCopy position] + 1;
                if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v23 |= (v57 & 0x7F) << v21;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                if (v22++ > 8)
                {
                  goto LABEL_81;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v23 > 4)
              {
LABEL_81:
                LODWORD(v23) = 0;
              }

              v5->_orderStatus = v23;
              goto LABEL_92;
          }
        }

        else
        {
          switch(v16)
          {
            case 7:
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v5->_hasIsTrackedInWallet = 1;
              while (1)
              {
                LOBYTE(v57) = 0;
                v31 = [fromCopy position] + 1;
                if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v30 |= (v57 & 0x7F) << v28;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v14 = v29++ >= 9;
                if (v14)
                {
                  LOBYTE(v34) = 0;
                  goto LABEL_84;
                }
              }

              v34 = (v30 != 0) & ~[fromCopy hasError];
LABEL_84:
              v5->_isTrackedInWallet = v34;
              goto LABEL_92;
            case 8:
              v5->_hasRaw_orderUpdateDate = 1;
              v57 = 0;
              v40 = [fromCopy position] + 8;
              if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 8, v41 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v46 = v57;
              v47 = 24;
LABEL_91:
              *(&v5->super.super.isa + v47) = v46;
              goto LABEL_92;
            case 9:
              v19 = PBReaderReadString();
              v20 = 128;
LABEL_66:
              v39 = *(&v5->super.super.isa + v20);
              *(&v5->super.super.isa + v20) = v19;

              goto LABEL_92;
          }
        }

        goto LABEL_77;
      }

      if (v16 <= 3)
      {
        break;
      }

      if (v16 != 4)
      {
        if (v16 == 5)
        {
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_97;
          }

          v17 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_97;
          }

          v18 = 112;
          goto LABEL_73;
        }

        if (v16 == 6)
        {
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_97;
          }

          v17 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_97;
          }

          v18 = 120;
          goto LABEL_73;
        }

LABEL_77:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_92;
      }

      v57 = 0;
      v58 = 0;
      if (!PBReaderPlaceMark() || (v35 = [[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_97:

        goto LABEL_94;
      }

      v36 = v35;
      [v6 addObject:v35];
      PBReaderRecallMark();

LABEL_92:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_93;
      }
    }

    switch(v16)
    {
      case 1:
        v19 = PBReaderReadString();
        v20 = 80;
        goto LABEL_66;
      case 2:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_66;
      case 3:
        v57 = 0;
        v58 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_97;
        }

        v17 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_97;
        }

        v18 = 96;
LABEL_73:
        v42 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        PBReaderRecallMark();
        goto LABEL_92;
    }

    goto LABEL_77;
  }

LABEL_93:
  v51 = [v6 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v51;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_94:
    v54 = 0;
  }

  else
  {
LABEL_95:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
  customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v10 = BMWalletPaymentsCommerceTrackedOrderOrderStatusAsString([(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus]);
  earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrder with orderNumber: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@, isTrackedInWallet: %@, orderUpdateDate: %@, trackedOrderIdentifier: %@, orderStatus: %@, earliestEmailDateSent: %@, orderStatusUpdateDate: %@", orderNumber, orderDate, merchant, shippingFulfillments, customer, payment, v7, orderUpdateDate, trackedOrderIdentifier, v10, earliestEmailDateSent, orderStatusUpdateDate];

  return v15;
}

- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)payment isTrackedInWallet:(id)wallet orderUpdateDate:(id)self0 trackedOrderIdentifier:(id)self1 orderStatus:(int)self2 earliestEmailDateSent:(id)self3 orderStatusUpdateDate:(id)self4
{
  numberCopy = number;
  dateCopy = date;
  dateCopy2 = date;
  merchantCopy = merchant;
  fulfillmentsCopy = fulfillments;
  customerCopy = customer;
  paymentCopy = payment;
  walletCopy = wallet;
  updateDateCopy = updateDate;
  identifierCopy = identifier;
  sentCopy = sent;
  statusUpdateDateCopy = statusUpdateDate;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v23 = [(BMEventBase *)&v38 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_orderNumber, number);
    objc_storeStrong(&v23->_orderDate, dateCopy);
    objc_storeStrong(&v23->_merchant, merchant);
    objc_storeStrong(&v23->_shippingFulfillments, fulfillments);
    objc_storeStrong(&v23->_customer, customer);
    objc_storeStrong(&v23->_payment, payment);
    if (walletCopy)
    {
      v23->_hasIsTrackedInWallet = 1;
      v23->_isTrackedInWallet = [walletCopy BOOLValue];
    }

    else
    {
      v23->_hasIsTrackedInWallet = 0;
      v23->_isTrackedInWallet = 0;
    }

    if (updateDateCopy)
    {
      v23->_hasRaw_orderUpdateDate = 1;
      [updateDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_orderUpdateDate = 0;
      v24 = -1.0;
    }

    v23->_raw_orderUpdateDate = v24;
    objc_storeStrong(&v23->_trackedOrderIdentifier, identifier);
    v23->_orderStatus = status;
    if (sentCopy)
    {
      v23->_hasRaw_earliestEmailDateSent = 1;
      [sentCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_earliestEmailDateSent = 0;
      v25 = -1.0;
    }

    v23->_raw_earliestEmailDateSent = v25;
    if (statusUpdateDateCopy)
    {
      v23->_hasRaw_orderStatusUpdateDate = 1;
      [statusUpdateDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_orderStatusUpdateDate = 0;
      v26 = -1.0;
    }

    v23->_raw_orderStatusUpdateDate = v26;
  }

  return v23;
}

+ (id)protoFields
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:3 type:14 subMessageClass:objc_opt_class()];
  v16[2] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:4 type:14 subMessageClass:objc_opt_class()];
  v16[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:5 type:14 subMessageClass:objc_opt_class()];
  v16[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:6 type:14 subMessageClass:objc_opt_class()];
  v16[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTrackedInWallet" number:7 type:12 subMessageClass:0];
  v16[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderUpdateDate" number:8 type:0 subMessageClass:0];
  v16[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackedOrderIdentifier" number:9 type:13 subMessageClass:0];
  v16[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderStatus" number:10 type:4 subMessageClass:0];
  v16[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"earliestEmailDateSent" number:11 type:0 subMessageClass:0];
  v16[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderStatusUpdateDate" number:12 type:0 subMessageClass:0];
  v16[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  return v11;
}

+ (id)columns
{
  v16[12] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_678];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_680];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_682];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_684];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTrackedInWallet" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderUpdateDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackedOrderIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderStatus" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"earliestEmailDateSent" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:1];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderStatusUpdateDate" dataType:3 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:1];
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

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 payment];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 customer];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _shippingFulfillmentsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 merchant];
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

    v8 = [[BMWalletPaymentsCommerceTrackedOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end