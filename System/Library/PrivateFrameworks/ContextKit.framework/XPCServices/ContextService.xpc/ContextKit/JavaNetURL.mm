@interface JavaNetURL
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)sameFileWithJavaNetURL:(id)l;
- (id)getContent;
- (id)getContentWithIOSClassArray:(id)array;
- (id)openConnection;
- (id)openConnectionWithJavaNetProxy:(id)proxy;
- (id)openStream;
- (id)toExternalForm;
- (id)toURI;
- (id)toURILenient;
- (int)getDefaultPort;
- (unint64_t)hash;
- (void)dealloc;
- (void)fixURLWithBoolean:(BOOL)boolean;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)setWithNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString;
- (void)setWithNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString withNSString:(id)a8 withNSString:(id)a9 withNSString:(id)self0;
- (void)setupStreamHandler;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaNetURL

- (void)fixURLWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  p_host = &self->host_;
  host = self->host_;
  if (host)
  {
    if ([(NSString *)host length]>= 1)
    {
      JreStrongAssign(&self->authority_, self->host_);
      if (self->port_ != -1)
      {
        v14 = JreStrcat("$CI", v7, v8, v9, v10, v11, v12, v13, self->authority_);
        JreStrongAssign(&self->authority_, v14);
      }
    }
  }

  if (booleanCopy)
  {
    if (!*p_host || (v15 = [*p_host lastIndexOf:64], (v15 & 0x80000000) != 0))
    {
      p_userInfo = &self->userInfo_;
      v17 = 0;
    }

    else
    {
      v16 = v15;
      JreStrongAssign(&self->userInfo_, [(NSString *)self->host_ substring:0 endIndex:v15]);
      v17 = [(NSString *)self->host_ substring:(v16 + 1)];
      p_userInfo = p_host;
    }

    JreStrongAssign(p_userInfo, v17);
  }

  file = self->file_;
  if (!file || (v20 = [(NSString *)file indexOf:63], (v20 & 0x80000000) != 0))
  {
    JreStrongAssign(&self->query_, 0);
    v22 = self->file_;
  }

  else
  {
    v21 = v20;
    JreStrongAssign(&self->query_, [(NSString *)self->file_ substring:(v20 + 1)]);
    v22 = [(NSString *)self->file_ substring:0 endIndex:v21];
  }

  JreStrongAssign(&self->path_, v22);
}

- (void)setWithNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString
{
  protocol = self->protocol_;
  p_protocol = &self->protocol_;
  if (!protocol)
  {
    JreStrongAssign(p_protocol, string);
  }

  JreStrongAssign(&self->host_, sString);
  JreStrongAssign(&self->file_, nSString);
  self->port_ = int;
  JreStrongAssign(&self->ref_, withNSString);
  self->hashCode_ = 0;

  [(JavaNetURL *)self fixURLWithBoolean:1];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  getClass = [(JavaNetURL *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaNetURLStreamHandler *)streamHandler equalsWithJavaNetURL:self withJavaNetURL:equal];
}

- (BOOL)sameFileWithJavaNetURL:(id)l
{
  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetURLStreamHandler *)streamHandler sameFileWithJavaNetURL:self withJavaNetURL:l];
}

- (unint64_t)hash
{
  selfCopy = self;
  LODWORD(self) = *(self + 88);
  if (!self)
  {
    v3 = *(selfCopy + 8);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    LODWORD(self) = [v3 hashCodeWithJavaNetURL:selfCopy];
    *(selfCopy + 88) = self;
  }

  return self;
}

- (void)setupStreamHandler
{
  if (!qword_1005570A0)
  {
    goto LABEL_29;
  }

  JreStrongAssign(&self->streamHandler_, [qword_1005570A0 getWithId:self->protocol_]);
  if (self->streamHandler_)
  {
    return;
  }

  if (qword_1005570A8)
  {
    JreStrongAssign(&self->streamHandler_, [qword_1005570A8 createURLStreamHandlerWithNSString:self->protocol_]);
    if (self->streamHandler_)
    {
      goto LABEL_26;
    }
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.protocol.handler.pkgs", v3);
  v6 = JavaLangThread_currentThread(PropertyWithNSString, v5);
  if (!v6)
  {
    goto LABEL_29;
  }

  getContextClassLoader = [(JavaLangThread *)v6 getContextClassLoader];
  if (PropertyWithNSString)
  {
    v8 = getContextClassLoader;
    if (getContextClassLoader)
    {
      v9 = [PropertyWithNSString split:@"\\|"];
      if (!v9)
      {
        goto LABEL_29;
      }

      if (v9 + 3 < &v9[*(v9 + 2) + 3])
      {
        v17 = [v8 loadClassWithNSString:{JreStrcat("$C$$", v10, v11, v12, v13, v14, v15, v16, v9[3])}];
        if (!v17)
        {
          JreThrowNullPointerException();
        }

        newInstance = [v17 newInstance];
        objc_opt_class();
        if (newInstance && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        JreStrongAssign(&self->streamHandler_, newInstance);
        if (self->streamHandler_)
        {
          [qword_1005570A0 putWithId:self->protocol_ withId:?];
        }

        return;
      }
    }
  }

  protocol = self->protocol_;
  if (!protocol)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  if ([(NSString *)protocol isEqual:@"file"])
  {
    v20 = new_LibcoreNetUrlFileHandler_init();
    JreStrongAssignAndConsume(&self->streamHandler_, v20);
  }

  else if ([(NSString *)self->protocol_ isEqual:@"http"])
  {
    v21 = new_ComGoogleJ2objcNetIosHttpHandler_init();
    JreStrongAssignAndConsume(&self->streamHandler_, v21);
  }

  else if ([(NSString *)self->protocol_ isEqual:@"https"])
  {
    v22 = new_ComGoogleJ2objcNetIosHttpsHandler_init();
    JreStrongAssignAndConsume(&self->streamHandler_, v22);
  }

  if (self->streamHandler_)
  {
LABEL_26:
    v23 = qword_1005570A0;
    v24 = self->protocol_;

    [v23 putWithId:v24 withId:?];
  }
}

- (id)getContent
{
  openConnection = [(JavaNetURL *)self openConnection];
  if (!openConnection)
  {
    JreThrowNullPointerException();
  }

  return [openConnection getContent];
}

- (id)getContentWithIOSClassArray:(id)array
{
  openConnection = [(JavaNetURL *)self openConnection];
  if (!openConnection)
  {
    JreThrowNullPointerException();
  }

  return [openConnection getContentWithIOSClassArray:array];
}

- (id)openStream
{
  openConnection = [(JavaNetURL *)self openConnection];
  if (!openConnection)
  {
    JreThrowNullPointerException();
  }

  return [openConnection getInputStream];
}

- (id)openConnection
{
  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetURLStreamHandler *)streamHandler openConnectionWithJavaNetURL:self];
}

