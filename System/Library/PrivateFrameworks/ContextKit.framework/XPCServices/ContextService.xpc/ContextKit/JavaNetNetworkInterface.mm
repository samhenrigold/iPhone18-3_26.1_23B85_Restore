@interface JavaNetNetworkInterface
+ (IOSObjectArray)getInterfaceNames;
+ (JavaUtilArrayList)getNetworkInterfacesList;
+ (id)getNetworkInterfaces;
+ (id)rethrowAsSocketExceptionWithJavaLangException:(id)exception;
+ (int)getInterfaceIndexWithNSString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)getHardwareAddress;
- (int)getMTU;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNetNetworkInterface

+ (id)rethrowAsSocketExceptionWithJavaLangException:(id)exception
{
  v4 = new_JavaNetSocketException_init();
  [(JavaLangThrowable *)v4 initCauseWithJavaLangThrowable:exception];
  objc_exception_throw(v4);
}

+ (id)getNetworkInterfaces
{
  v2 = +[JavaNetNetworkInterface getNetworkInterfacesList]_0(self, a2);

  return JavaUtilCollections_enumerationWithJavaUtilCollection_(v2);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->interfaceIndex_ != *(equal + 4))
  {
LABEL_12:
    LOBYTE(v6) = 0;
    return v6;
  }

  name = self->name_;
  if (!name)
  {
    goto LABEL_16;
  }

  v6 = [(NSString *)name isEqual:*(equal + 1)];
  if (!v6)
  {
    return v6;
  }

  addresses = self->addresses_;
  if (!addresses)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v8 = *(equal + 4);

  LOBYTE(v6) = [(JavaUtilList *)addresses isEqual:v8];
  return v6;
}

