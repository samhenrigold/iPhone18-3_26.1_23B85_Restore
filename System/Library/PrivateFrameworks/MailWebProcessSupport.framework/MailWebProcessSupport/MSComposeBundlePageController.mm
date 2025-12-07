@interface MSComposeBundlePageController
- (MSComposeBundlePageController)initWithPlugIn:(id)in contextController:(id)controller;
- (WKWebProcessPlugIn)plugIn;
- (id)_linkGeneratorProxy;
- (id)createRichLink:(id)link;
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
- (void)changeQuoteLevelBy:(int64_t)by withUndoActionName:(id)name;
- (void)enableQuickReply:(BOOL)reply;
- (void)enableSmartReply:(BOOL)reply;
- (void)initializeBodyField:(id)field;
- (void)initializeGlobalObject;
- (void)insertRichLinkWithURL:(id)l completionHandler:(id)handler;
- (void)insertString:(id)string;
- (void)invalidate;
- (void)performBodyFieldMethodOnPage:(id)page withArguments:(id)arguments;
- (void)performOnPage:(id)page;
- (void)resumePerformOnPage;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
@end

@implementation MSComposeBundlePageController

- (MSComposeBundlePageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = MSComposeBundlePageController;
  v8 = [(MSComposeBundlePageController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_plugIn, inCopy);
    objc_storeStrong(&v9->_controller, controller);
    v9->_performOnPageSuspendCount = 1;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocksToPerformOnPage = v9->_blocksToPerformOnPage;
    v9->_blocksToPerformOnPage = v10;

    [(WKWebProcessPlugInBrowserContextController *)v9->_controller setLoadDelegate:v9];
    v12 = [MEMORY[0x277D071A0] transactionWithDescription:@"Compose WebContent process transaction"];
    webContentProcessTransaction = v9->_webContentProcessTransaction;
    v9->_webContentProcessTransaction = v12;
  }

  return v9;
}

- (void)invalidate
{
  [(WKWebProcessPlugInBrowserContextController *)self->_controller setLoadDelegate:0];
  jsContext = self->_jsContext;
  self->_jsContext = 0;

  jsBodyField = self->_jsBodyField;
  self->_jsBodyField = 0;

  [(EFProcessTransaction *)self->_webContentProcessTransaction invalidate];
  webContentProcessTransaction = self->_webContentProcessTransaction;
  self->_webContentProcessTransaction = 0;
}

- (void)performOnPage:(id)page
{
  pageCopy = page;
  v7 = pageCopy;
  if (self->_performOnPageSuspendCount)
  {
    blocksToPerformOnPage = self->_blocksToPerformOnPage;
    v6 = MEMORY[0x259C75CA0]();
    [(NSMutableArray *)blocksToPerformOnPage addObject:v6];
  }

  else
  {
    self->_performOnPageSuspendCount = 1;
    (*(pageCopy + 2))();
    [(MSComposeBundlePageController *)self resumePerformOnPage];
  }
}

- (void)resumePerformOnPage
{
  v2 = self->_performOnPageSuspendCount - 1;
  self->_performOnPageSuspendCount = v2;
  if (!v2)
  {
    do
    {
      firstObject = [(NSMutableArray *)self->_blocksToPerformOnPage firstObject];
      if (!firstObject)
      {
        break;
      }

      v5 = firstObject;
      [(NSMutableArray *)self->_blocksToPerformOnPage removeObjectAtIndex:0];
      ++self->_performOnPageSuspendCount;
      v5[2](v5);

      v6 = self->_performOnPageSuspendCount - 1;
      self->_performOnPageSuspendCount = v6;
    }

    while (!v6);
  }
}

- (void)performBodyFieldMethodOnPage:(id)page withArguments:(id)arguments
{
  pageCopy = page;
  argumentsCopy = arguments;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__MSComposeBundlePageController_performBodyFieldMethodOnPage_withArguments___block_invoke;
  v10[3] = &unk_27985D6A0;
  v10[4] = self;
  v11 = pageCopy;
  v12 = argumentsCopy;
  v8 = argumentsCopy;
  v9 = pageCopy;
  [(MSComposeBundlePageController *)self performOnPage:v10];
}

