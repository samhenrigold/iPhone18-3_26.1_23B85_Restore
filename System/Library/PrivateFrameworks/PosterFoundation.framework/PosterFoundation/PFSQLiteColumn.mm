@interface PFSQLiteColumn
+ (PFSQLiteColumn)columnWithName:(id)name type:(unint64_t)type attributes:(unint64_t)attributes valueTransformer:(id)transformer;
+ (id)ISO8601DateColumnNamed:(id)named attributes:(unint64_t)attributes;
+ (id)NSCodingColumnNamed:(id)named attributes:(unint64_t)attributes expectedClass:(Class)class;
+ (id)UUIDColumnNamed:(id)named attributes:(unint64_t)attributes;
+ (id)blobColumnNamed:(id)named attributes:(unint64_t)attributes;
+ (id)dateColumnNamed:(id)named attributes:(unint64_t)attributes dateFormatter:(id)formatter;
+ (id)integerColumnNamed:(id)named attributes:(unint64_t)attributes;
+ (id)realColumnNamed:(id)named attributes:(unint64_t)attributes;
+ (id)textColumnNamed:(id)named attributes:(unint64_t)attributes;
- (BOOL)isEqual:(id)equal;
- (Class)expectedValueClass;
- (NSString)description;
- (PFSQLiteColumn)initWithColumnName:(id)name type:(unint64_t)type attributes:(unint64_t)attributes valueTransformer:(id)transformer;
- (id)pf_toSQLWithBindings:(unint64_t *)bindings;
- (void)description;
@end

@implementation PFSQLiteColumn

+ (PFSQLiteColumn)columnWithName:(id)name type:(unint64_t)type attributes:(unint64_t)attributes valueTransformer:(id)transformer
{
  transformerCopy = transformer;
  nameCopy = name;
  v11 = [[PFSQLiteColumn alloc] initWithColumnName:nameCopy type:type attributes:attributes valueTransformer:transformerCopy];

  return v11;
}

- (PFSQLiteColumn)initWithColumnName:(id)name type:(unint64_t)type attributes:(unint64_t)attributes valueTransformer:(id)transformer
{
  nameCopy = name;
  transformerCopy = transformer;
  v24.receiver = self;
  v24.super_class = PFSQLiteColumn;
  v13 = [(PFSQLiteColumn *)&v24 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v13->_type = type;
    v13->_attributes = attributes;
    objc_storeStrong(&v13->_valueTransformer, transformer);
    transformedValueClass = [objc_opt_class() transformedValueClass];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke;
    v23[3] = &__block_descriptor_40_e5__8__0l;
    v23[4] = type;
    if (transformedValueClass != __70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke(v23))
    {
      [PFSQLiteColumn initWithColumnName:a2 type:v13 attributes:? valueTransformer:?];
    }

    builder = [MEMORY[0x1E698E6B8] builder];
    v18 = [builder appendInteger:v13->_attributes];
    v19 = [builder appendInteger:v13->_type];
    v20 = [builder appendString:v13->_name];
    v21 = [builder appendPointer:transformerCopy];
    v13->_cachedHash = [builder hash];
  }

  return v13;
}

void *__70__PFSQLiteColumn_initWithColumnName_type_attributes_valueTransformer___block_invoke(void *a1)
{
  if (a1[4] <= 5uLL)
  {
    a1 = objc_opt_class();
  }

  return a1;
}

