@interface NMMessageQueue
- (BOOL)shouldSendNewPayload;
- (NMMessageQueue)init;
- (unint64_t)count;
- (unint64_t)maximumPendingMessagesForMessageType:(int)type;
- (void)_trimPendingMessagesIfNeeded;
- (void)_trimPendingMessagesIfNeededOfType:(int)type;
- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply;
- (void)didSendPayloadWithSize:(unint64_t)size;
- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply;
- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options;
- (void)removeAllMessages;
- (void)removeMessage:(id)message;
- (void)removeReply:(id)reply;
- (void)setMaximumPendingMessages:(unint64_t)messages forMessageType:(int)type;
- (void)willSendPayloadWithSize:(unint64_t)size;
@end

@implementation NMMessageQueue

- (BOOL)shouldSendNewPayload
{
  if (self->_maximumInFlightMessagesCount == -1 && self->_maximumInFlightMessagesSize == -1)
  {
    return 1;
  }

  [(NSLock *)self->_queueLock lock];
  if (self->_inFlightPayloadsSize >= self->_maximumInFlightMessagesSize)
  {
    unlock = [(NSLock *)self->_queueLock unlock];
    goto LABEL_9;
  }

  inFlightPayloadsCount = self->_inFlightPayloadsCount;
  maximumInFlightMessagesCount = self->_maximumInFlightMessagesCount;
  unlock = [(NSLock *)self->_queueLock unlock];
  if (inFlightPayloadsCount >= maximumInFlightMessagesCount)
  {
LABEL_9:
    v6 = sub_100001B24(unlock);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = self->_inFlightPayloadsCount;
      inFlightPayloadsSize = self->_inFlightPayloadsSize;
      v12 = self->_maximumInFlightMessagesCount;
      maximumInFlightMessagesSize = self->_maximumInFlightMessagesSize;
      v15 = 134218752;
      v16 = v10;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = inFlightPayloadsSize;
      v21 = 2048;
      v22 = maximumInFlightMessagesSize;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delaying message/reply send due to too many/too large in-flight payloads (%lu in-flight payloads (%lu max), %lu total bytes (%lu max))", &v15, 0x2Au);
    }

    v9 = 0;
    goto LABEL_12;
  }

  v6 = sub_100001B24(unlock);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_inFlightPayloadsCount;
    v8 = self->_inFlightPayloadsSize;
    v15 = 134218240;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Allowing message/reply to send immediately (%lu in-flight payloads, %lu total bytes)", &v15, 0x16u);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (NMMessageQueue)init
{
  v10.receiver = self;
  v10.super_class = NMMessageQueue;
  v2 = [(NMMessageQueue *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumPendingMessagesCount = -1;
    v2->_maximumInFlightMessagesCount = -1;
    v2->_maximumInFlightMessagesSize = -1;
    v4 = objc_alloc_init(NSMutableArray);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(NSLock);
    queueLock = v3->_queueLock;
    v3->_queueLock = v6;

    v8 = v3;
  }

  return v3;
}

- (unint64_t)count
{
  [(NSLock *)self->_queueLock lock];
  v3 = [(NSMutableArray *)self->_queue count];
  [(NSLock *)self->_queueLock unlock];
  return v3;
}

- (unint64_t)maximumPendingMessagesForMessageType:(int)type
{
  maximumPendingMessagesByType = self->_maximumPendingMessagesByType;
  v4 = [NSNumber numberWithInt:*&type];
  v5 = [(NSMutableDictionary *)maximumPendingMessagesByType objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setMaximumPendingMessages:(unint64_t)messages forMessageType:(int)type
{
  v4 = *&type;
  if (!self->_maximumPendingMessagesByType)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    maximumPendingMessagesByType = self->_maximumPendingMessagesByType;
    self->_maximumPendingMessagesByType = v7;
  }

  v9 = [NSNumber numberWithUnsignedInteger:messages];
  v10 = self->_maximumPendingMessagesByType;
  v11 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];

  [(NMMessageQueue *)self _trimPendingMessagesIfNeededOfType:v4];
}

- (void)enqueueMessage:(id)message options:(id)options reply:(id)reply
{
  if (message)
  {
    replyCopy = reply;
    optionsCopy = options;
    messageCopy = message;
    v12 = objc_alloc_init(_NMEnqueuedMessage);
    [(_NMEnqueuedMessage *)v12 setMessage:messageCopy];
    [(_NMEnqueuedMessage *)v12 setOptions:optionsCopy];

    [(_NMEnqueuedMessage *)v12 setReplyBlock:replyCopy];
    [(_NMEnqueuedMessage *)v12 setEnqueuedTime:CFAbsoluteTimeGetCurrent()];
    [(NSLock *)self->_queueLock lock];
    [(NSMutableArray *)self->_queue addObject:v12];
    [(NSLock *)self->_queueLock unlock];
    [(NMMessageQueue *)self _trimPendingMessagesIfNeeded];
    type = [messageCopy type];

    [(NMMessageQueue *)self _trimPendingMessagesIfNeededOfType:type];
  }
}

- (void)enqueueReply:(id)reply forMessage:(id)message options:(id)options
{
  if (reply)
  {
    optionsCopy = options;
    messageCopy = message;
    replyCopy = reply;
    v11 = objc_alloc_init(_NMEnqueuedMessage);
    [(_NMEnqueuedMessage *)v11 setReply:replyCopy];

    [(_NMEnqueuedMessage *)v11 setMessage:messageCopy];
    [(_NMEnqueuedMessage *)v11 setOptions:optionsCopy];

    [(_NMEnqueuedMessage *)v11 setEnqueuedTime:CFAbsoluteTimeGetCurrent()];
    [(NSLock *)self->_queueLock lock];
    [(NSMutableArray *)self->_queue addObject:v11];
    [(NSLock *)self->_queueLock unlock];
  }
}

- (void)_trimPendingMessagesIfNeeded
{
  [(NSLock *)self->_queueLock lock];
  v3 = sub_1000282B8(self->_queue, &stru_1000851F8);
  if ([v3 count] && objc_msgSend(v3, "count") > self->_maximumPendingMessagesCount)
  {
    v4 = [v3 count];
    v5 = &v4[-self->_maximumPendingMessagesCount];
    v6 = sub_100001B24(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 count];
      maximumPendingMessagesCount = self->_maximumPendingMessagesCount;
      v11 = 134218496;
      v12 = v7;
      v13 = 2048;
      v14 = maximumPendingMessagesCount;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Too many enqueued messages (current:%lu, max:%lu), dropping %lu oldest", &v11, 0x20u);
    }

    queue = self->_queue;
    v10 = [v3 subarrayWithRange:{0, v5}];
    [(NSMutableArray *)queue removeObjectsInArray:v10];
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)_trimPendingMessagesIfNeededOfType:(int)type
{
  v3 = *&type;
  maximumPendingMessagesByType = self->_maximumPendingMessagesByType;
  v6 = [NSNumber numberWithInt:?];
  v7 = [(NSMutableDictionary *)maximumPendingMessagesByType objectForKeyedSubscript:v6];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      v9 = unsignedIntegerValue;
      [(NSLock *)self->_queueLock lock];
      queue = self->_queue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000DB74;
      v19[3] = &unk_100085218;
      v20 = v3;
      v11 = sub_1000282B8(queue, v19);
      if (![v11 count] || objc_msgSend(v11, "count") <= v9)
      {
        goto LABEL_97;
      }

      v12 = [v11 count];
      v13 = &v12[-v9];
      v14 = sub_100001B24(v12);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_96:

        v17 = self->_queue;
        v18 = [v11 subarrayWithRange:{0, v13}];
        [(NSMutableArray *)v17 removeObjectsInArray:v18];

LABEL_97:
        [(NSLock *)self->_queueLock unlock];

        goto LABEL_98;
      }

      if (v3 > 202)
      {
        if (v3 <= 400)
        {
          if (v3 <= 205)
          {
            if (v3 == 203)
            {
              v15 = @"FAILED_TO_UPDATE_LOCATION";
            }

            else if (v3 == 204)
            {
              v15 = @"DID_PAUSE_LOCATION_UPDATES";
            }

            else
            {
              v15 = @"DID_RESUME_LOCATION_UPDATES";
            }
          }

          else
          {
            switch(v3)
            {
              case 300:
                v15 = @"UPDATE_NAV_ROUTE_DETAILS";
                break;
              case 301:
                v15 = @"UPDATE_NAV_ROUTE_STATUS";
                break;
              case 302:
                v15 = @"START_NAV";
                break;
              case 303:
                v15 = @"STOP_NAV";
                break;
              case 304:
                v15 = @"PREVIEW_NAV";
                break;
              case 305:
                v15 = @"CLEAR_NAV_PREVIEW";
                break;
              case 306:
                v15 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                break;
              case 307:
                v15 = @"DISMISS_NAV_SAFETY_ALERT";
                break;
              case 308:
                v15 = @"AVAILABLE_ROUTE";
                break;
              case 309:
                v15 = @"SELECTED_ROUTE";
                break;
              case 310:
                v15 = @"REQUEST_NAVIGATION_UPDATE";
                break;
              case 311:
                v15 = @"UPDATE_NAV_ROUTE_UPDATE";
                break;
              case 312:
                v15 = @"AVAILABLE_ROUTE_UPDATE";
                break;
              case 313:
                v15 = @"PAUSE_NAV";
                break;
              case 314:
                v15 = @"RESUME_NAV";
                break;
              case 315:
                v15 = @"SET_DISPLAYED_STEP";
                break;
              default:
                if (v3 != 206)
                {
                  goto LABEL_55;
                }

                v15 = @"APPLY_LOCATION_AUTHORIZATION";
                break;
            }
          }

          goto LABEL_95;
        }

        if (v3 > 599)
        {
          if (v3 > 1499)
          {
            if (v3 == 1500)
            {
              v15 = @"DEBUG_FETCH_CONFIGURATION_INFO";
              goto LABEL_95;
            }

            if (v3 == 1501)
            {
              v15 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
              goto LABEL_95;
            }
          }

          else
          {
            if (v3 == 600)
            {
              v15 = @"FETCH_ROUTE_GENIUS";
              goto LABEL_95;
            }

            if (v3 == 1000)
            {
              v15 = @"PING";
              goto LABEL_95;
            }
          }

          goto LABEL_55;
        }

        if (v3 > 500)
        {
          if (v3 == 501)
          {
            v15 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
            goto LABEL_95;
          }

          if (v3 == 502)
          {
            v15 = @"SERVICE_REQUEST";
            goto LABEL_95;
          }

          goto LABEL_55;
        }

        if (v3 == 401)
        {
          v15 = @"OPEN_URL";
          goto LABEL_95;
        }

        if (v3 != 500)
        {
          goto LABEL_55;
        }

        v15 = @"PLACE_DATA_MUID_LOOKUP";
      }

      else
      {
        if (v3 <= 99)
        {
          if (v3 > 3)
          {
            switch(v3)
            {
              case '2':
                v15 = @"START_INITIAL_SYNC";
                break;
              case '3':
                v15 = @"FETCH_CURRENT_COUNTRY_CODE";
                break;
              case '4':
                v15 = @"FETCH_EXPERIMENTS_CONFIG";
                break;
              case '5':
                v15 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                break;
              case '6':
                v15 = @"SYNC_UP_NEXT_ITEMS";
                break;
              case '7':
                v15 = @"REQUEST_UP_NEXT_ITEMS";
                break;
              case '8':
                v15 = @"SYNC_CONFIG_STORE";
                break;
              case '9':
                v15 = @"CHECKIN_WITH_CONFIG_STORE";
                break;
              case ':':
                v15 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                break;
              case ';':
                v15 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                break;
              case '<':
                v15 = @"SYNC_SUBSCRIPTION_INFO";
                break;
              case '=':
                v15 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                break;
              case '>':
                goto LABEL_55;
              case '?':
                v15 = @"UPDATE_SUBSCRIPTION_STATE";
                break;
              case '@':
                v15 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                break;
              case 'A':
                v15 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'B':
                v15 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'C':
                v15 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                break;
              default:
                if (v3 != 4)
                {
                  goto LABEL_55;
                }

                v15 = @"FETCHED_TILE";
                break;
            }

            goto LABEL_95;
          }

          switch(v3)
          {
            case 1:
              v15 = @"FETCH_TILES";
              goto LABEL_95;
            case 2:
              v15 = @"CANCEL_TILES";
              goto LABEL_95;
            case 3:
              v15 = @"REPORT_CORRUPT_TILE";
              goto LABEL_95;
          }

LABEL_55:
          v15 = [NSString stringWithFormat:@"(unknown: %i)", v3];
          goto LABEL_95;
        }

        if (v3 <= 102)
        {
          if (v3 == 100)
          {
            v15 = @"CHECKIN_WITH_TILE_GROUP";
          }

          else if (v3 == 101)
          {
            v15 = @"FORCE_UPDATE_MANIFEST";
          }

          else
          {
            v15 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
          }

          goto LABEL_95;
        }

        if (v3 > 200)
        {
          if (v3 == 201)
          {
            v15 = @"STOP_LOCATION_UPDATE";
          }

          else
          {
            v15 = @"UPDATED_LOCATION";
          }

          goto LABEL_95;
        }

        if (v3 == 103)
        {
          v15 = @"FETCH_RESOURCE";
          goto LABEL_95;
        }

        if (v3 != 200)
        {
          goto LABEL_55;
        }

        v15 = @"START_LOCATION_UPDATE";
      }

LABEL_95:
      v16 = [v11 count];
      *buf = 138413058;
      v22 = v15;
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v9;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Too many enqueued messages for %@ (current:%lu, max:%lu), dropping %lu oldest", buf, 0x2Au);

      goto LABEL_96;
    }
  }

