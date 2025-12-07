_DWORD *WebKit::RemoteCommandEncoder::finish(void *a1, atomic_uint **a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6DE28);
  }

  ++*(v3 + 16);
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v22 = v6;
  v23 = 1;
  v7 = a1[2];
  ++v7[4];
  (*(*v7 + 112))(&v21, v7, &v22);
  if (v7[4] == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --v7[4];
  }

  v9 = v21;
  if (v21)
  {
    v10 = a1[4];
    atomic_fetch_add((v10 + 8), 1u);
    *buf = v10;
    v11 = *(a1[8] + 8);
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      if (WebKit::RemoteCommandBuffer::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteCommandBuffer::s_heapRef, v8);
      }

      else
      {
        NonCompact = WebKit::RemoteCommandBuffer::operatorNewSlow(0x38);
      }

      v13 = NonCompact;
      WebKit::RemoteCommandBuffer::RemoteCommandBuffer(NonCompact, v9, v3, buf, v11, a3);
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

      v14 = *buf;
      *buf = 0;
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v13);
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }

      goto LABEL_17;
    }

LABEL_35:
    __break(0xC471u);
    JUMPOUT(0x19DB6DDC4);
  }

  v19 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteCommandEncoder::finish(const WebGPU::CommandBufferDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCommandEncoder.cpp 241: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteCommandEncoder::connection(buf, a1);
  v20 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20, v15);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_35;
  }

LABEL_17:
  v16 = v21;
  v21 = 0;
  if (v16)
  {
    if (v16[4] == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      --v16[4];
    }
  }

  if (v23 == 1)
  {
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v15);
}

uint64_t WebKit::RemoteCommandEncoder::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::CommandEncoder::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::CommandEncoder::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 120);

  return v6(a1, v5);
}

void WebKit::RemoteCompositorIntegration::~RemoteCompositorIntegration(WebKit::RemoteCompositorIntegration *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteCompositorIntegration::~RemoteCompositorIntegration(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteCompositorIntegration::destruct(WebKit::RemoteCompositorIntegration *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 6));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteCompositorIntegration::paintCompositedResultsToCanvas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  ++v6[4];
  v7 = *(a1 + 40);
  add = atomic_fetch_add(v7, 1u);
  v9 = *a4;
  *a4 = 0;
  v10 = WTF::fastMalloc(add, 0x20);
  *v10 = &unk_1F10FB7A0;
  v10[1] = v7;
  v10[2] = a2;
  v10[3] = v9;
  v12 = v10;
  (*(*v6 + 32))(v6, a3, &v12);
  result = v12;
  v12 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v6[4] == 1)
  {
    return (*(*v6 + 8))(v6);
  }

  --v6[4];
  return result;
}

void *WebKit::RemoteCompositorIntegration::stopListeningForIPC(WebKit::RemoteCompositorIntegration *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x4Au, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteCompositorIntegration::recreateRenderBuffers(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = *(a1[3] + 8);
  if (!v9)
  {
    __break(0xC471u);
    goto LABEL_32;
  }

  v16 = (v9 + 16);
  ++*(v9 + 16);
  WebKit::WebGPU::ObjectHeap::convertDeviceFromBacking(v9, a7, &v34);
  WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v16, v17);
  v18 = v34;
  if (!v34 || !*(v34 + 1))
  {
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteCompositorIntegration::recreateRenderBuffers(int, int, WebCore::DestinationColorSpace &&, WebCore::AlphaPremultiplication, WebCore::WebGPU::TextureFormat, WebKit::WebGPUIdentifier, CompletionHandler<void (Vector<MachSendRight> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v24, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCompositorIntegration.cpp 89: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    v26 = *(a1[5] + 8);
    if (!v26)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB6E690);
    }

    atomic_fetch_add((v26 + 8), 1u);
    v27 = *(v26 + 32);
    if (v27)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v27, *(v26 + 24), buf);
    }

    else
    {
      *buf = 0;
    }

    if (atomic_fetch_add((v26 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v26 + 8));
      (*(*v26 + 8))(v26);
    }

    v28 = *(*buf + 56);
    while (1)
    {
      v29 = *v28;
      if ((*v28 & 1) == 0)
      {
        break;
      }

      v30 = *v28;
      atomic_compare_exchange_strong_explicit(v28, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v29)
      {
        goto LABEL_23;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v28);
LABEL_23:
    v31 = *buf;
    *buf = 0;
    if (v31)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v31 + 16), v25);
    }

    *(v28 + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v28, v25);
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      *buf = 0uLL;
      v32 = *a8;
      *a8 = 0;
      (*(*v32 + 16))(v32, buf);
      (*(*v32 + 8))(v32);
      result = WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v33);
      v18 = v34;
      v34 = 0;
      if (!v18)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19DB6E670);
  }

  v19 = a1[2];
  ++v19[4];
  (*(*v19 + 16))(buf, v19, a2, a3, a4, a5, a6);
  v20 = *a8;
  *a8 = 0;
  (*(*v20 + 16))(v20, buf);
  (*(*v20 + 8))(v20);
  result = WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v21);
  if (v19[4] == 1)
  {
    result = (*(*v19 + 8))(v19);
  }

  else
  {
    --v19[4];
  }

  v34 = 0;
LABEL_7:
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    return WTF::fastFree(v18, v23);
  }

  return result;
}

uint64_t WebKit::RemoteCompositorIntegration::prepareForDisplay(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = (v4[4] + 1);
  v4[4] = v5;
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(v5, 0x10);
  *v7 = &unk_1F10FB7C8;
  v7[1] = v6;
  v9 = v7;
  (*(*v4 + 24))(v4, a2, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v4[4] == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --v4[4];
  return result;
}

uint64_t WebKit::RemoteCompositorIntegration::updateContentsHeadroom(WebKit::RemoteCompositorIntegration *this, float a2)
{
  v2 = *(this + 2);
  ++v2[4];
  result = (*(*v2 + 48))(v2, a2);
  if (v2[4] == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

void WebKit::RemoteComputePassEncoder::~RemoteComputePassEncoder(WebKit::RemoteComputePassEncoder *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteComputePassEncoder::~RemoteComputePassEncoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteComputePassEncoder::stopListeningForIPC(WebKit::RemoteComputePassEncoder *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x4Bu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::setPipeline(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 8);
  if (v3)
  {
    v4 = (v3 + 16);
    ++*(v3 + 16);
    WebKit::WebGPU::ObjectHeap::convertComputePipelineFromBacking(v3, a2, &v10);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4, v5);
    v7 = v10;
    if (v10)
    {
      v8 = *(v10 + 1);
      if (v8)
      {
        v9 = *(a1 + 16);
        ++v9[4];
        result = (*(*v9 + 16))(v9);
        if (v9[4] == 1)
        {
          result = (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }
      }

      v10 = 0;
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);

        return WTF::fastFree(v7, v8);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::dispatch(WebKit::RemoteComputePassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 24))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::dispatchIndirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v12);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    v9 = v12;
    if (v12)
    {
      v10 = *(v12 + 1);
      if (v10)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 32))(v11, v10, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }
      }

      v12 = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);

        return WTF::fastFree(v9, v10);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::end(WebKit::RemoteComputePassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 40))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::setBindGroup(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v8 = *(*(a1 + 24) + 8);
    if (!v8)
    {
      result = 103;
      __break(0xC471u);
      return result;
    }

    v9 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBindGroupFromBacking(v8, a3, &v18);
    v11 = v18;
    if (!v18)
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    }

    v12 = *(v18 + 1);
    if (v12)
    {
      ++v12[4];
    }

    v18 = 0;
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v10);
    }

    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    if (v12)
    {
      v14 = *(a1 + 16);
      ++v14[4];
      result = (*(*v14 + 48))(v14, a2, v12, a5);
      if (v14[4] == 1)
      {
        result = (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[4];
      }

      v15 = v12[4] - 1;
      if (v12[4] == 1)
      {
        v16 = *(*v12 + 8);

        return v16(v12);
      }

LABEL_16:
      v12[4] = v15;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 48))(v12, a2, 0, a5);
    v15 = v12[4] - 1;
    if (v12[4] != 1)
    {
      goto LABEL_16;
    }

    v17 = *(*v12 + 8);

    return v17(v12);
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::pushDebugGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 64))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::popDebugGroup(WebKit::RemoteComputePassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 72))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::insertDebugMarker(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 80))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteComputePassEncoder::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::ComputePassEncoder::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::ComputePassEncoder::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 88);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteComputePipeline::RemoteComputePipeline(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB6D8;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x4Cu, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteComputePipeline::~RemoteComputePipeline(WebKit::RemoteComputePipeline *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteComputePipeline::~RemoteComputePipeline(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteComputePipeline::stopListeningForIPC(WebKit::RemoteComputePipeline *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x4Cu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

_DWORD *WebKit::RemoteComputePipeline::getBindGroupLayout(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_20;
  }

  ++*(v3 + 16);
  v6 = a1[2];
  ++v6[4];
  (*(*v6 + 16))(&v17, v6, a2);
  if (v6[4] == 1)
  {
    (*(*v6 + 8))(v6);
  }

  else
  {
    --v6[4];
  }

  v8 = v17;
  v9 = a1[4];
  atomic_fetch_add((v9 + 8), 1u);
  v16 = v9;
  v10 = *(a1[5] + 8);
  if (!v10)
  {
    __break(0xC471u);
LABEL_20:
    JUMPOUT(0x19DB6F8A8);
  }

  atomic_fetch_add(v10 + 2, 1u);
  v11 = WebKit::RemoteBindGroupLayout::operator new(0x38, v7);
  WebKit::RemoteBindGroupLayout::RemoteBindGroupLayout(v11, v8, v3, &v16, v10, a3);
  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v11);
  if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 8))(v11);
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[4];
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v13);
}

uint64_t WebKit::RemoteComputePipeline::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::ComputePipeline::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::ComputePipeline::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteDevice::RemoteDevice(uint64_t a1, atomic_ullong *a2, unint64_t a3, _DWORD *a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB700;
  ++a4[4];
  *(a1 + 16) = a4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 8), a5);
  v16 = *(a5 + 8);
  atomic_fetch_add(v16, 1u);
  *(a1 + 24) = v16;
  v17 = *a6;
  atomic_fetch_add((*a6 + 8), 1u);
  *(a1 + 32) = v17;
  *(a1 + 40) = a7;
  (*(*a4 + 16))(&v31, a4);
  v19 = v31;
  if (WebKit::RemoteQueue::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteQueue::s_heapRef, v18);
  }

  else
  {
    NonCompact = WebKit::RemoteQueue::operatorNewSlow(0x38);
  }

  *(a1 + 48) = WebKit::RemoteQueue::RemoteQueue(NonCompact, v19, a5, a6, a3, a8);
  v21 = v31;
  v31 = 0;
  if (v21)
  {
    if (v21[4] == 1)
    {
      (*(*v21 + 8))(v21);
    }

    else
    {
      --v21[4];
    }
  }

  v22 = a2[24];
  while (1)
  {
    v23 = *(v22 + 8);
    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = *(v22 + 8);
    atomic_compare_exchange_strong_explicit((v22 + 8), &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v22 + 8));
LABEL_11:
  *(a1 + 56) = v22;
  while (1)
  {
    v25 = *(v22 + 8);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(v22 + 8);
    atomic_compare_exchange_strong_explicit((v22 + 8), &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v26 == v25)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v22 + 8));
LABEL_16:
  *(a1 + 64) = v22;
  WTF::MachSendRight::MachSendRight((a1 + 72), (a2 + 12));
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  v28 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2, v27);
  *(a1 + 152) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v28);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v29 = *(a3 + 16);
  atomic_fetch_add(v29, 1u);
  *(a1 + 160) = v29;
  IPC::StreamServerConnection::startReceivingMessages(*(a1 + 32), a1, 0x4Du, *(a1 + 40));
  return a1;
}

void WebKit::RemoteDevice::~RemoteDevice(WebKit::RemoteDevice *this, void *a2)
{
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  WebKit::SharedVideoFrameReader::~SharedVideoFrameReader((this + 64));
  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v5);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[4];
    }
  }
}

{
  WebKit::RemoteDevice::~RemoteDevice(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteDevice::connection(WebKit::RemoteDevice *this, uint64_t a2)
{
  result = *(a2 + 152);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a2 + 144), &v9), v9))
  {
    v5 = *(v9 + 56);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_10:
    v8 = v9;
    *this = v5;
    v9 = 0;
    if (v8)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16), v4);
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

_DWORD *WebKit::RemoteDevice::createXRBinding(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 8);
  if (!v2)
  {
    __break(0xC471u);
    goto LABEL_25;
  }

  ++*(v2 + 16);
  (*(**(a1 + 16) + 32))(&v21);
  v6 = *(a1 + 152);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, *(a1 + 144), &v20);
  }

  else
  {
    v20 = 0;
  }

  v7 = *(*(a1 + 160) + 8);
  if (!v7)
  {
    __break(0xC471u);
LABEL_25:
    JUMPOUT(0x19DB700C4);
  }

  v9 = v20;
  v8 = v21;
  atomic_fetch_add(v7 + 2, 1u);
  v10 = *(a1 + 32);
  atomic_fetch_add((v10 + 8), 1u);
  v19 = v10;
  if (WebKit::RemoteXRBinding::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteXRBinding::s_heapRef, v5);
  }

  else
  {
    NonCompact = WebKit::RemoteXRBinding::operatorNewSlow(0x48);
  }

  v12 = NonCompact;
  WebKit::RemoteXRBinding::RemoteXRBinding(NonCompact, v9, v8, v2, v7, &v19, a2);
  v14 = v19;
  v19 = 0;
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v15 + 16), v13);
  }

  WebKit::WebGPU::ObjectHeap::addObject(v2, a2, v12);
  if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (v17[4] == 1)
    {
      (*(*v17 + 8))(v17);
    }

    else
    {
      --v17[4];
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v2 + 16), v16);
}

