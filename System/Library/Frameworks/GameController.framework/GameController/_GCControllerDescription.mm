@interface _GCControllerDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescription:(id)description;
- (BOOL)update:(id)update withContext:(id)context;
- (NSString)debugDescription;
- (NSString)description;
- (_GCControllerDescription)init;
- (_GCControllerDescription)initWithCoder:(id)coder;
- (_GCControllerDescription)initWithIdentifier:(id)identifier components:(id)components;
- (id)materializeWithContext:(id)context;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCControllerDescription

- (_GCControllerDescription)initWithIdentifier:(id)identifier components:(id)components
{
  identifierCopy = identifier;
  componentsCopy = components;
  v14.receiver = self;
  v14.super_class = _GCControllerDescription;
  v8 = [(_GCControllerDescription *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [componentsCopy copy];
    componentDescriptions = v8->_componentDescriptions;
    v8->_componentDescriptions = v11;
  }

  return v8;
}

- (_GCControllerDescription)init
{
  [(_GCControllerDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _GCControllerDescription;
  v5 = [(_GCControllerDescription *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v11 = _GCControllerComponentDescription_Classes(v10);
    v12 = [v11 setByAddingObject:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"components"];
    componentDescriptions = v6->_componentDescriptions;
    v6->_componentDescriptions = v13;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  componentDescriptions = self->_componentDescriptions;
  coderCopy = coder;
  [coderCopy encodeObject:componentDescriptions forKey:@"components"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqualToDescription:(id)description
{
  descriptionCopy = description;
  if ([(NSCopying *)self->_identifier isEqual:descriptionCopy[1]])
  {
    v5 = [(NSArray *)self->_componentDescriptions isEqualToArray:descriptionCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_GCControllerDescription *)self isEqualToDescription:equalCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(NSCopying *)self->_identifier isEqual:equalCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ '%@'>", v5, self->_identifier];

  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ '#%llx'>", v5, -[NSCopying hash](self->_identifier, "hash")];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'> %@", v5, self, self->_identifier, self->_componentDescriptions];

  return v6;
}

- (id)materializeWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  materializedController = self->_materializedController;
  if (!materializedController)
  {
    v6 = self->_identifier;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_componentDescriptions, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    targetQueue = self->_componentDescriptions;
    v9 = [(NSArray *)targetQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(targetQueue);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) materializeWithContext:{contextCopy, v20}];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        [v7 addObject:v13];

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)targetQueue countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      if (objc_opt_respondsToSelector())
      {
        targetQueue = [contextCopy targetQueue];
      }

      else
      {
        targetQueue = 0;
      }

      v15 = [objc_alloc(objc_msgSend(objc_opt_class() "controllerClass"))];
      v16 = self->_materializedController;
      self->_materializedController = v15;

      if (self->_materializedController && [contextCopy conformsToProtocol:&unk_1F4EA1E20])
      {
        iPCObjectRegistry = [contextCopy IPCObjectRegistry];
        [iPCObjectRegistry registerIPCObject:self->_materializedController];
      }
    }

    materializedController = self->_materializedController;
  }

  v18 = materializedController;

  return materializedController;
}

- (BOOL)update:(id)update withContext:(id)context
{
  v62 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  contextCopy = context;
  identifier = [updateCopy identifier];
  selfCopy = self;
  v9 = [identifier isEqual:self->_identifier];

  if ((v9 & 1) == 0)
  {
    [_GCControllerDescription update:a2 withContext:self];
  }

  v40 = updateCopy;
  components = [updateCopy components];
  v41 = [components mutableCopy];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = components;
  v11 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v43 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        identifier2 = [v14 identifier];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v16 = selfCopy->_componentDescriptions;
        v17 = [(NSArray *)v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v52;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v52 != v19)
              {
                objc_enumerationMutation(v16);
              }

              identifier3 = [*(*(&v51 + 1) + 8 * j) identifier];
              v22 = [identifier2 isEqual:identifier3];

              if (v22)
              {

                goto LABEL_18;
              }
            }

            v18 = [(NSArray *)v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [v41 removeObject:v14];
LABEL_18:
      }

      v12 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v44 = selfCopy->_componentDescriptions;
  v23 = [(NSArray *)v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v46 = *v48;
    do
    {
      v25 = 0;
      do
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v26 = *(*(&v47 + 1) + 8 * v25);
        identifier4 = [v26 identifier];
        if (![v41 count])
        {
          goto LABEL_34;
        }

        v28 = 0;
        while (1)
        {
          v29 = [obj objectAtIndexedSubscript:v28];
          identifier5 = [v29 identifier];
          v31 = [identifier4 isEqual:identifier5];

          if (v31)
          {
            break;
          }

          if (++v28 >= [v41 count])
          {
            goto LABEL_34;
          }
        }

        if (!v29)
        {
LABEL_34:
          v32 = [v26 materializeWithContext:contextCopy];
          if (!v32)
          {
            goto LABEL_44;
          }

          v33 = v32;
          [v41 addObject:v32];
          v29 = 0;
LABEL_36:

          goto LABEL_37;
        }

        if (![v26 conformsToProtocol:&unk_1F4E98670])
        {
          v34 = [v26 materializeWithContext:contextCopy];
          if (!v34)
          {
LABEL_43:

LABEL_44:
            v37 = 0;
            v36 = v40;
            goto LABEL_45;
          }

          v33 = v34;
          [v41 replaceObjectAtIndex:v28 withObject:v34];
          goto LABEL_36;
        }

        if (([v26 update:v29 withContext:contextCopy] & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_37:

        ++v25;
      }

      while (v25 != v24);
      v35 = [(NSArray *)v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
      v24 = v35;
    }

    while (v35);
  }

  v36 = v40;
  [v40 setComponents:v41];
  v37 = 1;
LABEL_45:

  return v37;
}

- (void)update:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCController.m" lineNumber:827 description:&stru_1F4E3B4E0];
}

@end