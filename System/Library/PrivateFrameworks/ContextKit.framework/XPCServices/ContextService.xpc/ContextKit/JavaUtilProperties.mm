@interface JavaUtilProperties
- (JavaUtilProperties)initWithJavaUtilProperties:(id)properties;
- (id)getPropertyWithNSString:(id)string;
- (id)getPropertyWithNSString:(id)string withNSString:(id)sString;
- (id)propertyNames;
- (id)stringPropertyNames;
- (void)dealloc;
- (void)listToAppendableWithJavaLangAppendable:(id)appendable;
- (void)loadFromXMLWithJavaIoInputStream:(id)stream;
- (void)load__WithJavaIoInputStream:(id)stream;
- (void)load__WithJavaIoReader:(id)reader;
- (void)storeToXMLWithJavaIoOutputStream:(id)stream withNSString:(id)string withNSString:(id)sString;
- (void)storeWithJavaIoOutputStream:(id)stream withNSString:(id)string;
- (void)storeWithJavaIoWriter:(id)writer withNSString:(id)string;
@end

@implementation JavaUtilProperties

- (JavaUtilProperties)initWithJavaUtilProperties:(id)properties
{
  JavaUtilHashtable_init(self);
  JreStrongAssign(&self->defaults_, properties);
  return self;
}

- (id)getPropertyWithNSString:(id)string
{
  v8.receiver = self;
  v8.super_class = JavaUtilProperties;
  v5 = [(JavaUtilHashtable *)&v8 getWithId:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), v5))
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    defaults = self->defaults_;
    if (defaults)
    {
      return [(JavaUtilProperties *)defaults getPropertyWithNSString:string];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)getPropertyWithNSString:(id)string withNSString:(id)sString
{
  v10.receiver = self;
  v10.super_class = JavaUtilProperties;
  v7 = [(JavaUtilHashtable *)&v10 getWithId:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), v7))
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    defaults = self->defaults_;
    if (defaults)
    {
      v7 = [(JavaUtilProperties *)defaults getPropertyWithNSString:string];
    }

    else
    {
      v7 = 0;
    }
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return sString;
  }
}

- (void)listToAppendableWithJavaLangAppendable:(id)appendable
{
  if (!appendable)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"out == null");
    objc_exception_throw(v13);
  }

  appendableCopy = appendable;
  v4 = new_JavaLangStringBuilder_initWithInt_(80);
  propertyNames = [(JavaUtilProperties *)self propertyNames];
  if (!propertyNames)
  {
    JreThrowNullPointerException();
  }

  v6 = &classRef_OrgApacheLuceneIndexMultiDocValues__3;
  while ([propertyNames hasMoreElements])
  {
    nextElement = [propertyNames nextElement];
    objc_opt_class();
    if (nextElement && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(JavaLangStringBuilder *)v4 appendWithNSString:nextElement];
    [(JavaLangStringBuilder *)v4 appendWithChar:61];
    v8 = v6[257];
    v15.receiver = self;
    v15.super_class = v8;
    v9 = [(JavaUtilHashtable *)&v15 getWithId:nextElement];
    objc_opt_class();
    if (v9)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    else
    {
      v10 = appendableCopy;
      v11 = v6;
      selfCopy = self;
      do
      {
        selfCopy = selfCopy->defaults_;
        if (!selfCopy)
        {
          JreThrowNullPointerException();
        }

        v9 = [(JavaUtilHashtable *)selfCopy getWithId:nextElement];
        objc_opt_class();
      }

      while (!v9);
      v6 = v11;
      appendableCopy = v10;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    if ([(__CFString *)v9 length]>= 41)
    {
      [(JavaLangStringBuilder *)v4 appendWithNSString:[(__CFString *)v9 substring:0 endIndex:37]];
      v9 = @"...";
    }

    [(JavaLangStringBuilder *)v4 appendWithNSString:v9];
    [(JavaLangStringBuilder *)v4 appendWithNSString:JavaLangSystem_lineSeparator()];
    [appendableCopy appendWithJavaLangCharSequence:{-[JavaLangStringBuilder description](v4, "description")}];
    [(JavaLangAbstractStringBuilder *)v4 setLengthWithInt:0];
  }
}

