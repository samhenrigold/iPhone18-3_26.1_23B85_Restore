@interface TSTArgumentPlaceholderNode
+ (id)argumentSpecForFunctionIndex:(unsigned __int16)index argumentIndex:(int)argumentIndex;
- (BOOL)hasMenu;
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTArgumentPlaceholderNode)initWithContext:(id)context argumentSpec:(id)spec firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (id)argumentName;
- (id)bakedValue;
- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children;
- (id)detokenizedText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)modes;
- (id)string;
- (unint64_t)allowsNewIdentifier;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_invalidate;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setArgumentSpec:(id)spec;
- (void)setMode:(unsigned __int16)mode;
@end

@implementation TSTArgumentPlaceholderNode

- (unint64_t)allowsNewIdentifier
{
  v4 = objc_msgSend_argumentSpec(self, a2, v2, v3);
  v8 = objc_msgSend_argumentType(v4, v5, v6, v7) == 20;

  return 2 * v8;
}

- (TSTArgumentPlaceholderNode)initWithContext:(id)context argumentSpec:(id)spec firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  specCopy = spec;
  v17.receiver = self;
  v17.super_class = TSTArgumentPlaceholderNode;
  v12 = [(TSTExpressionNode *)&v17 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v15 = v12;
  if (v12)
  {
    v12->_mode = -1;
    objc_msgSend_setArgumentSpec_(v12, v13, specCopy, v14);
  }

  return v15;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v13 = TSUDynamicCast();
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTArgumentPlaceholderNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 114, 0, "Unexpected object in initAsCopyOf:... expected TSTArgumentPlaceholderNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTArgumentPlaceholderNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[68] = v13[68];
  }

  return v25;
}

- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children
{
  modesCopy = modes;
  contextCopy = context;
  childrenCopy = children;
  if (modesCopy && self->_mode != 0xFFFF)
  {
    v14 = objc_msgSend_argumentSpec(self, v9, v10, v11);
    v17 = v14;
    if (!v14)
    {
      Index_lastIndex = 0;
LABEL_15:

      goto LABEL_16;
    }

    v18 = objc_msgSend_valueForModeIndex_(v14, v15, self->_mode, v16);
    v22 = objc_msgSend_nativeType(v18, v19, v20, v21);
    if (v22 == 2)
    {
      v54 = objc_msgSend_coercedBool(v18, v23, v24, v25);
      v55 = [TSTBooleanNode alloc];
      Index = objc_msgSend_firstIndex(self, v56, v57, v58);
      v63 = objc_msgSend_lastIndex(self, v60, v61, v62);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v55, v64, contextCopy, v54, Index, v63);
    }

    else
    {
      if (v22 == 5)
      {
        objc_msgSend_coercedDouble(v18, v23, v24, v25);
        v41 = [TSTNumberNode alloc];
        TSUDecimal::operator=();
        v29 = objc_msgSend_objectLocale(contextCopy, v42, v43, v44);
        v48 = objc_msgSend_firstIndex(self, v45, v46, v47);
        v52 = objc_msgSend_lastIndex(self, v49, v50, v51);
        v40 = objc_msgSend_initWithContext_number_locale_firstIndex_lastIndex_(v41, v53, contextCopy, v76, v29, v48, v52);
      }

      else
      {
        if (v22 != 7)
        {
          v65 = MEMORY[0x277D81150];
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTArgumentPlaceholderNode copyIntoContext:bakeModes:children:]", v25);
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v68);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v70, v66, v69, 149, 0, "Unexpected mode value type");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73);
          Index_lastIndex = 0;
          goto LABEL_14;
        }

        v26 = objc_msgSend_objectLocale(contextCopy, v23, v24, v25);
        v29 = objc_msgSend_coercedStringWithLocale_(v18, v27, v26, v28);

        v30 = [TSTStringNode alloc];
        v34 = objc_msgSend_firstIndex(self, v31, v32, v33);
        v38 = objc_msgSend_lastIndex(self, v35, v36, v37);
        v40 = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v30, v39, contextCopy, v29, v34, v38);
      }

      Index_lastIndex = v40;
    }

