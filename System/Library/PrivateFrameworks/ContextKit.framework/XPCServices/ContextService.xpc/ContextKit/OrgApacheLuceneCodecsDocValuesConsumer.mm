@interface OrgApacheLuceneCodecsDocValuesConsumer
- (void)mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list withJavaUtilList:(id)utilList;
- (void)mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list withJavaUtilList:(id)utilList;
- (void)mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list;
- (void)mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list;
- (void)mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list;
- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)state;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer

- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)state
{
  if (!state)
  {
    goto LABEL_135;
  }

  v4 = *(state + 6);
  if (!v4)
  {
    goto LABEL_135;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  while (v5 < v6)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8)
    {
      [v7 checkIntegrity];
    }
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v9 = *(state + 2);
  if (!v9)
  {
LABEL_135:
    JreThrowNullPointerException();
  }

  obj = *(state + 2);
  v101 = [v9 countByEnumeratingWithState:&v102 objects:v106 count:16];
  if (v101)
  {
    v100 = *v103;
    do
    {
      for (i = 0; i != v101; i = i + 1)
      {
        if (*v103 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v102 + 1) + 8 * i);
        if (!v11)
        {
          goto LABEL_135;
        }

        getDocValuesType = [*(*(&v102 + 1) + 8 * i) getDocValuesType];
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10005B5A0();
        }

        if (getDocValuesType != OrgApacheLuceneIndexDocValuesTypeEnum_values_[0])
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (getDocValuesType == qword_100557A78)
          {
            v99 = i;
            v35 = new_JavaUtilArrayList_init();
            v36 = new_JavaUtilArrayList_init();
            v37 = *(state + 6);
            if (!v37)
            {
              goto LABEL_135;
            }

            v38 = v36;
            v39 = 0;
            while (v39 < *(v37 + 8))
            {
              v40 = *(v37 + 24 + 8 * v39);
              if (!v40)
              {
                goto LABEL_63;
              }

              v41 = *(state + 7);
              if (!v41)
              {
                goto LABEL_135;
              }

              v42 = *(v41 + 8);
              if (v39 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v39);
              }

              v43 = *(v41 + 24 + 8 * v39);
              if (!v43)
              {
                goto LABEL_135;
              }

              v44 = [v43 fieldInfoWithNSString:*(v11 + 8)];
              if (!v44)
              {
                goto LABEL_63;
              }

              v45 = v44;
              getDocValuesType2 = [v44 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (getDocValuesType2 != qword_100557A78 || (v49 = [v40 getNumericWithOrgApacheLuceneIndexFieldInfo:v45], v51 = objc_msgSend(v40, "getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:", v45), !v49))
              {
LABEL_63:
                v47 = OrgApacheLuceneIndexDocValues_emptyNumeric();
                v48 = *(state + 12);
                if (!v48)
                {
                  goto LABEL_135;
                }

                v49 = v47;
                v50 = *(v48 + 8);
                if (v39 >= v50)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v50, v39);
                }

                v51 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(*(v48 + 12 + 4 * v39));
              }

              v52 = v51;
              [(JavaUtilArrayList *)v35 addWithId:v49];
              [(JavaUtilArrayList *)v38 addWithId:v52];
              ++v39;
              v37 = *(state + 6);
              if (!v37)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:state withJavaUtilList:v35 withJavaUtilList:v38];
LABEL_94:
            i = v99;
            continue;
          }

          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (getDocValuesType == qword_100557A80)
          {
            v99 = i;
            v53 = new_JavaUtilArrayList_init();
            v54 = new_JavaUtilArrayList_init();
            v55 = *(state + 6);
            if (!v55)
            {
              goto LABEL_135;
            }

            v56 = v54;
            v57 = 0;
            while (v57 < *(v55 + 8))
            {
              v58 = *(v55 + 24 + 8 * v57);
              if (!v58)
              {
                goto LABEL_84;
              }

              v59 = *(state + 7);
              if (!v59)
              {
                goto LABEL_135;
              }

              v60 = *(v59 + 8);
              if (v57 >= v60)
              {
                IOSArray_throwOutOfBoundsWithMsg(v60, v57);
              }

              v61 = *(v59 + 24 + 8 * v57);
              if (!v61)
              {
                goto LABEL_135;
              }

              v62 = [v61 fieldInfoWithNSString:*(v11 + 8)];
              if (!v62)
              {
                goto LABEL_84;
              }

              v63 = v62;
              getDocValuesType3 = [v62 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (getDocValuesType3 != qword_100557A80 || (v67 = [v58 getBinaryWithOrgApacheLuceneIndexFieldInfo:v63], v69 = objc_msgSend(v58, "getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:", v63), !v67))
              {
LABEL_84:
                v65 = OrgApacheLuceneIndexDocValues_emptyBinary();
                v66 = *(state + 12);
                if (!v66)
                {
                  goto LABEL_135;
                }

                v67 = v65;
                v68 = *(v66 + 8);
                if (v57 >= v68)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v68, v57);
                }

                v69 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(*(v66 + 12 + 4 * v57));
              }

              v70 = v69;
              [(JavaUtilArrayList *)v53 addWithId:v67];
              [(JavaUtilArrayList *)v56 addWithId:v70];
              ++v57;
              v55 = *(state + 6);
              if (!v55)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:state withJavaUtilList:v53 withJavaUtilList:v56];
            goto LABEL_94;
          }

          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (getDocValuesType == qword_100557A88)
          {
            v71 = new_JavaUtilArrayList_init();
            v72 = *(state + 6);
            if (!v72)
            {
              goto LABEL_135;
            }

            v73 = v71;
            v74 = 0;
            while (v74 < *(v72 + 8))
            {
              v75 = *(v72 + 24 + 8 * v74);
              if (!v75)
              {
                goto LABEL_106;
              }

              v76 = *(state + 7);
              if (!v76)
              {
                goto LABEL_135;
              }

              v77 = *(v76 + 8);
              if (v74 >= v77)
              {
                IOSArray_throwOutOfBoundsWithMsg(v77, v74);
              }

              v78 = *(v76 + 24 + 8 * v74);
              if (!v78)
              {
                goto LABEL_135;
              }

              v79 = [v78 fieldInfoWithNSString:*(v11 + 8)];
              if (!v79)
              {
                goto LABEL_106;
              }

              v80 = v79;
              getDocValuesType4 = [v79 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (getDocValuesType4 != qword_100557A88 || (v82 = [v75 getSortedWithOrgApacheLuceneIndexFieldInfo:v80]) == 0)
              {
LABEL_106:
                v82 = OrgApacheLuceneIndexDocValues_emptySorted();
              }

              [(JavaUtilArrayList *)v73 addWithId:v82];
              ++v74;
              v72 = *(state + 6);
              if (!v72)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:state withJavaUtilList:v73];
          }

          else
          {
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_10005B5A0();
            }

            if (getDocValuesType == qword_100557A98)
            {
              v83 = new_JavaUtilArrayList_init();
              v84 = *(state + 6);
              if (!v84)
              {
                goto LABEL_135;
              }

              v85 = v83;
              v86 = 0;
              while (v86 < *(v84 + 8))
              {
                v87 = *(v84 + 24 + 8 * v86);
                if (!v87)
                {
                  goto LABEL_125;
                }

                v88 = *(state + 7);
                if (!v88)
                {
                  goto LABEL_135;
                }

                v89 = *(v88 + 8);
                if (v86 >= v89)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v89, v86);
                }

                v90 = *(v88 + 24 + 8 * v86);
                if (!v90)
                {
                  goto LABEL_135;
                }

                v91 = [v90 fieldInfoWithNSString:*(v11 + 8)];
                if (!v91)
                {
                  goto LABEL_125;
                }

                v92 = v91;
                getDocValuesType5 = [v91 getDocValuesType];
                if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
                {
                  sub_10005B5A0();
                }

                if (getDocValuesType5 != qword_100557A98 || (v94 = [v87 getSortedSetWithOrgApacheLuceneIndexFieldInfo:v92]) == 0)
                {
LABEL_125:
                  v94 = OrgApacheLuceneIndexDocValues_emptySortedSet();
                }

                [(JavaUtilArrayList *)v85 addWithId:v94];
                ++v86;
                v84 = *(state + 6);
                if (!v84)
                {
                  goto LABEL_135;
                }
              }

              [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:state withJavaUtilList:v85];
            }

            else
            {
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (getDocValuesType != qword_100557A90)
              {
                v95 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"type=");
                v96 = new_JavaLangAssertionError_initWithId_(v95);
                objc_exception_throw(v96);
              }

              v20 = new_JavaUtilArrayList_init();
              v22 = *(state + 6);
              if (!v22)
              {
                goto LABEL_135;
              }

              v23 = v20;
              v24 = 0;
              while (v24 < *(v22 + 8))
              {
                v25 = *(v22 + 24 + 8 * v24);
                if (!v25)
                {
                  goto LABEL_43;
                }

                v26 = *(state + 7);
                if (!v26)
                {
                  goto LABEL_135;
                }

                v27 = *(v26 + 8);
                if (v24 >= v27)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v27, v24);
                }

                v28 = *(v26 + 24 + 8 * v24);
                if (!v28)
                {
                  goto LABEL_135;
                }

                v29 = [v28 fieldInfoWithNSString:*(v11 + 8)];
                if (!v29)
                {
                  goto LABEL_43;
                }

                v30 = v29;
                getDocValuesType6 = [v29 getDocValuesType];
                if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
                {
                  sub_10005B5A0();
                }

                if (getDocValuesType6 != qword_100557A90 || (v34 = [v25 getSortedNumericWithOrgApacheLuceneIndexFieldInfo:v30]) == 0)
                {
LABEL_43:
                  v32 = *(state + 12);
                  if (!v32)
                  {
                    goto LABEL_135;
                  }

                  v33 = *(v32 + 8);
                  if (v24 >= v33)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v33, v24);
                  }

                  v34 = OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_(*(v32 + 12 + 4 * v24), v21);
                }

                [(JavaUtilArrayList *)v23 addWithId:v34];
                ++v24;
                v22 = *(state + 6);
                if (!v22)
                {
                  goto LABEL_135;
                }
              }

              [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:state withJavaUtilList:v23];
            }
          }
        }
      }

      v101 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
    }

    while (v101);
  }
}

