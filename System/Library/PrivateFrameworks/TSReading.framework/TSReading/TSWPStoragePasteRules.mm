@interface TSWPStoragePasteRules
- (void)addActionFlag:(int)flag;
- (void)applyParagraph:(int)paragraph toCharIndex:(unint64_t)index ioTransaction:(void *)transaction;
- (void)dealloc;
- (void)didPasteWithIOTransaction:(void *)transaction atDestRange:(_NSRange)range;
- (void)mapCharacterStyleProperties:(id)properties toRange:(_NSRange)range ioTransaction:(void *)transaction;
- (void)mapCharacterStyles:(int)styles toRange:(_NSRange)range ioTransaction:(void *)transaction;
- (void)setupFlagsForPastingSrcStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range;
- (void)willPasteStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range;
@end

@implementation TSWPStoragePasteRules

- (void)dealloc
{
  for (i = 0; i != 4; ++i)
  {
  }

  v4.receiver = self;
  v4.super_class = TSWPStoragePasteRules;
  [(TSWPStoragePasteRules *)&v4 dealloc];
}

- (void)addActionFlag:(int)flag
{
  lastFlag = self->_lastFlag;
  if (lastFlag < 4 || (v6 = [MEMORY[0x277D6C290] currentHandler], v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPStoragePasteRules addActionFlag:]"), objc_msgSend(v6, "handleFailureInFunction:file:lineNumber:description:", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"), 45, @"addActionFlag: bad action flag count."), lastFlag = self->_lastFlag, lastFlag <= 3))
  {
    self->_actionFlags[lastFlag] = flag;
    self->_lastFlag = lastFlag + 1;
  }
}

- (void)applyParagraph:(int)paragraph toCharIndex:(unint64_t)index ioTransaction:(void *)transaction
{
  v8 = self + 48 * paragraph;
  v10 = *(v8 + 12);
  v9 = v8 + 96;
  [(TSWPStorage *)self->_destStorage setParagraphStyle:v10 forCharRange:index undoTransaction:1, transaction];
  [(TSWPStorage *)self->_destStorage setListStyle:*(v9 + 3) forCharRange:index undoTransaction:1, transaction];
  [(TSWPStorage *)self->_destStorage setParagraphFlags:*(v9 + 17) level:*(v9 + 16) forCharRange:index undoTransaction:1, transaction];
  [(TSWPStorage *)self->_destStorage setListStart:*(v9 + 9) forCharRange:index undoTransaction:0, transaction];
  [(TSWPStorage *)self->_destStorage setParagraphWritingDirection:*(v9 + 10) forCharRange:index undoTransaction:0, transaction];
  if ([(TSWPStorage *)self->_destStorage supportsColumnStyles]&& self->_sourceColumnStyleCount >= 2)
  {
    destStorage = self->_destStorage;
    v12 = *(v9 + 2);

    [(TSWPStorage *)destStorage setColumnStyle:v12 forCharRange:index undoTransaction:1, transaction];
  }
}

- (void)mapCharacterStyleProperties:(id)properties toRange:(_NSRange)range ioTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  stylesheet = [(TSWPStorage *)self->_destStorage stylesheet];
  v9 = [(TSWPStorage *)self->_destStorage length];
  if (location + length >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = location + length;
  }

  if (location < v10)
  {
    v11 = location;
    do
    {
      v12 = [TSSPropertyMap propertyMapWithPropertyMap:properties];
      v13 = [(TSWPStorage *)self->_destStorage characterStyleAtCharIndex:v11 effectiveRange:&v17];
      v18.location = location;
      v18.length = length;
      v14 = NSIntersectionRange(v18, v17);
      if (v14.length)
      {
        -[TSWPStorage setCharacterStyle:range:undoTransaction:](self->_destStorage, "setCharacterStyle:range:undoTransaction:", [stylesheet variationOfCharacterStyle:v13 paragraphStyle:-[TSWPStorage paragraphStyleAtCharIndex:effectiveRange:](self->_destStorage propertyMap:{"paragraphStyleAtCharIndex:effectiveRange:", v11, 0), v12}], v14.location, v14.length, transaction);
      }

      v11 = v17.length + v17.location;
    }

    while (v17.length + v17.location < v10);
  }
}

