@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader
- (id)clone;
- (id)documentWithInt:(int)int;
- (id)getChildResources;
- (id)getMergeInstance;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
- (void)visitDocumentWithInt:(int)int withOrgApacheLuceneIndexStoredFieldVisitor:(id)visitor;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader

- (void)close
{
  if (!self->closed_)
  {
    fieldsStream = self->fieldsStream_;
    v3 = [IOSObjectArray arrayWithObjects:&fieldsStream count:1 type:JavaIoCloseable_class_(self, a2)];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
    self->closed_ = 1;
  }
}

- (id)documentWithInt:(int)int
{
  state = self->state_;
  if (!state)
  {
    goto LABEL_9;
  }

  v5 = *&int;
  if ([(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)state containsWithInt:?])
  {
    goto LABEL_6;
  }

  fieldsStream = self->fieldsStream_;
  if (!fieldsStream || (indexReader = self->indexReader_) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)fieldsStream seekWithLong:[(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)indexReader getStartPointerWithInt:v5]];
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)self->state_ resetWithInt:v5];
LABEL_6:
  v8 = self->state_;

  return [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState *)v8 documentWithInt:v5];
}

- (void)visitDocumentWithInt:(int)int withOrgApacheLuceneIndexStoredFieldVisitor:(id)visitor
{
  selfCopy = self;
  v6 = [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *)self documentWithInt:*&int];
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = v6;
  if (v6[5] >= 1)
  {
    v8 = 0;
    v9 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
    v10 = &OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_BITS_;
    v38 = selfCopy;
    while (1)
    {
      v11 = *(v7 + 1);
      if (!v11)
      {
        break;
      }

      readVLong = [v11 readVLong];
      if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000A5928();
      }

      v13 = *(&selfCopy->super.super.isa + v9[638]);
      if (!v13)
      {
        break;
      }

      v14 = [v13 fieldInfoWithInt:readVLong >> *v10];
      if (atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire))
      {
        if (!visitor)
        {
          break;
        }
      }

      else
      {
        sub_1000A5928();
        if (!visitor)
        {
          break;
        }
      }

      v15 = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ & readVLong;
      v16 = [objc_msgSend(visitor needsFieldWithOrgApacheLuceneIndexFieldInfo:{v14), "ordinal"}];
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = *(v7 + 1);
          if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000A5928();
          }

          v18 = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ & v15;
          if ((OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ & v15) > 2)
          {
            switch(v18)
            {
              case 3u:
                OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZFloatWithOrgApacheLuceneStoreDataInput_(v17);
                break;
              case 4u:
                OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readTLongWithOrgApacheLuceneStoreDataInput_(v17);
                break;
              case 5u:
                OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZDoubleWithOrgApacheLuceneStoreDataInput_(v17);
                break;
              default:
                goto LABEL_54;
            }
          }

          else if (v18 >= 2)
          {
            if (v18 != 2)
            {
LABEL_54:
              JavaLangInteger_toHexStringWithInt_(v15);
              v36 = JreStrcat("$$", v29, v30, v31, v32, v33, v34, v35, @"Unknown type flag: ");
              v37 = new_JavaLangAssertionError_initWithId_(v36);
              objc_exception_throw(v37);
            }

            if (!v17)
            {
              break;
            }

            [v17 readZInt];
          }

          else
          {
            if (!v17)
            {
              break;
            }

            [v17 skipBytesWithLong:{objc_msgSend(v17, "readVInt")}];
          }
        }

        else if (v16 == 2)
        {
          return;
        }
      }

      else
      {
        v19 = v10;
        v20 = *(v7 + 1);
        if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000A5928();
        }

        v21 = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ & v15;
        if ((OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ & v15) > 2)
        {
          switch(v21)
          {
            case 3:
              *&v28 = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZFloatWithOrgApacheLuceneStoreDataInput_(v20);
              [visitor floatFieldWithOrgApacheLuceneIndexFieldInfo:v14 withFloat:v28];
              break;
            case 4:
              [visitor longFieldWithOrgApacheLuceneIndexFieldInfo:v14 withLong:OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readTLongWithOrgApacheLuceneStoreDataInput_(v20)];
              break;
            case 5:
              [visitor doubleFieldWithOrgApacheLuceneIndexFieldInfo:v14 withDouble:OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZDoubleWithOrgApacheLuceneStoreDataInput_(v20)];
              break;
            default:
              goto LABEL_54;
          }
        }

        else if (v21)
        {
          if (v21 == 1)
          {
            if (!v20)
            {
              break;
            }

            readVInt = [v20 readVInt];
            v23 = [IOSByteArray arrayWithLength:readVInt];
            [v20 readBytesWithByteArray:v23 withInt:0 withInt:readVInt];
            v24 = v23;
            v9 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
            [visitor binaryFieldWithOrgApacheLuceneIndexFieldInfo:v14 withByteArray:v24];
          }

          else
          {
            if (v21 != 2)
            {
              goto LABEL_54;
            }

            if (!v20)
            {
              break;
            }

            [visitor intFieldWithOrgApacheLuceneIndexFieldInfo:v14 withInt:{objc_msgSend(v20, "readZInt")}];
          }
        }

        else
        {
          if (!v20)
          {
            break;
          }

          readVInt2 = [v20 readVInt];
          v26 = [IOSByteArray arrayWithLength:readVInt2];
          [v20 readBytesWithByteArray:v26 withInt:0 withInt:readVInt2];
          v27 = v26;
          v9 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
          [visitor stringFieldWithOrgApacheLuceneIndexFieldInfo:v14 withByteArray:v27];
        }

        v10 = v19;
        selfCopy = v38;
      }

      if (++v8 >= v7[5])
      {
        return;
      }
    }

LABEL_53:
    JreThrowNullPointerException();
  }
}

- (id)clone
{
  sub_1000A3C90(self);
  v3 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader alloc];
  sub_1000A3510(v3, self, 0);

  return v3;
}

- (id)getMergeInstance
{
  sub_1000A3C90(self);
  v3 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader alloc];
  sub_1000A3510(v3, self, 1);

  return v3;
}

- (int64_t)ramBytesUsed
{
  indexReader = self->indexReader_;
  if (!indexReader)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)indexReader ramBytesUsed];
}

- (id)getChildResources
{
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"stored field index", self->indexReader_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *)&v3 dealloc];
}

@end