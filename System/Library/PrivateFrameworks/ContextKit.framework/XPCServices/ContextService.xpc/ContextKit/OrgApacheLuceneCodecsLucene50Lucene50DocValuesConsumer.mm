@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer
- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable;
- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withBoolean:(BOOL)boolean;
- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable;
- (void)close;
- (void)dealloc;
- (void)writeMissingBitsetWithJavaLangIterable:(id)iterable;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v7 = new_JavaUtilHashSet_init();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    if (!iterable)
    {
      goto LABEL_124;
    }

    v8 = v7;
    infoCopy = info;
    obj = iterable;
    v9 = [iterable countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v96 = 0;
      v98 = *v117;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 0x8000000000000000;
      do
      {
        v17 = 0;
        v92 = v14;
        v93 = -v14;
        do
        {
          v18 = v13;
          if (*v117 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v116 + 1) + 8 * v17);
          if (v19)
          {
            longLongValue = [v19 longLongValue];
            v21 = longLongValue == 0;
          }

          else
          {
            longLongValue = 0;
            ++v96;
            v21 = 1;
          }

          if (v13 == 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = 1;
            if (((longLongValue - 0x4000000000000000) & 0x8000000000000000) != 0)
            {
              if (v93 == v17)
              {
                v13 = v18;
              }

              else
              {
                v13 = OrgApacheLuceneUtilMathUtil_gcdWithLong_withLong_(v18, longLongValue - v15);
              }
            }
          }

          v15 = JavaLangMath_minWithLong_withLong_(v15, longLongValue);
          v16 = JavaLangMath_maxWithLong_withLong_(v16, longLongValue);
          if (v8 && [(JavaUtilHashSet *)v8 addWithId:JavaLangLong_valueOfWithLong_(longLongValue, v22)]&& [(JavaUtilHashSet *)v8 size]> 256)
          {
            v8 = 0;
          }

          v12 += v21;
          ++v17;
        }

        while (v11 != v17);
        v14 = &v11[v92];
        v11 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v96 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 0x8000000000000000;
    }

    v27 = v14;
    v33 = v16 - v15;
    v35 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v16 - v15, v10);
    v99 = v35;
    if (v8)
    {
      v36 = [(JavaUtilHashSet *)v8 size];
      v44 = OrgApacheLuceneUtilPackedDirectWriter_bitsRequiredWithLong_((v36 - 1), v37, v38, v39, v40, v41, v42, v43);
      infoCopy2 = infoCopy;
      if (v27 <= 0x7FFFFFFF)
      {
        if ([(JavaUtilHashSet *)v8 size]== 1)
        {
          v94 = 0;
          v46 = 4;
LABEL_48:
          v12 = v96;
          goto LABEL_52;
        }

        if ([(JavaUtilHashSet *)v8 size]== 2 && v96 >= 1 && v12 == v96)
        {
          v94 = 0;
          v46 = 4;
          goto LABEL_52;
        }
      }

      if (v44 < v35)
      {
        v94 = 0;
        v46 = 2;
        goto LABEL_48;
      }
    }

    else
    {
      v44 = 0x7FFFFFFF;
      infoCopy2 = infoCopy;
    }

    v12 = v96;
    v94 = v8 == 0;
    v46 = v13 >= 2 && OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v33 / v13, v34) < v35;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    if (!iterable)
    {
      goto LABEL_124;
    }

    v24 = [iterable countByEnumeratingWithState:&v112 objects:v123 count:16];
    if (v24)
    {
      v26 = v24;
      v27 = 0;
      v28 = *v113;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x8000000000000000;
      do
      {
        v30 = 0;
        v27 += v26;
        do
        {
          if (*v113 != v28)
          {
            objc_enumerationMutation(iterable);
          }

          v31 = *(*(&v112 + 1) + 8 * v30);
          if (!v31)
          {
            goto LABEL_124;
          }

          longLongValue2 = [v31 longLongValue];
          v15 = JavaLangMath_minWithLong_withLong_(v15, longLongValue2);
          v29 = JavaLangMath_maxWithLong_withLong_(v29, longLongValue2);
          v30 = v30 + 1;
        }

        while (v26 != v30);
        v26 = [iterable countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x8000000000000000;
    }

    obj = iterable;
    v33 = v29 - v15;
    v99 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v33, v25);
    v8 = 0;
    v12 = 0;
    v13 = 0;
    v46 = 0;
    v94 = 1;
    v44 = 0x7FFFFFFF;
    infoCopy2 = info;
  }

