void _dispatch_async_and_wait_f(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v11 = _dispatch_thread_getspecific(4);
  v6 = v11;
  v5 = _dispatch_thread_getspecific(3);
  memset(__b, 0, sizeof(__b));
  __b[0] = v7;
  __b[1] = v11 | 0x10000000;
  __b[2] = 0;
  __b[3] = _dispatch_thread_getspecific(28);
  __b[4] = _dispatch_async_and_wait_invoke;
  __b[5] = __b;
  __b[6] = 0;
  __b[7] = v10;
  __b[8] = v8;
  __b[9] = v9;
  memset(&__b[10], 0, 20);
  HIDWORD(__b[12]) = v5;
  LOWORD(__b[13]) = 0;
  BYTE2(__b[13]) = 0;
  _dispatch_async_and_wait_recurse(v10, __b, v5, v7);
}

void dispatch_barrier_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 3))
  {
    _dispatch_async_and_wait_f(queue, context, work, 130);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work);
  }
}

void dispatch_barrier_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (*(queue + 3))
  {
    v4 = _Block_get_invoke_fn(block);
    v5 = 0;
    if (v4)
    {
      v5 = v4;
    }

    if (v5 == _dispatch_block_special_invoke)
    {
      _dispatch_async_and_wait_block_with_privdata(queue, block, 146);
    }

    else
    {
      v2 = _Block_get_invoke_fn(block);
      v3 = 0;
      if (v2)
      {
        v3 = v2;
      }

      _dispatch_async_and_wait_f(queue, block, v3, 146);
    }
  }

  else
  {
    dispatch_barrier_sync(queue, block);
  }
}

void _dispatch_async_and_wait_block_with_privdata(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v31 = a2;
  v44 = a2;
  v6 = _Block_get_invoke_fn(a2);
  v7 = 0;
  if (v6)
  {
    v7 = v6;
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    v30 = v31 + 32;
    v29 = (v31 + 32);
    if (*(v31 + 32) != 3512316172)
    {
      v3 = *v29;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x1F920);
    }

    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  v17 = v32;
  v16 = v32[1];
  v15 = 0;
  v14 = 0;
  if (v32[1])
  {
    v18 |= 0x22uLL;
  }

  else
  {
    v18 |= 0x20uLL;
  }

  v4 = v17[3];
  v25 = v16;
  v24 = v4;
  v23 = 0;
  v22 = 0;
  if ((v16 & 0x40000000) != 0 && ((v25 & 0x20) != 0 || (v25 & 0x10) == 0))
  {
    v28 = v24;
    v24 &= 0xFFFFFFuLL;
    v26 = _dispatch_thread_getspecific(4);
    v27 = v26;
    v23 = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFF) != 0 && v23 < v24)
    {
      v22 = v23;
    }
  }

  if (v22)
  {
    v15 = v17[3];
  }

  else
  {
    v21 = _dispatch_thread_getspecific(4);
    v15 = v21;
  }

  if ((*(v17 + 11) & 0x80) != 0)
  {
    v14 = v17[4];
  }

  else
  {
    v14 = _dispatch_thread_getspecific(28);
  }

  v43 = v17;
  v42 = v20;
  v41 = v20;
  _dispatch_retain_2(v20);
  v40 = 0;
  v39 = 0;
  v37 = v20;
  v36 = v20;
  v38 = v20;
  v5 = 0;
  atomic_compare_exchange_strong_explicit((v17 + 7), &v5, v20, memory_order_relaxed, memory_order_relaxed);
  if (v5)
  {
    v40 = v5;
  }

  v35 = v5 == 0;
  v39 = v5 == 0;
  v34 = v39;
  if (v5)
  {
    v33 = v42;
    _dispatch_release_2(v42);
  }

  v13 = _dispatch_thread_getspecific(3);
  v8[0] = v18;
  v8[1] = v15 | 0x10000000;
  v8[2] = 0;
  v8[3] = v14;
  v8[4] = _dispatch_async_and_wait_invoke;
  v8[5] = v8;
  v8[6] = 0;
  v8[7] = v20;
  v8[8] = _dispatch_block_sync_invoke;
  v8[9] = v19;
  v9 = 0uLL;
  v10 = 0;
  v11 = v13;
  v12 = 0;
  _dispatch_async_and_wait_recurse(v20, v8, v13, v18);
}

void dispatch_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (*(queue + 3))
  {
    v6 = 144;
    if (*(queue + 40) == 1)
    {
      v6 = 146;
    }

    v4 = _Block_get_invoke_fn(block);
    v5 = 0;
    if (v4)
    {
      v5 = v4;
    }

    if (v5 == _dispatch_block_special_invoke)
    {
      _dispatch_async_and_wait_block_with_privdata(queue, block, v6);
    }

    else
    {
      v2 = _Block_get_invoke_fn(block);
      v3 = 0;
      if (v2)
      {
        v3 = v2;
      }

      _dispatch_async_and_wait_f(queue, block, v3, v6);
    }
  }

  else
  {
    dispatch_sync(queue, block);
  }
}

void dispatch_queue_set_specific(dispatch_queue_t queue, const void *key, void *context, dispatch_function_t destructor)
{
  if (key)
  {
    v11 = *(queue + 11);
    v9 = 0;
    if (*queue)
    {
      v9 = *queue;
    }

    if (*(v9 + 16) == 17)
    {
      v8 = 0;
      if (*queue)
      {
        v8 = *queue;
      }

      v7 = 1;
      if (*(v8 + 16) != 394769)
      {
        v6 = 0;
        if (*queue)
        {
          v6 = *queue;
        }

        v7 = (*(v6 + 18) & 2) == 0;
      }

      v16 = v7;
    }

    else
    {
      v5 = 0;
      if (*queue)
      {
        v5 = *queue;
      }

      v16 = *(v5 + 16) == 18;
    }

    if (!v16)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue doesn't support dispatch_queue_set_specific";
      __break(1u);
      JUMPOUT(0x20048);
    }

    if (!context || v11)
    {
      if (!v11)
      {
        return;
      }
    }

    else
    {
      _dispatch_queue_init_specific(queue);
      v11 = *(queue + 11);
    }

    v17 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v11, &v4, v17, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      _dispatch_unfair_lock_lock_slow(v11, 0x10000);
    }

    for (i = *(v11 + 8); i; i = i[3])
    {
      if (*i == key)
      {
        v19 = i;
        goto LABEL_29;
      }
    }

    v19 = 0;
LABEL_29:
    if (v19)
    {
      if (v19[2])
      {
        _dispatch_barrier_async_detached_f(&off_E0600, v19[1], v19[2]);
      }

      if (context)
      {
        v19[1] = context;
        v19[2] = destructor;
      }

      else
      {
        if (v19[3])
        {
          *(v19[3] + 32) = v19[4];
        }

        else
        {
          *(v11 + 16) = v19[4];
        }

        *v19[4] = v19[3];
        v19[3] = -1;
        v19[4] = -1;
        free(v19);
      }
    }

    else if (context)
    {
      v10 = _dispatch_calloc_typed(1, 40, 0xE0040DC662491);
      *v10 = key;
      v10[1] = context;
      v10[2] = destructor;
      v10[3] = 0;
      v10[4] = *(v11 + 16);
      **(v11 + 16) = v10;
      *(v11 + 16) = v10 + 3;
    }

    v20 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v21 = atomic_exchange_explicit(v11, 0, memory_order_release);
    if (v21 != v20)
    {
      _dispatch_unfair_lock_unlock_slow(v11, v21);
    }
  }
}

void _dispatch_queue_init_specific(uint64_t a1)
{
  v2 = _dispatch_calloc_typed(1, 24, 0x10A0040FC6C5850);
  v2[1] = 0;
  v2[2] = v2 + 1;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 88), &v1, v2, memory_order_release, memory_order_relaxed);
  if (v1)
  {
    _dispatch_queue_specific_head_dispose(v2);
  }
}

void *__cdecl dispatch_queue_get_specific(dispatch_queue_t queue, const void *key)
{
  if (!key)
  {
    return 0;
  }

  v12 = *(queue + 11);
  v11 = 0;
  v9 = 0;
  if (*queue)
  {
    v9 = *queue;
  }

  if (*(v9 + 16) == 17)
  {
    v8 = 0;
    if (*queue)
    {
      v8 = *queue;
    }

    v7 = 1;
    if (*(v8 + 16) != 394769)
    {
      v6 = 0;
      if (*queue)
      {
        v6 = *queue;
      }

      v7 = (*(v6 + 16) & 0x20000) == 0;
    }

    v14 = v7;
  }

  else
  {
    v5 = 0;
    if (*queue)
    {
      v5 = *queue;
    }

    v14 = *(v5 + 16) == 18;
  }

  v4 = 0;
  if (v14)
  {
    v4 = v12 != 0;
  }

  if (v4)
  {
    v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v12, &v2, v15, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      _dispatch_unfair_lock_lock_slow(v12, 0x10000);
    }

    for (i = *(v12 + 8); i; i = i[3])
    {
      if (*i == key)
      {
        v17 = i;
        goto LABEL_27;
      }
    }

    v17 = 0;
LABEL_27:
    if (v17)
    {
      v11 = v17[1];
    }

    v18 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v19 = atomic_exchange_explicit(v12, 0, memory_order_release);
    if (v19 != v18)
    {
      _dispatch_unfair_lock_unlock_slow(v12, v19);
    }
  }

  return v11;
}

void *__cdecl dispatch_get_specific(const void *key)
{
  *(&v11 + 1) = key;
  *&v11 = _dispatch_thread_getspecific(20);
  v10 = 0;
  if (v11 != 0)
  {
    do
    {
      v13 = *(v11 + 88);
      v12 = 0;
      v9 = 0;
      if (*v11)
      {
        v9 = *v11;
      }

      if (*(v9 + 16) == 17)
      {
        v8 = 0;
        if (*v11)
        {
          v8 = *v11;
        }

        v7 = 1;
        if (*(v8 + 16) != 394769)
        {
          v6 = 0;
          if (*v11)
          {
            v6 = *v11;
          }

          v7 = (*(v6 + 16) & 0x20000) == 0;
        }

        v14 = v7;
      }

      else
      {
        v5 = 0;
        if (*v11)
        {
          v5 = *v11;
        }

        v14 = *(v5 + 16) == 18;
      }

      v4 = 0;
      if (v14)
      {
        v4 = v13 != 0;
      }

      if (v4)
      {
        v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
        v1 = 0;
        atomic_compare_exchange_strong_explicit(v13, &v1, v15, memory_order_acquire, memory_order_acquire);
        if (v1)
        {
          _dispatch_unfair_lock_lock_slow(v13, 0x10000);
        }

        for (i = *(v13 + 8); i; i = i[3])
        {
          if (*i == *(&v11 + 1))
          {
            v17 = i;
            goto LABEL_26;
          }
        }

        v17 = 0;
LABEL_26:
        if (v17)
        {
          v12 = v17[1];
        }

        v18 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
        v19 = atomic_exchange_explicit(v13, 0, memory_order_release);
        if (v19 != v18)
        {
          _dispatch_unfair_lock_unlock_slow(v13, v19);
        }
      }

      v10 = v12;
      *&v11 = *(v11 + 24);
      v3 = 0;
      if (!v12)
      {
        v3 = v11 != 0;
      }
    }

    while (v3);
  }

  return v10;
}

uint64_t dispatch_queue_set_label_nocopy(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != 0x7FFFFFFF)
  {
    if ((BYTE2(*(result + 80)) >> 5))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0x20F48);
    }

    *(result + 72) = a2;
  }

  return result;
}

uint64_t _dispatch_queue_compute_priority_and_wlh(uint64_t a1, uint64_t *a2)
{
  v16 = *(a1 + 84);
  v14 = v16 & 0xFFF;
  v13 = (v16 & 0xF000) >> 12;
  v12 = *(a1 + 24);
  v11 = -4;
  if ((*(a1 + 56) & 0x2000000000) != 0)
  {
    v11 = a1;
  }

  while (1)
  {
    v8 = 0;
    if (*v12)
    {
      v8 = *v12;
    }

    if ((v8[2] & 0x10000) != 0)
    {
LABEL_40:
      v5 = 0;
      if (v12 >= &_dispatch_root_queues)
      {
        v5 = v12 < &unk_E0A80;
      }

      v4 = 1;
      if (!v5)
      {
        v4 = *(v12 + 64) == 22;
      }

      if (v4)
      {
        if (!v13)
        {
          v13 = (*(v12 + 84) & 0xF000u) >> 12;
        }

        if (v14 < (*(v12 + 84) & 0xFFFu))
        {
          v14 = *(v12 + 84) & 0xFFF;
        }

        v15 = v14 | *(v12 + 84) & 0x88000000;
        if ((v16 & 0x40000000) != 0 || (v16 & 0xFFF) == 0)
        {
          v15 |= v16 & 0x40000000;
          if (v13 > (v15 & 0xF00) >> 8)
          {
            if (v13)
            {
              v3 = (v13 << 12) & 0xF000 | 0x4000000;
            }

            else
            {
              v3 = 0;
            }

            v15 |= v3;
          }
        }

        if (a2)
        {
          *a2 = v11;
        }

        return v15;
      }

      else
      {
        if (a2)
        {
          *a2 = -4;
        }

        return 0x2000000;
      }
    }

    if (v12 == &_dispatch_mgr_q)
    {
      if (a2)
      {
        *a2 = -4;
      }

      return 0x2000000;
    }

    v7 = 0;
    if ((*(v12 + 80) & 0x40000) != 0)
    {
      v7 = (*(v12 + 80) & 0x1000000) == 0;
    }

    if (v7)
    {
      if (a2)
      {
        *a2 = -4;
      }

      return *(v12 + 84);
    }

    if ((*(v12 + 56) & 0xFF80000000000000) != 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if (a2)
      {
        *a2 = 0;
      }

      return 0;
    }

    if ((*(v12 + 56) & 0x2000000000) == 0)
    {
      break;
    }

    v11 = v12;
    v6 = 0;
    if (*v12)
    {
      v6 = *v12;
    }

    if (*(v6 + 16) == 18)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

LABEL_34:
    v9 = *(v12 + 84);
    v12 = *(v12 + 24);
    if ((v9 & 0x20000000) != 0)
    {
      goto LABEL_40;
    }

    if (!v13)
    {
      v13 = (v9 & 0xF000) >> 12;
    }

    v10 = v9 & 0xFFF;
    if (v14 < v10)
    {
      v14 = v10;
    }
  }

  if ((*(v12 + 80) & 0x400000) == 0)
  {
    goto LABEL_34;
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

void dispatch_set_qos_class_floor(dispatch_object_t object, dispatch_qos_class_t qos_class, int relative_priority)
{
  v5 = 0;
  if (*object)
  {
    v5 = *object;
  }

  if ((*(v5 + 16) & 0xF0) != 0x10)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class_floor called on invalid object type";
    __break(1u);
    JUMPOUT(0x21888);
  }

  v4 = 0;
  if (*object)
  {
    v4 = *object;
  }

  if (*(v4 + 16) == 18)
  {
    dispatch_workloop_set_qos_class_floor(object, qos_class, relative_priority, 0);
  }

  else
  {
    switch(qos_class)
    {
      case 5u:
        v7 = 1;
        break;
      case 9u:
        v7 = 2;
        break;
      case 0x11u:
        v7 = 3;
        break;
      case 0x15u:
        v7 = 4;
        break;
      case 0x19u:
        v7 = 5;
        break;
      case 0x21u:
        v7 = 6;
        break;
      default:
        v7 = 0;
        break;
    }

    if (v7)
    {
      v3 = (relative_priority - 1) | ((v7 & 0xF) << 8);
    }

    else
    {
      v3 = 0;
    }

    v6 = v3;
    if (v3)
    {
      v6 = v3 | 0x40000000;
    }

    *(object + 21) = v6 | *(object + 21) & 0xBFFFF000;
    v8 = *(object + 7);
    if ((~v8 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x21AECLL);
    }
  }
}

uint64_t dispatch_workloop_set_qos_class_floor(uint64_t result, int a2, char a3, char a4)
{
  v7 = result;
  v9 = *(result + 56);
  if ((~v9 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x21BA4);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(v7 + 200) = result;
  }

  switch(a2)
  {
    case 5:
      v8 = 1;
      break;
    case 9:
      v8 = 2;
      break;
    case 17:
      v8 = 3;
      break;
    case 21:
      v8 = 4;
      break;
    case 25:
      v8 = 5;
      break;
    case 33:
      v8 = 6;
      break;
    default:
      v8 = 0;
      break;
  }

  if (v8)
  {
    *(*(v7 + 200) + 4) = (a3 - 1) | ((v8 & 0xF) << 8);
    **(v7 + 200) |= 8u;
  }

  else
  {
    *(*(v7 + 200) + 4) = 0;
    **(v7 + 200) &= ~8u;
  }

  if (a4)
  {
    *(*(v7 + 200) + 16) = 2;
    **(v7 + 200) |= 2u;
  }

  else
  {
    **(v7 + 200) &= ~2u;
  }

  return result;
}

uint64_t dispatch_set_qos_class(uint64_t a1, int a2, char a3)
{
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  if ((*(v7 + 16) & 0xF0) != 0x10)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  result = a1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v6 = 0;
  if (*a1)
  {
    v6 = v5;
  }

  if (*(v6 + 16) == 18)
  {
LABEL_7:
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class called on invalid object type";
    __break(1u);
    JUMPOUT(0x21EA4);
  }

  switch(a2)
  {
    case 5:
      v9 = 1;
      break;
    case 9:
      v9 = 2;
      break;
    case 17:
      v9 = 3;
      break;
    case 21:
      v9 = 4;
      break;
    case 25:
      v9 = 5;
      break;
    case 33:
      v9 = 6;
      break;
    default:
      v9 = 0;
      break;
  }

  if (v9)
  {
    v4 = (a3 - 1) | ((v9 & 0xF) << 8);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 84) = v4 | *(a1 + 84) & 0xBFFFF000;
  v10 = *(a1 + 56);
  if ((~v10 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v10;
    __break(1u);
    JUMPOUT(0x22070);
  }

  return result;
}

uint64_t dispatch_set_qos_class_fallback(uint64_t a1, int a2)
{
  v2 = *a1;
  v5 = *a1;
  result = a1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v6 = 0;
  if (v2)
  {
    v6 = v5;
  }

  if ((*(v6 + 16) & 0xF0) != 0x10)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class_fallback called on invalid object type";
    __break(1u);
    JUMPOUT(0x22114);
  }

  switch(a2)
  {
    case 5:
      v9 = 1;
      break;
    case 9:
      v9 = 2;
      break;
    case 17:
      v9 = 3;
      break;
    case 21:
      v9 = 4;
      break;
    case 25:
      v9 = 5;
      break;
    case 33:
      v9 = 6;
      break;
    default:
      v9 = 0;
      break;
  }

  if (v9)
  {
    v4 = ((v9 & 0xF) << 12) | 0x4000000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 84) = v4 | *(a1 + 84) & 0xFBFF0FFF;
  v10 = *(a1 + 56);
  if ((~v10 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v10;
    __break(1u);
    JUMPOUT(0x222D8);
  }

  return result;
}

uint64_t *_dispatch_lane_create_with_target(const char *a1, uint64_t *a2, uint64_t (***a3)(), char a4)
{
  v25 = _dispatch_queue_attr_to_info(a2);
  v24 = v25;
  v23 = BYTE2(v25) & 3;
  if ((v25 & 0x30000) != 0 && a3 && a3[3])
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify both overcommit and a non-global target queue";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x223CCLL);
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v18 = 0;
  if (*a3)
  {
    v18 = *a3;
  }

  if (*(v18 + 16) == 328465)
  {
    if ((v25 & 0x30000) == 0)
    {
      if ((*(a3 + 87) & 0x80) != 0)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }
    }

    if (!v25)
    {
      v24 = (*(a3 + 21) & 0xF00u) >> 8;
    }

    a3 = 0;
  }

  else
  {
LABEL_17:
    if (a3 && (*(a3 + 87) & 8) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x22528);
    }

    if (!a3 || a3[3])
    {
      if ((v25 & 0x30000) == 0)
      {
        if ((v25 >> 20))
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }

        v23 = v4;
      }
    }

    else if ((v25 & 0x30000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify an overcommit attribute and use this kind of target queue";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x2258CLL);
    }
  }

  if (!a3)
  {
    if (v24)
    {
      v17 = v24;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 6)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
      qword_E42C0 = v17;
      __break(1u);
      JUMPOUT(0x22684);
    }

    v29 = 0;
    if (((2 * (v23 == 1)) & 2) != 0)
    {
      v29 = 1;
    }

    else if (((2 * (v23 == 1)) & 4) != 0)
    {
      v29 = 2;
    }

    a3 = &(&_dispatch_root_queues)[16 * (3 * v17 + v29 - 3)];
    if (!a3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
      qword_E42C0 = v24;
      __break(1u);
      JUMPOUT(0x22730);
    }
  }

  if ((a4 & 1) != 0 && ((v25 & 0x200000) != 0 || ((v25 >> 18) & 3) != 0))
  {
    a4 = 0;
  }

  if (a4)
  {
    v5 = 0x400000;
  }

  else
  {
    v5 = 0;
  }

  v21 = v5;
  if ((v25 & 0x100000) != 0)
  {
    v22 = _OS_dispatch_queue_concurrent_vtable;
  }

  else
  {
    v22 = _OS_dispatch_queue_serial_vtable;
  }

  v16 = (v25 >> 18) & 3;
  if (v16 == 1)
  {
    v21 = v5 | 0x10000;
  }

  else if (v16 == 2)
  {
    v21 = v5 | 0x20000;
  }

  if (a1)
  {
    v20 = _dispatch_strdup_if_mutable(a1);
    if (v20 != a1)
    {
      v21 |= 0x200000u;
      a1 = v20;
    }
  }

  v19 = _dispatch_object_alloc(v22, 0x78uLL);
  if ((v25 >> 21))
  {
    v6 = 0x180000000000000;
  }

  else
  {
    v6 = 0;
  }

  if ((v25 >> 20))
  {
    v7 = 4094;
  }

  else
  {
    v7 = 1;
  }

  _dispatch_queue_init(v19, v21, v7, v6);
  v19[9] = a1;
  if (v25)
  {
    v15 = (BYTE1(v25) - 1) | ((v25 & 0xF) << 8);
  }

  else
  {
    v15 = 0;
  }

  *(v19 + 21) = v15;
  if (v23 == 1)
  {
    *(v19 + 21) |= 0x80000000;
  }

  if ((v25 & 0x200000) == 0)
  {
    _dispatch_queue_priority_inherit_from_target(v19, a3);
    _dispatch_lane_inherit_wlh_from_target(v19, a3);
  }

  _dispatch_retain(a3);
  v19[3] = a3;
  _dispatch_object_debug(v19, "%s", v8, v9, v10, v11, v12, v13, "_dispatch_lane_create_with_target");
  return v19;
}

