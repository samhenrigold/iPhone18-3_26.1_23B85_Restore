@interface SMBSocket
- (id)getEventHandler;
- (int)connectSocket;
- (int)openSocket:(id)socket;
- (int)processReply:(void *)reply;
- (int)send:(id)send;
- (int)sendRequest:(id)request;
- (int)writeEnabled;
- (timespec)last_echo;
- (timespec)last_recv;
- (unsigned)isPerAppVPN;
- (void)closeSocket;
- (void)readData:(const void *)data;
- (void)readNBHeader;
- (void)setEventHandler:(id)handler;
- (void)setNetBIOSHeader:(unsigned int *)header nbType:(unsigned __int8)type length:(unsigned int)length;
- (void)timeOutCheck;
@end

@implementation SMBSocket

- (int)openSocket:(id)socket
{
  v55 = *MEMORY[0x277D85DE8];
  socketCopy = socket;
  objc_initWeak(&location, self);
  *port = 0;
  v52 = 0;
  v54 = 0;
  v53 = 0;
  objc_storeStrong(&self->pd, socket);
  self->_resp_wait_timeout = 35;
  v6 = pthread_mutex_init(&self->io_rqlock, 0);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket openSocket:];
    }

    goto LABEL_42;
  }

  v6 = pthread_mutex_init(&self->skt_lock, 0);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket openSocket:];
    }

    pthread_mutex_destroy(&self->io_rqlock);
    goto LABEL_42;
  }

  v6 = pthread_cond_init(&self->skt_lock_cond, 0);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    io_rqlist = self->io_rqlist;
    self->io_rqlist = v7;

    if (self->io_rqlist)
    {
      pthread_mutex_lock(&self->skt_lock);
      self->state |= 1uLL;
      event_handler_callback = self->event_handler_callback;
      self->event_handler_callback = 0;

      v10 = dispatch_queue_create("com.apple.SMBClientEngine.sign", MEMORY[0x277D85CD8]);
      signing_queue = self->_signing_queue;
      self->_signing_queue = v10;

      if (self->_signing_queue)
      {
        v12 = dispatch_queue_create("com.apple.SMBClientEngine.send", 0);
        send_queue = self->send_queue;
        self->send_queue = v12;

        if (self->send_queue)
        {
          v14 = dispatch_queue_create("com.apple.SMBClientEngine.recv", MEMORY[0x277D85CD8]);
          recv_queue = self->_recv_queue;
          self->_recv_queue = v14;

          if (self->_recv_queue)
          {
            v16 = dispatch_queue_create("com.apple.SMBClientEngine.read_skt", 0);
            nw_conn_queue = self->nw_conn_queue;
            self->nw_conn_queue = v16;

            if (self->nw_conn_queue)
            {
              v18 = dispatch_queue_create("com.apple.SMBClientEngine.timer", 0);
              timer_queue = self->timer_queue;
              self->timer_queue = v18;

              v20 = self->timer_queue;
              if (v20)
              {
                v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v20);
                timer = self->timer;
                self->timer = v21;

                v23 = self->timer;
                if (v23)
                {
                  v24 = dispatch_walltime(0, 0);
                  dispatch_source_set_timer(v23, v24, 0x77359400uLL, 0xEE6B280uLL);
                  v25 = self->timer;
                  handler[0] = MEMORY[0x277D85DD0];
                  handler[1] = 3221225472;
                  handler[2] = __24__SMBSocket_openSocket___block_invoke;
                  handler[3] = &unk_279B4FA38;
                  objc_copyWeak(&v48, &location);
                  dispatch_source_set_event_handler(v25, handler);
                  v26 = dispatch_semaphore_create(0);
                  timer_semaphore = self->timer_semaphore;
                  self->timer_semaphore = v26;

                  if (self->timer_semaphore)
                  {
                    v28 = self->timer;
                    v46[0] = MEMORY[0x277D85DD0];
                    v46[1] = 3221225472;
                    v46[2] = __24__SMBSocket_openSocket___block_invoke_6;
                    v46[3] = &unk_279B4FA60;
                    v46[4] = self;
                    dispatch_source_set_cancel_handler(v28, v46);
                    __snprintf_chk(port, 0x19uLL, 0, 0x19uLL, "%d", self->_port);
                    host = nw_endpoint_create_host([(NSString *)self->_serverName cStringUsingEncoding:4], port);
                    endpoint = self->endpoint;
                    self->endpoint = host;

                    if (!self->endpoint)
                    {
                      v6 = *__error();
                      v41 = MEMORY[0x277D86220];
                      v42 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        [(SMBSocket *)[(NSString *)self->_serverName cStringUsingEncoding:4] openSocket:buf];
                      }

                      pthread_mutex_unlock(&self->skt_lock);
                      [(SMBSocket *)self closeSocket];
                      goto LABEL_56;
                    }

                    v31 = MEMORY[0x266734860]();
                    if (v31)
                    {
                      nw_parameters_set_data_mode();
                      nw_parameters_set_no_delay();
                      nw_parameters_set_keepalive_enabled();
                      v32 = nw_connection_create(self->endpoint, v31);
                      connection = self->_connection;
                      self->_connection = v32;

                      v34 = self->_connection;
                      if (v34)
                      {
                        nw_connection_set_queue(v34, self->nw_conn_queue);
                        v35 = self->_connection;
                        v45[0] = MEMORY[0x277D85DD0];
                        v45[1] = 3221225472;
                        v45[2] = __24__SMBSocket_openSocket___block_invoke_8;
                        v45[3] = &unk_279B4FA88;
                        v45[4] = self;
                        MEMORY[0x2667347D0](v35, v45);
                        v44[5] = MEMORY[0x277D85DD0];
                        v44[6] = 3221225472;
                        v44[7] = __24__SMBSocket_openSocket___block_invoke_10;
                        v44[8] = &unk_279B4FA60;
                        v44[9] = self;
                        nw_connection_set_cancel_handler();
                        v36 = dispatch_semaphore_create(0);
                        event_semaphore = self->event_semaphore;
                        self->event_semaphore = v36;

                        if (self->event_semaphore)
                        {
                          v38 = self->_connection;
                          v44[0] = MEMORY[0x277D85DD0];
                          v44[1] = 3221225472;
                          v44[2] = __24__SMBSocket_openSocket___block_invoke_11;
                          v44[3] = &unk_279B4FAB0;
                          v44[4] = self;
                          nw_connection_set_viability_changed_handler(v38, v44);
                          v39 = self->_connection;
                          v43[0] = MEMORY[0x277D85DD0];
                          v43[1] = 3221225472;
                          v43[2] = __24__SMBSocket_openSocket___block_invoke_2;
                          v43[3] = &unk_279B4FAB0;
                          v43[4] = self;
                          nw_connection_set_better_path_available_handler(v39, v43);
                          nw_connection_set_read_close_handler();
                          nw_connection_set_write_close_handler();
                          pthread_mutex_unlock(&self->skt_lock);
                          v6 = 0;
LABEL_56:
                          objc_destroyWeak(&v48);
                          goto LABEL_42;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          [SMBSocket openSocket:];
                        }

                        pthread_mutex_unlock(&self->skt_lock);
                        [(SMBSocket *)self closeSocket];
LABEL_46:
                        v6 = 12;
                        goto LABEL_56;
                      }

                      v6 = *__error();
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        [SMBSocket openSocket:];
                      }
                    }

                    else
                    {
                      v6 = *__error();
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        [SMBSocket openSocket:];
                      }
                    }

                    pthread_mutex_unlock(&self->skt_lock);
                    [(SMBSocket *)self closeSocket];
                    goto LABEL_56;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    [SMBSocket openSocket:];
                  }

                  pthread_mutex_unlock(&self->skt_lock);
                  [(SMBSocket *)self closeSocket];
                  goto LABEL_46;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [SMBSocket openSocket:];
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [SMBSocket openSocket:];
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBSocket openSocket:];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SMBSocket openSocket:];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [SMBSocket openSocket:];
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBSocket openSocket:];
      }

      pthread_mutex_unlock(&self->skt_lock);
      [(SMBSocket *)self closeSocket];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBSocket openSocket:];
      }

      pthread_mutex_destroy(&self->io_rqlock);
      pthread_mutex_destroy(&self->skt_lock);
      pthread_cond_destroy(&self->skt_lock_cond);
    }

    v6 = 12;
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBSocket openSocket:];
  }

  pthread_mutex_destroy(&self->io_rqlock);
  pthread_mutex_destroy(&self->skt_lock);
