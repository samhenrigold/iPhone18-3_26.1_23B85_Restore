@interface _NSPropertyDescriptionProxy
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (_NSPropertyDescriptionProxy)initWithCoder:(id)coder;
- (id)description;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSPropertyDescriptionProxy

- (_NSPropertyDescriptionProxy)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = _NSPropertyDescriptionProxy;
  v4 = [(_NSPropertyDescriptionProxy *)&v18 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __45___NSPropertyDescriptionProxy_initWithCoder___block_invoke;
    v16 = &unk_1E6EC16F0;
    v17 = v5;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSUnderlyingProperty"];
    v4->_underlyingProperty = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    if (v5)
    {
      v7 = v5[3];
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = &unk_1EF435760;
    }

    else
    {
      v9 = &unk_1EF435738;
    }

    if ((isKindOfClass & 1 & (v5 != 0)) == 0)
    {
      goto LABEL_18;
    }

    if (v5[1] || v5[2])
    {
LABEL_11:
      v4->_entitysReferenceIDForProperty = [coder decodeIntegerForKey:@"NSReferenceID"];
      v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityDescription"];
      v4->_entityDescription = v10;
      if (!v10)
      {
LABEL_19:
        v15(v14);
        return v4;
      }

      if (v5)
      {
        v11 = v5[3];
      }

      else
      {
        v11 = 0;
      }

      [v11 addObject:v10];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      if (v12)
      {
        v9 = &unk_1EF4357B0;
      }

      else
      {
        v9 = &unk_1EF435788;
      }

      if (v5 != 0 && (v12 & 1) != 0)
      {
        if (v5[1] || v5[2])
        {
          goto LABEL_19;
        }

        v9 = &unk_1EF4357B0;
      }
    }

    else
    {
      v9 = &unk_1EF435760;
    }

LABEL_18:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v9)}];

    v4 = 0;
    goto LABEL_19;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_underlyingProperty forKey:@"NSUnderlyingProperty"];
  [coder encodeInteger:self->_entitysReferenceIDForProperty forKey:@"NSReferenceID"];
  entityDescription = self->_entityDescription;

  [coder encodeObject:entityDescription forKey:@"NSEntityDescription"];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSPropertyDescription *)self->_underlyingProperty name], [(NSEntityDescription *)self->_entityDescription name], self->_underlyingProperty);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  _propertyType = [(NSPropertyDescription *)self->_underlyingProperty _propertyType];
  underlyingProperty = self->_underlyingProperty;
  if (_propertyType == 4)
  {

    [(NSPropertyDescription *)underlyingProperty _versionHash:hash inStyle:style proxyContext:self];
  }

  else
  {

    [(NSPropertyDescription *)underlyingProperty _versionHash:hash inStyle:style];
  }
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, method);
  if (InstanceMethod || (v7 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v7, method)) != 0))
  {
    v8 = InstanceMethod;
    InstanceMethod = method_getTypeEncoding(InstanceMethod);
    if (InstanceMethod)
    {
      v9 = InstanceMethod;
      if (method_getNumberOfArguments(v8) == 2)
      {
        LOBYTE(InstanceMethod) = 0;
        v10 = *v9;
        v11 = returnBoolThing1;
        if (v10 <= 0x62)
        {
          if (v10 == 64)
          {
            v11 = returnIdThing1;
            goto LABEL_14;
          }

          if (v10 != 81)
          {
            return InstanceMethod;
          }

          goto LABEL_12;
        }

        if (v10 == 99)
        {
LABEL_14:
          class_addMethod(self, method, v11, v9);
          LOBYTE(InstanceMethod) = 1;
          return InstanceMethod;
        }

        if (v10 == 113)
        {
LABEL_12:
          v11 = returnUIntegerThing1;
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(InstanceMethod) = 0;
      }
    }
  }

  return InstanceMethod;
}

@end