void _dispatch_lane_class_dispose(uint64_t *a1, _BYTE *a2)
{
  if (a1[6])
  {
    v2 = a1[6];
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x22AB4);
  }

  a1[13] = 512;
  a1[6] = 512;
  v5 = a1[7];
  v4 = (4096 - *(a1 + 40)) << 41;
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  if (*(v3 + 18))
  {
    v4 = 0x60000000000000;
  }

  if ((a1[7] & 0xFFFFFF48FFFFFFFFLL) != v4)
  {
    if ((a1[7] & 0xFFFFFFFC) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x22C14);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x22C50);
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_queue_dispose(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 72) && (*(a1 + 80) & 0x200000) != 0)
  {
    free(*(a1 + 72));
  }

  v3 = __swp(0x200u, (a1 + 88));
  if (v3)
  {
    _dispatch_queue_specific_head_dispose(v3);
  }

  if (*(a1 + 96))
  {
    _dispatch_object_finalize();
    *a2 = 0;
    *(a1 + 72) = "<released queue, pending free>";
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
    v5 = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
    if (v5 < 0)
    {
      if (v5 <= -2)
      {
        qword_E4290 = "API MISUSE: Over-release of an object";
        __break(1u);
        JUMPOUT(0x22E9CLL);
      }

      *(a1 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(a1);
    }
  }

  else
  {
    *(a1 + 56) = 0xDEAD000000000000;
  }
}

void _dispatch_lane_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_lane_dispose");
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t _dispatch_queue_xref_dispose(uint64_t result)
{
  v1 = *(result + 56);
  if ((v1 & 0xFF80000000000000) != 0)
  {
    if ((v1 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x23040);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x2307CLL);
  }

  atomic_fetch_or_explicit((result + 80), 0x800000u, memory_order_relaxed);
  return result;
}

uint64_t _dispatch_lane_suspend(uint64_t result)
{
  v3 = *(result + 56);
  do
  {
    if (v3 >= 0xFC00000000000000)
    {
      return _dispatch_lane_suspend_slow(result);
    }

    v1 = v3;
    v2 = v3;
    atomic_compare_exchange_strong_explicit((result + 56), &v2, v3 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v1)
    {
      v3 = v2;
    }
  }

  while (v2 != v1);
  if ((v3 & 0xFF80000000000000) == 0)
  {
    return _dispatch_retain_2(result);
  }

  return result;
}

uint64_t _dispatch_lane_suspend_slow(uint64_t a1)
{
  v11 = (a1 + 100);
  v10 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v11, &v1, v10, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v11, 0x10000);
  }

  v7 = 0x7C00000000000000;
  if (!*(a1 + 112))
  {
    v7 = 0x7A00000000000000;
  }

  for (i = *(a1 + 56); ; i = v3)
  {
    if (i < v7)
    {
      v16 = (a1 + 100);
      v6 = _dispatch_thread_getspecific(3);
      v15 = atomic_exchange_explicit(v16, 0, memory_order_release);
      if (v15 == (v6 & 0xFFFFFFFC))
      {
        v17 = 0;
      }

      else
      {
        _dispatch_unfair_lock_unlock_slow(v16, v15);
        v17 = (v15 & 2) != 0;
      }

      if (v17)
      {
        v12 = _dispatch_thread_getspecific(25);
        if (!((v12 & 0xF0000u) >> 16))
        {
          _dispatch_thread_setspecific(25, v12 & 0xFFF0FFFF | 0x10000);
        }
      }

      return _dispatch_lane_suspend(a1);
    }

    v2 = i;
    v3 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v3, i - v7, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      break;
    }
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = v4 + 32;
  if (v4 >= 0xFFFFFFE0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_suspend()";
    __break(1u);
    JUMPOUT(0x23454);
  }

  result = _dispatch_thread_getspecific(3);
  v13 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
  if (v13 == (result & 0xFFFFFFFC))
  {
    v14 = 0;
  }

  else
  {
    result = _dispatch_unfair_lock_unlock_slow(a1 + 100, v13);
    v14 = (v13 & 2) != 0;
  }

  if (v14)
  {
    result = _dispatch_thread_getspecific(25);
    if (!((result & 0xF0000) >> 16))
    {
      return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
    }
  }

  return result;
}

void _dispatch_lane_resume(uint64_t a1, int a2)
{
  v17 = (*(a1 + 80) - 1) << 41;
  v16 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
  v9 = 0;
  if (*a1)
  {
    v9 = *a1;
  }

  v15 = *(v9 + 16) == 19;
  if (a2 == 1)
  {
    for (i = *(a1 + 56); (~i & 0x180000000000000) == 0; i = v3)
    {
      if (i >> 58)
      {
        v11 = i - 0x80000000000000;
      }

      else
      {
        v11 = i - 0x100000000000000;
      }

      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v3, v11, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      for (i = *(a1 + 56); ; i = v7)
      {
        if (v15 && i >> 55 == 3)
        {
          v11 = i - 0x100000000000000;
        }

        else
        {
          v13 = i - 0x400000000000000;
          if (i < 0x400000000000000)
          {
            if ((i & 0x200000000000000) == 0)
            {
              if ((~i & 0x180000000000000) == 0)
              {
                qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an inactive object";
                qword_E42C0 = a1;
                __break(1u);
                JUMPOUT(0x23F10);
              }

              qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an object";
              qword_E42C0 = a1;
              __break(1u);
              JUMPOUT(0x23F4CLL);
            }

            _dispatch_lane_resume_slow(a1);
            return;
          }

          if ((v13 & 0x180000000000000) == 0x100000000000000)
          {
            v11 = i - 0x480000000000000;
          }

          else if (v13 >> 53)
          {
            v11 = v13 | 0x8000000000;
          }

          else if ((i & 0xFFFFFFFC) != 0)
          {
            v11 = v13 | 0x8000000000;
          }

          else if (v15 || (v13 & 0x10000000000) == 0 && (v13 + v17) >> 53)
          {
            v11 = v13 & 0xFFFFFFF000000001;
          }

          else
          {
            v11 = v13 & 0x7700000001 | v16;
          }
        }

        v6 = i;
        v7 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v11, memory_order_release, memory_order_relaxed);
        if (v7 == v6)
        {
          goto LABEL_45;
        }
      }
    }

    for (i = *(a1 + 56); ; i = v5)
    {
      if ((i & 0x180000000000000) == 0)
      {
        _dispatch_release_2_tailcall(a1);
        return;
      }

      v12 = i - 0x80000000000000;
      if ((i - 0x80000000000000) >> 53)
      {
        v11 = v12 | 0x8000000000;
      }

      else
      {
        v11 = (i & 0xFFFFFFFC) != 0 ? v12 | 0x8000000000 : v12 & 0xFFFFFFF000000001;
      }

      v4 = i;
      v5 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v11, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        break;
      }
    }

    if ((v11 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt activation state";
      qword_E42C0 = a1;
      __break(1u);
      JUMPOUT(0x23AB4);
    }

LABEL_45:
    if ((v11 & 0x180000000000000) == 0x80000000000000)
    {
      _dispatch_lane_resume_activate(a1);
      return;
    }

    if ((v11 & 0xFF80000000000000) == 0)
    {
      v10 = 1;
      if (((i ^ v11) & 0x40000000000000) != 0)
      {
        v10 = 5;
      }

      else if (v11 >> 53)
      {
        if ((i & 0x2000000000) != 0)
        {
          _dispatch_event_loop_assert_not_owned(a1);
        }

        _dispatch_release_2(a1);
        return;
      }

      v8 = 0;
      if (*a1)
      {
        v8 = *a1;
      }

      (*(v8 + 64))(a1, (i & 0x700000000) >> 32, v10);
    }
  }
}

void _dispatch_lane_resume_slow(uint64_t a1)
{
  v10 = (a1 + 100);
  v9 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v10, &v1, v9, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v10, 0x10000);
  }

  v6 = 0x7C00000000000000;
  v5 = *(a1 + 112);
  if (v5)
  {
    if (v5 == 32)
    {
      v6 = 0x7A00000000000000;
    }

    v7 = *(a1 + 56);
    while (!__CFADD__(v7, v6))
    {
      v3 = v7;
      v4 = v7;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v7 + v6, memory_order_relaxed, memory_order_relaxed);
      if (v4 != v3)
      {
        v7 = v4;
      }

      if (v4 == v3)
      {
        *(a1 + 112) -= 32;
        v13 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
        v14 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
        if (v14 == v13)
        {
          v15 = 0;
        }

        else
        {
          _dispatch_unfair_lock_unlock_slow(a1 + 100, v14);
          v15 = (v14 & 2) != 0;
        }

        if (v15)
        {
          v12 = _dispatch_thread_getspecific(25);
          if (!((v12 & 0xF0000u) >> 16))
          {
            _dispatch_thread_setspecific(25, v12 & 0xFFF0FFFF | 0x10000);
          }
        }

        return;
      }
    }
  }

  v16 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v17 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
  if (v17 == v16)
  {
    v18 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(a1 + 100, v17);
    v18 = (v17 & 2) != 0;
  }

  if (v18)
  {
    v11 = _dispatch_thread_getspecific(25);
    if (!((v11 & 0xF0000u) >> 16))
    {
      _dispatch_thread_setspecific(25, v11 & 0xFFF0FFFF | 0x10000);
    }
  }

  _dispatch_lane_resume(a1, 0);
}

void _dispatch_lane_resume_activate(uint64_t *a1)
{
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  v2 = 0;
  if (*(v3 + 56))
  {
    v2 = *(v3 + 56);
  }

  if (v2)
  {
    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*(v1 + 56))(a1);
  }

  _dispatch_lane_resume(a1, 2);
}

const char *__cdecl dispatch_queue_get_label(dispatch_queue_t queue)
{
  v5 = queue;
  if (!queue)
  {
    v4 = _dispatch_thread_getspecific(20);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = &off_E0680;
    }

    v5 = v3;
  }

  if (*(v5 + 9))
  {
    return *(v5 + 9);
  }

  else
  {
    return &unk_BBE5B;
  }
}

dispatch_qos_class_t dispatch_queue_get_qos_class(dispatch_queue_t queue, int *relative_priority_ptr)
{
  v4 = (*(queue + 21) & 0xF00u) >> 8;
  if (relative_priority_ptr)
  {
    if (v4)
    {
      v5 = *(queue + 21);
      if ((v5 & 0xF00) != 0)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 0;
      }

      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    *relative_priority_ptr = v3;
  }

  switch(v4)
  {
    case 1u:
      return 5;
    case 2u:
      return 9;
    case 3u:
      return 17;
    case 4u:
      return 21;
    case 5u:
      return 25;
    case 6u:
      return 33;
  }

  return 0;
}

uint64_t dispatch_queue_get_threadid_4wdt(uint64_t *a1, __uint64_t *a2)
{
  *a2 = 0;
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  v5 = *(v3 + 16);
  if (v5 == 273 || v5 == 131090 || v5 == 394769)
  {
    if ((a1[7] & 0xFFFFFFFC) != 0)
    {
      v8 = a1[7] | 3;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v4 = pthread_from_mach_thread_np(v8);
      if (v4)
      {
        return pthread_threadid_np(v4, a2);
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 22;
  }
}

uint64_t dispatch_queue_set_width(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  v5 = *(v4 + 16);
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  if (*(v3 + 16) != 17)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x24A78);
  }

  if (v5 != 529)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x24AC4);
  }

  if ((a2 & 0x80000000) != 0)
  {
    return _dispatch_barrier_async_detached_f(a1, a2, _dispatch_lane_set_width);
  }

  else
  {
    return _dispatch_barrier_trysync_or_async_f(a1, a2, _dispatch_lane_set_width, 1);
  }
}

void _dispatch_lane_set_width(int a1)
{
  v14 = _dispatch_thread_getspecific(20);
  if ((a1 & 0x80000000) == 0)
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = 1;
    }

    v15 = v12;
    goto LABEL_33;
  }

  v1 = (_dispatch_thread_getspecific(4) & 0x3FFF00) >> 8;
  v2 = __clz(__rbit32(v1));
  if (v1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  switch(a1)
  {
    case -3:
      goto LABEL_27;
    case -2:
      v21 = 0;
      if (v3)
      {
        v21 = pthread_qos_max_parallelism();
      }

      if (v21 <= 0)
      {
        v22 = MEMORY[0xFFFFFC035];
      }

      else
      {
        v22 = v21;
      }

      v15 = v22;
      break;
    case -1:
      v19 = 0;
      if (v3)
      {
        v19 = pthread_qos_max_parallelism();
      }

      if (v19 <= 0)
      {
        v20 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v20 = v19;
      }

      if (MEMORY[0xFFFFFC034] < v20)
      {
        v20 = MEMORY[0xFFFFFC034];
      }

      v15 = v20;
      break;
    default:
LABEL_27:
      v17 = 0;
      if (v3)
      {
        v17 = pthread_qos_max_parallelism();
      }

      if (v17 <= 0)
      {
        v18 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v18 = v17;
      }

      v15 = v18;
      break;
  }

LABEL_33:
  if (v15 > 0xFFEuLL)
  {
    LOWORD(v15) = 4094;
  }

  v13 = *(v14 + 80);
  do
  {
    v4 = v13;
    v5 = v13;
    atomic_compare_exchange_strong_explicit((v14 + 80), &v5, v13 & 0xFFFF0000 | v15, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v13 = v5;
    }
  }

  while (v5 != v4);
  _dispatch_lane_inherit_wlh_from_target(v14, *(v14 + 24));
  _dispatch_object_debug(v14, "%s", v6, v7, v8, v9, v10, v11, "_dispatch_lane_set_width");
}

void _dispatch_lane_set_target_queue(uint64_t *a1, uint64_t (***a2)())
{
  v7 = a2;
  if (!a2)
  {
    v7 = &(&_dispatch_root_queues)[16 * ((*(a1 + 40) == 1) + 9)];
  }

  for (i = a1[7]; ; i = v3)
  {
    if ((~i & 0x180000000000000) != 0)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v2 = i;
    v3 = i;
    atomic_compare_exchange_strong_explicit((a1 + 7), &v3, i + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      break;
    }
  }

  LOBYTE(v5) = 1;
  if ((i & 0xFF80000000000000) != 0)
  {
    v5 = (HIBYTE(i) >> 1) & 1;
  }

  if (v5)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    JUMPOUT(0x25BC4);
  }

  v10 = 1;
LABEL_13:
  if (v10 == 1)
  {
    _dispatch_retain(v7);
    v11 = atomic_exchange_explicit((a1 + 3), v7, memory_order_release);
    if (v11)
    {
      _dispatch_release(v11);
    }

    _dispatch_lane_resume(a1, 0);
  }

  else
  {
    if (((BYTE2(*(a1 + 20)) >> 6) & 1) == 0)
    {
      if ((a1[10] & 0x100000) != 0)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
        __break(1u);
        JUMPOUT(0x25D20);
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
      __break(1u);
      JUMPOUT(0x25D4CLL);
    }

    v4 = 0;
    if (*a1)
    {
      v4 = *a1;
    }

    v6 = *(v4 + 16);
    if (v6 == 17)
    {
      if ((a1[10] & 0x100000) != 0)
      {
        _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
      }
    }

    else
    {
      if (*(v4 + 16) != 19)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
        qword_E42C0 = v6;
        __break(1u);
        JUMPOUT(0x25ED0);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      _dispatch_bug_deprecated("Changing the target of a source after it has been activated");
    }

    _dispatch_retain(v7);
    _dispatch_barrier_trysync_or_async_f(a1, v7, _dispatch_lane_legacy_set_target_queue, 1);
  }
}

void _dispatch_lane_legacy_set_target_queue(unint64_t a1)
{
  v10 = _dispatch_thread_getspecific(20);
  v8 = *(v10 + 24);
  if ((*(v10 + 80) & 0x100000) != 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
  }

  v9 = _dispatch_queue_priority_inherit_from_target(v10, a1);
  _dispatch_lane_inherit_wlh_from_target(v10, v9);
  v12 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 100), &v1, v12, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow((v10 + 100), 0x10000);
  }

  if (((BYTE2(*(v10 + 80)) >> 6) & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    JUMPOUT(0x26194);
  }

  *(v10 + 24) = v9;
  v14 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v15 = atomic_exchange_explicit((v10 + 100), 0, memory_order_release);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v10 + 100, v15);
    v16 = (v15 & 2) != 0;
  }

  if (v16)
  {
    v13 = _dispatch_thread_getspecific(25);
    if (!((v13 & 0xF0000u) >> 16))
    {
      _dispatch_thread_setspecific(25, v13 & 0xFFF0FFFF | 0x10000);
    }
  }

  _dispatch_object_debug(v10, "%s", v2, v3, v4, v5, v6, v7, "_dispatch_lane_legacy_set_target_queue");
  _dispatch_release_tailcall(v8);
}

void _dispatch_return_to_kernel()
{
  v1 = _dispatch_thread_getspecific(29);
  if (v1)
  {
    _dispatch_abort(453, (v1 & 1) == 0);
  }

  v0 = 0;
  if (v1)
  {
    v0 = *(v1 + 24) != -4;
  }

  if (v0)
  {
    if ((*(v1 + 53) & 4) == 0)
    {
      _dispatch_abort(3664, (*(v1 + 53) & 4) != 0);
    }

    _dispatch_event_loop_drain(1u);
  }

  else
  {
    _dispatch_thread_setspecific(5, 0);
  }
}

