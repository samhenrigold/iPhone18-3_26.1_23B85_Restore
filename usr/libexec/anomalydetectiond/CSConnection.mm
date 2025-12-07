@interface CSConnection
- (CSConnection)initWithConnection:(shared_ptr<CLConnection>)connection message:(shared_ptr<CLConnectionMessage>)message delegate:(id)delegate;
- (CSConnectionDelegateProtocol)delegate;
- (NSString)name;
- (id).cxx_construct;
- (id)description;
- (int)remotePid;
- (shared_ptr<CLConnection>)connection;
- (void)dealloc;
- (void)sendMessage:(id)message withName:(id)name;
- (void)sendMessage:(id)message withName:(id)name andReply:(id)reply;
- (void)start;
@end

@implementation CSConnection

- (CSConnection)initWithConnection:(shared_ptr<CLConnection>)connection message:(shared_ptr<CLConnectionMessage>)message delegate:(id)delegate
{
  ptr = connection.__ptr_;
  v8 = message.__ptr_;
  v23.receiver = self;
  v23.super_class = CSConnection;
  v9 = [(CSConnection *)&v23 init];
  if (v9)
  {
    if (!*ptr)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:v9 file:@"CSConnection.mm" lineNumber:26 description:@"connection cannot be null"];
    }

    if (qword_100456878 != -1)
    {
      sub_1003575B0();
    }

    v10 = qword_100456880;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      CLConnection::getName(*ptr);
      RemotePid = CLConnection::getRemotePid(*ptr);
      p_p = &__p;
      if (v22 < 0)
      {
        p_p = __p;
      }

      *buf = 136315394;
      v25 = p_p;
      v26 = 1024;
      v27 = RemotePid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Creating Connection, name: %s, pid: %d", buf, 0x12u);
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

    objc_storeWeak(v9 + 1, v8);
    v13 = *ptr;
    *ptr = 0;
    *(ptr + 1) = 0;
    v14 = *(v9 + 3);
    *(v9 + 1) = v13;
    if (v14)
    {
      sub_100009A48(v14);
    }

    objc_initWeak(buf, v9);
    objc_msgSend_connection(v9);
    v18[1] = _NSConcreteStackBlock;
    v18[2] = 3221225472;
    v18[3] = sub_100356AB4;
    v18[4] = &unk_100435F28;
    objc_copyWeak(&v19, buf);
    CLConnection::setDisconnectionHandler();
    if (v21)
    {
      sub_100009A48(v21);
    }

    objc_msgSend_connection(v9);
    v17[1] = _NSConcreteStackBlock;
    v17[2] = 3221225472;
    v17[3] = sub_100356B30;
    v17[4] = &unk_100435F28;
    objc_copyWeak(v18, buf);
    CLConnection::setInterruptionHandler();
    if (v21)
    {
      sub_100009A48(v21);
    }

    objc_msgSend_connection(v9);
    objc_copyWeak(v17, buf);
    CLConnection::setDefaultMessageHandler();
    if (v21)
    {
      sub_100009A48(v21);
    }

    objc_destroyWeak(v17);
    objc_destroyWeak(v18);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_connection(self, a2);
  v3 = v6;
  v5 = 0;
  v6 = 0;
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4.receiver = self;
  v4.super_class = CSConnection;
  [(CSConnection *)&v4 dealloc];
}

- (void)start
{
  objc_msgSend_connection(self, a2);
  CLConnection::start(v2);
  if (v3)
  {
    sub_100009A48(v3);
  }
}

- (NSString)name
{
  objc_msgSend_connection(self, a2);
  v3 = __p;
  if (v9)
  {
    sub_100009A48(v9);
  }

  if (__p)
  {
    objc_msgSend_connection(self);
    CLConnection::getName(v6);
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v3 = [NSString stringWithUTF8String:p_p];
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v7)
    {
      sub_100009A48(v7);
    }
  }

  return v3;
}

- (int)remotePid
{
  objc_msgSend_connection(self, a2);
  if (v6)
  {
    sub_100009A48(v6);
  }

  if (!v5)
  {
    return -1;
  }

  objc_msgSend_connection(self);
  RemotePid = CLConnection::getRemotePid(v5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  return RemotePid;
}

- (void)sendMessage:(id)message withName:(id)name
{
  __p[5] = message;
  sub_10029F5A0(__p, [name UTF8String]);
  sub_10035745C();
}

- (void)sendMessage:(id)message withName:(id)name andReply:(id)reply
{
  __p[5] = message;
  nameCopy = name;
  replyCopy = reply;
  sub_10029F5A0(__p, [nameCopy UTF8String]);
  sub_10035745C();
}

- (id)description
{
  objc_msgSend_connection(self, a2);
  if (v7)
  {
    sub_100009A48(v7);
  }

  if (v6)
  {
    name = [(CSConnection *)self name];
    v4 = [NSString stringWithFormat:@"Connection, name: %@, pid: %d", name, [(CSConnection *)self remotePid]];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Connection uninitialized."];
  }

  return v4;
}

- (CSConnectionDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (shared_ptr<CLConnection>)connection
{
  cntrl = self->_connection.__cntrl_;
  *v2 = self->_connection.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end