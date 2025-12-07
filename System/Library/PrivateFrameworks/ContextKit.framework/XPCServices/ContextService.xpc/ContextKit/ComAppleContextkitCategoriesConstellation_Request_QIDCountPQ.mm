@interface ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ
- (ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int;
- (IOSObjectArray)popAllCountsFromArray;
- (void)addItemWithNSString:(id)string withInt:(int)int;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ

- (IOSObjectArray)popAllCountsFromArray
{
  v2 = [self size];
  if (qword_100554430 != -1)
  {
    sub_1000C2D84();
  }

  v3 = [IOSObjectArray arrayWithLength:v2 type:qword_100554428];
  size = v3->super.size_;
  v5 = size - 1;
  if (size >= 1)
  {
    do
    {
      IOSObjectArray_Set(v3, v5--, [self pop]);
    }

    while (v5 != -1);
  }

  return v3;
}

- (ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int
{
  v4 = *&int;
  JreStrongAssign(&self->this$0_, request);
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, v4, v6, v7, v8, v9, v10, v11);
  return self;
}

- (void)addItemWithNSString:(id)string withInt:(int)int
{
  qidToCategoryIdTreasureMap = self->this$0_->this$0_->qidToCategoryIdTreasureMap_;
  if (!qidToCategoryIdTreasureMap)
  {
    JreThrowNullPointerException();
  }

  v8 = [(ComAppleContextkitCategoriesQIDCategoryProvider *)qidToCategoryIdTreasureMap categoryIdsForQIDWithNSString:?];
  if (v8 && ([v8 isEmpty] & 1) == 0)
  {
    v9 = [ComAppleContextkitCategoriesConstellation_QIDCount alloc];
    JreStrongAssign(&v9->qid_, string);
    v9->count_ = int;
    v10 = v9;

    [(OrgApacheLuceneUtilPriorityQueue *)self insertWithOverflowWithId:v10];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end