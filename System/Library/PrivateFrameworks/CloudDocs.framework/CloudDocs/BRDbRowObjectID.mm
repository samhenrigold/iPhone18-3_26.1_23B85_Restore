@interface BRDbRowObjectID
- (BRDbRowObjectID)initWithCoder:(id)coder;
- (BRDbRowObjectID)initWithRowID:(unint64_t)d type:(unsigned __int8)type;
- (id)asString;
- (id)description;
- (id)documentID;
- (id)folderID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRDbRowObjectID

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  asString = [(BRDbRowObjectID *)self asString];
  v4 = [v2 stringWithFormat:@"<%@>", asString];

  return v4;
}

- (id)asString
{
  if ([(BRFileObjectID *)self isRootContainerItem])
  {
    v3 = MEMORY[0x1E6967250];
LABEL_5:
    v4 = *v3;
    goto LABEL_7;
  }

  if ([(BRFileObjectID *)self isCloudDocsRoot])
  {
    v3 = MEMORY[0x1E6967168];
    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%llx", +[BRFileObjectTypeConverter toChar:](BRFileObjectTypeConverter, "toChar:", self->_type), self->_rowId];
LABEL_7:

  return v4;
}

- (BRDbRowObjectID)initWithRowID:(unint64_t)d type:(unsigned __int8)type
{
  v7.receiver = self;
  v7.super_class = BRDbRowObjectID;
  result = [(BRDbRowObjectID *)&v7 init];
  if (result)
  {
    result->_rowId = d;
    result->_type = type;
  }

  return result;
}

- (id)folderID
{
  v2 = brc_bread_crumbs("[BRDbRowObjectID folderID]", 91);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRDbRowObjectID folderID];
  }

  return 0;
}

- (id)documentID
{
  v2 = brc_bread_crumbs("[BRDbRowObjectID documentID]", 97);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRDbRowObjectID documentID];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  rowId = self->_rowId;
  coderCopy = coder;
  [coderCopy encodeInt64:rowId forKey:@"r"];
  [coderCopy encodeInt64:self->_type forKey:@"t"];
}

- (BRDbRowObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRDbRowObjectID;
  v5 = [(BRDbRowObjectID *)&v7 init];
  if (v5)
  {
    v5->_rowId = [coderCopy decodeInt64ForKey:@"r"];
    v5->_type = [coderCopy decodeIntegerForKey:@"t"];
  }

  return v5;
}

@end