_DWORD *WebKit::RemoteDevice::createBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB70450);
  }

  ++*(v3 + 16);
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 18);
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = 1;
  (*(**(a1 + 16) + 40))(&v25);
  v12 = v25;
  if (v25)
  {
    v13 = *(a1 + 32);
    atomic_fetch_add((v13 + 8), 1u);
    *buf = v13;
    v14 = *(*(a1 + 160) + 8);
    if (v14)
    {
      atomic_fetch_add(v14 + 2, 1u);
      v15 = *(a2 + 18);
      if (WebKit::RemoteBuffer::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteBuffer::s_heapRef, v11);
      }

      else
      {
        NonCompact = WebKit::RemoteBuffer::operatorNewSlow(0x40);
      }

      v17 = NonCompact;
      WebKit::RemoteBuffer::RemoteBuffer(NonCompact, v12, v3, buf, v14, v15, a3);
      if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      v18 = *buf;
      *buf = 0;
      if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18 + 2);
        (*(*v18 + 8))(v18);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v17);
      if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17 + 2);
        (*(*v17 + 8))(v17);
      }

      goto LABEL_15;
    }

LABEL_32:
    __break(0xC471u);
    JUMPOUT(0x19DB703ECLL);
  }

  v23 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createBuffer(const WebGPU::BufferDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 153: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v24 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24, v19);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_32;
  }

LABEL_15:
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    if (v20[4] == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --v20[4];
    }
  }

  if (v30 == 1)
  {
    v21 = v26;
    v26 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v19);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v19);
}

_DWORD *WebKit::RemoteDevice::createTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB708E4);
  }

  ++*(v3 + 4);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v3, a2, &v28);
  if (v34)
  {
    (*(**(a1 + 16) + 48))(&v27);
    if (!v27)
    {
      v24 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createTexture(const WebGPU::TextureDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v24, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 165: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v25 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25, v16);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB70830);
      }

      goto LABEL_18;
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(a1 + 144), buf);
    }

    else
    {
      *buf = 0;
    }

    v8 = *(*(a1 + 160) + 8);
    if (v8)
    {
      v9 = *buf;
      atomic_fetch_add(v8 + 2, 1u);
      v10 = v27;
      v11 = *(a1 + 32);
      atomic_fetch_add((v11 + 8), 1u);
      v26 = v11;
      v27 = 0;
      v12 = WebKit::RemoteTexture::operator new(0x48, v6);
      WebKit::RemoteTexture::RemoteTexture(v12, v9, v8, v10, v3, &v26, a3);
      v14 = v26;
      v26 = 0;
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      if (v10[4] == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --v10[4];
      }

      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
      }

      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v15 + 16), v13);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v12);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

LABEL_18:
      v17 = v27;
      v27 = 0;
      if (v17)
      {
        if (v17[4] == 1)
        {
          (*(*v17 + 8))(v17);
        }

        else
        {
          --v17[4];
        }
      }

      goto LABEL_21;
    }

    __break(0xC471u);
LABEL_48:
    JUMPOUT(0x19DB707E0);
  }

  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createTexture(const WebGPU::TextureDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 162: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v23 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23, v16);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

LABEL_21:
  if (v34 == 1)
  {
    v18 = v32;
    if (v32)
    {
      v32 = 0;
      v33 = 0;
      WTF::fastFree(v18, v16);
    }

    if (!v31)
    {
      v19 = v29;
      if (v29)
      {
        v29 = 0;
        v30 = 0;
        WTF::fastFree(v19, v16);
      }
    }

    v31 = -1;
    v20 = v28;
    v28 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v16);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v3 + 4, v16);
}

_DWORD *WebKit::RemoteDevice::createSampler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB70C68);
  }

  ++*(v3 + 16);
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a2 + 12);
  v8 = *(a2 + 24);
  v23 = v6;
  v24 = *(a2 + 8);
  v25 = v7;
  v26 = *(a2 + 16);
  v27 = v8;
  v28 = 1;
  (*(**(a1 + 16) + 56))(&v22);
  v10 = v22;
  if (v22)
  {
    v11 = *(a1 + 32);
    atomic_fetch_add((v11 + 8), 1u);
    *buf = v11;
    v12 = *(*(a1 + 160) + 8);
    if (v12)
    {
      atomic_fetch_add(v12 + 2, 1u);
      if (WebKit::RemoteSampler::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSampler::s_heapRef, v9);
      }

      else
      {
        NonCompact = WebKit::RemoteSampler::operatorNewSlow(0x38);
      }

      v14 = NonCompact;
      WebKit::RemoteSampler::RemoteSampler(NonCompact, v10, v3, buf, v12, a3);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

      v15 = *buf;
      *buf = 0;
      if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v14);
      if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      goto LABEL_15;
    }

LABEL_32:
    __break(0xC471u);
    JUMPOUT(0x19DB70C04);
  }

  v20 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createSampler(const WebGPU::SamplerDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 177: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v21 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21, v16);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_32;
  }

LABEL_15:
  v17 = v22;
  v22 = 0;
  if (v17)
  {
    if (v17[4] == 1)
    {
      (*(*v17 + 8))(v17);
    }

    else
    {
      --v17[4];
    }
  }

  if (v28 == 1)
  {
    v18 = v23;
    v23 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v16);
}

void WebKit::RemoteDevice::importExternalTextureFromVideoFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  LOBYTE(v47) = 0;
  v51 = 0;
  if (*(a2 + 80) == 1)
  {
    v47 = *(a2 + 32);
    v48 = *(a2 + 48);
    LOBYTE(v49) = 0;
    v50 = -1;
    v6 = *(a2 + 72);
    if (v6 <= 1)
    {
      if (*(a2 + 72))
      {
        v49 = *(a2 + 56);
        v7 = 1;
      }

      else
      {
        v7 = 0;
        *&v49 = 0;
      }
    }

    else if (v6 == 2)
    {
      WTF::MachSendRight::MachSendRight(&v49, (a2 + 56));
      v7 = *(a2 + 72);
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_19;
      }

      *&v49 = *(a2 + 56);
      v7 = 3;
    }

    v50 = v7;
LABEL_19:
    v51 = 1;
    cf = 0;
    WebKit::SharedVideoFrameReader::read(a1 + 64, &v47, &v53);
    v16 = v53;
    if (v53)
    {
      v17 = (*(*v53 + 56))(v53);
      v18 = v17;
      if (v17)
      {
        CFRetain(v17);
      }

      cf = v18;
      v53 = 0;
      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }
    }

    goto LABEL_24;
  }

  cf = 0;
  if (*(a2 + 16) == 1)
  {
    v8 = *(a1 + 152);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(a1 + 144), &v53);
      v9 = v53;
      if (v53)
      {
        v10 = *(a2 + 16);
        if ((v10 & 1) == 0)
        {
          __break(1u);
        }

        v11 = *(a2 + 8);
        v12 = WTF::fastMalloc(v10, 0x10);
        *v12 = &unk_1F10FB7F0;
        v12[1] = &cf;
        *buf = v12;
        WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(v9, v11, buf);
        v14 = *buf;
        *buf = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = v53;
        v53 = 0;
        if (v15)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v15 + 2, v13);
        }
      }
    }
  }

LABEL_24:
  v19 = *(*(a1 + 24) + 8);
  if (!v19)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB713DCLL);
  }

  ++*(v19 + 16);
  v20 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v21 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  if (v20)
  {
    CFRetain(v20);
    v22 = *(a2 + 24);
    v53 = v21;
    v54 = v20;
    v55 = 2;
    v56 = v22;
    v57 = 1;
    CFRelease(v20);
    if ((v57 & 1) == 0)
    {
      v23 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::importExternalTextureFromVideoFrame(const WebGPU::ExternalTextureDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 218: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v25 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25, v24);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        goto LABEL_84;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v26 = *(a2 + 24);
    v53 = v21;
    v54 = 0;
    v55 = 2;
    v56 = v26;
    v57 = 1;
  }

  (*(**(a1 + 16) + 64))(&v45);
  v28 = v45;
  if (v45)
  {
    v29 = *(a1 + 32);
    atomic_fetch_add((v29 + 8), 1u);
    v30 = *(*(a1 + 160) + 8);
    if (!v30)
    {
      __break(0xC471u);
LABEL_84:
      JUMPOUT(0x19DB70F6CLL);
    }

    atomic_fetch_add((v30 + 8), 1u);
    if (WebKit::RemoteExternalTexture::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteExternalTexture::s_heapRef, v27);
    }

    else
    {
      NonCompact = WebKit::RemoteExternalTexture::operatorNewSlow(0);
    }

    v32 = NonCompact;
    *(NonCompact + 8) = 1;
    *NonCompact = &unk_1F10FB728;
    while (1)
    {
      v33 = *(v28 + 8);
      if ((v33 & 1) == 0)
      {
        break;
      }

      v34 = *(v28 + 8);
      atomic_compare_exchange_strong_explicit((v28 + 8), &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v34 == v33)
      {
        goto LABEL_47;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v28 + 8));
LABEL_47:
    *(v32 + 16) = v28;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v19 + 8), v19);
    v35 = *(v19 + 8);
    atomic_fetch_add(v35, 1u);
    *(v32 + 24) = v35;
    *(v32 + 32) = v29;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v30 + 16), v30);
    v36 = *(v30 + 16);
    atomic_fetch_add(v36, 1u);
    *(v32 + 40) = v36;
    *(v32 + 48) = a3;
    v37 = *(v32 + 32);
    atomic_fetch_add(v37 + 2, 1u);
    IPC::StreamServerConnection::startReceivingMessages(v37, v32, 0x4Fu, *(v32 + 48));
    if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v37 + 2);
      (*(*v37 + 8))(v37);
    }

    if (atomic_fetch_add((v30 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v30 + 8));
      (*(*v30 + 8))(v30);
    }

    WebKit::WebGPU::ObjectHeap::addObject(v19, a3, v32);
    if (atomic_fetch_add((v32 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v32 + 8));
      (*(*v32 + 8))(v32);
    }
  }

  else
  {
    v43 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteDevice::importExternalTextureFromVideoFrame(const WebGPU::ExternalTextureDescriptor &, WebGPUIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v43, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 221: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    WebKit::RemoteDevice::connection(buf, a1);
    v44 = *buf;
    if (*buf)
    {
      *(*buf + 94) = 1;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v44, v24);
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB71334);
    }
  }

  v38 = v45;
  v45 = 0;
  if (v38)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v38 + 8), v24);
  }

LABEL_56:
  if (v57 == 1)
  {
    if (v55 > 1u)
    {
      if (v55 == 2)
      {
        v40 = v54;
        v54 = 0;
        if (v40)
        {
          CFRelease(v40);
        }
      }
    }

    else if (v55)
    {
      v39 = v54;
      v54 = 0;
      if (v39)
      {
        if (atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v39 + 2);
          (*(*v39 + 8))(v39);
        }
      }
    }

    v55 = -1;
    v41 = v53;
    v53 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v24);
    }
  }

  WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v19 + 16), v24);
  v42 = cf;
  cf = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  if (v51 == 1 && v50 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&v49);
  }
}

atomic_uchar *WebKit::RemoteDevice::updateExternalTexture(void *a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a1[3] + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertExternalTextureFromBacking(v4, a2, &v26);
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    if (v27)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v25, v27, v26);
      v9 = v25;
      v25 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v9 + 8), v8);
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v25, v27, v26);
        (*(*v25 + 16))(v25);
        v10 = v25;
        v25 = 0;
        if (v10)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
        }

        v11 = a1[19];
        if (v11)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v11, a1[18], &v25);
          v14 = v25;
          if (v25)
          {
            cf = 0;
            v15 = *a3;
            v16 = v26;
            if (v27)
            {
              v17 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v27);
            }

            else
            {
              v17 = 0;
            }

            v18 = WTF::fastMalloc(v13, 0x20);
            *v18 = &unk_1F10FB818;
            v18[1] = v16;
            v18[2] = v17;
            v18[3] = &cf;
            v23 = v18;
            WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(v14, v15, &v23);
            v19 = v23;
            v23 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            if (v27)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v23, v27, v26);
              if (v23)
              {
                (*(*v23 + 32))(v23, cf);
                v20 = v23;
                v23 = 0;
                if (v20)
                {
                  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v20 + 8), v8);
                }
              }
            }

            v21 = cf;
            cf = 0;
            if (v21)
            {
              CFRelease(v21);
            }

            v22 = v25;
            v25 = 0;
            if (v22)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v22 + 16), v8);
            }
          }
        }
      }
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v8);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::RemoteDevice::createBindGroupLayout(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB719F8);
  }

  ++*(v3 + 16);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(a2, &v22);
  if (v25)
  {
    (*(**(a1 + 16) + 80))(&v21);
    v7 = v21;
    if (!v21)
    {
      v19 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createBindGroupLayout(const WebGPU::BindGroupLayoutDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 255: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v20 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20, v12);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB71954);
      }

      goto LABEL_12;
    }

    v8 = *(a1 + 32);
    atomic_fetch_add((v8 + 8), 1u);
    *buf = v8;
    v9 = *(*(a1 + 160) + 8);
    if (v9)
    {
      atomic_fetch_add(v9 + 2, 1u);
      v10 = WebKit::RemoteBindGroupLayout::operator new(0x38, v6);
      WebKit::RemoteBindGroupLayout::RemoteBindGroupLayout(v10, v7, v3, buf, v9, a3);
      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v11 = *buf;
      *buf = 0;
      if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v10);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }

LABEL_12:
      v13 = v21;
      v21 = 0;
      if (v13)
      {
        if (v13[4] == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --v13[4];
        }
      }

      goto LABEL_15;
    }

    __break(0xC471u);
LABEL_37:
    JUMPOUT(0x19DB71904);
  }

  v17 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createBindGroupLayout(const WebGPU::BindGroupLayoutDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 252: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v18 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18, v12);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_37;
  }

LABEL_15:
  if (v25 == 1)
  {
    v14 = v23;
    if (v23)
    {
      v23 = 0;
      v24 = 0;
      WTF::fastFree(v14, v12);
    }

    v15 = v22;
    v22 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v12);
}

_DWORD *WebKit::RemoteDevice::createPipelineLayout(uint64_t a1, atomic_uint **a2, uint64_t a3, __n128 a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB71E64);
  }

  ++*(v4 + 16);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(&v25, v4, a2, a4);
  if (v27)
  {
    (*(**(a1 + 16) + 88))(&v24);
    v8 = v24;
    if (!v24)
    {
      v22 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createPipelineLayout(const WebGPU::PipelineLayoutDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 267: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v23 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23, v16);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB71DC0);
      }

      goto LABEL_14;
    }

    v9 = *(a1 + 32);
    atomic_fetch_add((v9 + 8), 1u);
    v10 = *(*(a1 + 160) + 8);
    if (v10)
    {
      atomic_fetch_add((v10 + 8), 1u);
      if (WebKit::RemotePipelineLayout::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemotePipelineLayout::s_heapRef, v7);
      }

      else
      {
        NonCompact = WebKit::RemotePipelineLayout::operatorNewSlow(0);
      }

      v12 = NonCompact;
      *(NonCompact + 8) = 1;
      *NonCompact = &unk_1F10FB778;
      ++v8[4];
      *(NonCompact + 16) = v8;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 8), v4);
      v13 = *(v4 + 8);
      atomic_fetch_add(v13, 1u);
      *(v12 + 24) = v13;
      *(v12 + 32) = v9;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v10 + 16), v10);
      v14 = *(v10 + 16);
      atomic_fetch_add(v14, 1u);
      *(v12 + 40) = v14;
      *(v12 + 48) = a3;
      v15 = *(v12 + 32);
      atomic_fetch_add(v15 + 2, 1u);
      IPC::StreamServerConnection::startReceivingMessages(v15, v12, 0x6Au, *(v12 + 48));
      if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v10 + 8));
        (*(*v10 + 8))(v10);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v4, a3, v12);
      if (atomic_fetch_add((v12 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v12 + 8));
        (*(*v12 + 8))(v12);
      }

LABEL_14:
      v17 = v24;
      v24 = 0;
      if (v17)
      {
        if (v17[4] == 1)
        {
          (*(*v17 + 8))(v17);
        }

        else
        {
          --v17[4];
        }
      }

      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x19DB71D70);
  }

  v20 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createPipelineLayout(const WebGPU::PipelineLayoutDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 264: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v21 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21, v16);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_40;
  }

LABEL_17:
  if (v27 == 1)
  {
    if (v26[16] == 1)
    {
      WTF::Vector<WTF::Ref<WebCore::WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebCore::WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v16);
    }

    v18 = v25;
    v25 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v4 + 16), v16);
}

_DWORD *WebKit::RemoteDevice::createBindGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB72284);
  }

  ++*(v3 + 16);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v3, a2, &v23);
  if (v26)
  {
    (*(**(a1 + 16) + 96))(&v22);
    v7 = v22;
    if (!v22)
    {
      v20 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createBindGroup(const WebGPU::BindGroupDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 279: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v21 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21, v13);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB721E0);
      }

      goto LABEL_14;
    }

    v8 = *(a1 + 32);
    atomic_fetch_add((v8 + 8), 1u);
    *buf = v8;
    v9 = *(*(a1 + 160) + 8);
    if (v9)
    {
      atomic_fetch_add(v9 + 2, 1u);
      if (WebKit::RemoteBindGroup::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteBindGroup::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::RemoteBindGroup::operatorNewSlow(0x38);
      }

      v11 = NonCompact;
      WebKit::RemoteBindGroup::RemoteBindGroup(NonCompact, v7, v3, buf, v9, a3);
      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v12 = *buf;
      *buf = 0;
      if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v11);
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

LABEL_14:
      v14 = v22;
      v22 = 0;
      if (v14)
      {
        if (v14[4] == 1)
        {
          (*(*v14 + 8))(v14);
        }

        else
        {
          --v14[4];
        }
      }

      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_41:
    JUMPOUT(0x19DB72190);
  }

  v18 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createBindGroup(const WebGPU::BindGroupDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 276: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v19 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19, v13);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_41;
  }

LABEL_17:
  if (v26 == 1)
  {
    WTF::Vector<WebCore::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
    v15 = v24;
    v24 = 0;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v13);
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v13);
}

_DWORD *WebKit::RemoteDevice::createShaderModule(uint64_t a1, atomic_uint **a2, uint64_t a3, __n128 a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB7269CLL);
  }

  ++v4[4];
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v4, a2, &v24, a4);
  if (v26)
  {
    (*(**(a1 + 16) + 104))(&v23);
    v8 = v23;
    if (!v23)
    {
      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createShaderModule(const WebGPU::ShaderModuleDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 291: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v22 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22, v14);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB725F8);
      }

      goto LABEL_14;
    }

    v9 = *(a1 + 32);
    atomic_fetch_add((v9 + 8), 1u);
    *buf = v9;
    v10 = *(*(a1 + 160) + 8);
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
      if (WebKit::RemoteShaderModule::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteShaderModule::s_heapRef, v7);
      }

      else
      {
        NonCompact = WebKit::RemoteShaderModule::operatorNewSlow(0x38);
      }

      v12 = NonCompact;
      WebKit::RemoteShaderModule::RemoteShaderModule(NonCompact, v8, v4, buf, v10, a3);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }

      v13 = *buf;
      *buf = 0;
      if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v4, a3, v12);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

LABEL_14:
      v15 = v23;
      v23 = 0;
      if (v15)
      {
        if (v15[4] == 1)
        {
          (*(*v15 + 8))(v15);
        }

        else
        {
          --v15[4];
        }
      }

      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_41:
    JUMPOUT(0x19DB725A8);
  }

  v19 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createShaderModule(const WebGPU::ShaderModuleDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 288: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v20 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20, v14);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_41;
  }

LABEL_17:
  if (v26 == 1)
  {
    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v14);
    v16 = v24.n128_u64[1];
    v24.n128_u64[1] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v24.n128_u64[0];
    v24.n128_u64[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4 + 4, v14);
}

_DWORD *WebKit::RemoteDevice::createComputePipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB72B00);
  }

  ++v3[4];
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v3, a2, &v24);
  if (v30)
  {
    (*(**(a1 + 16) + 112))(&v23);
    v7 = v23;
    if (!v23)
    {
      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createComputePipeline(const WebGPU::ComputePipelineDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 304: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v22 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22, v12);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB72A5CLL);
      }

      goto LABEL_12;
    }

    v8 = *(a1 + 32);
    atomic_fetch_add((v8 + 8), 1u);
    *buf = v8;
    v9 = *(*(a1 + 160) + 8);
    if (v9)
    {
      atomic_fetch_add(v9 + 2, 1u);
      v10 = WebKit::RemoteComputePipeline::operator new(0x38, v6);
      WebKit::RemoteComputePipeline::RemoteComputePipeline(v10, v7, v3, buf, v9, a3);
      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v11 = *buf;
      *buf = 0;
      if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v10);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }

LABEL_12:
      v13 = v23;
      v23 = 0;
      if (v13)
      {
        if (v13[4] == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --v13[4];
        }
      }

      goto LABEL_15;
    }

    __break(0xC471u);
LABEL_45:
    JUMPOUT(0x19DB72A0CLL);
  }

  v19 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createComputePipeline(const WebGPU::ComputePipelineDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 301: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v20 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20, v12);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

LABEL_15:
  if (v30 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v12);
    if (v28 == 1)
    {
      v14 = v27;
      v27 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v12);
        }
      }
    }

    v15 = v26;
    v26 = 0;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v12);
    }

    v16 = v25;
    v25 = 0;
    if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v12);
    }

    v17 = v24;
    v24 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v3 + 4, v12);
}

_DWORD *WebKit::RemoteDevice::createRenderPipeline(uint64_t a1, const WebKit::WebGPU::RenderPipelineDescriptor *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB72EC4);
  }

  ++*(v3 + 4);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v21, v3, a2);
  if (v22)
  {
    v6 = (*(**(a1 + 16) + 120))(&v20);
    v8 = v20;
    if (!v20)
    {
      v18 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createRenderPipeline(const WebGPU::RenderPipelineDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 316: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v19 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19, v13);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB72E20);
      }

      goto LABEL_12;
    }

    v9 = *(a1 + 32);
    atomic_fetch_add((v9 + 8), 1u);
    *buf = v9;
    v10 = *(*(a1 + 160) + 8);
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
      v11 = WebKit::RemoteRenderPipeline::operator new(v6, v7);
      WebKit::RemoteRenderPipeline::RemoteRenderPipeline(v11, v8, v3, buf, v10, a3);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }

      v12 = *buf;
      *buf = 0;
      if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v11);
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

LABEL_12:
      v14 = v20;
      v20 = 0;
      if (v14)
      {
        if (v14[4] == 1)
        {
          (*(*v14 + 8))(v14);
        }

        else
        {
          --v14[4];
        }
      }

      goto LABEL_15;
    }

    __break(0xC471u);
LABEL_33:
    JUMPOUT(0x19DB72DD0);
  }

  v16 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createRenderPipeline(const WebGPU::RenderPipelineDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 313: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v17 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17, v13);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

LABEL_15:
  if (v22 == 1)
  {
    WebCore::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(v21, v13);
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v3 + 4, v13);
}

_DWORD *WebKit::RemoteDevice::createComputePipelineAsync(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1[3] + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_26;
  }

  ++v4[4];
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v4, a2, &v24);
  if (v30)
  {
    v8 = a1[2];
    v9 = *a4;
    *a4 = 0;
    ++v4[4];
    v10 = a1[4];
    atomic_fetch_add((v10 + 8), 1u);
    v11 = *(a1[20] + 8);
    if (v11)
    {
      v12 = WTF::fastMalloc(atomic_fetch_add((v11 + 8), 1u), 0x30);
      *v12 = &unk_1F10FB840;
      v12[1] = v9;
      v12[2] = v4;
      v12[3] = v10;
      v12[4] = v11;
      v12[5] = a3;
      v23 = v12;
      (*(*v8 + 128))(v8, &v24, &v23);
      v14 = v23;
      v23 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_9;
    }

    __break(0xC471u);
LABEL_26:
    JUMPOUT(0x19DB7319CLL);
  }

  v15 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  v23 = v15;
  v16 = *a4;
  *a4 = 0;
  (*(*v16 + 16))(v16, 0, &v23);
  (*(*v16 + 8))(v16);
  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

LABEL_9:
  if (v30 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v13);
    if (v28 == 1)
    {
      v18 = v27;
      v27 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v13);
        }
      }
    }

    v19 = v26;
    v26 = 0;
    if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, v13);
    }

    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20);
      WTF::fastFree(v20, v13);
    }

    v21 = v24;
    v24 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v13);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4 + 4, v13);
}

_DWORD *WebKit::RemoteDevice::createRenderPipelineAsync(void *a1, const WebKit::WebGPU::RenderPipelineDescriptor *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1[3] + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  ++*(v4 + 4);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v20, v4, a2);
  if (v21)
  {
    v8 = a1[2];
    v9 = *a4;
    *a4 = 0;
    ++*(v4 + 4);
    v10 = a1[4];
    atomic_fetch_add((v10 + 8), 1u);
    v11 = *(a1[20] + 8);
    if (v11)
    {
      v12 = WTF::fastMalloc(atomic_fetch_add((v11 + 8), 1u), 0x30);
      *v12 = &unk_1F10FB868;
      v12[1] = v9;
      v12[2] = v4;
      v12[3] = v10;
      v12[4] = v11;
      v12[5] = a3;
      v19 = v12;
      (*(*v8 + 136))(v8, v20, &v19);
      v14 = v19;
      v19 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_9;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DB733D4);
  }

  v15 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  v19 = v15;
  v16 = *a4;
  *a4 = 0;
  (*(*v16 + 16))(v16, 0, &v19);
  (*(*v16 + 8))(v16);
  v17 = v19;
  v19 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

LABEL_9:
  if (v21 == 1)
  {
    WebCore::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(v20, v13);
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4 + 4, v13);
}

