@interface TSTCompletionToken
- (TSTCanvasReferenceProvider)canvasReferenceProvider;
- (TSTCompletionToken)initWithContext:(id)context completionText:(id)text;
- (_NSRange)prefixRange;
- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes;
- (id)description;
- (void)dealloc;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCompletionText:(id)text;
- (void)setEditingReferenceNode:(id)node;
- (void)setPrefixRange:(_NSRange)range;
@end

@implementation TSTCompletionToken

- (void)setCompletionText:(id)text
{
  textCopy = text;
  objc_msgSend_willModify(self, v5, v6, v7);
  if (self->_completionText != textCopy)
  {
    objc_storeStrong(&self->_completionText, text);
    v11 = objc_msgSend_length(self->_completionText, v8, v9, v10);
    self->_prefixRange.location = 0;
    self->_prefixRange.length = v11;
    objc_msgSend_invalidate(self, v12, v13, v14);
  }
}

- (void)setPrefixRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  if (location != self->_prefixRange.location || length != self->_prefixRange.length)
  {
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = objc_msgSend_length(self->_completionText, v6, v7, v8);
      location = 0;
    }

    v10 = objc_msgSend_length(self->_completionText, v6, v7, v8);
    v14 = v10;
    if (location >= v10)
    {
      location = v10;
    }

    v15 = objc_msgSend_length(self->_completionText, v11, v12, v13);
    v19 = v14 - location;
    if (location + length <= v15)
    {
      v19 = length;
    }

    self->_prefixRange.location = location;
    self->_prefixRange.length = v19;

    objc_msgSend_invalidate(self, v16, v17, v18);
  }
}

- (void)setEditingReferenceNode:(id)node
{
  nodeCopy = node;
  if (self->_editingReferenceNode != nodeCopy)
  {
    objc_msgSend_p_removeCanvasReference(self, v5, v6, v7);
    objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v8, 0, v9);
    objc_storeStrong(&self->_editingReferenceNode, node);
    objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v10, self, v11);
    objc_msgSend_p_createCanvasReference(self, v12, v13, v14);
    objc_msgSend_invalidate(self, v15, v16, v17);
  }
}

- (TSTCompletionToken)initWithContext:(id)context completionText:(id)text
{
  contextCopy = context;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = TSTCompletionToken;
  v8 = [(TSTWPTokenAttachment *)&v19 initWithContext:contextCopy expressionNode:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_completionText, text);
    v13 = objc_msgSend_length(textCopy, v10, v11, v12);
    v9->_prefixRange.location = 0;
    v9->_prefixRange.length = v13;
    objc_msgSend_setActive_(v9, v14, 1, v15);
    v9->_renderAsTokenType = 0;
    editingReferenceNode = v9->_editingReferenceNode;
    v9->_editingReferenceNode = 0;

    referenceColor = v9->_referenceColor;
    v9->_referenceColor = 0;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_p_removeCanvasReference(self, a2, v2, v3);
  objc_msgSend_setTokenAttachment_(self->_editingReferenceNode, v5, 0, v6);
  v7.receiver = self;
  v7.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v7 dealloc];
}

- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes
{
  modesCopy = modes;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = TSTCompletionToken;
  v7 = [(TSTWPTokenAttachment *)&v23 copyIntoContext:contextCopy bakeModes:modesCopy];
  objc_msgSend_setCompletionText_(v7, v8, self->_completionText, v9);
  objc_msgSend_setPrefixRange_(v7, v10, self->_prefixRange.location, self->_prefixRange.length);
  *(v7 + 26) = self->_renderAsTokenType;
  v12 = objc_msgSend_copyIntoContext_bakeModes_children_(self->_editingReferenceNode, v11, contextCopy, modesCopy, 0);
  v13 = v7[15];
  v7[15] = v12;

  v17 = objc_msgSend_tokenAttachment(self->_editingReferenceNode, v14, v15, v16);
  objc_msgSend_setTokenAttachment_(v7[15], v18, v17, v19);

  objc_msgSend_setReferenceColor_(v7, v20, self->_referenceColor, v21);
  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[238], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2213FC598, off_2812E4498[238]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = TST::_TokenAttachmentArchive_default_instance_;
  }

  v19.receiver = self;
  v19.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v19 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 16))
  {
    v11 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      v11 = *v11;
    }

    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v11, v9);
  }

  else
  {
    v10 = 0;
  }

  completionText = self->_completionText;
  self->_completionText = v10;

  v15 = *(archive + 4);
  if ((v15 & 4) != 0)
  {
    self->_prefixRange.length = *(archive + 10);
  }

  if ((v15 & 8) != 0)
  {
    v16 = *(archive + 11);
    v17 = self->_prefixRange.location + v16;
    v18 = self->_prefixRange.length - v16;
    self->_prefixRange.location = v17;
    self->_prefixRange.length = v18;
  }

  objc_msgSend_setActive_(self, v13, 1, v14);
  self->_renderAsTokenType = 0;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::TokenAttachmentArchive>(v8);
    *(archive + 4) = v7;
  }

  v16.receiver = self;
  v16.super_class = TSTCompletionToken;
  [(TSTWPTokenAttachment *)&v16 saveToArchive:v7 archiver:archiverCopy];
  completionText = self->_completionText;
  if (completionText)
  {
    v13 = objc_msgSend_UTF8String(completionText, v9, v10, v11);
    sub_2213FC284(archive, v13);
    location = self->_prefixRange.location;
    v15 = self->_prefixRange.length + location;
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (location >= 0xFFFFFFFF)
    {
      LODWORD(location) = -1;
    }

    *(archive + 4) |= 0xCu;
    *(archive + 10) = v15;
    *(archive + 11) = location;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  completionText = self->_completionText;
  v7 = NSStringFromRange(self->_prefixRange);
  v10 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p>: completionText '%@', prefixRange %@", v9, v5, self, completionText, v7);

  return v10;
}

- (_NSRange)prefixRange
{
  p_prefixRange = &self->_prefixRange;
  location = self->_prefixRange.location;
  length = p_prefixRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTCanvasReferenceProvider)canvasReferenceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasReferenceProvider);

  return WeakRetained;
}

@end