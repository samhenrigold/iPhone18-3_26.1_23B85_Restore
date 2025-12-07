@interface HAP2CoAPIOThread
- (BOOL)_processQueueEntry:(id)entry context:(coap_context_t *)context;
- (BOOL)_processQueueWithContext:(coap_context_t *)context;
- (BOOL)_processSessionBlock:(id)block consumer:(id)consumer context:(coap_context_t *)context;
- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)service delegate:(id)delegate;
- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)service delegate:(id)delegate dateProvider:(id)provider;
- (coap_context_t)_createContext;
- (id)completedQueue;
- (id)consumerInfo;
- (id)delegate;
- (id)queue;
- (void)_cleanupWithContext:(coap_context_t *)context;
- (void)_enqueue:(id)_enqueue;
- (void)_registerConsumer:(id)consumer context:(coap_context_t *)context;
- (void)_unregisterConsumer:(id)consumer;
- (void)_wakeUpThread;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)queueSessionBlockForConsumer:(id)consumer sessionBlock:(id)block withTimeout:(double)timeout requiresCompletion:(BOOL)completion;
- (void)queueSessionCompletionForConsumer:(id)consumer;
- (void)registerConsumer:(id)consumer;
- (void)unregisterConsumer:(id)consumer;
@end

@implementation HAP2CoAPIOThread

- (BOOL)_processSessionBlock:(id)block consumer:(id)consumer context:(coap_context_t *)context
{
  blockCopy = block;
  consumerCopy = consumer;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@ Session Block (IO Thread)", v12];

  v24 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v13];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  consumerInfo = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__HAP2CoAPIOThread__processSessionBlock_consumer_context___block_invoke;
  v17[3] = &unk_2786D5EC8;
  v15 = consumerCopy;
  v18 = v15;
  v19 = &v20;
  [consumerInfo hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  blockCopy[2](blockCopy, context, v21[3]);
  [v24 invalidate];
  LOBYTE(context) = v21[3] != 0;

  _Block_object_dispose(&v20, 8);
  __HMFActivityScopeLeave();

  return context;
}

- (id)consumerInfo
{
  if (self)
  {
    selfCopy = self;
    [self _assertIsCurrentThread];
    self = selfCopy[12];
    v1 = vars8;
  }

  return self;
}

void __58__HAP2CoAPIOThread__processSessionBlock_consumer_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 consumer];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 session];
    *a4 = 1;
  }
}

- (void)_unregisterConsumer:(id)consumer
{
  consumerCopy = consumer;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Unregister (IO Thread)", v7];

  v22 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20180;
  v20 = __Block_byref_object_dispose__20181;
  v21 = 0;
  consumerInfo = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__HAP2CoAPIOThread__unregisterConsumer___block_invoke;
  v12[3] = &unk_2786D5EA0;
  v10 = consumerCopy;
  selfCopy = self;
  v15 = &v16;
  v13 = v10;
  [consumerInfo hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  if (v17[5])
  {
    consumerInfo2 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
    [consumerInfo2 removeObjectsAtIndexes:v17[5]];
  }

  [v22 invalidate];

  _Block_object_dispose(&v16, 8);
  __HMFActivityScopeLeave();
}

void __40__HAP2CoAPIOThread__unregisterConsumer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [v19 consumer];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if ([v19 session])
    {
      v10 = [v19 session];
      if (!v10)
      {
        __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
      }

      *(v10 + 344) = 0;
      v11 = [HAP2CoAPIOThreadSessionQueueEntry alloc];
      v12 = [v19 session];
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = *(v13 + 120);
      }

      else
      {
        v14 = 0;
      }

      v15 = [v14 now];
      v16 = [(HAP2CoAPIOThreadSessionQueueEntry *)v11 initWithSession:v12 startTime:v15];

      v17 = *(a1 + 40);
      if (v17)
      {
        v18 = *(v17 + 136);
      }

      else
      {
        v18 = 0;
      }

      [v18 addObject:v16];
      [v19 setSession:0];
      [*(a1 + 32) didCloseSession];
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) didUnregister];
    }
  }
}

- (void)_registerConsumer:(id)consumer context:(coap_context_t *)context
{
  consumerCopy = consumer;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@ Register (IO Thread)", v9];

  v14 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v10];
  v11 = [[HAP2CoAPIOConsumerInfo alloc] initWithConsumer:consumerCopy];
  consumerInfo = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [consumerInfo addObject:v11];

  if (objc_opt_respondsToSelector())
  {
    [consumerCopy didRegister];
  }

  if (context)
  {
    -[HAP2CoAPIOConsumerInfo setSession:](v11, "setSession:", [consumerCopy shouldOpenSessionWithContext:context]);
    if ([(HAP2CoAPIOConsumerInfo *)v11 session])
    {
      session = [(HAP2CoAPIOConsumerInfo *)v11 session];
      if (!session)
      {
        __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
      }

      *(session + 344) = consumerCopy;
    }
  }

  [v14 invalidate];

  __HMFActivityScopeLeave();
}

- (BOOL)_processQueueEntry:(id)entry context:(coap_context_t *)context
{
  entryCopy = entry;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  if (!entryCopy)
  {
    v7 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v7 = entryCopy[1];
  v8 = entryCopy[2];
  if (v8 == 8)
  {
    if (self)
    {
      lock = self->_lock;
    }

    else
    {
      lock = 0;
    }

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __47__HAP2CoAPIOThread__processQueueEntry_context___block_invoke;
    v16 = &unk_2786D7050;
    selfCopy = self;
    v18 = entryCopy;
    [(HAP2Lock *)lock performBlock:&v13];

LABEL_11:
    v11 = entryCopy[3];
LABEL_12:
    selfCopy = [(HAP2CoAPIOThread *)self _processSessionBlock:v11 consumer:v7 context:context, v13, v14, v15, v16, selfCopy];
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    [(HAP2CoAPIOThread *)self _unregisterConsumer:v7];
    goto LABEL_7;
  }

  if (v8 != 1)
  {
    goto LABEL_11;
  }

  [(HAP2CoAPIOThread *)self _registerConsumer:v7 context:context];
LABEL_7:
  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

uint64_t __47__HAP2CoAPIOThread__processQueueEntry_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[16];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)_cleanupWithContext:(coap_context_t *)context
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__20180;
  v23 = __Block_byref_object_dispose__20181;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20180;
  v17 = __Block_byref_object_dispose__20181;
  v18 = 0;
  if (self)
  {
    lock = self->_lock;
  }

  else
  {
    lock = 0;
  }

  v6 = lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke;
  v12[3] = &unk_2786D6E60;
  v12[4] = self;
  v12[5] = &v19;
  [(HAP2Lock *)v6 performBlock:v12];

  [v20[5] hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_20202];
  consumerInfo = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [consumerInfo hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_68];

  consumerInfo2 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [consumerInfo2 removeAllObjects];

  if (self)
  {
    v9 = self->_lock;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_4;
  v11[3] = &unk_2786D6E60;
  v11[4] = self;
  v11[5] = &v13;
  [(HAP2Lock *)v10 performBlock:v11];

  [v14[5] hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_70];
  coap_free_context(context);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke(uint64_t a1)
{
  v2 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
    [v8 removeAllObjects];
  }
}

void *__40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 136);
  }

  else
  {
    v3 = 0;
  }

  result = [v3 count];
  if (result)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[17];
    }

    v6 = v5;
    v7 = [v6 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 136);
    }

    else
    {
      v11 = 0;
    }

    return [v11 removeAllObjects];
  }

  return result;
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 distantFuture];
  [v3 reapSession:v4];
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 consumer];
  if ([v4 session])
  {
    v3 = [v4 session];
    if (!v3)
    {
      __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
    }

    *(v3 + 344) = 0;
    coap_session_release([v4 session]);
    [v4 setSession:0];
  }

  if (v2)
  {
    [v2 didCloseSession];
  }
}

uint64_t __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)queue
{
  if (self)
  {
    selfCopy = self;
    [self[13] assertOwner];
    self = selfCopy[9];
    v1 = vars8;
  }

  return self;
}

