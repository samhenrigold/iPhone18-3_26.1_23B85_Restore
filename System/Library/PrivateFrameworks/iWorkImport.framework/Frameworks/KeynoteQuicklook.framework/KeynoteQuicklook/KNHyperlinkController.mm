@interface KNHyperlinkController
+ (BOOL)URLContainsKeynoteSpecificHyperlink:(id)hyperlink;
+ (id)displayStringForSlideLink:(int64_t)link url:(id)url documentRoot:(id)root;
+ (id)uniqueIdentifierFromHyperlinkURL:(id)l;
+ (int64_t)hyperlinkTypeFromHyperlinkURL:(id)l;
+ (unint64_t)slideIndexForSlideLink:(id)link url:(id)url;
@end

@implementation KNHyperlinkController

+ (id)uniqueIdentifierFromHyperlinkURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    absoluteString = [lCopy absoluteString];
    v6 = [absoluteString length];

    if (v6)
    {
      absoluteString2 = [v4 absoluteString];
      if ([absoluteString2 rangeOfString:@"?slideid="])
      {
        v6 = 0;
      }

      else
      {
        v6 = [absoluteString2 substringFromIndex:9];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)URLContainsKeynoteSpecificHyperlink:(id)hyperlink
{
  absoluteString = [hyperlink absoluteString];
  v4 = ![absoluteString rangeOfString:@"?slide"] || !objc_msgSend(absoluteString, "rangeOfString:", @"?action") || !objc_msgSend(absoluteString, "rangeOfString:", @"?id");

  return v4;
}

+ (int64_t)hyperlinkTypeFromHyperlinkURL:(id)l
{
  absoluteString = [l absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString length])
  {
    if ([lowercaseString isEqualToString:@"?action=exitpresentation"])
    {
      v5 = 7;
    }

    else if ([lowercaseString isEqualToString:@"?slide=last"])
    {
      v5 = 5;
    }

    else if ([lowercaseString isEqualToString:@"?slide=first"])
    {
      v5 = 4;
    }

    else if ([lowercaseString isEqualToString:@"?slide=previous"])
    {
      v5 = 3;
    }

    else if ([lowercaseString isEqualToString:@"?slide=next"])
    {
      v5 = 2;
    }

    else if ([lowercaseString isEqualToString:@"?action=retreat"])
    {
      v5 = 6;
    }

    else if ([lowercaseString rangeOfString:@"?slideid="])
    {
      if ([lowercaseString rangeOfString:@"mailto:"])
      {
        if ([lowercaseString rangeOfString:@"tel:"])
        {
          v5 = 9;
        }

        else
        {
          v5 = 10;
        }
      }

      else
      {
        v5 = 8;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)displayStringForSlideLink:(int64_t)link url:(id)url documentRoot:(id)root
{
  urlCopy = url;
  rootCopy = root;
  v9 = rootCopy;
  v10 = &stru_2884D8E20;
  if (link > 3)
  {
    if (link > 5)
    {
      if (link == 6)
      {
        v12 = sub_275DC204C(rootCopy);
        v13 = v12;
        v14 = @"Last Slide Viewed";
      }

      else
      {
        if (link != 7)
        {
          goto LABEL_21;
        }

        v12 = sub_275DC204C(rootCopy);
        v13 = v12;
        v14 = @"Exit Slide­show";
      }
    }

    else
    {
      v12 = sub_275DC204C(rootCopy);
      if (link == 4)
      {
        v13 = v12;
        v14 = @"First Slide";
      }

      else
      {
        v13 = v12;
        v14 = @"Last Slide";
      }
    }
  }

  else if (link > 1)
  {
    v12 = sub_275DC204C(rootCopy);
    if (link == 2)
    {
      v13 = v12;
      v14 = @"Next Slide";
    }

    else
    {
      v13 = v12;
      v14 = @"Previous Slide";
    }
  }

  else if (link)
  {
    if (link != 1)
    {
      goto LABEL_21;
    }

    v11 = [KNHyperlinkController slideIndexForSlideLink:rootCopy url:urlCopy];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v11;
      v17 = MEMORY[0x277CCACA8];
      v13 = sub_275DC204C(v11);
      v18 = [v13 localizedStringForKey:@"Link to Slide %1$lu" value:&stru_2884D8E20 table:@"Keynote"];
      v10 = [v17 localizedStringWithFormat:v18, v16 + 1];

      goto LABEL_20;
    }

    v12 = sub_275DC204C(0x7FFFFFFFFFFFFFFFLL);
    v13 = v12;
    v14 = @"No Slide";
  }

  else
  {
    v12 = sub_275DC204C(rootCopy);
    v13 = v12;
    v14 = @"None";
  }

  v10 = [v12 localizedStringForKey:v14 value:&stru_2884D8E20 table:@"Keynote"];
LABEL_20:

LABEL_21:

  return v10;
}

+ (unint64_t)slideIndexForSlideLink:(id)link url:(id)url
{
  v29 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  urlCopy = url;
  if (urlCopy)
  {
    v7 = [KNHyperlinkController uniqueIdentifierFromHyperlinkURL:urlCopy];
    objc_opt_class();
    show = [linkCopy show];
    v9 = TSUDynamicCast();

    if (v7)
    {
      slideTree = [v9 slideTree];
      visibleSlideNodes = [slideTree visibleSlideNodes];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = visibleSlideNodes;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v22 = v9;
        v23 = linkCopy;
        v15 = 0;
        v16 = *v25;
LABEL_5:
        v17 = 0;
        v18 = v15;
        v15 += v14;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v12);
          }

          uniqueIdentifier = [*(*(&v24 + 1) + 8 * v17) uniqueIdentifier];
          v20 = [uniqueIdentifier isEqualToString:v7];

          if (v20)
          {
            break;
          }

          ++v18;
          if (v14 == ++v17)
          {
            v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            v18 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }
        }

        v9 = v22;
        linkCopy = v23;
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v18;
}

@end