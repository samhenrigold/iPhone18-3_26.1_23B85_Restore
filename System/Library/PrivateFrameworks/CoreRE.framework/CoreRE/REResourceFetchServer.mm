@interface REResourceFetchServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (REResourceFetchServer)initWithResourceFetchManager:(void *)manager;
@end

@implementation REResourceFetchServer

- (REResourceFetchServer)initWithResourceFetchManager:(void *)manager
{
  v5.receiver = self;
  v5.super_class = REResourceFetchServer;
  result = [(REResourceFetchServer *)&v5 init];
  if (result)
  {
    result->_resourceFetchManager = manager;
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v48 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    resourceFetchManager = self->_resourceFetchManager;
    *buf = 134217984;
    *&buf[4] = resourceFetchManager;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection", buf, 0xCu);
  }

  v10 = self->_resourceFetchManager;
  if (v10)
  {
    v37 = connectionCopy;
    dispatch_assert_queue_V2(*(v10 + 4));
    processIdentifier = [v37 processIdentifier];
    v12 = processIdentifier;
    v13 = re::resourceSharingLogObjects(processIdentifier)[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Accepting new resource connection from client pid %d", buf, 8u);
    }

    v14 = voucher_copy();

    if (v14)
    {
      v16 = re::resourceSharingLogObjects(v15)[1];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Successfully harvested transport voucher on resource fetch connection for pid %d", buf, 8u);
      }

      v42 = v14;
      os_unfair_lock_lock(v10 + 64);
      re::ObjCObject::operator=(v10 + 33, &v42);
      os_unfair_lock_unlock(v10 + 64);
    }

    v17 = [[REResourceFetchClientObject alloc] initWithResourceFetchManager:v10 connection:&v37 voucher:v14];
    *buf = v17;
    re::xpc::Connection::setExportedObject(&v37, buf);

    re::ResourceFetchManager::xpcInterface(buf);
    re::xpc::Connection::setExportedInterface(&v37, buf);

    re::ResourceSharingManager::xpcInterface(buf);
    re::xpc::Connection::setRemoteObjectInterface(&v37, buf);

    re::xpc::Connection::setQueue(&v37, (v10 + 32));
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke;
    v40[3] = &unk_1E871AA90;
    v18 = v17;
    v41 = v18;
    [v37 setInterruptionHandler:v40];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke_68;
    v38[3] = &unk_1E871AA90;
    v19 = v18;
    v39 = v19;
    [v37 setInvalidationHandler:v38];
    os_unfair_lock_lock(v10 + 32);
    *buf = v37;
    v20 = v19;
    *&buf[8] = v20;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v47 = 0x7FFFFFFFLL;
    v23 = *(v10 + 18);
    v22 = *(v10 + 19);
    if (v22 >= v23)
    {
      v24 = v22 + 1;
      if (v23 < v22 + 1)
      {
        if (*(v10 + 17))
        {
          v25 = 2 * v23;
          if (!v23)
          {
            v25 = 8;
          }

          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v10 + 17, v26);
        }

        else
        {
          re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v10 + 17, v24);
          ++*(v10 + 40);
        }
      }

      v22 = *(v10 + 19);
    }

    v30 = *(v10 + 21) + (v22 << 6);
    v31 = *buf;
    memset(buf, 0, sizeof(buf));
    *v30 = v31;
    *(v30 + 16) = v44;
    *&v44 = 0;
    *(v30 + 24) = *(&v44 + 1);
    *(&v44 + 1) = 0;
    *(v30 + 32) = v45;
    *&v45 = 0;
    *(v30 + 40) = DWORD2(v45);
    DWORD2(v45) = 0;
    *(v30 + 44) = HIDWORD(v45);
    HIDWORD(v45) = 0;
    *(v30 + 48) = v46;
    v46 = 0;
    *(v30 + 52) = v47;
    LODWORD(v47) = 0x7FFFFFFF;
    *(v30 + 56) = 1;
    *(v10 + 19) = v22 + 1;
    ++*(v10 + 40);
    re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v44);

    os_unfair_lock_unlock(v10 + 32);
    v32 = *(v10 + 49);
    if (v32)
    {
      v33 = v20;
      *buf = v33;
      v35 = re::directMeshConnectionId(buf, v34);
      (*(*v32 + 32))(v32, v35);
    }

    [v37 resume];
  }

  else
  {
    v27 = re::resourceSharingLogObjects(v8)[1];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      processIdentifier2 = [connectionCopy processIdentifier];
      *buf = 67109120;
      *&buf[4] = processIdentifier2;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Rejecting attempted resource connection from client pid %d: service was deinited", buf, 8u);
    }
  }

  return v10 != 0;
}

@end