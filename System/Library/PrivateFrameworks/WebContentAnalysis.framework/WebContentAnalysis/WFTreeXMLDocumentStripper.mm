@interface WFTreeXMLDocumentStripper
+ (id)treeStripperWithXMLDocument:(_xmlDoc *)document;
- (WFTreeXMLDocumentStripper)initWithXMLDocument:(_xmlDoc *)document;
- (id)description;
- (id)processXMLDocument:(_xmlDoc *)document blockComments:(BOOL)comments;
- (void)dealloc;
- (void)processXMLDocument:(_xmlDoc *)document;
- (void)setPageTitle:(id)title;
@end

@implementation WFTreeXMLDocumentStripper

+ (id)treeStripperWithXMLDocument:(_xmlDoc *)document
{
  v3 = [objc_alloc(objc_opt_class()) initWithXMLDocument:document];

  return v3;
}

- (WFTreeXMLDocumentStripper)initWithXMLDocument:(_xmlDoc *)document
{
  if (document)
  {
    v7.receiver = self;
    v7.super_class = WFTreeXMLDocumentStripper;
    v4 = [(WFTreeXMLDocumentStripper *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(WFTreeXMLDocumentStripper *)v4 setXMLDocument:document];
      [(WFTreeXMLDocumentStripper *)v5 strip];
    }
  }

  else
  {
    NSLog(&cfstr_SErrorPassingA.isa, a2, "[WFTreeXMLDocumentStripper initWithXMLDocument:]");
    return 0;
  }

  return v5;
}

- (void)setPageTitle:(id)title
{
  titleCopy = title;

  self->pageTitle = title;
}

- (void)processXMLDocument:(_xmlDoc *)document
{
  v7 = objc_opt_new();
  self->scriptBlocks = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->images = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->metaTagsLabeled = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->metaTagsUnlabeled = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->links = objc_alloc_init(MEMORY[0x277CBEB18]);
  *&self->hasFrameset = 0;
  v5 = [(WFTreeXMLDocumentStripper *)self processXMLDocument:document blockComments:1];
  self->pageContent = v5;
  v6 = v5;
}

- (id)processXMLDocument:(_xmlDoc *)document blockComments:(BOOL)comments
{
  v6 = [MEMORY[0x277CCAB68] stringWithString:{@" ", comments}];
  array = [MEMORY[0x277CBEB18] array];
  for (i = document->last; i; i = i->prev)
  {
    [array WF_push:i];
  }

  if ([array count])
  {
    v9 = 0x277CCA000uLL;
    while (1)
    {
      wF_pop = [array WF_pop];
      v11 = *(wF_pop + 16);
      if (!v11)
      {
        goto LABEL_39;
      }

      v12 = [objc_msgSend(*(v9 + 3240) stringWithFormat:@"%s", v11), "lowercaseString"];
      if ([v12 isEqualToString:@"a"])
      {
        break;
      }

      if ([v12 isEqualToString:@"style"])
      {
        goto LABEL_43;
      }

      if ([v12 isEqualToString:@"script"])
      {
        v13 = [WFJavascriptStripper stripJavascript:[XMLNode getJavascriptFromNode:wF_pop]];
        scriptBlocks = self->scriptBlocks;
        goto LABEL_8;
      }

      if ([v12 isEqualToString:@"meta"])
      {
        v15 = [XMLNode stringValueForAttribute:@"name" inNode:wF_pop];
        v16 = [XMLNode stringValueForAttribute:@"content" inNode:wF_pop];
        v17 = [XMLNode stringValueForAttribute:@"http-equiv" inNode:wF_pop];
        v18 = v16;
        if (v17)
        {
          v19 = v15 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (!v19)
        {
          v17 = v15;
        }

        if (!v16 || v17)
        {
          v9 = 0x277CCA000;
          if (v17)
          {
            if (v18)
            {
              v20 = v18;
              lowercaseString = [v17 lowercaseString];
              if (![(NSMutableDictionary *)self->metaTagsLabeled objectForKey:lowercaseString])
              {
                if ([lowercaseString isEqualToString:@"refresh"])
                {
                  v30 = [v20 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
                  if (([v30 WF_containsString:@"url=http://images.google."] & 1) == 0)
                  {
                    v31 = [MEMORY[0x277CCAC80] scannerWithString:v30];
                    v32 = 0;
                    if ([v31 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"decimalDigitCharacterSet"), &v32}])
                    {
                      intValue = [v32 intValue];
                      if (kWFIgnoreRefreshCutoff > intValue)
                      {
                        self->hasShortRefresh = 1;
                      }
                    }
                  }
                }

                [(NSMutableDictionary *)self->metaTagsLabeled setObject:v20 forKey:lowercaseString];
              }
            }
          }
        }

        else
        {
          [(NSMutableArray *)self->metaTagsUnlabeled addObject:v16];
          v9 = 0x277CCA000;
        }

        goto LABEL_43;
      }

      if ([v12 isEqualToString:@"img"])
      {
        v13 = [WFImg imgWithNode:wF_pop];
        scriptBlocks = self->images;
        goto LABEL_8;
      }

      if (([v12 isEqualToString:@"title"] & 1) == 0)
      {
        if ([v12 isEqualToString:@"frameset"])
        {
          self->hasFrameset = 1;
        }

LABEL_39:
        if (*(wF_pop + 8) == 3)
        {
          v25 = *(wF_pop + 80);
          if (v25)
          {
            v26 = [*(v9 + 3240) stringWithCString:v25 encoding:4];
            v27 = [v26 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
            if (v27)
            {
              [v6 appendString:v27];
              [v6 appendString:@" "];
            }
          }
        }

        goto LABEL_43;
      }

      if ([(WFTreeXMLDocumentStripper *)self pageTitle])
      {
        goto LABEL_39;
      }

      v23 = *(wF_pop + 24);
      if (v23)
      {
        v24 = *(v23 + 80);
        if (v24)
        {
          -[WFTreeXMLDocumentStripper setPageTitle:](self, "setPageTitle:", [*(v9 + 3240) stringWithCString:v24 encoding:4]);
        }
      }

LABEL_43:
      for (j = *(wF_pop + 32); j; j = *(j + 56))
      {
        [array WF_push:j];
      }

      if (![array count])
      {
        return v6;
      }
    }

    v13 = [WFLink linkWithNode:wF_pop];
    scriptBlocks = self->links;
LABEL_8:
    [(NSMutableArray *)scriptBlocks addObject:v13];
    goto LABEL_43;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\tpageTitle:%@\n", self->pageTitle];
  [v3 appendFormat:@"\tmetaTagDescription:%@\n", -[WFTreeXMLDocumentStripper metaTagDescription](self, "metaTagDescription")];
  [v3 appendFormat:@"\tmetaTagKeywords:%@\n", -[WFTreeXMLDocumentStripper metaTagKeywords](self, "metaTagKeywords")];
  [v3 appendFormat:@"\tscriptBlocks:%@\n", self->scriptBlocks];
  [v3 appendFormat:@"\timages:%@\n", self->images];
  [v3 appendFormat:@"\tpageContent:%@\n", self->pageContent];
  [v3 appendString:@">"];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFTreeXMLDocumentStripper;
  [(WFTreeXMLDocumentStripper *)&v3 dealloc];
}

@end