- (void)mapCharacterStyles:(int)styles toRange:(_NSRange)range ioTransaction:(void *)transaction
{
  if (self->_paragraphs[styles].parStyle)
  {
    length = range.length;
    location = range.location;
    v9 = +[TSSPropertyMap propertyMap];
    [v9 filterWithProperties:{+[TSWPCharacterStyle properties](TSWPCharacterStyle, "properties")}];

    [(TSWPStoragePasteRules *)self mapCharacterStyleProperties:v9 toRange:location ioTransaction:length, transaction];
  }
}

- (void)setupFlagsForPastingSrcStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  self->_flags = 0;
  self->_destStorage = destStorage;
  v10 = [storage length];
  self->_srcLeadRange.location = [storage textRangeForParagraphAtCharIndex:0];
  self->_srcLeadRange.length = v11;
  self->_srcTrailRange.location = [storage textRangeForParagraphAtCharIndex:v10];
  self->_srcTrailRange.length = v12;
  v13 = [destStorage textRangeForParagraphAtCharIndex:location];
  v15 = v14;
  v49 = location + length;
  v48 = [destStorage textRangeForParagraphAtCharIndex:?];
  v17 = v16;
  self->_sourceColumnStyleCount = [storage columnStyleCount];
  self->_sourceSectionCount = [storage sectionCount];
  if (location == v13 && length == v15)
  {
    v18 = 8;
  }

  else if (v15 == 1)
  {
    v19 = [destStorage characterAtIndex:v13];
    if (IsParagraphBreakingCharacter(v19, v20))
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  flags = self->_flags | v18;
  self->_flags = flags;
  if (v10 == 1)
  {
    v22 = 16 * ([storage attachmentOrFootnoteAtCharIndex:0] != 0);
    flags = self->_flags;
  }

  else
  {
    v22 = 0;
  }

  if (location == v13)
  {
    ++v22;
  }

  v23 = v22 | flags;
  if (self->_srcLeadRange.length == self->_srcTrailRange.length && self->_srcLeadRange.location == self->_srcTrailRange.location)
  {
    v25 = 0;
  }

  else
  {
    v25 = 64;
  }

  if (v15 == v17 && v13 == v48)
  {
    v27 = 0;
  }

  else
  {
    v27 = 4;
  }

  v28 = v27 | v23 | v25;
  self->_flags = v28;
  if (v10)
  {
    v29 = [storage characterAtIndex:v10 - 1];
    if (IsParagraphBreakingCharacter(v29, v30))
    {
      v31 = 32;
    }

    else
    {
      v31 = 0;
    }

    v28 = self->_flags;
  }

  else
  {
    v31 = 0;
  }

  v32 = v28 | v31;
  self->_flags = v32;
  if (length)
  {
    v33 = location + length;
    v34 = [destStorage characterAtIndex:v49 - 1];
    if (IsParagraphBreakingCharacter(v34, v35))
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

    v32 = self->_flags;
  }

  else
  {
    v36 = 0;
    v33 = location + length;
  }

  v37 = v32 | v36;
  self->_flags = v37;
  if ((v32 & 1) == 0)
  {
    v38 = location;
    while (v38 > v13)
    {
      if (([objc_msgSend(destStorage attachmentOrFootnoteAtCharIndex:{--v38), "isAnchored"}] & 1) == 0)
      {
        v37 = self->_flags;
        goto LABEL_44;
      }
    }

    v37 = self->_flags | 1;
    self->_flags = v37;
  }

LABEL_44:
  v39 = (~v37 & 0x22) != 0 && (v37 & 0x44) != 0;
  self->_mapDestTrailCS = v39;
  self->_paragraphs[0].parStyle = [storage paragraphStyleAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].columnStyle = [storage columnStyleAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].section = [storage sectionAtCharIndex:0 effectiveRange:0];
  self->_paragraphs[0].listStyle = [storage listStyleAtCharIndex:0 effectiveRange:0];
  v40 = [storage paragraphLevelAtCharIndex:0];
  if (v40 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v40) = -1;
  }

  self->_paragraphs[0].parData.var0.var1.level = v40;
  self->_paragraphs[0].parData.var0.var1.flags = [storage paragraphFlagsAtCharIndex:0];
  v41 = [storage listStartAtCharIndex:0];
  if (HIDWORD(v41))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v41) = -1;
  }

  self->_paragraphs[0].parStartData.var0.var0.listStart = v41;
  self->_paragraphs[0].parBidiData.var0.var0.listStart = [storage writingDirectionForParagraphAtCharIndex:0];
  self->_paragraphs[1].parStyle = [storage paragraphStyleAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].columnStyle = [storage columnStyleAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].section = [storage sectionAtCharIndex:v10 effectiveRange:0];
  self->_paragraphs[1].listStyle = [storage listStyleAtCharIndex:v10 effectiveRange:0];
  v42 = [storage paragraphLevelAtCharIndex:v10];
  if (v42 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v42) = -1;
  }

  self->_paragraphs[1].parData.var0.var1.level = v42;
  self->_paragraphs[1].parData.var0.var1.flags = [storage paragraphFlagsAtCharIndex:v10];
  v43 = [storage listStartAtCharIndex:v10];
  if (HIDWORD(v43))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v43) = -1;
  }

  self->_paragraphs[1].parStartData.var0.var0.listStart = v43;
  self->_paragraphs[1].parBidiData.var0.var0.listStart = [storage writingDirectionForParagraphAtCharIndex:v10];
  self->_paragraphs[2].parStyle = [destStorage paragraphStyleAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].columnStyle = [destStorage columnStyleAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].section = [destStorage sectionAtCharIndex:location effectiveRange:0];
  self->_paragraphs[2].listStyle = [destStorage listStyleAtCharIndex:location effectiveRange:0];
  v44 = [destStorage paragraphLevelAtCharIndex:location];
  if (v44 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v44) = -1;
  }

  self->_paragraphs[2].parData.var0.var1.level = v44;
  self->_paragraphs[2].parData.var0.var1.flags = [destStorage paragraphFlagsAtCharIndex:location];
  v45 = [destStorage listStartAtCharIndex:location];
  if (HIDWORD(v45))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v45) = -1;
  }

  self->_paragraphs[2].parStartData.var0.var0.listStart = v45;
  self->_paragraphs[2].parBidiData.var0.var0.listStart = [destStorage writingDirectionForParagraphAtCharIndex:location];
  self->_paragraphs[3].parStyle = [destStorage paragraphStyleAtCharIndex:v33 effectiveRange:0];
  self->_paragraphs[3].columnStyle = [destStorage columnStyleAtCharIndex:v33 effectiveRange:0];
  self->_paragraphs[3].section = [destStorage sectionAtCharIndex:v33 effectiveRange:0];
  self->_paragraphs[3].listStyle = [destStorage listStyleAtCharIndex:v33 effectiveRange:0];
  v46 = [destStorage paragraphLevelAtCharIndex:v33];
  if (v46 >= 0x10000)
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LOWORD(v46) = -1;
  }

  self->_paragraphs[3].parData.var0.var1.level = v46;
  self->_paragraphs[3].parData.var0.var1.flags = [destStorage paragraphFlagsAtCharIndex:v33];
  v47 = [destStorage listStartAtCharIndex:v33];
  if (HIDWORD(v47))
  {
    [TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:];
    LODWORD(v47) = -1;
  }

  self->_paragraphs[3].parStartData.var0.var0.listStart = v47;
  self->_paragraphs[3].parBidiData.var0.var0.listStart = [destStorage writingDirectionForParagraphAtCharIndex:v33];
}

