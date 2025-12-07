@interface OrgApacheLuceneUtilNamedSPILoader
- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)class;
- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)class withJavaLangClassLoader:(id)loader;
- (id)availableServices;
- (id)iterator;
- (id)lookupWithNSString:(id)string;
- (void)__javaClone;
- (void)dealloc;
- (void)reloadWithJavaLangClassLoader:(id)loader;
@end

@implementation OrgApacheLuceneUtilNamedSPILoader

- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)class
{
  v5 = JavaUtilCollections_emptyMap(self, a2);
  JreVolatileStrongAssign(&self->services_, v5);
  JreStrongAssign(&self->clazz_, class);
  [(OrgApacheLuceneUtilNamedSPILoader *)self reloadWithJavaLangClassLoader:0];
  return self;
}

- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)class withJavaLangClassLoader:(id)loader
{
  v7 = JavaUtilCollections_emptyMap(self, a2);
  JreVolatileStrongAssign(&self->services_, v7);
  JreStrongAssign(&self->clazz_, class);
  [(OrgApacheLuceneUtilNamedSPILoader *)self reloadWithJavaLangClassLoader:loader];
  return self;
}

- (void)reloadWithJavaLangClassLoader:(id)loader
{
  p_services = &self->services_;
  v5 = atomic_load(&self->services_);
  v6 = new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(v5);
  clazz = self->clazz_;
  if (!clazz)
  {
    JreThrowNullPointerException();
  }

  v9 = v6;
  if (![(IOSClass *)clazz isEqual:OrgApacheLuceneCodecsCodec_class_(v6, v7)])
  {
    v13 = [(IOSClass *)self->clazz_ isEqual:OrgApacheLuceneCodecsPostingsFormat_class_()];
    if (v13)
    {
      v15 = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_init();
      v11 = v15;
      if (qword_100554888 == -1)
      {
        if (!v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_10013AD00();
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (([qword_100554880 isInstance:v11] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_11:
      v12 = @"AAPL50";
      goto LABEL_17;
    }

    if (![(IOSClass *)self->clazz_ isEqual:OrgApacheLuceneCodecsDocValuesFormat_class_(v13, v14)])
    {
      goto LABEL_18;
    }

    v17 = new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesFormat_init();
    v11 = v17;
    if (qword_100554888 == -1)
    {
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_10013AD00();
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    if (([qword_100554880 isInstance:v11] & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    v12 = @"Lucene50";
    goto LABEL_17;
  }

  v10 = new_OrgApacheLuceneCodecsLucene53AAPL53Codec_init();
  v11 = v10;
  if (qword_100554888 != -1)
  {
    sub_10013AD00();
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ([qword_100554880 isInstance:v11])
    {
      goto LABEL_6;
    }

LABEL_22:
    JreThrowClassCastException();
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  v12 = @"AAPL53";
LABEL_17:
  [(JavaUtilHashMap *)v9 putWithId:v12 withId:v11];
LABEL_18:
  v18 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(v9, v16);

  JreVolatileStrongAssign(p_services, v18);
}

- (id)lookupWithNSString:(id)string
{
  v4 = atomic_load(&self->services_);
  if (!v4)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  result = [v4 getWithId:?];
  if (!result)
  {
    clazz = self->clazz_;
    if (clazz)
    {
      [(IOSClass *)clazz getName];
      [(OrgApacheLuceneUtilNamedSPILoader *)self availableServices];
      v14 = JreStrcat("$$$$$@", v7, v8, v9, v10, v11, v12, v13, @"An SPI class of type ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    goto LABEL_5;
  }

  return result;
}

- (id)availableServices
{
  v3 = atomic_load(&self->services_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 keySet];
}

- (id)iterator
{
  v2 = atomic_load(&self->services_);
  if (!v2 || (v3 = [v2 values]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (void)dealloc
{
  JreReleaseVolatile(&self->services_);

  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilNamedSPILoader;
  [(OrgApacheLuceneUtilNamedSPILoader *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilNamedSPILoader;
  [(OrgApacheLuceneUtilNamedSPILoader *)&v3 __javaClone];
  JreRetainVolatile(&self->services_);
}

@end