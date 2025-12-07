uint64_t swift_distributed_actor_is_remote(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  do
  {
    v2 = *(v1 + 64);
    if (v2 && (*(v2 + 3) & 1) != 0)
    {
      break;
    }

    v3 = *(v1 + 8);
    if (!v3)
    {
      break;
    }

    v1 = *(v1 + 8);
  }

  while ((*(v3 + 32) & 2) != 0);
  return *(a1 + 16);
}

void swift::concurrency::trace::task_status_changed(swift::concurrency::trace *this, swift::AsyncTask *a2, int a3, int a4, int a5, int a6, int a7)
{
  v12 = a2;
  v13 = this;
  if (a6)
  {
    TaskId = swift::AsyncTask::getTaskId(this);
    this = MEMORY[0x1865D4740](TaskId);
  }

  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v15 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v13);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        v17 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v18 = 134219520;
          v19 = swift::AsyncTask::getTaskId(v13);
          v20 = 2048;
          ResumeFunctionForLogging = swift::AsyncTask::getResumeFunctionForLogging(v13, a5);
          v22 = 1024;
          v23 = v12;
          v24 = 1024;
          v25 = a3;
          v26 = 1024;
          v27 = a4;
          v28 = 1024;
          v29 = a6;
          v30 = 1024;
          v31 = a7;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v17, OS_SIGNPOST_EVENT, v16, "task_status_changed", "task=%lld resumefn=%p maxPriority=%u, isCancelled=%{BOOL}d isEscalated=%{BOOL}d, isRunning=%{BOOL}d, isEnqueued=%{BOOL}d", &v18, 0x34u);
        }
      }
    }
  }
}

uint64_t swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::{lambda(void *)#1}::__invoke(BOOL *a1)
{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

{
  getpid();
  result = csops();
  *a1 = result != 0;
  return result;
}

void swift::concurrency::trace::actor_create(const void *a1)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1 && os_signpost_enabled(swift::concurrency::trace::ActorLog))
    {
      swift_getObjectType();
      TypeName = swift_getTypeName();
      v4 = v3;
      v5 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, a1);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        v7 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v8 = 134218498;
          v9 = a1;
          v10 = 1040;
          v11 = v4;
          v12 = 2080;
          v13 = TypeName;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6, "actor_lifetime", "actor=%p typeName:%.*s", &v8, 0x1Cu);
        }
      }
    }
  }
}

unint64_t swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF)
  {
    LODWORD(v1) = 0;
  }

  if (v1 > 514)
  {
    if (v1 == 515 || v1 == 516)
    {
      v2 = a1[1];
      if (v2)
      {
        return v2;
      }

      return 0;
    }
  }

  else
  {
    if ((v1 - 512) < 3)
    {
      v2 = a1[1];
      if (v2)
      {
        return v2;
      }

      return 0;
    }

    if (!v1)
    {
      if ((a1[4] & 2) != 0)
      {
        v2 = a1[8];
        if (v2)
        {
          return v2;
        }
      }

      return 0;
    }
  }

  return 0;
}

void swift::concurrency::trace::actor_enqueue(void *ptr, swift::AsyncTask *a2)
{
  if (a2 && !*(a2 + 32))
  {
    if (qword_1ED42EA38 != -1)
    {
      swift::runJobInEstablishedExecutorContext(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          v6 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v7 = 134218240;
            v8 = ptr;
            v9 = 2048;
            TaskId = swift::AsyncTask::getTaskId(a2);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, v5, "actor_enqueue", "actor=%p task=%lld", &v7, 0x16u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_state_changed(void *ptr, uint64_t a2, int a3, int a4, int a5, int a6)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v12 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        v14 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v15 = 134219264;
          v16 = ptr;
          v17 = 1024;
          v18 = a2 != 0;
          v19 = 1024;
          v20 = a3;
          v21 = 1024;
          v22 = a4;
          v23 = 1024;
          v24 = a5;
          v25 = 1024;
          v26 = a6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v14, OS_SIGNPOST_EVENT, v13, "actor_state_changed", "actor=%p needsPreprocessing=%d state=%u isDistributedRemote=%{BOOL}d isPriorityEscalated=%{BOOL}d, maxPriority=%u", &v15, 0x2Au);
        }
      }
    }
  }
}

void anonymous namespace::ProcessOutOfLineJob::process(uint64_t a1)
{
  v1 = *(a1 + 64);
  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);
  v29 = 1;
  LOBYTE(v30) = 0;
  v31 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v25 = v1;
  v26 = 0;
  PreferredTaskExecutor = 0;
  v28 = 0;
  v32 = *(StatusReg + 832);
  *(StatusReg + 832) = &v25;
  v4 = MEMORY[0x1E69E7CE8];
  while (1)
  {
    v5 = v1[8];
    if (v5)
    {
      break;
    }

    {
      goto LABEL_46;
    }

LABEL_36:
    if (*v1)
    {
      v14 = *v1;
    }

    else
    {
      v14 = 0;
    }

    do
    {
      v15 = *(v14 + 64);
      if (v15 && (*(v15 + 3) & 1) != 0)
      {
        break;
      }

      v16 = *(v14 + 8);
      if (!v16)
      {
        break;
      }

      v14 = *(v14 + 8);
    }

    while ((*(v16 + 32) & 2) != 0);
    _X22 = 0;
    _X23 = 0;
    __asm { CASP            X22, X23, X22, X23, [X8] }

    if (*v4)
    {
      (*v4)(v1);
    }
  }

  v6 = *(v5 + 33);
  if (v6 > 9)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  if (v6 > 0x11)
  {
    v7 = 2;
  }

  if (v6 > 0x15)
  {
    v7 = 1;
  }

  if (v6 <= 0x19)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v5 + 16);
  v1[8] = v9;
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = *(v9 + 33);
  if (v10 > 0x19)
  {
    if (!v8)
    {
      goto LABEL_32;
    }

LABEL_31:
    v1[v8 + 9] = 0;
    goto LABEL_32;
  }

  if (v10 <= 0x15)
  {
    if (v10 > 9)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    if (v10 <= 0x11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (v8 != v12)
    {
      goto LABEL_31;
    }
  }

  else if (v8 != 1)
  {
    goto LABEL_31;
  }

LABEL_32:
  swift::concurrency::trace::actor_dequeue(v1, v5);
  if (!*(v5 + 32))
  {
    PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v5);
    v28 = v13;
  }

  swift::runJobInEstablishedExecutorContext(v5);
  v1 = v25;
  if (v25 && !v26)
  {
    goto LABEL_36;
  }

LABEL_46:
  if (v31 == 1)
  {
    v24 = v30;
    if (*(StatusReg + 224) != v30)
    {
      v24 = voucher_adopt();
    }

    if (v24 + 1 >= 2)
    {
      os_release(v24);
    }
  }

  *(StatusReg + 832) = v32;
}

uint64_t anonymous namespace::DefaultActorImpl::tryLock(_anonymous_namespace_::DefaultActorImpl *this, int a2)
{
  if (*this)
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v5 = *(v4 + 64);
    if (v5 && (*(v5 + 3) & 1) != 0)
    {
      break;
    }

    v6 = *(v4 + 8);
    if (!v6)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while ((*(v6 + 32) & 2) != 0);
  _X22 = 0;
  _X23 = 0;
  v9 = *(this + 16);
  __asm { CASP            X22, X23, X22, X23, [X8] }

  _X0 = _X22;
  v16 = _X22;
  if (a2)
  {
LABEL_10:
    while (1)
    {
      _X24 = v16 & 0xFFFFFFE8 | 2;
      v18 = _X0 & 0xFFFFFFFF00000000 | v16;
      _X1 = 0;
      __asm { CASPA           X0, X1, X24, X25, [X9] }

      if (_X0 == v18)
      {
        break;
      }

      v16 = _X0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (*MEMORY[0x1E69E7CE8])
    {
      (*MEMORY[0x1E69E7CE8])(this);
    }

    swift::concurrency::trace::actor_state_changed(this, 0, 2, v9, 0, BYTE1(v16));
    if (a2)
    {
    }

    return 1;
  }

  else
  {
LABEL_9:
    if ((v16 & 7) - 1 >= 2)
    {
      goto LABEL_10;
    }

    return 0;
  }
}

uint64_t anonymous namespace::DefaultActorImpl::unlock(_anonymous_namespace_::DefaultActorImpl *this, int a2)
{
  if (*this)
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v5 = *(v4 + 64);
    if (v5 && (*(v5 + 3) & 1) != 0)
    {
      break;
    }

    v6 = *(v4 + 8);
    if (!v6)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while ((*(v6 + 32) & 2) != 0);
  _X26 = 0;
  _X27 = 0;
  v9 = *(this + 16);
  __asm { CASP            X26, X27, X26, X27, [X8] }

  v15 = MEMORY[0x1E69E7CF0];
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(this);
  }

  if ((_X26 & 7) == 3)
  {
LABEL_17:
    swift::concurrency::trace::actor_deallocate(this);
    swift_deallocClassInstance();
  }

  else
  {
    while (1)
    {
      if (*(this + 8))
      {
        if (!a2)
        {
          return 0;
        }

        v16 = _X26 & 0xFFFFFFE8 | 1;
      }

      else
      {
        v16 = _X26 & 0xFFFF00E8;
      }

      v17 = _X26;
      _X22 = v16;
      _X27 = 0;
      __asm { CASPL           X26, X27, X22, X23, [X10] }

      if (_X26 == v17)
      {
        break;
      }

      if ((_X26 & 7) == 3)
      {
        goto LABEL_17;
      }
    }

    if (*v15)
    {
      (*v15)(this, 0);
    }

    v21 = v16 & 7;
    v22 = 255;
    if (v21 > 1)
    {
      if (v21 == 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = 255;
      }

      if (v21 == 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v25;
      }
    }

    else if ((v16 & 7) != 0)
    {
      if (v21 == 1)
      {
        swift::concurrency::trace::actor_state_changed(this, 0, 1, v9, 0, BYTE1(v16));
        v23 = swift_slowAlloc();
        *v23 = swift::jobHeapMetadataPtr;
        *(v23 + 8) = 3;
        *(v23 + 32) = v16 & 0xFF00 | 0xC1;
        *(v23 + 44) = 0;
        *(v23 + 36) = 0;
        *(v23 + 52) = 0;
        v24 = v23;
        *(v23 + 40) = voucher_copy();
        v24[8] = this;
        swift_task_enqueueGlobal(v24);
        return 1;
      }
    }

    else
    {
      v22 = 0;
    }

    swift::concurrency::trace::actor_state_changed(this, 0, v22, v9, 0, BYTE1(v16));
  }

  return 1;
}

uint64_t anonymous namespace::DefaultActorImpl::handleUnprioritizedJobs(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = v2;
      v2 = a2;
      a2 = *(a2 + 16);
      *(v2 + 16) = v3;
    }

    while (a2);
    v4 = *(v2 + 33);
    if (v4 > 9)
    {
      LODWORD(v5) = 3;
    }

    else
    {
      LODWORD(v5) = 4;
    }

    if (v4 > 0x11)
    {
      LODWORD(v5) = 2;
    }

    if (v4 > 0x15)
    {
      LODWORD(v5) = 1;
    }

    if (v4 <= 0x19)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0;
    }

    v6 = result + 72;
    while (1)
    {
      v7 = *(v2 + 16);
      v8 = v7 == 0;
      v9 = v2;
      if (v7)
      {
        break;
      }

      v10 = 0;
      v12 = 0x80000000;
      v9 = v2;
LABEL_32:
      v14 = v10;
      v10 = v9;
      if ((v5 & 0x80000000) != 0)
      {
LABEL_36:
        *(v10 + 16) = *(result + 64);
        *(result + 64) = v2;
        *(v6 + 8 * v5) = v10;
        v2 = v14;
        v5 = v12;
        if (v8)
        {
          return result;
        }
      }

      else
      {
LABEL_33:
        v15 = v5;
        while (1)
        {
          v16 = *(v6 + 8 * v15);
          v17 = v15;
          if (v16)
          {
            break;
          }

          --v15;
          if (v17 <= 0)
          {
            goto LABEL_36;
          }
        }

        *(v10 + 16) = *(v16 + 16);
        *(*(v6 + 8 * v15) + 16) = v2;
        v2 = v14;
        *(v6 + 8 * v5) = v10;
        v5 = v12;
        if (v8)
        {
          return result;
        }
      }
    }

    do
    {
      v10 = v7;
      v11 = *(v7 + 33);
      if (v11 <= 0x19)
      {
        if (v11 > 9)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }

        if (v11 > 0x11)
        {
          v13 = 2;
        }

        if (v11 <= 0x15)
        {
          v12 = v13;
        }

        else
        {
          v12 = 1;
        }

        if (v12 != v5)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v12 = 0;
        if (v5)
        {
          goto LABEL_32;
        }
      }

      v7 = *(v10 + 16);
      v9 = v10;
    }

    while (v7);
    v14 = 0;
    v8 = 1;
    v12 = v5;
    goto LABEL_33;
  }

  return result;
}

void swift::concurrency::trace::actor_dequeue(void *ptr, swift::AsyncTask *a2)
{
  if (a2 && !*(a2 + 32))
  {
    v21 = v2;
    v22 = v3;
    if (qword_1ED42EA38 != -1)
    {
      v13 = ptr;
      v14 = a2;
      swift::runJobInEstablishedExecutorContext(ptr);
      a2 = v14;
      ptr = v13;
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || (v4 = ptr, v5 = a2, inited = _os_trace_lazy_init_completed_4swift(), a2 = v5, v7 = inited, ptr = v4, v7))
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        v15 = ptr;
        v16 = a2;
        swift::runJobInEstablishedExecutorContext();
        a2 = v16;
        ptr = v15;
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v8 = ptr;
        v9 = a2;
        v10 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = v10;
          v12 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v17 = 134218240;
            v18 = v8;
            v19 = 2048;
            TaskId = swift::AsyncTask::getTaskId(v9);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v12, OS_SIGNPOST_EVENT, v11, "actor_dequeue", "actor=%p task=%lld", &v17, 0x16u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_note_job_queue(const void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = swift::concurrency::trace::ActorLog;
      if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
      {
        if (a2)
        {
          v7 = a2;
          v8 = 0;
          do
          {
            if (!*(v7 + 32))
            {
              ++v8;
            }

            v7 = a3();
          }

          while (v7);
          v6 = swift::concurrency::trace::ActorLog;
        }

        else
        {
          v8 = 0;
        }

        v9 = os_signpost_id_make_with_pointer(v6, a1);
        if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL)
        {
          v10 = v9;
          v11 = swift::concurrency::trace::ActorLog;
          if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
          {
            v12 = 134218240;
            v13 = a1;
            v14 = 1024;
            v15 = v8;
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v11, OS_SIGNPOST_EVENT, v10, "actor_job_queue", "actor=%p jobCount=%u", &v12, 0x12u);
          }
        }
      }
    }
  }
}

void swift::concurrency::trace::actor_deallocate(void *ptr)
{
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::ActorLog, ptr);
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v3 = v2;
        v4 = swift::concurrency::trace::ActorLog;
        if (os_signpost_enabled(swift::concurrency::trace::ActorLog))
        {
          v5 = 134217984;
          v6 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "actor_deallocate", "actor=%p", &v5, 0xCu);
        }
      }
    }
  }
}

uint64_t swift_task_setDefaultExecutorCheckingFlags(void *a1)
{
  result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
  if (result)
  {
    *a1 = result;
  }

  return result;
}

void swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift *this, uint64_t *a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v24 = a2;
  v25 = a3;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v23[0] = _X0;
  v23[1] = 0;
  if ((_X0 & 0x4800) == 0x4000)
  {
    v12 = *(this + 20);
    v21[0] = &v22;
    v21[1] = &v24;
    v22 = v12;
    swift::updateStatusRecord(this, v12, __swift::__runtime::llvm::function_ref<void ()(void)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(void)#1}>, v21, v23, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, &v20);
  }

  else
  {
    v14 = swift::_swift_task_alloc_specific(this, 0x30);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 32) = 4;
    *(v14 + 40) = this;
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(this + 20) = v14;
    swift::addStatusRecord(this, v14, v23, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#2}>, v21);
    if ((BYTE1(v23[0]) & 8) != 0)
    {
      swift_task_exitThreadLocalContext();
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = *(StatusReg + 832);
      v17 = *(v16 + 40);
      if (*(StatusReg + 224) != v17)
      {
        v17 = voucher_adopt();
      }

      *(this + 5) = v17;
      if (*(v16 + 48) == 1)
      {
        *(v16 + 48) = 0;
      }
    }
  }

  v18 = *(this + 8);
  v19 = LOBYTE(v23[0]);
  *(this + 33) = v23[0];
  swift::concurrency::trace::task_flags_changed(this, v19, HIBYTE(v18) & 1, (v18 >> 25) & 1, (v18 >> 26) & 1, (v18 >> 28) & 1);
  if (swift_task_enqueue::Override == 1)
  {
    swift_task_enqueueImpl(this, v24, v25);
  }

  else if (swift_task_enqueue::Override)
  {
    swift_task_enqueue::Override(this, v24, v25, swift_task_enqueueImpl);
  }

  else
  {
    swift_task_enqueueSlow(this, v24, v25);
  }
}

void swift::concurrency::trace::task_flags_changed(swift::concurrency::trace *this, swift::AsyncTask *a2, int a3, int a4, int a5, int a6)
{
  v10 = a2;
  if (qword_1ED42EA38 != -1)
  {
    swift::runJobInEstablishedExecutorContext(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v12 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        v14 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v15 = 134219264;
          TaskId = swift::AsyncTask::getTaskId(this);
          v17 = 1024;
          v18 = v10;
          v19 = 1024;
          v20 = a3;
          v21 = 1024;
          v22 = a4;
          v23 = 1024;
          v24 = a5;
          v25 = 1024;
          v26 = a6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v14, OS_SIGNPOST_EVENT, v13, "task_flags_changed", "task=%lld jobPriority=%u isChildTask=%{BOOL}d, isFuture=%{BOOL}d isGroupChildTask=%{BOOL}d isAsyncLetTask=%{BOOL}d", &v15, 0x2Au);
        }
      }
    }
  }
}

__n128 __swift::__runtime::llvm::function_ref<void ()(void)>::callback_fn<swift::AsyncTask::flagAsAndEnqueueOnExecutor(swift::SerialExecutorRef)::{lambda(void)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **a1;
  v2[2].n128_u32[0] = 4;
  result = *v1;
  v2[1] = *v1;
  return result;
}

uint64_t anonymous namespace::IsolatedDeinitJob::process(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);

  return v4(v1);
}

uint64_t _GLOBAL__sub_I_Actor_cpp()
{
  result = swift_bincompat_selectDefaultIsCurrentExecutorCheckingMode();
  if (result)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  unexpectedExecutorLogLevel = v1;
  return result;
}

uint64_t swift::asyncLet_addImpl(unint64_t this, swift::AsyncTask *a2, swift::AsyncLet *a3)
{
  *a2 = 1;
  *(a2 + 1) = 0;
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *(a2 + 2) = this;
  *(a2 + 3) = v3 | this & 0xFFFFFFFFFFFFFFF3;
  v5 = &v6;
  v6 = this;
  return swift::addStatusRecordToSelf(a2, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::asyncLet_addImpl(swift::AsyncTask *,swift::AsyncLet *,BOOL)::$_0>, &v5);
}

char *swift_asyncLet_start(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v6[1] = a2;
  v6[2] = a1;
  v6[0] = 2;
  return swift_task_create(0x1000uLL, v6, a3, a4, a5);
}

char *swift_asyncLet_begin(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v7[3] = a6;
  v7[0] = 3;
  v7[1] = a2;
  return swift_task_create(0x1000uLL, v7, a3, a4, a5);
}

