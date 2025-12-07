@interface SLDCollaborationFooterSlotTag
+ (id)tagForTitle:(id)title subtitle:(id)subtitle maxWidth:(double)width;
- (BOOL)isEqual:(id)equal;
- (SLDCollaborationFooterSlotTag)initWithTitle:(id)title subtitle:(id)subtitle maxWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SLDCollaborationFooterSlotTag

+ (id)tagForTitle:(id)title subtitle:(id)subtitle maxWidth:(double)width
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v9 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:titleCopy subtitle:subtitleCopy maxWidth:width];

  return v9;
}

- (SLDCollaborationFooterSlotTag)initWithTitle:(id)title subtitle:(id)subtitle maxWidth:(double)width
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v18.receiver = self;
  v18.super_class = SLDCollaborationFooterSlotTag;
  v10 = [(SLDCollaborationFooterSlotTag *)&v18 init];
  v11 = v10;
  if (v10)
  {
    if (!titleCopy || (v10 = [titleCopy isEqualToString:&stru_28468DAB8], v10))
    {
      if (!subtitleCopy || (v10 = [subtitleCopy isEqualToString:&stru_28468DAB8], v10))
      {
        v12 = SLFrameworkLogHandle(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SLDCollaborationFooterSlotTag initWithTitle:v12 subtitle:? maxWidth:?];
        }
      }
    }

    v13 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v13;

    v15 = [subtitleCopy copy];
    subtitle = v11->_subtitle;
    v11->_subtitle = v15;

    v11->_maxWidth = width;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLDCollaborationFooterSlotTag alloc];
  title = [(SLDCollaborationFooterSlotTag *)self title];
  subtitle = [(SLDCollaborationFooterSlotTag *)self subtitle];
  [(SLDCollaborationFooterSlotTag *)self maxWidth];
  v7 = [(SLDCollaborationFooterSlotTag *)v4 initWithTitle:title subtitle:subtitle maxWidth:?];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v14 = 1;
    }

    else
    {
      [(SLDCollaborationFooterSlotTag *)v5 maxWidth];
      v8 = v7;
      [(SLDCollaborationFooterSlotTag *)self maxWidth];
      if (SL_CGFloatApproximatelyEqualToFloat(v8, v9))
      {
        title = [(SLDCollaborationFooterSlotTag *)v6 title];
        title2 = [(SLDCollaborationFooterSlotTag *)self title];
        if ([title isEqualToString:title2])
        {
          subtitle = [(SLDCollaborationFooterSlotTag *)v6 subtitle];
          subtitle2 = [(SLDCollaborationFooterSlotTag *)self subtitle];
          v14 = [subtitle isEqualToString:subtitle2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  title = [(SLDCollaborationFooterSlotTag *)self title];
  v4 = [title hash];
  subtitle = [(SLDCollaborationFooterSlotTag *)self subtitle];
  v6 = [subtitle hash] ^ v4;
  [(SLDCollaborationFooterSlotTag *)self maxWidth];
  v8 = v7;

  return v6 ^ v8;
}

@end