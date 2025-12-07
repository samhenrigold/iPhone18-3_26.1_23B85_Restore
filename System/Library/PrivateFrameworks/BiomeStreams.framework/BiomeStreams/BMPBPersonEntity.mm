@interface BMPBPersonEntity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddresses:(id)addresses;
- (void)addAttributes:(id)attributes;
- (void)addEmailAddresses:(id)addresses;
- (void)addNames:(id)names;
- (void)addPhoneNumbers:(id)numbers;
- (void)addSocialMediaHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBPersonEntity

- (void)addNames:(id)names
{
  namesCopy = names;
  names = self->_names;
  v8 = namesCopy;
  if (!names)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_names;
    self->_names = v6;

    namesCopy = v8;
    names = self->_names;
  }

  [(NSMutableArray *)names addObject:namesCopy];
}

- (void)addEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  emailAddresses = self->_emailAddresses;
  v8 = addressesCopy;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    addressesCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:addressesCopy];
}

- (void)addAddresses:(id)addresses
{
  addressesCopy = addresses;
  addresses = self->_addresses;
  v8 = addressesCopy;
  if (!addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_addresses;
    self->_addresses = v6;

    addressesCopy = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:addressesCopy];
}

- (void)addPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  phoneNumbers = self->_phoneNumbers;
  v8 = numbersCopy;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    numbersCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:numbersCopy];
}

