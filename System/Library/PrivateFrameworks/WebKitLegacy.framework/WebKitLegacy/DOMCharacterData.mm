@interface DOMCharacterData
- (NSString)data;
- (NSString)substringData:(unsigned int)offset length:(unsigned int)length;
- (id)nextElementSibling;
- (id)previousElementSibling;
- (unsigned)length;
- (void)appendData:(NSString *)data;
- (void)deleteData:(unsigned int)offset length:(unsigned int)length;
- (void)insertData:(unsigned int)offset data:(NSString *)data;
- (void)remove;
- (void)replaceData:(unsigned int)offset length:(unsigned int)length data:(NSString *)data;
- (void)setData:(NSString *)data;
@end

@implementation DOMCharacterData

- (NSString)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super._internal + 11);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (void)setData:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v8, data);
  WebCore::CharacterData::setData(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super.super._internal + 11);
  if (v4)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (id)previousElementSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Node::previousElementSibling(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)nextElementSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  ElementSibling = WebCore::Node::nextElementSibling(self->super.super._internal);
  v4 = kit(ElementSibling);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (NSString)substringData:(unsigned int)offset length:(unsigned int)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  v5 = WebCore::CharacterData::substringData(&v15, self->super.super._internal);
  if (v17)
  {
    if (v17 == 1)
    {
      v19[80] = v15;
      v14 = v16;
      v16 = 0;
      v20 = v14;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v5);
  }

  v6 = v15;
  v15 = 0;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v18, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v18 = &stru_1F472E7E8;
    v13 = &stru_1F472E7E8;
  }

  v8 = v18;
  v18 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v18;
    v18 = 0;
    if (v10)
    {
    }
  }

  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v7);
  }

  if (v17 != 255)
  {
    if (v17)
    {
      v11 = v16;
      v16 = 0;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v15;
      v15 = 0;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v7);
  return v8;
}

- (void)appendData:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v8, data);
  WebCore::CharacterData::appendData(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (void)insertData:(unsigned int)offset data:(NSString *)data
{
  v5 = *&offset;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, data);
  WebCore::CharacterData::insertData(&v12, internal, &v11, v5);
  if (v14 == 1)
  {
    v15[80] = v12;
    v10 = v13;
    v13 = 0;
    v16 = v10;
    raiseDOMErrorException();
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v8);
}

- (void)deleteData:(unsigned int)offset length:(unsigned int)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WebCore::CharacterData::deleteData(&v7, self->super.super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)replaceData:(unsigned int)offset length:(unsigned int)length data:(NSString *)data
{
  v6 = *&length;
  v7 = *&offset;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v13, data);
  WebCore::CharacterData::replaceData(&v14, internal, &v13, v7, v6);
  if (v16 == 1)
  {
    v17[80] = v14;
    v12 = v15;
    v15 = 0;
    v18 = v12;
    raiseDOMErrorException();
  }

  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v10);
}

- (void)remove
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Node::remove(&v5, self->super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v4 = v6;
    v6 = 0;
    v9 = v4;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
}

@end