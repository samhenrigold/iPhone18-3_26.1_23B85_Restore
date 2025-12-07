void WebCore::SocketStreamHandleImpl::createStreams(WebCore::SocketStreamHandleImpl *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 21))
  {
    goto LABEL_2;
  }

  v16 = CFNetworkCopySystemProxySettings();
  if (!v16)
  {
    *(this + 21) = 1;
    goto LABEL_2;
  }

  v17 = v16;
  v18 = CFNetworkCopyProxiesForURL(*(this + 17), v16);
  WebCore::SocketStreamHandleImpl::chooseProxyFromArray(this, v18);
  if (v18)
  {
    CFRelease(v18);
  }

  CFRelease(v17);
  if (*(this + 21))
  {
LABEL_2:
    keys = WTF::URL::host((this + 16));
    LODWORD(v36) = v2;
    BYTE4(v36) = v3;
    WTF::StringView::createCFString(&cf, &keys);
    writeStream = 0;
    readStream = 0;
    v4 = cf;
    v5 = WTF::URL::port((this + 16));
    if ((v5 & 0x10000) != 0)
    {
      v6 = v5;
    }

    else if (WTF::URL::protocolIs())
    {
      v6 = 443;
    }

    else
    {
      v6 = 80;
    }

    CFStreamCreatePairWithSocketToHost(0, v4, v6, &readStream, &writeStream);
    v7 = MEMORY[0x1E695E4D0];
    CFWriteStreamSetProperty(writeStream, *MEMORY[0x1E695AD48], *MEMORY[0x1E695E4D0]);
    v8 = *(this + 19);
    if (v8)
    {
      v9 = *MEMORY[0x1E695AE88];
      CFReadStreamSetProperty(readStream, *MEMORY[0x1E695AE88], v8);
      CFWriteStreamSetProperty(writeStream, v9, *(this + 19));
    }

    v10 = *(this + 15);
    *(this + 15) = readStream;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(this + 16);
    *(this + 16) = writeStream;
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(this + 21);
    if (v12 == 3)
    {
      v19 = *(this + 15);
      v20 = *MEMORY[0x1E695AE30];
      keys = *MEMORY[0x1E695AE28];
      v36 = v20;
      *values = *(this + 88);
      v21 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFReadStreamSetProperty(v19, *MEMORY[0x1E695AE20], v21);
      if (!v21)
      {
LABEL_25:
        v22 = WTF::URL::protocolIs();
        if (v22)
        {
          v23 = MEMORY[0x1E695E4C0];
          if ((WebCore::DeprecatedGlobalSettings::allowsAnySSLCertificate(v22) & 1) == 0 && !*(this + 113))
          {
            v23 = v7;
          }

          v24 = *v23;
          v25 = *MEMORY[0x1E695AE90];
          keys = *MEMORY[0x1E695AE98];
          v36 = v25;
          v37 = *MEMORY[0x1E695AEA0];
          v26 = *MEMORY[0x1E695AEA8];
          values[0] = cf;
          values[1] = v26;
          v34 = v24;
          v27 = CFDictionaryCreate(0, &keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v28 = *MEMORY[0x1E695AE80];
          CFReadStreamSetProperty(*(this + 15), *MEMORY[0x1E695AE80], v27);
          CFWriteStreamSetProperty(*(this + 16), v28, v27);
          if (v27)
          {
            CFRelease(v27);
          }
        }

        v29 = cf;
        cf = 0;
        if (v29)
        {
          CFRelease(v29);
        }

        return;
      }

      v15 = v21;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_25;
      }

      v13 = *MEMORY[0x1E695E928];
      keys = *MEMORY[0x1E695E920];
      v36 = v13;
      *values = *(this + 88);
      v14 = CFDictionaryCreate(0, &keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFReadStreamSetProperty(*(this + 15), *MEMORY[0x1E695E918], v14);
      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = v14;
    }

    CFRelease(v15);
    goto LABEL_25;
  }
}

void WebCore::SocketStreamHandleImpl::scheduleStreams(CFRunLoopSourceRef *this)
{
  clientContext.version = 0;
  clientContext.info = this;
  clientContext.retain = WebCore::SocketStreamHandleImpl::retainSocketStreamHandle;
  clientContext.release = WebCore::SocketStreamHandleImpl::releaseSocketStreamHandle;
  clientContext.copyDescription = WebCore::SocketStreamHandleImpl::copyCFStreamDescription;
  CFReadStreamSetClient(this[15], 0xFFFFFFFFFFFFFFFFLL, WebCore::SocketStreamHandleImpl::readStreamCallback, &clientContext);
  CFWriteStreamSetClient(this[16], 0xFFFFFFFFFFFFFFFFLL, WebCore::SocketStreamHandleImpl::writeStreamCallback, &clientContext);
  v2 = this[15];
  v3 = WebThreadRunLoop();
  v4 = *MEMORY[0x1E695E8D0];
  CFReadStreamScheduleWithRunLoop(v2, v3, *MEMORY[0x1E695E8D0]);
  v5 = this[16];
  v6 = WebThreadRunLoop();
  CFWriteStreamScheduleWithRunLoop(v5, v6, v4);
  CFReadStreamOpen(this[15]);
  CFWriteStreamOpen(this[16]);
  v7 = this[9];
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    v8 = WebThreadRunLoop();
    CFRunLoopRemoveSource(v8, this[9], v4);
    v9 = this[9];
    this[9] = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  *(this + 20) = 3;
  v10 = *(MEMORY[0x1E69E24B0] + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C79C0000, v10, OS_LOG_TYPE_DEFAULT, "SocketStreamHandleImpl::scheduleStreams - m_connectionSubState is WaitingForConnect", v11, 2u);
  }
}

atomic_uint *WebCore::SocketStreamHandleImpl::releaseSocketStreamHandle(atomic_uint *this, unint64_t a2)
{
  v2 = (this + 2);
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F472B1C8;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    this = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return this;
}

unint64_t WebCore::SocketStreamHandleImpl::copyCFStreamDescription(unint64_t this, void *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    v3 = *(v2 + 4);
    if (v3 < 0)
    {
      goto LABEL_14;
    }

    v4 = (v3 + 22);
    if (__OFADD__(v3, 22))
    {
      goto LABEL_14;
    }

    v5 = (*(v2 + 16) >> 2) & 1;
  }

  else
  {
    v5 = 1;
    v4 = 22;
  }

  this = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v9, v4, v5, "WebKit socket stream, ", 0x16uLL, v2);
  if (!v9)
  {
LABEL_14:
    __break(0xC471u);
    return this;
  }

  WTF::String::createCFString(&v10, &v9);
  v7 = v9;
  v8 = v10;
  v9 = 0;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v6);
    }
  }

  return v8;
}

void WebCore::SocketStreamHandleImpl::readStreamCallback(WebCore::SocketStreamHandleImpl *this, __CFReadStream *a2, uint64_t a3, void *a4)
{
  v8 = a3;
  v9 = a2;
  if (*(a3 + 120))
  {
    v4 = (a3 + 8);
    atomic_fetch_add((a3 + 8), 1u);
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_1F472B218;
    v5[1] = &v8;
    v5[2] = &v9;
    v10 = v5;
    WTF::callOnMainThreadAndWait();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      v6 = WTF::fastMalloc(0x10);
      *v6 = &unk_1F472B1C8;
      v6[1] = v4;
      v10 = v6;
      WTF::ensureOnMainThread();
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void WebCore::SocketStreamHandleImpl::writeStreamCallback(WebCore::SocketStreamHandleImpl *this, __CFWriteStream *a2, uint64_t a3, void *a4)
{
  v8 = a3;
  v9 = a2;
  if (*(a3 + 128))
  {
    v4 = (a3 + 8);
    atomic_fetch_add((a3 + 8), 1u);
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_1F472B240;
    v5[1] = &v8;
    v5[2] = &v9;
    v10 = v5;
    WTF::callOnMainThreadAndWait();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      v6 = WTF::fastMalloc(0x10);
      *v6 = &unk_1F472B1C8;
      v6[1] = v4;
      v10 = v6;
      WTF::ensureOnMainThread();
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

uint64_t WebCore::SocketStreamHandleImpl::pacExecutionCallback(atomic_uint *this, unint64_t a2, const __CFArray *a3, __CFError *a4)
{
  v9 = this;
  v10 = a2;
  if (this)
  {
    atomic_fetch_add(this + 2, 1u);
  }

  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F472B1F0;
  v5[1] = &v9;
  v5[2] = &v10;
  v11 = v5;
  WTF::callOnMainThreadAndWait();
  result = v11;
  if (v11)
  {
    result = (*(*v11 + 8))(v11);
  }

  if (this)
  {
    v7 = (this + 2);
    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      v8 = WTF::fastMalloc(0x10);
      *v8 = &unk_1F472B1C8;
      v8[1] = v7;
      v11 = v8;
      WTF::ensureOnMainThread();
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void WebCore::SocketStreamHandleImpl::chooseProxyFromArray(CFRunLoopSourceRef *this, CFArrayRef theArray)
{
  if (!theArray)
  {
    goto LABEL_43;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_43;
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex)
  {
    v7 = ValueAtIndex;
    v8 = CFGetTypeID(ValueAtIndex);
    if (v8 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v7, *MEMORY[0x1E695AE00]);
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFStringGetTypeID())
        {
          if (CFEqual(v10, *MEMORY[0x1E695ADF0]))
          {
            v12 = CFDictionaryGetValue(v7, *MEMORY[0x1E695ADD0]);
            if (v12)
            {
              v13 = v12;
              v14 = CFGetTypeID(v12);
              if (v14 == CFURLGetTypeID())
              {
                clientContext.version = 0;
                clientContext.info = this;
                clientContext.retain = WebCore::SocketStreamHandleImpl::retainSocketStreamHandle;
                clientContext.release = WebCore::SocketStreamHandleImpl::releaseSocketStreamHandle;
                clientContext.copyDescription = WebCore::SocketStreamHandleImpl::copyPACExecutionDescription;
                v15 = CFNetworkExecuteProxyAutoConfigurationURL(v13, this[17], WebCore::SocketStreamHandleImpl::pacExecutionCallback, &clientContext);
                v16 = this[9];
                this[9] = v15;
                if (v16)
                {
                  CFRelease(v16);
                }

                v17 = WebThreadRunLoop();
                CFRunLoopAddSource(v17, this[9], *MEMORY[0x1E695E8D0]);
                *(this + 20) = 1;
                return;
              }
            }
          }
        }
      }
    }
  }

  if (v5 < 1)
  {
LABEL_43:
    *(this + 21) = 1;
    return;
  }

  v39 = this;
  v18 = 0;
  v19 = 0;
  v20 = *MEMORY[0x1E695AE00];
  v21 = *MEMORY[0x1E695AE08];
  v22 = *MEMORY[0x1E695ADF8];
  do
  {
    v23 = CFArrayGetValueAtIndex(theArray, v19);
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFDictionaryGetTypeID())
      {
        v26 = CFDictionaryGetValue(v24, v20);
        if (v26)
        {
          v27 = v26;
          v28 = CFGetTypeID(v26);
          if (v28 == CFStringGetTypeID())
          {
            if (CFEqual(v27, v21))
            {
              this = v39;
              *(v39 + 21) = 2;
              v18 = v24;
              v29 = CFDictionaryGetValue(v24, *MEMORY[0x1E695ADD8]);
              if (!v29)
              {
                goto LABEL_31;
              }

              goto LABEL_25;
            }

            if (CFEqual(v27, v22))
            {
              *(v39 + 21) = 3;
              v18 = v24;
            }
          }
        }
      }
    }

    ++v19;
  }

  while (v5 != v19);
  this = v39;
  if (!v18)
  {
    goto LABEL_43;
  }

  v29 = CFDictionaryGetValue(v18, *MEMORY[0x1E695ADD8]);
  if (!v29)
  {
LABEL_31:
    v32 = 0;
    v33 = CFDictionaryGetValue(v18, *MEMORY[0x1E695ADE0]);
    if (!v33)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

LABEL_25:
  v30 = v29;
  v31 = CFGetTypeID(v29);
  if (v31 == CFStringGetTypeID())
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = CFDictionaryGetValue(v18, *MEMORY[0x1E695ADE0]);
  if (!v33)
  {
    goto LABEL_43;
  }

LABEL_32:
  v34 = v33;
  v35 = CFGetTypeID(v33);
  if (v35 == CFNumberGetTypeID())
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (!v32 || !v36)
  {
    goto LABEL_43;
  }

  CFRetain(v32);
  v37 = this[11];
  this[11] = v32;
  if (v37)
  {
    CFRelease(v37);
  }

  CFRetain(v36);
  v38 = this[12];
  this[12] = v36;
  if (v38)
  {

    CFRelease(v38);
  }
}

WTF::StringImpl **WTF::String::operator=(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v3 = *result;
  *result = v2;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v4 = result;
      WTF::StringImpl::destroy(v3, a2);
      return v4;
    }
  }

  return result;
}

void WebCore::SocketStreamHandleImpl::addCONNECTCredentials(CFNumberRef *this, __CFHTTPMessage *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = CFHTTPAuthenticationCreateFromResponse(0, a2);
  if (CFHTTPAuthenticationRequiresUserNameAndPassword(v3))
  {
    valuePtr = 0;
    CFNumberGetValue(this[12], kCFNumberIntType, &valuePtr);
    v4 = CFHTTPAuthenticationCopyMethod(v3);
    v5 = CFHTTPAuthenticationCopyRealm(v3);
    v6 = v5;
    if (v4 && v5)
    {
      MEMORY[0x1CCA63A40](&v94, this[11]);
      v7 = valuePtr;
      MEMORY[0x1CCA63A40](&password, v6);
      if (CFEqual(v4, *MEMORY[0x1E695AD88]))
      {
        v8 = 2;
      }

      else if (CFEqual(v4, *MEMORY[0x1E695AD90]))
      {
        v8 = 3;
      }

      else if (CFEqual(v4, *MEMORY[0x1E695AD98]))
      {
        v8 = 5;
      }

      else if (CFEqual(v4, *MEMORY[0x1E695ADA0]))
      {
        v8 = 6;
      }

      else
      {
        v8 = 1;
      }

      LOBYTE(cf) = 0;
      v85 = 0;
      MEMORY[0x1CCA65340](&v86, &v94, v7, 6, &password, v8, &cf);
      if (v85 == 1)
      {
        v22 = cf;
        cf = 0;
        if (v22)
        {
          CFRelease(v22);
        }
      }

      v23 = password;
      password = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v94;
      v94 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v21);
      }

      v82 = 0;
      v83 = 0;
      if (this[14])
      {
        goto LABEL_103;
      }

      WebCore::CredentialBase::CredentialBase(&v94);
      v97 = 0;
      v25 = this[20];
      if (v25 && (**v25)(v25))
      {
        WebCore::CredentialStorage::getFromPersistentStorage();
        v27 = password;
        password = 0;
        v28 = v94;
        v94 = v27;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }

        v29 = v91;
        v91 = 0;
        v30 = v95;
        v95 = v29;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v26);
        }

        LOBYTE(v96) = v92;
        v31 = v93;
        v93 = 0;
        v32 = v97;
        v97 = v31;
        if (v32)
        {
          CFRelease(v32);
          v33 = v93;
          v93 = 0;
          if (v33)
          {
            CFRelease(v33);
          }
        }

        v34 = v91;
        v91 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v26);
        }

        v35 = password;
        password = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v26);
        }

        if (WebCore::Credential::isEmpty(&v94))
        {
          WebCore::CredentialStorage::get();
          v37 = password;
          password = 0;
          v38 = v94;
          v94 = v37;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v36);
          }

          v39 = v91;
          v91 = 0;
          v40 = v95;
          v95 = v39;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v36);
          }

          LOBYTE(v96) = v92;
          v41 = v93;
          v93 = 0;
          v42 = v97;
          v97 = v41;
          if (v42)
          {
            CFRelease(v42);
            v43 = v93;
            v93 = 0;
            if (v43)
            {
              CFRelease(v43);
            }
          }

          v44 = v91;
          v91 = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v36);
          }

          v45 = password;
          password = 0;
          if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v45, v36);
          }
        }
      }

      isEmpty = WebCore::Credential::isEmpty(&v94);
      if ((isEmpty & 1) == 0)
      {
        v48 = *WebCore::CredentialBase::user(&v94);
        if (v48)
        {
          atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
        }

        v83 = v48;
        v49 = *WebCore::CredentialBase::password(&v94);
        if (v49)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
        }

        v82 = v49;
      }

      v50 = v97;
      v97 = 0;
      if (v50)
      {
        CFRelease(v50);
      }

      v51 = v95;
      v95 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v46);
      }

      v52 = v94;
      v94 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v46);
      }

      if (isEmpty)
      {
LABEL_103:
        v53 = this[7];
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v54 = v94;
        LODWORD(v94) = 0;
        v55 = this[2];
        if (v55)
        {
          atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
        }

        v95 = v55;
        if (v54)
        {
          atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
        }

        v96 = v54;
        LOBYTE(v97) = 0;
        (*(*v53 + 56))(v53, this, &v94);
        v57 = v96;
        v96 = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v56);
        }

        v58 = v95;
        v95 = 0;
        if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v58, v56);
        }

        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v56);
        }
      }

      else
      {
        Request = CFHTTPMessageCreateRequest(0, @"GET", this[17], *MEMORY[0x1E695ADB8]);
        WTF::String::createCFString(&v94, &v83);
        v60 = v94;
        WTF::String::createCFString(&password, &v82);
        CFHTTPMessageApplyCredentials(Request, v3, v60, password, 0);
        v61 = password;
        password = 0;
        if (v61)
        {
          CFRelease(v61);
        }

        v62 = v94;
        v94 = 0;
        if (v62)
        {
          CFRelease(v62);
        }

        v63 = CFHTTPMessageCopyHeaderFieldValue(Request, @"Proxy-Authorization");
        if (v63)
        {
          v64 = v63;
          v81 = Request;
          v65 = this[15];
          v66 = *MEMORY[0x1E695AE20];
          v67 = CFReadStreamCopyProperty(v65, *MEMORY[0x1E695AE20]);
          v68 = *MEMORY[0x1E695E480];
          MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v67);
          v94 = @"Proxy-Authorization";
          password = v64;
          v70 = CFDictionaryCreate(v68, &v94, &password, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695AE18], v70);
          CFReadStreamSetProperty(v65, v66, MutableCopy);
          if (v70)
          {
            CFRelease(v70);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          Request = v81;
          if (v67)
          {
            CFRelease(v67);
          }

          *(this + 112) = 1;
          CFRelease(v64);
        }

        else
        {
          v71 = this[7];
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v72 = v94;
          LODWORD(v94) = 0;
          v73 = this[2];
          if (v73)
          {
            atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
          }

          v95 = v73;
          if (v72)
          {
            atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
          }

          v96 = v72;
          LOBYTE(v97) = 0;
          (*(*v71 + 56))(v71, this, &v94);
          v74 = v96;
          v96 = 0;
          if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v74, v56);
          }

          v75 = v95;
          v95 = 0;
          if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v56);
          }

          if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v72, v56);
          }
        }

        if (Request)
        {
          CFRelease(Request);
        }
      }

      v76 = v82;
      v82 = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v56);
      }

      v77 = v83;
      v83 = 0;
      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v56);
      }

      v78 = v88;
      v88 = 0;
      if (v78)
      {
        CFRelease(v78);
      }

      v79 = v87;
      v87 = 0;
      if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v56);
      }

      v80 = v86;
      v86 = 0;
      if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v80, v56);
      }
    }

    else
    {
      v15 = this[7];
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v16 = v94;
      LODWORD(v94) = 0;
      v17 = this[2];
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      v95 = v17;
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v96 = v16;
      LOBYTE(v97) = 0;
      (*(*v15 + 56))(v15, this, &v94);
      v19 = v96;
      v96 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }

      v20 = v95;
      v95 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v18);
      }

      if (!v6)
      {
        if (!v4)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    CFRelease(v6);
    if (!v4)
    {
      goto LABEL_35;
    }

LABEL_34:
    CFRelease(v4);
    goto LABEL_35;
  }

  v9 = this[7];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v10 = v94;
  LODWORD(v94) = 0;
  v11 = this[2];
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v95 = v11;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v96 = v10;
  LOBYTE(v97) = 0;
  (*(*v9 + 56))(v9, this, &v94);
  v13 = v96;
  v96 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v95;
  v95 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v12);
  }

LABEL_35:
  if (v3)
  {
    CFRelease(v3);
  }
}

void WebCore::SocketStreamError::~SocketStreamError(WebCore::SocketStreamError *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

void WebCore::SocketStreamHandleImpl::platformClose(WebCore::SocketStreamHandleImpl *this)
{
  v2 = *(this + 9);
  v3 = MEMORY[0x1E695E8D0];
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    v4 = WebThreadRunLoop();
    CFRunLoopRemoveSource(v4, *(this + 9), *v3);
    v5 = *(this + 9);
    *(this + 9) = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(this + 15);
  if (v6)
  {
    v7 = WebThreadRunLoop();
    v8 = *v3;
    CFReadStreamUnscheduleFromRunLoop(v6, v7, v8);
    v9 = *(this + 16);
    v10 = WebThreadRunLoop();
    CFWriteStreamUnscheduleFromRunLoop(v9, v10, v8);
    CFReadStreamClose(*(this + 15));
    CFWriteStreamClose(*(this + 16));
    v11 = *(this + 15);
    *(this + 15) = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(this + 16);
    *(this + 16) = 0;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else if (*(this + 20) >= 2u)
  {
    return;
  }

  v13 = *(**(this + 7) + 24);

  v13();
}

WTF::StringImpl *WebCore::SocketStreamHandleImpl::reportErrorToClient(WebCore::SocketStreamHandleImpl *this, CFErrorRef err)
{
  Code = CFErrorGetCode(err);
  v5 = CFErrorCopyDescription(err);
  MEMORY[0x1CCA63A40](&v13, v5);
  v6 = v5;
  v7 = v13;
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *(this + 7);
  LODWORD(v13) = Code;
  v9 = *(this + 2);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v14 = v9;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v15 = v7;
  v16 = 0;
  (*(*v8 + 56))(v8, this, &v13);
  v11 = v15;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  result = v14;
  v14 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
  }

  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, v10);
    }
  }

  return result;
}

