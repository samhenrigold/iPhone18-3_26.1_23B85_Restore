@interface TMLUITraitCollection
+ (id)defaultCollection;
+ (id)traitEnvironment:(id)environment willTransitionToTraitCollection:(id)collection fromPreviousTraitCollection:(id)traitCollection;
- (TMLUITraitCollection)init;
- (UITraitCollection)traitCollection;
- (void)applyToTraitEnvironment:(id)environment;
- (void)setTMLValue:(id)value forKeyPath:(id)path;
- (void)tmlDispose;
@end

@implementation TMLUITraitCollection

- (TMLUITraitCollection)init
{
  v5.receiver = self;
  v5.super_class = TMLUITraitCollection;
  v2 = [(TMLUITraitCollection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_horizontalSizeClass = 0;
    v2->_verticalSizeClass = 0;
    *&v2->_userInterfaceStyle = xmmword_26F208A80;
    v2->_forceTouchCapability = 0;
    objc_storeStrong(&v2->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
  }

  return v3;
}

- (void)tmlDispose
{
  subviewsValue = self->_subviewsValue;
  self->_subviewsValue = 0;

  constraintsValue = self->_constraintsValue;
  self->_constraintsValue = 0;

  properties = self->_properties;
  self->_properties = 0;

  propertyKeys = self->_propertyKeys;
  self->_propertyKeys = 0;

  v7.receiver = self;
  v7.super_class = TMLUITraitCollection;
  [&v7 tmlDispose];
}

+ (id)defaultCollection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1B88DC;
  block[3] = &unk_279DC5818;
  block[4] = self;
  if (qword_2806D91C0 != -1)
  {
    dispatch_once(&qword_2806D91C0, block);
  }

  v2 = qword_2806D91B8;

  return v2;
}

- (void)setTMLValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  if ([pathCopy isEqualToString:@"subviews"])
  {
    p_subviewsValue = &self->_subviewsValue;
LABEL_5:
    objc_storeStrong(p_subviewsValue, value);
    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"constraints"])
  {
    p_subviewsValue = &self->_constraintsValue;
    goto LABEL_5;
  }

  if ([pathCopy hasPrefix:@"view."])
  {
    if (!valueCopy)
    {
      valueCopy = [MEMORY[0x277CBEB68] null];
    }

    properties = self->_properties;
    if (!properties)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
      v12 = self->_properties;
      self->_properties = v11;

      v13 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:8];
      propertyKeys = self->_propertyKeys;
      self->_propertyKeys = v13;

      properties = self->_properties;
    }

    [(NSMutableDictionary *)properties setObject:valueCopy forKey:pathCopy];
    [(NSMutableOrderedSet *)self->_propertyKeys addObject:pathCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TMLUITraitCollection;
    [&v15 setTMLValue:valueCopy forKeyPath:pathCopy];
  }

LABEL_6:
}

- (UITraitCollection)traitCollection
{
  traitCollection = self->_traitCollection;
  if (traitCollection)
  {
    goto LABEL_19;
  }

  self->_specificity = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  if (self->_horizontalSizeClass)
  {
    v5 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:?];
    [v4 addObject:v5];

    ++self->_specificity;
  }

  if (self->_verticalSizeClass)
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithVerticalSizeClass:?];
    [v4 addObject:v6];

    ++self->_specificity;
  }

  if (self->_userInterfaceStyle)
  {
    v7 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
    [v4 addObject:v7];

    ++self->_specificity;
  }

  if (self->_userInterfaceIdiom != -1)
  {
    v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:?];
    [v4 addObject:v8];

    ++self->_specificity;
  }

  if (self->_forceTouchCapability)
  {
    v9 = [MEMORY[0x277D75C80] traitCollectionWithForceTouchCapability:?];
    [v4 addObject:v9];

    ++self->_specificity;
  }

  if (self->_preferredContentSizeCategories)
  {
    goto LABEL_15;
  }

  if (self->_preferredContentSizeCategory != *MEMORY[0x277D76860])
  {
    v10 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:?];
    [v4 addObject:v10];

LABEL_15:
    ++self->_specificity;
  }

  if (self->_displayScale != 0.0)
  {
    v11 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:?];
    [v4 addObject:v11];

    ++self->_specificity;
  }

  v12 = [MEMORY[0x277D75C80] traitCollectionWithTraitsFromCollections:v4];
  v13 = self->_traitCollection;
  self->_traitCollection = v12;

  traitCollection = self->_traitCollection;
LABEL_19:

  return traitCollection;
}

- (void)applyToTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [environmentCopy view];
LABEL_5:
    v6 = view;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = environmentCopy;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  subviewsValue = self->_subviewsValue;
  if (subviewsValue)
  {
    [v6 setTMLValue:subviewsValue forKey:@"subviews"];
  }

  constraintsValue = self->_constraintsValue;
  if (constraintsValue)
  {
    [v6 setTMLValue:constraintsValue forKey:@"constraints"];
  }

  propertyKeys = self->_propertyKeys;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F1B8DAC;
  v10[3] = &unk_279DC6618;
  v10[4] = self;
  [(NSMutableOrderedSet *)propertyKeys enumerateObjectsUsingBlock:v10];
}

+ (id)traitEnvironment:(id)environment willTransitionToTraitCollection:(id)collection fromPreviousTraitCollection:(id)traitCollection
{
  environmentCopy = environment;
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  tmlChildren = [environmentCopy tmlChildren];
  if (![tmlChildren count])
  {
    v17 = 0;
    goto LABEL_21;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_26F1B9118;
  v29[3] = &unk_279DC6690;
  v12 = collectionCopy;
  v30 = v12;
  v13 = [tmlChildren indexesOfObjectsPassingTest:v29];
  if ([v13 count] < 2)
  {
    if ([v13 count] == 1)
    {
      lastObject = [tmlChildren objectAtIndex:{objc_msgSend(v13, "lastIndex")}];
    }

    else
    {
      lastObject = 0;
    }
  }

  else
  {
    v14 = [tmlChildren objectsAtIndexes:v13];
    v15 = [v14 sortedArrayUsingComparator:&unk_287F2BE70];
    lastObject = [v15 lastObject];
  }

  v18 = objc_getAssociatedObject(environmentCopy, &unk_26F208A90);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (traitCollectionCopy && (isKindOfClass & 1) != 0)
  {
    if (v18 == lastObject)
    {
      preferredContentSizeCategory = [traitCollectionCopy preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v12 preferredContentSizeCategory];

      if (preferredContentSizeCategory == preferredContentSizeCategory2)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v18 == lastObject)
  {
    traitCollection = [environmentCopy traitCollection];
    [traitCollection preferredContentSizeCategory];
    v23 = v28 = self;
    preferredContentSizeCategory3 = [v12 preferredContentSizeCategory];

    v25 = v23 == preferredContentSizeCategory3;
    self = v28;
    if (v25)
    {
      goto LABEL_18;
    }
  }

  [v18 emitTMLSignal:@"leave" withArguments:0];
  objc_setAssociatedObject(environmentCopy, &unk_26F208A90, lastObject, 1);
  [lastObject emitTMLSignal:@"willEnter" withArguments:0];
  if (!v18 || lastObject)
  {
    [lastObject applyToTraitEnvironment:environmentCopy];
    v17 = lastObject;
    goto LABEL_20;
  }

  defaultCollection = [self defaultCollection];
  [defaultCollection applyToTraitEnvironment:environmentCopy];

LABEL_18:
  v17 = 0;
LABEL_20:

LABEL_21:

  return v17;
}

@end