@interface FCDescription
+ (id)descriptionWithCFType:(void *)type format:(id)format;
+ (id)descriptionWithObject:(id)object class:(Class)class;
+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format;
+ (id)descriptionWithObject:(id)object format:(id)format;
- (FCDescription)initWithCFType:(void *)type header:(id)header;
- (FCDescription)initWithObject:(id)object;
- (FCDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments;
- (FCDescription)initWithObject:(id)object class:(Class)class header:(id)header;
- (FCDescription)initWithObject:(id)object format:(id)format;
- (id)descriptionString;
- (id)p_header;
- (void)addField:(id)field format:(id)format;
- (void)addField:(id)field value:(id)value;
- (void)addFieldWithFormat:(id)format;
- (void)addSuperDescription;
@end

@implementation FCDescription

- (FCDescription)initWithObject:(id)object class:(Class)class header:(id)header
{
  objectCopy = object;
  headerCopy = header;
  atomic_fetch_add(&FCDescriptionDepth, 1uLL);
  v16.receiver = self;
  v16.super_class = FCDescription;
  v11 = [(FCDescription *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, object);
    v12->_class = class;
    v13 = [headerCopy copy];
    header = v12->_header;
    v12->_header = v13;
  }

  return v12;
}

- (FCDescription)initWithCFType:(void *)type header:(id)header
{
  headerCopy = header;
  atomic_fetch_add(&FCDescriptionDepth, 1uLL);
  v12.receiver = self;
  v12.super_class = FCDescription;
  v7 = [(FCDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_cfType = type;
    v9 = [headerCopy copy];
    header = v8->_header;
    v8->_header = v9;
  }

  return v8;
}

- (FCDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments
{
  v10 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  objectCopy = object;
  v13 = [[v10 alloc] initWithFormat:formatCopy arguments:arguments];

  v14 = [(FCDescription *)self initWithObject:objectCopy class:class header:v13];
  return v14;
}

- (FCDescription)initWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v8 = [(FCDescription *)self initWithObject:objectCopy class:object_getClass(objectCopy) format:formatCopy arguments:&v10];

  return v8;
}

- (FCDescription)initWithObject:(id)object
{
  objectCopy = object;
  v5 = [(FCDescription *)self initWithObject:objectCopy class:object_getClass(objectCopy) format:&stru_1F2DC7DC0];

  return v5;
}

+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v9 = [[FCDescription alloc] initWithObject:objectCopy class:class format:formatCopy arguments:&v12];

  return v9;
}

+ (id)descriptionWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v7 = [[FCDescription alloc] initWithObject:objectCopy class:object_getClass(objectCopy) format:formatCopy arguments:&v10];

  return v7;
}

+ (id)descriptionWithObject:(id)object class:(Class)class
{
  objectCopy = object;
  v6 = [[FCDescription alloc] initWithObject:objectCopy class:class format:&stru_1F2DC7DC0];

  return v6;
}

+ (id)descriptionWithCFType:(void *)type format:(id)format
{
  v5 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v11];

  v8 = [[FCDescription alloc] initWithCFType:type header:v7];

  return v8;
}

- (id)p_header
{
  if (self->_object)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%s*)%p%@", class_getName(self->_class), self->_object, self->_header];
  }

  else
  {
    cfType = self->_cfType;
    if (cfType)
    {
      v5 = CFGetTypeID(cfType);
      v6 = CFCopyTypeIDDescription(v5);
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@Ref)%p%@", v6, self->_cfType, self->_header];
      CFRelease(v6);
    }

    else
    {
      v3 = @"(void*)nil";
    }
  }

  return v3;
}

