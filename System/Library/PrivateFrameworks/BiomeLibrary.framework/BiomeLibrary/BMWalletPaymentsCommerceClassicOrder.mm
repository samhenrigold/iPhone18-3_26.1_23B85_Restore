@interface BMWalletPaymentsCommerceClassicOrder
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrder)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceClassicOrder)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)orderDate;
- (NSString)description;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceClassicOrder

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    orderTypeIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
    orderTypeIdentifier2 = [v5 orderTypeIdentifier];
    v8 = orderTypeIdentifier2;
    if (orderTypeIdentifier == orderTypeIdentifier2)
    {
    }

    else
    {
      orderTypeIdentifier3 = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
      orderTypeIdentifier4 = [v5 orderTypeIdentifier];
      v11 = [orderTypeIdentifier3 isEqual:orderTypeIdentifier4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    orderIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
    orderIdentifier2 = [v5 orderIdentifier];
    v15 = orderIdentifier2;
    if (orderIdentifier == orderIdentifier2)
    {
    }

    else
    {
      orderIdentifier3 = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
      orderIdentifier4 = [v5 orderIdentifier];
      v18 = [orderIdentifier3 isEqual:orderIdentifier4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    orderNumber = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
    orderNumber2 = [v5 orderNumber];
    v21 = orderNumber2;
    if (orderNumber == orderNumber2)
    {
    }

    else
    {
      orderNumber3 = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
      orderNumber4 = [v5 orderNumber];
      v24 = [orderNumber3 isEqual:orderNumber4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    orderDate = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
    orderDate2 = [v5 orderDate];
    v27 = orderDate2;
    if (orderDate == orderDate2)
    {
    }

    else
    {
      orderDate3 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
      orderDate4 = [v5 orderDate];
      v30 = [orderDate3 isEqual:orderDate4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    merchant = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
    merchant2 = [v5 merchant];
    v33 = merchant2;
    if (merchant == merchant2)
    {
    }

    else
    {
      merchant3 = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
      merchant4 = [v5 merchant];
      v36 = [merchant3 isEqual:merchant4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    shippingFulfillments = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
    shippingFulfillments2 = [v5 shippingFulfillments];
    v39 = shippingFulfillments2;
    if (shippingFulfillments == shippingFulfillments2)
    {
    }

    else
    {
      shippingFulfillments3 = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
      shippingFulfillments4 = [v5 shippingFulfillments];
      v42 = [shippingFulfillments3 isEqual:shippingFulfillments4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    customer = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
    customer2 = [v5 customer];
    v45 = customer2;
    if (customer == customer2)
    {
    }

    else
    {
      customer3 = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
      customer4 = [v5 customer];
      v48 = [customer3 isEqual:customer4];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    payment = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
    payment2 = [v5 payment];
    if (payment == payment2)
    {
      v12 = 1;
    }

    else
    {
      payment3 = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
      payment4 = [v5 payment];
      v12 = [payment3 isEqual:payment4];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (NSDate)orderDate
{
  if (self->_hasRaw_orderDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderDate];
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
  v35[8] = *MEMORY[0x1E69E9840];
  orderTypeIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
  orderIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
  orderNumber = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
  if (orderDate)
  {
    v7 = MEMORY[0x1E696AD98];
    orderDate2 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
    [orderDate2 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  merchant = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
  jsonDictionary = [merchant jsonDictionary];

  _shippingFulfillmentsJSONArray = [(BMWalletPaymentsCommerceClassicOrder *)self _shippingFulfillmentsJSONArray];
  customer = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
  jsonDictionary2 = [customer jsonDictionary];

  payment = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
  jsonDictionary3 = [payment jsonDictionary];

  v34[0] = @"orderTypeIdentifier";
  null = orderTypeIdentifier;
  if (!orderTypeIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v35[0] = null;
  v34[1] = @"orderIdentifier";
  null2 = orderIdentifier;
  if (!orderIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v35[1] = null2;
  v34[2] = @"orderNumber";
  null3 = orderNumber;
  if (!orderNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = orderTypeIdentifier;
  v27 = null3;
  v35[2] = null3;
  v34[3] = @"orderDate";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = orderIdentifier;
  v35[3] = null4;
  v34[4] = @"merchant";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = orderNumber;
  v35[4] = null5;
  v34[5] = @"shippingFulfillments";
  null6 = _shippingFulfillmentsJSONArray;
  if (!_shippingFulfillmentsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v35[5] = null6;
  v34[6] = @"customer";
  null7 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null7;
  v34[7] = @"payment";
  null8 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:8];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (_shippingFulfillmentsJSONArray)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (_shippingFulfillmentsJSONArray)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!jsonDictionary)
  {
  }

  if (!v22)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v32)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v31)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v32)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:

  return v25;
}

- (id)_shippingFulfillmentsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  shippingFulfillments = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
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

- (BMWalletPaymentsCommerceClassicOrder)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v142[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"orderTypeIdentifier"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v141 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderTypeIdentifier"];
        v142[0] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:&v141 count:1];
        v25 = v22;
        v9 = v24;
        v8 = 0;
        v26 = 0;
        *error = [v21 initWithDomain:v25 code:2 userInfo:v24];
        goto LABEL_110;
      }

      v8 = 0;
      v26 = 0;
      goto LABEL_111;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"orderIdentifier"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = v9;
        v29 = *MEMORY[0x1E698F240];
        v139 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderIdentifier"];
        errorCopy2 = error;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v139 count:1];
        v32 = v27;
        v10 = v31;
        v33 = v29;
        v9 = v28;
        v23 = 0;
        v26 = 0;
        *errorCopy = [v32 initWithDomain:v33 code:2 userInfo:v31];
        goto LABEL_109;
      }

      v23 = 0;
      v26 = 0;
      goto LABEL_110;
    }

    v111 = v9;
  }

  else
  {
    v111 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"orderNumber"];
  errorCopy3 = error;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v9;
        v36 = *MEMORY[0x1E698F240];
        v137 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
        v138 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
        v39 = v36;
        v9 = v35;
        v40 = [v34 initWithDomain:v39 code:2 userInfo:v38];
        error = 0;
        v26 = 0;
        v23 = v111;
        *errorCopy3 = v40;
        goto LABEL_108;
      }

      v26 = 0;
      v23 = v111;
      goto LABEL_109;
    }

    error = v10;
  }

  else
  {
    error = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"orderDate"];
  v107 = v11;
  errorCopy4 = error;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E695DF00];
      v14 = v12;
      v15 = v10;
      v16 = v14;
      v17 = [v13 alloc];
      [v16 doubleValue];
      v19 = v18;

      v10 = v15;
      v20 = [v17 initWithTimeIntervalSinceReferenceDate:v19];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v109 = [v41 dateFromString:v12];

        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v80 = v10;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v106 = v9;
          v82 = *MEMORY[0x1E698F240];
          v135 = *MEMORY[0x1E696A578];
          v38 = v107;
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"orderDate"];
          v136 = v56;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
          v84 = v81;
          v10 = v80;
          v42 = v83;
          v85 = v82;
          v9 = v106;
          v109 = 0;
          v26 = 0;
          *errorCopy3 = [v84 initWithDomain:v85 code:2 userInfo:v83];
          v23 = v111;
          goto LABEL_106;
        }

        v37 = 0;
        v26 = 0;
        v23 = v111;
        v38 = v107;
        goto LABEL_108;
      }

      v20 = v12;
    }

    v109 = v20;
  }

  else
  {
    v109 = 0;
  }

LABEL_30:
  v42 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
  if (v42)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = v10;
      v102 = v42;
      v104 = v9;
      v42 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v101 = v10;
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v105 = v9;
          v59 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v103 = v42;
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
          v134 = v42;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v61 = v58;
          v10 = v101;
          v62 = v59;
          v9 = v105;
          *errorCopy3 = [v61 initWithDomain:v62 code:2 userInfo:v60];

          v26 = 0;
          v56 = v103;
          v23 = v111;
          v38 = v107;
          goto LABEL_106;
        }

        v26 = 0;
        v23 = v111;
        v38 = v107;
        v56 = v42;
        goto LABEL_107;
      }

      v56 = v42;
      v121 = 0;
      v96 = [[BMWalletPaymentsCommerceClassicOrderMerchant alloc] initWithJSONDictionary:v56 error:&v121];
      v57 = v121;
      if (v57)
      {
        v23 = v111;
        if (errorCopy3)
        {
          v57 = v57;
          *errorCopy3 = v57;
        }

        v26 = 0;
        v38 = v107;
        v42 = v96;
        goto LABEL_106;
      }

      v100 = v10;
      v102 = v42;
      v104 = v9;

      v42 = v96;
    }
  }

  else
  {
    v100 = v10;
    v102 = 0;
    v104 = v9;
  }

  v43 = [dictionaryCopy objectForKeyedSubscript:@"shippingFulfillments"];
  null = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:null];

  v94 = v7;
  v99 = v8;
  if (v45)
  {
    v95 = v42;
    v93 = dictionaryCopy;

    v43 = 0;
  }

  else
  {
    if (v43)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v26 = 0;
          v9 = v104;
          v38 = v107;
          v23 = v111;
          v56 = v102;
          goto LABEL_105;
        }

        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v131 = *MEMORY[0x1E696A578];
        v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
        v132 = v113;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        v74 = [v72 initWithDomain:v73 code:2 userInfo:v55];
        v26 = 0;
        *errorCopy3 = v74;
        goto LABEL_70;
      }
    }

    v95 = v42;
    v93 = dictionaryCopy;
  }

  v113 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v43 = v43;
  v46 = [v43 countByEnumeratingWithState:&v117 objects:v130 count:16];
  if (!v46)
  {
    goto LABEL_49;
  }

  v47 = v46;
  v48 = *v118;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v118 != v48)
      {
        objc_enumerationMutation(v43);
      }

      v50 = *(*(&v117 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = errorCopy3;
        if (errorCopy3)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
          v129 = v51;
          v66 = MEMORY[0x1E695DF20];
          v67 = &v129;
          v68 = &v128;
LABEL_63:
          v69 = [v66 dictionaryWithObjects:v67 forKeys:v68 count:1];
          v70 = [v64 initWithDomain:v65 code:2 userInfo:v69];
          v26 = 0;
          *v63 = v70;
          v55 = v43;
          dictionaryCopy = v93;
          v23 = v111;
          v38 = v107;
          v56 = v102;
LABEL_67:
          v42 = v95;
          goto LABEL_103;
        }

LABEL_72:
        v26 = 0;
        v55 = v43;
        dictionaryCopy = v93;
        v23 = v111;
        v38 = v107;
        v56 = v102;
        v42 = v95;
        goto LABEL_104;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v63 = errorCopy3;
        if (errorCopy3)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v126 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
          v127 = v51;
          v66 = MEMORY[0x1E695DF20];
          v67 = &v127;
          v68 = &v126;
          goto LABEL_63;
        }

        goto LABEL_72;
      }

      v51 = v50;
      v52 = [BMWalletPaymentsCommerceClassicOrderShippingFulfillment alloc];
      v116 = 0;
      v53 = [(BMWalletPaymentsCommerceClassicOrderShippingFulfillment *)v52 initWithJSONDictionary:v51 error:&v116];
      v54 = v116;
      if (v54)
      {
        v69 = v54;
        v56 = v102;
        if (errorCopy3)
        {
          v71 = v54;
          *errorCopy3 = v69;
        }

        v26 = 0;
        v55 = v43;
        dictionaryCopy = v93;
        v23 = v111;
        v38 = v107;
        goto LABEL_67;
      }

      [v113 addObject:v53];
    }

    v47 = [v43 countByEnumeratingWithState:&v117 objects:v130 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_49:

  dictionaryCopy = v93;
  v55 = [v93 objectForKeyedSubscript:@"customer"];
  if (!v55)
  {
    v51 = 0;
    v42 = v95;
    goto LABEL_74;
  }

  objc_opt_class();
  v42 = v95;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v55;
      v115 = 0;
      v51 = [[BMWalletPaymentsCommerceClassicOrderCustomer alloc] initWithJSONDictionary:v69 error:&v115];
      v77 = v115;
      if (!v77)
      {

        goto LABEL_74;
      }

      if (errorCopy3)
      {
        v77 = v77;
        *errorCopy3 = v77;
      }

      v26 = 0;
      v55 = v69;
      goto LABEL_101;
    }

    if (errorCopy3)
    {
      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
      v87 = *MEMORY[0x1E698F240];
      v124 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
      v125 = v51;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v88 = [v86 initWithDomain:v87 code:2 userInfo:v69];
      v26 = 0;
      *errorCopy3 = v88;
LABEL_101:
      v23 = v111;
      goto LABEL_102;
    }

    v26 = 0;
