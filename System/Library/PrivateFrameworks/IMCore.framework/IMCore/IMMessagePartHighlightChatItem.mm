@interface IMMessagePartHighlightChatItem
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (_NSRange)highlightedMessagePartRange;
- (id)_initWithItem:(id)item highlightedMessagePartGUID:(id)d highlightedMessagePartIndex:(int64_t)index highlightedMessagePartRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessagePartHighlightChatItem

- (id)_initWithItem:(id)item highlightedMessagePartGUID:(id)d highlightedMessagePartIndex:(int64_t)index highlightedMessagePartRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = IMMessagePartHighlightChatItem;
  v13 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    *(v13 + 8) = index;
    *(v13 + 10) = location;
    *(v13 + 11) = length;
    objc_storeStrong(v13 + 9, d);
    v14[56] = [itemCopy isFromMe];
    v15 = MEMORY[0x1E69A8148];
    guid = [itemCopy guid];
    v17 = [v15 encodeMessagePartGUID:guid prefix:@"mh" partNumber:index];
    [v14 _setGUID:v17];
  }

  return v14;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  *&retstr->scale = 0u;
  *&retstr->xScalar = 0u;
  *&retstr->associatedLayoutIntent = 0u;
  retstr->layoutIntent = 11;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  highlightedMessagePartGUID = [(IMMessagePartHighlightChatItem *)self highlightedMessagePartGUID];
  highlightedMessagePartIndex = [(IMMessagePartHighlightChatItem *)self highlightedMessagePartIndex];
  highlightedMessagePartRange = [(IMMessagePartHighlightChatItem *)self highlightedMessagePartRange];
  v10 = [v4 _initWithItem:_item highlightedMessagePartGUID:highlightedMessagePartGUID highlightedMessagePartIndex:highlightedMessagePartIndex highlightedMessagePartRange:{highlightedMessagePartRange, v9}];

  return v10;
}

- (_NSRange)highlightedMessagePartRange
{
  p_highlightedMessagePartRange = &self->_highlightedMessagePartRange;
  location = self->_highlightedMessagePartRange.location;
  length = p_highlightedMessagePartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end