- (void)addField:(id)field value:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fields = self->_fields;
    self->_fields = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v10;
  }

  if (!valueCopy)
  {
    valueCopy = @"nil";
  }

  if (fieldCopy && [fieldCopy length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", fieldCopy];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"$$$%lu", -[NSMutableDictionary count](self->_fields, "count")];
  }
  v13 = ;

  [(NSMutableArray *)self->_fieldOrder addObject:v13];
  [(NSMutableDictionary *)self->_fields setObject:valueCopy forKey:v13];
  if (([v13 hasPrefix:@"$$$"] & 1) == 0)
  {
    v12 = [v13 length];
    if (v12 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v12;
    }
  }
}

- (void)addField:(id)field format:(id)format
{
  v6 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  fieldCopy = field;
  v9 = [[v6 alloc] initWithFormat:formatCopy arguments:&v10];

  [(FCDescription *)self addField:fieldCopy value:v9];
}

- (void)addFieldWithFormat:(id)format
{
  v4 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(FCDescription *)self addField:0 value:v6];
}

- (void)addSuperDescription
{
  object = self->_object;
  v3 = self->_class;
  v6.receiver = object;
  v6.super_class = class_getSuperclass(v3);
  v5 = [(FCDescription *)&v6 description];
  [(FCDescription *)self addFieldValue:v5, v6.receiver];
}

- (id)descriptionString
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  v3 = atomic_load(&FCDescriptionDepth);
  if (v3 >= 5)
  {
    if (objc_opt_respondsToSelector())
    {
      shortDescription = [self->_object shortDescription];
LABEL_6:
      v5 = shortDescription;
      goto LABEL_31;
    }

LABEL_5:
    shortDescription = [(FCDescription *)self p_header];
    goto LABEL_6;
  }

  v6 = MEMORY[0x1E696AD60];
  p_header = [(FCDescription *)self p_header];
  v5 = [v6 stringWithFormat:@"%@ {", p_header];

  v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = self->_fieldOrder;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = v5;
    v11 = 0;
    v12 = 0;
    v13 = &stru_1F2DC7DC0;
    v14 = *v32;
    v28 = *v32;
    do
    {
      v15 = 0;
      v27 = v12;
      v16 = v12 + 1;
      v17 = v13;
      v29 = v10;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (v16 > 0x63)
        {
          ++v11;
        }

        else
        {
          v18 = v8;
          v19 = *(*(&v31 + 1) + 8 * v15);
          v20 = [(NSMutableDictionary *)self->_fields objectForKey:v19];
          v21 = [v20 mutableCopy];

          v22 = v19;
          [v21 indentBy:self->_fieldNameWidth];
          if ([(__CFString *)v22 hasPrefix:@"$$$"])
          {

            v22 = &stru_1F2DC7DC0;
          }

          [v21 replaceCharactersInRange:0 withString:{-[__CFString length](v22, "length"), v22}];
          [v30 appendFormat:@"%@%@", v17, v21];

          v8 = v18;
          v14 = v28;
          v10 = v29;
        }

        v23 = @",\n";
        if (!self->_commaSeparated)
        {
          v23 = @"\n";
        }

        v13 = v23;

        ++v15;
        ++v16;
        v17 = v13;
      }

      while (v10 != v15);
      v12 = v10 + v27;
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);

    if (v11)
    {
      v24 = "";
      if (v11 != 1)
      {
        v24 = "s";
      }

      [v30 appendFormat:@"%@...omitting %lu field%s (set to truncate after %lu field%s)", v13, v11, v24, 99, "s"];
    }

    v5 = v26;
  }

  else
  {

    v13 = &stru_1F2DC7DC0;
  }

  while (([v30 hasSuffix:@"\n"] & 1) != 0 || objc_msgSend(v30, "hasSuffix:", @" "))
  {
    [v30 deleteCharactersInRange:{objc_msgSend(v30, "length") - 1, 1}];
  }

  [v30 indentBy:2];
  [v5 appendFormat:@"\n%@\n}", v30];

LABEL_31:
  atomic_fetch_add(&FCDescriptionDepth, 0xFFFFFFFFFFFFFFFFLL);

  return v5;
}

@end