_DWORD *WebKit::RemoteDevice::createCommandEncoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB73838);
  }

  ++*(v3 + 16);
  LOBYTE(v28) = 0;
  v29 = 0;
  if (*(a2 + 8) == 1)
  {
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v28 = v6;
    v29 = 1;
  }

  (*(**(a1 + 16) + 144))(&v27);
  if (v27)
  {
    v8 = *(a1 + 152);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(a1 + 144), buf);
    }

    else
    {
      *buf = 0;
    }

    v9 = *(*(a1 + 160) + 8);
    if (v9)
    {
      v10 = *buf;
      atomic_fetch_add((v9 + 8), 1u);
      v11 = v27;
      v12 = *(a1 + 32);
      atomic_fetch_add((v12 + 8), 1u);
      if (WebKit::RemoteCommandEncoder::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteCommandEncoder::s_heapRef, v7);
      }

      else
      {
        NonCompact = WebKit::RemoteCommandEncoder::operatorNewSlow(0);
      }

      v14 = NonCompact;
      *(NonCompact + 8) = 1;
      *NonCompact = &unk_1F10FB660;
      ++v11[4];
      *(NonCompact + 16) = v11;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 8), v3);
      v15 = *(v3 + 8);
      atomic_fetch_add(v15, 1u);
      *(v14 + 24) = v15;
      *(v14 + 32) = v12;
      *(v14 + 40) = a3;
      *(v14 + 48) = v10;
      v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((v10 + 16), v15);
      *(v14 + 56) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v16);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 16), v9);
      v17 = *(v9 + 16);
      atomic_fetch_add(v17, 1u);
      *(v14 + 64) = v17;
      v18 = *(v14 + 32);
      atomic_fetch_add(v18 + 2, 1u);
      IPC::StreamServerConnection::startReceivingMessages(v18, v14, 0x49u, *(v14 + 40));
      if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18 + 2);
        (*(*v18 + 8))(v18);
      }

      if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v9 + 8));
        (*(*v9 + 8))(v9);
      }

      v20 = *buf;
      *buf = 0;
      if (v20)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v20 + 16), v19);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v14);
      if (atomic_fetch_add((v14 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v14 + 8));
        (*(*v14 + 8))(v14);
      }

      goto LABEL_21;
    }

LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x19DB737D4);
  }

  v25 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createCommandEncoder(const std::optional<WebGPU::CommandEncoderDescriptor> &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v25, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 371: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v26 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v26, v21);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_39;
  }

LABEL_21:
  v22 = v27;
  v27 = 0;
  if (v22)
  {
    if (v22[4] == 1)
    {
      (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[4];
    }
  }

  if (v29 == 1)
  {
    v23 = v28;
    v28 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v21);
}

_DWORD *WebKit::RemoteDevice::createRenderBundleEncoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB73C7CLL);
  }

  ++*(v3 + 16);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a2, &v28);
  if (v31)
  {
    (*(**(a1 + 16) + 152))(&v27);
    if (!v27)
    {
      v24 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteDevice::createRenderBundleEncoder(const WebGPU::RenderBundleEncoderDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v24, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 383: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteDevice::connection(buf, a1);
      v25 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25, v17);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB73BD8);
      }

      goto LABEL_18;
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(a1 + 144), buf);
    }

    else
    {
      *buf = 0;
    }

    v8 = *(*(a1 + 160) + 8);
    if (v8)
    {
      v9 = *buf;
      atomic_fetch_add(v8 + 2, 1u);
      v10 = v27;
      v11 = *(a1 + 32);
      atomic_fetch_add((v11 + 8), 1u);
      v26 = v11;
      if (WebKit::RemoteRenderBundleEncoder::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteRenderBundleEncoder::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::RemoteRenderBundleEncoder::operatorNewSlow(0x48);
      }

      v13 = NonCompact;
      WebKit::RemoteRenderBundleEncoder::RemoteRenderBundleEncoder(NonCompact, v9, v8, v10, v3, &v26, a3);
      v15 = v26;
      v26 = 0;
      if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
      }

      v16 = *buf;
      *buf = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16), v14);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v13);
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }

LABEL_18:
      v18 = v27;
      v27 = 0;
      if (v18)
      {
        if (v18[4] == 1)
        {
          (*(*v18 + 8))(v18);
        }

        else
        {
          --v18[4];
        }
      }

      goto LABEL_21;
    }

    __break(0xC471u);
LABEL_45:
    JUMPOUT(0x19DB73B88);
  }

  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createRenderBundleEncoder(const WebGPU::RenderBundleEncoderDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 380: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v23 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23, v17);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

LABEL_21:
  if (v31 == 1)
  {
    v19 = v29;
    if (v29)
    {
      v29 = 0;
      v30 = 0;
      WTF::fastFree(v19, v17);
    }

    v20 = v28;
    v28 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v17);
}

_DWORD *WebKit::RemoteDevice::createQuerySet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB73FECLL);
  }

  ++*(v3 + 16);
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a2 + 8) | (*(a2 + 12) << 32);
  v22 = v6;
  v23 = v7;
  v24 = 1;
  (*(**(a1 + 16) + 160))(&v21);
  v9 = v21;
  if (v21)
  {
    v10 = *(a1 + 32);
    atomic_fetch_add((v10 + 8), 1u);
    *buf = v10;
    v11 = *(*(a1 + 160) + 8);
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      if (WebKit::RemoteQuerySet::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteQuerySet::s_heapRef, v8);
      }

      else
      {
        NonCompact = WebKit::RemoteQuerySet::operatorNewSlow(0x38);
      }

      v13 = NonCompact;
      WebKit::RemoteQuerySet::RemoteQuerySet(NonCompact, v9, v3, buf, v11, a3);
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }

      v14 = *buf;
      *buf = 0;
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14 + 2);
        (*(*v14 + 8))(v14);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v13);
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }

      goto LABEL_15;
    }

LABEL_32:
    __break(0xC471u);
    JUMPOUT(0x19DB73F88);
  }

  v19 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteDevice::createQuerySet(const WebGPU::QuerySetDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteDevice.cpp 395: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteDevice::connection(buf, a1);
  v20 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20, v15);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_32;
  }

LABEL_15:
  v16 = v21;
  v21 = 0;
  if (v16)
  {
    if (v16[4] == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      --v16[4];
    }
  }

  if (v24 == 1)
  {
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v15);
}

uint64_t WebKit::RemoteDevice::popErrorScope@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F10FB890;
  v5[1] = v4;
  v7 = v5;
  (*(*v3 + 176))(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteDevice::resolveUncapturedErrorEvent@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F10FB8B8;
  v5[1] = v4;
  v7 = v5;
  (*(*v3 + 184))(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteDevice::resolveDeviceLostPromise@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F10FB8E0;
  v5[1] = v4;
  v7 = v5;
  (*(*v3 + 192))(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebCore::WebGPU::Device::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 256);

  return v6(a1, v5);
}

void WebKit::RemoteExternalTexture::~RemoteExternalTexture(WebKit::RemoteExternalTexture *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v6 + 8), a2);
  }
}

{
  WebKit::RemoteExternalTexture::~RemoteExternalTexture(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteExternalTexture::destroy(WebKit::RemoteExternalTexture *this)
{
  v1 = *(this + 2);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 16))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref(v1 + 1, v5);
}

atomic_ullong *WebKit::RemoteExternalTexture::undestroy(WebKit::RemoteExternalTexture *this)
{
  v1 = *(this + 2);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 24))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref(v1 + 1, v5);
}

void *WebKit::RemoteExternalTexture::stopListeningForIPC(WebKit::RemoteExternalTexture *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x4Fu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

atomic_ullong *WebKit::RemoteExternalTexture::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  WebCore::WebGPU::ExternalTexture::setLabel(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref(v3 + 1, v7);
}

uint64_t WebCore::WebGPU::ExternalTexture::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 2;
  v4 = a1[2];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 40);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteGPU::RemoteGPU@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *a1 = &unk_1F10FB750;
  v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a3 + 16), a6);
  *(a1 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11);
  v12 = *(a3 + 352);
  *(a1 + 40) = *(a3 + 336);
  *(a1 + 56) = v12;
  v13 = WTF::fastMalloc(v12, 0x70);
  *(a1 + 64) = IPC::StreamConnectionWorkQueue::StreamConnectionWorkQueue(v13, "WebGPU work queue", 18);
  v14 = *a5;
  *a5 = 0;
  *(a1 + 72) = v14;
  *(a1 + 80) = 0;
  v16 = WebKit::WebGPU::ObjectHeap::operator new(0x20, v15);
  *(v16 + 16) = 1;
  *v16 = &unk_1F10FBCC8;
  *(v16 + 8) = 0;
  *(v16 + 24) = 0;
  *(a1 + 88) = v16;
  *(a1 + 96) = a2;
  atomic_fetch_add((a4 + 16), 1u);
  *(a1 + 104) = a4;
  return a1;
}

void WebKit::RemoteGPU::~RemoteGPU(WebKit::RemoteGPU *this, void *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 16));
    (*(*(v3 + 8) + 8))();
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v4 + 16), a2);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6, a2);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v7 + 8));
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, a2);
  }

  v9 = *(this + 2);
  if (v9)
  {
    *(v9 + 8) = 0;
    v10 = *(this + 2);
    *(this + 2) = 0;
    if (v10)
    {
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }
}

{
  WebKit::RemoteGPU::~RemoteGPU(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteGPU::connection(WebKit::RemoteGPU *this, uint64_t a2)
{
  result = *(a2 + 32);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a2 + 24), &v9), v9))
  {
    v5 = *(v9 + 56);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_10:
    v8 = v9;
    *this = v5;
    v9 = 0;
    if (v8)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16), v4);
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

uint64_t WebKit::RemoteGPU::initialize(WebKit::RemoteGPU *this, unint64_t a2)
{
  v3 = *(this + 8);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = WTF::fastMalloc(atomic_fetch_add(this + 2, 1u), 0x10);
  *v7 = &unk_1F10FB908;
  v7[1] = this;
  v10 = v7;
  IPC::StreamConnectionWorkQueue::dispatch(v3, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
}

uint64_t WebKit::RemoteGPU::stopListeningForIPC(WebKit::RemoteGPU *this, unint64_t a2)
{
  v3 = *(this + 8);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = WTF::fastMalloc(atomic_fetch_add(this + 2, 1u), 0x10);
  *v7 = &unk_1F10FB930;
  v7[1] = this;
  v10 = v7;
  IPC::StreamConnectionWorkQueue::dispatch(v3, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v10 = 0;
  IPC::StreamConnectionWorkQueue::stopAndWaitForCompletion(v3, &v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
}

IPC::Encoder *WebKit::RemoteGPU::send<Messages::RemoteGPUProxy::WasCreated>(uint64_t a1, IPC::Semaphore **a2)
{
  v3 = *(a1 + 72);
  atomic_fetch_add((v3 + 8), 1u);
  v4 = *(v3 + 40);
  v5 = *(a1 + 96);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1151;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v12 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v6, a2[1]);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v6, a2[2]);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v9, v10);
  }

  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 8));
    v11 = *(*v3 + 8);

    return v11(v3);
  }

  return result;
}

uint64_t WebKit::RemoteGPU::requestAdapter(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 80);
  if (v8)
  {
    (**v8)(*(a1 + 80));
  }

  v21 = *a4;
  v22 = *(a1 + 88);
  v9 = *(v22 + 16);
  *(v22 + 16) = v9 + 1;
  v10 = *a2;
  v27 = 1;
  v26 = v10;
  *a4 = 0;
  *(v22 + 16) = v9 + 2;
  v11 = *(a1 + 72);
  atomic_fetch_add((v11 + 8), 1u);
  v23 = v11;
  v12 = *(a1 + 32);
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v12, *(a1 + 24), &v24);
  }

  else
  {
    *&v24 = 0;
  }

  add = atomic_fetch_add((a1 + 8), 1u);
  *(&v24 + 1) = a1;
  v14 = WTF::fastMalloc(add, 0x38);
  *v14 = &unk_1F10FB980;
  v14[1] = v21;
  v14[2] = v22;
  v14[3] = v23;
  v14[4] = a3;
  v14[5] = v24;
  v15 = *(&v24 + 1);
  v24 = 0u;
  v14[6] = v15;
  v25 = v14;
  (*(*v8 + 32))(v8, &v26, &v25);
  v17 = v25;
  v25 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }

  v19 = v24;
  *&v24 = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16), v16);
  }

  WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v22 + 16), v16);
  return (*(*v8 + 8))(v8);
}

