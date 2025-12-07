@interface JavaMethodMetadata
- (BOOL)isConstructor;
- (JavaMethodMetadata)initWithMetadata:(const J2ObjcMethodInfo *)metadata;
- (id)exceptionTypes;
- (id)genericSignature;
- (id)javaName;
- (id)name;
@end

@implementation JavaMethodMetadata

- (JavaMethodMetadata)initWithMetadata:(const J2ObjcMethodInfo *)metadata
{
  v5.receiver = self;
  v5.super_class = JavaMethodMetadata;
  result = [(JavaMethodMetadata *)&v5 init];
  if (result)
  {
    result->data_ = metadata;
  }

  return result;
}

- (id)name
{
  data = self->data_;
  var1 = data->var1;
  if (!var1)
  {
    var1 = data->var0;
  }

  return [NSString stringWithUTF8String:var1];
}

- (id)javaName
{
  if (self->data_->var1)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (id)exceptionTypes
{
  var4 = self->data_->var4;
  if (!var4)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v6 = strchr(var4, 59);
    var4 = v6 + 1;
    if (v6)
    {
      ++v4;
    }
  }

  while (v6 != -1 && v6 != 0);
  v8 = [IOSObjectArray arrayWithLength:v4 type:JavaLangReflectType_class_(var4, v5)];
  v9 = self->data_->var4;
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = strchr(v9, 59);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = strndup(v9, v11 - v9 + 1);
      v14 = JreTypeForString(v13);
      IOSObjectArray_Set(v8, v10, v14);
      free(v13);
      ++v10;
      v9 = v12 + 1;
    }

    while (v12 != -1);
  }

  return v8;
}

- (BOOL)isConstructor
{
  data = self->data_;
  var1 = data->var1;
  if (!var1)
  {
    var1 = data->var0;
  }

  return !strcmp(var1, "init") || strncmp(var1, "initWith", 8uLL) == 0;
}

- (id)genericSignature
{
  if (self->data_->var5)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

@end