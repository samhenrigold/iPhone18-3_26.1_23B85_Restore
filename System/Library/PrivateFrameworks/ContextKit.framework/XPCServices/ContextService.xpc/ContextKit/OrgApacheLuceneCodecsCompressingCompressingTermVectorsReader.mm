@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader
- (id)clone;
- (id)getChildResources;
- (id)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader

- (void)close
{
  if (!self->closed_)
  {
    vectorsStream = self->vectorsStream_;
    v3 = [IOSObjectArray arrayWithObjects:&vectorsStream count:1 type:JavaIoCloseable_class_(self, a2)];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
    self->closed_ = 1;
  }
}

- (id)clone
{
  v3 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader alloc];
  sub_10007F860(v3, self);

  return v3;
}

- (id)getWithInt:(int)int
{
  v3 = *&int;
  selfCopy = self;
  sub_100080084(self);
  indexReader = selfCopy->indexReader_;
  if (!indexReader)
  {
    goto LABEL_419;
  }

  v6 = [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)indexReader getStartPointerWithInt:v3];
  vectorsStream = selfCopy->vectorsStream_;
  if (!vectorsStream)
  {
    goto LABEL_419;
  }

  [(OrgApacheLuceneStoreIndexInput *)vectorsStream seekWithLong:v6];
  readVInt = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt];
  readVInt2 = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt];
  v17 = readVInt2;
  v18 = readVInt2 + readVInt;
  v19 = v3 < readVInt || v18 <= v3;
  if (v19 || v18 > selfCopy->numDocs_)
  {
    v318 = JreStrcat("$I$I$I", v10, v11, v12, v13, v14, v15, v16, @"docBase=");
    v319 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v318, selfCopy->vectorsStream_);
    goto LABEL_421;
  }

  if (readVInt2 == 1)
  {
    readVInt3 = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt];
    v21 = readVInt3;
    v22 = 0;
    if (readVInt3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  reader = selfCopy->reader_;
  if (!reader)
  {
    goto LABEL_419;
  }

  [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)reader resetWithOrgApacheLuceneStoreDataInput:selfCopy->vectorsStream_ withLong:v17];
  v22 = 0;
  v57 = v3 - readVInt;
  if (v3 > readVInt)
  {
    do
    {
      v22 += [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)selfCopy->reader_ next];
      --v57;
    }

    while (v57);
  }

  readVInt3 = [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)selfCopy->reader_ next];
  v21 = v22 + readVInt3;
  if (v3 + 1 < v18)
  {
    v58 = readVInt3;
    v59 = ~v3 + v17 + readVInt;
    do
    {
      v21 += [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)selfCopy->reader_ next];
      --v59;
    }

    while (v59);
    readVInt3 = v58;
  }

  if (!readVInt3)
  {
    return 0;
  }