LABEL_52:
  meta = self->meta_;
  if (!meta || !infoCopy2)
  {
    goto LABEL_124;
  }

  v97 = v44;
  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:infoCopy2[4]];
  selfCopy3 = self;
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:0];
  [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v46];
  if (!v12)
  {
    v49 = self->meta_;
    v50 = -1;
    goto LABEL_58;
  }

  if (v12 == v27)
  {
    selfCopy3 = self;
    v49 = self->meta_;
    v50 = -2;
LABEL_58:
    [(OrgApacheLuceneStoreDataOutput *)v49 writeLongWithLong:v50];
    goto LABEL_61;
  }

  selfCopy3 = self;
  data = self->data_;
  if (!data)
  {
    goto LABEL_124;
  }

  [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)data getFilePointer]];
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self writeMissingBitsetWithJavaLangIterable:obj];
LABEL_61:
  v52 = selfCopy3->data_;
  if (!v52)
  {
    goto LABEL_124;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy3->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)v52 getFilePointer]];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy3->meta_ writeVLongWithLong:v27];
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      if (!v94)
      {
        v72 = [(JavaUtilHashSet *)v8 size];
        v74 = [(JavaUtilAbstractCollection *)v8 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v72 type:JavaLangLong_class_(v72, v73)]];
        JavaUtilArrays_sortWithNSObjectArray_(v74, v75);
        v76 = new_JavaUtilHashMap_init();
        selfCopy7 = self;
        if (v74)
        {
          v77 = v76;
          [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v74[2]];
          if (v74[2] < 1)
          {
LABEL_102:
            [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v97];
            InstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v27, v97);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            if (!obj)
            {
              goto LABEL_124;
            }

            v82 = InstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt;
            v83 = [obj countByEnumeratingWithState:&v100 objects:v120 count:16];
            if (v83)
            {
              v85 = v83;
              v86 = *v101;
              do
              {
                for (i = 0; i != v85; i = i + 1)
                {
                  if (*v101 != v86)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!v82)
                  {
                    goto LABEL_124;
                  }

                  longLongValue3 = *(*(&v100 + 1) + 8 * i);
                  if (longLongValue3)
                  {
                    longLongValue3 = [longLongValue3 longLongValue];
                  }

                  v89 = [(JavaUtilHashMap *)v77 getWithId:JavaLangLong_valueOfWithLong_(longLongValue3, v84)];
                  if (!v89)
                  {
                    goto LABEL_124;
                  }

                  -[OrgApacheLuceneUtilPackedDirectWriter addWithLong:](v82, "addWithLong:", [v89 intValue]);
                }

                v85 = [obj countByEnumeratingWithState:&v100 objects:v120 count:16];
              }

              while (v85);
            }

            else if (!v82)
            {
              goto LABEL_124;
            }

            [(OrgApacheLuceneUtilPackedDirectWriter *)v82 finish];
            goto LABEL_123;
          }

          v78 = 0;
          while (1)
          {
            v79 = *&v74[2 * v78 + 6];
            if (!v79)
            {
              break;
            }

            -[OrgApacheLuceneStoreDataOutput writeLongWithLong:](self->meta_, "writeLongWithLong:", [v79 longLongValue]);
            v80 = v74[2];
            if (v78 >= v80)
            {
              IOSArray_throwOutOfBoundsWithMsg(v80, v78);
            }

            [(JavaUtilHashMap *)v77 putWithId:*&v74[2 * v78 + 6] withId:JavaLangInteger_valueOfWithInt_(v78)];
            if (++v78 >= v74[2])
            {
              goto LABEL_102;
            }
          }
        }
      }

