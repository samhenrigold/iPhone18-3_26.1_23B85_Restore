@interface JavaNioCharsetCharset
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRegistered;
- (id)decodeWithJavaNioByteBuffer:(id)buffer;
- (id)encodeWithNSString:(id)string;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNioCharsetCharset

- (BOOL)isRegistered
{
  canonicalName = self->canonicalName_;
  if (!canonicalName)
  {
    JreThrowNullPointerException();
  }

  if ([(NSString *)canonicalName hasPrefix:@"x-"])
  {
    return 0;
  }

  else
  {
    return ![(NSString *)self->canonicalName_ hasPrefix:@"X-"];
  }
}

- (id)encodeWithNSString:(id)string
{
  v4 = JavaNioCharBuffer_wrapWithJavaLangCharSequence_(string);

  return sub_1001BDC24(self, v4);
}

- (id)decodeWithJavaNioByteBuffer:(id)buffer
{
  newDecoder = [(JavaNioCharsetCharset *)self newDecoder];
  if (!newDecoder)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v5 = [newDecoder onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v6 = [v5 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v6)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return [v6 decodeWithJavaNioByteBuffer:buffer];
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  canonicalName = self->canonicalName_;
  if (!canonicalName)
  {
    JreThrowNullPointerException();
  }

  v6 = *(id + 1);

  return [(NSString *)canonicalName compareToIgnoreCase:v6];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_10;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  canonicalName = self->canonicalName_;
  if (!canonicalName)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v6 = *(equal + 1);

  return [(NSString *)canonicalName isEqual:v6];
}

- (unint64_t)hash
{
  canonicalName = self->canonicalName_;
  if (!canonicalName)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)canonicalName hash];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCharset;
  [(JavaNioCharsetCharset *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554D90, v2);
    atomic_store(1u, JavaNioCharsetCharset__initialized);
  }
}

@end