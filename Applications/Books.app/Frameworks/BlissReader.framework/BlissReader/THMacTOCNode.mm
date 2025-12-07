@interface THMacTOCNode
+ (id)nodeForPageIndex:(int64_t)index inNode:(id)node excludeHeadings:(BOOL)headings;
+ (id)nodeTreeWithDocumentRoot:(id)root navigator:(id)navigator hasPaginatedData:(BOOL)data;
+ (id)pageNodeForPageIndex:(int64_t)index inNode:(id)node;
- (CGImage)image;
- (NSString)displayPageNumber;
- (THMacTOCNode)init;
- (id)rootNodeFilteringOutFirstLevelNodesOfType:(int)type;
- (int64_t)absolutePageIndex;
- (unint64_t)nodeLevel;
- (void)addChild:(id)child;
- (void)addPage:(id)page;
- (void)dealloc;
- (void)invalidatePaginationData;
- (void)p_invaliatePaginationData;
@end

@implementation THMacTOCNode

+ (id)nodeTreeWithDocumentRoot:(id)root navigator:(id)navigator hasPaginatedData:(BOOL)data
{
  dataCopy = data;
  v7 = objc_alloc_init(THMacTOCNode);
  [(THMacTOCNode *)v7 setNodeType:1];
  if (dataCopy)
  {
    v8 = objc_alloc_init(THMacTOCNode);
    v9 = [(THMacTOCNode *)v8 setNodeType:8];
    -[THMacTOCNode setTitle:](v8, "setTitle:", [THBundle(v9 v10)]);
    [(THMacTOCNode *)v8 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v8 setDisplayPageNumber:&stru_471858];
    [(THMacTOCNode *)v7 addChild:v8];
  }

  properties = [root properties];
  if ([properties introMediaUrl])
  {
    v12 = objc_alloc_init(THMacTOCNode);
    v13 = [(THMacTOCNode *)v12 setNodeType:2];
    -[THMacTOCNode setTitle:](v12, "setTitle:", [THBundle(v13 v14)]);
    [(THMacTOCNode *)v12 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v12 setDisplayPageNumber:&stru_471858];
    introMediaIsVideo = [properties introMediaIsVideo];
    if (introMediaIsVideo)
    {
      -[THMacTOCNode setTitle:](v12, "setTitle:", [THBundle(introMediaIsVideo v16)]);
      v17 = +[AVAsset assetWithURL:](AVAsset, "assetWithURL:", [properties introMediaUrl]);
      if (v17)
      {
        objc_msgSend_duration(v17);
        Seconds = CMTimeGetSeconds(&time);
        v19 = floor(Seconds / 60.0);
        v20 = Seconds - v19 * 60.0;
        v21 = floor(v19 / 60.0);
        v22 = v19 - v21 * 60.0;
        v25 = THBundle(v23, v24);
        if (v21 <= 0.0)
        {
          v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v25 localizedStringForKey:@"%1$2d:%2$02d" value:&stru_471858 table:0], v22, v20, v57);
        }

        else
        {
          v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v25 localizedStringForKey:@"%1$2d:%2$02d:%3$02d" value:&stru_471858 table:0], v21, v22, v20);
        }

        [(THMacTOCNode *)v12 setDisplayPageNumber:v26];
      }
    }

    [(THMacTOCNode *)v7 addChild:v12];
  }

  tocModel = [root tocModel];
  v28 = 0;
  if ([objc_msgSend(tocModel "tiles")])
  {
    v29 = 0;
    v64 = v7;
    v59 = dataCopy;
    navigatorCopy = navigator;
    v58 = tocModel;
    do
    {
      v61 = v29;
      v30 = [objc_msgSend(tocModel "tiles")];
      browserPageNode = [v30 browserPageNode];
      v32 = objc_alloc_init(THMacTOCNode);
      [(THMacTOCNode *)v32 setNodeType:16];
      -[THMacTOCNode setChapterTOCPageInfo:](v32, "setChapterTOCPageInfo:", [browserPageNode pageAtRelativeIndex:0 forPresentationType:{objc_msgSend(objc_msgSend(root, "properties"), "chapterBrowserPagePresentationType")}]);
      -[THMacTOCNode setTitle:](v32, "setTitle:", [objc_msgSend(v30 "frontTitleText")]);
      [(THMacTOCNode *)v32 setNavigator:navigator];
      -[THMacTOCNode setLink:](v32, "setLink:", [v30 firstModelLink]);
      if (dataCopy)
      {
        v33 = v28;
      }

      else
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(THMacTOCNode *)v32 setAbsolutePageIndex:v33];
      if (dataCopy)
      {
        -[THMacTOCNode setImageData:](v32, "setImageData:", [objc_msgSend(v30 "largerThumbs")]);
      }

      if ([objc_msgSend(v30 "portraitEntries")])
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = [objc_msgSend(v30 "portraitEntries")];
          if (![v36 indentLevel])
          {
            if (dataCopy)
            {
              -[THMacTOCNode setNodeNumberString:](v32, "setNodeNumberString:", [v36 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v32, "setDisplayPageNumber:", [v36 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v32, "setDisplayPageNumberValue:", [v36 displayPageNumberValue]);
            }

            -[THMacTOCNode setDisplayPageNumberFormat:](v32, "setDisplayPageNumberFormat:", [v36 displayPageNumberFormat]);
            -[THMacTOCNode setLink:](v32, "setLink:", [v36 modelLink]);
          }

          if ([v36 indentLevel] == &dword_0 + 1 && objc_msgSend(v36, "includeInTOC"))
          {
            v35 = objc_alloc_init(THMacTOCNode);
            if ([v36 pageIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v37 = 128;
            }

            else
            {
              v37 = 32;
            }

            [(THMacTOCNode *)v35 setNodeType:v37];
            [(THMacTOCNode *)v35 setNavigator:navigator];
            -[THMacTOCNode setTitle:](v35, "setTitle:", [objc_msgSend(v36 "title")]);
            if (dataCopy)
            {
              -[THMacTOCNode setNodeNumberString:](v35, "setNodeNumberString:", [v36 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v35, "setDisplayPageNumber:", [v36 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v35, "setDisplayPageNumberValue:", [v36 displayPageNumberValue]);
              -[THMacTOCNode setDisplayPageNumberFormat:](v35, "setDisplayPageNumberFormat:", [v36 displayPageNumberFormat]);
              pageIndex = [v36 pageIndex];
            }

            else
            {
              -[THMacTOCNode setDisplayPageNumberFormat:](v35, "setDisplayPageNumberFormat:", [v36 displayPageNumberFormat]);
              pageIndex = 0x7FFFFFFFFFFFFFFFLL;
            }

            [(THMacTOCNode *)v35 setAbsolutePageIndex:pageIndex];
            -[THMacTOCNode setLink:](v35, "setLink:", [v36 modelLink]);
            if ([v36 pageIndex] != 0x7FFFFFFFFFFFFFFFLL && dataCopy)
            {
              largerThumbs = [v30 largerThumbs];
              pageIndex2 = [v36 pageIndex];
              v41 = pageIndex2 - [(THMacTOCNode *)v32 absolutePageIndex];
              navigator = navigatorCopy;
              -[THMacTOCNode setImageData:](v35, "setImageData:", [largerThumbs objectAtIndex:v41]);
            }

            [(THMacTOCNode *)v32 addChild:v35];
          }

          if ([v36 indentLevel] == &dword_0 + 2 && objc_msgSend(v36, "includeInTOC"))
          {
            v42 = objc_alloc_init(THMacTOCNode);
            [(THMacTOCNode *)v42 setNodeType:128];
            [(THMacTOCNode *)v42 setNavigator:navigator];
            -[THMacTOCNode setTitle:](v42, "setTitle:", [objc_msgSend(v36 "title")]);
            if (dataCopy)
            {
              -[THMacTOCNode setNodeNumberString:](v42, "setNodeNumberString:", [v36 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v42, "setDisplayPageNumber:", [v36 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v42, "setDisplayPageNumberValue:", [v36 displayPageNumberValue]);
            }

            -[THMacTOCNode setDisplayPageNumberFormat:](v42, "setDisplayPageNumberFormat:", [v36 displayPageNumberFormat]);
            [(THMacTOCNode *)v42 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
            -[THMacTOCNode setLink:](v42, "setLink:", [v36 modelLink]);
            [(THMacTOCNode *)v35 addChild:v42];
          }

          ++v34;
        }

        while (v34 < [objc_msgSend(v30 "portraitEntries")]);
      }

      [(THMacTOCNode *)v7 addChild:v32];
      if (dataCopy)
      {
        ++v28;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        largerThumbs2 = [v30 largerThumbs];
        v44 = [largerThumbs2 countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v66;
          v47 = 1;
          do
          {
            for (i = 0; i != v45; i = i + 1)
            {
              if (*v66 != v46)
              {
                objc_enumerationMutation(largerThumbs2);
              }

              if ((v47 & 1) == 0)
              {
                v49 = *(*(&v65 + 1) + 8 * i);
                v50 = [self nodeForPageIndex:v28 inNode:v64 excludeHeadings:1];
                v51 = objc_alloc_init(THMacTOCNode);
                [(THMacTOCNode *)v51 setNodeType:64];
                -[THMacTOCNode setDisplayPageNumberValue:](v51, "setDisplayPageNumberValue:", [v50 displayPageNumberValue] + v28 - objc_msgSend(v50, "absolutePageIndex"));
                -[THMacTOCNode setDisplayPageNumberFormat:](v51, "setDisplayPageNumberFormat:", [v50 displayPageNumberFormat]);
                [(THMacTOCNode *)v51 setDisplayPageNumber:[NSString stringForValue:[(THMacTOCNode *)v51 displayPageNumberValue] withListNumberFormat:[(THMacTOCNode *)v51 displayPageNumberFormat] includeFormatting:0]];
                [(THMacTOCNode *)v51 setAbsolutePageIndex:v28];
                [(THMacTOCNode *)v51 setImageData:v49];
                [(THMacTOCNode *)v32 addPage:v51];

                ++v28;
              }

              v47 = 0;
            }

            v45 = [largerThumbs2 countByEnumeratingWithState:&v65 objects:v70 count:16];
            v47 = 0;
          }

          while (v45);
        }
      }

      v29 = v61 + 1;
      tocModel = v58;
      v7 = v64;
      dataCopy = v59;
      navigator = navigatorCopy;
    }

    while (v61 + 1 < [objc_msgSend(v58 "tiles")]);
  }

  if (dataCopy)
  {
    v52 = v28;
  }

  else
  {
    v52 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(THMacTOCNode *)v7 setAbsolutePageIndex:v52];
  if ([objc_msgSend(root "glossary")])
  {
    v53 = objc_alloc_init(THMacTOCNode);
    v54 = [(THMacTOCNode *)v53 setNodeType:4];
    -[THMacTOCNode setTitle:](v53, "setTitle:", [THBundle(v54 v55)]);
    [(THMacTOCNode *)v53 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v53 setDisplayPageNumber:&stru_471858];
    [(THMacTOCNode *)v7 addChild:v53];
  }

  return v7;
}

+ (id)nodeForPageIndex:(int64_t)index inNode:(id)node excludeHeadings:(BOOL)headings
{
  headingsCopy = headings;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = [node children];
  result = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v10 = result;
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        v14 = v11;
        if (*v18 != v12)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v17 + 1) + 8 * v13);
        if (headingsCopy && [*(*(&v17 + 1) + 8 * v13) nodeType] == 128 || (v15 = objc_msgSend(v11, "absolutePageIndex"), v15 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v11 = v14;
        }

        else if (v15 >= index)
        {
          if (v15 == index)
          {
            result = v11;
          }

          else
          {
            result = 0;
          }

          goto LABEL_17;
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      result = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
      v10 = result;
      if (result)
      {
        continue;
      }

      break;
    }

    v14 = v11;
LABEL_17:
    if (result)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 0;
    }

    if (!v16)
    {
      if ([v14 absolutePageIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = 0;
      }

      else
      {
        result = [self nodeForPageIndex:index inNode:v14 excludeHeadings:headingsCopy];
      }

      if (!result)
      {
        return v14;
      }
    }
  }

  return result;
}

+ (id)pageNodeForPageIndex:(int64_t)index inNode:(id)node
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [node children];
  result = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    v11 = v8;
    if (*v15 != v9)
    {
      objc_enumerationMutation(children);
    }

    v8 = *(*(&v14 + 1) + 8 * v10);
    if ([v8 nodeType] != 128 && objc_msgSend(v8, "nodeType") != 32)
    {
      absolutePageIndex = [v8 absolutePageIndex];
      if (absolutePageIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v8 = v11;
LABEL_10:
    if (v7 == ++v10)
    {
      result = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
      if (result)
      {
        goto LABEL_3;
      }

      v11 = v8;
      goto LABEL_20;
    }
  }

  if (absolutePageIndex < index)
  {
    goto LABEL_10;
  }

  if (absolutePageIndex == index)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
LABEL_20:
    if (v11)
    {
      v13 = ~[v11 absolutePageIndex] + index;
      if (v13 >= [objc_msgSend(v11 "pages")])
      {
        return 0;
      }

      else
      {
        return [objc_msgSend(v11 "pages")];
      }
    }
  }

  return result;
}

- (void)invalidatePaginationData
{
  [(THMacTOCNode *)self p_invaliatePaginationData];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  children = [(THMacTOCNode *)self children];
  v4 = [(NSMutableArray *)children countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v8 + 1) + 8 * v7) invalidatePaginationData];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_invaliatePaginationData
{
  if ([(THMacTOCNode *)self nodeType]== 16 || [(THMacTOCNode *)self nodeType]== 128 || [(THMacTOCNode *)self nodeType]== 32)
  {
    self->_absolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_displayPageNumberValue = 0x7FFFFFFFFFFFFFFFLL;

    self->_displayPageNumber = 0;
  }
}

