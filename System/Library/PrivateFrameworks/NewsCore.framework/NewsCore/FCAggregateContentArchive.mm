@interface FCAggregateContentArchive
- (FCAggregateContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)context;
- (int64_t)storageSize;
@end

@implementation FCAggregateContentArchive

void __51__FCAggregateContentArchive_initWithChildArchives___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v10 = v9;
          [v3 addObjectsFromArray:v10[1]];
        }

        else
        {
          [v3 addObject:{v9, v11}];
          v10 = 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = FCCFArrayDescription(self->_childArchives);
  [(FCDescription *)v3 addField:@"childArchives" object:v4];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCAggregateContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCAggregateContentArchive;
  v5 = [(FCAggregateContentArchive *)&v9 init];
  if (v5)
  {
    if (qword_1EDB26E38 != -1)
    {
      dispatch_once(&qword_1EDB26E38, &__block_literal_global_242);
    }

    v6 = [coderCopy decodeObjectOfClasses:qword_1EDB26E30 forKey:@"childArchives"];
    childArchives = v5->_childArchives;
    v5->_childArchives = v6;
  }

  return v5;
}

uint64_t __43__FCAggregateContentArchive_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = qword_1EDB26E30;
  qword_1EDB26E30 = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)unarchiveIntoContentContext:(id)context
{
  contextCopy = context;
  childArchives = self->_childArchives;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__FCAggregateContentArchive_unarchiveIntoContentContext___block_invoke;
  v10[3] = &unk_1E7C37220;
  v11 = contextCopy;
  v6 = contextCopy;
  v7 = [(NSArray *)childArchives fc_arrayByTransformingWithBlock:v10];
  v8 = [[FCContentUnarchiveResult alloc] initWithInterestToken:v7 storageSize:[(FCAggregateContentArchive *)self storageSize]];

  return v8;
}

- (id)manifest
{
  v2 = [(NSArray *)self->_childArchives fc_arrayByTransformingWithBlock:&__block_literal_global_245];
  v3 = [[FCContentManifest alloc] initWithManifests:v2];

  return v3;
}

- (int64_t)storageSize
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_childArchives;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) storageSize];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end