LABEL_14:

    goto LABEL_15;
  }

  v75.receiver = self;
  v75.super_class = TSTArgumentPlaceholderNode;
  Index_lastIndex = [(TSTExpressionNode *)&v75 copyIntoContext:contextCopy bakeModes:modesCopy children:childrenCopy];
LABEL_16:

  return Index_lastIndex;
}

- (void)p_invalidate
{
  detokenizedText = self->_detokenizedText;
  self->_detokenizedText = 0;

  v10 = objc_msgSend_tokenAttachment(self, v4, v5, v6);
  objc_msgSend_invalidate(v10, v7, v8, v9);
}

- (void)setMode:(unsigned __int16)mode
{
  if (self->_mode != mode)
  {
    objc_msgSend_willModify(self, a2, mode, v3);
    self->_mode = mode;

    objc_msgSend_p_invalidate(self, v6, v7, v8);
  }
}

- (id)modes
{
  v5 = objc_msgSend_argumentSpec(self, a2, v2, v3);
  v9 = v5;
  if (v5 && (objc_msgSend_isMode(v5, v6, v7, v8) & 1) != 0)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12);
    v17 = objc_msgSend_numModes(v9, v14, v15, v16);
    v24 = objc_msgSend_objectLocale(self, v18, v19, v20);
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        if (objc_msgSend_isModeEnabled_(v9, v21, i, v23))
        {
          v26 = objc_msgSend_localizedModeNameForModeIndex_locale_(v9, v21, i, v24);
          v27 = MEMORY[0x277D812A8];
          v30 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v28, i, v29);
          v32 = objc_msgSend_pairWithFirst_second_(v27, v31, v26, v30);
          objc_msgSend_addObject_(v13, v33, v32, v34);
        }
      }
    }

    v35 = objc_msgSend_copy(v13, v21, v22, v23);
  }

  else
  {
    v35 = MEMORY[0x277CBEBF8];
  }

  return v35;
}

- (id)argumentName
{
  v8 = objc_msgSend_argumentSpec(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_objectLocale(self, v5, v6, v7);
    v12 = objc_msgSend_localizedArgumentNameForLocale_(v8, v10, v9, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setArgumentSpec:(id)spec
{
  specCopy = spec;
  v8 = objc_msgSend_argumentSpec(self, v5, v6, v7);

  v19.receiver = self;
  v19.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v19 setArgumentSpec:specCopy];
  if (v8 != specCopy)
  {
    if (!specCopy)
    {
      goto LABEL_7;
    }

    if ((objc_msgSend_isOptional(specCopy, v9, v10, v11) & 1) == 0 && objc_msgSend_isMode(specCopy, v12, v13, v14))
    {
      v15 = objc_msgSend_defaultModeIndex(specCopy, v12, v13, v14);
      objc_msgSend_setMode_(self, v16, v15, v17);
    }

    if ((objc_msgSend_isMode(specCopy, v12, v13, v14) & 1) == 0)
    {
LABEL_7:
      objc_msgSend_setMode_(self, v9, 0xFFFFLL, v11);
    }

    objc_msgSend_p_invalidate(self, v9, v18, v11);
  }
}

- (id)bakedValue
{
  if (self->_mode == 0xFFFF)
  {
    selfCopy = self;
  }

  else
  {
    v6 = objc_msgSend_context(self, a2, v2, v3);
    selfCopy = objc_msgSend_copyIntoContext_bakeModes_children_(self, v7, v6, 1, 0);
  }

  return selfCopy;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  mode = self->_mode;
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, mode | 0xC000000, 1);
  v4 = mode | 0xC000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTArgumentPlaceholderNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_mode == nodeCopy->_mode;
  }

  return v5;
}