void WebCore::SocketStreamHandleImpl::~SocketStreamHandleImpl(WebCore::SocketStreamHandleImpl *this, void *a2)
{
  v2 = this;
  *this = &unk_1F472AC28;
  v3 = *(this + 24);
  v4 = *(this + 25);
  v5 = *(this + 52);
  v6 = *(this + 23);
  v7 = v3 - v6;
  if (v3 < v6)
  {
    if (v3 <= v5)
    {
      if (v3)
      {
        v8 = 8 * v3;
        v9 = *(this + 25);
        do
        {
          v10 = *v9;
          *v9 = 0;
          if (v10)
          {
            v11 = *v10;
            if (*v10)
            {
              *v10 = 0;
              *(v10 + 2) = 0;
              WTF::fastFree(v11, a2);
            }

            this = WTF::fastFree(v10, a2);
          }

          ++v9;
          v8 -= 8;
        }

        while (v8);
        v6 = *(v2 + 23);
      }

      if (v6 <= v5)
      {
        if (v6 != v5)
        {
          v13 = 8 * v6;
          v14 = (v4 + v13);
          v15 = 8 * v5 - v13;
          do
          {
            v16 = *v14;
            *v14 = 0;
            if (v16)
            {
              v17 = *v16;
              if (*v16)
              {
                *v16 = 0;
                *(v16 + 2) = 0;
                WTF::fastFree(v17, a2);
              }

              WTF::fastFree(v16, a2);
            }

            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        goto LABEL_31;
      }
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v12 = v5 - v6;
  if (v5 < v6)
  {
    goto LABEL_58;
  }

  if (v7 == -1)
  {
    v7 = v5 - v6;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v12 < v7)
    {
      goto LABEL_58;
    }

    if (!v7)
    {
      goto LABEL_31;
    }
  }

  v18 = 8 * v7;
  v19 = (v4 + 8 * v6);
  do
  {
    v20 = *v19;
    *v19 = 0;
    if (v20)
    {
      v21 = *v20;
      if (*v20)
      {
        *v20 = 0;
        *(v20 + 2) = 0;
        WTF::fastFree(v21, a2);
      }

      WTF::fastFree(v20, a2);
    }

    ++v19;
    v18 -= 8;
  }

  while (v18);
LABEL_31:
  v22 = *(v2 + 25);
  if (v22)
  {
    *(v2 + 25) = 0;
    *(v2 + 52) = 0;
    WTF::fastFree(v22, a2);
  }

  this = *(v2 + 20);
  *(v2 + 20) = 0;
  if (this)
  {
    v6 = (this + 8);
    LODWORD(v7) = atomic_fetch_add(this + 2, 0xFFFFFFFF);
    if (v7 == 1)
    {
LABEL_59:
      atomic_store(v7, v6);
      (*(*this + 16))(this, a2);
      v23 = *(v2 + 19);
      *(v2 + 19) = 0;
      if (!v23)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  v23 = *(v2 + 19);
  *(v2 + 19) = 0;
  if (v23)
  {
LABEL_36:
    CFRelease(v23);
  }

LABEL_37:
  v24 = *(v2 + 18);
  *(v2 + 18) = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, a2);
  }

  v25 = *(v2 + 17);
  *(v2 + 17) = 0;
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(v2 + 15);
  *(v2 + 15) = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(v2 + 13);
  *(v2 + 13) = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(v2 + 12);
  *(v2 + 12) = 0;
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(v2 + 11);
  *(v2 + 11) = 0;
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(v2 + 9);
  *(v2 + 9) = 0;
  if (v31)
  {
    CFRelease(v31);
  }

  *v2 = &unk_1F472ABE8;
  v32 = *(v2 + 2);
  *(v2 + 2) = 0;
  if (v32)
  {
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, a2);
    }
  }
}

{
  WebCore::SocketStreamHandleImpl::~SocketStreamHandleImpl(this, a2);

  WTF::fastFree(v2, v3);
}

unsigned int *WebBroadcastChannelRegistry::getOrCreate@<X0>(unsigned int *this@<X0>, uint64_t *a3@<X8>)
{
  {
    {
      goto LABEL_3;
    }
  }

  else
  {
    WebBroadcastChannelRegistry::getOrCreate(BOOL)::defaultSessionRegistry = 0;
    {
      goto LABEL_3;
    }
  }

  WebBroadcastChannelRegistry::getOrCreate(BOOL)::privateSessionRegistry = 0;
LABEL_3:
  if (this)
  {
    v4 = &WebBroadcastChannelRegistry::getOrCreate(BOOL)::privateSessionRegistry;
  }

  else
  {
    v4 = &WebBroadcastChannelRegistry::getOrCreate(BOOL)::defaultSessionRegistry;
  }

  if (*v4)
  {
    v5 = *(*v4 + 8);
    if (v5)
    {
      ++*(v5 + 8);
      *a3 = v5;
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x20);
  *(v6 + 8) = 1;
  *v6 = &unk_1F472AFD8;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *a3 = v6;
  v8 = WTF::fastCompactMalloc(0x10);
  *v8 = 1;
  *(v8 + 8) = v6;
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
    v11 = *(v6 + 16);
    atomic_fetch_add(v11, 1u);
    this = *v4;
    *v4 = v11;
    if (!this)
    {
      return this;
    }
  }

  else
  {
    v10 = *(v6 + 16);
    atomic_fetch_add(v10, 1u);
    this = *v4;
    *v4 = v10;
    if (!this)
    {
      return this;
    }
  }

  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this);

    return WTF::fastFree(this, v7);
  }

  return this;
}

uint64_t WebBroadcastChannelRegistry::registerChannel(uint64_t a1, const WebCore::SecurityOrigin **a2, const WTF::StringImpl **a3, uint64_t a4)
{
  v58 = a4;
  if (*a2 == -1)
  {
    __break(0xC471u);
    goto LABEL_87;
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E67CCLL);
  }

  v7 = *(a1 + 24);
  if (v7 || (WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash((a1 + 24), 8uLL, 0), (v7 = *(a1 + 24)) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v59 = -1640531527;
  v60 = 0;
  v61 = 0;
  v9 = a2[1];
  WebCore::add(&v59, *a2);
  WebCore::add(&v59, v9);
  v12 = v59;
  if (v61 == 1)
  {
    v13 = (v59 + v60) ^ ((v59 + v60) << 11);
    v12 = v13 + (v13 >> 17);
  }

  v14 = 0;
  v15 = (v12 ^ (8 * v12)) + ((v12 ^ (8 * v12)) >> 5);
  v16 = (v15 ^ (4 * v15)) + ((v15 ^ (4 * v15)) >> 15);
  if (v16 == v16 << 10)
  {
    v17 = 0x800000;
  }

  else
  {
    v17 = (v16 << 10) ^ v16;
  }

  for (i = 1; ; ++i)
  {
    v19 = v17 & v8;
    v20 = (v7 + 24 * (v17 & v8));
    v21 = *v20;
    if (*v20 == -1)
    {
      v14 = (v7 + 24 * v19);
      goto LABEL_13;
    }

    if (!v21)
    {
      break;
    }

    if (WebCore::SecurityOrigin::isSameOriginAs(v21, *a2) && (WebCore::SecurityOrigin::isSameOriginAs(v20[1], a2[1]) & 1) != 0)
    {
      goto LABEL_45;
    }

LABEL_13:
    v17 = i + v19;
  }

  if (v14)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    --*(*(a1 + 24) - 16);
    v20 = v14;
  }

  v22 = *a2;
  atomic_fetch_add(*a2, 1u);
  v23 = *v20;
  *v20 = v22;
  if (v23)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v23, v10);
  }

  v24 = a2[1];
  atomic_fetch_add(v24, 1u);
  v25 = v20[1];
  v20[1] = v24;
  if (v25)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v25, v10);
  }

  v26 = v20[2];
  v20[2] = 0;
  if (v26)
  {
    v27 = *(v26 - 4);
    if (v27)
    {
      v28 = v26;
      do
      {
        v29 = *v28;
        if (*v28 != -1)
        {
          v30 = *(v28 + 8);
          if (v30)
          {
            *(v28 + 8) = 0;
            *(v28 + 16) = 0;
            WTF::fastFree(v30, v10);
            v29 = *v28;
          }

          *v28 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v10);
          }
        }

        v28 += 24;
        --v27;
      }

      while (v27);
    }

    WTF::fastFree((v26 - 16), v10);
  }

  v31 = *(a1 + 24);
  if (v31)
  {
    v32 = *(v31 - 16);
    v33 = *(v31 - 12) + 1;
    *(v31 - 12) = v33;
    v34 = (v32 + v33);
    v35 = *(v31 - 4);
    if (v35 <= 0x400)
    {
      goto LABEL_38;
    }

LABEL_42:
    if (v35 <= 2 * v34)
    {
LABEL_43:
      v36 = (v35 << (6 * v33 >= (2 * v35)));
      goto LABEL_44;
    }
  }

  else
  {
    v33 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v34 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v35 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_42;
    }

LABEL_38:
    if (3 * v35 <= 4 * v34)
    {
      if (v35)
      {
        goto LABEL_43;
      }

      v36 = 8;
LABEL_44:
      v20 = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash((a1 + 24), v36, v20);
    }
  }

LABEL_45:
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E67ECLL);
  }

  if (!*a3)
  {
    __break(0xC471u);
LABEL_87:
    JUMPOUT(0x1C79E67ACLL);
  }

  v37 = v20[2];
  if (v37 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v20 + 2, 8uLL, 0), (v37 = v20[2]) != 0))
  {
    v38 = *(v37 - 8);
    v39 = *a3;
    v40 = *(*a3 + 4);
    if (v40 >= 0x100)
    {
      goto LABEL_50;
    }

LABEL_53:
    v41 = WTF::StringImpl::hashSlowCase(v39);
  }

  else
  {
    v38 = 0;
    v39 = *a3;
    v40 = *(*a3 + 4);
    if (v40 < 0x100)
    {
      goto LABEL_53;
    }

LABEL_50:
    v41 = v40 >> 8;
  }

  v42 = 0;
  v43 = 1;
  while (2)
  {
    v44 = v41 & v38;
    v45 = v37 + 24 * (v41 & v38);
    v46 = *v45;
    if (*v45 == -1)
    {
      v42 = (v37 + 24 * v44);
LABEL_56:
      v41 = v43 + v44;
      ++v43;
      continue;
    }

    break;
  }

  if (v46)
  {
    result = WTF::equal(v46, *a3, v11);
    if (result)
    {
      goto LABEL_79;
    }

    goto LABEL_56;
  }

  if (v42)
  {
    v46 = 0;
    *v42 = 0;
    v42[1] = 0;
    v42[2] = 0;
    --*(v20[2] - 16);
    v45 = v42;
  }

  v48 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    v46 = *v45;
  }

  *v45 = v48;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v10);
  }

  result = *(v45 + 8);
  if (result)
  {
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    result = WTF::fastFree(result, v10);
  }

  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  v49 = v20[2];
  if (v49)
  {
    v50 = *(v49 - 16);
    v51 = *(v49 - 12) + 1;
    *(v49 - 12) = v51;
    v52 = (v50 + v51);
    v53 = *(v49 - 4);
    if (v53 <= 0x400)
    {
      goto LABEL_72;
    }

LABEL_76:
    if (v53 <= 2 * v52)
    {
LABEL_77:
      v54 = (v53 << (6 * v51 >= (2 * v53)));
      goto LABEL_78;
    }
  }

  else
  {
    v51 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v52 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v53 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_76;
    }

LABEL_72:
    if (3 * v53 <= 4 * v52)
    {
      if (v53)
      {
        goto LABEL_77;
      }

      v54 = 8;
LABEL_78:
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v20 + 2, v54, v45);
      v45 = result;
    }
  }

LABEL_79:
  v55 = *(v45 + 20);
  if (v55 == *(v45 + 16))
  {
    result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v45 + 8, v55 + 1, &v58);
    v55 = *(v45 + 20);
    v56 = *(v45 + 8);
    v57 = *result;
  }

  else
  {
    v56 = *(v45 + 8);
    v57 = v58;
  }

  *(v56 + 8 * v55) = v57;
  ++*(v45 + 20);
  return result;
}

uint64_t WebBroadcastChannelRegistry::unregisterChannel(uint64_t a1, const WebCore::SecurityOrigin **a2, const WTF::StringImpl **a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  result = a1 + 24;
  if (!v5)
  {
    return result;
  }

  v8 = result;
  result = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>( result,  a2);
  v10 = result;
  v11 = *v8;
  if (!result && v11)
  {
    v12 = *(v11 - 4);
    v10 = v11 + 24 * v12;
LABEL_7:
    v11 += 24 * v12;
    goto LABEL_8;
  }

  if (v11)
  {
    v12 = *(v11 - 4);
    goto LABEL_7;
  }

LABEL_8:
  if (v10 == v11)
  {
    return result;
  }

  v13 = *a3;
  if (*a3 == -1 || !v13)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E69B0);
  }

  v14 = *(v10 + 16);
  v15 = *(v14 - 8);
  v16 = *(v13 + 4);
  if (v16 < 0x100)
  {
    v17 = WTF::StringImpl::hashSlowCase(v13);
  }

  else
  {
    v17 = v16 >> 8;
  }

  for (i = 0; ; v17 = i + v19)
  {
    v19 = v17 & v15;
    v20 = v14 + 24 * (v17 & v15);
    result = *v20;
    if (*v20 == -1)
    {
      goto LABEL_15;
    }

    if (!result)
    {
      break;
    }

    result = WTF::equal(result, *a3, v9);
    if (result)
    {
      v21 = *(v20 + 20);
      if (!v21)
      {
        return result;
      }

      goto LABEL_22;
    }

LABEL_15:
    ++i;
  }

  v20 = *(v10 + 16) + 24 * *(*(v10 + 16) - 4);
  v21 = *(v20 + 20);
  if (!v21)
  {
    return result;
  }

LABEL_22:
  v22 = *(v20 + 8);
  if (*v22 == a4)
  {
    v23 = 0;
LABEL_27:
    result = &v22[v23];
    if ((result + 8) != &v22[v21])
    {
      result = memmove(result, (result + 8), 8 * (v21 - v23) - 8);
      LODWORD(v21) = *(v20 + 20);
    }

    *(v20 + 20) = v21 - 1;
  }

  else
  {
    v23 = 0;
    while (v21 - 1 != v23)
    {
      v24 = v22[++v23];
      if (v24 == a4)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t WebBroadcastChannelRegistry::postMessage(uint64_t a1, const WebCore::SecurityOrigin **a2, const WTF::StringImpl **a3, uint64_t a4, atomic_uint *volatile *a5, uint64_t *a6)
{
  result = WTF::fastMalloc(0x10);
  v14 = result;
  *result = 1;
  v15 = *a6;
  *a6 = 0;
  *(result + 8) = v15;
  v17 = *(a1 + 24);
  v16 = (a1 + 24);
  if (!v17)
  {
    goto LABEL_30;
  }

  result = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>( v16,  a2);
  v19 = result;
  v20 = *v16;
  if (!result && v20)
  {
    v21 = *(v20 - 4);
    v19 = v20 + 24 * v21;
LABEL_7:
    v20 += 24 * v21;
    goto LABEL_8;
  }

  if (v20)
  {
    v21 = *(v20 - 4);
    goto LABEL_7;
  }

LABEL_8:
  if (v19 == v20)
  {
    goto LABEL_30;
  }

  v22 = *a3;
  if (*a3 == -1 || !v22)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E6CC8);
  }

  v23 = *(v19 + 16);
  v24 = *(v23 - 8);
  v25 = *(v22 + 4);
  v40 = a5;
  if (v25 < 0x100)
  {
    v26 = WTF::StringImpl::hashSlowCase(v22);
  }

  else
  {
    v26 = v25 >> 8;
  }

  for (i = 0; ; v26 = i + v28)
  {
    v28 = v26 & v24;
    v29 = v23 + 24 * (v26 & v24);
    result = *v29;
    if (*v29 == -1)
    {
      goto LABEL_15;
    }

    if (!result)
    {
      break;
    }

    result = WTF::equal(result, *a3, v18);
    if (result)
    {
      v30 = *(v29 + 20);
      v31 = v40;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

LABEL_15:
    ++i;
  }

  v29 = *(v19 + 16) + 24 * *(*(v19 + 16) - 4);
  v30 = *(v29 + 20);
  v31 = v40;
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_22:
  v32 = *(v29 + 8);
  v33 = 8 * v30;
  do
  {
    if (*v32 != a4)
    {
      v34 = *v31;
      atomic_fetch_add(*v31, 1u);
      v42 = v34;
      atomic_fetch_add(v14, 1u);
      v35 = WTF::fastMalloc(0x10);
      *v35 = &unk_1F472B268;
      v35[1] = v14;
      v41 = v35;
      WebCore::BroadcastChannel::dispatchMessageTo();
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      result = v42;
      if (v42 && atomic_fetch_add(v42, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v42);
        WebCore::SerializedScriptValue::~SerializedScriptValue(v42);
        result = WTF::fastFree(v36, v37);
      }
    }

    ++v32;
    v33 -= 8;
  }

  while (v33);
LABEL_30:
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    v38 = *(v14 + 8);
    if (v38)
    {
      *(v14 + 8) = 0;
      (*(*v38 + 16))(v38);
      (*(*v38 + 8))(v38);
      v39 = *(v14 + 8);
      *(v14 + 8) = 0;
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }
    }

    return WTF::fastFree(v14, v13);
  }

  return result;
}

WTF::StringImpl *WebResourceLoadScheduler::hostForURL(WTF::StringImpl *result, uint64_t a2, WTF::URL *this, int a4)
{
  v5 = result;
  if ((*(this + 8) & 2) == 0)
  {
    v6 = *(a2 + 24);
    *result = v6;
    if (v6)
    {
      ++*(v6 + 8);
    }

    return result;
  }

  WTF::URL::host(this);
  if ((v8 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  if (v43 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E70C0);
  }

  if (!v43)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E70E0);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(v11 - 8);
    v13 = *(v43 + 4);
    if (v13 < 0x100)
    {
      v14 = WTF::StringImpl::hashSlowCase(v43);
    }

    else
    {
      v14 = v13 >> 8;
    }

    for (i = 0; ; v14 = i + v16)
    {
      v16 = v14 & v12;
      v17 = *(v11 + 16 * v16);
      if (v17 != -1)
      {
        if (!v17)
        {
          goto LABEL_20;
        }

        if (WTF::equal(v17, v43, v10))
        {
          break;
        }
      }

      ++i;
    }

    v18 = *(v11 + 16 * v16 + 8);
    *v5 = v18;
    if (v18)
    {
      ++*(v18 + 8);
      goto LABEL_58;
    }
  }

  else
  {
LABEL_20:
    *v5 = 0;
  }

  if (!a4)
  {
    if (qword_1ED6A60D8)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A60D8, v9);
    }

    else
    {
      NonCompact = WebResourceLoadScheduler::HostInformation::operatorNewSlow(0);
    }

    v21 = NonCompact;
    v22 = _MergedGlobals_8;
    *NonCompact = 0;
    *(NonCompact + 8) = 0;
    *(NonCompact + 16) = 0u;
    *(NonCompact + 32) = 0u;
    *(NonCompact + 48) = 0u;
    *(NonCompact + 64) = 0u;
    *(NonCompact + 80) = 0u;
    *(NonCompact + 96) = 0u;
    *(NonCompact + 112) = 0u;
    *(NonCompact + 128) = 0u;
    *(NonCompact + 144) = 0u;
    *(NonCompact + 160) = 0u;
    *(NonCompact + 176) = 0;
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    v23 = *(NonCompact + 8) + 1;
    *(NonCompact + 184) = v43;
    *(NonCompact + 192) = v22;
    *(NonCompact + 8) = v23;
    *v5 = NonCompact;
    v24 = *(a2 + 16);
    if (v24 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((a2 + 16), 8uLL), (v24 = *(a2 + 16)) != 0))
    {
      v25 = *(v24 - 8);
      v26 = v43;
      v27 = *(v43 + 4);
      if (v27 >= 0x100)
      {
LABEL_27:
        v28 = v27 >> 8;
LABEL_30:
        v29 = 0;
        for (j = 1; ; ++j)
        {
          v31 = v28 & v25;
          v32 = (v24 + 16 * (v28 & v25));
          v33 = *v32;
          if (*v32 == -1)
          {
            v29 = (v24 + 16 * v31);
          }

          else
          {
            if (!v33)
            {
              if (v29)
              {
                *v29 = 0;
                v29[1] = 0;
                --*(*(a2 + 16) - 16);
                v32 = v29;
              }

              atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
              v34 = *v32;
              *v32 = v43;
              if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v9);
              }

              v35 = v32[1];
              v32[1] = v21;
              if (v35)
              {
                WebResourceLoadScheduler::HostInformation::~HostInformation(v35, v9);
                if (!*(v36 + 8))
                {
                  bmalloc::api::tzoneFree(v36, v9);
                  goto LABEL_46;
                }

                *(v36 + 192) = 0;
                *(v36 + 160) = 0u;
                *(v36 + 176) = 0u;
                *(v36 + 128) = 0u;
                *(v36 + 144) = 0u;
                *(v36 + 96) = 0u;
                *(v36 + 112) = 0u;
                *(v36 + 64) = 0u;
                *(v36 + 80) = 0u;
                *(v36 + 32) = 0u;
                *(v36 + 48) = 0u;
                *v36 = 0u;
                *(v36 + 16) = 0u;
                v37 = *(a2 + 16);
                if (!v37)
                {
LABEL_54:
                  v39 = 1;
                  *(v37 - 12) = 1;
                  v40 = (*(v37 - 16) + 1);
                  v41 = *(v37 - 4);
                  if (v41 > 0x400)
                  {
                    goto LABEL_55;
                  }

LABEL_48:
                  if (3 * v41 > 4 * v40)
                  {
                    goto LABEL_58;
                  }

                  if (!v41)
                  {
                    v42 = 8;
LABEL_57:
                    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((a2 + 16), v42);
                    goto LABEL_58;
                  }

LABEL_56:
                  v42 = (v41 << (6 * v39 >= (2 * v41)));
                  goto LABEL_57;
                }
              }

              else
              {
LABEL_46:
                v37 = *(a2 + 16);
                if (!v37)
                {
                  goto LABEL_54;
                }
              }

              v38 = *(v37 - 16);
              v39 = *(v37 - 12) + 1;
              *(v37 - 12) = v39;
              v40 = (v38 + v39);
              v41 = *(v37 - 4);
              if (v41 <= 0x400)
              {
                goto LABEL_48;
              }

LABEL_55:
              if (v41 > 2 * v40)
              {
                goto LABEL_58;
              }

              goto LABEL_56;
            }

            if (WTF::equal(v33, v43, v20))
            {
              WebResourceLoadScheduler::HostInformation::~HostInformation(v21, v9);
              if (*(v21 + 8))
              {
                *(v21 + 192) = 0;
                *(v21 + 160) = 0u;
                *(v21 + 176) = 0u;
                *(v21 + 128) = 0u;
                *(v21 + 144) = 0u;
                *(v21 + 96) = 0u;
                *(v21 + 112) = 0u;
                *(v21 + 64) = 0u;
                *(v21 + 80) = 0u;
                *(v21 + 32) = 0u;
                *(v21 + 48) = 0u;
                *v21 = 0u;
                *(v21 + 16) = 0u;
              }

              else
              {
                bmalloc::api::tzoneFree(v21, v9);
              }

              goto LABEL_58;
            }
          }

          v28 = j + v31;
        }
      }
    }

    else
    {
      v25 = 0;
      v26 = v43;
      v27 = *(v43 + 4);
      if (v27 >= 0x100)
      {
        goto LABEL_27;
      }
    }

    v28 = WTF::StringImpl::hashSlowCase(v26);
    goto LABEL_30;
  }

LABEL_58:
  result = v43;
  if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v43, v9);
  }

  return result;
}

void WebResourceLoadScheduler::WebResourceLoadScheduler(WebResourceLoadScheduler *this, void *a2)
{
  *(this + 2) = 0;
  *this = &unk_1F472AC68;
  *(this + 2) = 0;
  if (qword_1ED6A60D8)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A60D8, a2);
  }

  else
  {
    NonCompact = WebResourceLoadScheduler::HostInformation::operatorNewSlow(0);
  }

  *NonCompact = 0;
  *(NonCompact + 8) = 0;
  *(NonCompact + 16) = 0u;
  *(NonCompact + 32) = 0u;
  *(NonCompact + 48) = 0u;
  *(NonCompact + 64) = 0u;
  *(NonCompact + 80) = 0u;
  *(NonCompact + 96) = 0u;
  *(NonCompact + 112) = 0u;
  *(NonCompact + 128) = 0u;
  *(NonCompact + 144) = 0u;
  *(NonCompact + 160) = 0u;
  *(NonCompact + 176) = 0u;
  *(NonCompact + 192) = 10000;
  *(this + 3) = NonCompact;
  WebCore::TimerBase::TimerBase((this + 32));
  *(this + 4) = &unk_1F472A8C8;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F472B290;
  *(v4 + 1) = this;
  *(v4 + 2) = WebResourceLoadScheduler::requestTimerFired;
  *(v4 + 3) = 0;
  *(this + 10) = v4;
  *(this + 22) = 0;
  *(this + 92) = 0;
  _MergedGlobals_8 = WebCore::initializeMaximumHTTPConnectionCountPerHost(v4);
}