- (void)mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list withJavaUtilList:(id)utilList
{
  v11 = [OrgApacheLuceneCodecsDocValuesConsumer__1 alloc];
  JreStrongAssign(&v11->val$toMerge_, list);
  JreStrongAssign(&v11->val$docsWithField_, utilList);
  JreStrongAssign(&v11->val$mergeState_, state);
  v12 = v11;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v12];
}

- (void)mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list withJavaUtilList:(id)utilList
{
  v11 = [OrgApacheLuceneCodecsDocValuesConsumer__2 alloc];
  JreStrongAssign(&v11->val$toMerge_, list);
  JreStrongAssign(&v11->val$docsWithField_, utilList);
  JreStrongAssign(&v11->val$mergeState_, state);
  v12 = v11;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v12];
}

- (void)mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list
{
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v9 = [list size];
  v10 = v9;
  v12 = [list toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v9, OrgApacheLuceneIndexSortedNumericDocValues_class_(v9, v11))}];
  v13 = [OrgApacheLuceneCodecsDocValuesConsumer__3 alloc];
  v13->val$numReaders_ = v10;
  JreStrongAssign(&v13->val$mergeState_, state);
  JreStrongAssign(&v13->val$dvs_, v12);
  v14 = v13;
  v15 = [OrgApacheLuceneCodecsDocValuesConsumer__4 alloc];
  v15->val$numReaders_ = v10;
  JreStrongAssign(&v15->val$dvs_, v12);
  JreStrongAssign(&v15->val$mergeState_, state);
  v16 = v15;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v14 withJavaLangIterable:v16];
}