uint64_t _dispatch_lane_serial_drain(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3 & 0xFFFDFFFF;
  v26 = a4;
  v25 = 1;
  v24 = a1[3];
  v23 = 0uLL;
  v19 = *a4;
  if (!a1[6])
  {
    return 0;
  }

  v141 = v29;
  v140 = &v23;
  v145 = &v23;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v23);
  _dispatch_thread_setspecific_pair(20, v141, 21, v140);
  if ((v25 & 1) != 0 || (v31 = v19, (v19 & 0x40000000000000) != 0))
  {
    v20 = 0x40000000000000;
  }

  else
  {
    v20 = v19 & 0x3FFE0000000000;
  }

  if ((v27 & 0x10) != 0 && _dispatch_thread_getspecific(5))
  {
    _dispatch_return_to_kernel();
  }

  v74 = v29;
  v73 = (v29 + 13);
  v72 = 0;
  v70 = v29[13];
  v71 = v70;
  v69 = v70;
  v72 = v70;
  if (!v70)
  {
    v72 = _dispatch_wait_for_enqueuer(v73, (v74 + 6));
  }

  v68 = v72;
  v22 = v72;
  while (1)
  {
    v32 = v29[7];
    if ((v32 & 0xFF80000000000000) != 0 || v24 != v29[3])
    {
      break;
    }

    if (v25)
    {
      goto LABEL_40;
    }

    v47 = v22;
    v46 = 0;
    v137 = v22;
    if (*v22 > 0xFFFuLL)
    {
      v17 = 0;
      if (*v47)
      {
        v17 = *v47;
      }

      if ((*(v17 + 16) & 0xF0) == 0x10)
      {
        v44 = *(v47 + 20);
        v45 = v44;
        v43 = v44;
        v46 = v44;
        v48 = (v44 & 0x80000) != 0;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = (*v47 & 2) != 0;
    }

    if (v48)
    {
LABEL_40:
      if ((v25 & 1) == 0 && v20 != 0x40000000000000)
      {
        v157 = v29;
        v156 = v20;
        v155 = 0;
        v154 = 0;
        v153 = ((*(v29 + 40) - 1) << 41) | 0x10000000000;
        v152 = 0;
        v151 = (v29 + 7);
        v155 = v29[7];
        do
        {
          v154 = v155 - v156;
          v159 = v155;
          if ((v155 & 0x10000000000) == 0)
          {
            v154 += v153;
          }

          v158 = v154;
          if (!(v154 >> 53))
          {
            v154 += 0x20000000000;
            v154 += 0x40000000000000;
            v154 -= 0x10000000000;
          }

          v154 &= ~0x8000000000uLL;
          v150 = v154;
          v5 = v155;
          v6 = v155;
          atomic_compare_exchange_strong_explicit(v151, &v6, v154, memory_order_acquire, memory_order_acquire);
          if (v6 != v5)
          {
            v155 = v6;
          }

          v149 = v6 == v5;
          v152 = v6 == v5;
        }

        while (v6 != v5);
        v148 = v152;
        if ((v154 & 0x40000000000000) == 0)
        {
          goto LABEL_125;
        }

        v20 = 0x40000000000000;
      }

      v160 = v22;
      v162 = v22;
      if (*v22 >= 0x1000uLL)
      {
        v161 = 0;
      }

      else
      {
        v161 = *v160 & 1;
      }

      if (v161 == 1 && (v27 & 0x80000) == 0)
      {
        *(v28 + 8) = v22;
        if ((v27 & 8) != 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
          __break(1u);
          JUMPOUT(0x2769CLL);
        }

        v142 = &v23;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
        return v29[3];
      }

      v104 = v29;
      v103 = v22;
      v102 = v22;
      v101 = 0;
      v100 = 0;
      v99 = 0;
      v97 = v22[2];
      v98 = v97;
      v96 = v97;
      v101 = v97;
      v95 = v97;
      v94 = v97;
      v29[13] = v97;
      v93 = v95;
      if (!v101)
      {
        v90 = 0;
        v91 = 0;
        v92 = v104 + 6;
        v89 = 0;
        v88 = (v104 + 6);
        v99 = v104[6];
        while (1)
        {
          v136 = v99;
          if (v102 != (v99 & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v100 = 0;
          v78 = 0;
          v7 = v99;
          v8 = v99;
          atomic_compare_exchange_strong_explicit(v88, &v8, 0, memory_order_release, memory_order_relaxed);
          if (v8 != v7)
          {
            v99 = v8;
          }

          v77 = v8 == v7;
          v89 = v8 == v7;
          if (v8 == v7)
          {
            goto LABEL_67;
          }
        }

        v87 = v102;
        v86 = 0;
        v84 = v102[2];
        v85 = v84;
        v83 = v84;
        v86 = v84;
        if (!v84)
        {
          v86 = _dispatch_wait_for_enqueuer(v87 + 2, (v104 + 6));
        }

        v82 = v86;
        v101 = v86;
        v81 = v86;
        v80 = v86;
        v104[13] = v86;
        v79 = v81;
LABEL_67:
        v76 = v89;
      }

      v75 = v101;
      v21 = v101;
LABEL_106:
      _dispatch_continuation_pop_inline(v22, v28, v27, v29);
      goto LABEL_13;
    }

    if (v20 == 0x40000000000000)
    {
      atomic_fetch_xor_explicit((v29 + 7), 0x40000000000000uLL, memory_order_release);
      v20 = *(v29 + 40) << 41;
    }

    else if (!v20)
    {
      v39 = v22;
      v139 = v22;
      if (*v22 < 0x1000uLL && (*v39 & 0x81) != 0)
      {
        v173 = v29;
        v171 = 0x20000000000;
        v170 = 0x20000000000;
        v172 = 0x20000000000;
        v166 = 0x20000000000;
        v165 = 0x20000000000;
        v167 = 0x20000000000;
        add_explicit = atomic_fetch_add_explicit((v29 + 7), 0x20000000000uLL, memory_order_relaxed);
        v168 = add_explicit;
        v163 = add_explicit;
        v169 = add_explicit + v172;
      }

      else
      {
        v56 = v29;
        v55 = 0;
        v54 = 0;
        v53 = 0;
        v52 = (v29 + 7);
        v55 = v29[7];
        do
        {
          v58 = v55;
          v16 = 1;
          if (!(v55 >> 53))
          {
            v60 = v55;
            v16 = 1;
            if ((v55 & 0x8000000000) == 0)
            {
              v59 = v55;
              v16 = BYTE5(v55) & 1;
            }
          }

          if (v16)
          {
            v57 = 0;
            goto LABEL_87;
          }

          v54 = v55 + 0x20000000000;
          v51 = v55 + 0x20000000000;
          v9 = v55;
          v10 = v55;
          atomic_compare_exchange_strong_explicit(v52, &v10, v55 + 0x20000000000, memory_order_acquire, memory_order_acquire);
          if (v10 != v9)
          {
            v55 = v10;
          }

          v50 = v10 == v9;
          v53 = v10 == v9;
        }

        while (v10 != v9);
        v49 = v53;
        v57 = v53;
LABEL_87:
        if (!v57)
        {
LABEL_125:
          *v26 &= 0x4000000001uLL;
          v143 = &v23;
          _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
          return -1;
        }
      }

      v20 = 0x20000000000;
    }

    v134 = v29;
    v133 = v22;
    v132 = v22;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v127 = v22[2];
    v128 = v127;
    v126 = v127;
    v131 = v127;
    v125 = v127;
    v124 = v127;
    v29[13] = v127;
    v123 = v125;
    if (!v131)
    {
      v120 = 0;
      v121 = 0;
      v122 = v134 + 6;
      v119 = 0;
      v118 = (v134 + 6);
      v129 = v134[6];
      while (1)
      {
        v135 = v129;
        if (v132 != (v129 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v130 = 0;
        v108 = 0;
        v11 = v129;
        v12 = v129;
        atomic_compare_exchange_strong_explicit(v118, &v12, 0, memory_order_release, memory_order_relaxed);
        if (v12 != v11)
        {
          v129 = v12;
        }

        v107 = v12 == v11;
        v119 = v12 == v11;
        if (v12 == v11)
        {
          goto LABEL_98;
        }
      }

      v117 = v132;
      v116 = 0;
      v114 = v132[2];
      v115 = v114;
      v113 = v114;
      v116 = v114;
      if (!v114)
      {
        v116 = _dispatch_wait_for_enqueuer(v117 + 2, (v134 + 6));
      }

      v112 = v116;
      v131 = v116;
      v111 = v116;
      v110 = v116;
      v134[13] = v116;
      v109 = v111;
LABEL_98:
      v106 = v119;
    }

    v105 = v131;
    v21 = v131;
    v41 = v22;
    v138 = v22;
    if (*v22 < 0x1000uLL && (*v41 & 0x81) != 0)
    {
      v20 -= 0x20000000000;
      _dispatch_non_barrier_waiter_redirect_or_wake(v29, v22);
    }

    else
    {
      if ((v27 & 0x20000) == 0)
      {
        goto LABEL_106;
      }

      v20 -= 0x20000000000;
      v35 = v29;
      v36 = *(v29 + 15) << 32;
      v36 &= 0x700000000uLL;
      _dispatch_continuation_redirect_push(v29, v22, HIDWORD(v36));
    }

LABEL_13:
    v4 = *(v28 + 8) == 0;
    v34 = *(v28 + 8) == 0;
    v33 = 3860;
    if (!v4)
    {
      _dispatch_abort(v33, v34);
    }

    v22 = v21;
    if (!v21)
    {
      if (!v29[6])
      {
        break;
      }

      v67 = v29;
      v66 = (v29 + 13);
      v65 = 0;
      v63 = v29[13];
      v64 = v63;
      v62 = v63;
      v65 = v63;
      if (!v63)
      {
        v65 = _dispatch_wait_for_enqueuer(v66, (v67 + 6));
      }

      v61 = v65;
      v22 = v65;
    }

    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    if ((v25 & 1) == (*(v29 + 40) == 1))
    {
      v18 = 0;
      if ((v27 & 0x4000000) == 0)
      {
        v147 = v28;
        v146 = _dispatch_thread_getspecific(120);
        v18 = v146 & 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v27 & 0x100000) == 0)
        {
          continue;
        }

        v37 = _dispatch_thread_getspecific(27);
        v38 = *(v37 + 60) << 32;
        v38 &= 0x700000000uLL;
        if (HIDWORD(v38) <= *(v37 + 100))
        {
          continue;
        }
      }
    }

    break;
  }

  if (v20 == 0x40000000000000)
  {
    v20 = (*(v29 + 40) << 41) + 0x40000000000000;
  }

  if (v22)
  {
    v179 = v29;
    v178 = v20;
    v177 = v22;
    v176 = *(v29 + 40);
    v175 = 0;
    if (v176 >= 2u)
    {
      v174 = v177;
      v184 = v177;
      v183 = 0;
      v186 = v177;
      if (*v177 > 0xFFFuLL)
      {
        v15 = 0;
        if (*v184)
        {
          v15 = *v184;
        }

        if ((*(v15 + 16) & 0xF0) == 0x10)
        {
          v181 = *(v184 + 20);
          v182 = v181;
          v180 = v181;
          v183 = v181;
          v185 = (v181 & 0x80000) != 0;
        }

        else
        {
          v185 = 0;
        }
      }

      else
      {
        v185 = (*v184 & 2) != 0;
      }

      if (v185)
      {
        v175 = ((v176 - 1) << 41) + 0x10000000000;
        v178 -= v175;
      }
    }

    v20 = v178;
  }

  *v26 &= 0x4000000001uLL;
  *v26 |= v20;
  v144 = &v23;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
  if (v22)
  {
    return v29[3];
  }

  else
  {
    return 0;
  }
}

void _dispatch_queue_invoke_finish(uint64_t a1, uint64_t a2, uint64_t (***a3)(), uint64_t a4)
{
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  if (v13)
  {
    *(v13 + 106) = *(v13 + 106) & 0x7F | 0x80;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v14 = a4 & 0x4000000001;
    if (v12)
    {
      _dispatch_workloop_drain_barrier_waiter(a1, v13, v12, 1, v14);
    }

    else
    {
      _dispatch_lane_drain_barrier_waiter(a1, v13, 1, v14);
    }
  }

  else
  {
    v8 = 1;
    if (a3 == &_dispatch_mgr_q)
    {
      v8 = 0x4000000000;
    }

    v10 = *(a1 + 56);
    do
    {
      v9 = (v10 - a4) & 0xFFFFFF7700000001 | 0x8000000000;
      if (v9 < 0x20000000000000 && (v9 & 0x4000000001) == 0)
      {
        v9 |= v8;
      }

      v4 = v10;
      v5 = v10;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v9, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v10 = v5;
      }
    }

    while (v5 != v4);
    v11 = v10 - a4;
    v7 = 0;
    if ((v11 & 0x1000000000) != 0)
    {
      v7 = (v11 & 0x800000000) != 0;
    }

    if (v7)
    {
      v18 = (v9 & 0x700000000) >> 32;
      v17 = _dispatch_thread_getspecific(25);
      if (v18 > (v17 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v17 & 0xFFF0FFFF | (v18 << 16));
      }
    }

    if (((v11 ^ v9) & v8) != 0)
    {
      if ((v9 & 0x4000000001) == 0)
      {
        _dispatch_abort(4036, (v9 & 0x4000000001) != 0);
      }

      if ((v9 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v9, 1);
      }

      else
      {
        v6 = 0;
        if (*a3)
        {
          v6 = *a3;
        }

        (*(v6 + 72))(a3, a1, (v9 & 0x700000000) >> 32);
      }
    }

    else
    {
      _dispatch_release_2_tailcall(a1);
    }
  }
}

void _dispatch_workloop_drain_barrier_waiter(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v16 = *(a2 + 100) & 0xFFFFFFFC;
  v12 = *(a2 + 16);
  *(a1 + 104 + 8 * (a3 - 1)) = v12;
  if (!v12)
  {
    v10 = (a1 + 152 + 8 * (a3 - 1));
    v11 = *v10;
    while (a2 == (v11 & 0xFFFFFFFFFFFFFFF8))
    {
      v5 = v11;
      v6 = v11;
      atomic_compare_exchange_strong_explicit(v10, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v11)
      {
        v11 = v6;
      }

      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = _dispatch_wait_for_enqueuer((a2 + 16), a1 + 152 + 8 * (a3 - 1));
    }

    v12 = v9;
    *(a1 + 104 + 8 * (a3 - 1)) = v9;
  }

LABEL_11:
  v13 = v12 != 0;
LABEL_12:
  if (!v13)
  {
    for (i = 6; ; --i)
    {
      if (!i)
      {
        v24 = 0;
        goto LABEL_19;
      }

      if (*(a1 + 152 + 8 * (i - 1)))
      {
        break;
      }
    }

    v24 = 1;
LABEL_19:
    v13 = v24;
  }

  v15 = *(a1 + 56);
  do
  {
    if ((v15 & 0x2000000000) != 0 && (v15 & 2) != 0 && (v15 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_12;
    }

    v14 = v15 & 0xFFFFFF7700000001 | v16;
    if ((v15 & 0x2000000000) != 0)
    {
      if (!v13)
      {
        if ((v15 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_12;
        }

        v14 = v15 & 0xFFFFFF7000000000 | v16 & 0xFFFFFFF8FFFFFFFELL;
      }
    }

    else
    {
      v14 -= a5;
    }

    v7 = v15;
    v8 = v15;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v14, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      v15 = v8;
    }
  }

  while (v8 != v7);
  _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a4, v15, v14);
}

void _dispatch_lane_drain_barrier_waiter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *(a2 + 100) & 0xFFFFFFFC;
  v18 = *(a2 + 16);
  *(a1 + 104) = v18;
  if (!v18)
  {
    v17 = *(a1 + 48);
    while (a2 == (v17 & 0xFFFFFFFFFFFFFFF8))
    {
      v4 = v17;
      v5 = v17;
      atomic_compare_exchange_strong_explicit((a1 + 48), &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v17 = v5;
      }

      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }

    v16 = *(a2 + 16);
    if (!v16)
    {
      v16 = _dispatch_wait_for_enqueuer((a2 + 16), a1 + 48);
    }

    v18 = v16;
    *(a1 + 104) = v16;
  }

LABEL_10:
  v11 = v18;
LABEL_11:
  v9 = *(a1 + 56);
  do
  {
    if ((v9 & 0x2000000000) != 0 && (v9 & 2) != 0 && (v9 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_11;
    }

    v8 = v9 & 0xFFFFFF7700000001 | v10;
    if ((v9 & 0x2000000000) != 0)
    {
      if (!v11)
      {
        if ((v9 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v11 = *(a1 + 104);
          goto LABEL_11;
        }

        v8 = v9 & 0xFFFFFF7000000000 | v10 & 0xFFFFFFF8FFFFFFFELL;
      }
    }

    else
    {
      v8 -= a4;
    }

    v6 = v9;
    v7 = v9;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v8, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      v9 = v7;
    }
  }

  while (v7 != v6);
  _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a3, v9, v8);
}

void _dispatch_lane_activate(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 84);
  if ((v2 & 0xF000) >> 12 <= ((v2 & 0xF00) >> 8) || (v2 & 0xF00) >> 8 && (v2 & 0x40000000) == 0)
  {
    *(a1 + 84) = v2 & 0xFBFF0FFF;
  }

  v1 = _dispatch_queue_priority_inherit_from_target(a1, v3);
  _dispatch_lane_inherit_wlh_from_target(a1, v1);
}

uint64_t (***_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2))()
{
  v9 = a2;
  v8 = *(a1 + 84);
  v6 = 0;
  if ((v8 & 0x20000000) == 0)
  {
    v6 = (v8 & 0x44000FFF) != 0;
  }

  if (v6)
  {
    v5 = 0;
    if (a2 >= &_dispatch_root_queues)
    {
      v5 = a2 < &unk_E0A80;
    }

    if (v5)
    {
      v7 = (*(a1 + 84) & 0xF00u) >> 8;
      if (!v7)
      {
        v7 = 4;
      }

      v12 = 2 * (v8 >> 31);
      v4 = 1;
      if (v7)
      {
        v4 = v7 > 6;
      }

      if (v4)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
        qword_E42C0 = v7;
        __break(1u);
        JUMPOUT(0x28DD8);
      }

      v11 = 0;
      if ((v12 & 2) != 0)
      {
        v11 = 1;
      }

      else if ((v12 & 4) != 0)
      {
        v11 = 2;
      }

      return &(&_dispatch_root_queues)[16 * (3 * v7 + v11 - 3)];
    }

    return v9;
  }

  else
  {
    v3 = 0;
    if (a2 >= &_dispatch_root_queues)
    {
      v3 = a2 < &unk_E0A80;
    }

    if (v3)
    {
      v8 = *(a2 + 84) | 0x20000000;
    }

    else if ((v8 & 0x20000000) != 0)
    {
      v8 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v8;
    return a2;
  }
}

void _dispatch_lane_inherit_wlh_from_target(uint64_t result, uint64_t *a2)
{
  v9 = 0;
  if (*a2)
  {
    v9 = *a2;
  }

  if ((*(v9 + 16) & 0x10000) != 0)
  {
    if (_dispatch_base_lane_is_wlh(result, a2))
    {
      v12 = 0x2000000000;
    }

    else
    {
      v12 = 0x1000000000;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *(result + 56);
  do
  {
    v13 = v14 & 0xFFFFFFCFFFFFFFFFLL | v12;
    if (v14 == v13)
    {
      break;
    }

    v2 = v14;
    v3 = v14;
    atomic_compare_exchange_strong_explicit((result + 56), &v3, v13, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v14 = v3;
    }
  }

  while (v3 != v2);
  if ((v14 & 0x2000000000) != 0 && (v13 & 0x2000000000) == 0)
  {
    v17 = _dispatch_thread_getspecific(29);
    if (v17)
    {
      _dispatch_abort(453, (v17 & 1) == 0);
    }

    if (v17 && *(v17 + 24) == result)
    {
      _dispatch_event_loop_leave_immediate(v13);
    }
  }

  v8 = 0;
  if (*a2)
  {
    v8 = *a2;
  }

  if ((*(v8 + 16) & 0x10000) == 0)
  {
    v11 = 0;
    v10 = 0;
    v7 = 0;
    if (*a2)
    {
      v7 = *a2;
    }

    if (*(v7 + 16) == 18)
    {
      v11 = 0x400000;
      v6 = 0;
      if (a2[3] >= &_dispatch_root_queues)
      {
        v6 = a2[3] < &unk_E0A80;
      }

      if (!v6)
      {
        v10 = 0x1000000;
        if (_dispatch_workloop_uses_bound_thread(a2))
        {
          v10 = 17039360;
        }
      }
    }

    else
    {
      v10 = a2[10] & 0x1000000;
      if (v10)
      {
        v10 = a2[10] & 0x1040000;
      }
    }

    if (v11)
    {
      v18 = *(a2 + 20);
      do
      {
        if (((v18 | 0x100000) & ~v11) == v18)
        {
          break;
        }

        v4 = v18;
        v5 = v18;
        atomic_compare_exchange_strong_explicit((a2 + 10), &v5, (v18 | 0x100000) & ~v11, memory_order_relaxed, memory_order_relaxed);
        if (v5 != v4)
        {
          v18 = v5;
        }
      }

      while (v5 != v4);
    }

    else
    {
      atomic_fetch_or_explicit((a2 + 10), 0x100000u, memory_order_relaxed);
    }

    if (v10)
    {
      atomic_fetch_or_explicit((result + 80), v10, memory_order_relaxed);
    }
  }
}

void _dispatch_lane_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v28 = a1;
  v27 = a2;
  i = a3;
  v25 = 0;
  v24 = _dispatch_lane_invoke2;
  v23 = a1;
  v22[8] = 0;
  *v22 = (a3 & 1) == 0;
  v21 = 0;
  if ((a3 & 3) == 0)
  {
    *(v23 + 16) = -1985229329;
    v20 = _dispatch_thread_getspecific(20);
    v19 = v23;
    v50 = v20;
    v49 = v23;
    v48 = 0;
    v47 = 0;
    v149 = v20;
    v148 = v23;
  }

  i |= v25;
  if ((i & 2) != 0)
  {
    v21 = 0x40020000000001;
  }

  else
  {
    v78 = v23;
    v77 = i;
    v76 = (*(v23 + 80) - 1) << 41;
    v91 = _dispatch_thread_getspecific(3);
    v75 = v91 & 0xFFFFFFFC | 0x20000000000000;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v74 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v74 |= 0x4000000000uLL;
      v71 = 0;
    }

    else if ((v77 & 0x40000) != 0)
    {
      v71 = 0x4000000000;
    }

    else
    {
      v74 |= 0x4000000000uLL;
      v71 = 1;
    }

    v84 = (v77 & 2) == 0;
    v83 = 1331;
    if ((v77 & 2) != 0)
    {
      _dispatch_abort(v83, v84);
    }

    v88 = _dispatch_thread_getspecific(25);
    v90 = v88 & 0xF00;
    v87 = v90 >> 8;
    v89 = v88 & 0xF000;
    v86 = v89 >> 12;
    v92 = v88 & 0xF0000;
    v85 = (v88 & 0xF0000u) >> 16;
    if (v90 >> 8 > v89 >> 12)
    {
      v14 = v87;
    }

    else
    {
      v14 = v86;
    }

    if (v14 <= v85)
    {
      v12 = v85;
    }

    else
    {
      if (v87 <= v86)
      {
        v13 = v86;
      }

      else
      {
        v13 = v87;
      }

      v12 = v13;
    }

    v70 = v12;
LABEL_22:
    v69 = 0;
    v68 = (v78 + 56);
    v73 = *(v78 + 56);
    do
    {
      v72 = v73;
      if ((v73 & v74) != 0)
      {
        if (!v71)
        {
          break;
        }

        v72 ^= v71;
      }

      else
      {
        v126 = v73;
        v125 = v70;
        v128 = v73;
        v11 = 0;
        if ((v73 & 0x1000000000) != 0)
        {
          v127 = v126 & 0x700000000;
          v11 = v125 < (v126 & 0x700000000) >> 32;
        }

        if (v11)
        {
          v130 = v73;
          v131 = v73 & 0x700000000;
          v129 = (v73 & 0x700000000) >> 32;
          v135 = _dispatch_thread_getspecific(3);
          v134 = v129;
          if (_dispatch_set_qos_class_enabled)
          {
            v137 = v134;
            v136 = 0;
            if (v134)
            {
              v136 = 1 << (v137 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v133 = v129;
          v132 = _dispatch_thread_getspecific(25);
          v138 = v132 & 0xF0000;
          if (v129 > (v132 & 0xF0000) >> 16)
          {
            v132 = v132 & 0xFFF0FFFF | (v133 << 16);
            _dispatch_thread_setspecific(25, v132);
          }

          v70 = v129;
          goto LABEL_22;
        }

        v72 = v72 & 0x7700000001 | v75;
        v80 = v73;
        if ((v73 & 0x10000000000) != 0 || v73 + v76 < 0x20000000000000)
        {
          v72 |= 0x40000000000000uLL;
        }
      }

      v67 = v72;
      v3 = v73;
      v4 = v73;
      atomic_compare_exchange_strong_explicit(v68, &v4, v72, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v73 = v4;
      }

      v66 = v4 == v3;
      v69 = v4 == v3;
    }

    while (v4 != v3);
    v65 = v69;
    v82 = (v73 & v71) == v71;
    v81 = 1364;
    if ((v73 & v71) != v71)
    {
      _dispatch_abort(v81, v82);
    }

    if ((v73 & v74) != 0)
    {
      v79 = 0;
    }

    else
    {
      v72 &= v71 | 0x60000000000000;
      v73 &= 0x3FFE0000000000uLL;
      v79 = v72 - v73;
    }

    v21 = v79;
  }

  if (v21)
  {
    v18 = 0;
    if ((i & 0x40000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v54 = *(v23 + 84);
      v53 = _dispatch_thread_getspecific(25);
      v52 = v53;
      if (v53)
      {
        if ((v54 & 0xFFF) != 0)
        {
          v52 &= 0x880F0000;
          if ((v53 & 0xFFF) > (v54 & 0xFFFu))
          {
            v10 = v53 & 0xFFF;
          }

          else
          {
            v10 = v54 & 0xFFF;
          }

          v52 |= v10;
          v56 = v54 & 0xF000;
          v58 = v52 & 0xF00;
          if (v56 >> 12 > v58 >> 8)
          {
            v54 &= 0x4400F000u;
          }

          else
          {
            v54 &= 0x40000000u;
          }

          v52 |= v54;
        }

        else
        {
          if ((v52 & 0xFFF) != 0)
          {
            v52 |= 0x40000000u;
          }

          v55 = v54 & 0xF000;
          v57 = v52 & 0xF00;
          if (v55 >> 12 > v57 >> 8)
          {
            v52 = v52 & 0xFFFF0FFF | v54 & 0x400F000;
          }
        }
      }

      else
      {
        v52 = v54 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v52);
      v18 = v53;
    }

    if ((i & 0x100000) != 0)
    {
      v32 = v28;
      v30 = *(v28 + 80);
      v31 = v30;
      v29 = v30;
      if ((v30 & 0x400000) != 0)
      {
        v44 = v28;
        v43 = 0x400000;
        v41 = -4194305;
        v40 = -4194305;
        v42 = -4194305;
        v36 = -4194305;
        v35 = -4194305;
        v37 = -4194305;
        v34 = atomic_fetch_and_explicit((v28 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v38 = v34;
        v33 = v34;
        v39 = v34 & 0xFFBFFFFF;
      }
    }

    v17 = v23;
    v95 = v23;
    v94 = i;
    v141 = v23;
    v140 = 256;
    v147 = 1;
    v146 = 738;
    v145 = v23;
    v143 = *(v23 + 80);
    v144 = v143;
    v142 = v143;
    v139 = v143 & 0x30000;
    v93 = (v143 & 0x30000) << 8;
    if (v93)
    {
      v94 = v94 & 0xFCFFFFFF | v93;
    }

    for (i = v94; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v27);
      }

      v16 = v23;
      *&v22[1] = v24(v23, v27, i, &v21);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v15 = 0uLL;
        v60 = v23;
        v59 = &v15;
        v64 = &v15;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v15);
        _dispatch_thread_setspecific_pair(20, v60, 21, v59);
        _dispatch_last_resort_autorelease_pool_pop(v27);
        v61 = &v15;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v15);
      }

      v46 = *&v22[1] != 1;
      v45 = 2026;
      if (*&v22[1] == 1)
      {
        _dispatch_abort(v45, v46);
      }

      v9 = 0;
      if (*&v22[1])
      {
        v9 = *&v22[1] != -1;
      }

      if (v9)
      {
        break;
      }

      v115 = v23;
      v114 = v21;
      v113 = *&v22[1] == 0;
      v112 = 0;
      v111 = 0;
      v110 = 0;
      v109 = (v23 + 56);
      v112 = *(v23 + 56);
      do
      {
        v111 = (v112 - v114) & 0xFFFFFFF700000001;
        v117 = v112;
        if ((v112 & 0xFF80000000000000) == 0)
        {
          v118 = v112;
          if ((v112 & 0x8000000000) != 0)
          {
            v107 = 0x8000000000;
            v106 = 0x8000000000;
            v108 = 0x8000000000;
            v102 = 0x8000000000;
            v101 = 0x8000000000;
            v103 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v115 + 56), 0x8000000000uLL, memory_order_acquire);
            v104 = xor_explicit;
            v99 = xor_explicit;
            v105 = xor_explicit ^ v108;
            v116 = 0;
            goto LABEL_101;
          }

          if (v113)
          {
            v111 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v111 |= 0x8000000000uLL;
          }
        }

        v98 = v111;
        v5 = v112;
        v6 = v112;
        atomic_compare_exchange_strong_explicit(v109, &v6, v111, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v112 = v6;
        }

        v97 = v6 == v5;
        v110 = v6 == v5;
      }

      while (v6 != v5);
      v96 = v110;
      v120 = v112;
      v123 = v112;
      v8 = 0;
      if ((v112 & 0x1000000000) != 0)
      {
        v8 = (v120 & 0x800000000) != 0;
      }

      if (v8)
      {
        v119 = v112 & 0x700000000;
        v122 = (v112 & 0x700000000uLL) >> 32;
        v121 = _dispatch_thread_getspecific(25);
        v124 = v121 & 0xF0000;
        if (v122 > (v121 & 0xF0000) >> 16)
        {
          v121 &= 0xFFF0FFFF;
          v121 |= v122 << 16;
          _dispatch_thread_setspecific(25, v121);
        }
      }

      v116 = 1;
LABEL_101:
      if (v116)
      {
        v21 = 0;
        *&v22[1] = 0;
        break;
      }

      *&v22[1] = _dispatch_thread_getspecific(20);
      v7 = 0;
      if (**&v22[1])
      {
        v7 = **&v22[1];
      }

      if (*(v7 + 16) & 0x10000) == 0 && (v22[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v63 = v18;
      v62 = _dispatch_thread_getspecific(25);
      v63 &= 0xFFF0FFFF;
      v63 |= v62 & 0xF0000;
      _dispatch_thread_setspecific(25, v63);
    }
  }

  if (v22[0])
  {
    v51 = v23;
    v150 = v23;
    v155 = 772079660;
    v154 = v23;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v156 = v51;
  }

  if (*&v22[1])
  {
    _dispatch_queue_invoke_finish(v23, v27, *&v22[1], v21);
  }

  else
  {
    _dispatch_release_2_tailcall(v23);
  }
}

uint64_t _dispatch_lane_invoke2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = *(a1 + 24);
  if (_dispatch_thread_getspecific(20) != v5)
  {
    return v5;
  }

  if (*(a1 + 80) == 1)
  {
    return _dispatch_lane_serial_drain(a1, a2, a3, a4);
  }

  return _dispatch_lane_concurrent_drain(a1, a2, a3, a4);
}

