@interface IMMomentShareStatusChatItem
+ (id)_guidForItem:(id)item;
- (BOOL)_isEqualToGuid:(id)guid activityTitle:(id)title expirationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item activityTitle:(id)title expirationDate:(id)date;
- (id)_initWithItem:(id)item activityTitle:(id)title expirationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMMomentShareStatusChatItem

+ (id)_guidForItem:(id)item
{
  guid = [item guid];
  v4 = sub_1A83AC604();

  return v4;
}

- (id)_initWithItem:(id)item activityTitle:(id)title expirationDate:(id)date
{
  itemCopy = item;
  titleCopy = title;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = IMMomentShareStatusChatItem;
  v11 = [(IMChatItem *)&v18 _initWithItem:itemCopy];
  if (v11)
  {
    v12 = [objc_opt_class() _guidForItem:itemCopy];
    [v11 _setGUID:v12];
    v13 = [titleCopy copy];
    v14 = v11[7];
    v11[7] = v13;

    v15 = [dateCopy copy];
    v16 = v11[8];
    v11[8] = v15;
  }

  return v11;
}

- (unint64_t)hash
{
  guid = [(IMTranscriptChatItem *)self guid];
  v4 = [guid hash];

  v5 = [(NSString *)self->_activityTitle hash]^ v4;
  return v5 ^ [(NSDate *)self->_expirationDate hash];
}

- (BOOL)_isEqualToGuid:(id)guid activityTitle:(id)title expirationDate:(id)date
{
  guidCopy = guid;
  titleCopy = title;
  dateCopy = date;
  guid = [(IMTranscriptChatItem *)self guid];
  v12 = guidCopy;
  v13 = v12;
  if (guid == v12)
  {

    goto LABEL_7;
  }

  if (!v12 || !guid)
  {

    LOBYTE(v15) = 0;
    v16 = guid;
    goto LABEL_19;
  }

  v14 = [(NSDate *)guid isEqualToString:v12];

  if (v14)
  {
LABEL_7:
    v16 = self->_activityTitle;
    v17 = titleCopy;
    guid = v17;
    if (v16 == v17)
    {

LABEL_14:
      v16 = self->_expirationDate;
      v18 = dateCopy;
      guid = v18;
      if (v16 == v18)
      {
        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = 0;
        if (v18 && v16)
        {
          LOBYTE(v15) = [(NSDate *)v16 isEqualToDate:v18];
        }
      }

      goto LABEL_19;
    }

    LOBYTE(v15) = 0;
    if (v17 && v16)
    {
      v15 = [(NSDate *)v16 isEqualToString:v17];

      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v15) = 0;
LABEL_20:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = IMMomentShareStatusChatItem;
  if ([(IMTranscriptChatItem *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    guid = [equalCopy guid];
    activityTitle = [equalCopy activityTitle];
    expirationDate = [equalCopy expirationDate];
    v8 = [(IMMomentShareStatusChatItem *)self _isEqualToGuid:guid activityTitle:activityTitle expirationDate:expirationDate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMMomentShareStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] activityTitle: %@, expirationDate: %@]", v4, self->_activityTitle, self->_expirationDate];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item activityTitle:self->_activityTitle expirationDate:self->_expirationDate];

  return v6;
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item activityTitle:(id)title expirationDate:(id)date
{
  dateCopy = date;
  titleCopy = title;
  itemCopy = item;
  v11 = [objc_opt_class() _guidForItem:itemCopy];

  LOBYTE(itemCopy) = [(IMMomentShareStatusChatItem *)self _isEqualToGuid:v11 activityTitle:titleCopy expirationDate:dateCopy];
  return itemCopy;
}

@end