_DWORD *WebKit::RemoteGPU::createPresentationContext(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1[10];
  if (v5)
  {
    (**v5)(a1[10], a2);
  }

  v6 = a1[11];
  ++*(v6 + 16);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v6, &v27);
  if (v28)
  {
    (*(*v5 + 40))(&v26, v5, &v27);
    v8 = v26;
    if (v26)
    {
      v9 = a1[4];
      if (v9)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v9, a1[3], buf);
        v10 = *buf;
        v8 = v26;
      }

      else
      {
        v10 = 0;
        *buf = 0;
      }

      v11 = a1[9];
      atomic_fetch_add((v11 + 8), 1u);
      v25 = v11;
      if (WebKit::RemotePresentationContext::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemotePresentationContext::s_heapRef, v7);
      }

      else
      {
        NonCompact = WebKit::RemotePresentationContext::operatorNewSlow(0x48);
      }

      v13 = NonCompact;
      WebKit::RemotePresentationContext::RemotePresentationContext(NonCompact, v10, a1, v8, v6, &v25, a3);
      v15 = v25;
      v25 = 0;
      if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }

      v16 = *buf;
      *buf = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16), v14);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v6, a3, v13);
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }
    }

    else
    {
      v23 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteGPU::createPresentationContext(const WebGPU::PresentationContextDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteGPU.cpp 218: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteGPU::connection(buf, a1);
      v24 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24, v17);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB75318);
      }
    }

    v18 = v26;
    v26 = 0;
    if (v18)
    {
      if (v18[4] == 1)
      {
        (*(*v18 + 8))(v18);
      }

      else
      {
        --v18[4];
      }
    }
  }

  else
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteGPU::createPresentationContext(const WebGPU::PresentationContextDescriptor &, WebGPUIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteGPU.cpp 215: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    WebKit::RemoteGPU::connection(buf, a1);
    v22 = *buf;
    if (*buf)
    {
      *(*buf + 94) = 1;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22, v17);
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB752C8);
    }
  }

  if (v28 == 1)
  {
    v19 = v27;
    v27 = 0;
    if (v19)
    {
      if (v19[4] == 1)
      {
        (*(*v19 + 8))(v19);
      }

      else
      {
        --v19[4];
      }
    }
  }

  result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v6 + 16), v17);
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::RemoteGPU::createCompositorIntegration(unint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  if (v4)
  {
    (**v4)(*(a1 + 80));
  }

  (*(*v4 + 48))(&v20, v4);
  v6 = v20;
  if (v20)
  {
    v7 = *(a1 + 88);
    ++*(v7 + 16);
    v8 = *(a1 + 72);
    atomic_fetch_add((v8 + 8), 1u);
    if (WebKit::RemoteCompositorIntegration::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteCompositorIntegration::s_heapRef, v5);
    }

    else
    {
      NonCompact = WebKit::RemoteCompositorIntegration::operatorNewSlow(0);
    }

    v10 = NonCompact;
    *(NonCompact + 8) = 1;
    *NonCompact = &unk_1F10FB688;
    ++v6[4];
    *(NonCompact + 16) = v6;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 8), v7);
    v11 = *(v7 + 8);
    atomic_fetch_add(v11, 1u);
    *(v10 + 24) = v11;
    *(v10 + 32) = v8;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v12 = *(a1 + 16);
    atomic_fetch_add(v12, 1u);
    *(v10 + 40) = v12;
    *(v10 + 48) = a2;
    v13 = *(v10 + 32);
    atomic_fetch_add(v13 + 2, 1u);
    IPC::StreamServerConnection::startReceivingMessages(v13, v10, 0x4Au, *(v10 + 48));
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }

    WebKit::WebGPU::ObjectHeap::addObject(v7, a2, v10);
    if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v10 + 8));
      (*(*v10 + 8))(v10);
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v7 + 16), v14);
  }

  else
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteGPU::createCompositorIntegration(WebGPUIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteGPU.cpp 235: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    WebKit::RemoteGPU::connection(buf, a1);
    v19 = *buf;
    if (*buf)
    {
      *(*buf + 94) = 1;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19, v18);
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB756A0);
    }
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    if (v15[4] == 1)
    {
      (*(*v15 + 8))(v15);
    }

    else
    {
      --v15[4];
    }
  }

  return (*(*v4 + 8))(v4);
}

uint64_t WebKit::RemoteGPU::isValid(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    (**v4)(*(a1 + 80));
    v7 = *(a1 + 88);
    v8 = v7 + 4;
    ++v7[4];
    LODWORD(a2) = WebKit::WebGPU::ObjectHeap::objectExistsAndValid(v7, v4, a2);
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v8, v9);
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, (a2 >> 8) & 1, a2 & 1);
    (*(*v10 + 8))(v10);
    v11 = *(*v4 + 8);
    v12 = v4;
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13, 0, 0);
    v11 = *(*v13 + 8);
    v12 = v13;
  }

  return v11(v12);
}

void WebKit::RemotePipelineLayout::~RemotePipelineLayout(WebKit::RemotePipelineLayout *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemotePipelineLayout::~RemotePipelineLayout(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemotePipelineLayout::stopListeningForIPC(WebKit::RemotePipelineLayout *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x6Au, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemotePipelineLayout::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::PipelineLayout::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::PipelineLayout::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 16);

  return v6(a1, v5);
}

uint64_t WTF::Vector<std::optional<WebCore::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 88 * v3;
    v6 = v4 + 56;
    do
    {
      if (v6[24] == 1)
      {
        if (v6[8] == 1)
        {
          if (!*v6)
          {
            v7 = *(v6 - 4);
            if (v7)
            {
              *(v6 - 4) = 0;
              *(v6 - 6) = 0;
              WTF::fastFree(v7, a2);
            }
          }

          *v6 = -1;
        }

        v8 = *(v6 - 5);
        *(v6 - 5) = 0;
        if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8);
          WTF::fastFree(v8, a2);
        }

        v9 = *(v6 - 7);
        *(v6 - 7) = 0;
        if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, a2);
        }
      }

      v6 += 88;
      v5 -= 88;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WebKit::RemoteBindGroupLayout::operator new(WebKit::RemoteBindGroupLayout *this, void *a2)
{
  if (this == 56 && WebKit::RemoteBindGroupLayout::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteBindGroupLayout::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteBindGroupLayout::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteTexture::operator new(WebKit::RemoteTexture *this, void *a2)
{
  if (this == 72 && WebKit::RemoteTexture::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteTexture::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteTexture::operatorNewSlow(this);
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebCore::WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebCore::WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::BindGroupLayout>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebCore::WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::BindGroupLayout>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[4];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 48 * v3;
    v5 = *a1 + 8;
    do
    {
      v5 = mpark::detail::move_constructor<mpark::detail::traits<std::reference_wrapper<WebCore::WebGPU::Sampler>,std::reference_wrapper<WebCore::WebGPU::TextureView>,WebCore::WebGPU::BufferBinding,std::reference_wrapper<WebCore::WebGPU::ExternalTexture>>,(mpark::detail::Trait)1>::~move_constructor(v5, a2) + 48;
      v4 -= 48;
    }

    while (v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<std::reference_wrapper<WebCore::WebGPU::Sampler>,std::reference_wrapper<WebCore::WebGPU::TextureView>,WebCore::WebGPU::BufferBinding,std::reference_wrapper<WebCore::WebGPU::ExternalTexture>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 2)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3);
        WTF::fastFree(v3, a2);
      }
    }
  }

  *(a1 + 32) = -1;
  return a1;
}

unsigned int *WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 16 * v3;
    v5 = (*a1 + 8);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t WebKit::RemoteComputePipeline::operator new(WebKit::RemoteComputePipeline *this, void *a2)
{
  if (WebKit::RemoteComputePipeline::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteComputePipeline::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteComputePipeline::operatorNewSlow(0x38);
  }
}

uint64_t WebKit::RemoteRenderPipeline::operator new(WebKit::RemoteRenderPipeline *this, void *a2)
{
  if (WebKit::RemoteRenderPipeline::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteRenderPipeline::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteRenderPipeline::operatorNewSlow(0x38);
  }
}

void WebCore::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(WebCore::WebGPU::RenderPipelineDescriptor *this, void *a2)
{
  if (*(this + 200) == 1)
  {
    v3 = *(this + 23);
    if (v3)
    {
      *(this + 23) = 0;
      *(this + 48) = 0;
      WTF::fastFree(v3, a2);
    }

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, a2);
    if (*(this + 160) == 1)
    {
      v4 = *(this + 19);
      *(this + 19) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    v5 = *(this + 18);
    *(this + 18) = 0;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, a2);
    }
  }

  WTF::Vector<std::optional<WebKit::WebGPU::VertexBufferLayout>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v6);
  if (*(this + 32) == 1)
  {
    v8 = *(this + 3);
    *(this + 3) = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v7);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }
  }
}

