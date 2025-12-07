uint64_t tcp_connectToPeer(const char *a1)
{
  v3 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Trying to connect to %s\n", buf, 0xCu);
  }

  do
  {
    AppleCIOMeshNet::TcpConnection::connect(logger, a1, 0x137Fu, &v7);
    v4 = v8;
    v5 = logger;
    if (v8)
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connected to peer node %s\n", buf, 0xCu);
      }

      if ((v8 & 1) == 0)
      {
        abort();
      }

      v1 = dup(v7);
    }

    else
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = a1;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to connect to peer node %s. Will try again in 1 second.\n", buf, 0xCu);
      }

      usleep(0xF4240u);
    }

    if (v8 == 1)
    {
      AppleCIOMeshNet::TcpConnection::~TcpConnection(&v7);
    }
  }

  while (!v4);
  return v1;
}

uint64_t tcp_listenForConnection()
{
  v0 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "listening for connection", buf, 2u);
  }

  AppleCIOMeshNet::TcpConnectionListener::listen(logger, 0x137Fu, buf);
  if (v8)
  {
    AppleCIOMeshNet::TcpConnectionListener::accept(&v6, buf);
    v1 = logger;
    if ((v6 & 0x100000000) != 0)
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Accepted connection from peer node \n", v5, 2u);
      }

      if ((v6 & 0x100000000) == 0)
      {
        abort();
      }

      v2 = dup(v6);
    }

    else
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        tcp_listenForConnection_cold_1(v1);
      }

      v2 = 0xFFFFFFFFLL;
    }

    if (BYTE4(v6) == 1)
    {
      AppleCIOMeshNet::TcpConnection::~TcpConnection(&v6);
    }
  }

  else
  {
    v3 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      tcp_listenForConnection_cold_1(v3);
    }

    v2 = 0xFFFFFFFFLL;
  }

  if (v8 == 1)
  {
    AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(buf);
  }

  return v2;
}

void sub_100001190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, __int16 a11, char a12, char a13, __int16 a14, id a15, uint64_t a17, char a18)
{
  if (a12 == 1)
  {
    AppleCIOMeshNet::TcpConnection::~TcpConnection(&a10);
  }

  if (a18 == 1)
  {
    AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(&a15);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_tcp_core_mm()
{
  v0 = objc_autoreleasePoolPush();
  logger = os_log_create("com.apple.cloudos.MeshNetworkDaemon", "tcp");

  objc_autoreleasePoolPop(v0);
}

void AppleCIOMeshNet::TcpConnection::~TcpConnection(AppleCIOMeshNet::TcpConnection *this)
{
  v1 = *this;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }
}

_DWORD *AppleCIOMeshNet::TcpConnection::TcpConnection(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  *a2 = -1;
  return result;
}

int *AppleCIOMeshNet::TcpConnection::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (v4 >= 1)
    {
      close(v4);
    }

    *a1 = *a2;
    *a2 = -1;
  }

  return a1;
}

unint64_t AppleCIOMeshNet::TcpConnection::read(AppleCIOMeshNet::TcpConnection *this, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v7 = read(*this, &a2[v3], a3 - v3);
    v8 = v7;
    if (v7 < 0)
    {
      break;
    }

    v3 += v7;
    if (v3 >= a3)
    {
      return v3;
    }
  }

  __error();
  return v8;
}

unint64_t AppleCIOMeshNet::TcpConnection::write(AppleCIOMeshNet::TcpConnection *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v7 = write(*this, &a2[v3], a3 - v3);
    v8 = v7;
    if (v7 < 0)
    {
      break;
    }

    v3 += v7;
    if (v3 >= a3)
    {
      return v3;
    }
  }

  __error();
  return v8;
}

void AppleCIOMeshNet::TcpConnection::connect(void *a1@<X0>, const char *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v25 = 0;
  memset(&v26, 0, sizeof(v26));
  *&v26.ai_family = 0x10000001ELL;
  if (getaddrinfo(a2, 0, &v26, &v25))
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      AppleCIOMeshNet::TcpConnection::connect(a2, v7);
    }

