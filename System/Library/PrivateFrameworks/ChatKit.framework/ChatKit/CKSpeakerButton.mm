@interface CKSpeakerButton
+ (id)speakerImageWithEnabledState:(BOOL)state;
+ (id)speakerImageWithOrientation:(char)orientation speakerEnabled:(BOOL)enabled shouldShowText:(BOOL)text;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKSpeakerButton)initWithFrame:(CGRect)frame;
- (void)setOrientation:(char)orientation;
- (void)setShouldShowText:(BOOL)text;
- (void)setSpeakerEnabled:(BOOL)enabled;
- (void)touchUpInside:(id)inside;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSpeakerImage;
@end

@implementation CKSpeakerButton

- (CKSpeakerButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKSpeakerButton;
  v3 = [(CKSpeakerButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKSpeakerButton *)v3 addTarget:v3 action:sel_touchUpInside_ forControlEvents:64];
    v4->_speakerEnabled = 1;
    [(CKSpeakerButton *)v4 updateSpeakerImage];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = CKSpeakerButton;
  [(CKSpeakerButton *)&v5 sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setOrientation:(char)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

- (void)setSpeakerEnabled:(BOOL)enabled
{
  if (self->_speakerEnabled != enabled)
  {
    self->_speakerEnabled = enabled;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

+ (id)speakerImageWithOrientation:(char)orientation speakerEnabled:(BOOL)enabled shouldShowText:(BOOL)text
{
  textCopy = text;
  enabledCopy = enabled;
  orientationCopy = orientation;
  v98[1] = *MEMORY[0x1E69E9840];
  if (speakerImageWithOrientation_speakerEnabled_shouldShowText__once != -1)
  {
    +[CKSpeakerButton speakerImageWithOrientation:speakerEnabled:shouldShowText:];
  }

  v92[0] = orientationCopy;
  v92[1] = enabledCopy;
  v92[2] = textCopy;
  v8 = [MEMORY[0x1E696B098] value:v92 withObjCType:"{?=cBB}"];
  v9 = [speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache objectForKey:v8];
  if (!v9)
  {
    v90 = enabledCopy;
    v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:17.0];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"speaker.wave.3.fill"];
    v91 = v10;
    v12 = [v11 imageWithSymbolConfiguration:v10];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v14 = [v12 imageWithTintColor:tertiaryLabelColor];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v16 = [v14 imageWithTintColor:systemGrayColor];

    [v16 size];
    v18 = v17;
    v20 = v19;
    v21 = CKPreferredContentSizeCategory();
    v22 = UIContentSizeCategoryCompareToCategory(speakerImageWithOrientation_speakerEnabled_shouldShowText__sContentSizeCategory_SpeakerTextWidth, v21);
    v23 = &collaborationOptionsPopoverInsets_sBehavior_3;
    v24 = &collaborationOptionsPopoverInsets_sBehavior_3;
    v25 = off_1E72E5000;
    v26 = MEMORY[0x1E69DB648];
    if (v22)
    {
      v27 = CKFrameworkBundle(v22);
      v28 = [v27 localizedStringForKey:@"AUDIO_MESSAGE_SPEAKER_ON" value:&stru_1F04268F8 table:@"ChatKit"];
      v97 = *MEMORY[0x1E69DB648];
      v29 = v97;
      +[CKUIBehavior sharedBehaviors];
      v30 = v88 = v16;
      transcriptBoldFont = [v30 transcriptBoldFont];
      v98[0] = transcriptBoldFont;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
      [v28 sizeWithAttributes:v32];
      v34 = v33;
      v36 = v35;

      v38 = CKFrameworkBundle(v37);
      v39 = [v38 localizedStringForKey:@"AUDIO_MESSAGE_SPEAKER_OFF" value:&stru_1F04268F8 table:@"ChatKit"];
      v95 = v29;
      v26 = MEMORY[0x1E69DB648];
      v40 = +[CKUIBehavior sharedBehaviors];
      transcriptBoldFont2 = [v40 transcriptBoldFont];
      v96 = transcriptBoldFont2;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      [v39 sizeWithAttributes:v42];
      v44 = v43;
      v46 = v45;

      v23 = &collaborationOptionsPopoverInsets_sBehavior_3;
      v16 = v88;

      v25 = off_1E72E5000;
      v24 = &collaborationOptionsPopoverInsets_sBehavior_3;
      speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerTextMaxWidth = fmax(v34, v44);
      speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerTextMaxHeight = fmax(v36, v46);
      objc_storeStrong(&speakerImageWithOrientation_speakerEnabled_shouldShowText__sContentSizeCategory_SpeakerTextWidth, v21);
    }

    v47 = *(v23 + 103);
    v48 = v24[104];

    v49 = v18 + 5.0 + v47;
    v100.width = v49;
    v100.height = v20;
    UIGraphicsBeginImageContextWithOptions(v100, 0, 0.0);
    v50 = *(MEMORY[0x1E695EFF8] + 8);
    if (orientationCopy)
    {
      v101.origin.x = 0.0;
      v101.origin.y = 0.0;
      v101.size.width = v18 + 5.0 + v47;
      v101.size.height = v20;
      v51 = CGRectGetMaxX(v101) - v18;
    }

    else
    {
      v51 = *MEMORY[0x1E695EFF8];
    }

    [v16 drawInRect:{v51, v50, v18, v20}];
    if (textCopy)
    {
      v87 = v20;
      v89 = v18 + 5.0 + v47;
      v52 = v16;
      if (orientationCopy)
      {
        v53 = v51 + -5.0 - v47;
      }

      else
      {
        v102.origin.x = v51;
        v102.origin.y = v50;
        v102.size.width = v18;
        v102.size.height = v20;
        v53 = CGRectGetMaxX(v102) + 5.0;
      }

      v54 = v25;
      sharedBehaviors = [(__objc2_class *)v25[337] sharedBehaviors];
      [sharedBehaviors transcriptBoldTextAlignmentInsets];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v65 = v53 + v59;
      v66 = v59 + v63;
      v67 = v47 - v66;
      v68 = v57 + v61;
      v69 = v86 - v68;
      if (CKMainScreenScale_once_94 != -1)
      {
        +[CKSpeakerButton speakerImageWithOrientation:speakerEnabled:shouldShowText:];
      }

      v70 = *&CKMainScreenScale_sMainScreenScale_94;
      if (*&CKMainScreenScale_sMainScreenScale_94 == 0.0)
      {
        v70 = 1.0;
      }

      v71 = floor((v50 + (v87 - v69) * 0.5) * v70) / v70;
      v72 = v65 - v59;
      v20 = v87;
      v73 = v71 - v57;
      v74 = v68 + v69;
      v75 = CKFrameworkBundle(v64);
      v76 = v75;
      if (v90)
      {
        v77 = @"AUDIO_MESSAGE_SPEAKER_ON";
      }

      else
      {
        v77 = @"AUDIO_MESSAGE_SPEAKER_OFF";
      }

      v78 = [v75 localizedStringForKey:v77 value:&stru_1F04268F8 table:@"ChatKit"];

      v93 = *v26;
      sharedBehaviors2 = [(__objc2_class *)v54[337] sharedBehaviors];
      transcriptBoldFont3 = [sharedBehaviors2 transcriptBoldFont];
      v94 = transcriptBoldFont3;
      v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      [v78 drawInRect:v81 withAttributes:{v72, v73, v66 + v67, v74}];

      v16 = v52;
      v49 = v89;
    }

    if (v90)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v83 = 2;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] systemGrayColor];
      v83 = 1;
    }

    [blackColor set];
    v103.origin.x = 0.0;
    v103.origin.y = 0.0;
    v103.size.width = v49;
    v103.size.height = v20;
    UIRectFillUsingBlendMode(v103, kCGBlendModeSourceIn);
    v84 = UIGraphicsGetImageFromCurrentImageContext();

    v9 = [v84 imageWithRenderingMode:v83];

    UIGraphicsEndImageContext();
    [speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache setObject:v9 forKey:v8];
  }

  return v9;
}

