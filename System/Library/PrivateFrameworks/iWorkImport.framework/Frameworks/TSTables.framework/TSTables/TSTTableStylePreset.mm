@interface TSTTableStylePreset
- (BOOL)isEqual:(id)equal;
- (NSSet)referencedStyles;
- (TSTTableStyleNetwork)styleNetwork;
- (TSTTableStylePreset)initWithContext:(id)context;
- (TSTTableStylePreset)initWithStyleNetwork:(id)network;
- (id)p_documentRoot;
- (unint64_t)hash;
- (unint64_t)presetID;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStyleNetwork:(id)network;
@end

@implementation TSTTableStylePreset

- (void)setStyleNetwork:(id)network
{
  networkCopy = network;
  objc_msgSend_willModify(self, v4, v5, v6);
  if (!networkCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableStylePreset setStyleNetwork:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 54, 0, "invalid nil value for '%{public}s'", "styleNetwork");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_copy(networkCopy, v7, v8, v9);
  styleNetwork = self->_styleNetwork;
  self->_styleNetwork = v19;

  self->_tempUpgradePresetID = 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)presetID
{
  if (self->_styleNetwork)
  {
    styleNetwork = self->_styleNetwork;

    return objc_msgSend_presetID(styleNetwork, a2, v2, v3);
  }

  else
  {
    result = self->_tempUpgradePresetID;
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset presetID]", v3);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 68, 0, "No valid preset ID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
      return 0;
    }
  }

  return result;
}

- (TSTTableStyleNetwork)styleNetwork
{
  v4 = objc_msgSend_copy(self->_styleNetwork, a2, v2, v3);

  return v4;
}

- (id)p_documentRoot
{
  v4 = objc_msgSend_context(self, a2, v2, v3);
  v8 = objc_msgSend_documentRoot(v4, v5, v6, v7);

  return v8;
}

- (TSTTableStylePreset)initWithStyleNetwork:(id)network
{
  networkCopy = network;
  v8 = objc_msgSend_context(networkCopy, v5, v6, v7);
  v25.receiver = self;
  v25.super_class = TSTTableStylePreset;
  v9 = [(TSTTableStylePreset *)&v25 initWithContext:v8];

  if (v9)
  {
    if (!networkCopy)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableStylePreset initWithStyleNetwork:]", v12);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 92, 0, "invalid nil value for '%{public}s'", "styleNetwork");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }

    v22 = objc_msgSend_copy(networkCopy, v10, v11, v12);
    styleNetwork = v9->_styleNetwork;
    v9->_styleNetwork = v22;
  }

  return v9;
}

- (TSTTableStylePreset)initWithContext:(id)context
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset initWithContext:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 100, 0, "Should always be intialized with a network and an ID");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v9 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    if (v5 == self)
    {
      isEqual = 1;
      goto LABEL_9;
    }

    v10 = objc_msgSend_presetID(self, v6, v7, v8);
    if (v10 == objc_msgSend_presetID(v9, v11, v12, v13))
    {
      isEqual = objc_msgSend_isEqual_(self->_styleNetwork, v14, v9[8], v15);
    }

    else
    {
LABEL_7:
      isEqual = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  isEqual = 1;
LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);
  v12 = objc_msgSend_presetID(self, v9, v10, v11);

  return v12 + v8;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  styleNetwork = self->_styleNetwork;
  if (!styleNetwork)
  {
    v12 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStylePreset drawSwatchInRect:inContext:]", v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v25, v15, 135, 0, "invalid nil value for '%{public}s'", "_styleNetwork");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    styleNetwork = self->_styleNetwork;
  }

  v26 = objc_msgSend_headerRowCellStyle(styleNetwork, a2, context, v4);
  v22 = objc_msgSend_valueForProperty_(v26, v20, 898, v21);
  objc_msgSend_drawSwatchInRect_inContext_(v22, v23, context, v24, x, y, width, height);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4660[12], v6);

  self->_tempUpgradePresetID = 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(v7 + 16);
  if ((v8 & 4) != 0)
  {
    self->_tempUpgradePresetID = *(v7 + 40);
  }

  if ((v8 & 2) != 0)
  {
    v9 = *(v7 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2212189EC;
    v13[3] = &unk_278461658;
    v13[4] = self;
    v14 = (v8 & 4) >> 2;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v13);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  styleNetwork = self->_styleNetwork;
  if (styleNetwork || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableStylePreset saveToArchive:archiver:]", v7), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 176, 0, "invalid nil value for '%{public}s'", "_styleNetwork"), v13, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17), (styleNetwork = self->_styleNetwork) != 0))
  {
    *(archive + 4) |= 2u;
    v18 = *(archive + 4);
    if (!v18)
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x223DA0390](v19);
      *(archive + 4) = v18;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, styleNetwork, v18);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221219038, off_2812E4660[12]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (NSSet)referencedStyles
{
  v5 = objc_msgSend_set(MEMORY[0x277D81258], a2, v2, v3);
  v9 = objc_msgSend_styleNetwork(self, v6, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221218E4C;
  v14[3] = &unk_27845ED00;
  v10 = v5;
  v15 = v10;
  objc_msgSend_enumerateAllStylesWithBlock_(v9, v11, v14, v12);

  return v10;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v12 = objc_msgSend_presetID(self, v9, v10, v11);
  v16 = objc_msgSend_styleNetwork(self, v13, v14, v15);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_221218FAC;
  v22[3] = &unk_278461680;
  v17 = blockCopy;
  v23 = v17;
  v19 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v18, v8, v12, v16, v22);

  objc_msgSend_setStyleNetwork_(self, v20, v19, v21);
}

@end