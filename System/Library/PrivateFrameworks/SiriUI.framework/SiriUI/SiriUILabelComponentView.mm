@interface SiriUILabelComponentView
+ (id)labelForComponentModel:(id)model;
+ (id)viewForComponent:(id)component;
@end

@implementation SiriUILabelComponentView

+ (id)viewForComponent:(id)component
{
  componentCopy = component;
  if (objc_opt_respondsToSelector())
  {
    v5 = [SiriUIDetailLabelComponentView viewForComponent:componentCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [self labelForComponentModel:componentCopy];
    goto LABEL_5;
  }

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [(SiriUILabelComponentView *)v7 viewForComponent:componentCopy];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)labelForComponentModel:(id)model
{
  modelCopy = model;
  style = [modelCopy style];
  v5 = 0;
  if (style > 2)
  {
    switch(style)
    {
      case 3:
        siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredCaptionLabel];
        break;
      case 4:
        siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredFootnoteLabel];
        break;
      case 5:
        siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredTitleLabel];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredBodyLabel];
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_15;
      }

      siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredSubheadLabel];
    }
  }

  else
  {
    siriui_configuredCaptionLabel = [MEMORY[0x277D756B8] siriui_configuredHeadlineLabel];
  }

  v5 = siriui_configuredCaptionLabel;
LABEL_15:
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  text = [modelCopy text];

  [v5 setText:text];
  LODWORD(v8) = 1144750080;
  [v5 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v9];
  [v5 sizeToFit];

  return v5;
}

+ (void)viewForComponent:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4 = 136315394;
  v5 = "+[SiriUILabelComponentView viewForComponent:]";
  v6 = 2114;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_error_impl(&dword_26948D000, v2, OS_LOG_TYPE_ERROR, "%s Unsupported Object for SiriUILabelComponentView %{public}@", &v4, 0x16u);
}

@end