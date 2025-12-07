@interface JavaNetURLStreamHandler
- (BOOL)equalsWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (BOOL)hostsEqualWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (BOOL)sameFileWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (id)getHostAddressWithJavaNetURL:(id)l;
- (id)toExternalFormWithJavaNetURL:(id)l withBoolean:(BOOL)boolean;
- (int)hashCodeWithJavaNetURL:(id)l;
- (void)parseURLWithJavaNetURL:(id)l withNSString:(id)string withInt:(int)int withInt:(int)withInt;
- (void)setURLWithJavaNetURL:(id)l withNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString;
- (void)setURLWithJavaNetURL:(id)l withNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString withNSString:(id)a9 withNSString:(id)self0 withNSString:(id)self1;
@end

@implementation JavaNetURLStreamHandler

- (void)parseURLWithJavaNetURL:(id)l withNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  if (!l)
  {
    goto LABEL_33;
  }

  selfCopy = self;
  if (*(l + 1) != self)
  {
    v45 = new_JavaLangSecurityException_initWithNSString_(@"Only a URL's stream handler is permitted to mutate it");
    goto LABEL_39;
  }

  v8 = *&withInt;
  FirstOfWithNSString_withNSString_withInt_withInt = *&int;
  if (withInt < int)
  {
    v45 = new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(string);
    goto LABEL_39;
  }

  if (!string)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  if (![string regionMatches:*&int aString:@"//" otherOffset:0 count:2])
  {
    getAuthority = [l getAuthority];
    getUserInfo = [l getUserInfo];
    getHost = [l getHost];
    if (getHost)
    {
      v16 = getHost;
    }

    else
    {
      v16 = &stru_100484358;
    }

    v55 = v16;
    getPort = [l getPort];
    getPath = [l getPath];
    getQuery = [l getQuery];
    getRef = [l getRef];
    goto LABEL_19;
  }

  v11 = (FirstOfWithNSString_withNSString_withInt_withInt + 2);
  FirstOfWithNSString_withNSString_withInt_withInt = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @"/?#", v11, v8);
  v12 = [string substring:v11 endIndex:FirstOfWithNSString_withNSString_withInt_withInt];
  v13 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @"@", v11, FirstOfWithNSString_withNSString_withInt_withInt);
  if (v13 == FirstOfWithNSString_withNSString_withInt_withInt)
  {
    v14 = 0;
  }

  else
  {
    v21 = v13;
    v14 = [string substring:v11 endIndex:v13];
    v11 = (v21 + 1);
  }

  v22 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @"]", v11, FirstOfWithNSString_withNSString_withInt_withInt);
  v23 = v11;
  if (v22 != FirstOfWithNSString_withNSString_withInt_withInt)
  {
    v24 = v22;
    v25 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @":", v11, v22);
    v23 = v24;
    if (v25 == v24)
    {
      [string substring:v11 endIndex:(v24 + 1)];
      v53 = JreStrcat("$$", v46, v47, v48, v49, v50, v51, v52, @"Expected an IPv6 address: ");
LABEL_38:
      v45 = new_JavaLangIllegalArgumentException_initWithNSString_(v53);
LABEL_39:
      objc_exception_throw(v45);
    }
  }

  getAuthority = v12;
  v26 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @":", v23, FirstOfWithNSString_withNSString_withInt_withInt);
  v55 = [string substring:v11 endIndex:v26];
  getUserInfo = v14;
  if (v26 + 1 >= FirstOfWithNSString_withNSString_withInt_withInt)
  {
    getPath = 0;
    getQuery = 0;
    getRef = 0;
    getPort = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v27 = [string substring:? endIndex:?];
  getPort = JavaLangInteger_parseIntWithNSString_(v27, v28, v29, v30, v31, v32, v33, v34);
  if ((getPort & 0x80000000) != 0)
  {
    v53 = JreStrcat("$I", v35, v36, v37, v38, v39, v40, v41, @"port < 0: ");
    goto LABEL_38;
  }

  getPath = 0;
  getQuery = 0;
  getRef = 0;
LABEL_19:
  if (FirstOfWithNSString_withNSString_withInt_withInt >= v8)
  {
    goto LABEL_29;
  }

  v54 = selfCopy;
  while (1)
  {
    v42 = [string charAtWithInt:FirstOfWithNSString_withNSString_withInt_withInt];
    if (v42 == 63)
    {
      v43 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @"#", FirstOfWithNSString_withNSString_withInt_withInt, v8);
      getQuery = [string substring:(FirstOfWithNSString_withNSString_withInt_withInt + 1) endIndex:v43];
      goto LABEL_25;
    }

    if (v42 == 35)
    {
      break;
    }

    v43 = LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(string, @"?#", FirstOfWithNSString_withNSString_withInt_withInt, v8);
    getPath = sub_10026EC4C(getPath, [string substring:FirstOfWithNSString_withNSString_withInt_withInt endIndex:v43]);
    getQuery = 0;
LABEL_25:
    FirstOfWithNSString_withNSString_withInt_withInt = v43;
    if (v43 >= v8)
    {
      getRef = 0;
      goto LABEL_28;
    }
  }

  getRef = [string substring:(FirstOfWithNSString_withNSString_withInt_withInt + 1) endIndex:v8];
LABEL_28:
  selfCopy = v54;