LABEL_42:
  objc_destroyWeak(&location);

  return v6;
}

void __24__SMBSocket_openSocket___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeOutCheck];
}

void __24__SMBSocket_openSocket___block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    pthread_mutex_lock((v6 + 208));
    *(*(a1 + 32) + 16) |= 0x80uLL;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    if (v5)
    {
      error_code = nw_error_get_error_code(v5);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __24__SMBSocket_openSocket___block_invoke_8_cold_1();
      }

      if (error_code == 61)
      {
        *(*(a1 + 32) + 48) = a2;
        a2 = 4;
LABEL_14:
        pthread_mutex_lock((*(a1 + 32) + 208));
        *(*(a1 + 32) + 16) |= 0x20uLL;
        *(*(a1 + 32) + 16) &= ~2uLL;
        pthread_mutex_unlock((*(a1 + 32) + 208));
        smb_rq_cancel_all_requests((*(a1 + 32) + 128), *(*(a1 + 32) + 192), (*(a1 + 32) + 336), *(*(a1 + 32) + 328), *(*(a1 + 32) + 384));
        if (a2 != 5)
        {
          nw_connection_cancel(*(*(a1 + 32) + 376));
        }

        smb2_rq_credit_start([*(*(a1 + 32) + 8) getSessionPtr], 0xFFFFu);
          ;
        }

        goto LABEL_18;
      }
    }

    *(*(a1 + 32) + 48) = a2;
    if (a2 == 3)
    {
      pthread_mutex_lock((*(a1 + 32) + 208));
      *(*(a1 + 32) + 16) |= 2uLL;
      *(*(a1 + 32) + 16) &= ~0x20uLL;
      pthread_mutex_unlock((*(a1 + 32) + 208));
        ;
      }
    }

    else if ((a2 & 0xFFFFFFFE) == 4)
    {
      goto LABEL_14;
    }

LABEL_18:
    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x80uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    pthread_mutex_unlock((*(a1 + 32) + 208));
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_8_cold_2();
  }

LABEL_19:
}

