@interface NPKPaymentOptionsSerialization
+ (id)_billingAddressDictionaryFromEncodedData:(id)data;
+ (id)_contactFromEncodedData:(id)data;
+ (id)setTransactionDefaultsRequest;
+ (void)_deleteAllDefaultBillingAddresses:(id)addresses;
+ (void)handleSetTransactionDefaultsRequest:(id)request;
@end

@implementation NPKPaymentOptionsSerialization

+ (id)setTransactionDefaultsRequest
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D38078]);
  v3 = objc_alloc_init(NPKProtoSetTransactionDefaultsRequest);
  defaultShippingAddress = [v2 defaultShippingAddress];
  v5 = defaultShippingAddress;
  if (defaultShippingAddress)
  {
    v6 = pk_Payment_log(defaultShippingAddress);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41[0]) = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sending default shipping address", v41, 2u);
      }
    }

    v10 = NPKSecureArchiveObject(v5);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultShippingAddress:v10];
  }

  defaultContactEmail = [v2 defaultContactEmail];
  v12 = defaultContactEmail;
  if (defaultContactEmail)
  {
    v13 = pk_Payment_log(defaultContactEmail);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41[0]) = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact email", v41, 2u);
      }
    }

    v17 = NPKSecureArchiveObject(v12);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactEmail:v17];
  }

  defaultContactPhone = [v2 defaultContactPhone];
  v19 = defaultContactPhone;
  if (defaultContactPhone)
  {
    v20 = pk_Payment_log(defaultContactPhone);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41[0]) = 0;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact phone", v41, 2u);
      }
    }

    v24 = NPKSecureArchiveObject(v19);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactPhone:v24];
  }

  defaultContactName = [v2 defaultContactName];
  v26 = defaultContactName;
  if (defaultContactName)
  {
    v27 = pk_Payment_log(defaultContactName);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v30 = pk_Payment_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41[0]) = 0;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact name", v41, 2u);
      }
    }

    v31 = NPKSecureArchiveObject(v26);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactName:v31];
  }

  _rawDefaultBillingAddresses = [v2 _rawDefaultBillingAddresses];
  v33 = _rawDefaultBillingAddresses;
  if (_rawDefaultBillingAddresses)
  {
    v34 = pk_Payment_log(_rawDefaultBillingAddresses);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v37 = pk_Payment_log(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v33 count];
        v41[0] = 67109120;
        v41[1] = v38;
        _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Sending %d default billing addresses", v41, 8u);
      }
    }

    v39 = NPKSecureArchiveObject(v33);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultBillingAddresses:v39];
  }

  return v3;
}

+ (void)handleSetTransactionDefaultsRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277D38078]);
  if ([requestCopy hasDefaultShippingAddress])
  {
    defaultShippingAddress = [requestCopy defaultShippingAddress];
    v7 = [self _contactFromEncodedData:defaultShippingAddress];

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v12 = pk_Payment_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42[0]) = 0;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default shipping address", v42, 2u);
        }
      }

      [v5 setDefaultShippingAddress:v7];
    }
  }

  else
  {
    [v5 deleteDefaultShippingAddress];
  }

  if ([requestCopy hasDefaultContactEmail])
  {
    defaultContactEmail = [requestCopy defaultContactEmail];
    v14 = [self _contactFromEncodedData:defaultContactEmail];

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v19 = pk_Payment_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42[0]) = 0;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact email", v42, 2u);
        }
      }

      [v5 setDefaultContactEmail:v14];
    }
  }

  else
  {
    [v5 deleteDefaultContactEmail];
  }

  if ([requestCopy hasDefaultContactPhone])
  {
    defaultContactPhone = [requestCopy defaultContactPhone];
    v21 = [self _contactFromEncodedData:defaultContactPhone];

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v26 = pk_Payment_log(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42[0]) = 0;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact phone", v42, 2u);
        }
      }

      [v5 setDefaultContactPhone:v21];
    }
  }

  else
  {
    [v5 deleteDefaultContactPhone];
  }

  if ([requestCopy hasDefaultContactName])
  {
    defaultContactName = [requestCopy defaultContactName];
    v28 = [self _contactFromEncodedData:defaultContactName];

    if (v28)
    {
      v30 = pk_Payment_log(v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v33 = pk_Payment_log(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42[0]) = 0;
          _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact name", v42, 2u);
        }
      }

      [v5 setDefaultContactName:v28];
    }
  }

  else
  {
    [v5 deleteDefaultContactName];
  }

  if ([requestCopy hasDefaultBillingAddresses])
  {
    defaultBillingAddresses = [requestCopy defaultBillingAddresses];
    v35 = [self _billingAddressDictionaryFromEncodedData:defaultBillingAddresses];

    if (v35)
    {
      v37 = pk_Payment_log(v36);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v40 = pk_Payment_log(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v35 count];
          v42[0] = 67109120;
          v42[1] = v41;
          _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: Decoded %d default billing addresses", v42, 8u);
        }
      }

      [v5 _setRawDefaultBillingAddresses:v35];
    }
  }

  else
  {
    [self _deleteAllDefaultBillingAddresses:v5];
  }
}

+ (void)_deleteAllDefaultBillingAddresses:(id)addresses
{
  v3 = MEMORY[0x277CBEAC0];
  addressesCopy = addresses;
  dictionary = [v3 dictionary];
  [addressesCopy _setRawDefaultBillingAddresses:dictionary];
}

+ (id)_contactFromEncodedData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_class();
  v5 = NPKSecureUnarchiveObject(dataCopy, v4);

  return v5;
}

+ (id)_billingAddressDictionaryFromEncodedData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:*MEMORY[0x277CCA308]];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v13 = pk_General_log(isKindOfClass);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Billing address is not a dictionary", buf, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

@end