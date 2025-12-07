@interface NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addMoreInfoItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext

- (void)addMoreInfoItems:(id)items
{
  itemsCopy = items;
  moreInfoItems = self->_moreInfoItems;
  v8 = itemsCopy;
  if (!moreInfoItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_moreInfoItems;
    self->_moreInfoItems = v6;

    itemsCopy = v8;
    moreInfoItems = self->_moreInfoItems;
  }

  [(NSMutableArray *)moreInfoItems addObject:itemsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_moreInfoItems count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_moreInfoItems, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_moreInfoItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"moreInfoItems"];
  }

  paymentPass = self->_paymentPass;
  if (paymentPass)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentPass *)paymentPass dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"paymentPass"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_moreInfoItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_paymentPass)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self moreInfoItemsCount])
  {
    [toCopy clearMoreInfoItems];
    moreInfoItemsCount = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self moreInfoItemsCount];
    if (moreInfoItemsCount)
    {
      v5 = moreInfoItemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self moreInfoItemsAtIndex:i];
        [toCopy addMoreInfoItems:v7];
      }
    }
  }

  if (self->_paymentPass)
  {
    [toCopy setPaymentPass:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_moreInfoItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{zone, v15}];
        [v5 addMoreInfoItems:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((moreInfoItems = self->_moreInfoItems, !(moreInfoItems | equalCopy[1])) || -[NSMutableArray isEqual:](moreInfoItems, "isEqual:")))
  {
    paymentPass = self->_paymentPass;
    if (paymentPass | equalCopy[2])
    {
      v7 = [(NPKProtoStandalonePaymentPass *)paymentPass isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self addMoreInfoItems:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  paymentPass = self->_paymentPass;
  v11 = fromCopy[2];
  if (paymentPass)
  {
    if (v11)
    {
      [(NPKProtoStandalonePaymentPass *)paymentPass mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self setPaymentPass:?];
  }
}

@end