LABEL_70:
    v23 = v111;
    v38 = v107;
    v56 = v102;
    goto LABEL_104;
  }

  v51 = 0;
LABEL_74:
  v69 = [v93 objectForKeyedSubscript:@"payment"];
  v38 = v107;
  if (!v69 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v75 = 0;
    v23 = v111;
    goto LABEL_77;
  }

  objc_opt_class();
  v23 = v111;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy3)
    {
      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
      v92 = *MEMORY[0x1E698F240];
      v122 = *MEMORY[0x1E696A578];
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payment"];
      v123 = v90;
      v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      *errorCopy3 = [v98 initWithDomain:v92 code:2 userInfo:v91];

      v76 = v90;
      v26 = 0;
      v38 = v107;
LABEL_78:
      v56 = v102;
      goto LABEL_79;
    }

    v26 = 0;
LABEL_102:
    v38 = v107;
    v56 = v102;
    goto LABEL_103;
  }

  v78 = v69;
  v114 = 0;
  v97 = [[BMWalletPaymentsCommerceClassicOrderPayment alloc] initWithJSONDictionary:v78 error:&v114];
  v79 = v114;
  if (!v79)
  {

    v38 = v107;
    v75 = v97;
LABEL_77:
    v26 = [(BMWalletPaymentsCommerceClassicOrder *)selfCopy initWithOrderTypeIdentifier:v99 orderIdentifier:v23 orderNumber:errorCopy4 orderDate:v109 merchant:v42 shippingFulfillments:v113 customer:v51 payment:v75];
    selfCopy = v26;
    v76 = v75;
    goto LABEL_78;
  }

  if (errorCopy3)
  {
    v79 = v79;
    *errorCopy3 = v79;
  }

  v26 = 0;
  v38 = v107;
  v56 = v102;
  v76 = v97;