uint64_t swift_asyncLet_wait(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  if (swift_asyncLet_wait::Override == 1)
  {
    return swift_task_future_wait(a1, (*(a2 + 24) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  }

  if (swift_asyncLet_wait::Override)
  {
    return swift_asyncLet_wait::Override(a1, a2, a3, a4, swift_asyncLet_waitImpl);
  }

  return swift_asyncLet_waitSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_waitSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  Override_asyncLet_wait = swift::getOverride_asyncLet_wait(a1);
  if (Override_asyncLet_wait)
  {
    swift_asyncLet_wait::Override = Override_asyncLet_wait;

    return Override_asyncLet_wait(a1, a2, a3, a4, swift_asyncLet_waitImpl);
  }

  else
  {
    swift_asyncLet_wait::Override = 1;

    return swift_asyncLet_waitImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_wait_throwing(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (swift_asyncLet_wait_throwing::Override == 1)
  {
    return swift_task_future_wait_throwing(a1, (*(a2 + 24) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  }

  if (swift_asyncLet_wait_throwing::Override)
  {
    return swift_asyncLet_wait_throwing::Override(a1, a2, a3, a4, swift_asyncLet_wait_throwingImpl);
  }

  return swift_asyncLet_wait_throwingSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_wait_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  Override_asyncLet_wait_throwing = swift::getOverride_asyncLet_wait_throwing(a1);
  if (Override_asyncLet_wait_throwing)
  {
    swift_asyncLet_wait_throwing::Override = Override_asyncLet_wait_throwing;

    return Override_asyncLet_wait_throwing(a1, a2, a3, a4, swift_asyncLet_wait_throwingImpl);
  }

  else
  {
    swift_asyncLet_wait_throwing::Override = 1;

    return swift_asyncLet_wait_throwingImpl(a1, a2, a3);
  }
}

void swift_asyncLet_end(swift *a1)
{
  v2 = swift_asyncLet_end::Override;
  if (swift_asyncLet_end::Override == 1)
  {
    v3 = *(a1 + 3);
    swift_task_cancel((v3 & 0xFFFFFFFFFFFFFFF0));
    swift::removeStatusRecordFromSelf(a1, 0, v5);
    Current = swift_task_getCurrent();

    swift::_swift_task_dealloc_specific(Current, (v3 & 0xFFFFFFFFFFFFFFF0), v7, v8);
  }

  else if (swift_asyncLet_end::Override)
  {

    v2(a1, swift_asyncLet_endImpl);
  }

  else
  {

    swift_asyncLet_endSlow(a1);
  }
}

void swift_asyncLet_endImpl(swift::AsyncLet *a1)
{
  v2 = *(a1 + 3);
  swift_task_cancel((v2 & 0xFFFFFFFFFFFFFFF0));
  swift::removeStatusRecordFromSelf(a1, 0, v3);
  Current = swift_task_getCurrent();

  swift::_swift_task_dealloc_specific(Current, (v2 & 0xFFFFFFFFFFFFFFF0), v5, v6);
}

void swift_asyncLet_endSlow(swift *a1)
{
  Override_asyncLet_end = swift::getOverride_asyncLet_end(a1);
  if (Override_asyncLet_end)
  {
    swift_asyncLet_end::Override = Override_asyncLet_end;

    (Override_asyncLet_end)(a1, swift_asyncLet_endImpl);
  }

  else
  {
    swift_asyncLet_end::Override = 1;
    v3 = *(a1 + 3);
    swift_task_cancel((v3 & 0xFFFFFFFFFFFFFFF0));
    swift::removeStatusRecordFromSelf(a1, 0, v4);
    Current = swift_task_getCurrent();

    swift::_swift_task_dealloc_specific(Current, (v3 & 0xFFFFFFFFFFFFFFF0), v6, v7);
  }
}

uint64_t swift_asyncLet_get(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  if (swift_asyncLet_get::Override == 1)
  {
    v4 = *(a1 + 3);
    if ((v4 & 4) != 0)
    {
      return a3();
    }

    else
    {
      *(a1 + 3) = v4 | 4;
      return swift_task_future_wait(a2, (v4 & 0xFFFFFFFFFFFFFFF0), a3, a4);
    }
  }

  else if (swift_asyncLet_get::Override)
  {
    return swift_asyncLet_get::Override(a1, a2, a3, a4, swift_asyncLet_getImpl);
  }

  else
  {
    return swift_asyncLet_getSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_getImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v4 = *(a1 + 24);
  if ((v4 & 4) != 0)
  {
    return a3();
  }

  *(a1 + 24) = v4 | 4;
  return swift_task_future_wait(a2, (v4 & 0xFFFFFFFFFFFFFFF0), a3, a4);
}

uint64_t swift_asyncLet_getSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v8 = swift::getOverride_asyncLet_get(a1);
  if (v8)
  {
    swift_asyncLet_get::Override = v8;

    return v8(a1, a2, a3, a4, swift_asyncLet_getImpl);
  }

  else
  {
    swift_asyncLet_get::Override = 1;

    return swift_asyncLet_getImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_get_throwing(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_get_throwing::Override == 1)
  {
    v5 = a1[3];
    if ((v5 & 4) != 0)
    {
      return a3();
    }

    v6 = a4 + 1;
    if (a3)
    {
      *v6 = a3;
      if (v4)
      {
LABEL_5:
        v7 = v4;
LABEL_9:
        *a4 = v7;
        a4[2] = a1;
        return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_get_throwing_continuation, a1 + 4);
      }
    }

    else
    {
      *v6 = 0;
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (swift_asyncLet_get_throwing::Override)
  {
    return swift_asyncLet_get_throwing::Override(a1, a2, a3, a4, swift_asyncLet_get_throwingImpl);
  }

  else
  {
    return swift_asyncLet_get_throwingSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_get_throwingImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return a3();
  }

  v6 = a4 + 1;
  if (!a3)
  {
    *v6 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  *v6 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = v4;
LABEL_8:
  *a4 = v7;
  a4[2] = a1;
  return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_get_throwing_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_get_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  throwing = swift::getOverride_asyncLet_get_throwing(a1);
  if (throwing)
  {
    swift_asyncLet_get_throwing::Override = throwing;

    return throwing(a1, a2, a3, a4, swift_asyncLet_get_throwingImpl);
  }

  else
  {
    swift_asyncLet_get_throwing::Override = 1;

    return swift_asyncLet_get_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_consume::Override == 1)
  {
    v5 = a1[3];
    if ((v5 & 4) != 0)
    {
      return asyncLet_finish_after_task_completion(a1, a3, a3);
    }

    else
    {
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      *a4 = v6;
      if (a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = 0;
      }

      a4[1] = v8;
      a4[2] = a1;
      return swift_task_future_wait(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_continuation, a1 + 4);
    }
  }

  else if (swift_asyncLet_consume::Override)
  {
    return swift_asyncLet_consume::Override(a1, a2, a3, a4, swift_asyncLet_consumeImpl);
  }

  else
  {
    return swift_asyncLet_consumeSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consumeImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return asyncLet_finish_after_task_completion(a1, a3, a3);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  a4[1] = v8;
  a4[2] = a1;
  return swift_task_future_wait(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_consumeSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_consume = swift::getOverride_asyncLet_consume(a1);
  if (Override_asyncLet_consume)
  {
    swift_asyncLet_consume::Override = Override_asyncLet_consume;

    return Override_asyncLet_consume(a1, a2, a3, a4, swift_asyncLet_consumeImpl);
  }

  else
  {
    swift_asyncLet_consume::Override = 1;

    return swift_asyncLet_consumeImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume_throwing(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_consume_throwing::Override == 1)
  {
    v5 = a1[3];
    if ((v5 & 4) != 0)
    {
      return asyncLet_finish_after_task_completion(a1, a3, a3);
    }

    v6 = (a4 + 1);
    if (a3)
    {
      *v6 = a3;
      if (v4)
      {
LABEL_5:
        v7 = v4;
LABEL_9:
        *a4 = v7;
        a4[2] = a1;
        return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_throwing_continuation, a1 + 4);
      }
    }

    else
    {
      *v6 = 0;
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (swift_asyncLet_consume_throwing::Override)
  {
    return swift_asyncLet_consume_throwing::Override(a1, a2, a3, a4, swift_asyncLet_consume_throwingImpl);
  }

  else
  {
    return swift_asyncLet_consume_throwingSlow(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_consume_throwingImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    return asyncLet_finish_after_task_completion(a1, a3, a3);
  }

  v6 = (a4 + 1);
  if (!a3)
  {
    *v6 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  *v6 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = v4;
LABEL_8:
  *a4 = v7;
  a4[2] = a1;
  return swift_task_future_wait_throwing(a2, (v5 & 0xFFFFFFFFFFFFFFF0), _asyncLet_consume_throwing_continuation, (a1 + 32));
}

uint64_t swift_asyncLet_consume_throwingSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_consume_throwing = swift::getOverride_asyncLet_consume_throwing(a1);
  if (Override_asyncLet_consume_throwing)
  {
    swift_asyncLet_consume_throwing::Override = Override_asyncLet_consume_throwing;

    return Override_asyncLet_consume_throwing(a1, a2, a3, a4, swift_asyncLet_consume_throwingImpl);
  }

  else
  {
    swift_asyncLet_consume_throwing::Override = 1;

    return swift_asyncLet_consume_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_asyncLet_finish(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (swift_asyncLet_finish::Override == 1)
  {
    return swift_asyncLet_finishImpl(a1, a2, a3, a4);
  }

  if (swift_asyncLet_finish::Override)
  {
    return swift_asyncLet_finish::Override(a1, a2, a3, a4, swift_asyncLet_finishImpl);
  }

  return swift_asyncLet_finishSlow(a1, a2, a3, a4);
}

uint64_t swift_asyncLet_finishImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v8 = *(a1 + 24);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF0);
  if ((v8 & 4) != 0)
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFFF0) + 0x20);
    v13 = 192;
    if ((v12 & 0x1000000) == 0)
    {
      v13 = 176;
    }

    (*(*(*(v9 + v13 + ((v12 >> 23) & 8) + 8) - 8) + 8))(a2);

    return asyncLet_finish_after_task_completion(a1, a3, v14);
  }

  else
  {
    swift_task_cancel(v9);
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
    if (a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0;
    }

    a4[1] = v16;
    a4[2] = a1;
    a4[3] = a2;
    v17 = (*(a1 + 24) & 0xFFFFFFFFFFFFFFF0);

    return swift_task_future_wait_throwing(a2, v17, _asyncLet_finish_continuation, (a1 + 32));
  }
}

uint64_t swift_asyncLet_finishSlow(swift *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  Override_asyncLet_finish = swift::getOverride_asyncLet_finish(a1);
  if (Override_asyncLet_finish)
  {
    swift_asyncLet_finish::Override = Override_asyncLet_finish;

    return Override_asyncLet_finish(a1, a2, a3, a4, swift_asyncLet_finishImpl);
  }

  else
  {
    swift_asyncLet_finish::Override = 1;

    return swift_asyncLet_finishImpl(a1, a2, a3, a4);
  }
}

uint64_t _asyncLet_get_throwing_continuation()
{
  if (!v0)
  {
    *(*(v1 + 16) + 24) |= 4uLL;
  }

  if (*(v1 + 8))
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  return v2();
}

uint64_t asyncLet_finish_after_task_completion(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(a1 + 24);
  swift::removeStatusRecordFromSelf(a1, 0, a3);
  swift::AsyncTask::~AsyncTask((v4 & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + 24) & 8) != 0)
  {
    v4 & 0xFFFFFFFFFFFFFFF0;
  }

  return a2();
}

uint64_t _asyncLet_consume_continuation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3)
  {
    v4 = v3[1];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    return asyncLet_finish_after_task_completion(v3[2], v5, a3);
  }

  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v4;
  return asyncLet_finish_after_task_completion(v3[2], v5, a3);
}

uint64_t _asyncLet_consume_throwing_continuation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3)
  {
    v4 = v3[1];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    return asyncLet_finish_after_task_completion(v3[2], v5, a3);
  }

  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v4;
  return asyncLet_finish_after_task_completion(v3[2], v5, a3);
}

uint64_t _asyncLet_finish_continuation()
{
  v2 = v0;
  v3 = v1[2];
  if (v2)
  {
    MEMORY[0x1865D4950]();
    if (*v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v1[1];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v7 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFFF0) + 0x20);
  v8 = 192;
  if ((v7 & 0x1000000) == 0)
  {
    v8 = 176;
  }

  (*(*(*((((*(v3 + 24) & 0xFFFFFFFFFFFFFFF0) + v8) | (v7 >> 23) & 8) + 8) - 8) + 8))(v1[3]);
  if (!*v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v1[1];
  if (v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:

  return asyncLet_finish_after_task_completion(v3, v6, v4);
}

uint64_t swift_get_time(__darwin_time_t *a1, uint64_t *a2, const char *a3, char *a4)
{
  if (a3 == 2)
  {
    v6 = _CLOCK_UPTIME_RAW;
  }

  else
  {
    if (a3 != 1)
    {
      swift::swift_Concurrency_fatalError(0, "Fatal error: invalid clock ID %d\n", a3, a4, a3);
    }

    v6 = _CLOCK_MONOTONIC_RAW;
  }

  result = clock_gettime(v6, &__tp);
  tv_nsec = __tp.tv_nsec;
  *a1 = __tp.tv_sec;
  *a2 = tv_nsec;
  return result;
}

uint64_t swift_get_clock_res(__darwin_time_t *a1, uint64_t *a2, const char *a3, char *a4)
{
  if (a3 == 2)
  {
    v6 = _CLOCK_UPTIME_RAW;
  }

  else
  {
    if (a3 != 1)
    {
      swift::swift_Concurrency_fatalError(0, "Fatal error: invalid clock ID %d\n", a3, a4, a3);
    }

    v6 = _CLOCK_MONOTONIC_RAW;
  }

  result = clock_getres(v6, &__res);
  tv_nsec = __res.tv_nsec;
  *a1 = __res.tv_sec;
  *a2 = tv_nsec;
  return result;
}

int *swift_sleep(__darwin_time_t a1, uint64_t a2)
{
  v3.tv_sec = a1;
  v3.tv_nsec = a2;
  do
  {
    result = nanosleep(&v3, &v3);
    if (result != -1)
    {
      break;
    }

    result = __error();
  }

  while (*result == 4);
  return result;
}

uint64_t swift_task_invokeSwiftCheckIsolated(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    ObjectType = swift_getObjectType();
    _task_serialExecutor_checkIsolated(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t swift_task_invokeSwiftIsIsolatingCurrentContext(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();

  return _task_serialExecutor_isIsolatingCurrentContext(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

unint64_t swift_task_getJobTaskId(uint64_t a1)
{
  if (!a1 || *(a1 + 32))
  {
    return *(a1 + 36);
  }

  else
  {
    return swift::AsyncTask::getTaskId(a1);
  }
}

uint64_t swift::getIsIsolatingCurrentContextDecisionFromInt(uint64_t this, signed __int8 a2, const char *a3, char *a4)
{
  if ((this + 1) >= 3)
  {
    swift::swift_Concurrency_fatalError(0, "Unexpected IsIsolatingCurrentContextDecision value", a3, a4, v4, v5);
  }

  return this;
}

uint64_t swift_task_enqueueGlobal(void *ptr)
{
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(ptr);
  }

  swift::concurrency::trace::job_enqueue_global(ptr);
  v3 = swift_task_enqueueGlobal_hook;
  if (swift_task_enqueueGlobal_hook)
  {

    return v3(ptr, swift_task_enqueueGlobalOrig);
  }

  else
  {

    return swift_task_enqueueGlobalImpl(ptr, v2);
  }
}

void swift::concurrency::trace::job_enqueue_global(void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v3 = v2;
          v4 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v5 = 134217984;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "job_enqueue_global", "task=%lld", &v5, 0xCu);
          }
        }
      }
    }
  }
}

uint64_t swift_task_enqueueGlobalWithDelay(uint64_t a1, void *a2)
{
  swift::concurrency::trace::job_enqueue_global_with_delay(a1, a2);
  v4 = swift_task_enqueueGlobalWithDelay_hook;
  if (swift_task_enqueueGlobalWithDelay_hook)
  {

    return v4(a1, a2, swift_task_enqueueGlobalWithDelayOrig);
  }

  else
  {

    return swift_task_enqueueGlobalWithDelayImpl(a1, a2);
  }
}

void swift::concurrency::trace::job_enqueue_global_with_delay(uint64_t a1, void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(a1);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = v4;
          v6 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v7 = 134218240;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            v9 = 2048;
            v10 = a1;
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, v5, "job_enqueue_global_with_delay", "task=%lld delay=%llu", &v7, 0x16u);
          }
        }
      }
    }
  }
}

uint64_t swift_task_enqueueGlobalWithDeadline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_task_enqueueGlobalWithDeadline_hook)
  {
    return swift_task_enqueueGlobalWithDeadline_hook(a1, a2, a3, a4, a5, a6, swift_task_enqueueGlobalWithDeadlineOrig);
  }

  else
  {
    return swift_task_enqueueGlobalWithDeadlineImpl(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t swift_task_checkIsolated(uint64_t a1, uint64_t a2)
{
  if (swift_task_checkIsolated_hook)
  {
    return swift_task_checkIsolated_hook(a1, a2, swift_task_checkIsolatedOrig);
  }

  else
  {
    return swift_task_checkIsolatedImpl(a1, a2);
  }
}

uint64_t swift_task_isIsolatingCurrentContext(uint64_t a1, uint64_t a2)
{
  if (swift_task_isIsolatingCurrentContext_hook)
  {
    return swift_task_isIsolatingCurrentContext_hook(a1, a2, swift_task_isIsolatingCurrentContextOrig);
  }

  else
  {
    return swift_task_isIsolatingCurrentContextImpl(a1, a2);
  }
}

uint64_t swift_task_isOnExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_isOnExecutor_hook;
  if (swift_task_isOnExecutor_hook)
  {

    return v4(a1, a2, a3, swift_task_isOnExecutorImpl);
  }

  else
  {
    ExecutorRef = _task_serialExecutor_getExecutorRef(a1, a2, a3);

    return swift_task_isCurrentExecutor(ExecutorRef, v6);
  }
}

uint64_t swift_task_isOnExecutorImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExecutorRef = _task_serialExecutor_getExecutorRef(a1, a2, a3);

  return swift_task_isCurrentExecutor(ExecutorRef, v4);
}

uint64_t swift_task_enqueueMainExecutor(void *a1)
{
  swift::concurrency::trace::job_enqueue_main_executor(a1);
  v3 = swift_task_enqueueMainExecutor_hook;
  if (swift_task_enqueueMainExecutor_hook)
  {

    return v3(a1, swift_task_enqueueMainExecutorOrig);
  }

  else
  {

    return swift_task_enqueueMainExecutorImpl(a1, v2);
  }
}

void swift::concurrency::trace::job_enqueue_main_executor(void *ptr)
{
  if (ptr && !*(ptr + 32))
  {
    if (qword_1ED42EA58 != -1)
    {
      swift::concurrency::trace::job_enqueue_global(ptr);
    }

    if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
    {
      if (swift::concurrency::trace::LogsToken != -1)
      {
        swift::runJobInEstablishedExecutorContext();
      }

      if (swift::concurrency::trace::TracingEnabled == 1)
      {
        v2 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v3 = v2;
          v4 = swift::concurrency::trace::TaskLog;
          if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
          {
            v5 = 134217984;
            TaskId = swift::AsyncTask::getTaskId(ptr);
            _os_signpost_emit_with_name_impl(&dword_1815A3000, v4, OS_SIGNPOST_EVENT, v3, "job_enqueue_main_executor", "task=%lld", &v5, 0xCu);
          }
        }
      }
    }
  }
}

uint64_t swift_task_getMainExecutor(uint64_t a1)
{
  if (swift_task_getMainExecutor_hook)
  {
    return swift_task_getMainExecutor_hook(swift_task_getMainExecutorOrig);
  }

  else
  {
    return swift_task_getMainExecutorImpl(a1, 0);
  }
}

uint64_t swift_task_isMainExecutor(uint64_t a1, uint64_t a2)
{
  if (swift_task_isMainExecutor_hook)
  {
    return swift_task_isMainExecutor_hook(a1, a2, swift_task_isMainExecutorOrig);
  }

  else
  {
    return swift_task_isMainExecutorImpl(a1, a2);
  }
}

uint64_t swift_task_donateThreadToGlobalExecutorUntil(uint64_t a1, uint64_t a2)
{
  if (swift_task_donateThreadToGlobalExecutorUntil_hook)
  {
    return swift_task_donateThreadToGlobalExecutorUntil_hook(a1, a2, swift_task_donateThreadToGlobalExecutorUntilOrig);
  }

  else
  {
    return swift_task_donateThreadToGlobalExecutorUntilImpl(a1, a2);
  }
}

void swift_createDefaultExecutorsOnce(uint64_t result, uint64_t a2)
{
  if (swift_createDefaultExecutorsOnce::createExecutorsOnce != -1)
  {
    swift_createDefaultExecutorsOnce_cold_1();
  }
}

uint64_t swift_getDispatchQueueForExecutor(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFF8) != &protocol witness table for DispatchQueueShim)
  {
    return 0;
  }

  return result;
}

unint64_t swift::AsyncTask::waitFuture(swift::AsyncTask *a1, swift::AsyncTask *this, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BOOL8 a8)
{
  v10 = *(a1 + 8);
  v11 = 192;
  if ((v10 & 0x1000000) == 0)
  {
    v11 = 176;
  }

  v12 = a1 + v11;
  v13 = (v10 >> 23) & 8;
  explicit = atomic_load_explicit((a1 + v11 + v13), memory_order_acquire);
  v15 = explicit & 3;
  if (v15 - 1 < 2)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v17 = a3 + 1;
  v18 = MEMORY[0x1E69E7CF0];
  if (v15 != 3)
  {
    v19 = a6;
    v20 = a4;
    v21 = a5;
    v22 = a3;
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    swift::concurrency::trace::task_wait(this, a1, 0);
    a3 = v22;
    a5 = v21;
    a4 = v20;
    a6 = v19;
    v18 = MEMORY[0x1E69E7CF0];
  }

  a3[2] = 0;
  a3[3] = a6;
  if (a4)
  {
    *v17 = a4;
    if (a5)
    {
LABEL_11:
      v23 = a5;
      goto LABEL_14;
    }
  }

  else
  {
    *v17 = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_14:
  *a3 = v23;
  v24 = swift::_swift_task_alloc_specific(this, 0x30);
  _X2 = 0;
  _X3 = 0;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 32) = 1;
  *(v24 + 40) = this;
  *(v24 + 16) = a1;
  *(this + 20) = v24;
  v39 = v24;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v38[0] = _X2;
  v38[1] = 0;
  v37[0] = &v39;
  v37[1] = v38;
  swift::addStatusRecord(this, v24, v38, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v37);
  swift_task_exitThreadLocalContext();
  v33 = swift::restoreTaskVoucher(this, v32);
  *(this + 2) = explicit & 0xFFFFFFFFFFFFFFFCLL;
  v34 = explicit;
  atomic_compare_exchange_strong(&v12[v13], &v34, this);
  if (v34 == explicit)
  {
LABEL_15:
    swift::_swift_task_clearCurrent(v33);
    return 0;
  }

  while (1)
  {
    v15 = v34 & 3;
    if ((v34 & 3) == 0)
    {
      if (*v18)
      {
        (*v18)(this);
      }

      swift::concurrency::trace::task_wait(this, a1, 0);
      goto LABEL_17;
    }

    if (v15 != 3)
    {
      break;
    }

LABEL_17:
    *(this + 2) = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v34;
    atomic_compare_exchange_strong(&v12[v13], &v35, this);
    _ZF = v35 == v34;
    v34 = v35;
    if (_ZF)
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_23:
  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(a1, this, a3, a4, a5, a6, a7, a8);
  }

  if (v16)
  {
    swift::AsyncTask::flagAsRunning(this, this, a3, a4, a5, a6, a7, a8);
  }

  return v15;
}

void swift::concurrency::trace::task_wait(swift::concurrency::trace *this, swift::AsyncTask *a2, swift::AsyncTask *a3)
{
  v5 = this;
  if (a2)
  {
    this = MEMORY[0x1865D4750](*(a2 + 9) | (*(a2 + 36) << 32));
  }

  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v5);
      v7 = v6;
      if (a2)
      {
        v8 = *(a2 + 9) | (*(a2 + 36) << 32);
      }

      else
      {
        v8 = 0;
      }

      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v10 = v5[9] | (v5[36] << 32);
          v11 = 134218496;
          v12 = v10;
          v13 = 2048;
          v14 = v8;
          v15 = 2048;
          v16 = a3;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "task_wait", "task=%lld waitingOnTask=%lld status=0x%lx", &v11, 0x20u);
        }
      }
    }
  }
}

void swift::NullaryContinuationJob::process(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = a1;
    os_release(*(a1 + 40));
    a1 = v2;
  }

  MEMORY[0x1865D4B40](a1, 80, 15);
  *(*(v1 + 64) + 32) = 0;

  swift_continuation_resume(v1, v3);
}

void swift_continuation_resume(atomic_ullong **this, swift::AsyncTask *a2)
{
  v3 = swift_continuation_resume::Override;
  if (swift_continuation_resume::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (this[8])
    {
      v4 = this[8];
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v7, v8);
    }
  }

  else if (swift_continuation_resume::Override)
  {

    v3(this, swift_continuation_resumeImpl);
  }

  else
  {

    swift_continuation_resumeSlow(this);
  }
}

void swift::AsyncTask::completeFuture(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v4 = 192;
  if ((v3 & 0x1000000) == 0)
  {
    v4 = 176;
  }

  v5 = (result + v4 + ((v3 >> 23) & 8));
  v6 = *(a2 - 8);
  v5[2] = v6;
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(result);
  }

  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  v8 = atomic_exchange(v5, v7);
  v9 = *(result + 32);
  if ((v9 & 0x4000000) != 0)
  {
    v10 = (v9 & 0x1000000) == 0;
    v11 = 192;
    if (v10)
    {
      v11 = 176;
    }

    swift::TaskGroup::offer(*(result + v11));
  }

  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v13 = MEMORY[0x1E69E7CE8];
    do
    {
      v14 = v12;
      v15 = *(v12 + 64);
      v12 = *(v12 + 16);
      if (v15)
      {
        v16 = v15;
        if (!v6)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0;
        if (!v6)
        {
LABEL_22:
          (*(*(v5[1] - 8) + 16))(*(v16 + 24), (v5 + *(*(v5[1] - 8) + 80) + 24) & ~*(*(v5[1] - 8) + 80));
          v17 = *v13;
          if (!*v13)
          {
            goto LABEL_18;
          }

LABEL_17:
          v17(v14);
          goto LABEL_18;
        }
      }

      *(v16 + 16) = v5[2];
      MEMORY[0x1865D4960]();
      v17 = *v13;
      if (*v13)
      {
        goto LABEL_17;
      }

LABEL_18:
      v18 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, v14);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        v20 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v21 = v14[9] | (v14[36] << 32);
          *buf = 134217984;
          v23 = v21;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v20, OS_SIGNPOST_INTERVAL_END, v19, "task_wait", "task=%lld", buf, 0xCu);
        }
      }

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(v14, 0, 0);
    }

    while (v12);
  }
}

void swift::AsyncTask::~AsyncTask(swift::AsyncTask *this, uint64_t a2, const char *a3, char *a4)
{
  v5 = *(this + 8);
  if ((v5 & 0x2000000) != 0)
  {
    v6 = 192;
    if ((v5 & 0x1000000) == 0)
    {
      v6 = 176;
    }

    v7 = (this + v6 + ((v5 >> 23) & 8));
    v8 = atomic_load_explicit(v7, memory_order_acquire) & 3;
    if (v8 <= 1)
    {
      if (v8 != 1)
      {
        __break(1u);
        return;
      }

      (*(*(v7[1] - 8) + 8))((v7 + *(*(v7[1] - 8) + 80) + 24) & ~*(*(v7[1] - 8) + 80));
    }

    else if (v8 == 2)
    {
      MEMORY[0x1865D4950](v7[2]);
    }
  }

  swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::~StackAllocator(this + 112, a2, a3, a4);
  swift::concurrency::trace::task_destroy(this, v9);
  v10 = *(this + 5);
  if (v10 + 1 >= 2)
  {
    os_release(v10);
  }
}

void swift::concurrency::trace::task_destroy(swift::concurrency::trace *this, swift::AsyncTask *a2)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v3 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = v3;
        v5 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v6 = *(this + 9) | (*(this + 36) << 32);
          v7 = 134217984;
          v8 = v6;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v5, OS_SIGNPOST_INTERVAL_END, v4, "task_lifetime", "task=%lld", &v7, 0xCu);
        }
      }
    }
  }
}

void jobInvoke(swift::AsyncTask *a1, void *a2)
{
  v3 = *(a1 + 3);
  if (v3 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else if (v3 == MEMORY[0x1E69E96A0])
  {
    v5 = a1;
    MainExecutor = swift_task_getMainExecutor(a1);
    a1 = v5;
    v4 = v7;
    v3 = MainExecutor;
  }

  else
  {
    if (v3)
    {
      v4 = &protocol witness table for DispatchQueueShim;
    }

    else
    {
      v4 = 0;
    }
  }

  swift_job_run(a1, v3, v4);
}

void destroyTask(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  swift::AsyncTask::~AsyncTask(v4, a2, a3, a4);

  free(v5);
}

uint64_t task_wait_throwing_resume_adapter()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1();
}

uint64_t swift::AsyncTask::getResumeFunctionForLogging(swift::AsyncTask *this, int a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (v2 == non_future_adapter || v2 == future_adapter)
  {
    v3 = *(*(this + 8) - 24);
    if (!a2)
    {
      return v3;
    }
  }

  else
  {
    v3 = *(this + 7);
    if (!a2)
    {
      return v3;
    }
  }

  if (v2 == task_wait_throwing_resume_adapter || v2 == task_future_wait_resume_adapter)
  {
    if (*(*(this + 8) + 8))
    {
      return *(*(this + 8) + 8);
    }

    return 0;
  }

  return v3;
}

uint64_t swift_task_currentPriority()
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  return _X2;
}

char *swift_task_create(unint64_t a1, unsigned __int8 *a2, uint64_t a3, int *a4, uint64_t a5)
{
  if ((a1 & 0x4000) != 0)
  {
    v6 = a4 + *a4;
    v7 = a4[1];
    v8 = swift_task_create_common::Override;
    if (swift_task_create_common::Override == 1)
    {
      return swift_task_create_commonImpl(a1, a2, a3, v6, a5, v7);
    }
  }

  else
  {
    v6 = a4 + *a4;
    v7 = a4[1];
    v8 = swift_task_create_common::Override;
    if (swift_task_create_common::Override == 1)
    {
      return swift_task_create_commonImpl(a1, a2, a3, v6, a5, v7);
    }
  }

  if (v8)
  {
    return v8();
  }

  else
  {
    return swift_task_create_commonSlow(a1, a2, a3, v6, a5, v7);
  }
}

char *swift_task_create_common(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_task_create_common::Override == 1)
  {
    return swift_task_create_commonImpl(a1, a2, a3, a4, a5, a6);
  }

  if (swift_task_create_common::Override)
  {
    return swift_task_create_common::Override(a1, a2, a3, a4, a5, a6, swift_task_create_commonImpl);
  }

  return swift_task_create_commonSlow(a1, a2, a3, a4, a5, a6);
}

unint64_t swift_task_future_wait_throwingImpl(uint64_t a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  Current = swift_task_getCurrent();
  *(Current + 7) = task_wait_throwing_resume_adapter;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *(Current + 8) = v11;
  result = swift::AsyncTask::waitFuture(a2, Current, a4, a3, v4, a1, v9, v10);
  if (result == 2)
  {
    v16 = *(a2 + 8);
    v17 = 192;
    if ((v16 & 0x1000000) == 0)
    {
      v17 = 176;
    }

    MEMORY[0x1865D4960](*(a2 + v17 + ((v16 >> 23) & 8) + 16));
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v13 = *(a2 + 8);
    v14 = 192;
    if ((v13 & 0x1000000) == 0)
    {
      v14 = 176;
    }

    v15 = a2 + v14 + ((v13 >> 23) & 8);
    (*(*(*(v15 + 1) - 8) + 16))(a1, &v15[*(*(*(v15 + 1) - 8) + 80) + 24] & ~*(*(*(v15 + 1) - 8) + 80));
  }

  return a3();
}

unint64_t swift_task_isCancelled()
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  return (_X2 >> 8) & 1;
}