- (id)string
{
  v5 = objc_msgSend_argumentSpec(self, a2, v2, v3);

  if (!v5)
  {
    v27 = sub_2214AAEA8(v6, v7, v8, v9);
    v35 = objc_msgSend_localizedStringForKey_value_table_(v27, v34, @"value", &stru_2834BADA0, @"TSTables");
    goto LABEL_10;
  }

  v10 = objc_msgSend_mode(self, v7, v8, v9);
  if (v10 == 0xFFFF)
  {
    goto LABEL_8;
  }

  v14 = v10;
  v15 = objc_msgSend_argumentSpec(self, v11, v12, v13);
  if ((objc_msgSend_isMode(v15, v16, v17, v18) & 1) == 0)
  {

    goto LABEL_8;
  }

  v22 = objc_msgSend_argumentSpec(self, v19, v20, v21);
  v26 = objc_msgSend_numModes(v22, v23, v24, v25);

  if (v14 >= v26)
  {
LABEL_8:
    v27 = objc_msgSend_argumentSpec(self, v11, v12, v13);
    v31 = objc_msgSend_objectLocale(self, v36, v37, v38);
    v33 = objc_msgSend_localizedArgumentNameForLocale_(v27, v39, v31, v40);
    goto LABEL_9;
  }

  v27 = objc_msgSend_argumentSpec(self, v11, v12, v13);
  v31 = objc_msgSend_objectLocale(self, v28, v29, v30);
  v33 = objc_msgSend_localizedModeNameForModeIndex_locale_(v27, v32, v14, v31);
LABEL_9:
  v35 = v33;

LABEL_10:

  return v35;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (optionsCopy)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v6, v7, v8);

    if (v9)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v10, v11, v12);
      objc_msgSend_takeText_(textCopy, v14, v13, v15);
    }
  }

  v16 = [TSTWPTokenAttachment alloc];
  v20 = objc_msgSend_context(self, v17, v18, v19);
  v22 = objc_msgSend_initWithContext_expressionNode_(v16, v21, v20, self);

  objc_msgSend_insertUIGraphicalAttachment_withLanguage_(textCopy, v23, v22, *MEMORY[0x277D81448]);
  if (optionsCopy)
  {
    v27 = objc_msgSend_whitespaceAfter(self, v24, v25, v26);

    if (v27)
    {
      v31 = objc_msgSend_whitespaceAfter(self, v28, v29, v30);
      objc_msgSend_takeText_(textCopy, v32, v31, v33);
    }
  }
}

- (id)detokenizedText
{
  if (!self->_detokenizedText)
  {
    if (objc_msgSend_mode(self, a2, v2, v3) == 0xFFFF)
    {
      detokenizedText = self->_detokenizedText;
      self->_detokenizedText = &stru_2834BADA0;
    }

    else
    {
      detokenizedText = objc_msgSend_bakedValue(self, v5, v6, v7);
      if (detokenizedText == self)
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTArgumentPlaceholderNode detokenizedText]", v11);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v15);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 300, 0, "expected set placeholder node to return a different node for bakedValue");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
      }

      v21 = objc_msgSend_detokenizedText(detokenizedText, v9, v10, v11);
      v22 = self->_detokenizedText;
      self->_detokenizedText = v21;
    }
  }

  v23 = self->_detokenizedText;

  return v23;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v7 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTArgumentPlaceholderNode buildASTNodeArray:hostCell:symbolTable:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 312, 0, "ArgumentPlaceholderNode shouldn't have children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_argumentSpec(self, v12, v13, v14);

  if (!v24)
  {
    TSCEASTTokenElement::appendTokenElement(array, 1, v26, v27);
    goto LABEL_15;
  }

  v28 = objc_msgSend_mode(self, v25, v26, v27);
  if (v28 == 0xFFFF)
  {
    goto LABEL_13;
  }

  v32 = v28;
  v33 = objc_msgSend_argumentSpec(self, v29, v30, v31);
  if ((objc_msgSend_isMode(v33, v34, v35, v36) & 1) == 0)
  {

    goto LABEL_13;
  }

  v40 = objc_msgSend_argumentSpec(self, v37, v38, v39);
  v44 = objc_msgSend_numModes(v40, v41, v42, v43);

  if (v32 >= v44)
  {
LABEL_13:
    v48 = objc_msgSend_argumentSpec(self, v29, v30, v31);
    isOptional = objc_msgSend_isOptional(v48, v64, v65, v66);
    TSCEASTTokenElement::appendTokenElement(array, isOptional, v68, v69);
    goto LABEL_14;
  }

  v45 = objc_msgSend_argumentSpec(self, v29, v30, v31);
  v48 = objc_msgSend_valueForModeIndex_(v45, v46, v32, v47);

  v55 = objc_msgSend_nativeType(v48, v49, v50, v51);
  if ((v55 - 4) < 2)
  {
    v56 = objc_msgSend_number(v48, v52, v53, v54);
    v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v56, v80, v81, v82);
    v95._decimal.w[1] = v83;
    TSCEASTNumberElement::appendNumberElement(array, &v95, v84, v85);