- (THMacTOCNode)init
{
  v3.receiver = self;
  v3.super_class = THMacTOCNode;
  result = [(THMacTOCNode *)&v3 init];
  if (result)
  {
    result->_displayPageNumberValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = THMacTOCNode;
  [(THMacTOCNode *)&v3 dealloc];
}

- (id)rootNodeFilteringOutFirstLevelNodesOfType:(int)type
{
  v5 = objc_alloc_init(THMacTOCNode);
  [(THMacTOCNode *)v5 setNodeType:[(THMacTOCNode *)self nodeType]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(THMacTOCNode *)self children];
  v7 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = ~type;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(children);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 nodeType] & v10) != 0)
        {
          [(THMacTOCNode *)v5 addChild:v12];
        }
      }

      v8 = [(NSMutableArray *)children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)addChild:(id)child
{
  if (![(THMacTOCNode *)self children])
  {
    [(THMacTOCNode *)self setChildren:+[NSMutableArray array]];
  }

  children = [(THMacTOCNode *)self children];

  [(NSMutableArray *)children addObject:child];
}

- (void)addPage:(id)page
{
  if (![(THMacTOCNode *)self pages])
  {
    [(THMacTOCNode *)self setPages:+[NSMutableArray array]];
  }

  pages = [(THMacTOCNode *)self pages];

  [(NSMutableArray *)pages addObject:page];
}

