@interface OrgApacheLuceneSearchSortField
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsScores;
- (id)description;
- (id)getComparatorWithInt:(int)int withInt:(int)withInt;
- (unint64_t)hash;
- (void)dealloc;
- (void)setMissingValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchSortField

- (void)setMissingValueWithId:(id)id
{
  type = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  if (type == qword_100557690)
  {
    goto LABEL_20;
  }

  v6 = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  if (v6 == qword_1005576C0)
  {
LABEL_20:
    if (OrgApacheLuceneSearchSortField_STRING_FIRST_ != id && OrgApacheLuceneSearchSortField_STRING_LAST_ != id)
    {
      v11 = @"For STRING type, missing value must be either STRING_FIRST or STRING_LAST";
LABEL_28:
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
      objc_exception_throw(v13);
    }
  }

  else
  {
    v7 = self->type_;
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    if (v7 != qword_100557698)
    {
      v8 = self->type_;
      if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100055468();
      }

      if (v8 != qword_1005576A0)
      {
        v9 = self->type_;
        if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100055468();
        }

        if (v9 != qword_1005576A8)
        {
          v10 = self->type_;
          if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100055468();
          }

          if (v10 != qword_1005576B0)
          {
            v11 = @"Missing value only works for numeric or STRING types";
            goto LABEL_28;
          }
        }
      }
    }
  }

  JreStrongAssign(&self->missingValue_, id);
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  ordinal = [(JavaLangEnum *)self->type_ ordinal];
  if (ordinal > 4)
  {
    if (ordinal <= 6)
    {
      if (ordinal == 5)
      {
        v5 = @"<long: ";
      }

      else
      {
        v5 = @"<double: ";
      }

LABEL_28:
      v12 = [(JavaLangStringBuilder *)v3 appendWithNSString:v5];
      if (v12)
      {
        v7 = [v12 appendWithNSString:self->field_];
        if (v7)
        {
          v6 = @">";
          goto LABEL_31;
        }
      }

LABEL_39:
      JreThrowNullPointerException();
    }

    switch(ordinal)
    {
      case 7:
        v8 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"<custom:"];
        if (v8)
        {
          v9 = [v8 appendWithNSString:self->field_];
          if (v9)
          {
            v10 = [v9 appendWithNSString:@": "];
            if (v10)
            {
              v11 = [v10 appendWithId:self->comparatorSource_];
              if (v11)
              {
                [v11 appendWithChar:62];
                goto LABEL_32;
              }
            }
          }
        }

        goto LABEL_39;
      case 8:
        v5 = @"<string_val: ";
        goto LABEL_28;
      case 10:
        v5 = @"<rewriteable: ";
        goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (ordinal > 1)
  {
    if (ordinal == 2)
    {
      v5 = @"<string: ";
    }

    else if (ordinal == 3)
    {
      v5 = @"<int: ";
    }

    else
    {
      v5 = @"<float: ";
    }

    goto LABEL_28;
  }

  if (!ordinal)
  {
    v6 = @"<score>";
    goto LABEL_17;
  }

  if (ordinal != 1)
  {
LABEL_27:
    v5 = @"<???: ";
    goto LABEL_28;
  }

  v6 = @"<doc>";
LABEL_17:
  v7 = v3;
LABEL_31:
  [(JavaLangStringBuilder *)v7 appendWithNSString:v6];
LABEL_32:
  if (self->reverse_)
  {
    [(JavaLangStringBuilder *)v3 appendWithChar:33];
  }

  if (self->missingValue_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@" missingValue="];
    [(JavaLangStringBuilder *)v3 appendWithId:self->missingValue_];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = OrgApacheLuceneUtilStringHelper_equalsWithNSString_withNSString_(*(equal + 3), self->field_);
  if (v5)
  {
    if (*(equal + 4) == self->type_ && *(equal + 8) == self->reverse_)
    {
      v6 = *(equal + 5);
      comparatorSource = self->comparatorSource_;
      if (v6)
      {

        LOBYTE(v5) = [v6 isEqual:comparatorSource];
      }

      else
      {
        LOBYTE(v5) = comparatorSource == 0;
      }

      return v5;
    }

LABEL_12:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  type = self->type_;
  if (!type)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaLangEnum *)type hash];
  v5 = ([JavaLangBoolean_valueOfWithBoolean_(self->reverse_) hash] + 879060445) ^ v4 ^ 0xAF5998BB;
  field = self->field_;
  if (field)
  {
    v5 += [(NSString *)field hash]^ 0xFF5685DD;
  }

  comparatorSource = self->comparatorSource_;
  if (comparatorSource)
  {
    v5 += [(OrgApacheLuceneSearchFieldComparatorSource *)comparatorSource hash];
  }

  return v5;
}