LABEL_10:
  v350 = v21;
  v341 = readVInt3;
  v343 = v22;
  readByte = [(OrgApacheLuceneStoreIndexInput *)selfCopy->vectorsStream_ readByte];
  v26 = readByte >> 5;
  if (v26 == 7)
  {
    v26 = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt]+ 7;
  }

  v27 = v26 + 1;
  v28 = selfCopy->vectorsStream_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt_(v28, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], selfCopy->packedIntsVersion_, v26 + 1, readByte & 0x1F, 1, v23, v24);
  v351 = [IOSIntArray arrayWithLength:v27];
  if (v26 <= 0x7FFFFFFE)
  {
    if (!ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt)
    {
      goto LABEL_419;
    }

    v30 = 0;
    v31 = v351;
    do
    {
      next = [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt next];
      size = v351->super.size_;
      if (v30 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v30);
      }

      *(&v31->super.size_ + 1) = next;
      ++v30;
      v31 = (v31 + 4);
    }

    while (v27 != v30);
  }

  v34 = [IOSIntArray arrayWithLength:?];
  v45 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v351->super.size_ - 1, v35, v36, v37, v38, v39, v40, v41);
  v46 = selfCopy->vectorsStream_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v46, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], selfCopy->packedIntsVersion_, v21, v45, v42, v43, v44);
  readVInt4 = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt];
  v360 = selfCopy;
  v342 = v34;
  if (readVInt4)
  {
    if (readVInt4 == 1)
    {
      v52 = selfCopy->vectorsStream_;
      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      v53 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0];
      packedIntsVersion = selfCopy->packedIntsVersion_;
      if ((atomic_load_explicit(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000853F4();
      }

      v340 = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v52, v53, packedIntsVersion, v21, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_, v49, v50, v51);
      v55 = v34;
      goto LABEL_51;
    }

    v319 = new_JavaLangAssertionError_init();
LABEL_421:
    objc_exception_throw(v319);
  }

  v61 = selfCopy->vectorsStream_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v62 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0];
  v63 = selfCopy->packedIntsVersion_;
  v64 = v351->super.size_;
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000853F4();
  }

  v65 = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v61, v62, v63, v64, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_, v49, v50, v51);
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000853F4();
  }

  MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(v21, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_, 0.0);
  selfCopy = v360;
  v55 = v34;
  v340 = MutableWithInt_withInt_withFloat;
  if (v21 >= 1)
  {
    if (!ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
    {
      goto LABEL_419;
    }

    v67 = MutableWithInt_withInt_withFloat;
    v68 = 0;
    do
    {
      v69 = [ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt getWithInt:v68];
      if (!v65)
      {
        goto LABEL_419;
      }

      v70 = [v65 getWithInt:v69];
      if (!v67)
      {
        goto LABEL_419;
      }

      [v67 setWithInt:v68 withLong:v70];
      v68 = (v68 + 1);
    }

    while (v21 != v68);
  }

LABEL_51:
  if (v341 >= 1)
  {
    if (!ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
    {
      goto LABEL_419;
    }

    for (i = 0; i != v341; *(&v55->super.size_ + ++i) = v72)
    {
      v72 = [ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt getWithInt:(v22 + i)];
      v73 = v55->super.size_;
      if (i >= v73)
      {
        IOSArray_throwOutOfBoundsWithMsg(v73, i);
      }
    }
  }

  readVInt5 = [(OrgApacheLuceneStoreDataInput *)selfCopy->vectorsStream_ readVInt];
  v78 = selfCopy->vectorsStream_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v79 = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v78, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], selfCopy->packedIntsVersion_, v21, readVInt5, v74, v75, v76);
  v80 = v79;
  v81 = v22;
  p_cache = &OBJC_METACLASS___IOSBooleanArray.cache;
  if (v350 < 1)
  {
    v84 = 0;
    v83 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  }

  else
  {
    v83 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
    if (!v79)
    {
      goto LABEL_419;
    }

    v84 = 0;
    v85 = 0;
    do
    {
      v84 += [v80 getWithInt:v85];
      v85 = (v85 + 1);
    }

    while (v350 != v85);
  }

  v328 = [IOSIntArray arrayWithLength:v341];
  v339 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v341, IOSClass_arrayType(+[IOSClass intClass], 1u));
  v86 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v341, IOSClass_arrayType(+[IOSClass intClass], 1u));
  v87 = v83[327];
  v88 = *(&selfCopy->super.super.isa + v87);
  if (!v88)
  {
    goto LABEL_419;
  }

  v336 = v86;
  v333 = v84;
  [v88 resetWithOrgApacheLuceneStoreDataInput:selfCopy->vectorsStream_ withLong:?];
  v345 = v84;
  if (v343 < 1)
  {
    v91 = 0;
  }

  else
  {
    if (!v80)
    {
      goto LABEL_419;
    }

    v89 = 0;
    v90 = 0;
    do
    {
      v89 += [v80 getWithInt:v90];
      v90 = (v90 + 1);
    }

    while (v343 != v90);
    v91 = v89;
  }

  v361 = v87;
  [*(&selfCopy->super.super.isa + v87) skipWithLong:v91];
  v349 = v80;
  if (v341 >= 1)
  {
    if (!v80)
    {
      goto LABEL_419;
    }

    v92 = 0;
    do
    {
      v93 = [v80 getWithInt:(v81 + v92)];
      v94 = [IOSIntArray arrayWithLength:v93];
      v352 = v92;
      IOSObjectArray_Set(v339, v92, v94);
      if (v93 >= 1)
      {
        v95 = 0;
        v355 = v93;
        do
        {
          v96 = [*(&v360->super.super.isa + v361) nextWithInt:(v93 - v95)];
          if (!v96)
          {
            goto LABEL_419;
          }

          v97 = v96;
          if (v96[5] >= 1)
          {
            v98 = 0;
            do
            {
              v99 = *(v97 + 1);
              if (!v99)
              {
                goto LABEL_419;
              }

              v100 = *(v99 + 8);
              v101 = v98 + v97[4];
              if (v101 < 0 || v101 >= v100)
              {
                IOSArray_throwOutOfBoundsWithMsg(v100, v101);
              }

              v102 = v95 + v98;
              v103 = *(v99 + 16 + 8 * v101);
              v104 = v94->super.size_;
              if (v95 + v98 < 0 || v102 >= v104)
              {
                IOSArray_throwOutOfBoundsWithMsg(v104, (v95 + v98));
              }

              *(&v94->super.size_ + v102 + 1) = v103;
              ++v98;
            }

            while (v98 < v97[5]);
            v95 += v98;
            v93 = v355;
          }
        }

        while (v95 < v93);
      }

      v92 = v352 + 1;
      v81 = v343;
      p_cache = &OBJC_METACLASS___IOSBooleanArray.cache;
      v80 = v349;
    }

    while (v352 + 1 != v341);
  }

  v105 = v360;
  [*(&v360->super.super.isa + v361) skipWithLong:{v84 - objc_msgSend(*(&v360->super.super.isa + v361), "ord")}];
  [*(v105 + v361) resetWithOrgApacheLuceneStoreDataInput:*(v105 + 16) withLong:v84];
  if (v81 < 1)
  {
    v107 = 0;
    v106 = v350;
  }

  else
  {
    v106 = v350;
    if (!v80)
    {
      goto LABEL_419;
    }

    v107 = 0;
    v108 = 0;
    do
    {
      if ([v80 getWithInt:v108] >= 1)
      {
        v109 = 1;
        do
        {
          v107 += [*(&v360->super.super.isa + v361) next];
          v19 = [v80 getWithInt:v108] <= v109++;
        }

        while (!v19);
      }

      v108 = (v108 + 1);
    }

    while (v108 != v81);
  }

  v332 = v107;
  if (v341 >= 1)
  {
    if (!v80)
    {
      goto LABEL_419;
    }

    v110 = 0;
    v111 = 0;
    while (1)
    {
      v330 = v111;
      v112 = v110;
      v113 = [v80 getWithInt:(v81 + v110)];
      v114 = [p_cache + 33 arrayWithLength:v113];
      v353 = v112;
      IOSObjectArray_Set(v336, v112, v114);
      v115 = v361;
      if (v113 >= 1)
      {
        v116 = 0;
        v356 = v113;
        do
        {
          v117 = [*(&v360->super.super.isa + v115) nextWithInt:(v113 - v116)];
          if (!v117)
          {
            goto LABEL_419;
          }

          v118 = v117;
          if (v117[5] >= 1)
          {
            v119 = 0;
            do
            {
              v120 = *(v118 + 1);
              if (!v120)
              {
                goto LABEL_419;
              }

              v121 = *(v120 + 8);
              v122 = v119 + v118[4];
              if (v122 < 0 || v122 >= v121)
              {
                IOSArray_throwOutOfBoundsWithMsg(v121, v122);
              }

              v123 = v116 + v119;
              v124 = *(v120 + 16 + 8 * v122);
              v125 = v114[2];
              if (v116 + v119 < 0 || v123 >= v125)
              {
                IOSArray_throwOutOfBoundsWithMsg(v125, (v116 + v119));
              }

              v114[v123 + 3] = v124;
              ++v119;
            }

            while (v119 < v118[5]);
            v116 += v119;
            v115 = v361;
            v113 = v356;
          }
        }

        while (v116 < v113);
      }

      v126 = v336[2];
      if (v353 >= v126)
      {
        IOSArray_throwOutOfBoundsWithMsg(v126, v353);
      }

      v127 = *&v336[2 * v353 + 6];
      v105 = v360;
      v81 = v343;
      p_cache = (&OBJC_METACLASS___IOSBooleanArray + 16);
      v106 = v350;
      v80 = v349;
      if (!v127)
      {
        break;
      }

      v128 = (v127 + 12);
      v129 = v127 + 12 + 4 * *(v127 + 8);
      if (v128 >= v129)
      {
        v130 = 0;
        v131 = v328;
      }

      else
      {
        v130 = 0;
        v131 = v328;
        do
        {
          v132 = *v128++;
          v130 += v132;
        }

        while (v128 < v129);
      }

      v133 = v131->super.size_;
      if (v353 >= v133)
      {
        IOSArray_throwOutOfBoundsWithMsg(v133, v353);
      }

      *(&v131->super.size_ + v353 + 1) = v130;
      v134 = v131->super.size_;
      if (v353 >= v134)
      {
        IOSArray_throwOutOfBoundsWithMsg(v134, v353);
      }

      v111 = *(&v131->super.size_ + v353 + 1) + v330;
      v110 = v353 + 1;
      if (v353 + 1 == v341)
      {
        goto LABEL_135;
      }
    }

LABEL_419:
    JreThrowNullPointerException();
  }

  v111 = 0;
