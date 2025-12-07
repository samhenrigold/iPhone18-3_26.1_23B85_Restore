@interface BCSBusinessCallerItem
+ (id)itemFromStatement:(sqlite3_stmt *)statement;
- (BCSBusinessCallerItem)initWithCoder:(id)coder;
- (BCSBusinessCallerItem)initWithParquetMessage:(id)message;
- (BCSBusinessCallerItem)initWithPhoneNumber:(id)number name:(id)name department:(id)department logoURL:(id)l logo:(id)logo logoFormat:(id)format verified:(BOOL)verified;
- (BCSBusinessCallerItem)initWithPhoneNumber:(id)number phoneHash:(int64_t)hash localizedNames:(id)names localizedDepartments:(id)departments logoURL:(id)l logo:(id)logo logoFormat:(id)format verified:(BOOL)self0;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSDictionary)localizedDepartments;
- (NSDictionary)localizedNames;
- (NSString)department;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)setPhoneNumber:(id)number;
- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier;
@end

@implementation BCSBusinessCallerItem

- (BCSBusinessCallerItem)initWithParquetMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  names = [messageCopy names];
  v6 = [v4 initWithCapacity:{objc_msgSend(names, "count")}];

  v7 = messageCopy;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  intents = [messageCopy intents];
  v10 = [v8 initWithCapacity:{objc_msgSend(intents, "count")}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  names2 = [messageCopy names];
  v12 = [names2 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(names2);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        if ([v17 isDefault])
        {
          text = [v17 text];

          v14 = text;
        }

        text2 = [v17 text];
        locale = [v17 locale];
        [v6 setObject:text2 forKeyedSubscript:locale];
      }

      v13 = [names2 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  names3 = [v7 names];
  v22 = [names3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (!v22)
  {
    v23 = 0;
    selfCopy2 = self;
    goto LABEL_25;
  }

  v38 = v7;
  v23 = 0;
  v24 = *v41;
  do
  {
    for (j = 0; j != v22; j = (j + 1))
    {
      if (*v41 != v24)
      {
        objc_enumerationMutation(names3);
      }

      v26 = *(*(&v40 + 1) + 8 * j);
      if ([v26 isDefault])
      {
        text3 = [v26 text];

        v23 = text3;
      }

      text4 = [v26 text];
      locale2 = [v26 locale];
      [v10 setObject:text4 forKeyedSubscript:locale2];
    }

    v22 = [names3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  }

  while (v22);

  if (!v14)
  {
    v7 = v38;
    goto LABEL_27;
  }

  v7 = v38;
  if (!v23)
  {
LABEL_27:
    selfCopy2 = self;
    goto LABEL_28;
  }

  names3 = [v38 phoneNumber];
  phoneHash = [v38 phoneHash];
  names4 = [v38 names];
  intents2 = [v38 intents];
  logo = [v38 logo];
  logoFormat = [v38 logoFormat];
  LOBYTE(v35) = [v38 isVerified];
  v22 = [(BCSBusinessCallerItem *)self initWithPhoneNumber:names3 phoneHash:phoneHash localizedNames:names4 localizedDepartments:intents2 logoURL:0 logo:logo logoFormat:logoFormat verified:v35];

  selfCopy2 = v22;
LABEL_25:

LABEL_28:
  return v22;
}

+ (id)itemFromStatement:(sqlite3_stmt *)statement
{
  sqlite3_column_int64(statement, 0);
  v4 = sqlite3_column_text(statement, 1);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_blob(statement, 2);
  v7 = sqlite3_column_bytes(statement, 2);
  if (v6)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, 3)}];
  if (v6)
  {
    v9 = [[BCSCallerIdParquetMessage alloc] initWithData:v6];
    if (v9)
    {
      v10 = [[BCSBusinessCallerItem alloc] initWithParquetMessage:v9];
      v11 = v10;
      if (v10)
      {
        [(BCSItem *)v10 setExpirationDate:v8];
        v12 = v11;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateStatementValues:(sqlite3_stmt *)values withItemIdentifier:(id)identifier
{
  sqlite3_bind_int64(values, 1, [identifier truncatedHash]);
  message = [(BCSBusinessCallerItem *)self message];
  phoneNumber = [message phoneNumber];
  sqlite3_bind_text(values, 2, [phoneNumber UTF8String], -1, 0);

  message2 = [(BCSBusinessCallerItem *)self message];
  data = [message2 data];

  v9 = data;
  sqlite3_bind_blob(values, 3, [data bytes], objc_msgSend(data, "length"), 0);
  expirationDate = [(BCSItem *)self expirationDate];
  [expirationDate timeIntervalSince1970];
  sqlite3_bind_double(values, 4, v11);
}

- (BCSBusinessCallerItem)initWithPhoneNumber:(id)number name:(id)name department:(id)department logoURL:(id)l logo:(id)logo logoFormat:(id)format verified:(BOOL)verified
{
  v31[1] = *MEMORY[0x277D85DE8];
  logoCopy = logo;
  lCopy = l;
  departmentCopy = department;
  nameCopy = name;
  numberCopy = number;
  v17 = [[BCSBusinessCallerItemIdentifier alloc] initWithPhoneNumber:numberCopy];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  v20 = objc_alloc_init(BCSCallerIdLocalizedString);
  [(BCSCallerIdLocalizedString *)v20 setLocale:languageCode];
  [(BCSCallerIdLocalizedString *)v20 setText:nameCopy];

  [(BCSCallerIdLocalizedString *)v20 setIsDefault:1];
  v21 = objc_alloc_init(BCSCallerIdLocalizedString);
  [(BCSCallerIdLocalizedString *)v21 setLocale:languageCode];
  [(BCSCallerIdLocalizedString *)v21 setText:departmentCopy];

  [(BCSCallerIdLocalizedString *)v21 setIsDefault:1];
  truncatedHash = [(BCSBusinessCallerItemIdentifier *)v17 truncatedHash];
  v31[0] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v30 = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  LOBYTE(v27) = verified;
  v25 = [(BCSBusinessCallerItem *)self initWithPhoneNumber:numberCopy phoneHash:truncatedHash localizedNames:v23 localizedDepartments:v24 logoURL:lCopy logo:logoCopy logoFormat:@"heic" verified:v27];

  return v25;
}

- (BCSBusinessCallerItem)initWithPhoneNumber:(id)number phoneHash:(int64_t)hash localizedNames:(id)names localizedDepartments:(id)departments logoURL:(id)l logo:(id)logo logoFormat:(id)format verified:(BOOL)self0
{
  v54 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  namesCopy = names;
  departmentsCopy = departments;
  lCopy = l;
  logoCopy = logo;
  formatCopy = format;
  v51.receiver = self;
  v51.super_class = BCSBusinessCallerItem;
  v22 = [(BCSItem *)&v51 init];
  if (v22)
  {
    v23 = objc_alloc_init(BCSCallerIdParquetMessage);
    message = v22->_message;
    v22->_message = v23;

    [(BCSCallerIdParquetMessage *)v22->_message setPhoneHash:hash];
    v42 = numberCopy;
    [(BCSCallerIdParquetMessage *)v22->_message setPhoneNumber:numberCopy];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = namesCopy;
    v25 = namesCopy;
    v26 = [v25 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v48;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(BCSCallerIdParquetMessage *)v22->_message addName:*(*(&v47 + 1) + 8 * i)];
        }

        v27 = [v25 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v27);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = departmentsCopy;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(BCSCallerIdParquetMessage *)v22->_message addIntent:*(*(&v43 + 1) + 8 * j)];
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v32);
    }

    [(BCSCallerIdParquetMessage *)v22->_message setLogo:logoCopy];
    [(BCSCallerIdParquetMessage *)v22->_message setIsVerified:verified];
    if (lCopy)
    {
      v35 = [lCopy copy];
      logoURL = v22->_logoURL;
      v22->_logoURL = v35;
    }

    if (formatCopy)
    {
      v37 = formatCopy;
    }

    else
    {
      v37 = @"heic";
    }

    [(BCSCallerIdParquetMessage *)v22->_message setLogoFormat:v37];
    v38 = [[BCSBusinessCallerItemIdentifier alloc] initWithTruncatedHash:hash];
    identifier = v22->_identifier;
    v22->_identifier = v38;

    namesCopy = v41;
    numberCopy = v42;
  }

  return v22;
}

