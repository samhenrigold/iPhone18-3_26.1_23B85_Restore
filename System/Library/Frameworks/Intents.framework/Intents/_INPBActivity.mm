@interface _INPBActivity
- (BOOL)isEqual:(id)equal;
- (_INPBActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addActivityDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)setActivityDescriptors:(id)descriptors;
- (void)writeTo:(id)to;
@end

@implementation _INPBActivity

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activityDescriptors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_activityDescriptors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"activityDescriptors"];
  }

  activityType = [(_INPBActivity *)self activityType];
  dictionaryRepresentation2 = [activityType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"activityType"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activityDescriptors = [(_INPBActivity *)self activityDescriptors];
  activityDescriptors2 = [equalCopy activityDescriptors];
  if ((activityDescriptors != 0) == (activityDescriptors2 == 0))
  {
    goto LABEL_11;
  }

  activityDescriptors3 = [(_INPBActivity *)self activityDescriptors];
  if (activityDescriptors3)
  {
    v8 = activityDescriptors3;
    activityDescriptors4 = [(_INPBActivity *)self activityDescriptors];
    activityDescriptors5 = [equalCopy activityDescriptors];
    v11 = [activityDescriptors4 isEqual:activityDescriptors5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activityDescriptors = [(_INPBActivity *)self activityType];
  activityDescriptors2 = [equalCopy activityType];
  if ((activityDescriptors != 0) != (activityDescriptors2 == 0))
  {
    activityType = [(_INPBActivity *)self activityType];
    if (!activityType)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = activityType;
    activityType2 = [(_INPBActivity *)self activityType];
    activityType3 = [equalCopy activityType];
    v16 = [activityType2 isEqual:activityType3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBActivity allocWithZone:](_INPBActivity init];
  v6 = [(NSArray *)self->_activityDescriptors copyWithZone:zone];
  [(_INPBActivity *)v5 setActivityDescriptors:v6];

  v7 = [(_INPBString *)self->_activityType copyWithZone:zone];
  [(_INPBActivity *)v5 setActivityType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBActivity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBActivity *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_activityDescriptors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  activityType = [(_INPBActivity *)self activityType];

  if (activityType)
  {
    activityType2 = [(_INPBActivity *)self activityType];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addActivityDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  activityDescriptors = self->_activityDescriptors;
  v8 = descriptorsCopy;
  if (!activityDescriptors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activityDescriptors;
    self->_activityDescriptors = array;

    descriptorsCopy = v8;
    activityDescriptors = self->_activityDescriptors;
  }

  [(NSArray *)activityDescriptors addObject:descriptorsCopy];
}

- (void)setActivityDescriptors:(id)descriptors
{
  v4 = [descriptors mutableCopy];
  activityDescriptors = self->_activityDescriptors;
  self->_activityDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, activityDescriptors);
}

@end