- (BOOL)_processQueueWithContext:(coap_context_t *)context
{
  v3 = MEMORY[0x28223BE20](self, a2, context);
  v5 = v4;
  v6 = v3;
  v403 = *MEMORY[0x277D85DE8];
  [v3 _assertIsCurrentThread];
  v354 = 0;
  v355 = &v354;
  v356 = 0x3032000000;
  v357 = __Block_byref_object_copy__20180;
  v358 = __Block_byref_object_dispose__20181;
  v359 = 0;
  if (v6)
  {
    v7 = *(v6 + 13);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v353[0] = MEMORY[0x277D85DD0];
  v353[1] = 3221225472;
  v353[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke;
  v353[3] = &unk_2786D6E60;
  v353[4] = v6;
  v353[5] = &v354;
  [v8 performBlock:v353];

  v351[0] = 0;
  v351[1] = v351;
  v351[2] = 0x3032000000;
  v351[3] = __Block_byref_object_copy__20180;
  v351[4] = __Block_byref_object_dispose__20181;
  v352 = 0;
  v9 = v355[5];
  v350[0] = MEMORY[0x277D85DD0];
  v350[1] = 3221225472;
  v350[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_62;
  v350[3] = &unk_2786D5E18;
  v350[4] = v6;
  v350[5] = v351;
  v350[6] = v5;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v350];
  if (v5)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v339 = [v10 stringWithFormat:@"%@ CoAP Run", v12];

    v349 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v339];
    if (v6)
    {
      v338 = *(v6 + 15);
    }

    else
    {
      v338 = 0;
    }

    memset(&v364, 0, sizeof(v364));
    memset(v366, 0, 512);
    v360 = 0;
    v361 = 0;
    memset(__errnum, 0, sizeof(__errnum));
    gettimeofday(__errnum, 0);
    v343 = __errnum[2];
    v14 = *__errnum;
    v345 = coap_clock_offset;
    v348 = v5;
    v15 = *(v5 + 16);
    p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
    if (v15)
    {
      while (1)
      {
        v17 = v15;
        v15 = *(v15 + 10);
        v18 = *v17;
        if ((*v17 & 4) != 0 && (*v17 & 3) != 0)
        {
          v18 &= ~2u;
          *v17 = v18;
          v19 = *(v17 + 1);
          if (!v19)
          {
            __assert_rtn("coap_notify_observers", "resource.c", 751, "h");
          }

          v20 = *(v17 + 16);
          if (v20)
          {
            break;
          }
        }

LABEL_39:
        *v17 = v18 & 0xFE;
        if (!v15)
        {
          goto LABEL_40;
        }
      }

      memset(__errnum, 0, sizeof(__errnum));
      while (1)
      {
        if ((*v17 & 1) != 0 || (v20[2] & 0x40) != 0)
        {
          v21 = v20[1];
          if (!v21[226])
          {
            v22 = *(v20 + 16);
LABEL_19:
            *(v20 + 16) = v22 & 0xBF;
            v23 = coap_session_max_pdu_size(v21);
            v24 = coap_pdu_init(0, 0, 0, v23);
            if (v24)
            {
              v25 = v24;
              if (coap_add_token(v24, v20[4], v20 + 5))
              {
                *__errnum = v20[4];
                *&__errnum[2] = v20 + 5;
                v26 = v20[1];
                v27 = *(v26 + 224) + 1;
                *(v26 + 224) = v27;
                *(v25 + 6) = v27;
                *(v20 + 9) = v27;
                v28 = (v17[144] & 2) == 0 && (v20[2] & 0xFu) < 5;
                *v25 = v28;
                v19(v5, v17);
                v29 = *(v20 + 16);
                v30 = v29 + 1;
                v31 = v29 & 0xF0;
                if (*v25)
                {
                  v32 = v31 & 0xF0 | v30 & 0xF;
                }

                else
                {
                  v32 = v31;
                }

                *(v20 + 16) = v32;
                p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
                if (coap_send(v20[1], v25) == -1)
                {
                  if (maxlog >= 7)
                  {
                    coap_log_impl(7, "coap_check_notify: sending failed, resource stays partially dirty\n");
                  }

                  *(v20 + 16) |= 0x40u;
                  *v17 |= 2u;
                }
              }

              else
              {
                *(v20 + 16) |= 0x40u;
                *v17 |= 2u;
                p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
                if (maxlog >= 7)
                {
                  coap_log_impl(7, "coap_check_notify: cannot add token, resource stays partially dirty\n");
                }

                coap_delete_pdu(v25);
              }
            }

            else
            {
              *(v20 + 16) |= 0x40u;
              *v17 |= 2u;
              if (maxlog >= 7)
              {
                coap_log_impl(7, "coap_check_notify: pdu init failed, resource stays partially dirty\n");
              }
            }

            goto LABEL_37;
          }

          if ((v17[144] & 2) == 0)
          {
            v22 = *(v20 + 16);
            if ((v22 & 0xFu) <= 4)
            {
              goto LABEL_19;
            }
          }
        }

LABEL_37:
        v20 = *v20;
        if (!v20)
        {
          v18 = *v17;
          goto LABEL_39;
        }
      }
    }

LABEL_40:
    v13.n128_f64[0] = v343 * 1.024 + 512.0;
    v33 = 1000 * (v14 - v345) + (v13.n128_f64[0] >> 10);
    v34 = *(v5 + 192);
    if (v34)
    {
      v35 = 1000 * v34;
    }

    else
    {
      v35 = 300000;
    }

    v36 = *(v5 + 56);
    if (!v36)
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_67;
    }

    v37 = 0;
    v38 = 0;
    do
    {
      if ((*(v36 + 14) & 0x70) != 0 && v37 <= 0x1FF)
      {
        *(v366 + v37++) = v36 + 3;
      }

      v39 = v36[10];
      while (v39)
      {
        v40 = v39;
        v39 = *(v39 + 64);
        if (*(v40 + 1) != 2 || *(v40 + 4) || *(v40 + 232))
        {
          goto LABEL_53;
        }

        v41 = *(v40 + 272) + v35;
        v66 = v41 > v33;
        v42 = v41 - v33;
        if (v66 && *(v40 + 2))
        {
          if (v38 - 1 >= v42)
          {
            v38 = v42;
          }

LABEL_53:
          if ((*(v40 + 180) & 0x30) != 0 && v37 <= 0x1FF)
          {
            *(v366 + v37++) = v40 + 176;
          }
        }

        else
        {
          coap_session_free(v40);
        }
      }

      v36 = *v36;
    }

    while (v36);
LABEL_67:
    v342 = v33;
    v44 = *(v348 + 64);
    while (v44)
    {
      while (1)
      {
        v45 = v44;
        v44 = *(v44 + 8);
        if (v45[1] != 1)
        {
          goto LABEL_95;
        }

        if (v45[2] == 4)
        {
          v46 = *(v348 + 204);
          if (v46)
          {
            break;
          }
        }

LABEL_75:
        if (*v45 - 3 <= 1 && v45[2] == 3)
        {
          v49 = *(v348 + 208);
          if (v49)
          {
            v50 = *(v45 + 38);
            if (v50)
            {
              v51 = v50 + 1000 * v49;
              v52 = v33;
              if (v51 <= v33)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v52 = v33;
              *(v45 + 38) = v33;
              v51 = v33 + 1000 * v49;
            }

            v60 = v51 - v52;
            if (v38 - 1 >= v60)
            {
              v38 = v60;
            }
          }
        }

LABEL_95:
        if ((*(v45 + 90) & 0xB0) != 0 && v37 <= 0x1FF)
        {
          *(v366 + v37++) = v45 + 176;
        }

        if (!v44)
        {
          goto LABEL_102;
        }
      }

      v47 = *(v45 + 34) + 1000 * v46;
      v66 = v47 > v33;
      v48 = v47 - v33;
      if (v66)
      {
        if (v38 - 1 >= v48)
        {
          v38 = v48;
        }

        goto LABEL_75;
      }

      v53 = *(v45 + 36);
      if (v53 && *(v45 + 37) < v53)
      {
        goto LABEL_101;
      }

      if (*v45 - 1 > 1)
      {
        v56 = -30;
        v55 = 0;
        v57 = 1;
      }

      else
      {
        v54 = *(v45 + 112) + 1;
        *(v45 + 112) = v54;
        v55 = v54;
        v56 = 0;
        v57 = 0;
      }

      v58 = coap_pdu_init(0, v56, v55, v57);
      if (v58)
      {
        v59 = coap_send(v45, v58);
        *(v45 + 57) = v59;
        if (v59 != -1)
        {
          *(v45 + 34) = v33;
          *(v45 + 36) = v33;
          if (v38 - 1 >= 1000 * *(v348 + 204))
          {
            v38 = 1000 * *(v348 + 204);
          }

          if (v45[1] != 1)
          {
            goto LABEL_95;
          }

          goto LABEL_75;
        }
      }

      else
      {
        *(v45 + 57) = -1;
      }

LABEL_101:
      ++*(v45 + 1);
      coap_session_disconnected(v45, 1, v13);
      coap_session_release(v45);
    }

LABEL_102:
    v61 = v348;
    v62 = (v348 + 48);
    v63 = *(v348 + 48);
    if (v63)
    {
      v344 = (v348 + 48);
      v346 = v38;
      do
      {
        v64 = v61[5];
        v65 = *(v63 + 8);
        v66 = v33 < v64 || v65 > v33 - v64;
        if (v66)
        {
          v122 = v64 - v33 + v65;
          if (v38 - 1 >= v122)
          {
            v38 = v122;
          }

          break;
        }

        v67 = *v63;
        *v62 = *v63;
        if (v67)
        {
          *(v67 + 8) += v65;
        }

        *v63 = 0;
        v68 = *(v63 + 16);
        v69 = *(v63 + 24);
        if (*(v69 + 352) <= v68)
        {
          if (*(p_inst_meths + 756) >= 7)
          {
            coap_session_str(*(v63 + 24));
            coap_log_impl(7, "** %s: tid=%d: give up after %d attempts\n", &coap_session_str_szSession, *(v63 + 32), *(v63 + 16));
            v69 = *(v63 + 24);
          }

          v72 = *(v63 + 40);
          if (*(v72 + 1) >= 0x40u)
          {
            v73 = v61[2];
            if (v73)
            {
              v340 = v63;
              v74 = *(v72 + 4);
              v75 = *(v72 + 40);
              do
              {
                v76 = v73;
                v73 = *(v73 + 80);
                v77 = *(v76 + 128);
                if (v77)
                {
                  v78 = *(v76 + 128);
                  while (1)
                  {
                    v79 = v78;
                    v78 = *v78;
                    v80 = v79[1];
                    if (v80 == v69 && v79[4] == v74 && !memcmp(v75, v79 + 5, v74))
                    {
                      break;
                    }

                    if (!v78)
                    {
                      goto LABEL_124;
                    }
                  }

                  v81 = *(v79 + 16);
                  if ((~v81 & 0x30) != 0)
                  {
                    *(v79 + 16) = (v81 + 16) & 0x30 | v81 & 0xCF;
                  }

                  else
                  {
                    if (v77 == v79)
                    {
                      *(v76 + 128) = *v77;
                    }

                    else
                    {
                      do
                      {
                        v82 = v77;
                        v77 = *v77;
                        if (v77)
                        {
                          v83 = v77 == v79;
                        }

                        else
                        {
                          v83 = 1;
                        }
                      }

                      while (!v83);
                      if (v77)
                      {
                        *v82 = v78;
                      }
                    }

                    *(v79 + 16) &= 0xCFu;
                    v84 = v74;
                    if (maxlog >= 7)
                    {
                      if (coap_print_addr(v80 + 104, __errnum, 0x36uLL) && maxlog >= 7)
                      {
                        coap_log_impl(7, "** removed observer %s\n", __errnum);
                      }

                      v80 = v79[1];
                      v84 = v79[4];
                    }

                    coap_cancel_all_messages(v348, v80, v79 + 5, v84);
                    coap_session_release(v79[1]);
                    v85 = v79[6];
                    if (v85)
                    {
                      free(v85);
                    }

                    free(v79);
                  }
                }

LABEL_124:
                ;
              }

              while (v73);
              v63 = v340;
              v69 = *(v340 + 24);
              v61 = v348;
              p_inst_meths = (&OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate + 24);
            }

            else
            {
              v61 = v348;
            }

            v33 = v342;
          }

          if (*(v69 + 226))
          {
            --*(v69 + 226);
            if (*(v69 + 2) == 4)
            {
              coap_session_connected(v69, v13);
            }
          }

          if (!**(v63 + 40))
          {
            v94 = v61[10];
            if (v94)
            {
              v94(v61, *(v63 + 24));
            }
          }

          coap_delete_node(v63);
          goto LABEL_165;
        }

        *(v63 + 16) = v68 + 1;
        memset(__errnum, 0, sizeof(__errnum));
        gettimeofday(__errnum, 0);
        v70 = 1000 * (*__errnum - coap_clock_offset) + ((__errnum[2] * 1.024 + 512.0) >> 10);
        if (*v62)
        {
          v71 = v70 - v61[5] + (*(v63 + 20) << *(v63 + 16));
        }

        else
        {
          v71 = (*(v63 + 20) << *(v63 + 16));
          v61[5] = v70;
        }

        *(v63 + 8) = v71;
        coap_insert_node(v62, v63);
        if (*(p_inst_meths + 756) >= 7)
        {
          coap_session_str(*(v63 + 24));
          coap_log_impl(7, "** %s: tid=%d: retransmission #%d\n", &coap_session_str_szSession, *(v63 + 32), *(v63 + 16));
        }

        v86 = *(v63 + 24);
        if (v86[226])
        {
          --v86[226];
        }

        v87 = *(v63 + 48);
        v88 = *(v63 + 40);
        if ((v87 - 1) > 0x3E)
        {
          coap_send_pdu(v86, *(v63 + 40), v63, v13);
          goto LABEL_165;
        }

        v341 = v63;
        v89 = *(v88 + 40);
        v90 = *(v88 + 3);
        v91 = *(v88 + 24);
        if (*(p_inst_meths + 756) >= 7)
        {
          coap_log_impl(7, "coap_send_pdu_dscp: Session state = %d\n", v86[2]);
        }

        v92 = *(v86 + 90);
        if (*(v86 + 90))
        {
          v93 = v86 + 176;
        }

        else
        {
          v95 = *(v86 + 25);
          if (!v95)
          {
            __assert_rtn("coap_send_pdu_dscp", "net.c", 953, "session->endpoint != NULL");
          }

          v93 = (v95 + 24);
        }

        if (*v93 == -1)
        {
          v97 = *(p_inst_meths + 756);
          v98 = "Invalid socket file descriptor (fd = -1).\n";
          goto LABEL_185;
        }

        v96 = v86[141];
        if (v96 == 2)
        {
          if ((*(v86 + 36) & 0xF0) == 0xE0)
          {
            goto LABEL_176;
          }
        }

        else if (v96 == 30 && v86[148] == 255)
        {
LABEL_176:
          if (*(v88 + 1) > 0x5Fu)
          {
            goto LABEL_165;
          }
        }

        if (*v88)
        {
          if (v86[2] == 4 && (~v92 & 0x21) != 0)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if ((~v92 & 0x1001) == 0)
          {
            v97 = *(p_inst_meths + 756);
            v98 = "Multicast requests cannot be Confirmable (RFC7252 8.1)\n";
LABEL_185:
            if (v97 > 2)
            {
              coap_log_impl(3, v98);
            }

            goto LABEL_165;
          }

          if (v86[2] == 4 && !v86[226] && (~v92 & 0x21) != 0)
          {
            if (*v86 - 1 <= 1)
            {
              v86[226] = 1;
            }

LABEL_180:
            memset(&v365, 0, sizeof(v365));
            v370[0] = v89 - v90;
            v370[1] = v91 + v90;
            if ((v93[4] & 4) != 0)
            {
              v99 = v93;
              v365.msg_name = 0;
              v365.msg_namelen = 0;
              v100 = "Using connected socket path (msg_name=NULL).\n";
              if (*(p_inst_meths + 756) > 6)
              {
                goto LABEL_192;
              }
            }

            else
            {
              v99 = v93;
              v365.msg_name = v86 + 108;
              v365.msg_namelen = *(v86 + 26);
              v100 = "Using unconnected socket path (msg_name set).\n";
              if (*(p_inst_meths + 756) < 7)
              {
                goto LABEL_193;
              }

LABEL_192:
              coap_log_impl(7, v100);
            }

LABEL_193:
            v365.msg_iov = v370;
            v365.msg_iovlen = 1;
            v365.msg_control = 0;
            v365.msg_controllen = 0;
            v101 = v86[109];
            if (v101 != 30 && v101 != 2)
            {
              if (*(p_inst_meths + 756) >= 7)
              {
                coap_log_impl(7, "Unsupported address family for DSCP/AQM. Sending without it.\n");
              }

              goto LABEL_224;
            }

            v365.msg_control = &v367;
            v365.msg_controllen = 32;
            v367 = 16;
            v369 = 4 * v87;
            if (v101 == 2)
            {
              v368 = 0x300000000;
              v102 = "Setting IP_TOS to 0x%x (DSCP %d)\n";
              if (*(p_inst_meths + 756) <= 6)
              {
LABEL_200:
                v103 = &v367 + ((v367 + 3) & 0x1FFFFFFFCLL);
                if (v103 + 12 > v365.msg_control + v365.msg_controllen)
                {
                  if (*(p_inst_meths + 756) >= 4)
                  {
                    coap_log_impl(4, "Could not get next control message header for AQM.\n");
                  }

                  v104 = 16;
                  goto LABEL_223;
                }

                if (v87 <= 31)
                {
                  if (v87 == 8)
                  {
                    v105 = 100;
                    goto LABEL_220;
                  }
                }

                else if (v87 <= 45)
                {
                  if (v87 == 40)
                  {
                    v105 = 700;
                    goto LABEL_220;
                  }
                }

                else
                {
                  switch(v87)
                  {
                    case '.':
                      goto LABEL_209;
                    case '8':
                      v105 = 900;
                      goto LABEL_220;
                    case '0':
LABEL_209:
                      v105 = 800;
LABEL_220:
                      *v103 = 0xFFFF00000010;
                      *(v103 + 2) = 4230;
                      *(v103 + 3) = v105;
                      if (*(p_inst_meths + 756) >= 7)
                      {
                        coap_log_impl(7, "Also setting SO_TRAFFIC_CLASS to %d (mapped from DSCP %d)\n", v105, v87);
                      }

                      v104 = 32;
LABEL_223:
                      v365.msg_controllen = v104;
LABEL_224:
                      coap_show_pdu(v88);
                      v106 = sendmsg(*v99, &v365, 0);
                      if (*(p_inst_meths + 756) > 6)
                      {
                        coap_log_impl(7, "Chosen sock->fd = %d, flags = %d\n", *v99, *(v99 + 2));
                        if (*(p_inst_meths + 756) >= 7)
                        {
                          coap_log_impl(7, "%s --- msghdr Info ---\n", "TX: ");
                        }
                      }

                      if (v365.msg_name && v365.msg_namelen)
                      {
                        v107 = *(v365.msg_name + 1);
                        if (v107 == 30)
                        {
                          inet_ntop(30, v365.msg_name + 8, __errnum, 0x36u);
                          if (*(p_inst_meths + 756) >= 7)
                          {
                            coap_log_impl(7, "%s msg_name: AF_INET6 %s:%d (len %d)\n");
                          }
                        }

                        else if (v107 == 2)
                        {
                          inet_ntop(2, v365.msg_name + 4, __errnum, 0x36u);
                          if (*(p_inst_meths + 756) >= 7)
                          {
                            coap_log_impl(7, "%s msg_name: AF_INET %s:%d (len %d)\n");
                          }
                        }

                        else if (*(p_inst_meths + 756) >= 7)
                        {
                          coap_log_impl(7, "%s msg_name: Unknown Family %d (len %d)\n");
                        }

LABEL_235:
                        v108 = *(p_inst_meths + 756);
                        if (v108 >= 7)
                        {
                          coap_log_impl(7, "%s msg_iovlen: %d\n", "TX: ", v365.msg_iovlen);
                          LOWORD(v108) = *(p_inst_meths + 756);
                        }
                      }

                      else
                      {
                        v108 = *(p_inst_meths + 756);
                        if (v108 >= 7)
                        {
                          coap_log_impl(7, "%s msg_name: NULL (len %d)\n");
                          goto LABEL_235;
                        }
                      }

                      msg_iovlen = v365.msg_iovlen;
                      if (v365.msg_iovlen >= 1)
                      {
                        v110 = 0;
                        v111 = 0;
                        do
                        {
                          if (v108 >= 7)
                          {
                            coap_log_impl(7, "%s   iov[%d]: base=%p, len=%zu\n", "TX: ", v111, v365.msg_iov[v110].iov_base, v365.msg_iov[v110].iov_len);
                            LOWORD(v108) = *(p_inst_meths + 756);
                            msg_iovlen = v365.msg_iovlen;
                          }

                          ++v111;
                          ++v110;
                        }

                        while (v111 < msg_iovlen);
                      }

                      if (v108 > 6)
                      {
                        coap_log_impl(7, "%s msg_controllen: %u\n", "TX: ", v365.msg_controllen);
                      }

                      msg_control = v365.msg_control;
                      if (v365.msg_control && v365.msg_controllen)
                      {
                        if (v365.msg_controllen >= 0xC)
                        {
                          do
                          {
                            if (*(p_inst_meths + 756) >= 7)
                            {
                              coap_log_impl(7, "%s   cmsg: level=%d, type=%d, len=%u\n", "TX: ", msg_control[1], msg_control[2], *msg_control);
                            }

                            v113 = msg_control[1];
                            switch(v113)
                            {
                              case 0xFFFFu:
                                if (msg_control[2] == 4230 && *(p_inst_meths + 756) >= 7)
                                {
                                  coap_log_impl(7, "%s     SO_TRAFFIC_CLASS: %d\n");
                                }

                                break;
                              case 0x29u:
                                v115 = msg_control[2];
                                if (v115 == 36)
                                {
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v337 = (msg_control[3] >> 2);
                                    coap_log_impl(7, "%s     IPV6_TCLASS: 0x%02x (DSCP 0x%02x)\n");
                                  }
                                }

                                else if (v115 == 46)
                                {
                                  inet_ntop(30, msg_control + 3, __errnum, 0x2Eu);
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v337 = __errnum;
                                    coap_log_impl(7, "%s     IPV6_PKTINFO: ifindex=%d, addr=%s\n");
                                  }
                                }

                                break;
                              case 0u:
                                v114 = msg_control[2];
                                if (v114 == 3)
                                {
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v337 = (msg_control[3] >> 2);
                                    coap_log_impl(7, "%s     IP_TOS: 0x%02x (DSCP 0x%02x)\n");
                                  }
                                }

                                else if (v114 == 26)
                                {
                                  inet_ntop(2, msg_control + 5, __errnum, 0x10u);
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v371[0] = 0;
                                    v371[1] = 0;
                                    v337 = inet_ntop(2, msg_control + 4, v371, 0x10u);
                                    coap_log_impl(7, "%s     IP_PKTINFO: ifindex=%d, ipi_spec_dst=%s, ipi_addr=%s\n");
                                  }
                                }

                                break;
                            }

                            msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
                          }

                          while ((msg_control + 3) <= v365.msg_control + v365.msg_controllen);
                        }

LABEL_273:
                        v117 = *(p_inst_meths + 756);
                        if (v117 > 6)
                        {
                          coap_log_impl(7, "%s msg_flags: 0x%x [", "TX: ", v365.msg_flags);
                          v117 = *(p_inst_meths + 756);
                          msg_flags = v365.msg_flags;
                          if ((v365.msg_flags & 0x20) != 0 && v117 >= 7)
                          {
                            coap_log_impl(7, "MSG_CTRUNC ");
                            msg_flags = v365.msg_flags;
                            LOWORD(v117) = *(p_inst_meths + 756);
                          }

                          if ((msg_flags & 0x10) == 0)
                          {
LABEL_282:
                            if (v117 >= 7)
                            {
                              coap_log_impl(7, "]\n");
                              if (*(p_inst_meths + 756) >= 7)
                              {
                                coap_log_impl(7, "%s --- End msghdr Info ---\n", "TX: ");
                              }
                            }

                            goto LABEL_285;
                          }

LABEL_280:
                          if (v117 >= 7)
                          {
                            coap_log_impl(7, "MSG_TRUNC ");
                            LOWORD(v117) = *(p_inst_meths + 756);
                            goto LABEL_282;
                          }

LABEL_285:
                          if (v106 < 0 && *(p_inst_meths + 756) >= 3)
                          {
                            v119 = __error();
                            v120 = strerror(*v119);
                            v121 = __error();
                            coap_log_impl(3, "coap_send_pdu_dscp failed: %s (%d)\n", v120, *v121);
                          }

                          v61 = v348;
                          v33 = v342;
                          goto LABEL_165;
                        }
                      }

                      else
                      {
                        v117 = *(p_inst_meths + 756);
                        if (v117 >= 7)
                        {
                          coap_log_impl(7, "%s   No control messages.\n", "TX: ");
                          goto LABEL_273;
                        }
                      }

                      if ((v365.msg_flags & 0x10) == 0)
                      {
                        goto LABEL_282;
                      }

                      goto LABEL_280;
                  }
                }

                v105 = 0;
                goto LABEL_220;
              }
            }

            else
            {
              v368 = 0x2400000029;
              v102 = "Setting IPV6_TCLASS to 0x%x (DSCP %d)\n";
              if (*(p_inst_meths + 756) < 7)
              {
                goto LABEL_200;
              }
            }

            coap_log_impl(7, v102, (4 * v87), v87);
            goto LABEL_200;
          }
        }

        coap_session_delay_pdu(v86, v88, v341);