- (void)setPhoneNumber:(id)number
{
  v4 = [number copy];
  [(BCSCallerIdParquetMessage *)self->_message setPhoneNumber:v4];
}

- (NSString)name
{
  names = [(BCSCallerIdParquetMessage *)self->_message names];
  defaultLocalizedStringsValue = [names defaultLocalizedStringsValue];

  return defaultLocalizedStringsValue;
}

- (NSString)department
{
  intents = [(BCSCallerIdParquetMessage *)self->_message intents];
  defaultLocalizedStringsValue = [intents defaultLocalizedStringsValue];

  return defaultLocalizedStringsValue;
}

- (NSDictionary)localizedNames
{
  names = [(BCSCallerIdParquetMessage *)self->_message names];
  localizedStringsToDictionary = [names localizedStringsToDictionary];

  return localizedStringsToDictionary;
}

- (NSDictionary)localizedDepartments
{
  intents = [(BCSCallerIdParquetMessage *)self->_message intents];
  localizedStringsToDictionary = [intents localizedStringsToDictionary];

  return localizedStringsToDictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = BCSBusinessCallerItem;
  v4 = [(BCSBusinessCallerItem *)&v13 description];
  phoneNumber = [(BCSBusinessCallerItem *)self phoneNumber];
  name = [(BCSBusinessCallerItem *)self name];
  department = [(BCSBusinessCallerItem *)self department];
  logoURL = [(BCSBusinessCallerItem *)self logoURL];
  absoluteString = [logoURL absoluteString];
  identifier = [(BCSBusinessCallerItem *)self identifier];
  v11 = [v3 stringWithFormat:@"%@ - phone:%@ name:%@ department:%@ logoURL:%@ (%@)", v4, phoneNumber, name, department, absoluteString, identifier];

  return v11;
}