uint64_t dispatch_workloop_copy_current()
{
  v3 = _dispatch_thread_getspecific(27);
  if (v3 && v3 != -4)
  {
    v1 = 0;
    if (*v3)
    {
      v1 = *v3;
    }

    if (*(v1 + 16) == 18)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v4);
  return v4;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v3 = _dispatch_thread_getspecific(27);
  if (v3 && v3 != -4)
  {
    v1 = 0;
    if (*v3)
    {
      v1 = *v3;
    }

    if (*(v1 + 16) == 18)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 && ((*(v4 + 15) << 32) & 0x700000000) >> 32 > *(v4 + 100);
}

uint64_t _dispatch_workloop_create(const char *a1, uint64_t a2)
{
  v16 = a1;
  v13 = 0x10000;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 != v16)
    {
      v13 = 2162688;
      v16 = v11;
    }
  }

  if (_dispatch_kevent_workqueue_enabled)
  {
    v17 = 0x2000000000;
  }

  else
  {
    v17 = 0x1000000000;
  }

  v15 = a2 | v17;
  v10 = _dispatch_object_alloc(_OS_dispatch_workloop_vtable, 0xD0uLL);
  _dispatch_queue_init(v10, v13, 1u, v15);
  v12 = v2;
  *(v2 + 72) = v16;
  *(v2 + 24) = &off_E0680;
  if ((v15 & 0x180000000000000) == 0)
  {
    *(v2 + 84) = -2080358400;
  }

  _dispatch_object_debug(v2, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_workloop_create");
  return v12;
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    for (i = *(workloop + 20); (i & 0xFFFCFFFF | 0x10000) != i; i = v3)
    {
      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v3, i & 0xFFFCFFFF | 0x10000, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        break;
      }
    }
  }

  else
  {
    for (j = *(workloop + 20); (j & 0xFFFCFFFF | 0x20000) != j; j = v5)
    {
      v4 = j;
      v5 = j;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v5, j & 0xFFFCFFFF | 0x20000, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = *(workloop + 7);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B154);
  }
}

uint64_t dispatch_workloop_set_scheduler_priority(uint64_t result, int a2, char a3)
{
  v5 = result;
  v6 = *(result + 56);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B200);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(v5 + 200) = result;
  }

  if (a2)
  {
    *(*(v5 + 200) + 8) = a2;
    **(v5 + 200) |= 1u;
  }

  else
  {
    *(*(v5 + 200) + 8) = 0;
    **(v5 + 200) &= ~1u;
  }

  if (a3)
  {
    *(*(v5 + 200) + 16) = 2;
    **(v5 + 200) |= 2u;
  }

  else
  {
    **(v5 + 200) &= ~2u;
  }

  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_once_f(&_dispatch_workloop_bound_thread_pred, 0, _dispatch_workloop_bound_thread_init_once);
  }

  if (_dispatch_thread_bound_kqwl_enabled)
  {
    v4 = *(a1 + 56);
    if ((~v4 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x2B40CLL);
    }

    if (!*(a1 + 200))
    {
      *(a1 + 200) = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    }

    **(a1 + 200) |= 0x40u;
    return 0;
  }

  else
  {
    return -1;
  }
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  v5 = *(workloop + 7);
  if ((~v5 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x2B524);
  }

  if (!*(workloop + 25))
  {
    *(workloop + 25) = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
  }

  v2 = *(*(workloop + 25) + 32);
  if (v2)
  {
    _os_object_release(v2);
  }

  _os_object_retain(workgroup);
  *(*(workloop + 25) + 32) = workgroup;
}

uint64_t dispatch_workloop_set_cpupercent(uint64_t result, char a2, int a3)
{
  v5 = result;
  v6 = *(result + 56);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B698);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
    *(v5 + 200) = result;
  }

  if ((**(v5 + 200) & 9) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: workloop qos class or priority must be set before cpupercent";
    __break(1u);
    JUMPOUT(0x2B724);
  }

  *(*(v5 + 200) + 20) = a2;
  *(*(v5 + 200) + 24) = a3;
  **(v5 + 200) |= 4u;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 56);
  if ((~v5 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x2B808);
  }

  if (!*(a1 + 200))
  {
    *(a1 + 200) = _dispatch_calloc_typed(1, 56, 0x10A00404B3B3801);
  }

  result = *a2;
  *(*(a1 + 200) + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 56);
  if (_dispatch_kevent_workqueue_enabled)
  {
    v15 = 0x2000000000;
  }

  else
  {
    v15 = 0x1000000000;
  }

  if (v12 != (v15 | 0x1FFE0000000000))
  {
    if ((v12 & 0xFFFFFFFC) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
      qword_E42C0 = v12;
      __break(1u);
      JUMPOUT(0x2B970);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_E42C0 = v12;
    __break(1u);
    JUMPOUT(0x2B9ACLL);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_workloop_dispose");
  for (i = 0; i < 6; ++i)
  {
    if (*(a1 + 8 * i + 152))
    {
      v10 = *(a1 + 8 * i + 152);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
      qword_E42C0 = v10;
      __break(1u);
      JUMPOUT(0x2BA6CLL);
    }

    *(a1 + 8 * i + 152) = 512;
    *(a1 + 8 * i + 104) = 512;
  }

  if (*(a1 + 48))
  {
    for (j = 0; j <= 5; ++j)
    {
      if (*(*(a1 + 48) + 32 * j))
      {
        _dispatch_abort(4614, *(*(a1 + 48) + 32 * j) == 0);
      }
    }

    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  if (*(a1 + 200))
  {
    if ((**(a1 + 200) & 0x10) != 0)
    {
      v8 = _pthread_workloop_destroy();
      if (v8)
      {
        _dispatch_bug(4623, v8);
      }
    }
  }

  if (*(a1 + 200))
  {
    if (*(*(a1 + 200) + 32))
    {
      _os_object_release(*(*(a1 + 200) + 32));
    }

    free(*(a1 + 200));
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_workloop_activate(uint64_t result)
{
  if ((atomic_fetch_and_explicit((result + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0x180000000000000)
  {
    if (*(result + 200))
    {
      _dispatch_workloop_activate_attributes(result);
    }

    if (!*(result + 84))
    {
      *(result + 84) = 67125248;
    }

    *(result + 84) |= 0x80000000;
    atomic_fetch_and_explicit((result + 56), 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
    _dispatch_workloop_wakeup(result, 0, 1u);
  }
}

uint64_t _dispatch_workloop_activate_attributes(uint64_t a1)
{
  v6 = *(a1 + 200);
  memset(&v8, 0, sizeof(v8));
  pthread_attr_init(&v8);
  if ((*v6 & 8) != 0)
  {
    *(a1 + 84) |= *(v6 + 4) | 0x40000000;
  }

  if (*v6)
  {
    pthread_attr_setschedparam(&v8, (v6 + 8));
    *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
  }

  if (*(v6 + 32))
  {
    *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
    if (_os_workgroup_get_backing_workinterval(*(v6 + 32)))
    {
      pthread_attr_setworkinterval_np();
    }
  }

  if ((*v6 & 0x40) != 0)
  {
    if (_dispatch_root_queues_pred != -1)
    {
      dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
    }

    *(a1 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
  }

  if ((*v6 & 2) != 0)
  {
    pthread_attr_setschedpolicy(&v8, *(v6 + 16));
  }

  if ((*v6 & 4) != 0)
  {
    pthread_attr_setcpupercent_np();
  }

  v4 = 0;
  if (*(a1 + 200))
  {
    v4 = (**(a1 + 200) & 0x47) != 0;
  }

  v3 = 1;
  if (!v4)
  {
    v2 = 0;
    if (*(a1 + 200))
    {
      v2 = 0;
      if (*(*(a1 + 200) + 32))
      {
        v2 = _os_workgroup_get_backing_workinterval(*(*(a1 + 200) + 32)) != 0;
      }
    }

    v3 = v2;
  }

  if (v3)
  {
    v5 = _pthread_workloop_create();
    if (v5)
    {
      switch(v5)
      {
        case '!':
          if ((*v6 & 0x40) == 0)
          {
            _dispatch_abort(4566, 0);
          }

          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x2C12CLL);
        case '-':
          _dispatch_workloop_activate_tg_unsupported_fallback(a1);
          break;
        case 'N':
          _dispatch_workloop_activate_simulator_fallback(a1, &v8);
          break;
        default:
          _dispatch_abort(4571, v5);
      }
    }

    else
    {
      *v6 |= 0x10u;
    }
  }

  return pthread_attr_destroy(&v8);
}

void _dispatch_workloop_wakeup(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a3 >> 2))
  {
    _dispatch_workloop_barrier_complete(a1, a2, a3);
    return;
  }

  if ((a3 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x2C21CLL);
  }

  if ((a3 >> 3))
  {
    goto LABEL_39;
  }

  for (i = *(a1 + 56); ; i = v4)
  {
    v9 = i;
    if ((i & 0x700000000uLL) < a2 << 32)
    {
      v9 = i & 0xFFFFFFF8FFFFFFFFLL | (a2 << 32);
      if ((v9 & 0x1000000000) != 0)
      {
        v9 |= 0x800000000uLL;
      }
    }

    v6 = v9;
    if ((v9 & 0x700000000) >> 32)
    {
      v6 = v9 | 1;
    }

    if ((a3 & 2) != 0)
    {
      v6 |= 0x8000000000uLL;
    }

    else if (v6 == i)
    {
      goto LABEL_39;
    }

    v3 = i;
    v4 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v6, memory_order_release, memory_order_relaxed);
    if (v4 == v3)
    {
      break;
    }
  }

  if ((i & 0xFF80000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
    qword_E42C0 = i;
    __break(1u);
    JUMPOUT(0x2C418);
  }

  if ((i ^ v6))
  {
    v8 = *(a1 + 24);
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(1937, a3 & 1);
    }

    if ((v6 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a1, v6, 1);
    }

    else
    {
      v5 = 0;
      if (*v8)
      {
        v5 = *v8;
      }

      (*(v5 + 72))(v8, a1, (v6 & 0x700000000uLL) >> 32);
    }

    return;
  }

  if (((i ^ v6) & 0x700000000) == 0)
  {
LABEL_39:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if ((v6 & 0xFF80000000000000) != 0 || (v6 & 0x4000000000) != 0 || (v6 & 1) == 0 && (v6 & 0xFFFFFFFC) == 0)
  {
    _dispatch_abort(5358, 0);
  }

  if ((v6 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a1, v6, a3 | 0x80000000);
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a1, v6, a3);
  }
}

void _dispatch_workloop_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v28 = a1;
  v27 = a2;
  i = a3 & 0xFFEDFFFF | 0x100000;
  v25 = 0;
  v24 = _dispatch_workloop_invoke2;
  v23 = a1;
  v22[8] = 0;
  *v22 = (a3 & 1) == 0;
  v21 = 0;
  if ((a3 & 3) == 0)
  {
    *(v23 + 16) = -1985229329;
    v20 = _dispatch_thread_getspecific(20);
    v19 = v23;
    v50 = v20;
    v49 = v23;
    v48 = 0;
    v47 = 0;
    v149 = v20;
    v148 = v23;
  }

  i |= v25;
  if ((i & 2) != 0)
  {
    v21 = 0x40020000000001;
  }

  else
  {
    v78 = v23;
    v77 = i;
    v76 = (*(v23 + 80) - 1) << 41;
    v91 = _dispatch_thread_getspecific(3);
    v75 = v91 & 0xFFFFFFFC | 0x20000000000000;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v74 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v74 |= 0x4000000000uLL;
      v71 = 0;
    }

    else if ((v77 & 0x40000) != 0)
    {
      v71 = 0x4000000000;
    }

    else
    {
      v74 |= 0x4000000000uLL;
      v71 = 1;
    }

    v84 = (v77 & 2) == 0;
    v83 = 1331;
    if ((v77 & 2) != 0)
    {
      _dispatch_abort(v83, v84);
    }

    v88 = _dispatch_thread_getspecific(25);
    v90 = v88 & 0xF00;
    v87 = v90 >> 8;
    v89 = v88 & 0xF000;
    v86 = v89 >> 12;
    v92 = v88 & 0xF0000;
    v85 = (v88 & 0xF0000u) >> 16;
    if (v90 >> 8 > v89 >> 12)
    {
      v14 = v87;
    }

    else
    {
      v14 = v86;
    }

    if (v14 <= v85)
    {
      v12 = v85;
    }

    else
    {
      if (v87 <= v86)
      {
        v13 = v86;
      }

      else
      {
        v13 = v87;
      }

      v12 = v13;
    }

    v70 = v12;
LABEL_22:
    v69 = 0;
    v68 = (v78 + 56);
    v73 = *(v78 + 56);
    do
    {
      v72 = v73;
      if ((v73 & v74) != 0)
      {
        if (!v71)
        {
          break;
        }

        v72 ^= v71;
      }

      else
      {
        v126 = v73;
        v125 = v70;
        v128 = v73;
        v11 = 0;
        if ((v73 & 0x1000000000) != 0)
        {
          v127 = v126 & 0x700000000;
          v11 = v125 < (v126 & 0x700000000) >> 32;
        }

        if (v11)
        {
          v130 = v73;
          v131 = v73 & 0x700000000;
          v129 = (v73 & 0x700000000) >> 32;
          v135 = _dispatch_thread_getspecific(3);
          v134 = v129;
          if (_dispatch_set_qos_class_enabled)
          {
            v137 = v134;
            v136 = 0;
            if (v134)
            {
              v136 = 1 << (v137 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v133 = v129;
          v132 = _dispatch_thread_getspecific(25);
          v138 = v132 & 0xF0000;
          if (v129 > (v132 & 0xF0000) >> 16)
          {
            v132 = v132 & 0xFFF0FFFF | (v133 << 16);
            _dispatch_thread_setspecific(25, v132);
          }

          v70 = v129;
          goto LABEL_22;
        }

        v72 = v72 & 0x7700000001 | v75;
        v80 = v73;
        if ((v73 & 0x10000000000) != 0 || v73 + v76 < 0x20000000000000)
        {
          v72 |= 0x40000000000000uLL;
        }
      }

      v67 = v72;
      v3 = v73;
      v4 = v73;
      atomic_compare_exchange_strong_explicit(v68, &v4, v72, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v73 = v4;
      }

      v66 = v4 == v3;
      v69 = v4 == v3;
    }

    while (v4 != v3);
    v65 = v69;
    v82 = (v73 & v71) == v71;
    v81 = 1364;
    if ((v73 & v71) != v71)
    {
      _dispatch_abort(v81, v82);
    }

    if ((v73 & v74) != 0)
    {
      v79 = 0;
    }

    else
    {
      v72 &= v71 | 0x60000000000000;
      v73 &= 0x3FFE0000000000uLL;
      v79 = v72 - v73;
    }

    v21 = v79;
  }

  if (v21)
  {
    v18 = 0;
    if ((i & 0x40000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v54 = *(v23 + 84);
      v53 = _dispatch_thread_getspecific(25);
      v52 = v53;
      if (v53)
      {
        if ((v54 & 0xFFF) != 0)
        {
          v52 &= 0x880F0000;
          if ((v53 & 0xFFF) > (v54 & 0xFFFu))
          {
            v10 = v53 & 0xFFF;
          }

          else
          {
            v10 = v54 & 0xFFF;
          }

          v52 |= v10;
          v56 = v54 & 0xF000;
          v58 = v52 & 0xF00;
          if (v56 >> 12 > v58 >> 8)
          {
            v54 &= 0x4400F000u;
          }

          else
          {
            v54 &= 0x40000000u;
          }

          v52 |= v54;
        }

        else
        {
          if ((v52 & 0xFFF) != 0)
          {
            v52 |= 0x40000000u;
          }

          v55 = v54 & 0xF000;
          v57 = v52 & 0xF00;
          if (v55 >> 12 > v57 >> 8)
          {
            v52 = v52 & 0xFFFF0FFF | v54 & 0x400F000;
          }
        }
      }

      else
      {
        v52 = v54 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v52);
      v18 = v53;
    }

    if ((i & 0x100000) != 0)
    {
      v32 = v28;
      v30 = *(v28 + 80);
      v31 = v30;
      v29 = v30;
      if ((v30 & 0x400000) != 0)
      {
        v44 = v28;
        v43 = 0x400000;
        v41 = -4194305;
        v40 = -4194305;
        v42 = -4194305;
        v36 = -4194305;
        v35 = -4194305;
        v37 = -4194305;
        v34 = atomic_fetch_and_explicit((v28 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v38 = v34;
        v33 = v34;
        v39 = v34 & 0xFFBFFFFF;
      }
    }

    v17 = v23;
    v95 = v23;
    v94 = i;
    v141 = v23;
    v140 = 256;
    v147 = 1;
    v146 = 738;
    v145 = v23;
    v143 = *(v23 + 80);
    v144 = v143;
    v142 = v143;
    v139 = v143 & 0x30000;
    v93 = (v143 & 0x30000) << 8;
    if (v93)
    {
      v94 = v94 & 0xFCFFFFFF | v93;
    }

    for (i = v94; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v27);
      }

      v16 = v23;
      *&v22[1] = v24(v23, v27, i, &v21);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v15 = 0uLL;
        v60 = v23;
        v59 = &v15;
        v64 = &v15;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v15);
        _dispatch_thread_setspecific_pair(20, v60, 21, v59);
        _dispatch_last_resort_autorelease_pool_pop(v27);
        v61 = &v15;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v15);
      }

      v46 = *&v22[1] != 1;
      v45 = 2026;
      if (*&v22[1] == 1)
      {
        _dispatch_abort(v45, v46);
      }

      v9 = 0;
      if (*&v22[1])
      {
        v9 = *&v22[1] != -1;
      }

      if (v9)
      {
        break;
      }

      v115 = v23;
      v114 = v21;
      v113 = *&v22[1] == 0;
      v112 = 0;
      v111 = 0;
      v110 = 0;
      v109 = (v23 + 56);
      v112 = *(v23 + 56);
      do
      {
        v111 = (v112 - v114) & 0xFFFFFFF700000001;
        v117 = v112;
        if ((v112 & 0xFF80000000000000) == 0)
        {
          v118 = v112;
          if ((v112 & 0x8000000000) != 0)
          {
            v107 = 0x8000000000;
            v106 = 0x8000000000;
            v108 = 0x8000000000;
            v102 = 0x8000000000;
            v101 = 0x8000000000;
            v103 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v115 + 56), 0x8000000000uLL, memory_order_acquire);
            v104 = xor_explicit;
            v99 = xor_explicit;
            v105 = xor_explicit ^ v108;
            v116 = 0;
            goto LABEL_101;
          }

          if (v113)
          {
            v111 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v111 |= 0x8000000000uLL;
          }
        }

        v98 = v111;
        v5 = v112;
        v6 = v112;
        atomic_compare_exchange_strong_explicit(v109, &v6, v111, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v112 = v6;
        }

        v97 = v6 == v5;
        v110 = v6 == v5;
      }

      while (v6 != v5);
      v96 = v110;
      v120 = v112;
      v123 = v112;
      v8 = 0;
      if ((v112 & 0x1000000000) != 0)
      {
        v8 = (v120 & 0x800000000) != 0;
      }

      if (v8)
      {
        v119 = v112 & 0x700000000;
        v122 = (v112 & 0x700000000uLL) >> 32;
        v121 = _dispatch_thread_getspecific(25);
        v124 = v121 & 0xF0000;
        if (v122 > (v121 & 0xF0000) >> 16)
        {
          v121 &= 0xFFF0FFFF;
          v121 |= v122 << 16;
          _dispatch_thread_setspecific(25, v121);
        }
      }

      v116 = 1;
LABEL_101:
      if (v116)
      {
        v21 = 0;
        *&v22[1] = 0;
        break;
      }

      *&v22[1] = _dispatch_thread_getspecific(20);
      v7 = 0;
      if (**&v22[1])
      {
        v7 = **&v22[1];
      }

      if (*(v7 + 16) & 0x10000) == 0 && (v22[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v63 = v18;
      v62 = _dispatch_thread_getspecific(25);
      v63 &= 0xFFF0FFFF;
      v63 |= v62 & 0xF0000;
      _dispatch_thread_setspecific(25, v63);
    }
  }

  if (v22[0])
  {
    v51 = v23;
    v150 = v23;
    v155 = 772079660;
    v154 = v23;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v156 = v51;
  }

  if (*&v22[1])
  {
    _dispatch_queue_invoke_finish(v23, v27, *&v22[1], v21);
  }

  else
  {
    _dispatch_release_2_tailcall(v23);
  }
}

uint64_t _dispatch_workloop_invoke2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = *(a1 + 200);
  v18 = 0uLL;
  if (v19 && (*v19 & 0x20) != 0)
  {
    v38 = v19 + 10;
    _dispatch_thread_setspecific(24, (v19 + 10));
  }

  v29 = v23;
  v28 = &v18;
  v32 = &v18;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v18);
  _dispatch_thread_setspecific_pair(20, v29, 21, v28);
  do
  {
LABEL_5:
      ;
    }

    if (!i)
    {
      *v20 = (*v20 & 1) + 0x40020000000000;
      v31 = &v18;
      _dispatch_thread_setspecific_packed_pair(20, 21, &v18);
      v37 = 0;
      _dispatch_thread_setspecific(24, 0);
      return 0;
    }

    v59 = v23;
    v58 = i;
    v57 = 0;
    v56 = 0;
    v65 = i;
    v55 = i << 32;
    v54 = 0;
    v53 = (v23 + 56);
    v57 = *(v23 + 56);
    do
    {
      if ((v57 & 0x700000000uLL) <= v55)
      {
        v60 = 1;
        goto LABEL_24;
      }

      v62 = v57;
      if ((v57 & 0x8000000000) != 0)
      {
        v51 = 0x8000000000;
        v50 = 0x8000000000;
        v52 = 0x8000000000;
        v46 = 0x8000000000;
        v45 = 0x8000000000;
        v47 = 0x8000000000;
        xor_explicit = atomic_fetch_xor_explicit((v59 + 56), 0x8000000000uLL, memory_order_acquire);
        v48 = xor_explicit;
        v43 = xor_explicit;
        v49 = xor_explicit ^ v52;
        v60 = 0;
        goto LABEL_24;
      }

      v56 = v57 & 0xFFFFFFF8FFFFFFFFLL | v55;
      v42 = v56;
      v4 = v57;
      v5 = v57;
      atomic_compare_exchange_strong_explicit(v53, &v5, v56, memory_order_relaxed, memory_order_relaxed);
      if (v5 != v4)
      {
        v57 = v5;
      }

      v41 = v5 == v4;
      v54 = v5 == v4;
    }

    while (v5 != v4);
    v40 = v54;
    v61 = _dispatch_thread_getspecific(29);
    v64 = (v61 & 1) == 0;
    v63 = 453;
    if (v61)
    {
      _dispatch_abort(v63, v64);
    }

    v39 = v61;
    if (v61)
    {
      *(v39 + 53) = *(v39 + 53) & 0xFD | 2;
      _dispatch_return_to_kernel();
    }

    v60 = 1;
LABEL_24:
    ;
  }

  while ((v60 & 1) == 0);
  *(v23 + 100) = i;
  v15 = (v23 + 104 + 8 * (i - 1));
  v14 = *v15;
  if (!*v15)
  {
    v14 = _dispatch_wait_for_enqueuer(v15, v23 + 152 + 8 * (i - 1));
  }

  v17 = v14;
  while (1)
  {
    v33 = v17;
    v35 = v17;
    if (*v17 <= 0xFFFuLL && (*v33 & 1) != 0)
    {
      break;
    }

    v13 = v17[2];
    *(v23 + 104 + 8 * (i - 1)) = v13;
    if (!v13)
    {
      v11 = (v23 + 152 + 8 * (i - 1));
      v12 = *v11;
      while (1)
      {
        v27 = v12;
        if (v17 != (v12 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v6 = v12;
        v7 = v12;
        atomic_compare_exchange_strong_explicit(v11, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v12)
        {
          v12 = v7;
        }

        if (v7 == v6)
        {
          goto LABEL_43;
        }
      }

      v10 = v17[2];
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v17 + 2, v23 + 152 + 8 * (i - 1));
      }

      v13 = v10;
      *(v23 + 104 + 8 * (i - 1)) = v10;
    }

LABEL_43:
    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    _dispatch_continuation_pop_inline(v17, v22, v21, v23);
    i = *(v23 + 100);
    v17 = v13;
    v9 = 0;
    if (v13)
    {
      v25 = v23;
      v26 = *(v23 + 60) << 32;
      v26 &= 0x700000000uLL;
      v9 = HIDWORD(v26) <= i;
    }

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  *(v22 + 16) = i;
  *(v22 + 8) = v17;
  *(v23 + 100) = 0;
  v30 = &v18;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v18);
  v36 = 0;
  _dispatch_thread_setspecific(24, 0);
  return *(v23 + 24);
}

void _dispatch_workloop_barrier_complete(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v17 = 0;
LABEL_2:
  for (i = 6; i; --i)
  {
    if (*(a1 + 152 + 8 * (i - 1)))
    {
      v15 = (a1 + 104 + 8 * (i - 1));
      v14 = *v15;
      if (!*v15)
      {
        v14 = _dispatch_wait_for_enqueuer(v15, a1 + 152 + 8 * (i - 1));
      }

      if (*v14 <= 0xFFFuLL && (*v14 & 0x81) != 0)
      {
        _dispatch_workloop_drain_barrier_waiter(a1, v14, i, a3, 0);
        return;
      }

      v17 = 1;
    }
  }

  v11 = 0;
  if (v17)
  {
    v11 = (a3 & 1) == 0;
  }

  if (v11)
  {
    _dispatch_retain_2(a1);
    a3 |= 1u;
  }

LABEL_18:
  v13 = *(a1 + 56);
  do
  {
    if ((v13 & 0x2000000000) != 0 && (v13 & 2) != 0 && (v13 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_18;
    }

    v25 = v13;
    v24 = a2 << 32;
    if ((v13 & 0x700000000) < v24)
    {
      v25 = v13 & 0xFFFFFFF8FFFFFFFFLL | v24;
      if (v13 & 0x1000000000 | v24 & 0x1000000000)
      {
        v25 |= 0x800000000uLL;
      }
    }

    if (v17)
    {
      v12 = (v25 - 0x40020000000000) & 0xFFFFFFF700000000 | 1;
    }

    else
    {
      if ((v13 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_2;
      }

      if ((v13 & 0x2000000000) != 0)
      {
        v12 = (v25 - 0x40020000000000) & 0xFFFFFFF000000000;
      }

      else
      {
        v12 = (v25 - 0x40020000000000) & 0xFFFFFFF000000001;
      }
    }

    v3 = v13;
    v4 = v13;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v12, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      v13 = v4;
    }
  }

  while (v4 != v3);
  v8 = ((v13 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
  if (!v8)
  {
    _dispatch_abort(4884, v8);
  }

  if ((v13 & 0x4000000000) != 0)
  {
    _dispatch_abort(4885, (v13 & 0x4000000000) == 0);
  }

  if ((v13 & 0x2000000000) != 0)
  {
    if ((v12 & 0x4000000000) != 0)
    {
      _dispatch_abort(4902, (v12 & 0x4000000000) == 0);
    }

    if ((v13 & 1) != 0 || (v12 & 1) != 0 || (v13 & 2) == 0)
    {
      _dispatch_event_loop_end_ownership(a1, v13, v12, a3);
      return;
    }

    _dispatch_event_loop_assert_not_owned(a1);
    goto LABEL_84;
  }

  v10 = 0;
  if ((v13 & 0x1000000000) != 0)
  {
    v10 = (v13 & 0x800000000) != 0;
  }

  if (v10)
  {
    v22 = (v13 & 0x700000000) >> 32;
    v21 = _dispatch_thread_getspecific(25);
    if (v22 > (v21 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v21 & 0xFFF0FFFF | (v22 << 16));
    }
  }

  if (!v17)
  {
    goto LABEL_84;
  }

  if ((v13 ^ v12))
  {
    if ((v12 & 0x4000000001) == 0)
    {
      _dispatch_abort(4921, (v12 & 0x4000000001) != 0);
    }

    v23 = *(a1 + 24);
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(1937, a3 & 1);
    }

    if ((v12 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a1, v12, 1);
    }

    else
    {
      v9 = 0;
      if (*v23)
      {
        v9 = *v23;
      }

      (*(v9 + 72))(v23, a1, (v12 & 0x700000000) >> 32, v5, v6, v7);
    }

    return;
  }

  if ((v12 & 0xFF80000000000000) != 0 || (v12 & 0x4000000000) != 0 || (v12 & 1) == 0 && (v12 & 0xFFFFFFFC) == 0)
  {
LABEL_84:
    if (a3)
    {
      _dispatch_release_2_tailcall(a1);
    }

    return;
  }

  v27 = (v12 & 0xFF80000000000000) == 0 && (v12 & 0x4000000000) == 0 && ((v12 & 1) != 0 || (v12 & 0xFFFFFFFC) != 0);
  if (!v27)
  {
    _dispatch_abort(5358, v27);
  }

  if ((v12 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a1, v12, a3 | 0x80000000);
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a1, v12, a3);
  }
}

void _dispatch_workloop_push(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = a3;
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_workloop_push_waiter(a1, a2, a3);
  }

  else
  {
    if (a3 < (*(a1 + 84) & 0xF00u) >> 8)
    {
      v4 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    if (!v4)
    {
      v4 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    a2[2] = 0;
    _dispatch_thread_setspecific(122, a1 + 152 + 8 * (v4 - 1));
    v3 = atomic_exchange_explicit((a1 + 152 + 8 * (v4 - 1)), a2, memory_order_release);
    if (v3)
    {
      *(v3 + 16) = a2;
    }

    else
    {
      _dispatch_retain_2_unsafe(a1);
      *(a1 + 104 + 8 * (v4 - 1)) = a2;
    }

    _dispatch_thread_setspecific(122, 0);
    if (!v3)
    {
      _dispatch_workloop_wakeup(a1, v4, 3u);
    }
  }
}

void _dispatch_workloop_push_waiter(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v22 = a3;
  v29 = *(a2 + 8);
  if ((v29 & 0x20000000) != 0)
  {
    _dispatch_abort(458, (*(a2 + 8) & 0x20000000) == 0);
  }

  v3 = (v29 & 0x3FFF00uLL) >> 8;
  v4 = __clz(__rbit32(v3));
  if (v3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < ((v5 << 8) & 0xF00) >> 8)
  {
    v22 = ((v5 << 8) & 0xF00) >> 8;
  }

  if (!v22)
  {
    v22 = 4;
  }

  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, a1 + 152 + 8 * (v22 - 1));
  v21 = atomic_exchange_explicit((a1 + 152 + 8 * (v22 - 1)), a2, memory_order_release);
  if (v21)
  {
    *(v21 + 16) = a2;
  }

  else
  {
    *(a1 + 104 + 8 * (v22 - 1)) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v21)
  {
    if ((*a2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    v25 = *(a1 + 24);
    v11 = 0;
    if (v25 >= &_dispatch_root_queues)
    {
      v11 = v25 < &unk_E0A80;
    }

    if (v11)
    {
LABEL_19:
      v19 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
      v18 = *(a1 + 56);
      do
      {
        v27 = v18;
        v26 = v22 << 32;
        if ((v18 & 0x700000000) < v26)
        {
          v27 = v18 & 0xFFFFFFF8FFFFFFFFLL | v26;
          if (v18 & 0x1000000000 | v26 & 0x1000000000)
          {
            v27 |= 0x800000000uLL;
          }
        }

        v17 = v27 | 0x8000000000;
        if ((v18 & 0xFFFFFFFC) == 0 && (v18 & 0x4000000001) == 0)
        {
          v17 = v27 & 0x7700000001 | v19;
        }

        v6 = v18;
        v7 = v18;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v17, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          v18 = v7;
        }
      }

      while (v7 != v6);
      if ((v17 & 0x2000000000) != 0 && *(a2 + 48) != -4)
      {
        v10 = *(a2 + 100);
        *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (v10 == _dispatch_thread_getspecific(3)));
      }

      if (((v18 ^ v17) & 0x40000000000000) != 0)
      {
        if ((*(a2 + 106) & 4) == 0)
        {
          goto LABEL_50;
        }

        v16 = (a1 + 104 + 8 * (v22 - 1));
        v15 = *v16;
        if (!*v16)
        {
          v15 = _dispatch_wait_for_enqueuer(v16, a1 + 152 + 8 * (v22 - 1));
        }

        if (v15 == a2)
        {
          *(a2 + 106) = *(a2 + 106) & 0xF7 | 8;
          if ((*a2 & 0x80) != 0)
          {
            *(a2 + 56) = a1;
          }

          v14 = *(a2 + 16);
          *(a1 + 104 + 8 * (v22 - 1)) = v14;
          if (!v14)
          {
            v13 = *(a1 + 152 + 8 * (v22 - 1));
            while (a2 == (v13 & 0xFFFFFFFFFFFFFFF8))
            {
              v8 = v13;
              v9 = v13;
              atomic_compare_exchange_strong_explicit((a1 + 152 + 8 * (v22 - 1)), &v9, 0, memory_order_release, memory_order_relaxed);
              if (v9 != v13)
              {
                v13 = v9;
              }

              if (v9 == v8)
              {
                return;
              }
            }

            v12 = *(a2 + 16);
            if (!v12)
            {
              v12 = _dispatch_wait_for_enqueuer((a2 + 16), a1 + 152 + 8 * (v22 - 1));
            }

            *(a1 + 104 + 8 * (v22 - 1)) = v12;
          }
        }

        else
        {
LABEL_50:
          _dispatch_workloop_barrier_complete(a1, v22, 0);
        }
      }

      else if (((v18 ^ v17) & 0x700000000) != 0)
      {
        if ((v17 & 0xFF80000000000000) != 0 || (v17 & 0x4000000000) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = (v17 & 1) != 0 || (v17 & 0x2000000000) == 0 && (v17 & 0xFFFFFFFC) != 0;
        }

        if (v30)
        {
          v28 = (v17 & 0xFF80000000000000) == 0 && (v17 & 0x4000000000) == 0 && ((v17 & 1) != 0 || (v17 & 0xFFFFFFFC) != 0);
          if (!v28)
          {
            _dispatch_abort(5358, v28);
          }

          if ((v17 & 0x2000000000) != 0)
          {
            _dispatch_event_loop_poke(a1, v17, 0x80000000);
          }

          else
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v17, 0);
          }
        }
      }
    }

    else
    {
      *(a2 + 56) = a1;
      *a2 &= ~0x80uLL;
      _dispatch_retain_2_unsafe(a1);
      _dispatch_workloop_wakeup(a1, v22, 3u);
    }
  }
}