- (void)addSocialMediaHandles:(id)handles
{
  handlesCopy = handles;
  socialMediaHandles = self->_socialMediaHandles;
  v8 = handlesCopy;
  if (!socialMediaHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_socialMediaHandles;
    self->_socialMediaHandles = v6;

    handlesCopy = v8;
    socialMediaHandles = self->_socialMediaHandles;
  }

  [(NSMutableArray *)socialMediaHandles addObject:handlesCopy];
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = self->_attributes;
  v8 = attributesCopy;
  if (!attributes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attributes;
    self->_attributes = v6;

    attributesCopy = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:attributesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPersonEntity;
  v4 = [(BMPBPersonEntity *)&v8 description];
  dictionaryRepresentation = [(BMPBPersonEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_names count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_names, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = self->_names;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"names"];
  }

  customId = self->_customId;
  if (customId)
  {
    [dictionary setObject:customId forKey:@"customId"];
  }

  contactId = self->_contactId;
  if (contactId)
  {
    [dictionary setObject:contactId forKey:@"contactId"];
  }

  emailAddresses = self->_emailAddresses;
  if (emailAddresses)
  {
    [dictionary setObject:emailAddresses forKey:@"emailAddresses"];
  }

  addresses = self->_addresses;
  if (addresses)
  {
    [dictionary setObject:addresses forKey:@"addresses"];
  }

  phoneNumbers = self->_phoneNumbers;
  if (phoneNumbers)
  {
    [dictionary setObject:phoneNumbers forKey:@"phoneNumbers"];
  }

  if ([(NSMutableArray *)self->_socialMediaHandles count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_socialMediaHandles, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = self->_socialMediaHandles;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"socialMediaHandles"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = self->_attributes;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation3 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:dictionaryRepresentation3];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"attributes"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v65 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = self->_names;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v7);
  }

  if (self->_customId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactId)
  {
    PBDataWriterWriteStringField();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_emailAddresses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = self->_addresses;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      v19 = 0;
      do
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v17);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = self->_phoneNumbers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      v24 = 0;
      do
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = self->_socialMediaHandles;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = self->_attributes;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
    }

    while (v32);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(BMPBPersonEntity *)self namesCount])
  {
    [toCopy clearNames];
    namesCount = [(BMPBPersonEntity *)self namesCount];
    if (namesCount)
    {
      v5 = namesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBPersonEntity *)self namesAtIndex:i];
        [toCopy addNames:v7];
      }
    }
  }

  if (self->_customId)
  {
    [toCopy setCustomId:?];
  }

  if (self->_contactId)
  {
    [toCopy setContactId:?];
  }

  if ([(BMPBPersonEntity *)self emailAddressesCount])
  {
    [toCopy clearEmailAddresses];
    emailAddressesCount = [(BMPBPersonEntity *)self emailAddressesCount];
    if (emailAddressesCount)
    {
      v9 = emailAddressesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBPersonEntity *)self emailAddressesAtIndex:j];
        [toCopy addEmailAddresses:v11];
      }
    }
  }

  if ([(BMPBPersonEntity *)self addressesCount])
  {
    [toCopy clearAddresses];
    addressesCount = [(BMPBPersonEntity *)self addressesCount];
    if (addressesCount)
    {
      v13 = addressesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(BMPBPersonEntity *)self addressesAtIndex:k];
        [toCopy addAddresses:v15];
      }
    }
  }

  if ([(BMPBPersonEntity *)self phoneNumbersCount])
  {
    [toCopy clearPhoneNumbers];
    phoneNumbersCount = [(BMPBPersonEntity *)self phoneNumbersCount];
    if (phoneNumbersCount)
    {
      v17 = phoneNumbersCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(BMPBPersonEntity *)self phoneNumbersAtIndex:m];
        [toCopy addPhoneNumbers:v19];
      }
    }
  }

  if ([(BMPBPersonEntity *)self socialMediaHandlesCount])
  {
    [toCopy clearSocialMediaHandles];
    socialMediaHandlesCount = [(BMPBPersonEntity *)self socialMediaHandlesCount];
    if (socialMediaHandlesCount)
    {
      v21 = socialMediaHandlesCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(BMPBPersonEntity *)self socialMediaHandlesAtIndex:n];
        [toCopy addSocialMediaHandles:v23];
      }
    }
  }

  if ([(BMPBPersonEntity *)self attributesCount])
  {
    [toCopy clearAttributes];
    attributesCount = [(BMPBPersonEntity *)self attributesCount];
    if (attributesCount)
    {
      v25 = attributesCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(BMPBPersonEntity *)self attributesAtIndex:ii];
        [toCopy addAttributes:v27];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = self->_names;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      v10 = 0;
      do
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v67 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addNames:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_customId copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_contactId copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v16 = self->_emailAddresses;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      v20 = 0;
      do
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v63 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addEmailAddresses:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v18);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = self->_addresses;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v60;
    do
    {
      v26 = 0;
      do
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v59 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addAddresses:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v24);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = self->_phoneNumbers;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      v32 = 0;
      do
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v55 + 1) + 8 * v32) copyWithZone:zone];
        [v5 addPhoneNumbers:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v30);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = self->_socialMediaHandles;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v51 objects:v72 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v52;
    do
    {
      v38 = 0;
      do
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v51 + 1) + 8 * v38) copyWithZone:zone];
        [v5 addSocialMediaHandles:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v51 objects:v72 count:16];
    }

    while (v36);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v40 = self->_attributes;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v71 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v48;
    do
    {
      v44 = 0;
      do
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v47 + 1) + 8 * v44) copyWithZone:{zone, v47}];
        [v5 addAttributes:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v71 count:16];
    }

    while (v42);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((names = self->_names, !(names | equalCopy[6])) || -[NSMutableArray isEqual:](names, "isEqual:")) && ((customId = self->_customId, !(customId | equalCopy[4])) || -[NSString isEqual:](customId, "isEqual:")) && ((contactId = self->_contactId, !(contactId | equalCopy[3])) || -[NSString isEqual:](contactId, "isEqual:")) && ((emailAddresses = self->_emailAddresses, !(emailAddresses | equalCopy[5])) || -[NSMutableArray isEqual:](emailAddresses, "isEqual:")) && ((addresses = self->_addresses, !(addresses | equalCopy[1])) || -[NSMutableArray isEqual:](addresses, "isEqual:")) && ((phoneNumbers = self->_phoneNumbers, !(phoneNumbers | equalCopy[7])) || -[NSMutableArray isEqual:](phoneNumbers, "isEqual:")) && ((socialMediaHandles = self->_socialMediaHandles, !(socialMediaHandles | equalCopy[8])) || -[NSMutableArray isEqual:](socialMediaHandles, "isEqual:")))
  {
    attributes = self->_attributes;
    if (attributes | equalCopy[2])
    {
      v13 = [(NSMutableArray *)attributes isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_names hash];
  v4 = [(NSString *)self->_customId hash]^ v3;
  v5 = [(NSString *)self->_contactId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_emailAddresses hash];
  v7 = [(NSMutableArray *)self->_addresses hash];
  v8 = v7 ^ [(NSMutableArray *)self->_phoneNumbers hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_socialMediaHandles hash];
  return v9 ^ [(NSMutableArray *)self->_attributes hash];
}

- (void)mergeFrom:(id)from
{
  v65 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = fromCopy[6];
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BMPBPersonEntity *)self addNames:*(*(&v55 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v7);
  }

  if (fromCopy[4])
  {
    [(BMPBPersonEntity *)self setCustomId:?];
  }

  if (fromCopy[3])
  {
    [(BMPBPersonEntity *)self setContactId:?];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = fromCopy[5];
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(BMPBPersonEntity *)self addEmailAddresses:*(*(&v51 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = fromCopy[1];
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(BMPBPersonEntity *)self addAddresses:*(*(&v47 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v17);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = fromCopy[7];
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(BMPBPersonEntity *)self addPhoneNumbers:*(*(&v43 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = fromCopy[8];
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(BMPBPersonEntity *)self addSocialMediaHandles:*(*(&v39 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = fromCopy[2];
  v31 = [v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(BMPBPersonEntity *)self addAttributes:*(*(&v35 + 1) + 8 * ii), v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
    }

    while (v32);
  }
}

@end