void __24__SMBSocket_openSocket___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    pthread_mutex_lock((v1 + 208));
    *(*(a1 + 32) + 16) |= 0x100uLL;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    smb_rq_cancel_all_requests((*(a1 + 32) + 128), *(*(a1 + 32) + 192), (*(a1 + 32) + 336), *(*(a1 + 32) + 328), *(*(a1 + 32) + 384));
    *(*(a1 + 32) + 48) = 5;
    smb2_rq_credit_start([*(*(a1 + 32) + 8) getSessionPtr], 0xFFFFu);
    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x100uLL;
    *(*(a1 + 32) + 16) |= 0x200uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    v3 = (*(a1 + 32) + 208);

    pthread_mutex_unlock(v3);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_8_cold_2();
  }
}

void __24__SMBSocket_openSocket___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    pthread_mutex_lock((v2 + 208));
    *(*(a1 + 32) + 16) |= 0x400uLL;
    if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_11_cold_1();
    }

    v5 = 4;
    if (v3)
    {
      v5 = 0;
    }

    *(*(a1 + 32) + 16) = *(*(a1 + 32) + 16) & 0xFFFFFFFFFFFFFFFBLL | v5;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    v6 = *(a1 + 32);
    if (*(v6 + 352))
    {
      v7 = *(v6 + 384);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __24__SMBSocket_openSocket___block_invoke_14;
      v8[3] = &unk_279B4F9E8;
      v8[4] = v6;
      v9 = v3;
      dispatch_async(v7, v8);
    }

    else if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_11_cold_2();
    }

    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x400uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    pthread_mutex_unlock((*(a1 + 32) + 208));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_8_cold_2();
  }
}

void __24__SMBSocket_openSocket___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    pthread_mutex_lock((v2 + 208));
    *(*(a1 + 32) + 16) |= 0x800uLL;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_2_cold_1();
    }

    v5 = *(a1 + 32);
    if (*(v5 + 352))
    {
      v6 = *(v5 + 384);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __24__SMBSocket_openSocket___block_invoke_16;
      v7[3] = &unk_279B4F9E8;
      v7[4] = v5;
      v8 = v3;
      dispatch_async(v6, v7);
    }

    else if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_2_cold_2();
    }

    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x800uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    pthread_mutex_unlock((*(a1 + 32) + 208));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_2_cold_3();
  }
}

void __24__SMBSocket_openSocket___block_invoke_2_17(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((piston_log_level & 8) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __24__SMBSocket_openSocket___block_invoke_2_17_cold_1();
      }

      v1 = *(a1 + 32);
    }

    pthread_mutex_lock((v1 + 208));
    *(*(a1 + 32) + 16) |= 0x1000uLL;
    *(*(a1 + 32) + 16) |= 8uLL;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    smb_rq_cancel_all_requests((*(a1 + 32) + 128), *(*(a1 + 32) + 192), (*(a1 + 32) + 336), *(*(a1 + 32) + 328), *(*(a1 + 32) + 384));
    nw_connection_cancel(*(*(a1 + 32) + 376));
    v3 = *(a1 + 32);
    if (*(v3 + 352))
    {
      v4 = *(v3 + 384);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __24__SMBSocket_openSocket___block_invoke_18;
      block[3] = &unk_279B4FA60;
      block[4] = v3;
      dispatch_async(v4, block);
    }

    else if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_2_17_cold_2();
    }

    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x1000uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    pthread_mutex_unlock((*(a1 + 32) + 208));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_2_cold_3();
  }
}

void __24__SMBSocket_openSocket___block_invoke_2_19(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((piston_log_level & 8) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __24__SMBSocket_openSocket___block_invoke_2_19_cold_1();
      }

      v1 = *(a1 + 32);
    }

    pthread_mutex_lock((v1 + 208));
    *(*(a1 + 32) + 16) |= 0x2000uLL;
    *(*(a1 + 32) + 16) |= 0x10uLL;
    pthread_mutex_unlock((*(a1 + 32) + 208));
    v3 = *(a1 + 32);
    if (*(v3 + 352))
    {
      v4 = *(v3 + 384);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __24__SMBSocket_openSocket___block_invoke_20;
      block[3] = &unk_279B4FA60;
      block[4] = v3;
      dispatch_async(v4, block);
    }

    else if ((piston_log_level & 8) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__SMBSocket_openSocket___block_invoke_2_19_cold_2();
    }

    pthread_mutex_lock((*(a1 + 32) + 208));
    *(*(a1 + 32) + 16) &= ~0x2000uLL;
    pthread_cond_signal((*(a1 + 32) + 272));
    pthread_mutex_unlock((*(a1 + 32) + 208));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __24__SMBSocket_openSocket___block_invoke_2_cold_3();
  }
}

- (int)connectSocket
{
  nw_connection_start(self->_connection);
  event_semaphore = self->event_semaphore;
  v4 = dispatch_time(0, 1000000000 * self->_connectTimeOut);
  v5 = dispatch_semaphore_wait(event_semaphore, v4);
  nw_conn_state = self->nw_conn_state;
  if (v5)
  {
    if (nw_conn_state == 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBSocket connectSocket];
      }

LABEL_11:
      [(SMBSocket *)self closeSocket];
      return 57;
    }

LABEL_9:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket connectSocket];
    }

    goto LABEL_11;
  }

  if (nw_conn_state != 3)
  {
    goto LABEL_9;
  }

  v7 = nw_connection_copy_connected_remote_endpoint();
  remote_endpoint = self->remote_endpoint;
  self->remote_endpoint = v7;

  address = self->remote_endpoint;
  if (address)
  {
    address = nw_endpoint_get_address(address);
  }

  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  self->server_addr = address;
  [(SMBSocket *)self readNBHeader:v13.tv_sec];
  gettimeofday(&v13, 0);
  tv_sec = v13.tv_sec;
  v11 = 1000 * v13.tv_usec;
  self->_last_recv.tv_sec = v13.tv_sec;
  self->_last_recv.tv_nsec = v11;
  self->_last_echo.tv_sec = tv_sec;
  self->_last_echo.tv_nsec = v11;
  pthread_mutex_lock(&self->io_rqlock);
  dispatch_activate(self->timer);
  dispatch_suspend(self->timer);
  pthread_mutex_unlock(&self->io_rqlock);
  return 0;
}