void WebResourceLoadScheduler::~WebResourceLoadScheduler(WebResourceLoadScheduler *this)
{
  v2 = (this + 32);
  *(this + 4) = &unk_1F472A8C8;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::TimerBase::~TimerBase(v2);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    WebResourceLoadScheduler::HostInformation::~HostInformation(v5, v4);
    if (*(v6 + 8))
    {
      *(v6 + 192) = 0;
      *(v6 + 160) = 0u;
      *(v6 + 176) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 144) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }

    bmalloc::api::tzoneFree(v6, v4);
  }

  v7 = *(this + 2);
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  v8 = *(v7 - 1);
  if (v8)
  {
    v9 = v7;
    while (1)
    {
      if (*v9 == -1)
      {
        goto LABEL_9;
      }

      v10 = v9[1];
      v9[1] = 0;
      if (!v10)
      {
        goto LABEL_14;
      }

      WebResourceLoadScheduler::HostInformation::~HostInformation(v10, v4);
      if (!*(v11 + 8))
      {
        break;
      }

      *(v11 + 192) = 0;
      *(v11 + 160) = 0u;
      *(v11 + 176) = 0u;
      *(v11 + 128) = 0u;
      *(v11 + 144) = 0u;
      *(v11 + 96) = 0u;
      *(v11 + 112) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      v12 = *v9;
      *v9 = 0;
      if (v12)
      {
LABEL_15:
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v4);
        }
      }

LABEL_9:
      v9 += 2;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    bmalloc::api::tzoneFree(v11, v4);
LABEL_14:
    v12 = *v9;
    *v9 = 0;
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_19:
  WTF::fastFree((v7 - 2), v4);
LABEL_20:

  MEMORY[0x1EEE55690](this);
}

{
  WebResourceLoadScheduler::~WebResourceLoadScheduler(this);
  if (*(v1 + 8))
  {
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t WebResourceLoadScheduler::loadResource(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *a6;
  *a6 = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F472B2B8;
  v8[1] = a1;
  v8[2] = v7;
  v10 = v8;
  WebCore::SubresourceLoader::create();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebResourceLoadScheduler::loadResourceSynchronously(int a1, WebCore::FrameLoader *this, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(WebCore::FrameLoader::frame(this) + 224);
  if (v14)
  {
    v15 = WebCore::SecurityContext::securityOrigin((v14 + 208));
  }

  else
  {
    v15 = 0;
  }

  v16 = WebCore::FrameLoader::networkingContext(this);
  v17 = *(a6 + 2) != 0;

  return MEMORY[0x1EEE55940](v16, a4, v17, v15, a8, a9, a10);
}

_BYTE *WebResourceLoadScheduler::scheduleLoad(WebResourceLoadScheduler *this, WebCore::ResourceLoader *a2)
{
  if (*(this + 22) || (v17 = *(a2 + 5), v18 = (*(*a2 + 160))(a2), v19 = WebCore::ResourceRequestBase::url(v18), WebCore::DocumentLoader::archiveResourceForURL(&v40, v17, v19), v20 = v40, v40 = 0, !v20))
  {
    v4 = (*(*a2 + 160))(a2);
    v5 = WebCore::ResourceRequestBase::url(v4);
    WebResourceLoadScheduler::hostForURL(&v39, this, v5, 0);
    v6 = v39;
    if (v39)
    {
      v40 = v39;
      result = WebCore::ResourceRequestBase::priority((a2 + 344));
      v8 = result;
      v9 = *(v6 + 176);
      v10 = v9 && *(v9 - 12) || *(v6 + 16) != *(v6 + 24) || *(v6 + 48) != *(v6 + 56) || *(v6 + 80) != *(v6 + 88) || *(v6 + 112) != *(v6 + 120) || *(v6 + 144) != *(v6 + 152);
      if (((result - 1) & 0xFC) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = (result - 1) + 1;
      }

      v12 = v6 + 32 * v11;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      v15 = (v12 + 16);
      if (v14)
      {
        if (v13 + 1 != v14)
        {
          goto LABEL_46;
        }

        LODWORD(v16) = *(v15 + 6);
      }

      else
      {
        v16 = *(v15 + 6);
        if (v13)
        {
          if (v13 != v16 - 1)
          {
LABEL_46:
            v34 = *(v15 + 6);
            if (v13 < v34)
            {
              v35 = v15[2];
              ++*(a2 + 4);
              *(v35 + 8 * v13) = a2;
              if (v13 == v34 - 1)
              {
                v36 = 0;
              }

              else
              {
                v36 = v13 + 1;
              }

              v15[1] = v36;
              if (*(this + 22))
              {
                if (v8 <= 1)
                {
                  v37 = (*(*a2 + 160))(a2);
                  result = WebCore::ResourceRequestBase::url(v37);
                  if (((result[8] & 2) == 0 || v8 == 1 && !v10) && !*(this + 22))
                  {
                    result = WebResourceLoadScheduler::servePendingRequests(&v40, v8);
                    v38 = *(v6 + 8);
                    if (!v38)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_61;
                  }
                }

                if ((*(this + 8) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 8) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
                {
                  result = WebCore::TimerBase::start();
                  v38 = *(v6 + 8);
                  if (!v38)
                  {
                    goto LABEL_66;
                  }

LABEL_61:
                  *(v6 + 8) = v38 - 1;
                  return result;
                }
              }

              else
              {
                result = WebResourceLoadScheduler::servePendingRequests(&v40, 0);
              }

              v38 = *(v6 + 8);
              if (!v38)
              {
                goto LABEL_66;
              }

              goto LABEL_61;
            }

            goto LABEL_65;
          }
        }

        else if (v16)
        {
          v13 = 0;
          goto LABEL_46;
        }
      }

      v21 = v16;
      v22 = v16 + (v16 >> 2);
      if (v22 >= 0x1FFFFFFF)
      {
LABEL_66:
        __break(0xC471u);
        JUMPOUT(0x1C79E7948);
      }

      v23 = v15[2];
      if (v22 <= 0xF)
      {
        v22 = 15;
      }

      v24 = v22 + 1;
      v25 = WTF::fastMalloc((8 * (v22 + 1)));
      *(v15 + 6) = v24;
      v15[2] = v25;
      v26 = *v15;
      v27 = v15[1];
      v28 = v27 - *v15;
      if (v27 >= *v15)
      {
        v33 = v21 - v26;
        if (v21 >= v26)
        {
          if (v28 == -1)
          {
            result = memcpy(&v25[8 * v26], v23 + 8 * v26, 8 * v33);
            if (!v23)
            {
LABEL_45:
              v13 = v15[1];
              goto LABEL_46;
            }

LABEL_42:
            if (v15[2] == v23)
            {
              v15[2] = 0;
              *(v15 + 6) = 0;
            }

            result = WTF::fastFree(v23, v32);
            goto LABEL_45;
          }

          if (v33 >= v28)
          {
            result = memcpy(&v25[8 * v26], v23 + 8 * v26, 8 * v28);
            if (!v23)
            {
              goto LABEL_45;
            }

            goto LABEL_42;
          }
        }
      }

      else if (v27 <= v21)
      {
        memcpy(v25, v23, 8 * v27);
        v29 = v21 - *v15;
        if (v21 >= *v15)
        {
          v30 = *(v15 + 6);
          if (v30 >= v29)
          {
            v31 = v30 - (v21 - *v15);
            result = memcpy((v15[2] + 8 * v31), v23 + 8 * *v15, 8 * v29);
            *v15 = v31;
            if (!v23)
            {
              goto LABEL_45;
            }

            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      __break(0xC471u);
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v20[2] == 1)
  {
    (*(*v20 + 8))(v20);
  }

  else
  {
    --v20[2];
  }

  return (*(*a2 + 152))(a2);
}

uint64_t WebResourceLoadScheduler::servePendingRequests(uint64_t result, int a2)
{
  v3 = *result;
  if (*result)
  {
    v5 = result;
    v6 = 4;
    while (1)
    {
      v7 = ((v6 - 1) & 0xFC) != 0 ? 0 : (v6 - 1) + 1;
      v8 = v3 + 32 * v7;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = v8 + 16;
      if (v9 != v10)
      {
        break;
      }

LABEL_58:
      if (a2 == v6)
      {
        return result;
      }

      v3 = *v5;
      --v6;
      if (!*v5)
      {
        goto LABEL_60;
      }
    }

    while (1)
    {
      if (v9 >= *(v11 + 24))
      {
        goto LABEL_61;
      }

      v2 = *(*(v11 + 16) + 8 * v9);
      if (v2)
      {
        ++*(v2 + 4);
      }

      result = WebCore::ResourceLoader::frameLoader(v2);
      if (result)
      {
        v12 = WebCore::ResourceLoader::frameLoader(v2);
        result = *(WebCore::FrameLoader::frame(v12) + 224);
      }

      v13 = *v5;
      if (!*v5)
      {
LABEL_26:
        __break(0xC471u);
        JUMPOUT(0x1C79E7DA0);
      }

      if (!*(v13 + 184))
      {
        if (!result)
        {
          goto LABEL_32;
        }

        if ((*(result + 3553) & 1) == 0)
        {
          result = WebCore::Document::haveStylesheetsLoaded(result);
          if (result)
          {
            goto LABEL_32;
          }

          v13 = *v5;
          if (!*v5)
          {
            goto LABEL_26;
          }
        }
      }

      v14 = *(v13 + 176);
      if (v6)
      {
        if (v14)
        {
          v15 = *(v14 - 12);
          result = WebCore::platformStrategies(result);
          v16 = *(result + 8);
          if (!v16)
          {
            goto LABEL_19;
          }

          goto LABEL_30;
        }
      }

      else if (v14 && *(v14 - 12))
      {
        goto LABEL_62;
      }

      v15 = 0;
      result = WebCore::platformStrategies(result);
      v16 = *(result + 8);
      if (!v16)
      {
LABEL_19:
        v17 = result;
        result = (*(*result + 16))();
        *(v17 + 8) = result;
        if ((*(result + 92) & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }

LABEL_30:
      if ((*(v16 + 92) & 1) == 0)
      {
LABEL_20:
        if (v15 >= *(v13 + 192))
        {
          goto LABEL_62;
        }

        goto LABEL_32;
      }

LABEL_31:
      if (v15)
      {
        goto LABEL_62;
      }

LABEL_32:
      v18 = *v11;
      if (*v11 == *(v11 + 8))
      {
        __break(0xC471u);
        JUMPOUT(0x1C79E7DE0);
      }

      v19 = *(v11 + 24);
      if (v18 >= v19)
      {
        goto LABEL_61;
      }

      v20 = *(v11 + 16);
      v21 = *(v20 + 8 * v18);
      *(v20 + 8 * v18) = 0;
      if (!v21)
      {
        goto LABEL_37;
      }

      if (v21[4] != 1)
      {
        --v21[4];
LABEL_37:
        if (v18 == v19 - 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18 + 1;
        }

        *v11 = v22;
        v23 = *v5;
        if (!*v5)
        {
          goto LABEL_71;
        }

        goto LABEL_46;
      }

      (*(*v21 + 8))(v21);
      if (*v11 == *(v11 + 24) - 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v11 + 1;
      }

      *v11 = v24;
      v23 = *v5;
      if (!*v5)
      {
LABEL_71:
        __break(0xC471u);
        JUMPOUT(0x1C79E7DC0);
      }

LABEL_46:
      if (v2)
      {
        ++*(v2 + 4);
      }

      v30 = v2;
      WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v29, (v23 + 176), &v30);
      v25 = v30;
      if (v30)
      {
        if (*(v30 + 4) == 1)
        {
          v26 = (*(*v30 + 8))();
          if ((WTF::IOSApplication::isWebProcess(v26) & 1) == 0)
          {
LABEL_66:
            result = (*(*v2 + 152))(v2);
            v27 = *(v2 + 4) - 1;
            if (*(v2 + 4) != 1)
            {
              goto LABEL_64;
            }

            goto LABEL_67;
          }

          goto LABEL_54;
        }

        --*(v30 + 4);
      }

      if ((WTF::IOSApplication::isWebProcess(v25) & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_54:
      result = WebCore::ResourceLoader::start(v2);
      if (v2)
      {
        if (*(v2 + 4) == 1)
        {
          result = (*(*v2 + 8))(v2);
          goto LABEL_57;
        }

        --*(v2 + 4);
        v9 = *v11;
        if (*v11 == *(v11 + 8))
        {
          goto LABEL_58;
        }
      }

      else
      {
LABEL_57:
        v9 = *v11;
        if (*v11 == *(v11 + 8))
        {
          goto LABEL_58;
        }
      }
    }
  }

LABEL_60:
  result = 120;
  __break(0xC471u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v2)
  {
    v27 = *(v2 + 4) - 1;
    if (*(v2 + 4) == 1)
    {
LABEL_67:
      v28 = *(*v2 + 8);

      return v28(v2);
    }

    else
    {
LABEL_64:
      *(v2 + 4) = v27;
    }
  }

  return result;
}

{
  if (*(result + 88))
  {
    return result;
  }

  v3 = result;
  if ((*(result + 64) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((result + 32));
  }

  v4 = *(v3 + 24);
  v43 = v4;
  ++*(v4 + 8);
  result = WebResourceLoadScheduler::servePendingRequests(&v43, a2);
  v7 = *(v4 + 8);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79E8CF0);
  }

  *(v4 + 8) = v7 - 1;
  v10 = *(v3 + 16);
  v9 = (v3 + 16);
  v8 = v10;
  if (!v10)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v11 = *(v8 - 1);
  v12 = &v8[2 * v11];
  if (!*(v8 - 3))
  {
    v13 = &v8[2 * v11];
    v12 = v13;
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_21:
    v15 = 0;
LABEL_22:
    v17 = 0;
    if (v13 == v15)
    {
      goto LABEL_78;
    }

    goto LABEL_23;
  }

  v13 = v8;
  if (!v11)
  {
LABEL_15:
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v14 = 16 * v11;
  v13 = v8;
  do
  {
    if ((*v13 + 1) > 1)
    {
      goto LABEL_15;
    }

    v13 += 2;
    v14 -= 16;
  }

  while (v14);
  v13 = v12;
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_16:
  v15 = &v8[2 * *(v8 - 1)];
  v16 = *(v8 - 3);
  if (!v16)
  {
    goto LABEL_22;
  }

  if (v16 >> 29)
  {
LABEL_86:
    __break(0xC471u);
    JUMPOUT(0x1C79E8CD0);
  }

  result = WTF::fastMalloc((8 * v16));
  v17 = result;
  if (v13 != v15)
  {
LABEL_23:
    v42 = a2;
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = v19;
      v21 = v13[1];
      if (v21)
      {
        result = *v21;
        if (*v21)
        {
          goto LABEL_30;
        }

        result = WTF::fastCompactMalloc(0x10);
        *result = 1;
        *(result + 8) = v21;
        v22 = *v21;
        *v21 = result;
        if (!v22)
        {
          goto LABEL_30;
        }

        if (atomic_fetch_add(v22, 0xFFFFFFFF) != 1)
        {
          result = *v21;
          if (!*v21)
          {
            goto LABEL_32;
          }

LABEL_30:
          atomic_fetch_add(result, 1u);
          goto LABEL_32;
        }

        atomic_store(1u, v22);
        WTF::fastFree(v22, v5);
        result = *v21;
        if (*v21)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = 0;
      }

LABEL_32:
      *(v17 + v18) = result;
      do
      {
        v13 += 2;
      }

      while (v13 != v12 && (*v13 + 1) <= 1);
      ++v18;
      v19 = v20 + 1;
      if (v13 == v15)
      {
        v23 = v42;
        if (v18)
        {
          v24 = (v17 + 8 * v18);
          v25 = v17;
          do
          {
            if (*v25)
            {
              v26 = *(*v25 + 8);
              if (v26)
              {
                v27 = *(v26 + 176);
                if ((!v27 || !*(v27 - 12)) && *(v26 + 16) == *(v26 + 24) && *(v26 + 48) == *(v26 + 56) && *(v26 + 80) == *(v26 + 88) && *(v26 + 112) == *(v26 + 120) && *(v26 + 144) == *(v26 + 152))
                {
                  v28 = *v9;
                  if (*v9)
                  {
                    v29 = *(v26 + 184);
                    if (v29 == -1)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x1C79E8D10);
                    }

                    if (!v29)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x1C79E8D30);
                    }

                    v30 = *(v28 - 8);
                    v31 = *(v29 + 4);
                    if (v31 < 0x100)
                    {
                      v32 = WTF::StringImpl::hashSlowCase(v29);
                    }

                    else
                    {
                      v32 = v31 >> 8;
                    }

                    for (i = 0; ; v32 = i + v35)
                    {
                      v35 = v32 & v30;
                      v36 = *(v28 + 16 * v35);
                      if (v36 != -1)
                      {
                        if (!v36)
                        {
                          v37 = *v9;
                          v23 = v42;
                          if (!*v9)
                          {
                            goto LABEL_41;
                          }

                          v38 = *(v37 - 4);
                          v5 = (v37 + 16 * v38);
                          goto LABEL_68;
                        }

                        if (WTF::equal(v36, *(v26 + 184), v6))
                        {
                          break;
                        }
                      }

                      ++i;
                    }

                    v5 = (v28 + 16 * v35);
                    v37 = *v9;
                    v23 = v42;
                    if (!*v9)
                    {
                      goto LABEL_69;
                    }

                    v38 = *(v37 - 4);
LABEL_68:
                    if ((v37 + 16 * v38) == v5)
                    {
                      goto LABEL_41;
                    }

LABEL_69:
                    v39 = v5[1];
                    v5[1] = 0;
                    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(v9, v5);
                    if (v39)
                    {
                      WebResourceLoadScheduler::HostInformation::~HostInformation(v39, v5);
                      if (*(v39 + 8))
                      {
                        *(v39 + 192) = 0;
                        *(v39 + 160) = 0u;
                        *(v39 + 176) = 0u;
                        *(v39 + 128) = 0u;
                        *(v39 + 144) = 0u;
                        *(v39 + 96) = 0u;
                        *(v39 + 112) = 0u;
                        *(v39 + 64) = 0u;
                        *(v39 + 80) = 0u;
                        *(v39 + 32) = 0u;
                        *(v39 + 48) = 0u;
                        *v39 = 0u;
                        *(v39 + 16) = 0u;
                      }

                      else
                      {
                        bmalloc::api::tzoneFree(v39, v5);
                      }
                    }
                  }
                }

                else
                {
                  v43 = *(*v25 + 8);
                  ++*(v26 + 8);
                  WebResourceLoadScheduler::servePendingRequests(&v43, v23);
                  v33 = *(v26 + 8);
                  if (!v33)
                  {
                    goto LABEL_86;
                  }

                  *(v26 + 8) = v33 - 1;
                }
              }
            }

LABEL_41:
            v25 = (v25 + 8);
          }

          while (v25 != v24);
          v40 = 8 * v20;
          v41 = v17;
          do
          {
            while (1)
            {
              result = *v41;
              *v41 = 0;
              if (result)
              {
                if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
                {
                  break;
                }
              }

              ++v41;
              v40 -= 8;
              if (!v40)
              {
                goto LABEL_78;
              }
            }

            atomic_store(1u, result);
            result = WTF::fastFree(result, v5);
            ++v41;
            v40 -= 8;
          }

          while (v40);
        }

        break;
      }
    }
  }

LABEL_78:
  if (v17)
  {

    return WTF::fastFree(v17, v5);
  }

  return result;
}

uint64_t WebResourceLoadScheduler::remove(WebResourceLoadScheduler *this, WebCore::ResourceLoader *a2)
{
  v4 = WebCore::ResourceRequestBase::url((a2 + 344));
  WebResourceLoadScheduler::hostForURL(&v14, this, v4, 1);
  v5 = v14;
  if (v14)
  {
    WebResourceLoadScheduler::HostInformation::remove(v14, a2);
  }

  v6 = (*(*a2 + 160))(a2);
  result = WebCore::ResourceRequestBase::isNull(v6);
  if ((result & 1) == 0)
  {
    v8 = (*(*a2 + 160))(a2);
    v9 = WebCore::ResourceRequestBase::url(v8);
    result = WebResourceLoadScheduler::hostForURL(&v13, this, v9, 1);
    v10 = v13;
    if (v13)
    {
      if (v13 != v5)
      {
        result = WebResourceLoadScheduler::HostInformation::remove(v13, a2);
      }

      v11 = *(v10 + 2);
      if (!v11)
      {
        goto LABEL_16;
      }

      *(v10 + 2) = v11 - 1;
    }
  }

  if ((*(this + 8) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 8) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {
    result = WebCore::TimerBase::start();
  }

  if (v5)
  {
    v12 = *(v5 + 2);
    if (v12)
    {
      *(v5 + 2) = v12 - 1;
      return result;
    }

LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x1C79E7F5CLL);
  }

  return result;
}

void *WebResourceLoadScheduler::HostInformation::remove(void *this, WebCore::ResourceLoader *a2)
{
  v3 = this + 22;
  v2 = this[22];
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79E83A4);
    }

    v4 = *(v2 - 8);
    v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 8 * v8);
    if (v9 == a2)
    {
LABEL_8:
      if (v8 != *(v2 - 4))
      {
        this = *(v2 + 8 * v8);
        *(v2 + 8 * v8) = -1;
        if (!this)
        {
          goto LABEL_61;
        }

        if (*(this + 4) != 1)
        {
          --*(this + 4);
          goto LABEL_61;
        }

LABEL_60:
        this = (*(*this + 8))(this);
        v2 = *v3;
LABEL_61:
        v24 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
        *(v2 - 16) = v24;
        v25 = *(v2 - 4);
        if (6 * v24.i32[1] < v25 && v25 >= 9)
        {

          return WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(v3, v25 >> 1, 0);
        }

        return this;
      }
    }

    else
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 8 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v11 = this[2];
  v12 = this[3];
  v13 = this + 2;
  if (v11 == v12)
  {
LABEL_16:
    v11 = this[6];
    v18 = this[7];
    v13 = this + 6;
    if (v11 == v18)
    {
LABEL_23:
      v11 = this[10];
      v19 = this[11];
      v13 = this + 10;
      if (v11 == v19)
      {
LABEL_30:
        v11 = this[14];
        v20 = this[15];
        v13 = this + 14;
        if (v11 == v20)
        {
LABEL_37:
          v11 = this[18];
          v21 = this[19];
          v13 = this + 18;
          if (v11 == v21)
          {
            return this;
          }

          v14 = *(this + 42);
          v15 = this[18];
          while (v15 < v14)
          {
            v16 = this[20];
            v17 = *(v16 + 8 * v15);
            if (v17 == a2)
            {
              goto LABEL_45;
            }

            v15 += v14 + 1;
            do
            {
              v15 -= v14;
            }

            while (v15 >= v14);
            if (v21 == v15)
            {
              return this;
            }
          }
        }

        else
        {
          v14 = *(this + 34);
          v15 = this[14];
          while (v15 < v14)
          {
            v16 = this[16];
            v17 = *(v16 + 8 * v15);
            if (v17 == a2)
            {
              goto LABEL_45;
            }

            v15 += v14 + 1;
            do
            {
              v15 -= v14;
            }

            while (v15 >= v14);
            if (v20 == v15)
            {
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
        v14 = *(this + 26);
        v15 = this[10];
        while (v15 < v14)
        {
          v16 = this[12];
          v17 = *(v16 + 8 * v15);
          if (v17 == a2)
          {
            goto LABEL_45;
          }

          v15 += v14 + 1;
          do
          {
            v15 -= v14;
          }

          while (v15 >= v14);
          if (v19 == v15)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v14 = *(this + 18);
      v15 = this[6];
      while (v15 < v14)
      {
        v16 = this[8];
        v17 = *(v16 + 8 * v15);
        if (v17 == a2)
        {
          goto LABEL_45;
        }

        v15 += v14 + 1;
        do
        {
          v15 -= v14;
        }

        while (v15 >= v14);
        if (v18 == v15)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v14 = *(this + 10);
  v15 = this[2];
  while (1)
  {
    if (v15 >= v14)
    {
      goto LABEL_59;
    }

    v16 = this[4];
    v17 = *(v16 + 8 * v15);
    if (v17 == a2)
    {
      break;
    }

    v15 += v14 + 1;
    do
    {
      v15 -= v14;
    }

    while (v15 >= v14);
    if (v12 == v15)
    {
      goto LABEL_16;
    }
  }

LABEL_45:
  v3 = (v16 + 8 * v15);
  *v3 = 0;
  if (!v17)
  {
LABEL_48:
    v22 = v15 - v11;
    if (v15 < v11)
    {
LABEL_49:
      v23 = v13[1] - (v15 + 1);
      if (v13[1] == v15)
      {
        v23 = v14 - (v15 + 1);
      }

      else if (v14 - (v15 + 1) < v23)
      {
        goto LABEL_59;
      }

      this = memmove((v16 + 8 * v15), (v16 + 8 * (v15 + 1)), 8 * v23);
      v13[1] = (v13[1] + *(v13 + 6) - 1) % *(v13 + 6);
      return this;
    }

    goto LABEL_57;
  }

  if (*(v17 + 4) != 1)
  {
    --*(v17 + 4);
    goto LABEL_48;
  }

  this = (*(*v17 + 8))(v17);
  v11 = *v13;
  v22 = v15 - *v13;
  if (v15 < *v13)
  {
    goto LABEL_49;
  }

LABEL_57:
  if (v22 == -1)
  {
    v22 = v14 - v11;
  }

  else if (v14 - v11 < v22)
  {
    goto LABEL_59;
  }

  this = memmove((v16 + 8 * v11 + 8), (v16 + 8 * v11), 8 * v22);
  *v13 = (*v13 + 1) % *(v13 + 6);
  return this;
}

uint64_t WebResourceLoadScheduler::isResourceLoadFinished(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 400);
  if (v4)
  {
    v6 = WebCore::ResourceRequestBase::url((v4 + 344));
    WebResourceLoadScheduler::hostForURL(&v12, a1, v6, 1);
    v7 = v12 == 0;
    if (v12)
    {
      v8 = *(v12 + 8);
      if (!v8)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      *(v12 + 8) = v8 - 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9, v7);
  v10 = *(*v9 + 8);

  return v10(v9);
}

void WebResourceLoadScheduler::setDefersLoading(WebResourceLoadScheduler *this, WebCore::ResourceLoader *a2, char a3)
{
  if (a3 & 1) != 0 || (WebCore::ResourceRequestBase::isNull((a2 + 776)))
  {
    return;
  }

  WebCore::ResourceRequest::ResourceRequest(v55);
  v4 = *(a2 + 97);
  *(a2 + 97) = 0;
  v35 = v4;
  v5 = *(a2 + 50);
  v36 = *(a2 + 49);
  v37 = v5;
  *(a2 + 196) = v36 & 0xFFFFFFFE;
  v6 = *(a2 + 102);
  *(a2 + 102) = 0;
  v38 = v6;
  v7 = *(a2 + 840);
  v39 = *(a2 + 824);
  v40 = v7;
  *(a2 + 206) = v39 & 0xFFFFFFFE;
  v41 = *(a2 + 107);
  v8 = *(a2 + 54);
  *(a2 + 54) = 0u;
  v42 = v8;
  *&v8 = *(a2 + 110);
  *(a2 + 110) = 0;
  v43 = v8;
  v9 = *(a2 + 111);
  *(a2 + 111) = 0;
  v44 = v9;
  *&v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  v45 = v8;
  v10 = *(a2 + 113);
  *(a2 + 113) = 0;
  v46 = v10;
  *&v8 = *(a2 + 114);
  *(a2 + 114) = 0;
  v47 = v8;
  LODWORD(v10) = *(a2 + 230);
  v49 = *(a2 + 924);
  v48 = v10;
  v11 = *(a2 + 58);
  *(a2 + 58) = 0u;
  *v50 = v11;
  v12 = *(a2 + 118);
  *(a2 + 118) = 0;
  v53 = *(a2 + 960);
  v13 = *(a2 + 119);
  v51 = v12;
  v52 = v13;
  v14 = *(a2 + 121);
  *(a2 + 121) = 0;
  v54 = v14;
  WebCore::ResourceRequest::operator=(a2 + 776, v55);
  v22 = cf;
  cf = 0;
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = v58;
  v58 = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      v25 = MEMORY[0x1CCA67F60](v23, v15, v16, v17, v18, v19, v20, v21, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
      bmalloc::api::tzoneFree(v25, v26);
      v24 = v57;
      v57 = 0;
      if (!v24)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    --*v23;
  }

  v24 = v57;
  v57 = 0;
  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v15);
  }

LABEL_13:
  v27 = v56;
  v56 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v15);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v55, v15);
  WebCore::ResourceRequest::operator=(a2 + 344, &v35);
  v29 = v54;
  v54 = 0;
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v51;
  v51 = 0;
  if (!v30)
  {
LABEL_21:
    v31 = v50[1];
    v50[1] = 0;
    if (!v31)
    {
      goto LABEL_26;
    }

LABEL_24:
    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v28);
    }

    goto LABEL_26;
  }

  if (*v30 != 1)
  {
    --*v30;
    goto LABEL_21;
  }

  v32 = MEMORY[0x1CCA67F60]();
  bmalloc::api::tzoneFree(v32, v33);
  v31 = v50[1];
  v50[1] = 0;
  if (v31)
  {
    goto LABEL_24;
  }

LABEL_26:
  v34 = v50[0];
  v50[0] = 0;
  if (v34)
  {
    if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v28);
    }
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(&v35, v28);
  WebCore::ResourceLoader::start(a2);
}

uint64_t WebResourceLoadScheduler::crossOriginRedirectReceived(WebResourceLoadScheduler *this, WebCore::ResourceLoader *a2, const WTF::URL *a3)
{
  v6 = WebCore::ResourceRequestBase::url((a2 + 344));
  result = WebResourceLoadScheduler::hostForURL(&v14, this, v6, 1);
  v8 = v14;
  if (v14)
  {
    WebResourceLoadScheduler::hostForURL(&v13, this, a3, 0);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_17;
    }

    result = WTF::equal(*(v8 + 184), *(v13 + 184), v9);
    if ((result & 1) == 0)
    {
      if (a2)
      {
        ++*(a2 + 4);
      }

      v16 = a2;
      WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v15, (v10 + 176), &v16);
      if (v16)
      {
        if (*(v16 + 4) == 1)
        {
          (*(*v16 + 8))();
        }

        else
        {
          --*(v16 + 4);
        }
      }

      result = WebResourceLoadScheduler::HostInformation::remove(v8, a2);
    }

    v11 = *(v10 + 8);
    if (!v11)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79E887CLL);
    }

    *(v10 + 8) = v11 - 1;
    v12 = *(v8 + 8);
    if (!v12)
    {
LABEL_17:
      __break(0xC471u);
      JUMPOUT(0x1C79E885CLL);
    }

    *(v8 + 8) = v12 - 1;
  }

  return result;
}

