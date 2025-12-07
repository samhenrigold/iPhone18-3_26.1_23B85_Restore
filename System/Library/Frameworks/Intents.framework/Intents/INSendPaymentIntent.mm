@interface INSendPaymentIntent
- (BOOL)configureAttributeSet:(id)set includingData:(BOOL)data;
- (INCurrencyAmount)currencyAmount;
- (INPerson)payee;
- (INSendPaymentIntent)initWithPayee:(INPerson *)payee currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note;
- (NSString)note;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCurrencyAmount:(id)amount;
- (void)setNote:(id)note;
- (void)setPayee:(id)payee;
@end

@implementation INSendPaymentIntent

- (BOOL)configureAttributeSet:(id)set includingData:(BOOL)data
{
  dataCopy = data;
  v29 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  payee = [(INSendPaymentIntent *)self payee];
  v9 = [v7 initWithObjects:{payee, 0}];

  v10 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = INPersonToCSPerson(*(*(&v24 + 1) + 8 * v15));
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  [setCopy setPrimaryRecipients:v10];
  v17 = NSStringFromSelector(sel_displayName);
  v18 = [v10 valueForKey:v17];
  [setCopy setRecipientNames:v18];

  v19 = [v10 valueForKeyPath:@"handles.@distinctUnionOfArrays.self"];
  [setCopy setRecipientAddresses:v19];

  note = [(INSendPaymentIntent *)self note];
  [setCopy setTextContent:note];

  v23.receiver = self;
  v23.super_class = INSendPaymentIntent;
  v21 = [(INIntent *)&v23 configureAttributeSet:setCopy includingData:dataCopy];

  return v21;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  payee = [_typedBackingStore payee];
  v10 = INIntentSlotValueRedactedContactFromContact(payee, options, v15);
  [v8 setPayee:v10];

  currencyAmount = [_typedBackingStore currencyAmount];
  v12 = INIntentSlotValueRedactedCurrencyAmountFromCurrencyAmount(currencyAmount, options, v15);
  [v8 setCurrencyAmount:v12];

  note = [_typedBackingStore note];
  v14 = INIntentSlotValueRedactedStringFromString(note, options, v15);

  [v8 setNote:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"payee";
  payee = [(INSendPaymentIntent *)self payee];
  null = payee;
  if (!payee)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"currencyAmount";
  currencyAmount = [(INSendPaymentIntent *)self currencyAmount];
  null2 = currencyAmount;
  if (!currencyAmount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"note";
  note = [(INSendPaymentIntent *)self note];
  null3 = note;
  if (!note)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!note)
  {
  }

  if (!currencyAmount)
  {
  }

  if (!payee)
  {
  }

  return v9;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INSendPaymentIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"note"];

  return v3;
}

- (void)setNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(noteCopy);

  [_typedBackingStore setNote:v5];
}

- (NSString)note
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  note = [_typedBackingStore note];
  v4 = INIntentSlotValueTransformFromString(note);

  return v4;
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCurrencyAmount(amountCopy);

  [_typedBackingStore setCurrencyAmount:v5];
}

- (INCurrencyAmount)currencyAmount
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  currencyAmount = [_typedBackingStore currencyAmount];
  v4 = INIntentSlotValueTransformFromCurrencyAmount(currencyAmount);

  return v4;
}

- (void)setPayee:(id)payee
{
  payeeCopy = payee;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(payeeCopy);

  [_typedBackingStore setPayee:v5];
}

- (INPerson)payee
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  payee = [_typedBackingStore payee];
  v4 = INIntentSlotValueTransformFromContact(payee);

  return v4;
}

- (INSendPaymentIntent)initWithPayee:(INPerson *)payee currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note
{
  v8 = payee;
  v9 = currencyAmount;
  v10 = note;
  v14.receiver = self;
  v14.super_class = INSendPaymentIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSendPaymentIntent *)v11 setPayee:v8];
    [(INSendPaymentIntent *)v12 setCurrencyAmount:v9];
    [(INSendPaymentIntent *)v12 setNote:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end