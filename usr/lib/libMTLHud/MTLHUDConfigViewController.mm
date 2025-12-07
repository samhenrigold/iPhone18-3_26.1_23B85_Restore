@interface MTLHUDConfigViewController
- (id)addButton:(id)button envVar:(id)var enabled:(BOOL)enabled didChange:(id)change;
- (id)addCheckbox:(id)checkbox envVar:(id)var enabled:(BOOL)enabled checked:(id)checked didChange:(id)change;
- (id)addPopup:(id)popup envVar:(id)var enabled:(BOOL)enabled values:(id)values value:(id)value didChange:(id)change;
- (id)addSlider:(id)slider envVar:(id)var enabled:(BOOL)enabled minValue:(double)value maxValue:(double)maxValue initialValue:(double)initialValue didChange:(id)change;
- (id)addTextbox:(id)textbox envVar:(id)var enabled:(BOOL)enabled defaultValue:(id)value placeholder:(id)placeholder numbersOnly:(BOOL)only didChange:(id)change;
- (void)addDescription:(id)description;
- (void)addEntry:(id)entry;
- (void)addLink:(id)link andURL:(id)l;
- (void)addPanel:(id)panel;
- (void)addSection:(id)section;
- (void)addWarning:(id)warning color:(unsigned int)color;
@end

@implementation MTLHUDConfigViewController

- (void)addPanel:(id)panel
{
  panelCopy = panel;
  if (!self->_panels)
  {
    v4 = objc_opt_new();
    panels = self->_panels;
    self->_panels = v4;
  }

  v6 = objc_opt_new();
  [v6 setName:panelCopy];
  [(NSMutableArray *)self->_panels addObject:v6];
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  panels = self->_panels;
  if (!panels)
  {
    v5 = objc_opt_new();
    v6 = self->_panels;
    self->_panels = v5;

    v7 = objc_opt_new();
    [(NSMutableArray *)self->_panels addObject:v7];

    panels = self->_panels;
  }

  lastObject = [(NSMutableArray *)panels lastObject];
  entries = [lastObject entries];
  [entries addObject:entryCopy];
}

- (void)addSection:(id)section
{
  sectionCopy = section;
  v5 = [[MTLHUDConfigViewControllerSectionEntry alloc] initWithTitle:sectionCopy];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (id)addCheckbox:(id)checkbox envVar:(id)var enabled:(BOOL)enabled checked:(id)checked didChange:(id)change
{
  enabledCopy = enabled;
  changeCopy = change;
  checkedCopy = checked;
  varCopy = var;
  checkboxCopy = checkbox;
  v16 = [[MTLHUDConfigViewControllerCheckboxEntry alloc] initWithTitle:checkboxCopy envVar:varCopy enabled:enabledCopy checked:checkedCopy representedObject:0 didChange:changeCopy];

  [(MTLHUDConfigViewController *)self addEntry:v16];

  return v16;
}

- (id)addSlider:(id)slider envVar:(id)var enabled:(BOOL)enabled minValue:(double)value maxValue:(double)maxValue initialValue:(double)initialValue didChange:(id)change
{
  enabledCopy = enabled;
  changeCopy = change;
  varCopy = var;
  sliderCopy = slider;
  v19 = [[MTLHUDConfigViewControllerSliderEntry alloc] initWithTitle:sliderCopy envVar:varCopy enabled:enabledCopy minValue:0 maxValue:changeCopy initialValue:value representedObject:maxValue didChange:initialValue];

  [(MTLHUDConfigViewController *)self addEntry:v19];

  return v19;
}

- (id)addPopup:(id)popup envVar:(id)var enabled:(BOOL)enabled values:(id)values value:(id)value didChange:(id)change
{
  enabledCopy = enabled;
  changeCopy = change;
  valueCopy = value;
  valuesCopy = values;
  varCopy = var;
  popupCopy = popup;
  v19 = [[MTLHUDConfigViewControllerPopupEntry alloc] initWithTitle:popupCopy envVar:varCopy enabled:enabledCopy values:valuesCopy value:valueCopy representedObject:0 didChange:changeCopy];

  [(MTLHUDConfigViewController *)self addEntry:v19];

  return v19;
}

- (id)addButton:(id)button envVar:(id)var enabled:(BOOL)enabled didChange:(id)change
{
  enabledCopy = enabled;
  changeCopy = change;
  varCopy = var;
  buttonCopy = button;
  v13 = [[MTLHUDConfigViewControllerButtonEntry alloc] initWithTitle:buttonCopy envVar:varCopy enabled:enabledCopy representedObject:0 didChange:changeCopy];

  [(MTLHUDConfigViewController *)self addEntry:v13];

  return v13;
}

- (id)addTextbox:(id)textbox envVar:(id)var enabled:(BOOL)enabled defaultValue:(id)value placeholder:(id)placeholder numbersOnly:(BOOL)only didChange:(id)change
{
  onlyCopy = only;
  enabledCopy = enabled;
  changeCopy = change;
  placeholderCopy = placeholder;
  valueCopy = value;
  varCopy = var;
  textboxCopy = textbox;
  v21 = [[MTLHUDConfigViewControllerTextboxEntry alloc] initWithTitle:textboxCopy envVar:varCopy enabled:enabledCopy defaultValue:valueCopy placeholder:placeholderCopy numbersOnly:onlyCopy didChange:changeCopy];

  [(MTLHUDConfigViewController *)self addEntry:v21];

  return v21;
}

- (void)addWarning:(id)warning color:(unsigned int)color
{
  v4 = *&color;
  warningCopy = warning;
  v7 = [MTLHUDConfigViewControllerMessageEntry alloc];
  warningCopy = [NSString stringWithFormat:@"⚠️ %@", warningCopy];

  v8 = [(MTLHUDConfigViewControllerMessageEntry *)v7 initWithMessage:warningCopy color:v4];
  [(MTLHUDConfigViewController *)self addEntry:v8];
}

- (void)addDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[MTLHUDConfigViewControllerMessageEntry alloc] initWithMessage:descriptionCopy color:1];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (void)addLink:(id)link andURL:(id)l
{
  lCopy = l;
  linkCopy = link;
  v8 = [[MTLHUDConfigViewControllerLinkEntry alloc] initWithTitle:linkCopy andURL:lCopy];

  [(MTLHUDConfigViewController *)self addEntry:v8];
}

@end