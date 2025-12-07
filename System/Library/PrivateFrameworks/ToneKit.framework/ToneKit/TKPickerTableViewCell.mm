@interface TKPickerTableViewCell
- (void)_updateTextLabelColor;
- (void)setSectionLocation:(int)location animated:(BOOL)animated;
- (void)setShouldTintTextLabel:(BOOL)label;
- (void)setTextLabelColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation TKPickerTableViewCell

- (void)setTextLabelColor:(id)color
{
  colorCopy = color;
  if (self->_textLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textLabelColor, color);
    [(TKPickerTableViewCell *)self _updateTextLabelColor];
    colorCopy = v6;
  }
}

- (void)setShouldTintTextLabel:(BOOL)label
{
  if (self->_shouldTintTextLabel != label)
  {
    self->_shouldTintTextLabel = label;
    if (!self->_textLabelColor)
    {
      [(TKPickerTableViewCell *)self _updateTextLabelColor];
    }
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = TKPickerTableViewCell;
  [(TKPickerTableViewCell *)&v3 tintColorDidChange];
  if (!self->_textLabelColor && self->_shouldTintTextLabel)
  {
    [(TKPickerTableViewCell *)self _updateTextLabelColor];
  }
}

- (void)_updateTextLabelColor
{
  v3 = self->_textLabelColor;
  if (!v3)
  {
    if (!self->_shouldTintTextLabel || ([(TKPickerTableViewCell *)self tintColor], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = +[TKUIKitConstants defaultTableViewCellTextColor];
    }
  }

  v5 = v3;
  textLabel = [(TKPickerTableViewCell *)self textLabel];
  [textLabel setTextColor:v5];
}

- (void)setSectionLocation:(int)location animated:(BOOL)animated
{
  v4 = *&location;
  v8.receiver = self;
  v8.super_class = TKPickerTableViewCell;
  [(TKPickerTableViewCell *)&v8 setSectionLocation:*&location animated:animated];
  backgroundView = [(TKPickerTableViewCell *)self backgroundView];
  if (objc_opt_respondsToSelector())
  {
    [backgroundView setSectionLocation:v4];
  }

  selectedBackgroundView = [(TKPickerTableViewCell *)self selectedBackgroundView];
  if (objc_opt_respondsToSelector())
  {
    [selectedBackgroundView setSectionLocation:v4];
  }
}

@end