uint64_t dispatch_thread_get_current_override_qos_floor()
{
  v5 = 0;
  v0 = _dispatch_thread_getspecific(25);
  v7 = (v0 & 0xF000) >> 12;
  if ((v0 & 0xF00) >> 8 > v7)
  {
    v4 = (v0 & 0xF00) >> 8;
  }

  else
  {
    v4 = (v0 & 0xF000) >> 12;
  }

  if (v4 <= (v0 & 0xF0000) >> 16)
  {
    v2 = (v0 & 0xF0000) >> 16;
  }

  else
  {
    if ((v0 & 0xF00) >> 8 > v7)
    {
      v3 = (v0 & 0xF00) >> 8;
    }

    else
    {
      v3 = (v0 & 0xF000) >> 12;
    }

    v2 = v3;
  }

  if (v2 != 15)
  {
    LODWORD(v5) = 1;
    switch(v2)
    {
      case 1u:
        v6 = 5;
        break;
      case 2u:
        v6 = 9;
        break;
      case 3u:
        v6 = 17;
        break;
      case 4u:
        v6 = 21;
        break;
      case 5u:
        v6 = 25;
        break;
      case 6u:
        v6 = 33;
        break;
      default:
        v6 = 0;
        break;
    }

    HIDWORD(v5) = v6;
  }

  return v5;
}

uint64_t dispatch_thread_override_self(int a1)
{
  switch(a1)
  {
    case 5:
      v2 = 1;
      break;
    case 9:
      v2 = 2;
      break;
    case 17:
      v2 = 3;
      break;
    case 21:
      v2 = 4;
      break;
    case 25:
      v2 = 5;
      break;
    case 33:
      v2 = 6;
      break;
    default:
      v2 = 0;
      break;
  }

  _dispatch_thread_getspecific(3);
  if (_dispatch_set_qos_class_enabled)
  {
    _pthread_workqueue_override_start_direct();
  }

  v3 = _dispatch_thread_getspecific(25);
  if (v2 > (v3 & 0xF0000u) >> 16)
  {
    _dispatch_thread_setspecific(25, v3 & 0xFFF0FFFF | (v2 << 16));
  }

  return 0;
}