LABEL_165:
        v62 = (v348 + 48);
        v38 = v346;
        v63 = *v344;
      }

      while (*v344);
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v123 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
    {
      __errnum[0] = 67109376;
      __errnum[1] = (1000 * v38 + 999) / 0x3E8uLL;
      LOWORD(__errnum[2]) = 1024;
      *(&__errnum[2] + 2) = 0;
      _os_log_debug_impl(&dword_22AADC000, v123, OS_LOG_TYPE_DEBUG, "Coap_write timeout %u, requested time %u", __errnum, 0xEu);
    }

    v347 = (1000 * v38 + 999) / 0x3E8uLL;
    memset(&v364, 0, sizeof(v364));
    memset(&v363, 0, sizeof(v363));
    memset(&v362, 0, sizeof(v362));
    v124 = 0;
    if (v37)
    {
      v125 = v366;
      v126 = v37;
      do
      {
        v127 = *v125;
        v128 = **v125;
        if (v128 >= v124)
        {
          v124 = v128 + 1;
        }

        if ((v127[1] & 0x10) != 0 && __darwin_check_fd_set_overflow(**v125, &v364, 0))
        {
          *(v364.fds_bits + ((v128 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v128;
        }

        if ((v127[1] & 0x20) != 0)
        {
          v129 = *v127;
          if (__darwin_check_fd_set_overflow(*v127, &v363, 0))
          {
            *(v363.fds_bits + ((v129 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v129;
          }
        }

        if ((v127[1] & 0x40) != 0)
        {
          v130 = *v127;
          if (__darwin_check_fd_set_overflow(*v127, &v364, 0))
          {
            *(v364.fds_bits + ((v130 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v130;
          }
        }

        if ((v127[1] & 0x80) != 0)
        {
          v131 = *v127;
          if (__darwin_check_fd_set_overflow(*v127, &v363, 0))
          {
            *(v363.fds_bits + ((v131 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v131;
          }

          v132 = *v127;
          if (__darwin_check_fd_set_overflow(*v127, &v362, 0))
          {
            *(v362.fds_bits + ((v132 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v132;
          }
        }

        ++v125;
        --v126;
      }

      while (v126);
    }

    if (v347)
    {
      LODWORD(v361) = 1000 * (v347 % 0x3E8);
      v360 = v347 / 0x3E8uLL;
    }

    if ((v338 & 0x80000000) == 0)
    {
      if (__darwin_check_fd_set_overflow(v338, &v364, 0))
      {
        v364.fds_bits[v338 >> 5] |= 1 << v338;
      }

      if (v124 <= v338)
      {
        v124 = v338 + 1;
      }
    }

    if (v347)
    {
      v133 = &v360;
    }

    else
    {
      v133 = 0;
    }

    while (1)
    {
      v134 = select(v124, &v364, &v363, &v362, v133);
      if (v134 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
LABEL_331:
        if (coap_get_log_level() >= 3)
        {
          v135 = __error();
          strerror(*v135);
          coap_log_impl(3, "%s");
        }

        goto LABEL_573;
      }
    }

    if (v134 >= 1 && v37)
    {
      v136 = v366;
      while (1)
      {
        v137 = *v136;
        v138 = *(*v136 + 4);
        if ((v138 & 0x10) == 0)
        {
          goto LABEL_340;
        }

        v139 = *v137;
        if (__darwin_check_fd_set_overflow(*v137, &v364, 0))
        {
          break;
        }

        v138 = *(v137 + 4);
        if ((v138 & 0x40) == 0)
        {
          goto LABEL_341;
        }

LABEL_349:
        v142 = *v137;
        if (__darwin_check_fd_set_overflow(*v137, &v364, 0))
        {
          v138 = *(v137 + 4);
          if (((*(v364.fds_bits + ((v142 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v142) & 1) == 0)
          {
LABEL_341:
            if ((v138 & 0x20) == 0)
            {
              goto LABEL_342;
            }

            goto LABEL_354;
          }

          v138 |= 0x400u;
          *(v137 + 4) = v138;
          if ((v138 & 0x20) == 0)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v138 = *(v137 + 4);
          if ((v138 & 0x20) == 0)
          {
            goto LABEL_342;
          }
        }

LABEL_354:
        v143 = *v137;
        if (__darwin_check_fd_set_overflow(*v137, &v363, 0))
        {
          v138 = *(v137 + 4);
          if (((*(v363.fds_bits + ((v143 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v143) & 1) == 0)
          {
LABEL_342:
            if ((v138 & 0x80) != 0)
            {
              goto LABEL_343;
            }

            goto LABEL_359;
          }

          v144 = v138 | 0x200;
          *(v137 + 4) = v144;
          if ((v144 & 0x80) != 0)
          {
            goto LABEL_343;
          }
        }

        else if ((*(v137 + 4) & 0x80) != 0)
        {
LABEL_343:
          v140 = *v137;
          if (__darwin_check_fd_set_overflow(*v137, &v363, 0) && ((*(v363.fds_bits + ((v140 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v140) & 1) != 0 || (v141 = *v137, __darwin_check_fd_set_overflow(*v137, &v362, 0)) && ((*(v362.fds_bits + ((v141 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v141) & 1) != 0)
          {
            *(v137 + 4) |= 0x800u;
          }
        }

LABEL_359:
        v136 = (v136 + 8);
        if (!--v37)
        {
          goto LABEL_360;
        }
      }

      v138 = *(v137 + 4);
      if ((*(v364.fds_bits + ((v139 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v139))
      {
        v138 |= 0x100u;
        *(v137 + 4) = v138;
      }

LABEL_340:
      if ((v138 & 0x40) == 0)
      {
        goto LABEL_341;
      }

      goto LABEL_349;
    }

LABEL_360:
    v145 = v348;
    if (v338 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v338, &v364, 0) && ((v364.fds_bits[v338 >> 5] >> v338))
    {
      do
      {
        while (1)
        {
          v146 = read(v338, __errnum, 0x20uLL);
          if (v146 != -1)
          {
            break;
          }

          if (*__error() == 35 || *__error() == 35)
          {
            goto LABEL_370;
          }

          if (*__error() != 4)
          {
            goto LABEL_331;
          }
        }
      }

      while (v146);
      log_level = coap_get_log_level();
      if (log_level >= 3)
      {
        coap_log_impl(3, "Pipe closed unexpectedly");
      }

LABEL_573:
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v332 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__errnum[0]) = 0;
        _os_log_error_impl(&dword_22AADC000, v332, OS_LOG_TYPE_ERROR, "Failed to run coap_run_once", __errnum, 2u);
      }

      v43 = 0;
      goto LABEL_579;
    }

LABEL_370:
    memset(__errnum, 0, sizeof(__errnum));
    gettimeofday(__errnum, 0);
    v147 = 1000 * (*__errnum - coap_clock_offset) + ((__errnum[2] * 1.024 + 512.0) >> 10);
    v148 = *(v348 + 56);
    if (v148)
    {
      v149 = 0uLL;
      while (1)
      {
        v150 = v148;
        v148 = *v148;
        v151 = *(v150 + 28);
        if ((v151 & 0x100) != 0)
        {
          break;
        }

LABEL_481:
        if ((v151 & 0x400) != 0)
        {
          session = coap_make_session(*(v150 + 16), 2, (v150 + 48), 0, 0, 0, v145, v150);
          v149 = 0uLL;
          if (session)
          {
            v251 = session;
            v252 = session + 104;
            __errnum[0] = 1;
            *(v150 + 28) &= ~0x400u;
            v253 = accept(*(v150 + 24), (session + 108), session + 26);
            *(v251 + 44) = v253;
            if (v253 == -1)
            {
              if (maxlog >= 4)
              {
                v284 = __error();
                v285 = strerror(*v284);
                coap_log_impl(4, "coap_socket_accept_tcp: accept: %s\n", v285);
              }

              coap_session_free(v251);
              v145 = v348;
            }

            else
            {
              if (getsockname(v253, (v251 + 140), v251 + 34) < 0 && maxlog >= 4)
              {
                v254 = __error();
                v255 = strerror(*v254);
                coap_log_impl(4, "coap_socket_accept_tcp: getsockname: %s\n", v255);
              }

              if (ioctl(*(v251 + 44), 0x8004667EuLL, __errnum) == -1 && maxlog >= 4)
              {
                v257 = __error();
                v258 = strerror(*v257);
                coap_log_impl(4, "coap_socket_accept_tcp: ioctl FIONBIO: %s\n", v258);
              }

              v259 = 64;
              *(v251 + 90) |= 0x15u;
              *(v251 + 23) = v251;
              v260 = 104;
              v261 = -1640531527;
              v262 = -1640531527;
              v263 = -17973521;
              do
              {
                v264 = *&v251[v260 + 4] + v261;
                v265 = *&v251[v260 + 8] + v263;
                v266 = (*&v251[v260] + v262 - (v264 + v265)) ^ (v265 >> 13);
                v267 = (v264 - v265 - v266) ^ (v266 << 8);
                v268 = (v265 - v266 - v267) ^ (v267 >> 13);
                v269 = (v266 - v267 - v268) ^ (v268 >> 12);
                v270 = (v267 - v268 - v269) ^ (v269 << 16);
                v271 = (v268 - v269 - v270) ^ (v270 >> 5);
                v262 = (v269 - v270 - v271) ^ (v271 >> 3);
                v261 = (v270 - v271 - v262) ^ (v262 << 10);
                v263 = (v271 - v262 - v261) ^ (v261 >> 15);
                v259 -= 12;
                v260 += 12;
              }

              while (v259 > 0xB);
              v272 = (v262 + (v251[167] << 24) + (v251[166] << 16) + (v251[165] << 8) + v251[164] + -64 - v263 - v261) ^ ((v263 + 64) >> 13);
              v273 = (v261 + -64 - v263 - v272) ^ (v272 << 8);
              v274 = (v263 + 64 - v272 - v273) ^ (v273 >> 13);
              v275 = (v272 - v273 - v274) ^ (v274 >> 12);
              v276 = (v273 - v274 - v275) ^ (v275 << 16);
              v277 = (v274 - v275 - v276) ^ (v276 >> 5);
              v278 = (v275 - v276 - v277) ^ (v277 >> 3);
              v279 = (v277 - v278 - ((v276 - v277 - v278) ^ (v278 << 10))) ^ (((v276 - v277 - v278) ^ (v278 << 10)) >> 15);
              v280 = (v251 + 48);
              *(v251 + 11) = v252;
              *(v251 + 24) = 64;
              *(v251 + 25) = v279;
              v281 = *(v150 + 80);
              v149 = 0uLL;
              if (v281)
              {
                v282 = *(v281 + 48);
                *(v251 + 6) = v282;
                *(v251 + 8) = 0;
                v283 = *(v282 + 24);
                *(v251 + 7) = v283 - *(v282 + 32);
                *(v283 + 16) = v251;
                *(v282 + 24) = v280;
                v145 = v348;
              }

              else
              {
                *(v251 + 7) = 0;
                *(v251 + 8) = 0;
                *(v150 + 80) = v251;
                v286 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
                *(*(v150 + 80) + 48) = v286;
                v145 = v348;
                if (!v286)
                {
                  goto LABEL_587;
                }

                v286[2] = 0u;
                v286[3] = 0u;
                *v286 = 0u;
                v286[1] = 0u;
                v287 = *(v150 + 80);
                v288 = *(v287 + 48);
                v288[1] = 0x500000020;
                v288[3] = v287 + 48;
                v288[4] = 48;
                v289 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
                **(*(v150 + 80) + 48) = v289;
                if (!v289)
                {
                  goto LABEL_587;
                }

                v149 = 0uLL;
                v289[30] = 0u;
                v289[31] = 0u;
                v289[28] = 0u;
                v289[29] = 0u;
                v289[26] = 0u;
                v289[27] = 0u;
                v289[24] = 0u;
                v289[25] = 0u;
                v289[22] = 0u;
                v289[23] = 0u;
                v289[20] = 0u;
                v289[21] = 0u;
                v289[18] = 0u;
                v289[19] = 0u;
                v289[16] = 0u;
                v289[17] = 0u;
                v289[14] = 0u;
                v289[15] = 0u;
                v289[12] = 0u;
                v289[13] = 0u;
                v289[10] = 0u;
                v289[11] = 0u;
                v289[8] = 0u;
                v289[9] = 0u;
                v289[6] = 0u;
                v289[7] = 0u;
                v289[4] = 0u;
                v289[5] = 0u;
                v289[2] = 0u;
                v289[3] = 0u;
                *v289 = 0u;
                v289[1] = 0u;
                v282 = *(*(v150 + 80) + 48);
                *(v282 + 56) = -1609490463;
              }

              ++*(v282 + 16);
              v290 = *v282 + 16 * ((*(v282 + 8) - 1) & v279);
              v291 = *(v290 + 8) + 1;
              *(v290 + 8) = v291;
              v292 = *v290;
              *(v251 + 9) = 0;
              *(v251 + 10) = v292;
              if (v292)
              {
                *(v292 + 24) = v280;
              }

              *v290 = v280;
              if (v291 >= 10 * *(v290 + 12) + 10 && !(*v280)[6].i32[1])
              {
                v293 = malloc_type_malloc(32 * (*v280)[1].u32[0], 0x1020040EDED9539uLL);
                if (!v293)
                {
                  goto LABEL_587;
                }

                v294 = v293;
                bzero(v293, 32 * (*v280)[1].u32[0]);
                v295 = *v280;
                v296 = (*v280)[2].u32[0];
                v297 = (*v280)[1].u32[0];
                v298 = 2 * v297 - 1;
                if ((v298 & v296) != 0)
                {
                  v299 = (v296 >> ((*v280)[1].i32[1] + 1)) + 1;
                }

                else
                {
                  v299 = v296 >> ((*v280)[1].i32[1] + 1);
                }

                v295[5].i32[0] = v299;
                v295[5].i32[1] = 0;
                v300 = *v295;
                if (v297)
                {
                  v301 = 0;
                  for (i = 0; i != v297; ++i)
                  {
                    v303 = v300[2 * i];
                    if (v303)
                    {
                      do
                      {
                        v304 = *(v303 + 32);
                        v305 = &v294[16 * (*(v303 + 52) & v298)];
                        v306 = *(v305 + 2) + 1;
                        *(v305 + 2) = v306;
                        if (v306 > v299)
                        {
                          v295[5].i32[1] = ++v301;
                          *(v305 + 3) = v306 / v299;
                        }

                        *(v303 + 24) = 0;
                        v307 = *v305;
                        *(v303 + 32) = *v305;
                        if (v307)
                        {
                          *(v307 + 24) = v303;
                        }

                        *v305 = v303;
                        v303 = v304;
                      }

                      while (v304);
                    }
                  }
                }

                free(v300);
                v308 = *v280;
                v309 = (*v280)[1];
                v310.i32[0] = vadd_s32(v309, v309).u32[0];
                v310.i32[1] = vadd_s32(v309, 0x100000001).i32[1];
                v308[1] = v310;
                *v308 = v294;
                if (v308[5].i32[1] <= v308[2].i32[0] >> 1)
                {
                  v308[6].i32[0] = 0;
                  v149 = 0uLL;
                }

                else
                {
                  v311 = v308[6].i32[0] + 1;
                  v308[6].i32[0] = v311;
                  v149 = 0uLL;
                  if (v311 >= 2)
                  {
                    v308[6].i32[1] = 1;
                  }
                }
              }

              if (maxlog >= 7)
              {
                coap_session_str(v251);
                coap_log_impl(7, "***%s: new incoming session\n", &coap_session_str_szSession);
                v149 = 0uLL;
              }

              v312 = *v251;
              if ((v312 - 3) <= 1)
              {
                coap_handle_event(*(v251 + 26), 4097, v251);
                v149 = 0uLL;
                v312 = *v251;
              }

              if (v312 != 4)
              {
                if (v312 == 3)
                {
                  coap_session_send_csm(v251);
                  v149 = 0uLL;
                }

                *(v251 + 34) = v147;
                goto LABEL_533;
              }

              *(v251 + 27) = 0;
              ++*(v251 + 1);
              coap_session_release(v251);
            }

            v149 = 0uLL;
          }
        }

LABEL_533:
        v313 = *(v150 + 80);
        if (v313)
        {
          do
          {
            v314 = *(v313 + 64);
            v315 = *(v313 + 180);
            if ((v315 & 0x100) != 0)
            {
              ++*(v313 + 4);
              coap_read_session(v145, v313, v147);
              coap_session_release(v313);
              v149 = 0uLL;
              v315 = *(v313 + 180);
            }

            if ((v315 & 0x200) != 0)
            {
              ++*(v313 + 4);
              coap_write_session(v313, v147);
              coap_session_release(v313);
              v149 = 0uLL;
            }

            v313 = v314;
          }

          while (v314);
        }

        if (!v148)
        {
          goto LABEL_540;
        }
      }

      if (*(v150 + 16) - 3 <= 0xFFFFFFFD)
      {
        __assert_rtn("coap_read_endpoint", "net.c", 1632, "COAP_PROTO_NOT_RELIABLE(endpoint->proto)");
      }

      if ((v151 & 2) == 0)
      {
        __assert_rtn("coap_read_endpoint", "net.c", 1633, "endpoint->sock.flags & COAP_SOCKET_BOUND");
      }

      v402 = v149;
      v401 = v149;
      v400 = v149;
      v399 = v149;
      v398 = v149;
      v397 = v149;
      v396 = v149;
      v395 = v149;
      v394 = v149;
      v393 = v149;
      v392 = v149;
      v391 = v149;
      v390 = v149;
      v389 = v149;
      v388 = v149;
      v387 = v149;
      v386 = v149;
      v385 = v149;
      v384 = v149;
      v383 = v149;
      v382 = v149;
      v381 = v149;
      v380 = v149;
      v379 = v149;
      v378 = v149;
      v377 = v149;
      v376 = v149;
      v375 = v149;
      *v374 = v149;
      *&v374[16] = v149;
      v152 = *(v150 + 48);
      v373 = v149;
      *__errnum = v149;
      __errnum[0] = 28;
      *v374 = v152;
      v153 = *(v150 + 53);
      if (v153 == 2)
      {
        *&v374[4] = *(v150 + 52);
      }

      else if (v153 == 30)
      {
        v374[5] = 30;
        *&v374[12] = *(v150 + 60);
        *&v374[6] = *(v150 + 54);
        *&v374[28] = *(v150 + 76);
      }

      else
      {
        __memcpy_chk();
      }

      v154 = (*(v145 + 120))(v150 + 24, __errnum);
      if ((v154 & 0x8000000000000000) == 0)
      {
        v155 = v154;
        v149 = 0uLL;
        if (!v154)
        {
          goto LABEL_480;
        }

        v156 = 64;
        v157 = __errnum;
        v158 = -1640531527;
        v159 = -1640531527;
        v160 = -17973521;
        do
        {
          v161 = v157[1] + v158;
          v162 = v157[2] + v160;
          v163 = (*v157 + v159 - (v161 + v162)) ^ (v162 >> 13);
          v164 = (v161 - v162 - v163) ^ (v163 << 8);
          v165 = (v162 - v163 - v164) ^ (v164 >> 13);
          v166 = (v163 - v164 - v165) ^ (v165 >> 12);
          v167 = (v164 - v165 - v166) ^ (v166 << 16);
          v168 = (v165 - v166 - v167) ^ (v167 >> 5);
          v159 = (v166 - v167 - v168) ^ (v168 >> 3);
          v158 = (v167 - v168 - v159) ^ (v159 << 10);
          v160 = (v168 - v159 - v158) ^ (v158 >> 15);
          v157 += 3;
          v156 -= 12;
        }

        while (v156 > 0xB);
        v169 = *(v150 + 80);
        if (!v169)
        {
          v192 = *(v150 + 8);
          goto LABEL_422;
        }

        v170 = (v159 + (v374[31] << 24) + (v374[30] << 16) + (v374[29] << 8) + v374[28] + -64 - v160 - v158) ^ ((v160 + 64) >> 13);
        v171 = (v158 + -64 - v160 - v170) ^ (v170 << 8);
        v172 = (v160 + 64 - v170 - v171) ^ (v171 >> 13);
        v173 = (v170 - v171 - v172) ^ (v172 >> 12);
        v174 = (v171 - v172 - v173) ^ (v173 << 16);
        v175 = (v172 - v173 - v174) ^ (v174 >> 5);
        v176 = (v173 - v174 - v175) ^ (v175 >> 3);
        v177 = (v175 - v176 - ((v174 - v175 - v176) ^ (v176 << 10))) ^ (((v174 - v175 - v176) ^ (v176 << 10)) >> 15);
        v178 = *(v169 + 48);
        v179 = *(*v178 + 16 * ((*(v178 + 8) - 1) & v177));
        if (v179)
        {
          v180 = -*(v178 + 32);
          while (1)
          {
            v181 = v179 + v180;
            if (*(v179 + v180 + 100) == v177 && *(v181 + 96) == 64)
            {
              v182 = memcmp(*(v181 + 88), __errnum, 0x40uLL);
              v149 = 0uLL;
              if (!v182)
              {
                break;
              }
            }

            v179 = *(v181 + 80);
            if (!v179)
            {
              goto LABEL_391;
            }
          }

          *(v181 + 272) = v147;
          goto LABEL_476;
        }

LABEL_391:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        do
        {
          if (!*(v169 + 4) && !*(v169 + 232))
          {
            v187 = *(v169 + 1);
            if (v187 == 3)
            {
              goto LABEL_402;
            }

            if (v187 == 2)
            {
              if (!v184 || *(v169 + 272) < *(v184 + 272))
              {
                v184 = v169;
              }

              ++v186;
              if (*(v169 + 2) == 2)
              {
LABEL_402:
                ++v185;
                v188 = *(v169 + 272);
                if (v188 + 30000 < v147 && (!v183 || v188 < *(v183 + 272)))
                {
                  v183 = v169;
                }
              }
            }
          }

          v169 = *(v169 + 64);
        }

        while (v169);
        if (*(*(v150 + 8) + 196) - 1 >= v186)
        {
          if (!v183)
          {
            goto LABEL_416;
          }

          if (maxlog >= 4)
          {
            coap_session_str(v183);
            coap_log_impl(4, "***%s: Incomplete session timed out\n", &coap_session_str_szSession);
          }

          v184 = v183;
        }

        coap_session_free(v184);
        v149 = 0uLL;
LABEL_416:
        v192 = *(v150 + 8);
        v193 = *(v192 + 200);
        if (!v193)
        {
          v193 = 100;
        }

        if (v185 > v193)
        {
          if (maxlog >= 7)
          {
            coap_log_impl(7, "Oustanding sessions in COAP_SESSION_STATE_HANDSHAKE too large.  New request ignored\n", 0.0, v335, v336, v337);
LABEL_479:
            v149 = 0uLL;
            goto LABEL_480;
          }

          goto LABEL_480;
        }

LABEL_422:
        v194 = *(v150 + 16);
        if (v194 == 2)
        {
          if (*(&v375 + 1) <= 0xDuLL)
          {
            if (maxlog >= 7)
            {
              coap_log_impl(7, "coap_dtls_hello: ContentType %d Short Packet (%zu < %d) dropped\n", 0.0);
              goto LABEL_479;
            }

LABEL_480:
            v151 = *(v150 + 28);
            v145 = v348;
            goto LABEL_481;
          }

          if (v376 == 21)
          {
            goto LABEL_480;
          }

          if (v376 != 22 || BYTE13(v376) != 1)
          {
            if (maxlog >= 7)
            {
              coap_log_impl(7, "coap_dtls_hello: ContentType %d Handshake %d dropped\n", 0.0);
              goto LABEL_479;
            }

            goto LABEL_480;
          }

          v194 = 2;
        }

        v197 = coap_make_session(v194, 2, 0, v374, __errnum, v375, v192, v150);
        v149 = 0uLL;
        if (v197)
        {
          v181 = v197;
          *(v197 + 34) = v147;
          v198 = *(v150 + 16);
          if (v198 == 2)
          {
            v197[1] = 3;
          }

          else if (v198 == 1)
          {
            v197[2] = 4;
          }

          v199 = 64;
          v200 = 104;
          v201 = -1640531527;
          v202 = -1640531527;
          v203 = -17973521;
          do
          {
            v204 = *&v197[v200 + 4] + v201;
            v205 = *&v197[v200 + 8] + v203;
            v206 = (*&v197[v200] + v202 - (v204 + v205)) ^ (v205 >> 13);
            v207 = (v204 - v205 - v206) ^ (v206 << 8);
            v208 = (v205 - v206 - v207) ^ (v207 >> 13);
            v209 = (v206 - v207 - v208) ^ (v208 >> 12);
            v210 = (v207 - v208 - v209) ^ (v209 << 16);
            v211 = (v208 - v209 - v210) ^ (v210 >> 5);
            v202 = (v209 - v210 - v211) ^ (v211 >> 3);
            v201 = (v210 - v211 - v202) ^ (v202 << 10);
            v203 = (v211 - v202 - v201) ^ (v201 >> 15);
            v199 -= 12;
            v200 += 12;
          }

          while (v199 > 0xB);
          v212 = (v202 + (v197[167] << 24) + (v197[166] << 16) + (v197[165] << 8) + v197[164] + -64 - v203 - v201) ^ ((v203 + 64) >> 13);
          v213 = (v201 + -64 - v203 - v212) ^ (v212 << 8);
          v214 = (v203 + 64 - v212 - v213) ^ (v213 >> 13);
          v215 = (v212 - v213 - v214) ^ (v214 >> 12);
          v216 = (v213 - v214 - v215) ^ (v215 << 16);
          v217 = (v214 - v215 - v216) ^ (v216 >> 5);
          v218 = (v215 - v216 - v217) ^ (v217 >> 3);
          v219 = (v217 - v218 - ((v216 - v217 - v218) ^ (v218 << 10))) ^ (((v216 - v217 - v218) ^ (v218 << 10)) >> 15);
          v220 = (v197 + 48);
          *(v197 + 11) = v197 + 104;
          *(v197 + 24) = 64;
          *(v197 + 25) = v219;
          v221 = *(v150 + 80);
          if (v221)
          {
            v222 = *(v221 + 48);
            *(v197 + 6) = v222;
            *(v197 + 8) = 0;
            v223 = *(v222 + 24);
            *(v197 + 7) = v223 - *(v222 + 32);
            *(v223 + 16) = v197;
            *(v222 + 24) = v220;
          }

          else
          {
            *(v197 + 7) = 0;
            *(v197 + 8) = 0;
            *(v150 + 80) = v197;
            v224 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
            *(*(v150 + 80) + 48) = v224;
            if (!v224 || (v224[2] = 0u, v224[3] = 0u, *v224 = 0u, v224[1] = 0u, v225 = *(v150 + 80), v226 = *(v225 + 48), v226[1] = 0x500000020, v226[3] = v225 + 48, v226[4] = 48, v227 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL), (**(*(v150 + 80) + 48) = v227) == 0))
            {
LABEL_587:
              exit(-1);
            }

            v227[30] = 0u;
            v227[31] = 0u;
            v227[28] = 0u;
            v227[29] = 0u;
            v227[26] = 0u;
            v227[27] = 0u;
            v227[24] = 0u;
            v227[25] = 0u;
            v227[22] = 0u;
            v227[23] = 0u;
            v227[20] = 0u;
            v227[21] = 0u;
            v227[18] = 0u;
            v227[19] = 0u;
            v227[16] = 0u;
            v227[17] = 0u;
            v227[14] = 0u;
            v227[15] = 0u;
            v227[12] = 0u;
            v227[13] = 0u;
            v227[10] = 0u;
            v227[11] = 0u;
            v227[8] = 0u;
            v227[9] = 0u;
            v227[6] = 0u;
            v227[7] = 0u;
            v227[4] = 0u;
            v227[5] = 0u;
            v227[2] = 0u;
            v227[3] = 0u;
            *v227 = 0u;
            v227[1] = 0u;
            v222 = *(*(v150 + 80) + 48);
            *(v222 + 56) = -1609490463;
          }

          ++*(v222 + 16);
          v228 = *v222 + 16 * ((*(v222 + 8) - 1) & v219);
          v229 = *(v228 + 8) + 1;
          *(v228 + 8) = v229;
          v230 = *v228;
          *(v181 + 72) = 0;
          *(v181 + 80) = v230;
          if (v230)
          {
            *(v230 + 24) = v220;
          }

          *v228 = v220;
          if (v229 >= 10 * *(v228 + 12) + 10 && !(*v220)[6].i32[1])
          {
            v231 = malloc_type_malloc(32 * (*v220)[1].u32[0], 0x1020040EDED9539uLL);
            if (!v231)
            {
              goto LABEL_587;
            }

            v232 = v231;
            bzero(v231, 32 * (*v220)[1].u32[0]);
            v233 = *v220;
            v234 = (*v220)[2].u32[0];
            v235 = (*v220)[1].u32[0];
            v236 = 2 * v235 - 1;
            if ((v236 & v234) != 0)
            {
              v237 = (v234 >> ((*v220)[1].i32[1] + 1)) + 1;
            }

            else
            {
              v237 = v234 >> ((*v220)[1].i32[1] + 1);
            }

            v233[5].i32[0] = v237;
            v233[5].i32[1] = 0;
            v238 = *v233;
            if (v235)
            {
              v239 = 0;
              for (j = 0; j != v235; ++j)
              {
                v241 = v238[2 * j];
                if (v241)
                {
                  do
                  {
                    v242 = *(v241 + 32);
                    v243 = &v232[16 * (*(v241 + 52) & v236)];
                    v244 = *(v243 + 2) + 1;
                    *(v243 + 2) = v244;
                    if (v244 > v237)
                    {
                      v233[5].i32[1] = ++v239;
                      *(v243 + 3) = v244 / v237;
                    }

                    *(v241 + 24) = 0;
                    v245 = *v243;
                    *(v241 + 32) = *v243;
                    if (v245)
                    {
                      *(v245 + 24) = v241;
                    }

                    *v243 = v241;
                    v241 = v242;
                  }

                  while (v242);
                }
              }
            }

            free(v238);
            v246 = *v220;
            v247 = (*v220)[1];
            v248.i32[0] = vadd_s32(v247, v247).u32[0];
            v248.i32[1] = vadd_s32(v247, 0x100000001).i32[1];
            v246[1] = v248;
            *v246 = v232;
            if (v246[5].i32[1] <= v246[2].i32[0] >> 1)
            {
              v246[6].i32[0] = 0;
            }

            else
            {
              v249 = v246[6].i32[0] + 1;
              v246[6].i32[0] = v249;
              if (v249 >= 2)
              {
                v246[6].i32[1] = 1;
              }
            }
          }

          if (maxlog < 7)
          {
            goto LABEL_478;
          }

          coap_session_str(v181);
          coap_log_impl(7, "***%s: new incoming session\n", &coap_session_str_szSession);
LABEL_476:
          if (maxlog >= 7)
          {
            coap_session_str(v181);
            coap_log_impl(7, "*  %s: received %zd bytes\n", &coap_session_str_szSession, v155);
          }

LABEL_478:
          coap_handle_dgram_for_proto(v348, v181, __errnum);
          goto LABEL_479;
        }

        goto LABEL_480;
      }

      v149 = 0uLL;
      if (maxlog < 4)
      {
        goto LABEL_480;
      }

      if (coap_print_addr(v150 + 48, &coap_endpoint_str_szEndpoint, 0x80uLL))
      {
        v190 = strlen(&coap_endpoint_str_szEndpoint);
        if (v190 > 121)
        {
LABEL_441:
          coap_log_impl(4, "*  %s: read failed\n", v189);
          goto LABEL_479;
        }

        v191 = (&coap_endpoint_str_szEndpoint + v190);
      }

      else
      {
        v191 = &coap_endpoint_str_szEndpoint;
      }

      v195 = *(v150 + 16);
      if (v195 == 2)
      {
        *(v191 + 2) = 83;
        v196 = 1280590880;
      }

      else if (v195 == 1)
      {
        *(v191 + 4) = 0;
        v196 = 1346655520;
      }

      else
      {
        *(v191 + 2) = 69;
        v196 = 1313820192;
      }

      *v191 = v196;
      goto LABEL_441;
    }

LABEL_540:
    v316 = *(v145 + 64);
    if (!v316)
    {
LABEL_572:
      if ((((((125 * (v147 - v342)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4) == -1)
      {
        goto LABEL_573;
      }

      v43 = 1;
LABEL_579:
      __HMFActivityScopeLeave();

      goto LABEL_580;
    }

    while (1)
    {
      v317 = *(v316 + 8);
      v318 = *(v316 + 90);
      if ((v318 & 0x800) == 0)
      {
        if ((*(v316 + 90) & 0x100) != 0)
        {
          goto LABEL_560;
        }

        goto LABEL_543;
      }

      ++*(v316 + 1);
      __errnum[0] = 0;
      LODWORD(v365.msg_name) = 4;
      *(v316 + 90) = v318 & 0xF77F;
      if (getsockopt(*(v316 + 44), 0xFFFF, 4103, __errnum, &v365) == -1 && maxlog >= 4)
      {
        v320 = __error();
        v321 = strerror(*v320);
        coap_log_impl(4, "coap_socket_finish_connect_tcp: getsockopt: %s\n", v321);
      }

      if (__errnum[0])
      {
        break;
      }

      if (getsockname(*(v316 + 44), (v316 + 140), v316 + 34) == -1 && maxlog >= 4)
      {
        v327 = __error();
        v328 = strerror(*v327);
        coap_log_impl(4, "coap_socket_connect_tcp: getsockname: %s\n", v328);
      }

      if (getpeername(*(v316 + 44), (v316 + 108), v316 + 26) == -1 && maxlog >= 4)
      {
        v329 = __error();
        v330 = strerror(*v329);
        coap_log_impl(4, "coap_socket_connect_tcp: getpeername: %s\n", v330);
      }

      *(v316 + 34) = v147;
      coap_handle_event(*(v316 + 26), 4097, v316);
      v331 = *v316;
      if (v331 == 4)
      {
        v316[2] = 2;
        *(v316 + 27) = 0;
        coap_handle_event(*(v316 + 26), 512, v316);
        v325 = v316;
        v326 = 3;
LABEL_558:
        coap_session_disconnected(v325, v326, v324);
        goto LABEL_559;
      }

      if (v331 == 3)
      {
        coap_session_send_csm(v316);
      }

LABEL_559:
      coap_session_release(v316);
      v318 = *(v316 + 90);
      if ((v318 & 0x100) != 0)
      {
LABEL_560:
        ++*(v316 + 1);
        coap_read_session(v348, v316, v147);
        coap_session_release(v316);
        if ((*(v316 + 90) & 0x200) == 0)
        {
          goto LABEL_545;
        }

LABEL_544:
        ++*(v316 + 1);
        coap_write_session(v316, v147);
        coap_session_release(v316);
        goto LABEL_545;
      }

LABEL_543:
      if ((v318 & 0x200) != 0)
      {
        goto LABEL_544;
      }

LABEL_545:
      v316 = v317;
      if (!v317)
      {
        goto LABEL_572;
      }
    }

    if (maxlog >= 4)
    {
      v322 = strerror(__errnum[0]);
      coap_log_impl(4, "coap_socket_finish_connect_tcp: connect failed: %s\n", v322);
    }

    v323 = *(v316 + 44);
    if (v323 != -1)
    {
      *(v316 + 23) = 0;
      *(v316 + 24) = 0;
      close(v323);
      *(v316 + 44) = -1;
    }

    *(v316 + 90) = 0;
    coap_handle_event(*(v316 + 26), 4099, v316);
    v325 = v316;
    v326 = 1;
    goto LABEL_558;
  }

  v43 = 0;
LABEL_580:
  _Block_object_dispose(v351, 8);
  __HMFActivityScopeLeave();

  _Block_object_dispose(&v354, 8);
  return v43;
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [(HAP2CoAPIOThread *)*(a1 + 32) completedQueue];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_2;
  v55[3] = &unk_2786D5DC8;
  v55[4] = *v2;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v55];

  v4 = [(HAP2CoAPIOThread *)*v2 completedQueue];
  [v4 removeAllObjects];

  v5 = *v2;
  if (*v2)
  {
    v5 = v5[15];
  }

  v6 = v5;
  v7 = [v6 now];

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__20180;
  v53 = __Block_byref_object_dispose__20181;
  v54 = 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[17];
  }

  v9 = v8;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_3;
  v46[3] = &unk_2786D5DF0;
  v10 = v7;
  v47 = v10;
  v48 = &v49;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v46];

  v11 = v50;
  if (v50[5])
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[17];
    }

    v13 = v12;
    [v13 removeObjectsAtIndexes:v11[5]];
  }

  v14 = MEMORY[0x277CBEB18];
  v15 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  v16 = [v14 arrayWithArray:v15];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  [v19 removeAllObjects];

  v20 = *(a1 + 32);
  if (v20)
  {
    v20 = v20[10];
  }

  v21 = v20;
  if (![v21 count])
  {
    goto LABEL_27;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v22 = v22[16];
  }

  v23 = v22;
  v24 = [v23 count];
  v25 = *(a1 + 32);
  if (!v25)
  {

LABEL_27:
    goto LABEL_28;
  }

  v26 = v24 < *(v25 + 144);

  if (v26)
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v27 = v27[10];
    }

    v28 = v27;
    v29 = [v28 sortedArrayUsingSelector:sel_compare_];

    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = v30[18];
      v30 = v30[16];
    }

    else
    {
      v31 = 0;
    }

    v32 = v30;
    v33 = [v32 count];

    v34 = [v29 count];
    if (v31 - v33 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v31 - v33;
    }

    v36 = [v29 subarrayWithRange:{0, v35}];
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v36];
    v37 = *(a1 + 32);
    if (v37)
    {
      v37 = v37[10];
    }

    v38 = v37;
    [v38 removeObjectsInArray:v36];

    goto LABEL_36;
  }

LABEL_28:
  v39 = *(a1 + 32);
  if (v39)
  {
    v39 = v39[16];
  }

  v40 = v39;
  v41 = [v40 count];
  v42 = *(a1 + 32);
  if (v42)
  {
    v42 = *(v42 + 144);
  }

  v43 = v41 == v42;

  if (v43)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v44 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a1 + 32);
      if (v45)
      {
        v45 = *(v45 + 144);
      }

      *buf = 134217984;
      v57 = v45;
      _os_log_debug_impl(&dword_22AADC000, v44, OS_LOG_TYPE_DEBUG, "Coap IO all %lu sliding window slots in use", buf, 0xCu);
    }
  }

LABEL_36:

  _Block_object_dispose(&v49, 8);
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_62(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(*(a1 + 40) + 8) + 40) end];
  if (v6)
  {
    v3 = v6[5];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  [*(*(*(a1 + 40) + 8) + 40) begin];
  if (([*(a1 + 32) _processQueueEntry:v6 context:*(a1 + 48)] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) end];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (id)completedQueue
{
  if (self)
  {
    selfCopy = self;
    [self[13] assertOwner];
    self = selfCopy[11];
    v1 = vars8;
  }

  return self;
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(consumer = %@)", v3];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 128);
  }

  else
  {
    v6 = 0;
  }

  v10 = v4;
  v7 = [v6 filteredSetUsingPredicate:v4];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 128);
  }

  else
  {
    v9 = 0;
  }

  [v9 minusSet:v7];
}

void *__45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 reapSession:*(a1 + 32)];
  if (result)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (v8)
    {

      return [v8 addIndex:a3];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];

      return MEMORY[0x2821F96F8]();
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (coap_context_t)_createContext
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  coap_startup();
  v3 = malloc_type_malloc(0xE0uLL, 0x5CBEF798uLL);
  if (!v3)
  {
    if ((maxlog & 0x80000000) == 0)
    {
      coap_log_impl(0, "coap_init: malloc: failed\n");
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v25 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "Coap IO thread failed to create context", buf, 2u);
    }

    return 0;
  }

  v4 = v3;
  *&v3->var15 = 0u;
  *&v3->var17 = 0u;
  *&v3->var23 = 0u;
  *&v3->var27 = 0u;
  *&v3->var19 = 0u;
  *&v3->var21 = 0u;
  *&v3->var11 = 0u;
  *&v3->var13 = 0u;
  *&v3->var7 = 0u;
  *&v3->var9 = 0u;
  *&v3->var3 = 0u;
  *&v3->var5 = 0u;
  *v3->var0 = 0u;
  *&v3->var1 = 0u;
  v3->var27 = 30;
  v3->var13 = coap_network_send;
  v3->var14 = coap_network_read;
  v3->var15 = coap_get_session_client_psk;
  v3->var16 = coap_get_context_server_psk;
  v3->var17 = coap_get_context_server_hint;
  if (coap_make_str_const_ofs == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = coap_make_str_const_ofs + 1;
  }

  coap_make_str_const_ofs = v5;
  v6 = (&coap_make_str_const_var + 16 * v5);
  *v6 = 0;
  v6[1] = "";
  v7 = malloc_type_malloc(0xA0uLL, 0x5CBEF798uLL);
  if (!v7)
  {
    if (maxlog >= 7)
    {
      coap_log_impl(7, "coap_resource_init: no memory left\n");
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v26 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_error_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "Coap IO thread failed to create request resource", v87, 2u);
    }

    coap_free_context(v4);
    return 0;
  }

  v8 = v7;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v11 = v6;
  v9 = *v6;
  v10 = v11[1];
  v12 = coap_new_string(v9);
  if (v12)
  {
    v13 = v12;
    memcpy(v12[1], v10, v9);
    *v13 = v9;
    *(v8 + 17) = v13;
  }

  *(v8 + 36) = 0;
  v4->var28 = self;
  v4->var14 = coapNetworkRead;
  v4->var8 = coapResponseHandler;
  v4->var12 = coapEventHandler;
  v4->var9 = coapNackHandler;
  v4->var11 = coapPongHandler;
  *(v8 + 3) = coapRequestHandler;
  if ((*v8 & 0x10) != 0)
  {
    var2 = v4->var2;
    if (var2)
    {
      coap_free_resource(var2);
    }

    v4->var2 = v8;
    return v4;
  }

  v14 = *(v8 + 17);
  v15 = *v14;
  v16 = v14[1];
  resource_from_uri_path = coap_get_resource_from_uri_path(v4, *v14, v16);
  if (resource_from_uri_path)
  {
    v18 = resource_from_uri_path;
    if (maxlog >= 4)
    {
      coap_log_impl(4, "coap_add_resource: Duplicate uri_path '%*.*s', old resource deleted\n", v15, v15, v16);
    }

    if ((*v18 & 0x10) != 0 && (v19 = v4->var2, v19 == v18))
    {
      coap_free_resource(v19);
      v4->var2 = 0;
    }

    else
    {
      v20 = *(v18 + 72);
      if (v20 || *(v18 + 80))
      {
        p_var1 = &v4->var1;
        var1 = v4->var1;
        var0 = var1->var6.var0;
        if (v18 + 64 == *(var0 + 3))
        {
          *(var0 + 3) = &v20[*(var0 + 4)];
        }

        v24 = *(v18 + 80);
        if (v20)
        {
          p_var1 = &v20[*(var0 + 4) + 16];
        }

        else
        {
          var1 = *(v18 + 80);
        }

        *p_var1 = v24;
        v28 = var1->var6.var0;
        if (v24)
        {
          *(v24->var5 + *(v28 + 4)) = v20;
        }

        v29 = *v28 + 16 * ((*(v28 + 2) - 1) & *(v18 + 116));
        --*(v29 + 8);
        v30 = *(v18 + 96);
        if (*v29 == v18 + 64)
        {
          *v29 = v30;
        }

        v31 = *(v18 + 88);
        if (v31)
        {
          *(v31 + 32) = v30;
        }

        if (v30)
        {
          *(v30 + 24) = v31;
        }

        --*(v28 + 4);
      }

      else
      {
        free(*v4->var1->var6.var0);
        free(v4->var1->var6.var0);
        v4->var1 = 0;
      }

      coap_free_resource(v18);
    }

    v32 = *(v8 + 17);
    v15 = *v32;
    v16 = v32[1];
  }

  v33 = -17973521;
  v34 = -1640531527;
  if (v15 < 0xC)
  {
    v37 = -1640531527;
    v36 = v15;
    v35 = v16;
  }

  else
  {
    v35 = v16;
    v36 = v15;
    v37 = -1640531527;
    do
    {
      v38 = *(v35 + 1) + v34;
      v39 = *(v35 + 2) + v33;
      v40 = (*v35 + v37 - (v38 + v39)) ^ (v39 >> 13);
      v41 = (v38 - v39 - v40) ^ (v40 << 8);
      v42 = (v39 - v40 - v41) ^ (v41 >> 13);
      v43 = (v40 - v41 - v42) ^ (v42 >> 12);
      v44 = (v41 - v42 - v43) ^ (v43 << 16);
      v45 = (v42 - v43 - v44) ^ (v44 >> 5);
      v37 = (v43 - v44 - v45) ^ (v45 >> 3);
      v34 = (v44 - v45 - v37) ^ (v37 << 10);
      v33 = (v45 - v37 - v34) ^ (v34 >> 15);
      v35 += 12;
      v36 -= 12;
    }

    while (v36 > 0xB);
  }

  v46 = v33 + v15;
  if (v36 > 5)
  {
    if (v36 > 8)
    {
      if (v36 != 9)
      {
        if (v36 != 10)
        {
          v46 += v35[10] << 24;
        }

        v46 += v35[9] << 16;
      }

      v46 += v35[8] << 8;
    }

    else
    {
      if (v36 == 6)
      {
LABEL_70:
        v34 += v35[5] << 8;
        goto LABEL_71;
      }

      if (v36 == 7)
      {
LABEL_69:
        v34 += v35[6] << 16;
        goto LABEL_70;
      }
    }

    v34 += v35[7] << 24;
    goto LABEL_69;
  }

  if (v36 > 2)
  {
    if (v36 == 3)
    {
LABEL_73:
      v37 += v35[2] << 16;
      goto LABEL_74;
    }

    if (v36 == 4)
    {
LABEL_72:
      v37 += v35[3] << 24;
      goto LABEL_73;
    }

LABEL_71:
    v34 += v35[4];
    goto LABEL_72;
  }

  if (v36 == 1)
  {
    goto LABEL_75;
  }

  if (v36 != 2)
  {
    goto LABEL_76;
  }

LABEL_74:
  v37 += v35[1] << 8;
LABEL_75:
  v37 += *v35;
LABEL_76:
  v47 = (v37 - v34 - v46) ^ (v46 >> 13);
  v48 = (v34 - v46 - v47) ^ (v47 << 8);
  v49 = (v46 - v47 - v48) ^ (v48 >> 13);
  v50 = (v47 - v48 - v49) ^ (v49 >> 12);
  v51 = (v48 - v49 - v50) ^ (v50 << 16);
  v52 = (v49 - v50 - v51) ^ (v51 >> 5);
  v53 = (v50 - v51 - v52) ^ (v52 >> 3);
  v54 = (v52 - v53 - ((v51 - v52 - v53) ^ (v53 << 10))) ^ (((v51 - v52 - v53) ^ (v53 << 10)) >> 15);
  v55 = (v8 + 4);
  *(v8 + 13) = v16;
  *(v8 + 28) = v15;
  *(v8 + 29) = v54;
  v56 = v4->var1;
  if (v56)
  {
    v57 = v56->var6.var0;
    *(v8 + 10) = 0;
    v58 = *(v57 + 3);
    v59 = v58 - *(v57 + 4);
    *(v8 + 8) = v57;
    *(v8 + 9) = v59;
    *(v58 + 16) = v8;
    *(v57 + 3) = v55;
  }

  else
  {
    *(v8 + 9) = 0;
    *(v8 + 10) = 0;
    v4->var1 = v8;
    v60 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
    v4->var1->var6.var0 = v60;
    if (!v60)
    {
      goto LABEL_108;
    }

    *(v60 + 2) = 0u;
    *(v60 + 3) = 0u;
    *v60 = 0u;
    *(v60 + 1) = 0u;
    v61 = v4->var1;
    v62 = v61->var6.var0;
    *(v62 + 1) = 0x500000020;
    *(v62 + 3) = &v61->var6;
    *(v62 + 4) = 64;
    v63 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
    *v4->var1->var6.var0 = v63;
    if (!v63)
    {
      goto LABEL_108;
    }

    v63[30] = 0u;
    v63[31] = 0u;
    v63[28] = 0u;
    v63[29] = 0u;
    v63[26] = 0u;
    v63[27] = 0u;
    v63[24] = 0u;
    v63[25] = 0u;
    v63[22] = 0u;
    v63[23] = 0u;
    v63[20] = 0u;
    v63[21] = 0u;
    v63[18] = 0u;
    v63[19] = 0u;
    v63[16] = 0u;
    v63[17] = 0u;
    v63[14] = 0u;
    v63[15] = 0u;
    v63[12] = 0u;
    v63[13] = 0u;
    v63[10] = 0u;
    v63[11] = 0u;
    v63[8] = 0u;
    v63[9] = 0u;
    v63[6] = 0u;
    v63[7] = 0u;
    v63[4] = 0u;
    v63[5] = 0u;
    v63[2] = 0u;
    v63[3] = 0u;
    *v63 = 0u;
    v63[1] = 0u;
    v57 = v4->var1->var6.var0;
    *(v57 + 14) = -1609490463;
  }

  ++*(v57 + 4);
  v64 = *v57 + 16 * ((*(v57 + 2) - 1) & v54);
  v65 = *(v64 + 8) + 1;
  *(v64 + 8) = v65;
  v66 = *v64;
  *(v8 + 11) = 0;
  *(v8 + 12) = v66;
  if (v66)
  {
    *(v66 + 24) = v55;
  }

  *v64 = v55;
  if (v65 >= 10 * *(v64 + 12) + 10 && !(*v55)[6].i32[1])
  {
    v67 = malloc_type_malloc(32 * (*v55)[1].u32[0], 0x1020040EDED9539uLL);
    if (v67)
    {
      v68 = v67;
      bzero(v67, 32 * (*v55)[1].u32[0]);
      v69 = *v55;
      v70 = (*v55)[2].u32[0];
      v71 = (*v55)[1].u32[0];
      v72 = 2 * v71 - 1;
      if ((v72 & v70) != 0)
      {
        v73 = (v70 >> ((*v55)[1].i32[1] + 1)) + 1;
      }

      else
      {
        v73 = v70 >> ((*v55)[1].i32[1] + 1);
      }

      v69[5].i32[0] = v73;
      v69[5].i32[1] = 0;
      v74 = *v69;
      if (v71)
      {
        v75 = 0;
        for (i = 0; i != v71; ++i)
        {
          v77 = v74[2 * i];
          if (v77)
          {
            do
            {
              v78 = *(v77 + 32);
              v79 = &v68[16 * (*(v77 + 52) & v72)];
              v80 = *(v79 + 2) + 1;
              *(v79 + 2) = v80;
              if (v80 > v73)
              {
                v69[5].i32[1] = ++v75;
                *(v79 + 3) = v80 / v73;
              }

              v81 = *v79;
              *(v77 + 24) = 0;
              *(v77 + 32) = v81;
              if (v81)
              {
                *(v81 + 24) = v77;
              }

              *v79 = v77;
              v77 = v78;
            }

            while (v78);
          }
        }
      }

      free(v74);
      v82 = *v55;
      v83 = (*v55)[1];
      v84.i32[0] = vadd_s32(v83, v83).u32[0];
      v84.i32[1] = vadd_s32(v83, 0x100000001).i32[1];
      v82[1] = v84;
      *v82 = v68;
      if (v82[5].i32[1] <= v82[2].i32[0] >> 1)
      {
        v82[6].i32[0] = 0;
      }

      else
      {
        v85 = v82[6].i32[0] + 1;
        v82[6].i32[0] = v85;
        if (v85 >= 2)
        {
          v82[6].i32[1] = 1;
        }
      }

      return v4;
    }

LABEL_108:
    exit(-1);
  }

  return v4;
}

- (void)_enqueue:(id)_enqueue
{
  _enqueueCopy = _enqueue;
  if (self)
  {
    lock = self->_lock;
  }

  else
  {
    lock = 0;
  }

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __29__HAP2CoAPIOThread__enqueue___block_invoke;
  v10 = &unk_2786D7050;
  v11 = _enqueueCopy;
  selfCopy = self;
  v6 = _enqueueCopy;
  [(HAP2Lock *)lock performBlock:&v7];
  [(HAP2CoAPIOThread *)self _wakeUpThread:v7];
}

void __29__HAP2CoAPIOThread__enqueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(v2 + 16);
  if (v3 != 8)
  {
    if (v3 == 16)
    {
      v4 = [(HAP2CoAPIOThread *)*(a1 + 40) completedQueue];
LABEL_6:
      v7 = v4;
      [v4 addObject:*(a1 + 32)];

      return;
    }

LABEL_5:
    v4 = [(HAP2CoAPIOThread *)*(a1 + 40) queue];
    goto LABEL_6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 80);
  }

  else
  {
    v6 = 0;
  }

  [v6 addObject:?];
}

- (void)_wakeUpThread
{
  v8 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v3 = self ? self->_wakeupPipeRead : 0;
    if (write(v3, "a", 1uLL) != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v4 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
        v6 = *__error();
        v7[0] = 67109120;
        v7[1] = v6;
        _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "Error attempting to wake up thread %d", v7, 8u);
      }

      return;
    }
  }
}

- (void)queueSessionCompletionForConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Session Block Complete", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:consumerCopy operationType:0x10 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)queueSessionBlockForConsumer:(id)consumer sessionBlock:(id)block withTimeout:(double)timeout requiresCompletion:(BOOL)completion
{
  completionCopy = completion;
  consumerCopy = consumer;
  blockCopy = block;
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"%@ Session Block", v14];

  v16 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v15];
  v17 = [HAP2CoAPIOThreadQueueEntry alloc];
  if (completionCopy)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  v19 = [(HAP2CoAPIOThreadQueueEntry *)&v17->super.isa initWithConsumer:consumerCopy operationType:v18 sessionBlock:blockCopy timeout:v16 activity:timeout];
  [(HAP2CoAPIOThread *)self _enqueue:v19];

  __HMFActivityScopeLeave();
}

- (void)unregisterConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Unregister", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:consumerCopy operationType:2 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)registerConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Register", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:consumerCopy operationType:1 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)main
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v3 = objc_autoreleasePoolPush();
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "Coap IO thread started", buf, 2u);
  }

  delegate = [(HAP2CoAPIOThread *)&self->super.super.isa delegate];
  [delegate didStart];

  log_handler = coapLogHandler;
  coap_set_log_level(7);
  coap_startup();
  _createContext = [(HAP2CoAPIOThread *)self _createContext];
  do
  {
    if (([(HAP2CoAPIOThread *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [(HAP2CoAPIOThread *)self _processQueueWithContext:_createContext];
    objc_autoreleasePoolPop(v7);
  }

  while (v8);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "Coap IO thread exited main run loop", v13, 2u);
  }

  [(HAP2CoAPIOThread *)self _processQueueWithContext:0];
  if (_createContext)
  {
    [(HAP2CoAPIOThread *)self _cleanupWithContext:_createContext];
  }

  delegate2 = [(HAP2CoAPIOThread *)&self->super.super.isa delegate];
  [delegate2 didStop];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "Coap IO thread stopped", v12, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = HAP2CoAPIOThread;
  [(HAP2CoAPIOThread *)&v3 cancel];
  [(HAP2CoAPIOThread *)self _wakeUpThread];
}

- (void)dealloc
{
  v3 = *&self->super._bytes[44];
  if (v3 != -1)
  {
    close(v3);
  }

  wakeupPipeRead = self->_wakeupPipeRead;
  if (wakeupPipeRead != -1)
  {
    close(wakeupPipeRead);
  }

  v5.receiver = self;
  v5.super_class = HAP2CoAPIOThread;
  [(HAP2CoAPIOThread *)&v5 dealloc];
}

- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)service delegate:(id)delegate dateProvider:(id)provider
{
  v51 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  providerCopy = provider;
  v46.receiver = self;
  v46.super_class = HAP2CoAPIOThread;
  v10 = [(HAP2CoAPIOThread *)&v46 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = [HAP2Lock lockWithName:@"HAP2CoAPIOThread.lock"];
    lock = v11->_lock;
    v11->_lock = v12;

    objc_storeStrong(&v11->_dateProvider, provider);
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    consumerInfo = v11->_consumerInfo;
    v11->_consumerInfo = v14;

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    queue = v11->_queue;
    v11->_queue = v16;

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    messageQueue = v11->_messageQueue;
    v11->_messageQueue = v18;

    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    completedQueue = v11->_completedQueue;
    v11->_completedQueue = v20;

    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    zombieSessions = v11->_zombieSessions;
    v11->_zombieSessions = v22;

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v25 = [mEMORY[0x277D0F8D0] preferenceForKey:@"COAPDefaultFlowControlMessageCount"];

    numberValue = [v25 numberValue];
    v11->_pendingMessagesThreshold = [numberValue unsignedIntegerValue];

    v27 = [MEMORY[0x277CBEB58] setWithCapacity:v11->_pendingMessagesThreshold];
    pendingMessages = v11->_pendingMessages;
    v11->_pendingMessages = v27;

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v29 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
    {
      pendingMessagesThreshold = v11->_pendingMessagesThreshold;
      *buf = 134217984;
      v50 = pendingMessagesThreshold;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "Using a sliding window count of %lu", buf, 0xCu);
    }

    v31 = pipe(buf);
    *&v11->super._bytes[44] = *buf;
    v11->_wakeupPipeRead = v50;
    if (v31)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v32 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = *__error();
      *v47 = 67109120;
      v48 = v34;
      v35 = "Error opening pipe with code %d";
LABEL_23:
      _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, v35, v47, 8u);

LABEL_24:
      *&v11->super._bytes[44] = -1;
      v11->_wakeupPipeRead = -1;

      v40 = 0;
      goto LABEL_25;
    }

    if (!fd_set_flag(*&v11->super._bytes[44]))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v41 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v41;
      v42 = *__error();
      *v47 = 67109120;
      v48 = v42;
      v35 = "Error setting O_NONBLOCK | O_CLOEXEC flag on read pipe  %d";
      goto LABEL_23;
    }

    if (!fd_set_flag(v11->_wakeupPipeRead))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v43 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v43;
      v44 = *__error();
      *v47 = 67109120;
      v48 = v44;
      v35 = "Error setting O_NONBLOCK | O_CLOEXEC flag on write pipe  %d";
      goto LABEL_23;
    }

    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 stringWithFormat:@"com.apple.CoreHAP.%@", v38];
    [(HAP2CoAPIOThread *)v11 setName:v39];

    [(HAP2CoAPIOThread *)v11 setQualityOfService:service];
  }

  v40 = v11;
LABEL_25:

  return v40;
}

- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)service delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = objc_opt_new();
  v8 = [(HAP2CoAPIOThread *)self initWithQualityOfService:service delegate:delegateCopy dateProvider:v7];

  return v8;
}

@end