- (void)closeSocket
{
  strerror(self);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (id)getEventHandler
{
  v2 = MEMORY[0x266734A50](self->event_handler_callback, a2);

  return v2;
}

- (unsigned)isPerAppVPN
{
  v2 = nw_connection_copy_current_path(self->_connection);
  is_per_app_vpn = nw_path_is_per_app_vpn();

  return is_per_app_vpn;
}

- (void)setEventHandler:(id)handler
{
  self->event_handler_callback = MEMORY[0x266734A50](handler, a2);

  MEMORY[0x2821F96F8]();
}

- (int)processReply:(void *)reply
{
  v60 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v53 = 0;
  v52 = 0;
  v51.tv_sec = 0;
  *&v51.tv_usec = 0;
  memset(__s2, 0, sizeof(__s2));
  gettimeofday(&v51, 0);
  v5 = 1000 * v51.tv_usec;
  self->_last_recv.tv_sec = v51.tv_sec;
  self->_last_recv.tv_nsec = v5;
  getSessionPtr = [(SMBPiston *)self->pd getSessionPtr];
  if (*mbuf_data(reply) == 253)
  {
    v7 = smb3_msg_decrypt(getSessionPtr, &replyCopy);
    if (v7)
    {
      mbuf_freem(replyCopy);
      nw_connection_cancel(self->_connection);
      v8 = 0;
      v9 = 0;
      v43 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_48;
    }
  }

  v12 = mbuf_data(replyCopy);
  v13 = *(v12 + 12);
  v14 = *(v12 + 24);
  v15 = (v12 + 8);
  v41 = *(v12 + 8);
  v39 = *(v12 + 16);
  io_rqlist = self->io_rqlist;
  v50 = 0;
  v11 = smb_rq_find(&self->io_rqlock, io_rqlist, v14, &v52, &v53, &v50, 0);
  v10 = v50;
  if (v11)
  {
    v43 = 0;
    goto LABEL_6;
  }

  v43 = 0;
  if ((getSessionPtr->option_flags & 0x200) != 0 && !v52)
  {
    v17 = self->io_rqlist;
    v49 = 0;
    v11 = smb_rq_find_cmpd(&self->io_rqlock, v17, v14, &v49);
    v43 = v49;
    if (v11)
    {
LABEL_6:
      pthread_mutex_lock(&getSessionPtr->session_credits_lock);
      if (v52)
      {
        getSessionPtr->session_req_pending = 0;
        if (!getSessionPtr->session_oldest_message_id)
        {
          goto LABEL_26;
        }

        getSessionPtr->session_oldest_message_id = 0;
      }

      else
      {
        getSessionPtr->session_req_pending = 1;
        if ((*(v12 + 16) & 2) != 0 || v53 == getSessionPtr->session_oldest_message_id)
        {
          goto LABEL_26;
        }

        getSessionPtr->session_oldest_message_id = v53;
      }

      if (atomic_load(&getSessionPtr->session_credits_wait))
      {
        atomic_fetch_add(&getSessionPtr->session_credits_wait, 0xFFFFFFFF);
        pthread_cond_signal(&getSessionPtr->session_credits_wait_cond);
      }

LABEL_26:
      pthread_mutex_unlock(&getSessionPtr->session_credits_lock);
      if ((*(v12 + 16) & 2) != 0 && *v15 == 259)
      {
        smb_rq_handle_async_pending(v11, v12);
        mbuf_freem(replyCopy);
        v8 = 0;
        v9 = 0;
LABEL_29:
        v7 = 0;
        goto LABEL_48;
      }

      smb_rq_getreply = [v11 smb_rq_getreply];
      v55[3] = smb_rq_getreply;
      md_initm(smb_rq_getreply, replyCopy);
      [v11 smb_rq_set_extflag:2];
      v11 = v11;
      if (([v11 sr_flags] & 0x100) != 0 && !*(v12 + 20))
      {
        option_flags = getSessionPtr->option_flags;
        if ((option_flags & 0x200) == 0)
        {
          if (piston_log_level)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBSocket processReply:];
            }

            option_flags = getSessionPtr->option_flags;
          }

          getSessionPtr->option_flags = option_flags | 0x200;
        }

        if (v43)
        {
          v27 = v43;
          v9 = v27;
          while (([v9 sr_extflags] & 2) != 0)
          {
            sr_next_rqp = [v9 sr_next_rqp];

            v9 = sr_next_rqp;
            if (!sr_next_rqp)
            {
              v42 = v27;

              smb_rq_getreply2 = [v42 smb_rq_getreply];
              v9 = 0;
              v55[3] = smb_rq_getreply2;
              v40 = 1;
              goto LABEL_34;
            }
          }

          v40 = 0;
        }

        else
        {
          v40 = 0;
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
        v40 = 1;
      }

      v42 = v11;
LABEL_34:
      if (v13 == 1)
      {
        session_flags = getSessionPtr->session_flags;
        if ((session_flags & 0x20000) == 0 || v41 != -1073741802)
        {
          if ((session_flags & 0x28800) != 0 && !v41 && (v39 & 8) != 0)
          {
            sess_setup_reply = getSessionPtr->sess_setup_reply;
            if (sess_setup_reply)
            {
              free(sess_setup_reply);
            }

            chain_len = mbuf_get_chain_len(replyCopy);
            if (chain_len > 0x10000)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [SMBSocket processReply:];
              }

              chain_len = 0x10000;
            }

            v32 = malloc_type_malloc(chain_len, 0xDAC728CuLL);
            getSessionPtr->sess_setup_reply = v32;
            if (v32)
            {
              getSessionPtr->sess_setup_reply_len = chain_len;
              getSessionPtr->sess_setup_message_id = v14;
              v33 = replyCopy;
              if (replyCopy && chain_len)
              {
                for (i = 0; i < chain_len; i += v36)
                {
                  v35 = v10;
                  v36 = mbuf_len(v33);
                  v37 = getSessionPtr->sess_setup_reply;
                  v38 = mbuf_data(v33);
                  if (v36 + i > chain_len)
                  {
                    v36 = chain_len - i;
                  }

                  memcpy(&v37[i], v38, v36);
                  v33 = mbuf_next(v33);
                  v10 = v35;
                  if (!v33)
                  {
                    break;
                  }
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBSocket processReply:];
            }
          }

          goto LABEL_43;
        }
      }

      else if (v13 || !memcmp(getSessionPtr->pre_auth_int_hash, __s2, 0x40uLL))
      {
LABEL_43:
        if (v40)
        {
          smb_rq_dequeue(&self->io_rqlock, self->io_rqlist, &self->timer_running, self->timer, v42);
          recv_queue = self->_recv_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __26__SMBSocket_processReply___block_invoke;
          block[3] = &unk_279B4FAF8;
          v42 = v42;
          v47 = v42;
          v48 = &v54;
          dispatch_async(recv_queue, block);
        }

        goto LABEL_45;
      }

      smb311_pre_auth_integrity_hash_update(getSessionPtr, replyCopy);
      if (!v13)
      {
        v21 = *&getSessionPtr->pre_auth_int_hash[16];
        *getSessionPtr->pre_auth_int_hash_neg = *getSessionPtr->pre_auth_int_hash;
        *&getSessionPtr->pre_auth_int_hash_neg[16] = v21;
        v22 = *&getSessionPtr->pre_auth_int_hash[48];
        *&getSessionPtr->pre_auth_int_hash_neg[32] = *&getSessionPtr->pre_auth_int_hash[32];
        *&getSessionPtr->pre_auth_int_hash_neg[48] = v22;
      }

      smb311_pre_auth_integrity_hash_print(getSessionPtr);
      goto LABEL_43;
    }
  }

  if (v13 != 13)
  {
    if (v13 == 18 && *(v12 + 24) == -1 && !*(v12 + 36))
    {
      if (self->event_handler_callback)
      {
        smb2_smb_parse_lease_break(self->pd, replyCopy);
        v8 = 0;
        v9 = 0;
        v11 = 0;
        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBSocket processReply:];
      }
    }

    if (((*(v12 + 16) & 2) == 0 || *v15 != 259) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket processReply:];
    }
  }

  mbuf_freem(replyCopy);
  v11 = 0;
  v42 = 0;
  v9 = 0;
