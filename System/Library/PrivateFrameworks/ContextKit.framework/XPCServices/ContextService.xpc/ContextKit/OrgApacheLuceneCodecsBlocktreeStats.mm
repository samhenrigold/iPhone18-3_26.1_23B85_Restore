@interface OrgApacheLuceneCodecsBlocktreeStats
- (id)description;
- (void)dealloc;
- (void)endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)frame;
- (void)startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)frame withBoolean:(BOOL)boolean;
- (void)termWithOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneCodecsBlocktreeStats

- (void)startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)frame withBoolean:(BOOL)boolean
{
  ++self->totalBlockCount_;
  if (boolean)
  {
    if (!frame)
    {
      goto LABEL_16;
    }

    if (*(frame + 4) == *(frame + 5))
    {
      ++self->floorBlockCount_;
    }

    v10 = 40;
  }

  else
  {
    v10 = 32;
  }

  ++*(&self->super.isa + v10);
  p_blockCountByPrefixLen = &self->blockCountByPrefixLen_;
  blockCountByPrefixLen = self->blockCountByPrefixLen_;
  if (!blockCountByPrefixLen)
  {
    goto LABEL_16;
  }

  if (!frame)
  {
    goto LABEL_16;
  }

  v13 = *(frame + 26);
  if (blockCountByPrefixLen->super.size_ <= v13)
  {
    v14 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->blockCountByPrefixLen_, v13 + 1, frame, boolean, v4, v5, v6, v7);
    JreStrongAssign(&self->blockCountByPrefixLen_, v14);
    blockCountByPrefixLen = *p_blockCountByPrefixLen;
    if (!*p_blockCountByPrefixLen)
    {
      goto LABEL_16;
    }
  }

  v15 = *(frame + 26);
  size = blockCountByPrefixLen->super.size_;
  if (v15 < 0 || v15 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v15);
  }

  ++*(&blockCountByPrefixLen->super.size_ + v15 + 1);
  ++self->startBlockCount_;
  v17 = *(frame + 8);
  if (!v17 || (self->totalBlockSuffixBytes_ += [v17 length], (v18 = *(frame + 10)) == 0))
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  self->totalBlockStatsBytes_ += [v18 length];
}

- (void)endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)frame
{
  if (!frame)
  {
    goto LABEL_20;
  }

  if (*(frame + 117) == 1)
  {
    v5 = (frame + 108);
  }

  else
  {
    v6 = *(frame + 18);
    if (!v6)
    {
      goto LABEL_20;
    }

    v5 = (v6 + 32);
  }

  v7 = *(frame + 27);
  v8 = *v5;
  self->totalTermCount_ += v8;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v18 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v18);
  }

  v10 = v7 == v8 || v8 == 0;
  v11 = 48;
  if (!v10)
  {
    v11 = 44;
  }

  v9 = v8 == 0;
  v12 = 52;
  if (!v9)
  {
    v12 = v11;
  }

  ++*(&self->super.isa + v12);
  ++self->endBlockCount_;
  v13 = *(frame + 8);
  if (!v13 || (v14 = *(frame + 6), v15 = *(frame + 4), v16 = [v13 length], (v17 = *(frame + 10)) == 0))
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  self->totalBlockOtherBytes_ += v14 - (v15 + v16 + [v17 length]);
}

- (void)termWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  self->totalTermBytes_ += *(ref + 5);
}