char *swift_task_create_commonImpl(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (a1 << 16) & 0x1000000;
  if (!a2)
  {
    goto LABEL_28;
  }

  v8 = a2;
  v9 = 0;
  v10 = 0;
  a2 = 0;
  TaskExecutorRef = 0;
  v12 = 0;
  v13 = 0;
  v78 = 0;
  v14 = 0;
  v77 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v8;
    if (v16 <= 3)
    {
      if (*v8 > 1u)
      {
        if (v16 == 2)
        {
          v14 = *(v8 + 2);
          v7 |= 0x11000000u;
        }

        else if (v16 == 3)
        {
          v14 = *(v8 + 2);
          v7 |= 0x11000000u;
          v77 = 1;
        }
      }

      else if (*v8)
      {
        v78 = *(v8 + 2);
        v7 |= 0x4000000u;
      }

      else
      {
        v10 = *(v8 + 2);
        v9 = *(v8 + 3);
      }

      goto LABEL_4;
    }

    if (*v8 > 6u)
    {
      if (v16 == 7)
      {
        v12 = *(v8 + 2);
        v7 |= 0x40000000u;
      }

      else if (v16 == 255)
      {
        v15 = v8;
      }

      goto LABEL_4;
    }

    if (v16 == 5)
    {
      v13 = 0;
      TaskExecutorRef = *(v8 + 2);
      a2 = *(v8 + 3);
      v7 |= 0x20000000u;
      goto LABEL_4;
    }

    if (v16 == 6)
    {
      v17 = *(v8 + 2);
      if (v17)
      {
        ObjectType = swift_getObjectType();
        TaskExecutorRef = _task_taskExecutor_getTaskExecutorRef(v17, ObjectType, *(v8 + 3));
      }

      else
      {
        TaskExecutorRef = 0;
        a2 = 0;
      }

      v7 |= 0x20000000u;
      v13 = 1;
      goto LABEL_4;
    }

    if (v16 == 4)
    {
      break;
    }

LABEL_4:
    v8 = *(v8 + 1);
    if (!v8)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_28:
  v15 = 0;
  v77 = 0;
  v14 = 0;
  v78 = 0;
  v13 = 0;
  v12 = 0;
  TaskExecutorRef = 0;
  v10 = 0;
  v9 = 0;
LABEL_29:
  v75 = v15;
  v65 = v13;
  v67 = a2;
  v68 = TaskExecutorRef;
  if (a3)
  {
    v19 = v7 | 0x2000000;
  }

  else
  {
    v19 = v7;
  }

  Current = swift_task_getCurrent();
  v21 = Current;
  if ((v19 & 0x1000000) != 0)
  {
    v22 = Current;
  }

  else
  {
    v22 = 0;
  }

  if ((a1 & 0x2000) != 0 && v78)
  {
    swift_taskGroup_addPending(v78, 1);
  }

  if ((a1 & 0x200) != 0)
  {
    CurrentThreadPriority = swift_task_getCurrentThreadPriority();
  }

  else
  {
    CurrentThreadPriority = a1;
    v24 = v19 & 0x14000000;
    if ((a1 & 0x400) != 0 || v24)
    {
      if (v24)
      {
        if (!a1)
        {
          if (*(v22 + 19) == 33)
          {
            CurrentThreadPriority = 25;
          }

          else
          {
            CurrentThreadPriority = *(v22 + 19);
          }
        }
      }

      else if (!a1)
      {
        CurrentThreadPriority = v21 ? *(v21 + 152) : swift_task_getCurrentThreadPriority();
        if (CurrentThreadPriority == 33)
        {
          CurrentThreadPriority = 25;
        }
      }
    }
  }

  v25 = 21;
  if (CurrentThreadPriority)
  {
    v25 = CurrentThreadPriority;
  }

  v69 = v25;
  v26 = 192;
  if (!v22)
  {
    v26 = 176;
  }

  if (v78)
  {
    v27 = v26 | 8;
  }

  else
  {
    v27 = v26;
  }

  v66 = v10;
  if (a3)
  {
    v28 = *(*(a3 - 8) + 64) + ((*(*(a3 - 8) + 80) + v27 + 24) & ~*(*(a3 - 8) + 80)) + 32;
  }

  else
  {
    v28 = v27 + 24;
  }

  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v29 + a6;
  v64 = v29 + a6;
  if (v14)
  {
    if (((swift::AsyncLet::getSizeOfPreallocatedSpace(CurrentThreadPriority) >= v30) & v77) != 0)
    {
      PreallocatedSpace = swift::AsyncLet::getPreallocatedSpace(v14);
      v71 = swift::AsyncLet::getSizeOfPreallocatedSpace(PreallocatedSpace) - v30;
      v77 = 1;
      goto LABEL_67;
    }

    PreallocatedSpace = swift::_swift_task_alloc_specific(v22, (v30 + 512));
    v77 = 0;
LABEL_65:
    v32 = 512;
  }

  else
  {
    if (!v75 || (PreallocatedSpace = *(v75 + 2)) == 0)
    {
      PreallocatedSpace = malloc_type_malloc(v29 + a6, 0x78C967FuLL);
      goto LABEL_65;
    }

    v32 = *(v75 + 6) - v30;
  }

  v71 = v32;
LABEL_67:
  v33 = (PreallocatedSpace + v29);
  v34 = (a1 >> 14) & 1;
  if (!a3)
  {
    LODWORD(v34) = 1;
  }

  if (v34)
  {
    v35 = non_future_adapter;
  }

  else
  {
    v35 = future_adapter;
  }

  *(v33 - 3) = a4;
  *(v33 - 2) = a5;
  if ((v19 & 0x20000000) == 0)
  {
    if (v22)
    {
      PreferredTaskExecutor = swift::AsyncTask::getPreferredTaskExecutor(v22);
      if (PreferredTaskExecutor)
      {
        v19 |= 0x20000000u;
        v67 = v37;
        v68 = PreferredTaskExecutor;
      }
    }
  }

  v73 = v12;
  v38 = (a1 & 0x600) != 0;
  if ((v19 & 0x14000000) != 0)
  {
    v38 = 1;
  }

  v39 = v9;
  if (v14)
  {
    v40 = a1;
    *PreallocatedSpace = swift::taskHeapMetadataPtr;
    *(PreallocatedSpace + 8) = 0x80000004FFFFFFFFLL;
    *(PreallocatedSpace + 32) = v19;
    *(PreallocatedSpace + 36) = 0;
    v41 = (PreallocatedSpace + 36);
    *(PreallocatedSpace + 44) = 0;
    *(PreallocatedSpace + 52) = 0;
    *(PreallocatedSpace + 56) = v35;
    if (v38)
    {
      *(PreallocatedSpace + 40) = voucher_copy();
    }

    *(PreallocatedSpace + 64) = v33;
    do
    {
      add_explicit = atomic_fetch_add_explicit(&swift::AsyncTask::setTaskId(void)::NextId, 1uLL, memory_order_relaxed);
    }

    while (!add_explicit);
  }

  else
  {
    v40 = a1;
    *PreallocatedSpace = swift::taskHeapMetadataPtr;
    *(PreallocatedSpace + 8) = 3;
    *(PreallocatedSpace + 32) = v19;
    *(PreallocatedSpace + 36) = 0;
    v41 = (PreallocatedSpace + 36);
    *(PreallocatedSpace + 44) = 0;
    *(PreallocatedSpace + 52) = 0;
    *(PreallocatedSpace + 56) = v35;
    if (v38)
    {
      *(PreallocatedSpace + 40) = voucher_copy();
    }

    *(PreallocatedSpace + 64) = v33;
    do
    {
      add_explicit = atomic_fetch_add_explicit(&swift::AsyncTask::setTaskId(void)::NextId, 1uLL, memory_order_relaxed);
    }

    while (!add_explicit);
  }

  *v41 = add_explicit;
  *(PreallocatedSpace + 144) = HIDWORD(add_explicit);
  if (v22)
  {
    *(PreallocatedSpace + 176) = v22;
    *(PreallocatedSpace + 184) = 0;
  }

  if (v78)
  {
    v43 = 192;
    if ((*(PreallocatedSpace + 32) & 0x1000000) == 0)
    {
      v43 = 176;
    }

    *(PreallocatedSpace + v43) = v78;
  }

  if (a3)
  {
    v44 = *(PreallocatedSpace + 32);
    v45 = 192;
    if ((v44 & 0x1000000) == 0)
    {
      v45 = 176;
    }

    v46 = (PreallocatedSpace + v45 + ((v44 >> 23) & 8));
    *v46 = 0;
    v46[1] = a3;
    v46[2] = 0;
    *(v33 - 4) = (v46 + *(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80);
  }

  *v33 = 0;
  if (!v75)
  {
    if (!v14)
    {
      if (v40 < 0 || !a5)
      {
        v49 = completeTaskAndRelease;
      }

      else
      {
        v49 = completeTaskWithClosure;
      }

      v33[1] = v49;
LABEL_119:
      *(PreallocatedSpace + 112) = 0;
      *(PreallocatedSpace + 120) = 0;
      *(PreallocatedSpace + 128) = 0;
      *(PreallocatedSpace + 136) = 0;
      *(PreallocatedSpace + 80) = 0;
      *(PreallocatedSpace + 88) = 0;
      goto LABEL_120;
    }

    v33[1] = completeTask;
LABEL_107:
    v47 = v71;
    if (!v71)
    {
      goto LABEL_119;
    }

    goto LABEL_108;
  }

  v33[1] = completeInlineTask;
  if (v14)
  {
    goto LABEL_107;
  }

  v47 = v71;
  if (!*(v75 + 2) || !v71)
  {
    goto LABEL_119;
  }

LABEL_108:
  *(PreallocatedSpace + 112) = 0;
  *(PreallocatedSpace + 120) = 0;
  *(PreallocatedSpace + 128) = 0;
  *(PreallocatedSpace + 80) = 0;
  *(PreallocatedSpace + 88) = 0;
  if (v47 >= 0x21)
  {
    v48 = (PreallocatedSpace + v64 + 15) & 0xFFFFFFFFFFFFFFF0;
    *v48 = &swift::TaskAllocatorSlabMetadata;
    *(v48 + 8) = 0;
    *(v48 + 16) = PreallocatedSpace + v64 + v47 - v48 - 32;
    *(v48 + 20) = 0;
    *(PreallocatedSpace + 120) = v48;
    *(PreallocatedSpace + 128) = 1;
  }

  *(PreallocatedSpace + 136) = 0;
LABEL_120:
  _X0 = v69;
  *(PreallocatedSpace + 160) = 0;
  *(PreallocatedSpace + 168) = 0;
  *(PreallocatedSpace + 152) = v69;
  v51 = *(PreallocatedSpace + 96);
  do
  {
    _X5 = *(PreallocatedSpace + 104);
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v51;
    v51 = _X4;
  }

  while (!_ZF);
  if (v22)
  {
    if (v78 && (swift::TaskGroup::isCancelled(v78) & 1) != 0)
    {
      goto LABEL_127;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    if ((_X0 & 0x100) != 0)
    {
LABEL_127:
      swift_task_cancel(PreallocatedSpace);
    }

    swift::TaskLocal::Storage::initializeLinkParent((PreallocatedSpace + 136), PreallocatedSpace, v22);
  }

  v61 = *(PreallocatedSpace + 32);
  swift::concurrency::trace::task_create(PreallocatedSpace, v22, v78, v14, BYTE1(v61), HIBYTE(v61) & 1, (v61 >> 25) & 1, (v61 >> 26) & 1, (v61 & 0x10000000) != 0, (v40 & 0x4000) != 0, (v61 & 0x20000000) != 0, v63, v73);
  if (v78)
  {
    swift_taskGroup_attachChild(v78, PreallocatedSpace);
  }

  if ((v40 & 0x400) != 0)
  {
    swift_task_localsCopyTo(PreallocatedSpace);
  }

  if (v14)
  {
    swift::asyncLet_addImpl(PreallocatedSpace, v14, ((v77 & 1) == 0));
  }

  if ((v19 & 0x20000000) == 0)
  {
    if ((v19 & 0x40000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_141:
    swift::AsyncTask::pushInitialTaskName(PreallocatedSpace, v73);
    if ((v40 & 0x1000) == 0)
    {
      return PreallocatedSpace;
    }

LABEL_138:

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(PreallocatedSpace, v66, v39);
    return PreallocatedSpace;
  }

  swift::AsyncTask::pushInitialTaskExecutorPreference(PreallocatedSpace, v68, v67, v65 & 1);
  if ((v19 & 0x40000000) != 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  if ((v40 & 0x1000) != 0)
  {
    goto LABEL_138;
  }

  return PreallocatedSpace;
}

char *swift_task_create_commonSlow(swift *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  common = swift::getOverride_task_create_common(a1);
  if (common)
  {
    swift_task_create_common::Override = common;

    return common(a1, a2, a3, a4, a5, a6, swift_task_create_commonImpl);
  }

  else
  {
    swift_task_create_common::Override = 1;

    return swift_task_create_commonImpl(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t swift_task_future_wait(uint64_t a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  if (swift_task_future_wait::Override == 1)
  {
    return swift_task_future_waitImpl(a1, a2, a3, a4);
  }

  if (swift_task_future_wait::Override)
  {
    return swift_task_future_wait::Override(a1, a2, a3, a4, swift_task_future_waitImpl);
  }

  return swift_task_future_waitSlow(a1, a2, a3, a4);
}

unint64_t swift_task_future_waitImpl(uint64_t a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  Current = swift_task_getCurrent();
  *(Current + 7) = task_future_wait_resume_adapter;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *(Current + 8) = v11;
  result = swift::AsyncTask::waitFuture(a2, Current, a4, a3, v4, a1, v9, v10);
  if (result == 1)
  {
    v15 = *(a2 + 8);
    v16 = 192;
    if ((v15 & 0x1000000) == 0)
    {
      v16 = 176;
    }

    v17 = a2 + v16 + ((v15 >> 23) & 8);
    (*(*(*(v17 + 1) - 8) + 16))(a1, &v17[*(*(*(v17 + 1) - 8) + 80) + 24] & ~*(*(*(v17 + 1) - 8) + 80));

    return a3();
  }

  else if (result == 2)
  {
    swift::swift_Concurrency_fatalError(0, "future reported an error, but wait cannot throw", v13, v14);
  }

  return result;
}

unint64_t swift_task_future_waitSlow(swift *a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  Override_task_future_wait = swift::getOverride_task_future_wait(a1);
  if (Override_task_future_wait)
  {
    swift_task_future_wait::Override = Override_task_future_wait;

    return Override_task_future_wait(a1, a2, a3, a4, swift_task_future_waitImpl);
  }

  else
  {
    swift_task_future_wait::Override = 1;

    return swift_task_future_waitImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_task_future_wait_throwing(uint64_t a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  if (swift_task_future_wait_throwing::Override == 1)
  {
    return swift_task_future_wait_throwingImpl(a1, a2, a3, a4);
  }

  if (swift_task_future_wait_throwing::Override)
  {
    return swift_task_future_wait_throwing::Override(a1, a2, a3, a4, swift_task_future_wait_throwingImpl);
  }

  return swift_task_future_wait_throwingSlow(a1, a2, a3, a4);
}

unint64_t swift_task_future_wait_throwingSlow(swift *a1, swift::AsyncTask *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  Override_task_future_wait_throwing = swift::getOverride_task_future_wait_throwing(a1);
  if (Override_task_future_wait_throwing)
  {
    swift_task_future_wait_throwing::Override = Override_task_future_wait_throwing;

    return Override_task_future_wait_throwing(a1, a2, a3, a4, swift_task_future_wait_throwingImpl);
  }

  else
  {
    swift_task_future_wait_throwing::Override = 1;

    return swift_task_future_wait_throwingImpl(a1, a2, a3, a4);
  }
}

void swift_continuation_resumeImpl(atomic_ullong **a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (a1[8])
  {
    v3 = a1[8];
  }

  else
  {
    v3 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v3, 0);
  explicit = atomic_load_explicit(v3 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v5 = 0, atomic_compare_exchange_strong(v3 + 3, &v5, 2uLL), v5))
  {
    v6 = v3[6];
    v7 = v3[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v6, v7);
  }
}

void swift_continuation_resumeSlow(atomic_ullong **a1)
{
  Override_continuation_resume = swift::getOverride_continuation_resume(a1);
  if (Override_continuation_resume)
  {
    swift_continuation_resume::Override = Override_continuation_resume;

    (Override_continuation_resume)(a1, swift_continuation_resumeImpl);
  }

  else
  {
    swift_continuation_resume::Override = 1;
    continuationChecking::willResume(a1, v3);
    if (a1[8])
    {
      v4 = a1[8];
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
    }
  }
}

void swift_continuation_throwingResume(atomic_ullong **this, swift::AsyncTask *a2)
{
  v3 = swift_continuation_throwingResume::Override;
  if (swift_continuation_throwingResume::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (this[8])
    {
      v4 = this[8];
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v7, v8);
    }
  }

  else if (swift_continuation_throwingResume::Override)
  {

    v3(this, swift_continuation_throwingResumeImpl);
  }

  else
  {

    swift_continuation_throwingResumeSlow(this);
  }
}

void swift_continuation_throwingResumeImpl(atomic_ullong **a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (a1[8])
  {
    v3 = a1[8];
  }

  else
  {
    v3 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v3, 0);
  explicit = atomic_load_explicit(v3 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v5 = 0, atomic_compare_exchange_strong(v3 + 3, &v5, 2uLL), v5))
  {
    v6 = v3[6];
    v7 = v3[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v6, v7);
  }
}

void swift_continuation_throwingResumeSlow(atomic_ullong **a1)
{
  Override_continuation_throwingResume = swift::getOverride_continuation_throwingResume(a1);
  if (Override_continuation_throwingResume)
  {
    swift_continuation_throwingResume::Override = Override_continuation_throwingResume;

    (Override_continuation_throwingResume)(a1, swift_continuation_throwingResumeImpl);
  }

  else
  {
    swift_continuation_throwingResume::Override = 1;
    continuationChecking::willResume(a1, v3);
    if (a1[8])
    {
      v4 = a1[8];
    }

    else
    {
      v4 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v4, 0);
    explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
    {
      v7 = v4[6];
      v8 = v4[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
    }
  }
}

void swift_continuation_throwingResumeWithError(atomic_ullong **this, swift::AsyncTask *a2)
{
  v4 = swift_continuation_throwingResumeWithError::Override;
  if (swift_continuation_throwingResumeWithError::Override == 1)
  {
    continuationChecking::willResume(this, a2);
    if (this[8])
    {
      v5 = this[8];
    }

    else
    {
      v5 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v5, 1);
    v5[4] = a2;
    explicit = atomic_load_explicit(v5 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(this);
    }

    if (explicit || (v7 = 0, atomic_compare_exchange_strong(v5 + 3, &v7, 2uLL), v7))
    {
      v8 = v5[6];
      v9 = v5[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, v8, v9);
    }
  }

  else if (swift_continuation_throwingResumeWithError::Override)
  {

    v4(this, a2, swift_continuation_throwingResumeWithErrorImpl);
  }

  else
  {

    swift_continuation_throwingResumeWithErrorSlow(this, a2);
  }
}

void swift_continuation_throwingResumeWithErrorImpl(continuationChecking *a1, swift::AsyncTask *a2)
{
  continuationChecking::willResume(a1, a2);
  if (*(a1 + 8))
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  swift::concurrency::trace::task_continuation_resume(v4, 1);
  v4[4] = a2;
  explicit = atomic_load_explicit(v4 + 3, memory_order_acquire);
  if (*MEMORY[0x1E69E7CF0])
  {
    (*MEMORY[0x1E69E7CF0])(a1);
  }

  if (explicit || (v6 = 0, atomic_compare_exchange_strong(v4 + 3, &v6, 2uLL), v6))
  {
    v7 = v4[6];
    v8 = v4[7];

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v7, v8);
  }
}

void swift_continuation_throwingResumeWithErrorSlow(atomic_ullong **a1, atomic_ullong a2)
{
  Override_continuation_throwingResumeWithError = swift::getOverride_continuation_throwingResumeWithError(a1);
  if (Override_continuation_throwingResumeWithError)
  {
    swift_continuation_throwingResumeWithError::Override = Override_continuation_throwingResumeWithError;

    (Override_continuation_throwingResumeWithError)(a1, a2, swift_continuation_throwingResumeWithErrorImpl);
  }

  else
  {
    swift_continuation_throwingResumeWithError::Override = 1;
    continuationChecking::willResume(a1, v5);
    if (a1[8])
    {
      v6 = a1[8];
    }

    else
    {
      v6 = 0;
    }

    swift::concurrency::trace::task_continuation_resume(v6, 1);
    v6[4] = a2;
    explicit = atomic_load_explicit(v6 + 3, memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(a1);
    }

    if (explicit || (v8 = 0, atomic_compare_exchange_strong(v6 + 3, &v8, 2uLL), v8))
    {
      v9 = v6[6];
      v10 = v6[7];

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, v9, v10);
    }
  }
}

uint64_t swift_task_addCancellationHandler(swift *a1, uint64_t a2)
{
  v4 = swift_task_addCancellationHandler::Override;
  if (swift_task_addCancellationHandler::Override == 1)
  {
    v5 = swift_task_alloc(32);
    v6 = v5;
    v7 = a1;
    *v5 = 3;
    v5[1] = 0;
    if (a1)
    {
      v7 = a1;
    }

    v5[2] = v7;
    v5[3] = a2;
    v11 = 0;
    v10 = &v11;
    v8 = swift::addStatusRecordToSelf(v5, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v10);
    if (v11 == 1)
    {
      (*(v6 + 16))(v8);
      v6;
      return 0;
    }

    return v6;
  }

  else if (swift_task_addCancellationHandler::Override)
  {

    return v4(a1, a2, swift_task_addCancellationHandlerImpl);
  }

  else
  {

    return swift_task_addCancellationHandlerSlow(a1, a2);
  }
}

void *swift_task_addCancellationHandlerImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc(32);
  v5 = v4;
  v6 = a1;
  *v4 = 3;
  v4[1] = 0;
  if (a1)
  {
    v6 = a1;
  }

  v4[2] = v6;
  v4[3] = a2;
  v10 = 0;
  v9 = &v10;
  v7 = swift::addStatusRecordToSelf(v4, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v9);
  if (v10 == 1)
  {
    (*(v5 + 16))(v7);
    v5;
    return 0;
  }

  return v5;
}

uint64_t swift_task_addCancellationHandlerSlow(swift *a1, uint64_t a2)
{
  Override_task_addCancellationHandler = swift::getOverride_task_addCancellationHandler(a1);
  if (Override_task_addCancellationHandler)
  {
    swift_task_addCancellationHandler::Override = Override_task_addCancellationHandler;

    return (Override_task_addCancellationHandler)(a1, a2, swift_task_addCancellationHandlerImpl);
  }

  else
  {
    swift_task_addCancellationHandler::Override = 1;
    v6 = swift_task_alloc(32);
    v7 = v6;
    v8 = a1;
    *v6 = 3;
    v6[1] = 0;
    if (a1)
    {
      v8 = a1;
    }

    v6[2] = v8;
    v6[3] = a2;
    v11 = 0;
    v10 = &v11;
    v9 = swift::addStatusRecordToSelf(v6, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>, &v10);
    if (v11 == 1)
    {
      (*(v7 + 16))(v9);
      v7;
      return 0;
    }

    return v7;
  }
}

void swift_task_removeCancellationHandler(swift *result)
{
  v2 = swift_task_removeCancellationHandler::Override;
  if (swift_task_removeCancellationHandler::Override == 1)
  {
    if (result)
    {
      Current = swift_task_getCurrent();
      if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
      {

        result;
      }
    }
  }

  else if (swift_task_removeCancellationHandler::Override)
  {

    v2(result, swift_task_removeCancellationHandlerImpl);
  }

  else
  {

    swift_task_removeCancellationHandlerSlow(result);
  }
}

void swift_task_removeCancellationHandlerImpl(uint64_t result)
{
  if (result)
  {
    Current = swift_task_getCurrent();
    if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
    {

      result;
    }
  }
}

void swift_task_removeCancellationHandlerSlow(swift *a1)
{
  v2 = swift::getOverride_task_removeCancellationHandler(a1);
  if (v2)
  {
    swift_task_removeCancellationHandler::Override = v2;

    (v2)(a1, swift_task_removeCancellationHandlerImpl);
  }

  else
  {
    swift_task_removeCancellationHandler::Override = 1;
    if (a1)
    {
      Current = swift_task_getCurrent();
      if (swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(Current))
      {

        a1;
      }
    }
  }
}

void *swift_task_addPriorityEscalationHandler(swift *a1, uint64_t a2)
{
  v4 = swift_task_addPriorityEscalationHandler::Override;
  if (swift_task_addPriorityEscalationHandler::Override == 1)
  {
    v5 = swift_task_alloc(32);
    v6 = a1;
    *v5 = 4;
    v5[1] = 0;
    if (a1)
    {
      v6 = a1;
    }

    v5[2] = v6;
    v5[3] = a2;
    v7 = v5;
    swift::addStatusRecordToSelf(v5, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v9);
    return v7;
  }

  else if (swift_task_addPriorityEscalationHandler::Override)
  {

    return v4(a1, a2, swift_task_addPriorityEscalationHandlerImpl);
  }

  else
  {

    return swift_task_addPriorityEscalationHandlerSlow(a1, a2);
  }
}

void *swift_task_addPriorityEscalationHandlerImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc(32);
  v5 = a1;
  *v4 = 4;
  v4[1] = 0;
  if (a1)
  {
    v5 = a1;
  }

  v4[2] = v5;
  v4[3] = a2;
  v6 = v4;
  swift::addStatusRecordToSelf(v4, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v8);
  return v6;
}

void *swift_task_addPriorityEscalationHandlerSlow(swift *a1, uint64_t a2)
{
  Override_task_addPriorityEscalationHandler = swift::getOverride_task_addPriorityEscalationHandler(a1);
  if (Override_task_addPriorityEscalationHandler)
  {
    swift_task_addPriorityEscalationHandler::Override = Override_task_addPriorityEscalationHandler;

    return (Override_task_addPriorityEscalationHandler)(a1, a2, swift_task_addPriorityEscalationHandlerImpl);
  }

  else
  {
    swift_task_addPriorityEscalationHandler::Override = 1;
    v6 = swift_task_alloc(32);
    v7 = a1;
    *v6 = 4;
    v6[1] = 0;
    if (a1)
    {
      v7 = a1;
    }

    v6[2] = v7;
    v6[3] = a2;
    v8 = v6;
    swift::addStatusRecordToSelf(v6, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addPriorityEscalationHandlerImpl(void({swiftcall}*)(unsigned char,unsigned char,void * {swift_context}),void *)::$_0>, &v9);
    return v8;
  }
}

void swift_task_removePriorityEscalationHandler(swift *a1)
{
  v2 = swift_task_removePriorityEscalationHandler::Override;
  if (swift_task_removePriorityEscalationHandler::Override == 1)
  {
    swift::removeStatusRecordFromSelf(a1, 0, 1);

    a1;
  }

  else if (swift_task_removePriorityEscalationHandler::Override)
  {

    v2(a1, swift_task_removePriorityEscalationHandlerImpl);
  }

  else
  {

    swift_task_removePriorityEscalationHandlerSlow(a1);
  }
}

void swift_task_removePriorityEscalationHandlerImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf(a1, 0, a3);

  a1;
}

void swift_task_removePriorityEscalationHandlerSlow(swift *a1)
{
  v2 = swift::getOverride_task_removePriorityEscalationHandler(a1);
  if (v2)
  {
    swift_task_removePriorityEscalationHandler::Override = v2;

    (v2)(a1, swift_task_removePriorityEscalationHandlerImpl);
  }

  else
  {
    swift_task_removePriorityEscalationHandler::Override = 1;
    swift::removeStatusRecordFromSelf(a1, 0, v3);

    a1;
  }
}

uint64_t swift_task_createNullaryContinuationJob(swift *a1, uint64_t a2)
{
  v3 = a1;
  v4 = swift_task_createNullaryContinuationJob::Override;
  if (swift_task_createNullaryContinuationJob::Override == 1)
  {
    Current = swift_task_getCurrent();
    v6 = swift_slowAlloc();
    *v6 = swift::jobHeapMetadataPtr;
    *(v6 + 8) = 3;
    *(v6 + 32) = (v3 << 8) | 0xC3;
    *(v6 + 44) = 0;
    *(v6 + 36) = 0;
    *(v6 + 52) = 0;
    *(v6 + 56) = swift::NullaryContinuationJob::process;
    v7 = v6;
    *(v6 + 40) = voucher_copy();
    *(v7 + 64) = Current;
    *(v7 + 72) = a2;
    return v7;
  }

  else if (swift_task_createNullaryContinuationJob::Override)
  {

    return v4(a1, a2, swift_task_createNullaryContinuationJobImpl);
  }

  else
  {

    return swift_task_createNullaryContinuationJobSlow(a1, a2);
  }
}

uint64_t swift_task_createNullaryContinuationJobImpl(int a1, swift::AsyncTask *a2)
{
  Current = swift_task_getCurrent();
  v5 = swift_slowAlloc();
  *v5 = swift::jobHeapMetadataPtr;
  *(v5 + 8) = 3;
  *(v5 + 32) = (a1 << 8) | 0xC3;
  *(v5 + 44) = 0;
  *(v5 + 36) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = swift::NullaryContinuationJob::process;
  v6 = v5;
  *(v5 + 40) = voucher_copy();
  *(v6 + 64) = Current;
  *(v6 + 72) = a2;
  return v6;
}

uint64_t swift_task_createNullaryContinuationJobSlow(swift *a1, uint64_t a2)
{
  NullaryContinuationJob = swift::getOverride_task_createNullaryContinuationJob(a1);
  if (NullaryContinuationJob)
  {
    swift_task_createNullaryContinuationJob::Override = NullaryContinuationJob;

    return (NullaryContinuationJob)(a1, a2, swift_task_createNullaryContinuationJobImpl);
  }

  else
  {
    swift_task_createNullaryContinuationJob::Override = 1;
    Current = swift_task_getCurrent();
    v7 = swift_slowAlloc();
    *v7 = swift::jobHeapMetadataPtr;
    *(v7 + 8) = 3;
    *(v7 + 32) = (a1 << 8) | 0xC3;
    *(v7 + 44) = 0;
    *(v7 + 36) = 0;
    *(v7 + 52) = 0;
    *(v7 + 56) = swift::NullaryContinuationJob::process;
    v8 = v7;
    *(v7 + 40) = voucher_copy();
    *(v8 + 64) = Current;
    *(v8 + 72) = a2;
    return v8;
  }
}

void swift_task_asyncMainDrainQueue()
{
  v0 = swift_once();
  v1 = swift_task_asyncMainDrainQueue_hook;
  v2 = swift_task_asyncMainDrainQueue::Override;
  if (!swift_task_asyncMainDrainQueue_hook)
  {
    if (swift_task_asyncMainDrainQueue::Override)
    {
      v0 = swift_task_asyncMainDrainQueue::Override(swift_task_asyncMainDrainQueueImpl);
    }

    swift_task_asyncMainDrainQueueImpl(v0, v2);
  }

  v1(swift_task_asyncMainDrainQueueImpl, v2);
  abort();
}

swift *swift_task_suspend(swift *a1)
{
  v3 = swift_task_suspend::Override;
  if (swift_task_suspend::Override == 1)
  {
    v18[3] = v1;
    v18[4] = v2;
    Current = swift_task_getCurrent();
    v5 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    *(v5 + 32) = 2;
    *(v5 + 40) = Current;
    *(Current + 20) = v5;
    v18[0] = v5;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v17[0] = _X2;
    v17[1] = 0;
    v16[0] = v18;
    v16[1] = v17;
    swift::addStatusRecord(Current, v5, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v16);
    swift_task_exitThreadLocalContext();
    v14 = swift::restoreTaskVoucher(Current, v13);
    swift::_swift_task_clearCurrent(v14);
    return Current;
  }

  else if (swift_task_suspend::Override)
  {

    return v3(swift_task_suspendImpl);
  }

  else
  {

    return swift_task_suspendSlow(a1);
  }
}

swift *swift_task_suspendImpl(void)
{
  Current = swift_task_getCurrent();
  v1 = swift::_swift_task_alloc_specific(Current, 0x30);
  _X2 = 0;
  _X3 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 32) = 2;
  *(v1 + 40) = Current;
  *(Current + 20) = v1;
  v14 = v1;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v13[0] = _X2;
  v13[1] = 0;
  v12[0] = &v14;
  v12[1] = v13;
  swift::addStatusRecord(Current, v1, v13, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v12);
  swift_task_exitThreadLocalContext();
  v10 = swift::restoreTaskVoucher(Current, v9);
  swift::_swift_task_clearCurrent(v10);
  return Current;
}

swift *swift_task_suspendSlow(swift *a1)
{
  Override_task_suspend = swift::getOverride_task_suspend(a1);
  if (Override_task_suspend)
  {
    swift_task_suspend::Override = Override_task_suspend;

    return (Override_task_suspend)(swift_task_suspendImpl);
  }

  else
  {
    swift_task_suspend::Override = 1;
    Current = swift_task_getCurrent();
    v4 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 32) = 2;
    *(v4 + 40) = Current;
    *(Current + 20) = v4;
    v16 = v4;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v15[0] = _X2;
    v15[1] = 0;
    v14[0] = &v16;
    v14[1] = v15;
    swift::addStatusRecord(Current, v4, v15, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v14);
    swift_task_exitThreadLocalContext();
    v13 = swift::restoreTaskVoucher(Current, v12);
    swift::_swift_task_clearCurrent(v13);
    return Current;
  }
}

void swift_task_enqueueTaskOnExecutor(swift *this, uint64_t *a2, uint64_t a3)
{
  if (swift_task_enqueueTaskOnExecutor::Override == 1)
  {
    swift::AsyncTask::flagAsAndEnqueueOnExecutor(this, a2, a3);
  }

  else if (swift_task_enqueueTaskOnExecutor::Override)
  {
    swift_task_enqueueTaskOnExecutor::Override(this, a2, a3, swift_task_enqueueTaskOnExecutorImpl);
  }

  else
  {
    swift_task_enqueueTaskOnExecutorSlow(this, a2, a3);
  }
}

void swift_task_enqueueTaskOnExecutorSlow(swift *a1, uint64_t *a2, uint64_t a3)
{
  Override_task_enqueueTaskOnExecutor = swift::getOverride_task_enqueueTaskOnExecutor(a1);
  if (Override_task_enqueueTaskOnExecutor)
  {
    swift_task_enqueueTaskOnExecutor::Override = Override_task_enqueueTaskOnExecutor;

    Override_task_enqueueTaskOnExecutor(a1, a2, a3, swift_task_enqueueTaskOnExecutorImpl);
  }

  else
  {
    swift_task_enqueueTaskOnExecutor::Override = 1;

    swift::AsyncTask::flagAsAndEnqueueOnExecutor(a1, a2, a3);
  }
}

swift *swift_continuation_init(void *a1, unint64_t a2)
{
  if (swift_continuation_init::Override == 1)
  {
    return swift_continuation_initImpl(a1, a2);
  }

  if (swift_continuation_init::Override)
  {
    return swift_continuation_init::Override(a1, a2, swift_continuation_initImpl);
  }

  return swift_continuation_initSlow(a1, a2);
}

swift *swift_continuation_initImpl(void *a1, unint64_t a2)
{
  v2 = a2;
  a1[2] = a2 & 1 | (2 * ((a2 >> 3) & 1));
  a1[4] = 0;
  if ((a2 & 2) == 0)
  {
    a1[6] = 0;
    a1[7] = 0;
  }

  a1[3] = (a2 >> 2) & 1;
  Current = swift_task_getCurrent();
  v5 = Current;
  if ((v2 & 4) != 0)
  {
    v6 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 32) = 2;
    *(v6 + 40) = v5;
    *(v6 + 16) = a1;
    *(v5 + 20) = v6;
    v24 = v6;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v23[0] = _X2;
    v23[1] = 0;
    v22[0] = &v24;
    v22[1] = v23;
    swift::addStatusRecord(v5, v6, v23, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v22);
    swift_task_exitThreadLocalContext();
    v15 = swift::restoreTaskVoucher(v5, v14);
    swift::_swift_task_clearCurrent(v15);
  }

  *(v5 + 8) = a1;
  *(v5 + 7) = a1[1];
  v23[0] = v5;
  v16 = continuationChecking::CurrentState;
  if (!continuationChecking::CurrentState)
  {
    if (concurrencyValidateUncheckedContinuations())
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    continuationChecking::CurrentState = v16;
  }

  if (v16 == 1)
  {
    os_unfair_lock_lock(&continuationChecking::ActiveContinuationsLock);
    if (qword_1EA82E900 != -1)
    {
      swift_continuation_initImpl(v17);
    }

    std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__emplace_unique_key_args<swift::AsyncTask *,swift::AsyncTask * const&>(&continuationChecking::ActiveContinuations, v23, v23);
    if ((v20 & 1) == 0)
    {
      swift::swift_Concurrency_fatalError(0, "Initializing continuation for task %p that was already initialized.\n", v18, v19, v23[0]);
    }

    os_unfair_lock_unlock(&continuationChecking::ActiveContinuationsLock);
  }

  swift::concurrency::trace::task_continuation_init(v5, a1);
  return v5;
}