LABEL_45:
  if (v10)
  {
    smb_rq_dequeue(&self->io_rqlock, self->io_rqlist, &self->timer_running, self->timer, v10);
    v24 = self->_recv_queue;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __26__SMBSocket_processReply___block_invoke_21;
    v44[3] = &unk_279B4FA60;
    v45 = v10;
    dispatch_async(v24, v44);

    v10 = 0;
  }

  v7 = 0;
  v8 = v42;
LABEL_48:

  _Block_object_dispose(&v54, 8);
  return v7;
}

uint64_t __26__SMBSocket_processReply___block_invoke(uint64_t a1)
{
  v2 = smb2_rq_parse_header(*(a1 + 32), (*(*(a1 + 40) + 8) + 24));
  v3 = *(a1 + 32);

  return [v3 smb_rq_callback:v2];
}

- (void)readData:(const void *)data
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  v4 = bswap32(*data);
  if (BYTE3(v4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket readData:];
    }
  }

  else if (smb_mbuf_get(0, 1, v9 + 3, v4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket readData:];
    }
  }

  else
  {
    mbuf_data(v9[3]);
    v6 = v4;
    objc_copyWeak(&v5, &location);
    if ((nw_connection_read_buffer() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket readData:];
    }

    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
}

void __22__SMBSocket_readData___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    if (a3 != 57 && a3 != 89 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __22__SMBSocket_readData___block_invoke_cold_1(v4);
    }
  }

  else
  {
    mbuf_setlen(*(*(*(a1 + 32) + 8) + 24), *(a1 + 48));
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained processReply:*(*(*(a1 + 32) + 8) + 24)];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 readNBHeader];
}

- (void)readNBHeader
{
  objc_initWeak(&location, self);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  connection = self->_connection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__SMBSocket_readNBHeader__block_invoke;
  v4[3] = &unk_279B4FB70;
  v4[4] = v7;
  v4[5] = v6;
  objc_copyWeak(&v5, &location);
  nw_connection_receive(connection, 4u, 4u, v4);
  objc_destroyWeak(&v5);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);
  objc_destroyWeak(&location);
}

