@interface OrgApacheLuceneIndexFieldInfo
- (BOOL)checkConsistency;
- (BOOL)hasNorms;
- (id)getAttributeWithNSString:(id)string;
- (id)putAttributeWithNSString:(id)string withNSString:(id)sString;
- (void)dealloc;
- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)enum;
- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)enum;
- (void)setOmitsNorms;
- (void)setStorePayloads;
- (void)updateWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a5 withOrgApacheLuceneIndexIndexOptionsEnum:(id)enum;
@end

@implementation OrgApacheLuceneIndexFieldInfo

- (BOOL)checkConsistency
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    if (self->storeTermVector_ || self->storePayloads_ || self->omitNorms_)
    {
      v11 = @"non-indexed field '";
LABEL_21:
      v14 = JreStrcat("$$$", a2, v2, v3, v4, v5, v6, v7, v11);
      v15 = new_JavaLangIllegalStateException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }
  }

  else
  {
    v10 = self->indexOptions_;
    if (!v10)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if ([(JavaLangEnum *)v10 compareToWithId:qword_100557388]< 0 && self->storePayloads_)
    {
      v11 = @"indexed field '";
      goto LABEL_21;
    }
  }

  if (self->dvGen_ != -1)
  {
    docValuesType = self->docValuesType_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (docValuesType == OrgApacheLuceneIndexDocValuesTypeEnum_values_[0])
    {
      v11 = @"field '";
      goto LABEL_21;
    }
  }

  return 1;
}

- (void)updateWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a5 withOrgApacheLuceneIndexIndexOptionsEnum:(id)enum
{
  if (!enum)
  {
    v21 = JreStrcat("$$$", a2, boolean, withBoolean, a5, 0, v6, v7, @"IndexOptions cannot be null (field: ");
    v22 = new_JavaLangNullPointerException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  withBooleanCopy = withBoolean;
  p_indexOptions = &self->indexOptions_;
  indexOptions = self->indexOptions_;
  if (indexOptions != enum)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
    {
      v17 = &self->indexOptions_;
      enumCopy2 = enum;
LABEL_14:
      JreStrongAssign(v17, enumCopy2);
      goto LABEL_15;
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] != enum)
    {
      if (!*p_indexOptions)
      {
        goto LABEL_32;
      }

      v15 = [*p_indexOptions compareToWithId:enum];
      enumCopy2 = enum;
      if ((v15 & 0x80000000) != 0)
      {
        enumCopy2 = *p_indexOptions;
      }

      v17 = &self->indexOptions_;
      goto LABEL_14;
    }
  }

LABEL_15:
  v18 = *p_indexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v18 != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    self->storeTermVector_ |= boolean;
    self->storePayloads_ |= a5;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] != enum && self->omitNorms_ != withBooleanCopy)
    {
      self->omitNorms_ = 1;
    }
  }

  v19 = *p_indexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v19 == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    goto LABEL_30;
  }

  v20 = *p_indexOptions;
  if (!v20)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (([v20 compareToWithId:qword_100557388] & 0x80000000) != 0)
  {
LABEL_30:
    self->storePayloads_ = 0;
  }
}

- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)enum
{
  if (!enum)
  {
    v12 = JreStrcat("$$$", a2, 0, v3, v4, v5, v6, v7, @"DocValuesType cannot be null (field: ");
    v13 = new_JavaLangNullPointerException_initWithNSString_(v12);
    goto LABEL_14;
  }

  p_docValuesType = &self->docValuesType_;
  docValuesType = self->docValuesType_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  if (docValuesType != OrgApacheLuceneIndexDocValuesTypeEnum_values_[0])
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (OrgApacheLuceneIndexDocValuesTypeEnum_values_[0] != enum && *p_docValuesType != enum)
    {
      v14 = JreStrcat("$@$@$$C", a2, enum, v3, v4, v5, v6, v7, @"cannot change DocValues type from ");
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
LABEL_14:
      objc_exception_throw(v13);
    }
  }

  JreStrongAssign(&self->docValuesType_, enum);
}

- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)enum
{
  p_indexOptions = &self->indexOptions_;
  indexOptions = self->indexOptions_;
  if (indexOptions != enum)
  {
    enumCopy = enum;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
    {
LABEL_11:
      JreStrongAssign(p_indexOptions, enumCopy);
      goto LABEL_12;
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] != enumCopy)
    {
      if (!*p_indexOptions)
      {
        goto LABEL_21;
      }

      if ([(JavaLangEnum *)*p_indexOptions compareToWithId:enumCopy]< 0)
      {
        enumCopy = *p_indexOptions;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  v7 = *p_indexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v7 == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    goto LABEL_19;
  }

  v8 = *p_indexOptions;
  if (!v8)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if ([(JavaLangEnum *)v8 compareToWithId:qword_100557388]< 0)
  {
LABEL_19:
    self->storePayloads_ = 0;
  }
}

- (void)setStorePayloads
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    v4 = self->indexOptions_;
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (([(JavaLangEnum *)v4 compareToWithId:qword_100557388]& 0x80000000) == 0)
    {
      self->storePayloads_ = 1;
    }
  }
}

- (void)setOmitsNorms
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot omit norms: this field is not indexed");
    objc_exception_throw(v4);
  }

  self->omitNorms_ = 1;
}

- (BOOL)hasNorms
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  return indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0] && !self->omitNorms_;
}

- (id)getAttributeWithNSString:(id)string
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes getWithId:string];
}

- (id)putAttributeWithNSString:(id)string withNSString:(id)sString
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes putWithId:string withId:sString];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfo;
  [(OrgApacheLuceneIndexFieldInfo *)&v3 dealloc];
}

@end