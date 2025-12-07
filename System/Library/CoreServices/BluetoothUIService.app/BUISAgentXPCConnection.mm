@interface BUISAgentXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)invalidate;
- (void)xpcConnectionEvent:(id)event;
- (void)xpcConnectionMessage:(id)message;
- (void)xpcSendMessage:(int)message;
@end

@implementation BUISAgentXPCConnection

- (void)invalidate
{
  [(BluetoothUIService *)self->_agent xpcConnectionInvalidated:self];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {

    xpc_connection_cancel(xpcCnx);
  }
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  if (xpc_connection_has_entitlement())
  {
    result = 1;
    self->_entitled = 1;
  }

  else
  {
    v6 = NSErrorF(NSOSStatusErrorDomain, 4294896128, "Missing entitlement: %s", "com.apple.BluetoothUIService");
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001E9A0, "[BUISAgentXPCConnection _entitledAndReturnError:]", 90, "### XPC denied: %#{pid}, %{error}", self->_pid, v6);
    }

    if (error)
    {
      v7 = v6;
      *error = v6;
    }

    return 0;
  }

  return result;
}

- (void)xpcConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_dictionary)
  {
    type = [(BUISAgentXPCConnection *)self xpcConnectionMessage:eventCopy];
    goto LABEL_12;
  }

  v5 = eventCopy;
  if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_10001E9A0 <= 20 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000BEAC(self);
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    type = [(BUISAgentXPCConnection *)self invalidate];
    goto LABEL_12;
  }

  if (dword_10001E9A0 <= 90)
  {
    if (dword_10001E9A0 != -1 || (type = _LogCategory_Initialize(), v5 = eventCopy, type))
    {
      type = sub_10000BE6C(v5);
LABEL_12:
      v5 = eventCopy;
    }
  }

  _objc_release_x1(type, v5);
}

- (void)xpcSendMessage:(int)message
{
  connection = self->_xpcCnx;
  if (connection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, [@"BUISKeyType" UTF8String], message);
    xpc_connection_send_message_with_reply(connection, v7, self->_dispatchQueue, &stru_100018578);
  }

  else
  {
    sub_10000BEF0(0, v5, v6);
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v9 = self->_xpcCnx;
  if (v9)
  {
    reply = xpc_dictionary_create_reply(requestCopy);
    if (reply)
    {
      CUXPCEncodeNSError();
      xpc_connection_send_message(v9, reply);
    }

    else
    {
      sub_10000C000(0, v10, v11);
    }
  }

  else
  {
    sub_10000C060(0, v7, v8);
  }
}

- (void)xpcConnectionMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "BUISKeyType");
  if (!string)
  {
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001E9A0, "[BUISAgentXPCConnection xpcConnectionMessage:]", 90, "### XPC no message type");
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_18;
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960561, "Unknown message type: %lld", 0);
    goto LABEL_17;
  }

  v6 = string;
  if (strcmp(string, "BUISKeyArgType"))
  {
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001E9A0, "[BUISAgentXPCConnection xpcConnectionMessage:]", 90, "### XPC unknown message type: %lld", v6);
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_18;
    }

    NSErrorF(NSOSStatusErrorDomain, 4294960561, "Unknown message type: %lld", v6);
    v9 = LABEL_17:;
    [(BUISAgentXPCConnection *)self _xpcSendReplyError:v9 request:messageCopy];

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v10 = 0;
  v7 = [(BUISAgentXPCConnection *)self _entitledAndReturnError:&v10];
  v8 = v10;
  if (v7)
  {
    [(BluetoothUIService *)self->_agent activateBanner:messageCopy withXPCConnection:self];
  }

LABEL_19:
}

@end