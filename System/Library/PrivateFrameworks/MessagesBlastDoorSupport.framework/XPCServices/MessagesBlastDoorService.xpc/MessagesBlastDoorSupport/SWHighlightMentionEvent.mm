@interface SWHighlightMentionEvent
- (id)__bdInitWithHighlightURL:(id)l mentionedPersonHandle:(id)handle mentionedPersonIdentity:(id)identity;
- (id)__bdSWMentionedPersonIdentity;
@end

@implementation SWHighlightMentionEvent

- (id)__bdInitWithHighlightURL:(id)l mentionedPersonHandle:(id)handle mentionedPersonIdentity:(id)identity
{
  lCopy = l;
  handleCopy = handle;
  identityCopy = identity;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(SWHighlightMentionEvent *)self initWithHighlightURL:lCopy mentionedPersonHandle:handleCopy mentionedPersonIdentity:identityCopy];
LABEL_5:
    v13 = v11;
    goto LABEL_9;
  }

  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v11 = [(SWHighlightMentionEvent *)self initWithHighlightURL:lCopy mentionedPersonHandle:handleCopy];
    goto LABEL_5;
  }

  v14 = sub_10000CF34(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000C108C(v14);
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)__bdSWMentionedPersonIdentity
{
  if (objc_opt_respondsToSelector())
  {
    mentionedPersonIdentity = [(SWHighlightMentionEvent *)self mentionedPersonIdentity];
  }

  else
  {
    mentionedPersonIdentity = 0;
  }

  return mentionedPersonIdentity;
}

@end