LABEL_14:
    *(a4 + 4) = 0;
    goto LABEL_15;
  }

  ai_addr = v25->ai_addr;
  v9 = *&ai_addr->sa_data[10];
  v24[0] = *ai_addr;
  *&v24[0].sa_data[10] = v9;
  freeaddrinfo(v25);
  v10 = socket(30, 1, 0);
  v11 = v10;
  if (v10 < 0)
  {
    v12 = v7;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      AppleCIOMeshNet::TcpConnection::connect(v14, &v26);
    }

    goto LABEL_14;
  }

  LODWORD(v25) = v10;
  BYTE4(v25) = 1;
  v23 = 1;
  if (setsockopt(v10, 6, 1, &v23, 4u) < 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      AppleCIOMeshNet::TcpConnection::connect(v16, &v26);
    }

    goto LABEL_22;
  }

  v23 = 1;
  if (setsockopt(v11, 0xFFFF, 4, &v23, 4u) < 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = __error();
      v18 = strerror(*v17);
      AppleCIOMeshNet::TcpConnection::connect(v18, &v26);
    }

    goto LABEL_22;
  }

  *v24[0].sa_data = __rev16(a3);
  if (connect(v11, v24, 0x1Cu) < 0)
  {
    v19 = v7;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      AppleCIOMeshNet::TcpConnection::connect(v21, &v26, a2, v19);
    }

LABEL_22:

    *(a4 + 4) = 0;
    close(v11);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v26.ai_flags = 136315394;
    *&v26.ai_family = a2;
    LOWORD(v26.ai_protocol) = 1024;
    *(&v26.ai_protocol + 2) = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TcpConnection - Connected to %s on socket %d", &v26, 0x12u);
  }

  *a4 = v11;
  v22 = -1;
  *(a4 + 4) = 1;
  AppleCIOMeshNet::TcpConnection::~TcpConnection(&v22);
LABEL_15:
}

void sub_100001764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnection::connect(NSObject  {objcproto9OS_os_log}*,char const*,unsigned short)::$_0>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnection::connect(NSObject  {objcproto9OS_os_log}*,char const*,unsigned short)::$_0>::~ScopeGuard(uint64_t a1)
{
  if (*(a1 + 4) == 1)
  {
    close(*a1);
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(id *this)
{
  v2 = *this;
  if (v2 >= 1)
  {
    close(v2);
  }
}

uint64_t AppleCIOMeshNet::TcpConnectionListener::TcpConnectionListener(uint64_t result, _DWORD *a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *a2 = -1;
  return result;
}

int *AppleCIOMeshNet::TcpConnectionListener::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (v4 >= 1)
    {
      close(v4);
    }

    *a1 = *a2;
    *a2 = -1;
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::listen(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = socket(30, 1, 0);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v20 = 1;
    v19[0] = 1;
    v19[1] = v6;
    if (setsockopt(v6, 0xFFFF, 4, v19, 4u) < 0)
    {
      v11 = v5;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = __error();
        v13 = strerror(*v12);
        AppleCIOMeshNet::TcpConnectionListener::listen(v13, &v23);
      }
    }

    else
    {
      v23.sa_family = 30;
      *&v23.sa_data[6] = 0;
      v24 = 0;
      *v23.sa_data = __rev16(a2);
      if (bind(v7, &v23, 0x1Cu) < 0)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v14 = __error();
          v15 = strerror(*v14);
          AppleCIOMeshNet::TcpConnectionListener::listen(v15, buf);
        }
      }

      else
      {
        if ((listen(v7, 6) & 0x80000000) == 0)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v22 = a2;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TcpConnectionListener - Listening on port %d", buf, 8u);
          }

          v18[1] = v5;
          *a3 = v7;
          *(a3 + 8) = 0;
          LODWORD(v18[0]) = -1;
          *(a3 + 16) = 1;
          AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(v18);
          goto LABEL_20;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v16 = __error();
          v17 = strerror(*v16);
          AppleCIOMeshNet::TcpConnectionListener::listen(v17, buf);
        }
      }
    }

    *(a3 + 16) = 0;
    close(v7);
    goto LABEL_20;
  }

  v8 = v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = __error();
    v10 = strerror(*v9);
    AppleCIOMeshNet::TcpConnectionListener::listen(v10, &v23);
  }

  *(a3 + 16) = 0;
LABEL_20:
}

void sub_100001AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnectionListener::listen(NSObject  {objcproto9OS_os_log}*,unsigned short)::$_0>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnectionListener::listen(NSObject  {objcproto9OS_os_log}*,unsigned short)::$_0>::~ScopeGuard(uint64_t a1)
{
  if (*(a1 + 4) == 1)
  {
    close(*a1);
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::accept(uint64_t *__return_ptr a1@<X8>, AppleCIOMeshNet::TcpConnectionListener *this@<X0>)
{
  v16 = 28;
  v4 = accept(*this, &v17, &v16);
  v5 = v4;
  if (v4 < 0)
  {
    v8 = *(this + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      AppleCIOMeshNet::TcpConnectionListener::accept(v10, buf);
    }

    goto LABEL_12;
  }

  v15 = 1;
  v6 = setsockopt(v4, 6, 1, &v15, 4u);
  v7 = *(this + 1);
  if (v6 < 0)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      AppleCIOMeshNet::TcpConnection::connect(v13, buf);
    }

LABEL_12:
    *(a1 + 4) = 0;
    return;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TcpConnectionListener - Accepted connection", buf, 2u);
  }

  *a1 = v5;
  v14 = -1;
  *(a1 + 4) = 1;
  AppleCIOMeshNet::TcpConnection::~TcpConnection(&v14);
}

