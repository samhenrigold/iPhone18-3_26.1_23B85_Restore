@interface AFSiriAcousticIDRequest
- (void)performRequestWithCompletion:(id)completion;
@end

@implementation AFSiriAcousticIDRequest

- (void)performRequestWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  *keys = xmmword_1E7348668;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_int64_create(1);
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  v5 = _ExternalRequestConnectionWithContext(0);
  v6 = v5;
  if (v4 && v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__AFSiriAcousticIDRequest_performRequestWithCompletion___block_invoke;
    v8[3] = &unk_1E7348638;
    v10 = completionCopy;
    v9 = v6;
    xpc_connection_send_message_with_reply(v9, v4, 0, v8);
  }

  else
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    if (v6)
    {
      xpc_connection_cancel(v6);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }
}

void __56__AFSiriAcousticIDRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

@end