swift *swift_continuation_initSlow(swift *a1, unint64_t a2)
{
  Override_continuation_init = swift::getOverride_continuation_init(a1);
  if (Override_continuation_init)
  {
    swift_continuation_init::Override = Override_continuation_init;

    return Override_continuation_init(a1, a2, swift_continuation_initImpl);
  }

  else
  {
    swift_continuation_init::Override = 1;

    return swift_continuation_initImpl(a1, a2);
  }
}

void swift_continuation_await(swift *a1, uint64_t a2)
{
  if (swift_continuation_await::Override == 1)
  {
    swift_continuation_awaitImpl(a1, a2);
  }

  else if (swift_continuation_await::Override)
  {
    swift_continuation_await::Override(a1, swift_continuation_awaitImpl);
  }

  else
  {
    swift_continuation_awaitSlow(a1);
  }
}

void swift_continuation_awaitImpl(uint64_t a1, uint64_t a2)
{
  swift::concurrency::trace::task_continuation_await(a1, a2);
  explicit = atomic_load_explicit((a1 + 24), memory_order_acquire);
  if (explicit == 2)
  {
    v4 = *(a1 + 8);
    if ((*(a1 + 16) & 2) != 0)
    {
      if (v4)
      {
LABEL_4:
        v5 = v4;
LABEL_13:
        v25 = *(a1 + 48);
        v26 = *(a1 + 56);

        swift_task_switch(v5, v25, v26);
        return;
      }

LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    Current = swift_task_getCurrent();
    v7 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 32) = 2;
    *(v7 + 40) = Current;
    *(v7 + 16) = a1;
    *(Current + 20) = v7;
    v29 = v7;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v28[0] = _X2;
    v28[1] = 0;
    v27[0] = &v29;
    v27[1] = v28;
    swift::addStatusRecord(Current, v7, v28, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v27);
    swift_task_exitThreadLocalContext();
    v16 = swift::restoreTaskVoucher(Current, v15);
    v24 = explicit;
    atomic_compare_exchange_strong((a1 + 24), &v24, 1uLL);
    if (v24 == explicit)
    {
      swift::_swift_task_clearCurrent(v16);
      return;
    }

    swift::AsyncTask::flagAsRunning(Current, v17, v18, v19, v20, v21, v22, v23);
    v4 = *(a1 + 8);
    if ((*(a1 + 16) & 2) != 0)
    {
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v4();
}

void swift_continuation_awaitSlow(swift *a1)
{
  Override_continuation_await = swift::getOverride_continuation_await(a1);
  if (Override_continuation_await)
  {
    swift_continuation_await::Override = Override_continuation_await;

    Override_continuation_await(a1, swift_continuation_awaitImpl);
  }

  else
  {
    swift_continuation_await::Override = 1;

    swift_continuation_awaitImpl(a1, v3);
  }
}

uint64_t swift_task_startOnMainActor(swift::AsyncTask *a1)
{
  if (swift_task_startOnMainActor::Override == 1)
  {
    return swift_task_startOnMainActorImpl(a1);
  }

  if (swift_task_startOnMainActor::Override)
  {
    return swift_task_startOnMainActor::Override(a1, swift_task_startOnMainActorImpl);
  }

  return swift_task_startOnMainActorSlow(a1);
}

uint64_t swift_task_startOnMainActorImpl(swift::AsyncTask *a1)
{
  v2 = swift::_swift_task_clearCurrent(a1);
  MainExecutor = swift_task_getMainExecutor(v2);
  v5 = v4;
  if ((swift_task_isCurrentExecutor(MainExecutor, v4) & 1) == 0)
  {
    swift::swift_Concurrency_fatalError(0, "Not on the main executor", v6, v7);
  }

  swift_job_run(a1, MainExecutor, v5);

  return swift::_swift_task_setCurrent(v2);
}

uint64_t swift_task_startOnMainActorSlow(swift *a1)
{
  Override_task_startOnMainActor = swift::getOverride_task_startOnMainActor(a1);
  if (Override_task_startOnMainActor)
  {
    swift_task_startOnMainActor::Override = Override_task_startOnMainActor;

    return Override_task_startOnMainActor(a1, swift_task_startOnMainActorImpl);
  }

  else
  {
    swift_task_startOnMainActor::Override = 1;

    return swift_task_startOnMainActorImpl(a1);
  }
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *a4 = *a4 & 0xFFFFB3FF | 0x4000;
  swift::TaskDependencyStatusRecord::performEscalationAction(**a1, **(a1 + 8), v4);
  return 1;
}

uint64_t swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::~StackAllocator(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if (*a1)
  {
    swift::swift_Concurrency_fatalError(0, "not all allocations are deallocated", a3, a4);
  }

  v5 = a1;
  if (*(a1 + 16))
  {
    memset_s(*(a1 + 8), 8uLL, 0, 8uLL);
    v5 = a1;
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
    }
  }

  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
  if (v6)
  {
    do
    {
      v7 = v6[1];
      memset_s(v6, 8uLL, 0, 8uLL);
      free(v6);
      *(a1 + 16) -= 2;
      v6 = v7;
    }

    while (v7);
  }

  return a1;
}

void completeInlineTask(swift *a1)
{
  v2 = swift::_swift_task_clearCurrent(a1);
  v3 = v2;
  *(v1 - 8) = 0;
  v4 = *(v2 + 8);
  if ((v4 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v2);
    v4 = *(v3 + 32);
  }

  if ((v4 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v3);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v17 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v17);
  }

  swift::TaskLocal::Storage::destroy((v3 + 136), v3, _X2, 0);
  if ((*(v3 + 35) & 2) != 0)
  {

    swift::AsyncTask::completeFuture(v3, v1);
  }
}

void completeTask(swift *a1)
{
  v3 = swift::_swift_task_clearCurrent(a1);
  v4 = v3;
  *(v2 - 8) = v1;
  v5 = *(v3 + 8);
  if ((v5 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v3);
    v5 = *(v4 + 32);
  }

  if ((v5 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v4);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v18 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v18);
  }

  swift::TaskLocal::Storage::destroy((v4 + 136), v4, _X2, 0);
  if ((*(v4 + 35) & 2) != 0)
  {

    swift::AsyncTask::completeFuture(v4, v2);
  }
}

uint64_t completeTaskWithClosure()
{

  v3 = swift::_swift_task_clearCurrent(v2);
  v4 = v3;
  *(v1 - 8) = v0;
  v5 = *(v3 + 8);
  if ((v5 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(v3);
    v5 = *(v4 + 32);
  }

  if ((v5 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(v4);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v18 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v18);
  }

  swift::TaskLocal::Storage::destroy((v4 + 136), v4, _X2, 0);
  if ((*(v4 + 35) & 2) != 0)
  {
    swift::AsyncTask::completeFuture(v4, v1);
  }
}

uint64_t completeTaskAndRelease(swift *a1)
{
  v3 = swift::_swift_task_clearCurrent(a1);
  *(v2 - 8) = v1;
  swift::AsyncTask::OpaquePrivateStorage::complete((v3 + 80), v3);
  if ((*(v3 + 35) & 2) != 0)
  {
    swift::AsyncTask::completeFuture(v3, v2);
  }
}

void swift::concurrency::trace::task_create(uint64_t (**this)(), swift::AsyncTask *a2, swift::AsyncTask *a3, swift::TaskGroup *a4, swift::AsyncLet *a5, int a6, int a7, int a8, BOOL a9, BOOL a10, BOOL a11, BOOL a12, const char *a13)
{
  v16 = a5;
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v21 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, this);
      v22 = v21;
      if (a2)
      {
        a2 = (*(a2 + 9) | (*(a2 + 36) << 32));
      }

      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v24 = this[7];
          v25 = *(this + 9) | (*(this + 36) << 32);
          if (!v24)
          {
            goto LABEL_21;
          }

          if (v24 == non_future_adapter || v24 == future_adapter)
          {
            v26 = *(this[8] - 3);
          }

          else
          {
            v26 = this[7];
          }

          if (v24 != task_wait_throwing_resume_adapter && v24 != task_future_wait_resume_adapter)
          {
            goto LABEL_22;
          }

          if (*(this[8] + 1))
          {
            v26 = *(this[8] + 1);
          }

          else
          {
LABEL_21:
            v26 = 0;
          }

LABEL_22:
          v27 = 134221058;
          v28 = v25;
          v29 = 2048;
          v30 = v26;
          v31 = 1024;
          v32 = v16;
          v33 = 1024;
          v34 = a6;
          v35 = 1024;
          v36 = a7;
          v37 = 1024;
          v38 = a8;
          v39 = 1024;
          v40 = a9;
          v41 = 2048;
          v42 = a2;
          v43 = 2048;
          v44 = a3;
          v45 = 2048;
          v46 = a4;
          v47 = 1024;
          v48 = a10;
          v49 = 1024;
          v50 = a11;
          v51 = 2082;
          v52 = a13;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v22, "task_lifetime", "task=%lld resumefn=%p jobPriority=%u isChildTask=%{BOOL}d, isFuture=%{BOOL}d isGroupChildTask=%{BOOL}d isAsyncLetTask=%{BOOL}d parent=%lld group=%p asyncLet=%p isDiscardingTask=%{BOOL}d hasInitialTaskExecutorPreference=%{BOOL}d taskName=%{public}s", &v27, 0x68u);
        }
      }
    }
  }
}

void swift::AsyncTask::OpaquePrivateStorage::complete(uint64_t **this, swift::AsyncTask *a2)
{
  v4 = *(a2 + 8);
  if ((v4 & 0x40000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskNameRecord(a2);
    v4 = *(a2 + 8);
  }

  if ((v4 & 0x20000000) != 0)
  {
    swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(a2);
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2 & 0xFFFFC3FF | 0x2000;
  _X1 = 0;
  __asm { CASP            X0, X1, X4, X5, [X8] }

  if (_X0 != _X2)
  {
    do
    {
      _X2 = (_X0 & 0xFFFFC3FF | 0x2000);
      _X5 = 0;
      __asm { CASP            X4, X5, X2, X3, [X8] }

      v17 = _X4 ^ _X0;
      _X0 = _X4;
    }

    while (v17);
  }

  swift::TaskLocal::Storage::destroy(this + 7, a2, _X2, 0);
}

void continuationChecking::willResume(unint64_t this, swift::AsyncTask *a2)
{
  v3 = continuationChecking::CurrentState;
  if (!continuationChecking::CurrentState)
  {
    if (concurrencyValidateUncheckedContinuations())
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    continuationChecking::CurrentState = v3;
  }

  if (v3 == 1)
  {
    os_unfair_lock_lock(&continuationChecking::ActiveContinuationsLock);
    if (qword_1EA82E900 != -1)
    {
      continuationChecking::willResume(v4);
    }

    if (!qword_1EA82E8E0)
    {
      goto LABEL_25;
    }

    v7 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(qword_1EA82E8E0);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= qword_1EA82E8E0)
      {
        v11 = v9 % qword_1EA82E8E0;
      }
    }

    else
    {
      v11 = (qword_1EA82E8E0 - 1) & v9;
    }

    v12 = *(continuationChecking::ActiveContinuations + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_25:
      swift::swift_Concurrency_fatalError(0, "Resuming continuation for task %p that is not awaited (may have already been resumed).\n", v5, v6, this);
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v9)
      {
        if (v13[2] == this)
        {
          std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::remove(&continuationChecking::ActiveContinuations, v13, &__p);
          v15 = __p;
          __p = 0;
          if (v15)
          {
            operator delete(v15);
          }

          os_unfair_lock_unlock(&continuationChecking::ActiveContinuationsLock);
          return;
        }
      }

      else
      {
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= qword_1EA82E8E0)
          {
            v14 %= qword_1EA82E8E0;
          }
        }

        else
        {
          v14 &= qword_1EA82E8E0 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_25;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }
}

void swift::concurrency::trace::task_continuation_resume(void *ptr, uint64_t a2)
{
  v2 = a2;
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        v6 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v7 = 134218240;
          v8 = ptr;
          v9 = 1024;
          v10 = v2;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_INTERVAL_END, v5, "task_continuation", "context=%p error=%{BOOL}d", &v7, 0x12u);
        }
      }
    }
  }
}

double swift::Lazy<std::unordered_set<swift::AsyncTask *>>::defaultInitCallback(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

void *std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

BOOL __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_addCancellationHandlerImpl(void({swiftcall}*)(void * {swift_context}),void *)::$_0>(_BYTE **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    **a1 = 1;
  }

  return (a2 & 0x100) == 0;
}

uint64_t (*swift_task_asyncMainDrainQueue::$_0::__invoke(swift_task_asyncMainDrainQueue::$_0 *this, void *a2))(void)
{
  result = swift::getOverride_task_asyncMainDrainQueue(this);
  swift_task_asyncMainDrainQueue::Override = result;
  return result;
}

void swift::concurrency::trace::task_continuation_init(uint64_t a1, void *ptr)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(a1);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v4 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        v6 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v7 = *(a1 + 36) | (*(a1 + 144) << 32);
          v8 = 134218240;
          v9 = v7;
          v10 = 2048;
          v11 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "task_continuation", "task=%lld context=%p", &v8, 0x16u);
        }
      }
    }
  }
}

void *std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__emplace_unique_key_args<swift::AsyncTask *,swift::AsyncTask * const&>(float *a1, void *a2, void *a3)
{
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_11;
  }

  return result;
}

void std::__hash_table<swift::AsyncTask *,std::hash<swift::AsyncTask *>,std::equal_to<swift::AsyncTask *>,std::allocator<swift::AsyncTask *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void swift::concurrency::trace::task_continuation_await(void *ptr, uint64_t a2)
{
  if (qword_1ED42EB60 != -1)
  {
    swift::concurrency::trace::task_wait(ptr);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v3 = os_signpost_id_make_with_pointer(swift::concurrency::trace::TaskLog, ptr);
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = v3;
        v5 = swift::concurrency::trace::TaskLog;
        if (os_signpost_enabled(swift::concurrency::trace::TaskLog))
        {
          v6 = 134217984;
          v7 = ptr;
          _os_signpost_emit_with_name_impl(&dword_1815A3000, v5, OS_SIGNPOST_EVENT, v4, "task_continuation_await", "context=%p", &v6, 0xCu);
        }
      }
    }
  }
}

void _GLOBAL__sub_I_Task_cpp()
{
  if (destroyJob)
  {
    v0 = destroyJob;
  }

  else
  {
    v0 = 0;
  }

  jobHeapMetadata = 0;
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  qword_1ED42EA70 = v1;
  *algn_1ED42EA78 = 0;
  qword_1ED42EA80 = 1283;
  unk_1ED42EA88 = v6;
  unk_1ED42EA98 = v7;
  qword_1ED42EAA8 = 1;
  if (jobInvoke)
  {
    v2 = jobInvoke;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED42EAB0 = v2;
  if (destroyTask)
  {
    v3 = destroyTask;
  }

  else
  {
    v3 = 0;
  }

  taskHeapMetadata = 0;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  qword_1ED42EAC0 = v4;
  *algn_1ED42EAC8 = 0;
  qword_1ED42EAD0 = 1282;
  unk_1ED42EAD8 = v6;
  unk_1ED42EAE8 = v7;
  qword_1ED42EAF8 = 1;
  if (jobInvoke)
  {
    v5 = jobInvoke;
  }

  else
  {
    v5 = 0;
  }

  qword_1ED42EB00 = v5;
}

uint64_t swift_task_alloc(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = (Current + 112);
  }

  else if (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))
  {
    v3 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v9);
    v3 = v9;
  }

  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(v3, v4);
  v6 = *(SlabForAllocation + 5);
  v7 = SlabForAllocation + v6;
  *(v7 + 4) = *v3;
  *(v7 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v4 + v6 + 16;
  *v3 = (SlabForAllocation + v6 + 32);
  return SlabForAllocation + v6 + 48;
}

uint64_t swift::_swift_task_alloc_specific(swift *this, swift::AsyncTask *a2)
{
  if (this)
  {
    v2 = (this + 112);
  }

  else if (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))
  {
    v2 = &qword_1ED42EB78;
  }

  else
  {
    v8 = a2;
    swift_task_alloc_cold_1(&v9);
    a2 = v8;
    v2 = v9;
  }

  v3 = (a2 + 15) & 0xFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(v2, (a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(SlabForAllocation + 5);
  v6 = SlabForAllocation + v5;
  *(v6 + 4) = *v2;
  *(v6 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v3 + v5 + 16;
  *v2 = (SlabForAllocation + v5 + 32);
  return SlabForAllocation + v5 + 48;
}

void swift_task_dealloc(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v5 = (Current + 112);
  }

  else if (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))
  {
    v5 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v9);
    v5 = v9;
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = *v5 + 16 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", v3, v4);
  }

  v8 = *v6;
  *(v6[1] + 20) = v6 - v6[1] - 32;
  *v5 = v8;
}

void swift::_swift_task_dealloc_specific(uint64_t this, swift::AsyncTask *a2, const char *a3, char *a4)
{
  if (this)
  {
    v4 = (this + 112);
  }

  else if (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))
  {
    v4 = &qword_1ED42EB78;
  }

  else
  {
    v8 = a2;
    swift_task_alloc_cold_1(&v9);
    a2 = v8;
    v4 = v9;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = *v4 + 16 == a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", a3, a4);
  }

  v7 = *v5;
  *(v5[1] + 20) = v5 - v5[1] - 32;
  *v4 = v7;
}

void swift_task_dealloc_through(void *a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v5 = (Current + 112);
  }

  else if (atomic_load_explicit(_MergedGlobals_0, memory_order_acquire))
  {
    v5 = &qword_1ED42EB78;
  }

  else
  {
    swift_task_alloc_cold_1(&v10);
    v5 = v10;
  }

  v6 = *v5;
  do
  {
    if (!v6)
    {
      swift::swift_Concurrency_fatalError(0, "freed pointer not among allocations", v3, v4);
    }

    v7 = v6 + 2;
    v8 = v6[1];
    v9 = v6 - v8;
    v6 = *v6;
    *(v8 + 20) = v9 - 32;
    *v5 = v6;
  }

  while (v7 != a1);
}

uint64_t swift_job_allocate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v3 = (a2 + 15) & 0xFFFFFFF0;
  SlabForAllocation = swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation((a1 + 112), (a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(SlabForAllocation + 5);
  v7 = SlabForAllocation + v6;
  *(v7 + 4) = *(a1 + 112);
  *(v7 + 5) = SlabForAllocation;
  *(SlabForAllocation + 5) = v3 + v6 + 16;
  *(a1 + 112) = SlabForAllocation + v6 + 32;
  return SlabForAllocation + v6 + 48;
}

uint64_t swift_job_deallocate(uint64_t result, uint64_t *a2, const char *a3, char *a4)
{
  if (!*(result + 32))
  {
    v6 = *(result + 112);
    if (v6)
    {
      v7 = v6 + 2 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      swift::swift_Concurrency_fatalError(0, "freed pointer was not the last allocation", a3, a4, v4, v5);
    }

    v8 = *v6;
    *(v6[1] + 20) = v6 - v6[1] - 32;
    *(result + 112) = v8;
  }

  return result;
}

uint64_t *swift::StackAllocator<984ul,&swift::TaskAllocatorSlabMetadata>::getSlabForAllocation(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v3 = a1;
  }

  v4 = v3[1];
  if (v4)
  {
    if (a2 + 16 + *(v4 + 5) <= *(v4 + 4))
    {
      return v4;
    }

    v5 = v4[1];
    if (v5)
    {
      if (a2 + 16 + *(v5 + 20) <= *(v5 + 16))
      {
        return v4[1];
      }

      v6 = a2;
      v7 = 0;
      v4[1] = 0;
      do
      {
        v8 = *(v5 + 8);
        v7 += *(v5 + 16);
        memset_s(v5, 8uLL, 0, 8uLL);
        free(v5);
        *(a1 + 4) -= 2;
        v5 = v8;
      }

      while (v8);
      if (v7 <= v6)
      {
        a2 = v6;
      }

      else
      {
        a2 = v7;
      }
    }
  }

  else
  {
    v4 = a1;
  }

  if (a2 + 16 <= 0x3D8)
  {
    v9 = 984;
  }

  else
  {
    v9 = a2 + 16;
  }

  v10 = malloc_type_malloc(v9 + 32, 0xF006C5ADuLL);
  *v10 = &swift::TaskAllocatorSlabMetadata;
  v10[1] = 0;
  *(v10 + 4) = v9;
  *(v10 + 5) = 0;
  v4[1] = v10;
  *(a1 + 4) += 2;
  return v10;
}