void __77__CKSpeakerButton_speakerImageWithOrientation_speakerEnabled_shouldShowText___block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache;
  speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache = v1;
}

- (void)updateSpeakerImage
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v3 = [CKSpeakerButton speakerImageWithEnabledState:[(CKSpeakerButton *)self isSpeakerEnabled]];
  [plainButtonConfiguration setImage:v3];

  [(CKSpeakerButton *)self setConfiguration:plainButtonConfiguration];
}

- (void)setShouldShowText:(BOOL)text
{
  if (self->_shouldShowText != text)
  {
    self->_shouldShowText = 0;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

- (void)touchUpInside:(id)inside
{
  v4 = [(CKSpeakerButton *)self isSpeakerEnabled]^ 1;

  [(CKSpeakerButton *)self setSpeakerEnabled:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKSpeakerButton;
  [(CKSpeakerButton *)&v4 traitCollectionDidChange:change];
  [(CKSpeakerButton *)self updateSpeakerImage];
}

+ (id)speakerImageWithEnabledState:(BOOL)state
{
  if (speakerImageWithEnabledState__once != -1)
  {
    +[CKSpeakerButton speakerImageWithEnabledState:];
  }

  v28[0] = state;
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v28[1] = [currentTraitCollection userInterfaceStyle];

  v5 = [MEMORY[0x1E696B098] value:v28 withObjCType:"{?=Bq}"];
  v6 = [speakerImageWithEnabledState__sSpeakerImageCache objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:14.0];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"speaker.wave.3.fill"];
    v11 = [v10 imageWithSymbolConfiguration:v9];

    v12 = [v11 imageWithRenderingMode:1];

    if (state)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }
    v13 = ;
    v14 = [v12 imageWithTintColor:v13];

    [v14 size];
    v17 = v15;
    v18 = v16;
    if (v15 + 12.0 >= v16 + 12.0)
    {
      v19 = v15 + 12.0;
    }

    else
    {
      v19 = v16 + 12.0;
    }

    v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v19, v19}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke_2;
    v22[3] = &unk_1E72F24C8;
    v24 = v19;
    v25 = v19;
    v26 = v17;
    v27 = v18;
    v7 = v14;
    v23 = v7;
    v8 = [v20 imageWithActions:v22];
    [speakerImageWithEnabledState__sSpeakerImageCache setObject:v8 forKey:v5];
  }

  return v8;
}

void __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = speakerImageWithEnabledState__sSpeakerImageCache;
  speakerImageWithEnabledState__sSpeakerImageCache = v1;
}

void __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke_2(uint64_t a1)
{
  __asm { FMOV            V2.2D, #0.5 }

  v11 = _Q2;
  [*(a1 + 32) drawAtPoint:{vsubq_f64(vmulq_f64(*(a1 + 40), _Q2), vmulq_f64(*(a1 + 56), _Q2))}];
  v12 = [MEMORY[0x1E69DC728] bezierPath];
  [v12 setLineWidth:1.0];
  [v12 setLineJoinStyle:1];
  v7 = vmulq_f64(*(a1 + 40), v11);
  [v12 addArcWithCenter:0 radius:*&v7 startAngle:v7.f64[1] + -1.0 endAngle:0.0 clockwise:6.28318531];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 quickActionButtonStrokeColor];
  [v10 setStroke];

  [v12 stroke];
}

@end