- (id)getComparatorWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  ordinal = [(JavaLangEnum *)self->type_ ordinal];
  if (ordinal <= 4)
  {
    if (ordinal > 1)
    {
      if (ordinal == 2)
      {
        v18 = new_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(v5, self->field_, self->missingValue_ == OrgApacheLuceneSearchSortField_STRING_LAST_);
        goto LABEL_27;
      }

      if (ordinal == 3)
      {
        p_missingValue = &self->missingValue_;
        missingValue = self->missingValue_;
        v26 = p_missingValue[1];
        objc_opt_class();
        if (!missingValue || (objc_opt_isKindOfClass() & 1) != 0)
        {
          v18 = new_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(v5, v26, missingValue);
          goto LABEL_27;
        }
      }

      else
      {
        v17 = &self->missingValue_;
        v15 = self->missingValue_;
        v16 = v17[1];
        objc_opt_class();
        if (!v15 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          v18 = new_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(v5, v16, v15);
LABEL_27:

          return v18;
        }
      }

LABEL_34:
      JreThrowClassCastException();
    }

    if (!ordinal)
    {
      v18 = new_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(v5);
      goto LABEL_27;
    }

    if (ordinal == 1)
    {
      v18 = new_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(v5);
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if (ordinal <= 6)
  {
    if (ordinal == 5)
    {
      v24 = &self->missingValue_;
      v22 = self->missingValue_;
      v23 = v24[1];
      objc_opt_class();
      if (!v22 || (objc_opt_isKindOfClass() & 1) != 0)
      {
        v18 = new_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(v5, v23, v22);
        goto LABEL_27;
      }
    }

    else
    {
      v21 = &self->missingValue_;
      v19 = self->missingValue_;
      v20 = v21[1];
      objc_opt_class();
      if (!v19 || (objc_opt_isKindOfClass() & 1) != 0)
      {
        v18 = new_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(v5, v20, v19);
        goto LABEL_27;
      }
    }

    goto LABEL_34;
  }

  if (ordinal != 7)
  {
    if (ordinal == 8)
    {
      v18 = new_OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(v5, self->field_, self->missingValue_ == OrgApacheLuceneSearchSortField_STRING_LAST_);
      goto LABEL_27;
    }

    if (ordinal == 10)
    {
      v32 = @"SortField needs to be rewritten through Sort.rewrite(..) and SortField.rewrite(..)";
      goto LABEL_39;
    }

LABEL_38:
    v32 = JreStrcat("$@", v8, v9, v10, v11, v12, v13, v14, @"Illegal sort type: ");
LABEL_39:
    v33 = new_JavaLangIllegalStateException_initWithNSString_(v32);
    objc_exception_throw(v33);
  }

  comparatorSource = self->comparatorSource_;
  if (!comparatorSource)
  {
    JreThrowNullPointerException();
  }

  field = self->field_;
  reverse = self->reverse_;

  return [(OrgApacheLuceneSearchFieldComparatorSource *)comparatorSource newComparatorWithNSString:field withInt:v5 withInt:v4 withBoolean:reverse];
}

- (BOOL)needsScores
{
  type = self->type_;
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  return type == OrgApacheLuceneSearchSortField_TypeEnum_values_[0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSortField;
  [(OrgApacheLuceneSearchSortField *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    v2 = OrgApacheLuceneSearchSortField_TypeEnum_values_[0];
    v3 = [OrgApacheLuceneSearchSortField alloc];
    OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(v3, 0, v2);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_SCORE_, v3);
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100055468();
    }

    v4 = qword_100557688;
    v5 = [OrgApacheLuceneSearchSortField alloc];
    OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(v5, 0, v4);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_DOC_, v5);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_FIRST_, [OrgApacheLuceneSearchSortField__1 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_LAST_, [OrgApacheLuceneSearchSortField__2 alloc]);
    atomic_store(1u, OrgApacheLuceneSearchSortField__initialized);
  }
}

@end