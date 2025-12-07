@interface CADEntityWrapper
- (CADEntityWrapper)initWithCalEntity:(void *)entity loadedValues:(id)values;
- (CADEntityWrapper)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEntityWrapper

- (CADEntityWrapper)initWithCalEntity:(void *)entity loadedValues:(id)values
{
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = CADEntityWrapper;
  v8 = [(CADEntityWrapper *)&v13 init];
  if (v8)
  {
    v8->_entityType = CalEntityGetType();
    v8->_rowID = CalEntityGetID();
    v9 = CADEntityCopyObjectID(entity);
    objectID = v8->_objectID;
    v8->_objectID = v9;

    v8->_databaseID = [(CADObjectID *)v8->_objectID databaseID];
    if (!v8->_objectID)
    {
      v11 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v8->_loadedValues, values);
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (CADEntityWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CADEntityWrapper *)a2 initWithCoder:?];
  }

  v15.receiver = self;
  v15.super_class = CADEntityWrapper;
  v6 = [(CADEntityWrapper *)&v15 init];
  if (v6)
  {
    if (initWithCoder__onceToken_1 != -1)
    {
      [CADEntityWrapper initWithCoder:];
    }

    v7 = [coderCopy decodeIntForKey:@"entityType"];
    v8 = [coderCopy decodeIntForKey:@"rowID"];
    v9 = [coderCopy decodeIntForKey:@"dbID"];
    v10 = [coderCopy decodeObjectOfClasses:initWithCoder__allowedObjectClasses forKey:@"objects"];
    loadedValues = v6->_loadedValues;
    v6->_loadedValues = v10;

    v12 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:v7 entityID:v8 databaseID:v9];
    objectID = v6->_objectID;
    v6->_objectID = v12;
  }

  return v6;
}

uint64_t __34__CADEntityWrapper_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = initWithCoder__allowedKeyClasses;
  initWithCoder__allowedKeyClasses = v4;

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  initWithCoder__allowedObjectClasses = v13;

  return MEMORY[0x2821F96F8](v13);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CADEntityWrapper *)a2 encodeWithCoder:?];
  }

  [coderCopy encodeInt:self->_entityType forKey:@"entityType"];
  [coderCopy encodeInt:self->_rowID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [coderCopy encodeInt:databaseID forKey:@"dbID"];
  }

  loadedValues = self->_loadedValues;
  if (loadedValues)
  {
    [coderCopy encodeObject:loadedValues forKey:@"objects"];
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADEntityWrapper.m" lineNumber:60 description:@"wha!"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADEntityWrapper.m" lineNumber:83 description:@"wha!"];
}

@end