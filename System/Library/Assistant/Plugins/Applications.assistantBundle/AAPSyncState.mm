@interface AAPSyncState
- (AAPSyncState)initWithCoder:(id)coder;
- (AAPSyncState)initWithValidity:(id)validity version:(int64_t)version keyAnchor:(id)anchor startAnchor:(id)startAnchor stopAnchor:(id)stopAnchor apps:(id)apps deletes:(id)deletes;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_validate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAPSyncState

- (AAPSyncState)initWithValidity:(id)validity version:(int64_t)version keyAnchor:(id)anchor startAnchor:(id)startAnchor stopAnchor:(id)stopAnchor apps:(id)apps deletes:(id)deletes
{
  v17.receiver = self;
  v17.super_class = AAPSyncState;
  v15 = [(AAPSyncState *)&v17 init];
  if (v15)
  {
    v15->_validity = [validity copy];
    v15->_version = version;
    v15->_keyAnchor = [anchor copy];
    v15->_startAnchor = [startAnchor copy];
    v15->_stopAnchor = [stopAnchor copy];
    v15->_apps = [apps copy];
    v15->_deletes = [deletes copy];
    [(AAPSyncState *)v15 _validate];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncState;
  [(AAPSyncState *)&v3 dealloc];
}

- (void)_validate
{
  if (!self->_validity)
  {
    sub_113EC(a2, self);
  }

  if (!self->_keyAnchor)
  {
    sub_11448(a2, self);
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_114A4();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11500();
  }

  if (self->_startAnchor && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1155C();
  }

  if (self->_stopAnchor && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_115B8();
  }

  if (self->_apps && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11614();
  }

  if (self->_deletes && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_11670();
  }

  if (!self->_stopAnchor && (self->_startAnchor || [(NSSet *)self->_apps count]|| [(NSArray *)self->_deletes count]))
  {
    sub_116CC(a2, self);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  apps = self->_apps;
  v5 = [(NSSet *)apps countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(apps);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_11728();
        }
      }

      v6 = [(NSSet *)apps countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  deletes = self->_deletes;
  v10 = [(NSArray *)deletes countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(deletes);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_11784();
        }
      }

      v11 = [(NSArray *)deletes countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (AAPSyncState)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v5, 0];
  v10 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v18 = [coder decodeObjectOfClass:v5 forKey:@"validity"];
  v11 = [coder decodeIntegerForKey:@"version"];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyAnchor"];
  v13 = [coder decodeObjectOfClass:v6 forKey:@"startAnchor"];
  v14 = [coder decodeObjectOfClass:v6 forKey:@"stopAnchor"];
  v15 = [coder decodeObjectOfClasses:v9 forKey:@"apps"];
  v16 = [coder decodeObjectOfClasses:v10 forKey:@"deletes"];
  if (self->_apps && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_117E0();
  }

  if (self->_deletes && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1183C();
  }

  return [(AAPSyncState *)self initWithValidity:v18 version:v11 keyAnchor:v12 startAnchor:v13 stopAnchor:v14 apps:v15 deletes:v16];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_validity forKey:@"validity"];
  [coder encodeInteger:self->_version forKey:@"version"];
  [coder encodeObject:self->_keyAnchor forKey:@"keyAnchor"];
  [coder encodeObject:self->_startAnchor forKey:@"startAnchor"];
  [coder encodeObject:self->_stopAnchor forKey:@"stopAnchor"];
  [coder encodeObject:self->_apps forKey:@"apps"];
  deletes = self->_deletes;

  [coder encodeObject:deletes forKey:@"deletes"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_validity hash];
  v4 = self->_version - v3 + 32 * v3;
  v5 = [(AAPSyncAnchor *)self->_keyAnchor hash]+ 32 * v4 - v4;
  v6 = [(AAPSyncAnchor *)self->_startAnchor hash]- v5 + 32 * v5;
  v7 = [(AAPSyncAnchor *)self->_stopAnchor hash]+ 32 * v6 - v6;
  v8 = [(NSSet *)self->_apps hash]+ 32 * v7 - v7;
  return [(NSArray *)self->_deletes hash]+ 32 * v8 - v8 + 0x6CE5F3FACFLL;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  if (self == equal)
  {
    LOBYTE(self) = self != 0;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_3;
    }

    validity = selfCopy->_validity;
    [equal validity];
    LODWORD(self) = objc_msgSend_isEqualToString_(validity);
    if (!self)
    {
      return self;
    }

    version = selfCopy->_version;
    if (version == [equal version])
    {
      LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](selfCopy->_keyAnchor, "isEqualToAnchor:", [equal keyAnchor]);
      if (self)
      {
        LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](selfCopy->_startAnchor, "isEqualToAnchor:", [equal startAnchor]);
        if (self)
        {
          LODWORD(self) = -[AAPSyncAnchor isEqualToAnchor:](selfCopy->_stopAnchor, "isEqualToAnchor:", [equal stopAnchor]);
          if (self)
          {
            LODWORD(self) = -[NSSet isEqualToSet:](selfCopy->_apps, "isEqualToSet:", [equal apps]);
            if (self)
            {
              deletes = selfCopy->_deletes;
              deletes = [equal deletes];

              LOBYTE(self) = [(NSArray *)deletes isEqualToArray:deletes];
            }
          }
        }
      }
    }

    else
    {
LABEL_3:
      LOBYTE(self) = 0;
    }
  }

  return self;
}

@end