- (void)willPasteStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range
{
  [(TSWPStoragePasteRules *)self setupFlagsForPastingSrcStorage:storage intoDestStorage:destStorage atDestRange:range.location, range.length];
  flags = self->_flags;
  if ((flags & 8) != 0)
  {
    if ((flags & 0x10) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_7;
  }

  if ((self->_flags & 0x41) <= 0x3F)
  {
    [(TSWPStoragePasteRules *)self addActionFlag:1];
    v7 = 6;
LABEL_7:
    [(TSWPStoragePasteRules *)self addActionFlag:v7];
    goto LABEL_8;
  }

  if ((self->_flags & 0x41) == 0x40)
  {
    [(TSWPStoragePasteRules *)self addActionFlag:1];
    [(TSWPStoragePasteRules *)self addActionFlag:6];
    if (self->_srcTrailRange.length)
    {
      [(TSWPStoragePasteRules *)self addActionFlag:4];
    }

    if (self->_mapDestTrailCS)
    {
LABEL_21:
      v7 = 5;
      goto LABEL_7;
    }
  }

  else
  {
    [(TSWPStoragePasteRules *)self addActionFlag:3];
    if (self->_srcTrailRange.length)
    {
      [(TSWPStoragePasteRules *)self addActionFlag:4];
    }

    if (self->_mapDestTrailCS)
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  if ((~self->_flags & 0x22) == 0)
  {

    [(TSWPStoragePasteRules *)self addActionFlag:2];
  }
}

- (void)didPasteWithIOTransaction:(void *)transaction atDestRange:(_NSRange)range
{
  self->_srcLeadRange.location += range.location;
  self->_srcTrailRange.location += range.location;
  v6 = 12;
  while (1)
  {
    v7 = *(&self->super.isa + v6);
    if (v7 <= 3)
    {
      break;
    }

    switch(v7)
    {
      case 4:
        location = self->_srcTrailRange.location;
        selfCopy6 = self;
        v10 = 1;
        goto LABEL_14;
      case 5:
        v15 = [(TSWPStorage *)self->_destStorage textRangeForParagraphAtCharIndex:self->_srcTrailRange.length + self->_srcTrailRange.location];
        v11 = self->_srcTrailRange.length + self->_srcTrailRange.location;
        length = v15 + v16 - v11;
        if (v15 + v16 != v11)
        {
          selfCopy3 = self;
          v14 = 3;
          goto LABEL_17;
        }

        break;
      case 6:
        v11 = self->_srcLeadRange.location;
        length = self->_srcLeadRange.length;
        selfCopy3 = self;
        v14 = 0;
LABEL_17:
        [(TSWPStoragePasteRules *)selfCopy3 mapCharacterStyles:v14 toRange:v11 ioTransaction:length, transaction];
        break;
    }

LABEL_18:
    v6 += 4;
    if (v6 == 28)
    {
      return;
    }
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      location = self->_srcTrailRange.length + self->_srcTrailRange.location;
      selfCopy6 = self;
      v10 = 3;
    }

    else
    {
      location = self->_srcLeadRange.location;
      selfCopy6 = self;
      v10 = 0;
    }

    goto LABEL_14;
  }

  if (v7 == 1)
  {
    location = self->_srcLeadRange.location;
    selfCopy6 = self;
    v10 = 2;
LABEL_14:
    [(TSWPStoragePasteRules *)selfCopy6 applyParagraph:v10 toCharIndex:location ioTransaction:transaction];
    goto LABEL_18;
  }

  if (v7)
  {
    goto LABEL_18;
  }
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.1()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.2()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.3()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.4()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.5()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.6()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.7()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:.cold.8()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:"-[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:]"];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStoragePasteRules.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end