- (id)description
{
  v152 = new_JavaIoByteArrayOutputStream_initWithInt_(1024);
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v2 = new_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(v152, 0, OrgApacheLuceneUtilIOUtils_UTF_8_);
  v3 = v2;
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoPrintStream *)v2 printlnWithNSString:@"  index FST:"];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$", v4, v5, v6, v7, v8, v9, v10, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:@"  terms:"];
  v18 = [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$", v11, v12, v13, v14, v15, v16, v17, @"    ")];
  if (self->totalTermCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      v18 = sub_1000458CC();
    }

    v26 = JavaUtilLocale_ROOT_;
    v158 = JavaLangDouble_valueOfWithDouble_(v18, v19, self->totalTermBytes_ / self->totalTermCount_);
    v28 = [IOSObjectArray arrayWithObjects:&v158 count:1 type:NSObject_class_(v158, v27)];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v26, @"%.1f", v28);
    JreStrcat("$$$", v29, v30, v31, v32, v33, v34, v35, @" (");
  }

  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$$", v19, v20, v21, v22, v23, v24, v25, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:@"  blocks:"];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v36, v37, v38, v39, v40, v41, v42, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v43, v44, v45, v46, v47, v48, v49, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v50, v51, v52, v53, v54, v55, v56, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v57, v58, v59, v60, v61, v62, v63, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v64, v65, v66, v67, v68, v69, v70, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v71, v72, v73, v74, v75, v76, v77, @"    ")];
  v85 = [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$I$", v78, v79, v80, v81, v82, v83, v84, @"    ")];
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      v85 = sub_1000A1594();
    }

    v93 = JavaUtilLocale_ROOT_;
    v157 = JavaLangDouble_valueOfWithDouble_(v85, v86, self->totalBlockSuffixBytes_ / self->totalBlockCount_);
    v95 = [IOSObjectArray arrayWithObjects:&v157 count:1 type:NSObject_class_(v157, v94)];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v93, @"%.1f", v95);
    JreStrcat("$$$", v96, v97, v98, v99, v100, v101, v102, @" (");
  }

  v103 = [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$$", v86, v87, v88, v89, v90, v91, v92, @"    ")];
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      v103 = sub_1000A1594();
    }

    v111 = JavaUtilLocale_ROOT_;
    v156 = JavaLangDouble_valueOfWithDouble_(v103, v104, self->totalBlockStatsBytes_ / self->totalBlockCount_);
    v113 = [IOSObjectArray arrayWithObjects:&v156 count:1 type:NSObject_class_(v156, v112)];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v111, @"%.1f", v113);
    JreStrcat("$$$", v114, v115, v116, v117, v118, v119, v120, @" (");
  }

  v121 = [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$$", v104, v105, v106, v107, v108, v109, v110, @"    ")];
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      v121 = sub_1000A1594();
    }

    v129 = JavaUtilLocale_ROOT_;
    v155 = JavaLangDouble_valueOfWithDouble_(v121, v122, self->totalBlockOtherBytes_ / self->totalBlockCount_);
    v131 = [IOSObjectArray arrayWithObjects:&v155 count:1 type:NSObject_class_(v155, v130)];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v129, @"%.1f", v131);
    JreStrcat("$$$", v132, v133, v134, v135, v136, v137, v138, @" (");
  }

  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$$", v122, v123, v124, v125, v126, v127, v128, @"    ")];
  if (self->totalBlockCount_)
  {
    [(JavaIoPrintStream *)v3 printlnWithNSString:@"    by prefix length:"];
    blockCountByPrefixLen = self->blockCountByPrefixLen_;
    if (!blockCountByPrefixLen)
    {
LABEL_33:
      JreThrowNullPointerException();
    }

    v140 = 0;
    while (v140 < blockCountByPrefixLen->super.size_)
    {
      if (*(&blockCountByPrefixLen->super.size_ + v140 + 1))
      {
        if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000A1594();
        }

        v141 = JavaUtilLocale_ROOT_;
        v154 = JavaLangInteger_valueOfWithInt_(v140);
        v143 = [IOSObjectArray arrayWithObjects:&v154 count:1 type:NSObject_class_(v154, v142)];
        NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v141, @"%2d", v143);
        [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$$$I", v144, v145, v146, v147, v148, v149, v150, @"      ")];
        blockCountByPrefixLen = self->blockCountByPrefixLen_;
      }

      ++v140;
      if (!blockCountByPrefixLen)
      {
        goto LABEL_33;
      }
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  return [(JavaIoByteArrayOutputStream *)v152 toStringWithNSString:OrgApacheLuceneUtilIOUtils_UTF_8_];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeStats;
  [(OrgApacheLuceneCodecsBlocktreeStats *)&v3 dealloc];
}

@end