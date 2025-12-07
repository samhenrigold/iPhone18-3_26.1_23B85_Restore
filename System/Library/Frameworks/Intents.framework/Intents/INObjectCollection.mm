@interface INObjectCollection
- (INObjectCollection)initWithCoder:(id)coder;
- (INObjectCollection)initWithItems:(NSArray *)items;
- (INObjectCollection)initWithSections:(NSArray *)sections;
- (NSArray)allItems;
- (id)_typedObjectCollectionWithCodableAttribute:(id)attribute;
- (id)_untypedObjectCollectionWithItemClass:(Class)class codableAttribute:(id)attribute error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INObjectCollection

- (id)_untypedObjectCollectionWithItemClass:(Class)class codableAttribute:(id)attribute error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  v7 = 0x1E695D000uLL;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  sections = [(INObjectCollection *)self sections];
  v10 = [v8 initWithCapacity:{objc_msgSend(sections, "count")}];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  sections2 = [(INObjectCollection *)self sections];
  v38 = [sections2 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v38)
  {
    v12 = *v49;
    v42 = sections2;
    v43 = v10;
    v36 = *v49;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(sections2);
        }

        v40 = v13;
        v14 = *(*(&v48 + 1) + 8 * v13);
        v15 = objc_alloc_init(*(v7 + 3952));
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v39 = v14;
        items = [v14 items];
        v17 = [items countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v45;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(items);
              }

              v21 = *(*(&v44 + 1) + 8 * i);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = MEMORY[0x1E696ABC0];
                v52 = *MEMORY[0x1E696A578];
                v30 = MEMORY[0x1E696AEC0];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                v33 = [v30 stringWithFormat:@"Unexpected class %@", v32];
                v53 = v33;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
                *error = [v29 errorWithDomain:@"_INObjectCollectionErrorDomain" code:1001 userInfo:v34];

                v28 = 0;
                v10 = v43;
                goto LABEL_20;
              }

              v22 = objc_alloc_init(INJSONEncoder);
              v23 = INObjectWithTypedObject(v21, attributeCopy);
              if (v23)
              {
                v24 = [(INJSONEncoder *)v22 encodeObject:v23 withCodableAttribute:attributeCopy];
                [v15 if_addObjectIfNonNil:v24];
              }
            }

            v18 = [items countByEnumeratingWithState:&v44 objects:v54 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v25 = [INObjectSection alloc];
        title = [v39 title];
        v27 = [(INObjectSection *)v25 initWithTitle:title items:v15];
        v10 = v43;
        [v43 addObject:v27];

        v13 = v40 + 1;
        sections2 = v42;
        v7 = 0x1E695D000;
        v12 = v36;
      }

      while (v40 + 1 != v38);
      v38 = [v42 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v38);
  }

  v28 = [[INObjectCollection alloc] initWithSections:v10];
  [(INObjectCollection *)v28 setUsesIndexedCollation:[(INObjectCollection *)selfCopy usesIndexedCollation]];
LABEL_20:

  return v28;
}

- (id)_typedObjectCollectionWithCodableAttribute:(id)attribute
{
  v37 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  sections = [(INObjectCollection *)self sections];
  v25 = [v5 initWithCapacity:{objc_msgSend(sections, "count")}];

  v7 = objc_alloc_init(INJSONDecoder);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [(INObjectCollection *)self sections];
  v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v24 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        items = [v9 items];
        v12 = [items countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(items);
              }

              v16 = [(INJSONDecoder *)v7 decodeWithCodableAttribute:attributeCopy from:*(*(&v27 + 1) + 8 * j)];
              [v10 if_addObjectIfNonNil:v16];
            }

            v13 = [items countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v17 = [INObjectSection alloc];
        title = [v9 title];
        v19 = [(INObjectSection *)v17 initWithTitle:title items:v10];
        [v25 addObject:v19];
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v26);
  }

  v20 = [[INObjectCollection alloc] initWithSections:v25];
  [(INObjectCollection *)v20 setUsesIndexedCollation:[(INObjectCollection *)selfCopy usesIndexedCollation]];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  sections = self->_sections;
  coderCopy = coder;
  [coderCopy encodeObject:sections forKey:@"sections"];
  [coderCopy encodeBool:self->_usesIndexedCollation forKey:@"usesIndexedCollation"];
}

- (INObjectCollection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sections"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [(INObjectCollection *)self initWithSections:v9];
  v11 = [coderCopy decodeBoolForKey:@"usesIndexedCollation"];

  [(INObjectCollection *)v10 setUsesIndexedCollation:v11];
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [INObjectCollection alloc];
  sections = [(INObjectCollection *)self sections];
  v6 = [(INObjectCollection *)v4 initWithSections:sections];

  [(INObjectCollection *)v6 setUsesIndexedCollation:[(INObjectCollection *)self usesIndexedCollation]];
  return v6;
}

- (NSArray)allItems
{
  sections = [(INObjectCollection *)self sections];
  v3 = [sections if_flatMap:&__block_literal_global_100283];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (INObjectCollection)initWithItems:(NSArray *)items
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = items;
  v5 = [[INObjectSection alloc] initWithTitle:0 items:v4];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(INObjectCollection *)self initWithSections:v6];

  return v7;
}

- (INObjectCollection)initWithSections:(NSArray *)sections
{
  v4 = sections;
  v18.receiver = self;
  v18.super_class = INObjectCollection;
  v5 = [(INObjectCollection *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AB50];
    v7 = [(NSArray *)v4 valueForKey:@"title"];
    v8 = [v6 setWithArray:v7];

    v9 = [MEMORY[0x1E696AB50] setWithSet:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__INObjectCollection_initWithSections___block_invoke;
    v15[3] = &unk_1E7285498;
    v16 = v8;
    v17 = v9;
    v10 = v9;
    v11 = v8;
    v12 = [(NSArray *)v4 if_map:v15];
    v13 = v5->_sections;
    v5->_sections = v12;
  }

  return v5;
}

INObjectSection *__39__INObjectCollection_initWithSections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  if (v4)
  {
    v5 = [*(a1 + 32) countForObject:v4];
    v6 = v5 - [*(a1 + 40) countForObject:v4];
    [*(a1 + 40) removeObject:v4];
    v7 = [INObjectSection alloc];
    v8 = [v4 stringByAppendingFormat:@"-%lu", v6];
    v9 = [v3 title];
    v10 = [v3 subtitle];
    v11 = [v3 image];
    v12 = [v3 items];
    v13 = [(INObjectSection *)v7 initWithIdentifier:v8 title:v9 subtitle:v10 image:v11 items:v12];
  }

  else
  {
    v13 = v3;
  }

  return v13;
}

@end