void OUTLINED_FUNCTION_0_0(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = (a2 & 0xFFFFFFFFFFFFFFF0);
  *v4 = v2;
  v4[1] = 0;
  v4[2] = (a1 - v4 + 504);
  *(v3 + 16) = v4;
  *(v3 + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, void *a2, void *a3)
{
}

uint64_t swift::addStatusRecord(swift::concurrency::trace *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a2;
  LODWORD(_X8) = *a3;
  if ((*a3 & 0x200) != 0)
  {
    _X8 = *a3;
    _X9 = a3[1];
LABEL_10:
    v23 = 0;
    v19 = &v24;
    v20 = &v23;
    v21 = &v25;
    withStatusRecordLock(a1, _X8, _X9, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v22, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, &v19);
    v12 = v23;
  }

  else
  {
    _X9 = a3[1];
    v9 = MEMORY[0x1E69E7CF0];
    while (1)
    {
      v10 = v24;
      *(v24 + 8) = _X9;
      v19 = _X8;
      v20 = v10;
      v11 = v25(v26, *a3, a3[1], &v19);
      v12 = v11;
      if (!v11)
      {
        break;
      }

      if (*v9)
      {
        (*v9)(a1);
      }

      _X0 = v19;
      _X9 = a3[1];
      __asm { CASPL           X8, X9, X0, X1, [X10] }

      if (_X8 == *a3)
      {
        swift::concurrency::trace::task_status_changed(a1, v19, (v19 >> 8) & 1, (v19 >> 10) & 1, 0, (v19 >> 11) & 1, (v19 >> 12) & 1);
        return v12 & 1;
      }

      *a3 = _X8;
      a3[1] = _X9;
      if ((_X8 & 0x200) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  return v12 & 1;
}

uint64_t withStatusRecordLock(swift::concurrency::trace *a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, unint64_t *), uint64_t a7)
{
  _X25 = a3;
  _X26 = a2;
  os_unfair_recursive_lock_lock_with_options();
  if ((_X26 & 0x200) != 0)
  {
    _X24 = 0;
    _X25 = 0;
    __asm { CASP            X24, X25, X24, X25, [X8] }

    LODWORD(_X26) = _X24;
    v13 = HIDWORD(_X24);
    if ((_X24 & 0x200) != 0)
    {
      v25 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = HIDWORD(_X26);
  }

  _X24 = _X26 | 0x200;
  _X3 = _X25;
  __asm { CASP            X2, X3, X24, X25, [X8] }

  if (_X2 != (_X26 | (v13 << 32)))
  {
    v23 = _X2;
    do
    {
      LODWORD(_X26) = v23;
      _X24 = v23 | 0x200;
      __asm { CASP            X2, X3, X24, X25, [X8] }

      _ZF = _X2 == v23;
      v23 = _X2;
    }

    while (!_ZF);
  }

  swift::concurrency::trace::task_status_changed(a1, _X26, (_X26 >> 8) & 1, (_X26 >> 10) & 1, 0, (_X26 >> 11) & 1, (_X26 >> 12) & 1);
  v25 = 0;
  v13 = 0;
  LODWORD(_X26) = _X24;
LABEL_10:
  a4(a5, _X26 | (v13 << 32), _X25);
  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (a6)
  {
    v31 = __PAIR64__(v13, _X26);
    v32 = _X25;
LABEL_14:
    v27 = (v13 << 32) | _X26;
    a6(a7, v27, _X25, &v31);
    _X0 = v31;
    while (1)
    {
      _X27 = _X25;
      __asm { CASP            X26, X27, X0, X1, [X8] }

      if (_X26 == v27)
      {
        break;
      }

      v13 = HIDWORD(_X26);
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_13:
      _X0 = _X26 & 0xFFFFFDFF;
      v31 = _X0;
      v32 = _X25;
      if (a6)
      {
        goto LABEL_14;
      }

      v27 = _X26 | (v13 << 32);
    }

    swift::concurrency::trace::task_status_changed(a1, _X0, (_X0 >> 8) & 1, (_X0 >> 10) & 1, 0, (_X0 >> 11) & 1, (_X0 >> 12) & 1);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t swift::addStatusRecordToSelf(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a3)
{
  Current = swift_task_getCurrent();
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v15[0] = _X2;
  v15[1] = 0;
  return swift::addStatusRecord(Current, a1, v15, a2, a3) & 1;
}

void swift::removeStatusRecord(swift::concurrency::trace *this, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a5)
{
  v27[0] = a4;
  v27[1] = a5;
  v26 = a2;
  v7 = *a3;
  if ((*a3 & 0x200) == 0)
  {
    _X3 = a3[1];
    while (_X3 == a2)
    {
      v12 = *(a2 + 8);
      _X0 = v7;
      v23 = v7;
      v24 = v12;
      v14 = *a3;
      v15 = a3[1];
      if (a4)
      {
        a4(a5, *a3, a3[1], &v23);
        v7 = v23;
        v14 = *a3;
        v15 = a3[1];
        _X0 = v23;
      }

      _X3 = v15;
      __asm { CASP            X2, X3, X0, X1, [X9] }

      if (_X2 == v14)
      {
        swift::concurrency::trace::task_status_changed(this, v7, (v7 >> 8) & 1, (v7 >> 10) & 1, 0, (v7 >> 11) & 1, (v7 >> 12) & 1);
        return;
      }

      *a3 = _X2;
      a3[1] = v15;
      v7 = _X2;
      if ((_X2 & 0x200) != 0)
      {
        break;
      }
    }
  }

  v21 = *a3;
  v22 = a3[1];
  v23 = &v26;
  v24 = v27;
  v25 = &v26;
  withStatusRecordLock(this, v21, v22, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v25, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, &v23);
}

void swift::removeStatusRecordFromSelf(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t, unint64_t *), uint64_t a3)
{
  Current = swift_task_getCurrent();
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v14[0] = _X2;
  v14[1] = 0;
  swift::removeStatusRecord(Current, a1, v14, a2, a3);
}

uint64_t swift::updateStatusRecord(swift::concurrency::trace *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t, unint64_t, uint64_t, unint64_t *), uint64_t a7)
{
  v11[0] = a3;
  v11[1] = a4;
  v7 = *a5;
  v8 = a5[1];
  v10 = v11;
  return withStatusRecordLock(a1, v7, v8, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::updateStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,__swift::__runtime::llvm::function_ref<void ()(void)>,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, &v10, a6, a7);
}

uint64_t swift::AsyncTask::getPreferredTaskExecutor(swift::AsyncTask *this)
{
  if ((*(this + 35) & 0x20) != 0)
  {
    goto LABEL_3;
  }

  _X2 = 0;
  _X3 = 0;
  v3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X9] }

  if ((_X2 & 0x8000) != 0)
  {
LABEL_3:
    _X6 = 0;
    _X7 = 0;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v15 = &v13;
    withStatusRecordLock(this, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
    return v14[0];
  }

  return v3;
}

uint64_t swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::concurrency::trace *a1)
{
  _X8 = 0;
  _X9 = 0;
  v10 = 0;
  v9[0] = &v10;
  v9[1] = &v11;
  __asm { CASP            X8, X9, X8, X9, [X10] }

  v16[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::CancellationNotificationStatusRecord * swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
  v16[1] = v9;
  v15 = 0;
  v14 = 0;
  v13[0] = v16;
  v13[1] = &v14;
  v11 = 0;
  v12[0] = &v14;
  v12[1] = &v15;
  withStatusRecordLock(a1, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v13, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v12);
  return v11;
}

uint64_t swift::AsyncTask::pushInitialTaskExecutorPreference(swift *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = swift::_swift_task_alloc_specific(a1, 0x28);
  *v8 = 5;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  if (a4)
  {
    *(v8 + 16) = 1;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v18[0] = _X2;
  v18[1] = 0;
  return swift::addStatusRecord(a1, v8, v18, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::pushInitialTaskExecutorPreference(swift::TaskExecutorRef,BOOL)::$_0>, &v17);
}

void swift::AsyncTask::dropInitialTaskExecutorPreferenceRecord(swift::AsyncTask *this)
{
  _X8 = 0;
  _X9 = 0;
  v13 = 0;
  v12[0] = &v13;
  v12[1] = &v14;
  __asm { CASP            X8, X9, X8, X9, [X10] }

  v19[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskExecutorPreferenceStatusRecord * swift::popStatusRecordOfType<swift::TaskExecutorPreferenceStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
  v19[1] = v12;
  v18 = 0;
  v17 = 0;
  v16[0] = v19;
  v16[1] = &v17;
  v14 = 0;
  v15[0] = &v17;
  v15[1] = &v18;
  withStatusRecordLock(this, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v16, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v15);
  v11 = v14;
  if (*(v14 + 16))
  {
    swift_unknownObjectRelease();
  }

  swift::_swift_task_dealloc_specific(this, v11, v9, v10);
}

uint64_t swift::AsyncTask::pushInitialTaskName(swift::AsyncTask *this, const char *a2)
{
  v4 = swift::_swift_task_alloc_specific(this, 0x18);
  v5 = strlen(a2);
  v6 = swift::_swift_task_alloc_specific(this, (v5 + 1));
  v7 = strncpy(v6, a2, v5);
  _X2 = 0;
  _X3 = 0;
  v7[v5] = 0;
  *v4 = 6;
  v4[1] = 0;
  v4[2] = v7;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  v17[0] = _X2;
  v17[1] = 0;
  return swift::addStatusRecord(this, v4, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::pushInitialTaskName(char const*)::$_0>, &v16);
}

void swift::AsyncTask::dropInitialTaskNameRecord(swift::concurrency::trace *this)
{
  if ((*(this + 35) & 0x40) != 0)
  {
    _X8 = 0;
    _X9 = 0;
    v15 = 0;
    v14[0] = &v15;
    v14[1] = &v16;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    v21[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskNameStatusRecord * swift::popStatusRecordOfType<swift::TaskNameStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>;
    v21[1] = v14;
    v20 = 0;
    v19 = 0;
    v18[0] = v21;
    v18[1] = &v19;
    v16 = 0;
    v17[0] = &v19;
    v17[1] = &v20;
    withStatusRecordLock(this, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v18, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v17);
    v9 = v16;
    swift::_swift_task_dealloc_specific(this, v16[2], v10, v11);
    swift::_swift_task_dealloc_specific(this, v9, v12, v13);
  }
}

uint64_t swift::AsyncTask::getTaskName(swift::AsyncTask *this)
{
  if ((*(this + 35) & 0x40) == 0)
  {
    return 0;
  }

  v13[1] = v1;
  v13[2] = v2;
  _X6 = 0;
  _X7 = 0;
  v11 = &v12;
  v12 = 0;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v13[0] = &v11;
  withStatusRecordLock(this, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getTaskName(void)::$_0>(swift::AsyncTask*,swift::AsyncTask::getTaskName(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v13, 0, _X6);
  return v12;
}

uint64_t swift::updateNewChildWithParentAndGroupState(uint64_t result, __int16 a2, int a3, swift::TaskGroup *this)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASP            X20, X21, X20, X21, [X8] }

  v11 = _X20;
  if ((a2 & 0x100) != 0 || this && (v12 = result, v13 = a2, isCancelled = swift::TaskGroup::isCancelled(this), LOBYTE(a2) = v13, v15 = isCancelled, result = v12, v15))
  {
    v11 = _X20 | 0x100;
  }

  v16 = a2;
  if (a2 == 33)
  {
    v16 = 25;
  }

  _X20 = v11 & 0xFFFFFF00 | v16;
  v18 = *(result + 96);
  do
  {
    _X5 = *(result + 104);
    __asm { CASP            X4, X5, X20, X21, [X8] }

    _ZF = _X4 == v18;
    v18 = _X4;
  }

  while (!_ZF);
  return result;
}

uint64_t swift::_swift_taskGroup_detachChild(swift *this, swift::TaskGroup *a2, swift::AsyncTask *a3)
{
  _X6 = 0;
  _X7 = 0;
  v14 = this;
  v5 = *(a2 + 22);
  v12[0] = &v14;
  v12[1] = &v13;
  v13 = a2;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v15 = v12;
  return withStatusRecordLock(v5, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_detachChild(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_detachChild(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
}

void swift_task_cancel(swift::AsyncTask *a1)
{
  if (swift_task_cancel::Override == 1)
  {
    swift_task_cancelImpl(a1);
  }

  else if (swift_task_cancel::Override)
  {
    swift_task_cancel::Override(a1, swift_task_cancelImpl);
  }

  else
  {
    swift_task_cancelSlow(a1);
  }
}

uint64_t swift::_swift_taskGroup_cancel_unlocked(swift *this, swift::TaskGroup *a2, swift::AsyncTask *a3)
{
  v13 = this;
  result = swift::TaskGroup::getTaskRecord(this);
  if (*(result + 16))
  {
    _X6 = 0;
    _X7 = 0;
    v12 = &v13;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v14 = &v12;
    return withStatusRecordLock(a2, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
  }

  return result;
}

void swift::TaskDependencyStatusRecord::performEscalationAction(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(result + 32);
  if (v3 == 4)
  {
    swift::swift_executor_escalate(*(result + 16), *(result + 24), *(result + 40), a3);
  }

  else if (v3 == 1)
  {
    v4 = *(result + 16);
    if (swift_task_escalate::Override == 1)
    {
      swift_task_escalateImpl(v4, a3);
    }

    else if (swift_task_escalate::Override)
    {
      swift_task_escalate::Override(v4, a3, swift_task_escalateImpl);
    }

    else
    {
      swift_task_escalateSlow(v4, a3);
    }
  }
}

uint64_t swift_task_escalate(swift::concurrency::trace *a1, unint64_t a2)
{
  if (swift_task_escalate::Override == 1)
  {
    return swift_task_escalateImpl(a1, a2);
  }

  if (swift_task_escalate::Override)
  {
    return swift_task_escalate::Override(a1, a2, swift_task_escalateImpl);
  }

  return swift_task_escalateSlow(a1, a2);
}

uint64_t swift_taskGroup_attachChild(swift *a1, uint64_t a2)
{
  v4 = swift_taskGroup_attachChild::Override;
  if (swift_taskGroup_attachChild::Override == 1)
  {
    v17[1] = v2;
    v17[2] = v3;
    _X6 = 0;
    _X7 = 0;
    v16 = a1;
    v7 = *(a2 + 176);
    v14[0] = &v16;
    v14[1] = &v15;
    v15 = a2;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v17[0] = v14;
    return withStatusRecordLock(v7, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v17, 0, _X6);
  }

  else if (swift_taskGroup_attachChild::Override)
  {

    return v4(a1, a2, swift_taskGroup_attachChildImpl);
  }

  else
  {

    return swift_taskGroup_attachChildSlow(a1, a2);
  }
}

uint64_t swift_taskGroup_attachChildImpl(swift::TaskGroup *a1, swift::AsyncTask *a2)
{
  _X6 = 0;
  _X7 = 0;
  v13 = a1;
  v4 = *(a2 + 22);
  v11[0] = &v13;
  v11[1] = &v12;
  v12 = a2;
  __asm { CASP            X6, X7, X6, X7, [X8] }

  v14 = v11;
  return withStatusRecordLock(v4, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
}

uint64_t swift_taskGroup_attachChildSlow(swift *a1, uint64_t a2)
{
  Override_taskGroup_attachChild = swift::getOverride_taskGroup_attachChild(a1);
  if (Override_taskGroup_attachChild)
  {
    swift_taskGroup_attachChild::Override = Override_taskGroup_attachChild;

    return (Override_taskGroup_attachChild)(a1, a2, swift_taskGroup_attachChildImpl);
  }

  else
  {
    _X6 = 0;
    _X7 = 0;
    swift_taskGroup_attachChild::Override = 1;
    v15 = a2;
    v16 = a1;
    v8 = *(a2 + 176);
    v14[0] = &v16;
    v14[1] = &v15;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v17 = v14;
    return withStatusRecordLock(v8, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v17, 0, _X6);
  }
}

uint64_t swift_task_hasTaskGroupStatusRecord(swift *a1)
{
  v3 = swift_task_hasTaskGroupStatusRecord::Override;
  if (swift_task_hasTaskGroupStatusRecord::Override == 1)
  {
    v16[1] = v1;
    v16[2] = v2;
    Current = swift_task_getCurrent();
    if (Current)
    {
      _X6 = 0;
      _X7 = 0;
      v15 = 0;
      v14 = &v15;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v16[0] = &v14;
      withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v16, 0, _X6);
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    return v12 & 1;
  }

  else if (swift_task_hasTaskGroupStatusRecord::Override)
  {

    return v3(swift_task_hasTaskGroupStatusRecordImpl);
  }

  else
  {

    return swift_task_hasTaskGroupStatusRecordSlow(a1);
  }
}

uint64_t swift_task_hasTaskGroupStatusRecordImpl(void)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    _X6 = 0;
    _X7 = 0;
    v11 = 0;
    v10 = &v11;
    __asm { CASP            X6, X7, X6, X7, [X8] }

    v12 = &v10;
    withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v12, 0, _X6);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t swift_task_hasTaskGroupStatusRecordSlow(swift *a1)
{
  hasTaskGroupStatusRecord = swift::getOverride_task_hasTaskGroupStatusRecord(a1);
  if (hasTaskGroupStatusRecord)
  {
    swift_task_hasTaskGroupStatusRecord::Override = hasTaskGroupStatusRecord;

    return (hasTaskGroupStatusRecord)(swift_task_hasTaskGroupStatusRecordImpl);
  }

  else
  {
    swift_task_hasTaskGroupStatusRecord::Override = 1;
    Current = swift_task_getCurrent();
    if (Current)
    {
      _X6 = 0;
      _X7 = 0;
      v13 = 0;
      v12 = &v13;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v14 = &v12;
      withStatusRecordLock(Current, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v14, 0, _X6);
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    return v11 & 1;
  }
}

void swift_task_cancelImpl(swift::AsyncTask *this)
{
  _X22 = 0;
  _X23 = 0;
  __asm { CASP            X22, X23, X22, X23, [X8] }

  if ((_X22 & 0x100) == 0)
  {
    v8 = HIDWORD(_X22);
    while (1)
    {
      _X20 = _X22 | 0x100;
      _X3 = 0;
      __asm { CASP            X2, X3, X20, X21, [X8] }

      if (_X2 == (_X22 | (v8 << 32)))
      {
        break;
      }

      v8 = HIDWORD(_X2);
      LODWORD(_X22) = _X2;
      if ((_X2 & 0x100) != 0)
      {
        return;
      }
    }

    if (*MEMORY[0x1E69E7CE8])
    {
      (*MEMORY[0x1E69E7CE8])(this);
    }

    swift::concurrency::trace::task_status_changed(this, _X22, 1, (_X22 >> 10) & 1, 0, (_X22 >> 11) & 1, (_X22 >> 12) & 1);
  }
}

void swift_task_cancelSlow(swift *a1)
{
  Override_task_cancel = swift::getOverride_task_cancel(a1);
  if (Override_task_cancel)
  {
    swift_task_cancel::Override = Override_task_cancel;

    Override_task_cancel(a1, swift_task_cancelImpl);
  }

  else
  {
    swift_task_cancel::Override = 1;

    swift_task_cancelImpl(a1);
  }
}

uint64_t swift_task_escalateImpl(swift::concurrency::trace *a1, unint64_t a2)
{
  _X22 = 0;
  v18 = a2;
  _X23 = 0;
  __asm { CASP            X22, X23, X22, X23, [X8] }

  v9 = _X22;
  if (_X22 < a2)
  {
    v10 = HIDWORD(_X22);
    while (1)
    {
      if ((_X22 & 0x1800) != 0)
      {
        v11 = _X22 & 0xFFFFFF00 | a2 | 0x400;
      }

      else
      {
        if ((_X22 & 0x2000) != 0)
        {
          return v9;
        }

        v11 = _X22 & 0xFFFFC700 | a2;
      }

      _X20 = v11;
      _X3 = 0;
      __asm { CASP            X2, X3, X20, X21, [X10] }

      if (_X2 == (_X22 | (v10 << 32)))
      {
        break;
      }

      v10 = HIDWORD(_X2);
      v9 = _X2;
      LODWORD(_X22) = _X2;
      if (_X2 >= a2)
      {
        return v9;
      }
    }

    v17 = v9;
    if (*MEMORY[0x1E69E7CE8])
    {
      v15 = a1;
      (*MEMORY[0x1E69E7CE8])();
      a1 = v15;
    }

    if ((v11 & 0x1800) == 0x1000)
    {
      swift::concurrency::trace::priority_inversion_enqueued_task(a1, _X22, v11);
    }

    return v11;
  }

  return v9;
}

uint64_t swift_task_escalateSlow(swift *a1, unint64_t a2)
{
  Override_task_escalate = swift::getOverride_task_escalate(a1);
  if (Override_task_escalate)
  {
    swift_task_escalate::Override = Override_task_escalate;

    return Override_task_escalate(a1, a2, swift_task_escalateImpl);
  }

  else
  {
    swift_task_escalate::Override = 1;

    return swift_task_escalateImpl(a1, a2);
  }
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutor(swift *a1)
{
  v3 = swift_task_getPreferredTaskExecutor::Override;
  if (swift_task_getPreferredTaskExecutor::Override == 1)
  {
    v17[1] = v1;
    v17[2] = v2;
    result = swift_task_getCurrent();
    if (result)
    {
      if ((*(result + 35) & 0x20) != 0)
      {
        goto LABEL_6;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      if ((_X2 & 0x8000) != 0)
      {
LABEL_6:
        _X6 = 0;
        _X7 = 0;
        v16[0] = 0;
        v16[1] = 0;
        v15 = v16;
        __asm { CASP            X6, X7, X6, X7, [X8] }

        v17[0] = &v15;
        withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, v17, 0, _X6);
        return v16[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else if (swift_task_getPreferredTaskExecutor::Override)
  {

    return v3(swift_task_getPreferredTaskExecutorImpl);
  }

  else
  {

    return swift_task_getPreferredTaskExecutorSlow(a1);
  }

  return result;
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutorImpl(void)
{
  result = swift_task_getCurrent();
  if (result)
  {
    if ((*(result + 35) & 0x20) != 0)
    {
      goto LABEL_5;
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    if ((_X2 & 0x8000) != 0)
    {
LABEL_5:
      _X6 = 0;
      _X7 = 0;
      v12[0] = 0;
      v12[1] = 0;
      v11 = v12;
      __asm { CASP            X6, X7, X6, X7, [X8] }

      v13 = &v11;
      withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v13, 0, _X6);
      return v12[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

swift::concurrency::trace *swift_task_getPreferredTaskExecutorSlow(swift *a1)
{
  PreferredTaskExecutor = swift::getOverride_task_getPreferredTaskExecutor(a1);
  if (PreferredTaskExecutor)
  {
    swift_task_getPreferredTaskExecutor::Override = PreferredTaskExecutor;

    return (PreferredTaskExecutor)(swift_task_getPreferredTaskExecutorImpl);
  }

  else
  {
    swift_task_getPreferredTaskExecutor::Override = 1;
    result = swift_task_getCurrent();
    if (result)
    {
      if ((*(result + 35) & 0x20) != 0)
      {
        goto LABEL_9;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      if ((_X2 & 0x8000) != 0)
      {
LABEL_9:
        _X6 = 0;
        _X7 = 0;
        v14[0] = 0;
        v14[1] = 0;
        v13 = v14;
        __asm { CASP            X6, X7, X6, X7, [X8] }

        v15 = &v13;
        withStatusRecordLock(result, _X6, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>, &v15, 0, _X6);
        return v14[0];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_task_pushTaskExecutorPreference(swift *a1, uint64_t a2)
{
  v4 = swift_task_pushTaskExecutorPreference::Override;
  if (swift_task_pushTaskExecutorPreference::Override == 1)
  {
    Current = swift_task_getCurrent();
    if (!Current)
    {
      return 0;
    }

    v6 = Current;
    v7 = swift::_swift_task_alloc_specific(Current, 0x28);
    _X0 = 0;
    _X1 = 0;
    *v7 = 5;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v17[0] = _X0;
    v17[1] = 0;
    swift::addStatusRecord(v6, v7, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v16);
    return v7;
  }

  else if (swift_task_pushTaskExecutorPreference::Override)
  {

    return v4(a1, a2, swift_task_pushTaskExecutorPreferenceImpl);
  }

  else
  {

    return swift_task_pushTaskExecutorPreferenceSlow(a1, a2);
  }
}

uint64_t swift_task_pushTaskExecutorPreferenceImpl(uint64_t a1, uint64_t a2)
{
  Current = swift_task_getCurrent();
  if (!Current)
  {
    return 0;
  }

  v5 = Current;
  v6 = swift::_swift_task_alloc_specific(Current, 0x28);
  _X0 = 0;
  _X1 = 0;
  *v6 = 5;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  v16[0] = _X0;
  v16[1] = 0;
  swift::addStatusRecord(v5, v6, v16, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v15);
  return v6;
}

uint64_t swift_task_pushTaskExecutorPreferenceSlow(swift *a1, uint64_t a2)
{
  Override_task_pushTaskExecutorPreference = swift::getOverride_task_pushTaskExecutorPreference(a1);
  if (Override_task_pushTaskExecutorPreference)
  {
    swift_task_pushTaskExecutorPreference::Override = Override_task_pushTaskExecutorPreference;

    return (Override_task_pushTaskExecutorPreference)(a1, a2, swift_task_pushTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_pushTaskExecutorPreference::Override = 1;
    Current = swift_task_getCurrent();
    if (!Current)
    {
      return 0;
    }

    v7 = Current;
    v8 = swift::_swift_task_alloc_specific(Current, 0x28);
    _X0 = 0;
    _X1 = 0;
    *v8 = 5;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = a1;
    *(v8 + 32) = a2;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v17[0] = _X0;
    v17[1] = 0;
    swift::addStatusRecord(v7, v8, v17, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_pushTaskExecutorPreferenceImpl(swift::TaskExecutorRef)::$_0>, &v16);
    return v8;
  }
}

void swift_task_popTaskExecutorPreference(uint64_t a1)
{
  if (swift_task_popTaskExecutorPreference::Override == 1)
  {
    swift_task_popTaskExecutorPreferenceImpl(a1);
  }

  else if (swift_task_popTaskExecutorPreference::Override)
  {
    swift_task_popTaskExecutorPreference::Override(a1, swift_task_popTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_popTaskExecutorPreferenceSlow(a1);
  }
}

void swift_task_popTaskExecutorPreferenceImpl(uint64_t a1)
{
  v12 = a1;
  v11 = 0;
  Current = swift_task_getCurrent();
  if (Current)
  {
    _X8 = 0;
    _X9 = 0;
    v10[0] = &v11;
    v10[1] = &v12;
    v9 = &v11;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    v17[0] = __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_0>;
    v17[1] = v10;
    v16[0] = __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_1>;
    v16[1] = &v9;
    v15 = 0;
    v14[0] = v17;
    v14[1] = &v15;
    v13[0] = &v15;
    v13[1] = v16;
    withStatusRecordLock(Current, _X8, 0, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>, v14, __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>, v13);
    v12;
  }
}

void swift_task_popTaskExecutorPreferenceSlow(swift *a1)
{
  Override_task_popTaskExecutorPreference = swift::getOverride_task_popTaskExecutorPreference(a1);
  if (Override_task_popTaskExecutorPreference)
  {
    swift_task_popTaskExecutorPreference::Override = Override_task_popTaskExecutorPreference;

    Override_task_popTaskExecutorPreference(a1, swift_task_popTaskExecutorPreferenceImpl);
  }

  else
  {
    swift_task_popTaskExecutorPreference::Override = 1;

    swift_task_popTaskExecutorPreferenceImpl(a1);
  }
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift_taskGroup_attachChildImpl(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(swift::TaskGroup ****a1, __int16 a2)
{
  v3 = *a1;
  swift::TaskGroup::addChildTask(***a1, *(*a1)[1]);
  _X20 = 0;
  v5 = *v3;
  v6 = *v3[1];
  v7 = *v5;
  _X21 = 0;
  __asm { CASP            X20, X21, X20, X21, [X8] }

  v14 = _X20;
  if ((a2 & 0x100) != 0 || v7 && swift::TaskGroup::isCancelled(v7))
  {
    v14 = _X20 | 0x100;
  }

  v15 = a2;
  if (a2 == 33)
  {
    v15 = 25;
  }

  _X20 = v14 & 0xFFFFFF00 | v15;
  result = *(v6 + 96);
  do
  {
    _X3 = *(v6 + 104);
    __asm { CASP            X2, X3, X20, X21, [X8] }

    _ZF = _X2 == result;
    result = _X2;
  }

  while (!_ZF);
  return result;
}

_BYTE ***__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift_task_hasTaskGroupStatusRecordImpl(void)::$_0>(swift::AsyncTask *,swift_task_hasTaskGroupStatusRecordImpl(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(_BYTE ***result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 2)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    ***result = 1;
  }

  return result;
}

void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift_task_cancelImpl(swift::AsyncTask *)::$_0>(int a1, int a2, swift::TaskGroupTaskStatusRecord *this)
{
  if (this)
  {
    v3 = this;
    do
    {
      v4 = *v3;
      switch(v4)
      {
        case 3:
          (*(v3 + 2))();
          break;
        case 2:
          Group = swift::TaskGroupTaskStatusRecord::getGroup(v3);
          swift::TaskGroup::statusCancel(Group);
          for (i = *(swift::TaskGroup::getTaskRecord(Group) + 16); i; i = *(i + 23))
          {
            if (swift_task_cancel::Override == 1)
            {
              swift_task_cancelImpl(i);
            }

            else if (swift_task_cancel::Override)
            {
              swift_task_cancel::Override(i, swift_task_cancelImpl);
            }

            else
            {
              swift_task_cancelSlow(i);
            }
          }

          break;
        case 1:
          for (j = *(v3 + 2); j; j = *(j + 23))
          {
            if (swift_task_cancel::Override == 1)
            {
              swift_task_cancelImpl(j);
            }

            else if (swift_task_cancel::Override)
            {
              swift_task_cancel::Override(j, swift_task_cancelImpl);
            }

            else
            {
              swift_task_cancelSlow(j);
            }
          }

          break;
      }

      v3 = *(v3 + 1);
    }

    while (v3);
  }
}

void swift::concurrency::trace::priority_inversion_enqueued_task(swift::concurrency::trace *this, swift::AsyncTask *a2, uint64_t a3)
{
  if (qword_1ED42EDB8 != -1)
  {
    swift::concurrency::trace::priority_inversion_enqueued_task(this);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy != 1 || _os_trace_lazy_init_completed_4swift())
  {
    if (swift::concurrency::trace::LogsToken != -1)
    {
      swift::runJobInEstablishedExecutorContext();
    }

    if (swift::concurrency::trace::TracingEnabled == 1)
    {
      v6 = swift::concurrency::trace::PotentialPriorityInversionLog;
      if (os_signpost_enabled(swift::concurrency::trace::PotentialPriorityInversionLog))
      {
        v7 = 134218496;
        TaskId = swift::AsyncTask::getTaskId(this);
        v9 = 2048;
        v10 = a2;
        v11 = 2048;
        v12 = a3;
        _os_signpost_emit_with_name_impl(&dword_1815A3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "enqueued_task_inversion", " enableTelemetry=YES task=%llx oldPriority=%zu newPriority=%zu", &v7, 0x20u);
      }
    }
  }
}

void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift_task_escalateImpl(swift::AsyncTask *,swift::JobPriority)::$_0>(unsigned __int8 **result, uint64_t a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v5 = *result[1];
      v6 = *v3;
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          for (i = *(v3 + 2); i; i = *(i + 23))
          {
            if (swift_task_escalate::Override == 1)
            {
              swift_task_escalateImpl(i, v5);
            }

            else if (swift_task_escalate::Override)
            {
              swift_task_escalate::Override(i, v5, swift_task_escalateImpl);
            }

            else
            {
              swift_task_escalateSlow(i, v5);
            }
          }
        }

        else if (v6 == 4)
        {
          (*(v3 + 2))(**result, *result[1]);
        }
      }

      else if (*v3)
      {
        if (v6 == 1)
        {
          for (j = *(v3 + 2); j; j = *(j + 23))
          {
            if (swift_task_escalate::Override == 1)
            {
              swift_task_escalateImpl(j, v5);
            }

            else if (swift_task_escalate::Override)
            {
              swift_task_escalate::Override(j, v5, swift_task_escalateImpl);
            }

            else
            {
              swift_task_escalateSlow(j, v5);
            }
          }
        }
      }

      else
      {
        v8 = *(v3 + 8);
        if (v8 == 4)
        {
          swift::swift_executor_escalate(*(v3 + 2), *(v3 + 3), *(v3 + 5), *result[1]);
        }

        else if (v8 == 1)
        {
          v9 = *(v3 + 2);
          if (swift_task_escalate::Override == 1)
          {
            swift_task_escalateImpl(v9, *result[1]);
          }

          else if (swift_task_escalate::Override)
          {
            swift_task_escalate::Override(v9, *result[1], swift_task_escalateImpl);
          }

          else
          {
            swift_task_escalateSlow(v9, *result[1]);
          }
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3);
  }
}

BOOL __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_0>(int **a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*a4 == 5 && (v4 = **a1, **a1 = v4 + 1, !v4))
  {
    return *a1[1] == a4;
  }

  else
  {
    return 0;
  }
}

_DWORD **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift_task_popTaskExecutorPreferenceImpl(swift::TaskExecutorPreferenceStatusRecord *)::$_1>(_DWORD **result, uint64_t a2, uint64_t a3, void *a4)
{
  if (**result == 1)
  {
    *a4 = *a4 & 0xFFFF7FFF;
  }

  return result;
}

double __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::addStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  *(**a1 + 8) = a4[1];
  v7 = *v6;
  *&v10 = *a4;
  *(&v10 + 1) = v7;
  v8 = (**(a1 + 16))(*(*(a1 + 16) + 8), *a4, a4[1], &v10);
  **(a1 + 8) = v8;
  if (v8)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>(uint64_t **result, uint64_t a2, uint64_t a3)
{
  v3 = **result;
  if (v3 != a3)
  {
    while (a3)
    {
      v4 = a3;
      a3 = *(a3 + 8);
      if (a3 == v3)
      {
        *(v4 + 8) = *(v3 + 8);
        return result;
      }
    }
  }

  return result;
}

uint64_t **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecord(swift::AsyncTask *,swift::TaskStatusRecord *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t **result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = **result;
  if (a4[1] == v4)
  {
    v5 = *(v4 + 8);
    *a4 = *a4;
    a4[1] = v5;
  }

  v6 = result[1];
  if (*v6)
  {
    return (*v6)(v6[1], a2, a3);
  }

  return result;
}

_BYTE **__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_0>(_BYTE **result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = a3;
    do
    {
      result = (**v5)(*(*v5 + 1), a2, a3, v6);
      if (result)
      {
        if (v6 == a3)
        {
          *v5[1] = 1;
        }

        else
        {
          v7 = a3;
          while (v7)
          {
            v8 = v7;
            v7 = *(v7 + 8);
            if (v7 == v6)
            {
              *(v8 + 8) = *(v6 + 8);
              break;
            }
          }
        }
      }

      v6 = *(v6 + 8);
    }

    while (v6);
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::removeStatusRecordWhere(swift::AsyncTask *,swift::ActiveTaskStatus&,__swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::$_1>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (**result == 1)
  {
    v4 = *(a4[1] + 8);
    *a4 = *a4;
    a4[1] = v4;
  }

  v5 = *(result + 8);
  if (*v5)
  {
    return (*v5)(*(v5 + 8), a2, a3);
  }

  return result;
}

__n128 __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0>(swift::AsyncTask*,swift::AsyncTask::getPreferredTaskExecutor(BOOL)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(__n128 ***a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 5)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    result = *(a3 + 24);
    ***a1 = result;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::CancellationNotificationStatusRecord * swift::popStatusRecordOfType<swift::CancellationNotificationStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 3)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskExecutorPreferenceStatusRecord * swift::popStatusRecordOfType<swift::TaskExecutorPreferenceStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 5)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::TaskStatusRecord *)>::callback_fn<swift::TaskNameStatusRecord * swift::popStatusRecordOfType<swift::TaskNameStatusRecord>(swift::AsyncTask *)::{lambda(swift::ActiveTaskStatus,swift::TaskStatusRecord *)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((**a1 & 1) != 0 || *a4 != 6)
  {
    return 0;
  }

  **(a1 + 8) = a4;
  v4 = *a1;
  result = 1;
  *v4 = 1;
  return result;
}

void ***__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::AsyncTask::getTaskName(void)::$_0>(swift::AsyncTask*,swift::AsyncTask::getTaskName(void)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(void ***result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    while (*a3 != 6)
    {
      a3 = *(a3 + 8);
      if (!a3)
      {
        return result;
      }
    }

    ***result = *(a3 + 16);
  }

  return result;
}

void __swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus)>::callback_fn<void withStatusRecordLock<swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0>(swift::AsyncTask *,swift::_swift_taskGroup_cancel_unlocked(swift::TaskGroup *,swift::AsyncTask *)::$_0 &&,__swift::__runtime::llvm::function_ref<void ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>)::{lambda(swift::ActiveTaskStatus)#1}>(atomic_ullong ****a1)
{
  v1 = ***a1;
  swift::TaskGroup::statusCancel(v1);
  for (i = *(swift::TaskGroup::getTaskRecord(v1) + 16); i; i = *(i + 23))
  {
    if (swift_task_cancel::Override == 1)
    {
      swift_task_cancelImpl(i);
    }

    else if (swift_task_cancel::Override)
    {
      swift_task_cancel::Override(i, swift_task_cancelImpl);
    }

    else
    {
      swift_task_cancelSlow(i);
    }
  }
}

uint64_t swift::TaskGroup::addChildTask(uint64_t this, swift::AsyncTask *a2)
{
  v2 = *(this + 32);
  *(this + 32) = a2;
  if (*(this + 24))
  {
    *(v2 + 184) = a2;
  }

  else
  {
    *(this + 24) = a2;
  }

  return this;
}

uint64_t swift::TaskGroup::removeChildTask(uint64_t this, swift::AsyncTask *a2)
{
  v2 = *(this + 24);
  if (v2 == a2)
  {
    v4 = *(a2 + 23);
    *(this + 24) = v4;
    if (!v4)
    {
      *(this + 32) = 0;
    }
  }

  else
  {
    while (v2)
    {
      v3 = v2;
      v2 = *(v2 + 23);
      if (v2 == a2)
      {
        *(v3 + 23) = *(a2 + 23);
        if (*(this + 32) == a2)
        {
          *(this + 32) = v3;
        }

        return this;
      }
    }
  }

  return this;
}

uint64_t swift_taskGroup_initialize(uint64_t a1, uint64_t a2)
{
  v4 = swift_taskGroup_initialize::Override;
  if (swift_taskGroup_initialize::Override == 1)
  {
    v5 = swift_taskGroup_initializeWithFlags::Override;
    if (swift_taskGroup_initializeWithFlags::Override == 1)
    {
      v8[1] = v2;
      v8[2] = v3;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      *(a1 + 8) = 2;
      *(a1 + 112) = a2;
      *a1 = &unk_1EEF5F960;
      v7 = v8;
      v8[0] = a1;
      return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    else if (swift_taskGroup_initializeWithFlags::Override)
    {

      return v5(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
    }

    else
    {

      return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
    }
  }

  else if (swift_taskGroup_initialize::Override)
  {

    return v4(a1, a2, swift_taskGroup_initializeImpl);
  }

  else
  {

    return swift_taskGroup_initializeSlow(a1, a2);
  }
}

uint64_t swift_taskGroup_initializeImpl(uint64_t a1, uint64_t a2)
{
  v4 = swift_taskGroup_initializeWithFlags::Override;
  if (swift_taskGroup_initializeWithFlags::Override == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    *(a1 + 8) = 2;
    *(a1 + 112) = a2;
    *a1 = &unk_1EEF5F960;
    v6 = v7;
    v7[0] = a1;
    return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v6);
  }

  else if (swift_taskGroup_initializeWithFlags::Override)
  {

    return v4(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {

    return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
  }
}

uint64_t swift_taskGroup_initializeSlow(uint64_t a1, uint64_t a2)
{
  Override_taskGroup_initialize = swift::getOverride_taskGroup_initialize(a1);
  if (Override_taskGroup_initialize)
  {
    swift_taskGroup_initialize::Override = Override_taskGroup_initialize;

    return (Override_taskGroup_initialize)(a1, a2, swift_taskGroup_initializeImpl);
  }

  else
  {
    swift_taskGroup_initialize::Override = 1;
    v6 = swift_taskGroup_initializeWithFlags::Override;
    if (swift_taskGroup_initializeWithFlags::Override == 1)
    {
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      *(a1 + 8) = 2;
      *(a1 + 112) = a2;
      *a1 = &unk_1EEF5F960;
      v7 = &v8;
      v8 = a1;
      return swift::addStatusRecordToSelf(a1 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    else if (swift_taskGroup_initializeWithFlags::Override)
    {

      return v6(0, a1, a2, swift_taskGroup_initializeWithFlagsImpl);
    }

    else
    {

      return swift_taskGroup_initializeWithFlagsSlow(0, a1, a2);
    }
  }
}

uint64_t swift_taskGroup_initializeWithFlags(swift *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_taskGroup_initializeWithFlags::Override;
  if (swift_taskGroup_initializeWithFlags::Override == 1)
  {
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((a1 & 0x100) != 0)
    {
      v6 = &unk_1EEF5F8E0;
    }

    else
    {
      v6 = &unk_1EEF5F960;
    }

    v9[1] = v3;
    v9[2] = v4;
    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v6;
    v8 = v9;
    v9[0] = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v8);
  }

  else if (swift_taskGroup_initializeWithFlags::Override)
  {

    return v5(a1, a2, a3, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {

    return swift_taskGroup_initializeWithFlagsSlow(a1, a2, a3);
  }
}

uint64_t swift_taskGroup_initializeWithFlagsImpl(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  if ((a1 & 0x100) != 0)
  {
    v5 = &unk_1EEF5F8E0;
  }

  else
  {
    v5 = &unk_1EEF5F960;
  }

  v8[1] = v3;
  v8[2] = v4;
  *(a2 + 8) = 2;
  *(a2 + 112) = a3;
  *a2 = v5;
  v7 = v8;
  v8[0] = a2;
  return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
}

uint64_t swift_taskGroup_initializeWithFlagsSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_taskGroup_initializeWithFlags = swift::getOverride_taskGroup_initializeWithFlags(a1);
  if (Override_taskGroup_initializeWithFlags)
  {
    swift_taskGroup_initializeWithFlags::Override = Override_taskGroup_initializeWithFlags;

    return (Override_taskGroup_initializeWithFlags)(a1, a2, a3, swift_taskGroup_initializeWithFlagsImpl);
  }

  else
  {
    swift_taskGroup_initializeWithFlags::Override = 1;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((a1 & 0x100) != 0)
    {
      v8 = &unk_1EEF5F8E0;
    }

    else
    {
      v8 = &unk_1EEF5F960;
    }

    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v8;
    v9 = &v10;
    v10 = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v9);
  }
}

void *swift_taskGroup_initializeWithOptions(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_taskGroup_initializeWithOptions::Override;
  if (swift_taskGroup_initializeWithOptions::Override == 1)
  {
    if (!a4)
    {
LABEL_5:
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      if ((a1 & 0x100) != 0)
      {
        v5 = &unk_1EEF5F8E0;
      }

      else
      {
        v5 = &unk_1EEF5F960;
      }

      *(a2 + 8) = 2;
      *(a2 + 112) = a3;
      *a2 = v5;
      v7 = &v8;
      v8 = a2;
      return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v7);
    }

    while (*a4 != 4)
    {
      a4 = *(a4 + 8);
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!swift_taskGroup_initializeWithOptions::Override)
  {
LABEL_14:

    return swift_taskGroup_initializeWithOptionsSlow(a1, a2, a3, a4);
  }

  return v4(a1, a2, a3, a4, swift_taskGroup_initializeWithOptionsImpl);
}

uint64_t swift_taskGroup_initializeWithOptionsImpl(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    while (*a4 != 4)
    {
      a4 = *(a4 + 8);
      if (!a4)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_4:
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if ((result & 0x100) != 0)
    {
      v4 = &unk_1EEF5F8E0;
    }

    else
    {
      v4 = &unk_1EEF5F960;
    }

    *(a2 + 8) = 2;
    *(a2 + 112) = a3;
    *a2 = v4;
    v5 = &v6;
    v6 = a2;
    return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v5);
  }

  return result;
}

void *swift_taskGroup_initializeWithOptionsSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift::getOverride_taskGroup_initializeWithOptions(a1);
  if (result)
  {
    swift_taskGroup_initializeWithOptions::Override = result;

    return (result)(a1, a2, a3, a4, swift_taskGroup_initializeWithOptionsImpl);
  }

  else
  {
    swift_taskGroup_initializeWithOptions::Override = 1;
    if (a4)
    {
      while (*a4 != 4)
      {
        a4 = *(a4 + 8);
        if (!a4)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      if ((a1 & 0x100) != 0)
      {
        v9 = &unk_1EEF5F8E0;
      }

      else
      {
        v9 = &unk_1EEF5F960;
      }

      *(a2 + 8) = 2;
      *(a2 + 112) = a3;
      *a2 = v9;
      v10 = &v11;
      v11 = a2;
      return swift::addStatusRecordToSelf(a2 + 8, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>, &v10);
    }
  }

  return result;
}

uint64_t swift_taskGroup_destroy(swift *a1)
{
  if (swift_taskGroup_destroy::Override == 1)
  {
    return (*(*a1 + 16))();
  }

  if (swift_taskGroup_destroy::Override)
  {
    return swift_taskGroup_destroy::Override(a1, swift_taskGroup_destroyImpl);
  }

  return swift_taskGroup_destroySlow(a1);
}

uint64_t swift_taskGroup_destroySlow(swift *a1)
{
  Override_taskGroup_destroy = swift::getOverride_taskGroup_destroy(a1);
  if (Override_taskGroup_destroy)
  {
    swift_taskGroup_destroy::Override = Override_taskGroup_destroy;

    return Override_taskGroup_destroy(a1, swift_taskGroup_destroyImpl);
  }

  else
  {
    swift_taskGroup_destroy::Override = 1;
    v4 = *(*a1 + 16);

    return v4(a1);
  }
}

uint64_t swift_taskGroup_wait_next_throwing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (swift_taskGroup_wait_next_throwing::Override == 1)
  {
    return swift_taskGroup_wait_next_throwingImpl(a1, a2, a3, a4);
  }

  if (swift_taskGroup_wait_next_throwing::Override)
  {
    return swift_taskGroup_wait_next_throwing::Override(a1, a2, a3, a4, swift_taskGroup_wait_next_throwingImpl);
  }

  return swift_taskGroup_wait_next_throwingSlow(a1, a2, a3, a4);
}

uint64_t swift_taskGroup_wait_next_throwingImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v55 = v4;
  Current = swift_task_getCurrent();
  Current[7] = task_group_wait_resume_adapter;
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  Current[8] = v10;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  *(a4 + 1) = v11;
  v51 = Current + 7;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  *(a4 + 2) = 0;
  *(a4 + 3) = a1;
  os_unfair_lock_lock((a2 + 40));
  v13 = atomic_fetch_or_explicit((a2 + 48), 0x4000000000000000uLL, memory_order_acquire);
  v14 = (*(*a2 + 24))(a2);
  v15 = 0x7FFFFFFFLL;
  if (v14)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v15 & v13) != 0)
  {
    explicit = atomic_load_explicit((a2 + 56), memory_order_acquire);
    if ((v13 & 0x3FFFFFFF80000000) == 0)
    {
LABEL_20:
      if (*MEMORY[0x1E69E7CF0])
      {
        (*MEMORY[0x1E69E7CF0])(Current);
      }

      v22 = swift::_swift_task_alloc_specific(Current, 0x30);
      _X2 = 0;
      _X3 = 0;
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 32) = 3;
      *(v22 + 40) = Current;
      *(v22 + 16) = a2;
      Current[20] = v22;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      v53[1] = 0;
      v54 = v22;
      v52[0] = &v54;
      v52[1] = v53;
      v53[0] = _X2;
      swift::addStatusRecord(Current, v22, v53, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v52);
      swift_task_exitThreadLocalContext();
      swift::restoreTaskVoucher(Current, v30);
      v31 = explicit;
      atomic_compare_exchange_strong((a2 + 56), &v31, Current);
      if (v31 != explicit)
      {
        v32 = v31;
        do
        {
          atomic_compare_exchange_strong((a2 + 56), &v32, Current);
          _ZF = v32 == v31;
          v31 = v32;
        }

        while (!_ZF);
      }

      os_unfair_lock_unlock((a2 + 40));
      return swift::_swift_task_clearCurrent(v33);
    }

    v17 = v13 | 0x4000000000000000;
    v18 = v13 | 0x4000000000000000;
    while (1)
    {
      v21 = (*(*a2 + 24))(a2) ? 0xBFFFFFFFFFFFFFFFLL : 0xBFFFFFFF7FFFFFFFLL;
      atomic_compare_exchange_strong((a2 + 48), &v18, v21 + v17);
      if (v18 == v17)
      {
        break;
      }

      v17 = v18;
      if ((v18 & 0x3FFFFFFF80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    v37 = *(a2 + 104);
    if (v37)
    {
      v38 = *(a2 + 72);
      v39 = *(*(v38 + ((*(a2 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a2 + 96) & 0x1FFLL));
      v40 = *(a2 + 96) + 1;
      *(a2 + 96) = v40;
      *(a2 + 104) = v37 - 1;
      if (v40 >= 0x400)
      {
        MEMORY[0x1865D4B40](*v38, 4096, 7);
        *(a2 + 72) += 8;
        *(a2 + 96) -= 512;
      }

      if ((v39 & 3) == 1)
      {
        swift::swift_Concurrency_fatalError(0, "accumulating task group should never use raw-errors!", v19, v20);
      }

      v41 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      v42 = *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v43 = 192;
      if ((v42 & 0x1000000) == 0)
      {
        v43 = 176;
      }

      if ((v39 & 3) != 0)
      {
        v44 = v41 + v43 + ((v42 >> 23) & 8);
        if ((v39 & 3) == 3)
        {
          v45 = *(v44 + 16);
          if (*MEMORY[0x1E69E7CE8])
          {
            (*MEMORY[0x1E69E7CE8])(v41);
          }

          os_unfair_lock_unlock((a2 + 40));
          *(a4 + 2) = v45;
          MEMORY[0x1865D4960](v45);
        }

        else
        {
          v47 = *(v44 + 8);
          v48 = *(*(v47 - 8) + 80);
          v49 = v48 + v44 + 24;
          if (*MEMORY[0x1E69E7CE8])
          {
            (*MEMORY[0x1E69E7CE8])(v41);
          }

          os_unfair_lock_unlock((a2 + 40));
          v50 = *(a4 + 3);
          (*(*(v47 - 8) + 16))(v50, v49 & ~v48, v47);
          (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
        }

        swift::_swift_taskGroup_detachChild(a2, v41, v46);

        goto LABEL_29;
      }
    }
  }

  else
  {
    atomic_fetch_and_explicit((a2 + 48), 0xBFFFFFFFFFFFFFFFLL, memory_order_release);
  }

  v35 = *(a2 + 112);
  os_unfair_lock_unlock((a2 + 40));
  (*(*(v35 - 8) + 56))(*(a4 + 3), 1, 1, v35);
LABEL_29:
  v36 = *v51;

  return v36();
}

uint64_t swift_taskGroup_wait_next_throwingSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  Override_taskGroup_wait_next_throwing = swift::getOverride_taskGroup_wait_next_throwing(a1);
  if (Override_taskGroup_wait_next_throwing)
  {
    swift_taskGroup_wait_next_throwing::Override = Override_taskGroup_wait_next_throwing;

    return Override_taskGroup_wait_next_throwing(a1, a2, a3, a4, swift_taskGroup_wait_next_throwingImpl);
  }

  else
  {
    swift_taskGroup_wait_next_throwing::Override = 1;

    return swift_taskGroup_wait_next_throwingImpl(a1, a2, a3, a4);
  }
}

uint64_t swift_taskGroup_isEmpty(swift *a1)
{
  v2 = swift_taskGroup_isEmpty::Override;
  if (swift_taskGroup_isEmpty::Override == 1)
  {
    v3 = *(a1 + 6);
    v4 = (*(*a1 + 24))(a1);
    v5 = 0x7FFFFFFFLL;
    if (v4)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    return (v5 & v3) == 0;
  }

  else if (swift_taskGroup_isEmpty::Override)
  {

    return v2(a1, swift_taskGroup_isEmptyImpl);
  }

  else
  {

    return swift_taskGroup_isEmptySlow(a1);
  }
}

BOOL swift_taskGroup_isEmptyImpl(swift::TaskGroup *a1)
{
  v1 = *(a1 + 6);
  v2 = (*(*a1 + 24))(a1);
  v3 = 0x7FFFFFFFLL;
  if (v2)
  {
    v3 = 0x3FFFFFFFFFFFFFFFLL;
  }

  return (v3 & v1) == 0;
}

uint64_t swift_taskGroup_isEmptySlow(swift *a1)
{
  isEmpty = swift::getOverride_taskGroup_isEmpty(a1);
  if (isEmpty)
  {
    swift_taskGroup_isEmpty::Override = isEmpty;

    return (isEmpty)(a1, swift_taskGroup_isEmptyImpl);
  }

  else
  {
    swift_taskGroup_isEmpty::Override = 1;
    v4 = *(a1 + 6);
    v5 = (*(*a1 + 24))(a1);
    v6 = 0x7FFFFFFFLL;
    if (v5)
    {
      v6 = 0x3FFFFFFFFFFFFFFFLL;
    }

    return (v6 & v4) == 0;
  }
}

uint64_t swift_taskGroup_isCancelled(swift *a1)
{
  if (swift_taskGroup_isCancelled::Override == 1)
  {
    return *(a1 + 6) >> 63;
  }

  if (swift_taskGroup_isCancelled::Override)
  {
    return swift_taskGroup_isCancelled::Override(a1, swift_taskGroup_isCancelledImpl);
  }

  return swift_taskGroup_isCancelledSlow(a1);
}

uint64_t swift_taskGroup_isCancelledSlow(swift *a1)
{
  isCancelled = swift::getOverride_taskGroup_isCancelled(a1);
  if (isCancelled)
  {
    swift_taskGroup_isCancelled::Override = isCancelled;

    return isCancelled(a1, swift_taskGroup_isCancelledImpl);
  }

  else
  {
    swift_taskGroup_isCancelled::Override = 1;
    return *(a1 + 6) >> 63;
  }
}

swift::TaskGroup *swift_taskGroup_cancelAll(atomic_ullong *a1)
{
  v2 = swift_taskGroup_cancelAll::Override;
  if (swift_taskGroup_cancelAll::Override == 1)
  {
    result = swift_task_getCurrent();
    if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
    {

      return swift::_swift_taskGroup_cancel_unlocked(a1, result, v4);
    }
  }

  else if (swift_taskGroup_cancelAll::Override)
  {

    return v2(a1, swift_taskGroup_cancelAllImpl);
  }

  else
  {

    return swift_taskGroup_cancelAllSlow(a1);
  }

  return result;
}

swift::TaskGroup *swift_taskGroup_cancelAllImpl(atomic_ullong *a1)
{
  result = swift_task_getCurrent();
  if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
  {

    return swift::_swift_taskGroup_cancel_unlocked(a1, result, v3);
  }

  return result;
}

swift::TaskGroup *swift_taskGroup_cancelAllSlow(atomic_ullong *a1)
{
  Override_taskGroup_cancelAll = swift::getOverride_taskGroup_cancelAll(a1);
  if (Override_taskGroup_cancelAll)
  {
    swift_taskGroup_cancelAll::Override = Override_taskGroup_cancelAll;

    return (Override_taskGroup_cancelAll)(a1, swift_taskGroup_cancelAllImpl);
  }

  else
  {
    swift_taskGroup_cancelAll::Override = 1;
    result = swift_task_getCurrent();
    if ((atomic_fetch_or_explicit(a1 + 6, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
    {

      return swift::_swift_taskGroup_cancel_unlocked(a1, result, v4);
    }
  }

  return result;
}

uint64_t swift_taskGroup_addPending(atomic_ullong *a1, char a2)
{
  if (swift_taskGroup_addPending::Override == 1)
  {
    return swift_taskGroup_addPendingImpl(a1, a2 & 1);
  }

  if (swift_taskGroup_addPending::Override)
  {
    return swift_taskGroup_addPending::Override(a1, a2 & 1, swift_taskGroup_addPendingImpl);
  }

  return swift_taskGroup_addPendingSlow(a1, a2 & 1);
}

BOOL swift_taskGroup_addPendingImpl(atomic_ullong *a1, char a2)
{
  v4 = atomic_fetch_add_explicit(a1 + 6, 1uLL, memory_order_relaxed) + 1;
  if ((*(*a1 + 24))(a1))
  {
    v5 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  v6 = v5 & v4;
  if ((*(*a1 + 24))(a1))
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  if (v6 == v7)
  {
    (*(*a1 + 24))(a1);
    memset(&v18, 0, sizeof(v18));
    std::string::append(&v18, "TaskGroupStatus{ ");
    std::string::append(&v18, "C:");
    if (v4 >= 0)
    {
      v9 = "n";
    }

    else
    {
      v9 = "y";
    }

    std::string::append(&v18, v9);
    std::string::append(&v18, " W:");
    if ((v4 & 0x4000000000000000) != 0)
    {
      v10 = "y";
    }

    else
    {
      v10 = "n";
    }

    std::string::append(&v18, v10);
    if (((*(*a1 + 24))(a1) & 1) == 0)
    {
      std::string::append(&v18, " R:");
      std::to_string(v17, (v4 >> 31) & 0x7FFFFFFF);
      v11 = v17[23] >= 0 ? v17 : *v17;
      v12 = v17[23] >= 0 ? v17[23] : *&v17[8];
      std::string::append(&v18, v11, v12);
      if ((v17[23] & 0x80000000) != 0)
      {
        operator delete(*v17);
      }
    }

    std::string::append(&v18, " P:");
    v13 = (*(*a1 + 24))(a1);
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = 0x7FFFFFFFLL;
    }

    std::to_string(v17, v14 & v4);
    if (v17[23] >= 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = *v17;
    }

    if (v17[23] >= 0)
    {
      v16 = v17[23];
    }

    else
    {
      v16 = *&v17[8];
    }

    std::string::append(&v18, v15, v16);
    if ((v17[23] & 0x80000000) != 0)
    {
      operator delete(*v17);
    }

    operator new();
  }

  if ((a2 & 1) == 0 && v4 < 0)
  {
    v4 = atomic_fetch_add_explicit(a1 + 6, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) - 1;
  }

  return v4 >= 0;
}

uint64_t swift_taskGroup_addPendingSlow(swift *a1, char a2)
{
  Override_taskGroup_addPending = swift::getOverride_taskGroup_addPending(a1);
  if (Override_taskGroup_addPending)
  {
    swift_taskGroup_addPending::Override = Override_taskGroup_addPending;

    return Override_taskGroup_addPending(a1, a2 & 1, swift_taskGroup_addPendingImpl);
  }

  else
  {
    swift_taskGroup_addPending::Override = 1;

    return swift_taskGroup_addPendingImpl(a1, a2 & 1);
  }
}

void swift_taskGroup_waitAll(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_taskGroup_waitAll::Override == 1)
  {
    swift_taskGroup_waitAllImpl(a1, a2, a3, a4, a5);
  }

  else if (swift_taskGroup_waitAll::Override)
  {
    swift_taskGroup_waitAll::Override(a1, a2, a3, a4, a5, swift_taskGroup_waitAllImpl);
  }

  else
  {
    swift_taskGroup_waitAllSlow(a1, a2, a3, a4, a5);
  }
}

void swift_taskGroup_waitAllImpl(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v48 = v5;
  Current = swift_task_getCurrent();
  os_unfair_lock_lock(a2 + 10);
  Current[7] = task_group_wait_resume_adapter;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = 0;
  }

  Current[8] = v12;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  *(a5 + 1) = v13;
  v44 = Current + 7;
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  *a5 = v14;
  *(a5 + 2) = 0;
  *(a5 + 3) = a1;
  v15 = *&a2[28]._os_unfair_lock_opaque;
  explicit = atomic_load_explicit(&a2[12], memory_order_acquire);
  v17 = (*(*&a2->_os_unfair_lock_opaque + 24))(a2);
  v18 = 0x7FFFFFFFLL;
  if (v17)
  {
    v18 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v18 & explicit) != 0)
  {
    if (a3 && (*(*&a2->_os_unfair_lock_opaque + 24))(a2) && !*&a2[26]._os_unfair_lock_opaque)
    {
    }

    v19 = atomic_load_explicit(&a2[14], memory_order_acquire);
    if (*MEMORY[0x1E69E7CF0])
    {
      (*MEMORY[0x1E69E7CF0])(Current);
    }

    v20 = swift::_swift_task_alloc_specific(Current, 0x30);
    _X2 = 0;
    _X3 = 0;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 32) = 3;
    *(v20 + 40) = Current;
    *(v20 + 16) = a2;
    Current[20] = v20;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    v46[1] = 0;
    v47 = v20;
    v45[0] = &v47;
    v45[1] = v46;
    v46[0] = _X2;
    swift::addStatusRecord(Current, v20, v46, __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<swift::AsyncTask::flagAsSuspended(swift::TaskDependencyStatusRecord *)::{lambda(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)#1}>, v45);
    swift_task_exitThreadLocalContext();
    v29 = swift::restoreTaskVoucher(Current, v28);
    v30 = v19;
    atomic_compare_exchange_strong(&a2[14], &v30, Current);
    if (v30 != v19)
    {
      v31 = v30;
      do
      {
        atomic_compare_exchange_strong(&a2[14], &v31, Current);
        _ZF = v31 == v30;
        v30 = v31;
      }

      while (!_ZF);
    }

    atomic_fetch_or_explicit(&a2[12], 0x4000000000000000uLL, memory_order_release);
    swift::_swift_task_clearCurrent(v29);
    os_unfair_lock_unlock(a2 + 10);
    return;
  }

  if (!(*(*&a2->_os_unfair_lock_opaque + 24))(a2))
  {
    goto LABEL_33;
  }

  v32 = *&a2[26]._os_unfair_lock_opaque;
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = *&a2[18]._os_unfair_lock_opaque;
  v34 = *(*(v33 + ((*&a2[24]._os_unfair_lock_opaque >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*&a2[24]._os_unfair_lock_opaque & 0x1FFLL));
  v35 = *&a2[24]._os_unfair_lock_opaque + 1;
  *&a2[24]._os_unfair_lock_opaque = v35;
  *&a2[26]._os_unfair_lock_opaque = v32 - 1;
  if (v35 >= 0x400)
  {
    MEMORY[0x1865D4B40](*v33, 4096, 7);
    *&a2[18]._os_unfair_lock_opaque += 8;
    *&a2[24]._os_unfair_lock_opaque -= 512;
  }

  if ((v34 & 3) == 1)
  {
    v36 = 0;
    v40 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    goto LABEL_37;
  }

  if ((v34 & 3) != 3)
  {
LABEL_33:
    v40 = 0;
    v36 = 0;
    v41 = 0;
    if (!a3)
    {
      goto LABEL_38;
    }

LABEL_34:
    *(a5 + 2) = a3;
    MEMORY[0x1865D4960](a3, v40);
    if (!v36)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v36 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
  v37 = *((v34 & 0xFFFFFFFFFFFFFFFCLL) + 32);
  v38 = 192;
  if ((v37 & 0x1000000) == 0)
  {
    v38 = 176;
  }

  v39 = v36 + v38 + ((v37 >> 23) & 8);
  v15 = *(v39 + 8);
  v40 = *(v39 + 16);
LABEL_37:
  v41 = 3;
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v41 > 1)
  {
    *(a5 + 2) = v40;
    MEMORY[0x1865D4960](v40);
    if (!v36)
    {
      goto LABEL_43;
    }
  }

  else
  {
    (*(*(v15 - 8) + 56))(*(a5 + 3), 1, 1, v15);
    if (!v36)
    {
      goto LABEL_43;
    }
  }

LABEL_42:
  swift::_swift_taskGroup_detachChild(a2, v36, v42);

LABEL_43:
  os_unfair_lock_unlock(a2 + 10);
  v43 = *v44;

  v43();
}

void swift_taskGroup_waitAllSlow(swift *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  Override_taskGroup_waitAll = swift::getOverride_taskGroup_waitAll(a1);
  if (Override_taskGroup_waitAll)
  {
    swift_taskGroup_waitAll::Override = Override_taskGroup_waitAll;

    Override_taskGroup_waitAll(a1, a2, a3, a4, a5, swift_taskGroup_waitAllImpl);
  }

  else
  {
    swift_taskGroup_waitAll::Override = 1;

    swift_taskGroup_waitAllImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t swift_task_cancel_group_child_tasks(swift *a1)
{
  v2 = swift_task_cancel_group_child_tasks::Override;
  if (swift_task_cancel_group_child_tasks::Override == 1)
  {
    Current = swift_task_getCurrent();

    return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v4);
  }

  else if (swift_task_cancel_group_child_tasks::Override)
  {

    return v2(a1, swift_task_cancel_group_child_tasksImpl);
  }

  else
  {

    return swift_task_cancel_group_child_tasksSlow(a1);
  }
}

uint64_t swift_task_cancel_group_child_tasksImpl(swift::TaskGroup *a1)
{
  Current = swift_task_getCurrent();

  return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v3);
}

uint64_t swift_task_cancel_group_child_tasksSlow(swift *a1)
{
  Override_task_cancel_group_child_tasks = swift::getOverride_task_cancel_group_child_tasks(a1);
  if (Override_task_cancel_group_child_tasks)
  {
    swift_task_cancel_group_child_tasks::Override = Override_task_cancel_group_child_tasks;

    return (Override_task_cancel_group_child_tasks)(a1, swift_task_cancel_group_child_tasksImpl);
  }

  else
  {
    swift_task_cancel_group_child_tasks::Override = 1;
    Current = swift_task_getCurrent();

    return swift::_swift_taskGroup_cancel_unlocked(a1, Current, v5);
  }
}

void anonymous namespace::DiscardingTaskGroup::~DiscardingTaskGroup(_anonymous_namespace_::DiscardingTaskGroup *this)
{

  JUMPOUT(0x1865D4B40);
}

uint64_t anonymous namespace::DiscardingTaskGroup::destroy(uint64_t (***this)(_anonymous_namespace_::DiscardingTaskGroup *), uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf((this + 1), 0, a3);
  v4 = **this;

  return v4(this);
}

void anonymous namespace::DiscardingTaskGroup::offer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  explicit = atomic_load_explicit((a1 + 48), memory_order_acquire);
  v7 = *(a3 - 8);
  v8 = atomic_fetch_add_explicit((a1 + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) - 1;
  if (!v7)
  {
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v13 = (*(*a1 + 24))(a1);
    v14 = 0x7FFFFFFFLL;
    if (v13)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if ((v14 & v8) != 0)
    {
      goto LABEL_14;
    }

    v15 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
    if (v15)
    {
      v22 = *(a1 + 104);
      if (!v22)
      {
        os_unfair_lock_unlock((a1 + 40));
        if (!v34)
        {
          return;
        }

        v33 = v34;
        goto LABEL_42;
      }

      v23 = *(a1 + 72);
      v18 = *(*(v23 + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
      v24 = *(a1 + 96) + 1;
      *(a1 + 96) = v24;
      *(a1 + 104) = v22 - 1;
      if (v24 >= 0x400)
      {
        MEMORY[0x1865D4B40](*v23, 4096, 7);
        *(a1 + 72) += 8;
        *(a1 + 96) -= 512;
      }

      swift::_swift_taskGroup_detachChild(a1, a2, v6);
      if ((v18 & 3) != 3)
      {
        if ((v18 & 3) != 1)
        {
          swift::swift_Concurrency_fatalError(0, "only errors can be stored by a discarding task group, yet it wasn't an error! 2", v25, v26);
        }

        goto LABEL_31;
      }

LABEL_32:
      v27 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 32);
      v28 = 192;
      if ((v27 & 0x1000000) == 0)
      {
        v28 = 176;
      }

      *(*(v15 + 64) + 16) = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + v28 + ((v27 >> 23) & 8) + 16);
      MEMORY[0x1865D4960]();
      swift::_swift_taskGroup_detachChild(a1, (v18 & 0xFFFFFFFFFFFFFFFCLL), v29);
      if ((*(*a1 + 24))(a1))
      {
      }

      goto LABEL_39;
    }

LABEL_48:
    swift::swift_Concurrency_fatalError(0, "Claimed NULL waitingTask!", v6, v11);
  }

  v9 = *(a2 + 176);
  if ((atomic_fetch_or_explicit((a1 + 48), 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) == 0)
  {
    swift::_swift_taskGroup_cancel_unlocked(a1, v9, v6);
  }

  if ((v8 & 0x4000000000000000) == 0)
  {
    goto LABEL_52;
  }

  v10 = (*(*a1 + 24))(a1, v9);
  v12 = 0x7FFFFFFFLL;
  if (v10)
  {
    v12 = 0x3FFFFFFFFFFFFFFFLL;
  }

  if ((v12 & v8) != 0)
  {
LABEL_52:
    if (!*(a1 + 104))
    {
      (*(*a1 + 40))(a1, a2, 1);
LABEL_15:

      os_unfair_lock_unlock((a1 + 40));
      return;
    }

LABEL_14:
    swift::_swift_taskGroup_detachChild(a1, a2, v6);
    goto LABEL_15;
  }

  v15 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
  if (!v15)
  {
    goto LABEL_48;
  }

  v16 = *(a1 + 104);
  if (!v16)
  {
    swift::_swift_taskGroup_detachChild(a1, a2, v6);
    v30 = *(a2 + 32);
    v31 = 192;
    if ((v30 & 0x1000000) == 0)
    {
      v31 = 176;
    }

    *(*(v15 + 64) + 16) = *(a2 + v31 + ((v30 >> 23) & 8) + 16);
    MEMORY[0x1865D4960]();
    swift::_swift_taskGroup_detachChild(a1, a2, v32);
    (*(*a1 + 24))(a1);
    goto LABEL_39;
  }

  v17 = *(a1 + 72);
  v18 = *(*(v17 + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
  v19 = *(a1 + 96) + 1;
  *(a1 + 96) = v19;
  *(a1 + 104) = v16 - 1;
  if (v19 >= 0x400)
  {
    MEMORY[0x1865D4B40](*v17, 4096, 7);
    *(a1 + 72) += 8;
    *(a1 + 96) -= 512;
  }

  swift::_swift_taskGroup_detachChild(a1, a2, v6);
  if ((v18 & 3) == 3)
  {
    goto LABEL_32;
  }

  if ((v18 & 3) != 1)
  {
    swift::swift_Concurrency_fatalError(0, "only errors can be stored by a discarding task group, yet it wasn't an error! 1", v20, v21);
  }

LABEL_31:
  *(*(v15 + 64) + 16) = v18 & 0xFFFFFFFFFFFFFFFCLL;
  MEMORY[0x1865D4960]();
LABEL_39:
  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(v15);
  }

  os_unfair_lock_unlock((a1 + 40));
  v33 = v15;
LABEL_42:

  swift::AsyncTask::flagAsAndEnqueueOnExecutor(v33, 0, 0);
}

unint64_t *anonymous namespace::DiscardingTaskGroup::enqueueCompletedTask(unint64_t *this, unint64_t a2, int a3)
{
  if (a3)
  {
    v3 = this;
  }

  return this;
}

void anonymous namespace::TaskGroupBase::~TaskGroupBase(_anonymous_namespace_::TaskGroupBase *this)
{
  *this = &unk_1EEF5F920;
  v2 = *(this + 9);
  v3 = *(this + 10);
  *(this + 13) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      MEMORY[0x1865D4B40](*v2, 4096, 7);
      v3 = *(this + 10);
      v2 = (*(this + 9) + 8);
      *(this + 9) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(this + 12) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      MEMORY[0x1865D4B40](v6, 4096, 7);
    }

    while (v2 != v3);
    v8 = *(this + 9);
    v7 = *(this + 10);
    if (v7 != v8)
    {
      *(this + 10) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x1865D4B40](v9, *(this + 11) - v9, 7);
  }
}

uint64_t anonymous namespace::TaskGroupBase::prepareWaitingTaskWithTask(swift *a1, uint64_t a2, swift::TaskGroup *a3, uint64_t *a4, int a5, char a6, int a7)
{
  if ((a6 & 1) == 0)
  {
    v18 = (a1 + 48);
    for (i = (*(*a1 + 24))(a1) == 0; ; i = (*(*a1 + 24))(a1) == 0)
    {
      v20 = i ? 0xBFFFFFFF7FFFFFFFLL : 0xBFFFFFFFFFFFFFFFLL;
      v21 = *a4;
      v22 = v20 + *a4;
      v23 = *a4;
      atomic_compare_exchange_strong_explicit(v18, &v23, v22, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v21)
      {
        break;
      }

      *a4 = v23;
      v18 = (a1 + 48);
    }
  }

  v12 = *(a3 + 8);
  v13 = 192;
  if ((v12 & 0x1000000) == 0)
  {
    v13 = 176;
  }

  v14 = a3 + v13 + ((v12 >> 23) & 8);
  if (a5)
  {
    v16 = *(v14 + 1);
    v15 = *(v14 + 2);
  }

  else
  {
    v16 = *(v14 + 1);
    v15 = &v14[*(*(v16 - 8) + 80) + 24] & ~*(*(v16 - 8) + 80);
  }

  v24 = *(a2 + 64);
  if (a5)
  {
    *(v24 + 16) = v15;
    MEMORY[0x1865D4960](v15);
  }

  else
  {
    v26 = *(v24 + 24);
    (*(*(v16 - 8) + 16))(v26, v15, v16, a4);
    (*(*(v16 - 8) + 56))(v26, 0, 1, v16);
  }

  swift::_swift_taskGroup_detachChild(a1, a3, v25);
  if ((*(*a1 + 24))(a1))
  {
    v27 = a7 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (!v27 && a5 != 0)
  {
  }

  if (*MEMORY[0x1E69E7CE8])
  {
    (*MEMORY[0x1E69E7CE8])(a2);
  }

  return a2;
}

unint64_t *anonymous namespace::NaiveTaskGroupQueue<anonymous namespace::TaskGroupBase::ReadyQueueItem>::enqueue(unint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v5) << 6) - 1;
  }

  v8 = result[4];
  if (v7 != result[5] + v8)
  {
    goto LABEL_72;
  }

  v9 = v8 >= 0x200;
  v10 = v8 - 512;
  if (v9)
  {
    result[4] = v10;
    v103 = *v5;
    result[1] = (v5 + 1);
LABEL_8:
    goto LABEL_72;
  }

  v11 = result[3];
  v12 = v11 - *result;
  if (v6 < v12)
  {
    result = swift_slowAlloc();
    v13 = result;
    if (v11 != v4)
    {
      v14 = v3[2];
      if (v14 != v3[3])
      {
LABEL_71:
        *v14 = v13;
        v3[2] += 8;
        goto LABEL_72;
      }

      v15 = v3[1];
      v16 = v15 - *v3;
      if (v15 > *v3)
      {
        v17 = ((v16 >> 3) + 1) / 2;
        v18 = ((v16 >> 3) + 1) / -2;
        v19 = &v15[-v17];
        v20 = v14 - v15;
        if (v14 != v15)
        {
          result = memmove(&v15[-v17], v15, v14 - v15);
          v15 = v3[1];
        }

        v14 = (v19 + v20);
        v3[1] = &v15[v18];
        v3[2] = v19 + v20;
        goto LABEL_71;
      }

      v61 = (v14 - *v3) >> 2;
      if (v14 == *v3)
      {
        v61 = 1;
      }

      v62 = v61 >> 2;
      v63 = v61;
      result = swift_slowAlloc();
      v64 = &result[v62];
      v65 = v3[1];
      v14 = v64;
      v66 = v3[2] - v65;
      if (v66)
      {
        v14 = (v64 + v66);
        v67 = v66 - 8;
        if (v66 - 8 < 0x38)
        {
          v68 = &result[v62];
          do
          {
LABEL_68:
            v86 = *v65++;
            *v68++ = v86;
          }

          while (v68 != v14);
          goto LABEL_69;
        }

        v78 = &result[v62];
        v68 = v78;
        if ((v78 - v65) < 0x20)
        {
          goto LABEL_68;
        }

        v79 = (v67 >> 3) + 1;
        v80 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        v68 = &v64[v80];
        v81 = &v65[v80];
        v82 = (v65 + 2);
        v83 = v78 + 2;
        v84 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v85 = *v82;
          *(v83 - 1) = *(v82 - 1);
          *v83 = v85;
          v82 += 2;
          v83 += 2;
          v84 -= 4;
        }

        while (v84);
        v65 = v81;
        if (v79 != (v79 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_68;
        }
      }

LABEL_69:
      v87 = *v3;
      *v3 = result;
      v3[1] = v64;
      v88 = v3[3];
      v3[2] = v14;
      v3[3] = &result[v63];
      if (v87)
      {
        result = MEMORY[0x1865D4B40](v87, v88 - v87, 7);
        v14 = v3[2];
      }

      goto LABEL_71;
    }

    v27 = v3[1];
    if (v27 != *v3)
    {
      v28 = v3[1];
LABEL_80:
      *(v28 - 1) = v13;
      v101 = v3[1];
      v3[1] = v101 - 8;
      v103 = *(v101 - 8);
      v3[1] = v101;
      goto LABEL_8;
    }

    v58 = v3[2];
    v59 = v3[3];
    if (v58 < v59)
    {
      v60 = (((v59 - v58) >> 3) + 1) / 2;
      v28 = &v27[8 * v60];
      if (v58 != v27)
      {
        memmove(&v27[8 * v60], v27, v58 - v27);
        v58 = v3[2];
      }

      v3[1] = v28;
      v3[2] = &v58[8 * v60];
      goto LABEL_80;
    }

    v69 = (v59 - v27) >> 2;
    if (v59 == v27)
    {
      v69 = 1;
    }

    v70 = (v69 + 3) >> 2;
    v71 = 8 * v69;
    v72 = swift_slowAlloc();
    v28 = (v72 + 8 * v70);
    v73 = v3[1];
    v74 = v28;
    v75 = v3[2] - v73;
    if (v75)
    {
      v74 = &v28[v75];
      v76 = v75 - 8;
      if (v75 - 8 < 0x38)
      {
        v77 = (v72 + 8 * v70);
        do
        {
LABEL_77:
          v98 = *v73++;
          *v77 = v98;
          v77 += 8;
        }

        while (v77 != v74);
        goto LABEL_78;
      }

      v90 = 8 * v70 + v72;
      v77 = v90;
      if (v90 - v73 < 0x20)
      {
        goto LABEL_77;
      }

      v91 = (v76 >> 3) + 1;
      v92 = v91 & 0x3FFFFFFFFFFFFFFCLL;
      v77 = &v28[v92 * 8];
      v93 = &v73[v92];
      v94 = (v73 + 2);
      v95 = (v90 + 16);
      v96 = v91 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v97 = *v94;
        *(v95 - 1) = *(v94 - 1);
        *v95 = v97;
        v94 += 2;
        v95 += 2;
        v96 -= 4;
      }

      while (v96);
      v73 = v93;
      if (v91 != (v91 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    v99 = *v3;
    *v3 = v72;
    v3[1] = v28;
    v100 = v3[3];
    v3[2] = v74;
    v3[3] = v72 + v71;
    if (v99)
    {
      MEMORY[0x1865D4B40](v99, v100 - v99, 7);
      v28 = v3[1];
    }

    goto LABEL_80;
  }

  v21 = 2 * v12;
  if (v11 == *result)
  {
    v22 = 8;
  }

  else
  {
    v22 = v21;
  }

  v23 = swift_slowAlloc();
  v24 = (v23 + v6);
  v25 = (v23 + v22);
  v26 = swift_slowAlloc();
  v102 = a2;
  if (v6 == v22)
  {
    if (v6 < 1)
    {
      if (v4 == v5)
      {
        v29 = 1;
      }

      else
      {
        v29 = v6 >> 2;
      }

      v30 = 8 * v29;
      v31 = v26;
      v32 = swift_slowAlloc();
      v24 = (v32 + 8 * (v29 >> 2));
      v25 = (v32 + v30);
      MEMORY[0x1865D4B40](v23, v6, 7);
      v26 = v31;
      v23 = v32;
    }

    else
    {
      v24 = (v24 - (((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  *v24 = v26;
  v33 = v24 + 1;
  v34 = v3[2];
  if (v34 != v3[1])
  {
    while (v24 != v23)
    {
      v37 = v24;
LABEL_33:
      v38 = *(v34 - 8);
      v34 -= 8;
      *(v37 - 1) = v38;
      v35 = v37 - 1;
      v24 = v35;
      if (v34 == v3[1])
      {
        goto LABEL_30;
      }
    }

    if (v33 < v25)
    {
      v37 = &v24[(v25 - v33 + 1 + ((v25 - v33 + 1) >> 63)) >> 1];
      v40 = v33 - v24;
      v39 = v33 == v24;
      v33 += (v25 - v33 + 1 + ((v25 - v33 + 1) >> 63)) >> 1;
      if (!v39)
      {
        memmove(v37, v24, v40);
      }

      goto LABEL_33;
    }

    v41 = v25 - v24;
    v42 = (v25 - v24) >> 2;
    if (v25 == v24)
    {
      v42 = 1;
    }

    v43 = (v42 + 3) >> 2;
    v44 = 8 * v42;
    v45 = swift_slowAlloc();
    v46 = v45;
    v37 = (v45 + 8 * v43);
    v47 = v33 - v24;
    v39 = v33 == v24;
    v33 = v37;
    if (!v39)
    {
      v33 = (v37 + v47);
      v48 = v47 - 8;
      if (v48 >= 0x18 && 8 * v43 + v45 - v24 >= 0x20)
      {
        v52 = (v48 >> 3) + 1;
        v53 = v52 & 0x3FFFFFFFFFFFFFFCLL;
        v49 = &v37[v53];
        v50 = &v24[v53];
        v54 = (v24 + 2);
        v55 = (v45 + 8 * v43 + 16);
        v56 = v52 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 4;
        }

        while (v56);
        if (v52 == (v52 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v49 = (v45 + 8 * v43);
        v50 = v24;
      }

      do
      {
        v51 = *v50++;
        *v49++ = v51;
      }

      while (v49 != v33);
    }

LABEL_45:
    v25 = (v45 + v44);
    MEMORY[0x1865D4B40](v23, v41, 7);
    v23 = v46;
    goto LABEL_33;
  }

  v35 = v24;
LABEL_30:
  result = *v3;
  *v3 = v23;
  v3[1] = v35;
  v36 = v3[3];
  v3[2] = v33;
  v3[3] = v25;
  a2 = v102;
  if (result)
  {
    result = MEMORY[0x1865D4B40](result, v36 - result, 7);
  }

LABEL_72:
  v89 = v3[5] + v3[4];
  *(*(v3[1] + ((v89 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v89 & 0x1FF)) = a2;
  ++v3[5];
  return result;
}

unint64_t *std::__split_buffer<anonymous namespace::TaskGroupBase::ReadyQueueItem *,swift::cxx_allocator<anonymous namespace::TaskGroupBase::ReadyQueueItem *>>::emplace_back<anonymous namespace::TaskGroupBase::ReadyQueueItem *&>(unint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 != result[3])
  {
    goto LABEL_18;
  }

  v5 = result[1];
  v6 = v5 - *result;
  if (v5 > *result)
  {
    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = (v9 + v10);
    v3[1] = &v5[v8];
    v3[2] = v9 + v10;
    goto LABEL_18;
  }

  v11 = (v4 - *result) >> 2;
  if (v4 == *result)
  {
    v11 = 1;
  }

  v12 = v11 >> 2;
  v13 = v11;
  result = swift_slowAlloc();
  v14 = &result[v12];
  v15 = v3[1];
  v4 = v14;
  v16 = v3[2] - v15;
  if (v16)
  {
    v4 = (v14 + v16);
    v17 = v16 - 8;
    if (v16 - 8 < 0x38)
    {
      v18 = &result[v12];
      do
      {
LABEL_15:
        v27 = *v15++;
        *v18++ = v27;
      }

      while (v18 != v4);
      goto LABEL_16;
    }

    v19 = &result[v12];
    v18 = v19;
    if ((v19 - v15) < 0x20)
    {
      goto LABEL_15;
    }

    v20 = (v17 >> 3) + 1;
    v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    v18 = &v14[v21];
    v22 = &v15[v21];
    v23 = (v15 + 2);
    v24 = v19 + 2;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v15 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v28 = *v3;
  *v3 = result;
  v3[1] = v14;
  v29 = v3[3];
  v3[2] = v4;
  v3[3] = &result[v13];
  if (v28)
  {
    result = MEMORY[0x1865D4B40](v28, v29 - v28, 7);
    v4 = v3[2];
  }

LABEL_18:
  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void anonymous namespace::AccumulatingTaskGroup::~AccumulatingTaskGroup(_anonymous_namespace_::AccumulatingTaskGroup *this)
{

  JUMPOUT(0x1865D4B40);
}

uint64_t anonymous namespace::AccumulatingTaskGroup::destroy(uint64_t (***this)(_anonymous_namespace_::AccumulatingTaskGroup *), uint64_t a2, uint64_t a3)
{
  swift::removeStatusRecordFromSelf((this + 1), 0, a3);
  v4 = **this;

  return v4(this);
}

void anonymous namespace::AccumulatingTaskGroup::offer(uint64_t a1, swift::TaskGroup *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  v11 = atomic_fetch_add_explicit((a1 + 48), 0x80000000uLL, memory_order_acquire) + 0x80000000;
  v8 = *(a3 - 8);
  if ((v11 & 0x4000000000000000) != 0)
  {
    v9 = atomic_exchange_explicit((a1 + 56), 0, memory_order_acquire);
    if (!v9)
    {
      swift::swift_Concurrency_fatalError(0, "Claimed NULL waitingTask!", v6, v7);
    }

    os_unfair_lock_unlock((a1 + 40));
    if (v10)
    {

      swift::AsyncTask::flagAsAndEnqueueOnExecutor(v10, 0, 0);
    }
  }

  else
  {
    (*(*a1 + 40))(a1, a2, v8 != 0);

    os_unfair_lock_unlock((a1 + 40));
  }
}

unint64_t *anonymous namespace::AccumulatingTaskGroup::enqueueCompletedTask(_anonymous_namespace_::AccumulatingTaskGroup *this, unint64_t a2, int a3)
{

  v6 = 2;
  if (a3)
  {
    v6 = 3;
  }
}

uint64_t __swift::__runtime::llvm::function_ref<BOOL ()(swift::ActiveTaskStatus,swift::ActiveTaskStatus&)>::callback_fn<_swift_taskGroup_initialize(swift::ResultTypeInfo,unsigned long,swift::TaskGroup *)::$_0>(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    atomic_fetch_or_explicit((**a1 + 48), 0x8000000000000000, memory_order_relaxed);
  }

  return 1;
}

uint64_t task_group_wait_resume_adapter()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1();
}

void *swift::TaskLocal::Storage::initializeLinkParent(void *this, swift::AsyncTask *a2, swift::AsyncTask *a3)
{
  v3 = *(a3 + 17);
  if (v3)
  {
    v5 = this;
    v6 = swift::_swift_task_alloc_specific(a2, 8);
    *v6 = 4;
    *v5 = v6;
    v18 = 0;
    v19 = 0;
    v17 = &v18;
    while (1)
    {
      v9 = *v3;
      v10 = (*v3 >> 1) & 3;
      if (v10 != 1)
      {
        break;
      }

      v11 = v18;
      v12 = &v18;
      v13 = &v18;
      if (v18)
      {
        v14 = *(v3 + 1);
        while (1)
        {
          while (1)
          {
            v13 = v11;
            v15 = v11[4];
            if (v14 >= v15)
            {
              break;
            }

            v11 = *v13;
            v12 = v13;
            if (!*v13)
            {
              goto LABEL_3;
            }
          }

          if (v15 >= v14)
          {
            break;
          }

          v11 = v13[1];
          if (!v11)
          {
            v12 = v13 + 1;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        v7 = swift_slowAlloc();
        v7[4] = *(v3 + 1);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = v13;
        *v12 = v7;
        if (*v17)
        {
          v17 = *v17;
          v8 = *v12;
        }

        else
        {
          v8 = v7;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v18, v8);
        ++v19;
        swift::TaskLocal::ValueItem::copyTo(v3, a2);
        v9 = *v3;
      }

      v3 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v10 == 2)
    {
      v3 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
LABEL_22:
        v16 = 0;
        goto LABEL_23;
      }

      v9 = *v3;
    }

    if ((~v9 & 6) != 0)
    {
      v16 = v3;
    }

    else
    {
      v16 = 0;
    }

LABEL_23:
    *v6 = *v6 & 7 | v16;
    return std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(&v17, v18);
  }

  return this;
}

uint64_t swift::TaskLocal::ValueItem::copyTo(swift::TaskLocal::ValueItem *this, swift::AsyncTask *a2)
{
  v4 = *(this + 2);
  if (a2)
  {
    v5 = (a2 + 136);
  }

  else
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  }

  v6 = *(this + 1);
  v7 = *v5;
  v8 = (*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  if (a2)
  {
    v10 = swift::_swift_task_alloc_specific(a2, (v8 + v9));
  }

  else
  {
    v10 = malloc_type_malloc(v8 + v9, 0x1F0241C1uLL);
  }

  v11 = v10;
  *v10 = v7 & 0xFFFFFFFFFFFFFFF9;
  v10[1] = v6;
  v10[2] = v4;
  result = (*(*(*(this + 2) - 8) + 16))(v10 + ((*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80)), this + ((*(*(*(this + 2) - 8) + 80) + 24) & ~*(*(*(this + 2) - 8) + 80)));
  *(a2 + 17) = v11;
  return result;
}

void swift::TaskLocal::Storage::destroy(uint64_t **this, swift::AsyncTask *a2, const char *a3, char *a4)
{
  v5 = *this;
  *this = 0;
  while (v5)
  {
    v6 = *v5;
    v7 = (*v5 >> 1) & 3;
    if (v7 >= 2)
    {
      v8 = v7 == 2;
      if (a2)
      {
        goto LABEL_8;
      }

LABEL_2:
      free(v5);
      v5 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if (v8)
      {
        return;
      }
    }

    else
    {
      (*(*(v5[2] - 8) + 8))(v5 + ((*(*(v5[2] - 8) + 80) + 24) & ~*(*(v5[2] - 8) + 80)));
      v8 = 0;
      if (!a2)
      {
        goto LABEL_2;
      }

LABEL_8:
      swift::_swift_task_dealloc_specific(a2, v5, a3, a4);
      v5 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if (v8)
      {
        return;
      }
    }
  }
}

uint64_t swift::TaskLocal::Storage::pushValue(swift *a1, swift *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(a1);
  if (a2)
  {
    v11 = (a2 + 136);
  }

  else
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  }

  v12 = *v11;
  v13 = (*(*(a5 - 8) + 80) + 24) & ~*(*(a5 - 8) + 80);
  v14 = *(*(a5 - 8) + 64);
  if (a2)
  {
    v15 = swift::_swift_task_alloc_specific(a2, (v13 + v14));
  }

  else
  {
    v15 = malloc_type_malloc(v13 + v14, 0x1F0241C1uLL);
  }

  v16 = v15;
  v17 = 2;
  if ((hasTaskGroupStatusRecord & 1) == 0)
  {
    v17 = 0;
  }

  *v15 = v12 & 0xFFFFFFFFFFFFFFF9 | v17;
  v15[1] = a3;
  v15[2] = a5;
  result = (*(*(a5 - 8) + 32))(v15 + ((*(*(a5 - 8) + 80) + 24) & ~*(*(a5 - 8) + 80)), a4, a5);
  *a1 = v16;
  return result;
}

uint64_t swift::TaskLocal::Storage::copyTo(swift::TaskLocal::ValueItem **this, swift::AsyncTask *a2)
{
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  v2 = *this;
  if (*this)
  {
    do
    {
      v4 = *v2;
      if ((*v2 & 4) != 0)
      {
        if ((~v4 & 6) == 0)
        {
          break;
        }
      }

      else
      {
        v5 = v15;
        v6 = &v15;
        v7 = &v15;
        if (v15)
        {
          v8 = *(v2 + 1);
          while (1)
          {
            while (1)
            {
              v7 = v5;
              v9 = v5[4];
              if (v8 >= v9)
              {
                break;
              }

              v5 = *v7;
              v6 = v7;
              if (!*v7)
              {
                goto LABEL_13;
              }
            }

            if (v9 >= v8)
            {
              break;
            }

            v5 = v7[1];
            if (!v5)
            {
              v6 = v7 + 1;
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v10 = swift_slowAlloc();
          v10[4] = *(v2 + 1);
          *v10 = 0;
          v10[1] = 0;
          v10[2] = v7;
          *v6 = v10;
          if (*v14)
          {
            v14 = *v14;
            v11 = *v6;
          }

          else
          {
            v11 = v10;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v11);
          ++v16;
          swift::TaskLocal::ValueItem::copyTo(v2, a2);
          v4 = *v2;
        }
      }

      v2 = (v4 & 0xFFFFFFFFFFFFFFF8);
    }

    while ((v4 & 0xFFFFFFFFFFFFFFF8) != 0);
    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  return std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(&v14, v12);
}

swift::TaskLocal::StopLookupScope *swift::TaskLocal::StopLookupScope::StopLookupScope(swift::TaskLocal::StopLookupScope *this)
{
  Current = swift_task_getCurrent();
  *this = Current;
  if (Current)
  {
    v3 = (Current + 136);
    *(this + 1) = Current + 136;
    v4 = (this + 8);
  }

  else
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
    *(this + 1) = v3;
    v4 = (this + 8);
    if (!v3)
    {
      return this;
    }
  }

  v5 = *v3;
  if (*v3)
  {
    v6 = swift::_swift_task_alloc_specific(Current, 8);
    *v6 = v5 | 6;
    *v3 = v6;
  }

  else
  {
    *v4 = 0;
  }

  return this;
}

void swift::TaskLocal::StopLookupScope::~StopLookupScope(swift::TaskLocal::StopLookupScope *this, uint64_t a2, const char *a3, char *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *this;
    v6 = *v4;
    v7 = **v4;
    *v4 = v7 & 0xFFFFFFFFFFFFFFF8;
    if ((v7 & 4) == 0)
    {
      (*(*(*(v6 + 2) - 8) + 8))(v6 + ((*(*(*(v6 + 2) - 8) + 80) + 24) & ~*(*(*(v6 + 2) - 8) + 80)));
    }

    if (v5)
    {
      swift::_swift_task_dealloc_specific(v5, v6, a3, a4);
    }

    else
    {
      free(v6);
    }
  }
}

uint64_t swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(unsigned __int8 *a1, const char *a2, char a3, uint64_t a4)
{
  v5 = swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override;
  if (swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override == 1)
  {
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(a1, a2, 0, a4);
  }

  if (swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override)
  {
    v6 = a3 & 1;

    return v5(a1, a2, v6, a4, swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl);
  }

  else
  {
    v8 = a3 & 1;

    return swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupSlow(a1, a2, v8, a4);
  }
}

void swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(const unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  swift_asprintf(&v9, a2, a3, a2, a1, a4);
  shouldReportFatalErrorsToDebugger = _swift_shouldReportFatalErrorsToDebugger();
  v5 = v9;
  if (shouldReportFatalErrorsToDebugger)
  {
    memset(&v7[2], 0, 48);
    v8 = 0;
    v7[0] = xmmword_1E6A180B0;
    v7[1] = *&off_1E6A180C0;
    MEMORY[0x1865D44A0](1, v9, v7);
  }

  v6 = MEMORY[0x1E69E9848];
  fputs(v5, *MEMORY[0x1E69E9848]);
  fflush(*v6);
  asl_log(0, 0, 3, "%s", v5);
  free(v5);
  abort();
}

uint64_t swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupSlow(swift *a1, const char *a2, char a3, uint64_t a4)
{
  Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup = swift::getOverride_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(a1);
  if (!Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup)
  {
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override = 1;
    swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl(a1, a2, 0, a4);
  }

  swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup::Override = Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup;

  return (Override_task_reportIllegalTaskLocalBindingWithinWithTaskGroup)(a1, a2, a3 & 1, a4, swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroupImpl);
}

uint64_t swift_task_localValuePush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_task_localValuePush::Override == 1)
  {
    return swift_task_localValuePushImpl(a1, a2, a3);
  }

  if (swift_task_localValuePush::Override)
  {
    return swift_task_localValuePush::Override(a1, a2, a3, swift_task_localValuePushImpl);
  }

  return swift_task_localValuePushSlow(a1, a2, a3);
}

uint64_t swift_task_localValuePushImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v7 = Current;
    v8 = (Current + 136);

    return swift::TaskLocal::Storage::pushValue(v8, v7, a1, a2, a3);
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = *(StatusReg + 840);
    if (!v11)
    {
      Current = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      v11 = Current;
      *Current = 0;
      *(StatusReg + 840) = Current;
    }

    hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(Current);
    v13 = **(StatusReg + 840);
    v14 = malloc_type_malloc(((*(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80)) + *(*(a3 - 8) + 64), 0x1F0241C1uLL);
    v15 = v14;
    v16 = 2;
    if ((hasTaskGroupStatusRecord & 1) == 0)
    {
      v16 = 0;
    }

    *v14 = v13 & 0xFFFFFFFFFFFFFFF9 | v16;
    v14[1] = a1;
    v14[2] = a3;
    result = (*(*(a3 - 8) + 32))(v14 + ((*(*(a3 - 8) + 80) + 24) & ~*(*(a3 - 8) + 80)), a2, a3);
    *v11 = v15;
  }

  return result;
}

uint64_t swift_task_localValuePushSlow(swift *a1, uint64_t a2, uint64_t a3)
{
  Override_task_localValuePush = swift::getOverride_task_localValuePush(a1);
  if (Override_task_localValuePush)
  {
    swift_task_localValuePush::Override = Override_task_localValuePush;

    return Override_task_localValuePush(a1, a2, a3, swift_task_localValuePushImpl);
  }

  else
  {
    swift_task_localValuePush::Override = 1;

    return swift_task_localValuePushImpl(a1, a2, a3);
  }
}

char *swift_task_localValueGet(uint64_t a1)
{
  if (swift_task_localValueGet::Override == 1)
  {
    return swift_task_localValueGetImpl(a1);
  }

  if (swift_task_localValueGet::Override)
  {
    return swift_task_localValueGet::Override(a1, swift_task_localValueGetImpl);
  }

  return swift_task_localValueGetSlow(a1);
}

char *swift_task_localValueGetImpl(uint64_t a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = *(Current + 136);
    if (v3)
    {
      do
      {
        while (1)
        {
          v5 = *v3;
          if ((*v3 & 4) == 0)
          {
            break;
          }

          v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
          if ((~v5 & 6) == 0 || v3 == 0)
          {
            return 0;
          }
        }

        if (v3[1] == a1)
        {
          return v3 + ((*(*(v3[2] - 8) + 80) + 24) & ~*(*(v3[2] - 8) + 80));
        }

        v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
      }

      while ((v5 & 0xFFFFFFFFFFFFFFF8) != 0);
    }

    return 0;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
  if (!v6)
  {
    return 0;
  }

  v3 = *v6;
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v8 = *v3;
      if ((*v3 & 4) == 0)
      {
        break;
      }

      v3 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((~v8 & 6) == 0 || v3 == 0)
      {
        return 0;
      }
    }

    if (v3[1] == a1)
    {
      break;
    }

    v3 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      return 0;
    }
  }

  return v3 + ((*(*(v3[2] - 8) + 80) + 24) & ~*(*(v3[2] - 8) + 80));
}

char *swift_task_localValueGetSlow(swift *a1)
{
  v2 = swift::getOverride_task_localValueGet(a1);
  if (v2)
  {
    swift_task_localValueGet::Override = v2;

    return v2(a1, swift_task_localValueGetImpl);
  }

  else
  {
    swift_task_localValueGet::Override = 1;

    return swift_task_localValueGetImpl(a1);
  }
}

void swift_task_localValuePop(swift *a1)
{
  if (swift_task_localValuePop::Override == 1)
  {
    swift_task_localValuePopImpl();
  }

  else if (swift_task_localValuePop::Override)
  {
    swift_task_localValuePop::Override(swift_task_localValuePopImpl);
  }

  else
  {
    swift_task_localValuePopSlow(a1);
  }
}

void swift_task_localValuePopImpl(void)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v3 = *(Current + 136);
    v4 = *v3;
    *(Current + 136) = *v3 & 0xFFFFFFFFFFFFFFF8;
    if ((v4 & 4) == 0)
    {
      v5 = Current;
      (*(*(*(v3 + 2) - 8) + 8))(v3 + ((*(*(*(v3 + 2) - 8) + 80) + 24) & ~*(*(*(v3 + 2) - 8) + 80)));
      Current = v5;
    }

    swift::_swift_task_dealloc_specific(Current, v3, v1, v2);
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 840);
    if (v7)
    {
      v8 = *v7;
      v9 = **v7;
      *v7 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 4) == 0)
      {
        (*(*(v8[2] - 8) + 8))(v8 + ((*(*(v8[2] - 8) + 80) + 24) & ~*(*(v8[2] - 8) + 80)));
      }

      free(v8);
      if (!*v7)
      {
        *(StatusReg + 840) = 0;

        free(v7);
      }
    }
  }
}

void swift_task_localValuePopSlow(swift *a1)
{
  Override_task_localValuePop = swift::getOverride_task_localValuePop(a1);
  if (Override_task_localValuePop)
  {
    swift_task_localValuePop::Override = Override_task_localValuePop;

    Override_task_localValuePop(swift_task_localValuePopImpl);
  }

  else
  {
    swift_task_localValuePop::Override = 1;

    swift_task_localValuePopImpl();
  }
}

swift::TaskLocal::ValueItem **swift_task_localsCopyTo(swift::AsyncTask *a1)
{
  v2 = swift_task_localsCopyTo::Override;
  if (swift_task_localsCopyTo::Override == 1)
  {
    Current = swift_task_getCurrent();
    if (Current)
    {
      result = (Current + 136);
    }

    else
    {
      result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
      if (!result)
      {
        return result;
      }
    }

    return swift::TaskLocal::Storage::copyTo(result, a1);
  }

  else if (swift_task_localsCopyTo::Override)
  {

    return v2(a1, swift_task_localsCopyToImpl);
  }

  else
  {

    return swift_task_localsCopyToSlow(a1);
  }
}

swift::TaskLocal::ValueItem **swift_task_localsCopyToImpl(swift::AsyncTask *a1)
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    result = (Current + 136);
  }

  else
  {
    result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
    if (!result)
    {
      return result;
    }
  }

  return swift::TaskLocal::Storage::copyTo(result, a1);
}

swift::TaskLocal::ValueItem **swift_task_localsCopyToSlow(swift *a1)
{
  Override_task_localsCopyTo = swift::getOverride_task_localsCopyTo(a1);
  if (Override_task_localsCopyTo)
  {
    swift_task_localsCopyTo::Override = Override_task_localsCopyTo;

    return (Override_task_localsCopyTo)(a1, swift_task_localsCopyToImpl);
  }

  else
  {
    swift_task_localsCopyTo::Override = 1;
    Current = swift_task_getCurrent();
    if (Current)
    {
      result = (Current + 136);
    }

    else
    {
      result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 840);
      if (!result)
      {
        return result;
      }
    }

    return swift::TaskLocal::Storage::copyTo(result, a1);
  }
}

uint64_t std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(result, *a2);
    std::__tree<swift::HeapObject const*,std::less<swift::HeapObject const*>,swift::cxx_allocator<swift::HeapObject const*>>::destroy(v2, a2[1]);

    JUMPOUT(0x1865D4B40);
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = *(v2 + 8);
            v11 = *v10;
            *(v2 + 8) = *v10;
            v12 = v2;
            if (v11)
            {
              *(v11 + 16) = v2;
              v3 = *(v2 + 16);
              v12 = *v3;
            }

            *(v10 + 16) = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            *(v2 + 16) = v10;
            v3 = *(v10 + 16);
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            *(v2 + 16) = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

os_log_t swift::concurrency::trace::setupLogs(swift::concurrency::trace *this, void *a2)
{
  swift::concurrency::trace::TracingEnabled = 1;
  swift::concurrency::trace::ActorLog = os_log_create("com.apple.swift.concurrency", "Actor");
  swift::concurrency::trace::TaskLog = os_log_create("com.apple.swift.concurrency", "Task");
  result = os_log_create("com.apple.swift.concurrency", "PotentialPriorityInversion");
  swift::concurrency::trace::PotentialPriorityInversionLog = result;
  return result;
}

uint64_t swift_dispatchEnqueueGlobal(void *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *(a1 + 33);
  if (v4 >= 0x22)
  {
    swift::swift_Concurrency_fatalError(0, "invalid job priority %#zx", a3, a4, *(a1 + 33));
  }

  if (!globalQueueCache[v4])
  {
    if (!concurrencyEnableCooperativeQueues() || (global_queue = dispatch_get_global_queue(v4, 4uLL)) == 0)
    {
      global_queue = dispatch_get_global_queue(v4, 0);
    }

    globalQueueCache[v4] = global_queue;
  }

  a1[3] = 1;
  v6 = dispatchEnqueueFunc;

  return v6();
}

void swift_dispatchEnqueueWithDeadline(char a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *context)
{
  if (a1)
  {
    v9 = *(context + 33);
    if (v9 >= 0x22)
    {
      swift::swift_Concurrency_fatalError(0, "invalid job priority %#zx", a3, a4, a5, a6, *(context + 33));
    }

    global_queue = globalQueueCache[v9];
    if (global_queue)
    {
      context[3] = 1;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = a2;
      v23 = a3;
      v24 = a6;
      v25 = a5;
      if (!concurrencyEnableCooperativeQueues() || (global_queue = dispatch_get_global_queue(v9, 4uLL)) == 0)
      {
        global_queue = dispatch_get_global_queue(v9, 0);
      }

      globalQueueCache[v9] = global_queue;
      a5 = v25;
      LODWORD(a6) = v24;
      a3 = v23;
      a2 = v22;
      context[3] = 1;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    global_queue = MEMORY[0x1E69E96A0];
    context[3] = MEMORY[0x1E69E96A0];
    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_9:
      v11 = 0;
LABEL_10:
      if (a6 == 2)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 | 0x8000000000000000;
      }

      goto LABEL_13;
    }
  }

  if (!a2 && a3 < 0)
  {
    goto LABEL_9;
  }

  if (!is_mul_ok(a2, 0x3B9ACA00uLL))
  {
    v12 = -1;
    goto LABEL_13;
  }

  v11 = a3 + 1000000000 * a2;
  if (__CFADD__(a3, 1000000000 * a2))
  {
    v14 = (a3 >> 63) + 1;
  }

  else
  {
    v14 = a3 >> 63;
  }

  v15 = v14 << 63 >> 63;
  v12 = -1;
  if (v15 == v14 && (v15 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      if (v11 > 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_13;
      }

      if (v11 < 0x5555555555555555)
      {
        v11 = 3 * v11 / 0x7D;
      }

      else
      {
        v11 = 3 * (v11 / 0x7D);
      }
    }

    goto LABEL_10;
  }

LABEL_13:
  if (a5 == -1)
  {

    dispatch_after_f(v12, global_queue, context, __swift_run_job);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0 || !a4 && a5 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (!is_mul_ok(a4, 0x3B9ACA00uLL))
      {
        goto LABEL_24;
      }

      v16 = 1000000000 * a4;
      v17 = a5 >> 63;
      v13 = a5 + 1000000000 * a4;
      if (__CFADD__(a5, v16))
      {
        ++v17;
      }

      v18 = v17 << 63 >> 63;
      if (v18 != v17 || v18 < 0)
      {
LABEL_24:
        v13 = -1;
      }
    }

    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
    dispatch_source_set_timer(v19, v12, 0xFFFFFFFFFFFFFFFFLL, v13);
    v21 = swift_job_alloc(context, 0x10, v20);
    *v21 = v19;
    v21[1] = context;
    dispatch_set_context(v19, v21);
    dispatch_source_set_event_handler_f(v19, _swift_run_job_leeway);

    dispatch_activate(v19);
  }
}

uint64_t _swift_run_job_leeway(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  swift_job_dealloc(v2, a1, v3);
  v4 = *(*v2 + 48);

  return v4(v2, 0, 0);
}

uint64_t swift_dispatchEnqueueMain(void *a1)
{
  v2 = *(a1 + 33);
  v3 = MEMORY[0x1E69E96A0];
  a1[3] = MEMORY[0x1E69E96A0];
  return dispatchEnqueueFunc(v3, a1, v2);
}

uint64_t swift_task_enqueueOnDispatchQueue(void *a1, dispatch_queue_s *a2)
{
  v2 = *(a1 + 33);
  a1[3] = a2;
  return dispatchEnqueueFunc(a2, a1, v2);
}

uint64_t swift_task_checkIsolatedImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    swift_getObjectType();
    TypeName = swift_getTypeName();
    swift::swift_Concurrency_fatalError(0, "Incorrect actor executor assumption; expected '%.*s' executor.\n", v8, v9, v7, TypeName);
  }

  ObjectType = swift_getObjectType();

  return _swift_task_checkIsolatedSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t swift_task_isIsolatingCurrentContextImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 255;
  }

  ObjectType = swift_getObjectType();

  return _swift_task_isIsolatingCurrentContextSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t swift_task_isMainExecutorImpl(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();

  return _swift_task_isMainExecutorSwift(a1, ObjectType, a2 & 0xFFFFFFFFFFFFFFF8);
}

void swift_defaultActor_destroy_cold_1(unint64_t **a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v4);
  if (TypeContextDescriptor)
  {
    v8 = (TypeContextDescriptor + 8 + *(TypeContextDescriptor + 8));
  }

  else
  {
    v8 = "<unknown>";
  }

  swift::swift_Concurrency_fatalError(0, "Object %p of class %s deallocated with non-zero retain count %zd. This object's deinit, or something called from it, may have created a strong reference to self which outlived deinit, resulting in a dangling reference.\n", v6, v7, a1, v8, a2);
}

void swift_task_alloc_cold_1(void *a1)
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_0(v2, v3);
    OUTLINED_FUNCTION_1_2(v4, v5, &dword_1815A3000);
    __cxa_guard_release(_MergedGlobals_0);
  }

  *a1 = &qword_1ED42EB78;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x1EEE6A998]();
}

{
  return MEMORY[0x1EEE6A9A0]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}