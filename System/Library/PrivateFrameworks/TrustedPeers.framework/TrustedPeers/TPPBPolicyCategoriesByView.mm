@interface TPPBPolicyCategoriesByView
+ (id)TPPBPolicyCategoriesByViewWithView:(id)view categories:(id)categories;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCategories:(id)categories;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyCategoriesByView

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(TPPBPolicyCategoriesByView *)self setView:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
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

        [(TPPBPolicyCategoriesByView *)self addCategories:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((view = self->_view, !(view | equalCopy[2])) || -[NSString isEqual:](view, "isEqual:")))
  {
    categories = self->_categories;
    if (categories | equalCopy[1])
    {
      v7 = [(NSMutableArray *)categories isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_view copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_categories;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addCategories:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_view)
  {
    [toCopy setView:?];
  }

  if ([(TPPBPolicyCategoriesByView *)self categoriesCount])
  {
    [toCopy clearCategories];
    categoriesCount = [(TPPBPolicyCategoriesByView *)self categoriesCount];
    if (categoriesCount)
    {
      v5 = categoriesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(TPPBPolicyCategoriesByView *)self categoriesAtIndex:i];
        [toCopy addCategories:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_view)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_categories;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  view = self->_view;
  if (view)
  {
    [dictionary setObject:view forKey:@"view"];
  }

  categories = self->_categories;
  if (categories)
  {
    [v4 setObject:categories forKey:@"categories"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyCategoriesByView;
  v4 = [(TPPBPolicyCategoriesByView *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyCategoriesByView *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCategories:(id)categories
{
  categoriesCopy = categories;
  categories = self->_categories;
  v8 = categoriesCopy;
  if (!categories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categories;
    self->_categories = v6;

    categoriesCopy = v8;
    categories = self->_categories;
  }

  [(NSMutableArray *)categories addObject:categoriesCopy];
}

+ (id)TPPBPolicyCategoriesByViewWithView:(id)view categories:(id)categories
{
  categoriesCopy = categories;
  viewCopy = view;
  v7 = objc_alloc_init(TPPBPolicyCategoriesByView);
  [(TPPBPolicyCategoriesByView *)v7 setView:viewCopy];

  v8 = [categoriesCopy mutableCopy];
  [(TPPBPolicyCategoriesByView *)v7 setCategories:v8];

  return v7;
}

@end