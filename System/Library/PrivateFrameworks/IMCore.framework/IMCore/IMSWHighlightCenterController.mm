@interface IMSWHighlightCenterController
+ (id)sharedControllerWithAppIdentifier:(id)identifier;
- (IMSWHighlightCenterController)initWithAppIdentifier:(id)identifier;
- (id)collaborationHighlightForURL:(id)l error:(id *)error;
- (id)fetchAttributionsForHighlight:(id)highlight;
- (void)fetchAttributionsForHighlight:(id)highlight completionHandler:(id)handler;
@end

@implementation IMSWHighlightCenterController

+ (id)sharedControllerWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8268E7C;
  block[3] = &unk_1E780FCB0;
  v10 = identifierCopy;
  v4 = qword_1EB2EA138;
  v5 = identifierCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EB2EA138, block);
  }

  v6 = qword_1EB2EA130;
  v7 = qword_1EB2EA130;

  return v6;
}

- (IMSWHighlightCenterController)initWithAppIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = IMSWHighlightCenterController;
  v5 = [(IMSWHighlightCenterController *)&v12 init];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[IMSWHighlightCenterController initWithAppIdentifier:]";
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    if ([MEMORY[0x1E69A8020] supportsSharedWithYou])
    {
      v7 = [objc_alloc(MEMORY[0x1AC56C550](@"SWHighlightCenter" @"SharedWithYou"))];
      highlightCenter = v5->_highlightCenter;
      v5->_highlightCenter = v7;

      [(SWHighlightCenter *)v5->_highlightCenter setDelegate:v5];
      v9 = objc_alloc_init(MEMORY[0x1E69A82D8]);
      utilities = v5->_utilities;
      v5->_utilities = v9;
    }
  }

  return v5;
}

- (id)collaborationHighlightForURL:(id)l error:(id *)error
{
  lCopy = l;
  highlightCenter = [(IMSWHighlightCenterController *)self highlightCenter];
  v8 = [highlightCenter collaborationHighlightForURL:lCopy error:error];

  return v8;
}

- (void)fetchAttributionsForHighlight:(id)highlight completionHandler:(id)handler
{
  handlerCopy = handler;
  highlightCopy = highlight;
  utilities = [(IMSWHighlightCenterController *)self utilities];
  highlightCenter = [(IMSWHighlightCenterController *)self highlightCenter];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82691A4;
  v11[3] = &unk_1E780FCD8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [utilities fetchAttributionsForHighlight:highlightCenter highlight:highlightCopy completionBlock:v11];
}

- (id)fetchAttributionsForHighlight:(id)highlight
{
  highlightCopy = highlight;
  highlightCenter = [(IMSWHighlightCenterController *)self highlightCenter];
  v6 = [highlightCenter fetchAttributionsForHighlight:highlightCopy];

  return v6;
}

@end