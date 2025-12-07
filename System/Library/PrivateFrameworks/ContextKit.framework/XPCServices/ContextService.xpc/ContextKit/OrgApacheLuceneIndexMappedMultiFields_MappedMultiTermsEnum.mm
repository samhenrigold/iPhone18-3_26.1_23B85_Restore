@interface OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum
- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum

- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int
{
  v4 = *&int;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    p_field = &self->field_;
LABEL_8:
    enum = new_OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(*p_field, self->mergeState_);
    goto LABEL_9;
  }

  objc_opt_class();
  if (!enum)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(enum + 7);
  if (!v7)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  p_field = &self->field_;
  if (([v7 isEqual:self->field_] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  in = self->super.in_;
  if (!in || !enum)
  {
    goto LABEL_14;
  }

  v10 = [(OrgApacheLuceneIndexTermsEnum *)in postingsWithOrgApacheLuceneIndexPostingsEnum:*(enum + 6) withInt:v4];
  objc_opt_class();
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    JreThrowClassCastException();
  }

  [enum resetWithOrgApacheLuceneIndexMultiPostingsEnum:v10];
  return enum;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum *)&v3 dealloc];
}

@end