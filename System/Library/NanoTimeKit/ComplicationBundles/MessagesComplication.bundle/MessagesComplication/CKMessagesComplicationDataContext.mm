@interface CKMessagesComplicationDataContext
- (BOOL)isEqual:(id)equal;
- (CGPoint)bubbleTextOrigin;
- (CGRect)_scaledImageFramePerAspectRatioForFamily:(int64_t)family specs:(id)specs imageSize:(CGSize)size;
- (CGRect)backgroundFrame;
- (CGRect)bubbleFrame;
- (CGRect)imageFrame;
- (CGRect)textFrame;
- (CKMessagesComplicationDataContext)initWithUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template specs:(id)specs imageSize:(CGSize)size;
@end

@implementation CKMessagesComplicationDataContext

- (CKMessagesComplicationDataContext)initWithUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template specs:(id)specs imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v88 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  specsCopy = specs;
  v79.receiver = self;
  v79.super_class = CKMessagesComplicationDataContext;
  v15 = [(CKMessagesComplicationDataContext *)&v79 init];
  if (v15)
  {
    v16 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataContext");
    *(v15 + 1) = family;
    *(v15 + 2) = count;
    if (([specsCopy unreadCountShouldBeDrawnOnBubbleForFamily:family] & 1) == 0)
    {
      *(v15 + 2) = 0;
    }

    [specsCopy canvasSizeForFamily:family andTemplate:templateCopy];
    v19 = v18;
    if (v17 == *MEMORY[0x277CBF3A8] && v18 == *(MEMORY[0x277CBF3A8] + 8))
    {
      sub_23BD2116C();
    }

    *(v15 + 7) = 0;
    *(v15 + 8) = 0;
    v21 = v15 + 56;
    *(v15 + 9) = v17;
    *(v15 + 10) = v18;
    [specsCopy imageFramePaddingForFamily:family];
    if (v22 <= 0.0)
    {
      v24 = *(v15 + 72);
      *(v15 + 88) = *v21;
      *(v15 + 104) = v24;
    }

    else
    {
      v23 = floor(v19 * v22);
      *(v15 + 88) = CGRectInset(*(v15 + 56), v23, v23);
    }

    [v15 _scaledImageFramePerAspectRatioForFamily:family specs:specsCopy imageSize:{width, height}];
    *(v15 + 11) = v25;
    *(v15 + 12) = v26;
    v27 = v15 + 88;
    *(v15 + 13) = v28;
    *(v15 + 14) = v29;
    if ([specsCopy needToScaleToFillForFamily:family])
    {
      v30 = *(v15 + 104);
      *v21 = *v27;
      *(v15 + 72) = v30;
    }

    if (*(v15 + 2))
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        countCopy = count;
        v86 = 2050;
        familyCopy = family;
        _os_log_impl(&dword_23BD1C000, v16, OS_LOG_TYPE_DEFAULT, "drawing unread count %{public}lu onto image for family %{public}lu", buf, 0x16u);
      }

      if (count >= 0x63)
      {
        countCopy2 = 99;
      }

      else
      {
        countCopy2 = count;
      }

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:countCopy2];
      v77 = v32;
      if (count < 0x64)
      {
        v41 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v32 numberStyle:0];
        v36 = *(v15 + 3);
        *(v15 + 3) = v41;
      }

      else
      {
        v33 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v34 localizedStringForKey:@"99+_UNREAD" value:&stru_284E7EA48 table:@"MessagesComplication"];
        v36 = [v33 stringWithFormat:v35, 99];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"\u200E%@", v36];
        v38 = *(v15 + 3);
        *(v15 + 3) = v37;
      }

      v78 = templateCopy;

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(v15 + 3);
        *buf = 138543362;
        countCopy = v42;
        _os_log_impl(&dword_23BD1C000, v16, OS_LOG_TYPE_DEFAULT, "got formatted unread count: %{public}@", buf, 0xCu);
      }

      v43 = *MEMORY[0x277D74420];
      v44 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74420]];
      v45 = v16;
      v82 = *MEMORY[0x277D740A8];
      v46 = v82;
      v83 = v44;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [*(v15 + 3) sizeWithAttributes:v47];
      v49 = [MEMORY[0x277D74300] systemFontOfSize:ceil(12.0 / v48 * CGRectGetHeight(*(v15 + 88)) * 0.5) weight:v43];

      [v49 pointSize];
      v81[0] = v49;
      v51 = *MEMORY[0x277D740D0];
      v80[0] = v46;
      v80[1] = v51;
      v52 = [MEMORY[0x277CCABB0] numberWithDouble:v50 * -30.0 / 1000.0];
      v81[1] = v52;
      v80[2] = *MEMORY[0x277D740C0];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v81[2] = blackColor;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
      v55 = *(v15 + 4);
      *(v15 + 4) = v54;

      v16 = v45;
      v56 = *v27;
      *(v15 + 136) = *(v15 + 104);
      *(v15 + 120) = v56;
      v57 = *(v15 + 17);
      *(v15 + 18) = floor(*(v15 + 18) / 1.12);
      [*(v15 + 3) boundingRectWithSize:1 options:*(v15 + 4) attributes:0 context:v57];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      UIRectIntegralWithScale();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v76 = v68;
      UIRectCenteredIntegralRectScale();
      *(v15 + 19) = v69;
      *(v15 + 20) = v70;
      *(v15 + 21) = v71;
      *(v15 + 22) = v72;

      v40 = *(v15 + 19);
      v73 = *(v15 + 20);
      [specsCopy verticalTextOffsetForFamily:family withTextBounds:{v60, v62, v64, v66, v76}];
      v39 = v73 + v74;

      templateCopy = v78;
    }

    else
    {
      v40 = *(v15 + 11);
      v39 = *(v15 + 12);
    }

    *(v15 + 5) = v40;
    *(v15 + 6) = v39;
  }

  return v15;
}

