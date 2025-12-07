@interface OrgApacheLuceneUtilAttributeSource_$1
- (id)computeValueWithIOSClass:(id)class;
@end

@implementation OrgApacheLuceneUtilAttributeSource_$1

- (id)computeValueWithIOSClass:(id)class
{
  v4 = new_JavaUtilLinkedHashSet_init();
  do
  {
    if (!class || (v5 = [class getInterfaces]) == 0)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    v7 = (v5 + 24);
    v8 = v5 + 24 + 8 * *(v5 + 8);
    while (v7 < v8)
    {
      v10 = *v7++;
      v9 = v10;
      v5 = OrgApacheLuceneUtilAttribute_class_(v5, v6);
      if (v10 != v5)
      {
        v5 = [OrgApacheLuceneUtilAttribute_class_(v5 v6)];
        if (v5)
        {
          if (!v9)
          {
            goto LABEL_14;
          }

          v5 = -[JavaUtilHashSet addWithId:](v4, "addWithId:", [v9 asSubclass:{OrgApacheLuceneUtilAttribute_class_(v5, v6)}]);
        }
      }
    }

    class = [class getSuperclass];
  }

  while (class);
  v11 = [IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v4 size] type:IOSClass_class_()];

  return [(JavaUtilAbstractCollection *)v4 toArrayWithNSObjectArray:v11];
}

@end