LABEL_135:
  v135 = v111 + v332;
  v136 = (v81 + v341);
  v331 = v111;
  v321 = v81 + v341;
  if (v136 < v106)
  {
    if (!v80)
    {
      goto LABEL_419;
    }

    do
    {
      if ([v80 getWithInt:v136] >= 1)
      {
        v137 = 1;
        do
        {
          v135 += [*(v105 + v361) next];
          v19 = [v80 getWithInt:v136] <= v137++;
        }

        while (!v19);
      }

      v136 = (v136 + 1);
    }

    while (v136 < v106);
  }

  v322 = v135;
  v354 = [p_cache + 33 arrayWithLength:v333];
  v138 = v361;
  [*(v105 + v361) resetWithOrgApacheLuceneStoreDataInput:*(v105 + 16) withLong:v333];
  v139 = v345;
  if (v345 >= 1)
  {
    v140 = 0;
    do
    {
      v141 = [*(v105 + v138) nextWithInt:(v139 - v140)];
      if (!v141)
      {
        goto LABEL_419;
      }

      v142 = v141;
      if (v141[5] >= 1)
      {
        v143 = 0;
        do
        {
          v144 = *(v142 + 1);
          if (!v144)
          {
            goto LABEL_419;
          }

          v145 = *(v144 + 8);
          v146 = v143 + v142[4];
          if (v146 < 0 || v146 >= v145)
          {
            IOSArray_throwOutOfBoundsWithMsg(v145, v146);
          }

          v147 = v354[2];
          if ((v140 & 0x80000000) != 0 || v140 >= v147)
          {
            IOSArray_throwOutOfBoundsWithMsg(v147, v140);
          }

          v354[v140 + 3] = *(v144 + 16 + 8 * v146) + 1;
          ++v143;
          v140 = (v140 + 1);
        }

        while (v143 < v142[5]);
      }

      v139 = v345;
      v105 = v360;
      v138 = v361;
    }

    while (v140 < v345);
  }

  if (v350 <= 0)
  {
    v329 = sub_1000828C8(v343, v341, v349, v354);
    v151 = 0;
    v152 = 0;
LABEL_172:
    v161 = v342;
    v327 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v341, IOSClass_arrayType(+[IOSClass intClass], 1u));
    v320 = 0;
    goto LABEL_173;
  }

  v148 = v340;
  if (!v340)
  {
    goto LABEL_419;
  }

  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  do
  {
    v154 = [v148 getWithInt:v150];
    if (!v349)
    {
      goto LABEL_419;
    }

    v155 = [v349 getWithInt:v150];
    v156 = v155;
    if (v155 >= 1)
    {
      v157 = v149 + v155;
      do
      {
        v158 = v354[2];
        if (v149 < 0 || v149 >= v158)
        {
          IOSArray_throwOutOfBoundsWithMsg(v158, v149);
        }

        v159 = v354[v149 + 3];
        v153 += ((v154 << 31) >> 31) & v159;
        v152 += v159 & ((v154 << 30) >> 31);
        v151 += v159 & ((v154 << 29) >> 31);
        ++v149;
        --v156;
      }

      while (v156);
      v149 = v157;
      v105 = v360;
      v138 = v361;
      v148 = v340;
    }

    v150 = (v150 + 1);
  }

  while (v150 != v350);
  v160 = sub_1000828C8(v343, v341, v349, v354);
  v329 = v160;
  if (v153 <= 0)
  {
    goto LABEL_172;
  }

  v320 = 1;
  v327 = sub_100082BE0(v105, v343, v341, v340, v349, v354, 1, v153, v160);
  v161 = v342;
