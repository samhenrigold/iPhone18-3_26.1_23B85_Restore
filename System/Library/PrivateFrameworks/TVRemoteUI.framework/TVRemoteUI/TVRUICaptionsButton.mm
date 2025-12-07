@interface TVRUICaptionsButton
- (TVRUICaptionsButton)initWithCaptionsEnabled:(BOOL)enabled buttonLocation:(int64_t)location;
- (id)description;
- (void)_boldTextEnabledStatusChanged:(id)changed;
- (void)_largeTextEnabledStatusChanged:(id)changed;
- (void)setCaptionsEnabled:(BOOL)enabled;
@end

@implementation TVRUICaptionsButton

- (TVRUICaptionsButton)initWithCaptionsEnabled:(BOOL)enabled buttonLocation:(int64_t)location
{
  v11.receiver = self;
  v11.super_class = TVRUICaptionsButton;
  v5 = [(TVRUIButton *)&v11 initWithType:16 hasTapAction:1 buttonLocation:1 options:2];
  v6 = v5;
  if (v5)
  {
    v5->_captionsEnabled = enabled;
    styleProvider = [(TVRUIButton *)v5 styleProvider];
    v8 = [styleProvider captionsButtonIcon:v6->_captionsEnabled];
    imageView = [(TVRUIButton *)v6 imageView];
    [imageView setImage:v8];
  }

  return v6;
}

- (void)setCaptionsEnabled:(BOOL)enabled
{
  if (self->_captionsEnabled != enabled)
  {
    self->_captionsEnabled = enabled;
    styleProvider = [(TVRUIButton *)self styleProvider];
    v4 = [styleProvider captionsButtonIcon:self->_captionsEnabled];
    imageView = [(TVRUIButton *)self imageView];
    [imageView setImage:v4];
  }
}

- (id)description
{
  _descriptionBuilder = [(TVRUIButton *)self _descriptionBuilder];
  v4 = [_descriptionBuilder appendBool:-[TVRUICaptionsButton captionsEnabled](self withName:{"captionsEnabled"), @"captionsEnabled"}];
  build = [_descriptionBuilder build];

  return build;
}

- (void)_boldTextEnabledStatusChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TVRUICaptionsButton;
  v4 = [(TVRUIButton *)&v9 _boldTextEnabledStatusChanged:changed];
  v5 = _TVRUIViewControllerLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRUICaptionsButton _boldTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  styleProvider = [(TVRUIButton *)self styleProvider];
  v7 = [styleProvider captionsButtonIcon:{-[TVRUICaptionsButton captionsEnabled](self, "captionsEnabled")}];
  imageView = [(TVRUIButton *)self imageView];
  [imageView setImage:v7];
}

- (void)_largeTextEnabledStatusChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TVRUICaptionsButton;
  v4 = [(TVRUIButton *)&v9 _largeTextEnabledStatusChanged:changed];
  v5 = _TVRUIViewControllerLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRUICaptionsButton _largeTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  styleProvider = [(TVRUIButton *)self styleProvider];
  v7 = [styleProvider captionsButtonIcon:{-[TVRUICaptionsButton captionsEnabled](self, "captionsEnabled")}];
  imageView = [(TVRUIButton *)self imageView];
  [imageView setImage:v7];
}

@end