void __25__SMBSocket_readNBHeader__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    error_code = nw_error_get_error_code(v10);
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    error_code = 0;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (dispatch_data_get_size(v8) && !error_code)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __25__SMBSocket_readNBHeader__block_invoke_23;
    applier[3] = &unk_279B4FB48;
    v15 = *(a1 + 32);
    objc_copyWeak(&v16, (a1 + 48));
    dispatch_data_apply(v8, applier);
    objc_destroyWeak(&v16);
    goto LABEL_18;
  }

LABEL_8:
  if (error_code)
  {
    if (error_code != 57 && error_code != 89 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __25__SMBSocket_readNBHeader__block_invoke_cold_3(error_code);
    }
  }

  else
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v13)
      {
        __25__SMBSocket_readNBHeader__block_invoke_cold_1();
      }
    }

    else if (v13)
    {
      __25__SMBSocket_readNBHeader__block_invoke_cold_2();
    }
  }

LABEL_18:
}

uint64_t __25__SMBSocket_readNBHeader__block_invoke_23(uint64_t a1, void *a2, uint64_t a3, const void *a4, size_t a5)
{
  v8 = a2;
  if (a5 == 4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v11 = a4;
LABEL_7:
    [WeakRetained readData:v11];

    goto LABEL_8;
  }

  v12 = *(*(*(a1 + 40) + 8) + 24);
  v13 = *(*(a1 + 32) + 8) + v12;
  v14 = 4 - v12;
  if (v14 < a5)
  {
    a5 = v14;
  }

  memcpy((v13 + 24), a4, a5);
  *(*(*(a1 + 40) + 8) + 24) += a5;
  if (*(*(*(a1 + 40) + 8) + 24) == 4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v11 = (*(*(a1 + 32) + 8) + 24);
    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

- (int)send:(id)send
{
  v56[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  v55 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  objc_initWeak(&location, self);
  buffer = 0;
  v56[0] = 0;
  if (!sendCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket send:];
    }

    goto LABEL_39;
  }

  sr_sessionp = [sendCopy sr_sessionp];
  if (!sr_sessionp)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket send:];
    }

    goto LABEL_39;
  }

  v6 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  v48[3] = v6;
  if (v6)
  {
    if (([sendCopy sr_flags] & 0x100) != 0)
    {
      smb_rq_getrequest = [sendCopy smb_rq_getrequest];
      if (smb_rq_getrequest)
      {
        v13 = mb_detach(smb_rq_getrequest);
        v52[3] = v13;
        [sendCopy sr_next_rqp];
        v15 = v14 = 0;
        if (v15)
        {
          do
          {
            v16 = mb_detach([v15 smb_rq_getrequest]);
            if (v16)
            {
              v17 = mbuf_concatenate(v52[3], v16);
              v52[3] = v17;
            }

            if ([v15 sr_command] == 9 && !objc_msgSend(v15, "onEncryptedShare"))
            {
              v14 += [v15 writeLen];
              v55 = v14;
              writeData = [v15 writeData];
              v19 = writeData;
              mbuf_set_write(v16, [writeData bytes], objc_msgSend(v15, "writeLen"));

              if (([v15 sr_flags] & 0x100) != 0 && (objc_msgSend(v15, "writeLen") & 7) != 0)
              {
                v14 += 8 - ([v15 writeLen] & 7);
                v55 = v14;
              }
            }

            sr_next_rqp = [v15 sr_next_rqp];

            v15 = sr_next_rqp;
          }

          while (sr_next_rqp);
        }

        v9 = v14 + m_fixhdr(v52[3]);
        goto LABEL_46;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      smb_rq_getrequest2 = [sendCopy smb_rq_getrequest];
      v8 = smb_rq_getrequest2;
      if (smb_rq_getrequest2)
      {
        if (*smb_rq_getrequest2)
        {
          v9 = mb_fixhdr(smb_rq_getrequest2);
          v10 = mb_detach(v8);
          v52[3] = v10;
          if (![sendCopy sr_command] && (*(sr_sessionp + 561) & 0x10) != 0)
          {
            smb311_pre_auth_integrity_hash_init(sr_sessionp, 0, v52[3]);
            smb311_pre_auth_integrity_hash_print(sr_sessionp);
          }

          if ([sendCopy sr_command] == 1 && (*(sr_sessionp + 554) & 2) != 0)
          {
            if ([sendCopy sr_rqsessionid])
            {
              smb311_pre_auth_integrity_hash_update(sr_sessionp, v52[3]);
            }

            else
            {
              smb311_pre_auth_integrity_hash_init(sr_sessionp, 1, v52[3]);
            }

            smb311_pre_auth_integrity_hash_print(sr_sessionp);
          }

          if ([sendCopy sr_command] == 9 && !objc_msgSend(sendCopy, "onEncryptedShare"))
          {
            writeLen = [sendCopy writeLen];
            v23 = v52[3];
            writeData2 = [sendCopy writeData];
            v25 = writeData2;
            mbuf_set_write(v23, [writeData2 bytes], objc_msgSend(sendCopy, "writeLen"));

            v9 += writeLen;
          }

LABEL_46:
          v26 = v52[3];
          if (v26)
          {
            v27 = 0;
            do
            {
              v26 = mbuf_next(v26);
              ++v27;
            }

            while (v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = objc_loadWeakRetained(&location);
          [v28 setNetBIOSHeader:v48[3] nbType:0 length:v9];

          smb_rq_set_time_sent(sendCopy, 0);
          v29 = dispatch_data_create(v48[3], 4uLL, 0, 0);
          v30 = 0;
          if (v27)
          {
            v31 = v52[3];
            do
            {
              v32 = mbuf_data(v31);
              v33 = mbuf_len(v31);
              v34 = dispatch_data_create(v32, v33, 0, 0);

              concat = dispatch_data_create_concat(v29, v34);
              if (mbuf_is_write(v31, &buffer, &v55))
              {
                v36 = dispatch_data_create(buffer, v55, 0, 0);

                v29 = dispatch_data_create_concat(concat, v36);
                if (([sendCopy sr_flags] & 0x100) != 0 && (v55 & 7) != 0)
                {
                  v30 = dispatch_data_create(v56, 8 - (v55 & 7), 0, 0);

                  v37 = dispatch_data_create_concat(v29, v30);
                  v29 = v37;
                }

                else
                {
                  v30 = v36;
                }
              }

              else
              {
                v30 = v34;
                v29 = concat;
              }

              v31 = mbuf_next(v31);
              --v27;
            }

            while (v27);
          }

          connection = self->_connection;
          v39 = *MEMORY[0x277CD9220];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __18__SMBSocket_send___block_invoke;
          v40[3] = &unk_279B4FB98;
          v43 = &v47;
          v44 = &v51;
          v41 = sendCopy;
          selfCopy = self;
          nw_connection_send(connection, v29, v39, 0, v40);

          v11 = 0;
          goto LABEL_40;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [SMBSocket send:];
        }

        goto LABEL_38;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        free(v48[3]);
LABEL_39:
        v11 = 22;
        goto LABEL_40;
      }
    }

    [SMBSocket send:];
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBSocket send:];
  }

  v11 = 12;
LABEL_40:
  objc_destroyWeak(&location);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return v11;
}

void __18__SMBSocket_send___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4)
  {
    free(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v5 = *(*(*(a1 + 56) + 8) + 24);
  if (v5)
  {
    mbuf_freem(v5);
  }

  if (v3 && (error_code = nw_error_get_error_code(v3)) != 0)
  {
    v7 = error_code;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __18__SMBSocket_send___block_invoke_cold_1(a1);
    }

    if (([*(a1 + 32) sr_extflags] & 0x10) == 0)
    {
      smb_rq_dequeue((*(a1 + 40) + 128), *(*(a1 + 40) + 192), (*(a1 + 40) + 336), *(*(a1 + 40) + 328), *(a1 + 32));
    }

    v8 = *(*(a1 + 40) + 384);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __18__SMBSocket_send___block_invoke_26;
    v9[3] = &unk_279B4F9E8;
    v10 = *(a1 + 32);
    v11 = v7;
    dispatch_async(v8, v9);
  }

  else
  {
    [*(a1 + 32) smb_rq_set_extflag:4];
  }
}