LABEL_173:
  v162 = v332;
  if (v152 < 1)
  {
    v173 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v341, IOSClass_arrayType(+[IOSClass intClass], 1u));
    v326 = v173;
    v175 = v329;
LABEL_272:
    v323 = v173;
    v225 = v320 ^ 1;
    if (v341 < 1)
    {
      v225 = 1;
    }

    if ((v225 & 1) == 0)
    {
      if (v327)
      {
        v226 = 0;
        while (1)
        {
          v227 = v327->super.size_;
          v358 = v226;
          if (v226 >= v227)
          {
            IOSArray_throwOutOfBoundsWithMsg(v227, v226);
          }

          if (!v175)
          {
            break;
          }

          v228 = (&v327->elementType_)[v226];
          v229 = v175->super.size_;
          if (v226 >= v229)
          {
            IOSArray_throwOutOfBoundsWithMsg(v229, v226);
          }

          if (v228)
          {
            if (!v349)
            {
              goto LABEL_419;
            }

            v230 = (&v175->elementType_)[v226];
            v231 = [v349 getWithInt:{(v343 + v226), v171, v172}];
            v226 = v358;
            v175 = v329;
            if (v231 >= 1)
            {
              if (!v230)
              {
                goto LABEL_419;
              }

              v232 = 0;
              v233 = v231 & 0x7FFFFFFF;
              do
              {
                isa_low = SLODWORD(v230[1].super.isa);
                if (v232 >= isa_low)
                {
                  IOSArray_throwOutOfBoundsWithMsg(isa_low, v232);
                }

                v235 = *(&v230[1].super.isa + ++v232);
                for (j = &v228->super.isa + 4 * v235 + 4; ; j += 4)
                {
                  v237 = SLODWORD(v230[1].super.isa);
                  if (v232 >= v237)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v237, v232);
                  }

                  v238 = (v235 + 1);
                  if (v238 >= *(&v230[1].super.isa + v232 + 1))
                  {
                    break;
                  }

                  v239 = LODWORD(v228[1].super.isa);
                  if ((v235 & 0x80000000) != 0 || v235 >= v239)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v239, v235);
                  }

                  v240 = *(&v228[1].super.isa + v235 + 1);
                  if ((v238 & 0x80000000) != 0 || v238 >= v239)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v239, v238);
                  }

                  *(j + 3) += v240;
                  v235 = v238;
                }
              }

              while (v232 != v233);
            }
          }

          ++v226;
          v105 = v360;
          v162 = v332;
          if (v226 == v341)
          {
            goto LABEL_305;
          }
        }
      }

      goto LABEL_419;
    }
  }

  else
  {
    v163 = [IOSFloatArray arrayWithLength:v351->super.size_];
    if (v163->super.size_ >= 1)
    {
      v164 = 0;
      do
      {
        readInt = [*(v105 + 16) readInt];
        v167 = JavaLangFloat_intBitsToFloatWithInt_(readInt, v166);
        v168 = v163->super.size_;
        if (v164 >= v168)
        {
          IOSArray_throwOutOfBoundsWithMsg(v168, v164);
        }

        *(&v163->super.size_ + ++v164) = v167;
      }

      while (v164 < v163->super.size_);
    }

    v324 = v163;
    v326 = sub_100082BE0(v105, v343, v341, v340, v349, v354, 2, v152, v329);
    v169 = sub_100082BE0(v105, v343, v341, v340, v349, v354, 2, v152, v329);
    v323 = v169;
    if (v341 >= 1)
    {
      if (!v326)
      {
        goto LABEL_419;
      }

      v173 = v169;
      v174 = 0;
      v170 = 0x7FFFFFFFLL;
      v175 = v329;
      while (1)
      {
        v176 = v326->super.size_;
        v357 = v174;
        if (v174 >= v176)
        {
          IOSArray_throwOutOfBoundsWithMsg(v176, v174);
        }

        if (!v327)
        {
          goto LABEL_419;
        }

        v171 = (&v326->elementType_)[v174];
        v177 = v327->super.size_;
        v346 = v171;
        if (v174 >= v177)
        {
          IOSArray_throwOutOfBoundsWithMsg(v177, v174);
        }

        v178 = (&v327->elementType_)[v174];
        if (v171 && v178 != 0)
        {
          break;
        }

        if (v171)
        {
LABEL_212:
          v194 = v339->super.size_;
          if (v174 >= v194)
          {
            IOSArray_throwOutOfBoundsWithMsg(v194, v174);
          }

          v337 = (&v339->elementType_)[v174];
          v195 = v336[2];
          if (v174 >= v195)
          {
            IOSArray_throwOutOfBoundsWithMsg(v195, v174);
          }

          if (!v173)
          {
            goto LABEL_419;
          }

          v334 = *&v336[2 * v174 + 6];
          v196 = v173->super.size_;
          if (v174 >= v196)
          {
            IOSArray_throwOutOfBoundsWithMsg(v196, v174);
          }

          if (!v349)
          {
            goto LABEL_419;
          }

          v197 = (&v173->elementType_)[v174];
          v198 = [v349 getWithInt:(v343 + v174)];
          v174 = v357;
          v173 = v323;
          v175 = v329;
          v170 = 0x7FFFFFFFLL;
          v171 = v337;
          v172 = v334;
          if (v198 >= 1)
          {
            if (v337)
            {
              v199 = 0;
              v200 = v198 & 0x7FFFFFFF;
              v201 = &v329->super.super.isa + v357;
              while (1)
              {
                v202 = SLODWORD(v337[1].super.isa);
                if (v199 >= v202)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v202, v199);
                }

                if (!v334)
                {
                  break;
                }

                v203 = *(v334 + 8);
                if (v199 >= v203)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v203, v199);
                }

                v204 = v323[2];
                if (v357 >= v204)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v204, v357);
                }

                v205 = *&v323[2 * v357 + 6];
                if (!v205 || !v329)
                {
                  break;
                }

                v206 = v329->super.size_;
                if (v357 >= v206)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v206, v357);
                }

                v207 = v201[3];
                if (!v207)
                {
                  break;
                }

                v208 = *(v207 + 2);
                if (v199 >= v208)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v208, v199);
                }

                v209 = *(v207 + v199 + 3);
                v210 = *(v205 + 8);
                if (v209 < 0 || v209 >= v210)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v210, v209);
                }

                v211 = *(v334 + 12 + 4 * v199) + *(&v337[1].super.isa + v199 + 1);
                *(v205 + 12 + 4 * v209) += v211;
                v212 = v329->super.size_;
                if (v357 >= v212)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v212, v357);
                }

                v213 = v201[3];
                if (!v213)
                {
                  break;
                }

                v214 = *(v213 + 2);
                if (v199 >= v214)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v214, v199);
                }

                v215 = *(v213 + v199++ + 3);
                v216 = &v346->super.isa + 4 * v215 + 4;
                for (k = &v197->super.isa + 4 * v215 + 4; ; k += 4)
                {
                  v218 = v329->super.size_;
                  if (v357 >= v218)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v218, v357);
                  }

                  v219 = v201[3];
                  if (!v219)
                  {
                    goto LABEL_419;
                  }

                  v220 = *(v219 + 2);
                  if (v199 >= v220)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v220, v199);
                  }

                  v221 = (v215 + 1);
                  if (v221 >= *(v219 + v199 + 3))
                  {
                    break;
                  }

                  v222 = LODWORD(v346[1].super.isa);
                  if ((v215 & 0x80000000) != 0 || v215 >= v222)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v222, v215);
                  }

                  v223 = *(&v346[1].super.isa + v215 + 1);
                  if ((v221 & 0x80000000) != 0 || v221 >= v222)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v222, v221);
                  }

                  *(v216 + 12) += v223;
                  if (!v197)
                  {
                    goto LABEL_419;
                  }

                  v224 = LODWORD(v197[1].super.isa);
                  if ((v221 & 0x80000000) != 0 || v221 >= v224)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v224, v221);
                  }

                  *(k + 3) += v211;
                  v216 += 4;
                  v215 = v221;
                }

                v161 = v342;
                v138 = v361;
                if (v199 == v200)
                {
                  goto LABEL_262;
                }
              }
            }

            goto LABEL_419;
          }
        }

