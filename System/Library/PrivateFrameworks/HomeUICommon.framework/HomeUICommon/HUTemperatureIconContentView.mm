@interface HUTemperatureIconContentView
- (HUTemperatureIconContentView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)tintColorDidChange;
- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated;
@end

@implementation HUTemperatureIconContentView

- (HUTemperatureIconContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUTemperatureIconContentView;
  v3 = [(HUIconContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTemperatureIconContentView *)v3 setContentMode:3];
    [(HUTemperatureIconContentView *)v4 setOpaque:0];
    [(HUIconContentView *)v4 setAspectRatio:1.0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittingSize:0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittedWidth:0.0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittedText:0];
  }

  return v4;
}

- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = HUTemperatureIconContentView;
  [(HUIconContentView *)&v12 updateWithIconDescriptor:descriptorCopy displayStyle:style animated:animatedCopy];
  objc_opt_class();
  v9 = descriptorCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [(HUTemperatureIconContentView *)self setNeedsDisplay];
  }

  else
  {
    NSLog(&cfstr_NoTemperatureI.isa);
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUTemperatureIconContentView;
  [(HUTemperatureIconContentView *)&v3 tintColorDidChange];
  [(HUTemperatureIconContentView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  width = rect.size.width;
  v79[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUIconContentView *)self iconDescriptor:rect.origin.x];
  targetHeatingCoolingMode = [v5 targetHeatingCoolingMode];

  if (targetHeatingCoolingMode)
  {
    iconDescriptor = [(HUIconContentView *)self iconDescriptor];
    heatingCoolingMode = [iconDescriptor heatingCoolingMode];

    systemGrayColor = 0;
    v10 = 1;
    if (heatingCoolingMode > 1)
    {
      if (heatingCoolingMode == 2)
      {
        systemTealColor = [MEMORY[0x277D75340] systemTealColor];
      }

      else
      {
        if (heatingCoolingMode != 3)
        {
          goto LABEL_15;
        }

        systemTealColor = [MEMORY[0x277D75340] darkGrayColor];
      }
    }

    else if (heatingCoolingMode)
    {
      if (heatingCoolingMode != 1)
      {
        goto LABEL_15;
      }

      systemTealColor = [MEMORY[0x277D75340] systemOrangeColor];
    }

    else
    {
      systemTealColor = [MEMORY[0x277D75340] systemGreenColor];
    }

    systemGrayColor = systemTealColor;
  }

  else if ([(HUIconContentView *)self displayStyle]== 1)
  {
    systemGrayColor = [MEMORY[0x277D75340] systemGrayColor];
    v10 = 1;
  }

  else
  {
    systemGrayColor = [(HUTemperatureIconContentView *)self tintColor];
    v10 = 0;
  }

LABEL_15:
  v12 = MEMORY[0x277D75200];
  [(HUTemperatureIconContentView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(HUTemperatureIconContentView *)self bounds];
  v22 = [v12 bezierPathWithRoundedRect:v14 cornerRadius:{v16, v18, v20, v21 * 0.5}];
  [systemGrayColor setFill];
  [v22 fill];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if ((v10 & 1) == 0)
  {
    CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceOut);
  }

  defaultParagraphStyle = [MEMORY[0x277D74250] defaultParagraphStyle];
  v25 = [defaultParagraphStyle mutableCopy];

  [v25 setAlignment:1];
  [v25 setAllowsDefaultTighteningForTruncation:1];
  iconDescriptor2 = [(HUIconContentView *)self iconDescriptor];
  formattedTemperature = [iconDescriptor2 formattedTemperature];
  v28 = formattedTemperature;
  if (formattedTemperature)
  {
    v29 = formattedTemperature;
  }

  else
  {
    v29 = HFLocalizedString();
  }

  v30 = v29;

  v70 = systemGrayColor;
  v71 = v30;
  if (!self)
  {
    lastFontFittingSize2 = 0;
    goto LABEL_39;
  }

  lastFontFittingSize = [(HUTemperatureIconContentView *)self lastFontFittingSize];
  if (lastFontFittingSize && ([(HUTemperatureIconContentView *)self lastFontFittedWidth], v32 == width))
  {
    lastFontFittedText = [(HUTemperatureIconContentView *)self lastFontFittedText];
    v34 = [lastFontFittedText isEqualToString:v71];

    if (v34)
    {
      lastFontFittingSize2 = [(HUTemperatureIconContentView *)self lastFontFittingSize];
      goto LABEL_39;
    }
  }

  else
  {
  }

  v68 = v25;
  v69 = CurrentContext;
  [(HUTemperatureIconContentView *)self bounds];
  v37 = v36 * 0.03125;
  v67 = [MEMORY[0x277D742F8] boldSystemFontOfSize:13.0];
  fontDescriptor = [v67 fontDescriptor];
  v39 = [HUFontUtilities fontDescriptorWithMonospacedDigitsForFontDescriptor:fontDescriptor];

  v66 = v39;
  v40 = [MEMORY[0x277D742F8] fontWithDescriptor:v39 size:13.0];
  v41 = [v40 _fontScaledByScaleFactor:v37];

  v42 = width * 0.75;
  v43 = v41;
  v44 = v71;
  fontDescriptor2 = [v43 fontDescriptor];
  v46 = *MEMORY[0x277D740B0];
  v78 = *MEMORY[0x277D740B0];
  v79[0] = v43;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
  [v44 sizeWithAttributes:v47];
  v49 = v48;

  if (v49 <= width * 0.75)
  {
    lastFontFittingSize2 = v43;
  }

  else
  {
    [v43 pointSize];
    lastFontFittingSize2 = [MEMORY[0x277D742F8] fontWithDescriptor:fontDescriptor2 size:floor(v42 / v49 * v50 + v42 / v49 * v50) * 0.5];
    v76 = v46;
    v77 = lastFontFittingSize2;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    [v44 sizeWithAttributes:v51];
    v53 = v52;

    if (v53 <= v42)
    {
      v54 = 1.0;
    }

    else
    {
      v54 = -1.0;
    }

    while (1)
    {
      v55 = MEMORY[0x277D742F8];
      [lastFontFittingSize2 pointSize];
      v57 = [v55 fontWithDescriptor:fontDescriptor2 size:v56 + v54 * 0.5];
      v74 = v46;
      v75 = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      [v44 sizeWithAttributes:v58];
      v60 = v59;

      if (v53 > v42 && v60 < v42)
      {
        break;
      }

      if (v54 > 0.0 && v60 > v42)
      {
        goto LABEL_37;
      }

      lastFontFittingSize2 = v57;
    }

    v61 = v57;

    lastFontFittingSize2 = v61;
LABEL_37:
  }

  CurrentContext = v69;

  [(HUTemperatureIconContentView *)self setLastFontFittingSize:lastFontFittingSize2];
  [(HUTemperatureIconContentView *)self setLastFontFittedWidth:width];
  [(HUTemperatureIconContentView *)self setLastFontFittedText:v44];

  v25 = v68;
LABEL_39:

  v62 = *MEMORY[0x277D740B0];
  v73[0] = lastFontFittingSize2;
  v63 = *MEMORY[0x277D740B8];
  v72[0] = v62;
  v72[1] = v63;
  systemWhiteColor = [MEMORY[0x277D75340] systemWhiteColor];
  v72[2] = *MEMORY[0x277D74110];
  v73[1] = systemWhiteColor;
  v73[2] = v25;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];

  [(HUTemperatureIconContentView *)self bounds];
  [lastFontFittingSize2 lineHeight];
  [(HUTemperatureIconContentView *)self center];
  [(HUTemperatureIconContentView *)self center];
  UIRectCenteredAboutPoint();
  [v71 drawWithRect:1 options:v65 attributes:0 context:?];

  CGContextRestoreGState(CurrentContext);
}

@end