@interface DOMText
- (DOMText)replaceWholeText:(NSString *)content;
- (DOMText)splitText:(unsigned int)offset;
- (NSString)wholeText;
@end

@implementation DOMText

- (NSString)wholeText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Text::wholeText(&v11, self->super.super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (DOMText)splitText:(unsigned int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  v4 = WebCore::Text::splitText(&v13, self->super.super.super._internal);
  if (v15)
  {
    if (v15 == 1)
    {
      v16[80] = v13;
      v12 = v14;
      v14 = 0;
      v17 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  v5 = v13;
  v13 = 0;
  v7 = kit(v5);
  if (!v5)
  {
LABEL_5:
    v8 = v15;
    if (v15 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v5);
  v8 = v15;
  if (v15 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v8)
  {
    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
    }
  }

  else
  {
    v9 = v13;
    v13 = 0;
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v9);
      }

      else
      {
        *(v9 + 7) -= 2;
      }
    }
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v6);
  return v7;
}

- (DOMText)replaceWholeText:(NSString *)content
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  MEMORY[0x1CCA63A40](&v9, content);
  WebCore::Text::replaceWholeText(internal, &v9);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
  return self;
}

@end