uint64_t WebKit::WebGPU::ObjectHeap::operator new(WebKit::WebGPU::ObjectHeap *this, void *a2)
{
  if (this == 32 && WebKit::WebGPU::ObjectHeap::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::ObjectHeap::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::ObjectHeap::operatorNewSlow(this);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::paintCompositedResultsToCanvas(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::NativeImage *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB7A0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::paintCompositedResultsToCanvas(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::NativeImage *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB7A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::paintCompositedResultsToCanvas(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::NativeImage *>::call(void *a1, unint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[1] + 8);
    if (!v3)
    {
      result = 92;
      __break(0xC471u);
      return result;
    }

    v25 = a1[2];
    v23 = 0;
    v24 = 0;
    v5 = *(v3 + 80);
    if (v5)
    {
      (**v5)(*(v3 + 80));
    }

    v22 = v5;
    v6 = *(v3 + 104);
    atomic_fetch_add((v6 + 16), 1u);
    v21 = v6;
    while (1)
    {
      v7 = *(a2 + 8);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a2 + 8);
      atomic_compare_exchange_strong_explicit((a2 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_8:
    v20 = a2;
    v9 = WTF::fastMalloc(v7, 0x30);
    *v9 = &unk_1F10FB9A8;
    v9[1] = &v21;
    v9[2] = &v25;
    v9[3] = &v22;
    v9[4] = &v20;
    v9[5] = &v23;
    v26 = v9;
    WebKit::RemoteRenderingBackend::dispatch(v6, &v26);
    v10 = v26;
    v26 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v26 = 0x7FF0000000000000;
    v27 = 0;
    WTF::BinarySemaphore::waitUntil();
    v12 = v20;
    v20 = 0;
    if (v12)
    {
      do
      {
        v18 = v12[1];
        if ((v18 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v12[1], v11);
          goto LABEL_11;
        }

        v19 = v12[1];
        atomic_compare_exchange_strong_explicit(v12 + 1, &v19, (v18 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v19 != v18);
      if (v18 == 3)
      {
        (*(*v12 + 1))(v12);
      }
    }

LABEL_11:
    v13 = v21;
    v21 = 0;
    if (v13 && atomic_fetch_add((v13 + 16), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v13 + 16));
      (*(*(v13 + 8) + 8))();
    }

    v14 = v22;
    v22 = 0;
    if (v14)
    {
      (*v14)[1](v14);
    }
  }

  v15 = a1[3];
  a1[3] = 0;
  (*(*v15 + 16))(v15);
  v16 = *(*v15 + 8);

  return v16(v15);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::prepareForDisplay(unsigned int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB7C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::prepareForDisplay(unsigned int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB7C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteCompositorIntegration::prepareForDisplay(unsigned int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::importExternalTextureFromVideoFrame(WebKit::WebGPU::ExternalTextureDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::MediaPlayer &>::call(uint64_t a1, WebCore::MediaPlayer *this)
{
  WebCore::MediaPlayer::videoFrameForCurrentTime(&v8, this);
  if (v8)
  {
    v3 = (*(*v8 + 56))(v8);
    v4 = v3;
    v5 = *(a1 + 8);
    if (v3)
    {
      CFRetain(v3);
    }
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 8);
  }

  v6 = *v5;
  *v5 = v4;
  if (v6)
  {
    CFRelease(v6);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::updateExternalTexture(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&)::$_0,void,WebCore::MediaPlayer &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB818;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::updateExternalTexture(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&)::$_0,void,WebCore::MediaPlayer &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB818;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::updateExternalTexture(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&)::$_0,void,WebCore::MediaPlayer &>::call(uint64_t *a1, WebCore::MediaPlayer *a2)
{
  result = a1[2];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v12, result, a1[1]);
    if (v12)
    {
      WebCore::MediaPlayer::videoFrameForCurrentTime(&v11, a2);
      if (v11)
      {
        v6 = (*(*v11 + 7))(v11);
        v7 = v6;
        v8 = a1[3];
        if (v6)
        {
          CFRetain(v6);
        }
      }

      else
      {
        v7 = 0;
        v8 = a1[3];
      }

      v9 = *v8;
      *v8 = v7;
      if (v9)
      {
        CFRelease(v9);
      }

      result = v11;
      v11 = 0;
      if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }

      v10 = v12;
      v12 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v10 + 8), v5);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createComputePipelineAsync(WebKit::WebGPU::ComputePipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB840;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v5 + 16), a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createComputePipelineAsync(WebKit::WebGPU::ComputePipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB840;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v5 + 16), a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createComputePipelineAsync(WebKit::WebGPU::ComputePipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::call(void *a1, _DWORD **a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    *a2 = 0;
    v6 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = WebKit::RemoteComputePipeline::operator new(0x38, a2);
    WebKit::RemoteComputePipeline::RemoteComputePipeline(v9, v5, v6, a1 + 3, v7, v8);
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }

    WebKit::WebGPU::ObjectHeap::addObject(a1[2], a1[5], v9);
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9 + 2);
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v5 != 0;
  v11 = a1[1];
  a1[1] = 0;
  (*(*v11 + 16))(v11, v10, a3);
  v12 = *(*v11 + 8);

  return v12(v11);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createRenderPipelineAsync(WebKit::WebGPU::RenderPipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB868;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v5 + 16), a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createRenderPipelineAsync(WebKit::WebGPU::RenderPipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB868;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v5 + 16), a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::createRenderPipelineAsync(WebKit::WebGPU::RenderPipelineDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL,WTF::String &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::String &>::call(WebKit::RemoteRenderPipeline *a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    *a2 = 0;
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    v9 = WebKit::RemoteRenderPipeline::operator new(a1, a2);
    WebKit::RemoteRenderPipeline::RemoteRenderPipeline(v9, v5, v6, a1 + 3, v7, v8);
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }

    WebKit::WebGPU::ObjectHeap::addObject(*(a1 + 2), *(a1 + 5), v9);
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9 + 2);
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v5 != 0;
  v11 = *(a1 + 1);
  *(a1 + 1) = 0;
  (*(*v11 + 16))(v11, v10, a3);
  v12 = *(*v11 + 8);

  return v12(v11);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB890;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB890;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::call(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = *(a3 + 8);
    if (v3 == 255)
    {
      v4 = -1;
    }

    else
    {
      v4 = *(a3 + 8);
    }

    if (v4 == 2)
    {
      if (v3 == 2)
      {
        v5 = *a3;
        *v5 = **a3 + 1;
        v12 = *(v5 + 1);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v19 = v12;
        v20 = 2;
        v21 = 1;
        v13 = *(a1 + 1);
        *(a1 + 1) = 0;
        (*(*v13 + 16))(v13, a2, &v19);
        (*(*v13 + 8))(v13);
        if (v21 != 1)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        if (v20 > 1u)
        {
          if (v20 != 2)
          {
            return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
          }
        }

        else if (!v20)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        v18 = v19;
        v19 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v8);
        }

        return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
      }

      goto LABEL_52;
    }

    if (v4 == 1)
    {
      if (v3 == 1)
      {
        v5 = *a3;
        *v5 = **a3 + 1;
        v6 = *(v5 + 1);
        if (v6)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v19 = v6;
        v20 = 1;
        v21 = 1;
        v7 = *(a1 + 1);
        *(a1 + 1) = 0;
        (*(*v7 + 16))(v7, a2, &v19);
        (*(*v7 + 8))(v7);
        if (v21 != 1)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        if (v20 > 1u)
        {
          if (v20 != 2)
          {
            return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
          }
        }

        else if (!v20)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        v17 = v19;
        v19 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }
        }

        return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
      }

LABEL_52:
      mpark::throw_bad_variant_access(a1);
    }

    if (*(a3 + 8))
    {
      goto LABEL_52;
    }

    v14 = *a3;
    ++**a3;
    v20 = 0;
    v21 = 1;
    v15 = *(a1 + 1);
    *(a1 + 1) = 0;
    (*(*v15 + 16))(v15, a2, &v19);
    result = (*(*v15 + 8))(v15);
    if (v21 != 1)
    {
      goto LABEL_48;
    }

    if (v20 > 1u)
    {
      if (v20 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (!v20)
    {
LABEL_48:
      if (*v14 == 1)
      {
        return WTF::fastFree(v14, v16);
      }

      --*v14;
      return result;
    }

    result = v19;
    v19 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
    }

    goto LABEL_48;
  }

  LOBYTE(v19) = 0;
  v21 = 0;
  v9 = *(a1 + 1);
  *(a1 + 1) = 0;
  (*(*v9 + 16))(v9, a2, &v19);
  result = (*(*v9 + 8))(v9);
  if (v21 != 1)
  {
    return result;
  }

  if (v20 > 1u)
  {
    if (v20 != 2)
    {
      return result;
    }
  }

  else if (!v20)
  {
    return result;
  }

  result = v19;
  v19 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v11);
  }

  return result;
}

uint64_t WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 8);
    *(v2 + 1) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB8B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB8B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&)::$_0,void,BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::ValidationError,WebCore::WebGPU<WTF::DefaultRefDerefTraits<WebCore>>,WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>> &&)> &&<WTF::Ref::InternalError,WebCore::WebGPU<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>,WTF::RawPtrTraits<WTF::RawPtrTraits<WTF::DefaultRefDerefTraits<WebCore>>>>>> &&>::call(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = *(a3 + 8);
    if (v3 == 255)
    {
      v4 = -1;
    }

    else
    {
      v4 = *(a3 + 8);
    }

    if (v4 == 2)
    {
      if (v3 == 2)
      {
        v5 = *a3;
        *v5 = **a3 + 1;
        v12 = *(v5 + 1);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v19 = v12;
        v20 = 2;
        v21 = 1;
        v13 = *(a1 + 1);
        *(a1 + 1) = 0;
        (*(*v13 + 16))(v13, a2, &v19);
        (*(*v13 + 8))(v13);
        if (v21 != 1)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        if (v20 > 1u)
        {
          if (v20 != 2)
          {
            return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
          }
        }

        else if (!v20)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        v18 = v19;
        v19 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v8);
        }

        return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
      }

      goto LABEL_52;
    }

    if (v4 == 1)
    {
      if (v3 == 1)
      {
        v5 = *a3;
        *v5 = **a3 + 1;
        v6 = *(v5 + 1);
        if (v6)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v19 = v6;
        v20 = 1;
        v21 = 1;
        v7 = *(a1 + 1);
        *(a1 + 1) = 0;
        (*(*v7 + 16))(v7, a2, &v19);
        (*(*v7 + 8))(v7);
        if (v21 != 1)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        if (v20 > 1u)
        {
          if (v20 != 2)
          {
            return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
          }
        }

        else if (!v20)
        {
          return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
        }

        v17 = v19;
        v19 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }
        }

        return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(v5, v8);
      }

LABEL_52:
      mpark::throw_bad_variant_access(a1);
    }

    if (*(a3 + 8))
    {
      goto LABEL_52;
    }

    v14 = *a3;
    ++**a3;
    v20 = 0;
    v21 = 1;
    v15 = *(a1 + 1);
    *(a1 + 1) = 0;
    (*(*v15 + 16))(v15, a2, &v19);
    result = (*(*v15 + 8))(v15);
    if (v21 != 1)
    {
      goto LABEL_48;
    }

    if (v20 > 1u)
    {
      if (v20 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (!v20)
    {
LABEL_48:
      if (*v14 == 1)
      {
        return WTF::fastFree(v14, v16);
      }

      --*v14;
      return result;
    }

    result = v19;
    v19 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
    }

    goto LABEL_48;
  }

  LOBYTE(v19) = 0;
  v21 = 0;
  v9 = *(a1 + 1);
  *(a1 + 1) = 0;
  (*(*v9 + 16))(v9, a2, &v19);
  result = (*(*v9 + 8))(v9);
  if (v21 != 1)
  {
    return result;
  }

  if (v20 > 1u)
  {
    if (v20 != 2)
    {
      return result;
    }
  }

  else if (!v20)
  {
    return result;
  }

  result = v19;
  v19 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v11);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0,void,WebCore::WebGPU::DeviceLostReason>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB8E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0,void,WebCore::WebGPU::DeviceLostReason>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB8E0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteDevice::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0,void,WebCore::WebGPU::DeviceLostReason>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGPU::initialize(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB908;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::initialize(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB908;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::initialize(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 64);
  v3 = (v2 + 8);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  v6 = *(v1 + 72);
  if (v6)
  {
    atomic_fetch_add(v6 + 2, 1u);
  }

  IPC::StreamServerConnection::open(v6, v2);
  IPC::StreamServerConnection::startReceivingMessages(v6, v1, 0x51u, *(v1 + 96));
  v7 = *(v1 + 32);
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(v1 + 24), &v23);
  }

  else
  {
    v23 = 0;
  }

  v8 = WTF::fastMalloc(atomic_fetch_add((v1 + 8), 1u), 0x10);
  *v8 = &unk_1F10FB958;
  v8[1] = v1;
  v19 = v8;
  WebCore::WebGPU::create();
  v9 = v19;
  v19 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v22;
  if (v22)
  {
    v22 = 0;
    v11 = *(v1 + 80);
    *(v1 + 80) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    LOBYTE(v19) = 1;
    v20 = (v2 + 32);
    v21 = (v6 + 40);
    WebKit::RemoteGPU::send<Messages::RemoteGPUProxy::WasCreated>(v1, &v19);
  }

  else
  {
    v18 = 0;
    v13 = MEMORY[0x1E69E9A60];
    semaphore_create(*MEMORY[0x1E69E9A60], &v18 + 1, 0, 0);
    v17 = 0;
    semaphore_create(*v13, &v17 + 1, 0, 0);
    LOBYTE(v19) = 0;
    v20 = &v18;
    v21 = &v17;
    WebKit::RemoteGPU::send<Messages::RemoteGPUProxy::WasCreated>(v1, &v19);
    IPC::Semaphore::destroy(&v17);
    WTF::MachSendRight::~MachSendRight(&v17);
    IPC::Semaphore::destroy(&v18);
    WTF::MachSendRight::~MachSendRight(&v18);
  }

  v14 = v22;
  v22 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v23;
  v23 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v15 + 16), v12);
  }

  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGPU::stopListeningForIPC(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB930;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::stopListeningForIPC(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB930;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::stopListeningForIPC(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[9];
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }

  IPC::StreamServerConnection::stopReceivingMessages(v2, 0x51u, v1[12]);
  IPC::StreamServerConnection::invalidate(v2);
  v4 = v1[9];
  v1[9] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = v1[11];
  v6 = (v5 + 16);
  ++*(v5 + 16);
  v7 = *(v5 + 24);
  if (v7)
  {
    *(v5 + 24) = 0;
    _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E15deallocateTableEPS49_(v7, v3);
  }

  WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v3);
  result = v1[10];
  v1[10] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v9 = *(*v2 + 8);

    return v9(v2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGPU::workQueueInitialize(void)::$_0,void,WTF::Function<void ()(void)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB958;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::workQueueInitialize(void)::$_0,void,WTF::Function<void ()(void)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB958;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::workQueueInitialize(void)::$_0,void,WTF::Function<void ()(void)> &&>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 64);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  IPC::StreamConnectionWorkQueue::dispatch(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGPU::requestAdapter(WebKit::WebGPU::RequestAdapterOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebKit::RemoteGPURequestAdapterResponse> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Adapter,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB980;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16), a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v6 + 16), a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::requestAdapter(WebKit::WebGPU::RequestAdapterOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebKit::RemoteGPURequestAdapterResponse> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Adapter,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB980;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16), a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v6 + 16), a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::RemoteGPU::requestAdapter(WebKit::WebGPU::RequestAdapterOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebKit::RemoteGPURequestAdapterResponse> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Adapter,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    if (WebKit::RemoteAdapter::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAdapter::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteAdapter::operatorNewSlow(0x48);
    }

    v10 = NonCompact;
    WebKit::RemoteAdapter::RemoteAdapter(NonCompact, v6, v5, v3, v7, (a1 + 24), v8);
    WebKit::WebGPU::ObjectHeap::addObject(*(a1 + 16), *(a1 + 32), v10);
    v11 = *a2;
    v12 = *(*a2 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      v11 = *a2;
    }

    v13 = *(v11 + 32);
    ++*v13;
    v14 = *(v11 + 40);
    ++*v14;
    v24[0] = v12;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v24[1], (v13 + 2));
    v26 = *(v14 + 4);
    v27 = *(v14 + 20);
    v28 = *(v14 + 36);
    *v29 = *(v14 + 52);
    *&v29[8] = *(v14 + 64);
    *&v29[24] = *(v14 + 80);
    LODWORD(v30) = *(v14 + 88);
    *(&v30 + 1) = *(v14 + 96);
    v31 = *(v14 + 104);
    v32 = *(v14 + 120);
    v33 = *(v14 + 136);
    v34 = *(v14 + 152);
    v35 = *(*a2 + 48);
    v15 = *v24;
    v24[1] = 0;
    *v36 = v15;
    *&v15 = v25;
    v25 = 0;
    v37 = v15;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v44 = v31;
    v40 = v28;
    v39 = v27;
    v38 = v26;
    v43 = v30;
    v42 = *&v29[16];
    v41 = *v29;
    v49 = 1;
    v16 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v16 + 16))(v16, v36);
    (*(*v16 + 8))(v16);
    if (v49 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36[1], v17);
      v18 = v36[0];
      v36[0] = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v17);
        }
      }
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24[1], v17);
    if (*v14 == 1)
    {
      WTF::fastFree(v14, v19);
    }

    else
    {
      --*v14;
    }

    result = WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v13, v19);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      return (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v49 = 0;
    v21 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v21 + 16))(v21, v36);
    result = (*(*v21 + 8))(v21);
    if (v49 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36[1], v22);
      result = v36[0];
      v36[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v23);
        }
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPU::paintNativeImageToImageBuffer(WebCore::NativeImage &,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  WebKit::RemoteRenderingBackend::imageBuffer(**(a1 + 8), **(a1 + 16), &v9);
  v2 = v9;
  if (v9)
  {
    v3 = **(a1 + 24);
    v4 = **(a1 + 32);
    v8 = WebCore::ImageBuffer::backendSize(v9);
    v5 = (*(*v2 + 16))(v2);
    (*(*v3 + 56))(v3, v4, &v8, v5);
    (*(*v2 + 24))(v2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v2 + 1, v6);
  }

  return WTF::BinarySemaphore::signal(*(a1 + 40));
}