LABEL_98:
}

- (void)dequeueMessageIfPossible:(id)possible orReply:(id)reply
{
  possibleCopy = possible;
  replyCopy = reply;
  isPaused = [(NMMessageQueue *)self isPaused];
  if (!isPaused)
  {
    [(NSLock *)self->_queueLock lock];
    firstObject = [(NSMutableArray *)self->_queue firstObject];
    if (!firstObject)
    {
      [(NSLock *)self->_queueLock unlock];
      goto LABEL_14;
    }

    v10 = sub_100001B24([(NSMutableArray *)self->_queue removeObjectAtIndex:0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      message = [firstObject message];
      shortDebugDescription = [message shortDebugDescription];
      v13 = [(NSMutableArray *)self->_queue count];
      v24 = 138412546;
      v25 = shortDebugDescription;
      v26 = 2048;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dequeued message: %@, %lu remaining in queue", &v24, 0x16u);
    }

    [(NSLock *)self->_queueLock unlock];
    reply = [firstObject reply];

    if (reply)
    {
      if (!replyCopy)
      {
        goto LABEL_14;
      }

      reply2 = [firstObject reply];
      message2 = [firstObject message];
      options = [firstObject options];
      Current = CFAbsoluteTimeGetCurrent();
      [firstObject enqueuedTime];
      v20.n128_f64[0] = Current - v19;
      replyCopy[2](replyCopy, reply2, message2, options, v20);
    }

    else
    {
      if (!possibleCopy)
      {
        goto LABEL_14;
      }

      reply2 = [firstObject message];
      message2 = [firstObject options];
      options = [firstObject replyBlock];
      v21 = CFAbsoluteTimeGetCurrent();
      [firstObject enqueuedTime];
      v23.n128_f64[0] = v21 - v22;
      possibleCopy[2](possibleCopy, reply2, message2, options, v23);
    }

    goto LABEL_14;
  }

  firstObject = sub_100001B24(isPaused);
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Will not dequeue message, currently paused", &v24, 2u);
  }

LABEL_14:
}

