@interface NPKPeerPaymentQuickTypeParser
- (NPKPeerPaymentQuickTypeParser)initWithSupportedCurrencyCodes:(id)codes allowedPayloadIDs:(id)ds;
- (id)parsePayload:(id)payload payloadID:(id)d maxCount:(unint64_t)count;
@end

@implementation NPKPeerPaymentQuickTypeParser

- (NPKPeerPaymentQuickTypeParser)initWithSupportedCurrencyCodes:(id)codes allowedPayloadIDs:(id)ds
{
  codesCopy = codes;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = NPKPeerPaymentQuickTypeParser;
  v8 = [(NPKPeerPaymentQuickTypeParser *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:codesCopy];
    supportedCurrencyCodes = v8->_supportedCurrencyCodes;
    v8->_supportedCurrencyCodes = v9;

    v11 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    allowedPayloadIDs = v8->_allowedPayloadIDs;
    v8->_allowedPayloadIDs = v11;
  }

  return v8;
}

- (id)parsePayload:(id)payload payloadID:(id)d maxCount:(unint64_t)count
{
  v45 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  v10 = pk_General_log(dCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = dCopy;
      v43 = 2112;
      v44 = payloadCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Starting Parse payload for PayloadID:%@ payload:%@", buf, 0x16u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  allowedPayloadIDs = [(NPKPeerPaymentQuickTypeParser *)self allowedPayloadIDs];
  v16 = dCopy;
  v17 = allowedPayloadIDs;
  if (![v17 count])
  {

    goto LABEL_10;
  }

  if (!v16)
  {

    goto LABEL_16;
  }

  v18 = [v17 containsObject:v16];

  if (v18)
  {
LABEL_10:
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    supportedCurrencyCodes = [(NPKPeerPaymentQuickTypeParser *)self supportedCurrencyCodes];
    v23 = [payloadCopy npk_objectForKey:@"DirectlyInitiate" class:objc_opt_class()];
    v24 = pk_General_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v27 = pk_General_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v23;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Value for directly initiate:%@", buf, 0xCu);
      }
    }

    v28 = [payloadCopy npk_objectForKey:@"Currency" class:objc_opt_class()];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __65__NPKPeerPaymentQuickTypeParser_parsePayload_payloadID_maxCount___block_invoke;
    v35[3] = &unk_279945EC8;
    v38 = v20;
    v39 = v21;
    v36 = supportedCurrencyCodes;
    v37 = array;
    countCopy = count;
    v29 = supportedCurrencyCodes;
    [v28 enumerateObjectsUsingBlock:v35];

    goto LABEL_20;
  }

LABEL_16:
  v30 = pk_General_log(v19);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

  if (v31)
  {
    v28 = pk_General_log(v32);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v16;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Warning: PayloadID:%@ Not allowed", buf, 0xCu);
    }

    v23 = 0;
LABEL_20:

    goto LABEL_22;
  }

  v23 = 0;
LABEL_22:
  v33 = [[NPKPeerPaymentQuickTypeParserData alloc] initWithCurrenciesData:array directlyInitiate:v23];

  return v33;
}

void __65__NPKPeerPaymentQuickTypeParser_parsePayload_payloadID_maxCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [v6 npk_objectForKey:@"CurrencyType" class:*(a1 + 56)];
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10)
    {
      if (![v11 count])
      {

        goto LABEL_14;
      }

      v13 = [v12 containsObject:v10];

      if (v13)
      {
LABEL_14:
        v22 = [v6 npk_objectForKey:@"CurrencyValue" class:*(a1 + 56)];
        v21 = v22;
        if (v22)
        {
          v22 = [MEMORY[0x277CCA980] decimalNumberWithString:v22];
          v23 = v22;
          if (v22)
          {
            v24 = [MEMORY[0x277CCA980] notANumber];
            v25 = [(NSDecimalNumber *)v23 isEqual:v24];

            if ((v25 & 1) == 0)
            {
              v26 = PKCurrencyAmountCreate(v23, &v10->isa);
              v27 = v26;
              if (v26)
              {
                v28 = pk_General_log(v26);
                v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

                if (v29)
                {
                  v31 = pk_General_log(v30);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = 138412290;
                    v44 = v27;
                    _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: found valid amount:%@", &v43, 0xCu);
                  }
                }

                v32 = [v6 npk_objectForKey:@"SenderHandle" class:*(a1 + 56)];
                v33 = [v32 length];
                if (v33)
                {
                  v34 = pk_General_log(v33);
                  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

                  if (v35)
                  {
                    v37 = pk_General_log(v36);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      v43 = 138412290;
                      v44 = v32;
                      _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: found sender handle:%@", &v43, 0xCu);
                    }
                  }
                }

                v38 = [[NPKPeerPaymentQuickTypeParserCurrencyData alloc] initWithCurrencyAmount:v27 senderHandle:v32];
                [*(a1 + 40) addObject:v38];
              }

              v39 = *(a1 + 64);
              if (v39)
              {
                LOBYTE(v39) = [*(a1 + 40) count] == *(a1 + 64);
              }

              *a4 = v39;
              goto LABEL_35;
            }
          }
        }

        else
        {
          v23 = 0;
        }

        v40 = pk_General_log(v22);
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

        if (!v41)
        {
LABEL_36:

          goto LABEL_37;
        }

        v27 = pk_General_log(v42);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 138412290;
          v44 = v6;
          _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: Not supported value from info:%@", &v43, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v18 = pk_General_log(v14);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
LABEL_38:

      goto LABEL_39;
    }

    v21 = pk_General_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = v6;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Not supported currency code from info:%@", &v43, 0xCu);
    }

LABEL_37:

    goto LABEL_38;
  }

  v15 = pk_General_log(isKindOfClass);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v10 = pk_General_log(v17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Not supported currency value from info:%@", &v43, 0xCu);
    }

    goto LABEL_38;
  }

LABEL_39:
}

@end