LABEL_262:
        ++v174;
        v162 = v332;
        if (v174 == v341)
        {
          goto LABEL_272;
        }
      }

      v180 = v161->super.size_;
      if (v174 >= v180)
      {
        IOSArray_throwOutOfBoundsWithMsg(v180, v174);
      }

      v181 = *(&v161->super.size_ + v174 + 1);
      v182 = v324->super.size_;
      if (v181 < 0 || v181 >= v182)
      {
        IOSArray_throwOutOfBoundsWithMsg(v182, v181);
      }

      v183 = 0;
      v184 = *(&v324->super.size_ + v181 + 1);
      v185 = (&v326->elementType_)[v174];
      for (m = (&v327->elementType_)[v174]; ; m = (m + 4))
      {
        v187 = v326->super.size_;
        if (v174 >= v187)
        {
          IOSArray_throwOutOfBoundsWithMsg(v187, v174);
        }

        v188 = (&v326->elementType_)[v174];
        if (!v188)
        {
          break;
        }

        if (v183 >= SLODWORD(v188[1].super.isa))
        {
          goto LABEL_212;
        }

        v189 = SLODWORD(v178[1].super.isa);
        if (v183 >= v189)
        {
          IOSArray_throwOutOfBoundsWithMsg(v189, v183);
        }

        v190 = v184 * SHIDWORD(m[1].super.isa);
        if (v190 < 0.0)
        {
          v191 = 0x80000000;
        }

        else
        {
          v191 = 0x7FFFFFFF;
        }

        if (v190 == 0x80000000)
        {
          v192 = v191;
        }

        else
        {
          v192 = v190;
        }

        v193 = SLODWORD(v171[1].super.isa);
        if (v183 >= v193)
        {
          IOSArray_throwOutOfBoundsWithMsg(v193, v183);
        }

        HIDWORD(v185[1].super.isa) += v192;
        ++v183;
        v185 = (v185 + 4);
        v161 = v342;
      }

      goto LABEL_419;
    }

    v162 = v332;
  }