uint64_t dispatch_lock_override_start_with_debounce(uint64_t a1, unsigned int a2, int a3)
{
  if (_dispatch_set_qos_class_enabled)
  {
    return _pthread_workqueue_override_start_direct_check_owner();
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch_lock_override_end(int a1)
{
  switch(a1)
  {
    case 5:
      v2 = 1;
      break;
    case 9:
      v2 = 2;
      break;
    case 17:
      v2 = 3;
      break;
    case 21:
      v2 = 4;
      break;
    case 25:
      v2 = 5;
      break;
    case 33:
      v2 = 6;
      break;
    default:
      v2 = 0;
      break;
  }

  v3 = _dispatch_thread_getspecific(25);
  if (v2 > (v3 & 0xF0000u) >> 16)
  {
    _dispatch_thread_setspecific(25, v3 & 0xFFF0FFFF | (v2 << 16));
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t (***a4)())
{
  v20 = a3;
  v19 = a4;
  v15 = 1;
  if (a4 == -1)
  {
    _dispatch_abort(5417, 0);
  }

  if (a4 && (a3 & 1) == 0)
  {
    _dispatch_retain_2(a1);
    v20 |= 1u;
  }

  if ((v20 & 4) != 0)
  {
    v13 = 0;
    if (*a1)
    {
      v13 = *a1;
    }

    if (*(v13 + 16) != 19)
    {
      _dispatch_abort(5435, *(v13 + 16) == 19);
    }

    v27 = a2;
    if (!a2)
    {
      v27 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    if (v27 > (*(a1 + 84) & 0xF00u) >> 8)
    {
      v12 = v27;
    }

    else
    {
      v12 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    _dispatch_lane_class_barrier_complete(a1, v12, v20, v19, 0x40020000000000);
    return;
  }

  if (v19)
  {
    if (v19 == &_dispatch_mgr_q)
    {
      v15 = 0x4000000000;
    }

    v26 = a2;
    if (!a2)
    {
      v26 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    if (v26 <= (*(a1 + 84) & 0xF00u) >> 8)
    {
      v11 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    else
    {
      v11 = v26;
    }

    v17 = *(a1 + 56);
    do
    {
      v25 = v17;
      v24 = v11 << 32;
      if ((v17 & 0x700000000) < v24)
      {
        v25 = v17 & 0xFFFFFFF8FFFFFFFFLL | v24;
        if (v17 & 0x1000000000 | v24 & 0x1000000000)
        {
          v25 |= 0x800000000uLL;
        }
      }

      v16 = v25;
      if ((v20 & 0x20) != 0 && (v17 & 0x180000000000000) == 0x80000000000000)
      {
        v16 = v25 & 0xFF7FFFFFFFFFFFFFLL;
      }

      v10 = 0;
      if ((v16 & 0xFF80000000000000) == 0)
      {
        v10 = 0;
        if ((v17 & 0x4000000001) == 0)
        {
          v9 = 1;
          if ((v17 & 0xFFFFFFFC) != 0)
          {
            v9 = v15 != 0x4000000000;
          }

          v10 = v9;
        }
      }

      if (v10)
      {
        v16 |= v15;
      }

      if ((v20 & 2) != 0)
      {
        v16 |= 0x8000000000uLL;
      }

      else if (v16 == v17)
      {
        goto LABEL_98;
      }

      v4 = v17;
      v5 = v17;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v16, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v17 = v5;
      }
    }

    while (v5 != v4);
LABEL_66:
    if (((v17 ^ v16) & v15) != 0)
    {
      if (v19 == (&dword_0 + 1))
      {
        v14 = *(a1 + 24);
      }

      else
      {
        v14 = v19;
      }

      if ((v16 & 0x4000000001) == 0)
      {
        _dispatch_abort(5576, (v16 & 0x4000000001) != 0);
      }

      if ((v20 & 1) == 0)
      {
        _dispatch_abort(1937, v20 & 1);
      }

      if ((v16 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v16, 1);
      }

      else
      {
        v8 = 0;
        if (*v14)
        {
          v8 = *v14;
        }

        (v8[9])(v14, a1, (v16 & 0x700000000) >> 32, a4);
      }

      return;
    }

    if (((v17 ^ v16) & 0x700000000) != 0 && (v16 & 0xFF80000000000000) == 0 && (v16 & 0x4000000000) == 0 && ((v16 & 1) != 0 || (v16 & 0xFFFFFFFC) != 0))
    {
      if ((v16 & 0xFF80000000000000) != 0 || (v16 & 0x4000000000) != 0 || (v16 & 1) == 0 && (v16 & 0xFFFFFFFC) == 0)
      {
        _dispatch_abort(5358, 0);
      }

      if ((v16 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v16, v20 | 0x80000000);
      }

      else
      {
        _dispatch_queue_wakeup_with_override_slow(a1, v16, v20);
      }

      return;
    }
  }

  else if (a2)
  {
    v17 = *(a1 + 56);
    while ((v17 & 0xFFFFFFFC) != 0 || (v17 & 0x4000000001) != 0)
    {
      v23 = v17;
      v22 = a2 << 32;
      if ((v17 & 0x700000000) < v22)
      {
        v23 = v17 & 0xFFFFFFF8FFFFFFFFLL | v22;
        if (v17 & 0x1000000000 | v22 & 0x1000000000)
        {
          v23 |= 0x800000000uLL;
        }
      }

      v16 = v23;
      if ((v17 & 0x2000000000) != 0 && (v17 & 0xFF80000000000000) == 0 && (v17 & 0x4000000000) == 0)
      {
        v16 = v23 | 1;
      }

      if (v16 == v17)
      {
        break;
      }

      v6 = v17;
      v7 = v17;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v16, memory_order_relaxed, memory_order_relaxed);
      if (v7 != v6)
      {
        v17 = v7;
      }

      if (v7 == v6)
      {
        v19 = (&dword_0 + 1);
        if (((v17 ^ v16) & 1) != 0 && (v20 & 1) == 0)
        {
          _dispatch_retain_2(a1);
          v20 |= 1u;
        }

        goto LABEL_66;
      }
    }
  }

LABEL_98:
  if (v20)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_lane_class_barrier_complete(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t (***a4)(), uint64_t a5)
{
  if (a4 == &_dispatch_mgr_q)
  {
    v15 = &_dispatch_mgr_q;
    v16 = 0x4000000000;
  }

  else if (a4)
  {
    if (a4 == (&dword_0 + 1))
    {
      v14 = a1[3];
    }

    else
    {
      v14 = a4;
    }

    v15 = v14;
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

LABEL_9:
  v18 = a1[7];
  do
  {
    if ((v18 & 0x2000000000) != 0 && (v18 & 2) != 0 && (v18 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 7), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v28 = v18 - a5;
    v27 = a2 << 32;
    if (((v18 - a5) & 0x700000000uLL) < v27)
    {
      v28 = v28 & 0xFFFFFFF8FFFFFFFFLL | v27;
      if ((v28 & 0x1000000000) != 0)
      {
        v28 |= 0x800000000uLL;
      }
    }

    v17 = v28 & 0xFFFFFFF700000001;
    if ((v18 & 0xFF80000000000000) != 0)
    {
      if ((v18 & 0x2000000000) != 0)
      {
        v17 = v28 & 0xFFFFFFF700000000;
      }
    }

    else if (v16)
    {
      if ((v18 & 0x4000000001) == 0)
      {
        v17 |= v16;
      }
    }

    else
    {
      if ((v18 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 7), 0x8000000000uLL, memory_order_acquire);
        v22 = a3 | 4;
        v13 = 0;
        if (*a1)
        {
          v13 = *a1;
        }

        (*(v13 + 64))(a1, a2, v22);
        return;
      }

      v17 = v28 & 0xFFFFFFF000000001;
    }

    v5 = v18;
    v6 = v18;
    atomic_compare_exchange_strong_explicit((a1 + 7), &v6, v17, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      v18 = v6;
    }
  }

  while (v6 != v5);
  v19 = v18 - a5;
  v10 = ((v19 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
  if (!v10)
  {
    _dispatch_abort(1448, v10);
  }

  if ((v19 & 0x4000000000) != 0)
  {
    _dispatch_abort(1449, (v19 & 0x4000000000) == 0);
  }

  if ((v19 & 0x2000000000) == 0)
  {
    v12 = 0;
    if ((v19 & 0x1000000000) != 0)
    {
      v12 = (v19 & 0x800000000) != 0;
    }

    if (v12)
    {
      v26 = (v19 & 0x700000000uLL) >> 32;
      v25 = _dispatch_thread_getspecific(25);
      if (v26 > (v25 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v25 & 0xFFF0FFFF | (v26 << 16));
      }
    }

    if (v15)
    {
      if (((v19 ^ v17) & v16) != 0)
      {
        if ((v17 & 0x4000000001) == 0)
        {
          _dispatch_abort(1488, (v17 & 0x4000000001) != 0);
        }

        if ((a3 & 1) == 0)
        {
          _dispatch_abort(1937, a3 & 1);
        }

        if ((v17 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_poke(a1, v17, 1);
        }

        else
        {
          v11 = 0;
          if (*v15)
          {
            v11 = *v15;
          }

          (v11[9])(v15, a1, (v17 & 0x700000000) >> 32, v7, v8, v9);
        }

        return;
      }

      if ((v17 & 0xFF80000000000000) == 0 && (v17 & 0x4000000000) == 0 && ((v17 & 1) != 0 || (v17 & 0xFFFFFFFC) != 0))
      {
        v29 = (v17 & 0xFF80000000000000) == 0 && (v17 & 0x4000000000) == 0 && ((v17 & 1) != 0 || (v17 & 0xFFFFFFFC) != 0);
        if (!v29)
        {
          _dispatch_abort(5358, v29);
        }

        if ((v17 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_poke(a1, v17, a3 | 0x80000000);
        }

        else
        {
          _dispatch_queue_wakeup_with_override_slow(a1, v17, a3);
        }

        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      return;
    }

LABEL_83:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if ((v17 & 0x4000000000) != 0)
  {
    _dispatch_abort(1466, (v17 & 0x4000000000) == 0);
  }

  if ((v19 & 1) != 0 || (v17 & 1) != 0 || (v19 & 2) == 0)
  {
    _dispatch_event_loop_end_ownership(a1, v19, v17, a3);
    return;
  }

  _dispatch_event_loop_assert_not_owned(a1);
  if (a3)
  {
    goto LABEL_83;
  }
}

void _dispatch_lane_wakeup(uint64_t a1, unsigned int a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, (*(a1 + 48) != 0));
  }
}

void _dispatch_lane_barrier_complete(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (*(a1 + 48) && (*(a1 + 56) & 0xFF80000000000000) == 0)
  {
    v13 = *(a1 + 104);
    if (!v13)
    {
      v13 = _dispatch_wait_for_enqueuer((a1 + 104), a1 + 48);
    }

    v5 = 1;
    if (*(a1 + 80) != 1)
    {
      if (*v13 > 0xFFFuLL)
      {
        v4 = 0;
        if (*v13)
        {
          v4 = *v13;
        }

        v12 = (*(v4 + 16) & 0xF0) == 0x10 && (*(v13 + 80) & 0x80000) != 0;
      }

      else
      {
        v12 = (*v13 & 2) != 0;
      }

      v5 = v12;
    }

    if (v5)
    {
      if (*v13 <= 0xFFFuLL && (*v13 & 0x81) != 0)
      {
        _dispatch_lane_drain_barrier_waiter(a1, v13, a3, 0);
        return;
      }
    }

    else if (*(a1 + 80) > 1u)
    {
      if (*v13 > 0xFFFuLL)
      {
        v3 = 0;
        if (*v13)
        {
          v3 = *v13;
        }

        v11 = (*(v3 + 16) & 0xF0) == 0x10 && (*(v13 + 80) & 0x80000) != 0;
      }

      else
      {
        v11 = (*v13 & 2) != 0;
      }

      if (!v11)
      {
        _dispatch_lane_drain_non_barriers(a1, v13, a3);
        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      _dispatch_retain_2(a1);
      a3 |= 1u;
    }

    v7 = (&dword_0 + 1);
  }

  _dispatch_lane_class_barrier_complete(a1, a2, a3, v7, (*(a1 + 80) << 41) + 0x40000000000000);
}

void _dispatch_lane_push(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = 0;
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_lane_push_waiter(a1, a2, a3);
  }

  else
  {
    if (*(a1 + 8) == 0x7FFFFFFF)
    {
      _dispatch_abort(5726, *(a1 + 8) != 0x7FFFFFFF);
    }

    if (a3 > (*(a1 + 84) & 0xF00u) >> 8)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    a2[2] = 0;
    _dispatch_thread_setspecific(122, a1 + 48);
    v5 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
    if (v5)
    {
      v11 = ((*(a1 + 60) << 32) & 0x700000000) >> 32;
      v4 = 1;
      if (v11)
      {
        v4 = v11 < v10;
      }

      if (v4)
      {
        _dispatch_retain_2_unsafe(a1);
        v6 = 1;
      }
    }

    else
    {
      _dispatch_retain_2_unsafe(a1);
      v6 = 3;
    }

    if (v5)
    {
      *(v5 + 16) = a2;
    }

    else
    {
      *(a1 + 104) = a2;
    }

    _dispatch_thread_setspecific(122, 0);
    if (v6)
    {
      v3 = 0;
      if (*a1)
      {
        v3 = *a1;
      }

      (*(v3 + 64))(a1, v10, v6);
    }
  }
}

void _dispatch_lane_push_waiter(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  if (*(a2 + 48) != -4)
  {
    a3 = 0;
  }

  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, (a1 + 6));
  v32 = atomic_exchange_explicit((a1 + 6), a2, memory_order_release);
  if (v32)
  {
    *(v32 + 16) = a2;
  }

  else
  {
    a1[13] = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (v32)
  {
    if (a3)
    {
      v19 = a1[7];
      while (1)
      {
        v24 = v19;
        v23 = a3 << 32;
        if ((v19 & 0x700000000) < v23)
        {
          v24 = v19 & 0xFFFFFFF8FFFFFFFFLL | v23;
          if (v19 & 0x1000000000 | v23 & 0x1000000000)
          {
            v24 |= 0x800000000uLL;
          }
        }

        v17 = v24;
        if (v19 == v24)
        {
          break;
        }

        v7 = v19;
        v8 = v19;
        atomic_compare_exchange_strong_explicit((a1 + 7), &v8, v24, memory_order_relaxed, memory_order_relaxed);
        if (v8 != v7)
        {
          v19 = v8;
        }

        if (v8 == v7)
        {
          if ((v24 & 0xFF80000000000000) != 0 || (v24 & 0x4000000000) != 0)
          {
            v33 = 0;
          }

          else
          {
            v33 = (v24 & 1) != 0 || (v24 & 0x2000000000) == 0 && (v24 & 0xFFFFFFFC) != 0;
          }

          if (!v33)
          {
            return;
          }

          v28 = (v24 & 0xFF80000000000000) == 0 && (v24 & 0x4000000000) == 0 && ((v24 & 1) != 0 || (v24 & 0xFFFFFFFC) != 0);
          if (!v28)
          {
            _dispatch_abort(5358, v28);
          }

          if ((v24 & 0x2000000000) == 0)
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v24, 0);
            return;
          }

          goto LABEL_76;
        }
      }
    }
  }

  else
  {
    if ((a1[10] & 0x40000) == 0 || (a1[10] & 0x1000000) != 0)
    {
      if ((*a2 & 0x80) != 0)
      {
        v14 = 1;
        if ((a1[10] & 0x1000000) == 0)
        {
          v13 = 0;
          if ((a1[7] & 0x3000000000) != 0)
          {
            v12 = 0;
            if (a1[3] >= &_dispatch_root_queues)
            {
              v12 = a1[3] < &unk_E0A80;
            }

            v13 = !v12;
          }

          v14 = v13;
        }

        v35 = v14 & 1;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      *a2 &= ~0x80uLL;
      *(a2 + 56) = a1;
      v11 = 0;
      if (*a1)
      {
        v11 = *a1;
      }

      (*(v11 + 64))(a1, a3, 2);
    }

    else
    {
      v16 = (*(a1 + 40) - 1) << 41;
      v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
      v18 = a1[7];
      do
      {
        v26 = v18;
        v25 = a3 << 32;
        if ((v18 & 0x700000000) < v25)
        {
          v26 = v18 & 0xFFFFFFF8FFFFFFFFLL | v25;
          if (v18 & 0x1000000000 | v25 & 0x1000000000)
          {
            v26 |= 0x800000000uLL;
          }
        }

        v17 = v26 | 0x8000000000;
        v10 = 1;
        if ((v18 & 0xFFFFFFFC) == 0)
        {
          v10 = v18 >= 0x20000000000000;
        }

        if (!v10 && ((v18 & 0x2000000000) == 0 || (v18 & 0x4000000001) == 0) && ((v18 & 0x10000000000) != 0 || (v17 + v16) < 0x20000000000000))
        {
          v17 = v26 & 0x7700000001 | v15;
        }

        v3 = v18;
        v4 = v18;
        atomic_compare_exchange_strong_explicit((a1 + 7), &v4, v17, memory_order_release, memory_order_relaxed);
        if (v4 != v3)
        {
          v18 = v4;
        }
      }

      while (v4 != v3);
      if ((v18 & 0x2000000000) != 0 && *(a2 + 48) != -4)
      {
        v9 = *(a2 + 100);
        *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (v9 == _dispatch_thread_getspecific(3)));
      }

      if (((v18 ^ v17) & 0x40000000000000) != 0)
      {
        if ((*(a2 + 106) & 4) != 0 && a1[13] == a2)
        {
          *(a2 + 106) = *(a2 + 106) & 0xF7 | 8;
          if ((*a2 & 0x80) != 0)
          {
            *(a2 + 56) = a1;
          }

          v31 = *(a2 + 16);
          a1[13] = v31;
          if (!v31)
          {
            v30 = a1[6];
            while (a2 == (v30 & 0xFFFFFFFFFFFFFFF8))
            {
              v5 = v30;
              v6 = v30;
              atomic_compare_exchange_strong_explicit((a1 + 6), &v6, 0, memory_order_release, memory_order_relaxed);
              if (v6 != v5)
              {
                v30 = v6;
              }

              if (v6 == v5)
              {
                return;
              }
            }

            v29 = *(a2 + 16);
            if (!v29)
            {
              v29 = _dispatch_wait_for_enqueuer((a2 + 16), (a1 + 6));
            }

            a1[13] = v29;
          }
        }

        else
        {
          _dispatch_lane_barrier_complete(a1, a3, 0);
        }
      }

      else if (((v18 ^ v17) & 0x700000000) != 0)
      {
        if ((v17 & 0xFF80000000000000) != 0 || (v17 & 0x4000000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = (v17 & 1) != 0 || (v17 & 0x2000000000) == 0 && (v17 & 0xFFFFFFFC) != 0;
        }

        if (v34)
        {
          v27 = (v17 & 0xFF80000000000000) == 0 && (v17 & 0x4000000000) == 0 && ((v17 & 1) != 0 || (v17 & 0xFFFFFFFC) != 0);
          if (!v27)
          {
            _dispatch_abort(5358, v27);
          }

          if ((v17 & 0x2000000000) != 0)
          {
LABEL_76:
            _dispatch_event_loop_poke(a1, v17, 0x80000000);
          }

          else
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v17, 0);
          }
        }
      }
    }
  }
}

void _dispatch_lane_concurrent_push(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v11 = 0;
  if ((*(a1 + 87) & 8) != 0)
  {
    if (*a2 >= 0x1000)
    {
      v10 = 0;
      if (*a2)
      {
        v10 = *a2;
      }

      v9 = 1;
      if (*(v10 + 16) != 1)
      {
        v8 = 0;
        if (*a2)
        {
          v8 = *a2;
        }

        is_timer = 0;
        if (*(v8 + 16) == 19)
        {
          is_timer = _dispatch_source_is_timer(a2);
        }

        v9 = is_timer;
      }

      v16 = v9 & 1;
    }

    else
    {
      v16 = 1;
    }

    v11 = v16 ^ 1;
  }

  if (v11)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x3435CLL);
  }

  if (*(a1 + 48))
  {
    goto LABEL_40;
  }

  if (*a2 < 0x1000 && (*a2 & 0x81) != 0)
  {
    goto LABEL_40;
  }

  if (*a2 > 0xFFF)
  {
    v6 = 0;
    if (*a2)
    {
      v6 = *a2;
    }

    v17 = (*(v6 + 16) & 0xF0) == 0x10 && (a2[10] & 0x80000) != 0;
  }

  else
  {
    v17 = (*a2 & 2) != 0;
  }

  if (v17)
  {
    goto LABEL_40;
  }

  for (i = *(a1 + 56); ; i = v4)
  {
    v5 = 1;
    if (!(i >> 53))
    {
      v5 = 1;
      if ((i & 0x8000000000) == 0)
      {
        v5 = BYTE5(i) & 1;
      }
    }

    if (v5)
    {
      v19 = 0;
      goto LABEL_38;
    }

    v3 = i;
    v4 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, i + 0x20000000000, memory_order_acquire, memory_order_acquire);
    if (v4 == v3)
    {
      break;
    }
  }

  v19 = 1;
LABEL_38:
  if (v19 != 1)
  {
LABEL_40:
    _dispatch_lane_push(a1, a2, a3);
  }

  else
  {
    _dispatch_continuation_redirect_push(a1, a2, a3);
  }
}

uint64_t _dispatch_continuation_redirect_push(uint64_t a1, void *a2, unsigned int a3)
{
  v10 = a2;
  v6 = 0;
  if (*a2 > 0xFFFuLL)
  {
    v5 = 0;
    if (*a2)
    {
      v5 = *a2;
    }

    v6 = *(v5 + 16) == 256;
  }

  if (v6)
  {
    if (!a2[5])
    {
      a2[5] = (*(a1 + 80) & 0x30000u) << 8;
    }
  }

  else
  {
    v12 = _dispatch_thread_getspecific(22);
    if (v12)
    {
      _dispatch_thread_setspecific(22, *(v12 + 16));
      v11 = v12;
    }

    else
    {
      v11 = _dispatch_continuation_alloc_from_heap();
    }

    v10[2] = 0;
    *v11 = &unk_DCC98;
    v11[4] = 0;
    v11[5] = (*(a1 + 80) & 0x30000u) << 8;
    v11[6] = a1;
    v11[7] = v10;
    v11[3] = -1;
    v11[1] = -1;
    _dispatch_retain_2(a1);
    v10 = v11;
  }

  v7 = *(a1 + 24);
  if (!a3)
  {
    a3 = (*(v7 + 21) & 0xF00u) >> 8;
  }

  v4 = 0;
  if (*v7)
  {
    v4 = *v7;
  }

  return (*(v4 + 72))(v7, v10, a3);
}

uint64_t dispatch_async_swift_job(uint64_t *a1, uint64_t *a2, int a3)
{
  v5 = 0;
  if (*a2)
  {
    v5 = *a2;
  }

  v6 = *(v5 + 16);
  if (v6 != 1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x34AC0);
  }

  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  switch(a3)
  {
    case 5:
      v7 = 1;
      break;
    case 9:
      v7 = 2;
      break;
    case 17:
      v7 = 3;
      break;
    case 21:
      v7 = 4;
      break;
    case 25:
      v7 = 5;
      break;
    case 33:
      v7 = 6;
      break;
    default:
      v7 = 0;
      break;
  }

  return (*(v4 + 72))(a1, a2, v7);
}

uint64_t _dispatch_channel_xref_dispose(uint64_t *a1)
{
  if (*(a1[11] + 24) && (a1[10] & 0x10000000) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x34D08);
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  return (*(v2 + 64))(a1, 0, 2);
}

void _dispatch_channel_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v28 = a1;
  v27 = a2;
  i = a3;
  v25 = 8;
  v24 = _dispatch_channel_invoke2;
  v23 = a1;
  v22[8] = 0;
  *v22 = (a3 & 1) == 0;
  v21 = 0;
  if ((a3 & 3) == 0)
  {
    *(v23 + 16) = -1985229329;
    v20 = _dispatch_thread_getspecific(20);
    v19 = v23;
    v50 = v20;
    v49 = v23;
    v48 = 0;
    v47 = 0;
    v149 = v20;
    v148 = v23;
  }

  i |= v25;
  if ((i & 2) != 0)
  {
    v21 = 0x40020000000001;
  }

  else
  {
    v78 = v23;
    v77 = i;
    v76 = (*(v23 + 80) - 1) << 41;
    v91 = _dispatch_thread_getspecific(3);
    v75 = v91 & 0xFFFFFFFC | 0x20000000000000;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v74 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v74 |= 0x4000000000uLL;
      v71 = 0;
    }

    else if ((v77 & 0x40000) != 0)
    {
      v71 = 0x4000000000;
    }

    else
    {
      v74 |= 0x4000000000uLL;
      v71 = 1;
    }

    v84 = (v77 & 2) == 0;
    v83 = 1331;
    if ((v77 & 2) != 0)
    {
      _dispatch_abort(v83, v84);
    }

    v88 = _dispatch_thread_getspecific(25);
    v90 = v88 & 0xF00;
    v87 = v90 >> 8;
    v89 = v88 & 0xF000;
    v86 = v89 >> 12;
    v92 = v88 & 0xF0000;
    v85 = (v88 & 0xF0000u) >> 16;
    if (v90 >> 8 > v89 >> 12)
    {
      v14 = v87;
    }

    else
    {
      v14 = v86;
    }

    if (v14 <= v85)
    {
      v12 = v85;
    }

    else
    {
      if (v87 <= v86)
      {
        v13 = v86;
      }

      else
      {
        v13 = v87;
      }

      v12 = v13;
    }

    v70 = v12;
LABEL_22:
    v69 = 0;
    v68 = (v78 + 56);
    v73 = *(v78 + 56);
    do
    {
      v72 = v73;
      if ((v73 & v74) != 0)
      {
        if (!v71)
        {
          break;
        }

        v72 ^= v71;
      }

      else
      {
        v126 = v73;
        v125 = v70;
        v128 = v73;
        v11 = 0;
        if ((v73 & 0x1000000000) != 0)
        {
          v127 = v126 & 0x700000000;
          v11 = v125 < (v126 & 0x700000000) >> 32;
        }

        if (v11)
        {
          v130 = v73;
          v131 = v73 & 0x700000000;
          v129 = (v73 & 0x700000000) >> 32;
          v135 = _dispatch_thread_getspecific(3);
          v134 = v129;
          if (_dispatch_set_qos_class_enabled)
          {
            v137 = v134;
            v136 = 0;
            if (v134)
            {
              v136 = 1 << (v137 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v133 = v129;
          v132 = _dispatch_thread_getspecific(25);
          v138 = v132 & 0xF0000;
          if (v129 > (v132 & 0xF0000) >> 16)
          {
            v132 = v132 & 0xFFF0FFFF | (v133 << 16);
            _dispatch_thread_setspecific(25, v132);
          }

          v70 = v129;
          goto LABEL_22;
        }

        v72 = v72 & 0x7700000001 | v75;
        v80 = v73;
        if ((v73 & 0x10000000000) != 0 || v73 + v76 < 0x20000000000000)
        {
          v72 |= 0x40000000000000uLL;
        }
      }

      v67 = v72;
      v3 = v73;
      v4 = v73;
      atomic_compare_exchange_strong_explicit(v68, &v4, v72, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v73 = v4;
      }

      v66 = v4 == v3;
      v69 = v4 == v3;
    }

    while (v4 != v3);
    v65 = v69;
    v82 = (v73 & v71) == v71;
    v81 = 1364;
    if ((v73 & v71) != v71)
    {
      _dispatch_abort(v81, v82);
    }

    if ((v73 & v74) != 0)
    {
      v79 = 0;
    }

    else
    {
      v72 &= v71 | 0x60000000000000;
      v73 &= 0x3FFE0000000000uLL;
      v79 = v72 - v73;
    }

    v21 = v79;
  }

  if (v21)
  {
    v18 = 0;
    if ((i & 0x40000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v54 = *(v23 + 84);
      v53 = _dispatch_thread_getspecific(25);
      v52 = v53;
      if (v53)
      {
        if ((v54 & 0xFFF) != 0)
        {
          v52 &= 0x880F0000;
          if ((v53 & 0xFFF) > (v54 & 0xFFFu))
          {
            v10 = v53 & 0xFFF;
          }

          else
          {
            v10 = v54 & 0xFFF;
          }

          v52 |= v10;
          v56 = v54 & 0xF000;
          v58 = v52 & 0xF00;
          if (v56 >> 12 > v58 >> 8)
          {
            v54 &= 0x4400F000u;
          }

          else
          {
            v54 &= 0x40000000u;
          }

          v52 |= v54;
        }

        else
        {
          if ((v52 & 0xFFF) != 0)
          {
            v52 |= 0x40000000u;
          }

          v55 = v54 & 0xF000;
          v57 = v52 & 0xF00;
          if (v55 >> 12 > v57 >> 8)
          {
            v52 = v52 & 0xFFFF0FFF | v54 & 0x400F000;
          }
        }
      }

      else
      {
        v52 = v54 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v52);
      v18 = v53;
    }

    if ((i & 0x100000) != 0)
    {
      v32 = v28;
      v30 = *(v28 + 80);
      v31 = v30;
      v29 = v30;
      if ((v30 & 0x400000) != 0)
      {
        v44 = v28;
        v43 = 0x400000;
        v41 = -4194305;
        v40 = -4194305;
        v42 = -4194305;
        v36 = -4194305;
        v35 = -4194305;
        v37 = -4194305;
        v34 = atomic_fetch_and_explicit((v28 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v38 = v34;
        v33 = v34;
        v39 = v34 & 0xFFBFFFFF;
      }
    }

    v17 = v23;
    v95 = v23;
    v94 = i;
    v141 = v23;
    v140 = 256;
    v147 = 1;
    v146 = 738;
    v145 = v23;
    v143 = *(v23 + 80);
    v144 = v143;
    v142 = v143;
    v139 = v143 & 0x30000;
    v93 = (v143 & 0x30000) << 8;
    if (v93)
    {
      v94 = v94 & 0xFCFFFFFF | v93;
    }

    for (i = v94; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v27);
      }

      v16 = v23;
      *&v22[1] = v24(v23, v27, i, &v21);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v15 = 0uLL;
        v60 = v23;
        v59 = &v15;
        v64 = &v15;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v15);
        _dispatch_thread_setspecific_pair(20, v60, 21, v59);
        _dispatch_last_resort_autorelease_pool_pop(v27);
        v61 = &v15;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v15);
      }

      v46 = *&v22[1] != 1;
      v45 = 2026;
      if (*&v22[1] == 1)
      {
        _dispatch_abort(v45, v46);
      }

      v9 = 0;
      if (*&v22[1])
      {
        v9 = *&v22[1] != -1;
      }

      if (v9)
      {
        break;
      }

      v115 = v23;
      v114 = v21;
      v113 = *&v22[1] == 0;
      v112 = 0;
      v111 = 0;
      v110 = 0;
      v109 = (v23 + 56);
      v112 = *(v23 + 56);
      do
      {
        v111 = (v112 - v114) & 0xFFFFFFF700000001;
        v117 = v112;
        if ((v112 & 0xFF80000000000000) == 0)
        {
          v118 = v112;
          if ((v112 & 0x8000000000) != 0)
          {
            v107 = 0x8000000000;
            v106 = 0x8000000000;
            v108 = 0x8000000000;
            v102 = 0x8000000000;
            v101 = 0x8000000000;
            v103 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v115 + 56), 0x8000000000uLL, memory_order_acquire);
            v104 = xor_explicit;
            v99 = xor_explicit;
            v105 = xor_explicit ^ v108;
            v116 = 0;
            goto LABEL_101;
          }

          if (v113)
          {
            v111 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v111 |= 0x8000000000uLL;
          }
        }

        v98 = v111;
        v5 = v112;
        v6 = v112;
        atomic_compare_exchange_strong_explicit(v109, &v6, v111, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v112 = v6;
        }

        v97 = v6 == v5;
        v110 = v6 == v5;
      }

      while (v6 != v5);
      v96 = v110;
      v120 = v112;
      v123 = v112;
      v8 = 0;
      if ((v112 & 0x1000000000) != 0)
      {
        v8 = (v120 & 0x800000000) != 0;
      }

      if (v8)
      {
        v119 = v112 & 0x700000000;
        v122 = (v112 & 0x700000000uLL) >> 32;
        v121 = _dispatch_thread_getspecific(25);
        v124 = v121 & 0xF0000;
        if (v122 > (v121 & 0xF0000) >> 16)
        {
          v121 &= 0xFFF0FFFF;
          v121 |= v122 << 16;
          _dispatch_thread_setspecific(25, v121);
        }
      }

      v116 = 1;
LABEL_101:
      if (v116)
      {
        v21 = 0;
        *&v22[1] = 0;
        break;
      }

      *&v22[1] = _dispatch_thread_getspecific(20);
      v7 = 0;
      if (**&v22[1])
      {
        v7 = **&v22[1];
      }

      if (*(v7 + 16) & 0x10000) == 0 && (v22[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v63 = v18;
      v62 = _dispatch_thread_getspecific(25);
      v63 &= 0xFFF0FFFF;
      v63 |= v62 & 0xF0000;
      _dispatch_thread_setspecific(25, v63);
    }
  }

  if (v22[0])
  {
    v51 = v23;
    v150 = v23;
    v155 = 772079660;
    v154 = v23;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v156 = v51;
  }

  if (*&v22[1])
  {
    _dispatch_queue_invoke_finish(v23, v27, *&v22[1], v21);
  }

  else
  {
    _dispatch_release_2_tailcall(v23);
  }
}

uint64_t _dispatch_channel_invoke2(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a1[11];
  v9 = a1;
  v10 = 0;
  v11 = a2;
  v12 = a3 & 0xFFFDFFFF;
  v13 = 0;
  v14 = 0uLL;
  v62 = a1;
  v61 = &v9 + 8;
  v64 = &v9 + 8;
  _dispatch_thread_getspecific_packed_pair(20, 21, (&v9 + 8));
  _dispatch_thread_setspecific_pair(20, v62, 21, v61);
  if (_dispatch_channel_invoke_cancel_check(v19, &v9, v15))
  {
    do
    {
      v8 = v14;
      if (!v14)
      {
        if (!v19[6])
        {
          break;
        }

        v28 = v19;
        v27 = v19 + 13;
        v26 = 0;
        v24 = v19[13];
        v25 = v24;
        v23 = v24;
        v26 = v24;
        if (!v24)
        {
          v26 = _dispatch_wait_for_enqueuer(v27, (v28 + 6));
        }

        v22 = v26;
        v8 = v26;
      }

      v65 = v8;
      v67 = v8;
      if (*v8 >= 0x1000uLL)
      {
        v66 = 0;
      }

      else
      {
        v66 = *v65 & 1;
      }

      if (v66)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: sync waiter found on channel";
        __break(1u);
        JUMPOUT(0x3634CLL);
      }

      v20 = v8;
      v60 = v8;
      if (*v8 < 0x1000uLL && (*v20 & 0x400) != 0)
      {
        *&v14 = v8;
        BYTE8(v14) = 0;
        v7 = 0;
        if ((v12 & 0x1000000) != 0)
        {
          v7 = _dispatch_autorelease_pool_push();
        }

        if ((*(v15 + 16))(v19, &v9, v19[4]))
        {
          if ((BYTE8(v14) & 1) == 0)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel didn't call dispatch_channel_drain";
            __break(1u);
            JUMPOUT(0x36434);
          }
        }

        else
        {
          v13 = -1;
        }

        if (v7)
        {
          _dispatch_autorelease_pool_pop(v7);
        }
      }

      else
      {
        v58 = v19;
        v57 = v8;
        v56 = v8;
        v55 = 0;
        v54 = 0;
        v53 = 0;
        v51 = v8[2];
        v52 = v51;
        v50 = v51;
        v55 = v51;
        v49 = v51;
        v48 = v51;
        v19[13] = v51;
        v47 = v49;
        if (!v55)
        {
          v44 = 0;
          v45 = 0;
          v46 = v58 + 6;
          v43 = 0;
          v42 = (v58 + 6);
          v53 = v58[6];
          while (1)
          {
            v59 = v53;
            if (v56 != (v53 & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            v54 = 0;
            v32 = 0;
            v4 = v53;
            v5 = v53;
            atomic_compare_exchange_strong_explicit(v42, &v5, 0, memory_order_release, memory_order_relaxed);
            if (v5 != v4)
            {
              v53 = v5;
            }

            v31 = v5 == v4;
            v43 = v5 == v4;
            if (v5 == v4)
            {
              goto LABEL_35;
            }
          }

          v41 = v56;
          v40 = 0;
          v38 = v56[2];
          v39 = v38;
          v37 = v38;
          v40 = v38;
          if (!v38)
          {
            v40 = _dispatch_wait_for_enqueuer(v41 + 2, (v58 + 6));
          }

          v36 = v40;
          v55 = v40;
          v35 = v40;
          v34 = v40;
          v58[13] = v40;
          v33 = v35;
LABEL_35:
          v30 = v43;
        }

        v29 = v55;
        *&v14 = v55;
        _dispatch_continuation_pop_inline(v8, v18, v17, v19);
        if ((_dispatch_channel_invoke_checks(v19, &v9, v15) & 1) == 0)
        {
          break;
        }
      }
    }

    while (!v13);
  }

  v63 = &v9 + 8;
  _dispatch_thread_setspecific_packed_pair(20, 21, (&v9 + 8));
  return v13;
}

unint64_t dispatch_channel_foreach_work_item_peek_f(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  if (*(result + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Called peek after drain";
    __break(1u);
    JUMPOUT(0x36768);
  }

  v5 = *result;
  for (i = *(result + 48); *i < 0x1000uLL && (*i & 0x400) != 0; i = v3)
  {
    result = a3(a2, i[5]);
    if ((result & 1) == 0 || i == *(v5 + 48))
    {
      break;
    }

    v3 = i[2];
    if (!v3)
    {
      result = _dispatch_wait_for_enqueuer(i + 2, v5 + 48);
      v3 = result;
    }
  }

  return result;
}

void dispatch_channel_drain_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t *))
{
  v38 = result;
  v37 = a2;
  v36 = a3;
  v35 = *result;
  v34 = *(v35 + 88);
  v33 = 0;
  v32 = 1028;
  v31 = 0;
  if (*(result + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Called drain twice in the same invoke";
    __break(1u);
    JUMPOUT(0x36934);
  }

  *(v38 + 56) = 1;
  do
  {
    v33 = *(v38 + 48);
    if (!v33)
    {
      if (!*(v35 + 48))
      {
        break;
      }

      v90 = v35;
      v89 = (v35 + 104);
      v88 = 0;
      v86 = *(v35 + 104);
      v87 = v86;
      v85 = v86;
      v88 = v86;
      if (!v86)
      {
        v88 = _dispatch_wait_for_enqueuer(v89, v90 + 48);
      }

      v84 = v88;
      v33 = v88;
    }

    v82 = v33;
    v157 = v33;
    if (*v33 >= 0x1000uLL || (*v82 & 0x400) == 0)
    {
      break;
    }

    v120 = v35;
    v119 = v33;
    v118 = v33;
    v117 = 0;
    v116 = 0;
    v115 = 0;
    v113 = v33[2];
    v114 = v113;
    v112 = v113;
    v117 = v113;
    v111 = v113;
    v110 = v113;
    *(v35 + 104) = v113;
    v109 = v111;
    if (!v117)
    {
      v106 = 0;
      v107 = 0;
      v108 = v120 + 48;
      v105 = 0;
      v104 = (v120 + 48);
      v115 = *(v120 + 48);
      while (1)
      {
        v156 = v115;
        if (v118 != (v115 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v116 = 0;
        v94 = 0;
        v3 = v115;
        v4 = v115;
        atomic_compare_exchange_strong_explicit(v104, &v4, 0, memory_order_release, memory_order_relaxed);
        if (v4 != v3)
        {
          v115 = v4;
        }

        v93 = v4 == v3;
        v105 = v4 == v3;
        if (v4 == v3)
        {
          goto LABEL_22;
        }
      }

      v103 = v118;
      v102 = 0;
      v100 = v118[2];
      v101 = v100;
      v99 = v100;
      v102 = v100;
      if (!v100)
      {
        v102 = _dispatch_wait_for_enqueuer(v103 + 2, v120 + 48);
      }

      v98 = v102;
      v117 = v102;
      v97 = v102;
      v96 = v102;
      *(v120 + 104) = v102;
      v95 = v97;
LABEL_22:
      v92 = v105;
    }

    v91 = v117;
    *(v38 + 48) = v117;
    v78 = v33;
    v79 = v33;
    v29 = v33;
    v27 = v32;
    v124 = v33;
    v123 = v32;
    v122 = v33[3];
    v121 = v32 & 4;
    v146 = 1;
    v145 = 600;
    if ((v32 & 4) != 0)
    {
      v124[3] = -1;
    }

    if (v122 != -1)
    {
      v139 = 771817480;
      v138 = v122;
      v137 = v124;
      if (v122)
      {
        v22 = v138[8];
      }

      else
      {
        v22 = 0;
      }

      v136 = v22;
      v144 = v139;
      v143 = v22;
      v142 = v137;
      v141 = 0;
      v140 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v5 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v5, v122, v124);
    }

    v128 = v124[1];
    v127 = v122;
    v126 = v121 | 2;
    v125 = 0;
    if (v128 != -1)
    {
      v181 = v128;
      v180 = v126;
      v179 = _dispatch_thread_getspecific(25);
      v187 = v179;
      v188 = v179 & 0xF00;
      v186 = v188 >> 8;
      v185 = v179;
      if (v188 >> 8)
      {
        v185 |= 1 << (v186 + 7);
      }

      v178 = v185;
      v189 = v185;
      v177 = v185 & 0xFFFFFF00;
      LOBYTE(v21) = 1;
      if ((v180 & 1) == 0)
      {
        v21 = (BYTE3(v181) >> 4) & 1;
      }

      v176 = v21;
      v183 = v181;
      v181 &= 0xFFFFFFuLL;
      if (v181)
      {
        if (v181 >= v177)
        {
          if ((v176 & 1) != 0 || (v179 & 0x44000000) != 0)
          {
            v182 = v181;
          }

          else
          {
            v182 = v178;
          }
        }

        else
        {
          v182 = v178;
        }
      }

      else
      {
        v184 = v179 & 0xF000;
        v175 = v184 >> 12;
        if (v184 >> 12)
        {
          v191 = v175;
          v190 = 1 << (v175 + 7);
          v20 = v190 | 0xFF;
        }

        else
        {
          v20 = v178;
        }

        v182 = v20;
      }

      v125 = v182;
    }

    v132 = v125;
    v131 = v127;
    v130 = v126;
    v161 = v125;
    v174 = v125 != -1;
    v173 = 2409;
    if (v125 == -1)
    {
      _dispatch_abort(v173, v174);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v172 = v161;
      v171 = 4261412863;
      v170 = 0;
      v161 &= 0xFFFFFFFF02FFFFFFLL;
      v163 = _dispatch_thread_getspecific(4);
      v160 = v163;
      v159 = 0x1000000;
      v158 = 2281701376;
      if ((v163 & 0x1000000) != 0)
      {
        if (v161)
        {
          v19 = v161;
        }

        else
        {
          v169 = v160;
          v168 = v159;
          v167 = 0;
          v19 = v160 & (~v159 | 0xFFFFFF);
        }

        v162 = v19;
      }

      else
      {
        v166 = v160;
        v165 = v158;
        v164 = 0;
        v160 &= ~v158 | 0xFFFFFF;
        if (v161 == v160)
        {
          v162 = 0;
        }

        else
        {
          v162 = v161;
        }
      }
    }

    else
    {
      v162 = 0;
    }

    v132 = v162;
    if (v162)
    {
      goto LABEL_74;
    }

    if (v131 != -1)
    {
      v18 = v131;
      if (v18 == _dispatch_thread_getspecific(28))
      {
        v129 = (v130 & 4) != 0;
        if ((v130 & 2) != 0)
        {
          if (v129 && v131)
          {
            object = v131;
            os_release(v131);
          }

          v131 = -1;
        }

        else if (!v129 && v131)
        {
          v135 = v131;
          os_retain(v131);
        }

        v133 = v131;
        goto LABEL_75;
      }

LABEL_74:
      v133 = _dispatch_set_priority_and_voucher_slow(v132, v131, v130);
      goto LABEL_75;
    }

    v133 = -1;
LABEL_75:
    if ((v27 & 0x200) == 0)
    {
      v76 = v33;
      v77 = v33;
      v150 = v35;
      v149 = v33;
      v148 = 0;
      v147 = 0;
      v206 = v35;
      v205 = v33;
    }

    if ((v27 & 4) != 0)
    {
      v153 = v29;
      v152 = _dispatch_thread_getspecific(22);
      if (v152)
      {
        v17 = *(v152 + 8) + 1;
      }

      else
      {
        v17 = 1;
      }

      v151 = v17;
      if (v17 <= _dispatch_continuation_cache_limit)
      {
        *(v153 + 16) = v152;
        *(v153 + 8) = v151;
        _dispatch_thread_setspecific(22, v153);
        v154 = 0;
      }

      else
      {
        v154 = v153;
      }

      v28 = v154;
    }

    else
    {
      v28 = 0;
    }

    v26 = 0;
    if (*(v38 + 35))
    {
      v26 = _dispatch_autorelease_pool_push();
    }

    v74 = v33;
    v75 = v33;
    v30 = v36(v37, v33[5], &v31) ^ 1;
    if (v26)
    {
      _dispatch_autorelease_pool_pop(v26);
    }

    if ((v27 & 0x200) == 0)
    {
      v155 = v29;
      v207 = v29;
      v212 = 772079660;
      v211 = v29;
      v210 = 0;
      v209 = 0;
      v208 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v213 = v155;
    }

    if (v28)
    {
      _dispatch_continuation_free_to_cache_limit(v28);
    }
  }

  while ((v30 & 1) == 0 && (_dispatch_channel_invoke_checks(v35, v38, v34) & 1) != 0);
  if (v31)
  {
    v64 = _dispatch_thread_getspecific(22);
    if (v64)
    {
      _dispatch_thread_setspecific(22, *(v64 + 16));
    }

    v62 = v64;
    if (v64)
    {
      v63 = v62;
    }

    else
    {
      v63 = _dispatch_continuation_alloc_from_heap();
    }

    v25 = v63;
    v45 = v35;
    v44 = v63;
    v43 = v31;
    v42 = 0;
    v41 = 0;
    v40 = v32;
    v39 = 0;
    *v63 = v32 | 0x100;
    v44[4] = v42;
    v44[5] = v43;
    if ((v41 & 0x40000000) == 0)
    {
      v193 = 0;
      v192 = 1;
      v195 = _dispatch_thread_getspecific(4);
      v196 = v195;
      v193 = v195 & 0xFFFFFF;
      if ((v192 & 2) != 0 || (v200 = 5, v199 = 4096, v193 <= 0x10FF))
      {
        v194 = v193;
      }

      else
      {
        v198 = 5;
        v197 = 4096;
        v194 = 4351;
      }

      v39 = v194;
    }

    v57 = v44;
    v56 = v41;
    v55 = 0;
    v81 = v41 >= 0;
    v80 = 583;
    if (v41 < 0)
    {
      _dispatch_abort(v80, v81);
    }

    if ((v56 & 0x40) == 0)
    {
      v203 = _dispatch_thread_getspecific(28);
      if (v203)
      {
        v204 = v203;
        os_retain(v203);
      }

      v55 = v203;
    }

    v57[3] = v55;
    v6 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v6, v57[3], v57);
    v7 = v57[3];
    v61 = 771817476;
    v60 = v7;
    v59 = v57;
    if (v7 != -1)
    {
      v16 = v60 ? *(v60 + 32) : 0;
      v58 = v16;
      v69 = v61;
      v68 = v16;
      v67 = v59;
      v66 = 0;
      v65 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v54 = v45;
    v53 = v44;
    v52 = v39;
    v51 = v41;
    v50 = 0;
    v49 = v45;
    if (v39)
    {
      v48 = (v51 & 0x20) != 0;
      v47 = (*(v49 + 84) & 0x40000000) != 0;
      v46 = (*(v49 + 84) & 0xFFF) != 0;
      if ((v51 & 0x20) != 0)
      {
        v52 |= 0x10000000uLL;
        v201 = v52 >> 8;
        v8 = v52 >> 8;
        v9 = __clz(__rbit32(v8));
        if (v8)
        {
          v10 = v9 + 1;
        }

        else
        {
          v10 = 0;
        }

        v50 = v10;
      }

      else if (v47 || !v46)
      {
        v202 = v52 >> 8;
        v11 = v52 >> 8;
        v12 = __clz(__rbit32(v11));
        if (v11)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 0;
        }

        v50 = v13;
      }

      else
      {
        v52 = 0;
      }
    }

    v53[1] = v52;
    v72 = v25;
    v73 = v25;
    v24 = *(v38 + 48);
    *(v25 + 16) = v24;
    v15 = 0;
    if (!v24)
    {
      v14 = 0;
      atomic_compare_exchange_strong_explicit((v35 + 48), &v14, v25, memory_order_release, memory_order_relaxed);
      v15 = v14 != 0;
    }

    if (v15)
    {
      v23 = *(v35 + 104);
      if (!v23)
      {
        v23 = _dispatch_wait_for_enqueuer((v35 + 104), v35 + 48);
      }

      *(v25 + 16) = v23;
    }

    *(v35 + 104) = v25;
    v70 = v25;
    v71 = v25;
    *(v38 + 48) = v25;
  }
}

uint64_t _dispatch_channel_invoke_checks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_dispatch_channel_invoke_cancel_check(a1, a2, a3))
  {
    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    if ((*(a2 + 32) & 0x100000) != 0 && (v7 = _dispatch_thread_getspecific(27), ((*(v7 + 60) << 32) & 0x700000000) >> 32 > *(v7 + 100)))
    {
      *(a2 + 40) = *(a1 + 24);
      v6 = 0;
    }

    else if (_dispatch_thread_getspecific(120))
    {
      *(a2 + 40) = *(a1 + 24);
      v6 = 0;
    }

    else if ((*(a1 + 56) & 0xFF80000000000000) != 0)
    {
      *(a2 + 40) = *(a1 + 24);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t dispatch_channel_foreach_work_item_peek(unint64_t a1, uint64_t a2)
{
  v4 = _Block_get_invoke_fn(a2);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  v3 = 0;
  if (v5)
  {
    v3 = v5;
  }

  return dispatch_channel_foreach_work_item_peek_f(a1, a2, v3);
}

void dispatch_channel_drain(uint64_t a1, uint64_t a2)
{
  v3 = _Block_get_invoke_fn(a2);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  v2 = 0;
  if (v4)
  {
    v2 = v4;
  }

  dispatch_channel_drain_f(a1, a2, v2);
}

void _dispatch_channel_wakeup(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = 0;
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      _dispatch_queue_wakeup(a1, a2, a3, (&dword_0 + 1));
    }

    else
    {
      if ((*(a1 + 80) & 0x10000000) != 0)
      {
        v4 = (*(a1 + 116) & 8) == 0;
      }

      _dispatch_queue_wakeup(a1, a2, a3, v4);
    }
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t dispatch_channel_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t *a4)
{
  v12 = a1;
  v8 = 0x4000000;
  if (!*a4)
  {
    v4 = *a4;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x3855CLL);
  }

  if (a1)
  {
    v7 = _dispatch_strdup_if_mutable(a1);
    if (v7 != v12)
    {
      v8 = 69206016;
      v12 = v7;
    }
  }

  if (a2)
  {
    _dispatch_retain(a2);
  }

  else
  {
    a2 = &off_E0680;
  }

  v6 = _dispatch_object_alloc(_OS_dispatch_channel_vtable, 0x78uLL);
  _dispatch_queue_init(v6, v8, 1u, 0x180000000000000);
  *(result + 72) = v12;
  *(result + 24) = a2;
  *(result + 88) = a4;
  *(result + 32) = a3;
  if (!a4[3])
  {
    *(result + 116) |= 8u;
    --*(result + 8);
  }

  return result;
}

void _dispatch_queue_init(uint64_t *a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  if ((a4 & 0xFE7FFFCFFFFFFFFFLL) != 0)
  {
    _dispatch_abort(1231, (a4 & 0xFE7FFFCFFFFFFFFFLL) == 0);
  }

  if ((a4 & 0x180000000000000) != 0)
  {
    *(a1 + 2) += 2;
    v4 = 0;
    if (*a1)
    {
      v4 = *a1;
    }

    if (*(v4 + 16) == 19)
    {
      ++*(a1 + 2);
    }
  }

  a1[2] = -1985229329;
  *(a1 + 20) = a2 | a3;
  a1[7] = ((4096 - a3) << 41) | a4;
  a1[8] = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
}

uint64_t dispatch_channel_enqueue(uint64_t *a1, uint64_t a2)
{
  v10 = _dispatch_thread_getspecific(22);
  if (!v10)
  {
    return _dispatch_channel_enqueue_slow(a1, a2);
  }

  _dispatch_thread_setspecific(22, v10[2]);
  *v10 = 1284;
  v10[4] = 0;
  v10[5] = a2;
  v13 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v13 <= 0x10FF)
  {
    v14 = v13;
  }

  else
  {
    v14 = 4351;
  }

  v15 = _dispatch_thread_getspecific(28);
  if (v15)
  {
    os_retain(v15);
  }

  v10[3] = v15;
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v10[3], v10);
  if (v10[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v12 = v14;
  v11 = 0;
  if (v14)
  {
    if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v4 = v14 >> 8;
      v5 = __clz(__rbit32(v4));
      if (v4)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 0;
      }

      v11 = v6;
    }

    else
    {
      v12 = 0;
    }
  }

  v10[1] = v12;
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 72))(a1, v10, v11);
}