- (void)willSendPayloadWithSize:(unint64_t)size
{
  [(NSLock *)self->_queueLock lock];
  v5.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v5.i64[1] = size;
  *&self->_inFlightPayloadsCount = vaddq_s64(*&self->_inFlightPayloadsCount, v5);
  queueLock = self->_queueLock;

  [(NSLock *)queueLock unlock];
}

- (void)didSendPayloadWithSize:(unint64_t)size
{
  lock = [(NSLock *)self->_queueLock lock];
  inFlightPayloadsCount = self->_inFlightPayloadsCount;
  if (inFlightPayloadsCount)
  {
    self->_inFlightPayloadsCount = inFlightPayloadsCount - 1;
  }

  else
  {
    v7 = sub_100001B24(lock);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Trying to decrement message queue in-flight count, but would underflow! Ignoring...", buf, 2u);
    }
  }

  inFlightPayloadsSize = self->_inFlightPayloadsSize;
  v9 = inFlightPayloadsSize >= size;
  v10 = inFlightPayloadsSize - size;
  if (v9)
  {
    self->_inFlightPayloadsSize = v10;
  }

  else
  {
    v11 = sub_100001B24(lock);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Trying to decrement message queue in-flight size, but would underflow! Ignoring...", v12, 2u);
    }
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)removeMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    v6 = sub_100001B24(messageCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      shortDebugDescription = [v5 shortDebugDescription];
      *buf = 138412290;
      v24 = shortDebugDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing message: %@", buf, 0xCu);
    }

    [(NSLock *)self->_queueLock lock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_queue;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        message = [v13 message];

        if (message == v5)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v15 = v13;

      if (!v15)
      {
        goto LABEL_17;
      }

      [(NSMutableArray *)self->_queue removeObject:v15];
      v16 = sub_100001B24([(NSLock *)self->_queueLock unlock]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription2 = [v5 shortDebugDescription];
        *buf = 138412290;
        v24 = shortDebugDescription2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found and removed enqueued message: %@", buf, 0xCu);
      }
    }

    else
    {
LABEL_12:

LABEL_17:
      [(NSLock *)self->_queueLock unlock];
    }
  }
}

- (void)removeReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    [(NSLock *)self->_queueLock lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_queue;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          reply = [v10 reply];

          if (reply == replyCopy)
          {
            v12 = v10;

            if (v12)
            {
              [(NSMutableArray *)self->_queue removeObject:v12];
            }

            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
    [(NSLock *)self->_queueLock unlock];
  }
}

- (void)removeAllMessages
{
  [(NSLock *)self->_queueLock lock];
  [(NSMutableArray *)self->_queue removeAllObjects];
  queueLock = self->_queueLock;

  [(NSLock *)queueLock unlock];
}

@end