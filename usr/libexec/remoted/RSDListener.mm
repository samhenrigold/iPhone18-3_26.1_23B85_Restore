@interface RSDListener
- (RSDListener)initWithInterface:(id)interface targetQueue:(id)queue;
- (int)listenOnBonjourName:(const char *)name type:(const char *)type domain:(const char *)domain configureTLS:(id)s connectionHandler:(id)handler;
- (int)listenOnPort:(unsigned __int16)port connectionHandler:(id)handler;
- (void)cancel;
@end

@implementation RSDListener

- (RSDListener)initWithInterface:(id)interface targetQueue:(id)queue
{
  interfaceCopy = interface;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = RSDListener;
  v9 = [(RSDListener *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interface, interface);
    objc_storeStrong(&v10->queue, queue);
    v10->canceled = 0;
    v11 = v10;
  }

  return v10;
}

- (int)listenOnPort:(unsigned __int16)port connectionHandler:(id)handler
{
  portCopy = port;
  handlerCopy = handler;
  if (self->listener_source)
  {
    sub_10003EF30(v19, handle);
  }

  handle[0] = -1;
  interface = [(RSDListener *)self interface];
  local_address = [interface local_address];
  interface2 = [(RSDListener *)self interface];
  v9 = sub_1000240DC(handle, local_address, &portCopy, [interface2 index], &unk_100049E6C);

  if (v9)
  {
    v11 = sub_10002A1B4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100040EC8();
    }
  }

  else
  {
    v12 = dispatch_source_create(&_dispatch_source_type_read, handle[0], 0, self->queue);
    listener_source = self->listener_source;
    self->listener_source = v12;

    v14 = self->listener_source;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002A1F8;
    handler[3] = &unk_10005DBA0;
    v17 = handlerCopy;
    v18 = handle[0];
    dispatch_source_set_event_handler(v14, handler);
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(self->listener_source);
    v11 = v17;
  }

  return v9;
}

- (int)listenOnBonjourName:(const char *)name type:(const char *)type domain:(const char *)domain configureTLS:(id)s connectionHandler:(id)handler
{
  sCopy = s;
  handler = handler;
  if (self->bonjour_listener)
  {
    sub_100040F50(&v51, buf);
  }

  interface = [(RSDListener *)self interface];
  index = [interface index];
  v15 = sCopy;
  secure_tcp = nw_parameters_create_secure_tcp(v15, _nw_parameters_configure_protocol_default_configuration);
  if (!index)
  {
    sub_100041110(&v51, buf);
  }

  v17 = secure_tcp;
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v21 = nw_interface_create_with_index();
  if (v21)
  {
    nw_parameters_require_interface(v17, v21);
    nw_parameters_set_local_only(v17, 1);
    nw_parameters_set_required_address_family();
    nw_parameters_set_required_interface_type(v17, nw_interface_type_wired);
    nw_parameters_set_no_fallback();
    nw_parameters_set_indefinite();
    xpc_remote_connection_setup_nw_parameters();
    v22 = v17;
  }

  else
  {
    v23 = sub_10002A1B4(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100040FD8();
    }

    v22 = 0;
  }

  if (!v22)
  {
    v25 = sub_10002A1B4(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_10003C698(v25);
    }

    v40 = 6;
    handlerCopy2 = handler;
    goto LABEL_18;
  }

  v25 = nw_parameters_copy_required_interface(v22);
  name = nw_interface_get_name(v25);
  interface2 = [(RSDListener *)self interface];
  v28 = strncmp(name, [interface2 name], 0x10uLL);

  if (!v28)
  {
    v29 = nw_listener_create(v22);
    bonjour_listener = self->bonjour_listener;
    self->bonjour_listener = v29;

    v31 = self->bonjour_listener;
    if (!v31)
    {
      sub_100041094(&v51, buf);
    }

    v32 = domainCopy;

    v33 = typeCopy;
    v34 = nw_advertise_descriptor_create_bonjour_service(nameCopy, typeCopy, v32);
    if (!v34)
    {
      sub_100041018(&v51, buf);
    }

    v35 = v34;

    nw_advertise_descriptor_set_no_auto_rename(v35, 1);
    nw_listener_set_advertise_descriptor(self->bonjour_listener, v35);
    handlerCopy2 = handler;
    nw_listener_set_new_connection_handler(self->bonjour_listener, handler);
    v37 = self->bonjour_listener;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10002A68C;
    v44[3] = &unk_10005DBF0;
    v44[4] = self;
    v47 = nameCopy;
    v48 = v33;
    v49 = v32;
    v45 = v15;
    handlerCopy3 = handler;
    v50 = -1;
    nw_listener_set_state_changed_handler(v37, v44);
    nw_listener_set_advertised_endpoint_changed_handler(self->bonjour_listener, &stru_10005DC30);
    nw_listener_set_queue(self->bonjour_listener, self->queue);
    nw_listener_start(self->bonjour_listener);
    v39 = sub_10002A1B4(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "create bonjour listener done", buf, 2u);
    }

    v40 = 0;
LABEL_18:

    return v40;
  }

  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  interface3 = [(RSDListener *)self interface];
  [interface3 name];
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (void)cancel
{
  listener_source = self->listener_source;
  if (listener_source)
  {
    dispatch_source_cancel(listener_source);
    v4 = self->listener_source;
    self->listener_source = 0;
  }

  bonjour_listener = self->bonjour_listener;
  if (bonjour_listener)
  {
    nw_listener_cancel(bonjour_listener);
    v6 = self->bonjour_listener;
    self->bonjour_listener = 0;
  }

  interface = self->_interface;
  self->_interface = 0;

  self->canceled = 1;
}

@end