@interface WKASCAuthorizationPresenterDelegate
- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)coordinator;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)choice authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)presenter validateUserEnteredPIN:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t *)presenter@<X8> credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter@<X0> validateUserEnteredPIN:(unint64_t)n@<X1> completionHandler:(uint64_t *)handler@<X8>;
- (uint64_t)dispatchCoordinatorCallback:(WTF *)this;
- (uint64_t)dispatchCoordinatorCallback:(uint64_t)result;
- (void)authorizationPresenter:(id)presenter credentialRequestedForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler;
- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)presenter validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:;
- (void)dispatchCoordinatorCallback:(void *)callback;
@end

@implementation WKASCAuthorizationPresenterDelegate

- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)coordinator
{
  v11.receiver = self;
  v11.super_class = WKASCAuthorizationPresenterDelegate;
  v5 = [(WKASCAuthorizationPresenterDelegate *)&v11 init];
  if (v5)
  {
    if (!*coordinator)
    {
      v6 = WTF::fastCompactMalloc(0x10);
      *v6 = 1;
      *(v6 + 8) = coordinator;
      v7 = *coordinator;
      *coordinator = v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, v4);
        }
      }
    }

    v8 = *coordinator;
    atomic_fetch_add(*coordinator, 1u);
    m_ptr = v5->_coordinator.m_impl.m_ptr;
    v5->_coordinator.m_impl.m_ptr = v8;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)authorizationPresenter:(id)presenter credentialRequestedForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v11 = WTF::fastMalloc(v10, 0x10);
  *v11 = &unk_1F110BA60;
  v11[1] = v9;
  v30 = v11;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v30];
  v12 = v30;
  v30 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  WebKit::getASCPlatformPublicKeyCredentialLoginChoiceClass[0](v13);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([choice isRegistrationRequest])
    {
      if (context)
      {
        contextCopy = context;
      }

      v17 = WTF::fastMalloc(v15, 0x10);
      *v17 = &unk_1F110BAB0;
      v17[1] = context;
      v30 = v17;
      [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v30];
      v18 = v30;
      v30 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      goto LABEL_20;
    }

    MEMORY[0x19EB02040](&v30, [choice name]);
    v24 = v30;
    v30 = 0;
    if (context)
    {
      contextCopy2 = context;
    }

    v26 = WTF::fastMalloc(v23, 0x18);
    *v26 = &unk_1F110BAD8;
    v26[1] = v24;
    v26[2] = context;
    v29 = v26;
    [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v29];
  }

  else
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](isKindOfClass);
    if ((objc_opt_isKindOfClass() & 1) == 0 || [choice credentialKind] != 1)
    {
      goto LABEL_20;
    }

    MEMORY[0x19EB02040](&v30, [choice name]);
    v19 = v30;
    v30 = 0;
    v21 = WTF::fastMalloc(v20, 0x10);
    *v21 = &unk_1F110BB00;
    v21[1] = v19;
    v29 = v21;
    [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v29];
  }

  v27 = v29;
  v29 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v30;
  v30 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v22);
  }

LABEL_20:
  _Block_release(0);
}

- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v9 = WTF::fastMalloc(v8, 0x10);
  *v9 = &unk_1F110BB28;
  v9[1] = v7;
  v18 = v9;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v18];
  v10 = v18;
  v18 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  MEMORY[0x19EB02040](&v18, n);
  v11 = v18;
  v18 = 0;
  v13 = WTF::fastMalloc(v12, 0x10);
  *v13 = &unk_1F110BB78;
  v13[1] = v11;
  v17 = v13;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v17];
  v15 = v17;
  v17 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v18;
  v18 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  _Block_release(0);
}

- (void)dispatchCoordinatorCallback:(void *)callback
{
  *callback = &unk_1F110BBA0;
  v3 = callback[2];
  callback[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = callback[1];
  callback[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return callback;
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *presenter = &unk_1F110BA88;
  _Block_release(*(presenter + 8));
  return presenter;
}

- (uint64_t)authorizationPresenter:(const void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *presenter = &unk_1F110BA88;
  _Block_release(presenter[1]);

  return WTF::fastFree(presenter, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t *)presenter@<X8> credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  v5 = WTF::fastMalloc(presenter, 0x10);
  v6 = *(self + 8);
  *(self + 8) = 0;
  *v5 = &unk_1F110BA88;
  v5[1] = v6;
  result = *(a2 + 64);
  *(a2 + 64) = v5;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  v2 = presenter[1];
  *presenter = &unk_1F110BAB0;
  presenter[1] = 0;
  if (v2)
  {
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)choice authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BAB0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, choice);
}

- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:
{
  v3 = presenter[1];
  *presenter = &unk_1F110BB00;
  presenter[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, choice);
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB00;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, choice);
  }

  return WTF::fastFree(this, choice);
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:completionHandler:
{
  *presenter = &unk_1F110BB50;
  _Block_release(*(presenter + 8));
  return presenter;
}

- (uint64_t)authorizationPresenter:(const void *)presenter validateUserEnteredPIN:completionHandler:
{
  *presenter = &unk_1F110BB50;
  _Block_release(presenter[1]);

  return WTF::fastFree(presenter, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter@<X0> validateUserEnteredPIN:(unint64_t)n@<X1> completionHandler:(uint64_t *)handler@<X8>
{
  v5 = WTF::fastMalloc(handler, 0x10);
  v6 = *(presenter + 8);
  *(presenter + 8) = 0;
  *v5 = &unk_1F110BB50;
  v5[1] = v6;
  result = *(n + 64);
  *(n + 64) = v5;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

- (void)authorizationPresenter:(void *)presenter validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:
{
  v3 = presenter[1];
  *presenter = &unk_1F110BB78;
  presenter[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, n);
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB78;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, n);
  }

  return WTF::fastFree(this, n);
}

- (uint64_t)dispatchCoordinatorCallback:(WTF *)this
{
  *this = &unk_1F110BBA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
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

- (uint64_t)dispatchCoordinatorCallback:(uint64_t)result
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 8))
    {
      return (*(**(result + 16) + 16))();
    }
  }

  return result;
}

@end