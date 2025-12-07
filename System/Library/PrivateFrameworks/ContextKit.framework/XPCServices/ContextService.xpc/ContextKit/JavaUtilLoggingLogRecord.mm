@interface JavaUtilLoggingLogRecord
+ (void)initialize;
- (uint64_t)initSource;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)setLevelWithJavaUtilLoggingLevel:(id)level;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilLoggingLogRecord

- (void)setLevelWithJavaUtilLoggingLevel:(id)level
{
  if (!level)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"level == null");
    objc_exception_throw(v5);
  }

  p_level = &self->level_;

  JreStrongAssign(p_level, level);
}

- (uint64_t)initSource
{
  if ((*(result + 104) & 1) == 0)
  {
    v1 = result;
    result = [new_JavaLangThrowable_init() getStackTrace];
    if (!result)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    v2 = 0;
    v3 = (result + 24);
    v4 = result + 24 + 8 * *(result + 8);
    while (v3 < v4)
    {
      v6 = *v3++;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = v2;
      getClassName = [v5 getClassName];
      if (!getClassName)
      {
        goto LABEL_12;
      }

      result = [getClassName hasPrefix:{objc_msgSend(JavaUtilLoggingLogger_class_(), "getName")}];
      v2 = result | v7;
      if ((result & 1) == 0 && ((v7 ^ 1) & 1) == 0)
      {
        JreStrongAssign((v1 + 24), [v5 getClassName]);
        result = JreStrongAssign((v1 + 32), [v5 getMethodName]);
        break;
      }
    }

    *(v1 + 104) = 1;
  }

  return result;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
  [stream writeByteWithInt:1];
  [stream writeByteWithInt:4];
  parameters = self->parameters_;
  if (parameters)
  {
    [stream writeIntWithInt:parameters->super.size_];
    v6 = self->parameters_;
    p_elementType = &v6->elementType_;
    v8 = &(&v6->elementType_)[v6->super.size_];
    while (p_elementType < v8)
    {
      v10 = *p_elementType++;
      v9 = v10;
      if (v10)
      {
        v11 = [v9 description];
      }

      else
      {
        v11 = 0;
      }

      [stream writeObjectWithId:v11];
    }
  }

  else
  {

    [stream writeIntWithInt:0xFFFFFFFFLL];
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readByte = [stream readByte];
  readByte2 = [stream readByte];
  if (readByte != 1)
  {
    v15 = readByte2;
    JavaLangByte_valueOfWithByte_(readByte, v7);
    JavaLangByte_valueOfWithByte_(v15, v16);
    v24 = JreStrcat("$@C@", v17, v18, v19, v20, v21, v22, v23, @"Different version ");
    v25 = new_JavaIoIOException_initWithNSString_(v24);
    objc_exception_throw(v25);
  }

  readInt = [stream readInt];
  if ((readInt & 0x80000000) == 0)
  {
    v10 = [IOSObjectArray newArrayWithLength:readInt type:NSObject_class_(readInt, v9)];
    JreStrongAssignAndConsume(&self->parameters_, v10);
    parameters = self->parameters_;
    if (parameters->super.size_ >= 1)
    {
      v12 = 0;
      do
      {
        IOSObjectArray_Set(parameters, v12++, [stream readObject]);
        parameters = self->parameters_;
      }

      while (v12 < parameters->super.size_);
    }
  }

  resourceBundleName = self->resourceBundleName_;
  if (resourceBundleName)
  {
    ResourceBundleWithNSString = JavaUtilLoggingLogger_loadResourceBundleWithNSString_(resourceBundleName, v9);
    JreStrongAssign(&self->resourceBundle_, ResourceBundleWithNSString);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogRecord;
  [(JavaUtilLoggingLogRecord *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaLangThreadLocal_init();
    JreStrongAssignAndConsume(&qword_100554978, v2);
    atomic_store(1u, JavaUtilLoggingLogRecord__initialized);
  }
}

@end