uint64_t _dispatch_channel_enqueue_slow(uint64_t *a1, uint64_t a2)
{
  v8 = _dispatch_continuation_alloc_from_heap();
  *v8 = 1284;
  v8[4] = 0;
  v8[5] = a2;
  v13 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v13 <= 0x10FF)
  {
    v14 = v13;
  }

  else
  {
    v14 = 4351;
  }

  v15 = _dispatch_thread_getspecific(28);
  if (v15)
  {
    os_retain(v15);
  }

  v8[3] = v15;
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v2, v8[3], v8);
  if (v8[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v12 = v14;
  v11 = 0;
  if (v14)
  {
    if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v3 = v14 >> 8;
      v4 = __clz(__rbit32(v3));
      if (v3)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 0;
      }

      v11 = v5;
    }

    else
    {
      v12 = 0;
    }
  }

  v8[1] = v12;
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 72))(a1, v8, v11);
}

uint64_t dispatch_channel_wakeup(uint64_t *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v4 = 1;
      break;
    case 9:
      v4 = 2;
      break;
    case 17:
      v4 = 3;
      break;
    case 21:
      v4 = 4;
      break;
    case 25:
      v4 = 5;
      break;
    case 33:
      v4 = 6;
      break;
    default:
      v4 = 0;
      break;
  }

  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  return (*(v3 + 64))(a1, v4, 2);
}

