@interface WKBackForwardList
- (NSArray)backList;
- (NSArray)forwardList;
- (Ref<WebKit::WebBackForwardList,)_protectedList;
- (WKBackForwardListItem)backItem;
- (WKBackForwardListItem)currentItem;
- (WKBackForwardListItem)forwardItem;
- (WKBackForwardListItem)itemAtIndex:(NSInteger)index;
- (void)_clear;
- (void)_removeAllItems;
- (void)dealloc;
@end

@implementation WKBackForwardList

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    if (self)
    {
      objc_msgSend__protectedList(self);
      v4 = v7;
    }

    else
    {
      v4 = 0;
      v7 = 0;
    }

    (**v4)(v4);
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      CFRelease(v5[1]);
    }

    v6.receiver = self;
    v6.super_class = WKBackForwardList;
    [(WKBackForwardList *)&v6 dealloc];
  }
}

- (Ref<WebKit::WebBackForwardList,)_protectedList
{
  v3 = v2;
  p_list = &self->_list;
  v5 = CFRetain(*&self->_list.m_storage.data[8]);
  *v3 = p_list;
  return v5;
}

- (WKBackForwardListItem)currentItem
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  WebKit::WebBackForwardList::protectedCurrentItem(&v8, self);
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 + 8);
    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v4 = *(v2 + 8);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v3 = 0;
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v3;
}

- (WKBackForwardListItem)backItem
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v8;
  }

  else
  {
    v8 = 0;
  }

  v2 = WebKit::WebBackForwardList::backItem(self);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(v3 + 8);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 8);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v4 = 0;
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }

  return v4;
}

- (WKBackForwardListItem)forwardItem
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v8;
  }

  else
  {
    v8 = 0;
  }

  v2 = WebKit::WebBackForwardList::forwardItem(self);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(v3 + 8);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 8);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v4 = 0;
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }

  return v4;
}

- (WKBackForwardListItem)itemAtIndex:(NSInteger)index
{
  v3 = index;
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v10;
  }

  else
  {
    v10 = 0;
  }

  v4 = WebKit::WebBackForwardList::itemAtIndex(self, v3);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 8);
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v7 = *(v5 + 8);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v6 = 0;
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 1));
  }

  return v6;
}

- (NSArray)backList
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v9;
  }

  else
  {
    v9 = 0;
  }

  WebKit::WebBackForwardList::backList(self, &v10);
  var1 = v10->var1;
  if (!var1)
  {
    v6 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 117;
    __break(0xC471u);
    return result;
  }

  v3 = var1;
  v4 = var1;
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5->var1;
LABEL_8:
    CFRelease(v6);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 1));
  }

  return var1;
}

- (NSArray)forwardList
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v9;
  }

  else
  {
    v9 = 0;
  }

  WebKit::WebBackForwardList::forwardList(self, &v10);
  var1 = v10->var1;
  if (!var1)
  {
    v6 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 117;
    __break(0xC471u);
    return result;
  }

  v3 = var1;
  v4 = var1;
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5->var1;
LABEL_8:
    CFRelease(v6);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 1));
  }

  return var1;
}

- (void)_removeAllItems
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v4;
  }

  else
  {
    v4 = 0;
  }

  WebKit::WebBackForwardList::removeAllItems(self, v2);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    CFRelease(*(v3 + 1));
  }
}

- (void)_clear
{
  if (self)
  {
    objc_msgSend__protectedList(self, a2);
    self = v3;
  }

  else
  {
    v3 = 0;
  }

  WebKit::WebBackForwardList::clear(self);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    CFRelease(*(v2 + 1));
  }
}

@end