LABEL_23:

    goto LABEL_14;
  }

  if (v55 != 2)
  {
    if (v55 == 7)
    {
      v56 = objc_msgSend_objectLocale(self, v52, v53, v54);
      v59 = objc_msgSend_asStringWithLocale_(v48, v57, v56, v58);
      TSCEASTStringElement::appendStringElement(array, v59, v60);
    }

    else
    {
      v56 = objc_msgSend_argumentSpec(self, v52, v53, v54);
      v92 = objc_msgSend_isOptional(v56, v89, v90, v91);
      TSCEASTTokenElement::appendTokenElement(array, v92, v93, v94);
    }

    goto LABEL_23;
  }

  v86 = objc_msgSend_BOOLean(v48, v52, v53, v54);
  TSCEASTBooleanElement::appendBooleanElement(array, v86, v87, v88);
LABEL_14:

LABEL_15:
  v70 = objc_msgSend_whitespaceBefore(self, v61, v62, v63);

  if (v70)
  {
    v74 = objc_msgSend_whitespaceBefore(self, v71, v72, v73);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v74);
  }

  v75 = objc_msgSend_whitespaceAfter(self, v71, v72, v73);

  if (v75)
  {
    v79 = objc_msgSend_whitespaceAfter(self, v76, v77, v78);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v79);
  }
}

- (BOOL)hasMenu
{
  v8 = objc_msgSend_argumentSpec(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_argumentSpec(self, v5, v6, v7);
    isMode = objc_msgSend_isMode(v9, v10, v11, v12);
  }

  else
  {
    isMode = 0;
  }

  return isMode;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[228], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212F6D24, off_2812E4498[228]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v14.receiver = self;
  v14.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v9 = *(archive + 4);
  if ((~v9 & 6) == 0)
  {
    v10 = objc_msgSend_argumentSpecForFunctionIndex_argumentIndex_(TSTArgumentPlaceholderNode, v8, *(archive + 16), *(archive + 9));
    objc_msgSend_setArgumentSpec_(self, v11, v10, v12);

    v9 = *(archive + 4);
  }

  if ((v9 & 8) != 0)
  {
    v13 = (archive + 40);
  }

  else
  {
    v13 = &word_2217E0E1E;
  }

  self->_mode = *v13;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v34.receiver = self;
  v34.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v34 saveToArchive:v7 archiver:archiverCopy];
  v12 = objc_msgSend_argumentSpec(self, v9, v10, v11);

  if (v12)
  {
    v16 = objc_msgSend_argumentSpec(self, v13, v14, v15);
    v20 = objc_msgSend_functionSpec(v16, v17, v18, v19);
    v24 = objc_msgSend_functionIndex(v20, v21, v22, v23);
    *(archive + 4) |= 2u;
    *(archive + 8) = v24;

    v28 = objc_msgSend_argumentSpec(self, v25, v26, v27);
    v32 = objc_msgSend_index(v28, v29, v30, v31);
    *(archive + 4) |= 4u;
    *(archive + 9) = v32;
  }

  mode = self->_mode;
  *(archive + 4) |= 8u;
  *(archive + 10) = mode;
}

+ (id)argumentSpecForFunctionIndex:(unsigned __int16)index argumentIndex:(int)argumentIndex
{
  v5 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, index, *&argumentIndex);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_argumentSpecForIndex_(v5, v6, argumentIndex, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end