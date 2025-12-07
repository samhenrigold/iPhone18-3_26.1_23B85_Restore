@interface IMServiceChatItem
- (id)_initWithItem:(id)item service:(id)service handle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMServiceChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item service:self->_service handle:self->_handle];

  return v6;
}

- (id)_initWithItem:(id)item service:(id)service handle:(id)handle
{
  itemCopy = item;
  serviceCopy = service;
  handleCopy = handle;
  v27.receiver = self;
  v27.super_class = IMServiceChatItem;
  v11 = [(IMChatItem *)&v27 _initWithItem:itemCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 8, service);
    objc_storeStrong(v12 + 9, handle);
    name = [serviceCopy name];
    v14 = name;
    if (name)
    {
      v15 = name;
    }

    else
    {
      v15 = &stru_1F1B76F98;
    }

    v16 = v15;

    v17 = [handleCopy ID];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F1B76F98;
    }

    v20 = v19;

    guid = [itemCopy guid];
    v22 = guid;
    if (guid)
    {
      v23 = guid;
    }

    else
    {
      v23 = &stru_1F1B76F98;
    }

    v24 = v23;

    v25 = sub_1A83AC604();
    [v12 _setGUID:v25];
  }

  return v12;
}

@end