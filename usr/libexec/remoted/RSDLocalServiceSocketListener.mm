@interface RSDLocalServiceSocketListener
- (RSDLocalServiceSocketListener)initWithService:(id)service forDevice:(id)device withPort:(char *)port onSocket:(int)socket;
- (void)cancel;
- (void)dealloc;
@end

@implementation RSDLocalServiceSocketListener

- (void)cancel
{
  [(RSDLocalServiceSocketListener *)self setCanceled:1];
  socket_source = [(RSDLocalServiceSocketListener *)self socket_source];
  dispatch_source_cancel(socket_source);

  v4.receiver = self;
  v4.super_class = RSDLocalServiceSocketListener;
  [(RSDLocalServiceListener *)&v4 cancel];
}

- (void)dealloc
{
  if (!self->_canceled)
  {
    sub_100001F64(&v3, v4);
  }

  v2.receiver = self;
  v2.super_class = RSDLocalServiceSocketListener;
  [(RSDLocalServiceListener *)&v2 dealloc];
}

- (RSDLocalServiceSocketListener)initWithService:(id)service forDevice:(id)device withPort:(char *)port onSocket:(int)socket
{
  v6 = *&socket;
  serviceCopy = service;
  deviceCopy = device;
  v12 = [(RSDLocalServiceSocketListener *)self init];
  v13 = v12;
  if (v12)
  {
    [(RSDLocalServiceListener *)v12 setService:serviceCopy];
    [(RSDLocalServiceListener *)v13 setPort:port];
    [(RSDLocalServiceSocketListener *)v13 setSocket:v6];
    [(RSDLocalServiceListener *)v13 setDevice:deviceCopy];
    v14 = dispatch_source_create(&_dispatch_source_type_read, v6, 0, qword_100064368);
    [(RSDLocalServiceSocketListener *)v13 setSocket_source:v14];

    socket_source = [(RSDLocalServiceSocketListener *)v13 socket_source];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100007898;
    handler[3] = &unk_10005D108;
    v16 = v13;
    v23 = v16;
    v24 = deviceCopy;
    dispatch_source_set_event_handler(socket_source, handler);

    socket_source2 = [(RSDLocalServiceSocketListener *)v16 socket_source];
    v21 = v16;
    dispatch_source_set_mandatory_cancel_handler();

    socket_source3 = [(RSDLocalServiceSocketListener *)v21 socket_source];
    dispatch_activate(socket_source3);

    v19 = v21;
  }

  return v13;
}

@end