- (Class)expectedValueClass
{
  type = self->_type;
  if (type > 2)
  {
    if (type == 3 || type == 4 || type == 5)
    {
LABEL_9:
      self = objc_opt_class();
    }
  }

  else
  {
    if ((type - 1) < 2)
    {
      self = objc_opt_self();
      goto LABEL_10;
    }

    if (!type)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(PFSQLiteColumn *)v5 name];
      name2 = [(PFSQLiteColumn *)self name];
      if ([name isEqualToString:name2] && (v8 = -[PFSQLiteColumn type](v5, "type"), v8 == -[PFSQLiteColumn type](self, "type")))
      {
        attributes = [(PFSQLiteColumn *)v5 attributes];
        v10 = attributes == [(PFSQLiteColumn *)self attributes];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  v4 = self->_type - 1;
  if (v4 >= 5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown PFSQLiteColumnType"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(PFSQLiteColumn *)v16 description];
    }

    [v16 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    [v3 appendString:off_1E8189718[v4] withName:@"name"];
    attributes = self->_attributes;
    if (attributes)
    {
      v6 = objc_opt_new();
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __NSStringFromPFSQLiteColumnAttributes_block_invoke;
      v20 = &unk_1E81896C8;
      v7 = v6;
      v21 = v7;
      v8 = &v17;
      v9 = 0;
      v22 = 0;
      v10 = vcnt_s8(attributes);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.i32[0];
      do
      {
        if (((1 << v9) & attributes) != 0)
        {
          (v19)(v8);
          if (v22)
          {
            break;
          }

          --v11;
        }

        if (v9 > 0x3E)
        {
          break;
        }

        ++v9;
      }

      while (v11 > 0);

      v12 = [v7 componentsJoinedByString:{@"|", v17, v18}];
    }

    else
    {
      v12 = @"PFSQLColumnAttributeNone";
    }

    [v3 appendString:v12 withName:@"_attributes"];

    v13 = [v3 appendObject:self->_valueTransformer withName:@"_valueTransformer" skipIfNil:1];
    build = [v3 build];

    return build;
  }

  return result;
}

- (id)pf_toSQLWithBindings:(unint64_t *)bindings
{
  v5 = MEMORY[0x1E696AEC0];
  name = [(PFSQLiteColumn *)self name];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke;
  v12[3] = &unk_1E8189660;
  v12[4] = self;
  v12[5] = a2;
  v7 = __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke(v12);
  v8 = [v5 stringWithFormat:@"'%@' %@", name, v7];

  if ([(PFSQLiteColumn *)self isPrimaryKey])
  {
    v9 = [v8 stringByAppendingString:@" PRIMARY KEY"];

    v8 = v9;
  }

  if ([(PFSQLiteColumn *)self isNonnull])
  {
    v10 = [v8 stringByAppendingString:@" NOT NULL"];

    v8 = v10;
  }

  return v8;
}

__CFString *__39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) type];
  if ((v3 - 1) < 4)
  {
    return off_1E8189740[v3 - 1];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite column type %lu not supported", objc_msgSend(*v2, "type")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke_cold_1(a1, v2, v5);
  }

  [v5 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)dateColumnNamed:(id)named attributes:(unint64_t)attributes dateFormatter:(id)formatter
{
  v8 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  v10 = [v8 pf_dateTransformerForDateFormatter:formatter];
  v11 = [self columnWithName:namedCopy type:3 attributes:attributes valueTransformer:v10];

  return v11;
}

+ (id)integerColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [self columnWithName:namedCopy type:1 attributes:attributes valueTransformer:v9];

  return v10;
}

+ (id)blobColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [self columnWithName:namedCopy type:4 attributes:attributes valueTransformer:v9];

  return v10;
}

+ (id)ISO8601DateColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  pf_ISO8601DateTransformer = [v6 pf_ISO8601DateTransformer];
  v9 = [self columnWithName:namedCopy type:3 attributes:attributes valueTransformer:pf_ISO8601DateTransformer];

  return v9;
}

+ (id)textColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [self columnWithName:namedCopy type:3 attributes:attributes valueTransformer:v9];

  return v10;
}

+ (id)UUIDColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  pf_UUIDToNSStringTransformer = [v6 pf_UUIDToNSStringTransformer];
  v9 = [self columnWithName:namedCopy type:3 attributes:attributes valueTransformer:pf_UUIDToNSStringTransformer];

  return v9;
}

+ (id)realColumnNamed:(id)named attributes:(unint64_t)attributes
{
  v6 = MEMORY[0x1E696B0A0];
  namedCopy = named;
  v8 = objc_opt_self();
  v9 = [v6 pf_identityTransformerForClass:v8];
  v10 = [self columnWithName:namedCopy type:2 attributes:attributes valueTransformer:v9];

  return v10;
}

+ (id)NSCodingColumnNamed:(id)named attributes:(unint64_t)attributes expectedClass:(Class)class
{
  namedCopy = named;
  v9 = [PFGenericValueTransformer alloc];
  v10 = objc_opt_self();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PFSQLiteColumn_NSCodingColumnNamed_attributes_expectedClass___block_invoke_2;
  v14[3] = &__block_descriptor_40_e19__24__0__NSData_8_16lu32l8;
  v14[4] = class;
  v11 = [(PFGenericValueTransformer *)v9 initWithTransformedValueClass:v10 transformer:&__block_literal_global_5 reverseValueClass:class reverseTransformer:v14];

  v12 = [self columnWithName:namedCopy type:4 attributes:attributes valueTransformer:v11];

  return v12;
}

- (void)initWithColumnName:(const char *)a1 type:(uint64_t)a2 attributes:valueTransformer:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"valueTransformerClass == classForType"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PFSQLiteColumn.m";
    v16 = 1024;
    v17 = 94;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)description
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *NSStringFromPFSQliteColumnType(PFSQLiteColumnType)"];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"PFSQLiteColumn.m";
  v7 = 1024;
  v8 = 28;
  v9 = 2114;
  selfCopy = self;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

void __39__PFSQLiteColumn_pf_toSQLWithBindings___block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(*(a1 + 40));
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a2;
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = @"PFSQLiteColumn.m";
  v17 = 1024;
  v18 = 174;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
}

@end