LABEL_305:
  v359 = [IOSObjectArray arrayWithLength:v341 type:IOSClass_arrayType([IOSClass intClass:v170], 1u)];
  if (v151 < 1)
  {
    v254 = 0;
    v244 = 0;
    v255 = 0;
  }

  else
  {
    [*(v105 + v138) resetWithOrgApacheLuceneStoreDataInput:*(v105 + 16) withLong:v151];
    if (v343 >= 1)
    {
      v241 = v340;
      if (v340)
      {
        v242 = 0;
        v243 = 0;
        v244 = 0;
        while (1)
        {
          v245 = [v241 getWithInt:v242];
          if (!v349)
          {
            break;
          }

          v246 = [v349 getWithInt:v242];
          v247 = v246;
          if ((v245 & 4) != 0)
          {
            v248 = v354;
            if (v246 >= 1)
            {
              v249 = 0;
              v250 = v246 & 0x7FFFFFFF;
              do
              {
                v251 = v248[2];
                v252 = v243 + v249;
                if (v243 + v249 < 0 || v252 >= v251)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v251, v252);
                }

                v253 = v248[v243 + 3 + v249];
                if (v253 >= 1)
                {
                  do
                  {
                    v244 += [*(v105 + v138) next];
                    --v253;
                  }

                  while (v253);
                }

                ++v249;
                v248 = v354;
              }

              while (v249 != v250);
            }
          }

          v243 += v247;
          v242 = (v242 + 1);
          v241 = v340;
          if (v242 == v343)
          {
            goto LABEL_324;
          }
        }
      }

      goto LABEL_419;
    }

    v244 = 0;
    v243 = 0;
    v241 = v340;