- (int)sendRequest:(id)request
{
  requestCopy = request;
  sr_sessionp = [requestCopy sr_sessionp];
  sr_command = [requestCopy sr_command];
  objc_initWeak(&location, self);
  if (self->nw_conn_state != 3)
  {
    goto LABEL_4;
  }

  pthread_mutex_lock(&self->skt_lock);
  if ((self->state & 2) != 0)
  {
    pthread_mutex_unlock(&self->skt_lock);
    smb2_rq_message_id_increment(requestCopy);
    if ((*(sr_sessionp + 553) & 0x288) != 0)
    {
      if ((*(sr_sessionp + 68) & 4) != 0)
      {
        v8 = sr_command < 2;
      }

      else
      {
        if (sr_command <= 3 && sr_command != 2)
        {
          goto LABEL_9;
        }

        v8 = [requestCopy onEncryptedShare] == 0;
      }

LABEL_11:
      smb_rq_enqueue(&self->io_rqlock, self->io_rqlist, &self->timer_running, self->timer, requestCopy);
      if (v8)
      {
        if ((*(sr_sessionp + 552) & 8) == 0 && ([requestCopy sr_flags] & 0x400) == 0)
        {
          send_queue = self->send_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __25__SMBSocket_sendRequest___block_invoke_3;
          block[3] = &unk_279B4FBC0;
          objc_copyWeak(&v20, &location);
          v19 = requestCopy;
          dispatch_async(send_queue, block);

          objc_destroyWeak(&v20);
LABEL_18:
          v7 = 0;
          goto LABEL_19;
        }

        signing_queue = self->_signing_queue;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __25__SMBSocket_sendRequest___block_invoke;
        v21[3] = &unk_279B4FBE8;
        v22 = requestCopy;
        selfCopy = self;
        objc_copyWeak(&v24, &location);
        dispatch_async(signing_queue, v21);
        objc_destroyWeak(&v24);
        v11 = v22;
      }

      else
      {
        v10 = self->_signing_queue;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __25__SMBSocket_sendRequest___block_invoke_4;
        v14[3] = &unk_279B4FBE8;
        v15 = requestCopy;
        selfCopy2 = self;
        objc_copyWeak(&v17, &location);
        dispatch_async(v10, v14);
        objc_destroyWeak(&v17);
        v11 = v15;
      }

      goto LABEL_18;
    }

LABEL_9:
    v8 = 1;
    goto LABEL_11;
  }

  pthread_mutex_unlock(&self->skt_lock);
LABEL_4:
  v7 = 57;
LABEL_19:
  objc_destroyWeak(&location);

  return v7;
}

