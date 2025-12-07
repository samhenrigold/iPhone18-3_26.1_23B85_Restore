@interface NPKProtoStandalonePaymentProvisioningFlowPickerSection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowPickerSection

- (void)addItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  v8 = itemsCopy;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    itemsCopy = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:itemsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowPickerSection;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  footer = self->_footer;
  if (footer)
  {
    [v4 setObject:footer forKey:@"footer"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_items;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"items"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_footer)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_items;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  if (self->_footer)
  {
    [toCopy setFooter:?];
  }

  if ([(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self itemsCount])
  {
    [toCopy clearItems];
    itemsCount = [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self itemsCount];
    if (itemsCount)
    {
      v5 = itemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self itemsAtIndex:i];
        [toCopy addItems:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_footer copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_items;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addItems:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[3])) || -[NSString isEqual:](title, "isEqual:")) && ((footer = self->_footer, !(footer | equalCopy[1])) || -[NSString isEqual:](footer, "isEqual:")))
  {
    items = self->_items;
    if (items | equalCopy[2])
    {
      v8 = [(NSMutableArray *)items isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_footer hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_items hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self setTitle:?];
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self setFooter:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)self addItems:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end