- (id)_linkGeneratorProxy
{
  linkGeneratorProxy = self->_linkGeneratorProxy;
  if (!linkGeneratorProxy)
  {
    controller = [(MSComposeBundlePageController *)self controller];
    _remoteObjectRegistry = [controller _remoteObjectRegistry];
    v6 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2869394A8];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_linkGeneratorProxy;
    self->_linkGeneratorProxy = v7;

    linkGeneratorProxy = self->_linkGeneratorProxy;
  }

  return linkGeneratorProxy;
}

- (id)createRichLink:(id)link
{
  v17[1] = *MEMORY[0x277D85DE8];
  linkCopy = link;
  currentContext = [MEMORY[0x277CD4640] currentContext];
  v6 = [currentContext objectForKeyedSubscript:@"Promise"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MSComposeBundlePageController_createRichLink___block_invoke;
  v13[3] = &unk_27985D6F0;
  v7 = linkCopy;
  v14 = v7;
  selfCopy = self;
  v8 = currentContext;
  v16 = v8;
  v9 = MEMORY[0x259C75CA0](v13);
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v6 constructWithArguments:v10];

  return v11;
}

void __48__MSComposeBundlePageController_createRichLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:*(a1 + 32) relativeToURL:0];
  objc_initWeak(&location, *(a1 + 40));
  v5 = [*(a1 + 40) _linkGeneratorProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSComposeBundlePageController_createRichLink___block_invoke_2;
  v7[3] = &unk_27985D6C8;
  objc_copyWeak(&v10, &location);
  v8 = *(a1 + 48);
  v6 = v3;
  v9 = v6;
  [v5 createRichLinkWithURL:v4 completionHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __48__MSComposeBundlePageController_createRichLink___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v17 = [WeakRetained observerProxy];
      [v17 composeBodyFieldAddAttachmentWithData:v12 filename:v13 mimeType:v14 uniqueID:v15];
    }

    v18 = [MEMORY[0x277CD4658] valueWithObject:v11 inContext:*(a1 + 32)];
    v19 = *(a1 + 40);
    v23[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v21 = [v19 callWithArguments:v20];
  }

  else
  {
    v22 = [*(a1 + 40) callWithArguments:MEMORY[0x277CBEBF8]];
  }
}

- (void)insertRichLinkWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke;
  v10[3] = &unk_27985D740;
  v10[4] = self;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  [(MSComposeBundlePageController *)self performOnPage:v10];
}

void __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke(id *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  [a1[4] suspendPerformOnPage];
  v2 = *(a1[4] + 3);
  v3 = [a1[5] absoluteString];
  v13[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [v2 invokeMethod:@"insertRichLink" withArguments:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke_2;
  v10[3] = &unk_27985D718;
  v6 = a1[6];
  v10[4] = a1[4];
  v11 = v6;
  v7 = MEMORY[0x259C75CA0](v10);
  v12 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [v5 invokeMethod:@"then" withArguments:v8];
}

uint64_t __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 resumePerformOnPage];
}

- (void)changeQuoteLevelBy:(int64_t)by withUndoActionName:(id)name
{
  v9[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:by];
  v9[0] = v7;
  v9[1] = nameCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"changeQuoteLevel" withArguments:v8];
}

- (void)insertString:(id)string
{
  v6[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6[0] = stringCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"insertString" withArguments:v5];
}

- (void)enableQuickReply:(BOOL)reply
{
  replyCopy = reply;
  v7[1] = *MEMORY[0x277D85DE8];
  self->_isQuickReplyEnabled = _os_feature_enabled_impl() & reply;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:replyCopy];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"enableQuickReply" withArguments:v6];
}

