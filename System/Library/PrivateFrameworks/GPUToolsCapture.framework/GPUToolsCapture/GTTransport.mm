@interface GTTransport
@end

@implementation GTTransport

void __34__GTTransport_relayMessage_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if ((*(*(a1 + 32) + 52) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    [*(a1 + 32) _sendMessage:*(a1 + 40) error:0];

    objc_autoreleasePoolPop(v2);
  }
}

void __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if (*(*(a1 + 32) + 52) == 1)
  {
    v9 = objc_autoreleasePoolPush();
    [*(a1 + 40) dispatchError:{+[GTError_capture errorWithDomain:code:userInfo:](GTError_capture, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 32, 0)}];
    objc_autoreleasePoolPop(v9);
    atomic_fetch_add((*(a1 + 32) + 48), 0xFFFFFFFF);
    v10 = *(a1 + 48);

    [v10 setEncodedAttributes:0];
  }

  else
  {
    v13 = 0;
    v2 = objc_autoreleasePoolPush();
    if (*(a1 + 40))
    {
      v3 = &v13;
    }

    else
    {
      v3 = 0;
    }

    v4 = [*(a1 + 32) _sendMessage:*(a1 + 48) error:v3];
    v5 = v13;
    objc_autoreleasePoolPop(v2);
    atomic_fetch_add((*(a1 + 32) + 48), 0xFFFFFFFF);
    if (v4 == -1)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4;
        block[3] = &unk_2F15B0;
        v12 = *(a1 + 56);
        block[4] = v7;
        block[5] = v6;
        block[6] = v13;
        dispatch_async(v8, block);
      }
    }
  }
}

id __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObjectForIntKey:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 dispatchError:v3];
}

uint64_t __30__GTTransport_setSynchronous___block_invoke(uint64_t result)
{
  v1 = &_dispatch_async;
  if (*(result + 40))
  {
    v1 = &_dispatch_sync;
  }

  *(*(result + 32) + 96) = v1;
  return result;
}

id *__37__GTTransport__scheduleInvalidation___block_invoke(id *result)
{
  if (!*(result[4] + 10))
  {
    v2 = result;
    *(result[4] + 10) = result[5];
    v3 = v2[4];

    return [v3 _invalidate];
  }

  return result;
}

void __32__GTTransport__dispatchMessage___block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    v3 = (*(*(v1 + 16) + 16))();
    v4 = a1[4];
    if (v3)
    {
      v5 = *(v4 + 32);
      if (v5)
      {
        v6 = dispatch_time(0, v5);
        v7 = a1[6];
        v8 = *(v7 + 24);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = __32__GTTransport__dispatchMessage___block_invoke_3;
        v11[3] = &unk_2F1CA8;
        v11[4] = v7;
        v11[5] = a1[7];
        dispatch_after(v6, v8, v11);
      }
    }

    else
    {
      *(v4 + 24) = 1;
      v9 = a1[6];
      v10 = *(v9 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __32__GTTransport__dispatchMessage___block_invoke_2;
      block[3] = &unk_2F1510;
      block[4] = v9;
      v13 = *(a1 + 14);
      dispatch_async(v10, block);
    }
  }
}

void *__31__GTTransport__activateSource___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 52) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 64) addObject:result[5]];
    *(*(v2[6] + 8) + 24) = 1;
  }

  return result;
}

void *__34__GTTransport_newSourceWithQueue___block_invoke(void *result)
{
  if ((*(result[4] + 52) & 1) == 0)
  {
    v1 = result;
    result = [[GTTransportSource_capture alloc] _initWithQueue:v1[5] transport:v1[4]];
    *(*(v1[6] + 8) + 40) = result;
  }

  return result;
}

id __18__GTTransport_url__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end