@interface OS_remote_device
- (BOOL)hasServiceWithName:(const char *)name peerMessage:(id)message;
- (OS_remote_device)init;
- (void)dealloc;
- (void)setUuid:(char *)uuid;
@end

@implementation OS_remote_device

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  free(self->_uuid);
  free(self->device_name);
  free(self->device_alias);
  v4.receiver = self;
  v4.super_class = OS_remote_device;
  [(OS_remote_device *)&v4 dealloc];
}

- (void)setUuid:(char *)uuid
{
  v8 = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  if (uuid)
  {
    if (!uuid)
    {
      uuid = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      self->_uuid = uuid;
      if (!uuid)
      {
        [(OS_remote_device *)&v6 setUuid:v7];
      }
    }

    uuid_copy(uuid, uuid);
  }

  else
  {
    free(uuid);
    self->_uuid = 0;
  }
}

- (OS_remote_device)init
{
  v6.receiver = self;
  v6.super_class = OS_remote_device;
  v2 = [(OS_remote_device *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("remote_device_t", 0);
    dq = v2->_dq;
    v2->_dq = v3;

    v2->_state = 1;
  }

  return v2;
}

- (BOOL)hasServiceWithName:(const char *)name peerMessage:(id)message
{
  state = remote_device_get_state(self);
  if (state != 2)
  {
    v10 = rsd_log(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [OS_remote_device(RemoteDeviceCommon) hasServiceWithName:peerMessage:];
    }

    return 0;
  }

  v7 = remote_device_copy_service_names(self);
  if (!xpc_array_get_count(v7))
  {
LABEL_6:

    return 0;
  }

  v8 = 0;
  while (1)
  {
    string = xpc_array_get_string(v7, v8);
    if (!strcmp(name, string))
    {
      break;
    }

    if (++v8 >= xpc_array_get_count(v7))
    {
      goto LABEL_6;
    }
  }

  return 1;
}

- (void)setUuid:(void *)a1 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_22E542000, v6, v7, "assertion failure: _uuid != ((void*)0) -> %llu");
  OUTLINED_FUNCTION_12(v8);
  __break(1u);
}

@end