- (void)enableSmartReply:(BOOL)reply
{
  v6[1] = *MEMORY[0x277D85DE8];
  self->_isSmartReplyAvailable = reply;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"enableSmartReply" withArguments:v5];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    [(MSComposeBundlePageController *)self resumePerformOnPage];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  v28[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  frameCopy = frame;
  worldCopy = world;
  mainFrame = [controllerCopy mainFrame];
  v12 = mainFrame;
  if (mainFrame == frameCopy)
  {
    normalWorld = [MEMORY[0x277CE3848] normalWorld];

    if (normalWorld == worldCopy)
    {
      v14 = [frameCopy jsContextForWorld:worldCopy];
      jsContext = self->_jsContext;
      self->_jsContext = v14;

      objc_initWeak(&location, self);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke;
      v25[3] = &unk_27985D768;
      objc_copyWeak(&v26, &location);
      [(JSContext *)self->_jsContext setExceptionHandler:v25];
      globalObject = [(JSContext *)self->_jsContext globalObject];
      v28[0] = @"unhandledrejection";
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke_2;
      v23 = &unk_27985D790;
      objc_copyWeak(&v24, &location);
      v17 = MEMORY[0x259C75CA0](&v20);
      v28[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:{2, v20, v21, v22, v23}];
      v19 = [globalObject invokeMethod:@"addEventListener" withArguments:v18];

      [(MSComposeBundlePageController *)self initializeGlobalObject];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v23[0] = *MEMORY[0x277D25930];
  v5 = [MEMORY[0x277CCACC8] callStackSymbols];
  v24[0] = v5;
  v23[1] = *MEMORY[0x277D25938];
  v6 = [v4 objectForKeyedSubscript:@"stack"];
  v7 = [v6 toString];
  v8 = [v7 componentsSeparatedByString:@"\n"];
  v24[1] = v8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 objectForKeyedSubscript:@"sourceURL"];
  v12 = [v11 toString];
  v13 = [v4 objectForKeyedSubscript:@"line"];
  v14 = [v13 toString];
  v15 = [v4 objectForKeyedSubscript:@"column"];
  v16 = [v15 toString];
  v17 = [v4 toString];
  v18 = [v10 stringWithFormat:@"JavaScript exception: %@:%@:%@: %@", v12, v14, v16, v17];
  v19 = [v9 exceptionWithName:*MEMORY[0x277CBE648] reason:v18 userInfo:v22];

  v20 = [WeakRetained observerProxy];
  [v20 composeBodyFieldDidThrowException:v19];
}

void __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained jsContext];
    v6 = [v5 exceptionHandler];
    v7 = [v8 objectForKeyedSubscript:@"reason"];
    (v6)[2](v6, v5, v7);
  }
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  resource = [(MSComposeBundlePageController *)self willSendRequest:request, frame, resource];

  return resource;
}