LABEL_324:
    v347 = v243;
    if (v341 >= 1)
    {
      if (v241)
      {
        v256 = 0;
        v255 = 0;
        while (1)
        {
          v257 = [v340 getWithInt:(v343 + v256)];
          if (!v349)
          {
            break;
          }

          v258 = [v349 getWithInt:(v343 + v256)];
          v325 = v258;
          if ((v257 & 4) != 0)
          {
            if (!v329)
            {
              goto LABEL_419;
            }

            v259 = v258;
            v260 = v329->super.size_;
            if (v256 >= v260)
            {
              IOSArray_throwOutOfBoundsWithMsg(v260, v256);
            }

            v261 = (&v329->elementType_)[v256];
            if (!v261)
            {
              goto LABEL_419;
            }

            v262 = LODWORD(v261[1].super.isa);
            if ((v259 & 0x80000000) != 0 || v262 <= v259)
            {
              IOSArray_throwOutOfBoundsWithMsg(v262, v259);
            }

            IOSObjectArray_SetAndConsume(v359, v256, [IOSIntArray newArrayWithLength:*(&v261[1].super.isa + v259 + 1) + 1]);
            v263 = v359->super.size_;
            if (v256 >= v263)
            {
              IOSArray_throwOutOfBoundsWithMsg(v263, v256);
            }

            v264 = (&v359->elementType_)[v256];
            v265 = v354;
            if (!v264)
            {
              goto LABEL_419;
            }

            v266 = LODWORD(v264[1].super.isa);
            if (v266 <= 0)
            {
              IOSArray_throwOutOfBoundsWithMsg(v266, 0);
            }

            HIDWORD(v264[1].super.isa) = v255;
            if (v259 >= 1)
            {
              v267 = v259;
              v268 = 0;
              v269 = 0;
              v335 = v267 & 0x7FFFFFFF;
              do
              {
                v270 = v265[2];
                v271 = v347 + v268;
                if (v347 + v268 < 0 || v271 >= v270)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v270, v271);
                }

                v272 = v265[v271 + 3];
                if (v272 < 1)
                {
                  v138 = v361;
                }

                else
                {
                  v338 = v269 + v272;
                  v273 = (v269 + 1);
                  do
                  {
                    next2 = [*(v105 + v361) next];
                    v275 = v359->super.size_;
                    if (v256 >= v275)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v275, v256);
                    }

                    v276 = (&v359->elementType_)[v256];
                    if (!v276)
                    {
                      goto LABEL_419;
                    }

                    v277 = LODWORD(v276[1].super.isa);
                    if ((v273 & 0x80000000) != 0 || v273 >= v277)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v277, v273);
                    }

                    v255 += next2;
                    *(&v276[1].super.isa + v273 + 1) = v255;
                    v273 = (v273 + 1);
                    --v272;
                    v105 = v360;
                  }

                  while (v272);
                  v269 = v338;
                  v138 = v361;
                  v265 = v354;
                }

                ++v268;
              }

              while (v268 != v335);
            }
          }

          v347 += v325;
          if (++v256 == v341)
          {
            goto LABEL_362;
          }
        }
      }

      goto LABEL_419;
    }

    v255 = 0;