void __25__SMBSocket_sendRequest___block_invoke(uint64_t a1)
{
  smb2_rq_sign(*(a1 + 32));
  v2 = *(*(a1 + 40) + 200);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __25__SMBSocket_sendRequest___block_invoke_2;
  v3[3] = &unk_279B4FBC0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __25__SMBSocket_sendRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained send:*(a1 + 32)];
}

void __25__SMBSocket_sendRequest___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained send:*(a1 + 32)];
}

void __25__SMBSocket_sendRequest___block_invoke_4(uint64_t a1)
{
  if (smb3_rq_encrypt(*(a1 + 32)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __25__SMBSocket_sendRequest___block_invoke_4_cold_1();
    }

    nw_connection_cancel(*(*(a1 + 40) + 376));
  }

  v2 = *(*(a1 + 40) + 200);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __25__SMBSocket_sendRequest___block_invoke_28;
  v3[3] = &unk_279B4FBC0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __25__SMBSocket_sendRequest___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained send:*(a1 + 32)];
}

- (void)setNetBIOSHeader:(unsigned int *)header nbType:(unsigned __int8)type length:(unsigned int)length
{
  if (self->is_NetBIOS)
  {
    v5 = 0x1FFFF;
  }

  else
  {
    v5 = 0xFFFFFF;
  }

  *header = bswap32(v5 & length | (type << 24));
}

- (void)timeOutCheck
{
  v26.tv_sec = 0;
  *&v26.tv_usec = 0;
  if (!self)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBSocket timeOutCheck];
    }

    return;
  }

  pthread_mutex_lock(&self->skt_lock);
  self->state |= 0x40uLL;
  pthread_mutex_unlock(&self->skt_lock);
  pthread_mutex_lock(&self->io_rqlock);
  v3 = [(NSMutableArray *)self->io_rqlist count];
  if (!v3)
  {
    pthread_mutex_unlock(&self->io_rqlock);
    goto LABEL_33;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = v5;
    v5 = [(NSMutableArray *)self->io_rqlist objectAtIndexedSubscript:v6, v26.tv_sec];

    if (v5)
    {
      if (([v5 sr_extflags] & 4) != 0 && (objc_msgSend(v5, "sr_extflags") & 2) == 0 && objc_msgSend(v5, "sr_command") != 15)
      {
        break;
      }
    }

LABEL_27:
    if (v4 == ++v6)
    {
      pthread_mutex_unlock(&self->io_rqlock);
      goto LABEL_29;
    }
  }

  gettimeofday(&v26, 0);
  tv_sec = v26.tv_sec;
  tv_usec = v26.tv_usec;
  if (v26.tv_usec >= 0)
  {
    v10 = 1000 * v26.tv_usec;
  }

  else
  {
    v10 = 1000 * v26.tv_usec + 1000000000;
  }

  v11 = v26.tv_sec - self->_resp_wait_timeout + (v26.tv_usec >> 31);
  v12 = self->_last_recv.tv_sec;
  tv_nsec = self->_last_recv.tv_nsec;
  sr_timesent = [v5 sr_timesent];
  v16 = v11 <= v12;
  if (v11 == v12)
  {
    v16 = v10 <= tv_nsec;
  }

  if (v16)
  {
    goto LABEL_18;
  }

  v17 = v11 <= sr_timesent;
  if (v11 == sr_timesent)
  {
    v17 = v10 <= v15;
  }

  if (v17)
  {
LABEL_18:
    v18 = -11;
    if (tv_usec >= 0)
    {
      v18 = -10;
    }

    v19 = v18 + tv_sec;
    sr_timesent2 = [v5 sr_timesent];
    v22 = v19 <= sr_timesent2;
    if (v19 == sr_timesent2)
    {
      v22 = v10 <= v21;
    }

    if (!v22)
    {
      v23 = self->_last_echo.tv_sec;
      v24 = v19 <= v23;
      if (v19 == v23)
      {
        v24 = v10 <= self->_last_echo.tv_nsec;
      }

      if (!v24)
      {
        pthread_mutex_unlock(&self->io_rqlock);
        smb2_smb_echo(self->pd);
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBSocket timeOutCheck];
  }

  pthread_mutex_unlock(&self->io_rqlock);
  nw_connection_cancel(self->_connection);
LABEL_29:

LABEL_33:
  pthread_mutex_lock(&self->skt_lock);
  self->state &= ~0x40uLL;
  pthread_cond_signal(&self->skt_lock_cond);
  pthread_mutex_unlock(&self->skt_lock);
}

- (int)writeEnabled
{
  pthread_mutex_lock(&self->skt_lock);
  v3 = (self->state & 0x34) == 0;
  pthread_mutex_unlock(&self->skt_lock);
  return v3;
}

- (timespec)last_recv
{
  objc_copyStruct(v4, &self->_last_recv, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

- (timespec)last_echo
{
  objc_copyStruct(v4, &self->_last_echo, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

- (void)openSocket:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)openSocket:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)openSocket:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)openSocket:(uint64_t)a1 .cold.7(uint64_t a1, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = "[SMBSocket openSocket:]";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: nw_endpoint_create_host failed for <%s> \n", buf, 0x16u);
}

void __24__SMBSocket_openSocket___block_invoke_8_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __24__SMBSocket_openSocket___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __24__SMBSocket_openSocket___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)readData:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)readData:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __22__SMBSocket_readData___block_invoke_cold_1(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __25__SMBSocket_readNBHeader__block_invoke_cold_3(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __18__SMBSocket_send___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 32) sr_messageid];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __25__SMBSocket_sendRequest___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end