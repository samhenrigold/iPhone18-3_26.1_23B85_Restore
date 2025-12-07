@interface OrgApacheLuceneUtilConstants
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilConstants

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.vm.vendor", v2);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VENDOR_, PropertyWithNSString);
    v5 = JavaLangSystem_getPropertyWithNSString_(@"java.vm.version", v4);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VERSION_, v5);
    v7 = JavaLangSystem_getPropertyWithNSString_(@"java.vm.name", v6);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_NAME_, v7);
    v9 = JavaLangSystem_getPropertyWithNSString_(@"java.specification.version", v8);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION_, v9);
    v11 = JavaLangSystem_getPropertyWithNSString_(@"java.version", v10);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VERSION_, v11);
    v13 = JavaLangSystem_getPropertyWithNSString_(@"os.name", v12);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_NAME_, v13);
    if (!OrgApacheLuceneUtilConstants_OS_NAME_)
    {
      goto LABEL_25;
    }

    OrgApacheLuceneUtilConstants_LINUX_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Linux"];
    OrgApacheLuceneUtilConstants_WINDOWS_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Windows"];
    OrgApacheLuceneUtilConstants_SUN_OS_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"SunOS"];
    OrgApacheLuceneUtilConstants_MAC_OS_X_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Mac OS X"];
    OrgApacheLuceneUtilConstants_FREE_BSD_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"FreeBSD"];
    v15 = JavaLangSystem_getPropertyWithNSString_(@"os.arch", v14);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_ARCH_, v15);
    v17 = JavaLangSystem_getPropertyWithNSString_(@"os.version", v16);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_VERSION_, v17);
    v19 = JavaLangSystem_getPropertyWithNSString_(@"java.vendor", v18);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VENDOR_, v19);
    v20 = new_JavaUtilStringTokenizer_initWithNSString_withNSString_(OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION_, @".");
    nextToken = [(JavaUtilStringTokenizer *)v20 nextToken];
    dword_100553E38 = JavaLangInteger_parseIntWithNSString_(nextToken, v22, v23, v24, v25, v26, v27, v28);
    hasMoreTokens = [(JavaUtilStringTokenizer *)v20 hasMoreTokens];
    if (hasMoreTokens)
    {
      nextToken2 = [(JavaUtilStringTokenizer *)v20 nextToken];
      hasMoreTokens = JavaLangInteger_parseIntWithNSString_(nextToken2, v32, v33, v34, v35, v36, v37, v38);
    }

    dword_100553E3C = hasMoreTokens;
    v39 = JavaLangSystem_getPropertyWithNSString_(@"sun.arch.data.model", v30);
    if (v39)
    {
      v40 = [v39 contains:@"64"];
    }

    else
    {
      v40 = OrgApacheLuceneUtilConstants_OS_ARCH_ && ([OrgApacheLuceneUtilConstants_OS_ARCH_ contains:@"64"] & 1) != 0;
    }

    OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ = v40;
    if (dword_100553E38 <= 1)
    {
      v42 = dword_100553E38 == 1;
      v41 = dword_100553E3C > 7 && dword_100553E38 == 1;
      if (dword_100553E3C <= 8)
      {
        v42 = 0;
      }
    }

    else
    {
      v41 = 1;
      v42 = 1;
    }

    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8_ = v41;
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9_ = v42;
    if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100010B48();
    }

    if (!OrgApacheLuceneUtilVersion_LATEST_)
    {
LABEL_25:
      JreThrowNullPointerException();
    }

    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION_, [OrgApacheLuceneUtilVersion_LATEST_ description]);
    if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100010B48();
    }

    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_VERSION_, [OrgApacheLuceneUtilVersion_LATEST_ description]);
    atomic_store(1u, OrgApacheLuceneUtilConstants__initialized);
  }
}

@end