@interface JavaNioCharsetIOSCharset
+ (JavaNioCharsetIOSCharset)getDefaultCharset;
+ (uint64_t)getEncodings;
+ (void)initialize;
- (JavaNioCharsetIOSCharset)initWithLong:(int64_t)long withNSString:(id)string withNSStringArray:(id)array withFloat:(float)float;
- (id)newDecoder;
- (id)newEncoder;
@end

@implementation JavaNioCharsetIOSCharset

- (JavaNioCharsetIOSCharset)initWithLong:(int64_t)long withNSString:(id)string withNSStringArray:(id)array withFloat:(float)float
{
  JavaNioCharsetCharset_initWithNSString_withNSStringArray_(self, string, array);
  self->nsEncoding_ = long;
  self->charBytes_ = float;
  return self;
}

- (id)newEncoder
{
  v2 = new_JavaNioCharsetIOSCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_(self, self->charBytes_);

  return v2;
}

- (id)newDecoder
{
  v2 = new_JavaNioCharsetIOSCharsetDecoder_initWithJavaNioCharsetCharset_(self);

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_init();
    v3 = JreStrongAssignAndConsume(&qword_100554A40, v2);
    v5 = +[JavaNioCharsetIOSCharset getDefaultCharset]_0(v3, v4);
    JreStrongAssign(&JavaNioCharsetIOSCharset_DEFAULT_CHARSET_, v5);
    atomic_store(1u, JavaNioCharsetIOSCharset__initialized);
  }
}

+ (JavaNioCharsetIOSCharset)getDefaultCharset
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"file.encoding", a2);
  if (PropertyWithNSString)
  {
    return JavaNioCharsetCharset_forNameUEEWithNSString_(PropertyWithNSString);
  }

  return sub_10015D888(&unk_1003F75D8);
}

+ (uint64_t)getEncodings
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  if (qword_100554A48 != -1)
  {
    sub_10015D9C4();
  }

  return qword_100554A40;
}

@end