LABEL_124:
      JreThrowNullPointerException();
    }

    selfCopy7 = self;
    v63 = self->meta_;
    if (v15 < 0)
    {
      v64 = JavaUtilCollections_minWithJavaUtilCollection_(v8);
    }

    else
    {
      v64 = JavaUtilCollections_maxWithJavaUtilCollection_(v8);
    }

    -[OrgApacheLuceneStoreDataOutput writeLongWithLong:](v63, "writeLongWithLong:", [v64 longLongValue]);
  }

  else
  {
    if (v46)
    {
      selfCopy7 = self;
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v15];
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v13];
      v55 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v33 / v13, v54);
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v55];
      v56 = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v27, v55);
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      if (obj)
      {
        v57 = v56;
        v58 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v109;
          do
          {
            for (j = 0; j != v59; j = j + 1)
            {
              if (*v109 != v60)
              {
                objc_enumerationMutation(obj);
              }

              longLongValue4 = *(*(&v108 + 1) + 8 * j);
              if (longLongValue4)
              {
                longLongValue4 = [longLongValue4 longLongValue];
              }

              if (!v57)
              {
                goto LABEL_124;
              }

              [(OrgApacheLuceneUtilPackedDirectWriter *)v57 addWithLong:(longLongValue4 - v15) / v13];
            }

            v59 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
          }

          while (v59);
          goto LABEL_120;
        }

        if (v57)
        {
LABEL_120:
          [(OrgApacheLuceneUtilPackedDirectWriter *)v57 finish];
          goto LABEL_123;
        }
      }

      goto LABEL_124;
    }

    if (v33 < 0)
    {
      v15 = 0;
    }

    selfCopy7 = self;
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v15];
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v99];
    v65 = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v27, v99);
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    if (!obj)
    {
      goto LABEL_124;
    }

    v66 = v65;
    v67 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v105;
      do
      {
        for (k = 0; k != v68; k = k + 1)
        {
          if (*v105 != v69)
          {
            objc_enumerationMutation(obj);
          }

          longLongValue5 = *(*(&v104 + 1) + 8 * k);
          if (longLongValue5)
          {
            longLongValue5 = [longLongValue5 longLongValue];
          }

          if (!v66)
          {
            goto LABEL_124;
          }

          [(OrgApacheLuceneUtilPackedDirectWriter *)v66 addWithLong:&longLongValue5[-v15]];
        }

        v68 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
      }

      while (v68);
    }

    else if (!v66)
    {
      goto LABEL_124;
    }

    [(OrgApacheLuceneUtilPackedDirectWriter *)v66 finish];
  }

LABEL_123:
  [(OrgApacheLuceneStoreDataOutput *)selfCopy7->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy7->data_ getFilePointer]];
}

- (void)writeMissingBitsetWithJavaLangIterable:(id)iterable
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (!iterable)
  {
    goto LABEL_19;
  }

  v5 = [iterable countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(iterable);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v8 == 8)
        {
          data = self->data_;
          if (!data)
          {
            goto LABEL_19;
          }

          [(OrgApacheLuceneStoreIndexOutput *)data writeByteWithByte:v7, v16];
          LOBYTE(v7) = 0;
          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        v14 = 1 << (v13 & 7);
        if (!v11)
        {
          LOBYTE(v14) = 0;
        }

        v7 = (v14 | v7);
        v8 = v13 + 1;
      }

      v6 = [iterable countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    if (v13 <= 0x7FFFFFFE)
    {
      v15 = self->data_;
      if (v15)
      {
        [(OrgApacheLuceneStoreIndexOutput *)v15 writeByteWithByte:v7];
        return;
      }

LABEL_19:
      JreThrowNullPointerException();
    }
  }
}

- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable
{
  meta = self->meta_;
  if (!meta || !info || ([(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)], [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:1], (data = self->data_) == 0) || (v8 = [(OrgApacheLuceneStoreIndexOutput *)data getFilePointer], v36 = 0u, v37 = 0u, v38 = 0u, v39 = 0u, !iterable))
  {
    JreThrowNullPointerException();
  }

  v29 = v8;
  selfCopy = self;
  v9 = [iterable countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v37;
    v14 = 0x7FFFFFFFLL;
    v15 = 0x80000000;
    do
    {
      v30 = v11;
      iterableCopy = iterable;
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(iterableCopy);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        if (v18)
        {
          v19 = *(v18 + 20);
        }

        else
        {
          v19 = 0;
          ++v12;
        }

        v14 = JavaLangMath_minWithInt_withInt_(v14, v19);
        v15 = JavaLangMath_maxWithInt_withInt_(v15, v19);
        if (v18)
        {
          [(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ writeBytesWithByteArray:*(v18 + 8) withInt:*(v18 + 16) withInt:*(v18 + 20)];
        }
      }

      v11 = &v10[v30];
      iterable = iterableCopy;
      v10 = [iterableCopy countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v14 = 0x7FFFFFFFLL;
    v15 = 0x80000000;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v14 != v15];
  if (!v12)
  {
    v20 = selfCopy->meta_;
    v21 = -1;
    goto LABEL_23;
  }

  if (v12 == v11)
  {
    v20 = selfCopy->meta_;
    v21 = -2;
LABEL_23:
    [(OrgApacheLuceneStoreDataOutput *)v20 writeLongWithLong:v21];
    goto LABEL_25;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ getFilePointer]];
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)selfCopy writeMissingBitsetWithJavaLangIterable:iterable];
LABEL_25:
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v14];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v15];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVLongWithLong:v11];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:v29];
  if (v14 != v15)
  {
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ getFilePointer]];
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:2];
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:0x4000];
    v22 = new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(selfCopy->data_, 0x4000);
    [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v22 addWithLong:0];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = [iterable countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v33;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(iterable);
          }

          v28 = *(*(&v32 + 1) + 8 * j);
          if (v28)
          {
            v25 += *(v28 + 20);
          }

          [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v22 addWithLong:v25];
        }

        v24 = [iterable countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)v22 finish];
  }
}

- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:2];
  sub_1000B2644(&self->super.super.isa, info, iterable);

  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:langIterable withBoolean:0];
}

- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:4];
  if (OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(iterable))
  {
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:1];
    v10 = OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(iterable, langIterable, 0);

    [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v10];
  }

  else
  {
    v11 = sub_1000B31C8(iterable, langIterable);
    v12 = self->meta_;
    if (v11)
    {
      [(OrgApacheLuceneStoreDataOutput *)v12 writeVIntWithInt:2];
      sub_1000B33B8(self, v11);
      v13 = sub_1000B36FC(v11, iterable, langIterable);

      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v13 withBoolean:0];
    }

    else
    {
      [(OrgApacheLuceneStoreDataOutput *)v12 writeVIntWithInt:0];
      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:langIterable withBoolean:1];

      sub_1000B386C(self, info, iterable);
    }
  }
}

- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:3];
  if (OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(langIterable))
  {
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:1];
    v13 = JavaLangLong_valueOfWithLong_(-1, v12);
    v14 = OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(langIterable, javaLangIterable, v13);

    [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addSortedFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable withJavaLangIterable:v14];
  }

  else
  {
    v15 = sub_1000B31C8(langIterable, javaLangIterable);
    v16 = self->meta_;
    if (v15)
    {
      [(OrgApacheLuceneStoreDataOutput *)v16 writeVIntWithInt:2];
      sub_1000B33B8(self, v15);
      sub_1000B2644(&self->super.super.isa, info, iterable);
      v17 = sub_1000B36FC(v15, langIterable, javaLangIterable);

      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v17 withBoolean:0];
    }

    else
    {
      [(OrgApacheLuceneStoreDataOutput *)v16 writeVIntWithInt:0];
      sub_1000B2644(&self->super.super.isa, info, iterable);
      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:javaLangIterable withBoolean:0];

      sub_1000B386C(self, info, langIterable);
    }
  }
}

- (void)close
{
  meta = self->meta_;
  if (meta)
  {
    [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:0xFFFFFFFFLL];
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(self->meta_);
  }

  data = self->data_;
  if (data)
  {
    data = OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
    v5 = self->data_;
  }

  else
  {
    v5 = 0;
  }

  v6 = self->meta_;
  v9[0] = v5;
  v9[1] = v6;
  v7 = [IOSObjectArray arrayWithObjects:v9 count:2 type:JavaIoCloseable_class_(data, a2)];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v7);
  v8 = JreStrongAssign(&self->data_, 0);
  JreStrongAssign(&self->meta_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)&v3 dealloc];
}

@end