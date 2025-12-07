@interface DOMXPathExpression
- (DOMXPathResult)evaluate:(DOMNode *)contextNode type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult;
- (void)dealloc;
@end

@implementation DOMXPathExpression

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*internal == 1)
      {
        WebCore::XPathExpression::~XPathExpression(internal);
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMXPathExpression;
    [(DOMObject *)&v7 dealloc];
  }
}

- (DOMXPathResult)evaluate:(DOMNode *)contextNode type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult
{
  if (contextNode)
  {
    v6 = type;
    WebCore::JSMainThreadNullState::JSMainThreadNullState(v32);
    if (inResult)
    {
      internal = inResult->super._internal;
    }

    else
    {
      internal = 0;
    }

    v11 = WebCore::XPathExpression::evaluate(&v28, self->super._internal, contextNode->super._internal, internal, v6);
    if (v30)
    {
      if (v30 == 1)
      {
        v33[0] = v28;
        v27 = v29;
        v29 = 0;
        v34 = v27;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v11);
    }

    v13 = v28;
    v28 = 0;
    v31 = v13;
    if (v13)
    {
      DOMWrapper = getDOMWrapper(v13);
      _init = DOMWrapper;
      if (DOMWrapper)
      {
        v15 = DOMWrapper;
      }

      else
      {
        _init = [(WebScriptObject *)[DOMXPathResult alloc] _init];
        v17 = 0;
        _init->super._internal = v13;
        ++*v13;
        v35 = v13;
        v36 = _init;
        atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v17, 1u, memory_order_acquire, memory_order_acquire);
        if (v17)
        {
          MEMORY[0x1CCA63990](wrapperCacheLock);
        }

        {
          wrapperCache(void)::map = 0;
        }

        WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v35, &v36, v33);
        v18 = 1;
        atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v18, 0, memory_order_release, memory_order_relaxed);
        if (v18 != 1)
        {
          WTF::Lock::unlockSlow(wrapperCacheLock);
        }
      }

      v19 = _init;
      if (*v13 != 1)
      {
        --*v13;
        v16 = v30;
        if (v30 == 255)
        {
          goto LABEL_30;
        }

LABEL_22:
        if (v16)
        {
          v23 = v29;
          v29 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v12);
          }
        }

        else
        {
          v22 = v28;
          v28 = 0;
          if (v22)
          {
            if (*v22 == 1)
            {
              v24 = MEMORY[0x1CCA64260]();
              WTF::fastFree(v24, v25);
            }

            else
            {
              --*v22;
            }
          }
        }

        goto LABEL_30;
      }

      v20 = MEMORY[0x1CCA64260](v13);
      WTF::fastFree(v20, v21);
      v16 = v30;
      if (v30 != 255)
      {
        goto LABEL_22;
      }
    }

    else
    {
      _init = 0;
      v16 = v30;
      if (v30 != 255)
      {
        goto LABEL_22;
      }
    }

LABEL_30:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v32, v12);
    return _init;
  }

  return 0;
}

@end