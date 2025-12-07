@interface SubtitleCellWithAdditionalIcon
- (BOOL)leftFrame:(CGRect)frame overlapsRightFrame:(CGRect)rightFrame difference:(double *)difference;
- (UIImageView)icon;
- (void)layoutSubviews;
@end

@implementation SubtitleCellWithAdditionalIcon

- (UIImageView)icon
{
  icon = self->_icon;
  if (!icon)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_icon;
    self->_icon = v4;

    v6 = objc_msgSend_contentView(self);
    [v6 addSubview:self->_icon];

    icon = self->_icon;
  }

  return icon;
}

- (void)layoutSubviews
{
  v90.receiver = self;
  v90.super_class = SubtitleCellWithAdditionalIcon;
  [(EKUITableViewCell *)&v90 layoutSubviews];
  v3 = objc_msgSend_contentView(self);
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_icon)
  {
    textLabel = [(SubtitleCellWithAdditionalIcon *)self textLabel];
    [textLabel sizeToFit];

    detailTextLabel = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
    [detailTextLabel sizeToFit];

    [(UIImageView *)self->_icon sizeToFit];
    textLabel2 = [(SubtitleCellWithAdditionalIcon *)self textLabel];
    [textLabel2 frame];
    v81 = v16;
    v83 = v15;
    v79 = v17;
    v86 = v18;

    detailTextLabel2 = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
    [detailTextLabel2 frame];
    v85 = v20;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    traitCollection = [(SubtitleCellWithAdditionalIcon *)self traitCollection];
    v28 = EKUIUsesLargeTextLayout(traitCollection);

    icon = self->_icon;
    if (v28)
    {
      [(UIImageView *)icon removeFromSuperview];
    }

    else
    {
      v77 = v24;
      v78 = v22;
      frame = [(UIImageView *)icon frame];
      v32 = v31;
      v34 = v33;
      v36 = 6.0;
      if (CalInterfaceIsLeftToRight(frame, v35))
      {
        v91.origin.x = v5;
        v91.origin.y = v7;
        v91.size.width = v9;
        v91.size.height = v11;
        v36 = CGRectGetMaxX(v91) + -6.0 - v32;
      }

      v92.origin.x = v5;
      v92.origin.y = v7;
      v92.size.width = v9;
      v92.size.height = v11;
      v37 = round((CGRectGetMaxY(v92) - v34) * 0.5);
      [(UIImageView *)self->_icon setFrame:v36, v37, v32, v34];
      v38 = objc_msgSend_contentView(self);
      [v38 addSubview:self->_icon];

      IsLeftToRight = CalInterfaceIsLeftToRight(v39, v40);
      v43 = v83;
      if (IsLeftToRight)
      {
        v44 = v83;
      }

      else
      {
        v44 = v36;
      }

      if (IsLeftToRight)
      {
        v45 = v79;
      }

      else
      {
        v45 = v37;
      }

      v75 = v45;
      v76 = v44;
      if (IsLeftToRight)
      {
        v46 = v81;
      }

      else
      {
        v46 = v32;
      }

      if (IsLeftToRight)
      {
        v47 = v86;
      }

      else
      {
        v47 = v34;
      }

      v73 = v47;
      v74 = v46;
      v48 = CalInterfaceIsLeftToRight(IsLeftToRight, v42);
      if (v48)
      {
        v49 = v37;
      }

      else
      {
        v49 = v79;
      }

      if (v48)
      {
        v50 = v36;
      }

      else
      {
        v50 = v83;
      }

      if (v48)
      {
        v51 = v32;
      }

      else
      {
        v51 = v81;
      }

      if (v48)
      {
        v52 = v34;
      }

      else
      {
        v52 = v86;
      }

      v89 = 0.0;
      v53 = [(SubtitleCellWithAdditionalIcon *)self leftFrame:&v89 overlapsRightFrame:v76 difference:v75, v74, v73, v50, v49, v51, v52];
      if (v53)
      {
        v55 = v81 - v89;
        if (!CalInterfaceIsLeftToRight(v53, v54))
        {
          v43 = v83 + v89;
        }

        textLabel3 = [(SubtitleCellWithAdditionalIcon *)self textLabel];
        [textLabel3 setFrame:{v43, v79, v55, v86}];
      }

      v57 = CalInterfaceIsLeftToRight(v53, v54);
      if (v57)
      {
        v59 = v85;
      }

      else
      {
        v59 = v36;
      }

      v87 = v59;
      if (v57)
      {
        v60 = v78;
      }

      else
      {
        v60 = v37;
      }

      if (v57)
      {
        v61 = v77;
      }

      else
      {
        v61 = v32;
      }

      v82 = v61;
      v84 = v60;
      if (v57)
      {
        v62 = v26;
      }

      else
      {
        v62 = v34;
      }

      v80 = v62;
      v63 = CalInterfaceIsLeftToRight(v57, v58);
      if (v63)
      {
        v64 = v36;
      }

      else
      {
        v64 = v85;
      }

      if (v63)
      {
        v65 = v37;
      }

      else
      {
        v65 = v78;
      }

      if (v63)
      {
        v66 = v32;
      }

      else
      {
        v66 = v77;
      }

      if (v63)
      {
        v67 = v34;
      }

      else
      {
        v67 = v26;
      }

      v88 = 0.0;
      v68 = [(SubtitleCellWithAdditionalIcon *)self leftFrame:&v88 overlapsRightFrame:v87 difference:v84, v82, v80, v64, v65, v66, v67];
      if (v68)
      {
        v70 = v77 - v88;
        if (CalInterfaceIsLeftToRight(v68, v69))
        {
          v71 = v85;
        }

        else
        {
          v71 = v85 + v88;
        }

        detailTextLabel3 = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
        [detailTextLabel3 setFrame:{v71, v78, v70, v26}];
      }
    }
  }
}

- (BOOL)leftFrame:(CGRect)frame overlapsRightFrame:(CGRect)rightFrame difference:(double *)difference
{
  height = rightFrame.size.height;
  width = rightFrame.size.width;
  y = rightFrame.origin.y;
  x = rightFrame.origin.x;
  MaxX = CGRectGetMaxX(frame);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = MaxX - (CGRectGetMinX(v13) + -5.0);
  *difference = v11;
  return v11 > 0.0;
}

@end