LABEL_79:

LABEL_103:
LABEL_104:

  v7 = v94;
  v8 = v99;
  v9 = v104;
LABEL_105:

  v10 = v100;
LABEL_106:

LABEL_107:
  error = errorCopy4;
  v37 = v109;
LABEL_108:

LABEL_109:
LABEL_110:

LABEL_111:
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrder *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
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

  if (self->_hasRaw_orderDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_merchant)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderMerchant *)self->_merchant writeTo:toCopy];
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
    [(BMWalletPaymentsCommerceClassicOrderCustomer *)self->_customer writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderPayment *)self->_payment writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMWalletPaymentsCommerceClassicOrder;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v35) & 0x7F) << v8;
        if ((LOBYTE(v35) & 0x80) == 0)
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
        goto LABEL_54;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark() || (v23 = [[BMWalletPaymentsCommerceClassicOrderCustomer alloc] initByReadFrom:fromCopy]) == 0)
          {
LABEL_56:

            goto LABEL_57;
          }

          v24 = 88;
          goto LABEL_48;
        }

        if (v16 == 8)
        {
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_56;
          }

          v23 = [[BMWalletPaymentsCommerceClassicOrderPayment alloc] initByReadFrom:fromCopy];
          if (!v23)
          {
            goto LABEL_56;
          }

          v24 = 80;
          goto LABEL_48;
        }