- (id)openConnectionWithJavaNetProxy:(id)proxy
{
  if (!proxy)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"proxy == null");
    objc_exception_throw(v6);
  }

  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetURLStreamHandler *)streamHandler openConnectionWithJavaNetURL:self withJavaNetProxy:proxy];
}

- (id)toURI
{
  v2 = new_JavaNetURI_initWithNSString_([(JavaNetURL *)self toExternalForm]);

  return v2;
}

- (id)toURILenient
{
  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    v6 = new_JavaLangIllegalStateException_initWithNSString_(self->protocol_);
    objc_exception_throw(v6);
  }

  v4 = new_JavaNetURI_initWithNSString_([(JavaNetURLStreamHandler *)streamHandler toExternalFormWithJavaNetURL:self withBoolean:1]);

  return v4;
}

- (id)toExternalForm
{
  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    return JreStrcat("$$$$$", a2, self, v2, v3, v4, v5, v6, @"unknown protocol(");
  }

  return [(JavaNetURLStreamHandler *)streamHandler toExternalFormWithJavaNetURL:self];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  authority = self->authority_;
  if (self->host_)
  {
    if (!authority)
    {
      [(JavaNetURL *)self fixURLWithBoolean:1];
      goto LABEL_13;
    }
  }

  else if (!authority)
  {
    goto LABEL_13;
  }

  v5 = [(NSString *)authority lastIndexOf:64];
  if ((v5 & 0x80000000) == 0)
  {
    JreStrongAssign(&self->userInfo_, [(NSString *)self->authority_ substring:0 endIndex:v5]);
  }

  file = self->file_;
  if (file)
  {
    v7 = [(NSString *)file indexOf:63, v5];
    v8 = v7;
    v9 = self->file_;
    if ((v7 & 0x80000000) == 0)
    {
      JreStrongAssign(&self->query_, [(NSString *)self->file_ substring:(v7 + 1)]);
      v9 = [(NSString *)self->file_ substring:0 endIndex:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  JreStrongAssign(&self->path_, v9);
LABEL_13:
  [(JavaNetURL *)self setupStreamHandler];
  if (!self->streamHandler_)
  {
    v17 = JreStrcat("$$", v10, v11, v12, v13, v14, v15, v16, @"Unknown protocol: ");
    v18 = new_JavaIoIOException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  self->hashCode_ = 0;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
}

- (int)getDefaultPort
{
  streamHandler = self->streamHandler_;
  if (!streamHandler)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetURLStreamHandler *)streamHandler getDefaultPort];
}

- (void)setWithNSString:(id)string withNSString:(id)sString withInt:(int)int withNSString:(id)nSString withNSString:(id)withNSString withNSString:(id)a8 withNSString:(id)a9 withNSString:(id)self0
{
  v13 = *&int;
  v24 = a8;
  v17 = a8;
  if (a9)
  {
    isEmpty = [a9 isEmpty];
    v17 = a8;
    if ((isEmpty & 1) == 0)
    {
      JreStrAppendStrong(&v24, "C$", v19, v20, v21, a8, v22, v23, 63);
      v17 = v24;
    }
  }

  [(JavaNetURL *)self setWithNSString:string withNSString:sString withInt:v13 withNSString:v17 withNSString:a10];
  JreStrongAssign(&self->authority_, nSString);
  JreStrongAssign(&self->userInfo_, withNSString);
  JreStrongAssign(&self->path_, a8);
  JreStrongAssign(&self->query_, a9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURL;
  [(JavaNetURL *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashtable_init();
    JreStrongAssignAndConsume(&qword_1005570A0, v2);
    atomic_store(1u, &JavaNetURL__initialized);
  }
}

@end