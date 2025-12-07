@interface TMLPropertyDescriptor
+ (id)decode:(const ProtobufCMessage *)decode;
- (BOOL)canMergeFromPropertyDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (NSString)typeClassName;
- (TMLPropertyDescriptor)initWithName:(id)name type:(unint64_t)type attributes:(id)attributes;
- (TMLPropertyDescriptor)initWithName:(id)name typeName:(id)typeName attributes:(id)attributes;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLPropertyDescriptor

- (TMLPropertyDescriptor)initWithName:(id)name type:(unint64_t)type attributes:(id)attributes
{
  attributesCopy = attributes;
  nameCopy = name;
  v10 = [TMLTypeRegistry typeNameForType:type];
  v11 = [(TMLPropertyDescriptor *)self initWithName:nameCopy typeName:v10 attributes:attributesCopy];

  return v11;
}

- (TMLPropertyDescriptor)initWithName:(id)name typeName:(id)typeName attributes:(id)attributes
{
  nameCopy = name;
  typeNameCopy = typeName;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = TMLPropertyDescriptor;
  v11 = [(TMLPropertyDescriptor *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    propertyName = v11->_propertyName;
    v11->_propertyName = v12;

    v11->_type = [TMLTypeRegistry typeForTypeName:typeNameCopy];
    v14 = [typeNameCopy copy];
    propertyType = v11->_propertyType;
    v11->_propertyType = v14;

    v11->_readonly = [attributesCopy containsObject:@"readonly"];
    v11->_optional = [attributesCopy containsObject:@"optional"];
  }

  return v11;
}

- (NSString)typeClassName
{
  if (self->_type == 16)
  {
    v2 = self->_propertyType;
  }

  else
  {
    v2 = [TMLTypeRegistry classNameForType:?];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    propertyName = self->_propertyName;
    propertyName = [equalCopy propertyName];
    if ([(NSString *)propertyName isEqualToString:propertyName])
    {
      typeClassName = [(TMLPropertyDescriptor *)self typeClassName];
      typeClassName2 = [equalCopy typeClassName];
      if ([typeClassName isEqualToString:typeClassName2] && (v9 = -[TMLPropertyDescriptor type](self, "type"), v9 == objc_msgSend(equalCopy, "type")) && (readonly = self->_readonly, readonly == objc_msgSend(equalCopy, "isReadonly")))
      {
        optional = self->_optional;
        v12 = optional == [equalCopy isOptional];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canMergeFromPropertyDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  propertyName = self->_propertyName;
  propertyName = [descriptorCopy propertyName];
  if ([(NSString *)propertyName isEqualToString:propertyName])
  {
    typeClassName = [(TMLPropertyDescriptor *)self typeClassName];
    typeClassName2 = [descriptorCopy typeClassName];
    if (![typeClassName isEqualToString:typeClassName2])
    {
      goto LABEL_13;
    }

    type = [(TMLPropertyDescriptor *)self type];
    if (type != [descriptorCopy type])
    {
      goto LABEL_13;
    }

    readonly = self->_readonly;
    if (readonly != [descriptorCopy isReadonly] && (!self->_readonly || (objc_msgSend(descriptorCopy, "isReadonly") & 1) != 0))
    {
      goto LABEL_13;
    }

    optional = self->_optional;
    if (optional == [descriptorCopy isOptional])
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      if (!self->_optional)
      {
LABEL_13:
        LOBYTE(v12) = 0;
        goto LABEL_14;
      }

      v12 = [descriptorCopy isOptional] ^ 1;
    }

LABEL_14:

    goto LABEL_15;
  }

  LOBYTE(v12) = 0;
LABEL_15:

  return v12;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_propertyName UTF8String];
  encode[1].var0 = strdup(uTF8String);
  *&encode[1].var1 = strdup([(NSString *)self->_propertyType UTF8String]);
  readonly = self->_readonly;
  v7 = self->_readonly || self->_optional;
  if (self->_optional)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  LODWORD(encode[1].var2) = v7;
  HIDWORD(encode[1].var2) = v8 | readonly;
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&decode[1].var1];
  if (LODWORD(decode[1].var2))
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
  }

  else
  {
    v7 = 0;
  }

  var2_high = HIDWORD(decode[1].var2);
  if ((var2_high & 2) != 0)
  {
    [v7 addObject:@"optional"];
    var2_high = HIDWORD(decode[1].var2);
  }

  if (var2_high)
  {
    [v7 addObject:@"readonly"];
  }

  v9 = [[self alloc] initWithName:v5 typeName:v6 attributes:v7];

  return v9;
}

@end