- (void)load__WithJavaIoInputStream:(id)stream
{
  objc_sync_enter(self);
  if (!stream)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v5);
  }

  [(JavaUtilProperties *)self load__WithJavaIoReader:new_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(stream, @"ISO-8859-1")];

  objc_sync_exit(self);
}

- (void)load__WithJavaIoReader:(id)reader
{
  objc_sync_enter(self);
  if (!reader)
  {
    v37 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v37);
  }

  v4 = [IOSCharArray arrayWithLength:40];
  v5 = new_JavaIoBufferedReader_initWithJavaIoReader_(reader);
  v6 = 0;
  v40 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = v9;
    read = [(JavaIoBufferedReader *)v5 read];
    v13 = read;
    if (read == -1)
    {
      break;
    }

    if (v6 == v4->super.size_)
    {
      v14 = [IOSCharArray arrayWithLength:2 * v6];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v4, 0, v14, 0, v6);
      v4 = v14;
    }

    if (v7 == 1)
    {
      v16 = 0;
      if (v13 > 0x6Du)
      {
        if (v13 > 0x73u)
        {
          if (v13 == 116)
          {
            v16 = 0;
            v13 = 9;
            goto LABEL_77;
          }

          if (v13 != 117)
          {
            goto LABEL_77;
          }

          v40 = 0;
          v7 = 2;
        }

        else
        {
          if (v13 == 110)
          {
            v16 = 0;
            v13 = 10;
          }

          else if (v13 == 114)
          {
            v16 = 0;
            v13 = 13;
          }

LABEL_77:
          if (v16 == 4)
          {
            v9 = v6;
          }

          else
          {
            v9 = v10;
          }

          if (v16 == 4)
          {
            v7 = 0;
          }

          else
          {
            v7 = v16;
          }

          v24 = v6;
          size = v4->super.size_;
          if ((v6 & 0x80000000) != 0 || v6 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v6);
          }

          v8 = 0;
          v6 = (v6 + 1);
          *(&v4->super.size_ + v24 + 2) = v13;
        }
      }

      else
      {
        if (v13 > 0x61u)
        {
          if (v13 == 98)
          {
            v16 = 0;
            v13 = 8;
          }

          else if (v13 == 102)
          {
            v16 = 0;
            v13 = 12;
          }

          goto LABEL_77;
        }

        if (v13 == 10)
        {
          v7 = 5;
        }

        else
        {
          v7 = 3;
          if (v13 != 13)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v7 == 2)
    {
      v15 = JavaLangCharacter_digitWithChar_withInt_(v13, 16);
      if (v15 < 0)
      {
        if (v40 <= 4)
        {
          v36 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid Unicode sequence: illegal character");
          objc_exception_throw(v36);
        }

        goto LABEL_22;
      }

      v7 = 2;
      LODWORD(v40) = v40 + 1;
      WORD2(v40) = v15 + 16 * WORD2(v40);
      if (v40 >= 4)
      {
LABEL_22:
        v19 = v4->super.size_;
        if ((v6 & 0x80000000) != 0 || v6 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v6);
        }

        v7 = 0;
        v17 = 0;
        v18 = (v6 + 1);
        *(&v4->super.size_ + v6 + 2) = WORD2(v40);
        v6 = v18;
        if (v13 == 10)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v17 = v7;
      v18 = v6;
LABEL_25:
      if (v13 <= 0x22u)
      {
        switch(v13)
        {
          case 0xAu:
            v7 = 5;
            v6 = v18;
            if (v17 != 3)
            {
LABEL_67:
              if (v18 > 0 || (v6 = 0, v7 = 0, v8 = 1, v9 = 0xFFFFFFFFLL, !(v18 | v10)))
              {
                if (v10 == -1)
                {
                  v22 = v18;
                }

                else
                {
                  v22 = v10;
                }

                v23 = [NSString stringWithCharacters:v4 offset:0 length:v18];
                v8 = 1;
                v9 = 0xFFFFFFFFLL;
                [(JavaUtilHashtable *)self putWithId:[(NSString *)v23 substring:0 endIndex:v22] withId:[(NSString *)v23 substring:v22]];
                v6 = 0;
                v7 = 0;
              }
            }

            break;
          case 0xDu:
            goto LABEL_67;
          case 0x21u:
LABEL_33:
            if ((v8 & 1) == 0)
            {
              goto LABEL_45;
            }

            while (1)
            {
              read2 = [(JavaIoBufferedReader *)v5 read];
              if (read2 == -1)
              {
                break;
              }

              v8 = 1;
              if (read2 == 10 || read2 == 13)
              {
                goto LABEL_87;
              }
            }

            v8 = 1;
LABEL_87:
            v6 = v18;
            v7 = v17;
            break;
          default:
            goto LABEL_45;
        }
      }

      else if (v13 > 0x3Cu)
      {
        if (v13 == 61)
        {
          goto LABEL_44;
        }

        if (v13 != 92)
        {
          goto LABEL_45;
        }

        if (v17 == 4)
        {
          v9 = v18;
        }

        else
        {
          v9 = v9;
        }

        v7 = 1;
        v6 = v18;
      }

      else
      {
        if (v13 == 35)
        {
          goto LABEL_33;
        }

        if (v13 == 58)
        {
LABEL_44:
          v7 = 0;
          v6 = v18;
          v9 = v18;
          if (v10 != -1)
          {
            goto LABEL_45;
          }
        }

        else
        {
LABEL_45:
          if (!JavaLangCharacter_isWhitespaceWithChar_(v13, v12) || ((v6 = 0, v17 != 3) ? (v17 = v17) : (v17 = 5), (v9 = v10, v7 = v17, v18) && (v6 = v18, v9 = v10, v7 = v17, v17 != 5) && (v6 = v18, v9 = v10, v7 = v17, v18 != v10) && (v7 = 4, v9 = 0xFFFFFFFFLL, v6 = v18, v10 != -1)))
          {
            if (v17 == 3 || v17 == 5)
            {
              v16 = 0;
            }

            else
            {
              v16 = v17;
            }

            LODWORD(v6) = v18;
            goto LABEL_77;
          }
        }
      }
    }
  }

  if (v7 == 2 && v40 <= 4)
  {
    v38 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid Unicode sequence: expected format \\uxxxx");
    objc_exception_throw(v38);
  }

  if (v6 > 0 && v9 == -1)
  {
    v27 = v6;
  }

  else
  {
    v27 = v9;
  }

  if ((v27 & 0x80000000) == 0)
  {
    v28 = [NSString stringWithCharacters:v4 offset:0 length:v6];
    v29 = [(NSString *)v28 substring:0 endIndex:v27];
    v31 = [(NSString *)v28 substring:v27];
    v41 = v31;
    if (v7 == 1)
    {
      JreStrAppendStrong(&v41, "$", v30, v31, v32, v33, v34, v35, &stru_10049A618);
      v31 = v41;
    }

    [(JavaUtilHashtable *)self putWithId:v29 withId:v31];
  }

  objc_sync_exit(self);
}