- (void)mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list
{
  if (!list)
  {
    goto LABEL_32;
  }

  v9 = [list size];
  v11 = [list toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v9, OrgApacheLuceneIndexSortedDocValues_class_(v9, v10))}];
  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = v11;
  selfCopy = self;
  infoCopy = info;
  v37 = [IOSObjectArray arrayWithLength:v11[2] type:OrgApacheLuceneIndexTermsEnum_class_()];
  v13 = [IOSLongArray arrayWithLength:v37->super.size_];
  v36 = v9;
  if (v9 >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = v12[2];
      if (v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      if (!state)
      {
        break;
      }

      v16 = *(state + 8);
      if (!v16)
      {
        break;
      }

      v17 = *&v12[2 * v14 + 6];
      v18 = *(v16 + 8);
      if (v14 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v14);
      }

      v19 = *(state + 12);
      if (!v19)
      {
        break;
      }

      v20 = *(v16 + 24 + 8 * v14);
      v21 = *(v19 + 8);
      if (v14 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v14);
      }

      if (v20)
      {
        if (!v17)
        {
          break;
        }

        v22 = *(v19 + 12 + 4 * v14);
        v23 = new_OrgApacheLuceneUtilLongBitSet_initWithLong_([*&v12[2 * v14 + 6] getValueCount]);
        if (v22 >= 1)
        {
          v24 = 0;
          do
          {
            if ([v20 getWithInt:v24])
            {
              v25 = [v17 getOrdWithInt:v24];
              if ((v25 & 0x80000000) == 0)
              {
                [(OrgApacheLuceneUtilLongBitSet *)v23 setWithLong:v25];
              }
            }

            v24 = (v24 + 1);
          }

          while (v22 != v24);
        }

        v26 = new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_([v17 termsEnum], v23);
        IOSObjectArray_SetAndConsume(v37, v14, v26);
        cardinality = [(OrgApacheLuceneUtilLongBitSet *)v23 cardinality];
        size = v13->super.size_;
        if (v14 >= size)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (!v17)
        {
          break;
        }

        IOSObjectArray_Set(v37, v14, [*&v12[2 * v14 + 6] termsEnum]);
        cardinality = [v17 getValueCount];
        size = v13->super.size_;
        if (v14 >= size)
        {
LABEL_28:
          IOSArray_throwOutOfBoundsWithMsg(size, v14);
        }
      }

      v13->buffer_[v14++] = cardinality;
      if (v14 == v36)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    JreThrowNullPointerException();
  }