uint64_t AppleCIOMeshNet::TcpConnectionListener::stop(AppleCIOMeshNet::TcpConnectionListener *this)
{
  result = *this;
  if (result >= 1)
  {
    result = close(result);
    *this = -1;
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t variable initialization expression of MeshNetworkResponse.socket@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for XPCCodableObject();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t specialized static MeshNetworkService.main()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MeshNetworkService.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting mesh network daemon.", v3, 2u);
  }

  return specialized MeshNetworkService.listen()();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t get_enum_tag_for_layout_string_8meshnetd23MeshNetworkServiceErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MeshNetworkServiceError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 4;
  if (v5 >= 6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshNetworkServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MeshNetworkServiceError(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t static MeshNetworkResponse.from(socket:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  if (xpc_fd_create(a1))
  {
    XPCCodableObject.init(copying:)();
    v7 = type metadata accessor for XPCCodableObject();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 0, 1, v7);
    v8(a2, 1, 1, v7);
    v9 = &a2[*(type metadata accessor for MeshNetworkResponse(0) + 20)];
    result = outlined assign with take of XPCCodableObject?(v6, a2);
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  else
  {
    v11 = type metadata accessor for XPCCodableObject();
    v12 = *(*(v11 - 8) + 56);
    v12(v6, 1, 1, v11);
    v17[1] = 5;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v12(a2, 1, 1, v11);
    v16 = &a2[*(type metadata accessor for MeshNetworkResponse(0) + 20)];
    result = outlined assign with take of XPCCodableObject?(v6, a2);
    *v16 = v13;
    *(v16 + 1) = v15;
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MeshNetworkService.logger);
  __swift_project_value_buffer(v0, static MeshNetworkService.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t MeshNetworkService.handler.handleIncomingRequest(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCReceivedMessage();
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v47 - v5;
  v47[5] = XPCReceivedMessage.auditToken.getter();
  v47[6] = v7;
  v47[7] = v8;
  v47[8] = v9;
  String.utf8CString.getter();
  v10 = xpc_copy_entitlement_for_token();

  if (v10)
  {
    if (xpc_BOOL_get_value(v10))
    {
      lazy protocol witness table accessor for type MeshNetworkRequest and conformance MeshNetworkRequest();
      XPCReceivedMessage.decode<A>(as:)();
      if (v49)
      {
        a1[3] = type metadata accessor for MeshNetworkResponse(0);
        a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v43 = String.utf8CString.getter();
        v44 = tcp_connectToPeer((v43 + 32));

        static MeshNetworkResponse.from(socket:)(v44, boxed_opaque_existential_1);
        close(v44);
      }

      else
      {
        a1[3] = type metadata accessor for MeshNetworkResponse(0);
        a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
        v45 = __swift_allocate_boxed_opaque_existential_1(a1);
        v46 = tcp_listenForConnection();
        static MeshNetworkResponse.from(socket:)(v46, v45);
        close(v46);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static MeshNetworkService.logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
        swift_allocError();
        *v32 = 1;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&_mh_execute_header, v28, v29, "Refused client: %@", v30, 0xCu);
        outlined destroy of NSObject?(v31);
      }

      v34 = type metadata accessor for XPCCodableObject();
      v35 = *(*(v34 - 8) + 56);
      v35(v6, 1, 1, v34);
      v48 = 1;
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = type metadata accessor for MeshNetworkResponse(0);
      a1[3] = v39;
      a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
      v40 = __swift_allocate_boxed_opaque_existential_1(a1);
      v35(v40, 1, 1, v34);
      v41 = (v40 + *(v39 + 20));
      outlined assign with take of XPCCodableObject?(v6, v40);
      result = swift_unknownObjectRelease();
      *v41 = v36;
      v41[1] = v38;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static MeshNetworkService.logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
      swift_allocError();
      *v16 = 1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Refused client: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
    }

    v18 = type metadata accessor for XPCCodableObject();
    v19 = *(*(v18 - 8) + 56);
    v19(v6, 1, 1, v18);
    v48 = 1;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = type metadata accessor for MeshNetworkResponse(0);
    a1[3] = v23;
    a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
    v24 = __swift_allocate_boxed_opaque_existential_1(a1);
    v19(v24, 1, 1, v18);
    v25 = (v24 + *(v23 + 20));
    result = outlined assign with take of XPCCodableObject?(v6, v24);
    *v25 = v20;
    v25[1] = v22;
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized MeshNetworkService.listen()()
{
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v1 - 8);
  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (!v0)
  {

    dispatch_main();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MeshNetworkService.logger);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to create listener, error: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
  }

  lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
  swift_allocError();
  *v8 = v0;
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError()
{
  result = lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError;
  if (!lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkService.handler and conformance MeshNetworkService.handler()
{
  result = lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler;
  if (!lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse()
{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse)
  {
    type metadata accessor for MeshNetworkResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of XPCCodableObject?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest and conformance MeshNetworkRequest()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t MeshNetworkResponse.init(socket:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for XPCCodableObject();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = (a4 + *(type metadata accessor for MeshNetworkResponse(0) + 20));
  result = outlined assign with take of XPCCodableObject?(a1, a4);
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t type metadata accessor for MeshNetworkResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for MeshNetworkResponse;
  if (!type metadata singleton initialization cache for MeshNetworkResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MeshNetworkRequest.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x547463656E6E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x547463656E6E6F63 && a2 == 0xED0000726565506FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100006EA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshNetworkRequest.ConnectToPeerCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.ConnectToPeerCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.ListenForConnectionCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.ListenForConnectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.ListenForConnectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeshNetworkRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v17 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();
  v14 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    v22 = 0;
    lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v23 = 1;
    lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();
    v16 = v17;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v16, v19);
  }

  return (*(v11 + 8))(v13, v10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

void *protocol witness for Decodable.init(from:) in conformance MeshNetworkRequest@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized MeshNetworkRequest.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t MeshNetworkResponse.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for MeshNetworkResponse(0) + 20));

  return v1;
}

uint64_t MeshNetworkResponse.error.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MeshNetworkResponse(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshNetworkRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshNetworkRequest.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MeshNetworkResponse.CodingKeys()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x74656B636F73;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656B636F73 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeshNetworkResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for XPCCodableObject();
  lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(&lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject, &protocol conformance descriptor for XPCCodableObject);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for MeshNetworkResponse(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MeshNetworkResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MeshNetworkResponse(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCCodableObject();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = &v12[*(v10 + 28)];
  *v14 = 0;
  v14[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();
  v15 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v22;
    v26 = 0;
    lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(&lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject, &protocol conformance descriptor for XPCCodableObject);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of XPCCodableObject?(v5, v12);
    v25 = 1;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    (*(v16 + 8))(v8, v23);
    *v14 = v18;
    v14[1] = v20;
    outlined init with copy of MeshNetworkResponse(v12, v21);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of MeshNetworkResponse(v12);
}

void *specialized MeshNetworkRequest.init(from:)(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();
  v11 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_7;
  }

  v12 = v23;
  v25 = a1;
  v10 = v9;
  v13 = KeyedDecodingContainer.allKeys.getter();
  if (*(v13 + 16) != 1)
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v17 = &type metadata for MeshNetworkRequest;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.typeMismatch(_:), v15);
    swift_willThrow();
    (*(v24 + 8))(v9, v7);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v10;
  }

  if (*(v13 + 32))
  {
    v27 = 1;
    lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v24;
    (*(v12 + 8))(v3, v21);
    (*(v14 + 8))(v9, v7);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v24;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v22 + 8))(v6, v4);
    (*(v18 + 8))(v9, v7);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  return v10;
}

uint64_t outlined init with copy of XPCCodableObject?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of MeshNetworkResponse(uint64_t a1)
{
  v2 = type metadata accessor for MeshNetworkResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for XPCCodableObject();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MeshNetworkResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeshNetworkResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshNetworkRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshNetworkRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for MeshNetworkRequest(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for MeshNetworkRequest(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100005170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000525C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void type metadata completion function for MeshNetworkResponse(uint64_t a1)
{
  type metadata accessor for XPCCodableObject?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for XPCCodableObject?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for XPCCodableObject?)
  {
    type metadata accessor for XPCCodableObject();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for XPCCodableObject?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MeshNetworkResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshNetworkResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshNetworkRequest.ConnectToPeerCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MeshNetworkRequest.ConnectToPeerCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void tcp_listenForConnection_cold_1(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 4991;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to listen for network connections on port %d\n", v1, 8u);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TcpConnection - Failed to resolve hostname: %s", &v2, 0xCu);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TcpConnection - Failed to connect to hostname: %s, error: %s", buf, 0x16u);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnection - Failed to set SO_REUSEADDR: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnection - Failed to set TCP_NODELAY: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "Failed to create socket: %s", v4);
}

void AppleCIOMeshNet::TcpConnectionListener::listen(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to listen on socket: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to bind socket: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to set SO_REUSEADDR: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to create socket: %s", v4);
}