@interface OrgApacheLuceneStoreMMapDirectory_$2_$1
- (id)run;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreMMapDirectory_$2_$1

- (id)run
{
  v3 = self->val$buffer_;
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [-[JavaNioByteBuffer getClass](v3 "getClass")];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 setAccessibleWithBoolean:1];
  v8 = [v5 invokeWithId:self->val$buffer_ withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_(v6, v7))}];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v8 "getClass")];
    if (v10)
    {
      [v10 invokeWithId:v9 withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_(v10, v11))}];
      return 0;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreMMapDirectory__2__1;
  [(OrgApacheLuceneStoreMMapDirectory_$2_$1 *)&v3 dealloc];
}

@end