void sub_19DB78CD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB791B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79328(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79474(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB795C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79704(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79800(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7996C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17, uint64_t a18, char a19)
{
  if (!a19)
  {
    if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, a2);
    }

    if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79A84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79B28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79C88(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB79EDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = v3[7];
  v3[7] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[13];
  v2[13] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = v2[11];
  v2[11] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = v2[10];
  v2[10] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = v2[9];
  v2[9] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = v2[8];
  v2[8] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *v3;
  *v3 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = v2[2];
  v2[2] = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7A1E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7A6A8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DB7A758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7A874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7AB20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7ABD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7ACB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7AE10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7AF90(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, int a21)
{
  if (a20)
  {
    WTF::fastFree(a20, a2);
  }

  _Unwind_Resume(exception_object);
}

void API::ResourceLoadInfo::~ResourceLoadInfo(API::ResourceLoadInfo *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

void sub_19DB7B178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7B240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7B2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7B35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7B40C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7B820(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::StringImpl *a32)
{
  if (a27)
  {
    if (atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a27, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB7BB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::ResourceLoadInfo::ResourceLoadInfo(uint64_t a1, uint64_t *a2)
{
  v4 = API::Object::Object(a1);
  *v4 = &unk_1F10FB9D0;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 3);
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v7;
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  WTF::URL::URL(v4 + 80, a2 + 8);
  v8 = a2[13];
  a2[13] = 0;
  *(a1 + 120) = v8;
  v9 = a2[14];
  *(a1 + 136) = *(a2 + 60);
  *(a1 + 128) = v9;
  return a1;
}

uint64_t WebKit::RemotePresentationContext::RemotePresentationContext(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t **a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB9F8;
  ++*(a4 + 16);
  *(a1 + 16) = a4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 8), a5);
  v13 = *(a5 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = a7;
  *(a1 + 48) = a2;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16), v14);
  *(a1 + 56) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v16 = *(a3 + 16);
  atomic_fetch_add(v16, 1u);
  *(a1 + 64) = v16;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x6Bu, *(a1 + 40));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemotePresentationContext::~RemotePresentationContext(WebKit::RemotePresentationContext *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7, a2);
    }

    else
    {
      --v7[4];
    }
  }
}

{
  WebKit::RemotePresentationContext::~RemotePresentationContext(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemotePresentationContext::stopListeningForIPC(WebKit::RemotePresentationContext *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x6Bu, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemotePresentationContext::configure(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 8);
  if (v3)
  {
    result = WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v3, a2, v8);
    if (v11 == 1)
    {
      v6 = *(a1 + 16);
      ++v6[4];
      result = (*(*v6 + 16))(v6, v8);
      if (v6[4] == 1)
      {
        result = (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }

    if (v11 == 1)
    {
      v7 = v9;
      if (v9)
      {
        v9 = 0;
        v10 = 0;
        WTF::fastFree(v7, v5);
      }

      result = v8[0];
      v8[0] = 0;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v5);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemotePresentationContext::unconfigure(WebKit::RemotePresentationContext *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 24))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemotePresentationContext::present(WebKit::RemotePresentationContext *this, uint64_t a2)
{
  v2 = *(this + 2);
  ++v2[4];
  result = (*(*v2 + 32))(v2, a2, 0);
  if (v2[4] == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

_DWORD *WebKit::RemotePresentationContext::getCurrentTexture(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  ++v5[4];
  (*(*v5 + 40))(&v19, v5, a3);
  if (v5[4] == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --v5[4];
  }

  v6 = a1[7];
  if (!v6)
  {
    result = v19;
    if (!v19)
    {
      return result;
    }

    goto LABEL_5;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, a1[6], &v18);
  v9 = v18;
  result = v19;
  if (v19)
  {
    if (!v18)
    {
LABEL_5:
      v19 = 0;
LABEL_6:
      if (result[4] == 1)
      {
        return (*(*result + 8))(result);
      }

      --result[4];
      return result;
    }

    v10 = *(a1[3] + 8);
    if (!v10 || (++*(v10 + 16), (v11 = *(a1[8] + 8)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DB7C538);
    }

    atomic_fetch_add(v11 + 2, 1u);
    v12 = v19;
    v13 = a1[4];
    atomic_fetch_add((v13 + 8), 1u);
    v17 = v13;
    v14 = WebKit::RemoteTexture::operator new(0x48, v8);
    WebKit::RemoteTexture::RemoteTexture(v14, v9, v11, v12, v10, &v17, a2);
    v15 = v17;
    v17 = 0;
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      (*(*v15 + 8))(v15);
    }

    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
    }

    WebKit::WebGPU::ObjectHeap::addObject(v10, a2, v14);
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 2);
      (*(*v14 + 8))(v14);
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v10 + 16), v16);
    v9 = v18;
  }

  v18 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16), v8);
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t WebKit::RemoteQuerySet::RemoteQuerySet(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBA20;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x6Cu, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteQuerySet::~RemoteQuerySet(WebKit::RemoteQuerySet *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteQuerySet::~RemoteQuerySet(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteQuerySet::stopListeningForIPC(WebKit::RemoteQuerySet *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x6Cu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteQuerySet::destroy(WebKit::RemoteQuerySet *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 16))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteQuerySet::destruct(WebKit::RemoteQuerySet *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 6));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteQuerySet::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::QuerySet::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::QuerySet::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteQueue::RemoteQueue(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBA48;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x6Du, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteQueue::~RemoteQueue(WebKit::RemoteQueue *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteQueue::~RemoteQueue(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteQueue::stopListeningForIPC(WebKit::RemoteQueue *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x6Du, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteQueue::submit(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v26 = 0;
  v3 = *(a2 + 12);
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = (v3 >> 29);
  if (v4)
  {
    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19DB7CFB8);
  }

  LODWORD(v26) = *(a2 + 12);
  v25 = WTF::fastMalloc(v4, (8 * v3));
  v6 = *(a2 + 12);
  if (!v6)
  {
LABEL_23:
    v22 = *(a1 + 16);
    ++v22[4];
    (*(*v22 + 16))(v22, &v25);
    if (v22[4] == 1)
    {
      (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[4];
    }

    return WTF::Vector<WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
  }

  v7 = *a2;
  v8 = 8 * v6;
  while (1)
  {
    v9 = *(*(a1 + 24) + 8);
    if (!v9)
    {
      __break(0xC471u);
      goto LABEL_32;
    }

    v10 = *v7;
    v11 = (v9 + 16);
    ++*(v9 + 16);
    WebKit::WebGPU::ObjectHeap::convertCommandBufferFromBacking(v9, v10, &v24);
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v11, v12);
    v14 = v24;
    if (!v24)
    {
      return WTF::Vector<WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
    }

    v15 = *(v24 + 1);
    if (!v15)
    {
      break;
    }

    v16 = HIDWORD(v26);
    if (HIDWORD(v26) == v26)
    {
      v17 = HIDWORD(v26) + (HIDWORD(v26) >> 1);
      if (v17 <= HIDWORD(v26) + 1)
      {
        v17 = HIDWORD(v26) + 1;
      }

      if (v17 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB7CFC0);
      }

      v18 = v25;
      if (v17 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = v17;
      }

      v20 = WTF::fastMalloc(v17, (8 * v19));
      LODWORD(v26) = v19;
      v25 = v20;
      memcpy(v20, v18, 8 * v16);
      if (v18)
      {
        if (v20 == v18)
        {
          v20 = 0;
          v25 = 0;
          LODWORD(v26) = 0;
        }

        WTF::fastFree(v18, v13);
      }
    }

    else
    {
      v20 = v25;
    }

    v21 = *(v15 + 16) + 1;
    v20[v16] = v15;
    *(v15 + 16) = v21;
    HIDWORD(v26) = v16 + 1;
    v24 = 0;
    if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v13);
    }

    ++v7;
    v8 -= 8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  v24 = 0;
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v13);
  }

  return WTF::Vector<WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
}

uint64_t WebKit::RemoteQueue::onSubmittedWorkDone(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = (v2[4] + 1);
  v2[4] = v3;
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(v3, 0x10);
  *v5 = &unk_1F10FBB38;
  v5[1] = v4;
  v7 = v5;
  (*(*v2 + 24))(v2, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v2[4] == 1)
  {
    return (*(*v2 + 8))(v2);
  }

  --v2[4];
  return result;
}

atomic_uint *WebKit::RemoteQueue::writeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a4 + 16) == 1)
  {
    WebCore::SharedMemory::map();
  }

  else
  {
    v18 = 0;
  }

  v8 = *(*(a1 + 24) + 8);
  if (v8)
  {
    v9 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v8, a2, &v17);
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    v11 = v17;
    if (v17)
    {
      v12 = *(v17 + 1);
      if (v12)
      {
        v13 = *(a1 + 16);
        ++v13[4];
        (*(*v13 + 48))(v13);
        if (v13[4] == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --v13[4];
        }

        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = *a5;
    *a5 = 0;
    (*(*v14 + 16))(v14, v12);
    (*(*v14 + 8))(v14);
    v17 = 0;
    if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v15);
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteQueue::writeBufferWithCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 24) + 8);
  if (v5)
  {
    v8 = (v5 + 16);
    ++*(v5 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v5, a2, &v13);
    v10 = v13;
    if (v13)
    {
      v9 = *(v13 + 1);
      if (v9)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        (*(*v11 + 48))(v11, v9, a3, *a4, *(a4 + 12), 0, 0, 0);
        if (v11[4] == 1)
        {
          (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }
      }

      v13 = 0;
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v9);
      }
    }

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v8, v9);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

atomic_uint *WebKit::RemoteQueue::writeTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t *a6)
{
  if (*(a3 + 16) == 1)
  {
    WebCore::SharedMemory::map();
  }

  else
  {
    v39 = 0;
  }

  v11 = *(*(a1 + 24) + 8);
  if (v11)
  {
    ++*(v11 + 4);
    WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v11, a2, v33);
    v12 = *a4;
    v29 = *(a4 + 2);
    v30 = *(a4 + 12);
    v13 = (*(a4 + 4) << 24) | (*(a4 + 20) << 56);
    v28 = v12;
    v31 = v13;
    v32 = 1;
    WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v11, a5, &v24);
    if (v38 == 1 && v27 == 1)
    {
      v14 = *(a1 + 16);
      ++v14[4];
      if (v39)
      {
        v16 = *(v39 + 8);
        v15 = *(v39 + 16);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      (*(*v14 + 56))(v14, v33, v15, v16, &v28, &v24);
      if (v14[4] == 1)
      {
        (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[4];
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = *a6;
    *a6 = 0;
    (*(*v18 + 16))(v18, v17);
    (*(*v18 + 8))(v18);
    if (v27 == 1 && !v26)
    {
      v20 = v24;
      if (v24)
      {
        v24 = 0;
        v25 = 0;
        WTF::fastFree(v20, v19);
      }
    }

    if (v38 == 1)
    {
      if (v37 == 1)
      {
        if (!v36)
        {
          v21 = v34;
          if (v34)
          {
            v34 = 0;
            v35 = 0;
            WTF::fastFree(v21, v19);
          }
        }

        v36 = -1;
      }

      v22 = v33[0];
      v33[0] = 0;
      if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, v19);
      }
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v11 + 4, v19);
    result = v39;
    v39 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteQueue::writeTextureWithCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(*(a1 + 24) + 8);
  if (v5)
  {
    ++*(v5 + 4);
    WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v5, a2, v27);
    v10 = *a4;
    v23 = *(a4 + 2);
    v24 = *(a4 + 12);
    v11 = (*(a4 + 4) << 24) | (*(a4 + 20) << 56);
    v22 = v10;
    v25 = v11;
    v26 = 1;
    WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v5, a5, &v18);
    if (v32 == 1 && v21 == 1)
    {
      v13 = *(a1 + 16);
      ++v13[4];
      (*(*v13 + 56))(v13, v27, *a3, *(a3 + 12), &v22, &v18);
      if (v13[4] == 1)
      {
        (*(*v13 + 8))(v13);
      }

      else
      {
        --v13[4];
      }
    }

    if (v21 == 1 && !v20)
    {
      v14 = v18;
      if (v18)
      {
        v18 = 0;
        v19 = 0;
        WTF::fastFree(v14, v12);
      }
    }

    if (v32 == 1)
    {
      if (v31 == 1)
      {
        if (!v30)
        {
          v15 = v28;
          if (v28)
          {
            v28 = 0;
            v29 = 0;
            WTF::fastFree(v15, v12);
          }
        }

        v30 = -1;
      }

      v16 = v27[0];
      v27[0] = 0;
      if (v16)
      {
        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, v12);
        }
      }
    }

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v5 + 4, v12);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteQueue::copyExternalImageToTexture(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    result = 103;
    __break(0xC471u);
    goto LABEL_28;
  }

  ++*(v4 + 4);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v4, a2, &v25);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v4, a3, v19);
  result = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v4, a4, &v15);
  if (v24 != 1 || v18 != 1)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 16);
  ++v10[4];
  if ((v29 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  (*(*v10 + 64))(v10, &v25, v19, &v15);
  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

LABEL_7:
  if (v18 == 1 && !v17)
  {
    v11 = v15;
    if (v15)
    {
      v15 = 0;
      v16 = 0;
      WTF::fastFree(v11, v9);
    }
  }

  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (!v22)
      {
        v12 = v20;
        if (v20)
        {
          v20 = 0;
          v21 = 0;
          WTF::fastFree(v12, v9);
        }
      }

      v22 = -1;
    }

    v13 = v19[0];
    v19[0] = 0;
    if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v9);
    }
  }

  if (v29 == 1 && v28 == 1 && !v27)
  {
    v14 = v25;
    if (v25)
    {
      v25 = 0;
      v26 = 0;
      WTF::fastFree(v14, v9);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4 + 4, v9);
}