LABEL_49:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      if (v16 == 5)
      {
        v35 = 0.0;
        v36 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_56;
        }

        v23 = [[BMWalletPaymentsCommerceClassicOrderMerchant alloc] initByReadFrom:fromCopy];
        if (!v23)
        {
          goto LABEL_56;
        }

        v24 = 64;
LABEL_48:
        v26 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        PBReaderRecallMark();
        goto LABEL_53;
      }

      if (v16 != 6)
      {
        goto LABEL_49;
      }

      v35 = 0.0;
      v36 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_56;
      }

      v19 = [[BMWalletPaymentsCommerceClassicOrderShippingFulfillment alloc] initByReadFrom:fromCopy];
      if (!v19)
      {
        goto LABEL_56;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_53:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_54;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_44;
      }

      if (v16 == 4)
      {
        v5->_hasRaw_orderDate = 1;
        v35 = 0.0;
        v21 = [fromCopy position] + 8;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_orderDate = v35;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_44;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 48;
LABEL_44:
        v25 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_53;
      }
    }

    goto LABEL_49;
  }

LABEL_54:
  v29 = [v6 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_57:
    v32 = 0;
  }

  else
  {
LABEL_55:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  orderTypeIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
  orderIdentifier = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
  orderNumber = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
  shippingFulfillments = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
  customer = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
  payment = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
  v12 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrder with orderTypeIdentifier: %@, orderIdentifier: %@, orderNumber: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@", orderTypeIdentifier, orderIdentifier, orderNumber, orderDate, merchant, shippingFulfillments, customer, payment];

  return v12;
}

