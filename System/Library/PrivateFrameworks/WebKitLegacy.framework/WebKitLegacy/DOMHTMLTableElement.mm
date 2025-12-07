@interface DOMHTMLTableElement
- (DOMHTMLCollection)rows;
- (DOMHTMLCollection)tBodies;
- (DOMHTMLElement)createCaption;
- (DOMHTMLElement)createTFoot;
- (DOMHTMLElement)createTHead;
- (DOMHTMLElement)insertRow:(int)index;
- (DOMHTMLTableCaptionElement)caption;
- (DOMHTMLTableSectionElement)tFoot;
- (DOMHTMLTableSectionElement)tHead;
- (NSString)align;
- (NSString)bgColor;
- (NSString)border;
- (NSString)cellPadding;
- (NSString)cellSpacing;
- (NSString)frameBorders;
- (NSString)rules;
- (NSString)summary;
- (NSString)width;
- (id)createTBody;
- (void)deleteCaption;
- (void)deleteRow:(int)index;
- (void)deleteTFoot;
- (void)deleteTHead;
- (void)setAlign:(NSString *)align;
- (void)setBgColor:(NSString *)bgColor;
- (void)setBorder:(NSString *)border;
- (void)setCaption:(DOMHTMLTableCaptionElement *)caption;
- (void)setCellPadding:(NSString *)cellPadding;
- (void)setCellSpacing:(NSString *)cellSpacing;
- (void)setFrameBorders:(NSString *)frameBorders;
- (void)setRules:(NSString *)rules;
- (void)setSummary:(NSString *)summary;
- (void)setTFoot:(DOMHTMLTableSectionElement *)tFoot;
- (void)setTHead:(DOMHTMLTableSectionElement *)tHead;
- (void)setWidth:(NSString *)width;
@end

@implementation DOMHTMLTableElement

- (DOMHTMLTableCaptionElement)caption
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::caption(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)setCaption:(DOMHTMLTableCaptionElement *)caption
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (caption)
  {
    internal = caption->super.super.super.super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v7 = internal;
  WebCore::HTMLTableElement::setCaption();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  WebCore::Node::removedLastRef(v7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (DOMHTMLTableSectionElement)tHead
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::tHead(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)setTHead:(DOMHTMLTableSectionElement *)tHead
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (tHead)
  {
    internal = tHead->super.super.super.super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v7 = internal;
  WebCore::HTMLTableElement::setTHead();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  WebCore::Node::removedLastRef(v7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (DOMHTMLTableSectionElement)tFoot
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::tFoot(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)setTFoot:(DOMHTMLTableSectionElement *)tFoot
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (tFoot)
  {
    internal = tFoot->super.super.super.super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v7 = internal;
  WebCore::HTMLTableElement::setTFoot();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  WebCore::Node::removedLastRef(v7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (DOMHTMLCollection)rows
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::rows(&v7, self->super.super.super.super._internal);
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

- (DOMHTMLCollection)tBodies
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::tBodies(&v7, self->super.super.super.super._internal);
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

- (NSString)border
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

- (void)setBorder:(NSString *)border
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, border, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)cellPadding
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

- (void)setCellPadding:(NSString *)cellPadding
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, cellPadding, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)cellSpacing
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

- (void)setCellSpacing:(NSString *)cellSpacing
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, cellSpacing, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)frameBorders
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

- (void)setFrameBorders:(NSString *)frameBorders
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, frameBorders, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)rules
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

- (void)setRules:(NSString *)rules
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, rules, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)summary
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

- (void)setSummary:(NSString *)summary
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, summary, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)width
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

- (void)setWidth:(NSString *)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, width, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (DOMHTMLElement)createTHead
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::createTHead(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)deleteTHead
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLTableElement::deleteTHead(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (DOMHTMLElement)createTFoot
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::createTFoot(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)deleteTFoot
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLTableElement::deleteTFoot(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (id)createTBody
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::createTBody(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMHTMLElement)createCaption
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTableElement::createCaption(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)deleteCaption
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLTableElement::deleteCaption(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (DOMHTMLElement)insertRow:(int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  inserted = WebCore::HTMLTableElement::insertRow(&v13, self->super.super.super.super._internal);
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

- (void)deleteRow:(int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WebCore::HTMLTableElement::deleteRow(&v6, self->super.super.super.super._internal);
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