- (CGRect)_scaledImageFramePerAspectRatioForFamily:(int64_t)family specs:(id)specs imageSize:(CGSize)size
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  v9 = size.width / size.height;
  if (size.width / size.height > 1.0)
  {
    if ([specs needToScaleToFillForFamily:family])
    {
      width = ceil(v9 * self->_imageFrame.size.width);
    }

    else
    {
      v11 = self->_imageFrame.size.height;
      height = floor(v11 / v9);
      y = self->_imageFrame.origin.y + (v11 - height) * 0.5;
    }
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    family = self->_family;
    if (family == [v5 family] && (unreadCount = self->_unreadCount, unreadCount == objc_msgSend(v5, "unreadCount")) && (objc_msgSend(v5, "backgroundFrame"), v22.origin.x = v8, v22.origin.y = v9, v22.size.width = v10, v22.size.height = v11, CGRectEqualToRect(self->_backgroundFrame, v22)) && (objc_msgSend(v5, "bubbleFrame"), v23.origin.x = v12, v23.origin.y = v13, v23.size.width = v14, v23.size.height = v15, CGRectEqualToRect(self->_bubbleFrame, v23)))
    {
      [v5 imageFrame];
      v24.origin.x = v16;
      v24.origin.y = v17;
      v24.size.width = v18;
      v24.size.height = v19;
      v20 = CGRectEqualToRect(self->_imageFrame, v24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (CGRect)backgroundFrame
{
  x = self->_backgroundFrame.origin.x;
  y = self->_backgroundFrame.origin.y;
  width = self->_backgroundFrame.size.width;
  height = self->_backgroundFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageFrame
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bubbleFrame
{
  x = self->_bubbleFrame.origin.x;
  y = self->_bubbleFrame.origin.y;
  width = self->_bubbleFrame.size.width;
  height = self->_bubbleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textFrame
{
  x = self->_textFrame.origin.x;
  y = self->_textFrame.origin.y;
  width = self->_textFrame.size.width;
  height = self->_textFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)bubbleTextOrigin
{
  x = self->_bubbleTextOrigin.x;
  y = self->_bubbleTextOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end