- (id)itemIdentifier
{
  identifier = [(BCSBusinessCallerItem *)self identifier];
  itemIdentifier = [identifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  identifier = [(BCSBusinessCallerItem *)self identifier];
  truncatedHash = [identifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  identifier = [(BCSBusinessCallerItem *)self identifier];
  type = [identifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  identifier = [(BCSBusinessCallerItem *)self identifier];
  v6 = [identifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    message = [(BCSBusinessCallerItem *)self message];
    v7 = [message copyWithZone:zone];
    v8 = v5[4];
    v5[4] = v7;

    logoURL = [(BCSBusinessCallerItem *)self logoURL];
    v10 = [logoURL copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    identifier = [(BCSBusinessCallerItem *)self identifier];
    v13 = [identifier copyWithZone:zone];
    v14 = v5[3];
    v5[3] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(BCSBusinessCallerItem *)self message];
  data = [message data];
  [coderCopy encodeObject:data forKey:@"Message"];

  logoURL = [(BCSBusinessCallerItem *)self logoURL];
  [coderCopy encodeObject:logoURL forKey:@"LogoURL"];
}

- (BCSBusinessCallerItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BCSBusinessCallerItem;
  v5 = [(BCSItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
    v7 = [[BCSCallerIdParquetMessage alloc] initWithData:v6];
    if (!v7)
    {

      v11 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    v5 = [(BCSBusinessCallerItem *)v5 initWithParquetMessage:v7];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v9;
  }

  v5 = v5;
  v11 = v5;
LABEL_6:

  return v11;
}

@end