- (unint64_t)hash
{
  name = self->name_;
  if (!name)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)name hash];
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(25);
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"["];
  [(JavaLangStringBuilder *)v3 appendWithNSString:self->name_];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"]["];
  [(JavaLangStringBuilder *)v3 appendWithInt:self->interfaceIndex_];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"]"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  addresses = self->addresses_;
  if (!addresses)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(addresses);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(JavaLangStringBuilder *)v3 appendWithNSString:@"[", v11];
        if (!v9)
        {
          goto LABEL_11;
        }

        -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v9 description]);
        [(JavaLangStringBuilder *)v3 appendWithNSString:@"]"];
      }

      v6 = [(JavaUtilList *)addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getHardwareAddress
{
  uTF8String = [(NSString *)self->name_ UTF8String];
  if (!uTF8String)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001CFD58;
  v10 = sub_1001CFD68;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CFD74;
  v5[3] = &unk_100427740;
  v5[4] = &v6;
  sub_1001CFE14(uTF8String, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)getMTU
{
  if (self->name_)
  {
    v3 = socket(2, 2, 0);
    if (v3 < 0)
    {
      v7 = *__error();
      v8 = @"socket";
    }

    else
    {
      v4 = v3;
      v10 = 0u;
      v11 = 0u;
      [(NSString *)self->name_ UTF8String];
      __strcpy_chk();
      v5 = ioctl(v4, 0xC0206933uLL, &v10);
      close(v4);
      if ((v5 & 0x80000000) == 0)
      {
        return v11;
      }

      v7 = *__error();
      v8 = @"ioctl";
    }

    v9 = sub_1001CFFB0(v8, v7);
    objc_exception_throw(v9);
  }

  return 0;
}

+ (int)getInterfaceIndexWithNSString:(id)string
{
  uTF8String = [string UTF8String];

  return if_nametoindex(uTF8String);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetNetworkInterface;
  [(JavaNetNetworkInterface *)&v3 dealloc];
}

+ (JavaUtilArrayList)getNetworkInterfacesList
{
  v2 = +[JavaNetNetworkInterface getInterfaceNames]_0();
  if (!v2)
  {
LABEL_64:
    JreThrowNullPointerException();
  }

  v3 = v2;
  size = v2->super.size_;
  if (qword_100554E40 != -1)
  {
    sub_1001D0F14();
  }

  v5 = [IOSObjectArray arrayWithLength:size type:qword_100554E38];
  v7 = [IOSBooleanArray arrayWithLength:v5->super.size_];
  if (v3->super.size_ >= 1)
  {
    v8 = 0;
    do
    {
      v9 = JavaNetNetworkInterface_getByNameWithNSString_((&v3->elementType_)[v8], v6);
      IOSObjectArray_Set(v5, v8, v9);
      v10 = v5->super.size_;
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      if (!(&v5->elementType_)[v8])
      {
        v11 = v7->super.size_;
        if (v8 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v8);
        }

        *(&v7->super.size_ + v8 + 4) = 1;
      }

      ++v8;
    }

    while (v8 < v3->super.size_);
  }

  v12 = new_JavaUtilArrayList_init();
  v20 = v12;
  if (v5->super.size_ >= 1)
  {
    v21 = 0;
    v46 = v12;
    do
    {
      v22 = v7->super.size_;
      if (v21 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v21);
      }

      if ((*(&v7->super.size_ + v21 + 4) & 1) == 0)
      {
        v23 = v5->super.size_;
        if (v21 >= v23)
        {
          v43 = v23;
        }

        else
        {
          v24 = &v5->super.super.isa + v21;
          v25 = v21;
          do
          {
            v26 = v7->super.size_;
            if (v25 >= v26)
            {
              IOSArray_throwOutOfBoundsWithMsg(v26, v25);
            }

            if ((*(&v7->super.size_ + v25 + 4) & 1) == 0)
            {
              v27 = v5->super.size_;
              if (v25 >= v27)
              {
                IOSArray_throwOutOfBoundsWithMsg(v27, v25);
              }

              v28 = (&v5->elementType_)[v25];
              if (!v28)
              {
                goto LABEL_64;
              }

              isa = v28[1].super.isa;
              if (!isa)
              {
                goto LABEL_64;
              }

              v30 = v5->super.size_;
              if (v21 >= v30)
              {
                IOSArray_throwOutOfBoundsWithMsg(v30, v21);
              }

              v31 = v24[3];
              if (!v31)
              {
                goto LABEL_64;
              }

              if ([(objc_class *)isa hasPrefix:JreStrcat("$C", v13, v14, v15, v16, v17, v18, v19, *(v31 + 1))])
              {
                v32 = v5->super.size_;
                if (v21 >= v32)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v32, v21);
                }

                v33 = v24[3];
                if (!v33 || !*(v33 + 5))
                {
                  goto LABEL_64;
                }

                v34 = v5->super.size_;
                if (v25 >= v34)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v34, v25);
                }

                [*(v33 + 5) addWithId:(&v5->elementType_)[v25]];
                v35 = v5->super.size_;
                if (v25 >= v35)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v35, v25);
                }

                v36 = (&v5->elementType_)[v25];
                if (!v36)
                {
                  goto LABEL_64;
                }

                v37 = v5->super.size_;
                if (v21 >= v37)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v37, v21);
                }

                JreStrongAssign(&v36[6].super.isa, v24[3]);
                v38 = v5->super.size_;
                if (v21 >= v38)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v38, v21);
                }

                v39 = v24[3];
                if (!v39 || !*(v39 + 4))
                {
                  goto LABEL_64;
                }

                v40 = v5->super.size_;
                if (v25 >= v40)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v40, v25);
                }

                v41 = (&v5->elementType_)[v25];
                if (!v41)
                {
                  goto LABEL_64;
                }

                [*(v39 + 4) addAllWithJavaUtilCollection:v41[4].super.isa];
                v42 = v7->super.size_;
                if (v25 >= v42)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v42, v25);
                }

                *(&v7->super.size_ + v25 + 4) = 1;
              }
            }

            ++v25;
            v23 = v5->super.size_;
          }

          while (v25 < v23);
          v43 = v23;
          v20 = v46;
        }

        if (v21 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v21);
        }

        [(JavaUtilArrayList *)v20 addWithId:(&v5->elementType_)[v21]];
        v44 = v7->super.size_;
        if (v21 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v21);
        }

        *(&v7->super.size_ + v21 + 4) = 1;
      }

      ++v21;
    }

    while (v21 < v5->super.size_);
  }

  return v20;
}

+ (IOSObjectArray)getInterfaceNames
{
  v0 = +[NSMutableArray array];
  v4 = 0;
  v1 = getifaddrs(&v4);
  v2 = v4;
  if (!v1 && v4)
  {
    do
    {
      if (v2->ifa_addr->sa_family == 2)
      {
        [v0 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v2->ifa_name)}];
      }

      v2 = v2->ifa_next;
    }

    while (v2);
    v2 = v4;
  }

  freeifaddrs(v2);
  return [IOSObjectArray arrayWithNSArray:v0 type:NSString_class_()];
}

@end