@interface CKMessagesComplicationImageProvider
+ (id)sharedInstance;
- (CGSize)imageSize;
- (CKMessagesComplicationImageProvider)init;
- (id)_simpleTintableImageOverImage:(id)image withContext:(id)context;
- (id)imageForUnreadCount:(unint64_t)count family:(int64_t)family complicationTemplate:(id)template specs:(id)specs;
@end

@implementation CKMessagesComplicationImageProvider

+ (id)sharedInstance
{
  if (qword_27E1C4170 != -1)
  {
    sub_23BD21158();
  }

  v3 = qword_27E1C4168;

  return v3;
}

- (CKMessagesComplicationImageProvider)init
{
  v8.receiver = self;
  v8.super_class = CKMessagesComplicationImageProvider;
  v2 = [(CKMessagesComplicationImageProvider *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    v5 = os_log_create("com.apple.Messages", "CKMessagesComplicationImageProvider");
    log = v2->_log;
    v2->_log = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)imageForUnreadCount:(unint64_t)count family:(int64_t)family complicationTemplate:(id)template specs:(id)specs
{
  templateCopy = template;
  specsCopy = specs;
  v12 = [CKMessagesComplicationDataContext alloc];
  [(CKMessagesComplicationImageProvider *)self imageSize];
  v13 = [(CKMessagesComplicationDataContext *)v12 initWithUnreadCount:count family:family template:templateCopy specs:specsCopy imageSize:?];
  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMapTable *)self->_imageCache objectForKey:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x277D755B8] systemImageNamed:@"message.fill"];
    v18 = [v17 imageWithRenderingMode:2];
    v16 = [(CKMessagesComplicationImageProvider *)self _simpleTintableImageOverImage:v18 withContext:v13];

    [(NSMapTable *)self->_imageCache setObject:v16 forKey:v13];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v16;
}

- (id)_simpleTintableImageOverImage:(id)image withContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  contextCopy = context;
  [contextCopy imageFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([contextCopy unreadCount])
  {
    textAttributes = [contextCopy textAttributes];
    v17 = textAttributes != 0;
  }

  else
  {
    v17 = 0;
  }

  preferredFormat = [MEMORY[0x277D75568] preferredFormat];
  [preferredFormat setPreferredRange:2];
  v19 = [(CKMessagesComplicationImageProvider *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [contextCopy backgroundFrame];
    v21 = v20;
    [contextCopy backgroundFrame];
    *buf = 134219008;
    v40 = v21;
    v41 = 2048;
    v42 = v22;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    unreadCount = [contextCopy unreadCount];
    _os_log_impl(&dword_23BD1C000, v19, OS_LOG_TYPE_DEFAULT, "generating image with background size: (%f, %f), imageSize: (%f, %f), unreadCount: %lu", buf, 0x34u);
  }

  v23 = objc_alloc(MEMORY[0x277D75560]);
  [contextCopy backgroundFrame];
  v26 = [v23 initWithSize:preferredFormat format:{v24, v25}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23BD2012C;
  v31[3] = &unk_278B93210;
  v34 = v9;
  v35 = v11;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v32 = imageCopy;
  v33 = contextCopy;
  v27 = contextCopy;
  v28 = imageCopy;
  v29 = [v26 imageWithActions:v31];

  return v29;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"message.fill"];
    [v6 size];
    self->_imageSize.width = v7;
    self->_imageSize.height = v8;

    width = self->_imageSize.width;
    height = self->_imageSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

@end