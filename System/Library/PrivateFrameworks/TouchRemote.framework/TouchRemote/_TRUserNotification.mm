@interface _TRUserNotification
+ (id)userNotificationDictionaryWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle isTopMost:(BOOL)most dismissOnUnlock:(BOOL)unlock;
- (_TRUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options error:(int *)error;
- (id)textFieldValueAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation _TRUserNotification

- (_TRUserNotification)initWithDictionary:(id)dictionary options:(unint64_t)options error:(int *)error
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _TRUserNotification;
  v9 = [(_TRUserNotification *)&v14 init];
  if (v9 && (error = 0, v10 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, options, &error, dictionaryCopy), (v9->_userNotification = v10) == 0))
  {
    if (error)
    {
      *error = error;
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (void)dealloc
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
    CFRelease(self->_userNotification);
  }

  v4.receiver = self;
  v4.super_class = _TRUserNotification;
  [(_TRUserNotification *)&v4 dealloc];
}

- (id)textFieldValueAtIndex:(unint64_t)index
{
  v3 = [(__CFString *)CFUserNotificationGetResponseValue(self->_userNotification copy:index)];

  return v3;
}

+ (id)userNotificationDictionaryWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle isTopMost:(BOOL)most dismissOnUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  mostCopy = most;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  alternateButtonTitleCopy = alternateButtonTitle;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = dictionary;
  if (titleCopy)
  {
    [dictionary setObject:titleCopy forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  if (messageCopy)
  {
    [v18 setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  if (alternateButtonTitleCopy)
  {
    [v18 setObject:alternateButtonTitleCopy forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  if (buttonTitleCopy)
  {
    [v18 setObject:buttonTitleCopy forKeyedSubscript:*MEMORY[0x277CBF1E8]];
    [v18 setObject:&unk_287F629D8 forKeyedSubscript:*MEMORY[0x277D67300]];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:mostCopy];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF1B0]];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:!unlockCopy];
  [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x277D67340]];

  return v18;
}

@end