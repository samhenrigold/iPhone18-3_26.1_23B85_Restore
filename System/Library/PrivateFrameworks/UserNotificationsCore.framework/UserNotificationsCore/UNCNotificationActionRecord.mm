@interface UNCNotificationActionRecord
- (BOOL)isEqual:(id)equal;
- (UNCNotificationActionRecord)initWithCoder:(id)coder;
- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCNotificationActionRecord

- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v28.receiver = self;
  v28.super_class = UNCNotificationActionRecord;
  v5 = [(UNCNotificationActionRecord *)&v28 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"ActionType"];
    [(UNCNotificationActionRecord *)v5 setActionType:v6];

    v7 = [representationCopy objectForKey:@"Identifier"];
    [(UNCNotificationActionRecord *)v5 setIdentifier:v7];

    v8 = [representationCopy objectForKey:@"AuthenticationRequired"];
    -[UNCNotificationActionRecord setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v8 BOOLValue]);

    v9 = [representationCopy objectForKey:@"Destructive"];
    -[UNCNotificationActionRecord setDestructive:](v5, "setDestructive:", [v9 BOOLValue]);

    v10 = [representationCopy objectForKey:@"Foreground"];
    -[UNCNotificationActionRecord setForeground:](v5, "setForeground:", [v10 BOOLValue]);

    v11 = [representationCopy objectForKey:@"HasSystemIcon"];
    -[UNCNotificationActionRecord setHasSystemIcon:](v5, "setHasSystemIcon:", [v11 BOOLValue]);

    v12 = [representationCopy objectForKey:@"IconImageName"];
    [(UNCNotificationActionRecord *)v5 setIconImageName:v12];

    v13 = [representationCopy objectForKey:@"ShouldPreventNotificationDismiss"];
    -[UNCNotificationActionRecord setShouldPreventNotificationDismiss:](v5, "setShouldPreventNotificationDismiss:", [v13 BOOLValue]);

    v14 = [representationCopy objectForKey:@"TextInputButtonTitle"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitle:v14];

    v15 = [representationCopy objectForKey:@"TextInputButtonTitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationArguments:v15];

    v16 = [representationCopy objectForKey:@"TextInputButtonTitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationKey:v16];

    v17 = [representationCopy objectForKey:@"TextInputPlaceholder"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholder:v17];

    v18 = [representationCopy objectForKey:@"TextInputPlaceholderLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationArguments:v18];

    v19 = [representationCopy objectForKey:@"TextInputPlaceholderLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationKey:v19];

    v20 = [representationCopy objectForKey:@"Title"];
    [(UNCNotificationActionRecord *)v5 setTitle:v20];

    v21 = [representationCopy objectForKey:@"TitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationArguments:v21];

    v22 = [representationCopy objectForKey:@"TitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationKey:v22];

    v23 = [representationCopy objectForKey:@"URL"];

    if (v23)
    {
      v24 = MEMORY[0x1E695DFF8];
      v25 = [representationCopy objectForKey:@"URL"];
      v26 = [v24 URLWithString:v25];
      [(UNCNotificationActionRecord *)v5 setUrl:v26];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actionType = [(UNCNotificationActionRecord *)self actionType];
  [dictionary unc_safeSetObject:actionType forKey:@"ActionType"];

  identifier = [(UNCNotificationActionRecord *)self identifier];
  [dictionary unc_safeSetObject:identifier forKey:@"Identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  [dictionary unc_safeSetObject:v6 forKey:@"HasSystemIcon"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  [dictionary unc_safeSetObject:v7 forKey:@"AuthenticationRequired"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  [dictionary unc_safeSetObject:v8 forKey:@"Destructive"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  [dictionary unc_safeSetObject:v9 forKey:@"Foreground"];

  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  [dictionary unc_safeSetObject:iconImageName forKey:@"IconImageName"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  [dictionary unc_safeSetObject:v11 forKey:@"ShouldPreventNotificationDismiss"];

  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  [dictionary unc_safeSetObject:textInputButtonTitle forKey:@"TextInputButtonTitle"];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  [dictionary unc_safeSetObject:textInputButtonTitleLocalizationArguments forKey:@"TextInputButtonTitleLocalizationArguments"];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  [dictionary unc_safeSetObject:textInputButtonTitleLocalizationKey forKey:@"TextInputButtonTitleLocalizationKey"];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  [dictionary unc_safeSetObject:textInputPlaceholder forKey:@"TextInputPlaceholder"];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  [dictionary unc_safeSetObject:textInputPlaceholderLocalizationArguments forKey:@"TextInputPlaceholderLocalizationArguments"];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  [dictionary unc_safeSetObject:textInputPlaceholderLocalizationKey forKey:@"TextInputPlaceholderLocalizationKey"];

  title = [(UNCNotificationActionRecord *)self title];
  [dictionary unc_safeSetObject:title forKey:@"Title"];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  [dictionary unc_safeSetObject:titleLocalizationArguments forKey:@"TitleLocalizationArguments"];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  [dictionary unc_safeSetObject:titleLocalizationKey forKey:@"TitleLocalizationKey"];

  v21 = [(UNCNotificationActionRecord *)self url];
  absoluteString = [v21 absoluteString];
  [dictionary unc_safeSetObject:absoluteString forKey:@"URL"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(UNCNotificationActionRecord *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"Identifier"];

  actionType = [(UNCNotificationActionRecord *)self actionType];
  v7 = [v3 appendObject:actionType withName:@"ActionType"];

  v8 = [v3 appendBool:-[UNCNotificationActionRecord hasSystemIcon](self withName:{"hasSystemIcon"), @"HasSystemIcon"}];
  v9 = [v3 appendBool:-[UNCNotificationActionRecord isAuthenticationRequired](self withName:{"isAuthenticationRequired"), @"AuthenticationRequired"}];
  v10 = [v3 appendBool:-[UNCNotificationActionRecord isDestructive](self withName:{"isDestructive"), @"Destructive"}];
  v11 = [v3 appendBool:-[UNCNotificationActionRecord isForeground](self withName:{"isForeground"), @"Foreground"}];
  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  [v3 appendString:iconImageName withName:@"IconImageName"];

  v13 = [v3 appendBool:-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self withName:{"shouldPreventNotificationDismiss"), @"ShouldPreventNotificationDismiss"}];
  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v15 = [v3 appendObject:textInputButtonTitle withName:@"textInputButtonTitle"];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v17 = [v3 appendObject:textInputButtonTitleLocalizationArguments withName:@"textInputButtonTitleLocalizationArguments"];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v19 = [v3 appendObject:textInputButtonTitleLocalizationKey withName:@"textInputButtonTitleLocalizationKey"];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v21 = [v3 appendObject:textInputPlaceholder withName:@"textInputPlaceholder"];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v23 = [v3 appendObject:textInputPlaceholderLocalizationArguments withName:@"textInputPlaceholderLocalizationArguments"];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v25 = [v3 appendObject:textInputPlaceholderLocalizationKey withName:@"textInputPlaceholderLocalizationKey"];

  title = [(UNCNotificationActionRecord *)self title];
  v27 = [v3 appendObject:title withName:@"Title"];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v29 = [v3 appendObject:titleLocalizationArguments withName:@"TitleLocalizationArguments"];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v31 = [v3 appendObject:titleLocalizationKey withName:@"TitleLocalizationKey"];

  v32 = [(UNCNotificationActionRecord *)self url];
  v33 = [v3 appendObject:v32 withName:@"URL"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy
    && (v5 = objc_opt_class(), v5 == objc_opt_class())
    && (-[UNCNotificationActionRecord identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), [equalCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = UNEqualObjects(), v7, v6, v8)
    && (-[UNCNotificationActionRecord actionType](self, "actionType"), v9 = objc_claimAutoreleasedReturnValue(), [equalCopy actionType], v10 = objc_claimAutoreleasedReturnValue(), v11 = UNEqualObjects(), v10, v9, v11)
    && (v12 = -[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired"), v12 == [equalCopy isAuthenticationRequired])
    && (v13 = -[UNCNotificationActionRecord isDestructive](self, "isDestructive"), v13 == [equalCopy isDestructive])
    && (v14 = -[UNCNotificationActionRecord isForeground](self, "isForeground"), v14 == [equalCopy isForeground])
    && (v15 = -[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon"), v15 == [equalCopy hasSystemIcon])
    && (v16 = -[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss"), v16 == [equalCopy shouldPreventNotificationDismiss])
    && (-[UNCNotificationActionRecord iconImageName](self, "iconImageName"), v17 = objc_claimAutoreleasedReturnValue(), [equalCopy iconImageName], v18 = objc_claimAutoreleasedReturnValue(), v19 = UNEqualObjects(), v18, v17, v19)
    && (-[UNCNotificationActionRecord textInputButtonTitle](self, "textInputButtonTitle"), v20 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputButtonTitle], v21 = objc_claimAutoreleasedReturnValue(), v22 = UNEqualObjects(), v21, v20, v22)
    && (-[UNCNotificationActionRecord textInputButtonTitleLocalizationArguments](self, "textInputButtonTitleLocalizationArguments"), v23 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputButtonTitleLocalizationArguments], v24 = objc_claimAutoreleasedReturnValue(), v25 = UNEqualObjects(), v24, v23, v25)
    && (-[UNCNotificationActionRecord textInputButtonTitleLocalizationKey](self, "textInputButtonTitleLocalizationKey"), v26 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputButtonTitleLocalizationKey], v27 = objc_claimAutoreleasedReturnValue(), v28 = UNEqualObjects(), v27, v26, v28)
    && (-[UNCNotificationActionRecord textInputPlaceholder](self, "textInputPlaceholder"), v29 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputPlaceholder], v30 = objc_claimAutoreleasedReturnValue(), v31 = UNEqualObjects(), v30, v29, v31)
    && (-[UNCNotificationActionRecord textInputPlaceholderLocalizationArguments](self, "textInputPlaceholderLocalizationArguments"), v32 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputPlaceholderLocalizationArguments], v33 = objc_claimAutoreleasedReturnValue(), v34 = UNEqualObjects(), v33, v32, v34)
    && (-[UNCNotificationActionRecord textInputPlaceholderLocalizationKey](self, "textInputPlaceholderLocalizationKey"), v35 = objc_claimAutoreleasedReturnValue(), [equalCopy textInputPlaceholderLocalizationKey], v36 = objc_claimAutoreleasedReturnValue(), v37 = UNEqualObjects(), v36, v35, v37)
    && (-[UNCNotificationActionRecord title](self, "title"), v38 = objc_claimAutoreleasedReturnValue(), [equalCopy title], v39 = objc_claimAutoreleasedReturnValue(), v40 = UNEqualObjects(), v39, v38, v40)
    && (-[UNCNotificationActionRecord titleLocalizationArguments](self, "titleLocalizationArguments"), v41 = objc_claimAutoreleasedReturnValue(), [equalCopy titleLocalizationArguments], v42 = objc_claimAutoreleasedReturnValue(), v43 = UNEqualObjects(), v42, v41, v43)
    && (-[UNCNotificationActionRecord titleLocalizationKey](self, "titleLocalizationKey"), v44 = objc_claimAutoreleasedReturnValue(), [equalCopy titleLocalizationKey], v45 = objc_claimAutoreleasedReturnValue(), v46 = UNEqualObjects(), v45, v44, v46))
  {
    v47 = [(UNCNotificationActionRecord *)self url];
    v48 = [equalCopy url];
    v49 = UNEqualObjects();
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  v5 = [builder appendBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  v6 = [builder appendBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  v7 = [builder appendBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  v8 = [builder appendBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  identifier = [(UNCNotificationActionRecord *)self identifier];
  v10 = [builder appendObject:identifier];

  actionType = [(UNCNotificationActionRecord *)self actionType];
  v12 = [builder appendObject:actionType];

  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  v14 = [builder appendObject:iconImageName];

  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v16 = [builder appendObject:textInputButtonTitle];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v18 = [builder appendObject:textInputButtonTitleLocalizationArguments];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v20 = [builder appendObject:textInputButtonTitleLocalizationKey];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v22 = [builder appendObject:textInputPlaceholder];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v24 = [builder appendObject:textInputPlaceholderLocalizationArguments];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v26 = [builder appendObject:textInputPlaceholderLocalizationKey];

  title = [(UNCNotificationActionRecord *)self title];
  v28 = [builder appendObject:title];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v30 = [builder appendObject:titleLocalizationArguments];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v32 = [builder appendObject:titleLocalizationKey];

  v33 = [(UNCNotificationActionRecord *)self url];
  v34 = [builder appendObject:v33];

  v35 = [builder hash];
  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNCNotificationActionRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNCNotificationActionRecord)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:7];
  v7 = [v4 setWithArray:{v6, v11, v12, v13, v14, v15, v16}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationActionRecord alloc] initWithDictionaryRepresentation:v8];
  return v9;
}

@end