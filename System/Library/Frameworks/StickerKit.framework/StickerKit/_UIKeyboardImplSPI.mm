@interface _UIKeyboardImplSPI
+ (id)emojiKeyManager;
+ (void)insertEmojiImageTextAttachment:(id)attachment;
+ (void)insertSticker:(id)sticker;
+ (void)playInputClick;
+ (void)postEmojiSearchViewButtonConfigurationWillChangeNotification:(int64_t)notification;
@end

@implementation _UIKeyboardImplSPI

+ (void)playInputClick
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  if (objc_opt_respondsToSelector())
  {
    [activeInstance playInputClick];
  }
}

+ (void)insertSticker:(id)sticker
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCBE0];
  stickerCopy = sticker;
  activeInstance = [v3 activeInstance];
  delegateAsResponder = [activeInstance delegateAsResponder];

  v8 = _SKIKeyboardLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_19A5EE000, v8, OS_LOG_TYPE_DEFAULT, "Inserting sticker into %@", &v12, 0xCu);
  }

  activeInstance2 = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance2 insertSticker:stickerCopy];
}

+ (void)insertEmojiImageTextAttachment:(id)attachment
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCBE0];
  attachmentCopy = attachment;
  activeInstance = [v3 activeInstance];
  delegateAsResponder = [activeInstance delegateAsResponder];

  v8 = _SKIKeyboardLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_19A5EE000, v8, OS_LOG_TYPE_DEFAULT, "Inserting emoji image text attachment into %@", &v12, 0xCu);
  }

  activeInstance2 = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance2 insertEmojiImageTextAttachment:attachmentCopy];
}

+ (void)postEmojiSearchViewButtonConfigurationWillChangeNotification:(int64_t)notification
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"ButtonConfiguration";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:notification];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"TUIEmojiSearchViewButtonConfigurationWillChangeNotification" object:0 userInfo:v4];
}

+ (id)emojiKeyManager
{
  v2 = objc_alloc_init(NSClassFromString(&cfstr_Uikeyboardemoj.isa));

  return v2;
}

@end