- (BMWalletPaymentsCommerceClassicOrder)initWithOrderTypeIdentifier:(id)identifier orderIdentifier:(id)orderIdentifier orderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)self0
{
  identifierCopy = identifier;
  orderIdentifierCopy = orderIdentifier;
  numberCopy = number;
  dateCopy = date;
  merchantCopy = merchant;
  fulfillmentsCopy = fulfillments;
  customerCopy = customer;
  paymentCopy = payment;
  v28.receiver = self;
  v28.super_class = BMWalletPaymentsCommerceClassicOrder;
  v18 = [(BMEventBase *)&v28 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_orderTypeIdentifier, identifier);
    objc_storeStrong(&v18->_orderIdentifier, orderIdentifier);
    objc_storeStrong(&v18->_orderNumber, number);
    if (dateCopy)
    {
      v18->_hasRaw_orderDate = 1;
      [dateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_orderDate = 0;
      v19 = -1.0;
    }

    v18->_raw_orderDate = v19;
    objc_storeStrong(&v18->_merchant, merchant);
    objc_storeStrong(&v18->_shippingFulfillments, fulfillments);
    objc_storeStrong(&v18->_customer, customer);
    objc_storeStrong(&v18->_payment, payment);
  }

  return v18;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderTypeIdentifier" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderIdentifier" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:4 type:0 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:5 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:6 type:14 subMessageClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:7 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:8 type:14 subMessageClass:objc_opt_class()];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderTypeIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_573];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_575];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_577];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_579];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 payment];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 customer];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _shippingFulfillmentsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

    v8 = [[BMWalletPaymentsCommerceClassicOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end