- (void)initializeGlobalObject
{
  v3 = 0;
  v49[27] = *MEMORY[0x277D85DE8];
  v49[0] = "MailSupport/BodyField.js";
  v49[1] = kBodyFieldSource;
  v49[2] = kBodyFieldSourceLength;
  v49[3] = "MailSupport/BodyInputController.js";
  v49[4] = kBodyInputControllerSource;
  v49[5] = kBodyInputControllerSourceLength;
  v49[6] = "MailSupport/Constants.js";
  v49[7] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const MFContentIDScheme=cid,MFHtmlIDSelectionEnd=x-apple-selection:end,MFHtmlIDSelectionStart=x-apple-selection:start,MFHtmlTemporaryEditingElement=AppleTemporaryEditingElement,MFHtmlTemporaryPresentationElement=AppleTemporaryPresentationElement,MFMailDropBannerClass=x-apple-maildropbanner,MFMailDropItemClass=x-apple-maildrop,MFHtmlIDSignature=AppleMailSignature,MFHtmlIDLineBreakAtSignature=lineBreakAtBeginningOfSignature,MFHtmlIDLineBreakAtBeginning=lineBreakAtBeginningOfMessage,MFRichLinkClass=apple-rich-link,MFLPRichLinkClassPrefix=lp-rich-link,MFMailTemporaryAttachmentWrapper=x-apple-attachment-mark,MFHtmlIDQuickReplyStyle=x-mail-quick-reply-style,HtmlClassOriginalContent=AppleOriginalContents,linkPlaceHolderClass=linkPlaceholder,MFMailBigEmojiAttribute=AppleMailBigEmoji,bigEmojiFontSize=-webkit-xxx-large,defaultEmojiFontSize=-apple-system-body,maxNumberBigEmoji=3,largeInheritedFontSize=7;";
  v49[8] = kConstantsSourceLength;
  v49[9] = "MailSupport/DocumentExtras.js";
  v49[10] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;Document.prototype.createBlockPlaceholder=function(){let e=this.createElement(BR);return e.className=webkit-block-placeholder,e};";
  v49[11] = kDocumentExtrasSourceLength;
  v49[12] = "MailSupport/ElementExtras.js";
  v49[13] = kElementExtrasSource;
  v49[14] = kElementExtrasSourceLength;
  v49[15] = "MailSupport/HTMLDocumentExtras.js";
  v49[16] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLDocument.prototype.mf_createMessageQuoteElement=function(){let e=this.createElement(BLOCKQUOTE);return e.setAttribute(TYPE,cite),e},HTMLDocument.prototype.createElementFromMarkup=function(e){let t=this.createElement(template);return t.innerHTML=e,t.content.firstChild},HTMLDocument.mf_listElements=[ul,ol,dl],HTMLDocument.mf_quickReplyElementsToHideSelector=blockquote[type=cite], #lineBreakAtBeginningOfMessage, #lineBreakAtBeginningOfSignature, .+HtmlClassOriginalContent+, #+MFHtmlIDSignature,HTMLDocument.prototype.mf_getQuickReplyStyleElement=function(){return this.querySelector(#+MFHtmlIDQuickReplyStyle)},HTMLDocument.prototype.mf_quickReplyDisplayHiddenNodes=function(e){if (!isQuickReplyEnabled)return;let t=this.mf_getQuickReplyStyleElement();if (e){if (t&&t.remove(),this.quickReplyHiddenNodes)for (let e of this.quickReplyHiddenNodes)this.body.appendChild(e)}else if (this.quickReplyHiddenNodes===undefined)(t=this.createElement(style)).setAttribute(id,MFHtmlIDQuickReplyStyle),this.head.appendChild(t),t.sheet.insertRule(HTMLDocument.mf_quickReplyElementsToHideSelector+ {display:none;});else for (let e of this.quickReplyHiddenNodes)e.remove()},HTMLDocument.prototype.mf_quickReplyClearStylesAndSaveNodesIfNeeded=function(){if (!isQuickReplyEnabled||this.quickReplyHiddenNodes!==undefined)return;let e=this.querySelectorAll(HTMLDocument.mf_quickReplyElementsToHideSelector);this.quickReplyHiddenNodes=Array.from(e);for (let t=0;t<e.length;++t){let i=e[t];for (let l=t+1;l<e.length;++l){let t=e[l];if (i.contains(t)){let e=this.quickReplyHiddenNodes.indexOf(t);e>-1&&this.quickReplyHiddenNodes.splice(e,1)}}}for (let e of this.quickReplyHiddenNodes)e.remove();let t=this.mf_getQuickReplyStyleElement();t&&t.remove()};";
  v49[17] = kHTMLDocumentExtrasSourceLength;
  v49[18] = "MailSupport/HTMLElementExtras.js";
  v49[19] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLElement.prototype.mf_quoteLevelDelta=function(){if (BLOCKQUOTE!==this.nodeName.toUpperCase())return 0;let t=this.getAttribute(type);if (t&&CITE===t.toUpperCase())return 1;let e=this.getAttribute(class);return e&&GMAIL_QUOTE===e.toUpperCase()?1:0};";
  v49[20] = kHTMLElementExtrasSourceLength;
  v49[21] = "MailSupport/NodeExtras.js";
  v49[22] = kNodeExtrasSource;
  v49[23] = kNodeExtrasSourceLength;
  v49[24] = "MailSupport/RangeExtras.js";
  v49[25] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const blockElementNames=new Set([HTML,BODY,BR,OL,UL,TD,TH,HR,DD,DL,DT,PRE,BLOCKQUOTE,DIV,P,TR,H1,H2,H3,H4,H5,H6]),isBlockElementName=function(e){return blockElementNames.has(e)};Range.prototype.stringValue=function(){let e=this.text();return isBlockElementName(this.endContainer.nodeName)&&0===this.endOffset&&(e+=\\n),e},Range.prototype.mf_hoistRange=function(){let e,t=!1;for (e=this.startContainer;!t&&!e.mf_isBody()&&!e.mf_quoteLevelDelta();)t=!0,this.endContainer===e&&(this.startOffset||this.endOffset!==e.childNodes.length||(this.setStartBefore(e),this.setEndAfter(e),e=this.startContainer,t=!1))},Range.prototype.mf_firstNode=function(){let e;if (this.collapsed)return e;let t=this.startContainer,n=this.startOffset,i=!1;if (t instanceof Text)e=(i=n>0)?t.mf_traverseNextNodeStayingWithin():t;else{for (e=t.firstChild;n-- >0;)e=e.nextSibling;e||(e=t.mf_traverseNextSiblingStayingWithin())}return e&&!this.intersectsNode(e)&&(e=undefined),e},Range.prototype.mf_takeFocus=function(e){e===undefined&&(e=!0),e&&this.collapse(!0);let t=document.getSelection();t.removeAllRanges(),t.addRange(this)},Range.prototype.mf_lastNode=function(){let e;if (this.collapsed)return e;let t=this.endContainer,n=this.endOffset,i=!1;if (t instanceof Text)e=(i=n<t.length)?t.mf_traversePreviousNode():t;else{for (e=t.firstChild;--n>0;)e=e.nextSibling;e&&this.endOffset||(e=t.mf_traversePreviousNode())}return e&&!this.intersectsNode(e)&&(e=undefined),e};const IS_BLOCK_ELEMENT_NAME=function(e){const t=[HTML,BODY,BR,LI,OL,UL,TD,TH,HR,DD,DL,DT,PRE,BLOCKQUOTE,DIV,P,TR,H1,H2,H3,H4,H5,H6];return e&&-1!==t.indexOf(e)},isBlockLevelNode=function(e){let t=!1;return t=!!IS_BLOCK_ELEMENT_NAME(e.nodeName)};Range.prototype.mf_getBlockBoundaryParentAndNextSibling=function(e){let t,n;if (e){let e=this.mf_firstNode(),t=e&&e.mf_topmostContainingNodeWithNameInArray(HTMLDocument.mf_listElements);if (t)return{parent:t.parentNode,nextSibling:t}}else{let e=this.mf_lastNode(),t=e&&e.mf_topmostContainingNodeWithNameInArray(HTMLDocument.mf_listElements);if (t)return{parent:t.parentNode,nextSibling:t.nextSibling}}let i,s,o;if (e?(i=this.startContainer,o=this.startOffset):(i=this.endContainer,o=this.endOffset),i instanceof Text)i=(s=i).parentNode;else for (s=i.firstChild;o-- >0;s=s.nextSibling);for (e&&(s=s?s.previousSibling:i.lastChild);!t&&i;){for (;!t&&s;)isBlockLevelNode(s)?(t=i,n=e||BR===s.nodeName.toUpperCase()?s.nextSibling:s):s=e?s.previousSibling:s.nextSibling;s||(isOrContainsBlockLevelNode(i)?(t=i,n=e?t.firstChild:undefined):(s=i,i=i.parentNode))}return{parent:t,nextSibling:n}};const isOrContainsBlockLevelNode=function(e){let t,n=!1;if (IS_BLOCK_ELEMENT_NAME(e.nodeName))n=!0;else for (t=e.firstChild;!n&&t;)n=isOrContainsBlockLevelNode(t),t=t.nextSibling;return n};";
  v49[26] = kRangeExtrasSourceLength;
  do
  {
    jsContext = self->_jsContext;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v49[v3 + 1] length:v49[v3 + 2] encoding:4];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v49[v3]];
    v8 = [v6 URLWithString:v7];
    v9 = [(JSContext *)jsContext evaluateScript:v5 withSourceURL:v8];

    v3 += 3;
  }

  while (v3 != 27);
  [(JSContext *)self->_jsContext setObject:&unk_286936628 forKeyedSubscript:@"NSUTF8StringEncoding"];
  [(JSContext *)self->_jsContext setObject:objc_opt_class() forKeyedSubscript:@"NSURL"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global forKeyedSubscript:@"bigEmojiEnabled"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_143 forKeyedSubscript:@"isInlineGenmojiEnabled"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_149 forKeyedSubscript:@"canUseNamedLinks"];
  objc_initWeak(&location, self);
  observerProxy = [(MSComposeBundlePageController *)self observerProxy];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_4;
  v40[3] = &unk_27985D7D8;
  objc_copyWeak(&v41, &location);
  [observerProxy composeBodyFieldQuickReplyEnabled:v40];

  globalObject = [(JSContext *)self->_jsContext globalObject];
  v12 = *MEMORY[0x277CD4618];
  v13 = MEMORY[0x277CBEC38];
  v48[0] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277CD4620];
  v47[0] = v12;
  v47[1] = v14;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_5;
  v38[3] = &unk_27985D800;
  objc_copyWeak(&v39, &location);
  v15 = MEMORY[0x259C75CA0](v38);
  v48[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  [globalObject defineProperty:@"isQuickReplyEnabled" descriptor:v16];

  observerProxy2 = [(MSComposeBundlePageController *)self observerProxy];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_6;
  v36[3] = &unk_27985D7D8;
  objc_copyWeak(&v37, &location);
  [observerProxy2 composeBodyFieldSmartReplyAvailable:v36];

  v45[1] = v14;
  v46[0] = v13;
  v45[0] = v12;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_7;
  v34[3] = &unk_27985D800;
  objc_copyWeak(&v35, &location);
  v18 = MEMORY[0x259C75CA0](v34);
  v46[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  [globalObject defineProperty:@"isSmartReplyEnabled" descriptor:v19];

  observerProxy3 = [(MSComposeBundlePageController *)self observerProxy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_8;
  v32[3] = &unk_27985D7D8;
  objc_copyWeak(&v33, &location);
  [observerProxy3 composeBodyFieldAddLinkPreviewsEnabled:v32];

  v43[1] = v14;
  v44[0] = v13;
  v43[0] = v12;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_9;
  v30 = &unk_27985D800;
  objc_copyWeak(&v31, &location);
  v21 = MEMORY[0x259C75CA0](&v27);
  v44[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:{2, v27, v28, v29, v30}];
  [globalObject defineProperty:@"addLinkPreviewsEnabled" descriptor:v22];

  [(JSContext *)self->_jsContext setObject:@"[\\n\\r\\s]+" forKeyedSubscript:@"whitespaceRegex"];
  [(JSContext *)self->_jsContext setObject:@"(\\p{Emoji_Presentation}|\\p{Extended_Pictographic})" forKeyedSubscript:@"emojiRegex"];
  [(JSContext *)self->_jsContext setObject:@"\\p{RI}\\p{RI}|\\p{Emoji}(\\p{EMod}|️⃣?|[\uE0020-\uE007E]+\uE007F)?(‍\\p{Emoji}(\\p{EMod}|️⃣?|[\uE0020-\uE007E]+\uE007F)?)*|." forKeyedSubscript:@"stringToArrayRegex"];
  v23 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"Range"];
  v24 = [v23 objectForKeyedSubscript:@"prototype"];

  [v24 setObject:&__block_literal_global_191 forKeyedSubscript:@"text"];
  v25 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"String"];
  v26 = [v25 objectForKeyedSubscript:@"prototype"];

  [v26 setObject:&__block_literal_global_200 forKeyedSubscript:@"ef_isWebAddress"];
  [v26 setObject:&__block_literal_global_206 forKeyedSubscript:@"ef_rangeOfWebAddressContainingRange"];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_4(uint64_t a1, char a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[48] = _os_feature_enabled_impl() & a2;
  v4 = *(WeakRetained + 3);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [v4 invokeMethod:@"enableQuickReply" withArguments:v6];
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[48];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_6(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[50] = a2;
  }
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[50];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[49] = a2;
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[49];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_10()
{
  v0 = MEMORY[0x277CE3840];
  v1 = [MEMORY[0x277CD4640] currentThis];
  v2 = [MEMORY[0x277CD4640] currentContext];
  v3 = [v0 rangeHandleWithJSValue:v1 inContext:v2];
  v4 = [v3 text];

  return v4;
}

uint64_t __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_11()
{
  v0 = [MEMORY[0x277CD4640] currentThis];
  v1 = [v0 toString];
  v2 = [v1 ef_isWebAddress];

  return v2;
}

uint64_t __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CD4640] currentThis];
  v6 = [v5 toString];
  v7 = [v6 ef_rangeOfWebAddressContainingRange:{a2, a3}];

  return v7;
}

- (void)initializeBodyField:(id)field
{
  fieldCopy = field;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__MSComposeBundlePageController_initializeBodyField___block_invoke;
  v10 = &unk_27985D868;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x259C75CA0](&v7);
  [(JSValue *)fieldCopy setObject:v5 forKeyedSubscript:@"_createRichLink", v7, v8, v9, v10];

  jsBodyField = self->_jsBodyField;
  self->_jsBodyField = fieldCopy;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __53__MSComposeBundlePageController_initializeBodyField___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained createRichLink:v3];

  return v5;
}

- (WKWebProcessPlugIn)plugIn
{
  WeakRetained = objc_loadWeakRetained(&self->_plugIn);

  return WeakRetained;
}

@end