- (id)propertyNames
{
  v3 = new_JavaUtilHashtable_init();
  sub_10021DA9C(self, v3, 0);

  return [(JavaUtilHashtable *)v3 keys];
}

- (id)stringPropertyNames
{
  v3 = new_JavaUtilHashtable_init();
  sub_10021DA9C(self, v3, 1);
  keySet = [(JavaUtilHashtable *)v3 keySet];

  return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(keySet, v5);
}

- (void)storeWithJavaIoOutputStream:(id)stream withNSString:(id)string
{
  objc_sync_enter(self);
  [(JavaUtilProperties *)self storeWithJavaIoWriter:new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(stream withNSString:@"ISO-8859-1"), string];

  objc_sync_exit(self);
}

- (void)storeWithJavaIoWriter:(id)writer withNSString:(id)string
{
  objc_sync_enter(self);
  if (string)
  {
    if (writer)
    {
      [writer writeWithNSString:@"#"];
      [writer writeWithNSString:string];
      [writer writeWithNSString:JavaLangSystem_lineSeparator()];
      goto LABEL_5;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!writer)
  {
    goto LABEL_21;
  }

LABEL_5:
  [writer writeWithNSString:@"#"];
  [writer writeWithNSString:{-[JavaUtilDate description](new_JavaUtilDate_init(), "description")}];
  [writer writeWithNSString:JavaLangSystem_lineSeparator()];
  v7 = new_JavaLangStringBuilder_initWithInt_(200);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  entrySet = [(JavaUtilHashtable *)self entrySet];
  v9 = entrySet;
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  v10 = [entrySet countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (!v13)
        {
          JreThrowNullPointerException();
        }

        getKey = [*(*(&v16 + 1) + 8 * i) getKey];
        objc_opt_class();
        if (getKey && (objc_opt_isKindOfClass() & 1) == 0 || (sub_10021CDE0(v7, getKey, 1), -[JavaLangStringBuilder appendWithChar:](v7, "appendWithChar:", 61), v15 = [v13 getValue], objc_opt_class(), v15) && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        sub_10021CDE0(v7, v15, 0);
        [(JavaLangStringBuilder *)v7 appendWithNSString:JavaLangSystem_lineSeparator()];
        [writer writeWithNSString:{-[JavaLangStringBuilder description](v7, "description")}];
        [(JavaLangAbstractStringBuilder *)v7 setLengthWithInt:0];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [writer flush];
  objc_sync_exit(self);
}

- (void)loadFromXMLWithJavaIoInputStream:(id)stream
{
  v5 = objc_sync_enter(self);
  if (!stream)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v9);
  }

  XMLReader = OrgXmlSaxHelpersXMLReaderFactory_createXMLReader(v5, v6);
  if (!XMLReader)
  {
    JreThrowNullPointerException();
  }

  v8 = [JavaUtilProperties__1 alloc];
  JreStrongAssign(&v8->this$0_, self);
  OrgXmlSaxHelpersDefaultHandler_init();
  [(OrgXmlSaxHelpersParserAdapter *)XMLReader setContentHandlerWithOrgXmlSaxContentHandler:v8];
  [(OrgXmlSaxHelpersParserAdapter *)XMLReader parseWithOrgXmlSaxInputSource:new_OrgXmlSaxInputSource_initWithJavaIoInputStream_(stream)];

  objc_sync_exit(self);
}

- (void)storeToXMLWithJavaIoOutputStream:(id)stream withNSString:(id)string withNSString:(id)sString
{
  objc_sync_enter(self);
  if (!stream)
  {
    v19 = @"os == null";
    goto LABEL_27;
  }

  if (!sString)
  {
    v19 = @"encoding == null";
LABEL_27:
    v20 = new_JavaLangNullPointerException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  v8 = JavaNioCharsetCharset_forNameWithNSString_(sString);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  name = [v8 name];
  v10 = new_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(stream, 0, name);
  [(JavaIoPrintStream *)v10 printWithNSString:@"<?xml version=1.0 encoding="];
  [(JavaIoPrintStream *)v10 printWithNSString:name];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@"?>"];
  [(JavaIoPrintStream *)v10 printWithNSString:@"<!DOCTYPE properties SYSTEM "];
  [(JavaIoPrintStream *)v10 printWithNSString:off_1005518D0];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@">"];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@"<properties>"];
  if (string)
  {
    [(JavaIoPrintStream *)v10 printWithNSString:@"<comment>"];
    [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(string)];
    [(JavaIoPrintStream *)v10 printlnWithNSString:@"</comment>"];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  entrySet = [(JavaUtilHashtable *)self entrySet];
  v12 = entrySet;
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  v13 = [entrySet countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (!v16)
        {
          JreThrowNullPointerException();
        }

        getKey = [*(*(&v22 + 1) + 8 * i) getKey];
        objc_opt_class();
        if (getKey && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        getValue = [v16 getValue];
        objc_opt_class();
        if (getValue && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        [(JavaIoPrintStream *)v10 printWithNSString:@"<entry key="];
        [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(getKey)];
        [(JavaIoPrintStream *)v10 printWithNSString:@">"];
        [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(getValue)];
        [(JavaIoPrintStream *)v10 printlnWithNSString:@"</entry>"];
      }

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  [(JavaIoPrintStream *)v10 printlnWithNSString:@"</properties>"];
  [(JavaIoPrintStream *)v10 flush];
  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilProperties;
  [(JavaUtilHashtable *)&v3 dealloc];
}

@end