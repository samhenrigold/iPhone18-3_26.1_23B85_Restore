@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter
- (void)dealloc;
- (void)writeWithOrgApacheLuceneIndexFields:(id)fields;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter

- (void)writeWithOrgApacheLuceneIndexFields:(id)fields
{
  v82 = new_JavaUtilHashMap_init();
  v81 = new_JavaUtilHashMap_init();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  obj = fields;
  v80 = [fields countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v80)
  {
    v78 = *v88;
    do
    {
      for (i = 0; i != v80; i = i + 1)
      {
        if (*v88 != v78)
        {
          objc_enumerationMutation(obj);
        }

        writeState = self->writeState_;
        if (!writeState)
        {
          JreThrowNullPointerException();
        }

        fieldInfos = writeState->fieldInfos_;
        if (!fieldInfos)
        {
          JreThrowNullPointerException();
        }

        v8 = *(*(&v87 + 1) + 8 * i);
        v9 = [(OrgApacheLuceneIndexFieldInfos *)fieldInfos fieldInfoWithNSString:v8];
        v10 = [(OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat *)self->this$0_ getPostingsFormatForFieldWithNSString:v8];
        v18 = v10;
        if (!v10)
        {
          v70 = JreStrcat("$$C", v11, v12, v13, v14, v15, v16, v17, @"invalid null PostingsFormat for field=");
          v71 = new_JavaLangIllegalStateException_initWithNSString_(v70);
          objc_exception_throw(v71);
        }

        getName = [v10 getName];
        v20 = [(JavaUtilHashMap *)v82 getWithId:v18];
        if (v20)
        {
          if (![(JavaUtilHashMap *)v81 containsKeyWithId:getName])
          {
            v76 = JreStrcat("$$$I", v21, v22, v23, v24, v25, v26, v27, @"no suffix for format name: ");
            v77 = new_JavaLangIllegalStateException_initWithNSString_(v76);
            objc_exception_throw(v77);
          }
        }

        else
        {
          v28 = [(JavaUtilHashMap *)v81 getWithId:getName];
          if (v28)
          {
            LODWORD(v28) = [v28 intValue] + 1;
          }

          v29 = JavaLangInteger_valueOfWithInt_(v28);
          [(JavaUtilHashMap *)v81 putWithId:getName withId:v29];
          if (!v29)
          {
            JreThrowNullPointerException();
          }

          segmentSuffix = self->writeState_->segmentSuffix_;
          JavaLangInteger_toStringWithInt_([(JavaLangInteger *)v29 intValue]);
          v38 = JreStrcat("$C$", v31, v32, v33, v34, v35, v36, v37, getName);
          OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_getFullSegmentSuffixWithNSString_withNSString_withNSString_(v8, segmentSuffix, v38);
          v39 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup alloc];
          v40 = new_JavaUtilTreeSet_init();
          JreStrongAssignAndConsume(&v39->fields_, v40);
          v20 = v39;
          v41 = new_OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_(self->writeState_, v38);
          JreStrongAssignAndConsume(&v20->state_, v41);
          v20->suffix_ = [(JavaLangInteger *)v29 intValue];
          [(JavaUtilHashMap *)v82 putWithId:v18 withId:v20];
        }

        fields = v20->fields_;
        if (!fields)
        {
          JreThrowNullPointerException();
        }

        [(JavaUtilSet *)fields addWithId:v8];
        if (!v9)
        {
          JreThrowNullPointerException();
        }

        if ([v9 putAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_PER_FIELD_FORMAT_KEY_ withNSString:getName])
        {
          v74 = JreStrcat("$$$$$$$$", v43, v44, v45, v46, v47, v48, v49, @"found existing value for ");
          v75 = new_JavaLangIllegalStateException_initWithNSString_(v74);
          objc_exception_throw(v75);
        }

        if ([v9 putAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_PER_FIELD_SUFFIX_KEY_ withNSString:JavaLangInteger_toStringWithInt_(v20->suffix_)])
        {
          v72 = JreStrcat("$$$$$$$I", v50, v51, v52, v53, v54, v55, v56, @"found existing value for ");
          v73 = new_JavaLangIllegalStateException_initWithNSString_(v72);
          objc_exception_throw(v73);
        }
      }

      v80 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v80);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  entrySet = [(JavaUtilHashMap *)v82 entrySet];
  v58 = entrySet;
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  v59 = [entrySet countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v59)
  {
    v60 = *v84;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v84 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v62 = *(*(&v83 + 1) + 8 * j);
        if (!v62)
        {
          JreThrowNullPointerException();
        }

        getKey = [*(*(&v83 + 1) + 8 * j) getKey];
        getValue = [v62 getValue];
        v65 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter__1 alloc];
        JreStrongAssign(&v65->val$group_, getValue);
        OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(v65, obj);
        v66 = v65;
        if (!getKey || !getValue || (v67 = v66, v68 = [getKey fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:getValue[3]], (toClose = self->toClose_) == 0) || (-[JavaUtilList addWithId:](toClose, "addWithId:", v68), !v68))
        {
          JreThrowNullPointerException();
        }

        [v68 writeWithOrgApacheLuceneIndexFields:v67];
      }

      v59 = [v58 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v59);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter;
  [(OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter *)&v3 dealloc];
}

@end