uint64_t WebResourceLoadScheduler::resumePendingRequests(uint64_t this, __n128 a2, __n128 a3)
{
  v3 = *(this + 88) - 1;
  *(this + 88) = v3;
  if (!v3)
  {
    if ((v4 = *(this + 16)) != 0 && *(v4 - 12) || (v5 = *(this + 24), (v6 = v5[22]) != 0) && *(v6 - 12) || v5[2] != v5[3] || v5[6] != v5[7] || v5[10] != v5[11] || v5[14] != v5[15] || v5[18] != v5[19])
    {
      if ((*(this + 64) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 64) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
      {
        return WebCore::TimerBase::start();
      }
    }
  }

  return this;
}

void WebResourceLoadScheduler::HostInformation::~HostInformation(WebResourceLoadScheduler::HostInformation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 22);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 22);
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v7)
          {
            if (v7[4] == 1)
            {
              (*(*v7 + 8))(v7);
            }

            else
            {
              --v7[4];
            }
          }
        }

        ++v6;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(this + 18);
  v9 = *(this + 20);
  if (v9)
  {
    *(this + 20) = 0;
    *(this + 42) = 0;
    WTF::fastFree(v9, v8);
  }

  WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(this + 14);
  v11 = *(this + 16);
  if (v11)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v11, v10);
  }

  WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(this + 10);
  v13 = *(this + 12);
  if (v13)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v13, v12);
  }

  WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(this + 6);
  v15 = *(this + 8);
  if (v15)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v15, v14);
  }

  WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(this + 2);
  v17 = *(this + 4);
  if (v17)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v17, v16);
  }

  v18 = *this;
  if (*this)
  {
    *(v18 + 8) = 0;
    *this = 0;
    if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v16);
    }
  }
}

uint64_t WebResourceLoadScheduler::startPingLoad(uint64_t a1, uint64_t a2, const WebCore::ResourceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  WebCore::FrameLoader::networkingContext(*(a2 + 208));
  v11 = *(a5 + 2);
  v12 = *(a5 + 4);
  v13 = *a7;
  *a7 = 0;
  if (PingHandle::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(PingHandle::operator new(unsigned long)::s_heapRef, v10);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v15 = NonCompact;
  *(NonCompact + 2) = 1;
  v16 = WebCore::ResourceHandleClient::ResourceHandleClient(NonCompact);
  *v16 = &unk_1F472B010;
  v16[2] = 0;
  WebCore::ResourceRequest::ResourceRequest((v16 + 3), a3);
  WebCore::TimerBase::TimerBase((v15 + 224));
  *(v15 + 28) = &unk_1F472A8C8;
  v17 = WTF::fastMalloc(0x20);
  *v17 = &unk_1F472B0B0;
  v17[1] = v15;
  v17[2] = PingHandle::timeoutTimerFired;
  v17[3] = 0;
  *(v15 + 34) = v17;
  *(v15 + 280) = v11 != 0;
  *(v15 + 281) = v12 == 0;
  *(v15 + 36) = 0;
  ++*(v15 + 2);
  v18 = WTF::fastMalloc(0x18);
  *v18 = &unk_1F472B0D8;
  v18[1] = v15;
  v18[2] = v13;
  v19 = *(v15 + 36);
  *(v15 + 36) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  WebCore::ResourceHandle::create();
  v20 = *(v15 + 2);
  *(v15 + 2) = v24;
  if (v20)
  {
    if (v20[4] == 1)
    {
      (*(*v20 + 48))(v20);
    }

    else
    {
      --v20[4];
    }
  }

  result = WebCore::TimerBase::start();
  if (*(v15 + 2) == 1)
  {
    PingHandle::~PingHandle(v15);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  else
  {
    --*(v15 + 2);
  }

  return result;
}

uint64_t WebResourceLoadScheduler::isOnLine(WebResourceLoadScheduler *this)
{
  v1 = WebCore::NetworkStateNotifier::singleton(this);

  return MEMORY[0x1EEE57998](v1);
}

uint64_t WebResourceLoadScheduler::addOnlineStateChangeListener(WebCore::NetworkStateNotifier *a1, uint64_t a2)
{
  v3 = WebCore::NetworkStateNotifier::singleton(a1);

  return MEMORY[0x1EEE57990](v3, a2);
}

uint64_t WebCore::WebSocketChannel::resumeTimerFired(uint64_t this, WebCore::SocketStreamHandle *a2)
{
  v2 = this;
  ++*(this + 8);
  while ((*(v2 + 160) & 1) == 0)
  {
    v3 = *(v2 + 64);
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = *(v2 + 56);
    atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      this = MEMORY[0x1CCA63990](v3, a2);
      if (*(v3 + 24))
      {
LABEL_6:
        ++*(v3 + 8);
        v6 = 1;
        atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }
    }

    else if (*(v3 + 24))
    {
      goto LABEL_6;
    }

    v5 = 0;
    v12 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != 1)
    {
LABEL_20:
      this = WTF::Lock::unlockSlow(v3);
      if (!v5)
      {
        break;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (!v5)
    {
      break;
    }

LABEL_8:
    v7 = *(v2 + 100);
    v8 = (v5 + 8);
    do
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v8, a2);
        goto LABEL_15;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v10 != v9);
    if (v9 == 3)
    {
      v11 = WTF::fastMalloc(0x10);
      *v11 = &unk_1F472B308;
      v11[1] = v8;
      v25 = v11;
      WTF::ensureOnMainThread();
      this = v25;
      if (v25)
      {
        this = (*(*v25 + 8))(v25);
      }
    }

LABEL_15:
    if (v7)
    {
      this = WebCore::WebSocketChannel::processBuffer(v2);
      if (this)
      {
        continue;
      }
    }

    break;
  }

  if (*(v2 + 160))
  {
    goto LABEL_42;
  }

  v13 = *(v2 + 64);
  if (!v13)
  {
    goto LABEL_42;
  }

  v14 = 0;
  v15 = *(v2 + 56);
  atomic_compare_exchange_strong_explicit(v13, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (!v14)
  {
    if (*(v13 + 24))
    {
      goto LABEL_25;
    }

LABEL_47:
    v15 = 0;
    v24 = 1;
    atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
    if (v24 != 1)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_42:
    if (*(v2 + 8) == 1)
    {
      WebCore::WebSocketChannel::~WebSocketChannel(v2, a2);
      return bmalloc::api::tzoneFree(v22, v23);
    }

    else
    {
      --*(v2 + 8);
    }

    return this;
  }

  this = MEMORY[0x1CCA63990](v13, a2);
  if (!*(v13 + 24))
  {
    goto LABEL_47;
  }

LABEL_25:
  ++*(v13 + 8);
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 == 1)
  {
    goto LABEL_26;
  }

LABEL_48:
  this = WTF::Lock::unlockSlow(v13);
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_27:
  v17 = *(v2 + 224) == 1 && *(v2 + 80) != 0;
  v18 = (v15 + 8);
  while (2)
  {
    v19 = *v18;
    if ((*v18 & 1) == 0)
    {
      this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v18, a2);
      if (!v17)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v20 = *v18;
    atomic_compare_exchange_strong_explicit(v18, &v20, v19 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

  if (v19 != 3)
  {
    if (!v17)
    {
      goto LABEL_41;
    }

LABEL_39:
    this = WebCore::WebSocketChannel::didCloseSocketStream(v2, a2);
    goto LABEL_42;
  }

  v21 = WTF::fastMalloc(0x10);
  *v21 = &unk_1F472B308;
  v21[1] = v18;
  v26 = v21;
  WTF::ensureOnMainThread();
  this = v26;
  if (v26)
  {
    this = (*(*v26 + 8))(v26);
  }

  if (v17)
  {
    goto LABEL_39;
  }

LABEL_41:
  if (v2)
  {
    goto LABEL_42;
  }

  return this;
}

void *WebCore::WebSocketChannel::closingTimerFired(void *this)
{
  v1 = this[10];
  if (v1)
  {
    v2 = (v1 + 2);
    atomic_fetch_add(v1 + 2, 1u);
    this = (*(*v1 + 40))(v1);
    v1[16] = 3;
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v3 = WTF::fastMalloc(0x10);
      *v3 = &unk_1F472B1C8;
      v3[1] = v2;
      v4 = v3;
      WTF::ensureOnMainThread();
      this = v4;
      if (v4)
      {
        return (*(*v4 + 8))(v4);
      }
    }
  }

  return this;
}

void WebCore::WebSocketChannel::~WebSocketChannel(WebCore::WebSocketChannel *this, void *a2)
{
  v3 = *(this + 45);
  *(this + 45) = 0;
  if (!v3 || atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    v4 = *(this + 44);
    *(this + 44) = 0;
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  atomic_store(1u, v3 + 2);
  (*(*v3 + 24))(v3, a2);
  v4 = *(this + 44);
  *(this + 44) = 0;
  if (v4)
  {
LABEL_4:
    WebCore::WebSocketInflater::~WebSocketInflater(v4);
    bmalloc::api::tzoneFree(v5, v6);
  }

LABEL_5:
  v7 = *(this + 43);
  *(this + 43) = 0;
  if (v7)
  {
    WebCore::WebSocketDeflater::~WebSocketDeflater(v7);
    bmalloc::api::tzoneFree(v8, v9);
  }

  v10 = *(this + 40);
  *(this + 40) = 0;
  if (v10)
  {
    (*(*v10 + 64))(v10, a2);
  }

  v11 = *(this + 36);
  v12 = *(this + 37);
  v13 = *(this + 76);
  v14 = *(this + 35);
  v15 = v11 - v14;
  if (v11 < v14)
  {
    if (v11 <= v13)
    {
      WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(*(this + 37), &v12[2 * v11]);
      v14 = *(this + 35);
      if (v14 <= v13)
      {
        WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(&v12[2 * v14], &v12[2 * v13]);
        v17 = *(this + 37);
        if (!v17)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    atomic_store(v14, v12);
    v32 = WTF::fastMalloc(0x10);
    *v32 = &unk_1F472B1C8;
    v32[1] = v12;
    v41 = v32;
    WTF::ensureOnMainThread();
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    goto LABEL_32;
  }

  v18 = v13 - v14;
  if (v13 < v14)
  {
    goto LABEL_41;
  }

  if (v15 == -1)
  {
    WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(&v12[2 * v14], &v12[2 * v14 + 2 * v18]);
    v17 = *(this + 37);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v18 < v15)
  {
    goto LABEL_41;
  }

  WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(&v12[2 * v14], &v12[2 * v14 + 2 * v15]);
  v17 = *(this + 37);
  if (v17)
  {
LABEL_18:
    *(this + 37) = 0;
    *(this + 76) = 0;
    WTF::fastFree(v17, v16);
  }

LABEL_19:
  v19 = *(this + 34);
  *(this + 34) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v16);
  }

  v20 = *(this + 31);
  if (v20)
  {
    *(this + 31) = 0;
    *(this + 64) = 0;
    WTF::fastFree(v20, v16);
  }

  *(this + 21) = &unk_1F472A8C8;
  v21 = *(this + 27);
  *(this + 27) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  WebCore::TimerBase::~TimerBase((this + 168));
  *(this + 13) = &unk_1F472A8C8;
  v22 = *(this + 19);
  *(this + 19) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  WebCore::TimerBase::~TimerBase((this + 104));
  v24 = *(this + 11);
  if (v24)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v24, v23);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    v12 = (v14 + 8);
    LODWORD(v14) = atomic_fetch_add((v14 + 8), 0xFFFFFFFF);
    if (v14 == 1)
    {
      goto LABEL_42;
    }
  }

LABEL_32:
  v25 = *(this + 9);
  *(this + 9) = 0;
  if (v25)
  {
    v26 = MEMORY[0x1CCA66230]();
    bmalloc::api::tzoneFree(v26, v27);
  }

  v28 = *(this + 8);
  *(this + 8) = 0;
  if (v28)
  {
    v29 = 0;
    atomic_compare_exchange_strong_explicit(v28, &v29, 1u, memory_order_acquire, memory_order_acquire);
    if (v29)
    {
      v33 = v28;
      MEMORY[0x1CCA63990]();
      v28 = v33;
      v34 = *(v33 + 16) - 1;
      *(v33 + 16) = v34;
      if (v34)
      {
LABEL_37:
        v31 = 1;
        atomic_compare_exchange_strong_explicit(v28, &v31, 0, memory_order_release, memory_order_relaxed);
        if (v31 != 1)
        {
          WTF::Lock::unlockSlow(v28);
        }

        goto LABEL_48;
      }
    }

    else
    {
      v30 = *(v28 + 16) - 1;
      *(v28 + 16) = v30;
      if (v30)
      {
        goto LABEL_37;
      }
    }

    v35 = *(v28 + 8);
    v36 = 1;
    atomic_compare_exchange_strong_explicit(v28, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 == 1)
    {
      if (v35)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v40 = v28;
      WTF::Lock::unlockSlow(v28);
      v28 = v40;
      if (v35)
      {
        goto LABEL_48;
      }
    }

    WTF::fastFree(v28, v23);
  }

LABEL_48:
  v37 = *(this + 6);
  *(this + 6) = 0;
  if (v37 && atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v37);
    WebCore::EventListenerMap::~EventListenerMap((v37 + 4), v23);
    WTF::fastFree(v37, v39);
    v38 = *(this + 5);
    if (!v38)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v38 = *(this + 5);
    if (!v38)
    {
      goto LABEL_53;
    }
  }

  *(v38 + 8) = 0;
  *(this + 5) = 0;
  if (atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v38);
    WTF::fastFree(v38, v23);
  }

