@interface DOMHTMLTableRowElement
- (DOMHTMLCollection)cells;
- (DOMHTMLElement)insertCell:(int)index;
- (NSString)align;
- (NSString)bgColor;
- (NSString)ch;
- (NSString)chOff;
- (NSString)vAlign;
- (int)rowIndex;
- (int)sectionRowIndex;
- (void)deleteCell:(int)index;
- (void)setAlign:(NSString *)align;
- (void)setBgColor:(NSString *)bgColor;
- (void)setCh:(NSString *)ch;
- (void)setChOff:(NSString *)chOff;
- (void)setVAlign:(NSString *)vAlign;
@end

@implementation DOMHTMLTableRowElement

- (int)rowIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLTableRowElement::rowIndex(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)sectionRowIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLTableRowElement::sectionRowIndex(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMHTMLCollection)cells
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableRowElement::cells(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (NSString)align
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setAlign:(NSString *)align
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, align, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)bgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setBgColor:(NSString *)bgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, bgColor, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)ch
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setCh:(NSString *)ch
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, ch, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)chOff
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setChOff:(NSString *)chOff
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, chOff, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)vAlign
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setVAlign:(NSString *)vAlign
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, vAlign, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (DOMHTMLElement)insertCell:(int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  inserted = WebCore::HTMLTableRowElement::insertCell(&v13, self->super.super.super.super._internal);
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

    mpark::throw_bad_variant_access(inserted);
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

- (void)deleteCell:(int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WebCore::HTMLTableRowElement::deleteCell(&v6, self->super.super.super.super._internal);
  if (v8 == 1)
  {
    v9[80] = v6;
    v5 = v7;
    v7 = 0;
    v10 = v5;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
}

@end