void _dispatch_mgr_queue_push(uint64_t a1, void *a2)
{
  if (*a2 < 0x1000uLL && (*a2 & 0x81) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Waiter pushed onto manager";
    __break(1u);
    JUMPOUT(0x39528);
  }

  a2[2] = 0;
  _dispatch_thread_setspecific(122, a1 + 48);
  v6 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v6)
  {
    *(v6 + 16) = a2;
  }

  else
  {
    *(a1 + 104) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v6)
  {
    v2 = atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release);
    if (((v2 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
    {
      _dispatch_event_loop_poke(-8, 0, 0);
    }
  }
}

void _dispatch_mgr_thread(uint64_t a1, uint64_t a2, int a3)
{
  if (_dispatch_kevent_workqueue_enabled)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Manager queue invoked with kevent workqueue enabled";
    __break(1u);
    JUMPOUT(0x39800);
  }

  _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
  _dispatch_mgr_priority_init();
  v7 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x40020000000000;
  for (i = qword_E0138; ; i = v4)
  {
    v6 = 1;
    if (!(i >> 53))
    {
      v6 = (i & 0xFFFFFFFC) != 0;
    }

    if (v6)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_E42C0 = i;
      __break(1u);
      JUMPOUT(0x39924);
    }

    v3 = i;
    v4 = i;
    atomic_compare_exchange_strong_explicit(&qword_E0138, &v4, i & 0x7700000001 | v7, memory_order_acquire, memory_order_acquire);
    if (v4 == v3)
    {
      v5 = pthread_self();
      pthread_get_stackaddr_np(v5);
      __memset_chk();
      _dispatch_mgr_invoke();
    }
  }
}

void _dispatch_mgr_priority_init()
{
  v5 = off_E00A0;
  __attr = off_E00A0;
  v3 = 0;
  v2 = pthread_attr_getschedparam(off_E00A0, &v3);
  v7 = v2;
  v6 = 6319;
  if (v2)
  {
    _dispatch_bug(v6, v7);
  }

  __qos_class[1] = v2;
  __qos_class[0] = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(__attr, __qos_class, 0);
  if (dword_E467C > __qos_class[0] && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    pthread_set_qos_class_self_np(dword_E467C, 0);
    v0 = _dispatch_mgr_sched_qos2prio(dword_E467C);
    if (v0 > v3.sched_priority)
    {
      v3.sched_priority = v0;
    }
  }

  if (_dispatch_mgr_sched > v3.sched_priority)
  {
    _dispatch_mgr_priority_apply();
  }
}

void _dispatch_mgr_invoke()
{
  v3 = 0uLL;
  v4 = 0;
  v5 = -4;
  v6 = 0;
  v7 = &v9;
  v8 = 0x100000;
  v18 = _dispatch_thread_getspecific(29);
  v2 = 1;
  if (v18)
  {
    v2 = v18 & 1;
  }

  v20 = v2 & 1;
  v19 = 475;
  if ((v2 & 1) == 0)
  {
    _dispatch_abort(v19, v20);
  }

  if ((v18 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v15 = _dispatch_thread_getspecific(29);
    v1 = 1;
    if (v15)
    {
      v1 = v15 & 1;
    }

    v17 = v1 & 1;
    v16 = 475;
    if ((v1 & 1) == 0)
    {
      _dispatch_abort(v16, v17);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected contents in DDI TSD";
    qword_E42C0 = v15 & 0xFFFFFFFFFFFFFFFELL;
    __break(1u);
    JUMPOUT(0x39D48);
  }

  v21 = &v3;
  v23 = (&v3 & 1) == 0;
  v22 = 443;
  if (&v3)
  {
    _dispatch_abort(v22, v23);
  }

  v0 = _dispatch_thread_setspecific(29, v21);
  while (1)
  {
    _dispatch_mgr_queue_drain(v0);
    if (byte_E4436)
    {
      _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
    }

    v14 = &_dispatch_mgr_q;
    v11 = qword_E0130;
    v12 = qword_E0130;
    v10 = qword_E0130;
    v13 = qword_E0130;
    _dispatch_event_loop_drain(qword_E0130 != 0);
  }
}

void _dispatch_kevent_workqueue_init()
{
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  if (_dispatch_kevent_workqueue_enabled)
  {
    if (_dispatch_mgr_sched_pred != -1)
    {
      dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
    }

    v2 = _dispatch_mgr_sched;
    v1 = 0;
    if (dword_E467C)
    {
      v1 = _pthread_qos_class_encode();
    }

    if (v2 > dword_E4680)
    {
      v1 = v2 | 0x20000000;
    }

    if (v1)
    {
      v0 = _pthread_workqueue_set_event_manager_priority();
      if (v0)
      {
        _dispatch_bug(6573, v0);
      }
    }
  }
}

uint64_t _dispatch_mgr_sched_init(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = off_E00A0;
  v5 = pthread_attr_init(off_E00A0);
  v14 = v5;
  v13 = 6222;
  if (v5)
  {
    _dispatch_bug(v13, v14);
  }

  v4 = pthread_attr_getschedpolicy(v6, &dword_E4684);
  v12 = v4;
  v11 = 6224;
  if (v4)
  {
    _dispatch_bug(v11, v12);
  }

  v3 = pthread_attr_getschedparam(v6, &v7);
  v10 = v3;
  v9 = 6225;
  if (v3)
  {
    _dispatch_bug(v9, v10);
  }

  result = qos_class_main();
  v2 = result;
  if (result == 21)
  {
    v2 = 25;
  }

  if (v2)
  {
    dword_E467C = v2;
    result = _dispatch_mgr_sched_qos2prio(v2);
    v7.sched_priority = result;
  }

  dword_E4680 = v7.sched_priority;
  _dispatch_mgr_sched = v7.sched_priority;
  return result;
}

void _dispatch_root_queue_poke(uint64_t result, unsigned int a2, int a3)
{
  if (*(result + 48))
  {
    v6 = 0;
    if (*result)
    {
      v6 = *result;
    }

    v5 = 1;
    if (v6[2] != (&loc_50310 + 1))
    {
      v4 = 0;
      if (*result)
      {
        v4 = *result;
      }

      v5 = v4[2] == (&loc_50910 + 1);
    }

    if (!v5 || (v3 = 0, atomic_compare_exchange_strong_explicit((result + 112), &v3, a2, memory_order_release, memory_order_relaxed), !v3))
    {
      _dispatch_root_queue_poke_slow(result, a2, a3);
    }
  }
}

void _dispatch_root_queue_poke_slow(uint64_t (***a1)(), signed int a2, int a3)
{
  v62 = a1;
  v61 = a2;
  v60 = a3;
  v59 = a2;
  v58 = 78;
  v74 = &_dispatch_root_queues_pred;
  v73 = 0;
  v72 = _dispatch_root_queues_init_once;
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(v74, v73, v72);
  }

  v71 = 3;
  v70 = v62;
  v69 = v61;
  v9 = 0;
  if (*v62)
  {
    v9 = *v62;
  }

  if (v9[2] == (&loc_50310 + 1))
  {
    v83 = *(v62 + 21);
    v82 = 0;
    v81 = 0;
    if ((v83 & 0x4000000) != 0)
    {
      v81 = v83 & 0x8E000000 | 0xFFLL;
      v82 = (v83 & 0xF000) >> 12;
      v86 = v82 != 0;
      v85 = 523;
      if (!v82)
      {
        _dispatch_abort(v85, v86);
      }
    }

    else
    {
      v81 = v83 & 0x8E0000FF;
      v82 = (v83 & 0xF00) >> 8;
      if (!v82)
      {
        v84 = v81;
LABEL_13:
        v57 = _pthread_workqueue_addthreads();
        v68 = v57;
        v67 = 6912;
        if (v57)
        {
          _dispatch_bug(v67, v68);
        }

        v56 = v57;
        return;
      }
    }

    v84 = v81 | (1 << (v82 + 7));
    goto LABEL_13;
  }

  v8 = 0;
  if (*v62)
  {
    v8 = *v62;
  }

  if (v8[2] == (&loc_50910 + 1))
  {
    v77 = *(v62 + 21);
    v76 = 0;
    v75 = 0;
    if ((v77 & 0x4000000) != 0)
    {
      v75 = v77 & 0x8E000000 | 0xFFLL;
      v76 = (v77 & 0xF000) >> 12;
      v80 = v76 != 0;
      v79 = 523;
      if (!v76)
      {
        _dispatch_abort(v79, v80);
      }
    }

    else
    {
      v75 = v77 & 0x8E0000FF;
      v76 = (v77 & 0xF00) >> 8;
      if (!v76)
      {
        v78 = v75;
LABEL_26:
        v55 = _pthread_workqueue_add_cooperativethreads();
        v66 = v55;
        v65 = 6920;
        if (v55)
        {
          _dispatch_bug(v65, v66);
        }

        v54 = v55;
        return;
      }
    }

    v78 = v75 | (1 << (v76 + 7));
    goto LABEL_26;
  }

  v53 = v62[4];
  v7 = 0;
  if (v53[9])
  {
    v7 = v53[9];
  }

  if (v7)
  {
    while (dispatch_semaphore_signal((v53 + 9)))
    {
      if (!--v59)
      {
        return;
      }
    }
  }

  if (*(v62 + 21) < 0)
  {
    v50 = v59;
    v49 = v59;
    v51 = v59;
    v45 = v59;
    v44 = v59;
    v46 = v59;
    add_explicit = atomic_fetch_add_explicit((v62 + 14), v59, memory_order_relaxed);
    v47 = add_explicit;
    v42 = add_explicit;
    v48 = add_explicit + v59;
  }

  else
  {
    v41 = 0;
    v40 = 0;
    v38 = v59;
    v37 = v59;
    v39 = v59;
    v3 = 0;
    atomic_compare_exchange_strong_explicit((v62 + 14), &v3, v59, memory_order_relaxed, memory_order_relaxed);
    if (v3)
    {
      v41 = v3;
    }

    v36 = v3 == 0;
    v40 = v3 == 0;
    v35 = v40;
    if (v3)
    {
      return;
    }
  }

  v34 = 0;
  v33 = 0;
  v31 = *(v62 + 25);
  v32 = v31;
  v30 = v31;
  v33 = v31;
  while (1)
  {
    if (v33 >= v60)
    {
      v6 = v33 - v60;
    }

    else
    {
      v6 = 0;
    }

    v34 = v6;
    if (v59 > v6)
    {
      v28 = v59 - v34;
      v27 = v59 - v34;
      v29 = v59 - v34;
      v23 = v59 - v34;
      v22 = v59 - v34;
      v24 = v59 - v34;
      v21 = atomic_fetch_add_explicit((v62 + 14), v34 - v59, memory_order_relaxed);
      v25 = v21;
      v20 = v21;
      v26 = v21 - (v59 - v34);
      v59 = v34;
    }

    if (!v59)
    {
      break;
    }

    v19 = v33;
    v18 = 0;
    v16 = v33 - v59;
    v15 = v33 - v59;
    v17 = v33 - v59;
    v4 = v33;
    v5 = v33;
    atomic_compare_exchange_strong_explicit((v62 + 100), &v5, v33 - v59, memory_order_acquire, memory_order_acquire);
    if (v5 != v4)
    {
      v19 = v5;
    }

    v14 = v5 == v33;
    v18 = v5 == v33;
    v33 = v19;
    v13 = v5 == v4;
    if (v5 == v4)
    {
      v12 = v53;
      v11 = 0;
      v10 = &v11;
      if (v62 == &_dispatch_mgr_root_queue)
      {
        v10 = _dispatch_mgr_root_queue_init();
      }

      do
      {
        _dispatch_retain(v62);
        while (1)
        {
          v58 = pthread_create(v10, v12, _dispatch_worker_thread, v62);
          if (!v58)
          {
            break;
          }

          if (v58 != 35)
          {
            v64 = v58;
            v63 = 6979;
            _dispatch_bug(6979, v58);
          }

          _dispatch_temporary_resource_shortage();
        }

        --v59;
      }

      while (v59);
      return;
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(uint64_t a1, unsigned int a2, int a3)
{
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  v7 = 1;
  if (v8[2] != (&loc_50310 + 1))
  {
    v6 = 0;
    if (*a1)
    {
      v6 = *a1;
    }

    v7 = v6[2] == (&loc_50910 + 1);
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 112);
  do
  {
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = a2;
    }

    v3 = v9;
    v4 = v9;
    atomic_compare_exchange_strong_explicit((a1 + 112), &v4, v5, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      v9 = v4;
    }
  }

  while (v4 != v3);
  if (v9 <= 0)
  {
LABEL_16:
    _dispatch_root_queue_poke_slow(a1, a2, a3);
  }
}

void _dispatch_root_queue_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) == 0)
  {
    v3 = *(a1 + 84);
    qword_E4290 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x3AEA0);
  }

  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_root_queue_push(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v20 = _dispatch_thread_getspecific(29);
  if (v20)
  {
    _dispatch_abort(453, (v20 & 1) == 0);
  }

  v12 = 0;
  if (v20)
  {
    v12 = *(v20 + 52);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(v20 + 8);
  v15 = *(a1 + 84) & 0x80000000;
  v11 = 1;
  if (v16)
  {
    v11 = *(a1 + 84) < 0;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = *v20;
  v13 = *(v20 + 16);
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tdeferring item %p, rq %p, qos %d", 7660, v3, a2, a1, a3);
  if (v15)
  {
    *(v20 + 52) = 0;
  }

  if (v16)
  {
    a3 = v13;
    a1 = v14;
    a2 = v16;
LABEL_13:
    v10 = 0;
    if ((*(a1 + 87) & 8) != 0)
    {
      if (*a2 >= 0x1000)
      {
        v9 = 0;
        if (*a2)
        {
          v9 = *a2;
        }

        v8 = 1;
        if (*(v9 + 16) != 1)
        {
          v7 = 0;
          if (*a2)
          {
            v7 = *a2;
          }

          is_timer = 0;
          if (*(v7 + 16) == 19)
          {
            is_timer = _dispatch_source_is_timer(a2);
          }

          v8 = is_timer;
        }

        v21 = v8 & 1;
      }

      else
      {
        v21 = 1;
      }

      v10 = v21 ^ 1;
    }

    if (v10)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x3B24CLL);
    }

    v23 = (*(a1 + 84) & 0xF000u) >> 12;
    if (v23)
    {
      v5 = 0;
      if (a3)
      {
        v5 = a3 != v23;
      }

      v24 = v5;
    }

    else
    {
      v22 = (*(a1 + 84) & 0xF00u) >> 8;
      v4 = 0;
      if (v22)
      {
        v4 = a3 > v22;
      }

      v24 = v4;
    }

    if (v24)
    {
      _dispatch_root_queue_push_override(a1, a2, a3);
    }

    else
    {
      a2[2] = 0;
      _dispatch_thread_setspecific(122, a1 + 48);
      v25 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
      if (v25)
      {
        *(v25 + 16) = a2;
      }

      else
      {
        *(a1 + 104) = a2;
      }

      _dispatch_thread_setspecific(122, 0);
      if (!v25)
      {
        _dispatch_root_queue_poke_and_wakeup(a1, 1u, 0);
      }
    }
  }
}

void _dispatch_root_queue_push_override(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v9 = 0;
  if ((*(a1 + 87) & 0x80) != 0)
  {
    v9 = 2;
  }

  else if ((*(a1 + 87) & 8) != 0)
  {
    v9 = 4;
  }

  v6 = 1;
  if (a3)
  {
    v6 = a3 > 6;
  }

  if (v6)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x3B5B8);
  }

  v15 = 0;
  if ((v9 & 2) != 0)
  {
    v15 = 1;
  }

  else if ((v9 & 4) != 0)
  {
    v15 = 2;
  }

  v8 = &(&_dispatch_root_queues)[16 * (3 * a3 + v15 - 3)];
  v7 = a2;
  v5 = 0;
  if (*a2 >= 0x1000)
  {
    v4 = 0;
    if (*a2)
    {
      v4 = *a2;
    }

    v5 = *(v4 + 16) == 256;
  }

  if (v5)
  {
    v3 = 0;
    if (a1)
    {
      v3 = a1;
    }

    a2[4] = v3;
  }

  else
  {
    v13 = _dispatch_thread_getspecific(22);
    if (v13)
    {
      _dispatch_thread_setspecific(22, *(v13 + 16));
      v12 = v13;
    }

    else
    {
      v12 = _dispatch_continuation_alloc_from_heap();
    }

    v7 = v12;
    *v12 = &unk_DCE20;
    v12[5] = v12;
    v12[7] = a1;
    v12[6] = a2;
    v12[1] = -1;
    v12[3] = -1;
  }

  v7[2] = 0;
  _dispatch_thread_setspecific(122, (v8 + 6));
  v14 = atomic_exchange_explicit((v8 + 6), v7, memory_order_release);
  if (v14)
  {
    *(v14 + 16) = v7;
  }

  else
  {
    v8[13] = v7;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v14)
  {
    _dispatch_root_queue_poke_and_wakeup(v8, 1u, 0);
  }
}

uint64_t *_dispatch_pthread_root_queue_create(const char *a1, int a2, uint64_t a3, const void *a4, _OWORD *a5)
{
  v24 = a1;
  v19 = 0;
  if (a2 < 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  if (a1)
  {
    v18 = _dispatch_strdup_if_mutable(a1);
    if (v18 != v24)
    {
      v19 = 0x200000;
      v24 = v18;
    }
  }

  v17 = _dispatch_object_alloc(_OS_dispatch_queue_pthread_root_vtable, 0x140uLL);
  _dispatch_queue_init(v17, v19, 0xFFFu, 0);
  v20 = v5;
  *(v5 + 72) = v24;
  *(v5 + 56) = 0x60000000000000;
  *(v5 + 84) = 0x80000000;
  *(v5 + 32) = v5 + 120;
  v16 = (v5 + 120);
  _dispatch_root_queue_init_pthread_pool(v5, v13, 0x80000000);
  if (a3)
  {
    __memcpy_chk();
    _dispatch_mgr_priority_raise(v16);
  }

  else
  {
    v15 = pthread_attr_init(v16);
    if (v15)
    {
      _dispatch_bug(7729, v15);
    }
  }

  v14 = pthread_attr_setdetachstate(v16, 2);
  if (v14)
  {
    _dispatch_bug(7732, v14);
  }

  if (a4)
  {
    v16[1].__sig = _dispatch_Block_copy(a4);
  }

  if (a5)
  {
    *&v16[2].__opaque[8] = *a5;
  }

  _dispatch_object_debug(v20, "%s", v6, v7, v8, v9, v10, v11, "_dispatch_pthread_root_queue_create");
  return v20;
}

uint64_t *_dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!*a4 || !*(a4 + 8))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid pthread root queue observer hooks";
    __break(1u);
    JUMPOUT(0x3BCB4);
  }

  return _dispatch_pthread_root_queue_create(a1, a2, a3, a5, a4);
}

BOOL _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    v1 = *(a1 + 80);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3BD40);
  }

  v3 = *(a1 + 56);
  return ((v3 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
}

uint64_t *dispatch_pthread_root_queue_copy_current()
{
  v2 = _dispatch_thread_getspecific(20);
  if (!v2)
  {
    return 0;
  }

  while (v2[3])
  {
    v2 = v2[3];
  }

  v1 = 0;
  if (*v2)
  {
    v1 = *v2;
  }

  if (*(v1 + 16) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v2);
  return v2;
}

void _dispatch_pthread_root_queue_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[4];
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_pthread_root_queue_dispose");
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  pthread_attr_destroy(v8);
  _dispatch_semaphore_dispose(v8[1].__opaque);
  if (v8[1].__sig)
  {
    _Block_release(v8[1].__sig);
  }

  a1[3] = &off_E0600;
  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(uint64_t a1, unsigned int a2, char a3)
{
  if ((*(a1 + 80) & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {
    _dispatch_lane_wakeup(a1, a2, a3);
  }

  else if (*(a1 + 48))
  {
    _dispatch_runloop_queue_poke(a1, a2, a3);
  }

  else
  {
    v3 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) & 0x700000000) >> 32;
    if (v3)
    {
      if (*(a1 + 48))
      {
        _dispatch_runloop_queue_poke(a1, v3, a3);
      }

      if (_dispatch_set_qos_class_enabled)
      {
        _pthread_qos_override_end_direct();
      }
    }

    else if (a3)
    {
      _dispatch_release_2_tailcall(a1);
    }
  }
}

void _dispatch_runloop_queue_poke(uint64_t *a1, unsigned int a2, char a3)
{
  v6 = 0;
  if (*a1)
  {
    v6 = *a1;
  }

  if (*(v6 + 16) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, a1, _dispatch_runloop_queue_handle_init);
  }

  v14 = a2;
  if (!a2)
  {
    v14 = (*(a1 + 21) & 0xF000u) >> 12;
  }

  if (v14 > (*(a1 + 21) & 0xF00u) >> 8)
  {
    v5 = v14;
  }

  else
  {
    v5 = (*(a1 + 21) & 0xF00u) >> 8;
  }

  v8 = a1[7];
  while (1)
  {
    v13 = v8;
    v12 = v5 << 32;
    if ((v8 & 0x700000000uLL) < v12)
    {
      v13 = v8 & 0xFFFFFFF8FFFFFFFFLL | v12;
      if (v8 & 0x1000000000 | v12 & 0x1000000000)
      {
        v13 |= 0x800000000uLL;
      }
    }

    if (v8 == v13)
    {
      break;
    }

    v3 = v8;
    v4 = v8;
    atomic_compare_exchange_strong_explicit((a1 + 7), &v4, v13, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v8 = v4;
    }

    if (v4 == v3)
    {
      v7 = (*(a1 + 21) & 0xF00u) >> 8;
      if (v5 > v7)
      {
        if (_dispatch_set_qos_class_enabled)
        {
          _pthread_qos_override_start_direct();
        }

        if (v8 & 0x700000000uLL) >> 32 > v7 && (_dispatch_set_qos_class_enabled)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  _dispatch_runloop_queue_class_poke(a1);
  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}