LABEL_53:
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebCore::WebSocketChannel::~WebSocketChannel(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebCore::WebSocketChannel::~WebSocketChannel(WebCore::WebSocketChannel *this, void *a2)
{
  WebCore::WebSocketChannel::~WebSocketChannel((this - 16), a2);
}

{
  WebCore::WebSocketChannel::~WebSocketChannel((this - 32), a2);
}

{
  WebCore::WebSocketChannel::~WebSocketChannel((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebCore::WebSocketChannel::~WebSocketChannel((this - 32), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebCore::WebSocketChannel::connect(WebCore::WebSocketChannel *this, Document *a2, const WTF::String *a3)
{
  v3 = *(this + 6);
  if (!v3 || (v5 = *(v3 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_108;
  }

  WebCore::ThreadableWebSocketChannel::validateURL(v84, v5, a2, a3);
  if (v86 != 1)
  {
    return 0;
  }

  if ((WTF::equal(v84[0], *a2, v8) & 1) == 0)
  {
    v9 = *(this + 8);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 7);
      atomic_compare_exchange_strong_explicit(v9, &v10, 1u, memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        v75 = v11;
        MEMORY[0x1CCA63990](v9);
        v11 = v75;
        if (*(v9 + 24))
        {
LABEL_8:
          ++*(v9 + 8);
          v12 = 1;
          atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
          if (v12 == 1)
          {
            goto LABEL_9;
          }

          goto LABEL_103;
        }
      }

      else if (*(v9 + 24))
      {
        goto LABEL_8;
      }

      v11 = 0;
      v76 = 1;
      atomic_compare_exchange_strong_explicit(v9, &v76, 0, memory_order_release, memory_order_relaxed);
      if (v76 == 1)
      {
LABEL_9:
        if (!v11)
        {
          goto LABEL_18;
        }

LABEL_10:
        v13 = v11 + 1;
        (*(*v11 + 72))(v11);
        do
        {
          v15 = *v13;
          if ((*v13 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v13, v14);
            goto LABEL_18;
          }

          v16 = *v13;
          atomic_compare_exchange_strong_explicit(v13, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v16 != v15);
        if (v15 == 3)
        {
          v17 = WTF::fastMalloc(0x10);
          *v17 = &unk_1F472B308;
          *(v17 + 1) = v13;
          v88[0] = v17;
          WTF::ensureOnMainThread();
          v18 = v88[0];
          v88[0] = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        goto LABEL_18;
      }

LABEL_103:
      v77 = v11;
      WTF::Lock::unlockSlow(v9);
      v11 = v77;
      if (!v77)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

LABEL_18:
  if ((v86 & 1) == 0)
  {
    goto LABEL_108;
  }

  *(this + 163) = v85;
  v20 = *(this + 6);
  if (!v20)
  {
    goto LABEL_109;
  }

  v21 = *(v20 + 8);
  if (!v21)
  {
    goto LABEL_109;
  }

  WebCore::Document::userAgent(&v83, v21, (v21 + 800));
  v22 = *(this + 6);
  if (!v22 || (v23 = *(v22 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79EA398);
  }

  v24 = WebCore::SecurityContext::securityOrigin((v23 + 208));
  WebCore::SecurityOrigin::toString(&v82, v24);
  v25 = *(this + 6);
  if (!v25 || (v26 = *(v25 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79EA3B8);
  }

  v27 = WebCore::Document::loader(v26);
  if (v27)
  {
    v29 = *(v27 + 3579);
    if ((v86 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v29 = 1;
    if ((v86 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  if (*MEMORY[0x1E69E2610])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2610], v28);
  }

  else
  {
    NonCompact = WebCore::WebSocketHandshake::operatorNewSlow(0x1A0);
  }

  v31 = MEMORY[0x1CCA66220](NonCompact, v84, a3, &v83, &v82, *(this + 163), v29 & 1);
  v32 = *(this + 9);
  *(this + 9) = v31;
  if (v32)
  {
    v33 = MEMORY[0x1CCA66230](v32);
    bmalloc::api::tzoneFree(v33, v34);
    v31 = *(this + 9);
  }

  WebCore::WebSocketHandshake::reset(v31);
  WebCore::WebSocketDeflateFramer::createExtensionProcessor(&v81, (this + 336));
  WebCore::WebSocketHandshake::addExtensionProcessor();
  v35 = v81;
  v81 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (!*(this + 6))
  {
    if (v86)
    {
      goto LABEL_39;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(0xC471u);
    goto LABEL_114;
  }

  if ((v86 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_39:
  WebCore::LegacyWebSocketInspectorInstrumentation::didCreateWebSocket();
  v37 = *(this + 6);
  if (!v37 || (v38 = *(v37 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79EA3D8);
  }

  v39 = *(v38 + 552);
  if (v39)
  {
    v40 = *(v39 + 8);
    if (v40)
    {
      v41 = *(v40 + 24);
      if (v41)
      {
        v42 = *(v41 + 8);
        if (v42)
        {
          ++*(this + 2);
          WebCore::ScriptExecutionContext::domainForCachePartition(&v80, (v38 + 208));
          v43 = WebCore::WebSocketHandshake::url(*(this + 9));
          v44 = WebCore::Page::sessionID(v42);
          v45 = WebCore::FrameLoader::networkingContext(*(v40 + 208));
          v46 = WTF::fastMalloc(0xD8);
          v47 = v46;
          *(v46 + 8) = 1;
          *v46 = &unk_1F472ABE8;
          v48 = *v43;
          if (*v43)
          {
            atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
          }

          *(v46 + 16) = v48;
          v49 = (v46 + 16);
          v50 = *(v43 + 8);
          *(v47 + 40) = *(v43 + 24);
          *(v47 + 24) = v50;
          *(v47 + 56) = this;
          *(v47 + 64) = 0;
          *v47 = &unk_1F472AC28;
          *(v47 + 128) = 0;
          *(v47 + 136) = 0;
          *(v47 + 120) = 0;
          *(v47 + 72) = 0u;
          *(v47 + 88) = 0u;
          *(v47 + 98) = 0u;
          v51 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
          }

          *(v47 + 144) = v51;
          *(v47 + 152) = 0;
          if (v45)
          {
            atomic_fetch_add((v45 + 8), 1u);
          }

          *(v47 + 160) = v45;
          *(v47 + 168) = 0uLL;
          *(v47 + 184) = 0uLL;
          *(v47 + 200) = 0uLL;
          v52 = WTF::URL::host(v49);
          v54 = v53;
          if ((v53 & 0x80000000) == 0)
          {
            v55 = (v53 + 8);
            if (!__OFADD__(v53, 8))
            {
              v56 = v52;
              if ((v53 & 0x100000000) != 0)
              {
                WTF::tryFastCompactMalloc(v88, (v55 + 20));
                v57 = v88[0];
                if (v88[0])
                {
                  *v88[0] = 2;
                  *(v57 + 1) = v55;
                  *(v57 + 20) = 0x2F2F3A7370747468;
                  *(v57 + 1) = v57 + 20;
                  *(v57 + 4) = 4;
                  if (!v54)
                  {
                    goto LABEL_77;
                  }

                  if (v54 == 1)
                  {
                    *(v57 + 28) = *v56;
                    goto LABEL_77;
                  }

                  v62 = v57 + 28;
                  v63 = v54 & 0x7FFFFFFF;
                  goto LABEL_76;
                }
              }

              else if (v55 <= 0x7FFFFFEF)
              {
                WTF::tryFastCompactMalloc(v88, (2 * v55 + 20));
                v57 = v88[0];
                if (v88[0])
                {
                  *v88[0] = 2;
                  *(v57 + 1) = v55;
                  *(v57 + 20) = xmmword_1C7B33850;
                  *(v57 + 1) = v57 + 20;
                  *(v57 + 4) = 0;
                  if (!v54)
                  {
LABEL_77:
                    cf = v57;
                    MEMORY[0x1CCA63950](v88, &cf, 0);
                    v65 = cf;
                    cf = 0;
                    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v65, v64);
                    }

                    WTF::URL::createCFURL(&cf, v88);
                    v66 = cf;
                    cf = 0;
                    v67 = *(v47 + 136);
                    *(v47 + 136) = v66;
                    if (v67)
                    {
                      CFRelease(v67);
                      v68 = cf;
                      cf = 0;
                      if (v68)
                      {
                        CFRelease(v68);
                      }
                    }

                    if (WTF::URL::protocolIs() && v44 >= -1 && _CFNetworkIsKnownHSTSHostWithSession())
                    {
                      atomic_fetch_add((v47 + 8), 1u);
                      v69 = WTF::fastMalloc(0x18);
                      *v69 = &unk_1F472B1A0;
                      v69[1] = v47;
                      v69[2] = v47;
                      cf = v69;
                      WTF::callOnMainThread();
                      v70 = cf;
                      cf = 0;
                      if (v70)
                      {
                        (*(*v70 + 8))(v70);
                      }
                    }

                    else
                    {
                      WebCore::SocketStreamHandleImpl::createStreams(v47);
                      if (*(v47 + 120))
                      {
                        WebCore::SocketStreamHandleImpl::scheduleStreams(v47);
                      }
                    }

                    v71 = v88[0];
                    v88[0] = 0;
                    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v71, v36);
                    }

                    v72 = *(this + 10);
                    *(this + 10) = v47;
                    if (v72)
                    {
                      v73 = (v72 + 8);
                      if (atomic_fetch_add((v72 + 8), 0xFFFFFFFF) == 1)
                      {
                        atomic_store(1u, v73);
                        v78 = WTF::fastMalloc(0x10);
                        *v78 = &unk_1F472B1C8;
                        *(v78 + 1) = v73;
                        v88[0] = v78;
                        WTF::ensureOnMainThread();
                        v79 = v88[0];
                        v88[0] = 0;
                        if (v79)
                        {
                          (*(*v79 + 8))(v79);
                        }
                      }
                    }

                    v74 = v80;
                    v80 = 0;
                    if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v74, v36);
                    }

                    v19 = 1;
                    v58 = v82;
                    v82 = 0;
                    if (!v58)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_60;
                  }

                  if (v54 == 1)
                  {
                    *(v57 + 18) = *v56;
                    goto LABEL_77;
                  }

                  v63 = 2 * (v54 & 0x7FFFFFFF);
                  v62 = v57 + 36;
LABEL_76:
                  memcpy(v62, v56, v63);
                  goto LABEL_77;
                }
              }
            }
          }

          __break(0xC471u);
LABEL_114:
          JUMPOUT(0x1C79EA378);
        }
      }
    }
  }

  v19 = 0;
  v58 = v82;
  v82 = 0;
  if (v58)
  {
LABEL_60:
    if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v36);
    }
  }

LABEL_62:
  v59 = v83;
  v83 = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v36);
  }

  if (v86)
  {
    v60 = v84[0];
    v84[0] = 0;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v36);
      }
    }
  }

  return v19;
}

WTF::StringImpl *WebCore::WebSocketChannel::subprotocol@<X0>(WebCore::WebSocketChannel *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = *(this + 9);
  if (result && (result = WebCore::WebSocketHandshake::mode(result), result == 3))
  {
    result = WebCore::WebSocketHandshake::serverWebSocketProtocol(&v8, *(this + 9));
    if (v8)
    {
      *a2 = v8;
    }

    else
    {
      v7 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        result = v8;
        *a2 = v7;
        v8 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a2 = v6;
  }

  return result;
}

WTF::StringImpl *non-virtual thunk toWebCore::WebSocketChannel::subprotocol@<X0>(WebCore::WebSocketChannel *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = *(this + 7);
  if (result && (result = WebCore::WebSocketHandshake::mode(result), result == 3))
  {
    result = WebCore::WebSocketHandshake::serverWebSocketProtocol(&v8, *(this + 7));
    if (v8)
    {
      *a2 = v8;
    }

    else
    {
      v7 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        result = v8;
        *a2 = v7;
        v8 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a2 = v6;
  }

  return result;
}

WTF::StringImpl *WebCore::WebSocketChannel::extensions@<X0>(WebCore::WebSocketChannel *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = *(this + 9);
  if (result && (result = WebCore::WebSocketHandshake::mode(result), result == 3))
  {
    result = WebCore::WebSocketHandshake::acceptedExtensions(&v8, *(this + 9));
    if (v8)
    {
      *a2 = v8;
    }

    else
    {
      v7 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        result = v8;
        *a2 = v7;
        v8 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a2 = v6;
  }

  return result;
}

WTF::StringImpl *non-virtual thunk toWebCore::WebSocketChannel::extensions@<X0>(WebCore::WebSocketChannel *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = *(this + 7);
  if (result && (result = WebCore::WebSocketHandshake::mode(result), result == 3))
  {
    result = WebCore::WebSocketHandshake::acceptedExtensions(&v8, *(this + 7));
    if (v8)
    {
      *a2 = v8;
    }

    else
    {
      v7 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        result = v8;
        *a2 = v7;
        v8 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *a2 = v6;
  }

  return result;
}

_DWORD *WebCore::WebSocketChannel::send(_DWORD *result, uint64_t *a2)
{
  if (!result[78])
  {
    v3 = result;
    WebCore::WebSocketChannel::enqueueTextFrame(result, a2);

    return WebCore::WebSocketChannel::processOutgoingFrameQueue(v3, v4);
  }

  return result;
}

WTF *WebCore::WebSocketChannel::enqueueTextFrame(uint64_t a1, uint64_t *a2)
{
  v5 = WTF::fastMalloc(0x28);
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *v5 = 1;
  v6 = *a2;
  *a2 = 0;
  result = *(v5 + 8);
  *(v5 + 8) = v6;
  if (!result)
  {
LABEL_4:
    v9 = *(a1 + 280);
    v8 = *(a1 + 288);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_4;
  }

  result = WTF::fastFree(result, v4);
  v9 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v9)
  {
LABEL_5:
    if (v8 + 1 != v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_8:
  v10 = *(a1 + 304);
  if (!v8)
  {
    if (v10)
    {
      v8 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == v10 - 1)
  {
LABEL_13:
    result = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity((a1 + 280), v4);
    v8 = *(a1 + 288);
  }

LABEL_14:
  v11 = *(a1 + 304);
  if (v8 >= v11)
  {
    __break(1u);
  }

  else
  {
    *(*(a1 + 296) + 8 * v8) = v5;
    if (v8 == v11 - 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8 + 1;
    }

    *(a1 + 288) = v12;
  }

  return result;
}

_DWORD *WebCore::WebSocketChannel::processOutgoingFrameQueue(_DWORD *this, void *a2)
{
  v2 = this[78];
  if (v2 == 2)
  {
    return this;
  }

  v3 = this;
  ++this[2];
  v4 = *(this + 35);
  if (v4 != *(this + 36))
  {
    v5 = MEMORY[0x1E696EBF0];
    v6 = MEMORY[0x1E696EBE8];
    while (1)
    {
      if (v4 >= v3[76])
      {
        goto LABEL_119;
      }

      v7 = (*(v3 + 37) + 8 * v4);
      v8 = *v7;
      *v7 = 0;
      this = WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(v7, v7 + 1);
      v9 = *(v3 + 35);
      v10 = v3[76];
      if (v9 == v10 - 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9 + 1;
      }

      *(v3 + 35) = v11;
      v12 = v8[1];
      if (v12 != 2)
      {
        if (v12 == 1)
        {
          v16 = *v8;
          v17 = *(v8 + 2);
          v18 = v8[7];
          ++v3[2];
          v19 = WTF::fastMalloc(0x18);
          *v19 = &unk_1F472B3D0;
          v19[1] = v3;
          v19[2] = v3;
          v68 = v19;
          WebCore::WebSocketChannel::sendFrame(v3, v16, v17, v18, &v68);
          v20 = v68;
          v68 = 0;
          if (v20)
          {
            goto LABEL_30;
          }
        }

        else if (!v12)
        {
          v13 = *(v8 + 1);
          if (v13)
          {
            v14 = v13 + 16;
            v15 = *(v13 + 8);
          }

          else
          {
            v14 = 0;
            v15 = 0;
          }

          v28 = *v8;
          ++v3[2];
          v29 = WTF::fastMalloc(0x18);
          *v29 = &unk_1F472B3A8;
          v29[1] = v3;
          v29[2] = v3;
          v69 = v29;
          WebCore::WebSocketChannel::sendFrame(v3, v28, v14, v15, &v69);
          v20 = v69;
          v69 = 0;
          if (v20)
          {
LABEL_30:
            (*(*v20 + 8))(v20);
            goto LABEL_31;
          }
        }

        goto LABEL_31;
      }

      v21 = v3[82];
      if (v21 <= 1)
      {
        if (!v21)
        {
          ++v3[2];
          v57 = WTF::fastMalloc(0xD0);
          v58 = MEMORY[0x1CCA656E0](v57, 0, v3 + 8);
          v59 = *(v3 + 40);
          *(v3 + 40) = v58;
          if (v59)
          {
            (*(*v59 + 64))(v59);
          }

          v3[82] = 1;
          this = WebCore::FileReaderLoader::start();
          v60 = *(v3 + 35);
          v61 = *(v3 + 36);
          if (v60)
          {
            if (v61 + 1 != v60)
            {
LABEL_112:
              v63 = v3[76];
              goto LABEL_115;
            }

LABEL_111:
            this = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(v3 + 35, a2);
            v60 = *(v3 + 35);
            if (v60)
            {
              goto LABEL_112;
            }

            LODWORD(v60) = v3[76];
          }

          else
          {
            v60 = v3[76];
            if (v61)
            {
              if (v61 == v60 - 1)
              {
                goto LABEL_111;
              }
            }

            else if (!v60)
            {
              goto LABEL_111;
            }
          }

          v63 = v60;
          v60 = v60;
LABEL_115:
          v64 = v60 - 1;
          *(v3 + 35) = v64;
          if (v64 >= v63)
          {
            goto LABEL_119;
          }

          *(*(v3 + 37) + 8 * v64) = v8;
          v54 = v3[2] - 1;
          if (v3[2] != 1)
          {
            goto LABEL_104;
          }

LABEL_117:
          WebCore::WebSocketChannel::~WebSocketChannel(v3, a2);
          return bmalloc::api::tzoneFree(v65, v66);
        }

        if (v21 == 1)
        {
          goto LABEL_89;
        }

        goto LABEL_31;
      }

      if (v21 != 2)
      {
        if (v21 == 3)
        {
LABEL_89:
          v55 = *(v3 + 36);
          if (v11)
          {
            if (v55 + 1 != v11)
            {
              v56 = v9 + 1;
LABEL_101:
              v62 = v56 - 1;
              *(v3 + 35) = v62;
              if (v62 < v10)
              {
                *(*(v3 + 37) + 8 * v62) = v8;
                goto LABEL_103;
              }

LABEL_119:
              __break(1u);
              return this;
            }
          }

          else
          {
            v56 = v10;
            if (v55)
            {
              if (v55 != v10 - 1)
              {
                goto LABEL_101;
              }
            }

            else if (v10)
            {
              goto LABEL_101;
            }
          }

          this = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(v3 + 35, a2);
          v56 = *(v3 + 35);
          v10 = v3[76];
          if (!v56)
          {
            v56 = v3[76];
          }

          goto LABEL_101;
        }

        goto LABEL_31;
      }

      WebCore::FileReaderLoader::arrayBufferResult(&v70, *(v3 + 40));
      v22 = *(v3 + 40);
      *(v3 + 40) = 0;
      if (v22)
      {
        (*(*v22 + 64))(v22);
      }

      v3[82] = 0;
      v23 = *v8;
      v24 = *(v70 + 2);
      if (v24 && (v25 = *(v5 + 56)) != 0 && ((*(v5 + 34) & 1) != 0 || (*v6 & 1) == 0))
      {
        v24 = (v24 & 0x3FFFFFFFFLL) + v25;
        if (*(v70 + 64) != 1)
        {
          goto LABEL_47;
        }
      }

      else if (*(v70 + 64) != 1)
      {
        goto LABEL_47;
      }

      v26 = *(v70 + 4);
      if (v26)
      {
        v27 = *(v26 + 32);
        goto LABEL_48;
      }

LABEL_47:
      v27 = *(v70 + 6);
LABEL_48:
      ++v3[2];
      v33 = WTF::fastMalloc(0x18);
      *v33 = &unk_1F472B3F8;
      v33[1] = v3;
      v33[2] = v3;
      v67 = v33;
      WebCore::WebSocketChannel::sendFrame(v3, v23, v24, v27, &v67);
      v35 = v67;
      v67 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      v36 = v70;
      v70 = 0;
      if (v36)
      {
        v37 = *v36 == 2;
        *v36 -= 2;
        if (v37)
        {
          v38 = *(v36 + 10);
          if (v38)
          {
            *(v38 + 8) = 3;
            *(v36 + 10) = 0;
          }

          if ((*(v36 + 72) & 1) == 0)
          {
            JSC::InlineWatchpointSet::freeFat((v36 + 72));
          }

          v39 = *(v36 + 3);
          if (v39)
          {
            v40 = *(v36 + 2);
            if (v40)
            {
              v41 = *(v5 + 56);
              if (v41)
              {
                if ((*(v5 + 34) & 1) != 0 || (*v6 & 1) == 0)
                {
                  v40 = (v40 & 0x3FFFFFFFFLL) + v41;
                }
              }
            }

            (*(*v39 + 16))(v39, v40);
          }

          v42 = *(v36 + 5);
          *(v36 + 5) = 0;
          if (v42 && atomic_fetch_add(v42, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v42);
            v47 = MEMORY[0x1CCA63220](v42, a2, v34);
            bmalloc::api::tzoneFree(v47, v48);
            v43 = *(v36 + 4);
            *(v36 + 4) = 0;
            if (v43)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v43 = *(v36 + 4);
            *(v36 + 4) = 0;
            if (v43)
            {
LABEL_67:
              if (atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v43);
                v49 = MEMORY[0x1CCA63250](v43, a2, v34);
                WTF::fastFree(v49, v50);
              }
            }
          }

          v44 = *(v36 + 3);
          *(v36 + 3) = 0;
          if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v44 + 2);
            (*(*v44 + 8))(v44);
            v45 = *(v36 + 1);
            if (v45)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v45 = *(v36 + 1);
            if (v45)
            {
LABEL_72:
              if ((v45 & 1) == 0)
              {
                v46 = *v45;
                if (*v45)
                {
                  *v45 = 0;
                  *(v45 + 2) = 0;
                  WTF::fastFree(v46, a2);
                }

                WTF::fastFree(v45, a2);
              }
            }
          }

          WTF::fastFree(v36, a2);
        }
      }

LABEL_31:
      v30 = *(v8 + 4);
      *(v8 + 4) = 0;
      if (v30)
      {
        if (v30[4] == 1)
        {
          (*(*v30 + 8))(v30);
          v31 = *(v8 + 2);
          if (!v31)
          {
            goto LABEL_36;
          }

LABEL_35:
          *(v8 + 2) = 0;
          v8[6] = 0;
          WTF::fastFree(v31, a2);
          goto LABEL_36;
        }

        --v30[4];
      }

      v31 = *(v8 + 2);
      if (v31)
      {
        goto LABEL_35;
      }

LABEL_36:
      v32 = *(v8 + 1);
      *(v8 + 1) = 0;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, a2);
        }

        else
        {
          --*v32;
        }
      }

      this = WTF::fastFree(v8, a2);
      v4 = *(v3 + 35);
      if (v4 == *(v3 + 36))
      {
        v2 = v3[78];
        break;
      }
    }
  }

  if (v2 == 1 && (v3[78] = 2, v51 = *(v3 + 10), v51[16] != 3) && (v51[16] = 2, (this = (*(*v51 + 16))(v51)) == 0) && (v52 = (v51 + 2), atomic_fetch_add(v51 + 2, 1u), this = (*(*v51 + 40))(v51), v51[16] = 3, atomic_fetch_add(v51 + 2, 0xFFFFFFFF) == 1) && (atomic_store(1u, v52), v53 = WTF::fastMalloc(0x10), *v53 = &unk_1F472B1C8, *(v53 + 1) = v52, v70 = v53, WTF::ensureOnMainThread(), this = v70, v70 = 0, this))
  {
    this = (*(*this + 8))(this);
    v54 = v3[2] - 1;
    if (v3[2] == 1)
    {
      goto LABEL_117;
    }
  }

  else
  {
LABEL_103:
    v54 = v3[2] - 1;
    if (v3[2] == 1)
    {
      goto LABEL_117;
    }
  }

LABEL_104:
  v3[2] = v54;
  return this;
}

_DWORD *non-virtual thunk toWebCore::WebSocketChannel::send(_DWORD *result, uint64_t *a2)
{
  if (!result[74])
  {
    v3 = result - 4;
    WebCore::WebSocketChannel::enqueueTextFrame((result - 4), a2);

    return WebCore::WebSocketChannel::processOutgoingFrameQueue(v3, v4);
  }

  return result;
}

_DWORD *WebCore::WebSocketChannel::send(_DWORD *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (result[78])
  {
    return result;
  }

  v5 = *(a2 + 16);
  if (v5 && (v6 = *(MEMORY[0x1E696EBF0] + 56)) != 0 && ((*(MEMORY[0x1E696EBF0] + 34) & 1) != 0 || (*MEMORY[0x1E696EBE8] & 1) == 0))
  {
    v5 = (v5 & 0x3FFFFFFFFLL) + v6;
    if (*(a2 + 64) != 1)
    {
      goto LABEL_10;
    }
  }

  else if (*(a2 + 64) != 1)
  {
LABEL_10:
    v8 = *(a2 + 48);
    goto LABEL_11;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v7 + 32);
LABEL_11:
  v9 = v8 >= a3;
  v10 = v8 - a3;
  if (v9 && v10 >= a4)
  {
    v11 = result;
    WebCore::WebSocketChannel::enqueueRawFrame(result, 2uLL, v5 + a3, a4);

    return WebCore::WebSocketChannel::processOutgoingFrameQueue(v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *WebCore::WebSocketChannel::enqueueRawFrame(uint64_t a1, unint64_t a2, uint64_t a3, WTF *a4)
{
  v6 = a2;
  result = WTF::fastMalloc(0x28);
  v10 = result;
  *(result + 1) = 0u;
  *(result + 3) = 0u;
  *result = v6;
  *(result + 1) = 1;
  if (!a4)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if (a4 >> 32)
  {
    __break(0xC471u);
    goto LABEL_36;
  }

  v11 = a3;
  v12 = WTF::fastMalloc(a4);
  v13 = v12;
  if (a4 < 8)
  {
    v14 = v12;
    goto LABEL_18;
  }

  v14 = v12;
  if ((v12 - a3) < 0x20)
  {
    goto LABEL_18;
  }

  if (a4 < 0x20)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = (a4 & 0xFFFFFFE0);
  v16 = (a3 + 16);
  v17 = (v12 + 16);
  v18 = v15;
  do
  {
    v19 = *v16;
    *(v17 - 1) = *(v16 - 1);
    *v17 = v19;
    v16 += 2;
    v17 += 2;
    v18 = (v18 - 32);
  }

  while (v18);
  if (a4 != v15)
  {
    if ((a4 & 0x18) == 0)
    {
      v11 = v15 + a3;
      v14 = v15 + v12;
      goto LABEL_18;
    }

LABEL_13:
    v14 = (v12 + (a4 & 0xFFFFFFF8));
    v11 = (a3 + (a4 & 0xFFFFFFF8));
    v20 = (v15 + a3);
    v21 = (v15 + v12);
    v22 = v15 - (a4 & 0xFFFFFFF8);
    do
    {
      v23 = *v20++;
      *v21++ = v23;
      v22 += 8;
    }

    while (v22);
    if (a4 == (a4 & 0xFFFFFFF8))
    {
      goto LABEL_19;
    }

    do
    {
LABEL_18:
      v24 = *v11++;
      *v14++ = v24;
    }

    while (v11 != a4 + a3);
  }

LABEL_19:
  result = v10[2];
  if (result)
  {
    v10[2] = 0;
    *(v10 + 6) = 0;
    result = WTF::fastFree(result, v9);
  }

LABEL_21:
  v10[2] = v13;
  *(v10 + 6) = a4;
  *(v10 + 7) = a4;
  v26 = *(a1 + 280);
  v25 = *(a1 + 288);
  if (v26)
  {
    if (v25 + 1 != v26)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v27 = *(a1 + 304);
  if (!v25)
  {
    if (v27)
    {
      v25 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v25 == v27 - 1)
  {
LABEL_29:
    result = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity((a1 + 280), v9);
    v25 = *(a1 + 288);
  }

LABEL_30:
  v28 = *(a1 + 304);
  if (v25 >= v28)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  *(*(a1 + 296) + 8 * v25) = v10;
  if (v25 == v28 - 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v25 + 1;
  }

  *(a1 + 288) = v29;
  return result;
}

_DWORD *non-virtual thunk toWebCore::WebSocketChannel::send(_DWORD *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (result[74])
  {
    return result;
  }

  v5 = *(a2 + 16);
  if (v5 && (v6 = *(MEMORY[0x1E696EBF0] + 56)) != 0 && ((*(MEMORY[0x1E696EBF0] + 34) & 1) != 0 || (*MEMORY[0x1E696EBE8] & 1) == 0))
  {
    v5 = (v5 & 0x3FFFFFFFFLL) + v6;
    if (*(a2 + 64) != 1)
    {
      goto LABEL_10;
    }
  }

  else if (*(a2 + 64) != 1)
  {
LABEL_10:
    v8 = *(a2 + 48);
    goto LABEL_11;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v7 + 32);
LABEL_11:
  v9 = v8 >= a3;
  v10 = v8 - a3;
  if (v9 && v10 >= a4)
  {
    v11 = result - 4;
    WebCore::WebSocketChannel::enqueueRawFrame((result - 4), 2uLL, v5 + a3, a4);

    return WebCore::WebSocketChannel::processOutgoingFrameQueue(v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *WebCore::WebSocketChannel::send(unint64_t *this, WebCore::Blob *a2)
{
  if (*(this + 78))
  {
    return this;
  }

  v3 = this;
  this = WTF::fastMalloc(0x28);
  v5 = this;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *this = 0x200000002;
  ++*(a2 + 4);
  this[4] = a2;
  v7 = v3[35];
  v6 = v3[36];
  if (v7)
  {
    if (v6 + 1 != v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = *(v3 + 76);
  if (!v6)
  {
    if (v8)
    {
      v6 = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6 == v8 - 1)
  {
LABEL_10:
    this = WTF::Deque<std::unique_ptr<WTF::Function<void ()(void)>>,0ul>::expandCapacity(v3 + 35, v4);
    v6 = v3[36];
  }

LABEL_11:
  v9 = *(v3 + 76);
  if (v6 >= v9)
  {
    __break(1u);
  }

  else
  {
    *(v3[37] + 8 * v6) = v5;
    if (v6 == v9 - 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6 + 1;
    }

    v3[36] = v10;

    return WebCore::WebSocketChannel::processOutgoingFrameQueue(v3, v4);
  }

  return this;
}

uint64_t WebCore::WebSocketChannel::close(uint64_t this, int a2, const WTF::String *a3)
{
  if (*(this + 80))
  {
    v3 = this;
    ++*(this + 8);
    this = WebCore::WebSocketChannel::startClosingHandshake(this, a2, a3);
    if (*(v3 + 161) == 1 && ((*(v3 + 200) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v3 + 200) & 0xFFFFFFFFFFFFLL) + 8) == 0.0))
    {
      this = WebCore::TimerBase::start();
    }

    if (*(v3 + 8) == 1)
    {
      WebCore::WebSocketChannel::~WebSocketChannel(v3, v4);

      return bmalloc::api::tzoneFree(v5, v6);
    }

    else
    {
      --*(v3 + 8);
    }
  }

  return this;
}

WTF *WebCore::WebSocketChannel::startClosingHandshake(WTF *this, int a2, const WTF::String *a3)
{
  if (*(this + 161))
  {
    return this;
  }

  v3 = this;
  v4 = 0;
  v50 = 0;
  v51 = 0;
  if (a2 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if ((*(this + 162) & 1) == 0)
    {
      v49 = a2;
      v6 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, 1uLL, &v49 + 1);
      v7 = v50;
      v9 = v51;
      v8 = HIDWORD(v51);
      *(v50 + HIDWORD(v51)) = *v6;
      v10 = (v8 + 1);
      HIDWORD(v51) = v10;
      if (v10 == v9)
      {
        v11 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, v10 + 1, &v49);
        LODWORD(v10) = HIDWORD(v51);
        v7 = v50;
        *(v50 + HIDWORD(v51)) = *v11;
      }

      else
      {
        *(v7 + v10) = v49;
      }

      v12 = (v10 + 1);
      HIDWORD(v51) = v10 + 1;
      WTF::String::utf8();
      v14 = v52;
      if (!v52)
      {
        goto LABEL_43;
      }

      v15 = *(v52 + 1);
      if (!v15)
      {
        v52 = 0;
LABEL_40:
        if (*v14 == 1)
        {
          WTF::fastFree(v14, v13);
        }

        else
        {
          --*v14;
        }

LABEL_43:
        LODWORD(v16) = v12;
        goto LABEL_44;
      }

      v16 = v15 + v12;
      if (v15 + v12 > v51)
      {
        if (v51 + (v51 >> 1) <= v51 + 1)
        {
          v17 = v51 + 1;
        }

        else
        {
          v17 = v51 + (v51 >> 1);
        }

        if (v17 <= v16)
        {
          v17 = v15 + v12;
        }

        if (HIDWORD(v17))
        {
          goto LABEL_70;
        }

        if (v17 <= 0x10)
        {
          v18 = 16;
        }

        else
        {
          v18 = v17;
        }

        v19 = WTF::fastMalloc(v18);
        LODWORD(v51) = v18;
        v50 = v19;
        memcpy(v19, v7, v12);
        if (v19 == v7)
        {
          v19 = 0;
          v50 = 0;
          LODWORD(v51) = 0;
        }

        WTF::fastFree(v7, v20);
        v7 = v19;
      }

      if (v16 >= v12)
      {
        v21 = v14 + 16;
        v22 = v7 + v12;
        if (v15 < 8 || (v22 - v14 - 16) < 0x20)
        {
          goto LABEL_38;
        }

        if (v15 >= 0x20)
        {
          v23 = v15 & 0xFFFFFFFFFFFFFFE0;
          v24 = (v14 + 32);
          v25 = (v7 + v12 + 16);
          v26 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v27 = *v24;
            *(v25 - 1) = *(v24 - 1);
            *v25 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 32;
          }

          while (v26);
          if (v15 == v23)
          {
LABEL_39:
            HIDWORD(v51) = v15 + v12;
            v14 = v52;
            LODWORD(v12) = v15 + v12;
            v52 = 0;
            if (!v14)
            {
LABEL_44:
              v5 = v50;
              v4 = v16;
              goto LABEL_45;
            }

            goto LABEL_40;
          }

          if ((v15 & 0x18) == 0)
          {
            v21 += v23;
            v22 += v23;
            goto LABEL_38;
          }
        }

        else
        {
          v23 = 0;
        }

        v22 += v15 & 0xFFFFFFFFFFFFFFF8;
        v21 += v15 & 0xFFFFFFFFFFFFFFF8;
        v28 = (v14 + v23 + 16);
        v29 = (v7 + v23 + v12);
        v30 = v23 - (v15 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v31 = *v28++;
          *v29++ = v31;
          v30 += 8;
        }

        while (v30);
        if (v15 == (v15 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_39;
        }

        do
        {
LABEL_38:
          v32 = *v21++;
          *v22++ = v32;
        }

        while (v21 != v14 + v15 + 16);
        goto LABEL_39;
      }

LABEL_70:
      __break(0xC471u);
      JUMPOUT(0x1C79EBA18);
    }
  }

LABEL_45:
  WebCore::WebSocketChannel::enqueueRawFrame(v3, 8uLL, v5, v4);
  ++*(v3 + 2);
  WebCore::WebSocketChannel::processOutgoingFrameQueue(v3, v33);
  if (*(v3 + 224))
  {
    goto LABEL_59;
  }

  *(v3 + 161) = 1;
  v35 = *(v3 + 8);
  if (!v35)
  {
    goto LABEL_59;
  }

  v36 = 0;
  v37 = *(v3 + 7);
  atomic_compare_exchange_strong_explicit(v35, &v36, 1u, memory_order_acquire, memory_order_acquire);
  if (v36)
  {
    v46 = v37;
    MEMORY[0x1CCA63990](v35);
    v37 = v46;
    if (*(v35 + 24))
    {
LABEL_49:
      ++*(v35 + 8);
      v38 = 1;
      atomic_compare_exchange_strong_explicit(v35, &v38, 0, memory_order_release, memory_order_relaxed);
      if (v38 == 1)
      {
        goto LABEL_50;
      }

LABEL_68:
      v48 = v37;
      WTF::Lock::unlockSlow(v35);
      v37 = v48;
      if (v48)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else if (*(v35 + 24))
  {
    goto LABEL_49;
  }

  v37 = 0;
  v47 = 1;
  atomic_compare_exchange_strong_explicit(v35, &v47, 0, memory_order_release, memory_order_relaxed);
  if (v47 != 1)
  {
    goto LABEL_68;
  }

LABEL_50:
  if (v37)
  {
LABEL_51:
    v39 = v37 + 1;
    (*(*v37 + 56))(v37);
    do
    {
      v40 = *v39;
      if ((*v39 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v39, v34);
        goto LABEL_58;
      }

      v41 = *v39;
      atomic_compare_exchange_strong_explicit(v39, &v41, v40 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v41 != v40);
    if (v40 == 3)
    {
      v42 = WTF::fastMalloc(0x10);
      *v42 = &unk_1F472B308;
      *(v42 + 1) = v39;
      v52 = v42;
      WTF::ensureOnMainThread();
      v43 = v52;
      v52 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }
    }

LABEL_58:
    if (!v3)
    {
LABEL_61:
      this = v50;
      if (!v50)
      {
        return this;
      }

      return WTF::fastFree(this, v34);
    }
  }

LABEL_59:
  if (*(v3 + 2) != 1)
  {
    --*(v3 + 2);
    goto LABEL_61;
  }

  WebCore::WebSocketChannel::~WebSocketChannel(v3, v34);
  bmalloc::api::tzoneFree(v44, v45);
  this = v50;
  if (v50)
  {
    return WTF::fastFree(this, v34);
  }

  return this;
}

WTF *non-virtual thunk toWebCore::WebSocketChannel::close(WTF *this, int a2, const WTF::String *a3)
{
  if (*(this + 8))
  {
    v3 = this;
    v4 = (this - 16);
    ++*(this - 2);
    this = WebCore::WebSocketChannel::startClosingHandshake((this - 16), a2, a3);
    if (*(v3 + 145) == 1 && ((*(v3 + 23) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v3 + 23) & 0xFFFFFFFFFFFFLL) + 8) == 0.0))
    {
      this = WebCore::TimerBase::start();
    }

    if (*(v3 - 2) == 1)
    {
      WebCore::WebSocketChannel::~WebSocketChannel(v4, v5);

      return bmalloc::api::tzoneFree(v6, v7);
    }

    else
    {
      --*(v3 - 2);
    }
  }

  return this;
}

WTF *WebCore::WebSocketChannel::fail(uint64_t a1, atomic_uint **a2)
{
  v163 = *MEMORY[0x1E69E9840];
  v4 = *(MEMORY[0x1E69E24B0] + 32);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT) || ((WTF::String::utf8(), v159) ? (v5 = v159 + 16) : (v5 = 0), *buf = 134218242, *&buf[4] = a1, v161 = 2080, v162 = v5, _os_log_impl(&dword_1C79C0000, v4, OS_LOG_TYPE_DEFAULT, "WebSocketChannel %p fail() reason='%s'", buf, 0x16u), v7 = v159, v159 = 0, !v7))
  {
LABEL_8:
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_71;
    }

    goto LABEL_9;
  }

  if (*v7 != 1)
  {
    --*v7;
    goto LABEL_8;
  }

  WTF::fastFree(v7, v6);
  v8 = *(a1 + 48);
  if (!v8)
  {
    goto LABEL_71;
  }

LABEL_9:
  if (!*(v8 + 8))
  {
    goto LABEL_71;
  }

  WebCore::LegacyWebSocketInspectorInstrumentation::didReceiveWebSocketFrameError();
  v159 = 0;
  v9 = *(a1 + 72);
  if (!v9)
  {
    v19 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      v20 = *(v19 + 4);
      if (v20 < 0)
      {
        goto LABEL_234;
      }

      v21 = (v20 + 29);
      if (__OFADD__(v20, 29))
      {
        goto LABEL_234;
      }

      v22 = (*(v19 + 16) >> 2) & 1;
    }

    else
    {
      v22 = 1;
      v21 = 29;
    }

    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v21, v22, "WebSocket connection failed: ", 0x1DuLL, v19);
    if (*buf)
    {
      v159 = *buf;
      if (!v19 || atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_66;
      }

      v23 = v19;
LABEL_65:
      WTF::StringImpl::destroy(v23, v12);
LABEL_66:
      v36 = *(a1 + 48);
      if (!v36 || !*(v36 + 8))
      {
        __break(0xC471u);
        JUMPOUT(0x1C79EC7F4);
      }

      WebCore::Document::addConsoleMessage();
      v38 = v159;
      v159 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v37);
      }

LABEL_71:
      ++*(a1 + 8);
      *(a1 + 225) = 1;
      if (*(a1 + 100))
      {
        *(a1 + 100) = 0;
      }

      result = WebCore::WebSocketDeflateFramer::didFail((a1 + 336));
      *(a1 + 240) = 0;
      if (*(a1 + 256))
      {
        if (*(a1 + 260))
        {
          *(a1 + 260) = 0;
        }

        result = *(a1 + 248);
        if (result)
        {
          *(a1 + 248) = 0;
          *(a1 + 256) = 0;
          result = WTF::fastFree(result, v40);
        }
      }

      v41 = *(a1 + 64);
      if (!v41)
      {
        goto LABEL_90;
      }

      v42 = 0;
      result = *(a1 + 56);
      atomic_compare_exchange_strong_explicit(v41, &v42, 1u, memory_order_acquire, memory_order_acquire);
      if (v42)
      {
        v154 = result;
        MEMORY[0x1CCA63990](v41);
        result = v154;
        if (*(v41 + 24))
        {
LABEL_81:
          ++*(v41 + 8);
          v43 = 1;
          atomic_compare_exchange_strong_explicit(v41, &v43, 0, memory_order_release, memory_order_relaxed);
          if (v43 == 1)
          {
            goto LABEL_82;
          }

          goto LABEL_224;
        }
      }

      else if (*(v41 + 24))
      {
        goto LABEL_81;
      }

      result = 0;
      v155 = 1;
      atomic_compare_exchange_strong_explicit(v41, &v155, 0, memory_order_release, memory_order_relaxed);
      if (v155 == 1)
      {
LABEL_82:
        if (!result)
        {
          goto LABEL_90;
        }

        goto LABEL_83;
      }

LABEL_224:
      v156 = result;
      WTF::Lock::unlockSlow(v41);
      result = v156;
      if (!v156)
      {
        goto LABEL_90;
      }

LABEL_83:
      v44 = (result + 8);
      result = (*(*result + 40))(result, a2);
      do
      {
        v45 = *v44;
        if ((*v44 & 1) == 0)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v44, v40);
          goto LABEL_90;
        }

        v46 = *v44;
        atomic_compare_exchange_strong_explicit(v44, &v46, v45 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v46 != v45);
      if (v45 == 3)
      {
        v47 = WTF::fastMalloc(0x10);
        *v47 = &unk_1F472B308;
        v47[1] = v44;
        *buf = v47;
        WTF::ensureOnMainThread();
        result = *buf;
        *buf = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

LABEL_90:
      v48 = *(a1 + 80);
      if (!v48)
      {
        goto LABEL_93;
      }

      if (*(a1 + 224))
      {
        goto LABEL_93;
      }

      v13 = v48 + 2;
      LODWORD(v25) = 1;
      atomic_fetch_add(v48 + 2, 1u);
      result = (*(*v48 + 40))(v48);
      v48[16] = 3;
      if (atomic_fetch_add(v48 + 2, 0xFFFFFFFF) != 1)
      {
        goto LABEL_93;
      }

      goto LABEL_229;
    }

LABEL_234:
    __break(0xC471u);
LABEL_235:
    JUMPOUT(0x1C79EC7D4);
  }

  v10 = WebCore::WebSocketHandshake::url(v9);
  WTF::URL::stringCenterEllipsizedToLength(&v158, v10);
  v13 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = v158;
  if (!v158)
  {
    v15 = 0;
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_32:
    v17 = 10;
    v18 = v11;
    if (v15 < 0)
    {
      goto LABEL_232;
    }

    goto LABEL_36;
  }

  v15 = *(v158 + 1);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_15:
  v16 = v13[1];
  if (v16 < 0)
  {
    goto LABEL_232;
  }

  v11 = __OFADD__(v16, 10);
  v17 = v16 + 10;
  v18 = v11;
  if (v15 < 0)
  {
    goto LABEL_232;
  }

LABEL_36:
  if (v18)
  {
    goto LABEL_232;
  }

  v11 = __OFADD__(v15, v17);
  v24 = v15 + v17;
  if (v11)
  {
    goto LABEL_232;
  }

  LODWORD(v25) = v24 + 25;
  if (__OFADD__(v24, 25))
  {
    goto LABEL_232;
  }

  if (v158)
  {
    v26 = *(v158 + 4);
    if (!v13 || (v26 & 4) == 0)
    {
      v27 = v25;
      v28 = v25 == 0;
      if ((v26 & 4) == 0)
      {
        v29 = 1;
        goto LABEL_46;
      }

      goto LABEL_55;
    }
  }

  else if (!v13)
  {
    if (v24 == -25)
    {
      goto LABEL_56;
    }

    v33 = 0;
    v34 = 0;
    v27 = v25;
    goto LABEL_98;
  }

  v27 = v25;
  v28 = v25 == 0;
  v29 = v158;
  if ((v13[4] & 4) != 0)
  {
LABEL_55:
    v33 = v158;
    v34 = v13;
    if (v28)
    {
      goto LABEL_56;
    }

LABEL_98:
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_232;
    }

    WTF::tryFastCompactMalloc(buf, (v27 + 20));
    v30 = *buf;
    if (!*buf)
    {
      goto LABEL_232;
    }

    **buf = 2;
    *(v30 + 4) = v25;
    *(v30 + 8) = v30 + 20;
    *(v30 + 16) = 4;
    qmemcpy((v30 + 20), "WebSocket connection to '", 25);
    if (v27 <= 0x18)
    {
      goto LABEL_228;
    }

    v51 = v27 - 25;
    v25 = v30 + 45;
    if (!v33)
    {
      v56 = 0;
      goto LABEL_141;
    }

    v12 = *(v14 + 1);
    v52 = *(v14 + 1);
    if ((*(v14 + 16) & 4) != 0)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          *v25 = v12->i8[0];
        }

        else
        {
          memcpy((v30 + 45), v12, v52);
        }
      }
    }

    else
    {
      v53 = (v25 + v52);
      if (v52 < 0x10)
      {
        v54 = v30 + 45;
      }

      else
      {
        v54 = v30 + 45;
        do
        {
          v55 = vld2q_s8(v12->i8);
          v12 += 2;
          *v54 = v55;
          v54 += 16;
        }

        while (v54 != v25 + (v52 & 0xFFFFFFF0));
      }

      if (v54 != v53)
      {
        v68 = v30 + v52;
        v69 = v30 + v52 - v54 + 45;
        if (v69 < 4 || (v54 < &v12[5].u64[1] + 2 * v68 + -2 * v54 + 2 ? (v70 = v12 >= v68 + 45) : (v70 = 1), !v70))
        {
          v72 = v54;
          v73 = v12;
          goto LABEL_127;
        }

        if (v69 >= 0x20)
        {
          v71 = v69 & 0xFFFFFFFFFFFFFFE0;
          v112 = v12 + 2;
          v113 = (v54 + 16);
          v114 = v69 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v116 = v112[-2];
            v115 = v112[-1];
            v118 = *v112;
            v117 = v112[1];
            v112 += 4;
            v113[-1] = vuzp1q_s8(v116, v115);
            *v113 = vuzp1q_s8(v118, v117);
            v113 += 2;
            v114 -= 32;
          }

          while (v114);
          if (v69 == v71)
          {
            goto LABEL_140;
          }

          if ((v69 & 0x1C) == 0)
          {
            v73 = (v12 + 2 * v71);
            v72 = (v54 + v71);
            do
            {
LABEL_127:
              v74 = v73->i8[0];
              v73 = (v73 + 2);
              *v72++ = v74;
            }

            while (v72 != v53);
            goto LABEL_140;
          }
        }

        else
        {
          v71 = 0;
        }

        v72 = (v54 + (v69 & 0xFFFFFFFFFFFFFFFCLL));
        v73 = (v12 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
        v119 = (v12 + 2 * v71);
        v120 = (v54 + v71);
        v121 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v122 = *v119++;
          *v120++ = vuzp1_s8(v122, v122).u32[0];
          v121 += 4;
        }

        while (v121);
        if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_127;
        }
      }
    }