LABEL_29:
  if (getPath)
  {
    v44 = getPath;
  }

  else
  {
    v44 = &stru_100484358;
  }

  -[JavaNetURLStreamHandler setURLWithJavaNetURL:withNSString:withNSString:withInt:withNSString:withNSString:withNSString:withNSString:withNSString:](selfCopy, "setURLWithJavaNetURL:withNSString:withNSString:withInt:withNSString:withNSString:withNSString:withNSString:withNSString:", l, [l getProtocol], v55, getPort, getAuthority, getUserInfo, LibcoreNetUrlUrlUtils_authoritySafePathWithNSString_withNSString_(getAuthority, v44), getQuery, getRef);
}

- (void)setURLWithJavaNetURL:(id)l withNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString
{
  if (!l)
  {
    JreThrowNullPointerException();
  }

  if (*(l + 1) != self)
  {
    v8 = new_JavaLangSecurityException_init();
    objc_exception_throw(v8);
  }

  [l setWithNSString:string withNSString:sString withInt:*&int withNSString:nSString withNSString:withNSString];
}

- (void)setURLWithJavaNetURL:(id)l withNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString withNSString:(id)a9 withNSString:(id)self0 withNSString:(id)self1
{
  if (!l)
  {
    JreThrowNullPointerException();
  }

  if (*(l + 1) != self)
  {
    v11 = new_JavaLangSecurityException_init();
    objc_exception_throw(v11);
  }

  [l setWithNSString:string withNSString:sString withInt:*&int withNSString:nSString withNSString:withNSString withNSString:a9 withNSString:? withNSString:?];
}

- (id)toExternalFormWithJavaNetURL:(id)l withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v6 = new_JavaLangStringBuilder_init();
  if (!l)
  {
    goto LABEL_27;
  }

  v7 = v6;
  -[JavaLangStringBuilder appendWithNSString:](v6, "appendWithNSString:", [l getProtocol]);
  [(JavaLangStringBuilder *)v7 appendWithChar:58];
  getAuthority = [l getAuthority];
  if (!getAuthority)
  {
    getFile = [l getFile];
    if (!getFile)
    {
      goto LABEL_17;
    }

    getFile2 = getFile;
    if (booleanCopy)
    {
      goto LABEL_11;
    }

LABEL_16:
    [(JavaLangStringBuilder *)v7 appendWithNSString:getFile2];
    goto LABEL_17;
  }

  v9 = getAuthority;
  [(JavaLangStringBuilder *)v7 appendWithNSString:@"//"];
  if (!booleanCopy)
  {
    [(JavaLangStringBuilder *)v7 appendWithNSString:v9];
    getFile2 = [l getFile];
    if (!getFile2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  if (!JavaNetURI_AUTHORITY_ENCODER_)
  {
    goto LABEL_27;
  }

  [JavaNetURI_AUTHORITY_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:v9];
  getFile2 = [l getFile];
  if (!getFile2)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  if (!JavaNetURI_FILE_AND_QUERY_ENCODER_)
  {
    goto LABEL_27;
  }

  [JavaNetURI_FILE_AND_QUERY_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:getFile2];
LABEL_17:
  getRef = [l getRef];
  if (!getRef)
  {
    goto LABEL_24;
  }

  v13 = getRef;
  [(JavaLangStringBuilder *)v7 appendWithChar:35];
  if (booleanCopy)
  {
    if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10024FD08();
    }

    if (JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      [JavaNetURI_ALL_LEGAL_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:v13];
      goto LABEL_24;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:v13];
LABEL_24:

  return [(JavaLangStringBuilder *)v7 description];
}

- (BOOL)equalsWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (![JavaNetURLStreamHandler sameFileWithJavaNetURL:"sameFileWithJavaNetURL:withJavaNetURL:" withJavaNetURL:?])
  {
    return 0;
  }

  if (!l || (v6 = [l getRef], !rL))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v6, [rL getRef]))
  {
    return 0;
  }

  getQuery = [l getQuery];
  getQuery2 = [rL getQuery];

  return LibcoreUtilObjects_equalWithId_withId_(getQuery, getQuery2);
}

- (id)getHostAddressWithJavaNetURL:(id)l
{
  if (!l)
  {
    JreThrowNullPointerException();
  }

  getHost = [l getHost];
  v4 = getHost;
  if (getHost && [getHost length])
  {
    return JavaNetInetAddress_getByNameWithNSString_(v4, v5);
  }

  else
  {
    return 0;
  }
}

- (int)hashCodeWithJavaNetURL:(id)l
{
  v3 = [(JavaNetURLStreamHandler *)self toExternalFormWithJavaNetURL:l];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 hash];
}

- (BOOL)hostsEqualWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (!l || (v5 = [l getHost], !rL))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  getHost = [rL getHost];
  if (v6 == getHost)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  return [v6 equalsIgnoreCase:getHost];
}

- (BOOL)sameFileWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (!l || (v7 = [l getProtocol], !rL))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v7, [rL getProtocol]))
  {
    return 0;
  }

  if (![(JavaNetURLStreamHandler *)self hostsEqualWithJavaNetURL:l withJavaNetURL:rL])
  {
    return 0;
  }

  getEffectivePort = [l getEffectivePort];
  if (getEffectivePort != [rL getEffectivePort])
  {
    return 0;
  }

  getFile = [l getFile];
  getFile2 = [rL getFile];

  return LibcoreUtilObjects_equalWithId_withId_(getFile, getFile2);
}

@end