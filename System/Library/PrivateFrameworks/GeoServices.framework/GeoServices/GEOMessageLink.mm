@interface GEOMessageLink
- (NSString)navBackgroundColorString;
- (NSString)navTintColorString;
- (int)responseTime;
@end

@implementation GEOMessageLink

- (NSString)navBackgroundColorString
{
  messageLink = self->_messageLink;
  if (messageLink && ([(GEOPDMessageLink *)self->_messageLink _readNavBackgroundColor], messageLink->_navBackgroundColor))
  {
    navBackgroundColor = [(GEOPDMessageLink *)&self->_messageLink->super.super.isa navBackgroundColor];
  }

  else
  {
    navBackgroundColor = 0;
  }

  return navBackgroundColor;
}

- (int)responseTime
{
  messageLink = self->_messageLink;
  if (messageLink && (*&messageLink->_flags & 1) != 0 && (os_unfair_lock_lock_with_options(), flags = messageLink->_flags, os_unfair_lock_unlock(&messageLink->_readerLock), (flags & 1) != 0))
  {
    return messageLink->_responseTime;
  }

  else
  {
    return 0;
  }
}

- (NSString)navTintColorString
{
  messageLink = self->_messageLink;
  if (messageLink && ([(GEOPDMessageLink *)self->_messageLink _readNavTintColor], messageLink->_navTintColor))
  {
    navTintColor = [(GEOPDMessageLink *)&self->_messageLink->super.super.isa navTintColor];
  }

  else
  {
    navTintColor = 0;
  }

  return navTintColor;
}

@end