LABEL_140:
    v56 = *(v14 + 1);
    if (v51 < v56)
    {
      goto LABEL_228;
    }

LABEL_141:
    v79 = v25 + v56;
    *v79 = *"' failed: ";
    *(v79 + 8) = 8250;
    if (v51 - v56 <= 9)
    {
      goto LABEL_228;
    }

    if (!v34)
    {
      goto LABEL_57;
    }

    v80 = v79 + 10;
    v12 = *(v13 + 1);
    v81 = v13[1];
    if ((v13[4] & 4) != 0)
    {
      if (v81)
      {
        if (v81 != 1)
        {
          goto LABEL_185;
        }

        *v80 = v12->i8[0];
      }

LABEL_57:
      v35 = v159;
      v159 = v30;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v12);
      }

      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v23 = v158;
      v158 = 0;
      if (!v23 || atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    v82 = (v80 + v81);
    if (v81 >= 0x10)
    {
      v83 = v80 + (v81 & 0xFFFFFFF0);
      do
      {
        v84 = vld2q_s8(v12->i8);
        v12 += 2;
        *v80 = v84;
        v80 += 16;
      }

      while (v80 != v83);
    }

    if (v80 == v82)
    {
      goto LABEL_57;
    }

    v85 = v56 + v30 + v81;
    v86 = v85 - v80 + 55;
    if (v86 < 4 || (v80 < &v12[6].u64[1] + 2 * v85 + -2 * v80 + 6 ? (v87 = v12 >= v85 + 55) : (v87 = 1), !v87))
    {
      v89 = v80;
      v90 = v12;
      goto LABEL_160;
    }

    if (v86 >= 0x20)
    {
      v88 = v86 & 0xFFFFFFFFFFFFFFE0;
      v123 = v12 + 2;
      v124 = (v80 + 16);
      v125 = v86 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v127 = v123[-2];
        v126 = v123[-1];
        v129 = *v123;
        v128 = v123[1];
        v123 += 4;
        v124[-1] = vuzp1q_s8(v127, v126);
        *v124 = vuzp1q_s8(v129, v128);
        v124 += 2;
        v125 -= 32;
      }

      while (v125);
      if (v86 == v88)
      {
        goto LABEL_57;
      }

      if ((v86 & 0x1C) == 0)
      {
        v90 = (v12 + 2 * v88);
        v89 = (v80 + v88);
        goto LABEL_160;
      }
    }

    else
    {
      v88 = 0;
    }

    v89 = (v80 + (v86 & 0xFFFFFFFFFFFFFFFCLL));
    v90 = (v12 + 2 * (v86 & 0xFFFFFFFFFFFFFFFCLL));
    v130 = (v12 + 2 * v88);
    v131 = (v80 + v88);
    v132 = v88 - (v86 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v133 = *v130++;
      *v131++ = vuzp1_s8(v133, v133).u32[0];
      v132 += 4;
    }

    while (v132);
    if (v86 == (v86 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_57;
    }

    do
    {
LABEL_160:
      v91 = v90->i8[0];
      v90 = (v90 + 2);
      *v89++ = v91;
    }

    while (v89 != v82);
    goto LABEL_57;
  }