uint64_t WebKit::RemoteQueue::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++v2[4];
  v3 = *a2;
  *a2 = 0;
  v4 = *(v2 + 3);
  *(v2 + 3) = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  result = (*(*v2 + 80))(v2, v2 + 6);
  if (v2[4] == 1)
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

void WebKit::RemoteRenderBundle::~RemoteRenderBundle(WebKit::RemoteRenderBundle *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteRenderBundle::~RemoteRenderBundle(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteRenderBundle::stopListeningForIPC(WebKit::RemoteRenderBundle *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x70u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundle::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++v2[4];
  v3 = *a2;
  *a2 = 0;
  v4 = *(v2 + 3);
  *(v2 + 3) = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  result = (*(*v2 + 16))(v2, v2 + 6);
  if (v2[4] == 1)
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::RemoteRenderBundleEncoder(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t **a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBA98;
  ++*(a4 + 16);
  *(a1 + 16) = a4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 8), a5);
  v13 = *(a5 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = a7;
  *(a1 + 48) = a2;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16), v14);
  *(a1 + 56) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v16 = *(a3 + 16);
  atomic_fetch_add(v16, 1u);
  *(a1 + 64) = v16;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x71u, *(a1 + 40));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemoteRenderBundleEncoder::~RemoteRenderBundleEncoder(WebKit::RemoteRenderBundleEncoder *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7, a2);
    }

    else
    {
      --v7[4];
    }
  }
}

{
  WebKit::RemoteRenderBundleEncoder::~RemoteRenderBundleEncoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteRenderBundleEncoder::destruct(WebKit::RemoteRenderBundleEncoder *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 5));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::RemoteRenderBundleEncoder::stopListeningForIPC(WebKit::RemoteRenderBundleEncoder *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x71u, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::setPipeline(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 8);
  if (v3)
  {
    v4 = (v3 + 16);
    ++*(v3 + 16);
    WebKit::WebGPU::ObjectHeap::convertRenderPipelineFromBacking(v3, a2, &v10);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4, v5);
    v7 = v10;
    if (v10)
    {
      v8 = *(v10 + 1);
      if (v8)
      {
        v9 = *(a1 + 16);
        ++v9[4];
        result = (*(*v9 + 16))(v9);
        if (v9[4] == 1)
        {
          result = (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }
      }

      v10 = 0;
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);

        return WTF::fastFree(v7, v8);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::setIndexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a1 + 24) + 8);
  if (v8)
  {
    v14 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v8, a2, &v21);
    v16 = v21;
    if (v21)
    {
      v17 = *(v21 + 1);
      if (v17)
      {
        ++v17[4];
      }

      v21 = 0;
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v15);
      }

      result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
      if (v17)
      {
        v19 = *(a1 + 16);
        ++v19[4];
        result = (*(*v19 + 24))(v19, v17, a3, a4, a5, a6, a7);
        if (v19[4] == 1)
        {
          result = (*(*v19 + 8))(v19);
        }

        else
        {
          --v19[4];
        }

        if (v17[4] == 1)
        {
          v20 = *(*v17 + 8);

          return v20(v17);
        }

        else
        {
          --v17[4];
        }
      }
    }

    else
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::setVertexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a1 + 24) + 8);
  if (v8)
  {
    v14 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v8, a3, &v21);
    v16 = v21;
    if (v21)
    {
      v17 = *(v21 + 1);
      if (v17)
      {
        ++v17[4];
      }

      v21 = 0;
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v15);
      }

      result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
      if (v17)
      {
        v19 = *(a1 + 16);
        ++v19[4];
        result = (*(*v19 + 32))(v19, a2, v17, a4, a5, a6, a7);
        if (v19[4] == 1)
        {
          result = (*(*v19 + 8))(v19);
        }

        else
        {
          --v19[4];
        }

        if (v17[4] == 1)
        {
          v20 = *(*v17 + 8);

          return v20(v17);
        }

        else
        {
          --v17[4];
        }
      }
    }

    else
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::unsetVertexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  ++v6[4];
  result = (*(*v6 + 32))(v6, a2, 0, a3, a4, a5, a6);
  if (v6[4] == 1)
  {
    v8 = *(*v6 + 8);

    return v8(v6);
  }

  else
  {
    --v6[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::draw(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 40))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::drawIndexed(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 48))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::drawIndirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v13);
    v8 = v13;
    if (v13)
    {
      v9 = *(v13 + 1);
      if (v9)
      {
        ++v9[4];
      }

      v13 = 0;
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v7);
      }

      result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
      if (v9)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 56))(v11, v9, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }

        if (v9[4] == 1)
        {
          v12 = *(*v9 + 8);

          return v12(v9);
        }

        else
        {
          --v9[4];
        }
      }
    }

    else
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::drawIndexedIndirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v13);
    v8 = v13;
    if (v13)
    {
      v9 = *(v13 + 1);
      if (v9)
      {
        ++v9[4];
      }

      v13 = 0;
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v7);
      }

      result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
      if (v9)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 64))(v11, v9, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }

        if (v9[4] == 1)
        {
          v12 = *(*v9 + 8);

          return v12(v9);
        }

        else
        {
          --v9[4];
        }
      }
    }

    else
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::setBindGroup(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v8 = *(*(a1 + 24) + 8);
    if (!v8)
    {
      result = 103;
      __break(0xC471u);
      return result;
    }

    v9 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBindGroupFromBacking(v8, a3, &v18);
    v11 = v18;
    if (!v18)
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    }

    v12 = *(v18 + 1);
    if (v12)
    {
      ++v12[4];
    }

    v18 = 0;
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v10);
    }

    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    if (v12)
    {
      v14 = *(a1 + 16);
      ++v14[4];
      result = (*(*v14 + 72))(v14, a2, v12, a5);
      if (v14[4] == 1)
      {
        result = (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[4];
      }

      v15 = v12[4] - 1;
      if (v12[4] == 1)
      {
        v16 = *(*v12 + 8);

        return v16(v12);
      }

LABEL_16:
      v12[4] = v15;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 72))(v12, a2, 0, a5);
    v15 = v12[4] - 1;
    if (v12[4] != 1)
    {
      goto LABEL_16;
    }

    v17 = *(*v12 + 8);

    return v17(v12);
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::pushDebugGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 88))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::popDebugGroup(WebKit::RemoteRenderBundleEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 96))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderBundleEncoder::insertDebugMarker(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 104))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

_DWORD *WebKit::RemoteRenderBundleEncoder::finish(void *a1, atomic_uint **a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB7F494);
  }

  ++*(v3 + 16);
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v24 = v6;
  v25 = 1;
  v7 = a1[2];
  ++v7[4];
  (*(*v7 + 112))(&v23, v7, &v24);
  if (v7[4] == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --v7[4];
  }

  v9 = v23;
  if (v23)
  {
    v10 = a1[4];
    atomic_fetch_add((v10 + 8), 1u);
    v11 = *(a1[8] + 8);
    if (v11)
    {
      atomic_fetch_add((v11 + 8), 1u);
      if (WebKit::RemoteRenderBundle::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteRenderBundle::s_heapRef, v8);
      }

      else
      {
        NonCompact = WebKit::RemoteRenderBundle::operatorNewSlow(0);
      }

      v13 = NonCompact;
      *(NonCompact + 8) = 1;
      *NonCompact = &unk_1F10FBA70;
      ++v9[4];
      *(NonCompact + 16) = v9;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 8), v3);
      v14 = *(v3 + 8);
      atomic_fetch_add(v14, 1u);
      *(v13 + 24) = v14;
      *(v13 + 32) = v10;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v11 + 16), v11);
      v15 = *(v11 + 16);
      atomic_fetch_add(v15, 1u);
      *(v13 + 40) = v15;
      *(v13 + 48) = a3;
      v16 = *(v13 + 32);
      atomic_fetch_add(v16 + 2, 1u);
      IPC::StreamServerConnection::startReceivingMessages(v16, v13, 0x70u, *(v13 + 48));
      if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }

      if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v11 + 8));
        (*(*v11 + 8))(v11);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v13);
      if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v13 + 8));
        (*(*v13 + 8))(v13);
      }

      goto LABEL_17;
    }

LABEL_35:
    __break(0xC471u);
    JUMPOUT(0x19DB7F430);
  }

  v21 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteRenderBundleEncoder::finish(const WebGPU::RenderBundleDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteRenderBundleEncoder.cpp 188: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteCommandEncoder::connection(buf, a1);
  v22 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22, v17);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_35;
  }

LABEL_17:
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    if (v18[4] == 1)
    {
      (*(*v18 + 8))(v18);
    }

    else
    {
      --v18[4];
    }
  }

  if (v25 == 1)
  {
    v19 = v24;
    v24 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v17);
}

uint64_t WebKit::RemoteRenderBundleEncoder::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::RenderBundleEncoder::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::RenderBundleEncoder::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 120);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteRenderPassEncoder::RemoteRenderPassEncoder(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBAC0;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x72u, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteRenderPassEncoder::~RemoteRenderPassEncoder(WebKit::RemoteRenderPassEncoder *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteRenderPassEncoder::~RemoteRenderPassEncoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteRenderPassEncoder::stopListeningForIPC(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x72u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setPipeline(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 8);
  if (v3)
  {
    v4 = (v3 + 16);
    ++*(v3 + 16);
    WebKit::WebGPU::ObjectHeap::convertRenderPipelineFromBacking(v3, a2, &v10);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4, v5);
    v7 = v10;
    if (v10)
    {
      v8 = *(v10 + 1);
      if (v8)
      {
        v9 = *(a1 + 16);
        ++v9[4];
        result = (*(*v9 + 16))(v9);
        if (v9[4] == 1)
        {
          result = (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }
      }

      v10 = 0;
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);

        return WTF::fastFree(v7, v8);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setIndexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a1 + 24) + 8);
  if (v8)
  {
    v14 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v8, a2, &v20);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
    v17 = v20;
    if (v20)
    {
      v18 = *(v20 + 1);
      if (v18)
      {
        v19 = *(a1 + 16);
        ++v19[4];
        result = (*(*v19 + 24))(v19, v18, a3, a4, a5, a6, a7);
        if (v19[4] == 1)
        {
          result = (*(*v19 + 8))(v19);
        }

        else
        {
          --v19[4];
        }
      }

      v20 = 0;
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);

        return WTF::fastFree(v17, v18);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setVertexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a1 + 24) + 8);
  if (v8)
  {
    v14 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v8, a3, &v21);
    v16 = v21;
    if (v21)
    {
      v17 = *(v21 + 1);
      if (v17)
      {
        ++v17[4];
      }

      v21 = 0;
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v15);
      }

      result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
      if (v17)
      {
        v19 = *(a1 + 16);
        ++v19[4];
        result = (*(*v19 + 32))(v19, a2, v17, a4, a5, a6, a7);
        if (v19[4] == 1)
        {
          result = (*(*v19 + 8))(v19);
        }

        else
        {
          --v19[4];
        }

        if (v17[4] == 1)
        {
          v20 = *(*v17 + 8);

          return v20(v17);
        }

        else
        {
          --v17[4];
        }
      }
    }

    else
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v14, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::unsetVertexBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  ++v6[4];
  result = (*(*v6 + 32))(v6, a2, 0, a3, a4, a5, a6);
  if (v6[4] == 1)
  {
    v8 = *(*v6 + 8);

    return v8(v6);
  }

  else
  {
    --v6[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::draw(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 40))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::drawIndexed(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 48))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::drawIndirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v12);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    v9 = v12;
    if (v12)
    {
      v10 = *(v12 + 1);
      if (v10)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 56))(v11, v10, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }
      }

      v12 = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);

        return WTF::fastFree(v9, v10);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::drawIndexedIndirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v12);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    v9 = v12;
    if (v12)
    {
      v10 = *(v12 + 1);
      if (v10)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 64))(v11, v10, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }
      }

      v12 = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);

        return WTF::fastFree(v9, v10);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setBindGroup(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v8 = *(*(a1 + 24) + 8);
    if (!v8)
    {
      result = 103;
      __break(0xC471u);
      return result;
    }

    v9 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertBindGroupFromBacking(v8, a3, &v18);
    v11 = v18;
    if (!v18)
    {
      return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    }

    v12 = *(v18 + 1);
    if (v12)
    {
      ++v12[4];
    }

    v18 = 0;
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v10);
    }

    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v9, v10);
    if (v12)
    {
      v14 = *(a1 + 16);
      ++v14[4];
      result = (*(*v14 + 72))(v14, a2, v12, a5);
      if (v14[4] == 1)
      {
        result = (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[4];
      }

      v15 = v12[4] - 1;
      if (v12[4] == 1)
      {
        v16 = *(*v12 + 8);

        return v16(v12);
      }

LABEL_16:
      v12[4] = v15;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 72))(v12, a2, 0, a5);
    v15 = v12[4] - 1;
    if (v12[4] != 1)
    {
      goto LABEL_16;
    }

    v17 = *(*v12 + 8);

    return v17(v12);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::pushDebugGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 88))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::popDebugGroup(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 96))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::insertDebugMarker(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 104))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}