- (CGImage)image
{
  if (!self->_image && [(THMacTOCNode *)self imageData])
  {
    v3 = [TSDBitmapImageProvider CGImageForImageData:[(THMacTOCNode *)self imageData]];
    self->_image = v3;
    CGImageRetain(v3);
    [(THMacTOCNode *)self setImageData:0];
  }

  return self->_image;
}

- (unint64_t)nodeLevel
{
  nodeType = [(THMacTOCNode *)self nodeType];
  if (nodeType == 32)
  {
    return 1;
  }

  else
  {
    return 2 * (nodeType == 128);
  }
}

- (int64_t)absolutePageIndex
{
  if (self->_absolutePageIndex == 0x7FFFFFFFFFFFFFFFLL && [(THMacTOCNode *)self navigator]&& [(THMacTOCNode *)self link])
  {
    self->_absolutePageIndex = [(THDocumentNavigator *)[(THMacTOCNode *)self navigator] absolutePageIndexForLink:[(THMacTOCNode *)self link]];
  }

  return self->_absolutePageIndex;
}

- (NSString)displayPageNumber
{
  result = self->_displayPageNumber;
  if (!result)
  {
    if (self->_displayPageNumberValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(THMacTOCNode *)self navigator]&& [(THMacTOCNode *)self link])
      {
        if (![(THDocumentRoot *)[(THDocumentNavigator *)[(THMacTOCNode *)self navigator] documentRoot] reflowablePaginationController]|| (absolutePageIndex = [(THReflowablePaginationController *)[(THDocumentRoot *)[(THDocumentNavigator *)[(THMacTOCNode *)self navigator] documentRoot] reflowablePaginationController] paginationComplete], absolutePageIndex))
        {
          v6 = [(THDocumentNavigator *)[(THMacTOCNode *)self navigator] pageNumberStringForLink:[(THMacTOCNode *)self link]];
LABEL_12:
          result = v6;
          goto LABEL_13;
        }
      }

      else
      {
        absolutePageIndex = [(THMacTOCNode *)self absolutePageIndex];
        if (absolutePageIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = [NSString stringWithFormat:@"%ld", [(THMacTOCNode *)self absolutePageIndex]+ 1];
          goto LABEL_12;
        }
      }

      result = [THBundle(absolutePageIndex v5)];
LABEL_13:
      self->_displayPageNumber = result;
      return result;
    }

    v6 = [NSString stringForValue:[(THMacTOCNode *)self displayPageNumberValue] withListNumberFormat:[(THMacTOCNode *)self displayPageNumberFormat] includeFormatting:0];
    goto LABEL_12;
  }

  return result;
}

@end