LABEL_46:
  if (v28)
  {
LABEL_56:
    v30 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_57;
  }

  if (v25 > 0x7FFFFFEF || (WTF::tryFastCompactMalloc(buf, (2 * v27 + 20)), (v30 = *buf) == 0))
  {
LABEL_232:
    __break(0xC471u);
    goto LABEL_235;
  }

  *(*buf + 20) = xmmword_1C7B33860;
  *v30 = 2;
  *(v30 + 4) = v25;
  *(v30 + 8) = v30 + 20;
  *(v30 + 16) = 0;
  *(v30 + 36) = xmmword_1C7B33870;
  *(v30 + 52) = xmmword_1C7B33880;
  *(v30 + 68) = 39;
  if (v27 <= 0x18)
  {
    goto LABEL_228;
  }

  v25 = v30 + 70;
  v31 = v27 - 25;
  if (v29)
  {
    v12 = *(v14 + 1);
    v32 = *(v14 + 1);
    if ((*(v14 + 16) & 4) == 0)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          *v25 = v12->i16[0];
        }

        else
        {
          memcpy((v30 + 70), v12, 2 * v32);
        }
      }

LABEL_166:
      v57 = *(v14 + 1);
      if (v31 < v57)
      {
        goto LABEL_228;
      }

      goto LABEL_167;
    }

    v58 = (v25 + 2 * v32);
    if (v32 < 0x40)
    {
      v59 = v30 + 70;
    }

    else
    {
      v59 = v25 + 2 * (v32 & 0xFFFFFFC0);
      v60 = 0uLL;
      v61 = (v30 + 70);
      do
      {
        v164.val[0] = *v12;
        v62 = v12[1];
        v166.val[0] = v12[2];
        v63 = v12[3];
        v12 += 4;
        v64 = v63;
        v166.val[1] = 0uLL;
        v168.val[0] = v62;
        v164.val[1] = 0uLL;
        v65 = v61;
        vst2q_s8(v65, v164);
        v65 += 32;
        v168.val[1] = 0uLL;
        vst2q_s8(v65, v168);
        v66 = v61 + 64;
        vst2q_s8(v66, v166);
        v67 = v61 + 96;
        vst2q_s8(v67, *(&v60 - 1));
        v61 += 128;
      }

      while (v61 != v59);
    }

    if (v59 == v58)
    {
      goto LABEL_166;
    }

    v75 = v30 + 2 * v32 - v59 + 68;
    if (v75 < 0xE || (v59 < v12->u64 + (v75 >> 1) + 1 ? (v76 = v12 >= (v75 & 0xFFFFFFFFFFFFFFFELL) + v59 + 2) : (v76 = 1), !v76))
    {
      v92 = v12;
      v93 = v59;
      goto LABEL_163;
    }

    v77 = (v75 >> 1) + 1;
    if (v75 >= 0x3E)
    {
      v78 = v77 & 0xFFFFFFFFFFFFFFE0;
      v134 = (v59 + 32);
      v135 = &v12[1];
      v136 = v77 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v137 = *v135[-2].i8;
        v138 = vmovl_u8(*v135);
        v139 = vmovl_high_u8(*v135->i8);
        v134[-2] = vmovl_u8(*v137.i8);
        v134[-1] = vmovl_high_u8(v137);
        *v134 = v138;
        v134[1] = v139;
        v134 += 4;
        v135 += 4;
        v136 -= 32;
      }

      while (v136);
      if (v77 == v78)
      {
        goto LABEL_166;
      }

      if ((v77 & 0x18) == 0)
      {
        v93 = (v59 + 2 * v78);
        v92 = (v12 + v78);
        goto LABEL_163;
      }
    }

    else
    {
      v78 = 0;
    }

    v92 = (v12 + (v77 & 0xFFFFFFFFFFFFFFF8));
    v93 = (v59 + 2 * (v77 & 0xFFFFFFFFFFFFFFF8));
    v140 = (v59 + 2 * v78);
    v141 = &v12->i8[v78];
    v142 = v78 - (v77 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v143 = *v141++;
      *v140++ = vmovl_u8(v143);
      v142 += 8;
    }

    while (v142);
    if (v77 == (v77 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_166;
    }

    do
    {
LABEL_163:
      v94 = v92->u8[0];
      v92 = (v92 + 1);
      *v93++ = v94;
    }

    while (v93 != v58);
    goto LABEL_166;
  }

  v57 = 0;
LABEL_167:
  v95 = v25 + 2 * v57;
  *v95 = xmmword_1C7B33890;
  *(v95 + 16) = 2097210;
  if (v31 - v57 > 9)
  {
    if (!v13)
    {
      goto LABEL_57;
    }

    v80 = v95 + 20;
    v12 = *(v13 + 1);
    v96 = v13[1];
    if ((v13[4] & 4) == 0)
    {
      if (v96)
      {
        if (v96 == 1)
        {
          *v80 = v12->i16[0];
          goto LABEL_57;
        }

        v81 = 2 * v96;
LABEL_185:
        memcpy(v80, v12, v81);
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    v97 = (v80 + 2 * v96);
    if (v96 >= 0x40)
    {
      v98 = v80 + 2 * (v96 & 0xFFFFFFC0);
      v99 = 0uLL;
      do
      {
        v165.val[0] = *v12;
        v100 = v12[1];
        v167.val[0] = v12[2];
        v101 = v12[3];
        v12 += 4;
        v102 = v101;
        v167.val[1] = 0uLL;
        v169.val[0] = v100;
        v165.val[1] = 0uLL;
        v103 = v80;
        vst2q_s8(v103, v165);
        v103 += 32;
        v169.val[1] = 0uLL;
        vst2q_s8(v103, v169);
        v104 = (v80 + 64);
        vst2q_s8(v104, v167);
        v105 = (v80 + 96);
        vst2q_s8(v105, *(&v99 - 1));
        v80 += 128;
      }

      while (v80 != v98);
      v80 = v98;
    }

    if (v80 == v97)
    {
      goto LABEL_57;
    }

    v106 = v30 + 2 * (v57 + v96) - v80 + 88;
    if (v106 < 0xE || v80 < v12->u64 + (v106 >> 1) + 1 && v12 < (v106 & 0xFFFFFFFFFFFFFFFELL) + v80 + 2)
    {
      v107 = v12;
      v108 = v80;
      goto LABEL_182;
    }

    v110 = (v106 >> 1) + 1;
    if (v106 >= 0x3E)
    {
      v111 = v110 & 0xFFFFFFFFFFFFFFE0;
      v144 = (v80 + 32);
      v145 = &v12[1];
      v146 = v110 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v147 = *v145[-2].i8;
        v148 = vmovl_u8(*v145);
        v149 = vmovl_high_u8(*v145->i8);
        v144[-2] = vmovl_u8(*v147.i8);
        v144[-1] = vmovl_high_u8(v147);
        *v144 = v148;
        v144[1] = v149;
        v144 += 4;
        v145 += 4;
        v146 -= 32;
      }

      while (v146);
      if (v110 == v111)
      {
        goto LABEL_57;
      }

      if ((v110 & 0x18) == 0)
      {
        v108 = (v80 + 2 * v111);
        v107 = (v12 + v111);
        goto LABEL_182;
      }
    }

    else
    {
      v111 = 0;
    }

    v107 = (v12 + (v110 & 0xFFFFFFFFFFFFFFF8));
    v108 = (v80 + 2 * (v110 & 0xFFFFFFFFFFFFFFF8));
    v150 = (v80 + 2 * v111);
    v151 = &v12->i8[v111];
    v152 = v111 - (v110 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v153 = *v151++;
      *v150++ = vmovl_u8(v153);
      v152 += 8;
    }

    while (v152);
    if (v110 == (v110 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_57;
    }

    do
    {
LABEL_182:
      v109 = v107->u8[0];
      v107 = (v107 + 1);
      *v108++ = v109;
    }

    while (v108 != v97);
    goto LABEL_57;
  }

LABEL_228:
  __break(1u);
LABEL_229:
  atomic_store(v25, v13);
  v157 = WTF::fastMalloc(0x10);
  *v157 = &unk_1F472B1C8;
  v157[1] = v13;
  *buf = v157;
  WTF::ensureOnMainThread();
  result = *buf;
  *buf = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_93:
  if (*(a1 + 8) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(a1, v40);
    return bmalloc::api::tzoneFree(v49, v50);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

uint64_t WebCore::WebSocketChannel::disconnect(WebCore::WebSocketChannel *this, void *a2)
{
  v3 = *(this + 6);
  if (v3 && *(v3 + 8))
  {
    WebCore::LegacyWebSocketInspectorInstrumentation::didCloseWebSocket();
  }

  result = *(this + 8);
  *(this + 8) = 0;
  if (result)
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(result, &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v8 = result;
      MEMORY[0x1CCA63990]();
      result = v8;
      v9 = *(v8 + 16) - 1;
      *(v8 + 16) = v9;
      if (v9)
      {
LABEL_7:
        v7 = 1;
        atomic_compare_exchange_strong_explicit(result, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != 1)
        {
          result = WTF::Lock::unlockSlow(result);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v6 = *(result + 16) - 1;
      *(result + 16) = v6;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v10 = *(result + 8);
    v11 = 1;
    atomic_compare_exchange_strong_explicit(result, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = result;
      WTF::Lock::unlockSlow(result);
      result = v17;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    result = WTF::fastFree(result, a2);
  }

LABEL_13:
  v12 = *(this + 6);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WebCore::EventListenerMap::~EventListenerMap((v12 + 4), a2);
    result = WTF::fastFree(v12, v15);
    v13 = *(this + 10);
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    v13 = *(this + 10);
    if (!v13)
    {
      return result;
    }
  }

  v14 = (v13 + 2);
  atomic_fetch_add(v13 + 2, 1u);
  result = (*(*v13 + 40))(v13, a2);
  v13[16] = 3;
  if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F472B1C8;
    v16[1] = v14;
    v18 = v16;
    WTF::ensureOnMainThread();
    result = v18;
    if (v18)
    {
      return (*(*v18 + 8))(v18);
    }
  }

  return result;
}

uint64_t WebCore::WebSocketChannel::resume(uint64_t this, unint64_t a2, __n128 a3, __n128 a4)
{
  *(this + 160) = 0;
  if (!*(this + 100) && *(this + 224) != 1)
  {
    return this;
  }

  v4 = *(this + 64);
  if (!v4)
  {
    return this;
  }

  v5 = 0;
  v6 = *(this + 56);
  atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v14 = this;
    MEMORY[0x1CCA63990](v4, a2, a3, a4);
    this = v14;
    if (*(v4 + 24))
    {
LABEL_6:
      ++*(v4 + 8);
      v7 = 1;
      atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
      if (v7 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_6;
  }

  v6 = 0;
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 == 1)
  {
LABEL_7:
    if (!v6)
    {
      return this;
    }

    goto LABEL_8;
  }

LABEL_25:
  v16 = this;
  WTF::Lock::unlockSlow(v4);
  this = v16;
  if (!v6)
  {
    return this;
  }

LABEL_8:
  v8 = (*(this + 136) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 136) & 0xFFFFFFFFFFFFLL) + 8) == 0.0;
  v9 = (v6 + 8);
  do
  {
    v10 = *v9;
    if ((*v9 & 1) == 0)
    {
      v12 = this;
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v9, a2);
      goto LABEL_18;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    v12 = this;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F472B308;
    v13[1] = v9;
    v17 = v13;
    WTF::ensureOnMainThread();
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

LABEL_18:
    this = v12;
    if (!v8)
    {
      return this;
    }

    return WebCore::TimerBase::start();
  }

  if (!v8)
  {
    return this;
  }

  return WebCore::TimerBase::start();
}

void *WebCore::WebSocketChannel::protectedClient(void *this, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (!v2)
  {
    *this = 0;
    return this;
  }

  v3 = 0;
  v4 = *(a2 + 56);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (!v3)
  {
    if (*(v2 + 24))
    {
      goto LABEL_4;
    }

LABEL_8:
    *this = 0;
    v7 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      return this;
    }

    goto LABEL_9;
  }

  v6 = this;
  MEMORY[0x1CCA63990](v2);
  this = v6;
  if (!*(v2 + 24))
  {
    goto LABEL_8;
  }

LABEL_4:
  ++*(v2 + 8);
  *this = v4;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    return this;
  }

LABEL_9:

  return WTF::Lock::unlockSlow(v2);
}

uint64_t WebCore::WebSocketChannel::didOpenSocketStream(uint64_t this, WebCore::SocketStreamHandle *a2)
{
  v2 = *(this + 48);
  if (!v2 || !*(v2 + 8))
  {
    return this;
  }

  v4 = this;
  if (WebCore::LegacyWebSocketInspectorInstrumentation::hasFrontends(this))
  {
    v20 = *(v4 + 48);
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }

    v21 = WTF::fastMalloc(0x10);
    *v21 = &unk_1F472B358;
    *(v21 + 1) = v20;
    v26 = 0;
    v25[0] = v21;
    WebCore::WebSocketHandshake::clientHandshakeRequest();
    WebCore::LegacyWebSocketInspectorInstrumentation::willSendWebSocketHandshakeRequest();
    WebCore::ResourceRequest::~ResourceRequest(&v38, v22);
    if (v25[0])
    {
      (*(*v25[0] + 8))(v25[0]);
    }

    WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_0::~$_0(&v26, v23);
  }

  WebCore::WebSocketHandshake::clientHandshakeMessage(&v37, *(v4 + 72));
  LOBYTE(v38) = 0;
  v49 = 0;
  if (*(v4 + 163) == 1)
  {
    v5 = *(v4 + 48);
    if (!v5 || (v6 = *(v5 + 8)) == 0)
    {
      this = 133;
      __break(0xC471u);
      return this;
    }

    WebCore::WebSocketHandshake::httpURLForAuthenticationAndCookies(v25, *(v4 + 72));
    WebCore::CookieJar::cookieRequestHeaderFieldProxy(&v26, v6, v25, v7);
    v38 = v26;
    v39 = v27;
    v40 = v28;
    LODWORD(v27) = v27 & 0xFFFFFFFE;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    LODWORD(v32) = v32 & 0xFFFFFFFE;
    v48 = v36;
    v46 = v34;
    v47 = v35;
    v49 = 1;
    v31 = 0;
    v26 = 0;
    v9 = v25[0];
    v25[0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  ++*(v4 + 8);
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F472B380;
  v10[1] = v4;
  v10[2] = v4;
  v24 = v10;
  if ((*(a2 + 16) | 2) == 2)
  {
    v11 = v10;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(v4, &v26);
    v13 = v26;
    v26 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v24 = 0;
    v14 = v11;
  }

  else
  {
    if (v37)
    {
      v15 = v37 + 16;
      v16 = *(v37 + 1);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    (*(*a2 + 32))(a2, v15, v16, &v38, &v24);
    v14 = v24;
    v24 = 0;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  (*(*v14 + 8))(v14);
LABEL_20:
  if (v49 == 1)
  {
    v18 = v43;
    v43 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v38;
    v38 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }
  }

  this = v37;
  v37 = 0;
  if (this)
  {
    if (*this == 1)
    {
      return WTF::fastFree(this, v17);
    }

    else
    {
      --*this;
    }
  }

  return this;
}

unsigned int **WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_0::~$_0(unsigned int **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v3 = result;
      WebCore::EventListenerMap::~EventListenerMap((v2 + 4), a2);
      WTF::fastFree(v2, v4);
      return v3;
    }
  }

  return result;
}

WTF::Lock **WebCore::WebSocketChannel::didCloseSocketStream(WebCore::WebSocketChannel *this, WebCore::SocketStreamHandle *a2)
{
  v3 = *(this + 6);
  if (v3 && *(v3 + 8))
  {
    WebCore::LegacyWebSocketInspectorInstrumentation::didCloseWebSocket();
  }

  *(this + 224) = 1;
  if ((*(this + 25) & 0xFFFFFFFFFFFFLL) != 0 && *((*(this + 25) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    WebCore::TimerBase::stopSlowCase((this + 168));
  }

  if (*(this + 78) != 2)
  {
    v4 = *(this + 36);
    v5 = *(this + 37);
    v6 = *(this + 76);
    v7 = *(this + 35);
    v8 = v4 - v7;
    if (v4 >= v7)
    {
      v4 = v6 - v7;
      if (v6 >= v7)
      {
        if (v8 == -1)
        {
LABEL_17:
          v8 = v4;
LABEL_18:
          WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct((v5 + 8 * v7), (v5 + 8 * v7 + 8 * v8));
          *(this + 35) = 0;
          *(this + 36) = 0;
          v9 = *(this + 37);
          if (!v9)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v4 >= v8)
        {
          goto LABEL_18;
        }
      }
    }

    else if (v4 <= v6)
    {
      WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(*(this + 37), (v5 + 8 * v4));
      v7 = *(this + 35);
      if (v7 <= v6)
      {
        WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct((v5 + 8 * v7), (v5 + 8 * v6));
        *(this + 35) = 0;
        *(this + 36) = 0;
        v9 = *(this + 37);
        if (!v9)
        {
LABEL_20:
          *(this + 78) = 2;
          if (*(this + 82) == 1)
          {
            WebCore::FileReaderLoader::cancel(*(this + 40));
            WebCore::WebSocketChannel::didFail(this, 16);
          }

          goto LABEL_22;
        }

LABEL_19:
        *(this + 37) = 0;
        *(this + 76) = 0;
        WTF::fastFree(v9, a2);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_22:
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 2))(result);
    *(this + 57) = result;
    if (*(this + 160))
    {
      return result;
    }

    v11 = *(this + 8);
    if (!v11)
    {
      result = 0;
      goto LABEL_43;
    }

    v12 = 0;
    result = *(this + 7);
    atomic_compare_exchange_strong_explicit(v11, &v12, 1u, memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      v19 = result;
      MEMORY[0x1CCA63990](v11);
      result = v19;
      if (*(v11 + 24))
      {
LABEL_27:
        ++*(v11 + 8);
        v13 = 1;
        atomic_compare_exchange_strong_explicit(v11, &v13, 0, memory_order_release, memory_order_relaxed);
        if (v13 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_36;
      }
    }

    else if (*(v11 + 24))
    {
      goto LABEL_27;
    }

    result = 0;
    v20 = 1;
    atomic_compare_exchange_strong_explicit(v11, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 == 1)
    {
LABEL_28:
      v14 = *(this + 8);
      *(this + 8) = 0;
      if (!v14)
      {
        goto LABEL_43;
      }

LABEL_29:
      v15 = 0;
      atomic_compare_exchange_strong_explicit(v14, &v15, 1u, memory_order_acquire, memory_order_acquire);
      if (v15)
      {
        v22 = result;
        MEMORY[0x1CCA63990](v14);
        result = v22;
        v23 = *(v14 + 16) - 1;
        *(v14 + 16) = v23;
        if (v23)
        {
LABEL_31:
          v17 = 1;
          atomic_compare_exchange_strong_explicit(v14, &v17, 0, memory_order_release, memory_order_relaxed);
          if (v17 != 1)
          {
            v18 = result;
            WTF::Lock::unlockSlow(v14);
LABEL_42:
            result = v18;
          }

LABEL_43:
          v26 = *(this + 6);
          *(this + 6) = 0;
          *(this + 7) = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            v35 = result;
            WebCore::EventListenerMap::~EventListenerMap((v26 + 4), a2);
            WTF::fastFree(v26, v36);
            result = v35;
            v27 = *(this + 10);
            *(this + 10) = 0;
            if (!v27)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v27 = *(this + 10);
            *(this + 10) = 0;
            if (!v27)
            {
              goto LABEL_47;
            }
          }

          v28 = (v27 + 8);
          if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) == 1)
          {
            v37 = result;
            atomic_store(1u, v28);
            v38 = WTF::fastMalloc(0x10);
            *v38 = &unk_1F472B1C8;
            v38[1] = v28;
            v41 = v38;
            WTF::ensureOnMainThread();
            if (v41)
            {
              (*(*v41 + 8))(v41);
            }

            result = v37;
          }

LABEL_47:
          if (result)
          {
            v29 = (result + 1);
            result = (*(*result + 8))(result, *(this + 57), *(this + 162), *(this + 132), this + 272);
            do
            {
              v30 = *v29;
              if ((*v29 & 1) == 0)
              {
                result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v29, a2);
                goto LABEL_55;
              }

              v31 = *v29;
              atomic_compare_exchange_strong_explicit(v29, &v31, v30 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v31 != v30);
            if (v30 == 3)
            {
              v32 = WTF::fastMalloc(0x10);
              *v32 = &unk_1F472B308;
              v32[1] = v29;
              v40 = v32;
              WTF::ensureOnMainThread();
              result = v40;
              if (v40)
              {
                result = (*(*v40 + 1))(v40);
              }
            }
          }

          goto LABEL_55;
        }
      }

      else
      {
        v16 = *(v14 + 16) - 1;
        *(v14 + 16) = v16;
        if (v16)
        {
          goto LABEL_31;
        }
      }

      v24 = *(v14 + 8);
      v25 = 1;
      atomic_compare_exchange_strong_explicit(v14, &v25, 0, memory_order_release, memory_order_relaxed);
      if (v25 == 1)
      {
        if (v24)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v39 = result;
        WTF::Lock::unlockSlow(v14);
        result = v39;
        if (v24)
        {
          goto LABEL_43;
        }
      }

      v18 = result;
      WTF::fastFree(v14, a2);
      goto LABEL_42;
    }

LABEL_36:
    v21 = result;
    WTF::Lock::unlockSlow(v11);
    result = v21;
    v14 = *(this + 8);
    *(this + 8) = 0;
    if (!v14)
    {
      goto LABEL_43;
    }

    goto LABEL_29;
  }

LABEL_55:
  if (*(this + 2) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(this, a2);
    return bmalloc::api::tzoneFree(v33, v34);
  }

  else
  {
    --*(this + 2);
  }

  return result;
}

