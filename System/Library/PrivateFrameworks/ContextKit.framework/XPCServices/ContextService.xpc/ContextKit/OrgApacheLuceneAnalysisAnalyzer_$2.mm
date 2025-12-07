@interface OrgApacheLuceneAnalysisAnalyzer_$2
- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string;
- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)components;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_$2

- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string
{
  v5 = sub_100010948(analyzer);
  v7 = JavaUtilMap_class_(v5, v6);
  if (!v5)
  {
    return 0;
  }

  if (([v7 isInstance:v5] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v5 getWithId:string];
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)components
{
  v8 = sub_100010948(analyzer);
  v10 = JavaUtilMap_class_(v8, v9);
  if (v8)
  {
    if (([v10 isInstance:v8] & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v8 = new_JavaUtilHashMap_init();
    sub_10001099C(analyzer, v8);
    if (!v8)
    {
      JreThrowNullPointerException();
    }
  }

  [(JavaUtilHashMap *)v8 putWithId:string withId:components];
}

@end