LABEL_362:
    v254 = v255 + v244;
    if (v321 < v350)
    {
      v278 = v340;
      if (v340)
      {
        v279 = v321;
        while (1)
        {
          v280 = [v278 getWithInt:v279];
          if (!v349)
          {
            break;
          }

          v281 = [v349 getWithInt:v279];
          v282 = v281;
          v283 = v279;
          if ((v280 & 4) != 0)
          {
            v284 = v354;
            if (v281 >= 1)
            {
              v285 = 0;
              v286 = v281 & 0x7FFFFFFF;
              do
              {
                v287 = v284[2];
                v288 = v347 + v285;
                if (v347 + v285 < 0 || v288 >= v287)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v287, v288);
                }

                v289 = v284[v347 + 3 + v285];
                if (v289 >= 1)
                {
                  do
                  {
                    v254 += [*(v105 + v138) next];
                    --v289;
                  }

                  while (v289);
                }

                ++v285;
                v284 = v354;
              }

              while (v285 != v286);
            }
          }

          v347 += v282;
          v279 = (v283 + 1);
          v278 = v340;
          v162 = v332;
          if (v279 >= v350)
          {
            goto LABEL_379;
          }
        }
      }

      goto LABEL_419;
    }

    v162 = v332;
  }

LABEL_379:
  v290 = new_OrgApacheLuceneUtilBytesRef_init();
  v291 = *(v105 + 48);
  if (!v291)
  {
    goto LABEL_419;
  }

  [v291 decompressWithOrgApacheLuceneStoreDataInput:*(v105 + 16) withInt:(v254 + v322) withInt:(v244 + v162) withInt:(v255 + v331) withOrgApacheLuceneUtilBytesRef:v290];
  v290->length_ = v331;
  v292 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(v290->bytes_, v290->offset_ + v331, v255);
  v293 = &OBJC_METACLASS___IOSBooleanArray.cache;
  v294 = v341;
  v295 = [IOSIntArray arrayWithLength:v341];
  v348 = v292;
  if (v341 <= 0)
  {
    v362 = [IOSIntArray arrayWithLength:v341];
    v296 = v343;
  }

  else
  {
    v296 = v343;
    if (!v340)
    {
      goto LABEL_419;
    }

    for (n = 0; n != v341; *(&v295->super.size_ + ++n) = v298)
    {
      v298 = [v340 getWithInt:(v343 + n)];
      v299 = v295->super.size_;
      if (n >= v299)
      {
        IOSArray_throwOutOfBoundsWithMsg(v299, n);
      }
    }

    v300 = [IOSIntArray arrayWithLength:v341];
    if (!v349)
    {
      goto LABEL_419;
    }

    v301 = 0;
    v362 = v300;
    do
    {
      v302 = [v349 getWithInt:(v343 + v301)];
      v303 = v362->super.size_;
      if (v301 >= v303)
      {
        IOSArray_throwOutOfBoundsWithMsg(v303, v301);
      }

      *(&v362->super.size_ + ++v301) = v302;
    }

    while (v341 != v301);
    v294 = v341;
  }

  v304 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v294, IOSClass_arrayType(+[IOSClass intClass], 1u));
  v344 = v290;
  if (v296 < 1)
  {
    v306 = 0;
  }

  else
  {
    if (!v349)
    {
      goto LABEL_419;
    }

    v305 = 0;
    v306 = 0;
    do
    {
      v306 += [v349 getWithInt:v305];
      v305 = (v305 + 1);
    }

    while (v296 != v305);
  }

  if (v341 >= 1)
  {
    if (!v349)
    {
      goto LABEL_419;
    }

    for (ii = 0; ii != v341; ++ii)
    {
      v308 = [v349 getWithInt:(v296 + ii)];
      IOSObjectArray_SetAndConsume(v304, ii, [v293 + 33 newArrayWithLength:v308]);
      if (v308 >= 1)
      {
        v309 = 0;
        v310 = v308 & 0x7FFFFFFF;
        do
        {
          v311 = v306 + v309;
          v312 = v354[2];
          if (((v306 + v309) & 0x80000000) != 0 || v311 >= v312)
          {
            IOSArray_throwOutOfBoundsWithMsg(v312, v306 + v309);
          }

          v313 = v354[v311 + 3];
          v314 = v304->super.size_;
          if (ii >= v314)
          {
            IOSArray_throwOutOfBoundsWithMsg(v314, ii);
          }

          v315 = (&v304->elementType_)[ii];
          if (!v315)
          {
            goto LABEL_419;
          }

          v316 = SLODWORD(v315[1].super.isa);
          if (v309 >= v316)
          {
            IOSArray_throwOutOfBoundsWithMsg(v316, v309);
          }

          *(&v315[1].super.isa + ++v309) = v313;
        }

        while (v310 != v309);
        v306 += v309;
        v105 = v360;
        v296 = v343;
        v293 = (&OBJC_METACLASS___IOSBooleanArray + 16);
      }
    }
  }

  v317 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields alloc];
  sub_1000832F4(&v317->super.super.isa, v105, v351, v295, v342, v362, v328, v339, v336, v304, v329, v327, v326, v323, v348, v359, v344);

  return v317;
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
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term vector index", self->indexReader_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *)&v3 dealloc];
}

@end