uint64_t WebCore::WebSocketChannel::didReceiveSocketStreamData(uint64_t this, WTF::StringImpl *a2, void *__src, size_t __n)
{
  v4 = this;
  ++*(this + 8);
  v5 = *(this + 48);
  if (!v5 || !*(v5 + 8))
  {
    goto LABEL_68;
  }

  if (!__n)
  {
    v16 = (a2 + 8);
LABEL_67:
    atomic_fetch_add(v16, 1u);
    v48 = a2;
    this = (*(*a2 + 40))(a2);
    *(v48 + 16) = 3;
    if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      v51 = WTF::fastMalloc(0x10);
      *v51 = &unk_1F472B1C8;
      *(v51 + 1) = v16;
      v52 = v51;
      WTF::ensureOnMainThread();
      this = v52;
      v52 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }
    }

    goto LABEL_68;
  }

  v6 = *(this + 64);
  if (!v6)
  {
LABEL_66:
    *(v4 + 225) = 1;
    v16 = (a2 + 8);
    goto LABEL_67;
  }

  v7 = 0;
  v8 = *(this + 56);
  atomic_compare_exchange_strong_explicit(v6, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    v40 = __n;
    v41 = __src;
    v42 = a2;
    this = MEMORY[0x1CCA63990](v6);
    a2 = v42;
    __src = v41;
    __n = v40;
    if (*(v6 + 24))
    {
LABEL_7:
      ++*(v6 + 8);
      v9 = 1;
      atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_65;
    }
  }

  else if (*(v6 + 24))
  {
    goto LABEL_7;
  }

  v8 = 0;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 == 1)
  {
LABEL_8:
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  v44 = v6;
  v45 = __n;
  v46 = __src;
  v47 = a2;
  this = WTF::Lock::unlockSlow(v44);
  a2 = v47;
  __src = v46;
  __n = v45;
  if (!v8)
  {
    goto LABEL_66;
  }

LABEL_9:
  v10 = (v8 + 8);
  do
  {
    v11 = *v10;
    if ((*v10 & 1) == 0)
    {
      v17 = __n;
      v18 = __src;
      this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v10, a2);
      __src = v18;
      __n = v17;
      if ((*(v4 + 225) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_68;
    }

    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    v13 = __src;
    v14 = __n;
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F472B308;
    *(v15 + 1) = v10;
    v52 = v15;
    WTF::ensureOnMainThread();
    this = v52;
    v52 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    __n = v14;
    __src = v13;
  }

  if (*(v4 + 225))
  {
    goto LABEL_68;
  }

LABEL_20:
  v19 = *(v4 + 100);
  v20 = __n + v19;
  if (!__CFADD__(__n, v19))
  {
    v21 = *(v4 + 96);
    if (v20 <= v21)
    {
      goto LABEL_39;
    }

    if (v21 + (v21 >> 1) <= v21 + 1)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v21 + (v21 >> 1);
    }

    if (v22 <= v20)
    {
      v22 = __n + v19;
    }

    if (HIDWORD(v22))
    {
      goto LABEL_73;
    }

    v23 = __src;
    v24 = __n;
    v25 = *(v4 + 88);
    if (v22 <= 0x10)
    {
      v26 = 16;
    }

    else
    {
      v26 = v22;
    }

    v27 = WTF::fastMalloc(v26);
    *(v4 + 96) = v26;
    *(v4 + 88) = v27;
    memcpy(v27, v25, v19);
    __n = v24;
    __src = v23;
    if (v25)
    {
      if (*(v4 + 88) == v25)
      {
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
      }

      WTF::fastFree(v25, v28);
      __n = v24;
      __src = v23;
    }

LABEL_39:
    v29 = *(v4 + 100);
    if (v20 < v29)
    {
LABEL_73:
      __break(0xC471u);
      JUMPOUT(0x1C79EDA28);
    }

    this = memcpy((*(v4 + 88) + v29), __src, __n);
    *(v4 + 100) = v20;
    while (2)
    {
      if (*(v4 + 160))
      {
        goto LABEL_68;
      }

      v30 = *(v4 + 64);
      if (!v30)
      {
        goto LABEL_68;
      }

      v31 = 0;
      v32 = *(v4 + 56);
      atomic_compare_exchange_strong_explicit(v30, &v31, 1u, memory_order_acquire, memory_order_acquire);
      if (v31)
      {
        this = MEMORY[0x1CCA63990](v30);
        if (!*(v30 + 24))
        {
          goto LABEL_58;
        }

LABEL_45:
        ++*(v30 + 8);
        v33 = 1;
        atomic_compare_exchange_strong_explicit(v30, &v33, 0, memory_order_release, memory_order_relaxed);
        if (v33 == 1)
        {
          goto LABEL_46;
        }

LABEL_59:
        this = WTF::Lock::unlockSlow(v30);
        if (!v32)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (*(v30 + 24))
        {
          goto LABEL_45;
        }

LABEL_58:
        v32 = 0;
        v39 = 1;
        atomic_compare_exchange_strong_explicit(v30, &v39, 0, memory_order_release, memory_order_relaxed);
        if (v39 != 1)
        {
          goto LABEL_59;
        }

LABEL_46:
        if (!v32)
        {
          goto LABEL_68;
        }
      }

      v34 = *(v4 + 100);
      v35 = (v32 + 8);
      do
      {
        v36 = *v35;
        if ((*v35 & 1) == 0)
        {
          this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v35, a2);
          goto LABEL_54;
        }

        v37 = *v35;
        atomic_compare_exchange_strong_explicit(v35, &v37, v36 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v37 != v36);
      if (v36 == 3)
      {
        v38 = WTF::fastMalloc(0x10);
        *v38 = &unk_1F472B308;
        *(v38 + 1) = v35;
        v52 = v38;
        WTF::ensureOnMainThread();
        this = v52;
        v52 = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
        }
      }

LABEL_54:
      if (!v34 || (this = WebCore::WebSocketChannel::processBuffer(v4), (this & 1) == 0))
      {
        if (v4)
        {
          goto LABEL_68;
        }

        return this;
      }

      continue;
    }
  }

  *(v4 + 225) = 1;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebCore::WebSocketChannel::fail(v4, &v52);
  this = v52;
  v52 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, a2);
  }

LABEL_68:
  if (*(v4 + 8) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(v4, a2);
    return bmalloc::api::tzoneFree(v49, v50);
  }

  else
  {
    --*(v4 + 8);
  }

  return this;
}

BOOL WebCore::WebSocketChannel::processBuffer(WebCore::WebSocketChannel *this)
{
  if (*(this + 225))
  {
    return 0;
  }

  if (*(this + 162) == 1)
  {
    result = 0;
    *(this + 25) = 0;
    return result;
  }

  ++*(this + 2);
  if (!WebCore::WebSocketHandshake::mode(*(this + 9)))
  {
    ServerHandshake = WebCore::WebSocketHandshake::readServerHandshake();
    if (ServerHandshake < 1)
    {
      goto LABEL_19;
    }

    v4 = ServerHandshake;
    if (WebCore::WebSocketHandshake::mode(*(this + 9)) != 3)
    {
      v7 = *(this + 25);
      if (v7 < v4)
      {
        goto LABEL_156;
      }

      memmove(*(this + 11), (*(this + 11) + v4), v7 - v4);
      v8 = *(this + 25);
      v9 = v8 >= v4;
      v10 = v8 - v4;
      if (!v9)
      {
        goto LABEL_156;
      }

      *(this + 25) = v10;
      *(this + 225) = 1;
      WebCore::WebSocketHandshake::failureReason(&v115, *(this + 9));
      WebCore::WebSocketChannel::fail(this, &v115);
      v11 = v115;
      v115 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v3);
      }

LABEL_19:
      result = 0;
      goto LABEL_182;
    }

    WebCore::WebSocketHandshake::serverHandshakeResponse(*(this + 9));
    WebCore::LegacyWebSocketInspectorInstrumentation::didReceiveWebSocketHandshakeResponse();
    WebCore::WebSocketHandshake::serverSetCookie(&v121, *(this + 9));
    if (v121)
    {
      if (*(v121 + 1))
      {
        v24 = *(this + 6);
        if (v24)
        {
          v25 = *(v24 + 8);
          if (v25)
          {
            v26 = *(v25 + 552);
            if (v26)
            {
              v27 = *(v26 + 8);
              if (v27)
              {
                v28 = *(v27 + 24);
                if (v28)
                {
                  v29 = *(v28 + 8);
                  if (v29)
                  {
                    if ((*(**(v29 + 808) + 16))(*(v29 + 808)))
                    {
                      v30 = *(this + 6);
                      if (!v30 || (v31 = *(v30 + 8)) == 0)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x1C79EE92CLL);
                      }

                      v32 = *(*(*(*(*(v31 + 552) + 8) + 24) + 8) + 808);
                      WebCore::WebSocketHandshake::httpURLForAuthenticationAndCookies(&v115, *(this + 9));
                      (*(*v32 + 8))(v32, v31, &v115, &v121);
                      v34 = v115;
                      v115 = 0;
                      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v34, v33);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v35 = *(this + 25);
    if (v35 < v4)
    {
      goto LABEL_156;
    }

    memmove(*(this + 11), (*(this + 11) + v4), v35 - v4);
    v36 = *(this + 25);
    v9 = v36 >= v4;
    v37 = v36 - v4;
    if (!v9)
    {
      goto LABEL_156;
    }

    *(this + 25) = v37;
    v38 = *(this + 8);
    if (!v38)
    {
      v40 = 0;
LABEL_172:
      v102 = v40 + 1;
      (*(*v40 + 16))(v40);
      do
      {
        v103 = *v102;
        if ((*v102 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v102, v3);
          goto LABEL_179;
        }

        v104 = *v102;
        atomic_compare_exchange_strong_explicit(v102, &v104, v103 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v104 != v103);
      if (v103 == 3)
      {
        v105 = WTF::fastMalloc(0x10);
        *v105 = &unk_1F472B308;
        *(v105 + 1) = v102;
        v115 = v105;
        WTF::ensureOnMainThread();
        v106 = v115;
        v115 = 0;
        if (v106)
        {
          (*(*v106 + 8))(v106);
        }
      }

LABEL_179:
      result = *(this + 25) != 0;
      v23 = v121;
      v121 = 0;
      if (!v23)
      {
        goto LABEL_182;
      }

      goto LABEL_180;
    }

    v39 = 0;
    v40 = *(this + 7);
    atomic_compare_exchange_strong_explicit(v38, &v39, 1u, memory_order_acquire, memory_order_acquire);
    if (v39)
    {
      v100 = v40;
      MEMORY[0x1CCA63990](v38);
      v40 = v100;
      if (*(v38 + 24))
      {
        goto LABEL_60;
      }
    }

    else if (*(v38 + 24))
    {
LABEL_60:
      ++*(v38 + 8);
      goto LABEL_170;
    }

    v40 = 0;
LABEL_170:
    v101 = 1;
    atomic_compare_exchange_strong_explicit(v38, &v101, 0, memory_order_release, memory_order_relaxed);
    if (v101 != 1)
    {
      v111 = v40;
      WTF::Lock::unlockSlow(v38);
      v40 = v111;
    }

    goto LABEL_172;
  }

  if (WebCore::WebSocketHandshake::mode(*(this + 9)) != 3)
  {
    goto LABEL_19;
  }

  WebCore::WebSocketFrame::WebSocketFrame();
  v125 = 0;
  v126 = 0;
  v4 = this + 88;
  v5 = WebCore::WebSocketFrame::parseFrame();
  if (v5 == 1)
  {
    result = 0;
    goto LABEL_38;
  }

  if (v5 == 2)
  {
    WebCore::WebSocketChannel::fail(this, &v125);
    result = 0;
    goto LABEL_38;
  }

  WebCore::WebSocketDeflateFramer::inflate(&v124, (this + 336), &v115);
  if ((*(v124 + 8) & 1) == 0)
  {
    v18 = *(v124 + 2);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v121 = v18;
    WebCore::WebSocketChannel::fail(this, &v121);
    v19 = v121;
    v121 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v3);
    }

    goto LABEL_36;
  }

  v12 = v115;
  if (v115 > 0xA || ((1 << v115) & 0x707) == 0)
  {
    v41 = 0;
    v42 = v115;
    do
    {
      ++v41;
      v43 = v42 > 9;
      v42 /= 0xAu;
    }

    while (v43);
    if (v41 < 0 || (v44 = (v41 + 27), __OFADD__(v41, 27)) || (WTF::tryFastCompactMalloc(&v121, (v44 + 20)), (v45 = v121) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x1C79EE90CLL);
    }

    *v121 = 2;
    *(v45 + 1) = v44;
    *(v45 + 1) = v45 + 20;
    *(v45 + 4) = 4;
    qmemcpy(v45 + 20, "Unrecognized frame opcode: ", 27);
    WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v12, v45 + 47, v44 - 27);
    v121 = v45;
    WebCore::WebSocketChannel::fail(this, &v121);
    v16 = v121;
    v121 = 0;
    if (!v16)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v13 = BYTE6(v115);
  v14 = HIBYTE(v115);
  if (BYTE6(v115) & 1) != 0 || (HIBYTE(v115))
  {
    WTF::tryFastCompactMalloc(&v121, 0x52);
    v15 = v121;
    if (!v121)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79EE904);
    }

    *v121 = 0x3E00000002;
    *(v15 + 1) = v15 + 20;
    *(v15 + 4) = 4;
    qmemcpy(v15 + 20, "One or more reserved bits are on: reserved2 = ", 46);
    WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v13, v15 + 66, 16);
    qmemcpy(v15 + 67, ", reserved3 = ", 14);
    WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v14, v15 + 81, 1);
    v121 = v15;
    WebCore::WebSocketChannel::fail(this, &v121);
    v16 = v121;
    v121 = 0;
    if (!v16)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v116 == 1)
  {
    goto LABEL_63;
  }

  if ((v115 - 8) <= 2)
  {
    if ((BYTE4(v115) & 1) == 0)
    {
      WTF::makeString<WTF::ASCIILiteral,unsigned int>(&v121, v115);
      WebCore::WebSocketChannel::fail(this, &v121);
      v16 = v121;
      v121 = 0;
      if (!v16)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (WebCore::WebSocketFrame::needsExtendedLengthField(__n))
    {
      WTF::makeString<WTF::ASCIILiteral,unsigned long,WTF::ASCIILiteral>(&v121, __n);
      WebCore::WebSocketChannel::fail(this, &v121);
      v16 = v121;
      v121 = 0;
      if (!v16)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }
  }

  if (*(this + 240) == 1 && (v115 > 0xA || ((1 << v115) & 0x701) == 0))
  {
    goto LABEL_63;
  }

  WebCore::LegacyWebSocketInspectorInstrumentation::didReceiveWebSocketFrame();
  if (v115 > 7)
  {
    if (v115 != 8)
    {
      if (v115 != 9)
      {
        goto LABEL_137;
      }

      WebCore::WebSocketChannel::enqueueRawFrame(this, 0xAuLL, __src, __n);
      v73 = *(this + 11);
      v74 = (v126 - v73);
      v75 = *(this + 25);
      if (v75 < v126 - v73)
      {
        goto LABEL_156;
      }

      memmove(v73, v126, &v75[-(v126 - v73)]);
      v76 = *(this + 25);
      if (v74 > v76)
      {
        goto LABEL_156;
      }

      *(this + 25) = v76 - v74;
LABEL_123:
      WebCore::WebSocketChannel::processOutgoingFrameQueue(this, v3);
      goto LABEL_124;
    }

    v67 = __n;
    if (__n == 1)
    {
      *(this + 132) = 1006;
      goto LABEL_63;
    }

    if (__n)
    {
      v85 = __rev16(*__src);
      *(this + 132) = v85;
      v86 = v85 - 1005;
      if (v86 <= 0xA && ((1 << v86) & 0x403) != 0)
      {
        *(this + 132) = 1006;
        goto LABEL_63;
      }

      if (v67 >= 3)
      {
        WTF::String::fromUTF8();
        v95 = v121;
        v121 = 0;
        v96 = *(this + 34);
        *(this + 34) = v95;
        if (v96)
        {
          if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v96, v94);
          }

          v97 = v121;
          v121 = 0;
          if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v97, v94);
          }
        }

        goto LABEL_112;
      }
    }

    else
    {
      *(this + 132) = 1005;
    }

    WTF::String::operator=(this + 34, v46);
LABEL_112:
    v68 = *(this + 11);
    v69 = (v126 - v68);
    v70 = *(this + 25);
    if (v70 < v126 - v68)
    {
      goto LABEL_156;
    }

    memmove(v68, v126, &v70[-(v126 - v68)]);
    v71 = *(this + 25);
    if (v69 > v71)
    {
      goto LABEL_156;
    }

    *(this + 25) = v71 - v69;
    *(this + 162) = 1;
    WebCore::WebSocketChannel::startClosingHandshake(this, *(this + 132), (this + 272));
    if (*(this + 161) != 1)
    {
      goto LABEL_124;
    }

    if (!*(this + 78))
    {
      *(this + 78) = 1;
    }

    goto LABEL_123;
  }

  if (v115)
  {
    if (v115 != 1)
    {
      if (v115 == 2)
      {
        if (BYTE4(v115) == 1)
        {
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(&v121, __src, __n);
          v47 = *(this + 11);
          v48 = (v126 - v47);
          v49 = *(this + 25);
          if (v49 >= v126 - v47)
          {
            memmove(v47, v126, &v49[-(v126 - v47)]);
            v50 = *(this + 25);
            if (v48 <= v50)
            {
              *(this + 25) = v50 - v48;
              WebCore::WebSocketChannel::protectedClient(&v120, this);
              v51 = (v120 + 8);
              (*(*v120 + 32))(v120, &v121);
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>::deref(v51, v52);
              v53 = v121;
              if (v121)
              {
                v121 = 0;
                v122 = 0;
                WTF::fastFree(v53, v3);
                v54 = *(this + 25);
                goto LABEL_140;
              }

              goto LABEL_124;
            }
          }

          goto LABEL_156;
        }

        *(this + 240) = 1;
        *(this + 61) = 2;
        v77 = __n;
        if (__n)
        {
          v78 = __src;
          v79 = *(this + 65);
          v80 = __n + v79;
          if (__n + v79 > *(this + 64))
          {
            WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0,unsigned char const>(this + 31, __n + v79);
            v79 = *(this + 65);
          }

          if (v80 < v79)
          {
            goto LABEL_199;
          }

LABEL_136:
          memcpy((*(this + 31) + v79), v78, v77);
          *(this + 65) = v80;
          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (BYTE4(v115) != 1)
    {
      *(this + 240) = 1;
      *(this + 61) = 1;
      v77 = __n;
      if (__n)
      {
        v78 = __src;
        v79 = *(this + 65);
        v80 = __n + v79;
        if (__n + v79 > *(this + 64))
        {
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0,unsigned char const>(this + 31, __n + v79);
          v79 = *(this + 65);
        }

        if (v80 < v79)
        {
LABEL_199:
          __break(0xC471u);
          JUMPOUT(0x1C79EE3E0);
        }

        goto LABEL_136;
      }

LABEL_137:
      v81 = *(this + 11);
      v82 = (v126 - v81);
      v83 = *(this + 25);
      if (v83 >= v126 - v81)
      {
        memmove(v81, v126, &v83[-(v126 - v81)]);
        v84 = *(this + 25);
        if (v82 <= v84)
        {
          v54 = v84 - v82;
          *(this + 25) = v54;
          goto LABEL_140;
        }
      }

      goto LABEL_156;
    }

    if (__n)
    {
      WTF::String::fromUTF8();
      v72 = v120;
    }

    else
    {
      v72 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
      }
    }

    v121 = v72;
    v87 = *(this + 11);
    v88 = (v126 - v87);
    v89 = *(this + 25);
    if (v89 >= v126 - v87)
    {
      memmove(v87, v126, &v89[-(v126 - v87)]);
      v90 = *(this + 25);
      if (v88 <= v90)
      {
        *(this + 25) = v90 - v88;
        if (v72)
        {
          WebCore::WebSocketChannel::protectedClient(&v120, this);
          v91 = (v120 + 8);
          (*(*v120 + 24))(v120, &v121);
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>::deref(v91, v92);
          v93 = v121;
          v121 = 0;
          if (!v93)
          {
            goto LABEL_124;
          }

LABEL_158:
          if (atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v93, v3);
            v54 = *(this + 25);
            goto LABEL_140;
          }

LABEL_124:
          v54 = *(this + 25);
          goto LABEL_140;
        }

LABEL_157:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WebCore::WebSocketChannel::fail(this, &v120);
        v93 = v120;
        v120 = 0;
        if (!v93)
        {
          goto LABEL_124;
        }

        goto LABEL_158;
      }
    }

LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if ((*(this + 240) & 1) == 0)
  {
LABEL_63:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(this, &v121);
    v16 = v121;
    v121 = 0;
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v3);
      result = 0;
      v17 = v124;
      v124 = 0;
      if (!v17)
      {
        goto LABEL_38;
      }

LABEL_37:
      v20 = result;
      WebCore::InflateResultHolder::~InflateResultHolder(v17);
      bmalloc::api::tzoneFree(v21, v22);
      result = v20;
      goto LABEL_38;
    }

LABEL_36:
    result = 0;
    v17 = v124;
    v124 = 0;
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v55 = __n;
  if (__n)
  {
    v56 = __src;
    v57 = *(this + 65);
    v58 = __n + v57;
    if (__n + v57 > *(this + 64))
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0,unsigned char const>(this + 31, __n + v57);
      v57 = *(this + 65);
    }

    if (v58 < v57)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79EE934);
    }

    memcpy((*(this + 31) + v57), v56, v55);
    *(this + 65) = v58;
  }

  v59 = *(this + 11);
  v60 = (v126 - v59);
  v61 = *(this + 25);
  if (v61 < v126 - v59)
  {
    goto LABEL_156;
  }

  memmove(v59, v126, &v61[-(v126 - v59)]);
  v62 = *(this + 25);
  if (v60 > v62)
  {
    goto LABEL_156;
  }

  v54 = v62 - v60;
  *(this + 25) = v54;
  if (BYTE4(v115) != 1)
  {
    goto LABEL_140;
  }

  v63 = *(this + 31);
  v121 = v63;
  v64 = *(this + 64);
  v3 = *(this + 65);
  *(this + 31) = 0;
  *(this + 32) = 0;
  v122 = v64;
  v123 = v3;
  *(this + 240) = 0;
  v65 = *(this + 61);
  if (v65 == 2)
  {
    WebCore::WebSocketChannel::protectedClient(&v120, this);
    v98 = (v120 + 8);
    (*(*v120 + 32))(v120, &v121);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>::deref(v98, v99);
    v63 = v121;
    goto LABEL_193;
  }

  if (v65 != 1)
  {
    goto LABEL_193;
  }

  if (v3)
  {
    WTF::String::fromUTF8();
    v66 = v119;
  }

  else
  {
    v66 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
    }
  }

  v120 = v66;
  if (v66)
  {
    WebCore::WebSocketChannel::protectedClient(&v119, this);
    v112 = (v119 + 8);
    (*(*v119 + 24))(v119, &v120);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>::deref(v112, v113);
    v114 = v120;
    v120 = 0;
    if (!v114)
    {
      goto LABEL_193;
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(this, &v119);
    v114 = v119;
    v119 = 0;
    if (!v114)
    {
      goto LABEL_193;
    }
  }

  if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v114, v3);
  }

LABEL_193:
  if (!v63)
  {
    goto LABEL_124;
  }

  v121 = 0;
  v122 = 0;
  WTF::fastFree(v63, v3);
  v54 = *(this + 25);
LABEL_140:
  if (v54)
  {
    result = 1;
    v17 = v124;
    v124 = 0;
    if (v17)
    {
      goto LABEL_37;
    }
  }

  else
  {
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, v3);
    result = 0;
    v17 = v124;
    v124 = 0;
    if (v17)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  v23 = v125;
  v125 = 0;
  if (v23)
  {
LABEL_180:
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v107 = result;
      WTF::StringImpl::destroy(v23, v3);
      result = v107;
    }
  }

LABEL_182:
  if (*(this + 2) == 1)
  {
    v108 = result;
    WebCore::WebSocketChannel::~WebSocketChannel(this, v3);
    bmalloc::api::tzoneFree(v109, v110);
    return v108;
  }

  else
  {
    --*(this + 2);
  }

  return result;
}