LABEL_29:
  v29 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(selfCopy, v37, v13, 0.0);
  v30 = [OrgApacheLuceneCodecsDocValuesConsumer__5 alloc];
  JreStrongAssign(&v30->val$map_, v29);
  JreStrongAssign(&v30->val$dvs_, v12);
  v31 = v30;
  v32 = [OrgApacheLuceneCodecsDocValuesConsumer__6 alloc];
  v32->val$numReaders_ = v36;
  JreStrongAssign(&v32->val$map_, v29);
  JreStrongAssign(&v32->val$mergeState_, state);
  JreStrongAssign(&v32->val$dvs_, v12);
  v33 = v32;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)selfCopy addSortedFieldWithOrgApacheLuceneIndexFieldInfo:infoCopy withJavaLangIterable:v31 withJavaLangIterable:v33];
}

- (void)mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneIndexMergeState:(id)state withJavaUtilList:(id)list
{
  if (!list)
  {
    goto LABEL_33;
  }

  v8 = [list size];
  v10 = [list toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v8, OrgApacheLuceneIndexSortedSetDocValues_class_(v8, v9))}];
  if (!state)
  {
    goto LABEL_33;
  }

  v11 = *(state + 12);
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v10;
  if (!v10)
  {
    goto LABEL_33;
  }

  infoCopy = info;
  v13 = &OBJC_IVAR___IOSArray_size_;
  v43 = *(v11 + 8);
  v14 = [IOSObjectArray arrayWithLength:v10[2] type:OrgApacheLuceneIndexTermsEnum_class_()];
  v15 = [IOSLongArray arrayWithLength:v14->super.size_];
  v16 = 8;
  if (v14->super.size_ >= 1)
  {
    v17 = 0;
    v46 = v12;
    while (1)
    {
      v18 = *(v12 + v16);
      if (v17 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v17);
      }

      v19 = *(state + 8);
      if (!v19)
      {
        break;
      }

      v20 = v12[v17 + 3];
      v21 = *v13;
      v22 = *(v19 + v21);
      if (v17 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v17);
      }

      v23 = *(v19 + 24 + 8 * v17);
      v24 = *(state + 12);
      v25 = *(v24 + v21);
      if (v17 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, v17);
      }

      if (v23)
      {
        if (!v20)
        {
          break;
        }

        stateCopy = state;
        v27 = v13;
        v28 = *(v24 + 12 + 4 * v17);
        v29 = new_OrgApacheLuceneUtilLongBitSet_initWithLong_([v20 getValueCount]);
        if (v28 >= 1)
        {
          v30 = 0;
          do
          {
            if ([v23 getWithInt:v30])
            {
              [v20 setDocumentWithInt:v30];
              nextOrd = [v20 nextOrd];
              if (nextOrd != -1)
              {
                for (i = nextOrd; i != -1; i = [v20 nextOrd])
                {
                  [(OrgApacheLuceneUtilLongBitSet *)v29 setWithLong:i];
                }
              }
            }

            v30 = (v30 + 1);
          }

          while (v30 != v28);
        }

        v33 = new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_([v20 termsEnum], v29);
        IOSObjectArray_SetAndConsume(v14, v17, v33);
        cardinality = [(OrgApacheLuceneUtilLongBitSet *)v29 cardinality];
        v13 = v27;
        v35 = *(&v15->super.super.isa + *v27);
        if (v17 >= v35)
        {
          goto LABEL_29;
        }

        state = stateCopy;
        v12 = v46;
      }

      else
      {
        if (!v20)
        {
          break;
        }

        IOSObjectArray_Set(v14, v17, [v12[v17 + 3] termsEnum]);
        cardinality = [v20 getValueCount];
        v35 = *(&v15->super.super.isa + *v13);
        if (v17 >= v35)
        {
LABEL_29:
          IOSArray_throwOutOfBoundsWithMsg(v35, v17);
        }
      }

      v15->buffer_[v17++] = cardinality;
      v16 = *v13;
      if (v17 >= *(&v14->super.super.isa + v16))
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    JreThrowNullPointerException();
  }

LABEL_30:
  v36 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(self, v14, v15, 0.0);
  v37 = [OrgApacheLuceneCodecsDocValuesConsumer__7 alloc];
  JreStrongAssign(&v37->val$map_, v36);
  JreStrongAssign(&v37->val$dvs_, v12);
  v38 = v37;
  v39 = [OrgApacheLuceneCodecsDocValuesConsumer__8 alloc];
  v39->val$numReaders_ = v43;
  JreStrongAssign(&v39->val$mergeState_, state);
  JreStrongAssign(&v39->val$dvs_, v12);
  v40 = v39;
  v41 = [OrgApacheLuceneCodecsDocValuesConsumer__9 alloc];
  v41->val$numReaders_ = v43;
  JreStrongAssign(&v41->val$map_, v36);
  JreStrongAssign(&v41->val$mergeState_, state);
  JreStrongAssign(&v41->val$dvs_, v12);
  v42 = v41;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:infoCopy withJavaLangIterable:v38 withJavaLangIterable:v40 withJavaLangIterable:v42];
}

@end